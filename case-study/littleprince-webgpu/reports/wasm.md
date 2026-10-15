# WebAssembly analysis — B612 (`code.wasm.br`)

**Target:** `/home/tars/yys/webgpu/lp-re/Build/code.wasm.br` (read-only, 51,769,628 bytes)
**Glue:** `/home/tars/yys/webgpu/lp-re/Build/framework.js.br` (Emscripten `unityFramework`, 481,959 bytes) and `loader.js` (`createUnityInstance`)
**Method:** hand-written pure-Python WebAssembly parser (stdlib only; no wabt/wasmtime/wasmer). Scripts: `/home/tars/yys/webgpu/lp-re/wasm_parse.py`, `/home/tars/yys/webgpu/lp-re/wasm_strings.py`.

> Despite the `.br` extension the file is **not** brotli-compressed: the first eight bytes are `00 61 73 6d 01 00 00 00` (magic `\0asm`, version 1). It is a raw WebAssembly module and parses directly.

---

## 1. Headline findings

- **Unity 6000.3.25f1** (Unity 6), build revision `e1dba0a9aba4` — string `6000.3.25f1_e1dba0a9aba4` found 19×.
- Backend is the **Unity WebGPU backend** (`wgpu_*` C-API imports, 60 of them), with the **WebGL/GL path also compiled in** (166 `gl*`/`emscripten_webgl_*` imports). Both rendering backends coexist in one module; selection is runtime.
- **IL2CPP** build: the marker string `global-metadata.dat` is present; the data section carries the full managed-assembly name blob (70 `.dll` names) and thousands of C++/managed type names.
- **`name` custom section is ABSENT — internal symbols are stripped.** Zero custom sections exist. The externally visible API survives only via the **export section (594 named functions)** and **data-section strings**.
- 125,902 defined functions + 564 imports = **126,466 total functions**; a **249,395-slot funcref table** holds the IL2CPP indirect-call pointers.
- Memory: **initial 4096 pages (256 MiB), max 65280 pages (~4.0 GiB)** — memory growth enabled.

---

## 2. Section table (whole file consumed: p == N)

All 51,769,628 bytes are consumed; the section walk ends exactly at EOF with no trailing bytes.

| id | name | payload offset | payload size |
|---:|------|---------------:|-------------:|
| 1 | type | 0x0000000b | 10,344 |
| 2 | import | 0x00002876 | 15,667 |
| 3 | function | 0x000065ad | 127,840 |
| 4 | table | 0x0002590f | 9 |
| 5 | memory | 0x0002591a | 7 |
| 6 | global | 0x00025923 | 14 |
| 7 | export | 0x00025934 | 12,417 |
| 9 | element | 0x000289b9 | 669,544 |
| 10 | code | 0x000cc126 | 43,330,150 |
| 11 | data | 0x02a1eb91 | 7,603,595 |

**Absent sections:** 0 `custom`, 8 `start`, 12 `datacount`. There is **no `global-metadata` section** and **no custom section at all**.
Code-section byte total (sum of body sizes) = **43,145,464**.
Data: **21,998 segments**, 7,425,872 payload bytes (the single huge active segment is the IL2CPP string/metadata blob).

---

## 3. Custom sections — NONE

**The module has zero custom sections (section id 0).** Evidence:

- The structural walk enumerates exactly the 10 sections above and consumes all bytes (`p == N`, no leftovers).
- Raw byte search for the literal names of the expected customs:

  | custom name | occurrences in file |
  |---|---:|
  | `producers` | 0 |
  | `target_features` | 0 |
  | `build_id` | 0 |
  | `linking` / `dylink` | 0 |
  | `sourceMappingURL` | 0 |
  | `name` | 153 — **all** are the ordinary English/NET substring inside data-section text, not a section |

**`name` custom section: ABSENT.** No function-name subsection, no local-name subsection. The build was stripped (`-g0` / `--strip`, or Unity's post-build strip). See `reports/wasm/name_section.txt`.

**Consequence for RE:** you cannot recover per-function internal names from the module. What you *do* recover:
- the 594 **export** names (C-visible API), and
- the **data-section string blob**, which is essentially the IL2CPP metadata string table serialized into wasm and retains full type, method, assembly and Unity engine strings.

See `reports/wasm/custom_sections.txt`.

---

## 4. Imports (564 functions, 2 modules)

Grouped by module:

| module | functions |
|---|---:|
| `env` | 558 |
| `wasi_snapshot_preview1` | 6 |

`env` category breakdown (see `reports/wasm/imports.txt` for the full list with a `category` column):

| category | count | examples |
|---|---:|---|
| `WEBGL_GL` | 166 | `glDeleteSync`, `glFenceSync`, `emscripten_webgl_init_context_attributes`, ANGLE |
| `INVOKE` | 130 | `invoke_iii`, `invoke_iiiiii`, `invoke_viiii` (Emscripten EH trampolines) |
| `UNITY_JS` | 101 | `JS_Log_Dump`, `JS_ScreenOrientation_Init`, `JS_MobileKeyboard_Show`, `JS_WebCamVideo_*`, sensor APIs |
| `WEBGPU` | 60 | `wgpu_device_create_buffer`, `wgpu_render_commands_mixin_draw_indexed`, `navigator_gpu_request_adapter_async`, `JS_WebGPU_Setup` |
| `EMSCRIPTEN` | 42 | `emscripten_get_now`, `emscripten_memcpy_big`, `emscripten_resize_heap` |
| `SYS_WASI` | 37 | `fd_write`, `fd_read`, `environ_get`, `__syscall_*`, `strftime`, `exit`, `abort` |
| `GAME_JS_LPWEB` | 10 | `LPWebLoadMilestone`, `LPWebReportFrame`, `LPWebGetLang`, `LPWebCanvasScale`, … (the game's own JS bridge) |
| `CXX_ABI` | 8 | `__cxa_throw`, `__cxa_begin_catch`, `__cxa_find_matching_catch_N`, `__cxa_rethrow` |
| `OTHER` | 10 | `__resumeException`, `llvm_eh_typeid_for`, `_tzset_js`, `GetJSMemoryInfo`, `GetJSLoadTimeInfo`, `_emscripten_throw_longjmp` |

### 4a. WebGPU import surface (the whole backend)
The complete 60-name WebGPU import set is in `reports/wasm/js_bridge_imports.txt`. Shape:

- **Adapter/device:** `navigator_gpu_request_adapter_async`, `wgpu_adapter_request_device_async`, `wgpu_adapter_or_device_get_limits`, `wgpu_adapter_or_device_get_features`, `wgpu_device_get_queue`, `wgpu_device_push/pop_error_scope`, `wgpu_device_set_uncapturederror_callback`.
- **Resources:** `wgpu_device_create_buffer/texture/sampler/shader_module/bind_group(_layout)/pipeline_layout/render_pipeline/compute_pipeline/command_encoder(_simple)`.
- **Command recording:** `wgpu_command_encoder_begin_render_pass/compute_pass`, `wgpu_encoder_set_pipeline/bind_group`, `wgpu_render_pass_encoder_set_viewport/scissor_rect/stencil_reference`, `wgpu_render_commands_mixin_set_vertex_buffer/set_index_buffer/draw/draw_indexed/draw_indirect/draw_indexed_indirect`, `wgpu_compute_pass_encoder_dispatch_workgroups(_indirect)`.
- **Canvas/present:** `wgpu_canvas_get_webgpu_context`, `navigator_gpu_get_preferred_canvas_format`, `wgpu_canvas_context_configure`, `wgpu_canvas_context_get_current_texture`.
- **Copies/readback:** `wgpu_command_encoder_copy_buffer_to_buffer/texture_to_texture/texture_to_buffer`, `wgpu_buffer_map_async/get_mapped_range/read_mapped_range/unmap`.
- **Lifecycle:** `wgpu_queue_submit_one_and_destroy`, `wgpu_queue_submit_multiple_and_destroy`, `wgpu_object_destroy/set_label`.

The naming (`wgpu_<object>_<verb>`) is the **Dawn `webgpu.h` C-API** shape, shimmed by Unity in JS. Note there is **no `emscripten_webgpu_*` prefix** — this is Unity's own WebGPU JS glue, not the stock Emscripten WebGPU extension.

### 4b. Game custom JS bridge (`LPWeb*`)
10 functions under `env` are the game's own score/telemetry/locale bridge — the clearest app-specific JS↔wasm seam:

`LPWebLoadMilestone`, `LPWebSetTextureDump`, `LPWebReportFrame`, `LPWebRecordFrame`, `LPWebCanvasScale`, `LPWebDevicePixelRatio`, `LPWebDownloadLoaded`, `LPWebDownloadPending`, `LPWebGetLang`, `LPWebSetLang`.

### 4c. `__cxa_*` / `emscripten_*` / `dynCall` / `invoke_*`
- `__cxa_*`: 8 import names (C++ exception ABI) — normal for Emscripten C++.
- `emscripten_*`: 42 imports.
- `invoke_*`: 130 imports — Emscripten exception-handling trampolines (indirect `call` wrappers).
- `dynCall_*`: not imported; they are **exported** (562 `dynCall_*` exports).

---

## 5. Exports (596: 594 functions, 1 memory, 1 table)

- **`memory`** (index 0), **`__indirect_function_table`** (table index 0).
- **562 `dynCall_*`** trampolines (signature-encoded, e.g. `dynCall_viiiii`, `dynCall_iiiijii`).
- **~32 real named exports** — the C-visible API. Notable ones:
  - Emscripten runtime: `malloc`, `free`, `__wasm_call_ctors`, `__main_argc_argv`, `stackSave/Restore/Alloc`, `setThrew`, `setTempRet0`, `getTempRet0`, `emscripten_builtin_memalign`, `__errno_location`, `htonl/htons/ntohs`, `__cxa_*` helpers.
  - Unity player API: **`SendMessage`**, `SendMessageString`, `SendMessageNumber`, `SetFullscreen`, `SendPasteEvent`, `ConnectToProfiler`, `StopProfiling`, `IsConnectedToProfiler`.
  - Game-specific: `GetFakemodTimeInSeconds`, `GetCopyBufferAsCStr`, `getMetricsInfo`, `ReleaseKeys`.

Full list: `reports/wasm/exports.txt`.

---

## 6. Function count, memory layout, table

- **Defined functions:** 125,902 (function section) == 125,902 (code section). **Imported functions:** 564. **Total:** 126,466.
- **Memory:** defined, initial **4096 pages = 256 MiB**, max **65,280 pages = ~4.0 GiB** (memory growth on).
- **Table:** `funcref`, min == max == **249,395 slots**; the single element segment initializes **249,394** entries — this is the IL2CPP indirect-call/function-pointer table (every `dynCall_*`/virtual dispatch goes through it).
- **Globals:** 2 (the stack pointer and a global base, both `i32`/mutable).
- **Start section:** absent (`__wasm_call_ctors` is invoked by JS via the export, standard Emscripten).
- **`global-metadata.dat`** referenced by name (the IL2CPP metadata file lives alongside as `game.data`).

---

## 7. String scan

Whole-file: **247,556 ASCII runs** (≥4 chars). Data-section payloads: **30,659 runs** over 7,425,872 bytes. Filtered keyword counts (whole-file / data-section) — full detail in `reports/wasm/interesting_strings.txt`:

| needle | whole file | data section |
|---|---:|---:|
| `LittlePrince` | 5 | 5 |
| `B612` | 2 | 2 |
| `Unity` | 9,618 | 9,616 |
| `UnityEngine` | 8,963 | 8,962 |
| `global-metadata` | 1 | 1 |
| `il2cpp` / `IL2CPP` | 40 / 30 | 40 / 30 |
| `WebGPU` | 9 | 6 |
| `WebGL` / `webgl` | 12 / 9 | 7 / 2 |
| `wgsl` / `WGSL` | 0 | 0 |
| `shader` / `Shader` | 137 / 495 | 136 / 485 |
| `dynCall` | 562 | 0 |
| `invoke_` | 130 | 0 |
| `king` | 206 | 206 |

### 7a. Managed assemblies (recovered from data section) — 70 distinct `.dll`
Game assemblies (confirm the story/"B612" world and its regions):

`LittlePrince.Journey.dll`, `LittlePrince.StarObservatory.dll`, `LittlePrince.Story.dll`, `LittlePrince.UI.dll`, `LittlePrince.Web.dll`, `B612.Core.dll`, `B612.Rendering.dll`, `Bar.Runtime.dll`, `Desert.Runtime.dll`, `Geography.Runtime.dll`, **`King.Runtime.dll`**, `CSharp.dll`

Engine/packages: `UnityEngine.dll` + ~45 `UnityEngine.*Module.dll`, `mscorlib.dll`, `System.Core.dll`, `System.Runtime.Serialization.dll`, `Unity.TextMeshPro.dll`, `Unity.InputSystem(.ForUI).dll`, `Unity.Addressables.dll`, `Unity.ResourceManager.dll`, `Unity.Burst(.Unsafe).dll`, `Unity.Collections.dll`, `Unity.Mathematics.dll`, `Unity.RenderPipeline(s).*` (URP stack), `Unity.InternalAPIEngineBridge.004.dll`.

Full list: `reports/wasm/assemblies.txt`.

### 7b. Scene / region names
Requested tokens (`b612`, `bar`, `earth`, `geo`, `king`, `desert`, `vanity`, `lighter`):
- Present as assemblies: `Bar.Runtime.dll`, `Desert.Runtime.dll`, `Geography.Runtime.dll`, `King.Runtime.dll`, `B612.*`.
- `king` 206×, `geo` 32×, `bar` 29×, `scene`/`Scene` 80/395×.
- Not found as standalone tokens: `b612` (lowercase), `earth`, `desert` (lowercase), `vanity`, `lighter` — these are **not** literal level-name strings in the wasm; they likely live in the scene/asset bundles inside `game.data` (StreamingAssets), not in `code.wasm`. The `.dll` names use PascalCase (`Desert`, `King`).

### 7c. Shaders / WGSL
No `wgsl`/`WGSL` string in the wasm. Shaders are Unity shader assets (URP `Unity.RenderPipeline.Universal.ShaderLibrary.dll` is referenced); WGSL is generated at runtime from the shader variant permutation and is not stored here. Keyword strings like `WebGPU 1.0 [1.0]`, `Unity WebGPU:`, `NullGfxDevice`, `GfxDevice` appear in engine diagnostics.

---

## 8. Versions

- **Unity:** `6000.3.25f1` — string `6000.3.25f1_e1dba0a9aba4` (19×, data section). Unity 6 (LTS line). The runtime exposes it via `UnityEngine.Application::get_unityVersion` (string present).
  (A lone stray `2018.3.0a1` also appears once inside an enum/extension type blob — it is a serialized value, **not** the runtime Unity version.)
- **Emscripten:** **not determinable from these artifacts.** No `emscripten <x.y.z>`, `clang version …`, `LLVM …`, `emcc`, `EMSCRIPTEN_VERSION` or `-sModularize`-style version constant exists in the stripped wasm, and `framework.js`/`loader.js` carry no version literal (only `127.0.0` which is unrelated). Deriving it would require matching the specific import set/glue hashes against known Emscripten releases — **not done here rather than guessed.**

---

## 9. Are names stripped?

**Yes for internal symbols, no for the public surface.** Precisely:
- `name` custom section: **absent** (0 custom sections) → per-function/internal/local names are gone (stripped build).
- **Export section:** 594 named functions survive (the C-visible API + `dynCall_*`).
- **Data section:** retains the IL2CPP metadata string blob — 70 assembly names, thousands of `UnityEngine`/type/method strings. This is the practical substitute for a symbol table.
- **Imports:** 564 named functions (the JS bridge surface).

---

## 10. Reproduce

```bash
cd /home/tars/yys/webgpu/lp-re
python3 wasm_parse.py   Build/code.wasm.br reports/wasm   # sections, imports, exports, custom sections
python3 wasm_strings.py Build/code.wasm.br reports/wasm   # keyword grep + version fingerprints
```

Both scripts are pure stdlib (Python 3.12), read-only on the inputs, and consume the whole file.

## Output files
- `reports/wasm.md` (this report)
- `reports/wasm/structure.txt` — section table + counts + warnings
- `reports/wasm/exports.txt` — 596 exports with kind and index
- `reports/wasm/imports.txt` — 564 imports with category column + grouped by module
- `reports/wasm/js_bridge_imports.txt` — WebGPU / LPWeb / Unity-JS import surfaces
- `reports/wasm/custom_sections.txt` — documents that none exist
- `reports/wasm/name_section.txt` — documents the absent `name` section with evidence
- `reports/wasm/interesting_strings.txt` — keyword counts + sampled context
- `reports/wasm/assemblies.txt` — 70 recovered .dll names
- `reports/wasm/data_strings_sample.txt` — first 2,000 data-section strings
