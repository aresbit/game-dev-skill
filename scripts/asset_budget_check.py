#!/usr/bin/env python3
"""Validate a 3D game asset manifest against triangle / UV / rig / texture budgets.

Usage:
    asset_budget_check.py <manifest.json>
    asset_budget_check.py <manifest.json> --json

Exit code 0 = no errors (warnings/info allowed); 1 = at least one error.
Pure stdlib; no engine required.
"""
import argparse
import json
import os
import sys

KINDS = ("character", "prop", "environment")
DEFAULT_BUDGETS = {
    "character": {"tri_warn": 15000, "tri_max": 40000},
    "prop": {"tri_warn": 2000, "tri_max": 8000},
    "environment": {"tri_warn": 15000, "tri_max": 60000},
    "total_tri_max": 400000,
    "texture_max_px": 2048,
}
REQUIRED_FIELDS = ("name", "kind", "file", "triangles")


def check(data, base_dir):
    budgets = {k: (dict(v) if isinstance(v, dict) else v) for k, v in DEFAULT_BUDGETS.items()}
    for k, v in (data.get("budgets") or {}).items():
        budgets[k] = v

    errors, warnings, info = [], [], []
    seen = {}
    total_tri = 0

    assets = data.get("assets")
    if not isinstance(assets, list):
        return ["manifest: 'assets' must be a list"], warnings, info

    for i, a in enumerate(assets):
        if not isinstance(a, dict):
            errors.append(f"assets[{i}]: not an object")
            continue
        tag = a.get("name") or f"assets[{i}]"

        for fld in REQUIRED_FIELDS:
            if fld not in a:
                errors.append(f"{tag}: missing required field '{fld}'")

        kind = a.get("kind")
        if kind is not None and kind not in KINDS:
            warnings.append(f"{tag}: unknown kind '{kind}' (using prop caps)")
            kind = "prop"

        name = a.get("name")
        if name in seen:
            errors.append(f"{tag}: duplicate asset name")
        seen[name] = True

        tri = a.get("triangles")
        if not isinstance(tri, int) or isinstance(tri, bool) or tri <= 0:
            errors.append(f"{tag}: 'triangles' must be a positive integer")
        else:
            total_tri += tri
            b = budgets.get(kind, DEFAULT_BUDGETS["prop"])
            tri_max = b.get("tri_max", 10**9)
            tri_warn = b.get("tri_warn", tri_max)
            if tri > tri_max:
                errors.append(f"{tag}: {tri} tris exceeds {kind} max {tri_max}")
            elif tri > tri_warn:
                warnings.append(f"{tag}: {tri} tris above {kind} warn {tri_warn}")

        if kind in ("character", "prop") and not a.get("uv", False):
            errors.append(f"{tag}: {kind} requires uv=true")
        if kind == "character" and not a.get("rigged", False):
            errors.append(f"{tag}: character requires rigged=true")

        tex = a.get("textures", 0)
        if kind == "character" and (not isinstance(tex, int) or tex < 1):
            warnings.append(f"{tag}: character has no textures")
        px = a.get("texture_px")
        if isinstance(px, int) and not isinstance(px, bool) and px > budgets["texture_max_px"]:
            errors.append(f"{tag}: texture {px}px exceeds max {budgets['texture_max_px']}px")

        f = a.get("file")
        if isinstance(f, str) and f:
            path = f if os.path.isabs(f) else os.path.join(base_dir, f)
            if not os.path.exists(path):
                info.append(f"{tag}: file not found ({f})")

    if total_tri > budgets["total_tri_max"]:
        errors.append(f"total {total_tri} tris exceeds global max {budgets['total_tri_max']}")

    return errors, warnings, info, total_tri


def main():
    ap = argparse.ArgumentParser(description="Check a 3D asset manifest against budgets.")
    ap.add_argument("manifest", help="path to asset-manifest.json")
    ap.add_argument("--json", action="store_true", help="emit machine-readable JSON")
    args = ap.parse_args()

    try:
        with open(args.manifest, "r", encoding="utf-8") as fh:
            data = json.load(fh)
    except FileNotFoundError:
        print(f"error: manifest not found: {args.manifest}", file=sys.stderr)
        return 1
    except json.JSONDecodeError as exc:
        print(f"error: invalid JSON in {args.manifest}: {exc}", file=sys.stderr)
        return 1

    base_dir = os.path.dirname(os.path.abspath(args.manifest))
    errors, warnings, info, total_tri = check(data, base_dir)
    n_assets = len(data.get("assets") or [])

    if args.json:
        print(json.dumps({
            "assets": n_assets, "total_triangles": total_tri,
            "errors": errors, "warnings": warnings, "info": info,
        }, ensure_ascii=False, indent=2))
    else:
        print(f"asset-budget-check: {n_assets} assets, {total_tri} total triangles")
        for label, items in (("ERROR", errors), ("WARN", warnings), ("INFO", info)):
            for it in items:
                print(f"  [{label}] {it}")
        if not errors and not warnings:
            print("  OK: all assets within budget.")

    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
