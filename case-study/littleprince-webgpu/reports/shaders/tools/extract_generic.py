import UnityPy, sys, os, lz4.block, lzma, zlib
outdir="/home/tars/yys/webgpu/lp-re/reports/shaders"; blobdir=os.path.join(outdir,"raw_blobs")
os.makedirs(blobdir,exist_ok=True)
PRINT=set(range(0x20,0x7f))|{0x09,0x0a,0x0d}
def text_runs(b,minlen=100):
    runs=[];start=None
    for i,ch in enumerate(b):
        if ch in PRINT:
            if start is None:start=i
        else:
            if start is not None and i-start>=minlen:runs.append(b[start:i])
            start=None
    if start is not None and len(b)-start>=minlen:runs.append(b[start:])
    return runs
def is_code(r): return (b"fn " in r)or(b"@vertex" in r)or(b"@fragment" in r)or(b"@compute" in r)
def dec(c,dl):
    for n,f in (("lz4",lambda:lz4.block.decompress(c,uncompressed_size=dl)),("lz4pfx",lambda:lz4.block.decompress(c[4:],uncompressed_size=dl)),("lzma",lambda:lzma.decompress(c)),("zlib",lambda:zlib.decompress(c)),("raw",lambda:c)):
        try:
            g=f()
            if g:return g,n
        except Exception:pass
    return c,"raw"
def chunks(d):
    blob=bytes(d.compressedBlob); cl=d.compressedLengths; dl=d.decompressedLengths; off=d.offsets
    if cl and dl and off:
        cl,dl,off=cl[0],dl[0],off[0]
        return [(blob[off[i]:off[i]+cl[i]],dl[i]) for i in range(len(cl))]
    return [(blob,(dl[0][0] if dl and dl[0] else len(blob)))]
for path in sys.argv[1:]:
    env=UnityPy.load(path)
    for obj in env.objects:
        if obj.type.name=="ComputeShader":
            d=obj.read()
            for v in d.variants:
                for k in v.kernels:
                    for ui,uv in enumerate(k.uniqueVariants):
                        code=bytes(uv.code); txt=code[6:] if code[:4]==b"GWCS" else code
                        fn=os.path.join(outdir,f"{d.m_Name}.{k.name}.compute.wgsl")
                        if not os.path.exists(fn) or os.path.getsize(fn)<len(txt): open(fn,"wb").write(txt)
                        print(f"{d.m_Name}.{k.name:24s} COMPUTE wgsl={len(txt)}")
            continue
        if obj.type.name!="Shader": continue
        d=obj.read()
        name=getattr(d.m_ParsedForm,"m_Name",None) or d.m_Name
        if not name: continue
        safe=name.replace("/","_").replace(" ","_")
        if safe.startswith("Hidden") or safe.startswith("TextMeshPro") or safe.startswith("TMP"): continue
        parts=[]; total=0
        for c,dl in chunks(d):
            data,how=dec(c,dl); total+=len(data); parts.append(data)
        full=b"".join(parts); open(os.path.join(blobdir,safe+".blob"),"wb").write(full)
        runs=[r for r in text_runs(full) if is_code(r)]
        txt=b"\n\n/* ================= variant ================= */\n\n".join(runs)
        fn=os.path.join(outdir,safe+".wgsl")
        if not os.path.exists(fn) or os.path.getsize(fn)<len(txt): open(fn,"wb").write(txt)
        print(f"{safe:28s} SHADER decomp={total:>9d} runs={len(runs)} wgsl={len(txt)}")
