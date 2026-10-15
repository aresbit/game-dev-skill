# game-dev-skill

一个 Claude Code skill：编排「用 AI 从零制作可玩 3D 游戏」的完整流水线。

强推理模型策 PRD → 图像模型出多视角参考图 → 文/图生 3D 出资产 → 编码模型经引擎 MCP 搭建场景与代码 → 独立审查 agent 多机位盲审并迭代。

核心不是某个模型，而是**五段流水线 + 独立审查闸门**：每一步都有确定产物、判据与陷阱。

## 结构

```
SKILL.md                                  # 主入口：五段流水线、模型可替换原则、高频陷阱
references/pipeline-scene.md              # 段 4 场景构建：钉死主参考图、资产分流、多机位收敛
references/pipeline-character.md          # 角色构建：T-pose 四视图 → 图生 3D → 绑定蒙皮 → 动作重定向 → IK 精修
references/quality-review-and-assets.md   # 独立审查协议 + 资产预算字段/阈值/命名约定
references/tooling-and-setup.md           # 工具装什么、干什么、是否本机验证过
references/case-littleprince-webgpu.md    # 案例校准：真实发布作的实测数字、look spec、工程陷阱
scripts/asset_budget_check.py             # 资产清单预算校验
assets/asset-manifest.example.json        # 资产清单模板
assets/prd-seed-template.md               # PRD 种子模板
case-study/littleprince-webgpu/           # 案例原始材料：逆向报告 + 37 个 WGSL 源码 + 提取脚本
```

## 案例校准

`case-study/littleprince-webgpu/` 是对 **`littleprince.dev`**（《小王子·星辰之旅》，已发布商业 Web 游戏，
Unity 6000.3.25f1 + URP 17 + WebGPU + Addressables 分章）的完整静态逆向：

- **37 个自定义着色器**的可读 WGSL 源码（天空 89 属性 / 水 28 / 体积蒸汽 32 步步进 / 草 35 / 枝叶 41 …）
- **275 个自有 C# 类型**的命名面、12 个命名空间、146 张贴图规格、90 个材质的数值
- 真实规模基线（单场景 1,924 GameObject、常规贴图 216–512px）——用来校准预算与工期直觉

它证明这条流水线能产出真实商业作品，也暴露了若干工程陷阱（扩展名会说谎、大资产下载会静默截断、
源工程不入库就只能逆向）。蒸馏结论见 `references/case-littleprince-webgpu.md`。

> 出于 GitHub 单文件 100MB 硬限与**公开再分发游戏美术资产的版权风险**，726 MB 原始 AssetBundle
> 等二进制未入库；每一项都记录了 SHA-256 与恢复命令，见 `case-study/.../MANIFEST-excluded.md`。

## 安装

把整个目录放到 Claude Code 的 skills 目录下：

```bash
git clone https://github.com/aresbit/game-dev-skill.git \
  ~/.claude/skills/game-dev-skill
```

之后在对话里提到「AI 3D 游戏」「3D 场景搭建」「角色绑定蒙皮」「Blender CLI」「Unity MCP」「Tripo」「text-to-3D」等触发词即可加载。

## 资产预算检查

```
python3 scripts/asset_budget_check.py assets/asset-manifest.example.json
```

## 关于模型名

SKILL.md 里的模型名（Opus 5.5、Astra、Fable 5.1、Image 2.5、Tripo H3.1 / Smart Mesh P2.0）来自原文作者当时自称的技术栈，**未经独立验证**。流水线的每一环都接受等价替身——失效通常来自跳过了判据或审查，不是来自模型替换。

## License

MIT
