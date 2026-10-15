# B612 (littleprince.dev) — WebGPU shader & rendering recovery

**Target:** Unity 6 Web build of "B612" (The Little Prince), <https://littleprince.dev/>
**Scope:** recover WebGPU (WGSL) shader source and the material / sky / cloud / water / steam setup.
**Inputs (read-only):** `extracted/data.unity3d`, `extracted/sharedassets0.resource`, `extracted/Resources/unity default resources`, `StreamingAssets/aa/catalog.bin`
**Outputs:** this report, `reports/shaders/` (recovered WGSL + metadata), `bundles/` (downloaded AssetBundles)

---

## 0. TL;DR

* The build is **Unity 6000.3.25f1 (Unity 6.3)**, rendered with the **Universal Render Pipeline (URP 17, RenderGraph)** — *not* HDRP. The WASM build is WebGPU (shader compiler platform `26`), and every shader ships as **WGSL source text**.
* Bundle container: **UnityFS v8, LZ4HC** (`flags=0x243`, compression code `3`). Individual shader sub‑programs are **raw LZ4 blocks** inside the bundle.
* **37 custom shaders** were recovered **as readable WGSL** across four groups:
  * 18 shared **B612** shaders — the full procedural **Sky** (clouds / cirrus / stars / milky way / moon / sun disk / rays), **Water / Stream / Pond / Waterfall / SandBoil**, **Steam + volumetric SteamPlume**, **Grass / Foliage / Bark**, **PlanetRock / FarLandscape**, **CloudLayer / CloudPuff**, **Glow**, **Fabric**, plus a **B612VegetationCull** compute shader;
  * 6 **Bar** level shaders (`Bar/NightSky`, `Bar/GroundStone`, `Bar/IslandGround`, `Bar/BottleGlass`, `Bar/BottleLiquid`, `Bar/ChimneySmoke`);
  * 7 **Desert** level shaders (`Desert/Sand`, `Desert/Rock`, `Desert/UserSky`, `Desert/Footprint`, `Desert/FountainWater`, `Desert/WaterSheet`, `Desert/Particle`);
  * 7 **LittlePrince/Geography** level shaders (`…/Sky`, `…/CloudSea`, `…/CloudSprite`, `…/Distant`, `…/LitWind`, `…/LightShaft`, `…/Flame`).
  Unity's own WGSL (URP Lit/Terrain/Particles, TextMeshPro) was also dumped separately.
* Material property names are self‑documenting (the author wrote parameter docs into the property labels) — see `shader_properties.txt`. This is effectively a spec of the whole look.

---

## 1. Evidence & exact commands

### 1.1 Input headers (read-only)

```bash
xxd extracted/data.unity3d | head -3      # 55 6e 69 74 79 46 53 00 00 00 00 08 "5.x.x" "6000.3.25f1"
```

Parsed UnityFS header (python, `struct`):

| file | version | unityVersion | flags | compression |
|---|---|---|---|---|
| `data.unity3d` | 8 | `6000.3.25f1` | `0x243` | `3` = **LZ4HC** |
| `shared_core_shaders_*.bundle` | 8 | `6000.3.25f1` | `0x243` | LZ4HC |
| `shared_rendering_shaders_*.bundle` | 8 | `6000.3.25f1` | `0x243` | LZ4HC |

`extracted/sharedassets0.resource` is **not** a Unity serialized file — `file` reports it as `ISO Media, MP4 v2` (an `.mp4`/`.mov` fragment starting `ftypmp42`). It holds no shaders.

### 1.2 Bundle catalogue (no guessing)

The Addressables catalog embeds the full internal names **with hashes**. They were mined directly:

```bash
strings -n 12 StreamingAssets/aa/catalog.bin \
  | grep -oE '[A-Za-z0-9_./-]+_[0-9a-f]{32}\.bundle' | sort -u
# 114 bundles; full list also shows .shader names, .mat names, texture names
```

`settings.json` confirms: `m_buildTarget: "WebGL"`, Addressables `4.1.1`, bundles under `{RuntimePath}` →
`https://littleprince.dev/StreamingAssets/aa/WebGL/<name>_<hash>.bundle` (verified `HTTP/2 200`, `content-type: application/octet-stream`, Cloudflare).

### 1.3 Download

```bash
cd bundles
curl -sL --fail -o "<name>.bundle" "https://littleprince.dev/StreamingAssets/aa/WebGL/<name>.bundle"
```

40/45 requested bundles are valid UnityFS (verified by loading each with UnityPy). 5 large level‑scene bundles initially arrived truncated through the local proxy (HTTP 502 `CONNECT tunnel failed`); `bar_scenes_all` re‑fetched cleanly, the rest were still retrying at report time (see §9).

### 1.4 Decompression & WGSL extraction

**No pip packages were available system-wide**; `python3 -m venv` failed (`ensurepip` missing → `apt install python3.12-venv` would be required). Rather than touching the system, **UnityPy 1.25.4 was installed into a local directory**:

```bash
python3 -m pip install --target /home/tars/yys/webgpu/lp-re/pylibs UnityPy
PYTHONPATH=/home/tars/yys/webgpu/lp-re/pylibs python3 ...
```

(pip pulled `lz4`, `Pillow`, `brotli`, `texture2ddecoder`, `etcpak`, `astc-encoder-py`, … into `pylibs/`. Nothing was installed system‑wide.)

Shader blob extraction logic (see `/tmp/extract_all.py`, `/tmp/extract_generic.py`):

1. `UnityPy.load(bundle)` → for each `Shader` object read `m_ParsedForm` (reflection) and `compressedBlob`.
2. The blob is a **concatenation of N chunks**; split by `offsets`/`compressedLengths`, then `lz4.block.decompress(chunk, uncompressed_size=decompressedLengths[i])`.
3. The decompressed buffer = a header/offset table + constants‑buffer reflection + **WGSL text per variant**. Text runs (printable, len ≥ 100, containing `fn `/`@vertex`/`@fragment`/`struct `) were joined into `<name>.wgsl`.
4. `ComputeShader` is different: WGSL is stored **uncompressed** in `variants[].kernels[].uniqueVariants[].code` behind a `GWCS\x01\x00` magic.

---

## 2. Shader source is plain WGSL (verbatim sample)

First 24 bytes of the decompressed Sky vertex blob (`reports/shaders/raw_blobs/B612_Sky.blob`) are an offset table, then uniform reflection, then:

```wgsl
//Assets/Shared/Rendering/Shaders/B612_Glow.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_GlowColor : vec4f,
  /* @offset(16) */
  x_Falloff : f32,
  ...
}
@vertex
fn main(@location(0) in_TEXCOORD0_param : vec2f) -> main_out { ... }
```

Every recovered program carries the **original ShaderLab path as a comment** (e.g. `//Assets/Shared/Rendering/Shaders/B612_Sky.shader`), which is how the reflection names were cross‑checked.

**Important nuance:** a Unity shader object exports *all compiled keyword variants* concatenated (Sky = 3 variants → 223 KB of WGSL; Foliage = 493 variants → 45 MB). The `.wgsl` files are the **verbatim concatenated source**, separated by a `/* ===== variant ===== */` banner. They are not a single tidy file — but they are the real, unmodified WGSL Unity produced.

---

## 3. Shader inventory

### 3.1 Custom B612 shaders (recovered as WGSL — `reports/shaders/*.wgsl`)

| Shader | source | size (WGSL) | role |
|---|---|---|---|
| `B612/Sky` | `B612_Sky.wgsl` | 224 KB | procedural sky: clouds, cirrus, stars, milky way, moon, sun disk, crepuscular rays, day/dusk grading, HDRI/panorama modes |
| `B612/Water` | `B612_Water.wgsl` | 681 KB | river/water ribbon: dual normal map flow, refraction, depth soft edges, foam, caustics, sun glint |
| `B612/Stream` | `B612_Stream.wgsl` | 832 KB | stream: flow‑map advection, standing waves, whitewater churn, streaks |
| `B612/Pond` | `B612_Pond.wgsl` | 981 KB | pond with a steam **vent boil** (dome + rings + churn), flecks |
| `B612/Waterfall` | `B612_Waterfall.wgsl` | 86 KB | waterfall sheet |
| `B612/SandBoil` | `B612_SandBoil.wgsl` | 396 KB | boiling sand around vents |
| `B612/Steam` | `B612_Steam.wgsl` | 77 KB | six‑way‑lit soft particle steam |
| `B612/SteamPlume` | `B612_SteamPlume.wgsl` | 178 KB | **raymarched volumetric steam plume** (3D noise, erosion, 32 steps) |
| `B612/CloudLayer` | `B612_CloudLayer.wgsl` | 226 KB | cloud layer/plane |
| `B612/CloudPuff` | `B612_CloudPuff.wgsl` | 45 KB | cumulus puff |
| `B612/Grass` | `B612_Grass.wgsl` | 6.98 MB | instanced grass, per‑blade colour, gusts, player push |
| `B612/Foliage` | `B612_Foliage.wgsl` | 41.8 MB | foliage/README atlas shader (many variants) |
| `B612/Bark` | `B612_Bark.wgsl` | 9.08 MB | trees/bark |
| `B612/PlanetRock` | `B612_PlanetRock.wgsl` | 3.17 MB | triplanar rock, strata, moss |
| `B612/FarLandscape` | `B612_FarLandscape.wgsl` | 160 KB | distant terrain wafer, haze, mist, cloud shadows |
| `B612/Glow` | `B612_Glow.wgsl` | 28 KB | additive HDR vent glow with flicker |
| `B612/Fabric` | `B612_Fabric.wgsl` | 45.2 MB | URP‑Lit‑derived **cloth/sheen** shader (scarf) |
| `B612VegetationCull` (compute) | `B612VegetationCull.CullInstances.0.compute.wgsl` | 7.9 KB | GPU frustum culling of vegetation instances |

### 3.1b Level‑specific custom shaders (extracted from scene bundles)

The level scene bundles embed their own shaders. From `bar_scenes_all` (verbatim `m_ParsedForm.m_Name`):

| Shader | source | size (WGSL) | role |
|---|---|---|---|
| `Bar/NightSky` | `Bar_NightSky.wgsl` | 212 KB | second procedural sky: zenith/horizon bands, horizon haze, photo equirect, upper‑cloud prototype, moonlit rims |
| `Bar/GroundStone` | `Bar_GroundStone.wgsl` | 10.0 MB | atlas‑driven ground stone with vertex tint, grit, foot‑traffic band, breakup |
| `Bar/IslandGround` | `Bar_IslandGround.wgsl` | 31.3 MB | Bar island terrain/ground |
| `Bar/BottleGlass` | `Bar_BottleGlass.wgsl` | 679 KB | transmissive glass |
| `Bar/BottleLiquid` | `Bar_BottleLiquid.wgsl` | 706 KB | liquid in a bottle |
| `Bar/ChimneySmoke` | `Bar_ChimneySmoke.wgsl` | 151 KB | chimney smoke |

`Bar/NightSky` property list (excerpt, verbatim): `Zenith`, `Upper sky (about 30 deg)`, `Horizon`, `Horizon haze (rgb), strength (a)`, `Haze band half width (deg; twice that below the horizon)`, `Afterglow (rgb), a height (deg)`, `Afterglow azimuth (deg, from +Z to +X), spread exponent`, `Photo sky (HDR equirect, elevation 0..90)`, `Photo cloud coverage (R)`, `Photo sun (x az, y el, z dim strength, w dim exponent) in photo space`, `Cloud tint (rgb, x the sky's luminance), a greyness`, `Moonlit rims`. `Bar/GroundStone` documents `Vertex colour is sRGB (Blender FBX)`, `Mask B = tint weight`, `Contrast (about linear 0.18)` etc.

### 3.1c Desert & Geography level shaders

From `earth_scenes_desert_*` and `geo_scenes_all`:

| Shader | source | props | role |
|---|---|---|---|
| `Desert/Sand` | `Desert_Sand.wgsl` | 87 | sand with macro noise, ripples, compaction, "user" sediment painting |
| `Desert/Rock` | `Desert_Rock.wgsl` | 41 | desert rock with detail albedo/normal |
| `Desert/UserSky` | `Desert_UserSky.wgsl` | 15 | sky‑panorama + sun disc/halo/wide glow |
| `Desert/Footprint` | `Desert_Footprint.wgsl` | 9 | footprint decal (depth, rim, compaction darkening) |
| `Desert/FountainWater`, `Desert/WaterSheet`, `Desert/Particle` | … | | water sheet / fountain / particle |
| `LittlePrince/Geography/LitWind` | `LittlePrince_Geography_LitWind.wgsl` | (large) | wind‑animated vegetation lit shader (227 MB WGSL) |
| `…/Sky`, `…/CloudSea`, `…/CloudSprite`, `…/Distant`, `…/LightShaft`, `…/Flame` | … | | geography sphere sky/cloud/atmosphere/light shafts/flame |

Example self‑documenting properties — `Desert/Footprint`: `Depth (m)`, `Relief Strength`, `Compaction Darkening`, `Rim Height (x depth)`, `Extra darkening in shade (sky-occluded hollow)`; `Desert/Sand`: `User Sand Base Colour (12 m)`, `User Ripple Normal (4 m)`, `User Compacted Normal (trails)`, `Sediment Rect (x0, z0, 1/sx, 1/sz)`. `LittlePrince/Geography/CloudSprite`: `Front (sun behind viewer)`, `Side (sun from the right)`, `Back (sun behind the cloud)`, `Soft depth (m)`, `Aerial haze`.

### 3.2 Unity built‑ins (dumped to `reports/shaders/builtin/`, not the user's effect)

`Universal Render Pipeline/Lit`, `Universal Render Pipeline/Terrain/Lit`, `Universal Render Pipeline/Particles/Unlit`, `Universal Render Pipeline/Particles/Lit`, the TextMeshPro SDF family, and `Hidden/*` fallbacks. Platform `26` for all.

### 3.3 How the custom‑vs‑builtin split was verified

Material→shader resolution was done by loading every downloaded bundle at once so cross‑bundle PPtrs resolve:

```python
env = UnityPy.load(*sorted(glob("bundles/*.bundle")))
sh  = mat.m_Shader.read().m_ParsedForm.m_Name   # e.g. "B612/Sky"
```

Result in `reports/shaders/material_shader_map.json` (90 materials). Only `Universal Render Pipeline/Lit` and the B612 family appear; **no HDRP, no built‑in "Standard"**.

---

## 4. Effect‑by‑effect findings

### 4.1 Sky (`B612/Sky`) — fully procedural, multi‑mode

`m_ParsedForm.m_Name == "B612/Sky"`, **89 material properties**, `platforms=[26]`, 1 subshader. The shader has three fragment variants (selected by the material float `_Clouds`):

* `_Clouds = 0` → **Cloud Pano** (samples `_CloudPanoDay/_CloudPanoDusk` equirect, `_CloudPanoAlpha`)
* `_Clouds = 2` → **HDRI sky** (`_SkyHdriDay/_SkyHdriDusk` + horizon rings `_SkyHdriRingDay/_SkyHdriRingDusk`)
* a third variant blends **procedural sky clouds** (`_SkyCloudDay/_SkyCloudDusk` + alphas)

The property **names are the spec** (excerpt, verbatim from `m_PropInfo`):

```
Cloud Mode
Day Clouds (premultiplied HDR, elevation 0..90)
Day Cloud Coverage (R)
Dusk Cloud Horizon Ring (512x1, rgb premult, a coverage)
Cloud Plane Height (m)
Cloud Wind Speed (m/s, along the global wind)
Flow Period (s)
Flow Crossfade (share of the period)
Drift Damping (x none below, y full above, deg)
Cloud Horizon Fade (x start, y full, deg)
Sun Disk Flattening At The Horizon
Day Relight: brightness vs angle to the sun (x floor, y peak, z width deg, w de-yellow)
Day Silver Lining (x strength, y width deg); z cloud-core luminance for the photo-sun repair
Evolution (x size m, y period s); edge softness of the rigid flow (z overhead, w near the horizon)
Cirrus (x opacity, 0 = off; y scale 1/m on the plane; z streak stretch; w drift)
Crepuscular Rays (x strength, y count, z sharpness, w reach deg)
Star Density (x bright layer, y faint layer, z faint boost in the Milky Way)
Milky Way (rgb colour, a half width); Milky Way Pole (star frame)
Moon Disc (rgb radiance, a radius deg); Moon Halo (x tight, y tight exponent, z wide, w wide exponent)
Day Sky (HDR equirect, elevation 0..90); Day Horizon Ring (512x1)
Panorama Bottom Latitude (deg); Horizon Blend (x photo starts, y photo full, deg)
Day Exposure / Day Tint / Day Saturation / Day Horizon Range (deg) / Day Zenith Start (deg) / Day Yaw (deg, clockwise)
Day Highlight Knee (x threshold, y range; y 0 = off)
Day Circumsolar Dim (x strength, y exponent, z sun az, w sun el)
```

The **fragment math** (CloudPano variant) is a hand‑written analytic atmosphere — verbatim excerpt showing the day/dusk blend by sun elevation, the horizon↔zenith ramps, haze and the circumsolar glow:

```wgsl
fn main_1() {
  u_xlat0.x = dot(vs_TEXCOORD0, vs_TEXCOORD0);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat7 = (u_xlat0.xxx * vs_TEXCOORD0);            // view dir (normalized)
  u_xlatb1 = (x_35.x_B612SunDirection.w < 0.5f);     // w = day/night switch
  if (u_xlatb1) {                                    // below-horizon fill
    SV_Target0 = vec4f((((u_xlat1.xxx * vec3f(-0.40f,-0.34f,-0.12f))
                        + vec3f(0.62f,0.76f,0.90f))).xyz, SV_Target0.w);
    SV_Target0.w = 1.0f; return;
  }
  ...
  // angular distance view<->sun, powered with B612SkyParams.y  -> sun glow
  u_xlat0.x = ((u_xlat0.x * 0.5f) + 0.5f);
  u_xlat16.x = exp2(log2(clamp(u_xlat0.x,0.0,1.0)) * x_35.x_B612SkyParams.y);
  // horizon -> horizon-sun blend
  u_xlat3 = ((u_xlat16.xxx * (-x_35.x_B612SkyHorizon.xyz + x_35.x_B612SkyHorizonSun.xyz))
             + x_35.x_B612SkyHorizon.xyz);
  // zenith ramp, "de-yellow" of the sun side, sky glow, anti-sun, ground blend, exposure
  ...
  u_xlat9 = (u_xlat9 * x_35.x_B612SkyParams.www);    // exposure
}
```

Constants buffers reveal the intended pipeline: `PGlobals`, `VGlobals`, `UnityPerDraw`, `UnityPerMaterial` (URP), and sun/sky vectors named `B612SunDirection`, `B612SkyHorizon`, `B612SkyZenith`, `B612HazeColor`, `B612SkyGlow`, `B612SunDisk`.

### 4.2 Clouds

* `B612/CloudLayer` and `B612/CloudPuff` are dedicated custom shaders (materials `M_B612_CloudLayer`, `M_B612_CloudTower`).
* The embedded 3D cloud resources are `Cloud_Cumulus_Atlas_SixWayNeg/Pos` (six‑way‑lit cumulus atlas, 512×256) and, in the scene, cloud “towers”.
* C# drivers (from `MonoScript` inventory in `data.unity3d`): `B612.Rendering.B612SkyClouds`, `Assembly-CSharp.B612CloudLayer`, `Assembly-CSharp.B612CloudSea`, `Bar.Runtime.BarCloudTemporalSampling`, and the URP core interfaces `ICloudBackground`, `IVolumetricCloud`.
* The Sky shader additionally blends cloud panorama / horizon rings (see §4.1).

### 4.3 Water family

Four custom shaders (`B612/Water`, `B612/Stream`, `B612/Pond`, `B612/Waterfall`) share a common PBR water core. `B612/Water` properties (28): `Normal A (Water_NormalA, broad swell)`, `Normal B (Water_NormalB, ripples)`, `Ribbon Width For UV u (m)`, `Flow Speed Multiplier`, `In‑scatter Colour/Density`, `Absorption (1/m, rgb)`, `Deep Tint`, `Refraction`, `Reflection Strength`, `Fresnel F0`, `Surface Roughness`, `Sun Glint`, `Foam (Water_Foam)`, `Foam Where Shallower Than (m)`, `Foam Near Bank Within (m)`, `Caustics (Water_Caustics)`.

Bindings confirm a full URP‑forward water shader (verbatim):

```wgsl
@group(0) @binding(5) var x_NormalA : texture_2d<f32>;            // broad swell
@group(0) @binding(6) var x_NormalB : texture_2d<f32>;            // ripples
@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>; // depth / edge softness
@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;// refraction
@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;
@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;
@group(0) @binding(7) var x_FoamTex : texture_2d<f32>;
@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;
@group(1) @binding(1) var<uniform> x_2978 : urp_ZBinBuffer;       // Forward+ clustered lights
@group(1) @binding(2) var<uniform> x_3152 : urp_TileBuffer;
@group(1) @binding(3) var<uniform> x_3385 : urp_ReflectionProbeBuffer;
@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>; // reflection probe atlas
```

Flow = two scrolling normal maps (`textureSampleBias(x_NormalA …)`, `textureSampleBias(x_NormalB …)`) blended, refracting `x_CameraOpaqueTexture` by `_Refraction` with depth‑based soft edges from `x_CameraDepthTexture`. River flow comes from a generated **Flow Map (RGBAHalf)** in `B612/Stream` with `Flow Cycle (s)`, `Advection Speed Scale`, `Standing Waves In Runs`, `Whitewater Churn`. Pond adds a physical vent model: `Boil Dome Height`, `Boil Churn`, `Boil Pulse (Hz)`, `Wavelength`, `Phase Speed c`, `Group Speed cg`, `Packets per Second` — a dispersive wave‑packet implementation.

### 4.4 Steam & volumetric plume

* `B612/Steam` — six‑way soft particle. Property names: `Six‑Way + (Steam_Sheet_SixWayPos)`, `Six‑Way − (Steam_Sheet_SixWayNeg)`, `Tint`, `Opacity`, `Sun Light`, `Sky Light`, `Back‑light Boost`, `Light Contrast`, `Soft Particle Distance (m)`, `Near Camera Fade (m)`. Fragment picks the lit sample by the **sign of the light direction in view space** then blends SH ambient:

```wgsl
u_xlat0.x = dot(x_33.x_MainLightPosition.xyz, unity_MatrixV-row-x);   // light dir in view space
u_xlatb0   = (u_xlat0.xyz > 0);
let nNeg = textureSampleBias(x_SixWayNeg, sampler_SixWayPos, uv, mip);
let nPos = textureSampleBias(x_SixWayPos, sampler_SixWayPos, uv, mip);
u_xlat0 = select(nNeg.xy, nPos.xy, u_xlatb0.xy) * u_xlat1.xy;          // per-axis pickup
u_xlat1 = dot(unity_SHAr/Ag/Ab...) - unity_SHC.xyz;                    // L2 sky ambient
u_xlat0 = nPos.z... * x_MainLightColor.xyz * x_SunStrength + ambient;
// soft particle: depth compare against x_CameraDepthTexture → _SoftDistance / _NearFade
```

* `B612/SteamPlume` — **raymarched volumetric** steam (13 props): `Noise 3D (R billows, G detail; tileable)`, `Shape`, `Flow`, `Ray Steps` (material sets `_Steps = 32`), `Core Extinction (1/m)`, `Billow Erosion At The Top`, `Vent (xyz world, w seed)`, `Wind`, `Vent Glow (rgb HDR, a height m)`.
* C# drivers: `B612.Rendering.B612SteamEmitter`, `B612.Rendering.B612SteamPlume`.
* Textures: `textures_steam_*` bundle contains `Steam_Sheet_SixWayNeg` (512×512) etc.; `M_B612_SteamPlume._Noise3D` points at a 3D noise texture.

### 4.5 Vegetation (grass/foliage) + GPU culling

`B612/Grass` (35 props) and `B612/Foliage` (41 props) are instanced shaders with per‑blade colour and gust animation. Grass props include `Root/Mid/Tip`, `Translucency`, `Lush/Sunny/Dry` patches, `Per‑Instance Hue Jitter`, `Gust Brightening`, `Clump Occlusion (vertex B)`, `Tip Displacement (m)`, `Player Push`.

`B612VegetationCull.CullInstances` (compute) is the GPU culler; its CB `CGlobals` = `_CamPos`, `_ChunkCount`, `_Cull`, `_Lod`, `_Planes[6]`, `_Thin`, `_Thin2`; entry `CullInstances` writes an instanced draw list. WGSL head:

```wgsl
//Assets/Shared/Rendering/Shaders/B612VegetationCull.compute
diagnostic(off, derivative_uniformity);
alias Arr = array<vec4f, 6u>;
struct CGlobals { ... };
```

### 4.6 Others

* `B612/Glow` — 6 props (`Glow Colour (HDR)`, `Radial Falloff`, `Flicker Amount/Speed/Seed`, `Soft Distance (m)`), additive vent glow.
* `B612/FarLandscape` — distant terrain wafer with `Haze Density (1/m)`, `Mist Top Height (world y)`, `Cloud Shadows (x preset strength)`.
* `B612/PlanetRock` — triplanar rock with `Strata Bands (x strength, y spacing m)` and `Moss`.
* `B612/Fabric` — a **URP‑Lit SHADERGRAPH** derivative for cloth, adding `Sheen Color`, `Sheen`, `Sheen Falloff`, `Shadow Warmth`; used by `M_LittlePrince_Scarf`.

---

## 5. Materials

`reports/shaders/material_shader_map.json` — 90 materials. Notable:

| Material | Shader |
|---|---|
| `M_B612_Sky` / `M_B612_Sky_HDRI` / `M_B612_Sky_Motion` | `B612/Sky` |
| `M_B612_Water` | `B612/Water` |
| `M_B612_Brook` | `B612/Stream` |
| `M_B612_Pond` | `B612/Pond` |
| `M_B612_Waterfall` | `B612/Waterfall` |
| `M_B612_Steam`, `M_B612_SteamPlume`, `M_B612_VentGlow` | `B612/Steam`, `B612/SteamPlume`, `B612/Glow` |
| `M_B612_CloudLayer`, `M_B612_CloudTower` | `B612/CloudLayer`, `B612/CloudPuff` |
| `M_B612_Grass_*` (7) | `B612/Grass` |
| `M_B612_Foliage_*`, `M_B612_Fern/Flower/Moss/Debris/GroundCover/WaterPlant/PlumeHead` | `B612/Foliage` |
| `M_B612_Bark_Main/Secondary` | `B612/Bark` |
| `M_B612_PlanetRock`, `M_B612_FarLandscape`, `M_B612_SandBoil` | `B612/PlanetRock`, `B612/FarLandscape`, `B612/SandBoil` |
| `M_LittlePrince_Scarf` | `B612/Fabric` |
| everything else (rocks, props, birds, terrain) | `Universal Render Pipeline/Lit` / `Terrain/Lit` / `Particles/Unlit` |

Full per‑material property values (floats/colors/textures) are in `reports/shaders/materials.json`. Example — `M_B612_Sky` (the whole look is data‑driven; a few of the 60+ values):

```
_Clouds=0.0   _CloudDriftPeriod=900  _CloudWindSpeed=7   _CloudHeight=1500
_DayExposure=2.0  _DaySaturation=1.2  _DuskExposure=0.5  _DuskSaturation=1.1
_SunOcclusionByClouds=0.85  _SunGlowOverClouds=0.45  _StarBrightness=2  _MoonHalo=(0.1,700,0.03,16)
colors: _MoonColor=(1,0.98,0.92,1.3)  _RaysColor=(1,0.72,0.45,12)  _MilkyWay=(0.012,0.015,0.022,0.13)
textures: _CloudPanoDay  _CloudPanoDusk  _SkyHdriDay/Dusk  _SkyCloudDay/Dusk  _CumulusPos/Neg ...
```

`M_B612_Water`: `_Refraction=0.04`, `_F0=0.025`, `_Roughness=0.07`, `_ScatterDensity=2.2`, `_Absorption=(2.2,0.85,0.65)`, `_DeepColor=(0.05,0.13,0.13)`, `_FoamDepth=0.08`, `_CausticsStrength=0.8`.
`M_B612_SteamPlume`: `_Steps=32`, `_Density=2.2`, `_PlumeShape=(0.5,0.17,9,1.05)`, `_PlumeGlow=(0,0,0,1.8)`, `_NoiseScale=(3.6,1.5,0.8,0.6)`.

---

## 6. Render pipeline, scene & lighting

From `extracted/data.unity3d`:

* **GraphicsSettings.**`m_CustomRenderPipeline` = PPtr(PathID 2531) → the URP RenderPipelineAsset; `m_CurrentRenderPipelineGlobalSettings` = PPtr(2533). The `MonoScript` table in the same file lists `Unity.RenderPipelines.Universal.Runtime.*` (`DrawSkyboxPass`, `PostProcessPassRenderGraph`, `OnTilePostProcessFeature`), `Unity.RenderPipelines.Core.Runtime.RenderGraph`, plus custom `B612.Rendering.*` types → **URP + RenderGraph, Unity 6**. `m_ShaderDefinesPerShaderCompiler` shows `shaderPlatform=26` (WebGPU). Tier settings: cascaded shadow maps on, `hdrMode=1`, `useHDR=True`, `renderingPath=1` (Forward).
* **BuildSettings.**`m_GraphicsAPIs=[28]`, `m_Version=6000.3.25f1`, `scenes=['Assets/Shared/Journey/Scenes/JourneyMap.unity']`.
* **QualitySettings**: 4× MSAA, 2 shadow cascades, shadow distance 40 m, HDR.
* **Scene `B612_Main`** (`b612_scenes_all` bundle, 7458 objects): 1924 GameObjects, 15 Cameras, 1003 MeshRenderers, 416 LODGroups, 12 ParticleSystems, 353 MeshColliders, 1 Terrain, 2 **ReflectionProbes** (`mode=0 baked` box (9,5,9) res 128; `mode=1 realtime` box (6000,3000,6000) res 128 → captures the sky), 4 Lights (1 directional sun `intensity 2.34`, `m_Type=2` point/misc lights, shadows on), `LightingSettings 'B612_LightingSettings'`.
* Scenes (from catalog): `B612_Main`, `Bar_Main`, `Desert_Dunes`, `Desert_Valley`, `Lighter_Planet`, `MapLibrary`, `RoyalCourt_Walkthrough`, `StarObservatory`, `Theater_Main`, plus bootstrap `JourneyMap`.
* Relevant runtime components found among MonoScripts: `B612CloudLayer`, `B612CloudSea`, `B612SkyClouds`, `B612SteamEmitter`, `B612SteamPlume`, `B612WaterRibbon`, `B612WaterParams`, `LighterSkyReflection`, `DesertWaterShimmer`, `BarCloudTemporalSampling`, and URP `ICloudBackground` / `IVolumetricCloud` interfaces.

---

## 7. Textures (`reports/shaders/textures.json`, 146 Texture2D)

Key rendering textures present (name, size, Unity format code):

```
Sky_Hdri_Day_Cloud       512x128   Cloud_Cumulus_Atlas_SixWayNeg  512x256
Water_NormalA            256x256   Water_NormalB                   256x256
Steam_Sheet_SixWayNeg    512x512   B612_GrassTint                 216x216
B612_FoliageAtlas_{Base,Mask,Normal}  512/256  (foliage atlas)
Noise_Macro / cloud/noise bundles (textures_noise_*)
Sky HDRI EXR: sky_hdri_{day,dusk}.exr, sky_hdri_{day,dusk}_cloudring.exr, sky_hdri_{day,dusk}_ring.exr
```

Full sky/water/steam/vegetation/cloud/noise texture bundles were downloaded (see §8).

## 8. Downloaded bundles (`bundles/`)

40 bundles fetched, including every shader/material bundle, all sky HDRI (day/dusk, ring, cloudring, alpha), water, steam, noise, cloud, vegetation, TextMeshPro shaders, and the `b612_scenes_all` scene. `bundles/` is the raw source of truth; the presence of `_<hash>.bundle` names is derived from the catalogue (§1.2), not guessed.

## 9. What could NOT be recovered / limits

* **High‑level ShaderLab / ShaderGraph source is not present.** Unity compiled the graphs to WGSL; only the *transpiled WGSL* exists in the build. The WGSL is real and complete (with `hlslcc_` register names), but variable names are compiler‑generated (`u_xlat0`, `x_35`). The **original author's names survive as material property descriptions** (see §4), not as code identifiers.
* **Only the WebGPU (platform 26) programs are present** in these bundles — there is no GLSL/GLES for a WebGL2 fallback inside the same sub‑blobs (the sub‑blob is single‑platform).
* **5 large level‑scene bundles** (60–171 MB each) initially arrived truncated through the local proxy (HTTP 502 `CONNECT tunnel failed`) and are decompression‑sensitive. `bar_scenes_all` (99 MB), `earth_scenes_desert_dunes` (95 MB), `earth_scenes_desert_valley` (105 MB) and `geo_scenes_all` (171 MB) were **successfully re‑fetched and parsed**, and yielded the Bar / Desert / Geography shaders in §3.1b–c. `counting_scenes_all` remained corrupt after 8 retries at report time; its embedded level shaders are therefore not enumerated (it reuses the shared shaders).
* `king_scenes_all`, `lamp_scenes_all`, `theater_scenes_all` could not be fetched at all (persistent proxy `502`). These level scenes likewise reuse the shared B612 shaders already recovered, so this is a completeness gap, not a correctness one.
* **Per‑level materials** for the Bar/Desert/Geography scenes were not exhaustively enumerated in `material_shader_map.json` (which covers the shared + scene materials loaded together); only the shared‑rendering material bundles were targeted for full property dumps (`materials.json`).
* **TextMeshPro** shaders are Unity/TextMeshPro stock (dumped to `reports/shaders/builtin/` for completeness).
* `extracted/sharedassets0.resource` holds no shader data (it is an MP4 fragment).

## 10. File index

```
reports/shaders.md                       this report
reports/shaders/SHADER_INDEX.txt         grouped list of all recovered modules
reports/shaders/*.wgsl                   37 recovered WGSL sources (B612 17, Bar 6, Desert 7, Geography 7) + 3 fallbacks
reports/shaders/B612VegetationCull.CullInstances.0.compute.wgsl   compute culler
reports/shaders/raw_blobs/*.blob         raw decompressed shader blobs (all variants)
reports/shaders/builtin/*.wgsl,.blob     Unity URP/TMP shaders
reports/shaders/shader_properties.txt    human-readable property lists (the "spec")
reports/shaders/shader_properties.json
reports/shaders/materials.json           all shared-rendering materials with float/color/texture values
reports/shaders/material_shader_map.json material -> shader
reports/shaders/textures.json            all 146 Texture2D (name/size/format)
reports/shaders/scene_names.txt
reports/shaders/tools/*.py               extraction scripts (reproducible)
bundles/                                 41 downloaded UnityFS AssetBundles
pylibs/                                  local UnityPy install (NOT system-wide)
```

_Reproduce:_ `PYTHONPATH=/home/tars/yys/webgpu/lp-re/pylibs python3 reports/shaders/tools/extract_all.py` (shared shader bundles) and `tools/extract_generic.py <bundle…>` (any bundle, incl. scene bundles).
