# 未入库资产清单 · MANIFEST-excluded

`littleprince.dev` 逆向结果的**知识全量入库**版本。原始二进制因三条理由留在本地：
GitHub 单文件 100MB 硬限（本目录 9 个文件超标）、仓库体积、以及公开再分发游戏美术资产的版权风险。

每一项都记录 **SHA-256 + 大小 + 来源**，配合 `reports/` 与 `tools/` 里的脚本可逐字节复原。
入库内容（144 个文件，14.06 MB）的校验和见 `SHA256SUMS`。

## 未入库合计：110 文件 / 1.6GB

| 类别 | 文件数 | 体积 |
|---|---:|---:|
| 着色器完整变体转储 / 原始 blob｜首变体已入库 `shaders/source/` | 61 | 803.1MB |
| AssetBundle 原始资产｜**游戏美术资产，公开再分发有版权风险** | 41 | 726.2MB |
| 构建产物与解包数据｜可由 URL 重新获取 | 8 | 125.3MB |
| 第三方依赖 `venv/`+`pylibs/`（UnityPy、lz4、Pillow…，本次未扫描，约 886 MB） | — | ~886 MB |

合计约 **2.5 GB** = 入库 14 MB + 未入库 1.6GB + 第三方依赖 ~886 MB。

## 着色器完整变体转储 / 原始 blob｜首变体已入库 `shaders/source/`

_61 文件 / 803.1MB_

| 大小 | 路径 | SHA-256 |
|---:|---|---|
| 260.2MB | `reports/shaders/builtin/Universal_Render_Pipeline_Lit.blob` | `eb9ef276b74e67a8a9a9…` |
| 224.5MB | `reports/shaders/raw_blobs/LittlePrince_Geography_LitWind.blob` | `8f9ba67b6020f2fbdcdd…` |
| 143.4MB | `reports/shaders/builtin/Universal_Render_Pipeline_Terrain_Lit.blob` | `b64bd677ff56d7568aa4…` |
| 44.5MB | `reports/shaders/raw_blobs/B612_Fabric.blob` | `a0a5603bff0edcb335b5…` |
| 41.6MB | `reports/shaders/raw_blobs/B612_Foliage.blob` | `13c32ca68aa3279446d7…` |
| 30.9MB | `reports/shaders/raw_blobs/Bar_IslandGround.blob` | `9b6dd5e62e4e75d338f5…` |
| 11.6MB | `reports/shaders/builtin/TextMeshPro_SRP_TMP_SDF-URP_Lit.blob` | `bac81b07d274fe2659c2…` |
| 9.9MB | `reports/shaders/raw_blobs/Bar_GroundStone.blob` | `3b9969c0d7fdf2d50ccb…` |
| 9.0MB | `reports/shaders/raw_blobs/B612_Bark.blob` | `5ad020dc187f0f45e859…` |
| 7.2MB | `reports/shaders/raw_blobs/Desert_Rock.blob` | `d509f02da21ab9a4efbd…` |
| 7.0MB | `reports/shaders/raw_blobs/B612_Grass.blob` | `212078abc4c84dd51b5a…` |
| 3.1MB | `reports/shaders/raw_blobs/B612_PlanetRock.blob` | `f40d38dc2b964bf2e6d5…` |
| 1.8MB | `reports/shaders/raw_blobs/Desert_Sand.blob` | `d145ac11140a72d05015…` |
| 981.1KB | `reports/shaders/raw_blobs/B612_Pond.blob` | `8114ad5239a409e737cc…` |
| 836.6KB | `reports/shaders/raw_blobs/B612_Stream.blob` | `80cacdc1b28513328d50…` |
| 704.9KB | `reports/shaders/raw_blobs/Bar_BottleLiquid.blob` | `d784fb36cbfbec2b6fc3…` |
| 688.9KB | `reports/shaders/raw_blobs/B612_Water.blob` | `3ad56fc9481c5481e97f…` |
| 678.3KB | `reports/shaders/raw_blobs/Bar_BottleGlass.blob` | `158614832356af3f68d6…` |
| 655.0KB | `reports/shaders/builtin/TextMeshPro_Distance_Field_(Surface).blob` | `3dd63f7fb3dc41b2381e…` |
| 398.3KB | `reports/shaders/raw_blobs/B612_SandBoil.blob` | `c9954ce83bbd85e9a549…` |
| 325.5KB | `reports/shaders/raw_blobs/LittlePrince_Geography_CloudSea.blob` | `1416f8c40c3fedcf5eda…` |
| 269.0KB | `reports/shaders/raw_blobs/Desert_FountainWater.blob` | `892ea27ac2a60fa0d005…` |
| 235.6KB | `reports/shaders/builtin/TextMeshPro_SRP_TMP_SDF-URP_Unlit.blob` | `5312b0278eeede2af88b…` |
| 226.0KB | `reports/shaders/raw_blobs/B612_Sky.blob` | `8a8be3623ac152158599…` |
| 220.7KB | `reports/shaders/raw_blobs/B612_CloudLayer.blob` | `bcf31773da5f6e7066a9…` |
| 207.6KB | `reports/shaders/raw_blobs/Bar_NightSky.blob` | `4a5c8575add313bc6865…` |
| 203.2KB | `reports/shaders/builtin/TextMeshPro_Mobile_Distance_Field_(Surface).blob` | `a61a151af1b500324e9d…` |
| 176.5KB | `reports/shaders/raw_blobs/B612_SteamPlume.blob` | `1c5df4dcd17edae08864…` |
| 171.6KB | `reports/shaders/raw_blobs/Desert_WaterSheet.blob` | `00952266e80a02da9e56…` |
| 166.9KB | `reports/shaders/builtin/Universal_Render_Pipeline_Particles_Unlit.blob` | `b95c84ef70026e7d4abe…` |
| 162.2KB | `reports/shaders/raw_blobs/B612_FarLandscape.blob` | `a4bb1181eca006cc5fce…` |
| 150.2KB | `reports/shaders/raw_blobs/Bar_ChimneySmoke.blob` | `f980d5612b7af045dd7a…` |
| 137.6KB | `reports/shaders/raw_blobs/Desert_Footprint.blob` | `4450e059cf7753862d5a…` |
| 87.1KB | `reports/shaders/raw_blobs/B612_Waterfall.blob` | `42e2bcfdf00e83da1eb5…` |
| 84.1KB | `reports/shaders/raw_blobs/B612_Steam.blob` | `495b59288120dc751e62…` |
| 78.7KB | `reports/shaders/builtin/TextMeshPro_Mobile_Distance_Field_-_2_Pass.blob` | `c75669490d34161e6c1e…` |
| 62.0KB | `reports/shaders/raw_blobs/LittlePrince_Geography_Distant.blob` | `a51bd256005c706ecd0d…` |
| 59.9KB | `reports/shaders/builtin/TextMeshPro_Distance_Field_Overlay.blob` | `cc1fee5938c96a195099…` |
| 59.8KB | `reports/shaders/builtin/TextMeshPro_Distance_Field.blob` | `43da543c7652c4eeb34d…` |
| 50.4KB | `reports/shaders/builtin/TextMeshPro_Mobile_Distance_Field_-_Masking.blob` | `177cedbba80e0a710128…` |
| 48.2KB | `reports/shaders/builtin/TextMeshPro_Distance_Field_SSD.blob` | `4b5ee6b8c2504ab28d16…` |
| 47.0KB | `reports/shaders/builtin/TextMeshPro_Mobile_Distance_Field_Overlay.blob` | `c7ff1d2d12bafc7d95a1…` |
| 47.0KB | `reports/shaders/builtin/TextMeshPro_Mobile_Distance_Field.blob` | `d6c1b2f60a3ac302d555…` |
| 44.5KB | `reports/shaders/raw_blobs/B612_CloudPuff.blob` | `396f57e5c544d64a803a…` |
| 43.2KB | `reports/shaders/raw_blobs/Desert_Particle.blob` | `02e731e4492cbd733148…` |
| 34.9KB | `reports/shaders/raw_blobs/LittlePrince_Geography_CloudSprite.blob` | `e91206ec27d096432bb7…` |
| 32.7KB | `reports/shaders/builtin/TextMeshPro_Bitmap_Custom_Atlas.blob` | `ff9bb48feb3c08b3be67…` |
| 32.7KB | `reports/shaders/builtin/TextMeshPro_Bitmap.blob` | `9444b2e2b61c39289082…` |
| 32.5KB | `reports/shaders/builtin/TextMeshPro_Mobile_Bitmap.blob` | `39a47255c2a3be771216…` |
| 30.8KB | `reports/shaders/builtin/TextMeshPro_Mobile_Distance_Field_SSD.blob` | `f18c43149159a990b2a3…` |
| 29.5KB | `reports/shaders/raw_blobs/B612_Glow.blob` | `9947bf20b7361c1e0053…` |
| 28.0KB | `reports/shaders/builtin/TextMeshPro_Sprite.blob` | `64e65ba35d1e8ff1c2b7…` |
| 16.3KB | `reports/shaders/raw_blobs/LittlePrince_Geography_Sky.blob` | `a09fd34116701b91a478…` |
| 15.6KB | `reports/shaders/raw_blobs/Desert_UserSky.blob` | `fbdaec5afca34673f91a…` |
| 14.4KB | `reports/shaders/raw_blobs/LittlePrince_Geography_Flame.blob` | `b537881b434d667e28a4…` |
| 11.1KB | `reports/shaders/raw_blobs/LittlePrince_Geography_LightShaft.blob` | `ca33aaf7ea1d7467f2de…` |
| 4.7KB | `reports/shaders/raw_blobs/Hidden_Universal_Render_Pipeline_FallbackError.blob` | `c69f1f297c657ae2154b…` |
| 2.3KB | `reports/shaders/raw_blobs/Hidden_Core_FallbackError.blob` | `ec816f38661f26fa2971…` |
| 2.3KB | `reports/shaders/raw_blobs/Hidden_Shader_Graph_FallbackError.blob` | `f5f14728264406913518…` |
| 4B | `reports/shaders/builtin/TextMeshPro_SRP_TMP_SDF-HDRP_LIT.blob` | `df3f619804a92fdb4057…` |
| 4B | `reports/shaders/builtin/TextMeshPro_SRP_TMP_SDF-HDRP_UNLIT.blob` | `df3f619804a92fdb4057…` |

```bash
同上 extract_all.py —— 解压后的原始着色器 blob
```

## AssetBundle 原始资产｜**游戏美术资产，公开再分发有版权风险**

_41 文件 / 726.2MB_

| 大小 | 路径 | SHA-256 |
|---:|---|---|
| 163.2MB | `bundles/geo_scenes_all_51dcdcc97916712edd4bd2822a3ae928.bundle` | `706c225940766523e2c7…` |
| 108.5MB | `bundles/b612_scenes_all_f593f551f550041f5a2feb47872f92c6.bundle` | `364267e6c8af579894e8…` |
| 100.1MB | `bundles/earth_scenes_desert_valley_14cf4e65852fe4c0258c47bdd0d8b076.bundle` | `c477d9a0dfbe9b2226ad…` |
| 99.8MB | `bundles/counting_scenes_all_089cbda0302d53359e2fb22541ffb15d.bundle` | `74e4a32df8db6b5a2ba0…` |
| 95.3MB | `bundles/bar_scenes_all_b9da43939383a8e5dadfca776345e4dc.bundle` | `3c15a38c8309b92e3681…` |
| 90.8MB | `bundles/earth_scenes_desert_dunes_1a8d0bd235b925791a5f105f6f53dd05.bundle` | `4539cd29aa3bf5f45947…` |
| 39.8MB | `bundles/lamp_scenes_all_8f509513f920bc338bf932325265e981.bundle` | `d6fdc38b5890ae85ee82…` |
| 6.8MB | `bundles/shared_assets_assets_shared_rendering_shaders_acb0aa18d2b8ddb5a170706242f2b762.bundle` | `3ad1a6cc6737ebc6a086…` |
| 6.5MB | `bundles/shared_assets_assets_shared_rendering_textures_vegetation_d106e2db21b98f445ca39f7e0b072526.bundle` | `e793e4e9c2066e29eef8…` |
| 6.2MB | `bundles/shared_assets_assets_shared_core_shaders_4b76f6f1bd6dc054e88e239d0e386e4e.bundle` | `5baf8489b49a471979ca…` |
| 2.1MB | `bundles/shared_assets_assets_thirdparty_textmeshpro_shaders_470b2ed937dbe9df03ee6096f4629b34.bundle` | `342fa0c5358448839b22…` |
| 1.6MB | `bundles/shared_assets_assets_shared_rendering_textures_cloud_fe029fc08b30dc9af7a982025f2831d9.bundle` | `c95491441f5fb552d223…` |
| 1.1MB | `bundles/shared_assets_assets_shared_rendering_textures_noise_efbfd98b97946fbf5c6367ff28ad68f2.bundle` | `d384c8e63939d49519ff…` |
| 1.1MB | `bundles/shared_assets_assets_shared_rendering_textures_water_aac5400ed65fd480cb12301dc2f45a0b.bundle` | `c6cdfb640e5473c9c216…` |
| 924.9KB | `bundles/shared_assets_assets_shared_rendering_textures_sky_sky_hdri_dusk.exr_e56652cee29b7782594bc86c165f59a1.bundle` | `11a4d08f1f7312558903…` |
| 913.3KB | `bundles/shared_assets_assets_shared_rendering_textures_sky_sky_hdri_dusk_alpha.png_d30dd56e33672527710b033283f31bf6.bundle` | `3f1a7c2d79acfd42fd8f…` |
| 674.2KB | `bundles/shared_assets_assets_shared_rendering_textures_sky_sky_hdri_day_alpha.png_f820c3e5fa55a0b6c64ad76e1350941f.bundle` | `225d7013de4ab2b707fc…` |
| 658.9KB | `bundles/shared_assets_assets_shared_rendering_textures_steam_5ecc4f8fe9ec128488dfd264388aca60.bundle` | `4f3f04e5390207204f1a…` |
| 5.8KB | `bundles/shared_assets_assets_shared_rendering_textures_sky_sky_hdri_dusk_cloudring.exr_508b08a438825e32fad4d4a05bee37eb.bundle` | `37beaba038cdcd41ac99…` |
| 5.6KB | `bundles/shared_assets_assets_shared_rendering_textures_sky_sky_hdri_day_cloudring.exr_25b67245c8fe5f4c14eeb19a8e666a20.bundle` | `df688fff2eb1af543934…` |
| 5.6KB | `bundles/shared_assets_assets_shared_rendering_textures_sky_sky_hdri_day_ring.exr_23bbc52142e4408f1ad62e6c86fe9567.bundle` | `9555b49c9433ddd167a1…` |
| 5.6KB | `bundles/shared_assets_assets_shared_rendering_textures_sky_sky_hdri_dusk_ring.exr_042c751eb78eb38735b8c42947ef7f3a.bundle` | `1056e9573d4ed7e1a966…` |
| 5.1KB | `bundles/shared_assets_assets_shared_rendering_materials_956e39714893822479d4bdada234155a.bundle` | `1fff78e37416d92b3562…` |
| 3.9KB | `bundles/shared_assets_assets_shared_rendering_materials_environment_m_b612_sky_motion.mat_6d5d9007de8d4de54addaa512bcc5ff8.bundle` | `3ba252d53c03c1c9c806…` |
| 3.8KB | `bundles/shared_assets_assets_shared_rendering_materials_environment_m_b612_sky_hdri.mat_6e7e542b72b87f694c06b7a69376e2d3.bundle` | `1a3b3128ee79605552c6…` |
| 3.7KB | `bundles/shared_assets_assets_shared_rendering_materials_environment_m_b612_sky.mat_2ccfd5f58918238da35f10a4ff12782b.bundle` | `798530715f61afdb8d2b…` |
| 3.0KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_foliage_tree.mat_3f9ee2e8b04327967c257d0958828316.bundle` | `0997e8f24f99517780b4…` |
| 3.0KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_foliage_shrub.mat_28e7ed76f50dcfa7ee91ba8a551e7063.bundle` | `2eaad9b516458650c6ec…` |
| 3.0KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_foliage_ivy.mat_d1667b94cfb8712c7ee5fe7f3af783fc.bundle` | `8c7f4f1fb9e44d77c9f6…` |
| 3.0KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_plumehead.mat_087e7b03cbd3aac2d51190f308b0df6c.bundle` | `5ca21ded3a7dc5b2010f…` |
| 2.9KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_debris.mat_75c0cb78499acce99e15d02c19e8b211.bundle` | `ed4c5500d7eea845ce13…` |
| 2.9KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_fern.mat_2203eeb742e27a99e5ebd7a6beeca392.bundle` | `706f572f6c39c469a389…` |
| 2.9KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_waterplant.mat_8ed684af59ea4abb58f29af321d432fc.bundle` | `038c0e4abdfb7f4b2965…` |
| 2.9KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_groundcover.mat_c9d398d7a91daa2f67e88dc5cd8d05ef.bundle` | `3538e0fec9dfbf960047…` |
| 2.9KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_flower.mat_3bb1ea0b6786a897fdc168c584779163.bundle` | `b4617bbd68b60041e549…` |
| 2.9KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_moss.mat_90a5d07468d5e5035f6a0d1c21023761.bundle` | `d3f72246e7234761c6e2…` |
| 2.8KB | `bundles/shared_assets_assets_shared_rendering_materials_environment_m_b612_water.mat_b679b2449963e52b0fa82fee9da888d4.bundle` | `1ee5f7874e96ee8be172…` |
| 2.6KB | `bundles/shared_assets_assets_shared_rendering_textures_sky_readme.md_34c83c2b27de3c5f8f0fdbd1e4178b38.bundle` | `91a5e05f10b13c69a3bf…` |
| 2.6KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_bark_secondary.mat_6b749df5de53ff61858ed8c945a45b70.bundle` | `594e53db8fe2af633a76…` |
| 2.6KB | `bundles/shared_assets_assets_shared_rendering_materials_vegetation_m_b612_bark_main.mat_40965d304b89991108d241eb9c0f0a91.bundle` | `96be9f0600d85fa6372a…` |
| 2.5KB | `bundles/shared_assets_assets_shared_rendering_materials_environment_m_b612_steam.mat_9c62a7f7b00630effd04d0159b5cfb0d.bundle` | `4f9926eeaf7bb7289803…` |

```bash
curl -sL --fail -o geo_scenes_all_51dcdcc97916712edd4bd2822a3ae928.bundle https://littleprince.dev/StreamingAssets/aa/WebGL/geo_scenes_all_51dcdcc97916712edd4bd2822a3ae928.bundle
curl -sL --fail -o b612_scenes_all_f593f551f550041f5a2feb47872f92c6.bundle https://littleprince.dev/StreamingAssets/aa/WebGL/b612_scenes_all_f593f551f550041f5a2feb47872f92c6.bundle
curl -sL --fail -o earth_scenes_desert_valley_14cf4e65852fe4c0258c47bdd0d8b076.bundle https://littleprince.dev/StreamingAssets/aa/WebGL/earth_scenes_desert_valley_14cf4e65852fe4c0258c47bdd0d8b076.bundle
curl -sL --fail -o counting_scenes_all_089cbda0302d53359e2fb22541ffb15d.bundle https://littleprince.dev/StreamingAssets/aa/WebGL/counting_scenes_all_089cbda0302d53359e2fb22541ffb15d.bundle
curl -sL --fail -o bar_scenes_all_b9da43939383a8e5dadfca776345e4dc.bundle https://littleprince.dev/StreamingAssets/aa/WebGL/bar_scenes_all_b9da43939383a8e5dadfca776345e4dc.bundle
curl -sL --fail -o earth_scenes_desert_dunes_1a8d0bd235b925791a5f105f6f53dd05.bundle https://littleprince.dev/StreamingAssets/aa/WebGL/earth_scenes_desert_dunes_1a8d0bd235b925791a5f105f6f53dd05.bundle
```

## 构建产物与解包数据｜可由 URL 重新获取

_8 文件 / 125.3MB_

| 大小 | 路径 | SHA-256 |
|---:|---|---|
| 49.4MB | `Build/code.wasm.br` | `0dcbdf05fa3cef1a4da9…` |
| 37.7MB | `Build/game.data.br` | `4e5af0431cb0533970d7…` |
| 27.4MB | `extracted/data.unity3d` | `8594cd39c19a83883b2a…` |
| 7.1MB | `extracted/Il2CppData/Metadata/global-metadata.dat` | `3c58b65ab6dce047647d…` |
| 1.8MB | `extracted/Resources/unity default resources` | `5c260628bfcec78dbd9f…` |
| 1.4MB | `extracted/sharedassets0.resource` | `5c99f3eaa63f62a4c6a8…` |
| 470.7KB | `Build/framework.js.br` | `4c0dcf2274c399646489…` |
| 114B | `extracted/boot.config` | `5913ff1c5c0fbbb4e503…` |

```bash
curl -sL --fail -O https://littleprince.dev/Build/57e146996bf180116a0302c7ec6e2cd1.wasm.br
curl -sL --fail -O https://littleprince.dev/Build/9cefc5588b44da878d14ae37617b1c6a.data.br
解 Build/game.data.br 的 UnityWebData1.0 容器（UnityPy 或手写解析）
curl -sL --fail -O https://littleprince.dev/Build/…framework.js.br
```
