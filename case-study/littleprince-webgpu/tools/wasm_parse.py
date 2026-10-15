#!/usr/bin/env python3
"""Pure-Python WebAssembly module parser for the B612 Unity/IL2CPP WebGPU build.

Read-only on the input. Enumerates sections, parses custom sections (name,
producers, target_features, build_id, ...), imports/exports, memory layout,
and scans data segments + whole binary for ASCII strings.

Usage: python3 wasm_parse.py <file.wasm> <outdir>
"""
import sys, os, re, struct, collections, json

WASM = sys.argv[1]
OUT = sys.argv[2]
os.makedirs(OUT, exist_ok=True)

d = open(WASM, "rb").read()
N = len(d)
assert d[:4] == b"\x00asm", "not a wasm module"
ver = struct.unpack_from("<I", d, 4)[0]
p = 8  # after magic + version

MAGIC_LEN = 8

def uleb(buf, p):
    r = 0; s = 0
    while True:
        b = buf[p]; p += 1
        r |= (b & 0x7f) << s
        if not (b & 0x80):
            return r, p
        s += 7
        if s > 63 * 4:
            raise ValueError("uleb too long at %d" % p)

def sleb(buf, p):
    r = 0; s = 0
    while True:
        b = buf[p]; p += 1
        r |= (b & 0x7f) << s; s += 7
        if not (b & 0x80):
            if b & 0x40:
                r -= (1 << s)
            return r, p

def name(buf, p):
    n, p = uleb(buf, p)
    return buf[p:p + n].decode("utf8", "replace"), p + n

SECNAME = {0: "custom", 1: "type", 2: "import", 3: "function", 4: "table",
           5: "memory", 6: "global", 7: "export", 8: "start", 9: "element",
           10: "code", 11: "data", 12: "datacount", 13: "tag"}
IMPORT_KIND = {0: "func", 1: "table", 2: "mem", 3: "global", 4: "tag"}
EXPORT_KIND = {0: "func", 1: "table", 2: "mem", 3: "global", 4: "tag"}

sections = []          # (id, name, payload_offset, payload_size)
customs = []           # dicts
counts = collections.Counter()
warnings = []

# structural parse: walk section headers only (do not decode every function body)
p = MAGIC_LEN
while p < N:
    sec_start = p
    sid = d[p]; p += 1
    size, p = uleb(d, p)
    payload = p
    end = p + size
    if end > N:
        warnings.append("section %d at 0x%x declares size %d exceeds file" % (sid, sec_start, size))
        end = N
    sections.append((sid, SECNAME.get(sid, "unknown"), payload, size))
    counts[SECNAME.get(sid, "unknown")] += 1

    if sid == 0:
        # custom section: name + payload
        cname, q = name(d, payload)
        body = d[q:end]
        customs.append({"name": cname, "body_off": q, "size": size,
                        "name_bytes": size - len(body)})
    elif sid == 2:
        cnt, q = uleb(d, payload)
        imps = []
        for _ in range(cnt):
            mod, q = name(d, q); nm, q = name(d, q)
            k = d[q]; q += 1
            if k == 0:
                t, q = uleb(d, q); imps.append((mod, nm, "func", t))
            elif k == 1:
                et = d[q]; q += 1                # elemtype
                fl, q = uleb(d, q)
                _, q = uleb(d, q)
                if fl & 1:
                    _, q = uleb(d, q)
                imps.append((mod, nm, "table", None))
            elif k == 2:
                fl, q = uleb(d, q)
                _, q = uleb(d, q)
                if fl & 1:
                    _, q = uleb(d, q)
                imps.append((mod, nm, "mem", None))
            elif k == 3:
                vt = d[q]; q += 1; mut = d[q]; q += 1
                imps.append((mod, nm, "global", None))
            elif k == 4:
                at = d[q]; q += 1; fl, q = uleb(d, q)
                imps.append((mod, nm, "tag", None))
            else:
                warnings.append("unknown import kind %d in %s.%s" % (k, mod, nm))
                break
        globals()["_imports"] = imps
    elif sid == 3:
        cnt, q = uleb(d, payload)
        globals()["_func_types"] = []
        for _ in range(cnt):
            t, q = uleb(d, q); globals()["_func_types"].append(t)
    elif sid == 4:
        cnt, q = uleb(d, payload)
        tables = []
        for _ in range(cnt):
            et = d[q]; q += 1
            fl, q = uleb(d, q)
            mn, q = uleb(d, q)
            mx = None
            if fl & 1:
                mx, q = uleb(d, q)
            tables.append((et, mn, mx))
        globals()["_tables"] = tables
    elif sid == 5:
        cnt, q = uleb(d, payload)
        mems = []
        for _ in range(cnt):
            fl, q = uleb(d, q)
            mn, q = uleb(d, q)
            mx = None
            if fl & 1:
                mx, q = uleb(d, q)
            mems.append((mn, mx))
        globals()["_mems"] = mems
    elif sid == 6:
        cnt, q = uleb(d, payload)
        # count globals only
        for _ in range(cnt):
            vt = d[q]; q += 1; mut = d[q]; q += 1
            # skip init expr
            while d[q] != 0x0b:
                ot = d[q]; q += 1
                if ot == 0x41:
                    _, q = sleb(d, q)
                elif ot == 0x42:
                    _, q = sleb(d, q)
                elif ot == 0x43:
                    q += 4
                elif ot == 0x44:
                    q += 8
                elif ot == 0x23 or ot == 0xd2:
                    _, q = uleb(d, q)
                elif ot == 0xfc:
                    _, q = uleb(d, q)  # ref.null heaptype
                else:
                    warnings.append("unexpected const op 0x%02x in global init" % ot)
                    break
            q += 1
        globals()["_global_count"] = cnt
    elif sid == 7:
        cnt, q = uleb(d, payload)
        exps = []
        for _ in range(cnt):
            nm, q = name(d, q)
            k = d[q]; q += 1
            ix, q = uleb(d, q)
            exps.append((nm, k, ix))
        globals()["_exports"] = exps
    elif sid == 8:
        _, q = uleb(d, payload)
        globals()["_start"] = d[payload:end]
    elif sid == 10:
        cnt, q = uleb(d, payload)
        total_bytes = 0
        for _ in range(cnt):
            bsz, q = uleb(d, q)
            total_bytes += bsz
            q += bsz
        globals()["_code_count"] = cnt
        globals()["_code_bytes"] = total_bytes
        if q != end:
            warnings.append("code section walk ended at %d vs payload end %d" % (q, end))
    elif sid == 11:
        cnt, q = uleb(d, payload)
        ndata = cnt
        globals()["_data_count"] = cnt
    elif sid == 12:
        dc, q = uleb(d, payload)
        globals()["_datacount"] = dc
    p = end

assert p == N, "did not consume whole file: p=%d N=%d" % (p, N)

imports = globals().get("_imports", [])
exports = globals().get("_exports", [])
func_types = globals().get("_func_types", [])
mems = globals().get("_mems", [])
tables = globals().get("_tables", [])
code_count = globals().get("_code_count", 0)

lines = []
def out(s=""):
    lines.append(s)

out("=== WASM STRUCTURE ===")
out("file: %s" % WASM)
out("size: %d bytes" % N)
out("version: %d (0x%x)" % (ver, ver))
out("sections: %d" % len(sections))
out("")
out("%-14s %-10s %-12s %-12s" % ("id", "name", "payload_off", "payload_size"))
for sid, sname, off, sz in sections:
    out("%-14d %-10s 0x%08x   %12d" % (sid, sname, off, sz))
out("")
out("=== COUNTS ===")
for k, v in sorted(counts.items()):
    out("section %-10s x%d" % (k, v))
out("")

# ---------------- CUSTOM SECTIONS ----------------
custom_report = []
def parse_name_section(off, size):
    """Return dict of subsection -> info."""
    q = off; end = off + size
    subs = collections.OrderedDict()
    submaps = {}
    while q < end:
        sub = d[q]; q += 1
        ssz, q = uleb(d, q)
        subend = q + ssz
        if sub == 0:
            nm, q2 = name(d, q)
            subs["0:module_name"] = nm
        elif sub in (1, 3, 4, 5, 6, 7, 8, 9, 11):
            cnt, q2 = uleb(d, q)
            for _ in range(cnt):
                _, q2 = uleb(d, q2); _, q2 = name(d, q2)
            subs["%d:namemap" % sub] = cnt
            submaps[sub] = cnt
        elif sub in (2, 10):
            cnt, q2 = uleb(d, q)
            total = 0
            for _ in range(cnt):
                _, q2 = uleb(d, q2)
                inner, q2 = uleb(d, q2)
                for _ in range(inner):
                    _, q2 = uleb(d, q2); _, q2 = name(d, q2)
                total += inner
            subs["%d:indirect_namemap" % sub] = (cnt, total)
            submaps[sub] = total
        else:
            subs["%d:unknown" % sub] = ssz
        q = subend
    return subs

for c in customs:
    nm = c["name"]
    cname = nm
    entry = {"name": nm, "size": c["size"]}
    try:
        if nm == "name":
            entry["subsections"] = parse_name_section(c["body_off"], c["size"])
        elif nm == "producers":
            q = c["body_off"]; end = c["body_off"] + c["size"]
            fcnt, q = uleb(d, q)
            fields = {}
            for _ in range(fcnt):
                fn, q = name(d, q)
                vcnt, q = uleb(d, q)
                vals = []
                for _ in range(vcnt):
                    vn, q = name(d, q); vv, q = name(d, q)
                    vals.append((vn, vv))
                fields[fn] = vals
            entry["fields"] = fields
        elif nm == "target_features":
            q = c["body_off"]
            cnt, q = uleb(d, q)
            feats = []
            for _ in range(cnt):
                pref = d[q]; q += 1
                fname, q = name(d, q)
                feats.append((chr(pref), fname))
            entry["features"] = feats
        elif nm == "build_id":
            entry["hex"] = d[c["body_off"]:c["body_off"]+min(c["size"],64)].hex()
    except Exception as e:
        entry["parse_error"] = repr(e)
    custom_report.append(entry)

out("=== CUSTOM SECTIONS (%d) ===" % len(customs))
for c in custom_report:
    out("- %s  (payload %d bytes)" % (c["name"], c["size"]))
    for k, v in c.items():
        if k in ("name", "size"):
            continue
        out("    %s: %s" % (k, v))
out("")

# base64/base16 style detection of custom names
out("custom names present: %s" % ", ".join(repr(c['name']) for c in customs))
out("")

# ---------------- IMPORTS ----------------
mods = collections.OrderedDict()
for mod, nm, k, t in imports:
    mods.setdefault(mod, []).append((nm, k, t))
out("=== IMPORTS (%d) ===" % len(imports))
out("distinct modules: %d" % len(mods))
for mod, lst in mods.items():
    out("  module %r : %d imports" % (mod, len(lst)))
out("")

# ---------------- EXPORTS ----------------
out("=== EXPORTS (%d) ===" % len(exports))
byk = collections.Counter(EXPORT_KIND[k] for _, k, _ in exports)
for kk, vv in sorted(byk.items()):
    out("  %s x%d" % (kk, vv))
out("")

# ---------------- MEMORY / TABLES / FUNCS ----------------
out("=== MEMORY / TABLES / FUNCTIONS ===")
out("memory defs: %s" % (mems,))
out("table defs: %s" % (tables,))
out("imported funcs: %d" % sum(1 for m, n, k, t in imports if k == "func"))
out("defined funcs (function section): %d" % len(func_types))
out("defined funcs (code section): %d" % code_count)
out("code section byte total: %d" % globals().get("_code_bytes", -1))
out("data segments: %d" % globals().get("_data_count", -1))
out("datacount section: %s" % globals().get("_datacount", None))
out("global defs: %d" % globals().get("_global_count", -1))
out("start section: %s" % ("present" if 8 in [s[0] for s in sections] else "absent"))
out("")
out("warnings: %s" % (warnings if warnings else "none"))

HEADER = "\n".join(lines)

# ---------------- WRITE STRUCTURE FILES ----------------
open(os.path.join(OUT, "structure.txt"), "w").write(HEADER + "\n")

with open(os.path.join(OUT, "imports.txt"), "w") as f:
    f.write("# imports: %d  distinct modules: %d\n" % (len(imports), len(mods)))
    f.write("# module\tfield\tkind\ttypeidx\n")
    for mod, nm, k, t in imports:
        f.write("%s\t%s\t%s\t%s\n" % (mod, nm, k, t if t is not None else ""))
    f.write("\n# ---- grouped by module ----\n")
    for mod, lst in mods.items():
        f.write("\n[%s] (%d)\n" % (mod, len(lst)))
        for nm, k, t in lst:
            f.write("  %s\t%s\n" % (nm, k))

with open(os.path.join(OUT, "exports.txt"), "w") as f:
    f.write("# exports: %d\n" % len(exports))
    f.write("# name\tkind\tindex\n")
    for nm, k, ix in exports:
        f.write("%s\t%s\t%d\n" % (nm, EXPORT_KIND[k], ix))

with open(os.path.join(OUT, "custom_sections.txt"), "w") as f:
    f.write("# custom sections: %d\n" % len(customs))
    for c in custom_report:
        f.write("\n=== %s (payload %d bytes) ===\n" % (c["name"], c["size"]))
        for k, v in c.items():
            if k in ("name", "size"):
                continue
            f.write("%s:\n" % k)
            if isinstance(v, dict):
                for kk, vv in v.items():
                    f.write("  %s = %s\n" % (kk, vv))
            else:
                f.write("  %s\n" % (v,))

print(HEADER)
