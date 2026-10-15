# littleprince.dev — full extraction index

Target: `https://littleprince.dev/` ("小王子：星辰之旅" / *The Little Prince Among the Stars*).
Everything below was recovered from the live deployment's own artifacts.

## What it is (the short answer)
A **Unity 6 game** ("B612"), exported to the **WebGPU** backend and streamed as Addressables chapters.
- **Engine:** Unity **6000.3.25f1** (Unity 6.3), IL2CPP → WebAssembly.
- **Render pipeline:** **URP 17 + RenderGraph** (`Unity.RenderPipelines.Universal.Runtime.dll`; no HDRP).
- **Physics:** Unity **PhysX** (`PhysicsBackendPhysXModule.dll`) — but gameplay uses **raycast/IK character
  grounding** (`FootGrounder`, `CarryClearanceProbe`, `CarryHandIK`), not rigidbody simulation.
- **Graphics API:** **WebGPU** — module imports `env.wgpu_*` (Dawn shape) + `framework.js` `_wgpu_*`; shader
  compiler platform 26.
- **Authoring presence:** 275 custom C# types across `B612`, `B612.Rendering`, `LittlePrince.{UI,Bar,StarObservatory,Journey,Geography,King,Vanity,Lighter,Web,Story}`; 37 custom WGSL shaders.

## Directory map
```
lp-re/
├── Build/                      # downloaded Unity web build
│   ├── code.wasm.br            # 51.77 MB — the WebAssembly module (raw wasm, NOT brotli)
│   ├── framework.js.br         # 482 KB — Emscripten/Unity runtime JS (plain text)
│   ├── loader.js               # Unity createUnityInstance loader
│   └── game.data.br            # 39 MB — UnityWebData1.0 container
├── extracted/                  # unpacked game.data container
│   ├── Il2CppData/Metadata/global-metadata.dat   # 7.47 MB — the C# name table
│   ├── data.unity3d            # 27 MB serialized assets
│   ├── sharedassets0.resource  # (holds an MP4 fragment, no shaders)
│   ├── ScriptingAssemblies.json, RuntimeInitializeOnLoads.json, boot.config
│   └── Resources/unity default resources
├── StreamingAssets/aa/catalog.bin   # Addressables catalog (228 bundles)
├── bundles/                    # 41 downloaded UnityFS AssetBundles (727 MB)
└── reports/
    ├── il2cpp_metadata.md       # C# API surface (3,100 types; 275 game types)
    ├── wasm.md                  # module structure, imports/exports, assemblies
    ├── web_layer.md             # custom JS vs Unity boilerplate; loading + bridge
    ├── shaders.md               # 37 WGSL shaders + materials/scenes
    ├── learning_path.md         # how to learn this (Unity track + web-native track)
    ├── il2cpp/   wasm/   web/   shaders/   # extracted raw artifacts
```

## Findings by area

### 1. C# / IL2CPP  → `reports/il2cpp_metadata.md`, `reports/il2cpp/`
- metadata version 39; string heap @0x69388 (1,359,734 B) → **75,767 identifiers**.
- **3,100 typeDefinitions** parsed; **275 game-owned types**; method **bodies not recoverable**
  (compiled into wasm) — the name/signature surface is complete.
- Render/effect classes: `B612CloudLayer`, `B612CloudSea`, `B612WaterParams` (37 fields), `B612AmbientEmitter`,
  `B612DuskShadowScaler`, `B612SeatRimLight`, `CloudPass`, `LighterSkyReflection`, `VanityPlanarMirror`.
- Character/physics: `CarryClearanceProbe`, `CarryProp`, `CarryHandIK`, `FootGrounder`, `LocomotionProbe`, `ZoneFootsteps`.

### 2. WASM  → `reports/wasm.md`, `reports/wasm/`
- 51,769,628 B, raw wasm (not brotli). **Symbols stripped** (no custom sections).
- **564 imports** (WebGL 166, invoke_ 130, Unity JS 101, **WebGPU 60**, emscripten 42, syscalls 37, game `LPWeb*` 10);
  **596 exports**; **125,902** defined functions; memory 256 MiB → 4 GiB.
- **70 managed assemblies** incl. per-chapter `*.Runtime.dll`.
- Emscripten version: **not derivable** from these artifacts.

### 3. Web layer  → `reports/web_layer.md`, `reports/web/`
- Custom code = inline i18n + title/loading screen + `LPWebLoading` cache shim + 10 `LPWeb*` JSLIB imports;
  everything else is stock Unity.
- Immutable caching for hashed bundles; `no-store` otherwise; per-chunk `Content-Length` rewrite after Brotli.
- 8 languages (`en,fr,es,de,pt,zh,ja,ko`); `localStorage["lp-lang"]`.

### 4. Shaders / assets  → `reports/shaders.md`, `reports/shaders/`
- **37 custom WGSL sources recovered verbatim** (UnityFS v8 / LZ4HC → per-chunk LZ4 → WGSL text). Each file
  keeps its original `//Assets/.../<Name>.shader` path. (Large files are concatenated variant/permutation blobs.)
- Sky = fully procedural (89 properties: cirrus, stars, milky way, moon, sun disk, crepuscular rays, day-dusk grading).
- Water family = URP-forward PBR (dual normal-map flow, refraction, depth-based soft edges, foam, caustics, reflection probe atlas).
- Steam = six-way-lit soft particles; **SteamPlume = 32-step raymarched volumetric**.
- Scene `B612_Main`: 1,924 GameObjects, 2 reflection probes (one realtime 6000-unit sky probe), HDR, 2 shadow cascades.
- Bundled author doc `README` (sky): Poly Haven CC0 HDRIs (Sunflowers/Pure Sky, The Sky Is On Fire), Blender
  `prepare_hdri.py`, 8192×2048 panorama convention, `_Ring` horizon strips.

## Honest limits
- **No ShaderLab / ShaderGraph source** exists in the build — only compiled WGSL (variable names are `u_xlat0`/`x_35`;
  intent survives via material property labels + the sky README).
- C# method bodies require disassembling 126k wasm functions (not done).
- 3 level bundles (`king`/`lamp`/`theater_scenes_all`) returned proxy 502; `counting_scenes_all` truncated. Their
  shaders reuse the already-recovered shared set.
- Unity WebGPU's supported-vs-experimental timeline is doc-lagged → marked **verify-locally** in `learning_path.md`.

## Reproduce
```
curl -s https://littleprince.dev/Build/<hash>.wasm.br -o code.wasm     # raw wasm despite .br
python3 lp-re/wasm_parse.py  lp-re/Build/code.wasm.br lp-re/reports/wasm
python3 lp-re/wasm_strings.py lp-re/Build/code.wasm.br lp-re/reports/wasm
```
