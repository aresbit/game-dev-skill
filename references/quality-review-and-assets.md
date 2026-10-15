# 质量审查与资产预算

- 独立审查协议
- 分阶段验收判据
- 资产预算检查
- 资产清单 schema
- 命名约定

## 独立审查协议

执行与审查必须分离，审查者拿不到生成过程，只看证据：

1. 执行 agent 完成一段（场景/角色/构建），产出多机位渲染截图 + 参考图。
2. 审查 agent 只看截图与参考图，逐差异列出（位置、比例、配色、缺失件、风格偏离）。
3. 差异回灌执行 agent 修，重出截图。
4. 收敛（差异清零或仅剩可接受差异）才进下一段。

要点：**换一个上下文独立的审查者**。执行 agent 自查会系统性放过自己的偏好误差。

## 分阶段验收判据

- 段 1 PRD：场景可枚举、每场景有目标 + 交互、角色有设定、玩法循环闭合。
- 段 2 参考图：主图 + 至少一个正交/俯视视角；跨图风格一致。
- 段 3 资产：过 `scripts/asset_budget_check.py`；角色有 UV/纹理/绑定。
- 段 4 场景 + 代码：多机位截图与参考图收敛；工程可运行。
- 段 5 迭代：无阻塞缺陷；帧率/加载达标；盲审通过。

## 资产预算检查

用脚本校验资产清单，防面数失控与漏 UV/漏绑定：

```
python3 scripts/asset_budget_check.py assets/asset-manifest.json
```

默认阈值（可在清单 `budgets` 段覆盖）：character 警告 15000 / 上限 40000 三角面；prop 警告 2000 / 上限 8000；environment 警告 15000 / 上限 60000；全局上限 400000 三角面；纹理最长边 2048px。按目标平台调整。

脚本检查项：必填字段、三角面区间、角色必须绑定、角色/道具必须有 UV、角色应有纹理、纹理尺寸、重名、总面数；文件缺失只提示不报错。

退出码：有 error 返回 1，仅有 warning/info 返回 0。

## 资产清单 schema

见 `assets/asset-manifest.example.json`。键：

```json
{
  "project": "string",
  "budgets": {"character": {"tri_warn": 0, "tri_max": 0}, "total_tri_max": 0},
  "assets": [
    {"name": "string", "kind": "character|prop|environment", "file": "assets/x.glb",
     "triangles": 0, "uv": true, "textures": 0, "texture_px": 1024, "rigged": false, "notes": ""}
  ]
}
```

- `kind`：character / prop / environment，决定用哪套阈值。
- `triangles`：三角面数（必填，正整数）。
- `uv`：是否有 UV（character/prop 必须为 true）。
- `textures`：纹理张数；`texture_px`：纹理最长边像素。
- `rigged`：character 必须为 true。

## 命名约定

建议（非强制）：`<kind>_<slug>_<lod>`，例 `prop_watering-can_lod0.glb`、`char_little-prince_lod0.glb`。同名不同用途用后缀区分，脚本会拦重名。
