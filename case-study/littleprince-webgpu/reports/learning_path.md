# Learning Path: building the `littleprince.dev` look
### Two tracks — (A) Unity 6 → WebGPU the way this site did it, (B) web-native with no engine

> Scope note. Section 1 is grounded in the artifacts already extracted from this build
> (`Build/`, `bundles/`, `extracted/`, `reports/`). Everything else is external research with
> URLs verified at time of writing (2026-10). Where a version claim is contested by sources it
> is flagged **UNVERIFIED / check locally** rather than asserted. Target engine version for this
> build is Unity 6 (6000.x); the WebGPU backend is the interesting new piece, so treat its
> "supported vs experimental" status as a moving target and confirm against the manual for the
> exact 6000.x you install.

---

## 1. What this site is, in engine terms

It is an **ordinary Unity Web (WASM) build** whose only unusual property is that the graphics
backend is **WebGPU instead of WebGL2**. Nothing about the game logic is browser-specific —
the same project could ship to desktop.

Evidence from this build's own files:

| Observation | File / evidence | What it means |
|---|---|---|
| Classic Unity Web layout | `Build/loader.js`, `Build/framework.js.br`, `Build/code.wasm.br`, `Build/game.data.br` | Standard Unity Web player: JS loader + Emscripten framework + IL2CPP WebAssembly + packed data. The `.br` suffix = Brotli pre-compression. |
| Graphics backend | `extracted/boot.config` → `gfx-threading-mode=4`, and the WebGPU `Rendering.GraphicsDeviceType.WebGPU` path | Unity 6 Web build; WebGPU is a *selectable* web graphics API, not a separate player. |
| Physics = PhysX, Unity 6-style | `ScriptingAssemblies.json` lists `UnityEngine.PhysicsBackendPhysXModule.dll` **next to** `UnityEngine.PhysicsModule.dll` | Unity 6 split the physics *backend* (PhysX) from the physics *API* module. This DLL name is itself a Unity 6 tell. |
| Render pipeline = **URP, not HDRP** | Assemblies include `Unity.RenderPipelines.Universal.Runtime.dll`, `...Universal.2D.Runtime.dll`, `Unity.RenderPipelines.GPUDriven.Runtime.dll`; **no** `Unity.RenderPipelines.HighDefinition.Runtime.dll` | The look is produced with the Universal Render Pipeline (+ GPU Resident Drawer / GPU-driven rendering), authored largely in Shader Graph / hand-written HLSL. |
| Addressables + content pipeline | `Unity.Addressables.dll`, `Unity.ResourceManager.dll`, `Unity.ScriptableBuildPipeline.dll`; `StreamingAssets/aa/...` | Chapters and shared assets are **Addressable groups** built into `.bundle` files and streamed on demand. |
| Chapter-as-scene structure | `Bar.Runtime.dll`, `Desert.Runtime.dll`, `King.Runtime.dll`, `Geography.Runtime.dll`, `LittlePrince.Story.dll`, `LittlePrince.Web.dll` | One runtime assembly per chapter/domain (the *Petit Prince* asteroid characters: the rose, the king, the lamplighter, the geographer…). Chapters load as Addressable scenes/assets. |
| Sky material family | `bundles/..._m_b612_sky.mat_*`, `..._m_b612_sky_hdri.mat_*`, `..._m_b612_sky_motion.mat_*` | "B612" is the Little Prince's asteroid. Three sky variants: procedurally-driven sky, an **HDRI-based** sky, and a **motion** sky (the planet rotates → sky animates). |
| Custom shader libraries | `bundles/...shared_assets_assets_shared_core_shaders_*.bundle` (6.5 MB) and `...shared_rendering_shaders_*.bundle` (7.2 MB) | Two big shader bundles: a "core" set and a "rendering" set (likely the environment/water/cloud/atmosphere shaders). |
| Web loading shim | `reports/web/loading.custom.js` | A hand-written JS layer that (a) forces `Cache-Control: immutable` on hashed `.bundle`/`.data` files and `no-store` on catalogs, (b) wraps `fetch` to meter per-bundle download progress, and (c) can swap in an alternate transport URL for a bundle while keeping Unity's original URL intact. This is the Addressables/`.data` streaming surface, customized. |

**In one sentence:** Unity 6 · URP · IL2CPP→WASM · PhysX · Addressables chapter streaming ·
Shader-Graph/HLSL sky + water + cloud + steam effects · a custom JavaScript cache/download shim ·
`loader.js`/`framework.js`/`code.wasm`/`game.data` on the wire, with WebGPU as the graphics API
and WebGL2 almost certainly kept as the fallback.

Steam / "volumetric-ish" effects: with URP the realistic authoring routes are **VFX Graph**
(GPU particles; **requires compute shaders, hence WebGPU** — impossible on WebGL2) and/or
Shader Graph "Six-Way" smoke/cloud shaders. The 6.5 MB/7.2 MB shader bundles are consistent with
a large library of such custom shaders.

---

## 2. TRACK A — "Do it the way this site did it" (Unity 6 → WebGPU)

### A.1 What Unity 6's WebGPU backend actually is

- WebGPU is a **graphics API choice on the Web platform**, not a different exporter. It appears in
  `Player Settings → Web → Other Settings → Graphics API`. Unity tries the APIs **in list order**
  and falls back to the next if the browser can't provide the prior one; keeping **WebGL2 below
  WebGPU** is the recommended safety net.
- **Status timeline** (sources disagree slightly — treat as approximate):
  - WebGPU shipped **experimental** in the Unity 6 line (Unity 6.1, 2025). The 6000.2 manual page is
    literally titled *"WebGPU (Experimental)"*.
  - Unity's roadmap page states the feature became accessible as experimental in 6.1.
  - A later announcement says WebGPU **graduated to a fully supported (non-experimental) feature in
    Unity 6000.6** — but **still ships disabled by default**, with WebGL2 remaining the default web
    API. Some manual pages (6000.7) still carry "experimental" wording: documentation lag.
    → **UNVERIFIED which exact 6000.x you have; verify in your Editor's Player settings and manual.**
- **Browser requirements:**
  - Capability floor: **Chrome 113+ / Edge 113+** (the versions WebGPU first shipped enabled by
    default, per `caniuse`). WebGPU also requires a **secure context (HTTPS)** — a plain-HTTP or
    `file://` page silently falls back to WebGL2.
  - Unity 6 additionally ships a **WebGPU Device Filter asset** whose *default Allow list* is
    conservative (roughly: recent Chromium, recent Firefox, Safari 26+). Browsers outside the list
    fall back to WebGL2 unless you loosen the filter. → **UNVERIFIED exact engine-version numbers;
    read the Device Filter asset's values in your project.**
- **What WebGPU buys you over WebGL2** (this is *why* this site needed it): **compute shaders** →
  GPU particles / VFX Graph, GPU-driven rendering (GPU Resident Drawer, GPU occlusion culling),
  Forward+, STP upscaling, Adaptive Probe Volumes. Any of the volumetric/cloud/steam effects that
  rely on GPU simulation require WebGPU in a web build.
- **Documented limitations to plan around** (from Unity's WebGPU-limitations page): no async
  compute; no `RWBuffer`; no synchronous GPU readback; no texture-format read-write in the same
  pass over the full set of formats; stricter uniformity analysis for barriers; no HLSL extended
  features (Wave Intrinsics, QuadShuffle, Int64, Native16Bit). Volumetric effects that read back to
  CPU or use wave intrinsics will need rework.
- **Production shape:** WebGPU first, WebGL2 fallback, **test on real low-end hardware** — "the
  browser reports WebGPU" is the start of verification, not proof it runs well.

### A.2 Which render pipeline — URP vs HDRP in a web build

**Use URP.** This is not a preference; it is a constraint:

- **HDRP does not support web**. HDRP's supported platforms are desktop/console; Unity's URP
  requirements page lists WebGPU among URP's supported graphics APIs, HDRP's does not.
- This build confirms the choice: only `Unity.RenderPipelines.Universal.*` assemblies are present.
- HDRP's headline features for this look — **Volumetric Clouds** and physically-based sky
  atmosphere — are HDRP-only overrides. In URP you get sky/clouds/water by **authoring them yourself**
  (Shader Graph, hand-written HLSL, VFX Graph) or buying an asset.

**What's real-time vs faked in-browser (URP):**

| Effect | Realistic in URP web (esp. with WebGPU) | Notes |
|---|---|---|
| HDRI sky / static cubemap sky | Yes, cheap | `m_b612_sky_hdri` in this build. Bake an HDRI to a cubemap; sample as skybox + reflection probe. |
| Rotating / animated sky | Yes, cheap | `m_b612_sky_motion`: sky is a shader driven by time; no per-frame cost beyond the shader. |
| Planar/SSR reflections | SSR yes (perf-costly); planars yes | Planar reflection = render scene again from a mirrored camera. Budget carefully on mobile GPUs. |
| Water | Yes — this is a classic URP shader exercise | Normal-map ripples + Fresnel + reflection sampling + refraction of the scene color. |
| Volumetric clouds | Partly | True raymarched volumetrics = expensive. Common web approach: a **height/density layered or 2.5D "cloud dome / cloud ring"** (the site's "cloud ring") rather than full-grid raymarch; or VFX Graph animated billboards. |
| Steam / smoke | Yes via **VFX Graph (GPU)** | VFX Graph needs compute → needs **WebGPU**. This is the single strongest reason the site targets WebGPU. |
| God rays / sun shafts | Yes | Screen-space post effect, or additive cone geometry. |
| Atmosphere scattering | Yes (approximate) | Analytic raymarch of an exponential-atmosphere model in a sky shader; not physically exact but convincing. |

### A.3 Physics (PhysX) essentials for this kind of game

This is an interactive story-game, so physics is mostly **character movement, interaction, and
triggers**, not rigidbody sandboxes. The handful of concepts to actually learn:

- **CharacterController** — a capsule collider with built-in `Move`/`SimpleMove`. It is *always
  upright*, needs **no Rigidbody**, follows floors and is blocked by walls, and can push Rigidbodies
  but is not pushed back by them. **Gotcha:** `OnCollisionEnter` never fires on a `CharacterController`
  — you get hits through **`OnControllerColliderHit(ControllerColliderHit)`**. Don't add a Rigidbody
  to "fix" that; the two are mutually exclusive movement modes.
- **Rigidbody** — for pushable/grabbable props. All physics work goes in **`FixedUpdate`**; move via
  the API (`AddForce`, `linearVelocity`, `MovePosition`), never by writing `transform.position`
  (that teleports and breaks collision resolution). **Unity 6.3 LTS rename:** `Rigidbody.velocity`
  is now **`Rigidbody.linearVelocity`** (`angularVelocity` unchanged).
- **Raycasts / shape casts** — `Physics.Raycast`, `SphereCast`, `BoxCast` for ground checks,
  interaction picking, and line-of-sight. **Default: raycasts ignore triggers**; pass
  `QueryTriggerInteraction.Collide` (or enable `Physics.queriesHitTriggers`) to hit them. If you
  wrote `transform.position` earlier the same frame, call **`Physics.SyncTransforms()`** once before
  querying.
- **Triggers & colliders** — trigger volumes for "walk into the rose garden → chapter event" and
  camera/trigger zones. Colliders define shape independently of the visual mesh; use primitives for
  moving things (trimesh colliders are static-only).
- **What to skip for a first version:** joints/articulations/ragdolls/cloth. They're in the PhysX
  module (`UnityEngine.ClothModule.dll` is even present here) but aren't needed for a walk-and-look
  story game.

### A.4 Addressables + web loading pipeline (so `loading.custom.js` makes sense)

Concepts, in the order they matter:

1. **Addressable groups** — you mark assets/scenes/labels as Addressables; Unity packs them into
   content **bundles** with a content hash in the filename. On web these land under
   `StreamingAssets/aa/<platform>/<group>_<hash>.bundle`. This matches the site's
   `StreamingAssets/aa/...` tree and the `_<32-hex>.bundle` regex in `loading.custom.js`.
2. **Catalog / settings files** — an un-hashed catalog maps addresses → bundle filenames. The site
   deliberately marks **catalogs `no-store`** and **hashed bundles `.data` `immutable`** — the
   standard split: hash-named files can be cached forever; the mutable catalog must not be.
3. **`LoadAssetAsync` / `AsyncOperationHandle`** — runtime load by address or `AssetReference`,
   with reference counting (unload drops the bundle when refcount hits 0). "Chapters as Addressables
   scenes" = load the chapter scene via an `AssetReference` when the story reaches it.
4. **The web-specific layer** — `loading.custom.js` shows the three things people end up writing on
   top of Addressables for the web:
   - **Cache policy injection** — wrap `fetch` to attach `Cache-Control` per file type.
   - **Download metering** — count bytes per bundle for a loading bar (must unwrap
     `response.body.getReader()` and enforce an expected decoded length, because the browser has
     already Brotli-decoded the `.br` payload — hence the explicit length checks and the
     `LPWebDecodedSizes` table).
   - **Transport indirection** — `LPWebBundleTransport` lets a bundle be fetched from an alternate
     URL than Unity requested, without invalidating Unity's `UnityCache` keys. Useful if bundles are
     served from a different CDN/host path than the original build.

Test the whole thing under **HTTPS** (WebGPU requires a secure context).

### A.5 Official Unity resources (verified URLs)

WebGPU
- Manual — WebGPU (experimental-era page): https://docs.unity3d.com/6000.2/Documentation/Manual/WebGPU.html
- Manual — WebGPU (later page, title dropped "experimental"): https://docs.unity3d.com/6000.7/Documentation/Manual/WebGPU.html
- Manual — Limitations of the WebGPU graphics API: https://docs.unity3d.com/6000.7/Documentation/Manual/WebGPU-limitations.html
- Manual — Enable the WebGPU graphics API: https://docs.unity.com/en-us/engine/6000.6/manual/platform-specific/webgl/develop/graphics/web-gpu/enable
- Manual — Configure WebGPU API usage / Device Filter: https://docs.unity3d.com/6000.7/Documentation/Manual/webgpu-device-filter-allow-deny.html
- Manual — Web browser compatibility: https://docs.unity3d.com/6000.7/Documentation/Manual/webgl-browsercompatibility.html
- Unity roadmap — WebGPU Support: https://unity.com/roadmap/360-webgpu-support
- Scripting API — `GraphicsDeviceType.WebGPU`: https://docs.unity.cn/6000.0/Documentation/ScriptReference/Rendering.GraphicsDeviceType.WebGPU.html
- Talk — "Implementing WebGPU for Unity" (Khronos, GDC 2024, PDF): https://www.khronos.org/assets/uploads/developers/presentations/Implementing_WebGPU_For_Unity_Khronos_GDC_2024.pdf

Render pipeline / URP
- Manual — Render pipeline feature comparison: https://docs.unity3d.com/Manual/render-pipelines-feature-comparison.html
- Manual — Choose a render pipeline: https://docs.unity3d.com/Manual/choose-a-render-pipeline.html
- Manual — Requirements and compatibility for URP (lists WebGPU): https://docs.unity3d.com/6000.7/Documentation/Manual/urp/requirements.html
- Manual — Six-Way Shader Graph (URP; "volumetric smoke/clouds"): https://docs.unity3d.com/6000.6/Documentation/Manual/urp/prebuilt-shader-graphs-urp-sixway.html
- Free e-book — *Create shaders and visual effects with URP (Unity 6)* (has water + volumetric-cloud chapters): https://unity.com/resources/create-shaders-visual-effects-urp-unity-6

Physics
- Manual — Built-in 3D physics overview (PhysX): https://docs.unity3d.com/6000.1/Documentation/Manual/PhysicsOverview.html
- Manual — Introduction to character control / CharacterController: https://docs.unity.com/en-us/engine/6000.7/manual/physics-section/physics-overview/character-control-section/character-controllers
- Scripting API — Physics (Raycast, casts, queries): https://docs.unity.cn/6000.0/Documentation/ScriptReference/Physics.html

Addressables
- Manual — Addressables introduction: https://docs.unity3d.com/Packages/com.unity.addressables@2.7/manual/AddressableAssetsOverview.html
- Manual — Organize Addressable assets: https://docs.unity3d.com/Packages/com.unity.addressables@2.7/manual/organize-addressable-assets.html
- Unity Learn — *Get started with Addressables* (make assets addressable / load in scripts): https://learn.unity.com/course/get-started-with-addressables/tutorial/make-assets-addressable

Samples / demos
- Unity Learn — "GPU Driven Rendering on WebGPU with Fantasy Kingdom": https://learn.unity.com/tutorial/685aa5a7edbc2a2e04b495fa
- keijiro / WebGPU-Test (Unity WebGPU test projects): https://github.com/keijiro/WebGPU-Test  · live builds: https://www.keijiro.tokyo/WebGPU-Test/
- Unity-Technologies / unity_web_research (real WGSL produced from Unity projects — useful to see what Unity's shaders compile to): https://github.com/Unity-Technologies/unity_web_research
- Note: Unity ships **no official "WebGPU samples" repo** under `Unity-Technologies`; the above are the closest real, maintained references. (Do not cite a `Unity-Technologies/UnityWebGPU` repo — it does not appear to exist.)

---

## 3. TRACK B — "Do it web-native" (no engine, pure WebGPU)

### B.1 Framework choices and trade-offs

| Option | What it is | WebGPU story | Physics integration | Best when |
|---|---|---|---|---|
| **three.js `WebGPURenderer` + TSL** | The most-used JS 3D library; new renderer with a node/TSL shading system | `import ... from 'three/webgpu'`; a **universal renderer** that falls back to a WebGL2 backend automatically. TSL compiles one JS node-graph to **WGSL or GLSL**. **r181 ships a WebGPU Inspector.** | Rapier / Jolt / Havok / cannon-es all used with three (see B.2) | You want the biggest ecosystem, tons of examples, and a familiar scene graph. **Migrate caveat:** `ShaderMaterial`, `RawShaderMaterial`, `onBeforeCompile`, and old `EffectComposer` passes are **not** supported on `WebGPURenderer` — port to node materials + the new post-processing stack. |
| **Babylon.js** | Microsoft-backed full game engine | First-class since v5; **v8 rewrote core shaders to native WGSL** (removed the GLSL→WGSL conversion layer). Async init: `WebGPUEngine` + `await engine.initAsync()`. Node Material, compute shaders. | First-party **Havok** WASM plugin, plus Ammo/Cannon via community plugins | You want an engine (accessibility tree, particles, inspector, GUI) rather than a renderer. |
| **PlayCanvas** | Lightweight engine + editor | `createGraphicsDevice` can request **WebGPU (Beta)**; falls back to **WebGL2**. GLSL PC shaders are auto-transpiled to WGSL. Engine **V2** = WebGL2 + WebGPU. | Ammo/Rapier integration documented; engine-agnostic physics | You want an editor-driven workflow (vs code-first) and a small runtime. |
| **wgpu (Rust) / wgpu-py (Python)** | Native implementations of the WebGPU API (not browser JS) | `wgpu` runs natively (Vulkan/Metal/D3D12/GL) **and** on WebGPU/WebGL2 via wasm; it is the engine behind **Firefox**. `wgpu-py` wraps `wgpu-native` with CFFI for Python. Ships `naga` (shader translator). | Rapier has a native Rust crate (`rapier`/`bevy_rapier`); Python side typically uses `pygfx`/`rapier` bindings | Desktop tooling, Rust/Python apps, or you want one API across native + web. **Not** a "ship to the browser without wasm toolchain" path. |
| **Raw WebGPU + WGSL** | The browser API directly | Full control, zero abstraction | You wire physics yourself (Rapier/Jolt) | Learning the actual API, or you need something the frameworks can't express. Highest effort. |

Practical default: **three.js `WebGPURenderer`+TSL** if you want a renderer and the widest
ecosystem; **Babylon.js** if you want an engine and a first-party physics plugin.

### B.2 Web physics engines and which renderer they pair with

| Engine | Type | Maturity / perf | Use with | Notes |
|---|---|---|---|---|
| **Rapier** (`@dimforge/rapier3d` / `-compat`) | Rust → WASM; active | Modern, fast, good docs | three.js (also R3F via `react-three-rapier`), Babylon, PlayCanvas | `await RAPIER.init()` before use. Collider **half-extents** (a 0.2 box = `cuboid(0.1,0.1,0.1)`). Sync with `.set(x,y,z)` (Rapier returns plain `{x,y,z}`, not `Vector3`). **Trimesh colliders are static-only.** Enable CCD for fast bodies. Fixed timestep `world.step(1/60, dt, 3)`. |
| **Jolt** (`jolt-physics`, `JoltPhysics.js`) | C++ → WASM (Emscripten) | High quality; same interface as native Jolt | three.js (examples use it directly) | Flavours: `wasm`, `wasm-compat` (wasm inlined as base64, the default), `asm`, plus `-multithread` variants. Docs = the C++ docs. `r3f-jolt` / `@react-three/jolt` wrappers exist. |
| **Havok** (`@babylonjs/havok`) | Proprietary → WASM | **Fastest**, but "less robust", docs thin; needs **WASM SIMD** (breaks iOS < 16.4) | Babylon.js first-party (`HavokPlugin` + `PhysicsAggregate`); standalone use possible | `globalThis.HK = await HavokPhysics()`, then `scene.enablePhysics(gravity, new HavokPlugin(true, HK))` or `new PhysicsAggregate(mesh, PhysicsShapeType.BOX, { mass: 0 }, scene)`. |
| **Ammo.js** (`kripken/ammo.js`) | Bullet → WASM (Emscripten) | Battle-tested (20+ yrs of Bullet), **memory-managed manually**, slower than Havok | three.js (used in most three physics examples); Babylon via plugin | No off-center spring attachment, no slider constraint, manual `Ammo.destroy`. |
| **cannon-es** (`pmndrs/cannon-es`) | Pure JavaScript | **Slowest** (64-bit math in JS), but no WASM, easiest to debug | three.js (simple scenes) | No CCD, no collision filtering, global restitution. "Fast enough for small sims." |

Rough guidance: **Rapier** is the modern default; **Jolt** if you want the highest-quality solver
and will accept the C++-style API; **Havok** only if you're on Babylon and need maximum speed;
**cannon-es** for throwaway prototypes; **Ammo** if you need a specific Bullet feature (soft bodies).

### B.3 Core WebGPU concepts you must learn

Ranked by how quickly they block you:

1. **Adapter/device/canvas config** — `navigator.gpu.requestAdapter()` → `requestDevice()` →
   `canvas.getContext('webgpu')` → `context.configure({device, format})`. Async; the device is the
   factory for every resource. HTTPS required.
2. **Command encoding & passes** — `GPUCommandEncoder` → `beginRenderPass()` (color/depth
   attachments, `loadOp`/`storeOp`) or `beginComputePass()` → `finish()` → `queue.submit()`.
3. **Pipelines** — `createRenderPipeline()` / `createComputePipeline()`: the encoded GPU state
   (shader entry points, vertex layout, blend/depth, primitive topology).
4. **WGSL** — the shading language (Rust-like, statically typed). Entry points `@vertex`,
   `@fragment`, `@compute`; address spaces (storage/uniform/workgroup/private/function); attributes.
5. **Bind groups & layouts** — the *most common source of confusion*: how buffers, textures, and
   samplers are grouped (`@group(n) @binding(m)`) and bound with `setBindGroup()`. Implicit vs
   explicit layouts.
6. **Buffers & the upload path** — `createBuffer`, `queue.writeBuffer`, and the
   `mapAsync`/`getMappedRange` read-back path (compute results).
7. **Textures, samplers, and mipmaps** — plus depth textures and their formats.
8. **MSAA** — `multisample.count` and a resolve target.
9. **Instancing** — `stepMode: 'instance'` vertex buffers; draw a field of rocks/particles in one call.
10. **Compute → the reason this site needs WebGPU** — `dispatchWorkgroups()`, storage buffers,
    workgroup memory. GPU particles, ocean/FFT, cloud density fields, and simulation all live here.
11. **Error handling** — `pushErrorScope`/`popErrorScope`; errors are "contagious" and propagate.

The "planet + sky + clouds + water" scene exercises almost all of these: sky = fullscreen/box
shader (2,4,5,6); water = planar reflection to a texture then a shading pass (2,3,5,7); clouds =
either a volumetric march in a compute pass (10) or an alpha-blended billboard/dome layer;
instancing for surface detail (9).

### B.4 WebGPU learning resources (verified URLs)

Official / specs
- MDN — WebGPU API: https://developer.mozilla.org/en-US/docs/Web/API/WebGPU_API
- W3C — WebGPU spec: https://www.w3.org/TR/webgpu/
- W3C — WGSL spec: https://www.w3.org/TR/WGSL/
- Can I use — WebGPU (browser support): https://caniuse.com/webgpu

Tutorials / books
- **WebGPU Fundamentals** (the canonical progressive tutorial; 3D math, texturing, cubemaps, MSAA,
  compute; community translations incl. Chinese): https://webgpufundamentals.org/
  - first lesson: https://webgpufundamentals.org/webgpu/lessons/webgpu-fundamentals.html
  - WGSL function reference: https://webgpufundamentals.org/webgpu/lessons/webgpu-wgsl-function-reference.html
- **WebGPU Unleashed** (free interactive e-book by Shi Yan; ends with Gaussian-splatting rendering;
  every snippet has an online playground): https://shi-yan.github.io/webgpuunleashed/
- **Google Codelab — "Your first WebGPU app"** (build Conway's Game of Life; covers render *and*
  compute): https://codelabs.developers.google.com/your-first-webgpu-app
  - checkpoints: https://github.com/GoogleChromeLabs/your-first-webgpu-app-codelab
- **Tour of WGSL** (interactive WGSL intro, runnable, Ctrl-O on any symbol shows docs):
  https://google.github.io/tour-of-wgsl/
  - source: https://github.com/google/tour-of-wgsl
- **Learn WGPU** (Rust/wgpu; also teaches the graphics basics; `wgpu`'s own docs point here):
  https://sotrh.github.io/learn-wgpu/
  - Chinese: https://jinleili.github.io/learn-wgpu-zh/

Framework docs
- three.js — WebGPURenderer manual: https://threejs.org/manual/pages/webgpurerenderer
- three.js — Three.js Shading Language (TSL) wiki: https://github.com/mrdoob/three.js/wiki/Three.js-Shading-Language
- three.js — full docs (machine-readable, includes TSL): https://threejs.org/docs/llms-full.txt
- three.js — built-in `Sky` / `Water` / `Reflector` addons live in the repo:
  https://github.com/mrdoob/three.js/tree/master/examples/jsm/objects
- Babylon.js — WebGPU support: https://doc.babylonjs.com/setup/support/webGPU
- Babylon.js — repo: https://github.com/BabylonJS/Babylon.js
- PlayCanvas — engine: https://github.com/playcanvas/engine
- PlayCanvas — supported browsers / backends: https://developer.playcanvas.com/user-manual/engine/supported-browsers/
- wgpu (Rust) — homepage: https://wgpu.rs/  · crate v26: https://docs.rs/crate/wgpu/26.0.1
- wgpu-py (Python): https://wgpu-py.readthedocs.io/
- Rapier: https://rapier.rs/  · npm: https://www.npmjs.com/package/@dimforge/rapier3d
- react-three-rapier: https://github.com/pmndrs/react-three-rapier
- JoltPhysics.js: https://github.com/jrouwe/JoltPhysics.js  · npm: https://www.npmjs.com/package/jolt-physics
- Ammo.js: https://github.com/kripken/ammo.js
- cannon-es: https://github.com/pmndrs/cannon-es
- Babylon Havok plugin guide: https://doc.babylonjs.com/features/featuresDeepDive/physics/havokPlugin
- @babylonjs/havok: https://www.npmjs.com/package/@babylonjs/havok

### B.5 Minimal reproducible "planet + sky + clouds + water" project, step by step

Target: a single rotating spherical planet with an HDRI/procedural sky, a cloud layer, and a water
surface, in the browser with WebGPU. Physics optional until the end.

**Step 0 — Scaffold.** `npm create vite@latest` (or plain files served over `https://localhost`).
Install `three` (for Track-B-fastest). Entry: `import * as THREE from 'three/webgpu'` and
`import { ... } from 'three/tsl'`. Create `WebGPURenderer`, set `await renderer.init()`, use
`setAnimationLoop`. Verify `navigator.gpu` exists; otherwise `await renderer.init()` will take the
WebGL2 backend — plan for that.

**Step 1 — Planet.** A high-res icosphere with a day texture (or a TSL procedural surface). Camera +
`OrbitControls`. Confirms: render pipeline, MVP matrices, texture binding, sRGB/tonemapping.

**Step 2 — Sky.** Two paths:
- *Cheap/robust:* load an HDRI, bake it to a cubemap / use `PMREMGenerator`, set it as
  `scene.environment` and as the background. This mirrors the site's `m_b612_sky_hdri`.
- *Animated:* a fullscreen or box sky shader with an analytic atmosphere model (e.g. Preetham-style
  or a simple Rayleigh/Mie raymarch), driven by `time` → this is the site's `m_b612_sky_motion`.
Allocate a `depthFunc: 'less-equal'` depth buffer, and make sure the sky doesn't occlude/cull wrong.

**Step 3 — Water.** A large plane using normal-map rings for ripples + a Fresnel term. Reflection:
render the scene from a mirrored camera into a render target, then sample it in the water shader
(this is exactly what three's `Reflector`/`Water` addons do — read them, then port to TSL node
materials, since `ShaderMaterial` is unsupported on `WebGPURenderer`). Add refraction by sampling
the scene color texture with an offset. This step teaches render targets, texture sampling, and a
second render pass.

**Step 4 — Clouds.** Pick one and be honest about cost:
- *2.5D layer (recommended for web):* an alpha-blended curved sheet or dome with scrolling noise
  (a "cloud ring"), lit by the sun direction. Cheap, and visually close to the site's ring.
- *True volumetric:* a compute pass that fills a 3D (or 2D-sliced) density field, then a raymarch in
  the fragment shader. This is the WebGPU-flexing path and matches the site's WebGPU rationale —
  it is also where performance risk lives. Do step 4b only after 4a works.

**Step 5 — Steam/VFX.** Animated alpha-blended billboards or a GPU particle system (compute pass
writing positions to storage buffers, then an instanced draw). Confirms: compute pass, storage
buffer round-trip, instancing.

**Step 6 — Physics (optional).** Add Rapier. `await RAPIER.init()`, create a world with gravity,
attach a `ball`/`capsule` body + collider for a walker, and a static `heightfield`/`trimesh` for the
ground (remember: trimesh colliders are static-only). In the loop: `world.step()`, then copy
`translation()`/`rotation()` onto the mesh with `.set(...)`.

If you'd rather learn the raw API first, do **Google's codelab** and **WebGPU Fundamentals**
through the cube-map and compute lessons before Step 3 — Steps 3–5 are where raw-API knowledge pays
off.

---

## 4. Recommended project sequence (4–6 steps to actually build the effect)

Choose Track A or B once (see §5), then run this spine either way — the *effects* are the same, only
the authoring surface differs.

1. **Get one triangle of the real stack on screen.** Track A: a Unity 6 URP project with WebGPU added
   above WebGL2 in Player settings, an empty scene, build to Web, open in Chrome over HTTPS.
   Track B: a `WebGPURenderer` drawing one cube. *Done when* the browser shows your content and
   `chrome://gpu` reports WebGPU active.
2. **Sky + atmosphere.** Static HDRI sky first (prove texture/reflection pipelines), then an
   animated/time-driven sky shader. *Done when* the planet is lit by a sky you can rotate.
3. **Water with a real reflection.** Mirrored-camera render target → water shader. *Done when*
   reflections track the camera and Fresnel brightens at grazing angles.
4. **Clouds — start cheap, then escalate.** Billboarded/noise cloud layer first; only then a
   volumetric raymarch (Track A: VFX Graph or a custom volume; Track B: a compute pass + raymarch).
   *Done when* the cloud ring reads as depth, not a flat decal.
5. **Motion loop + one interaction.** Make the planet rotate and drive the sky/clouds/water from the
   same clock. Add one physical interaction (walk into a trigger → chapter change / camera move).
   *Done when* a 30-second unscripted playthrough looks coherent on a mid-range laptop.
6. **Ship-shape the loading.** Package content as Addressables groups (Track A) or split bundles
   (Track B) behind a progress bar, test on a real low-end device, and add the WebGL2 fallback path
   (Track A) or a `forceWebGL` fallback (Track B). *Done when* a cold load, a cache-warm load, and a
   no-WebGPU browser all behave.

---

## 5. Which should I pick? (decision note)

**Pick Track A (Unity 6 → WebGPU) if** you want the *destination* this site reached — a shippable,
chapter-structured narrative game with an editor, an asset pipeline, localization, and physics for
free — and you accept the weight (50 MB+ WASM, engine build times, WebGPU's still-moving web
support). You will still author the hero effects (sky/water/clouds/steam) yourself in
Shader Graph/HLSL/VFX Graph, because URP has no built-in volumetric clouds. The single most important
constraint to internalize: **any effect that needs compute (VFX Graph, GPU particles) is impossible
on WebGL2 — that is what WebGPU is for here**, so keep a WebGL2 fallback for older browsers but
design the hero effects for WebGPU.

**Pick Track B (web-native) if** your goal is to *understand and build the effect itself*, ship
something small, or you come from JS. three.js `WebGPURenderer`+TSL gives you the fastest path with
the most examples (and three's `Sky`/`Water`/`Reflector` addons are literally the effects you want —
read them, port to TSL). Babylon.js is the better choice if you want an engine and first-party
physics (Havok). Raw WebGPU/WGSL is the right choice only if the goal is learning the API itself.

**The pragmatic hybrid:** learn Track B Step 1–3 to *understand* bind groups, render passes, and
reflections (a weekend), then decide. If you go Track A, that knowledge maps directly onto Unity's
shader authoring and onto `unity_web_research`'s WGSL output, so it is not wasted.

Either way: **target WebGPU first, keep a WebGL2 fallback, and test on real low-end hardware** —
that is the one lesson this site's own build (and Unity's own docs) teach most clearly.

---

*All external URLs above were returned by live web search at authoring time (2026-10). Items marked
**UNVERIFIED** are points where sources conflicted or where the exact value depends on your installed
Unity 6000.x; verify those locally.*
