import UnityPy, os, glob, json
bundles = sorted(glob.glob("/home/tars/yys/webgpu/lp-re/bundles/shared_assets_assets_shared_rendering_materials*.bundle"))
out=[]
for b in bundles:
    env=UnityPy.load(b)
    for obj in env.objects:
        if obj.type.name!="Material": continue
        d=obj.read()
        rec={"name":d.m_Name,"bundle":os.path.basename(b),"shader":None,"floats":{},"colors":{},"ints":{},"textures":{}}
        try:
            rec["shader"]=d.m_Shader.read().m_Name
        except Exception as e:
            try: rec["shader"]=d.m_Shader.name
            except: rec["shader"]=f"<{e}>"
        try:
            sp=d.m_SavedProperties
            for k,v in getattr(sp,"m_Floats",[]) or []:
                rec["floats"][k]=v
            for k,v in getattr(sp,"m_Ints",[]) or []:
                rec["ints"][k]=v
            for k,v in getattr(sp,"m_Colors",[]) or []:
                try: rec["colors"][k]=[v.r,v.g,v.b,v.a]
                except: rec["colors"][k]=str(v)
            for k,v in getattr(sp,"m_TexEnvs",[]) or []:
                try:
                    tex=v.m_Texture
                    nm=None
                    try: nm=tex.read().m_Name
                    except: nm=getattr(tex,'m_PathID',None)
                    rec["textures"][k]=(nm, v.m_Scale.x, v.m_Scale.y, v.m_Offset.x, v.m_Offset.y)
                except Exception as e:
                    rec["textures"][k]=f"<{e}>"
        except Exception as e:
            rec["err"]=str(e)
        out.append(rec)
json.dump(out, open("/home/tars/yys/webgpu/lp-re/reports/shaders/materials.json","w"), indent=1)
for r in out:
    print("MAT", r["name"], "| shader:", r["shader"])
