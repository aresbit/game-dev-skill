# littleprince.dev 逆向材料

对 `https://littleprince.dev/`（《小王子·星辰之旅》，B612）的一个**已发布商业 Web 构建**做的完整静态逆向。
全部结论来自该站点自己的产物，不是推测；每一项都标了证据来源。

这份材料进入本仓库的目的：给「AI 从零做 3D 游戏」的流水线一个**真实终点样本**——真实的面数规模、
真实的着色器参数、真实的分章流式架构。流水线里那些"该做成什么样"的判断，可以用这里的数字校准。

## 技术栈（已验证）

| 项 | 值 | 证据 |
|---|---|---|
| 引擎 | **Unity 6000.3.25f1**（Unity 6.3），revision `e1dba0a9aba4` | `code.wasm` 字符串 ×19；`BuildSettings.m_Version` |
| 渲染管线 | **URP 17 + RenderGraph**，非 HDRP | 只有 `Unity.RenderPipelines.Universal.*` 装配集 |
| 图形后端 | **WebGPU**（Dawn 形状，shader platform 26），GL 路径也编入但运行期选 | 60 个 `wgpu_*` 导入 + 166 个 `gl*` 导入 |
| 物理 | PhysX（Unity 6 拆分后的后端模块），玩法以**射线/IK 贴地**为主 | `PhysicsBackendPhysXModule.dll`；`FootGrounder` 等 |
| 内容流 | **Addressables 4.1.1**，分章按需加载（228 bundle） | `StreamingAssets/aa/catalog.bin` |
| 剧本编译 | IL2CPP → WASM；符号 stripped，0 custom section | `name` 段缺失；125,902 个定义函数 |
| 作者代码量 | **275 个自有 C# 类型 / 12 个自有命名空间** | `global-metadata.dat` v39 |
| 着色器 | **37 个自定义 WGSL 可读源码**（B612 17 / Bar 6 / Desert 7 / Geography 7） | UnityFS v8 LZ4HC → 分块 LZ4 → WGSL 文本 |
| 场景 | `B612_Main`：1,924 GameObject、416 LODGroup、4× MSAA、2 级阴影级联、2 反射探针 | `data.unity3d` |

## 目录

```
README.md                    本文件：索引 + 诚实边界
MANIFEST-excluded.md         未入库资产：SHA-256 + 大小 + 来源 + 恢复命令
SHA256SUMS                   已入库 144 个文件的校验和
reports/
  README.md                  逆向总索引（原始的那份）
  learning_path.md           两条学习路线（Unity→WebGPU / 纯 WebGPU）+ 官方资料链接
  il2cpp_metadata.md         C# 命名面：3,100 类型 / 275 自有类型 / 命名空间分布
  wasm.md                    模块结构、导入导出、装配集、内存
  web_layer.md               自研 JS 层：i18n / 加载页 / 缓存与下载计量 / JS↔引擎桥
  shaders.md                 37 个 WGSL + 材质/天空/水/云/蒸汽的技术细节
  il2cpp/*.txt               类型表、命名空间、物理与渲染聚焦提取、字符串字面量
  wasm/*.txt                 导入/导出/装配集/自定义段/结构
  web/*.{js,html,css}        页面与自研加载模块的干净副本
  shaders/shader_properties.*  **作者写的参数名与中文/英文说明 —— 等于整部作品的 look spec**
  shaders/materials.json      90 个材质的数值（颜色/浮点/贴图）
  shaders/material_shader_map.json  材质 → 着色器
  shaders/textures.json       146 张 Texture2D（名字/尺寸/格式）
  shaders/tools/*.py          复现用的提取脚本
  shaders/builtin/*.wgsl      Unity 自带 URP/TMP 着色器（对照用）
shaders/
  source/<Name>.wgsl          **每个着色器的首个完整变体**（顶点+片元），共 62 个，统一可读
  variants/<Name>.wgsl        完整变体转储，仅收录 <1MB 的 31 个（体积换完整性）
StreamingAssets/aa/          Addressables catalog + settings（分章索引的事实来源）
tools/wasm_parse.py          纯 stdlib 手写 WASM 解析器
tools/wasm_strings.py        WASM 字符串提取
```

## 关键发现（按领域）

**着色器 / 渲染** — 见 `reports/shaders.md`
- 天空是完全程序化的（89 个属性：卷云、星空、银河、月亮、日盘、丁达尔光、昼夜分级）。
- 水家族 4 个着色器共享一个 URP-forward PBR 核（双法线滚动、折射、深度软边、泡沫、焦散、反射探针图集）。
- 蒸汽：六向光照软粒子；`SteamPlume` 是 **32 步光线步进体积**。
- `B612VegetationCull` 是 compute 着色器（GPU 剔除）——这正是本作必须要 WebGPU 的原因。
- **作者的参数名保留在材质属性标签里**（`_FoamWhereShallowerThan`、`_BillowErosionAtTheTop`、
  `_StandingWavesInRuns`…）。这是全文最有价值的部分：它直接告诉你一个好效果**需要哪些参数**。

**C# / 玩法** — 见 `reports/il2cpp_metadata.md`
- 命名空间即章节：`LittlePrince.{UI,Bar,StarObservatory,Journey,Geography,King,Vanity,Lighter,Web,Story}`。
- 角色与物理是**贴地 + IK 交互**，不是刚体沙盒：
  `FootGrounder`(8/39)、`CarryClearanceProbe`(34/59)、`CarryHandIK`、`CarryProp`(41/31)、
  `LocomotionProbe`、`ZoneFootsteps`、`DesertPilotFootLock`。

**Web 层** — 见 `reports/web_layer.md`
- 自研 JS 只有三件事：i18n（8 语言）、标题/加载页、`LPWebLoading` 缓存与计量垫片。
- 缓存策略：**带哈希的 bundle / `.data` 标 `immutable`，无哈希的 catalog 标 `no-store`**。
- 页面是**生成出来的**：`tools/shared/web/make_page_i18n.py`、`make_page_fonts.py`、`make_logo.py`、
  设计文档 `scenes/shared/design/{UI_DESIGN.md,ENGLISH_COPY.md}`。

**构建 / 模块** — 见 `reports/wasm.md`
- 51.77 MB 裸 wasm，内存 256 MiB → 4 GiB，249,395 槽 funcref 表承载 IL2CPP 间接调用。
- **符号全 stripped**：外部可见 API 只剩导出段（594 个）与 data 段字符串。

## 未入库与理由

原始二进制留在本地，三条理由：GitHub 单文件 **100MB 硬限**（本目录 9 个文件超标）、仓库体积（2.5GB）、
以及**公开再分发游戏美术资产的版权风险**（`bundles/` 里是网格、贴图、HDRI 原始资产）。

完整清单（SHA-256 + 来源 + 恢复命令）见 `MANIFEST-excluded.md`：

| 类别 | 量 | 恢复方式 |
|---|---:|---|
| AssetBundle 原始资产 | 41 文件 / 726 MB | `curl` 从原站按目录重下（命令已写入清单） |
| 着色器变体转储 / 原始 blob | 61 文件 / 803 MB | 跑 `reports/shaders/tools/extract_all.py` |
| 构建产物 + 解包数据 | 8 文件 / 125 MB | 按页面 `createUnityInstance` 的 URL 重下后解包 |
| 第三方依赖 `venv/`+`pylibs/` | ~886 MB | `pip install --target pylibs UnityPy` |

**入库的是知识，出库的是字节。** 首变体源码 + 参数表 + 材质数值 + 命名面 + 脚本已全部入库，
缺的只是「多平台的重复编译输出」与「美术源资产」——两者都可再生，且后者本就不该公开。

## 诚实边界（沿用原始报告，勿在引用时抹掉）

- **没有 ShaderLab / ShaderGraph 源**。构建里只有编译后的 WGSL，变量名是 `u_xlat0`/`x_35`；
  作者意图只通过**材质属性标签**与天空 README 存活。
- **C# 方法体不可得**。IL2CPP 把方法体编进 wasm；元数据里只有名字与签名面。
- **3 个关卡 bundle 未取到**（`king`/`lamp`/`theater_scenes_all` 持续 502），
  `counting_scenes_all` 重试 8 次仍损坏。它们复用已恢复的共享着色器，属**完整性缺口而非正确性缺口**。
- **Emscripten 版本不可推导**；Unity WebGPU 的「支持 vs 实验」时间线文档滞后，标为「本机核实」。
- Unity 自带着色器（URP Lit / Terrain Lit / TMP）的两个首变体因体积策略**截断到 256KB**。

## 复现

```bash
# 模块结构
python3 tools/wasm_parse.py  Build/code.wasm.br  reports/wasm
python3 tools/wasm_strings.py Build/code.wasm.br reports/wasm

# 着色器（需要 UnityPy）
PYTHONPATH=pylibs python3 reports/shaders/tools/extract_all.py
PYTHONPATH=pylibs python3 reports/shaders/tools/extract_generic.py <bundle…>
```

> 注意 `Build/code.wasm.br` **不是** brotli——头八字节就是 `\0asm` 版本 1，是裸 wasm。详见 `reports/wasm.md`。
