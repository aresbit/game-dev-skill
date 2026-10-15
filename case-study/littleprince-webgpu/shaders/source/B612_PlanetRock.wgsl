//Assets/Levels/B612/Shaders/B612_PlanetRock.shader
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
  hlslcc_mtx4x4unity_WorldToObject : Arr_1,
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

@group(1) @binding(5) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(8) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD3 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> in_COLOR0 : vec4f;

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
  vs_TEXCOORD3 = 0.0f;
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0);
  vs_TEXCOORD2 = in_COLOR0;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(3)
  vs_TEXCOORD3_1 : f32,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(2) in_COLOR0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD3, vs_TEXCOORD1, vs_TEXCOORD2);
}

//Assets/Levels/B612/Shaders/B612_PlanetRock.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Tiling : f32,
  /* @offset(4) */
  x_DetailTiling : f32,
  /* @offset(8) */
  x_DetailStrength : f32,
  /* @offset(16) */
  x_RockTint : vec4f,
  /* @offset(32) */
  x_RockTintB : vec4f,
  /* @offset(48) */
  x_MossColor : vec4f,
  /* @offset(64) */
  x_UnderColor : vec4f,
  /* @offset(80) */
  x_Strata : vec4f,
  /* @offset(96) */
  x_UnderY : vec4f,
  /* @offset(112) */
  x_MossAmount : f32,
  /* @offset(116) */
  x_Smoothness : f32,
  /* @offset(120) */
  x_AOStrength : f32,
  /* @offset(124) */
  x_MossTopY : f32,
  /* @offset(128) */
  x_HazeDensity : f32,
  /* @offset(132) */
  x_HazeStart : f32,
  /* @offset(136) */
  x_SkyFill : f32,
  /* @offset(140) */
  x_Lichen : f32,
  /* @offset(144) */
  x_MossUp : f32,
  /* @offset(160) */
  x_RimLight : vec4f,
  /* @offset(176) */
  x_CloudMist : vec4f,
  /* @offset(192) */
  x_GrassColor : vec4f,
  /* @offset(208) */
  x_GrassColorB : vec4f,
  /* @offset(224) */
  x_LichenColor : vec4f,
}

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(96) */
  x_FPParams0 : vec4f,
  /* @offset(112) */
  x_FPParams1 : vec4f,
  /* @offset(128) */
  x_FPParams2 : vec4f,
  /* @offset(144) */
  x_Time : vec4f,
  /* @offset(160) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(272) */
  x_B612SunDirection : vec4f,
  /* @offset(288) */
  x_B612TimeParams : vec4f,
  /* @offset(304) */
  x_B612SkyZenith : vec4f,
  /* @offset(320) */
  x_B612SkyHorizon : vec4f,
  /* @offset(336) */
  x_B612SkyHorizonSun : vec4f,
  /* @offset(352) */
  x_B612SkyParams : vec4f,
  /* @offset(368) */
  x_B612HazeColor : vec4f,
  /* @offset(384) */
  x_B612HazeParams : vec4f,
  /* @offset(400) */
  x_B612SkyGlow : vec4f,
  /* @offset(416) */
  x_B612SkyAnti : vec4f,
  /* @offset(432) */
  x_B612SkyParams2 : vec4f,
  /* @offset(448) */
  x_B612CloudParams : vec4f,
  /* @offset(464) */
  x_B612SunGlow : vec4f,
  /* @offset(480) */
  x_B612HdriParams : vec4f,
  /* @offset(496) */
  x_B612HdriDay0 : vec4f,
  /* @offset(512) */
  x_B612HdriDay1 : vec4f,
  /* @offset(528) */
  x_B612HdriDay2 : vec4f,
  /* @offset(544) */
  x_B612HdriDay3 : vec4f,
  /* @offset(560) */
  x_B612HdriDusk0 : vec4f,
  /* @offset(576) */
  x_B612HdriDusk1 : vec4f,
  /* @offset(592) */
  x_B612HdriDusk2 : vec4f,
  /* @offset(608) */
  x_B612HdriDusk3 : vec4f,
  /* @offset(624) */
  x_B612SkyCloud : vec4f,
  /* @offset(640) */
  x_B612SkyCloud2 : vec4f,
  /* @offset(656) */
  x_B612SkyCloudWarm : vec4f,
  /* @offset(672) */
  x_B612SkyNight : vec4f,
  /* @offset(688) */
  x_B612SkyCloudNight : vec4f,
  /* @offset(704) */
  x_B612SkyCloudCut : vec4f,
  /* @offset(720) */
  x_B612CloudSeaParams : vec4f,
  /* @offset(736) */
  x_B612CloudSeaCentre : vec4f,
}

alias Arr_1 = array<vec4f, 20u>;

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
  Xhlslcc_UnusedX_AdditionalShadowFadeParams : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedX_AdditionalShadowmapSize : vec4f,
}

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 2u>;

alias Arr_5 = array<vec4f, 4u>;

alias Arr_6 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_2,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_3,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_4,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_5,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_6,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_7 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_7,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_8,
}

alias Arr_9 = array<vec4f, 32u>;

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 224u>;

alias Arr_13 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_9,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_10,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_11,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_12,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_13,
}

alias Arr_14 = array<vec4f, 32u>;

alias Arr_15 = array<vec4f, 32u>;

alias Arr_16 = array<vec4f, 32u>;

alias Arr_17 = array<vec4f, 32u>;

alias Arr_18 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_19 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_14,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_15,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_16,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_17,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_18,
  /* @offset(2560) */
  Xhlslcc_UnusedX_AdditionalLightsLayerMasks : Arr_19,
}

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(7) var<uniform> x_138 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec3f;

@group(0) @binding(6) var x_RockMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_RockMap : sampler;

@group(1) @binding(0) var<uniform> x_178 : PGlobals;

@group(0) @binding(8) var x_MacroNoise : texture_2d<f32>;

@group(0) @binding(16) var sampler_MacroNoise : sampler;

@group(0) @binding(7) var x_DetailNormal : texture_2d<f32>;

@group(0) @binding(15) var sampler_DetailNormal : sampler;

var<private> vs_TEXCOORD2 : vec4f;

@group(1) @binding(6) var<uniform> x_1234 : LightShadows;

@group(1) @binding(5) var<uniform> x_1279 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_1757 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2012 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2241 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(12) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_2623 : AdditionalLights;

@group(0) @binding(9) var x_B612CloudSeaNear : texture_2d<f32>;

@group(0) @binding(4) var x_B612HdriRingDay : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearRepeat : sampler;

@group(0) @binding(5) var x_B612HdriRingDusk : texture_2d<f32>;

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

const x_135 = vec4f(1.0f);

const x_193 = vec2f(0.37000000476837158203f);

const x_530 = vec2f(2.0f);

const x_533 = vec2f(-1.0f);

const x_924 = vec2f(0.5f);

const x_1353 = vec2f(1.0f);

const x_1823 = vec3f(1.0f);

const x_1971 = vec2u(2u);

const x_2582 = vec3f(0.03999999910593032837f);

const x_3593 = vec3f(0.55000001192092895508f);

const x_3602 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_3699 = vec2f(0.00000999999974737875f, 0.0f);

const x_3849 = vec2f(0.00999999977648258209f, 0.0f);

const x_3929 = vec3f(0.34999999403953552246f);

const x_4025 = vec3f(0.00999999977648258209f, 0.10000000149011611938f, 0.00999999977648258209f);

const x_4316 = vec2f(57.295780181884765625f);

const x_4328 = vec2f(0.00277777784503996372f);

const x_4418 = vec3f(-1.0f);

const x_4443 = vec2f(1.5f, 90.0f);

const x_4487 = vec3f(0.00100000004749745131f);

const x_4939 = vec2f(10.0f, 0.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat18 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat37 : f32;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat55 : f32;
  var u_xlat20 : vec2f;
  var u_xlat38 : f32;
  var u_xlat6 : vec4f;
  var u_xlat39 : vec2f;
  var u_xlat58 : f32;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat41 : vec2f;
  var u_xlat56 : f32;
  var u_xlat54 : f32;
  var u_xlat19 : vec3f;
  var u_xlat36 : vec2f;
  var u_xlatb18 : bool;
  var x_1217 : vec3f;
  var u_xlat57 : f32;
  var u_xlat59 : f32;
  var txVec0 : vec3f;
  var u_xlat22 : vec3f;
  var u_xlatb22 : bool;
  var u_xlatb40 : bool;
  var x_1518 : f32;
  var u_xlat60 : f32;
  var u_xlat25 : f32;
  var u_xlat61 : f32;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat62 : f32;
  var u_xlatu7 : vec3u;
  var u_xlatu11 : vec2u;
  var u_xlati7 : i32;
  var u_xlat21 : vec3f;
  var x_1668 : f32;
  var u_xlatu18 : u32;
  var u_xlatu3 : vec2u;
  var u_xlati21 : i32;
  var u_xlatu21 : vec2u;
  var u_xlati11 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati47 : vec2i;
  var u_xlati12 : vec3i;
  var u_xlati18 : i32;
  var u_xlat12 : vec3f;
  var u_xlatb47 : vec2<bool>;
  var u_xlat47 : vec2f;
  var x_1861 : f32;
  var x_1874 : f32;
  var u_xlatu12 : vec2u;
  var u_xlati48 : i32;
  var u_xlatu66 : u32;
  var u_xlat13 : vec3f;
  var u_xlatu40 : u32;
  var u_xlati43 : vec2i;
  var u_xlatu62 : u32;
  var u_xlatb63 : bool;
  var u_xlatu64 : u32;
  var u_xlatb64 : bool;
  var u_xlatu63 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu14 : vec4u;
  var u_xlatu15 : vec2u;
  var u_xlati14 : vec4i;
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
  var u_xlati51 : vec2i;
  var u_xlati16 : vec4i;
  var u_xlati17 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati64 : i32;
  var u_xlati67 : i32;
  var u_xlati63 : i32;
  var u_xlati40 : i32;
  var u_xlat14 : vec3f;
  var u_xlat15 : vec3f;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat67 : f32;
  var u_xlatu67 : u32;
  var u_xlatu54 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlat11 : vec4f;
  var u_xlat40 : vec2f;
  var u_xlati3 : vec2i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati4 : vec3i;
  var u_xlati54 : i32;
  var u_xlati55 : i32;
  var u_xlatu48 : vec2u;
  var u_xlatu55 : u32;
  var u_xlatb4 : bool;
  var u_xlatu4 : u32;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu43 : vec2u;
  var u_xlati13 : vec4i;
  var param_30 : i32;
  var param_31 : i32;
  var param_32 : i32;
  var param_33 : i32;
  var param_34 : i32;
  var param_35 : i32;
  var param_36 : i32;
  var param_37 : i32;
  var param_38 : i32;
  var param_39 : i32;
  var param_40 : i32;
  var param_41 : i32;
  var u_xlati50 : vec2i;
  var u_xlati61 : i32;
  var u_xlat43 : f32;
  var u_xlatb55 : bool;
  var u_xlatb56 : bool;
  var u_xlatb3 : vec2<bool>;
  var u_xlatb6 : bool;
  var x_4241 : f32;
  var u_xlatb41 : bool;
  var x_4303 : f32;
  var u_xlat26 : vec3f;
  var u_xlat24 : f32;
  var u_xlatb42 : bool;
  var u_xlatb24 : bool;
  var x_5122 : f32;
  var u_xlat44 : vec2f;
  var x_5252 : vec3f;
  var x_5444 : vec3f;
  var u_xlatb0 : bool;
  var u_xlatb21 : bool;
  var u_xlatb57 : bool;
  var x_6674 : f32;
  var u_xlat23 : f32;
  var x_7444 : f32;
  var x_7498 : f32;
  var u_xlatb38 : bool;
  var x_7616 : vec3f;
  var x_7792 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat18 = (u_xlat0.xxx * vs_TEXCOORD1);
  u_xlat1 = vec4f(((abs(u_xlat18) * abs(u_xlat18))).xyz, u_xlat1.w);
  let x_104 = (u_xlat1.xyz * u_xlat1.xyz);
  u_xlat1 = vec4f(x_104.xy, u_xlat1.z, x_104.z);
  u_xlat2.x = (u_xlat1.y + u_xlat1.x);
  u_xlat37 = ((u_xlat1.z * u_xlat1.z) + u_xlat2.x);
  u_xlat37 = max(u_xlat37, 0.00009999999747378752f);
  u_xlat1 = vec4f(((u_xlat1.xyw / vec3f(u_xlat37))).xyz, u_xlat1.w);
  u_xlat2 = (x_135 / vec4f(x_138.x_Tiling, x_138.x_Tiling, x_138.x_DetailTiling, x_138.x_DetailTiling));
  u_xlat3 = vec4f(((u_xlat2.yy * vs_TEXCOORD0.zy)).xy, u_xlat3.zw);
  let x_172 = u_xlat3;
  let x_181 = x_178.x_GlobalMipBias.x;
  let x_182 = textureSampleBias(x_RockMap, sampler_RockMap, x_172.xy, x_181);
  u_xlat3 = vec4f(x_182.xyz.xyz, u_xlat3.w);
  u_xlat4 = vec4f((((vs_TEXCOORD0.xz * u_xlat2.yy) + x_193)).xy, u_xlat4.zw);
  let x_200 = u_xlat4;
  let x_203 = x_178.x_GlobalMipBias.x;
  let x_204 = textureSampleBias(x_RockMap, sampler_RockMap, x_200.xy, x_203);
  u_xlat4 = vec4f(x_204.xyz.xyz, u_xlat4.w);
  u_xlat5 = vec4f(((u_xlat2.zw * vs_TEXCOORD0.zy)).xy, u_xlat5.zw);
  u_xlat2 = vec4f((((vs_TEXCOORD0.xy * u_xlat2.xy) + vec2f(0.70999997854232788086f))).xy, u_xlat2.zw);
  let x_229 = u_xlat2;
  let x_232 = x_178.x_GlobalMipBias.x;
  let x_233 = textureSampleBias(x_RockMap, sampler_RockMap, x_229.xy, x_232);
  u_xlat2 = vec4f(x_233.xyz.xyz, u_xlat2.w);
  u_xlat4 = vec4f(((u_xlat1.yyy * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat1.xxx) + u_xlat4.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f((((u_xlat2.xyz * u_xlat1.zzz) + u_xlat3.xyz)).xyz, u_xlat2.w);
  u_xlat55 = dot(u_xlat2.xyz, vec3f(0.30000001192092895508f, 0.58999997377395629883f, 0.10999999940395355225f));
  u_xlat3 = (vs_TEXCOORD0.xzyy * vec4f(0.02099999971687793732f, 0.02099999971687793732f, 0.01300000026822090149f, 0.20999999344348907471f));
  u_xlat2 = vec4f(((u_xlat3.zz + u_xlat3.xy)).xy, u_xlat2.zw);
  let x_291 = u_xlat2;
  let x_294 = x_178.x_GlobalMipBias.x;
  let x_295 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_291.xy, x_294);
  u_xlat2.x = x_295.x;
  u_xlat3.x = (vs_TEXCOORD0.z + vs_TEXCOORD0.x);
  u_xlat3.y = vs_TEXCOORD0.y;
  u_xlat20 = (u_xlat3.xy * vec2f(0.04500000178813934326f));
  let x_317 = u_xlat20;
  let x_319 = x_178.x_GlobalMipBias.x;
  let x_320 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_317, x_319);
  u_xlat20.x = x_320.x;
  u_xlat38 = (u_xlat2.x + -0.34999999403953552246f);
  u_xlat38 = (u_xlat38 * 2.20000004768371582031f);
  u_xlat38 = clamp(u_xlat38, 0.0f, 1.0f);
  u_xlat4 = vec4f(((-(x_138.x_RockTint.xyz) + x_138.x_RockTintB.xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((vec3f(u_xlat38) * u_xlat4.xyz) + x_138.x_RockTint.xyz)).xyz, u_xlat4.w);
  u_xlat6 = ((vec4f(u_xlat55) * vec4f(0.89999997615814208984f, 0.40000000596046447754f, 0.40000000596046447754f, 0.60000002384185791016f)) + vec4f(0.55000001192092895508f, 0.60000002384185791016f, 0.75f, 0.69999998807907104492f));
  u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat6.xxx)).xyz, u_xlat4.w);
  u_xlat38 = (u_xlat20.x * 0.40000000596046447754f);
  u_xlat39.x = ((u_xlat20.x * 1.70000004768371582031f) + vs_TEXCOORD0.y);
  u_xlat58 = max(x_138.x_Strata.y, 0.05000000074505805969f);
  u_xlat39.x = (u_xlat39.x / u_xlat58);
  u_xlat39.x = (u_xlat39.x * 6.28318548202514648438f);
  u_xlat39.x = sin(u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * x_138.x_Strata.x);
  u_xlat58 = (-(u_xlat1.y) + 1.0f);
  u_xlat39.x = ((u_xlat39.x * u_xlat58) + 1.0f);
  u_xlat4 = vec4f(((u_xlat39.xxx * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat39.x = (-(x_138.x_UnderY.x) + x_138.x_UnderY.y);
  u_xlat58 = (vs_TEXCOORD0.y + -(x_138.x_UnderY.x));
  u_xlat39.x = (1.0f / u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * u_xlat58);
  u_xlat39.x = clamp(u_xlat39.x, 0.0f, 1.0f);
  u_xlat58 = ((u_xlat39.x * -2.0f) + 3.0f);
  u_xlat39.x = (u_xlat39.x * u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * u_xlat58);
  u_xlat7 = vec4f(((u_xlat4.xyz * x_138.x_UnderColor.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f((((u_xlat7.xyz * vec3f(1.60000002384185791016f)) + -(u_xlat4.xyz))).xyz, u_xlat7.w);
  u_xlat4 = vec4f((((u_xlat39.xxx * u_xlat7.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  let x_513 = u_xlat5;
  let x_516 = x_178.x_GlobalMipBias.x;
  let x_517 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_513.xy, x_516);
  let x_518 = x_517.xyw;
  u_xlat5 = vec4f(x_518.xy, u_xlat5.z, x_518.z);
  u_xlat5.z = (u_xlat5.x * u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat5.yz * x_530) + x_533)).xy, u_xlat5.zw);
  u_xlat39.x = dot(u_xlat5.xy, u_xlat5.xy);
  u_xlat39.x = min(u_xlat39.x, 1.0f);
  u_xlat39.x = (-(u_xlat39.x) + 1.0f);
  u_xlat39.x = sqrt(u_xlat39.x);
  u_xlat39.x = max(u_xlat39.x, 0.0000000000000001f);
  u_xlat7 = ((vs_TEXCOORD0.xzxy * u_xlat2.wwww) + vec4f(0.37000000476837158203f, 0.37000000476837158203f, 0.70999997854232788086f, 0.70999997854232788086f));
  let x_572 = u_xlat7;
  let x_575 = x_178.x_GlobalMipBias.x;
  let x_576 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_572.xy, x_575);
  u_xlat8 = vec4f(x_576.xyw.xyz, u_xlat8.w);
  u_xlat8.x = (u_xlat8.x * u_xlat8.z);
  u_xlat41 = ((u_xlat8.xy * x_530) + x_533);
  u_xlat56 = dot(u_xlat41, u_xlat41);
  u_xlat56 = min(u_xlat56, 1.0f);
  u_xlat56 = (-(u_xlat56) + 1.0f);
  u_xlat56 = sqrt(u_xlat56);
  u_xlat56 = max(u_xlat56, 0.0000000000000001f);
  let x_607 = u_xlat7;
  let x_610 = x_178.x_GlobalMipBias.x;
  let x_611 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_607.zw, x_610);
  u_xlat7 = vec4f(x_611.xyw.xyz, u_xlat7.w);
  u_xlat7.x = (u_xlat7.x * u_xlat7.z);
  u_xlat7 = vec4f((((u_xlat7.xy * x_530) + x_533)).xy, u_xlat7.zw);
  u_xlat58 = dot(u_xlat7.xy, u_xlat7.xy);
  u_xlat58 = min(u_xlat58, 1.0f);
  u_xlat58 = (-(u_xlat58) + 1.0f);
  u_xlat58 = sqrt(u_xlat58);
  u_xlat58 = max(u_xlat58, 0.0000000000000001f);
  let x_647 = vec2f(x_138.x_DetailStrength, x_138.x_DetailStrength);
  u_xlat8 = vec4f(u_xlat8.x, (((u_xlat5.xy * vec2f(x_647.x, x_647.y)) + u_xlat18.yz)).xy, u_xlat8.w);
  u_xlat8.x = (u_xlat18.x * u_xlat39.x);
  let x_668 = vec2f(x_138.x_DetailStrength, x_138.x_DetailStrength);
  let x_675 = ((u_xlat41 * vec2f(x_668.x, x_668.y)) + u_xlat18.xz);
  u_xlat5 = vec4f(x_675.x, u_xlat5.y, x_675.y, u_xlat5.w);
  u_xlat5.y = (u_xlat18.y * u_xlat56);
  let x_689 = vec2f(x_138.x_DetailStrength, x_138.x_DetailStrength);
  u_xlat7 = vec4f((((u_xlat7.xy * vec2f(x_689.x, x_689.y)) + u_xlat18.xy)).xy, u_xlat7.zw);
  u_xlat7.z = (u_xlat18.z * u_xlat58);
  u_xlat5 = vec4f(((u_xlat1.yyy * u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat8.xyz * u_xlat1.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat1 = vec4f((((u_xlat7.xyz * u_xlat1.zzz) + u_xlat5.xyz)).xyz, u_xlat1.w);
  u_xlat18.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat18.x = inverseSqrt(u_xlat18.x);
  u_xlat5 = vec4f(((u_xlat18.xxx * u_xlat1.xyz)).xyz, u_xlat5.w);
  u_xlat0.x = ((vs_TEXCOORD1.y * u_xlat0.x) + -0.34999999403953552246f);
  u_xlat18.x = ((u_xlat2.x * 0.60000002384185791016f) + u_xlat38);
  u_xlat54 = (u_xlat55 + -0.44999998807907104492f);
  u_xlat18.x = ((u_xlat54 * 0.60000002384185791016f) + u_xlat18.x);
  u_xlat0.y = (u_xlat18.x + -0.34999999403953552246f);
  u_xlat0 = vec4f(((u_xlat0.xy * vec2f(2.22222232818603515625f, 3.33333349227905273438f))).xy, u_xlat0.zw);
  u_xlat0 = vec4f(clamp(u_xlat0.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat0.zw);
  u_xlat54 = ((u_xlat0.y * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat0.y * u_xlat0.y);
  u_xlat1.x = (u_xlat18.x * u_xlat54);
  u_xlat1.x = (u_xlat0.x * u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * x_138.x_MossAmount);
  u_xlat1.x = (u_xlat1.x * vs_TEXCOORD2.y);
  u_xlat19.x = (x_138.x_MossTopY + -1.5f);
  u_xlat19.x = (-(u_xlat19.x) + vs_TEXCOORD0.y);
  u_xlat19.x = (u_xlat19.x * 0.5f);
  u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
  u_xlat37 = ((u_xlat19.x * -2.0f) + 3.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat19.x);
  u_xlat19.x = (u_xlat19.x * u_xlat37);
  u_xlat1.x = (u_xlat19.x * u_xlat1.x);
  u_xlat18.x = ((u_xlat54 * u_xlat18.x) + -0.30000001192092895508f);
  u_xlat18.x = (u_xlat18.x * 3.33333325386047363281f);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat54 = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat18.x = (u_xlat18.x * u_xlat54);
  u_xlat18.x = (u_xlat18.x * u_xlat0.x);
  u_xlat18.x = (u_xlat18.x * x_138.x_MossUp);
  u_xlat18.x = max(u_xlat18.x, u_xlat1.x);
  u_xlat1 = vec4f((((vs_TEXCOORD0.xz * vec2f(0.23000000417232513428f)) + x_924)).xy, u_xlat1.zw);
  let x_931 = u_xlat1;
  let x_934 = x_178.x_GlobalMipBias.x;
  let x_935 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_931.xy, x_934);
  u_xlat54 = x_935.x;
  u_xlat1 = vec4f((((u_xlat3.xy * vec2f(0.31000000238418579102f)) + vec2f(0.20000000298023223877f))).xy, u_xlat1.zw);
  let x_950 = u_xlat1;
  let x_953 = x_178.x_GlobalMipBias.x;
  let x_954 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_950.xy, x_953);
  u_xlat1.x = x_954.x;
  u_xlat1.x = (u_xlat1.x * 0.5f);
  u_xlat54 = ((u_xlat54 * 0.5f) + u_xlat1.x);
  u_xlat54 = (u_xlat54 + -0.60000002384185791016f);
  u_xlat54 = (u_xlat54 * 7.14285802841186523438f);
  u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat54 * -2.0f) + 3.0f);
  u_xlat54 = (u_xlat54 * u_xlat54);
  u_xlat54 = (u_xlat54 * u_xlat1.x);
  u_xlat54 = (u_xlat54 * x_138.x_Lichen);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat54);
  u_xlat0.x = (u_xlat6.y * u_xlat0.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat1 = vec4f((((x_138.x_LichenColor.xyz * u_xlat6.zzz) + -(u_xlat4.xyz))).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat0.xxx * u_xlat1.xyz) + u_xlat4.xyz)).xyz, u_xlat1.w);
  u_xlat0.x = u_xlat18.x;
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  let x_1050 = ((x_138.x_MossColor.xyz * u_xlat6.www) + -(u_xlat1.xyz));
  u_xlat2 = vec4f(x_1050.x, u_xlat2.y, x_1050.yz);
  u_xlat1 = vec4f((((u_xlat0.xxx * u_xlat2.xzw) + u_xlat1.xyz)).xyz, u_xlat1.w);
  let x_1068 = ((vs_TEXCOORD0.xz * x_193) + u_xlat3.ww);
  u_xlat0 = vec4f(x_1068.x, u_xlat0.yz, x_1068.y);
  let x_1074 = u_xlat0;
  let x_1077 = x_178.x_GlobalMipBias.x;
  let x_1078 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_1074.xw, x_1077);
  u_xlat0.x = x_1078.x;
  u_xlat54 = ((vs_TEXCOORD2.z * 1.60000002384185791016f) + -0.34999999403953552246f);
  u_xlat55 = (u_xlat0.x + -0.5f);
  u_xlat54 = ((u_xlat55 * 0.89999997615814208984f) + u_xlat54);
  u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
  u_xlat36.x = ((u_xlat18.y * 1.20000004768371582031f) + 0.34999999403953552246f);
  u_xlat36.x = clamp(u_xlat36.x, 0.0f, 1.0f);
  u_xlat36.x = (u_xlat36.x * u_xlat54);
  u_xlat54 = ((u_xlat20.x * 1.60000002384185791016f) + -0.30000001192092895508f);
  u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
  u_xlat2 = vec4f(((-(x_138.x_GrassColor.xyz) + x_138.x_GrassColorB.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((vec3f(u_xlat54) * u_xlat2.xyz) + x_138.x_GrassColor.xyz)).xyz, u_xlat2.w);
  u_xlat0.x = ((u_xlat0.x * 0.40000000596046447754f) + 0.80000001192092895508f);
  u_xlat2 = vec4f((((u_xlat2.xyz * u_xlat0.xxx) + -(u_xlat1.xyz))).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((u_xlat36.xxx * u_xlat2.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat0.x = max(u_xlat36.x, u_xlat18.x);
  u_xlatb18 = (x_178.unity_OrthoParams.w == 0.0f);
  u_xlat2 = vec4f(((-(vs_TEXCOORD0) + x_178.x_WorldSpaceCameraPos)).xyz, u_xlat2.w);
  u_xlat36.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat36.x = inverseSqrt(u_xlat36.x);
  u_xlat2 = vec4f(((u_xlat36.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat3.x = x_178.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat3.y = x_178.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat3.z = x_178.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb18) {
    x_1217 = u_xlat2.xyz;
  } else {
    x_1217 = u_xlat3.xyz;
  }
  u_xlat2 = vec4f(x_1217.xyz, u_xlat2.w);
  u_xlat4 = vec4f(((vs_TEXCOORD0.yyy * x_1234.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((x_1234.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((x_1234.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f(((u_xlat4.xyz + x_1234.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat4.w);
  u_xlat5.w = 1.0f;
  u_xlat6.x = dot(x_1279.unity_SHAr, u_xlat5);
  u_xlat6.y = dot(x_1279.unity_SHAg, u_xlat5);
  u_xlat6.z = dot(x_1279.unity_SHAb, u_xlat5);
  u_xlat7 = (u_xlat5.yzzx * u_xlat5.xyzz);
  u_xlat8.x = dot(x_1279.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_1279.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_1279.unity_SHBb, u_xlat7);
  u_xlat36.x = (u_xlat5.y * u_xlat5.y);
  u_xlat36.x = ((u_xlat5.x * u_xlat5.x) + -(u_xlat36.x));
  u_xlat7 = vec4f((((x_1279.unity_SHC.xyz * u_xlat36.xxx) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_1356 = x_178.x_ScaledScreenParams.xy;
  u_xlat36 = (x_1353 / vec2f(x_1356.x, x_1356.y));
  u_xlat7 = vec4f(((u_xlat36 * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat36.x = ((u_xlat7.y * x_178.x_ScaleBiasRt.x) + x_178.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat36.x) + 1.0f);
  u_xlat0.x = ((-(u_xlat0.x) * 0.60000002384185791016f) + 1.0f);
  u_xlat36.x = (vs_TEXCOORD2.x + -1.0f);
  u_xlat36.x = ((x_138.x_AOStrength * u_xlat36.x) + 1.0f);
  u_xlat8 = vec4f(((u_xlat1.xyz * vec3f(0.95999997854232788086f))).xyz, u_xlat8.w);
  u_xlat54 = ((-(x_138.x_Smoothness) * u_xlat0.x) + 1.0f);
  u_xlat55 = (u_xlat54 * u_xlat54);
  u_xlat55 = max(u_xlat55, 0.0078125f);
  u_xlat56 = (u_xlat55 * u_xlat55);
  u_xlat0.x = ((x_138.x_Smoothness * u_xlat0.x) + 0.04000002145767211914f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat57 = ((u_xlat55 * 4.0f) + 2.0f);
  let x_1443 = u_xlat7;
  let x_1446 = x_178.x_GlobalMipBias.x;
  let x_1447 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_1443.xz, x_1446);
  u_xlat58 = x_1447.x;
  u_xlat58 = (u_xlat58 + -(x_178.x_AmbientOcclusionParam.x));
  u_xlat58 = (u_xlat58 + 1.0f);
  u_xlat58 = clamp(u_xlat58, 0.0f, 1.0f);
  u_xlat59 = (u_xlat58 + -1.0f);
  u_xlat59 = ((x_178.x_AmbientOcclusionParam.w * u_xlat59) + 1.0f);
  u_xlat36.x = min(u_xlat36.x, u_xlat58);
  let x_1473 = u_xlat4.xy;
  txVec0 = vec3f(x_1473.x, x_1473.y, u_xlat4.z);
  u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat22.x = (-(x_1234.x_MainLightShadowParams.x) + 1.0f);
  u_xlat4.x = ((u_xlat4.x * x_1234.x_MainLightShadowParams.x) + u_xlat22.x);
  u_xlatb22 = (0.0f >= u_xlat4.z);
  u_xlatb40 = (u_xlat4.z >= 1.0f);
  u_xlatb22 = (u_xlatb40 | u_xlatb22);
  if (u_xlatb22) {
    x_1518 = 1.0f;
  } else {
    x_1518 = u_xlat4.x;
  }
  u_xlat4.x = x_1518;
  u_xlat22 = (vs_TEXCOORD0 + -(x_178.x_WorldSpaceCameraPos));
  u_xlat60 = dot(u_xlat22, u_xlat22);
  u_xlat25 = ((u_xlat60 * x_1234.x_MainLightShadowParams.z) + x_1234.x_MainLightShadowParams.w);
  u_xlat25 = clamp(u_xlat25, 0.0f, 1.0f);
  u_xlat61 = (-(u_xlat4.x) + 1.0f);
  u_xlat4.x = ((u_xlat25 * u_xlat61) + u_xlat4.x);
  u_xlat9 = vec4f(((vec3f(u_xlat59) * x_178.x_MainLightColor.xyz)).xyz, u_xlat9.w);
  u_xlat25 = dot(-(u_xlat2.xyz), u_xlat5.xyz);
  u_xlat25 = (u_xlat25 + u_xlat25);
  u_xlat10 = vec4f((((u_xlat5.xyz * -(vec3f(u_xlat25))) + -(u_xlat2.xyz))).xyz, u_xlat10.w);
  u_xlat25 = dot(u_xlat5.xyz, u_xlat2.xyz);
  u_xlat25 = clamp(u_xlat25, 0.0f, 1.0f);
  u_xlat25 = (-(u_xlat25) + 1.0f);
  u_xlat61 = (u_xlat25 * u_xlat25);
  u_xlat61 = (u_xlat61 * u_xlat61);
  u_xlat62 = ((-(u_xlat54) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat54 = (u_xlat54 * u_xlat62);
  u_xlat54 = (u_xlat54 * 6.0f);
  let x_1620 = (u_xlat7.xz * x_178.x_FPParams1.xy);
  u_xlat7 = vec4f(x_1620.x, u_xlat7.y, x_1620.y, u_xlat7.w);
  let x_1629 = vec2u(u_xlat7.xz);
  u_xlatu7 = vec3u(x_1629.x, u_xlatu7.y, x_1629.y);
  u_xlatu11 = vec2u(x_178.x_FPParams1.zw);
  u_xlati7 = ((bitcast<i32>(u_xlatu7.z) * bitcast<i32>(u_xlatu11.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu7.x = (u_xlatu11.y * bitcast<u32>(u_xlati7));
  u_xlat3.x = dot(-(u_xlat3.xyz), u_xlat22);
  u_xlat21.x = log2(u_xlat3.x);
  if (u_xlatb18) {
    x_1668 = u_xlat21.x;
  } else {
    x_1668 = u_xlat3.x;
  }
  u_xlat18.x = x_1668;
  u_xlat18.x = ((u_xlat18.x * x_178.x_FPParams0.x) + x_178.x_FPParams0.y);
  u_xlatu18 = u32(u_xlat18.x);
  u_xlatu3.x = u32(x_178.x_FPParams2.x);
  u_xlatu3.x = (u_xlatu3.x + 4294967295u);
  u_xlati21 = (bitcast<i32>(u_xlatu11.y) + 2i);
  u_xlatu18 = min(u_xlatu18, u_xlatu3.x);
  u_xlatu3.x = (bitcast<u32>(u_xlati21) * u_xlatu18);
  u_xlatu21 = ((vec2u(u_xlatu18) * vec2u(bitcast<u32>(u_xlati21))) + vec2u(1u, 2u));
  u_xlatu18 = (u_xlatu21.x >> 2u);
  param = bitcast<i32>(u_xlatu21.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_1736 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu21.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_1743 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati11 = vec3i(vec2i(x_1736, x_1743).xy, u_xlati11.z);
  u_xlati47 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_1757.urp_ZBins[bitcast<i32>(u_xlatu18)].wy)));
  u_xlati12 = vec3i((~(u_xlati11.xy)).xy, u_xlati12.z);
  let x_1782 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_1757.urp_ZBins[bitcast<i32>(u_xlatu18)].zx)));
  u_xlati12 = vec3i(x_1782.x, u_xlati12.y, x_1782.y);
  let x_1791 = bitcast<vec2i>((bitcast<vec2u>(u_xlati47) | bitcast<vec2u>(u_xlati12.xz)));
  u_xlati11 = vec3i(x_1791.x, u_xlati11.y, x_1791.y);
  u_xlati18 = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati11.x)));
  u_xlati21 = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.z)));
  u_xlatu18 = (bitcast<u32>(u_xlati18) | bitcast<u32>(u_xlati21));
  u_xlatu11 = vec2u(x_178.x_FPParams0.zw);
  u_xlat21.x = dot(abs(u_xlat10.xyz), x_1823);
  u_xlat21.x = max(u_xlat21.x, 0.00000099999999747524f);
  u_xlat21.x = (1.0f / u_xlat21.x);
  u_xlat12 = (u_xlat21.xxx * u_xlat10.zxy);
  u_xlat12.x = -(u_xlat12.x);
  u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
  u_xlatb47 = ((u_xlat12.yzyz >= vec4f())).xy;
  if (u_xlatb47.x) {
    x_1861 = u_xlat12.x;
  } else {
    x_1861 = -(u_xlat12.x);
  }
  u_xlat47.x = x_1861;
  if (u_xlatb47.y) {
    x_1874 = u_xlat12.x;
  } else {
    x_1874 = -(u_xlat12.x);
  }
  u_xlat47.y = x_1874;
  u_xlat47 = ((u_xlat10.xy * u_xlat21.xx) + u_xlat47);
  u_xlat47 = ((u_xlat47 * x_924) + x_924);
  u_xlat47 = clamp(u_xlat47, vec2f(0.0f), vec2f(1.0f));
  u_xlatu12.x = u_xlatu7.x;
  u_xlatu12.y = u_xlatu21.y;
  u_xlati48 = 0i;
  u_xlatu66 = u_xlatu18;
  u_xlat13.x = 0.0f;
  u_xlat13.y = 0.0f;
  u_xlat13.z = 0.0f;
  u_xlat21.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu40 = (u_xlatu66 >> 16u);
    u_xlati43.x = u_xlati48;
    u_xlatu62 = u_xlatu66;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb63 = (u_xlati43.x == 0i);
      u_xlatu64 = (u_xlatu62 & 65535u);
      u_xlatb64 = (u_xlatu40 >= u_xlatu64);
      u_xlatb63 = (u_xlatb63 & u_xlatb64);
      if (!(u_xlatb63)) {
        break;
      }
      param_6 = u_xlatu62;
      param_7 = 5i;
      param_8 = 11i;
      let x_1959 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu63 = x_1959;
      u_xlatu14 = (vec4u(u_xlatu63) + u_xlatu12.xxyy);
      u_xlatu15 = (u_xlatu14.yw >> x_1971);
      param_9 = bitcast<i32>(u_xlatu14.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_1982 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu14.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_1989 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu14.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_1996 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu14.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2003 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati14 = vec4i(x_1982, x_1989, x_1996, x_2003);
      u_xlati51 = bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_2012.urp_Tiles[bitcast<i32>(u_xlatu15.x)].wy)));
      u_xlati16 = ~(u_xlati14);
      u_xlati17 = bitcast<vec2i>((bitcast<vec2u>(u_xlati16.xx) & bitcast<vec2u>(x_2012.urp_Tiles[bitcast<i32>(u_xlatu15.x)].zx)));
      let x_2044 = bitcast<vec2i>((bitcast<vec2u>(u_xlati51) | bitcast<vec2u>(u_xlati17)));
      u_xlati15 = vec4i(x_2044.x, u_xlati15.y, x_2044.y, u_xlati15.w);
      u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati15.x)));
      u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati16.y) & bitcast<u32>(u_xlati15.z)));
      u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati64) | bitcast<u32>(u_xlati67)));
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_1757.urp_ZBins[bitcast<i32>(u_xlatu15.y)].wy))).xy, u_xlati14.zw);
      u_xlati15 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati16.zz) & bitcast<vec2u>(x_1757.urp_ZBins[bitcast<i32>(u_xlatu15.y)].zx))).xy, u_xlati15.zw);
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xy) | bitcast<vec2u>(u_xlati15.xy))).xy, u_xlati14.zw);
      u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati14.x)));
      u_xlati14.x = bitcast<i32>((bitcast<u32>(u_xlati16.w) & bitcast<u32>(u_xlati14.y)));
      u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati67) | bitcast<u32>(u_xlati14.x)));
      u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati64) & bitcast<u32>(u_xlati67)));
      u_xlati67 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu62) & 31i)));
      u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati64) & bitcast<u32>(u_xlati67)));
      u_xlati63 = (bitcast<i32>(u_xlatu63) << bitcast<u32>(5i));
      u_xlatu63 = (u_xlatu40 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati63)))));
      u_xlatu63 = min(u_xlatu63, 31u);
      u_xlatu63 = (bitcast<u32>(-(bitcast<i32>(u_xlatu63))) + 31u);
      u_xlatu63 = (4294967295u >> (u_xlatu63 & 31u));
      u_xlati43.x = bitcast<i32>((u_xlatu63 & bitcast<u32>(u_xlati64)));
      u_xlati63 = (bitcast<i32>(u_xlatu62) + 32i);
      u_xlatu62 = (bitcast<u32>(u_xlati63) & 4294967264u);
    }
    u_xlatu66 = u_xlatu62;
    u_xlatb40 = (u_xlati43.x != 0i);
    u_xlatb63 = (u_xlat21.x < 0.99000000953674316406f);
    u_xlatb40 = (u_xlatb40 & u_xlatb63);
    if (!(u_xlatb40)) {
      break;
    }
    u_xlati40 = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati43.x)));
    u_xlati63 = (1i << bitcast<u32>((u_xlati40 & 31i)));
    u_xlati48 = bitcast<i32>((bitcast<u32>(u_xlati43.x) ^ bitcast<u32>(u_xlati63)));
    u_xlati63 = (bitcast<i32>(u_xlatu66) + -32i);
    u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati63) & 65504u));
    u_xlati40 = (u_xlati40 + u_xlati63);
    u_xlati40 = (-(bitcast<i32>(u_xlatu11.x)) + u_xlati40);
    u_xlat14 = (vs_TEXCOORD0 + -(x_2241.urp_ReflProbes_BoxMin[u_xlati40].xyz));
    u_xlat15 = (-(vs_TEXCOORD0) + x_2241.urp_ReflProbes_BoxMax[u_xlati40].xyz);
    u_xlat14 = min(u_xlat14, u_xlat15);
    u_xlat14 = (u_xlat14 / x_2241.urp_ReflProbes_BoxMax[u_xlati40].www);
    u_xlat63 = min(u_xlat14.z, u_xlat14.y);
    u_xlat63 = min(u_xlat63, u_xlat14.x);
    u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
    u_xlat64 = (-(u_xlat21.x) + 1.0f);
    u_xlat63 = min(u_xlat63, u_xlat64);
    u_xlatu64 = u32(abs(x_2241.urp_ReflProbes_ProbePosition[u_xlati40].w));
    u_xlatu64 = (u_xlatu64 + 4294967295u);
    u_xlat64 = f32(u_xlatu64);
    u_xlat64 = min(u_xlat54, u_xlat64);
    u_xlat67 = floor(u_xlat64);
    u_xlat14.x = (u_xlat67 + 1.0f);
    u_xlat64 = (u_xlat64 + -(u_xlat67));
    u_xlatu67 = u32(u_xlat67);
    u_xlati67 = ((u_xlati40 * 7i) + bitcast<i32>(u_xlatu67));
    u_xlatu14.x = u32(u_xlat14.x);
    u_xlati40 = ((u_xlati40 * 7i) + bitcast<i32>(u_xlatu14.x));
    u_xlat14 = vec3f((((u_xlat47 * x_2241.urp_ReflProbes_MipScaleOffset[u_xlati67].xy) + x_2241.urp_ReflProbes_MipScaleOffset[u_xlati67].zw)).xy, u_xlat14.z);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat14.xy, 0.0f).xyz;
    u_xlat15 = vec3f((((u_xlat47 * x_2241.urp_ReflProbes_MipScaleOffset[u_xlati40].xy) + x_2241.urp_ReflProbes_MipScaleOffset[u_xlati40].zw)).xy, u_xlat15.z);
    u_xlat15 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat15.xy, 0.0f).xyz;
    u_xlat15 = (-(u_xlat14) + u_xlat15);
    u_xlat14 = ((vec3f(u_xlat64) * u_xlat15) + u_xlat14);
    u_xlat13 = ((vec3f(u_xlat63) * u_xlat14) + u_xlat13);
    u_xlat21.x = (u_xlat21.x + u_xlat63);
  }
  u_xlatb18 = (u_xlat21.x < 0.99000000953674316406f);
  if (u_xlatb18) {
    u_xlat10 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xyz, u_xlat54);
    u_xlat18.x = (-(u_xlat21.x) + 1.0f);
    u_xlat54 = (u_xlat10.w + -1.0f);
    u_xlat54 = ((x_178.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat54) + 1.0f);
    u_xlat54 = max(u_xlat54, 0.0f);
    u_xlat54 = log2(u_xlat54);
    u_xlat54 = (u_xlat54 * x_178.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat54 = exp2(u_xlat54);
    u_xlat54 = (u_xlat54 * x_178.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat10 = vec4f(((u_xlat10.xyz * vec3f(u_xlat54))).xyz, u_xlat10.w);
    u_xlat13 = ((u_xlat18.xxx * u_xlat10.xyz) + u_xlat13);
  }
  let x_2452 = ((vec2f(u_xlat55) * vec2f(u_xlat55)) + vec2f(-1.0f, 1.0f));
  u_xlat18 = vec3f(x_2452.x, u_xlat18.y, x_2452.y);
  u_xlat54 = (1.0f / u_xlat18.z);
  u_xlat0.x = (u_xlat0.x + -0.03999999910593032837f);
  u_xlat0.x = ((u_xlat61 * u_xlat0.x) + 0.03999999910593032837f);
  u_xlat0.x = (u_xlat0.x * u_xlat54);
  u_xlat10 = vec4f(((u_xlat0.xxx * u_xlat13)).xyz, u_xlat10.w);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat8.xyz) + u_xlat10.xyz)).xyz, u_xlat6.w);
  u_xlat0.x = dot(u_xlat5.xyz, x_178.x_MainLightPosition.xyz);
  u_xlat54 = u_xlat0.x;
  u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
  u_xlat54 = (u_xlat54 * u_xlat4.x);
  u_xlat9 = vec4f(((vec3f(u_xlat54) * u_xlat9.xyz)).xyz, u_xlat9.w);
  u_xlat10 = vec4f(((u_xlat2.xyz + x_178.x_MainLightPosition.xyz)).xyz, u_xlat10.w);
  u_xlat54 = dot(u_xlat10.xyz, u_xlat10.xyz);
  u_xlat54 = max(u_xlat54, 1.17549435e-38f);
  u_xlat54 = inverseSqrt(u_xlat54);
  u_xlat10 = vec4f(((vec3f(u_xlat54) * u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat54 = dot(u_xlat5.xyz, u_xlat10.xyz);
  u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
  u_xlat55 = dot(x_178.x_MainLightPosition.xyz, u_xlat10.xyz);
  u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
  u_xlat54 = (u_xlat54 * u_xlat54);
  u_xlat54 = ((u_xlat54 * u_xlat18.x) + 1.00001001358032226562f);
  u_xlat55 = (u_xlat55 * u_xlat55);
  u_xlat54 = (u_xlat54 * u_xlat54);
  u_xlat55 = max(u_xlat55, 0.10000000149011611938f);
  u_xlat54 = (u_xlat54 * u_xlat55);
  u_xlat54 = (u_xlat57 * u_xlat54);
  u_xlat54 = (u_xlat56 / u_xlat54);
  u_xlat10 = vec4f((((vec3f(u_xlat54) * x_2582) + u_xlat8.xyz)).xyz, u_xlat10.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * u_xlat10.xyz)).xyz, u_xlat9.w);
  u_xlatu54 = min(u_xlatu11.y, 32u);
  u_xlat10.x = 0.0f;
  u_xlat10.y = 0.0f;
  u_xlat10.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu54)) {
    } else {
      break;
    }
    let x_2635 = ((-(vs_TEXCOORD0) * x_2623.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_2623.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat11 = vec4f(x_2635.x, u_xlat11.y, x_2635.yz);
    u_xlat21.x = dot(u_xlat11.xzw, u_xlat11.xzw);
    u_xlat21.x = max(u_xlat21.x, 0.00006103515625f);
    u_xlat4.x = inverseSqrt(u_xlat21.x);
    u_xlat12 = (u_xlat4.xxx * u_xlat11.xzw);
    u_xlat40.x = (1.0f / u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * x_2623.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat21.x = ((-(u_xlat21.x) * u_xlat21.x) + 1.0f);
    u_xlat21.x = max(u_xlat21.x, 0.0f);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * u_xlat40.x);
    u_xlat40.x = dot(x_2623.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat12);
    u_xlat40.x = ((u_xlat40.x * x_2623.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_2623.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
    u_xlat40.x = (u_xlat40.x * u_xlat40.x);
    u_xlat21.x = (u_xlat21.x * u_xlat40.x);
    u_xlat13 = (vec3f(u_xlat59) * x_2623.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat40.x = dot(u_xlat5.xyz, u_xlat12);
    u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
    u_xlat21.x = (u_xlat21.x * u_xlat40.x);
    u_xlat13 = (u_xlat21.xxx * u_xlat13);
    let x_2766 = ((u_xlat11.xzw * u_xlat4.xxx) + u_xlat2.xyz);
    u_xlat11 = vec4f(x_2766.x, u_xlat11.y, x_2766.yz);
    u_xlat21.x = dot(u_xlat11.xzw, u_xlat11.xzw);
    u_xlat21.x = max(u_xlat21.x, 1.17549435e-38f);
    u_xlat21.x = inverseSqrt(u_xlat21.x);
    let x_2787 = (u_xlat21.xxx * u_xlat11.xzw);
    u_xlat11 = vec4f(x_2787.x, u_xlat11.y, x_2787.yz);
    u_xlat21.x = dot(u_xlat5.xyz, u_xlat11.xzw);
    u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
    u_xlat4.x = dot(u_xlat12, u_xlat11.xzw);
    u_xlat4.x = clamp(u_xlat4.x, 0.0f, 1.0f);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat21.x = ((u_xlat21.x * u_xlat18.x) + 1.00001001358032226562f);
    u_xlat4.x = (u_xlat4.x * u_xlat4.x);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat4.x = max(u_xlat4.x, 0.10000000149011611938f);
    u_xlat21.x = (u_xlat21.x * u_xlat4.x);
    u_xlat21.x = (u_xlat57 * u_xlat21.x);
    u_xlat21.x = (u_xlat56 / u_xlat21.x);
    let x_2859 = ((u_xlat21.xxx * x_2582) + u_xlat8.xyz);
    u_xlat11 = vec4f(x_2859.x, u_xlat11.y, x_2859.yz);
    u_xlat10 = vec4f((((u_xlat11.xzw * u_xlat13) + u_xlat10.xyz)).xyz, u_xlat10.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu54 = (u_xlatu3.x >> 2u);
  param_21 = bitcast<i32>(u_xlatu3.x);
  param_22 = 0i;
  param_23 = 1i;
  let x_2883 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu3.x);
  param_25 = 1i;
  param_26 = 1i;
  let x_2890 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati3 = vec2i(x_2883, x_2890);
  let x_2903 = bitcast<vec2i>((bitcast<vec2u>(u_xlati3.xx) & bitcast<vec2u>(x_1757.urp_ZBins[bitcast<i32>(u_xlatu54)].wy)));
  u_xlati4 = vec3i(x_2903.x, u_xlati4.y, x_2903.y);
  u_xlati43 = ~(u_xlati3);
  let x_2918 = bitcast<vec2i>((bitcast<vec2u>(u_xlati43.xx) & bitcast<vec2u>(x_1757.urp_ZBins[bitcast<i32>(u_xlatu54)].zx)));
  u_xlati11 = vec3i(x_2918.x, u_xlati11.y, x_2918.y);
  let x_2928 = bitcast<vec2i>((bitcast<vec2u>(u_xlati4.xz) | bitcast<vec2u>(u_xlati11.xz)));
  u_xlati4 = vec3i(x_2928.x, u_xlati4.y, x_2928.y);
  u_xlati54 = bitcast<i32>((bitcast<u32>(u_xlati3.y) & bitcast<u32>(u_xlati4.x)));
  u_xlati55 = bitcast<i32>((bitcast<u32>(u_xlati43.y) & bitcast<u32>(u_xlati4.z)));
  u_xlatu54 = (bitcast<u32>(u_xlati54) | bitcast<u32>(u_xlati55));
  u_xlatu12.x = u_xlatu7.x;
  u_xlatu12.y = u_xlatu21.y;
  u_xlatu48.x = 0u;
  u_xlatu48.y = u_xlatu54;
  let x_2965 = u_xlat10.xyz;
  u_xlat11 = vec4f(x_2965.x, u_xlat11.y, x_2965.yz);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu55 = (u_xlatu48.y >> 16u);
    u_xlatu3 = u_xlatu48;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb4 = (bitcast<i32>(u_xlatu3.x) == 0i);
      u_xlatu40 = (u_xlatu3.y & 65535u);
      u_xlatb40 = (u_xlatu55 >= u_xlatu40);
      u_xlatb4 = (u_xlatb40 & u_xlatb4);
      if (!(u_xlatb4)) {
        break;
      }
      param_27 = u_xlatu3.y;
      param_28 = 5i;
      param_29 = 11i;
      let x_3008 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu4 = x_3008;
      u_xlatu13 = (vec4u(u_xlatu4) + u_xlatu12.xxyy);
      u_xlatu43 = (u_xlatu13.yw >> x_1971);
      param_30 = bitcast<i32>(u_xlatu13.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_3026 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu13.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_3033 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu13.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_3040 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu13.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_3047 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati13 = vec4i(x_3026, x_3033, x_3040, x_3047);
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2012.urp_Tiles[bitcast<i32>(u_xlatu43.x)].wy))).xy, u_xlati14.zw);
      u_xlati15 = ~(u_xlati13);
      u_xlati50 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2012.urp_Tiles[bitcast<i32>(u_xlatu43.x)].zx)));
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati50) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati14.zw);
      u_xlati40 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati43.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.y)));
      u_xlati40 = bitcast<i32>((bitcast<u32>(u_xlati40) | bitcast<u32>(u_xlati43.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_1757.urp_ZBins[bitcast<i32>(u_xlatu43.y)].wy))).xy, u_xlati13.zw);
      u_xlati43 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_1757.urp_ZBins[bitcast<i32>(u_xlatu43.y)].zx)));
      u_xlati43 = bitcast<vec2i>((bitcast<vec2u>(u_xlati43) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati43.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati43.x)));
      u_xlati61 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati43.y)));
      u_xlati43.x = bitcast<i32>((bitcast<u32>(u_xlati61) | bitcast<u32>(u_xlati43.x)));
      u_xlati40 = bitcast<i32>((bitcast<u32>(u_xlati40) & bitcast<u32>(u_xlati43.x)));
      u_xlati43.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu3.y) & 31i)));
      u_xlati40 = bitcast<i32>((bitcast<u32>(u_xlati40) & bitcast<u32>(u_xlati43.x)));
      u_xlati4.x = (bitcast<i32>(u_xlatu4) << bitcast<u32>(5i));
      u_xlatu4 = (u_xlatu55 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati4.x)))));
      u_xlatu4 = min(u_xlatu4, 31u);
      u_xlatu4 = (bitcast<u32>(-(bitcast<i32>(u_xlatu4))) + 31u);
      u_xlatu4 = (4294967295u >> (u_xlatu4 & 31u));
      u_xlatu3.x = (u_xlatu4 & bitcast<u32>(u_xlati40));
      u_xlati4.x = (bitcast<i32>(u_xlatu3.y) + 32i);
      u_xlatu3.y = (bitcast<u32>(u_xlati4.x) & 4294967264u);
    }
    u_xlatu48.y = u_xlatu3.y;
    if ((u_xlatu3.x == 0u)) {
      break;
    }
    u_xlati55 = bitcast<i32>(firstTrailingBit(u_xlatu3.x));
    u_xlati4.x = (1i << bitcast<u32>((u_xlati55 & 31i)));
    u_xlatu48.x = (u_xlatu3.x ^ bitcast<u32>(u_xlati4.x));
    u_xlati4.x = (bitcast<i32>(u_xlatu48.y) + -32i);
    u_xlati4.x = bitcast<i32>((bitcast<u32>(u_xlati4.x) & 65504u));
    u_xlati55 = (u_xlati55 + u_xlati4.x);
    u_xlati55 = (bitcast<i32>(u_xlatu11.y) + u_xlati55);
    u_xlat13 = ((-(vs_TEXCOORD0) * x_2623.x_AdditionalLightsPosition[u_xlati55].www) + x_2623.x_AdditionalLightsPosition[u_xlati55].xyz);
    u_xlat4.x = dot(u_xlat13, u_xlat13);
    u_xlat4.x = max(u_xlat4.x, 0.00006103515625f);
    u_xlat40.x = inverseSqrt(u_xlat4.x);
    u_xlat14 = (u_xlat40.xxx * u_xlat13);
    u_xlat43 = (1.0f / u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * x_2623.x_AdditionalLightsAttenuation[u_xlati55].x);
    u_xlat4.x = ((-(u_xlat4.x) * u_xlat4.x) + 1.0f);
    u_xlat4.x = max(u_xlat4.x, 0.0f);
    u_xlat4.x = (u_xlat4.x * u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat43);
    u_xlat43 = dot(x_2623.x_AdditionalLightsSpotDir[u_xlati55].xyz, u_xlat14);
    u_xlat43 = ((u_xlat43 * x_2623.x_AdditionalLightsAttenuation[u_xlati55].z) + x_2623.x_AdditionalLightsAttenuation[u_xlati55].w);
    u_xlat43 = clamp(u_xlat43, 0.0f, 1.0f);
    u_xlat43 = (u_xlat43 * u_xlat43);
    u_xlat4.x = (u_xlat4.x * u_xlat43);
    u_xlat15 = (vec3f(u_xlat59) * x_2623.x_AdditionalLightsColor[u_xlati55].xyz);
    u_xlat55 = dot(u_xlat5.xyz, u_xlat14);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat55 = (u_xlat55 * u_xlat4.x);
    u_xlat15 = (vec3f(u_xlat55) * u_xlat15);
    u_xlat13 = ((u_xlat13 * u_xlat40.xxx) + u_xlat2.xyz);
    u_xlat55 = dot(u_xlat13, u_xlat13);
    u_xlat55 = max(u_xlat55, 1.17549435e-38f);
    u_xlat55 = inverseSqrt(u_xlat55);
    u_xlat13 = (vec3f(u_xlat55) * u_xlat13);
    u_xlat55 = dot(u_xlat5.xyz, u_xlat13);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat4.x = dot(u_xlat14, u_xlat13);
    u_xlat4.x = clamp(u_xlat4.x, 0.0f, 1.0f);
    u_xlat55 = (u_xlat55 * u_xlat55);
    u_xlat55 = ((u_xlat55 * u_xlat18.x) + 1.00001001358032226562f);
    u_xlat4.x = (u_xlat4.x * u_xlat4.x);
    u_xlat55 = (u_xlat55 * u_xlat55);
    u_xlat4.x = max(u_xlat4.x, 0.10000000149011611938f);
    u_xlat55 = (u_xlat55 * u_xlat4.x);
    u_xlat55 = (u_xlat57 * u_xlat55);
    u_xlat55 = (u_xlat56 / u_xlat55);
    u_xlat13 = ((vec3f(u_xlat55) * x_2582) + u_xlat8.xyz);
    let x_3448 = ((u_xlat13 * u_xlat15) + u_xlat11.xzw);
    u_xlat11 = vec4f(x_3448.x, u_xlat11.y, x_3448.yz);
  }
  u_xlat18 = ((u_xlat6.xyz * u_xlat36.xxx) + u_xlat9.xyz);
  u_xlat18 = (u_xlat11.xzw + u_xlat18);
  u_xlatb55 = (0.0f < x_138.x_CloudMist.x);
  u_xlatb56 = (0.5f < x_178.x_B612CloudSeaParams.w);
  u_xlatb55 = (u_xlatb55 & u_xlatb56);
  if (u_xlatb55) {
    u_xlat55 = (x_178.x_Time.y * x_178.x_B612CloudSeaParams.z);
    u_xlat55 = (u_xlat55 * 0.01745329238474369049f);
    u_xlat3.x = sin(u_xlat55);
    u_xlat4.x = cos(u_xlat55);
    u_xlat21 = vec3f(((vs_TEXCOORD0.zx + -(x_178.x_B612CloudSeaCentre.yx))).xy, u_xlat21.z);
    let x_3507 = (u_xlat3.xx * u_xlat21.xy);
    u_xlat3 = vec4f(x_3507.x, u_xlat3.yz, x_3507.y);
    u_xlat5.x = ((u_xlat21.y * u_xlat4.x) + -(u_xlat3.x));
    u_xlat5.y = ((u_xlat21.x * u_xlat4.x) + u_xlat3.w);
    u_xlat55 = max(x_178.x_B612CloudSeaParams.y, 1.0f);
    u_xlat3 = vec4f(((u_xlat5.xy / vec2f(u_xlat55))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + x_924)).xy, u_xlat3.zw);
    u_xlat55 = textureSampleLevel(x_B612CloudSeaNear, sampler_LinearClamp, u_xlat3.xy, 1.0f).x;
    u_xlat55 = (u_xlat55 + x_178.x_B612CloudSeaParams.x);
    u_xlat55 = (-(u_xlat55) + vs_TEXCOORD0.y);
    u_xlat56 = max(x_138.x_CloudMist.y, 0.10000000149011611938f);
    u_xlat55 = (u_xlat55 / u_xlat56);
    u_xlat55 = (-(u_xlat55) + 1.0f);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat55 = (u_xlat55 * x_138.x_CloudMist.x);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat56 = (x_178.x_MainLightPosition.y + 0.34999999403953552246f);
    u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
    u_xlat3 = vec4f(((vec3f(u_xlat56) * x_178.x_MainLightColor.xyz)).xyz, u_xlat3.w);
    u_xlat5 = vec4f(((u_xlat3.xyz * x_3593)).xyz, u_xlat5.w);
    u_xlat56 = dot(u_xlat5.xyz, x_3602);
    u_xlat3 = vec4f((((u_xlat3.xyz * x_3593) + -(vec3f(u_xlat56)))).xyz, u_xlat3.w);
    u_xlat3 = vec4f((((u_xlat3.xyz * x_3593) + vec3f(u_xlat56))).xyz, u_xlat3.w);
    u_xlat5.x = dot(x_1279.unity_SHAr.yw, x_1353);
    u_xlat5.y = dot(x_1279.unity_SHAg.yw, x_1353);
    u_xlat5.z = dot(x_1279.unity_SHAb.yw, x_1353);
    u_xlat5 = vec4f(((u_xlat5.xyz + -(x_1279.unity_SHC.xyz))).xyz, u_xlat5.w);
    u_xlat3 = vec4f((((u_xlat5.xyz * vec3f(0.75f)) + u_xlat3.xyz)).xyz, u_xlat3.w);
    u_xlat3 = vec4f((((u_xlat3.xyz * vec3f(0.85000002384185791016f)) + -(u_xlat18))).xyz, u_xlat3.w);
    u_xlat18 = ((vec3f(u_xlat55) * u_xlat3.xyz) + u_xlat18);
  }
  u_xlatb3 = ((vec4f() < vec4f(x_138.x_SkyFill, x_138.x_HazeDensity, x_138.x_SkyFill, x_138.x_SkyFill))).xy;
  u_xlatb55 = (0.0f < x_138.x_RimLight.x);
  u_xlatb55 = (u_xlatb55 | u_xlatb3.x);
  if (u_xlatb55) {
    let x_3700 = (-(u_xlat2.xz) + x_3699);
    u_xlat3 = vec4f(x_3700.x, u_xlat3.y, x_3700.y, u_xlat3.w);
    u_xlat55 = dot(u_xlat3.xz, u_xlat3.xz);
    u_xlat55 = inverseSqrt(u_xlat55);
    u_xlat5 = vec4f(((vec2f(u_xlat55) * u_xlat3.xz)).xy, u_xlat5.zw);
    u_xlatb55 = (1.5f < x_178.x_B612HdriParams.x);
    if (u_xlatb55) {
      u_xlat5.z = 0.02600000053644180298f;
      u_xlat55 = dot(u_xlat5.xyz, u_xlat5.xyz);
      u_xlat55 = inverseSqrt(u_xlat55);
      let x_3738 = (vec3f(u_xlat55) * u_xlat5.xzy);
      u_xlat3 = vec4f(x_3738.x, u_xlat3.y, x_3738.yz);
      u_xlat56 = dot(u_xlat3.xzw, x_178.x_B612SunDirection.xyz);
      u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
      u_xlat3.x = ((-(u_xlat5.z) * u_xlat55) + 1.0f);
      u_xlat57 = sqrt(u_xlat3.x);
      u_xlat4.x = ((u_xlat55 * -0.00048696179874241352f) + 0.07426100224256515503f);
      u_xlat4.x = ((u_xlat4.x * u_xlat3.z) + -0.21211439371109008789f);
      u_xlat4.x = ((u_xlat4.x * u_xlat3.z) + 1.57072877883911132812f);
      u_xlat57 = ((-(u_xlat4.x) * u_xlat57) + 1.57079637050628662109f);
      u_xlat4.x = (u_xlat57 * 57.295780181884765625f);
      u_xlat6 = vec4f((((u_xlat5.xy * vec2f(u_xlat55)) + x_3699)).xy, u_xlat6.zw);
      u_xlat55 = dot(u_xlat6.xy, u_xlat6.xy);
      u_xlat55 = inverseSqrt(u_xlat55);
      u_xlat6 = vec4f(((vec2f(u_xlat55) * u_xlat6.xy)).xy, u_xlat6.zw);
      let x_3818 = (x_178.x_B612SunDirection.xz + x_3699);
      u_xlat7 = vec4f(x_3818.x, u_xlat7.y, x_3818.y, u_xlat7.w);
      u_xlat55 = dot(u_xlat7.xz, u_xlat7.xz);
      u_xlat55 = inverseSqrt(u_xlat55);
      let x_3832 = (vec2f(u_xlat55) * u_xlat7.xz);
      u_xlat7 = vec4f(x_3832.x, u_xlat7.y, x_3832.y, u_xlat7.w);
      u_xlat55 = dot(u_xlat6.xy, u_xlat7.xz);
      u_xlat55 = ((u_xlat55 * 0.5f) + 0.5f);
      u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
      u_xlat6 = vec4f(max(x_178.x_B612SkyParams.yw, x_3849).xy, u_xlat6.zw);
      u_xlat40.x = log2(u_xlat55);
      u_xlat41.x = (u_xlat40.x * u_xlat6.x);
      u_xlat41.x = exp2(u_xlat41.x);
      let x_3873 = (-(x_178.x_B612SkyHorizon.xyz) + x_178.x_B612SkyHorizonSun.xyz);
      u_xlat7 = vec4f(x_3873.x, u_xlat7.y, x_3873.yz);
      let x_3884 = ((u_xlat41.xxx * u_xlat7.xzw) + x_178.x_B612SkyHorizon.xyz);
      u_xlat7 = vec4f(x_3884.x, u_xlat7.y, x_3884.yz);
      u_xlat6.x = (x_178.x_B612SkyParams.x * 0.44999998807907104492f);
      u_xlat6.x = max(u_xlat6.x, 0.00999999977648258209f);
      u_xlat6.x = (-(u_xlat3.z) / u_xlat6.x);
      u_xlat6.x = (u_xlat6.x * 1.44269502162933349609f);
      u_xlat6.x = exp2(u_xlat6.x);
      u_xlat6.x = (-(u_xlat6.x) + 1.0f);
      u_xlat8 = vec4f(((-(x_178.x_B612SkyZenith.xyz) + x_178.x_B612SkyHorizonSun.xyz)).xyz, u_xlat8.w);
      u_xlat8 = vec4f(((u_xlat8.xyz * x_3929)).xyz, u_xlat8.w);
      u_xlat41.x = (u_xlat41.x * x_178.x_B612SkyParams.z);
      u_xlat3.x = (u_xlat3.x * u_xlat41.x);
      u_xlat8 = vec4f((((u_xlat3.xxx * u_xlat8.xyz) + x_178.x_B612SkyZenith.xyz)).xyz, u_xlat8.w);
      u_xlat8 = vec4f(((-(u_xlat7.xzw) + u_xlat8.xyz)).xyz, u_xlat8.w);
      let x_3971 = ((u_xlat6.xxx * u_xlat8.xyz) + u_xlat7.xzw);
      u_xlat7 = vec4f(x_3971.x, u_xlat7.y, x_3971.yz);
      u_xlat3.x = max(x_178.x_B612HazeParams.x, 0.10000000149011611938f);
      u_xlat3.x = (u_xlat3.x * -(u_xlat3.z));
      u_xlat3.x = (u_xlat3.x * 1.44269502162933349609f);
      u_xlat3.x = exp2(u_xlat3.x);
      u_xlat3.x = (u_xlat3.x * x_178.x_B612HazeColor.w);
      u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
      u_xlat8 = vec4f(((-(u_xlat7.xzw) + x_178.x_B612HazeColor.xyz)).xyz, u_xlat8.w);
      let x_4019 = ((u_xlat3.xxx * u_xlat8.xyz) + u_xlat7.xzw);
      u_xlat7 = vec4f(x_4019.x, u_xlat7.y, x_4019.yz);
      u_xlat8 = vec4f(max(x_178.x_B612SkyParams2.xyz, x_4025).xyz, u_xlat8.w);
      u_xlat3.x = (u_xlat40.x * u_xlat8.x);
      u_xlat3.x = exp2(u_xlat3.x);
      u_xlat9 = vec4f(((u_xlat3.xxx * x_178.x_B612SkyGlow.xyz)).xyz, u_xlat9.w);
      u_xlat3.x = max(x_178.x_B612SkyGlow.w, 0.10000000149011611938f);
      u_xlat3.x = (-(u_xlat4.x) / u_xlat3.x);
      u_xlat3.x = (u_xlat3.x * 1.44269502162933349609f);
      u_xlat3.x = exp2(u_xlat3.x);
      let x_4073 = ((u_xlat9.xyz * u_xlat3.xxx) + u_xlat7.xzw);
      u_xlat7 = vec4f(x_4073.x, u_xlat7.y, x_4073.yz);
      u_xlat3.x = ((u_xlat57 * 57.295780181884765625f) + -(x_178.x_B612SkyAnti.w));
      u_xlat3.x = (u_xlat3.x / u_xlat8.y);
      u_xlat55 = (-(u_xlat55) + 1.0f);
      u_xlat55 = log2(u_xlat55);
      u_xlat55 = (u_xlat55 * u_xlat8.z);
      u_xlat55 = exp2(u_xlat55);
      u_xlat8 = vec4f(((vec3f(u_xlat55) * x_178.x_B612SkyAnti.xyz)).xyz, u_xlat8.w);
      u_xlat55 = (u_xlat3.x * -(u_xlat3.x));
      u_xlat55 = (u_xlat55 * 1.44269502162933349609f);
      u_xlat55 = exp2(u_xlat55);
      let x_4125 = ((u_xlat8.xyz * vec3f(u_xlat55)) + u_xlat7.xzw);
      u_xlat3 = vec4f(x_4125.x, u_xlat3.y, x_4125.yz);
      u_xlat55 = max(x_178.x_B612SunGlow.w, 1.0f);
      u_xlat56 = log2(u_xlat56);
      u_xlat55 = (u_xlat55 * u_xlat56);
      u_xlat55 = exp2(u_xlat55);
      let x_4146 = ((x_178.x_B612SunGlow.xyz * vec3f(u_xlat55)) + u_xlat3.xzw);
      u_xlat3 = vec4f(x_4146.x, u_xlat3.y, x_4146.yz);
      u_xlat55 = x_178.x_B612TimeParams.x;
      u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
      u_xlat56 = x_178.x_B612SkyCloud.z;
      u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
      u_xlat4.x = min(abs(u_xlat5.y), abs(u_xlat5.x));
      u_xlat40.x = max(abs(u_xlat5.y), abs(u_xlat5.x));
      u_xlat40.x = (1.0f / u_xlat40.x);
      u_xlat4.x = (u_xlat40.x * u_xlat4.x);
      u_xlat40.x = (u_xlat4.x * u_xlat4.x);
      u_xlat41.x = ((u_xlat40.x * 0.02083509974181652069f) + -0.08513300120830535889f);
      u_xlat41.x = ((u_xlat40.x * u_xlat41.x) + 0.18014100193977355957f);
      u_xlat41.x = ((u_xlat40.x * u_xlat41.x) + -0.33029949665069580078f);
      u_xlat40.x = ((u_xlat40.x * u_xlat41.x) + 0.99986600875854492188f);
      u_xlat41.x = (u_xlat40.x * u_xlat4.x);
      u_xlatb6 = (abs(u_xlat5.y) < abs(u_xlat5.x));
      u_xlat41.x = ((u_xlat41.x * -2.0f) + 1.57079637050628662109f);
      if (u_xlatb6) {
        x_4241 = u_xlat41.x;
      } else {
        x_4241 = 0.0f;
      }
      u_xlat41.x = x_4241;
      u_xlat4.x = ((u_xlat4.x * u_xlat40.x) + u_xlat41.x);
      u_xlatb40 = (u_xlat5.y < -(u_xlat5.y));
      u_xlat40.x = select(0.0f, -3.14159274101257324219f, u_xlatb40);
      u_xlat4.x = (u_xlat40.x + u_xlat4.x);
      u_xlat40.x = min(u_xlat5.y, u_xlat5.x);
      u_xlat41.x = max(u_xlat5.y, u_xlat5.x);
      u_xlatb40 = (u_xlat40.x < -(u_xlat40.x));
      u_xlatb41 = (u_xlat41.x >= -(u_xlat41.x));
      u_xlatb40 = (u_xlatb40 & u_xlatb41);
      if (u_xlatb40) {
        x_4303 = -(u_xlat4.x);
      } else {
        x_4303 = u_xlat4.x;
      }
      u_xlat4.x = x_4303;
      let x_4322 = ((u_xlat4.xx * x_4316) + -(x_178.x_B612SkyCloud.xy));
      u_xlat4 = vec4f(x_4322.x, u_xlat4.y, x_4322.y, u_xlat4.w);
      u_xlat8 = vec4f((((u_xlat4.xz * x_4328) + x_924)).xy, u_xlat8.zw);
      u_xlat8.z = 0.5f;
      u_xlat9 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat8.xz, 0.0f);
      u_xlat8 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat8.yz, 0.0f);
      let x_4355 = (u_xlat9.xyz * x_178.x_B612HdriDay0.xyz);
      u_xlat7 = vec4f(x_4355.x, u_xlat7.y, x_4355.yz);
      u_xlat4.x = dot(u_xlat7.xzw, x_3602);
      let x_4371 = ((u_xlat9.xyz * x_178.x_B612HdriDay0.xyz) + -(u_xlat4.xxx));
      u_xlat7 = vec4f(x_4371.x, u_xlat7.y, x_4371.yz);
      let x_4382 = ((x_178.x_B612HdriDay0.www * u_xlat7.xzw) + u_xlat4.xxx);
      u_xlat7 = vec4f(x_4382.x, u_xlat7.y, x_4382.yz);
      let x_4388 = max(u_xlat7.xzw, vec3f());
      u_xlat7 = vec4f(x_4388.x, u_xlat7.y, x_4388.yz);
      u_xlat4.x = max(x_178.x_B612HdriDay1.w, 0.10000000149011611938f);
      u_xlat4.x = (1.5f / u_xlat4.x);
      u_xlat4.x = (-(u_xlat4.x) + 1.0f);
      u_xlat4.x = max(u_xlat4.x, 0.0f);
      u_xlat4.x = (u_xlat4.x * u_xlat4.x);
      u_xlat9 = vec4f(((x_178.x_B612HdriDay1.xyz + x_4418)).xyz, u_xlat9.w);
      u_xlat9 = vec4f((((u_xlat4.xxx * u_xlat9.xyz) + x_1823)).xyz, u_xlat9.w);
      let x_4434 = (u_xlat7.xzw * u_xlat9.xyz);
      u_xlat7 = vec4f(x_4434.x, u_xlat7.y, x_4434.yz);
      let x_4444 = (-(x_178.x_B612HdriDay2.ww) + x_4443);
      u_xlat4 = vec4f(x_4444.x, u_xlat4.y, x_4444.y, u_xlat4.w);
      u_xlat40.x = max(u_xlat4.z, 1.0f);
      u_xlat4.x = (u_xlat4.x / u_xlat40.x);
      u_xlat4.x = clamp(u_xlat4.x, 0.0f, 1.0f);
      u_xlat9 = vec4f(((x_178.x_B612HdriDay2.xyz + x_4418)).xyz, u_xlat9.w);
      u_xlat9 = vec4f((((u_xlat4.xxx * u_xlat9.xyz) + x_1823)).xyz, u_xlat9.w);
      let x_4479 = (u_xlat7.xzw * u_xlat9.xyz);
      u_xlat7 = vec4f(x_4479.x, u_xlat7.y, x_4479.yz);
      u_xlat9 = vec4f(max(x_178.x_B612SkyCloudWarm.xyz, x_4487).xyz, u_xlat9.w);
      u_xlat9 = vec4f(log2(u_xlat9.xyz).xyz, u_xlat9.w);
      u_xlat9 = vec4f(((vec3f(u_xlat55) * u_xlat9.xyz)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
      let x_4512 = (u_xlat7.xzw * u_xlat9.xyz);
      u_xlat7 = vec4f(x_4512.x, u_xlat7.y, x_4512.yz);
      u_xlat4.x = (x_178.x_B612SkyCloudWarm.w + -1.0f);
      u_xlat55 = ((u_xlat55 * u_xlat4.x) + 1.0f);
      let x_4528 = (vec3f(u_xlat55) * u_xlat7.xzw);
      u_xlat7 = vec4f(x_4528.x, u_xlat7.y, x_4528.yz);
      u_xlat9 = vec4f(((u_xlat8.xyz * x_178.x_B612HdriDusk0.xyz)).xyz, u_xlat9.w);
      u_xlat55 = dot(u_xlat9.xyz, x_3602);
      u_xlat8 = vec4f((((u_xlat8.xyz * x_178.x_B612HdriDusk0.xyz) + -(vec3f(u_xlat55)))).xyz, u_xlat8.w);
      u_xlat8 = vec4f((((x_178.x_B612HdriDusk0.www * u_xlat8.xyz) + vec3f(u_xlat55))).xyz, u_xlat8.w);
      u_xlat8 = vec4f(max(u_xlat8.xyz, vec3f()).xyz, u_xlat8.w);
      u_xlat55 = max(x_178.x_B612HdriDusk1.w, 0.10000000149011611938f);
      u_xlat55 = (1.5f / u_xlat55);
      u_xlat55 = (-(u_xlat55) + 1.0f);
      u_xlat55 = max(u_xlat55, 0.0f);
      u_xlat55 = (u_xlat55 * u_xlat55);
      u_xlat9 = vec4f(((x_178.x_B612HdriDusk1.xyz + x_4418)).xyz, u_xlat9.w);
      u_xlat9 = vec4f((((vec3f(u_xlat55) * u_xlat9.xyz) + x_1823)).xyz, u_xlat9.w);
      u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat9.xyz)).xyz, u_xlat8.w);
      let x_4610 = (-(x_178.x_B612HdriDusk2.ww) + x_4443);
      u_xlat4 = vec4f(x_4610.x, u_xlat4.y, x_4610.y, u_xlat4.w);
      u_xlat55 = max(u_xlat4.z, 1.0f);
      u_xlat55 = (u_xlat4.x / u_xlat55);
      u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
      u_xlat9 = vec4f(((x_178.x_B612HdriDusk2.xyz + x_4418)).xyz, u_xlat9.w);
      u_xlat9 = vec4f((((vec3f(u_xlat55) * u_xlat9.xyz) + x_1823)).xyz, u_xlat9.w);
      u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat9.xyz)).xyz, u_xlat8.w);
      u_xlat55 = (-(x_178.x_B612SkyCloud2.x) + x_178.x_B612SkyCloud2.y);
      u_xlat4.x = (-(x_178.x_B612SkyCloud2.x) + 1.5f);
      u_xlat55 = (1.0f / u_xlat55);
      u_xlat55 = (u_xlat55 * u_xlat4.x);
      u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
      u_xlat4.x = ((u_xlat55 * -2.0f) + 3.0f);
      u_xlat55 = (u_xlat55 * u_xlat55);
      u_xlat55 = (u_xlat55 * u_xlat4.x);
      u_xlat9 = vec4f(x_178.x_B612SkyCloudCut.xyz.xyz, u_xlat9.w);
      u_xlat9 = vec4f(clamp(u_xlat9.xyz, vec3f(0.0f), vec3f(1.0f)).xyz, u_xlat9.w);
      let x_4690 = (-(u_xlat9.xy) + x_1353);
      u_xlat4 = vec4f(x_4690.x, u_xlat4.y, x_4690.y, u_xlat4.w);
      u_xlat41.x = max(x_178.x_B612SkyCloudCut.w, 0.10000000149011611938f);
      u_xlat41.x = (1.0f / u_xlat41.x);
      u_xlat41.x = (u_xlat41.x * 1.5f);
      u_xlat41.x = min(u_xlat41.x, 1.0f);
      u_xlat6.x = ((u_xlat41.x * -2.0f) + 3.0f);
      u_xlat41.x = (u_xlat41.x * u_xlat41.x);
      u_xlat41.x = ((-(u_xlat6.x) * u_xlat41.x) + 1.0f);
      u_xlat41.x = ((-(u_xlat9.z) * u_xlat41.x) + 1.0f);
      u_xlat40.x = (u_xlat4.z * u_xlat41.x);
      u_xlat41.x = (u_xlat4.x * u_xlat9.w);
      u_xlat6.x = ((u_xlat8.w * u_xlat40.x) + -(u_xlat41.x));
      u_xlat41.x = ((u_xlat56 * u_xlat6.x) + u_xlat41.x);
      u_xlat41.x = (u_xlat55 * u_xlat41.x);
      let x_4775 = (u_xlat4.xxx * u_xlat7.xzw);
      u_xlat7 = vec4f(x_4775.x, u_xlat7.y, x_4775.yz);
      u_xlat8 = vec4f((((u_xlat8.xyz * u_xlat40.xxx) + -(u_xlat7.xzw))).xyz, u_xlat8.w);
      let x_4796 = ((vec3f(u_xlat56) * u_xlat8.xyz) + u_xlat7.xzw);
      u_xlat7 = vec4f(x_4796.x, u_xlat7.y, x_4796.yz);
      u_xlat8 = vec4f(((vec3f(u_xlat55) * u_xlat7.xzw)).xyz, u_xlat8.w);
      u_xlat56 = x_178.x_B612SkyNight.w;
      u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
      u_xlat4.x = dot(u_xlat8.xyz, x_3602);
      let x_4823 = ((-(u_xlat7.xzw) * vec3f(u_xlat55)) + u_xlat4.xxx);
      u_xlat7 = vec4f(x_4823.x, u_xlat7.y, x_4823.yz);
      let x_4833 = ((vec3f(u_xlat56) * u_xlat7.xzw) + u_xlat8.xyz);
      u_xlat7 = vec4f(x_4833.x, u_xlat7.y, x_4833.yz);
      u_xlat55 = ((u_xlat4.x * 1.5f) + 1.0f);
      u_xlat55 = (1.0f / u_xlat55);
      u_xlat55 = (u_xlat55 + -1.0f);
      u_xlat55 = ((u_xlat56 * u_xlat55) + 1.0f);
      let x_4852 = (vec3f(u_xlat55) * u_xlat7.xzw);
      u_xlat7 = vec4f(x_4852.x, u_xlat7.y, x_4852.yz);
      u_xlat8 = (-(x_178.x_B612SkyCloudNight.wxyz) + x_135);
      u_xlat26 = (u_xlat8.xxx * u_xlat8.yzw);
      let x_4870 = (u_xlat7.xzw * u_xlat26);
      u_xlat7 = vec4f(x_4870.x, u_xlat7.y, x_4870.yz);
      u_xlat55 = (u_xlat41.x * u_xlat8.x);
      u_xlat56 = x_178.x_B612SkyCloud2.z;
      u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
      u_xlat26 = ((u_xlat3.xzw * vec3f(u_xlat55)) + -(u_xlat7.xzw));
      let x_4897 = ((vec3f(u_xlat56) * u_xlat26) + u_xlat7.xzw);
      u_xlat7 = vec4f(x_4897.x, u_xlat7.y, x_4897.yz);
      u_xlat55 = ((-(u_xlat41.x) * u_xlat8.x) + 1.0f);
      let x_4914 = ((u_xlat3.xzw * vec3f(u_xlat55)) + u_xlat7.xzw);
      u_xlat3 = vec4f(x_4914.x, u_xlat3.y, x_4914.yz);
      let x_4921 = (u_xlat6.yyy * u_xlat3.xzw);
      u_xlat3 = vec4f(x_4921.x, u_xlat3.y, x_4921.yz);
    } else {
      u_xlatb55 = (0.5f < x_178.x_B612HdriParams.x);
      if (u_xlatb55) {
        u_xlat55 = x_178.x_B612TimeParams.x;
        u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
        let x_4940 = max(x_178.x_B612HdriParams.zw, x_4939);
        u_xlat4 = vec4f(x_4940.x, u_xlat4.y, x_4940.y, u_xlat4.w);
        u_xlat56 = (u_xlat4.x * x_178.x_B612CloudParams.x);
        u_xlat56 = (u_xlat56 * 0.15915493667125701904f);
        u_xlat41.x = (x_178.x_Time.y * 6.28318548202514648438f);
        u_xlat4.x = (u_xlat41.x / u_xlat4.x);
        u_xlat4.x = sin(u_xlat4.x);
        u_xlat41.x = ((u_xlat56 * u_xlat4.x) + x_178.x_B612HdriDay3.x);
        u_xlat41.x = ((-(u_xlat55) * x_178.x_B612HdriParams.y) + u_xlat41.x);
        u_xlat56 = ((u_xlat56 * u_xlat4.x) + x_178.x_B612HdriDusk3.x);
        u_xlat4.x = (-(u_xlat55) + 1.0f);
        u_xlat56 = ((u_xlat4.x * x_178.x_B612HdriParams.y) + u_xlat56);
        u_xlat4.x = min(abs(u_xlat5.y), abs(u_xlat5.x));
        u_xlat6.x = max(abs(u_xlat5.y), abs(u_xlat5.x));
        u_xlat6.x = (1.0f / u_xlat6.x);
        u_xlat4.x = (u_xlat4.x * u_xlat6.x);
        u_xlat6.x = (u_xlat4.x * u_xlat4.x);
        u_xlat24 = ((u_xlat6.x * 0.02083509974181652069f) + -0.08513300120830535889f);
        u_xlat24 = ((u_xlat6.x * u_xlat24) + 0.18014100193977355957f);
        u_xlat24 = ((u_xlat6.x * u_xlat24) + -0.33029949665069580078f);
        u_xlat6.x = ((u_xlat6.x * u_xlat24) + 0.99986600875854492188f);
        u_xlat24 = (u_xlat4.x * u_xlat6.x);
        u_xlatb42 = (abs(u_xlat5.y) < abs(u_xlat5.x));
        u_xlat24 = ((u_xlat24 * -2.0f) + 1.57079637050628662109f);
        u_xlat24 = select(0.0f, u_xlat24, u_xlatb42);
        u_xlat4.x = ((u_xlat4.x * u_xlat6.x) + u_xlat24);
        u_xlatb6 = (u_xlat5.y < -(u_xlat5.y));
        u_xlat6.x = select(0.0f, -3.14159274101257324219f, u_xlatb6);
        u_xlat4.x = (u_xlat4.x + u_xlat6.x);
        u_xlat6.x = min(u_xlat5.y, u_xlat5.x);
        u_xlat24 = max(u_xlat5.y, u_xlat5.x);
        u_xlatb6 = (u_xlat6.x < -(u_xlat6.x));
        u_xlatb24 = (u_xlat24 >= -(u_xlat24));
        u_xlatb6 = (u_xlatb24 & u_xlatb6);
        if (u_xlatb6) {
          x_5122 = -(u_xlat4.x);
        } else {
          x_5122 = u_xlat4.x;
        }
        u_xlat4.x = x_5122;
        u_xlat41.x = ((u_xlat4.x * 57.295780181884765625f) + -(u_xlat41.x));
        u_xlat8.x = ((u_xlat41.x * 0.00277777784503996372f) + 0.5f);
        u_xlat8.y = 0.5f;
        u_xlat44.y = 0.5f;
        u_xlat6 = vec4f(textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat8.xy, 0.0f).xyz.xyz, u_xlat6.w);
        u_xlat56 = ((u_xlat4.x * 57.295780181884765625f) + -(u_xlat56));
        u_xlat44.x = ((u_xlat56 * 0.00277777784503996372f) + 0.5f);
        let x_5173 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat44, 0.0f).xyz;
        u_xlat7 = vec4f(x_5173.x, u_xlat7.y, x_5173.yz);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_178.x_B612HdriDay0.xyz)).xyz, u_xlat6.w);
        u_xlatb56 = (0.0f < x_178.x_B612HdriDay3.z);
        u_xlat4.x = max(u_xlat6.y, u_xlat6.x);
        u_xlat4.x = max(u_xlat6.z, u_xlat4.x);
        u_xlat41.x = (u_xlat4.x + -(x_178.x_B612HdriDay3.y));
        u_xlat41.x = max(u_xlat41.x, 0.0f);
        u_xlat8.x = (u_xlat41.x / x_178.x_B612HdriDay3.z);
        u_xlat8.x = (u_xlat8.x + 1.0f);
        u_xlat41.x = (u_xlat41.x / u_xlat8.x);
        u_xlat41.x = (u_xlat41.x + x_178.x_B612HdriDay3.y);
        u_xlat4.x = max(u_xlat4.x, x_178.x_B612HdriDay3.y);
        u_xlat4.x = (u_xlat41.x / u_xlat4.x);
        u_xlat8 = vec4f(((u_xlat4.xxx * u_xlat6.xyz)).xyz, u_xlat8.w);
        if (u_xlatb56) {
          x_5252 = u_xlat8.xyz;
        } else {
          x_5252 = u_xlat6.xyz;
        }
        u_xlat6 = vec4f(x_5252.xyz, u_xlat6.w);
        u_xlat56 = dot(u_xlat6.xyz, x_3602);
        u_xlat6 = vec4f(((-(vec3f(u_xlat56)) + u_xlat6.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f((((x_178.x_B612HdriDay0.www * u_xlat6.xyz) + vec3f(u_xlat56))).xyz, u_xlat6.w);
        u_xlat6 = vec4f(max(u_xlat6.xyz, vec3f()).xyz, u_xlat6.w);
        u_xlat56 = max(x_178.x_B612HdriDay1.w, 0.10000000149011611938f);
        u_xlat56 = (u_xlat4.z / u_xlat56);
        u_xlat56 = (-(u_xlat56) + 1.0f);
        u_xlat56 = max(u_xlat56, 0.0f);
        u_xlat56 = (u_xlat56 * u_xlat56);
        u_xlat8 = vec4f(((x_178.x_B612HdriDay1.xyz + x_4418)).xyz, u_xlat8.w);
        u_xlat8 = vec4f((((vec3f(u_xlat56) * u_xlat8.xyz) + x_1823)).xyz, u_xlat8.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat8.xyz)).xyz, u_xlat6.w);
        u_xlat56 = (x_178.x_B612HdriParams.w + -(x_178.x_B612HdriDay2.w));
        u_xlat4.x = (-(x_178.x_B612HdriDay2.w) + 90.0f);
        u_xlat4.x = max(u_xlat4.x, 1.0f);
        u_xlat56 = (u_xlat56 / u_xlat4.x);
        u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
        u_xlat8 = vec4f(((x_178.x_B612HdriDay2.xyz + x_4418)).xyz, u_xlat8.w);
        u_xlat8 = vec4f((((vec3f(u_xlat56) * u_xlat8.xyz) + x_1823)).xyz, u_xlat8.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat8.xyz)).xyz, u_xlat6.w);
        let x_5373 = (u_xlat7.xzw * x_178.x_B612HdriDusk0.xyz);
        u_xlat7 = vec4f(x_5373.x, u_xlat7.y, x_5373.yz);
        u_xlatb56 = (0.0f < x_178.x_B612HdriDusk3.z);
        u_xlat4.x = max(u_xlat7.z, u_xlat7.x);
        u_xlat4.x = max(u_xlat7.w, u_xlat4.x);
        u_xlat41.x = (u_xlat4.x + -(x_178.x_B612HdriDusk3.y));
        u_xlat41.x = max(u_xlat41.x, 0.0f);
        u_xlat8.x = (u_xlat41.x / x_178.x_B612HdriDusk3.z);
        u_xlat8.x = (u_xlat8.x + 1.0f);
        u_xlat41.x = (u_xlat41.x / u_xlat8.x);
        u_xlat41.x = (u_xlat41.x + x_178.x_B612HdriDusk3.y);
        u_xlat4.x = max(u_xlat4.x, x_178.x_B612HdriDusk3.y);
        u_xlat4.x = (u_xlat41.x / u_xlat4.x);
        u_xlat8 = vec4f(((u_xlat4.xxx * u_xlat7.xzw)).xyz, u_xlat8.w);
        if (u_xlatb56) {
          x_5444 = u_xlat8.xyz;
        } else {
          x_5444 = u_xlat7.xzw;
        }
        u_xlat7 = vec4f(x_5444.x, u_xlat7.y, x_5444.yz);
        u_xlat56 = dot(u_xlat7.xzw, x_3602);
        let x_5463 = (-(vec3f(u_xlat56)) + u_xlat7.xzw);
        u_xlat7 = vec4f(x_5463.x, u_xlat7.y, x_5463.yz);
        let x_5474 = ((x_178.x_B612HdriDusk0.www * u_xlat7.xzw) + vec3f(u_xlat56));
        u_xlat7 = vec4f(x_5474.x, u_xlat7.y, x_5474.yz);
        let x_5479 = max(u_xlat7.xzw, vec3f());
        u_xlat7 = vec4f(x_5479.x, u_xlat7.y, x_5479.yz);
        u_xlat56 = max(x_178.x_B612HdriDusk1.w, 0.10000000149011611938f);
        u_xlat56 = (u_xlat4.z / u_xlat56);
        u_xlat56 = (-(u_xlat56) + 1.0f);
        u_xlat56 = max(u_xlat56, 0.0f);
        u_xlat56 = (u_xlat56 * u_xlat56);
        u_xlat8 = vec4f(((x_178.x_B612HdriDusk1.xyz + x_4418)).xyz, u_xlat8.w);
        u_xlat8 = vec4f((((vec3f(u_xlat56) * u_xlat8.xyz) + x_1823)).xyz, u_xlat8.w);
        let x_5515 = (u_xlat7.xzw * u_xlat8.xyz);
        u_xlat7 = vec4f(x_5515.x, u_xlat7.y, x_5515.yz);
        u_xlat56 = (x_178.x_B612HdriParams.w + -(x_178.x_B612HdriDusk2.w));
        u_xlat4.x = (-(x_178.x_B612HdriDusk2.w) + 90.0f);
        u_xlat4.x = max(u_xlat4.x, 1.0f);
        u_xlat56 = (u_xlat56 / u_xlat4.x);
        u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
        u_xlat8 = vec4f(((x_178.x_B612HdriDusk2.xyz + x_4418)).xyz, u_xlat8.w);
        u_xlat8 = vec4f((((vec3f(u_xlat56) * u_xlat8.xyz) + x_1823)).xyz, u_xlat8.w);
        let x_5561 = ((u_xlat7.xzw * u_xlat8.xyz) + -(u_xlat6.xyz));
        u_xlat7 = vec4f(x_5561.x, u_xlat7.y, x_5561.yz);
        let x_5571 = ((vec3f(u_xlat55) * u_xlat7.xzw) + u_xlat6.xyz);
        u_xlat3 = vec4f(x_5571.x, u_xlat3.y, x_5571.yz);
      } else {
        u_xlat5.w = 0.02600000053644180298f;
        u_xlat55 = dot(u_xlat5.xyw, u_xlat5.xyw);
        u_xlat55 = inverseSqrt(u_xlat55);
        u_xlat56 = (u_xlat55 * u_xlat5.w);
        u_xlat4.x = ((-(u_xlat5.w) * u_xlat55) + 1.0f);
        u_xlat40.x = sqrt(u_xlat4.x);
        u_xlat41.x = ((u_xlat55 * -0.00048696179874241352f) + 0.07426100224256515503f);
        u_xlat41.x = ((u_xlat41.x * u_xlat56) + -0.21211439371109008789f);
        u_xlat41.x = ((u_xlat41.x * u_xlat56) + 1.57072877883911132812f);
        u_xlat40.x = ((-(u_xlat41.x) * u_xlat40.x) + 1.57079637050628662109f);
        u_xlat41.x = (u_xlat40.x * 57.295780181884765625f);
        u_xlat5 = vec4f((((u_xlat5.xy * vec2f(u_xlat55)) + x_3699)).xy, u_xlat5.zw);
        u_xlat55 = dot(u_xlat5.xy, u_xlat5.xy);
        u_xlat55 = inverseSqrt(u_xlat55);
        u_xlat5 = vec4f(((vec2f(u_xlat55) * u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat6 = vec4f(((x_178.x_B612SunDirection.xz + x_3699)).xy, u_xlat6.zw);
        u_xlat55 = dot(u_xlat6.xy, u_xlat6.xy);
        u_xlat55 = inverseSqrt(u_xlat55);
        u_xlat6 = vec4f(((vec2f(u_xlat55) * u_xlat6.xy)).xy, u_xlat6.zw);
        u_xlat55 = dot(u_xlat5.xy, u_xlat6.xy);
        u_xlat55 = ((u_xlat55 * 0.5f) + 0.5f);
        u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
        u_xlat5 = vec4f(max(x_178.x_B612SkyParams.yw, x_3849).xy, u_xlat5.zw);
        u_xlat59 = log2(u_xlat55);
        u_xlat5.x = (u_xlat59 * u_xlat5.x);
        u_xlat5.x = exp2(u_xlat5.x);
        u_xlat6 = vec4f(((-(x_178.x_B612SkyHorizon.xyz) + x_178.x_B612SkyHorizonSun.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f((((u_xlat5.xxx * u_xlat6.xyz) + x_178.x_B612SkyHorizon.xyz)).xyz, u_xlat6.w);
        u_xlat7.x = (x_178.x_B612SkyParams.x * 0.44999998807907104492f);
        u_xlat7.x = max(u_xlat7.x, 0.00999999977648258209f);
        u_xlat7.x = (-(u_xlat56) / u_xlat7.x);
        u_xlat7.x = (u_xlat7.x * 1.44269502162933349609f);
        u_xlat7.x = exp2(u_xlat7.x);
        u_xlat7.x = (-(u_xlat7.x) + 1.0f);
        u_xlat8 = vec4f(((-(x_178.x_B612SkyZenith.xyz) + x_178.x_B612SkyHorizonSun.xyz)).xyz, u_xlat8.w);
        u_xlat8 = vec4f(((u_xlat8.xyz * x_3929)).xyz, u_xlat8.w);
        u_xlat5.x = (u_xlat5.x * x_178.x_B612SkyParams.z);
        u_xlat4.x = (u_xlat4.x * u_xlat5.x);
        u_xlat8 = vec4f((((u_xlat4.xxx * u_xlat8.xyz) + x_178.x_B612SkyZenith.xyz)).xyz, u_xlat8.w);
        u_xlat8 = vec4f(((-(u_xlat6.xyz) + u_xlat8.xyz)).xyz, u_xlat8.w);
        u_xlat6 = vec4f((((u_xlat7.xxx * u_xlat8.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
        u_xlat4.x = max(x_178.x_B612HazeParams.x, 0.10000000149011611938f);
        u_xlat56 = (-(u_xlat56) * u_xlat4.x);
        u_xlat56 = (u_xlat56 * 1.44269502162933349609f);
        u_xlat56 = exp2(u_xlat56);
        u_xlat56 = (u_xlat56 * x_178.x_B612HazeColor.w);
        u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
        let x_5824 = (-(u_xlat6.xyz) + x_178.x_B612HazeColor.xyz);
        u_xlat7 = vec4f(x_5824.x, u_xlat7.y, x_5824.yz);
        u_xlat6 = vec4f((((vec3f(u_xlat56) * u_xlat7.xzw) + u_xlat6.xyz)).xyz, u_xlat6.w);
        let x_5840 = max(x_178.x_B612SkyParams2.xyz, x_4025);
        u_xlat7 = vec4f(x_5840.x, u_xlat7.y, x_5840.yz);
        u_xlat56 = (u_xlat59 * u_xlat7.x);
        u_xlat56 = exp2(u_xlat56);
        u_xlat8 = vec4f(((vec3f(u_xlat56) * x_178.x_B612SkyGlow.xyz)).xyz, u_xlat8.w);
        u_xlat56 = max(x_178.x_B612SkyGlow.w, 0.10000000149011611938f);
        u_xlat56 = (-(u_xlat41.x) / u_xlat56);
        u_xlat56 = (u_xlat56 * 1.44269502162933349609f);
        u_xlat56 = exp2(u_xlat56);
        let x_5876 = ((u_xlat8.xyz * vec3f(u_xlat56)) + u_xlat6.xyz);
        u_xlat5 = vec4f(x_5876.x, u_xlat5.y, x_5876.yz);
        u_xlat56 = ((u_xlat40.x * 57.295780181884765625f) + -(x_178.x_B612SkyAnti.w));
        u_xlat56 = (u_xlat56 / u_xlat7.z);
        u_xlat55 = (-(u_xlat55) + 1.0f);
        u_xlat55 = log2(u_xlat55);
        u_xlat55 = (u_xlat55 * u_xlat7.w);
        u_xlat55 = exp2(u_xlat55);
        u_xlat6 = vec4f(((vec3f(u_xlat55) * x_178.x_B612SkyAnti.xyz)).xyz, u_xlat6.w);
        u_xlat55 = (u_xlat56 * -(u_xlat56));
        u_xlat55 = (u_xlat55 * 1.44269502162933349609f);
        u_xlat55 = exp2(u_xlat55);
        let x_5924 = ((u_xlat6.xyz * vec3f(u_xlat55)) + u_xlat5.xzw);
        u_xlat5 = vec4f(x_5924.x, u_xlat5.y, x_5924.yz);
        let x_5931 = (u_xlat5.yyy * u_xlat5.xzw);
        u_xlat3 = vec4f(x_5931.x, u_xlat3.y, x_5931.yz);
      }
    }
    u_xlat1 = vec4f(((u_xlat1.xyz * u_xlat3.xzw)).xyz, u_xlat1.w);
    let x_5949 = vec3f(x_138.x_SkyFill, x_138.x_SkyFill, x_138.x_SkyFill);
    u_xlat1 = vec4f(((u_xlat1.xyz * vec3f(x_5949.x, x_5949.y, x_5949.z))).xyz, u_xlat1.w);
    u_xlat0.x = ((-(u_xlat0.x) * 0.40000000596046447754f) + 0.60000002384185791016f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat1 = vec4f((((u_xlat1.xyz * u_xlat0.xxx) + u_xlat18)).xyz, u_xlat1.w);
    u_xlat0.x = max(x_138.x_RimLight.y, 0.5f);
    u_xlat55 = log2(u_xlat25);
    u_xlat0.x = (u_xlat0.x * u_xlat55);
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat55 = dot(-(u_xlat2.xyz), x_178.x_MainLightPosition.xyz);
    u_xlat55 = ((u_xlat55 * 0.5f) + 0.5f);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat2 = vec4f(((u_xlat0.xxx * x_178.x_MainLightColor.xyz)).xyz, u_xlat2.w);
    u_xlat0.x = (u_xlat55 * u_xlat55);
    u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat0.xxx)).xyz, u_xlat2.w);
    u_xlat18 = ((u_xlat2.xyz * x_138.x_RimLight.xxx) + u_xlat1.xyz);
  }
  if (u_xlatb3.y) {
    u_xlatb0 = (x_178.x_B612SunDirection.w >= 0.5f);
    if (u_xlatb0) {
      u_xlat0.x = sqrt(u_xlat60);
      u_xlat1.x = (u_xlat0.x + -(x_138.x_HazeStart));
      u_xlat1.x = max(u_xlat1.x, 0.0f);
      u_xlat1.x = (u_xlat1.x * x_138.x_HazeDensity);
      u_xlat1.x = max(u_xlat1.x, 0.00000099999999747524f);
      u_xlat1.x = log2(u_xlat1.x);
      u_xlat1.x = (u_xlat1.x * 1.20000004768371582031f);
      u_xlat1.x = exp2(u_xlat1.x);
      u_xlat1.x = (u_xlat1.x * -1.44269502162933349609f);
      u_xlat1.x = exp2(u_xlat1.x);
      u_xlat1.x = (-(u_xlat1.x) + 1.0f);
      u_xlat1.x = (-(u_xlat1.x) + 1.0f);
      u_xlat1.x = (-(u_xlat1.x) + 1.0f);
      u_xlat0.x = max(u_xlat0.x, 0.00100000004749745131f);
      u_xlat19 = vec3f(((u_xlat22.xz / u_xlat0.xx)).xy, u_xlat19.z);
      u_xlat19 = vec3f(((u_xlat19.xy + x_3699)).xy, u_xlat19.z);
      u_xlat0.x = dot(u_xlat19.xy, u_xlat19.xy);
      u_xlat0.x = inverseSqrt(u_xlat0.x);
      u_xlat2 = vec4f(((u_xlat0.xx * u_xlat19.xy)).xy, u_xlat2.zw);
      u_xlatb0 = (1.5f < x_178.x_B612HdriParams.x);
      if (u_xlatb0) {
        u_xlat2.z = 0.02600000053644180298f;
        u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
        u_xlat0.x = inverseSqrt(u_xlat0.x);
        u_xlat19 = (u_xlat0.xxx * u_xlat2.xzy);
        u_xlat19.x = dot(u_xlat19, x_178.x_B612SunDirection.xyz);
        u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
        u_xlat55 = ((-(u_xlat2.z) * u_xlat0.x) + 1.0f);
        u_xlat38 = sqrt(u_xlat55);
        u_xlat3.x = ((u_xlat0.x * -0.00048696179874241352f) + 0.07426100224256515503f);
        u_xlat3.x = ((u_xlat3.x * u_xlat19.y) + -0.21211439371109008789f);
        u_xlat3.x = ((u_xlat3.x * u_xlat19.y) + 1.57072877883911132812f);
        u_xlat38 = ((-(u_xlat3.x) * u_xlat38) + 1.57079637050628662109f);
        u_xlat3.x = (u_xlat38 * 57.295780181884765625f);
        u_xlat21 = vec3f((((u_xlat2.xy * u_xlat0.xx) + x_3699)).xy, u_xlat21.z);
        u_xlat0.x = dot(u_xlat21.xy, u_xlat21.xy);
        u_xlat0.x = inverseSqrt(u_xlat0.x);
        u_xlat21 = vec3f(((u_xlat0.xx * u_xlat21.xy)).xy, u_xlat21.z);
        u_xlat4 = vec4f(((x_178.x_B612SunDirection.xz + x_3699)).xy, u_xlat4.zw);
        u_xlat0.x = dot(u_xlat4.xy, u_xlat4.xy);
        u_xlat0.x = inverseSqrt(u_xlat0.x);
        u_xlat4 = vec4f(((u_xlat0.xx * u_xlat4.xy)).xy, u_xlat4.zw);
        u_xlat0.x = dot(u_xlat21.xy, u_xlat4.xy);
        u_xlat0.x = ((u_xlat0.x * 0.5f) + 0.5f);
        u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
        u_xlat21 = vec3f(max(x_178.x_B612SkyParams.yw, x_3849).xy, u_xlat21.z);
        u_xlat57 = log2(u_xlat0.x);
        u_xlat21.x = (u_xlat57 * u_xlat21.x);
        u_xlat21.x = exp2(u_xlat21.x);
        u_xlat4 = vec4f(((-(x_178.x_B612SkyHorizon.xyz) + x_178.x_B612SkyHorizonSun.xyz)).xyz, u_xlat4.w);
        u_xlat4 = vec4f((((u_xlat21.xxx * u_xlat4.xyz) + x_178.x_B612SkyHorizon.xyz)).xyz, u_xlat4.w);
        u_xlat58 = (x_178.x_B612SkyParams.x * 0.44999998807907104492f);
        u_xlat58 = max(u_xlat58, 0.00999999977648258209f);
        u_xlat58 = (-(u_xlat19.y) / u_xlat58);
        u_xlat58 = (u_xlat58 * 1.44269502162933349609f);
        u_xlat58 = exp2(u_xlat58);
        u_xlat58 = (-(u_xlat58) + 1.0f);
        u_xlat5 = vec4f(((-(x_178.x_B612SkyZenith.xyz) + x_178.x_B612SkyHorizonSun.xyz)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat5.xyz * x_3929)).xyz, u_xlat5.w);
        u_xlat21.x = (u_xlat21.x * x_178.x_B612SkyParams.z);
        u_xlat55 = (u_xlat55 * u_xlat21.x);
        u_xlat5 = vec4f((((vec3f(u_xlat55) * u_xlat5.xyz) + x_178.x_B612SkyZenith.xyz)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((-(u_xlat4.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
        u_xlat4 = vec4f((((vec3f(u_xlat58) * u_xlat5.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
        u_xlat55 = max(x_178.x_B612HazeParams.x, 0.10000000149011611938f);
        u_xlat37 = (u_xlat55 * -(u_xlat19.y));
        u_xlat37 = (u_xlat37 * 1.44269502162933349609f);
        u_xlat37 = exp2(u_xlat37);
        u_xlat37 = (u_xlat37 * x_178.x_B612HazeColor.w);
        u_xlat37 = clamp(u_xlat37, 0.0f, 1.0f);
        u_xlat5 = vec4f(((-(u_xlat4.xyz) + x_178.x_B612HazeColor.xyz)).xyz, u_xlat5.w);
        u_xlat4 = vec4f((((vec3f(u_xlat37) * u_xlat5.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
        u_xlat5 = vec4f(max(x_178.x_B612SkyParams2.xyz, x_4025).xyz, u_xlat5.w);
        u_xlat37 = (u_xlat57 * u_xlat5.x);
        u_xlat37 = exp2(u_xlat37);
        u_xlat6 = vec4f(((vec3f(u_xlat37) * x_178.x_B612SkyGlow.xyz)).xyz, u_xlat6.w);
        u_xlat37 = max(x_178.x_B612SkyGlow.w, 0.10000000149011611938f);
        u_xlat37 = (-(u_xlat3.x) / u_xlat37);
        u_xlat37 = (u_xlat37 * 1.44269502162933349609f);
        u_xlat37 = exp2(u_xlat37);
        let x_6453 = ((u_xlat6.xyz * vec3f(u_xlat37)) + u_xlat4.xyz);
        u_xlat3 = vec4f(x_6453.xy, u_xlat3.z, x_6453.z);
        u_xlat37 = ((u_xlat38 * 57.295780181884765625f) + -(x_178.x_B612SkyAnti.w));
        u_xlat37 = (u_xlat37 / u_xlat5.y);
        u_xlat0.x = (-(u_xlat0.x) + 1.0f);
        u_xlat0.x = log2(u_xlat0.x);
        u_xlat0.x = (u_xlat0.x * u_xlat5.z);
        u_xlat0.x = exp2(u_xlat0.x);
        u_xlat4 = vec4f(((u_xlat0.xxx * x_178.x_B612SkyAnti.xyz)).xyz, u_xlat4.w);
        u_xlat0.x = (u_xlat37 * -(u_xlat37));
        u_xlat0.x = (u_xlat0.x * 1.44269502162933349609f);
        u_xlat0.x = exp2(u_xlat0.x);
        let x_6513 = ((u_xlat4.xyz * u_xlat0.xxx) + u_xlat3.xyw);
        u_xlat3 = vec4f(x_6513.xy, u_xlat3.z, x_6513.z);
        u_xlat0.x = max(x_178.x_B612SunGlow.w, 1.0f);
        u_xlat19.x = log2(u_xlat19.x);
        u_xlat0.x = (u_xlat0.x * u_xlat19.x);
        u_xlat0.x = exp2(u_xlat0.x);
        u_xlat19 = ((x_178.x_B612SunGlow.xyz * u_xlat0.xxx) + u_xlat3.xyw);
        u_xlat0.x = x_178.x_B612TimeParams.x;
        u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
        u_xlat38 = x_178.x_B612SkyCloud.z;
        u_xlat38 = clamp(u_xlat38, 0.0f, 1.0f);
        u_xlat3.x = min(abs(u_xlat2.y), abs(u_xlat2.x));
        u_xlat21.x = max(abs(u_xlat2.y), abs(u_xlat2.x));
        u_xlat21.x = (1.0f / u_xlat21.x);
        u_xlat3.x = (u_xlat21.x * u_xlat3.x);
        u_xlat21.x = (u_xlat3.x * u_xlat3.x);
        u_xlat57 = ((u_xlat21.x * 0.02083509974181652069f) + -0.08513300120830535889f);
        u_xlat57 = ((u_xlat21.x * u_xlat57) + 0.18014100193977355957f);
        u_xlat57 = ((u_xlat21.x * u_xlat57) + -0.33029949665069580078f);
        u_xlat21.x = ((u_xlat21.x * u_xlat57) + 0.99986600875854492188f);
        u_xlat57 = (u_xlat21.x * u_xlat3.x);
        u_xlatb4 = (abs(u_xlat2.y) < abs(u_xlat2.x));
        u_xlat57 = ((u_xlat57 * -2.0f) + 1.57079637050628662109f);
        u_xlat57 = select(0.0f, u_xlat57, u_xlatb4);
        u_xlat3.x = ((u_xlat3.x * u_xlat21.x) + u_xlat57);
        u_xlatb21 = (u_xlat2.y < -(u_xlat2.y));
        u_xlat21.x = select(0.0f, -3.14159274101257324219f, u_xlatb21);
        u_xlat3.x = (u_xlat21.x + u_xlat3.x);
        u_xlat21.x = min(u_xlat2.y, u_xlat2.x);
        u_xlat57 = max(u_xlat2.y, u_xlat2.x);
        u_xlatb21 = (u_xlat21.x < -(u_xlat21.x));
        u_xlatb57 = (u_xlat57 >= -(u_xlat57));
        u_xlatb21 = (u_xlatb57 & u_xlatb21);
        if (u_xlatb21) {
          x_6674 = -(u_xlat3.x);
        } else {
          x_6674 = u_xlat3.x;
        }
        u_xlat3.x = x_6674;
        u_xlat3 = vec4f((((u_xlat3.xx * x_4316) + -(x_178.x_B612SkyCloud.xy))).xy, u_xlat3.zw);
        u_xlat4 = vec4f((((u_xlat3.xy * x_4328) + x_924)).xy, u_xlat4.zw);
        u_xlat4.z = 0.5f;
        u_xlat5 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat4.xz, 0.0f);
        u_xlat4 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat4.yz, 0.0f);
        let x_6719 = (u_xlat5.xyz * x_178.x_B612HdriDay0.xyz);
        u_xlat3 = vec4f(x_6719.xy, u_xlat3.z, x_6719.z);
        u_xlat3.x = dot(u_xlat3.xyw, x_3602);
        u_xlat5 = vec4f((((u_xlat5.xyz * x_178.x_B612HdriDay0.xyz) + -(u_xlat3.xxx))).xyz, u_xlat5.w);
        let x_6746 = ((x_178.x_B612HdriDay0.www * u_xlat5.xyz) + u_xlat3.xxx);
        u_xlat3 = vec4f(x_6746.xy, u_xlat3.z, x_6746.z);
        let x_6751 = max(u_xlat3.xyw, vec3f());
        u_xlat3 = vec4f(x_6751.xy, u_xlat3.z, x_6751.z);
        u_xlat5.x = max(x_178.x_B612HdriDay1.w, 0.10000000149011611938f);
        u_xlat5.x = (1.5f / u_xlat5.x);
        u_xlat5.x = (-(u_xlat5.x) + 1.0f);
        u_xlat5.x = max(u_xlat5.x, 0.0f);
        u_xlat5.x = (u_xlat5.x * u_xlat5.x);
        u_xlat6 = vec4f(((x_178.x_B612HdriDay1.xyz + x_4418)).xyz, u_xlat6.w);
        u_xlat5 = vec4f((((u_xlat5.xxx * u_xlat6.xyz) + x_1823)).xyz, u_xlat5.w);
        let x_6795 = (u_xlat3.xyw * u_xlat5.xyz);
        u_xlat3 = vec4f(x_6795.xy, u_xlat3.z, x_6795.z);
        u_xlat5 = vec4f(((-(x_178.x_B612HdriDay2.ww) + x_4443)).xy, u_xlat5.zw);
        u_xlat23 = max(u_xlat5.y, 1.0f);
        u_xlat5.x = (u_xlat5.x / u_xlat23);
        u_xlat5.x = clamp(u_xlat5.x, 0.0f, 1.0f);
        u_xlat6 = vec4f(((x_178.x_B612HdriDay2.xyz + x_4418)).xyz, u_xlat6.w);
        u_xlat5 = vec4f((((u_xlat5.xxx * u_xlat6.xyz) + x_1823)).xyz, u_xlat5.w);
        let x_6836 = (u_xlat3.xyw * u_xlat5.xyz);
        u_xlat3 = vec4f(x_6836.xy, u_xlat3.z, x_6836.z);
        u_xlat5 = vec4f(max(x_178.x_B612SkyCloudWarm.xyz, x_4487).xyz, u_xlat5.w);
        u_xlat5 = vec4f(log2(u_xlat5.xyz).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat0.xxx * u_xlat5.xyz)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(exp2(u_xlat5.xyz).xyz, u_xlat5.w);
        let x_6866 = (u_xlat3.xyw * u_xlat5.xyz);
        u_xlat3 = vec4f(x_6866.xy, u_xlat3.z, x_6866.z);
        u_xlat5.x = (x_178.x_B612SkyCloudWarm.w + -1.0f);
        u_xlat0.x = ((u_xlat0.x * u_xlat5.x) + 1.0f);
        let x_6884 = (u_xlat0.xxx * u_xlat3.xyw);
        u_xlat3 = vec4f(x_6884.xy, u_xlat3.z, x_6884.z);
        u_xlat5 = vec4f(((u_xlat4.xyz * x_178.x_B612HdriDusk0.xyz)).xyz, u_xlat5.w);
        u_xlat0.x = dot(u_xlat5.xyz, x_3602);
        u_xlat4 = vec4f((((u_xlat4.xyz * x_178.x_B612HdriDusk0.xyz) + -(u_xlat0.xxx))).xyz, u_xlat4.w);
        u_xlat4 = vec4f((((x_178.x_B612HdriDusk0.www * u_xlat4.xyz) + u_xlat0.xxx)).xyz, u_xlat4.w);
        u_xlat4 = vec4f(max(u_xlat4.xyz, vec3f()).xyz, u_xlat4.w);
        u_xlat0.x = max(x_178.x_B612HdriDusk1.w, 0.10000000149011611938f);
        u_xlat0.x = (1.5f / u_xlat0.x);
        u_xlat0.x = (-(u_xlat0.x) + 1.0f);
        u_xlat0.x = max(u_xlat0.x, 0.0f);
        u_xlat0.x = (u_xlat0.x * u_xlat0.x);
        u_xlat5 = vec4f(((x_178.x_B612HdriDusk1.xyz + x_4418)).xyz, u_xlat5.w);
        u_xlat5 = vec4f((((u_xlat0.xxx * u_xlat5.xyz) + x_1823)).xyz, u_xlat5.w);
        u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat5.xyz)).xyz, u_xlat4.w);
        u_xlat5 = vec4f(((-(x_178.x_B612HdriDusk2.ww) + x_4443)).xy, u_xlat5.zw);
        u_xlat0.x = max(u_xlat5.y, 1.0f);
        u_xlat0.x = (u_xlat5.x / u_xlat0.x);
        u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
        u_xlat5 = vec4f(((x_178.x_B612HdriDusk2.xyz + x_4418)).xyz, u_xlat5.w);
        u_xlat5 = vec4f((((u_xlat0.xxx * u_xlat5.xyz) + x_1823)).xyz, u_xlat5.w);
        u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat5.xyz)).xyz, u_xlat4.w);
        u_xlat0.x = (-(x_178.x_B612SkyCloud2.x) + x_178.x_B612SkyCloud2.y);
        u_xlat5.x = (-(x_178.x_B612SkyCloud2.x) + 1.5f);
        u_xlat0.x = (1.0f / u_xlat0.x);
        u_xlat0.x = (u_xlat0.x * u_xlat5.x);
        u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
        u_xlat5.x = ((u_xlat0.x * -2.0f) + 3.0f);
        u_xlat0.x = (u_xlat0.x * u_xlat0.x);
        u_xlat0.x = (u_xlat0.x * u_xlat5.x);
        u_xlat5 = vec4f(x_178.x_B612SkyCloudCut.xyz.xyz, u_xlat5.w);
        u_xlat5 = vec4f(clamp(u_xlat5.xyz, vec3f(0.0f), vec3f(1.0f)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((-(u_xlat5.xy) + x_1353)).xy, u_xlat5.zw);
        u_xlat6.x = max(x_178.x_B612SkyCloudCut.w, 0.10000000149011611938f);
        u_xlat6.x = (1.0f / u_xlat6.x);
        u_xlat6.x = (u_xlat6.x * 1.5f);
        u_xlat6.x = min(u_xlat6.x, 1.0f);
        u_xlat24 = ((u_xlat6.x * -2.0f) + 3.0f);
        u_xlat6.x = (u_xlat6.x * u_xlat6.x);
        u_xlat6.x = ((-(u_xlat24) * u_xlat6.x) + 1.0f);
        u_xlat41.x = ((-(u_xlat5.z) * u_xlat6.x) + 1.0f);
        u_xlat23 = (u_xlat41.x * u_xlat5.y);
        u_xlat41.x = (u_xlat5.x * u_xlat5.w);
        u_xlat58 = ((u_xlat4.w * u_xlat23) + -(u_xlat41.x));
        u_xlat58 = ((u_xlat38 * u_xlat58) + u_xlat41.x);
        u_xlat58 = (u_xlat0.x * u_xlat58);
        let x_7148 = (u_xlat3.xyw * u_xlat5.xxx);
        u_xlat3 = vec4f(x_7148.xy, u_xlat3.z, x_7148.z);
        u_xlat4 = vec4f((((u_xlat4.xyz * vec3f(u_xlat23)) + -(u_xlat3.xyw))).xyz, u_xlat4.w);
        let x_7169 = ((vec3f(u_xlat38) * u_xlat4.xyz) + u_xlat3.xyw);
        u_xlat3 = vec4f(x_7169.xy, u_xlat3.z, x_7169.z);
        u_xlat4 = vec4f(((u_xlat0.xxx * u_xlat3.xyw)).xyz, u_xlat4.w);
        u_xlat38 = x_178.x_B612SkyNight.w;
        u_xlat38 = clamp(u_xlat38, 0.0f, 1.0f);
        u_xlat5.x = dot(u_xlat4.xyz, x_3602);
        let x_7195 = ((-(u_xlat3.xyw) * u_xlat0.xxx) + u_xlat5.xxx);
        u_xlat3 = vec4f(x_7195.xy, u_xlat3.z, x_7195.z);
        let x_7205 = ((vec3f(u_xlat38) * u_xlat3.xyw) + u_xlat4.xyz);
        u_xlat3 = vec4f(x_7205.xy, u_xlat3.z, x_7205.z);
        u_xlat0.x = ((u_xlat5.x * 1.5f) + 1.0f);
        u_xlat0.x = (1.0f / u_xlat0.x);
        u_xlat0.x = (u_xlat0.x + -1.0f);
        u_xlat0.x = ((u_xlat38 * u_xlat0.x) + 1.0f);
        let x_7231 = (u_xlat0.xxx * u_xlat3.xyw);
        u_xlat3 = vec4f(x_7231.xy, u_xlat3.z, x_7231.z);
        u_xlat5 = (-(x_178.x_B612SkyCloudNight.wxyz) + x_135);
        u_xlat4 = vec4f(((u_xlat5.xxx * u_xlat5.yzw)).xyz, u_xlat4.w);
        let x_7250 = (u_xlat3.xyw * u_xlat4.xyz);
        u_xlat3 = vec4f(x_7250.xy, u_xlat3.z, x_7250.z);
        u_xlat0.x = (u_xlat58 * u_xlat5.x);
        u_xlat38 = x_178.x_B612SkyCloud2.z;
        u_xlat38 = clamp(u_xlat38, 0.0f, 1.0f);
        u_xlat4 = vec4f((((u_xlat19 * u_xlat0.xxx) + -(u_xlat3.xyw))).xyz, u_xlat4.w);
        let x_7279 = ((vec3f(u_xlat38) * u_xlat4.xyz) + u_xlat3.xyw);
        u_xlat3 = vec4f(x_7279.xy, u_xlat3.z, x_7279.z);
        u_xlat0.x = ((-(u_xlat58) * u_xlat5.x) + 1.0f);
        u_xlat19 = ((u_xlat19 * u_xlat0.xxx) + u_xlat3.xyw);
        u_xlat19 = (u_xlat21.yyy * u_xlat19);
      } else {
        u_xlatb0 = (0.5f < x_178.x_B612HdriParams.x);
        if (u_xlatb0) {
          u_xlat0.x = x_178.x_B612TimeParams.x;
          u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
          u_xlat3 = vec4f(max(x_178.x_B612HdriParams.zw, x_4939).xy, u_xlat3.zw);
          u_xlat38 = (u_xlat3.x * x_178.x_B612CloudParams.x);
          u_xlat38 = (u_xlat38 * 0.15915493667125701904f);
          u_xlat39.x = (x_178.x_Time.y * 6.28318548202514648438f);
          u_xlat3.x = (u_xlat39.x / u_xlat3.x);
          u_xlat3.x = sin(u_xlat3.x);
          u_xlat39.x = ((u_xlat38 * u_xlat3.x) + x_178.x_B612HdriDay3.x);
          u_xlat39.x = ((-(u_xlat0.x) * x_178.x_B612HdriParams.y) + u_xlat39.x);
          u_xlat38 = ((u_xlat38 * u_xlat3.x) + x_178.x_B612HdriDusk3.x);
          u_xlat3.x = (-(u_xlat0.x) + 1.0f);
          u_xlat38 = ((u_xlat3.x * x_178.x_B612HdriParams.y) + u_xlat38);
          u_xlat3.x = min(abs(u_xlat2.y), abs(u_xlat2.x));
          u_xlat57 = max(abs(u_xlat2.y), abs(u_xlat2.x));
          u_xlat57 = (1.0f / u_xlat57);
          u_xlat3.x = (u_xlat57 * u_xlat3.x);
          u_xlat57 = (u_xlat3.x * u_xlat3.x);
          u_xlat4.x = ((u_xlat57 * 0.02083509974181652069f) + -0.08513300120830535889f);
          u_xlat4.x = ((u_xlat57 * u_xlat4.x) + 0.18014100193977355957f);
          u_xlat4.x = ((u_xlat57 * u_xlat4.x) + -0.33029949665069580078f);
          u_xlat57 = ((u_xlat57 * u_xlat4.x) + 0.99986600875854492188f);
          u_xlat4.x = (u_xlat57 * u_xlat3.x);
          u_xlatb22 = (abs(u_xlat2.y) < abs(u_xlat2.x));
          u_xlat4.x = ((u_xlat4.x * -2.0f) + 1.57079637050628662109f);
          if (u_xlatb22) {
            x_7444 = u_xlat4.x;
          } else {
            x_7444 = 0.0f;
          }
          u_xlat4.x = x_7444;
          u_xlat3.x = ((u_xlat3.x * u_xlat57) + u_xlat4.x);
          u_xlatb57 = (u_xlat2.y < -(u_xlat2.y));
          u_xlat57 = select(0.0f, -3.14159274101257324219f, u_xlatb57);
          u_xlat3.x = (u_xlat57 + u_xlat3.x);
          u_xlat57 = min(u_xlat2.y, u_xlat2.x);
          u_xlat4.x = max(u_xlat2.y, u_xlat2.x);
          u_xlatb57 = (u_xlat57 < -(u_xlat57));
          u_xlatb4 = (u_xlat4.x >= -(u_xlat4.x));
          u_xlatb57 = (u_xlatb57 & u_xlatb4);
          if (u_xlatb57) {
            x_7498 = -(u_xlat3.x);
          } else {
            x_7498 = u_xlat3.x;
          }
          u_xlat3.x = x_7498;
          u_xlat39.x = ((u_xlat3.x * 57.295780181884765625f) + -(u_xlat39.x));
          u_xlat4.x = ((u_xlat39.x * 0.00277777784503996372f) + 0.5f);
          u_xlat4.y = 0.5f;
          u_xlat40.y = 0.5f;
          u_xlat5 = vec4f(textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat4.xy, 0.0f).xyz.xyz, u_xlat5.w);
          u_xlat38 = ((u_xlat3.x * 57.295780181884765625f) + -(u_xlat38));
          u_xlat40.x = ((u_xlat38 * 0.00277777784503996372f) + 0.5f);
          let x_7548 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat40, 0.0f).xyz;
          u_xlat3 = vec4f(x_7548.x, u_xlat3.y, x_7548.yz);
          u_xlat4 = vec4f(((u_xlat5.xyz * x_178.x_B612HdriDay0.xyz)).xyz, u_xlat4.w);
          u_xlatb38 = (0.0f < x_178.x_B612HdriDay3.z);
          u_xlat58 = max(u_xlat4.y, u_xlat4.x);
          u_xlat58 = max(u_xlat4.z, u_xlat58);
          u_xlat5.x = (u_xlat58 + -(x_178.x_B612HdriDay3.y));
          u_xlat5.x = max(u_xlat5.x, 0.0f);
          u_xlat23 = (u_xlat5.x / x_178.x_B612HdriDay3.z);
          u_xlat23 = (u_xlat23 + 1.0f);
          u_xlat5.x = (u_xlat5.x / u_xlat23);
          u_xlat5.x = (u_xlat5.x + x_178.x_B612HdriDay3.y);
          u_xlat58 = max(u_xlat58, x_178.x_B612HdriDay3.y);
          u_xlat58 = (u_xlat5.x / u_xlat58);
          u_xlat5 = vec4f(((vec3f(u_xlat58) * u_xlat4.xyz)).xyz, u_xlat5.w);
          if (u_xlatb38) {
            x_7616 = u_xlat5.xyz;
          } else {
            x_7616 = u_xlat4.xyz;
          }
          u_xlat4 = vec4f(x_7616.xyz, u_xlat4.w);
          u_xlat38 = dot(u_xlat4.xyz, x_3602);
          u_xlat4 = vec4f(((-(vec3f(u_xlat38)) + u_xlat4.xyz)).xyz, u_xlat4.w);
          u_xlat4 = vec4f((((x_178.x_B612HdriDay0.www * u_xlat4.xyz) + vec3f(u_xlat38))).xyz, u_xlat4.w);
          u_xlat4 = vec4f(max(u_xlat4.xyz, vec3f()).xyz, u_xlat4.w);
          u_xlat38 = max(x_178.x_B612HdriDay1.w, 0.10000000149011611938f);
          u_xlat38 = (u_xlat3.y / u_xlat38);
          u_xlat38 = (-(u_xlat38) + 1.0f);
          u_xlat38 = max(u_xlat38, 0.0f);
          u_xlat38 = (u_xlat38 * u_xlat38);
          u_xlat5 = vec4f(((x_178.x_B612HdriDay1.xyz + x_4418)).xyz, u_xlat5.w);
          u_xlat5 = vec4f((((vec3f(u_xlat38) * u_xlat5.xyz) + x_1823)).xyz, u_xlat5.w);
          u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat5.xyz)).xyz, u_xlat4.w);
          u_xlat38 = (x_178.x_B612HdriParams.w + -(x_178.x_B612HdriDay2.w));
          u_xlat58 = (-(x_178.x_B612HdriDay2.w) + 90.0f);
          u_xlat58 = max(u_xlat58, 1.0f);
          u_xlat38 = (u_xlat38 / u_xlat58);
          u_xlat38 = clamp(u_xlat38, 0.0f, 1.0f);
          u_xlat5 = vec4f(((x_178.x_B612HdriDay2.xyz + x_4418)).xyz, u_xlat5.w);
          u_xlat5 = vec4f((((vec3f(u_xlat38) * u_xlat5.xyz) + x_1823)).xyz, u_xlat5.w);
          u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat5.xyz)).xyz, u_xlat4.w);
          let x_7733 = (u_xlat3.xzw * x_178.x_B612HdriDusk0.xyz);
          u_xlat3 = vec4f(x_7733.x, u_xlat3.y, x_7733.yz);
          u_xlatb38 = (0.0f < x_178.x_B612HdriDusk3.z);
          u_xlat58 = max(u_xlat3.z, u_xlat3.x);
          u_xlat58 = max(u_xlat3.w, u_xlat58);
          u_xlat5.x = (u_xlat58 + -(x_178.x_B612HdriDusk3.y));
          u_xlat5.x = max(u_xlat5.x, 0.0f);
          u_xlat23 = (u_xlat5.x / x_178.x_B612HdriDusk3.z);
          u_xlat23 = (u_xlat23 + 1.0f);
          u_xlat5.x = (u_xlat5.x / u_xlat23);
          u_xlat5.x = (u_xlat5.x + x_178.x_B612HdriDusk3.y);
          u_xlat58 = max(u_xlat58, x_178.x_B612HdriDusk3.y);
          u_xlat58 = (u_xlat5.x / u_xlat58);
          u_xlat5 = vec4f(((u_xlat3.xzw * vec3f(u_xlat58))).xyz, u_xlat5.w);
          if (u_xlatb38) {
            x_7792 = u_xlat5.xyz;
          } else {
            x_7792 = u_xlat3.xzw;
          }
          u_xlat3 = vec4f(x_7792.x, u_xlat3.y, x_7792.yz);
          u_xlat38 = dot(u_xlat3.xzw, x_3602);
          let x_7811 = (-(vec3f(u_xlat38)) + u_xlat3.xzw);
          u_xlat3 = vec4f(x_7811.x, u_xlat3.y, x_7811.yz);
          let x_7822 = ((x_178.x_B612HdriDusk0.www * u_xlat3.xzw) + vec3f(u_xlat38));
          u_xlat3 = vec4f(x_7822.x, u_xlat3.y, x_7822.yz);
          let x_7827 = max(u_xlat3.xzw, vec3f());
          u_xlat3 = vec4f(x_7827.x, u_xlat3.y, x_7827.yz);
          u_xlat38 = max(x_178.x_B612HdriDusk1.w, 0.10000000149011611938f);
          u_xlat38 = (u_xlat3.y / u_xlat38);
          u_xlat38 = (-(u_xlat38) + 1.0f);
          u_xlat38 = max(u_xlat38, 0.0f);
          u_xlat38 = (u_xlat38 * u_xlat38);
          u_xlat5 = vec4f(((x_178.x_B612HdriDusk1.xyz + x_4418)).xyz, u_xlat5.w);
          u_xlat5 = vec4f((((vec3f(u_xlat38) * u_xlat5.xyz) + x_1823)).xyz, u_xlat5.w);
          u_xlat3 = vec4f(((u_xlat3.xzw * u_xlat5.xyz)).xyz, u_xlat3.w);
          u_xlat38 = (x_178.x_B612HdriParams.w + -(x_178.x_B612HdriDusk2.w));
          u_xlat57 = (-(x_178.x_B612HdriDusk2.w) + 90.0f);
          u_xlat57 = max(u_xlat57, 1.0f);
          u_xlat38 = (u_xlat38 / u_xlat57);
          u_xlat38 = clamp(u_xlat38, 0.0f, 1.0f);
          u_xlat5 = vec4f(((x_178.x_B612HdriDusk2.xyz + x_4418)).xyz, u_xlat5.w);
          u_xlat5 = vec4f((((vec3f(u_xlat38) * u_xlat5.xyz) + x_1823)).xyz, u_xlat5.w);
          u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat5.xyz) + -(u_xlat4.xyz))).xyz, u_xlat3.w);
          u_xlat19 = ((u_xlat0.xxx * u_xlat3.xyz) + u_xlat4.xyz);
        } else {
          u_xlat2.w = 0.02600000053644180298f;
          u_xlat0.x = dot(u_xlat2.xyw, u_xlat2.xyw);
          u_xlat0.x = inverseSqrt(u_xlat0.x);
          u_xlat38 = (u_xlat0.x * u_xlat2.w);
          u_xlat56 = ((-(u_xlat2.w) * u_xlat0.x) + 1.0f);
          u_xlat3.x = sqrt(u_xlat56);
          u_xlat21.x = ((u_xlat0.x * -0.00048696179874241352f) + 0.07426100224256515503f);
          u_xlat21.x = ((u_xlat21.x * u_xlat38) + -0.21211439371109008789f);
          u_xlat21.x = ((u_xlat21.x * u_xlat38) + 1.57072877883911132812f);
          u_xlat3.x = ((-(u_xlat21.x) * u_xlat3.x) + 1.57079637050628662109f);
          u_xlat2 = vec4f((((u_xlat2.xy * u_xlat0.xx) + x_3699)).xy, u_xlat2.zw);
          u_xlat0.x = dot(u_xlat2.xy, u_xlat2.xy);
          u_xlat0.x = inverseSqrt(u_xlat0.x);
          u_xlat2 = vec4f(((u_xlat0.xx * u_xlat2.xy)).xy, u_xlat2.zw);
          u_xlat39 = (x_178.x_B612SunDirection.xz + x_3699);
          u_xlat0.x = dot(u_xlat39, u_xlat39);
          u_xlat0.x = inverseSqrt(u_xlat0.x);
          u_xlat39 = (u_xlat0.xx * u_xlat39);
          u_xlat0.x = dot(u_xlat2.xy, u_xlat39);
          u_xlat0.x = ((u_xlat0.x * 0.5f) + 0.5f);
          u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
          u_xlat2 = vec4f(max(x_178.x_B612SkyParams.yw, x_3849).xy, u_xlat2.zw);
          u_xlat39.x = log2(u_xlat0.x);
          u_xlat2.x = (u_xlat2.x * u_xlat39.x);
          u_xlat2.x = exp2(u_xlat2.x);
          u_xlat4 = vec4f(((-(x_178.x_B612SkyHorizon.xyz) + x_178.x_B612SkyHorizonSun.xyz)).xyz, u_xlat4.w);
          u_xlat4 = vec4f((((u_xlat2.xxx * u_xlat4.xyz) + x_178.x_B612SkyHorizon.xyz)).xyz, u_xlat4.w);
          u_xlat57 = (x_178.x_B612SkyParams.x * 0.44999998807907104492f);
          u_xlat57 = max(u_xlat57, 0.00999999977648258209f);
          u_xlat3.w = (-(u_xlat38) / u_xlat57);
          let x_8077 = (u_xlat3.xw * vec2f(57.295780181884765625f, 1.44269502162933349609f));
          u_xlat21 = vec3f(x_8077.x, u_xlat21.y, x_8077.y);
          u_xlat57 = exp2(u_xlat21.z);
          u_xlat57 = (-(u_xlat57) + 1.0f);
          u_xlat5 = vec4f(((-(x_178.x_B612SkyZenith.xyz) + x_178.x_B612SkyHorizonSun.xyz)).xyz, u_xlat5.w);
          u_xlat5 = vec4f(((u_xlat5.xyz * x_3929)).xyz, u_xlat5.w);
          u_xlat2.x = (u_xlat2.x * x_178.x_B612SkyParams.z);
          u_xlat2.x = (u_xlat56 * u_xlat2.x);
          u_xlat5 = vec4f((((u_xlat2.xxx * u_xlat5.xyz) + x_178.x_B612SkyZenith.xyz)).xyz, u_xlat5.w);
          u_xlat5 = vec4f(((-(u_xlat4.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
          u_xlat4 = vec4f((((vec3f(u_xlat57) * u_xlat5.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
          u_xlat2.x = max(x_178.x_B612HazeParams.x, 0.10000000149011611938f);
          u_xlat2.x = (u_xlat2.x * -(u_xlat38));
          u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
          u_xlat2.x = exp2(u_xlat2.x);
          u_xlat2.x = (u_xlat2.x * x_178.x_B612HazeColor.w);
          u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
          u_xlat5 = vec4f(((-(u_xlat4.xyz) + x_178.x_B612HazeColor.xyz)).xyz, u_xlat5.w);
          let x_8185 = ((u_xlat2.xxx * u_xlat5.xyz) + u_xlat4.xyz);
          u_xlat2 = vec4f(x_8185.x, u_xlat2.y, x_8185.yz);
          u_xlat4 = vec4f(max(x_178.x_B612SkyParams2.xyz, x_4025).xyz, u_xlat4.w);
          u_xlat39.x = (u_xlat39.x * u_xlat4.x);
          u_xlat39.x = exp2(u_xlat39.x);
          u_xlat5 = vec4f(((u_xlat39.xxx * x_178.x_B612SkyGlow.xyz)).xyz, u_xlat5.w);
          u_xlat39.x = max(x_178.x_B612SkyGlow.w, 0.10000000149011611938f);
          u_xlat21.x = (-(u_xlat21.x) / u_xlat39.x);
          u_xlat21.x = (u_xlat21.x * 1.44269502162933349609f);
          u_xlat21.x = exp2(u_xlat21.x);
          let x_8238 = ((u_xlat5.xyz * u_xlat21.xxx) + u_xlat2.xzw);
          u_xlat2 = vec4f(x_8238.x, u_xlat2.y, x_8238.yz);
          u_xlat3.x = ((u_xlat3.x * 57.295780181884765625f) + -(x_178.x_B612SkyAnti.w));
          u_xlat3.x = (u_xlat3.x / u_xlat4.y);
          u_xlat0.x = (-(u_xlat0.x) + 1.0f);
          u_xlat0.x = log2(u_xlat0.x);
          u_xlat0.x = (u_xlat0.x * u_xlat4.z);
          u_xlat0.x = exp2(u_xlat0.x);
          u_xlat21 = (u_xlat0.xxx * x_178.x_B612SkyAnti.xyz);
          u_xlat0.x = (u_xlat3.x * -(u_xlat3.x));
          u_xlat0.x = (u_xlat0.x * 1.44269502162933349609f);
          u_xlat0.x = exp2(u_xlat0.x);
          let x_8301 = ((u_xlat21 * u_xlat0.xxx) + u_xlat2.xzw);
          u_xlat2 = vec4f(x_8301.x, u_xlat2.y, x_8301.yz);
          u_xlat19 = (u_xlat2.yyy * u_xlat2.xzw);
        }
      }
      u_xlat19 = (-(u_xlat18) + u_xlat19);
      u_xlat18 = ((u_xlat1.xxx * u_xlat19) + u_xlat18);
    }
  }
  SV_Target0 = vec4f(u_xlat18.xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(1) vs_TEXCOORD1_param : vec3f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD2_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

