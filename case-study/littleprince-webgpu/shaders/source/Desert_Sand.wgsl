//Assets/Levels/Desert/Shaders/Desert_Sand.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 2u>;

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_1,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_2,
  /* @offset(224) */
  Xhlslcc_UnusedXunity_ProbesOcclusion : vec4f,
  /* @offset(240) */
  Xhlslcc_UnusedXunity_SpecCube0_HDR : vec4f,
  /* @offset(256) */
  Xhlslcc_UnusedXunity_SpecCube1_HDR : vec4f,
  /* @offset(272) */
  Xhlslcc_UnusedXunity_SpecCube0_BoxMax : vec4f,
  /* @offset(288) */
  Xhlslcc_UnusedXunity_SpecCube0_BoxMin : vec4f,
  /* @offset(304) */
  Xhlslcc_UnusedXunity_SpecCube0_ProbePosition : vec4f,
  /* @offset(320) */
  Xhlslcc_UnusedXunity_SpecCube0_Rotation : vec4f,
  /* @offset(336) */
  Xhlslcc_UnusedXunity_SpecCube1_BoxMax : vec4f,
  /* @offset(352) */
  Xhlslcc_UnusedXunity_SpecCube1_BoxMin : vec4f,
  /* @offset(368) */
  Xhlslcc_UnusedXunity_SpecCube1_ProbePosition : vec4f,
  /* @offset(384) */
  Xhlslcc_UnusedXunity_SpecCube1_Rotation : vec4f,
  /* @offset(400) */
  Xhlslcc_UnusedXunity_LightmapST : vec4f,
  /* @offset(416) */
  Xhlslcc_UnusedXunity_DynamicLightmapST : vec4f,
  /* @offset(432) */
  Xhlslcc_UnusedXunity_SHAr : vec4f,
  /* @offset(448) */
  Xhlslcc_UnusedXunity_SHAg : vec4f,
  /* @offset(464) */
  Xhlslcc_UnusedXunity_SHAb : vec4f,
  /* @offset(480) */
  Xhlslcc_UnusedXunity_SHBr : vec4f,
  /* @offset(496) */
  Xhlslcc_UnusedXunity_SHBg : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedXunity_SHBb : vec4f,
  /* @offset(528) */
  Xhlslcc_UnusedXunity_SHC : vec4f,
  /* @offset(544) */
  Xhlslcc_UnusedXunity_RendererBounds_Min : vec4f,
  /* @offset(560) */
  Xhlslcc_UnusedXunity_RendererBounds_Max : vec4f,
  /* @offset(576) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_3,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_4,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_5 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1 = (u_xlat0.yyyy * x_64.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_64.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_64.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0;
  gl_Position = (u_xlat1 + x_64.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat0 = (in_NORMAL0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_NORMAL0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_NORMAL0.zzz) + u_xlat0);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0);
  vs_TEXCOORD2 = in_TEXCOORD0;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec2f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(2) in_TEXCOORD0_param : vec2f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1, vs_TEXCOORD2);
}

//Assets/Levels/Desert/Shaders/Desert_Sand.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_MainLightPosition : vec4f,
  /* @offset(48) */
  x_MainLightColor : vec4f,
  /* @offset(64) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(144) */
  unity_OrthoParams : vec4f,
  /* @offset(160) */
  x_ScaleBiasRt : vec4f,
  /* @offset(176) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(240) */
  x_DesertSunDir : vec4f,
  /* @offset(256) */
  x_DesertSunColor : vec4f,
  /* @offset(272) */
  x_DesertHaze : vec4f,
  /* @offset(288) */
  x_DesertHaze2 : vec4f,
  /* @offset(304) */
  x_DesertHazeTint : vec4f,
  /* @offset(320) */
  x_DesertSkyGrade0 : vec4f,
  /* @offset(336) */
  x_DesertSkyGrade1 : vec4f,
  /* @offset(352) */
  x_DesertSkyGrade2 : vec4f,
  /* @offset(368) */
  x_DesertSkyGrade3 : vec4f,
  /* @offset(384) */
  x_DesertBounce : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_LushColor : vec4f,
  /* @offset(16) */
  x_MeadowColor : vec4f,
  /* @offset(32) */
  x_DryColor : vec4f,
  /* @offset(48) */
  x_BankColor : vec4f,
  /* @offset(64) */
  x_GrassTile : f32,
  /* @offset(68) */
  x_GrassLuma : f32,
  /* @offset(72) */
  x_CoverFar : f32,
  /* @offset(76) */
  x_SteepRock : f32,
  /* @offset(80) */
  x_RoseInA : f32,
  /* @offset(96) */
  x_RoseFieldColor : vec4f,
  /* @offset(112) */
  x_RoseBedColor : vec4f,
  /* @offset(128) */
  Xhlslcc_UnusedX_SandA : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedX_SandB : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedX_SandC : vec4f,
  /* @offset(176) */
  x_TrailColor : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedX_GravelTint : vec4f,
  /* @offset(208) */
  Xhlslcc_UnusedX_FirmColor : vec4f,
  /* @offset(224) */
  x_DampColor : vec4f,
  /* @offset(240) */
  x_GreenColor : vec4f,
  /* @offset(256) */
  x_RockColor : vec4f,
  /* @offset(272) */
  x_ShadowTint : vec4f,
  /* @offset(288) */
  x_PetalColor : vec4f,
  /* @offset(304) */
  x_FieldColor : vec4f,
  /* @offset(320) */
  Xhlslcc_UnusedX_UserBase_ST : vec4f,
  /* @offset(336) */
  x_SedimentRect : vec4f,
  /* @offset(352) */
  x_UserFrame : vec4f,
  /* @offset(368) */
  x_SedimentFrame : vec4f,
  /* @offset(384) */
  x_UserTiles : vec4f,
  /* @offset(400) */
  x_UserWarp : vec4f,
  /* @offset(416) */
  x_UserRippleStrength : f32,
  /* @offset(420) */
  x_UserTintMix : f32,
  /* @offset(424) */
  Xhlslcc_UnusedX_UserSpecular : f32,
  /* @offset(428) */
  x_UserBrightness : f32,
  /* @offset(432) */
  Xhlslcc_UnusedX_CrestLight : f32,
  /* @offset(448) */
  x_MacroScale : vec4f,
  /* @offset(464) */
  Xhlslcc_UnusedX_MacroStrength : vec4f,
  /* @offset(480) */
  Xhlslcc_UnusedX_RippleTile : vec4f,
  /* @offset(496) */
  Xhlslcc_UnusedX_RippleStrength : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedX_RippleFade : vec4f,
  /* @offset(528) */
  x_RippleSlope : vec4f,
  /* @offset(544) */
  x_GroundMaskRect : vec4f,
  /* @offset(560) */
  x_GardenRect : vec4f,
  /* @offset(576) */
  Xhlslcc_UnusedX_WindAzimuth : f32,
  /* @offset(580) */
  Xhlslcc_UnusedX_TrailTile : f32,
  /* @offset(584) */
  x_GravelTile : f32,
  /* @offset(588) */
  x_RockTile : f32,
  /* @offset(592) */
  x_SoilTile : f32,
  /* @offset(596) */
  x_PathTile : f32,
  /* @offset(608) */
  x_EstateColor : vec4f,
  /* @offset(624) */
  x_PavingColor : vec4f,
  /* @offset(640) */
  x_EstateRect : vec4f,
  /* @offset(656) */
  x_PavingSize : vec4f,
  /* @offset(672) */
  x_RoadSat : f32,
  /* @offset(676) */
  x_RoadGrain : f32,
  /* @offset(680) */
  x_EstateGrain : f32,
  /* @offset(684) */
  x_Wrap : f32,
  /* @offset(688) */
  x_AmbientScale : f32,
  /* @offset(692) */
  x_Sparkle : f32,
  /* @offset(696) */
  x_SparkleFade : f32,
  /* @offset(700) */
  Xhlslcc_UnusedX_SlopeDarken : f32,
  /* @offset(704) */
  x_SparkleDensity : f32,
  /* @offset(720) */
  Xhlslcc_UnusedX_MainTex_ST : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedX_BaseColor : vec4f,
}

alias Arr_1 = array<vec4f, 20u>;

alias Arr_2 = array<vec4f, 32u>;

alias Arr_3 = array<vec4f, 128u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  Xhlslcc_UnusedX_CascadeShadowSplitSpheres0 : vec4f,
  /* @offset(336) */
  Xhlslcc_UnusedX_CascadeShadowSplitSpheres1 : vec4f,
  /* @offset(352) */
  Xhlslcc_UnusedX_CascadeShadowSplitSpheres2 : vec4f,
  /* @offset(368) */
  Xhlslcc_UnusedX_CascadeShadowSplitSpheres3 : vec4f,
  /* @offset(384) */
  Xhlslcc_UnusedX_CascadeShadowSplitSphereRadii : vec4f,
  /* @offset(400) */
  Xhlslcc_UnusedX_MainLightShadowOffset0 : vec4f,
  /* @offset(416) */
  Xhlslcc_UnusedX_MainLightShadowOffset1 : vec4f,
  /* @offset(432) */
  x_MainLightShadowParams : vec4f,
  /* @offset(448) */
  Xhlslcc_UnusedX_MainLightShadowmapSize : vec4f,
  /* @offset(464) */
  Xhlslcc_UnusedX_AdditionalShadowOffset0 : vec4f,
  /* @offset(480) */
  Xhlslcc_UnusedX_AdditionalShadowOffset1 : vec4f,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedX_AdditionalShadowmapSize : vec4f,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_2,
  /* @offset(1040) */
  hlslcc_mtx4x4_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 4u>;

alias Arr_6 = array<vec4f, 2u>;

alias Arr_7 = array<vec4f, 4u>;

alias Arr_8 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_4,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_5,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_6,
  /* @offset(224) */
  Xhlslcc_UnusedXunity_ProbesOcclusion : vec4f,
  /* @offset(240) */
  Xhlslcc_UnusedXunity_SpecCube0_HDR : vec4f,
  /* @offset(256) */
  Xhlslcc_UnusedXunity_SpecCube1_HDR : vec4f,
  /* @offset(272) */
  Xhlslcc_UnusedXunity_SpecCube0_BoxMax : vec4f,
  /* @offset(288) */
  Xhlslcc_UnusedXunity_SpecCube0_BoxMin : vec4f,
  /* @offset(304) */
  Xhlslcc_UnusedXunity_SpecCube0_ProbePosition : vec4f,
  /* @offset(320) */
  Xhlslcc_UnusedXunity_SpecCube0_Rotation : vec4f,
  /* @offset(336) */
  Xhlslcc_UnusedXunity_SpecCube1_BoxMax : vec4f,
  /* @offset(352) */
  Xhlslcc_UnusedXunity_SpecCube1_BoxMin : vec4f,
  /* @offset(368) */
  Xhlslcc_UnusedXunity_SpecCube1_ProbePosition : vec4f,
  /* @offset(384) */
  Xhlslcc_UnusedXunity_SpecCube1_Rotation : vec4f,
  /* @offset(400) */
  Xhlslcc_UnusedXunity_LightmapST : vec4f,
  /* @offset(416) */
  Xhlslcc_UnusedXunity_DynamicLightmapST : vec4f,
  /* @offset(432) */
  unity_SHAr : vec4f,
  /* @offset(448) */
  unity_SHAg : vec4f,
  /* @offset(464) */
  unity_SHAb : vec4f,
  /* @offset(480) */
  unity_SHBr : vec4f,
  /* @offset(496) */
  unity_SHBg : vec4f,
  /* @offset(512) */
  unity_SHBb : vec4f,
  /* @offset(528) */
  unity_SHC : vec4f,
  /* @offset(544) */
  Xhlslcc_UnusedXunity_RendererBounds_Min : vec4f,
  /* @offset(560) */
  Xhlslcc_UnusedXunity_RendererBounds_Max : vec4f,
  /* @offset(576) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_7,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_8,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_9 = array<vec4f, 32u>;

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_14 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_9,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_10,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_11,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_12,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_13,
  /* @offset(2560) */
  Xhlslcc_UnusedX_AdditionalLightsLayerMasks : Arr_14,
}

alias Arr_15 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_15,
}

alias Arr_16 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_16,
}

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(0) var<uniform> x_101 : PGlobals;

@group(1) @binding(5) var<uniform> x_122 : UnityPerMaterial;

@group(0) @binding(5) var x_GroundMask : texture_2d<f32>;

@group(0) @binding(28) var sampler_trilinear_clamp : sampler;

@group(0) @binding(6) var x_GroundMask2 : texture_2d<f32>;

@group(0) @binding(12) var x_GroundMask3 : texture_2d<f32>;

@group(0) @binding(10) var x_GardenMask : texture_2d<f32>;

@group(0) @binding(11) var x_EstateMask : texture_2d<f32>;

@group(0) @binding(19) var x_UserBase : texture_2d<f32>;

@group(0) @binding(27) var sampler_trilinear_repeat : sampler;

@group(0) @binding(22) var x_SedimentTint : texture_2d<f32>;

@group(0) @binding(4) var x_MacroNoise : texture_2d<f32>;

@group(0) @binding(26) var sampler_MacroNoise : sampler;

@group(0) @binding(20) var x_UserRipple : texture_2d<f32>;

@group(0) @binding(21) var x_UserCompacted : texture_2d<f32>;

@group(0) @binding(7) var x_GravelAlbedo : texture_2d<f32>;

@group(0) @binding(13) var x_GrassAlbedo : texture_2d<f32>;

@group(0) @binding(14) var x_GrassNormal : texture_2d<f32>;

@group(0) @binding(15) var x_SoilAlbedo : texture_2d<f32>;

@group(0) @binding(8) var x_RockDetailAlbedo : texture_2d<f32>;

@group(0) @binding(9) var x_RockDetailNormal : texture_2d<f32>;

@group(0) @binding(16) var x_SoilNormal : texture_2d<f32>;

@group(0) @binding(17) var x_PathAlbedo : texture_2d<f32>;

@group(0) @binding(18) var x_PathNormal : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_4151 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(24) var sampler_LinearClampCompare : sampler_comparison;

@group(0) @binding(0) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_LinearClamp : sampler;

@group(1) @binding(4) var<uniform> x_4409 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_4986 : AdditionalLights;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(1) @binding(2) var<uniform> x_5450 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_5621 : urp_TileBuffer;

@group(0) @binding(3) var x_DesertHorizonRing : texture_2d<f32>;

@group(0) @binding(25) var sampler_DesertHorizonRing : sampler;

var<private> SV_Target0 : vec4f;

fn int_bitfieldExtract_i1_i1_i1_(value : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var x_30 : i32;
  let x_22 = *(value);
  let x_23 = *(offset_1);
  if (((*(offset_1) + *(bits)) < 32i)) {
    x_30 = *(bits);
  } else {
    x_30 = (32i - *(offset_1));
  }
  let x_37 = x_30;
  return extractBits(x_22, u32(x_23), u32(x_37));
}

fn uint_bitfieldExtract_u1_i1_i1_(value_1 : ptr<function, u32>, offset_2 : ptr<function, i32>, bits_1 : ptr<function, i32>) -> u32 {
  let x_41 = *(value_1);
  let x_42 = *(offset_2);
  let x_46 = *(bits_1);
  return ((x_41 >> bitcast<u32>(x_42)) & bitcast<u32>(~((-1i << bitcast<u32>(x_46)))));
}

const x_163 = vec4f(1.0f, 1.0f, 0.0f, 0.0f);

const x_823 = vec2f(2.0f);

const x_825 = vec2f(-1.0f);

const x_1040 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_1541 = vec3f(-1.0f);

const x_1550 = vec3f(1.0f);

const x_1849 = vec2f(0.69999998807907104492f);

const x_2325 = vec2f(0.89999997615814208984f);

const x_2559 = vec3f(0.10310000181198120117f, 0.10300000011920928955f, 0.09730000048875808716f);

const x_2571 = vec3f(33.3300018310546875f);

const x_2708 = vec2f(0.10310000181198120117f);

const x_3164 = vec4f(0.10310000181198120117f);

const x_3277 = vec2f(1.0f);

const x_3686 = vec2f(-0.5f);

const x_3979 = vec2u(1u);

const x_4558 = vec2f(0.00000999999974737875f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat19 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat58 : f32;
  var u_xlat2 : vec4f;
  var u_xlatb40 : vec2<bool>;
  var u_xlat40 : vec2f;
  var u_xlatb3 : vec2<bool>;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat41 : vec2f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat21 : f32;
  var u_xlat59 : f32;
  var u_xlat61 : f32;
  var u_xlatb5 : bool;
  var u_xlatb43 : vec2<bool>;
  var u_xlatb6 : vec2<bool>;
  var u_xlatb62 : bool;
  var u_xlatb8 : vec4<bool>;
  var u_xlatb27 : vec3<bool>;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat28 : vec3f;
  var u_xlat10 : vec4f;
  var u_xlat29 : vec3f;
  var u_xlat11 : vec3f;
  var u_xlat12 : vec3f;
  var u_xlat13 : vec4f;
  var u_xlat25 : vec3f;
  var u_xlat14 : vec4f;
  var u_xlat50 : vec2f;
  var u_xlat65 : f32;
  var u_xlat68 : f32;
  var u_xlat15 : vec4f;
  var u_xlat32 : f32;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat35 : vec3f;
  var u_xlat42 : f32;
  var u_xlat51 : vec2f;
  var u_xlatb4 : bool;
  var u_xlat18 : vec3f;
  var u_xlat23 : f32;
  var u_xlat44 : f32;
  var u_xlatb41 : vec2<bool>;
  var u_xlat63 : f32;
  var u_xlat67 : f32;
  var u_xlat31 : f32;
  var u_xlat60 : f32;
  var u_xlatb60 : bool;
  var u_xlatb63 : bool;
  var u_xlat64 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatb59 : bool;
  var u_xlat43 : f32;
  var u_xlat24 : vec3f;
  var x_2786 : vec3f;
  var x_3258 : vec2f;
  var u_xlati8 : vec4i;
  var u_xlati46 : vec2i;
  var txVec0 : vec3f;
  var u_xlatb21 : bool;
  var x_4237 : f32;
  var u_xlat38 : vec2f;
  var u_xlat57 : f32;
  var u_xlat62 : f32;
  var u_xlat46 : vec2f;
  var u_xlat20 : vec2f;
  var u_xlat39 : f32;
  var u_xlatb20 : bool;
  var u_xlatu57 : u32;
  var u_xlatu1 : vec3u;
  var u_xlatu_loop_1 : u32;
  var u_xlati23 : i32;
  var u_xlati40 : i32;
  var u_xlatb23 : bool;
  var x_5144 : f32;
  var x_5153 : f32;
  var txVec1 : vec3f;
  var u_xlatb61 : bool;
  var x_5249 : f32;
  var u_xlatu0 : vec3u;
  var u_xlatb38 : bool;
  var x_5371 : f32;
  var u_xlatu19 : u32;
  var u_xlatu38 : u32;
  var u_xlati39 : vec2i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati4 : vec2i;
  var u_xlati42 : vec2i;
  var u_xlati1 : vec3i;
  var u_xlati38 : i32;
  var u_xlatu4 : vec4u;
  var u_xlatu40 : u32;
  var u_xlati62 : i32;
  var u_xlatu63 : u32;
  var u_xlatb7 : bool;
  var u_xlatu26 : vec2u;
  var u_xlatb26 : bool;
  var u_xlatu7 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu8 : vec4u;
  var param_9 : i32;
  var param_10 : i32;
  var param_11 : i32;
  var param_12 : i32;
  var param_13 : i32;
  var param_14 : i32;
  var param_15 : i32;
  var param_16 : i32;
  var param_17 : i32;
  var param_18 : i32;
  var param_19 : i32;
  var param_20 : i32;
  var u_xlati9 : vec2i;
  var u_xlati10 : vec4i;
  var u_xlati26 : vec3i;
  var u_xlati64 : i32;
  var u_xlati45 : vec2i;
  var u_xlati7 : i32;
  var u_xlati27 : i32;
  var u_xlatb9 : vec3<bool>;
  var x_5987 : f32;
  var u_xlat27 : vec3f;
  var x_6000 : f32;
  var txVec2 : vec3f;
  var u_xlatb46 : bool;
  var x_6109 : f32;
  var u_xlatb0 : bool;
  var u_xlatb57 : bool;
  var x_6291 : f32;
  var x_6482 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat19 = (u_xlat0.xxx * vs_TEXCOORD1);
  u_xlat1 = vec4f(((-(vs_TEXCOORD0) + x_101.x_WorldSpaceCameraPos)).xyz, u_xlat1.w);
  u_xlat58 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat58 = sqrt(u_xlat58);
  u_xlat2 = vec4f(((vs_TEXCOORD0.xz + -(x_122.x_GroundMaskRect.xy))).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_122.x_GroundMaskRect.zw)).xy, u_xlat2.zw);
  u_xlatb40 = ((u_xlat2.xyxy >= vec4f())).xy;
  u_xlat40.x = select(0.0f, 1.0f, u_xlatb40.x);
  u_xlat40.y = select(0.0f, 1.0f, u_xlatb40.y);
  u_xlatb3 = ((x_163 >= u_xlat2.xyxx)).xy;
  u_xlat3.x = select(0.0f, 1.0f, u_xlatb3.x);
  u_xlat3.y = select(0.0f, 1.0f, u_xlatb3.y);
  u_xlat40.x = (u_xlat40.x * u_xlat3.x);
  u_xlat40.x = (u_xlat40.y * u_xlat40.x);
  u_xlat40.x = (u_xlat3.y * u_xlat40.x);
  let x_205 = u_xlat2;
  let x_210 = x_101.x_GlobalMipBias.x;
  let x_211 = textureSampleBias(x_GroundMask, sampler_trilinear_clamp, x_205.xy, x_210);
  u_xlat3 = x_211;
  u_xlat4 = vec4f(((u_xlat40.xxx * u_xlat3.xzw)).xyz, u_xlat4.w);
  let x_225 = u_xlat2;
  let x_228 = x_101.x_GlobalMipBias.x;
  let x_229 = textureSampleBias(x_GroundMask2, sampler_trilinear_clamp, x_225.xy, x_228);
  u_xlat5 = vec4f(x_229.xzw.xyz, u_xlat5.w);
  u_xlat41 = (u_xlat40.xx * u_xlat5.yz);
  let x_244 = u_xlat2;
  let x_247 = x_101.x_GlobalMipBias.x;
  let x_248 = textureSampleBias(x_GroundMask3, sampler_trilinear_clamp, x_244.xy, x_247);
  u_xlat6 = x_248;
  u_xlat7 = (u_xlat40.xxxx * u_xlat6.zyxw);
  u_xlat2.x = (-(x_122.x_RoseInA) + 1.0f);
  u_xlat21 = (u_xlat2.x * u_xlat4.z);
  u_xlat59 = (u_xlat4.z * x_122.x_RoseInA);
  u_xlat61 = ((u_xlat5.x * u_xlat40.x) + -1.0f);
  u_xlat61 = ((u_xlat40.x * u_xlat61) + 1.0f);
  u_xlatb5 = (0.0f < x_122.x_GardenRect.z);
  if (u_xlatb5) {
    u_xlat5 = vec4f(((vs_TEXCOORD0.xz + -(x_122.x_GardenRect.xy))).xy, u_xlat5.zw);
    u_xlat5 = vec4f(((u_xlat5.xy * x_122.x_GardenRect.zw)).xy, u_xlat5.zw);
    u_xlatb43 = ((vec4f() < u_xlat5.xyxy)).xy;
    u_xlatb43.x = (u_xlatb43.y & u_xlatb43.x);
    u_xlatb6 = ((u_xlat5.xyxx < x_163)).xy;
    u_xlatb62 = (u_xlatb6.y & u_xlatb6.x);
    u_xlatb43.x = (u_xlatb62 & u_xlatb43.x);
    if (u_xlatb43.x) {
      let x_346 = u_xlat5;
      let x_349 = x_101.x_GlobalMipBias.x;
      let x_350 = textureSampleBias(x_GardenMask, sampler_trilinear_clamp, x_346.xy, x_349);
      u_xlat5 = x_350;
    } else {
      u_xlat5.x = 0.0f;
      u_xlat5.y = 0.0f;
      u_xlat5.z = 0.0f;
      u_xlat5.w = 0.0f;
    }
  } else {
    u_xlat5.x = 0.0f;
    u_xlat5.y = 0.0f;
    u_xlat5.z = 0.0f;
    u_xlat5.w = 0.0f;
  }
  u_xlatb6.x = (0.0f < x_122.x_EstateRect.z);
  if (u_xlatb6.x) {
    u_xlat6 = vec4f(((vs_TEXCOORD0.xz + -(x_122.x_EstateRect.xy))).xy, u_xlat6.zw);
    u_xlat6 = vec4f(((u_xlat6.xy * x_122.x_EstateRect.zw)).xy, u_xlat6.zw);
    u_xlatb8 = vec4<bool>(((vec4f() < u_xlat6.xyxx)).xy.xy, u_xlatb8.zw);
    u_xlatb8.x = (u_xlatb8.y & u_xlatb8.x);
    u_xlatb27 = vec3<bool>(((u_xlat6.xyxx < x_163)).xy.xy, u_xlatb27.z);
    u_xlatb27.x = (u_xlatb27.y & u_xlatb27.x);
    u_xlatb8.x = (u_xlatb27.x & u_xlatb8.x);
    if (u_xlatb8.x) {
      let x_431 = u_xlat6;
      let x_434 = x_101.x_GlobalMipBias.x;
      let x_435 = textureSampleBias(x_EstateMask, sampler_trilinear_clamp, x_431.xy, x_434);
      u_xlat8 = vec4f(x_435.xyz.xyz, u_xlat8.w);
    } else {
      u_xlat8.x = 0.0f;
      u_xlat8.y = 0.0f;
      u_xlat8.z = 0.0f;
    }
  } else {
    u_xlat8.x = 0.0f;
    u_xlat8.y = 0.0f;
    u_xlat8.z = 0.0f;
  }
  u_xlat6.x = u_xlat19.y;
  u_xlat6.x = clamp(u_xlat6.x, 0.0f, 1.0f);
  u_xlat9 = (-(u_xlat6.xxxx) + vec4f(1.0f, 0.93999999761581420898f, 0.64999997615814208984f, 0.55000001192092895508f));
  u_xlat28 = (u_xlat9.yzw * vec3f(3.84615397453308105469f, 3.99999952316284179688f, 5.00000047683715820312f));
  u_xlat28 = clamp(u_xlat28, vec3f(0.0f), vec3f(1.0f));
  u_xlat10 = vec4f((((u_xlat28 * vec3f(-2.0f)) + vec3f(3.0f))).xyz, u_xlat10.w);
  u_xlat28 = (u_xlat28 * u_xlat28);
  u_xlat28 = (u_xlat28 * u_xlat10.xyz);
  u_xlat6.x = (x_122.x_UserFrame.z * 0.01745329238474369049f);
  u_xlat10.x = cos(u_xlat6.x);
  u_xlat6.x = sin(u_xlat6.x);
  u_xlat29 = vec3f(((vs_TEXCOORD0.zx + -(x_122.x_UserFrame.yx))).xy, u_xlat29.z);
  u_xlat11 = vec3f(((u_xlat6.xx * u_xlat29.xy)).xy, u_xlat11.z);
  u_xlat12.x = ((u_xlat29.y * u_xlat10.x) + -(u_xlat11.x));
  u_xlat12.y = ((u_xlat29.x * u_xlat10.x) + u_xlat11.y);
  u_xlat11.x = -(u_xlat6.x);
  u_xlat13 = (u_xlat12.xyxy / x_122.x_UserTiles.xxzz);
  let x_561 = u_xlat13;
  let x_564 = x_101.x_GlobalMipBias.x;
  let x_565 = textureSampleBias(x_UserBase, sampler_trilinear_repeat, x_561.xy, x_564);
  u_xlat29 = x_565.xyz;
  u_xlat25.x = (x_122.x_SedimentFrame.z * 0.01745329238474369049f);
  u_xlat13.x = sin(u_xlat25.x);
  u_xlat14.x = cos(u_xlat25.x);
  u_xlat50 = (u_xlat12.xy * u_xlat14.xx);
  u_xlat14.x = ((u_xlat12.y * u_xlat13.x) + u_xlat50.x);
  u_xlat14.y = ((-(u_xlat12.x) * u_xlat13.x) + u_xlat50.y);
  u_xlat50 = (u_xlat14.xy + x_122.x_SedimentFrame.xy);
  u_xlat50 = (u_xlat50 + -(x_122.x_SedimentRect.xy));
  u_xlat50 = (u_xlat50 * x_122.x_SedimentRect.zw);
  let x_629 = u_xlat50;
  let x_631 = x_101.x_GlobalMipBias.x;
  let x_632 = textureSampleBias(x_SedimentTint, sampler_trilinear_clamp, x_629, x_631);
  u_xlat14 = vec4f(x_632.xyz.xyz, u_xlat14.w);
  u_xlat14 = vec4f(((-(u_xlat29) + u_xlat14.xyz)).xyz, u_xlat14.w);
  let x_650 = vec3f(x_122.x_UserTintMix, x_122.x_UserTintMix, x_122.x_UserTintMix);
  u_xlat29 = ((vec3f(x_650.x, x_650.y, x_650.z) * u_xlat14.xyz) + u_xlat29);
  let x_667 = vec3f(x_122.x_UserBrightness, x_122.x_UserBrightness, x_122.x_UserBrightness);
  u_xlat29 = (u_xlat29 * vec3f(x_667.x, x_667.y, x_667.z));
  u_xlat50 = (vs_TEXCOORD0.xz * vec2f(0.76666665077209472656f));
  u_xlat13 = vec4f((((vs_TEXCOORD0.xz * vec2f(1.29999995231628417969f)) + vec2f(11.0f))).xy, u_xlat13.zw);
  u_xlat13 = vec4f(((u_xlat13.xy / x_122.x_MacroScale.zz)).xy, u_xlat13.zw);
  let x_702 = u_xlat13;
  let x_705 = x_101.x_GlobalMipBias.x;
  let x_706 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_702.xy, x_705);
  u_xlat25.x = x_706.x;
  u_xlat14 = (vs_TEXCOORD0.xzxz + vec4f(37.0f, 37.0f, 5.0f, 5.0f));
  u_xlat13 = vec4f(((u_xlat14.xy / x_122.x_MacroScale.yy)).xy, u_xlat13.zw);
  let x_727 = u_xlat13;
  let x_730 = x_101.x_GlobalMipBias.x;
  let x_731 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_727.xy, x_730);
  u_xlat65 = x_731.x;
  u_xlat68 = (u_xlat65 + -0.5f);
  u_xlat13.x = ((u_xlat68 * 0.05999999865889549255f) + 1.0f);
  u_xlat15 = vec4f(((u_xlat29 * u_xlat13.xxx)).xyz, u_xlat15.w);
  u_xlat14 = vec4f(((u_xlat12.yx * vec2f(6.28319978713989257812f))).xy, u_xlat14.zw);
  u_xlat32 = (u_xlat14.x / x_122.x_UserWarp.y);
  u_xlat32 = (u_xlat32 + 1.29999995231628417969f);
  u_xlat16.x = sin(u_xlat32);
  u_xlat32 = (x_122.x_UserWarp.y * 0.73000001907348632812f);
  u_xlat32 = (u_xlat14.y / u_xlat32);
  u_xlat32 = (u_xlat32 + 0.40000000596046447754f);
  u_xlat16.y = sin(u_xlat32);
  u_xlat12 = vec3f((((x_122.x_UserWarp.xx * u_xlat16.xy) + u_xlat12.xy)).xy, u_xlat12.z);
  u_xlat12 = vec3f(((u_xlat12.xy / x_122.x_UserTiles.yy)).xy, u_xlat12.z);
  let x_806 = u_xlat12;
  let x_809 = x_101.x_GlobalMipBias.x;
  let x_810 = textureSampleBias(x_UserRipple, sampler_trilinear_repeat, x_806.xy, x_809);
  u_xlat16 = vec4f(x_810.xyw.xyz, u_xlat16.w);
  u_xlat16.x = (u_xlat16.x * u_xlat16.z);
  u_xlat12 = vec3f((((u_xlat16.xy * x_823) + x_825)).xy, u_xlat12.z);
  u_xlat32 = (-(x_122.x_RippleSlope.x) + x_122.x_RippleSlope.y);
  u_xlat9.x = (u_xlat9.x + -(x_122.x_RippleSlope.x));
  u_xlat32 = (1.0f / u_xlat32);
  u_xlat9.x = (u_xlat9.x * u_xlat32);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat32 = ((u_xlat9.x * -2.0f) + 3.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat32);
  u_xlat32 = (x_122.x_RippleSlope.z + -1.0f);
  u_xlat9.x = ((u_xlat9.x * u_xlat32) + 1.0f);
  u_xlat9.x = (u_xlat61 * u_xlat9.x);
  u_xlat32 = (u_xlat4.x * 0.89999997615814208984f);
  u_xlat14.x = ((-(u_xlat4.x) * 0.85000002384185791016f) + 1.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat14.x);
  u_xlat2.x = ((-(u_xlat4.z) * u_xlat2.x) + 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat9.x);
  u_xlat16 = (vec4f(u_xlat58) + vec4f(-90.0f, -30.0f, -10.0f, -20.0f));
  u_xlat16 = (u_xlat16 * vec4f(0.00769230769947171211f, 0.00909090880304574966f, 0.03333333507180213928f, 0.01666666753590106964f));
  u_xlat16 = clamp(u_xlat16, vec4f(0.0f), vec4f(1.0f));
  u_xlat17 = ((u_xlat16 * vec4f(-2.0f)) + vec4f(3.0f));
  u_xlat16 = (u_xlat16 * u_xlat16);
  u_xlat35 = (u_xlat16.yzw * u_xlat17.yzw);
  u_xlat42 = ((-(u_xlat17.x) * u_xlat16.x) + 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat42);
  u_xlat11.y = u_xlat10.x;
  u_xlat11.z = u_xlat6.x;
  u_xlat17 = (u_xlat11.yxzy * u_xlat12.xxyy);
  u_xlat12 = vec3f(((u_xlat17.zw + u_xlat17.xy)).xy, u_xlat12.z);
  u_xlat12 = vec3f(((u_xlat12.xy * vec2f(x_122.x_UserRippleStrength))).xy, u_xlat12.z);
  u_xlat12 = vec3f(((u_xlat2.xx * u_xlat12.xy)).xy, u_xlat12.z);
  let x_999 = u_xlat13;
  let x_1002 = x_101.x_GlobalMipBias.x;
  let x_1003 = textureSampleBias(x_UserCompacted, sampler_trilinear_repeat, x_999.zw, x_1002);
  u_xlat17 = vec4f(x_1003.xyw.xyz, u_xlat17.w);
  u_xlat17.x = (u_xlat17.x * u_xlat17.z);
  u_xlat51 = ((u_xlat17.xy * x_823) + x_825);
  u_xlat14 = vec4f((((u_xlat35.xy * vec2f(-0.60000002384185791016f, 0.30000001192092895508f)) + vec2f(1.0f, 0.69999998807907104492f))).xy, u_xlat14.zw);
  u_xlat2.x = (u_xlat4.x * u_xlat14.x);
  u_xlat4.x = dot(u_xlat15.xyz, x_1040);
  u_xlat17 = vec4f((((u_xlat29 * u_xlat13.xxx) + -(u_xlat4.xxx))).xyz, u_xlat17.w);
  u_xlat17 = vec4f((((vec3f(x_122.x_RoadSat) * u_xlat17.xyz) + u_xlat4.xxx)).xyz, u_xlat17.w);
  u_xlat17 = vec4f(((u_xlat17.xyz * x_122.x_TrailColor.xyz)).xyz, u_xlat17.w);
  u_xlatb4 = (0.00100000004749745131f < x_122.x_RoadGrain);
  if (u_xlatb4) {
    let x_1090 = vec2f(x_122.x_GravelTile, x_122.x_GravelTile);
    let x_1094 = (vs_TEXCOORD0.xz / vec2f(x_1090.x, x_1090.y));
    u_xlat4 = vec4f(x_1094.x, u_xlat4.y, x_1094.y, u_xlat4.w);
    let x_1102 = u_xlat4;
    let x_1105 = x_101.x_GlobalMipBias.x;
    let x_1106 = textureSampleBias(x_GravelAlbedo, sampler_trilinear_repeat, x_1102.xz, x_1105);
    u_xlat18 = x_1106.xyz;
    u_xlat6.x = dot(u_xlat18, x_1040);
    u_xlat18 = textureSampleLevel(x_GravelAlbedo, sampler_trilinear_repeat, u_xlat4.xz, 12.0f).xyz;
    u_xlat4.x = dot(u_xlat18, x_1040);
    u_xlat4.x = max(u_xlat4.x, 0.02999999932944774628f);
    u_xlat4.x = (u_xlat6.x / u_xlat4.x);
    u_xlat4.x = max(u_xlat4.x, 0.5f);
    u_xlat4.x = min(u_xlat4.x, 1.60000002384185791016f);
    u_xlat42 = (u_xlat58 + -12.0f);
    u_xlat42 = (u_xlat42 * 0.03030303120613098145f);
    u_xlat42 = clamp(u_xlat42, 0.0f, 1.0f);
    u_xlat6.x = ((u_xlat42 * -2.0f) + 3.0f);
    u_xlat42 = (u_xlat42 * u_xlat42);
    u_xlat42 = ((-(u_xlat6.x) * u_xlat42) + 1.0f);
    u_xlat42 = (u_xlat42 * x_122.x_RoadGrain);
    u_xlat4.x = (u_xlat4.x + -1.0f);
    u_xlat4.x = ((u_xlat42 * u_xlat4.x) + 1.0f);
    u_xlat17 = vec4f(((u_xlat4.xxx * u_xlat17.xyz)).xyz, u_xlat17.w);
  }
  u_xlat10 = vec4f((((-(u_xlat29) * u_xlat13.xxx) + u_xlat17.xyz)).xyz, u_xlat10.w);
  u_xlat10 = vec4f((((u_xlat2.xxx * u_xlat10.xyz) + u_xlat15.xyz)).xyz, u_xlat10.w);
  u_xlat15 = (u_xlat11.yxzy * u_xlat51.xxyy);
  let x_1214 = (u_xlat15.zw + u_xlat15.xy);
  u_xlat4 = vec4f(x_1214.x, u_xlat4.y, x_1214.y, u_xlat4.w);
  let x_1224 = ((u_xlat4.xz * vec2f(0.55000001192092895508f)) + -(u_xlat12.xy));
  u_xlat4 = vec4f(x_1224.x, u_xlat4.y, x_1224.y, u_xlat4.w);
  let x_1234 = ((vec2f(u_xlat32) * u_xlat4.xz) + u_xlat12.xy);
  u_xlat4 = vec4f(x_1234.x, u_xlat4.y, x_1234.y, u_xlat4.w);
  u_xlat2.x = max(u_xlat8.y, u_xlat8.x);
  u_xlat11 = ((u_xlat25.xxx * vec3f(0.20000000298023223877f, 0.30000001192092895508f, 0.60000002384185791016f)) + vec3f(0.89999997615814208984f, 0.85000002384185791016f, 0.69999998807907104492f));
  u_xlat6.x = (-(u_xlat2.x) + 1.0f);
  u_xlat23 = (u_xlat4.y * u_xlat6.x);
  u_xlat13 = vec4f((((x_122.x_DampColor.xyz * u_xlat11.xxx) + -(u_xlat10.xyz))).xyz, u_xlat13.w);
  u_xlat10 = vec4f((((vec3f(u_xlat23) * u_xlat13.xyz) + u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat13 = vec4f(((u_xlat10.xyz * x_122.x_GreenColor.xyz)).xyz, u_xlat13.w);
  u_xlat23 = ((u_xlat65 * 0.20000000298023223877f) + 0.89999997615814208984f);
  u_xlat13 = vec4f(((vec3f(u_xlat23) * u_xlat13.xyz)).xyz, u_xlat13.w);
  u_xlat41.x = (u_xlat41.x * 0.80000001192092895508f);
  u_xlat9.x = (u_xlat7.y + u_xlat7.z);
  u_xlat44 = ((u_xlat6.z * u_xlat40.x) + u_xlat9.x);
  u_xlat9.x = u_xlat44;
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat9.x = (-(u_xlat9.x) + 1.0f);
  u_xlat41.x = (u_xlat41.x * u_xlat9.x);
  u_xlat3.x = ((-(u_xlat3.x) * u_xlat40.x) + 1.0f);
  u_xlat41.x = (u_xlat3.x * u_xlat41.x);
  u_xlat41.x = (u_xlat6.x * u_xlat41.x);
  u_xlat13 = vec4f((((u_xlat13.xyz * vec3f(1.35000002384185791016f)) + -(u_xlat10.xyz))).xyz, u_xlat13.w);
  u_xlat10 = vec4f((((u_xlat41.xxx * u_xlat13.xyz) + u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat41.x = ((u_xlat6.w * u_xlat40.x) + u_xlat44);
  u_xlatb41.x = (0.00200000009499490261f < u_xlat41.x);
  if (u_xlatb41.x) {
    let x_1406 = (vs_TEXCOORD0.xz / vec2f(x_122.x_GrassTile));
    u_xlat6 = vec4f(x_1406.x, u_xlat6.y, x_1406.y, u_xlat6.w);
    let x_1413 = u_xlat6;
    let x_1416 = x_101.x_GlobalMipBias.x;
    let x_1417 = textureSampleBias(x_GrassAlbedo, sampler_trilinear_repeat, x_1413.xz, x_1416);
    u_xlat13 = vec4f(x_1417.xyz.xyz, u_xlat13.w);
    let x_1425 = u_xlat6;
    let x_1428 = x_101.x_GlobalMipBias.x;
    let x_1429 = textureSampleBias(x_GrassNormal, sampler_trilinear_repeat, x_1425.xz, x_1428);
    let x_1430 = x_1429.xyw;
    u_xlat6 = vec4f(x_1430.x, u_xlat6.y, x_1430.yz);
    u_xlat6.x = (u_xlat6.x * u_xlat6.w);
    let x_1442 = ((u_xlat6.xz * x_823) + x_825);
    u_xlat6 = vec4f(x_1442.x, u_xlat6.y, x_1442.y, u_xlat6.w);
    u_xlat41.x = (x_122.x_CoverFar + -20.0f);
    u_xlat63 = (u_xlat58 + -20.0f);
    u_xlat41.x = (1.0f / u_xlat41.x);
    u_xlat41.x = (u_xlat41.x * u_xlat63);
    u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
    u_xlat63 = ((u_xlat41.x * -2.0f) + 3.0f);
    u_xlat41.x = (u_xlat41.x * u_xlat41.x);
    u_xlat9.x = (u_xlat41.x * u_xlat63);
    u_xlat67 = dot(u_xlat13.xyz, x_1040);
    u_xlat12.x = (u_xlat67 / x_122.x_GrassLuma);
    u_xlat12.x = (u_xlat12.x + -1.0f);
    u_xlat12.x = ((u_xlat12.x * 0.75f) + 1.0f);
    u_xlat9.x = (u_xlat9.x * 0.69999998807907104492f);
    u_xlat31 = (-(u_xlat12.x) + 1.0f);
    u_xlat9.x = ((u_xlat9.x * u_xlat31) + u_xlat12.x);
    u_xlat67 = max(u_xlat67, 0.03999999910593032837f);
    u_xlat13 = vec4f(((u_xlat13.xyz / vec3f(u_xlat67))).xyz, u_xlat13.w);
    u_xlat41.x = ((-(u_xlat63) * u_xlat41.x) + 1.0f);
    u_xlat63 = (u_xlat41.x * 0.25f);
    u_xlat13 = vec4f(((u_xlat13.xyz + x_1541)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat63) * u_xlat13.xyz) + x_1550)).xyz, u_xlat13.w);
    u_xlat63 = (u_xlat25.x + -0.5f);
    u_xlat67 = (u_xlat68 * 0.40000000596046447754f);
    u_xlat63 = ((u_xlat63 * 0.5f) + u_xlat67);
    u_xlat15 = (u_xlat7 * vec4f(1.14999997615814208984f, 1.14999997615814208984f, 1.14999997615814208984f, 0.85000002384185791016f));
    u_xlat7 = vec4f((((vec3f(u_xlat63) * u_xlat7.xyz) + u_xlat15.xyz)).xyz, u_xlat7.w);
    u_xlat7 = vec4f(clamp(u_xlat7.xyz, vec3f(0.0f), vec3f(1.0f)).xyz, u_xlat7.w);
    u_xlat63 = ((u_xlat65 * 0.23999999463558197021f) + 0.87999999523162841797f);
    u_xlat15 = vec4f((((x_122.x_DryColor.xyz * vec3f(u_xlat63)) + -(u_xlat10.xyz))).xyz, u_xlat15.w);
    u_xlat15 = vec4f((((u_xlat15.xyz * vec3f(0.69999998807907104492f)) + u_xlat10.xyz)).xyz, u_xlat15.w);
    u_xlat67 = (u_xlat9.x + -1.0f);
    u_xlat67 = ((u_xlat67 * 0.60000002384185791016f) + 1.0f);
    u_xlat17 = vec4f(((vec3f(u_xlat63) * x_122.x_MeadowColor.xyz)).xyz, u_xlat17.w);
    u_xlat17 = vec4f(((u_xlat9.xxx * u_xlat17.xyz)).xyz, u_xlat17.w);
    u_xlat17 = vec4f(((u_xlat13.xyz * u_xlat17.xyz)).xyz, u_xlat17.w);
    u_xlat25.x = ((u_xlat25.x * 0.15999999642372131348f) + 0.92000001668930053711f);
    u_xlat18 = (vec3f(u_xlat63) * x_122.x_LushColor.xyz);
    u_xlat18 = (u_xlat9.xxx * u_xlat18);
    u_xlat13 = vec4f(((u_xlat13.xyz * u_xlat18)).xyz, u_xlat13.w);
    u_xlat15 = vec4f((((u_xlat15.xyz * vec3f(u_xlat67)) + -(u_xlat10.xyz))).xyz, u_xlat15.w);
    u_xlat15 = vec4f((((u_xlat7.xxx * u_xlat15.xyz) + u_xlat10.xyz)).xyz, u_xlat15.w);
    u_xlat17 = vec4f((((u_xlat17.xyz * u_xlat25.xxx) + -(u_xlat15.xyz))).xyz, u_xlat17.w);
    u_xlat15 = vec4f((((u_xlat7.yyy * u_xlat17.xyz) + u_xlat15.xyz)).xyz, u_xlat15.w);
    u_xlat13 = vec4f((((u_xlat13.xyz * u_xlat11.xxx) + -(u_xlat15.xyz))).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((u_xlat7.zzz * u_xlat13.xyz) + u_xlat15.xyz)).xyz, u_xlat13.w);
    u_xlat15 = vec4f(((vec3f(u_xlat63) * x_122.x_BankColor.xyz)).xyz, u_xlat15.w);
    u_xlat15 = vec4f((((u_xlat15.xyz * u_xlat9.xxx) + -(u_xlat13.xyz))).xyz, u_xlat15.w);
    u_xlat13 = vec4f((((u_xlat15.www * u_xlat15.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat25.x = max(u_xlat7.y, u_xlat7.z);
    u_xlat63 = (u_xlat7.x * 0.60000002384185791016f);
    u_xlat63 = max(u_xlat7.w, u_xlat63);
    u_xlat25.x = max(u_xlat63, u_xlat25.x);
    u_xlat25.x = min(u_xlat25.x, 1.0f);
    u_xlat7 = ((vs_TEXCOORD0.xzxz * vec4f(0.80000001192092895508f, 0.80000001192092895508f, 1.89999997615814208984f, 1.89999997615814208984f)) + vec4f(3.0f, 3.0f, 17.0f, 17.0f));
    u_xlat7 = (u_xlat7 * vec4f(0.20000000298023223877f, 0.20000000298023223877f, 0.3333333432674407959f, 0.3333333432674407959f));
    let x_1793 = u_xlat7;
    let x_1796 = x_101.x_GlobalMipBias.x;
    let x_1797 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_1793.xy, x_1796);
    u_xlat63 = x_1797.x;
    let x_1802 = u_xlat7;
    let x_1805 = x_101.x_GlobalMipBias.x;
    let x_1806 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_1802.zw, x_1805);
    u_xlat7.x = x_1806.x;
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat63 = ((u_xlat63 * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat35.x * u_xlat25.x);
    u_xlat63 = ((u_xlat63 * 0.51999998092651367188f) + -0.25999999046325683594f);
    u_xlat63 = ((u_xlat7.x * u_xlat63) + 1.0f);
    u_xlat10 = vec4f(((vec3f(u_xlat63) * u_xlat13.xyz)).xyz, u_xlat10.w);
    u_xlat41.x = (u_xlat41.x * u_xlat25.x);
    let x_1854 = ((u_xlat6.xz * x_1849) + -(u_xlat4.xz));
    u_xlat6 = vec4f(x_1854.x, u_xlat6.y, x_1854.y, u_xlat6.w);
    let x_1864 = ((u_xlat41.xx * u_xlat6.xz) + u_xlat4.xz);
    u_xlat4 = vec4f(x_1864.x, u_xlat4.y, x_1864.y, u_xlat4.w);
    u_xlat41.x = (-(u_xlat25.x) + 1.0f);
    u_xlat61 = (u_xlat41.x * u_xlat61);
  }
  u_xlat41.x = (u_xlat41.y * u_xlat14.y);
  u_xlat60 = (x_122.x_GrassTile * 0.69999998807907104492f);
  u_xlat6 = vec4f(((vs_TEXCOORD0.xz / vec2f(u_xlat60))).xy, u_xlat6.zw);
  let x_1896 = u_xlat6;
  let x_1899 = x_101.x_GlobalMipBias.x;
  let x_1900 = textureSampleBias(x_GrassAlbedo, sampler_trilinear_repeat, x_1896.xy, x_1899);
  u_xlat6 = vec4f(x_1900.xyz.xyz, u_xlat6.w);
  u_xlat60 = dot(vs_TEXCOORD0.xz, vec2f(0.80000001192092895508f, 0.60000002384185791016f));
  u_xlat60 = (u_xlat60 * 9.0f);
  u_xlat60 = sin(u_xlat60);
  u_xlat60 = ((u_xlat60 * 0.10000000149011611938f) + 0.89999997615814208984f);
  u_xlat6.x = dot(u_xlat6.xyz, x_1040);
  u_xlat6.x = (u_xlat6.x / x_122.x_GrassLuma);
  u_xlat25.x = (-(u_xlat6.x) + 1.0f);
  u_xlat6.x = ((u_xlat25.x * 0.55000001192092895508f) + u_xlat6.x);
  u_xlat25 = (u_xlat11.yyy * x_122.x_FieldColor.xyz);
  let x_1949 = u_xlat50;
  let x_1951 = x_101.x_GlobalMipBias.x;
  let x_1952 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_1949, x_1951);
  u_xlat7.x = x_1952.x;
  u_xlat7.x = ((u_xlat7.x * 0.20000000298023223877f) + 0.89999997615814208984f);
  u_xlat25 = (u_xlat25 * u_xlat7.xxx);
  u_xlat6 = vec4f(((u_xlat6.xxx * u_xlat25)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat6.xyz * vec3f(u_xlat60)) + -(u_xlat10.xyz))).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat41.xxx * u_xlat6.xyz) + u_xlat10.xyz)).xyz, u_xlat6.w);
  u_xlat41.x = max(u_xlat59, u_xlat8.z);
  u_xlatb60 = (0.00200000009499490261f < u_xlat41.x);
  u_xlatb63 = (0.00100000004749745131f < x_122.x_RoseBedColor.w);
  u_xlatb60 = (u_xlatb60 & u_xlatb63);
  if (u_xlatb60) {
    u_xlat7 = vec4f(((vs_TEXCOORD0.xz / vec2f(x_122.x_SoilTile))).xy, u_xlat7.zw);
    let x_2024 = u_xlat7;
    let x_2027 = x_101.x_GlobalMipBias.x;
    let x_2028 = textureSampleBias(x_SoilAlbedo, sampler_trilinear_repeat, x_2024.xy, x_2027);
    u_xlat10 = vec4f(x_2028.xyz.xyz, u_xlat10.w);
    u_xlat60 = dot(u_xlat10.xyz, x_1040);
    u_xlat7 = vec4f(textureSampleLevel(x_SoilAlbedo, sampler_trilinear_repeat, u_xlat7.xy, 12.0f).xyz.xyz, u_xlat7.w);
    u_xlat63 = dot(u_xlat7.xyz, x_1040);
    u_xlat63 = max(u_xlat63, 0.02999999932944774628f);
    u_xlat60 = (u_xlat60 / u_xlat63);
    u_xlat60 = max(u_xlat60, 0.5f);
    u_xlat60 = min(u_xlat60, 1.60000002384185791016f);
    u_xlat60 = (u_xlat60 + -1.0f);
    u_xlat60 = ((u_xlat60 * 0.60000002384185791016f) + 1.0f);
    u_xlat7 = vec4f(((vec3f(u_xlat60) * x_122.x_RoseBedColor.xyz)).xyz, u_xlat7.w);
    u_xlat41.x = (u_xlat41.x * 1.25f);
    u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
    u_xlat41.x = (u_xlat41.x * x_122.x_RoseBedColor.w);
    u_xlat7 = vec4f((((u_xlat7.xyz * u_xlat11.yyy) + -(u_xlat6.xyz))).xyz, u_xlat7.w);
    u_xlat6 = vec4f((((u_xlat41.xxx * u_xlat7.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  }
  u_xlat59 = (u_xlat59 * u_xlat35.z);
  u_xlat59 = (u_xlat59 * 0.89999997615814208984f);
  u_xlat7 = vec4f((((x_122.x_RoseFieldColor.xyz * u_xlat11.zzz) + -(u_xlat6.xyz))).xyz, u_xlat7.w);
  u_xlat6 = vec4f((((vec3f(u_xlat59) * u_xlat7.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat59 = (x_122.x_RockTile * 1.39999997615814208984f);
  u_xlat41 = (vs_TEXCOORD0.xz / vec2f(u_xlat59));
  let x_2148 = u_xlat41;
  let x_2150 = x_101.x_GlobalMipBias.x;
  let x_2151 = textureSampleBias(x_RockDetailAlbedo, sampler_trilinear_repeat, x_2148, x_2150);
  u_xlat7 = vec4f(x_2151.xyz.xyz, u_xlat7.w);
  let x_2159 = u_xlat41;
  let x_2161 = x_101.x_GlobalMipBias.x;
  let x_2162 = textureSampleBias(x_RockDetailNormal, sampler_trilinear_repeat, x_2159, x_2161);
  u_xlat10 = vec4f(x_2162.xyw.xyz, u_xlat10.w);
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  u_xlat41 = ((u_xlat10.xy * x_823) + x_825);
  u_xlat10 = vec4f(((u_xlat14.zw * vec2f(0.04347826167941093445f))).xy, u_xlat10.zw);
  let x_2186 = u_xlat10;
  let x_2189 = x_101.x_GlobalMipBias.x;
  let x_2190 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_2186.xy, x_2189);
  u_xlat59 = x_2190.x;
  u_xlat10 = vec4f((((vs_TEXCOORD0.xz * vec2f(1.70000004768371582031f)) + vec2f(13.0f))).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy * vec2f(0.14285714924335479736f))).xy, u_xlat10.zw);
  let x_2212 = u_xlat10;
  let x_2215 = x_101.x_GlobalMipBias.x;
  let x_2216 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_2212.xy, x_2215);
  u_xlat63 = x_2216.x;
  u_xlat63 = (u_xlat63 * 0.40000000596046447754f);
  u_xlat59 = ((u_xlat59 * 0.60000002384185791016f) + u_xlat63);
  u_xlat59 = (u_xlat59 + -0.41999998688697814941f);
  u_xlat59 = (u_xlat59 * 3.57142853736877441406f);
  u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
  u_xlat63 = ((u_xlat59 * -2.0f) + 3.0f);
  u_xlat59 = (u_xlat59 * u_xlat59);
  u_xlat59 = (u_xlat59 * u_xlat63);
  u_xlat59 = (u_xlat59 * 0.80000001192092895508f);
  u_xlat59 = ((u_xlat28.x * 1.39999997615814208984f) + u_xlat59);
  u_xlat59 = min(u_xlat59, 1.0f);
  u_xlat59 = (u_xlat59 * u_xlat21);
  u_xlat63 = dot(u_xlat7.xyz, x_1040);
  u_xlat64 = max(u_xlat63, 0.03999999910593032837f);
  u_xlat7 = vec4f(((u_xlat7.xyz / vec3f(u_xlat64))).xyz, u_xlat7.w);
  u_xlat7 = vec4f(((u_xlat7.xyz + x_1541)).xyz, u_xlat7.w);
  u_xlat7 = vec4f((((u_xlat7.xyz * vec3f(0.25f)) + x_1550)).xyz, u_xlat7.w);
  u_xlat7 = vec4f(((u_xlat7.xyz * x_122.x_RockColor.xyz)).xyz, u_xlat7.w);
  u_xlat63 = (u_xlat63 * 2.29999995231628417969f);
  u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
  u_xlat63 = ((u_xlat63 * 0.35000002384185791016f) + 0.75f);
  u_xlat7 = vec4f(((vec3f(u_xlat63) * u_xlat7.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f((((u_xlat7.xyz * vec3f(u_xlat23)) + -(u_xlat6.xyz))).xyz, u_xlat7.w);
  u_xlat6 = vec4f((((vec3f(u_xlat59) * u_xlat7.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat41 = ((u_xlat41 * x_2325) + -(u_xlat4.xz));
  u_xlat4 = vec4f((((vec2f(u_xlat59) * u_xlat41) + u_xlat4.xz)).xy, u_xlat4.zw);
  u_xlat59 = (u_xlat5.y + u_xlat5.x);
  u_xlat2.w = (u_xlat5.z + u_xlat59);
  let x_2355 = ((vec4f(0.00200000009499490261f, 0.0f, 0.0f, 0.00100000004749745131f) < u_xlat2.xxxw)).xw;
  u_xlatb2 = vec4<bool>(x_2355.x, u_xlatb2.yz, x_2355.y);
  if (u_xlatb2.w) {
    u_xlat7 = (vs_TEXCOORD0.xzxz / vec4f(x_122.x_SoilTile, x_122.x_SoilTile, x_122.x_PathTile, x_122.x_PathTile));
    let x_2378 = u_xlat7;
    let x_2381 = x_101.x_GlobalMipBias.x;
    let x_2382 = textureSampleBias(x_SoilAlbedo, sampler_trilinear_repeat, x_2378.xy, x_2381);
    u_xlat10 = vec4f(x_2382.xyz.xyz, u_xlat10.w);
    let x_2390 = u_xlat7;
    let x_2393 = x_101.x_GlobalMipBias.x;
    let x_2394 = textureSampleBias(x_SoilNormal, sampler_trilinear_repeat, x_2390.xy, x_2393);
    u_xlat11 = x_2394.xyw;
    u_xlat11.x = (u_xlat11.x * u_xlat11.z);
    u_xlat41 = ((u_xlat11.xy * x_823) + x_825);
    let x_2410 = u_xlat7;
    let x_2413 = x_101.x_GlobalMipBias.x;
    let x_2414 = textureSampleBias(x_PathAlbedo, sampler_trilinear_repeat, x_2410.zw, x_2413);
    u_xlat11 = x_2414.xyz;
    let x_2420 = u_xlat7;
    let x_2423 = x_101.x_GlobalMipBias.x;
    let x_2424 = textureSampleBias(x_PathNormal, sampler_trilinear_repeat, x_2420.zw, x_2423);
    u_xlat7 = vec4f(x_2424.xyw.xyz, u_xlat7.w);
    u_xlat7.x = (u_xlat7.x * u_xlat7.z);
    u_xlat7 = vec4f((((u_xlat7.xy * x_823) + x_825)).xy, u_xlat7.zw);
    u_xlat12 = (u_xlat6.xyz * x_122.x_GreenColor.xyz);
    u_xlat59 = (u_xlat5.z * 0.80000001192092895508f);
    u_xlat12 = ((u_xlat12 * vec3f(1.20000004768371582031f)) + -(u_xlat6.xyz));
    u_xlat12 = ((vec3f(u_xlat59) * u_xlat12) + u_xlat6.xyz);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(0.94999998807907104492f)) + -(u_xlat12))).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat5.xxx * u_xlat10.xyz) + u_xlat12)).xyz, u_xlat10.w);
    u_xlat11 = ((u_xlat11 * vec3f(1.12000000476837158203f, 0.98000001907348632812f, 0.83999997377395629883f)) + -(u_xlat10.xyz));
    u_xlat10 = vec4f((((u_xlat5.yyy * u_xlat11) + u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat41 = ((u_xlat41 * x_2325) + -(u_xlat4.xy));
    u_xlat41 = ((u_xlat5.xx * u_xlat41) + u_xlat4.xy);
    let x_2520 = ((u_xlat7.xy * x_2325) + -(u_xlat41));
    u_xlat5 = vec4f(x_2520.x, u_xlat5.y, x_2520.y, u_xlat5.w);
    u_xlat4 = vec4f((((u_xlat5.yy * u_xlat5.xz) + u_xlat41)).xy, u_xlat4.zw);
    u_xlatb59 = (0.00999999977648258209f < u_xlat5.w);
    u_xlatb41.x = (u_xlat58 < 30.0f);
    u_xlatb59 = (u_xlatb59 & u_xlatb41.x);
    u_xlat41 = (vs_TEXCOORD0.zx * vec2f(9.0f));
    u_xlat5 = vec4f(floor(u_xlat41.yx).xy, u_xlat5.zw);
    u_xlat7 = vec4f(((u_xlat5.xyx * x_2559)).xyz, u_xlat7.w);
    u_xlat7 = vec4f(fract(u_xlat7.xyz).xyz, u_xlat7.w);
    u_xlat11 = (u_xlat7.yzx + x_2571);
    u_xlat43 = dot(u_xlat7.xyz, u_xlat11);
    u_xlat7 = vec4f(((vec3f(u_xlat43) + u_xlat7.xyz)).xyz, u_xlat7.w);
    u_xlat11 = (u_xlat7.yzy + u_xlat7.xxx);
    u_xlat7 = vec4f(((u_xlat7.zyz * u_xlat11)).xyz, u_xlat7.w);
    u_xlat7 = vec4f(fract(u_xlat7.xyz).xyz, u_xlat7.w);
    u_xlat41 = fract(u_xlat41);
    u_xlat43 = (u_xlat7.z * 6.28299999237060546875f);
    u_xlat7 = vec4f((((u_xlat7.xyy * vec3f(0.5f)) + vec3f(0.25f, 0.25f, 0.75f))).xyz, u_xlat7.w);
    u_xlat41 = (u_xlat41 + -(u_xlat7.yx));
    u_xlat7.x = sin(u_xlat43);
    u_xlat9.x = cos(u_xlat43);
    u_xlat7 = vec4f(((u_xlat41 * u_xlat7.xx)).xy, u_xlat7.zw);
    u_xlat11.x = ((u_xlat41.y * u_xlat9.x) + -(u_xlat7.x));
    u_xlat11.y = ((u_xlat41.x * u_xlat9.x) + u_xlat7.y);
    u_xlat41 = (u_xlat11.xy * vec2f(1.0f, 1.70000004768371582031f));
    u_xlat41.x = dot(u_xlat41, u_xlat41);
    u_xlat41.x = sqrt(u_xlat41.x);
    u_xlat41.x = (u_xlat41.x + -0.03500000014901161194f);
    u_xlat41.x = (u_xlat41.x * 40.000003814697265625f);
    u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
    u_xlat60 = ((u_xlat41.x * -2.0f) + 3.0f);
    u_xlat41.x = (u_xlat41.x * u_xlat41.x);
    u_xlat41.x = ((-(u_xlat60) * u_xlat41.x) + 1.0f);
    u_xlat60 = ((-(u_xlat5.w) * 0.5f) + 1.0f);
    u_xlat5 = vec4f(((u_xlat5.xy + vec2f(3.09999990463256835938f))).xy, u_xlat5.zw);
    u_xlat5 = vec4f(((u_xlat5.xy * x_2708)).xy, u_xlat5.zw);
    u_xlat5 = vec4f(fract(u_xlat5.xy).xy, u_xlat5.zw);
    let x_2719 = (u_xlat5.yxx + x_2571);
    u_xlat7 = vec4f(x_2719.xy, u_xlat7.z, x_2719.z);
    u_xlat43 = dot(u_xlat5.xyx, u_xlat7.xyw);
    u_xlat5 = vec4f(((vec2f(u_xlat43) + u_xlat5.xy)).xy, u_xlat5.zw);
    u_xlat24.x = (u_xlat5.y + u_xlat5.x);
    u_xlat5.x = (u_xlat5.x * u_xlat24.x);
    u_xlat5.x = fract(u_xlat5.x);
    u_xlatb60 = (u_xlat5.x >= u_xlat60);
    u_xlat60 = select(0.0f, 1.0f, u_xlatb60);
    u_xlat41.x = (u_xlat60 * u_xlat41.x);
    u_xlat5 = vec4f((((x_122.x_PetalColor.xyz * u_xlat7.zzz) + -(u_xlat10.xyz))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((u_xlat41.xxx * u_xlat5.xyz) + u_xlat10.xyz)).xyz, u_xlat5.w);
    if (u_xlatb59) {
      x_2786 = u_xlat5.xyz;
    } else {
      x_2786 = u_xlat10.xyz;
    }
    u_xlat6 = vec4f(x_2786.xyz, u_xlat6.w);
  }
  if (u_xlatb2.x) {
    u_xlat2.x = (u_xlat58 + -15.0f);
    u_xlat2.x = (u_xlat2.x * 0.02222222276031970978f);
    u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
    u_xlat59 = ((u_xlat2.x * -2.0f) + 3.0f);
    u_xlat2.x = (u_xlat2.x * u_xlat2.x);
    u_xlat2.x = ((-(u_xlat59) * u_xlat2.x) + 1.0f);
    u_xlatb41 = ((vec4f(0.00200000009499490261f) < u_xlat8.xyxy)).xy;
    if (u_xlatb41.x) {
      let x_2846 = vec2f(x_122.x_PathTile, x_122.x_PathTile);
      u_xlat5 = vec4f(((vs_TEXCOORD0.xz / vec2f(x_2846.x, x_2846.y))).xy, u_xlat5.zw);
      let x_2856 = u_xlat5;
      let x_2859 = x_101.x_GlobalMipBias.x;
      let x_2860 = textureSampleBias(x_PathAlbedo, sampler_trilinear_repeat, x_2856.xy, x_2859);
      u_xlat7 = vec4f(x_2860.xyz.xyz, u_xlat7.w);
      u_xlat10 = vec4f(textureSampleLevel(x_PathAlbedo, sampler_trilinear_repeat, u_xlat5.xy, 12.0f).xyz.xyz, u_xlat10.w);
      let x_2876 = u_xlat5;
      let x_2879 = x_101.x_GlobalMipBias.x;
      let x_2880 = textureSampleBias(x_PathNormal, sampler_trilinear_repeat, x_2876.xy, x_2879);
      u_xlat5 = vec4f(x_2880.xyw.xyz, u_xlat5.w);
      u_xlat5.x = (u_xlat5.x * u_xlat5.z);
      u_xlat5 = vec4f((((u_xlat5.xy * x_823) + x_825)).xy, u_xlat5.zw);
      u_xlat59 = dot(u_xlat7.xyz, x_1040);
      u_xlat41.x = dot(u_xlat10.xyz, x_1040);
      u_xlat41.x = max(u_xlat41.x, 0.02999999932944774628f);
      u_xlat59 = (u_xlat59 / u_xlat41.x);
      u_xlat59 = max(u_xlat59, 0.40000000596046447754f);
      u_xlat59 = min(u_xlat59, 1.79999995231628417969f);
      u_xlat41.x = ((u_xlat2.x * 0.60000002384185791016f) + 0.40000000596046447754f);
      u_xlat41.x = (u_xlat41.x * x_122.x_EstateGrain);
      u_xlat59 = (u_xlat59 + -1.0f);
      u_xlat59 = ((u_xlat41.x * u_xlat59) + 1.0f);
      u_xlat7 = vec4f(((vec3f(u_xlat59) * x_122.x_EstateColor.xyz)).xyz, u_xlat7.w);
      u_xlat59 = ((u_xlat65 * 0.10000000149011611938f) + 0.94999998807907104492f);
      u_xlat41.x = (u_xlat8.x + -0.05000000074505805969f);
      u_xlat41.x = (u_xlat41.x * 1.81818175315856933594f);
      u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
      u_xlat43 = ((u_xlat41.x * -2.0f) + 3.0f);
      u_xlat41.x = (u_xlat41.x * u_xlat41.x);
      u_xlat41.x = (u_xlat41.x * u_xlat43);
      u_xlat7 = vec4f((((u_xlat7.xyz * vec3f(u_xlat59)) + -(u_xlat6.xyz))).xyz, u_xlat7.w);
      u_xlat6 = vec4f((((u_xlat41.xxx * u_xlat7.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
      u_xlat59 = (u_xlat2.x * u_xlat41.x);
      u_xlat5 = vec4f((((u_xlat5.xy * x_1849) + -(u_xlat4.xy))).xy, u_xlat5.zw);
      u_xlat4 = vec4f((((vec2f(u_xlat59) * u_xlat5.xy) + u_xlat4.xy)).xy, u_xlat4.zw);
    }
    if (u_xlatb41.y) {
      u_xlat5 = vec4f(((x_122.x_PavingSize.wzz * vec3f(0.01745329238474369049f, 0.64999997615814208984f, 3.0f))).xyz, u_xlat5.w);
      u_xlat7.x = cos(u_xlat5.x);
      u_xlat5.x = sin(u_xlat5.x);
      u_xlat41 = (u_xlat5.xx * vs_TEXCOORD0.zx);
      u_xlat59 = ((vs_TEXCOORD0.x * u_xlat7.x) + -(u_xlat41.x));
      u_xlat41.x = ((vs_TEXCOORD0.z * u_xlat7.x) + u_xlat41.y);
      u_xlat41.x = (u_xlat41.x / x_122.x_PavingSize.y);
      u_xlat7.z = floor(u_xlat41.x);
      u_xlat59 = (u_xlat59 / x_122.x_PavingSize.x);
      u_xlat9.x = (u_xlat7.z * 0.10310000181198120117f);
      u_xlat9.y = 0.73510301113128662109f;
      let x_3086 = fract(u_xlat9.xy);
      u_xlat5 = vec4f(x_3086.x, u_xlat5.yz, x_3086.y);
      u_xlat10 = vec4f(((u_xlat5.wxx + x_2571)).xyz, u_xlat10.w);
      u_xlat60 = dot(u_xlat5.xwx, u_xlat10.xyz);
      let x_3103 = (vec2f(u_xlat60) + u_xlat5.xw);
      u_xlat5 = vec4f(x_3103.x, u_xlat5.yz, x_3103.y);
      u_xlat60 = (u_xlat5.w + u_xlat5.x);
      u_xlat41.y = (u_xlat5.x * u_xlat60);
      u_xlat41 = fract(u_xlat41);
      u_xlat59 = ((u_xlat41.y * 3.0f) + u_xlat59);
      u_xlat7.x = floor(u_xlat59);
      u_xlat59 = fract(u_xlat59);
      u_xlat60 = (-(u_xlat59) + 1.0f);
      u_xlat41.y = min(u_xlat59, u_xlat60);
      u_xlat5.x = (-(u_xlat41.x) + 1.0f);
      u_xlat41.x = min(u_xlat41.x, u_xlat5.x);
      u_xlat41 = (u_xlat41 * x_122.x_PavingSize.yx);
      u_xlat7.y = min(u_xlat41.x, u_xlat41.y);
      u_xlat10 = (u_xlat7.xzxz + vec4f(9.1000003814697265625f, 9.1000003814697265625f, 4.40000009536743164062f, 4.40000009536743164062f));
      u_xlat10 = (u_xlat10 * x_3164);
      u_xlat10 = fract(u_xlat10);
      u_xlat11 = (u_xlat10.yxx + x_2571);
      u_xlat41.x = dot(u_xlat10.xyx, u_xlat11);
      u_xlat41 = (u_xlat41.xx + u_xlat10.xy);
      u_xlat60 = (u_xlat41.y + u_xlat41.x);
      u_xlat41.x = (u_xlat41.x * u_xlat60);
      u_xlat41.x = fract(u_xlat41.x);
      u_xlatb41.x = (u_xlat41.x < 0.44999998807907104492f);
      u_xlat11 = (u_xlat10.wzz + x_2571);
      u_xlat60 = dot(u_xlat10.zwz, u_xlat11);
      let x_3211 = (vec2f(u_xlat60) + u_xlat10.zw);
      u_xlat5 = vec4f(x_3211.x, u_xlat5.yz, x_3211.y);
      u_xlat60 = (u_xlat5.w + u_xlat5.x);
      u_xlat60 = (u_xlat5.x * u_xlat60);
      u_xlat60 = fract(u_xlat60);
      u_xlat60 = ((u_xlat60 * 0.40000000596046447754f) + 0.30000001192092895508f);
      u_xlat5.x = (u_xlat59 + -(u_xlat60));
      u_xlat5.x = (abs(u_xlat5.x) * x_122.x_PavingSize.x);
      u_xlat9.y = min(u_xlat5.x, u_xlat7.y);
      u_xlatb59 = (u_xlat59 >= u_xlat60);
      u_xlat59 = select(0.0f, 0.5f, u_xlatb59);
      u_xlat9.x = (u_xlat59 + u_xlat7.x);
      if (u_xlatb41.x) {
        x_3258 = u_xlat9.xy;
      } else {
        x_3258 = u_xlat7.xy;
      }
      u_xlat7 = vec4f(x_3258.xy, u_xlat7.zw);
      u_xlat59 = ((-(x_122.x_PavingSize.z) * 0.34999999403953552246f) + u_xlat7.y);
      u_xlat41 = (x_3277 / u_xlat5.yz);
      u_xlat59 = (u_xlat59 * u_xlat41.x);
      u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
      u_xlat41.x = ((u_xlat59 * -2.0f) + 3.0f);
      u_xlat59 = (u_xlat59 * u_xlat59);
      u_xlat59 = ((-(u_xlat41.x) * u_xlat59) + 1.0f);
      u_xlat5 = (u_xlat7.xzxz + vec4f(3.70000004768371582031f, 3.70000004768371582031f, 11.30000019073486328125f, 11.30000019073486328125f));
      u_xlat5 = (u_xlat5 * x_3164);
      u_xlat5 = fract(u_xlat5);
      u_xlat10 = vec4f(((u_xlat5.yxx + x_2571)).xyz, u_xlat10.w);
      u_xlat41.x = dot(u_xlat5.xyx, u_xlat10.xyz);
      u_xlat5 = vec4f(((u_xlat41.xx + u_xlat5.xy)).xy, u_xlat5.zw);
      u_xlat41.x = (u_xlat5.y + u_xlat5.x);
      u_xlat41.x = (u_xlat5.x * u_xlat41.x);
      u_xlat41.x = fract(u_xlat41.x);
      u_xlat10 = vec4f(((u_xlat7.xzx * x_2559)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = (u_xlat10.yzx + x_2571);
      u_xlat5.x = dot(u_xlat10.xyz, u_xlat11);
      u_xlat10 = vec4f(((u_xlat5.xxx + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat5 = vec4f(((u_xlat10.yz + u_xlat10.xx)).xy, u_xlat5.zw);
      u_xlat5 = vec4f(((u_xlat10.zy * u_xlat5.xy)).xy, u_xlat5.zw);
      u_xlat5 = vec4f(fract(u_xlat5.xy).xy, u_xlat5.zw);
      u_xlat5 = vec4f(((u_xlat5.xy * vec2f(5.0f))).xy, u_xlat5.zw);
      u_xlat5 = vec4f((((vs_TEXCOORD0.xz * vec2f(0.52631580829620361328f)) + u_xlat5.xy)).xy, u_xlat5.zw);
      let x_3407 = u_xlat5;
      let x_3410 = x_101.x_GlobalMipBias.x;
      let x_3411 = textureSampleBias(x_GravelAlbedo, sampler_trilinear_repeat, x_3407.xy, x_3410);
      u_xlat10 = vec4f(x_3411.xyz.xyz, u_xlat10.w);
      u_xlat63 = dot(u_xlat10.xyz, x_1040);
      u_xlat10 = vec4f(textureSampleLevel(x_GravelAlbedo, sampler_trilinear_repeat, u_xlat5.xy, 12.0f).xyz.xyz, u_xlat10.w);
      u_xlat5.x = dot(u_xlat10.xyz, x_1040);
      u_xlat10 = vec4f(((u_xlat5.wzz + x_2571)).xyz, u_xlat10.w);
      u_xlat24.x = dot(u_xlat5.zwz, u_xlat10.xyz);
      u_xlat24 = vec3f(((u_xlat24.xx + u_xlat5.zw)).xy, u_xlat24.z);
      u_xlat43 = (u_xlat24.y + u_xlat24.x);
      u_xlat24.x = (u_xlat24.x * u_xlat43);
      u_xlat24.x = fract(u_xlat24.x);
      u_xlat24 = ((u_xlat24.xxx * vec3f(-0.08999997377395629883f, -0.02999997138977050781f, 0.07999998331069946289f)) + vec3f(1.04999995231628417969f, 1.0f, 0.92000001668930053711f));
      u_xlat24 = (u_xlat24 * x_122.x_PavingColor.xyz);
      u_xlat41.x = ((u_xlat41.x * 0.34000000357627868652f) + 0.80000001192092895508f);
      u_xlat24 = (u_xlat41.xxx * u_xlat24);
      u_xlat41.x = max(u_xlat5.x, 0.02999999932944774628f);
      u_xlat41.x = (u_xlat63 / u_xlat41.x);
      u_xlat41.x = max(u_xlat41.x, 0.55000001192092895508f);
      u_xlat41.x = min(u_xlat41.x, 1.5f);
      u_xlat2.x = (u_xlat2.x * 0.55000001192092895508f);
      u_xlat41.x = (u_xlat41.x + -1.0f);
      u_xlat2.x = ((u_xlat2.x * u_xlat41.x) + 1.0f);
      u_xlat5 = vec4f(((u_xlat2.xxx * u_xlat24)).xyz, u_xlat5.w);
      u_xlat2.x = (u_xlat7.y + -(x_122.x_PavingSize.z));
      u_xlat2.x = (u_xlat41.y * u_xlat2.x);
      u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
      u_xlat41.x = ((u_xlat2.x * -2.0f) + 3.0f);
      u_xlat2.x = (u_xlat2.x * u_xlat2.x);
      u_xlat2.x = (u_xlat2.x * u_xlat41.x);
      u_xlat2.x = ((u_xlat2.x * 0.10000002384185791016f) + 0.89999997615814208984f);
      u_xlat5 = vec4f(((u_xlat2.xxx * u_xlat5.xyz)).xyz, u_xlat5.w);
      u_xlat10 = vec4f((((u_xlat6.xyz * vec3f(0.72000002861022949219f)) + -(u_xlat5.xyz))).xyz, u_xlat10.w);
      u_xlat5 = vec4f((((vec3f(u_xlat59) * u_xlat10.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
      u_xlat2.x = (u_xlat8.y + -0.05000000074505805969f);
      u_xlat2.x = (u_xlat2.x * 1.81818175315856933594f);
      u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
      u_xlat59 = ((u_xlat2.x * -2.0f) + 3.0f);
      u_xlat2.x = (u_xlat2.x * u_xlat2.x);
      u_xlat2.x = (u_xlat2.x * u_xlat59);
      u_xlat5 = vec4f(((-(u_xlat6.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
      u_xlat6 = vec4f((((u_xlat2.xxx * u_xlat5.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
      u_xlat5 = vec4f(((u_xlat7.xzx + vec3f(1.89999997615814208984f))).xyz, u_xlat5.w);
      u_xlat5 = vec4f(((u_xlat5.xyz * x_2559)).xyz, u_xlat5.w);
      u_xlat5 = vec4f(fract(u_xlat5.xyz).xyz, u_xlat5.w);
      u_xlat7 = vec4f(((u_xlat5.yzx + x_2571)).xyz, u_xlat7.w);
      u_xlat59 = dot(u_xlat5.xyz, u_xlat7.xyz);
      u_xlat5 = vec4f(((vec3f(u_xlat59) + u_xlat5.xyz)).xyz, u_xlat5.w);
      u_xlat41 = (u_xlat5.yz + u_xlat5.xx);
      u_xlat41 = (u_xlat5.zy * u_xlat41);
      u_xlat41 = fract(u_xlat41);
      u_xlat41 = (u_xlat41 + x_3686);
      u_xlat41 = ((u_xlat41 * vec2f(0.07999999821186065674f)) + -(u_xlat4.xy));
      u_xlat4 = vec4f((((u_xlat2.xx * u_xlat41) + u_xlat4.xy)).xy, u_xlat4.zw);
    }
  }
  u_xlat4.z = 0.0f;
  u_xlat4 = vec4f((((vs_TEXCOORD1 * u_xlat0.xxx) + u_xlat4.xzy)).xyz, u_xlat4.w);
  u_xlat0.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat5 = vec4f(((u_xlat0.xxx * u_xlat4.xzy)).xyz, u_xlat5.w);
  u_xlat0.x = (u_xlat28.z * x_122.x_SteepRock);
  u_xlat0.x = ((u_xlat21 * 1.5f) + u_xlat0.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat28.y);
  u_xlatb2.x = (0.00100000004749745131f < u_xlat0.x);
  if (u_xlatb2.x) {
    u_xlat2 = vec4f(((abs(u_xlat19.xz) + vec2f(0.00009999999747378752f))).xy, u_xlat2.zw);
    u_xlat59 = (u_xlat2.y + u_xlat2.x);
    u_xlat2 = vec4f(((u_xlat2.xy / vec2f(u_xlat59))).xy, u_xlat2.zw);
    let x_3793 = vec4f(x_122.x_RockTile, x_122.x_RockTile, x_122.x_RockTile, x_122.x_RockTile);
    u_xlat7 = (vs_TEXCOORD0.zyxy / vec4f(x_3793.x, x_3793.y, x_3793.z, x_3793.w));
    let x_3803 = u_xlat7;
    let x_3806 = x_101.x_GlobalMipBias.x;
    let x_3807 = textureSampleBias(x_RockDetailAlbedo, sampler_trilinear_repeat, x_3803.xy, x_3806);
    u_xlat4 = vec4f(x_3807.xyz.xyz, u_xlat4.w);
    let x_3814 = u_xlat7;
    let x_3817 = x_101.x_GlobalMipBias.x;
    let x_3818 = textureSampleBias(x_RockDetailAlbedo, sampler_trilinear_repeat, x_3814.zw, x_3817);
    u_xlat8 = vec4f(x_3818.xyz.xyz, u_xlat8.w);
    let x_3825 = u_xlat7;
    let x_3828 = x_101.x_GlobalMipBias.x;
    let x_3829 = textureSampleBias(x_RockDetailNormal, sampler_trilinear_repeat, x_3825.xy, x_3828);
    let x_3830 = x_3829.xyw;
    u_xlat9 = vec4f(x_3830.xy, u_xlat9.z, x_3830.z);
    u_xlat9.z = (u_xlat9.x * u_xlat9.w);
    u_xlat9 = vec4f(u_xlat9.x, (((u_xlat9.yz * x_823) + x_825)).xy, u_xlat9.w);
    u_xlat59 = dot(u_xlat9.yz, u_xlat9.yz);
    u_xlat59 = min(u_xlat59, 1.0f);
    u_xlat59 = (-(u_xlat59) + 1.0f);
    u_xlat59 = sqrt(u_xlat59);
    u_xlat59 = max(u_xlat59, 0.0000000000000001f);
    let x_3863 = u_xlat7;
    let x_3866 = x_101.x_GlobalMipBias.x;
    let x_3867 = textureSampleBias(x_RockDetailNormal, sampler_trilinear_repeat, x_3863.zw, x_3866);
    u_xlat7 = vec4f(x_3867.xyw.xyz, u_xlat7.w);
    u_xlat7.x = (u_xlat7.x * u_xlat7.z);
    u_xlat7 = vec4f((((u_xlat7.xy * x_823) + x_825)).xy, u_xlat7.zw);
    u_xlat41.x = dot(u_xlat7.xy, u_xlat7.xy);
    u_xlat41.x = min(u_xlat41.x, 1.0f);
    u_xlat41.x = (-(u_xlat41.x) + 1.0f);
    u_xlat41.x = sqrt(u_xlat41.x);
    u_xlat41.x = max(u_xlat41.x, 0.0000000000000001f);
    u_xlat8 = vec4f(((u_xlat2.yyy * u_xlat8.xyz)).xyz, u_xlat8.w);
    u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat2.xxx) + u_xlat8.xyz)).xyz, u_xlat4.w);
    u_xlat60 = dot(u_xlat4.xyz, x_1040);
    u_xlat63 = max(u_xlat60, 0.03999999910593032837f);
    u_xlat4 = vec4f(((u_xlat4.xyz / vec3f(u_xlat63))).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((u_xlat4.xyz + x_1541)).xyz, u_xlat4.w);
    u_xlat4 = vec4f((((u_xlat4.xyz * vec3f(0.30000001192092895508f)) + x_1550)).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((u_xlat4.xyz * x_122.x_RockColor.xyz)).xyz, u_xlat4.w);
    u_xlat60 = (u_xlat60 * 2.40000009536743164062f);
    u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
    u_xlat4 = vec4f(((vec3f(u_xlat60) * u_xlat4.xyz)).xyz, u_xlat4.w);
    u_xlat60 = ((u_xlat65 * 0.30000001192092895508f) + 0.85000002384185791016f);
    u_xlati8 = vec4i(bitcast<vec2i>((select(vec2u(), x_3979, ((vec4f() < u_xlat19.xzxx)).xy) * vec2u(4294967295u))).xy, u_xlati8.zw);
    u_xlati46 = bitcast<vec2i>((select(vec2u(), x_3979, ((u_xlat19.xzxz < vec4f())).xy) * vec2u(4294967295u)));
    u_xlati8 = vec4i(((-(u_xlati8.xy) + u_xlati46)).xy, u_xlati8.zw);
    u_xlat8 = vec4f(vec2f(u_xlati8.xy).xy, u_xlat8.zw);
    u_xlat9.x = (u_xlat59 * u_xlat8.x);
    u_xlat7.z = (u_xlat41.x * u_xlat8.y);
    u_xlat7 = vec4f(((u_xlat2.yyy * u_xlat7.xyz)).xyz, u_xlat7.w);
    u_xlat7 = vec4f((((u_xlat9.xyz * u_xlat2.xxx) + u_xlat7.xyz)).xyz, u_xlat7.w);
    u_xlat59 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat59 = inverseSqrt(u_xlat59);
    u_xlat4 = vec4f((((u_xlat4.xyz * vec3f(u_xlat60)) + -(u_xlat6.xyz))).xyz, u_xlat4.w);
    u_xlat6 = vec4f((((u_xlat0.xxx * u_xlat4.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
    let x_4070 = (u_xlat2.xy * u_xlat8.xy);
    u_xlat4 = vec4f(x_4070.x, u_xlat4.y, x_4070.y, u_xlat4.w);
    u_xlat4.y = 0.0f;
    let x_4082 = ((u_xlat7.xyz * vec3f(u_xlat59)) + -(u_xlat4.xyz));
    u_xlat2 = vec4f(x_4082.xy, u_xlat2.z, x_4082.z);
    let x_4090 = ((u_xlat2.xyw * vec3f(0.80000001192092895508f)) + u_xlat19);
    u_xlat2 = vec4f(x_4090.xy, u_xlat2.z, x_4090.z);
    u_xlat41.x = dot(u_xlat2.xyw, u_xlat2.xyw);
    u_xlat41.x = inverseSqrt(u_xlat41.x);
    let x_4111 = ((u_xlat2.xyw * u_xlat41.xxx) + -(u_xlat5.xzy));
    u_xlat2 = vec4f(x_4111.xy, u_xlat2.z, x_4111.z);
    let x_4121 = ((u_xlat0.xxx * u_xlat2.xyw) + u_xlat5.xzy);
    u_xlat2 = vec4f(x_4121.xy, u_xlat2.z, x_4121.z);
    u_xlat0.x = dot(u_xlat2.xyw, u_xlat2.xyw);
    u_xlat0.x = inverseSqrt(u_xlat0.x);
    u_xlat5 = vec4f(((u_xlat0.xxx * u_xlat2.xwy)).xyz, u_xlat5.w);
  }
  let x_4155 = (vs_TEXCOORD0.yyy * x_4151.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz);
  u_xlat2 = vec4f(x_4155.xy, u_xlat2.z, x_4155.z);
  let x_4166 = ((x_4151.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat2.xyw);
  u_xlat2 = vec4f(x_4166.xy, u_xlat2.z, x_4166.z);
  let x_4177 = ((x_4151.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat2.xyw);
  u_xlat2 = vec4f(x_4177.xy, u_xlat2.z, x_4177.z);
  let x_4185 = (u_xlat2.xyw + x_4151.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz);
  u_xlat2 = vec4f(x_4185.xy, u_xlat2.z, x_4185.z);
  let x_4190 = u_xlat2.xy;
  txVec0 = vec3f(x_4190.x, x_4190.y, u_xlat2.w);
  u_xlat0.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat2.x = (-(x_4151.x_MainLightShadowParams.x) + 1.0f);
  u_xlat0.x = ((u_xlat0.x * x_4151.x_MainLightShadowParams.x) + u_xlat2.x);
  u_xlatb2.x = (0.0f >= u_xlat2.w);
  u_xlatb21 = (u_xlat2.w >= 1.0f);
  u_xlatb2.x = (u_xlatb21 | u_xlatb2.x);
  if (u_xlatb2.x) {
    x_4237 = 1.0f;
  } else {
    x_4237 = u_xlat0.x;
  }
  u_xlat0.x = x_4237;
  let x_4249 = (vs_TEXCOORD0 + -(x_101.x_WorldSpaceCameraPos));
  u_xlat2 = vec4f(x_4249.xy, u_xlat2.z, x_4249.z);
  u_xlat41.x = dot(u_xlat2.xyw, u_xlat2.xyw);
  u_xlat60 = ((u_xlat41.x * x_4151.x_MainLightShadowParams.z) + x_4151.x_MainLightShadowParams.w);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat4.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = ((u_xlat60 * u_xlat4.x) + u_xlat0.x);
  u_xlat60 = dot(u_xlat5.xzy, x_101.x_MainLightPosition.xyz);
  u_xlat19.x = dot(u_xlat19, x_101.x_MainLightPosition.xyz);
  u_xlat38.x = (u_xlat60 + x_122.x_Wrap);
  u_xlat57 = (x_122.x_Wrap + 1.0f);
  u_xlat38.x = (u_xlat38.x / u_xlat57);
  u_xlat38.x = clamp(u_xlat38.x, 0.0f, 1.0f);
  u_xlat19.x = ((u_xlat19.x * 4.0f) + 0.60000002384185791016f);
  u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat38.x);
  u_xlat4 = vec4f(((u_xlat6.xyz * x_101.x_MainLightColor.xyz)).xyz, u_xlat4.w);
  u_xlat19 = (u_xlat19.xxx * u_xlat4.xyz);
  u_xlat19 = (u_xlat0.xxx * u_xlat19);
  let x_4348 = x_101.x_ScaledScreenParams.xy;
  u_xlat4 = vec4f(((x_3277 / vec2f(x_4348.x, x_4348.y))).xy, u_xlat4.zw);
  u_xlat4 = vec4f(((u_xlat4.xy * hlslcc_FragCoord.xy)).xy, u_xlat4.zw);
  u_xlat60 = ((u_xlat4.y * x_101.x_ScaleBiasRt.x) + x_101.x_ScaleBiasRt.y);
  u_xlat4.z = (-(u_xlat60) + 1.0f);
  let x_4379 = u_xlat4;
  let x_4382 = x_101.x_GlobalMipBias.x;
  let x_4383 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_4379.xz, x_4382);
  u_xlat60 = x_4383.x;
  u_xlat60 = (u_xlat60 + -(x_101.x_AmbientOcclusionParam.x));
  u_xlat60 = (u_xlat60 + 1.0f);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat23 = (u_xlat60 + -1.0f);
  u_xlat23 = ((x_101.x_AmbientOcclusionParam.w * u_xlat23) + 1.0f);
  u_xlat5.w = 1.0f;
  u_xlat7.x = dot(x_4409.unity_SHAr.xzyw, u_xlat5);
  u_xlat7.y = dot(x_4409.unity_SHAg.xzyw, u_xlat5);
  u_xlat7.z = dot(x_4409.unity_SHAb.xzyw, u_xlat5);
  u_xlat8 = (u_xlat5.zyyx * u_xlat5.xzyy);
  u_xlat9.x = dot(x_4409.unity_SHBr, u_xlat8);
  u_xlat9.y = dot(x_4409.unity_SHBg, u_xlat8);
  u_xlat9.z = dot(x_4409.unity_SHBb, u_xlat8);
  u_xlat62 = (u_xlat5.z * u_xlat5.z);
  u_xlat62 = ((u_xlat5.x * u_xlat5.x) + -(u_xlat62));
  u_xlat8 = vec4f((((x_4409.unity_SHC.xyz * vec3f(u_xlat62)) + u_xlat9.xyz)).xyz, u_xlat8.w);
  u_xlat7 = vec4f(((u_xlat7.xyz + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f(((u_xlat7.xyz * vec3f(x_122.x_AmbientScale))).xyz, u_xlat7.w);
  u_xlat62 = ((-(u_xlat5.z) * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
  u_xlat8 = vec4f(((vec3f(u_xlat62) * x_101.x_DesertBounce.xyz)).xyz, u_xlat8.w);
  u_xlat7 = vec4f((((u_xlat7.xyz * x_122.x_ShadowTint.xyz) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f(((u_xlat6.xyz * u_xlat7.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f(((vec3f(u_xlat60) * u_xlat7.xyz)).xyz, u_xlat7.w);
  u_xlatb60 = (0.0f < x_122.x_Sparkle);
  u_xlatb62 = (u_xlat58 < x_122.x_SparkleFade);
  u_xlatb60 = (u_xlatb60 & u_xlatb62);
  if (u_xlatb60) {
    u_xlat60 = max(u_xlat58, 0.00009999999747378752f);
    u_xlat1 = vec4f(((u_xlat1.xyz / vec3f(u_xlat60))).xyz, u_xlat1.w);
    u_xlat8 = vec4f(((u_xlat1.xz + x_4558)).xy, u_xlat8.zw);
    u_xlat60 = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat60 = inverseSqrt(u_xlat60);
    u_xlat8 = vec4f(((vec2f(u_xlat60) * u_xlat8.xy)).xy, u_xlat8.zw);
    u_xlat46 = (x_101.x_MainLightPosition.xz + x_4558);
    u_xlat60 = dot(u_xlat46, u_xlat46);
    u_xlat60 = inverseSqrt(u_xlat60);
    u_xlat46 = (vec2f(u_xlat60) * u_xlat46);
    u_xlat60 = dot(u_xlat8.xy, u_xlat46);
    u_xlat60 = -(u_xlat60);
    u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
    u_xlat62 = ((-(u_xlat1.y) * 2.5f) + 1.0f);
    u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
    u_xlat63 = (u_xlat60 * u_xlat62);
    u_xlatb63 = (0.05000000074505805969f < u_xlat63);
    if (u_xlatb63) {
      u_xlat8 = vec4f(((vs_TEXCOORD0.xz * vec2f(x_122.x_SparkleDensity))).xy, u_xlat8.zw);
      u_xlat8 = vec4f(floor(u_xlat8.xy).xy, u_xlat8.zw);
      u_xlat9 = vec4f(((u_xlat8.xyx * x_2559)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(fract(u_xlat9.xyz).xyz, u_xlat9.w);
      u_xlat10 = vec4f(((u_xlat9.yzx + x_2571)).xyz, u_xlat10.w);
      u_xlat63 = dot(u_xlat9.xyz, u_xlat10.xyz);
      u_xlat9 = vec4f(((vec3f(u_xlat63) + u_xlat9.xyz)).xyz, u_xlat9.w);
      u_xlat46 = (u_xlat9.yz + u_xlat9.xx);
      u_xlat46 = (u_xlat9.zy * u_xlat46);
      u_xlat46 = fract(u_xlat46);
      u_xlat46 = (u_xlat46 + x_3686);
      let x_4671 = (u_xlat46 * vec2f(1.20000004768371582031f));
      u_xlat9 = vec4f(x_4671.x, u_xlat9.y, x_4671.y, u_xlat9.w);
      u_xlat9.y = 0.0f;
      u_xlat9 = vec4f(((u_xlat5.xzy + u_xlat9.xyz)).xyz, u_xlat9.w);
      u_xlat63 = dot(u_xlat9.xyz, u_xlat9.xyz);
      u_xlat63 = inverseSqrt(u_xlat63);
      u_xlat9 = vec4f(((vec3f(u_xlat63) * u_xlat9.xyz)).xyz, u_xlat9.w);
      u_xlat1 = vec4f(((u_xlat1.xyz + x_101.x_MainLightPosition.xyz)).xyz, u_xlat1.w);
      u_xlat63 = dot(u_xlat1.xyz, u_xlat1.xyz);
      u_xlat63 = inverseSqrt(u_xlat63);
      u_xlat1 = vec4f(((u_xlat1.xyz * vec3f(u_xlat63))).xyz, u_xlat1.w);
      u_xlat1.x = dot(u_xlat9.xyz, u_xlat1.xyz);
      u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
      u_xlat1.x = log2(u_xlat1.x);
      u_xlat1.x = (u_xlat1.x * 1500.0f);
      u_xlat1.x = exp2(u_xlat1.x);
      u_xlat20 = (u_xlat8.xy + vec2f(17.0f));
      u_xlat20 = (u_xlat20 * x_2708);
      u_xlat20 = fract(u_xlat20);
      u_xlat8 = vec4f(((u_xlat20.yxx + x_2571)).xyz, u_xlat8.w);
      u_xlat63 = dot(u_xlat20.xyx, u_xlat8.xyz);
      u_xlat20 = (u_xlat20 + vec2f(u_xlat63));
      u_xlat39 = (u_xlat20.y + u_xlat20.x);
      u_xlat20.x = (u_xlat20.x * u_xlat39);
      u_xlat20.x = fract(u_xlat20.x);
      u_xlatb20 = (u_xlat20.x >= 0.93000000715255737305f);
      u_xlat20.x = select(0.0f, 1.0f, u_xlatb20);
      u_xlat1.x = (u_xlat20.x * u_xlat1.x);
      u_xlat1 = vec4f(((u_xlat1.xxx * x_101.x_MainLightColor.xyz)).xyz, u_xlat1.w);
      let x_4809 = vec3f(x_122.x_Sparkle, x_122.x_Sparkle, x_122.x_Sparkle);
      u_xlat1 = vec4f(((u_xlat1.xyz * vec3f(x_4809.x, x_4809.y, x_4809.z))).xyz, u_xlat1.w);
      u_xlat1 = vec4f(((u_xlat0.xxx * u_xlat1.xyz)).xyz, u_xlat1.w);
      u_xlat1 = vec4f(((vec3f(u_xlat60) * u_xlat1.xyz)).xyz, u_xlat1.w);
      u_xlat1 = vec4f(((vec3f(u_xlat62) * u_xlat1.xyz)).xyz, u_xlat1.w);
      u_xlat1 = vec4f(((vec3f(u_xlat61) * u_xlat1.xyz)).xyz, u_xlat1.w);
      u_xlat0.x = (x_122.x_SparkleFade * 0.5f);
      u_xlat58 = ((-(x_122.x_SparkleFade) * 0.5f) + u_xlat58);
      u_xlat0.x = (1.0f / u_xlat0.x);
      u_xlat0.x = (u_xlat0.x * u_xlat58);
      u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
      u_xlat58 = ((u_xlat0.x * -2.0f) + 3.0f);
      u_xlat0.x = (u_xlat0.x * u_xlat0.x);
      u_xlat0.x = ((-(u_xlat58) * u_xlat0.x) + 1.0f);
      u_xlat1 = vec4f(((u_xlat0.xxx * u_xlat1.xyz)).xyz, u_xlat1.w);
      u_xlat0.x = ((-(u_xlat3.y) * u_xlat40.x) + 1.0f);
      u_xlat1 = vec4f(((u_xlat0.xxx * u_xlat1.xyz)).xyz, u_xlat1.w);
      u_xlat1 = vec4f(((u_xlat3.xxx * u_xlat1.xyz)).xyz, u_xlat1.w);
    } else {
      u_xlat1.x = 0.0f;
      u_xlat1.y = 0.0f;
      u_xlat1.z = 0.0f;
    }
  } else {
    u_xlat1.x = 0.0f;
    u_xlat1.y = 0.0f;
    u_xlat1.z = 0.0f;
  }
  u_xlat0 = vec4f((((u_xlat19 * vec3f(u_xlat23)) + u_xlat7.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat1.xyz + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlatu57 = u32(x_101.x_FPParams0.w);
  u_xlatu1.x = min(u_xlatu57, 32u);
  u_xlat20.x = ((u_xlat41.x * x_4151.x_AdditionalShadowFadeParams.x) + x_4151.x_AdditionalShadowFadeParams.y);
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  let x_4963 = u_xlat0.xyz;
  u_xlat3 = vec4f(x_4963.xy, u_xlat3.z, x_4963.z);
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu1.x)) {
    } else {
      break;
    }
    u_xlat7 = vec4f((((-(vs_TEXCOORD0) * x_4986.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_4986.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat7.w);
    u_xlat58 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat58 = max(u_xlat58, 0.00006103515625f);
    u_xlat40.x = inverseSqrt(u_xlat58);
    u_xlat7 = vec4f(((u_xlat40.xxx * u_xlat7.xyz)).xyz, u_xlat7.w);
    u_xlat40.x = (1.0f / u_xlat58);
    u_xlat58 = (u_xlat58 * x_4986.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat58 = ((-(u_xlat58) * u_xlat58) + 1.0f);
    u_xlat58 = max(u_xlat58, 0.0f);
    u_xlat58 = (u_xlat58 * u_xlat58);
    u_xlat58 = (u_xlat58 * u_xlat40.x);
    u_xlat40.x = dot(x_4986.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat7.xyz);
    u_xlat40.x = ((u_xlat40.x * x_4986.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_4986.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
    u_xlat40.x = (u_xlat40.x * u_xlat40.x);
    u_xlat58 = (u_xlat58 * u_xlat40.x);
    u_xlatb40.x = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati23 = i32(x_4151.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati40 = select(u_xlati23, -1i, u_xlatb40.x);
    u_xlatb23 = (u_xlati40 >= 0i);
    if (u_xlatb23) {
      u_xlatb23 = any(!((vec4f() == vec4f(x_4151.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb23) {
        u_xlatb8 = vec4<bool>(((abs(u_xlat7.zzyz) >= abs(u_xlat7.xyxx))).xyz.xyz, u_xlatb8.w);
        u_xlatb23 = (u_xlatb8.y & u_xlatb8.x);
        let x_5128 = ((-(u_xlat7.zyzx) < vec4f())).xyw;
        u_xlatb8 = vec4<bool>(x_5128.xy, u_xlatb8.z, x_5128.z);
        u_xlat8.x = select(4.0f, 5.0f, u_xlatb8.x);
        u_xlat8.y = select(2.0f, 3.0f, u_xlatb8.y);
        u_xlat61 = select(0.0f, 1.0f, u_xlatb8.w);
        if (u_xlatb8.z) {
          x_5144 = u_xlat8.y;
        } else {
          x_5144 = u_xlat61;
        }
        u_xlat61 = x_5144;
        if (u_xlatb23) {
          x_5153 = u_xlat8.x;
        } else {
          x_5153 = u_xlat61;
        }
        u_xlat23 = x_5153;
        u_xlati23 = i32(u_xlat23);
        u_xlati40 = (u_xlati40 + u_xlati23);
      }
      u_xlati40 = (u_xlati40 << bitcast<u32>(2i));
      u_xlat8 = (vs_TEXCOORD0.yyyy * x_4151.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati40 + 1i)]);
      u_xlat8 = ((x_4151.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati40] * vs_TEXCOORD0.xxxx) + u_xlat8);
      u_xlat8 = ((x_4151.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati40 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat8);
      u_xlat8 = (u_xlat8 + x_4151.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati40 + 3i)]);
      u_xlat8 = vec4f(((u_xlat8.xyz / u_xlat8.www)).xyz, u_xlat8.w);
      let x_5208 = u_xlat8.xy;
      txVec1 = vec3f(x_5208.x, x_5208.y, u_xlat8.z);
      u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat23 = (1.0f + -(x_4151.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat40.x = ((u_xlat40.x * x_4151.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat23);
      u_xlatb23 = (0.0f >= u_xlat8.z);
      u_xlatb61 = (u_xlat8.z >= 1.0f);
      u_xlatb23 = (u_xlatb61 | u_xlatb23);
      if (u_xlatb23) {
        x_5249 = 1.0f;
      } else {
        x_5249 = u_xlat40.x;
      }
      u_xlat40.x = x_5249;
    } else {
      u_xlat40.x = 1.0f;
    }
    u_xlat23 = (-(u_xlat40.x) + 1.0f);
    u_xlat40.x = ((u_xlat20.x * u_xlat23) + u_xlat40.x);
    u_xlat8 = vec4f(((u_xlat6.xyz * x_4986.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat8.w);
    u_xlat8 = vec4f(((vec3f(u_xlat58) * u_xlat8.xyz)).xyz, u_xlat8.w);
    u_xlat8 = vec4f(((u_xlat40.xxx * u_xlat8.xyz)).xyz, u_xlat8.w);
    u_xlat58 = dot(u_xlat5.xzy, u_xlat7.xyz);
    u_xlat58 = clamp(u_xlat58, 0.0f, 1.0f);
    let x_5309 = ((u_xlat8.xyz * vec3f(u_xlat58)) + u_xlat3.xyw);
    u_xlat3 = vec4f(x_5309.xy, u_xlat3.z, x_5309.z);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlat0 = vec4f(((u_xlat4.xz * x_101.x_FPParams1.xy)).xy, u_xlat0.zw);
  u_xlatu0 = vec3u(vec2u(u_xlat0.xy).xy, u_xlatu0.z);
  let x_5331 = vec2u(x_101.x_FPParams1.zw);
  u_xlatu1 = vec3u(x_5331.x, u_xlatu1.y, x_5331.y);
  u_xlatu0.x = ((u_xlatu0.y * u_xlatu1.x) + u_xlatu0.x);
  u_xlat4.x = -(x_101.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat4.y = -(x_101.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat4.z = -(x_101.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat19.x = dot(u_xlat4.xyz, u_xlat2.xyw);
  u_xlatb38 = (x_101.unity_OrthoParams.w == 0.0f);
  u_xlat1.x = log2(u_xlat19.x);
  if (u_xlatb38) {
    x_5371 = u_xlat1.x;
  } else {
    x_5371 = u_xlat19.x;
  }
  u_xlat19.x = x_5371;
  u_xlat19.x = ((u_xlat19.x * x_101.x_FPParams0.x) + x_101.x_FPParams0.y);
  u_xlatu19 = u32(u_xlat19.x);
  u_xlatu38 = u32(x_101.x_FPParams2.x);
  u_xlatu38 = (u_xlatu38 + 4294967295u);
  u_xlatu1.x = (u_xlatu1.z + 2u);
  u_xlatu0.y = min(u_xlatu38, u_xlatu19);
  let x_5412 = (u_xlatu0.xy * u_xlatu1.zx);
  u_xlatu0 = vec3u(x_5412.x, u_xlatu0.y, x_5412.y);
  u_xlatu0.y = ((u_xlatu0.y * u_xlatu1.x) + 2u);
  u_xlatu1.x = (u_xlatu0.z >> 2u);
  param = bitcast<i32>(u_xlatu0.z);
  param_1 = 0i;
  param_2 = 1i;
  let x_5433 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu0.z);
  param_4 = 1i;
  param_5 = 1i;
  let x_5440 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati39 = vec2i(x_5433, x_5440);
  u_xlati4 = bitcast<vec2i>((bitcast<vec2u>(u_xlati39.xx) & bitcast<vec2u>(x_5450.urp_ZBins[bitcast<i32>(u_xlatu1.x)].wy)));
  u_xlati42 = ~(u_xlati39);
  let x_5477 = bitcast<vec2i>((bitcast<vec2u>(u_xlati42.xx) & bitcast<vec2u>(x_5450.urp_ZBins[bitcast<i32>(u_xlatu1.x)].zx)));
  u_xlati1 = vec3i(x_5477.x, u_xlati1.y, x_5477.y);
  let x_5486 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xz) | bitcast<vec2u>(u_xlati4)));
  u_xlati1 = vec3i(x_5486.x, u_xlati1.y, x_5486.y);
  u_xlati38 = bitcast<i32>((bitcast<u32>(u_xlati39.y) & bitcast<u32>(u_xlati1.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati42.y) & bitcast<u32>(u_xlati1.z)));
  u_xlatu0.z = (bitcast<u32>(u_xlati38) | bitcast<u32>(u_xlati1.x));
  u_xlati42.x = 0i;
  u_xlatu4 = vec4u(u_xlatu0.xy, u_xlatu4.z, u_xlatu0.z);
  let x_5522 = u_xlat3.xyw;
  u_xlat1 = vec4f(x_5522.x, u_xlat1.y, x_5522.yz);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu40 = (u_xlatu4.w >> 16u);
    u_xlati62 = u_xlati42.x;
    u_xlatu63 = u_xlatu4.w;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb7 = (u_xlati62 == 0i);
      u_xlatu26.x = (u_xlatu63 & 65535u);
      u_xlatb26 = (u_xlatu40 >= u_xlatu26.x);
      u_xlatb7 = (u_xlatb26 & u_xlatb7);
      if (!(u_xlatb7)) {
        break;
      }
      param_6 = u_xlatu63;
      param_7 = 5i;
      param_8 = 11i;
      let x_5574 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu7 = x_5574;
      u_xlatu8 = (u_xlatu4.xxyy + vec4u(u_xlatu7));
      u_xlatu26 = (u_xlatu8.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu8.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_5591 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu8.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_5598 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu8.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_5605 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu8.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_5612 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati8 = vec4i(x_5591, x_5598, x_5605, x_5612);
      u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8.xx) & bitcast<vec2u>(x_5621.urp_Tiles[bitcast<i32>(u_xlatu26.x)].wy)));
      u_xlati10 = ~(u_xlati8);
      let x_5646 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_5621.urp_Tiles[bitcast<i32>(u_xlatu26.x)].zx)));
      u_xlati26 = vec3i(x_5646.x, u_xlati26.y, x_5646.y);
      let x_5655 = bitcast<vec2i>((bitcast<vec2u>(u_xlati26.xz) | bitcast<vec2u>(u_xlati9)));
      u_xlati26 = vec3i(x_5655.x, u_xlati26.y, x_5655.y);
      u_xlati26.x = bitcast<i32>((bitcast<u32>(u_xlati8.y) & bitcast<u32>(u_xlati26.x)));
      u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati26.z)));
      u_xlati26.x = bitcast<i32>((bitcast<u32>(u_xlati64) | bitcast<u32>(u_xlati26.x)));
      u_xlati8 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati8.zz) & bitcast<vec2u>(x_5450.urp_ZBins[bitcast<i32>(u_xlatu26.y)].wy))).xy, u_xlati8.zw);
      u_xlati45 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_5450.urp_ZBins[bitcast<i32>(u_xlatu26.y)].zx)));
      u_xlati45 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45) | bitcast<vec2u>(u_xlati8.xy)));
      u_xlati45.x = bitcast<i32>((bitcast<u32>(u_xlati8.w) & bitcast<u32>(u_xlati45.x)));
      u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati45.y)));
      u_xlati45.x = bitcast<i32>((bitcast<u32>(u_xlati64) | bitcast<u32>(u_xlati45.x)));
      u_xlati26.x = bitcast<i32>((bitcast<u32>(u_xlati45.x) & bitcast<u32>(u_xlati26.x)));
      u_xlati45.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu63) & 31i)));
      u_xlati26.x = bitcast<i32>((bitcast<u32>(u_xlati45.x) & bitcast<u32>(u_xlati26.x)));
      u_xlati7 = (bitcast<i32>(u_xlatu7) << bitcast<u32>(5i));
      u_xlatu7 = (u_xlatu40 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati7)))));
      u_xlatu7 = min(u_xlatu7, 31u);
      u_xlatu7 = (bitcast<u32>(-(bitcast<i32>(u_xlatu7))) + 31u);
      u_xlatu7 = (4294967295u >> (u_xlatu7 & 31u));
      u_xlati62 = bitcast<i32>((u_xlatu7 & bitcast<u32>(u_xlati26.x)));
      u_xlati7 = (bitcast<i32>(u_xlatu63) + 32i);
      u_xlatu63 = (bitcast<u32>(u_xlati7) & 4294967264u);
    }
    u_xlatu4.w = u_xlatu63;
    if ((u_xlati62 == 0i)) {
      break;
    }
    u_xlati40 = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati62)));
    u_xlati7 = (1i << bitcast<u32>((u_xlati40 & 31i)));
    u_xlati42.x = bitcast<i32>((bitcast<u32>(u_xlati62) ^ bitcast<u32>(u_xlati7)));
    u_xlati7 = (bitcast<i32>(u_xlatu4.w) + -32i);
    u_xlati7 = bitcast<i32>((bitcast<u32>(u_xlati7) & 65504u));
    u_xlati40 = (u_xlati40 + u_xlati7);
    u_xlati40 = (bitcast<i32>(u_xlatu57) + u_xlati40);
    u_xlat7 = vec4f((((-(vs_TEXCOORD0) * x_4986.x_AdditionalLightsPosition[u_xlati40].www) + x_4986.x_AdditionalLightsPosition[u_xlati40].xyz)).xyz, u_xlat7.w);
    u_xlat64 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat64 = max(u_xlat64, 0.00006103515625f);
    u_xlat8.x = inverseSqrt(u_xlat64);
    u_xlat7 = vec4f(((u_xlat7.xyz * u_xlat8.xxx)).xyz, u_xlat7.w);
    u_xlat8.x = (1.0f / u_xlat64);
    u_xlat64 = (u_xlat64 * x_4986.x_AdditionalLightsAttenuation[u_xlati40].x);
    u_xlat64 = ((-(u_xlat64) * u_xlat64) + 1.0f);
    u_xlat64 = max(u_xlat64, 0.0f);
    u_xlat64 = (u_xlat64 * u_xlat64);
    u_xlat64 = (u_xlat64 * u_xlat8.x);
    u_xlat8.x = dot(x_4986.x_AdditionalLightsSpotDir[u_xlati40].xyz, u_xlat7.xyz);
    u_xlat8.x = ((u_xlat8.x * x_4986.x_AdditionalLightsAttenuation[u_xlati40].z) + x_4986.x_AdditionalLightsAttenuation[u_xlati40].w);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat64 = (u_xlat64 * u_xlat8.x);
    u_xlatb8.x = (u_xlati40 < 0i);
    u_xlati27 = i32(x_4151.x_AdditionalShadowParams[u_xlati40].w);
    u_xlati8.x = select(u_xlati27, -1i, u_xlatb8.x);
    u_xlatb27.x = (u_xlati8.x >= 0i);
    if (u_xlatb27.x) {
      u_xlatb27.x = any(!((vec4f() == vec4f(x_4151.x_AdditionalShadowParams[u_xlati40].z))));
      if (u_xlatb27.x) {
        u_xlatb27 = ((abs(u_xlat7.zzyy) >= abs(u_xlat7.xyxx))).xyz;
        u_xlatb27.x = (u_xlatb27.y & u_xlatb27.x);
        u_xlatb9 = ((-(u_xlat7.zyxz) < vec4f())).xyz;
        u_xlat9.x = select(4.0f, 5.0f, u_xlatb9.x);
        u_xlat9.y = select(2.0f, 3.0f, u_xlatb9.y);
        u_xlat46.x = select(0.0f, 1.0f, u_xlatb9.z);
        if (u_xlatb27.z) {
          x_5987 = u_xlat9.y;
        } else {
          x_5987 = u_xlat46.x;
        }
        u_xlat46.x = x_5987;
        if (u_xlatb27.x) {
          x_6000 = u_xlat9.x;
        } else {
          x_6000 = u_xlat46.x;
        }
        u_xlat27.x = x_6000;
        u_xlati27 = i32(u_xlat27.x);
        u_xlati8.x = (u_xlati27 + u_xlati8.x);
      }
      u_xlati8.x = (u_xlati8.x << bitcast<u32>(2i));
      u_xlat9 = (vs_TEXCOORD0.yyyy * x_4151.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati8.x + 1i)]);
      u_xlat9 = ((x_4151.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati8.x] * vs_TEXCOORD0.xxxx) + u_xlat9);
      u_xlat9 = ((x_4151.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati8.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat9);
      u_xlat8 = (u_xlat9 + x_4151.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati8.x + 3i)]);
      u_xlat8 = vec4f(((u_xlat8.xyz / u_xlat8.www)).xyz, u_xlat8.w);
      let x_6065 = u_xlat8.xy;
      txVec2 = vec3f(x_6065.x, x_6065.y, u_xlat8.z);
      u_xlat8.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat27.x = (1.0f + -(x_4151.x_AdditionalShadowParams[u_xlati40].x));
      u_xlat8.x = ((u_xlat8.x * x_4151.x_AdditionalShadowParams[u_xlati40].x) + u_xlat27.x);
      u_xlatb27.x = (0.0f >= u_xlat8.z);
      u_xlatb46 = (u_xlat8.z >= 1.0f);
      u_xlatb27.x = (u_xlatb46 | u_xlatb27.x);
      if (u_xlatb27.x) {
        x_6109 = 1.0f;
      } else {
        x_6109 = u_xlat8.x;
      }
      u_xlat8.x = x_6109;
    } else {
      u_xlat8.x = 1.0f;
    }
    u_xlat27.x = (-(u_xlat8.x) + 1.0f);
    u_xlat8.x = ((u_xlat20.x * u_xlat27.x) + u_xlat8.x);
    u_xlat27 = (u_xlat6.xyz * x_4986.x_AdditionalLightsColor[u_xlati40].xyz);
    u_xlat27 = (vec3f(u_xlat64) * u_xlat27);
    u_xlat8 = vec4f(((u_xlat8.xxx * u_xlat27)).xyz, u_xlat8.w);
    u_xlat40.x = dot(u_xlat5.xzy, u_xlat7.xyz);
    u_xlat40.x = ((u_xlat40.x * 0.80000001192092895508f) + 0.20000000298023223877f);
    u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
    let x_6172 = ((u_xlat8.xyz * u_xlat40.xxx) + u_xlat1.xzw);
    u_xlat1 = vec4f(x_6172.x, u_xlat1.y, x_6172.yz);
  }
  u_xlatb0 = (x_101.x_DesertSunDir.w >= 0.5f);
  if (u_xlatb0) {
    u_xlat0.x = sqrt(u_xlat41.x);
    u_xlat19.x = max(u_xlat0.x, 0.00009999999747378752f);
    u_xlat3 = vec4f(((u_xlat2.xyw / u_xlat19.xxx)).xyz, u_xlat3.w);
    u_xlat0.x = (u_xlat0.x + -(x_101.x_DesertHaze.z));
    u_xlat0.x = max(u_xlat0.x, 0.0f);
    u_xlat38.x = (x_101.x_WorldSpaceCameraPos.y + -(x_101.x_DesertHaze2.x));
    u_xlat19.x = (u_xlat0.x / u_xlat19.x);
    u_xlat19.x = (u_xlat19.x * u_xlat2.y);
    u_xlat38.x = max(u_xlat38.x, -20.0f);
    u_xlat38.x = (u_xlat38.x * -(x_101.x_DesertHaze.y));
    u_xlat38.x = (u_xlat38.x * 1.44269502162933349609f);
    u_xlat38.x = exp2(u_xlat38.x);
    u_xlatb57 = (0.00999999977648258209f < abs(u_xlat19.x));
    u_xlat20.x = (u_xlat19.x * -(x_101.x_DesertHaze.y));
    u_xlat20.x = (u_xlat20.x * 1.44269502162933349609f);
    u_xlat20.x = exp2(u_xlat20.x);
    u_xlat20.x = (-(u_xlat20.x) + 1.0f);
    u_xlat20.x = (u_xlat38.x * u_xlat20.x);
    u_xlat19.x = (u_xlat19.x * x_101.x_DesertHaze.y);
    u_xlat19.x = (u_xlat20.x / u_xlat19.x);
    if (u_xlatb57) {
      x_6291 = u_xlat19.x;
    } else {
      x_6291 = u_xlat38.x;
    }
    u_xlat19.x = x_6291;
    u_xlat38.x = (u_xlat0.x * x_101.x_DesertHaze.x);
    u_xlat0.x = (u_xlat0.x * x_101.x_DesertHazeTint.w);
    u_xlat0.x = ((u_xlat38.x * u_xlat19.x) + u_xlat0.x);
    u_xlat19.x = (u_xlat0.x * -1.44269502162933349609f);
    u_xlat19.x = exp2(u_xlat19.x);
    u_xlat19.x = (-(u_xlat19.x) + 1.0f);
    u_xlat19.x = min(u_xlat19.x, x_101.x_DesertHaze.w);
    u_xlat3.w = 0.03500000014901161194f;
    u_xlat38.x = dot(u_xlat3.xzw, u_xlat3.xzw);
    u_xlat38.x = inverseSqrt(u_xlat38.x);
    u_xlat2 = vec4f(((u_xlat38.xxx * u_xlat3.xwz)).xyz, u_xlat2.w);
    u_xlat57 = min(abs(u_xlat2.z), abs(u_xlat2.x));
    u_xlat20.x = max(abs(u_xlat2.z), abs(u_xlat2.x));
    u_xlat20.x = (1.0f / u_xlat20.x);
    u_xlat57 = (u_xlat57 * u_xlat20.x);
    u_xlat20.x = (u_xlat57 * u_xlat57);
    u_xlat59 = ((u_xlat20.x * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat59 = ((u_xlat20.x * u_xlat59) + 0.18014100193977355957f);
    u_xlat59 = ((u_xlat20.x * u_xlat59) + -0.33029949665069580078f);
    u_xlat20.x = ((u_xlat20.x * u_xlat59) + 0.99986600875854492188f);
    u_xlat59 = (u_xlat57 * u_xlat20.x);
    u_xlatb4 = (abs(u_xlat2.z) < abs(u_xlat2.x));
    u_xlat59 = ((u_xlat59 * -2.0f) + 1.57079637050628662109f);
    u_xlat59 = select(0.0f, u_xlat59, u_xlatb4);
    u_xlat57 = ((u_xlat57 * u_xlat20.x) + u_xlat59);
    u_xlatb20 = (u_xlat2.z < -(u_xlat2.z));
    u_xlat20.x = select(0.0f, -3.14159274101257324219f, u_xlatb20);
    u_xlat57 = (u_xlat57 + u_xlat20.x);
    u_xlat20.x = min(u_xlat2.z, u_xlat2.x);
    u_xlat2.x = max(u_xlat2.z, u_xlat2.x);
    u_xlatb20 = (u_xlat20.x < -(u_xlat20.x));
    u_xlatb2.x = (u_xlat2.x >= -(u_xlat2.x));
    u_xlatb20 = (u_xlatb20 & u_xlatb2.x);
    if (u_xlatb20) {
      x_6482 = -(u_xlat57);
    } else {
      x_6482 = u_xlat57;
    }
    u_xlat57 = x_6482;
    u_xlat4.x = ((u_xlat57 * 0.15915493667125701904f) + 0.5f);
    u_xlat4.y = 0.5f;
    let x_6504 = textureSampleLevel(x_DesertHorizonRing, sampler_DesertHorizonRing, u_xlat4.xy, 0.0f).xyz;
    u_xlat2 = vec4f(x_6504.x, u_xlat2.y, x_6504.yz);
    u_xlat57 = ((-(u_xlat3.w) * u_xlat38.x) + 1.0f);
    u_xlat57 = sqrt(u_xlat57);
    u_xlat20.x = ((u_xlat38.x * -0.00065552548039704561f) + 0.07426100224256515503f);
    u_xlat20.x = ((u_xlat20.x * u_xlat2.y) + -0.21211439371109008789f);
    u_xlat20.x = ((u_xlat20.x * u_xlat2.y) + 1.57072877883911132812f);
    u_xlat57 = ((-(u_xlat20.x) * u_xlat57) + 1.57079637050628662109f);
    u_xlat4 = vec4f(((vec2f(u_xlat57) * vec2f(57.295780181884765625f, -9.18448162078857421875f))).xy, u_xlat4.zw);
    u_xlat5 = vec4f(((u_xlat2.xzw * x_101.x_DesertSkyGrade0.xyz)).xyz, u_xlat5.w);
    u_xlat20.x = dot(u_xlat5.xyz, x_1040);
    u_xlat2 = vec4f((((u_xlat2.xzw * x_101.x_DesertSkyGrade0.xyz) + -(u_xlat20.xxx))).xyz, u_xlat2.w);
    u_xlat2 = vec4f((((x_101.x_DesertSkyGrade0.www * u_xlat2.xyz) + u_xlat20.xxx)).xyz, u_xlat2.w);
    u_xlat2 = vec4f(max(u_xlat2.xyz, vec3f()).xyz, u_xlat2.w);
    u_xlat20.x = max(x_101.x_DesertSkyGrade1.w, 0.10000000149011611938f);
    u_xlat20.x = (u_xlat4.x / u_xlat20.x);
    u_xlat20.x = (-(u_xlat20.x) + 1.0f);
    u_xlat20.x = max(u_xlat20.x, 0.0f);
    u_xlat20.x = (u_xlat20.x * u_xlat20.x);
    let x_6622 = (x_101.x_DesertSkyGrade1.xyz + x_1541);
    u_xlat4 = vec4f(x_6622.x, u_xlat4.y, x_6622.yz);
    let x_6630 = ((u_xlat20.xxx * u_xlat4.xzw) + x_1550);
    u_xlat4 = vec4f(x_6630.x, u_xlat4.y, x_6630.yz);
    u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat4.xzw)).xyz, u_xlat2.w);
    u_xlat57 = ((u_xlat57 * 57.295780181884765625f) + -(x_101.x_DesertSkyGrade2.w));
    u_xlat20.x = (-(x_101.x_DesertSkyGrade2.w) + 90.0f);
    u_xlat20.x = max(u_xlat20.x, 1.0f);
    u_xlat57 = (u_xlat57 / u_xlat20.x);
    u_xlat57 = clamp(u_xlat57, 0.0f, 1.0f);
    let x_6665 = (x_101.x_DesertSkyGrade2.xyz + x_1541);
    u_xlat4 = vec4f(x_6665.x, u_xlat4.y, x_6665.yz);
    let x_6673 = ((vec3f(u_xlat57) * u_xlat4.xzw) + x_1550);
    u_xlat4 = vec4f(x_6673.x, u_xlat4.y, x_6673.yz);
    u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat4.xzw)).xyz, u_xlat2.w);
    u_xlat38 = ((u_xlat3.xz * u_xlat38.xx) + x_4558);
    u_xlat20.x = dot(u_xlat38, u_xlat38);
    u_xlat20.x = inverseSqrt(u_xlat20.x);
    u_xlat38 = (u_xlat38 * u_xlat20.xx);
    let x_6704 = (x_101.x_DesertSunDir.xz + x_4558);
    u_xlat4 = vec4f(x_6704.x, u_xlat4.y, x_6704.y, u_xlat4.w);
    u_xlat20.x = dot(u_xlat4.xz, u_xlat4.xz);
    u_xlat20.x = inverseSqrt(u_xlat20.x);
    let x_6721 = (u_xlat20.xx * u_xlat4.xz);
    u_xlat4 = vec4f(x_6721.x, u_xlat4.y, x_6721.y, u_xlat4.w);
    u_xlat38.x = dot(u_xlat38, u_xlat4.xz);
    u_xlat38.x = ((u_xlat38.x * 0.5f) + 0.5f);
    u_xlat38.x = clamp(u_xlat38.x, 0.0f, 1.0f);
    u_xlat57 = max(x_101.x_DesertSkyGrade3.w, 1.0f);
    u_xlat38.x = log2(u_xlat38.x);
    u_xlat38.x = (u_xlat38.x * u_xlat57);
    u_xlat38.x = exp2(u_xlat38.x);
    u_xlat57 = exp2(u_xlat4.y);
    u_xlat38.x = (u_xlat57 * u_xlat38.x);
    u_xlat57 = (u_xlat38.x * 1.5f);
    u_xlat57 = min(u_xlat57, 1.0f);
    u_xlat4 = vec4f((((vec3f(u_xlat57) * vec3f(0.0f, -0.19999998807907104492f, -0.33999997377395629883f)) + x_1550)).xyz, u_xlat4.w);
    u_xlat5 = vec4f(((u_xlat38.xxx * x_101.x_DesertSkyGrade3.xyz)).xyz, u_xlat5.w);
    u_xlat2 = vec4f((((u_xlat2.xyz * u_xlat4.xyz) + u_xlat5.xyz)).xyz, u_xlat2.w);
    u_xlat0.x = (u_xlat0.x * x_101.x_DesertHaze2.w);
    u_xlat0.x = (u_xlat0.x * 0.44999998807907104492f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat2 = vec4f(((u_xlat2.xyz + -(x_101.x_DesertHazeTint.xyz))).xyz, u_xlat2.w);
    let x_6825 = ((u_xlat0.xxx * u_xlat2.xyz) + x_101.x_DesertHazeTint.xyz);
    u_xlat0 = vec4f(x_6825.x, u_xlat0.y, x_6825.yz);
    u_xlat20.x = dot(u_xlat3.xyz, x_101.x_DesertSunDir.xyz);
    u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
    u_xlat2 = vec4f(((x_101.x_DesertSunColor.xyz * x_101.x_DesertHaze2.yyy)).xyz, u_xlat2.w);
    u_xlat20.x = log2(u_xlat20.x);
    u_xlat20.x = (u_xlat20.x * x_101.x_DesertHaze2.z);
    u_xlat20.x = exp2(u_xlat20.x);
    let x_6870 = ((u_xlat2.xyz * u_xlat20.xxx) + u_xlat0.xzw);
    u_xlat0 = vec4f(x_6870.x, u_xlat0.y, x_6870.yz);
    let x_6878 = (-(u_xlat1.xzw) + u_xlat0.xzw);
    u_xlat0 = vec4f(x_6878.x, u_xlat0.y, x_6878.yz);
    let x_6888 = ((u_xlat19.xxx * u_xlat0.xzw) + u_xlat1.xzw);
    u_xlat1 = vec4f(x_6888.x, u_xlat1.y, x_6888.yz);
  }
  SV_Target0 = vec4f(u_xlat1.xzw.xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(1) vs_TEXCOORD1_param : vec3f, @location(0) vs_TEXCOORD0_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

