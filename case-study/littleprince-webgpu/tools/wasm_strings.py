#!/usr/bin/env python3
"""String/byte scanner for the B612 wasm: whole-file + data-segment ASCII runs,
keyword grep, and version fingerprints."""
import sys, os, re, collections

WASM = sys.argv[1]
OUT = sys.argv[2]
os.makedirs(OUT, exist_ok=True)
d = open(WASM, "rb").read()
N = len(d)

def uleb(buf, p):
    r = 0; s = 0
    while True:
        b = buf[p]; p += 1
        r |= (b & 0x7f) << s
        if not (b & 0x80):
            return r, p
        s += 7

def name(buf, p):
    n, p = uleb(buf, p)
    return buf[p:p+n].decode("utf8", "replace"), p+n

# --- collect data-segment payloads ---
p = 8
data_payloads = []      # list of bytes
mem_pages_off = None
imports_raw = []
exports_raw = []
while p < N:
    sid = d[p]; p += 1
    size, p = uleb(d, p)
    end = p + size
    if sid == 2:
        cnt, q = uleb(d, p)
        for _ in range(cnt):
            mod, q = name(d, q); nm, q = name(d, q)
            k = d[q]; q += 1
            if k == 0:
                t, q = uleb(d, q)
            elif k == 1:
                q += 1; fl, q = uleb(d, q); _, q = uleb(d, q)
                if fl & 1: _, q = uleb(d, q)
            elif k == 2:
                fl, q = uleb(d, q); _, q = uleb(d, q)
                if fl & 1: _, q = uleb(d, q)
            elif k == 3:
                q += 2
            elif k == 4:
                q += 1; _, q = uleb(d, q)
            imports_raw.append((mod, nm, k))
    elif sid == 7:
        cnt, q = uleb(d, p)
        for _ in range(cnt):
            nm, q = name(d, q); k = d[q]; q += 1; ix, q = uleb(d, q)
            exports_raw.append((nm, k, ix))
    elif sid == 11:
        cnt, q = uleb(d, p)
        for _ in range(cnt):
            flags, q = uleb(d, q)
            base = None
            if flags == 2:
                _, q = uleb(d, q)
            if flags in (0, 2):
                while d[q] != 0x0b:
                    ot = d[q]; q += 1
                    if ot == 0x41:
                        r = 0; s = 0
                        while True:
                            b = d[q]; q += 1; r |= (b & 0x7f) << s
                            if not b & 0x80: break
                            s += 7
                        if b & 0x40: r -= (1 << s)
                        base = r
                    elif ot == 0x23:
                        _, q = uleb(d, q)
                q += 1
            n, q = uleb(d, q)
            data_payloads.append((base, d[q:q+n]))
            q += n
    p = end

data_bytes = b"".join(pl for _, pl in data_payloads)

# --- ASCII run extraction ---
RUN = re.compile(rb"[\x09\x20-\x7e]{4,}")
def runs(buf):
    return [m.group().decode("latin1") for m in RUN.finditer(buf)]

file_runs = runs(d)
data_runs = runs(data_bytes)

# --- keyword grep ---
KEYWORDS = ["LittlePrince", "B612", "b612", "Unity", "unity", "WebGPU", "webgpu",
            "wgsl", "WGSL", "UnityEngine", "global-metadata", "emscripten",
            "Emscripten", "il2cpp", "IL2CPP", "Mono", "mono",
            "bar", "earth", "geo", "king", "desert", "vanity", "lighter",
            "scene", "Scene", "shader", "Shader", "GLSL", "glsl",
            "emscripten_webgpu", "webgpu_", "_emscripten_gl", "webgl", "WebGL",
            "cxa", "dynCall", "invoke_", "ba_", "dynCall_"]
kw_hits = collections.OrderedDict()
for k in KEYWORDS:
    kb = k.encode()
    # count occurrences in whole file and in data bytes
    fc = d.count(kb)
    dc = data_bytes.count(kb)
    kw_hits[k] = (fc, dc)

# --- version fingerprints ---
ver_patterns = {
    "unity_version": rb"20[0-9]{2}\.[0-9]+\.[0-9]+[a-z][0-9]+",
    "emscripten_ver": rb"-\d+\.\d+\.\d+",
    "semver": rb"\b\d+\.\d+\.\d+\b",
}
version_hits = collections.OrderedDict()
for vn, pat in ver_patterns.items():
    found = collections.Counter(m.group().decode("latin1") for m in re.finditer(pat, d[:0]))
    version_hits[vn] = []

# Unity version: search in whole file (data section carries Unity build strings)
uv = collections.Counter(m.group().decode("latin1", "replace") for m in re.finditer(rb"20\d{2}\.\d+\.\d+[a-z]\d+", d))
# Emscripten version strings
ev = collections.Counter(m.group().decode("latin1", "replace") for m in re.finditer(rb"emscripten[ _-]?(\d+\.\d+\.\d+)", d, re.I))

# --- output ---
with open(os.path.join(OUT, "interesting_strings.txt"), "w") as f:
    f.write("# whole-file ASCII runs (>=4 chars): %d\n" % len(file_runs))
    f.write("# data-segment ASCII runs: %d\n" % len(data_runs))
    f.write("# data-segment payload bytes: %d\n" % len(data_bytes))
    f.write("\n=== KEYWORD COUNTS (whole_file, data_segments) ===\n")
    for k, (fc, dc) in kw_hits.items():
        f.write("%-22s whole=%-6d data=%d\n" % (k, fc, dc))
    f.write("\n=== Unity version-looking strings ===\n")
    for s, c in uv.most_common(40):
        f.write("%s\tx%d\n" % (s, c))
    f.write("\n=== Emscripten version-looking strings ===\n")
    for s, c in ev.most_common(20):
        f.write("%s\tx%d\n" % (s, c))
    # interesting keyword-containing lines
    f.write("\n=== sample runs containing keywords ===\n")
    seen = set()
    for kw in ["Unity", "Pierre", "Pierre", "WebGPU", "wgsl", "B612", "b612", "Lighter", "lighter", "soil", "shader", "Shader"]:
        f.write("\n--- %s ---\n" % kw)
        cnt = 0
        for r in file_runs:
            if kw in r and r not in seen and cnt < 60:
                f.write("  %s\n" % r)
                seen.add(r); cnt += 1

with open(os.path.join(OUT, "data_strings_sample.txt"), "w") as f:
    f.write("# first 2000 data-segment ASCII runs (in order)\n")
    for r in data_runs[:2000]:
        f.write(r + "\n")

# print summary
print("whole-file runs:", len(file_runs))
print("data runs:", len(data_runs), "data bytes:", len(data_bytes))
print("\nKEYWORD COUNTS (whole, data):")
for k, (fc, dc) in kw_hits.items():
    print("  %-18s %8d %8d" % (k, fc, dc))
print("\nUnity version-looking:", dict(uv.most_common(10)))
print("Emscripten version-looking:", dict(ev.most_common(10)))
