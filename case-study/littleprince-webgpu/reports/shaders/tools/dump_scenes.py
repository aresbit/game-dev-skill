import UnityPy, os
for b in ["bundles/b612_scenes_all_f593f551f550041f5a2feb47872f92c6.bundle"]:
    env=UnityPy.load(b)
    import collections
    c=collections.Counter()
    names=[]
    for obj in env.objects:
        c[obj.type.name]+=1
        if obj.type.name in ("GameObject","SceneSettings"):
            try:
                d=obj.read(); names.append((obj.type.name,d.m_Name))
            except: pass
    print("=== ",b); print("types:",dict(c))
    gos=[n for t,n in names if t=="GameObject"]
    print("GameObjects:",len(gos))
    for n in gos[:120]: print("   GO:",n)
