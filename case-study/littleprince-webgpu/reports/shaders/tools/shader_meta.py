import UnityPy, os
for b in ["bundles/shared_assets_assets_shared_core_shaders_4b76f6f1bd6dc054e88e239d0e386e4e.bundle",
          "bundles/shared_assets_assets_shared_rendering_shaders_acb0aa18d2b8ddb5a170706242f2b762.bundle"]:
    env=UnityPy.load(b)
    for obj in env.objects:
        if obj.type.name!="Shader": continue
        d=obj.read(); pf=d.m_ParsedForm
        name=pf.m_Name
        if not name.startswith("B612"): continue
        print("="*70); print("SHADER",name)
        try:
            props=pf.m_PropInfo.m_Props
        except Exception: props=[]
        print(" properties (%d):"%len(props))
        for p in props:
            print("   ",p.m_Description or p.m_Name, "|", ", ".join(k for k in (p.m_Attributes or [])))
        for si,ss in enumerate(pf.m_SubShaders):
            gk=[k.m_Keyword for k in (getattr(ss,"m_LocalKeywords",[]) or [])]
            print(f" subshader[{si}] passcount={len(ss.m_Passes)} localKeywords={gk}")
            for pi,p in enumerate(ss.m_Passes):
                st=p.m_State
                print(f"   pass[{pi}] tags={[(t.m_Key,t.m_Value) for t in (st.m_Tags or [])]} cull={getattr(st,'m_Culling',None)} zwrite={getattr(st,'m_ZWrite',None)} blend={getattr(st,'m_Blend0',None)}")
