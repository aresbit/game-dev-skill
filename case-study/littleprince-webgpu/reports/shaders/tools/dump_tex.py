import UnityPy, glob, os, json
texs=[]
for b in sorted(glob.glob("/home/tars/yys/webgpu/lp-re/bundles/*.bundle")):
    try: env=UnityPy.load(b)
    except Exception as e: 
        print("load fail",b,e); continue
    for obj in env.objects:
        if obj.type.name!="Texture2D": continue
        d=obj.read()
        try: w,h,fmt=d.m_Width,d.m_Height,d.m_TextureFormat
        except Exception as e: w=h=fmt=str(e)
        texs.append({"name":d.m_Name,"w":w,"h":h,"fmt":str(fmt),"bundle":os.path.basename(b)})
json.dump(texs,open("/home/tars/yys/webgpu/lp-re/reports/shaders/textures.json","w"),indent=1)
print("textures:",len(texs))
for t in texs: print(f"  {t['name']:42s} {t['w']}x{t['h']} {t['fmt']}")
