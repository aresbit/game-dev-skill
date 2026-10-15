#!/usr/bin/env python3
"""IL2CPP global-metadata.dat header exploration."""
import struct, sys

PATH = "/home/tars/yys/webgpu/lp-re/extracted/Il2CppData/Metadata/global-metadata.dat"
data = open(PATH, "rb").read()
n = len(data)
print(f"file size = {n} bytes")

magic, version = struct.unpack_from("<II", data, 0)
print(f"magic = 0x{magic:08X}  version = {version} (0x{version:X})")

# dump first 120 uint32 after magic
vals = struct.unpack_from("<%dI" % 130, data, 4)
print("\n-- header uint32 stream (index: value) --")
for i, v in enumerate(vals):
    off = 4 + i*4
    print(f"  [{i:3d}] @0x{off:04X} = {v:>10d}  0x{v:08X}")
