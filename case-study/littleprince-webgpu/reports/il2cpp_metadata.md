# IL2CPP / C# metadata extraction — littleprince.dev ("B612")

Source: `extracted/Il2CppData/Metadata/global-metadata.dat` (7,470,244 bytes), unpacked from the
`UnityWebData1.0` container inside `Build/9cefc558…data.br`.

## Header
- magic `0xFAB11BAF`, **metadata version 39** (Unity 6 / recent IL2CPP).
- Header is a table of `(offset, size)` pairs; the region layout in the file is NOT in field order
  (regions are scrambled relative to the header), and one irregular field breaks naive pair indexing.
  Regions were therefore located structurally, not by header index.

## Recovered regions
| Region | Offset | Size | Meaning |
|---|---|---|---|
| identifier string heap | 431,016 | 1,359,734 | all names (types/methods/fields/namespaces) |
| typeDefinitions | 6,017,264 | — | array of 76-byte `Il2CppTypeDefinition` (verified: `nameIndex@0`, `namespaceIndex@4`, `methodStart@44`, method_count = low16 @52) |
| string-literal data | ≈4 … 431,016 | — | game prose / UI text |

## Counts
- **75,767 identifier tokens** in the string heap → `il2cpp/names.txt`
- **3,100 typeDefinitions parsed** from the walk start (`<Module>` anchor) → `il2cpp/types_full.txt`
- **275 game-owned types** (namespaces below) → `il2cpp/game_classes.txt`
- 85,649 raw readable runs across the file (literals + identifiers) → `il2cpp/literals_raw.txt`

## Game namespaces (the author's own code)
```
 98  B612
 28  LittlePrince.UI
 27  B612.Rendering
 22  LittlePrince.Bar
 20  LittlePrince.StarObservatory
 19  LittlePrince.Journey
 16  LittlePrince.Geography
 15  LittlePrince.King
 13  LittlePrince.Vanity
 11  LittlePrince.Lighter
  3  LittlePrince.Web
  3  LittlePrince.Story
```

## Engine namespaces present (confirms the stack)
`UnityEngine` (218), `UnityEngine.Rendering` (119), `UnityEngine.Rendering.Universal` (16) →
**URP** is the render pipeline; `UnityEngine.AddressableAssets` (19) → chapter streaming.

## Selected game classes (name | methods | fields)
Scene/story controllers:
- `LittlePrince.Vanity.VanityStory` (35/43), `VanityDoor` (38/51), `VanityPerformer` (31/40), `VanityPlanarMirror` (15/20), `VanityAtmosphere` (8/10)
- `LittlePrince.Lighter.LighterStory` (45/56), `Lamplighter` (37/40), `LighterLamp` (16/33), `LighterSkyReflection` (7/7), `LighterIslandShape` (11/6)
- `B612.B612ClocheRitual` (71/100) — the largest game class

Rendering / effects (this is the "WebGPU effect" authoring layer):
- `B612.B612CloudLayer` (19/26), `B612.B612CloudSea` (7/11)
- `B612.B612WaterParams` (1/37) — 37 fields ≈ a big water parameter block
- `B612.B612AmbientEmitter` (2/2), `B612.B612DuskShadowScaler` (4/6), `B612.B612SeatRimLight` (3/8), `B612.B612CameraSpec`
- `LittlePrince.Vanity.VanityRenderSettings`, `VanityCameraComfort`, `VanityStaticScenery`
- `CloudPass` (4/7)

Physics / character (PhysX-driven):
- `B612.CarryClearanceProbe` (34/59), `B612.CarryProp` (41/31), `B612.CarryHandIK` (3/2), `CarryPutSpot`, `CarryState`
- `B612.LocomotionProbe` (12/20), `B612.FootGrounder` (8/39), `B612.FootfallDetector` (4/12), `B612.ZoneFootsteps`, `B612.B612Footsteps`
- `LittlePrince.Desert.DesertPilotFootGrounder`, `DesertPilotFootLock`
- engine physics present: `UnityEngine.EventSystems.PhysicsRaycaster`, `Physics2DRaycaster` (raycast layer actually used — no raw `Rigidbody`-heavy gameplay surface in the game namespaces)

## Files
- `il2cpp/names.txt` — every identifier
- `il2cpp/types_full.txt` — `namespace.Type | methods=N | fields=M` for 3,100 types
- `il2cpp/namespaces.txt` — type counts per namespace
- `il2cpp/game_classes.txt` — 275 game types
- `il2cpp/physics.txt` (118), `il2cpp/rendering.txt` (157) — focused extracts
- `il2cpp/literals_raw.txt` — readable strings (UI copy, error text, etc.)

## Honesty notes
- Method **bodies** are NOT recoverable here — IL2CPP compiles them to WASM; only the name/signature
  surface lives in metadata (that's by design). Bodies would require disassembling the 52 MB module.
- `method_count`/`field_count` are read from packed 16-bit fields; treat as accurate but the exact
  field offsets were inferred by inspection, not from a published v39 struct spec.
- The walk captured 3,100 of the image's types (stopped at a run of invalid entries); the game's own
  275 types were all inside that range, so the "opus code" surface is complete.
