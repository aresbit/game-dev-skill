//Assets/Levels/Desert/Materials/Shaders/Desert_FountainWater.shader
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

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
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
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position);
}

//Assets/Levels/Desert/Materials/Shaders/Desert_FountainWater.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Centre : vec4f,
  /* @offset(16) */
  x_Rings : vec4f,
  /* @offset(32) */
  x_Ripple : vec4f,
  /* @offset(48) */
  x_BodyColor : vec4f,
  /* @offset(64) */
  x_ShallowColor : vec4f,
  /* @offset(80) */
  x_FoamColor : vec4f,
  /* @offset(96) */
  x_DetailTile : f32,
  /* @offset(100) */
  x_DetailStrength : f32,
  /* @offset(104) */
  x_Reflection : f32,
  /* @offset(108) */
  x_Roughness : f32,
  /* @offset(112) */
  x_Sun : f32,
  /* @offset(116) */
  x_Radius : f32,
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
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  unity_OrthoParams : vec4f,
  /* @offset(176) */
  x_ScaleBiasRt : vec4f,
  /* @offset(192) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(256) */
  x_DesertSunDir : vec4f,
  /* @offset(272) */
  x_DesertSunColor : vec4f,
  /* @offset(288) */
  x_DesertHaze : vec4f,
  /* @offset(304) */
  x_DesertHaze2 : vec4f,
  /* @offset(320) */
  x_DesertHazeTint : vec4f,
  /* @offset(336) */
  x_DesertSkyGrade0 : vec4f,
  /* @offset(352) */
  x_DesertSkyGrade1 : vec4f,
  /* @offset(368) */
  x_DesertSkyGrade2 : vec4f,
  /* @offset(384) */
  x_DesertSkyGrade3 : vec4f,
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

alias Arr_2 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_2,
}

alias Arr_3 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_3,
}

alias Arr_4 = array<vec4f, 32u>;

alias Arr_5 = array<vec4f, 32u>;

alias Arr_6 = array<vec4f, 32u>;

alias Arr_7 = array<vec4f, 224u>;

alias Arr_8 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_4,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_5,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_6,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_7,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_8,
}

alias Arr_9 = array<vec4f, 4u>;

alias Arr_10 = array<vec4f, 4u>;

alias Arr_11 = array<vec4f, 2u>;

alias Arr_12 = array<vec4f, 4u>;

alias Arr_13 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_9,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_10,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_11,
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
  Xhlslcc_UnusedXunity_SHBr : vec4f,
  /* @offset(496) */
  Xhlslcc_UnusedXunity_SHBg : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedXunity_SHBb : vec4f,
  /* @offset(528) */
  unity_SHC : vec4f,
  /* @offset(544) */
  Xhlslcc_UnusedXunity_RendererBounds_Min : vec4f,
  /* @offset(560) */
  Xhlslcc_UnusedXunity_RendererBounds_Max : vec4f,
  /* @offset(576) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_12,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_13,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_82 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_178 : PGlobals;

@group(0) @binding(4) var x_DetailNormal : texture_2d<f32>;

@group(0) @binding(9) var sampler_DetailNormal : sampler;

@group(1) @binding(5) var<uniform> x_677 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1028 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_1208 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_1451 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(6) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(4) var<uniform> x_1891 : UnityPerDraw;

@group(0) @binding(3) var x_DesertHorizonRing : texture_2d<f32>;

@group(0) @binding(8) var sampler_DesertHorizonRing : sampler;

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

const x_218 = vec2f(1.44269502162933349609f);

const x_558 = vec2f(2.0f);

const x_560 = vec2f(-1.0f);

const x_604 = vec2f(0.5f);

const x_848 = vec2f(1.0f);

const x_1601 = vec3f(1.0f);

const x_2134 = vec3f(0.25f, 0.40000000596046447754f, 1.29999995231628417969f);

const x_2184 = vec2f(3.0f);

const x_2195 = vec2f(0.10310000181198120117f);

const x_2207 = vec3f(33.3300018310546875f);

const x_2242 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_2245 = vec4f(0.10310000181198120117f);

const x_2250 = vec4f(33.3300018310546875f);

const x_3699 = vec3f(-1.0f);

const x_3768 = vec2f(0.00000999999974737875f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat30 : f32;
  var u_xlat45 : f32;
  var u_xlat1 : vec3f;
  var u_xlat31 : vec2f;
  var u_xlatb2 : vec2<bool>;
  var u_xlat32 : vec2f;
  var u_xlatb3 : vec2<bool>;
  var u_xlat33 : vec2f;
  var u_xlat46 : f32;
  var u_xlat4 : vec4f;
  var u_xlat34 : vec2f;
  var u_xlat5 : vec4f;
  var x_332 : f32;
  var u_xlat48 : f32;
  var u_xlatb4 : bool;
  var u_xlatb33 : bool;
  var u_xlatb15 : bool;
  var u_xlatb0 : bool;
  var x_474 : f32;
  var u_xlat15 : vec3f;
  var u_xlat6 : vec3f;
  var txVec0 : vec3f;
  var u_xlatb46 : bool;
  var u_xlat7 : vec3f;
  var u_xlatu7 : vec2u;
  var u_xlatu37 : vec2u;
  var u_xlati49 : i32;
  var u_xlatu49 : u32;
  var u_xlat50 : f32;
  var u_xlatb51 : bool;
  var x_953 : f32;
  var u_xlatu50 : u32;
  var u_xlatu51 : u32;
  var u_xlati7 : vec4i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati38 : vec2i;
  var u_xlati50 : i32;
  var u_xlati51 : i32;
  var u_xlatb7 : vec4<bool>;
  var u_xlatu8 : vec2u;
  var u_xlatu38 : vec2u;
  var u_xlat9 : vec3f;
  var u_xlat54 : f32;
  var u_xlatu10 : u32;
  var u_xlatu25 : vec2u;
  var u_xlatb55 : bool;
  var u_xlatu11 : vec4u;
  var u_xlatb11 : bool;
  var u_xlatu55 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu12 : vec2u;
  var u_xlati11 : vec4i;
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
  var u_xlati42 : vec2i;
  var u_xlati13 : vec4i;
  var u_xlati14 : vec2i;
  var u_xlati12 : vec3i;
  var u_xlati26 : vec2i;
  var u_xlati41 : i32;
  var u_xlati55 : i32;
  var u_xlatb10 : bool;
  var u_xlati10 : i32;
  var u_xlat11 : vec3f;
  var u_xlat12 : vec3f;
  var u_xlat55 : f32;
  var u_xlat26 : vec3f;
  var x_1502 : f32;
  var x_1516 : f32;
  var x_1530 : f32;
  var x_1577 : vec3f;
  var u_xlatu56 : u32;
  var u_xlat56 : f32;
  var u_xlat27 : vec3f;
  var u_xlatb42 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_1636 : f32;
  var x_1649 : f32;
  var u_xlat41 : f32;
  var u_xlatu41 : u32;
  var u_xlatb49 : bool;
  var u_xlat49 : f32;
  var u_xlat8 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat20 : vec3f;
  var u_xlat19 : f32;
  var u_xlat17 : f32;
  var u_xlat47 : f32;
  var u_xlat18 : f32;
  var u_xlatb45 : bool;
  var u_xlat16 : vec3f;
  var u_xlatb31 : bool;
  var x_3390 : f32;
  var x_3560 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec3f(((vs_TEXCOORD0.zx + -(x_82.x_Centre.yx))).xy, u_xlat0.z);
  u_xlat30 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat30 = sqrt(u_xlat30);
  u_xlat45 = max(u_xlat30, 0.00009999999747378752f);
  u_xlat1 = vec3f(((u_xlat0.yx / vec2f(u_xlat45))).xy, u_xlat1.z);
  u_xlat45 = max(x_82.x_Ripple.y, 0.00999999977648258209f);
  u_xlat45 = (6.28318548202514648438f / u_xlat45);
  u_xlat31.x = (u_xlat45 * x_82.x_Ripple.z);
  u_xlatb2 = ((x_82.x_Rings.xyxx >= vec4f())).xy;
  u_xlat32 = (vec2f(u_xlat30) + -(x_82.x_Rings.xy));
  u_xlatb3 = ((vec4f(u_xlat30) >= x_82.x_Rings.xyxx)).xy;
  u_xlat33.x = select(-1.0f, 1.0f, u_xlatb3.x);
  u_xlat33.y = select(-1.0f, 1.0f, u_xlatb3.y);
  u_xlat46 = (u_xlat31.x * x_178.x_Time.y);
  u_xlat4 = vec4f((((vec2f(u_xlat45) * abs(u_xlat32)) + -(vec2f(u_xlat46)))).xy, u_xlat4.zw);
  u_xlat4 = vec4f(cos(u_xlat4.xy).xy, u_xlat4.zw);
  u_xlat4 = vec4f(((u_xlat4.xy * x_82.x_Ripple.xx)).xy, u_xlat4.zw);
  u_xlat34 = (-(abs(u_xlat32)) * x_82.x_Ripple.ww);
  u_xlat34 = (u_xlat34 * x_218);
  u_xlat34 = exp2(u_xlat34);
  u_xlat4 = vec4f(((u_xlat34 * u_xlat4.xy)).xy, u_xlat4.zw);
  u_xlat46 = (x_178.x_Time.y * 0.69999998807907104492f);
  u_xlat34.x = ((x_178.x_Time.y * 1.37000000476837158203f) + 0.89999997615814208984f);
  u_xlat45 = (u_xlat45 * 1.30999994277954101562f);
  u_xlat31.x = (u_xlat31.x * u_xlat34.x);
  u_xlat34 = (x_82.x_Ripple.xw * vec2f(0.60000002384185791016f, 1.20000004768371582031f));
  u_xlat31.x = (u_xlat31.x * 1.30999994277954101562f);
  u_xlat5 = vec4f((((vec2f(u_xlat45) * abs(u_xlat32)) + -(u_xlat31.xx))).xy, u_xlat5.zw);
  u_xlat5 = vec4f(cos(u_xlat5.xy).xy, u_xlat5.zw);
  u_xlat5 = vec4f(((u_xlat34.xx * u_xlat5.xy)).xy, u_xlat5.zw);
  u_xlat34 = (-(abs(u_xlat32)) * u_xlat34.yy);
  u_xlat34 = (u_xlat34 * x_218);
  u_xlat34 = exp2(u_xlat34);
  u_xlat34 = (u_xlat34 * u_xlat5.xy);
  u_xlat45 = (u_xlat33.x * u_xlat34.x);
  u_xlat45 = ((u_xlat4.x * u_xlat33.x) + u_xlat45);
  u_xlat45 = select(0.0f, u_xlat45, u_xlatb2.x);
  u_xlat31.x = ((u_xlat4.y * u_xlat33.y) + u_xlat45);
  u_xlat31.x = ((u_xlat34.y * u_xlat33.y) + u_xlat31.x);
  if (u_xlatb2.y) {
    x_332 = u_xlat31.x;
  } else {
    x_332 = u_xlat45;
  }
  u_xlat45 = x_332;
  u_xlat31.x = min(abs(u_xlat0.y), abs(u_xlat0.x));
  u_xlat33.x = max(abs(u_xlat0.y), abs(u_xlat0.x));
  u_xlat33.x = (1.0f / u_xlat33.x);
  u_xlat31.x = (u_xlat31.x * u_xlat33.x);
  u_xlat33.x = (u_xlat31.x * u_xlat31.x);
  u_xlat48 = ((u_xlat33.x * 0.02083509974181652069f) + -0.08513300120830535889f);
  u_xlat48 = ((u_xlat33.x * u_xlat48) + 0.18014100193977355957f);
  u_xlat48 = ((u_xlat33.x * u_xlat48) + -0.33029949665069580078f);
  u_xlat33.x = ((u_xlat33.x * u_xlat48) + 0.99986600875854492188f);
  u_xlat48 = (u_xlat31.x * u_xlat33.x);
  u_xlatb4 = (abs(u_xlat0.y) < abs(u_xlat0.x));
  u_xlat48 = ((u_xlat48 * -2.0f) + 1.57079637050628662109f);
  u_xlat48 = select(0.0f, u_xlat48, u_xlatb4);
  u_xlat31.x = ((u_xlat31.x * u_xlat33.x) + u_xlat48);
  u_xlatb33 = (u_xlat0.y < -(u_xlat0.y));
  u_xlat33.x = select(0.0f, -3.14159274101257324219f, u_xlatb33);
  u_xlat31.x = (u_xlat31.x + u_xlat33.x);
  u_xlat33.x = min(u_xlat0.y, u_xlat0.x);
  u_xlat0.x = max(u_xlat0.y, u_xlat0.x);
  u_xlatb15 = (u_xlat33.x < -(u_xlat33.x));
  u_xlatb0 = (u_xlat0.x >= -(u_xlat0.x));
  u_xlatb0 = (u_xlatb0 & u_xlatb15);
  if (u_xlatb0) {
    x_474 = -(u_xlat31.x);
  } else {
    x_474 = u_xlat31.x;
  }
  u_xlat0.x = x_474;
  u_xlat15.x = ((u_xlat0.x * 5.0f) + u_xlat46);
  u_xlat15.x = ((u_xlat30 * 3.0f) + u_xlat15.x);
  u_xlat15.x = sin(u_xlat15.x);
  u_xlat15.x = ((u_xlat15.x * 0.25f) + 0.75f);
  u_xlat15.x = (u_xlat15.x * u_xlat45);
  u_xlat31 = (vs_TEXCOORD0.xz / vec2f(x_82.x_DetailTile));
  u_xlat33 = ((x_178.x_Time.yy * vec2f(0.03099999949336051941f, 0.01700000092387199402f)) + u_xlat31);
  let x_542 = u_xlat33;
  let x_544 = x_178.x_GlobalMipBias.x;
  let x_545 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_542, x_544);
  u_xlat4 = vec4f(x_545.xyw.xyz, u_xlat4.w);
  u_xlat4.x = (u_xlat4.x * u_xlat4.z);
  u_xlat33 = ((u_xlat4.xy * x_558) + x_560);
  u_xlat4 = vec4f(((x_178.x_Time.yy * vec2f(0.02300000004470348358f, 0.04100000113248825073f))).xy, u_xlat4.zw);
  u_xlat31 = ((u_xlat31 * vec2f(1.70000004768371582031f)) + -(u_xlat4.xy));
  let x_582 = u_xlat31;
  let x_584 = x_178.x_GlobalMipBias.x;
  let x_585 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_582, x_584);
  u_xlat4 = vec4f(x_585.xyw.xyz, u_xlat4.w);
  u_xlat4.x = (u_xlat4.x * u_xlat4.z);
  u_xlat31 = ((u_xlat4.xy * x_558) + x_560);
  u_xlat31 = (u_xlat31 + u_xlat33);
  u_xlat31 = (u_xlat31 * x_604);
  let x_612 = vec2f(x_82.x_DetailStrength, x_82.x_DetailStrength);
  u_xlat31 = (u_xlat31 * vec2f(x_612.x, x_612.y));
  let x_623 = ((u_xlat1.xy * u_xlat15.xx) + u_xlat31);
  u_xlat15 = vec3f(x_623.x, u_xlat15.y, x_623.y);
  let x_628 = -(u_xlat15.xz);
  u_xlat1 = vec3f(x_628.x, u_xlat1.y, x_628.y);
  u_xlat1.y = 1.0f;
  u_xlat15.x = dot(u_xlat1, u_xlat1);
  u_xlat15.x = inverseSqrt(u_xlat15.x);
  u_xlat1 = (u_xlat15.xxx * u_xlat1);
  u_xlat4 = vec4f(((-(vs_TEXCOORD0) + x_178.x_WorldSpaceCameraPos)).xyz, u_xlat4.w);
  u_xlat15.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat15.x = inverseSqrt(u_xlat15.x);
  u_xlat5 = vec4f(((u_xlat15.xxx * u_xlat4.xyz)).xyz, u_xlat5.w);
  u_xlat6 = (vs_TEXCOORD0.yyy * x_677.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz);
  u_xlat6 = ((x_677.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat6);
  u_xlat6 = ((x_677.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat6);
  u_xlat6 = (u_xlat6 + x_677.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz);
  let x_706 = u_xlat6.xy;
  txVec0 = vec3f(x_706.x, x_706.y, u_xlat6.z);
  u_xlat45 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat46 = (-(x_677.x_MainLightShadowParams.x) + 1.0f);
  u_xlat45 = ((u_xlat45 * x_677.x_MainLightShadowParams.x) + u_xlat46);
  u_xlatb46 = (0.0f >= u_xlat6.z);
  u_xlatb33 = (u_xlat6.z >= 1.0f);
  u_xlatb46 = (u_xlatb46 | u_xlatb33);
  u_xlat45 = select(u_xlat45, 1.0f, u_xlatb46);
  u_xlat6 = (vs_TEXCOORD0 + -(x_178.x_WorldSpaceCameraPos));
  u_xlat46 = dot(u_xlat6, u_xlat6);
  u_xlat33.x = ((u_xlat46 * x_677.x_MainLightShadowParams.z) + x_677.x_MainLightShadowParams.w);
  u_xlat33.x = clamp(u_xlat33.x, 0.0f, 1.0f);
  u_xlat48 = (-(u_xlat45) + 1.0f);
  u_xlat45 = ((u_xlat33.x * u_xlat48) + u_xlat45);
  u_xlat33.x = dot(u_xlat1, u_xlat5.xyz);
  u_xlat33.x = clamp(u_xlat33.x, 0.0f, 1.0f);
  u_xlat33.x = (-(u_xlat33.x) + 1.0f);
  u_xlat48 = (u_xlat33.x * u_xlat33.x);
  u_xlat48 = (u_xlat48 * u_xlat48);
  u_xlat33.x = (u_xlat48 * u_xlat33.x);
  u_xlat33.x = ((u_xlat33.x * 0.98000001907348632812f) + 0.01999999955296516418f);
  u_xlat48 = dot(-(u_xlat5.xyz), u_xlat1);
  u_xlat48 = (u_xlat48 + u_xlat48);
  u_xlat5 = vec4f((((u_xlat1 * -(vec3f(u_xlat48))) + -(u_xlat5.xyz))).xyz, u_xlat5.w);
  u_xlat5.w = max(u_xlat5.y, 0.07999999821186065674f);
  u_xlat48 = dot(u_xlat5.xzw, u_xlat5.xzw);
  u_xlat48 = inverseSqrt(u_xlat48);
  u_xlat5 = vec4f(((vec3f(u_xlat48) * u_xlat5.xwz)).xyz, u_xlat5.w);
  let x_851 = x_178.x_ScaledScreenParams.xy;
  u_xlat7 = vec3f(((x_848 / vec2f(x_851.x, x_851.y))).xy, u_xlat7.z);
  u_xlat7 = vec3f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.z);
  u_xlat48 = ((u_xlat7.y * x_178.x_ScaleBiasRt.x) + x_178.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat48) + 1.0f);
  u_xlat48 = ((-(x_82.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat48 = (u_xlat48 * x_82.x_Roughness);
  u_xlat48 = (u_xlat48 * 6.0f);
  u_xlat7 = vec3f(((u_xlat7.xz * x_178.x_FPParams1.xy)).xy, u_xlat7.z);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu37 = vec2u(x_178.x_FPParams1.zw);
  u_xlati49 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu37.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu49 = (u_xlatu37.y * bitcast<u32>(u_xlati49));
  u_xlat7.x = -(x_178.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat7.y = -(x_178.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat7.z = -(x_178.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat50 = dot(u_xlat7, u_xlat6);
  u_xlatb51 = (x_178.unity_OrthoParams.w == 0.0f);
  u_xlat7.x = log2(u_xlat50);
  if (u_xlatb51) {
    x_953 = u_xlat7.x;
  } else {
    x_953 = u_xlat50;
  }
  u_xlat50 = x_953;
  u_xlat50 = ((u_xlat50 * x_178.x_FPParams0.x) + x_178.x_FPParams0.y);
  u_xlatu50 = u32(u_xlat50);
  u_xlatu51 = u32(x_178.x_FPParams2.x);
  u_xlatu51 = (u_xlatu51 + 4294967295u);
  u_xlati7.x = (bitcast<i32>(u_xlatu37.y) + 2i);
  u_xlatu50 = min(u_xlatu50, u_xlatu51);
  u_xlatu7 = ((vec2u(u_xlatu50) * bitcast<vec2u>(u_xlati7.xx)) + vec2u(1u, 2u));
  u_xlatu50 = (u_xlatu7.x >> 2u);
  param = bitcast<i32>(u_xlatu7.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_1008 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu7.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_1015 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_1016 = vec2i(x_1008, x_1015);
  u_xlati7 = vec4i(x_1016.x, u_xlati7.y, x_1016.y, u_xlati7.w);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_1028.urp_ZBins[bitcast<i32>(u_xlatu50)].wy)));
  let x_1039 = ~(u_xlati7.xz);
  u_xlati7 = vec4i(x_1039.x, u_xlati7.yz, x_1039.y);
  u_xlati38 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_1028.urp_ZBins[bitcast<i32>(u_xlatu50)].zx)));
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati38) | bitcast<vec2u>(u_xlati8)));
  u_xlati50 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati51 = bitcast<i32>((bitcast<u32>(u_xlati7.w) & bitcast<u32>(u_xlati8.y)));
  u_xlatu50 = (bitcast<u32>(u_xlati50) | bitcast<u32>(u_xlati51));
  u_xlatu51 = u32(x_178.x_FPParams0.z);
  let x_1092 = ((vec4f() < u_xlat5.xxyz)).xzw;
  u_xlatb7 = vec4<bool>(x_1092.x, u_xlatb7.y, x_1092.yz);
  u_xlatu8.x = u_xlatu49;
  u_xlatu8.y = u_xlatu7.y;
  u_xlatu38.x = 0u;
  u_xlatu38.y = u_xlatu50;
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlat54 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu10 = (u_xlatu38.y >> 16u);
    u_xlatu25 = u_xlatu38;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb55 = (bitcast<i32>(u_xlatu25.x) == 0i);
      u_xlatu11.x = (u_xlatu25.y & 65535u);
      u_xlatb11 = (u_xlatu10 >= u_xlatu11.x);
      u_xlatb55 = (u_xlatb55 & u_xlatb11);
      if (!(u_xlatb55)) {
        break;
      }
      param_6 = u_xlatu25.y;
      param_7 = 5i;
      param_8 = 11i;
      let x_1160 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu55 = x_1160;
      u_xlatu11 = (u_xlatu8.xxyy + vec4u(u_xlatu55));
      u_xlatu12 = (u_xlatu11.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu11.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_1178 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu11.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_1185 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu11.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_1192 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu11.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_1199 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati11 = vec4i(x_1178, x_1185, x_1192, x_1199);
      u_xlati42 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_1208.urp_Tiles[bitcast<i32>(u_xlatu12.x)].wy)));
      u_xlati13 = ~(u_xlati11);
      u_xlati14 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_1208.urp_Tiles[bitcast<i32>(u_xlatu12.x)].zx)));
      let x_1242 = bitcast<vec2i>((bitcast<vec2u>(u_xlati42) | bitcast<vec2u>(u_xlati14)));
      u_xlati12 = vec3i(x_1242.x, u_xlati12.y, x_1242.y);
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati12.x)));
      u_xlati26.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati12.z)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati26.x) | bitcast<u32>(u_xlati11.x)));
      u_xlati26 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_1028.urp_ZBins[bitcast<i32>(u_xlatu12.y)].wy)));
      u_xlati12 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_1028.urp_ZBins[bitcast<i32>(u_xlatu12.y)].zx))).xy, u_xlati12.z);
      u_xlati26 = bitcast<vec2i>((bitcast<vec2u>(u_xlati26) | bitcast<vec2u>(u_xlati12.xy)));
      u_xlati26.x = bitcast<i32>((bitcast<u32>(u_xlati11.w) & bitcast<u32>(u_xlati26.x)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati26.y)));
      u_xlati26.x = bitcast<i32>((bitcast<u32>(u_xlati41) | bitcast<u32>(u_xlati26.x)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati26.x) & bitcast<u32>(u_xlati11.x)));
      u_xlati26.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu25.y) & 31i)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati26.x) & bitcast<u32>(u_xlati11.x)));
      u_xlati55 = (bitcast<i32>(u_xlatu55) << bitcast<u32>(5i));
      u_xlatu55 = (bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati55)))) + u_xlatu10);
      u_xlatu55 = min(u_xlatu55, 31u);
      u_xlatu55 = (bitcast<u32>(-(bitcast<i32>(u_xlatu55))) + 31u);
      u_xlatu55 = (4294967295u >> (u_xlatu55 & 31u));
      u_xlatu25.x = (u_xlatu55 & bitcast<u32>(u_xlati11.x));
      u_xlati55 = (bitcast<i32>(u_xlatu25.y) + 32i);
      u_xlatu25.y = (bitcast<u32>(u_xlati55) & 4294967264u);
    }
    u_xlatu38.y = u_xlatu25.y;
    u_xlatb10 = (bitcast<i32>(u_xlatu25.x) != 0i);
    u_xlatb55 = (u_xlat54 < 0.99000000953674316406f);
    u_xlatb10 = (u_xlatb55 & u_xlatb10);
    if (!(u_xlatb10)) {
      break;
    }
    u_xlati10 = bitcast<i32>(firstTrailingBit(u_xlatu25.x));
    u_xlati55 = (1i << bitcast<u32>((u_xlati10 & 31i)));
    u_xlatu38.x = (bitcast<u32>(u_xlati55) ^ u_xlatu25.x);
    u_xlati55 = (bitcast<i32>(u_xlatu38.y) + -32i);
    u_xlati55 = bitcast<i32>((bitcast<u32>(u_xlati55) & 65504u));
    u_xlati10 = (u_xlati10 + u_xlati55);
    u_xlati10 = (-(bitcast<i32>(u_xlatu51)) + u_xlati10);
    u_xlat11 = (vs_TEXCOORD0 + -(x_1451.urp_ReflProbes_BoxMin[u_xlati10].xyz));
    u_xlat12 = (-(vs_TEXCOORD0) + x_1451.urp_ReflProbes_BoxMax[u_xlati10].xyz);
    u_xlat11 = min(u_xlat11, u_xlat12);
    u_xlat11 = (u_xlat11 / x_1451.urp_ReflProbes_BoxMax[u_xlati10].www);
    u_xlat55 = min(u_xlat11.z, u_xlat11.y);
    u_xlat55 = min(u_xlat55, u_xlat11.x);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat11.x = (-(u_xlat54) + 1.0f);
    u_xlat55 = min(u_xlat55, u_xlat11.x);
    u_xlatb11 = (0.0f < x_1451.urp_ReflProbes_ProbePosition[u_xlati10].w);
    if (u_xlatb7.x) {
      x_1502 = x_1451.urp_ReflProbes_BoxMax[u_xlati10].x;
    } else {
      x_1502 = x_1451.urp_ReflProbes_BoxMin[u_xlati10].x;
    }
    u_xlat26.x = x_1502;
    if (u_xlatb7.z) {
      x_1516 = x_1451.urp_ReflProbes_BoxMax[u_xlati10].y;
    } else {
      x_1516 = x_1451.urp_ReflProbes_BoxMin[u_xlati10].y;
    }
    u_xlat26.y = x_1516;
    if (u_xlatb7.w) {
      x_1530 = x_1451.urp_ReflProbes_BoxMax[u_xlati10].z;
    } else {
      x_1530 = x_1451.urp_ReflProbes_BoxMin[u_xlati10].z;
    }
    u_xlat26.z = x_1530;
    u_xlat26 = (u_xlat26 + -(vs_TEXCOORD0));
    u_xlat26 = (u_xlat26 / u_xlat5.xyz);
    u_xlat26.x = min(u_xlat26.y, u_xlat26.x);
    u_xlat26.x = min(u_xlat26.z, u_xlat26.x);
    u_xlat12 = (vs_TEXCOORD0 + -(x_1451.urp_ReflProbes_ProbePosition[u_xlati10].xyz));
    u_xlat26 = ((u_xlat5.xyz * u_xlat26.xxx) + u_xlat12);
    if (u_xlatb11) {
      x_1577 = u_xlat26;
    } else {
      x_1577 = u_xlat5.xyz;
    }
    u_xlat11 = x_1577;
    u_xlatu56 = u32(abs(x_1451.urp_ReflProbes_ProbePosition[u_xlati10].w));
    u_xlatu56 = (u_xlatu56 + 4294967295u);
    u_xlat56 = f32(u_xlatu56);
    u_xlat56 = min(u_xlat48, u_xlat56);
    u_xlat12.x = dot(abs(u_xlat11), x_1601);
    u_xlat12.x = max(u_xlat12.x, 0.00000099999999747524f);
    u_xlat12.x = (1.0f / u_xlat12.x);
    u_xlat27 = (u_xlat11.zxy * u_xlat12.xxx);
    u_xlat27.x = -(u_xlat27.x);
    u_xlat27.x = clamp(u_xlat27.x, 0.0f, 1.0f);
    u_xlatb42 = ((u_xlat27.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat27;
    if (u_xlatb42.x) {
      x_1636 = u_xlat27.x;
    } else {
      x_1636 = -(u_xlat27.x);
    }
    hlslcc_movcTemp.x = x_1636;
    if (u_xlatb42.y) {
      x_1649 = u_xlat27.x;
    } else {
      x_1649 = -(u_xlat27.x);
    }
    hlslcc_movcTemp.y = x_1649;
    u_xlat27 = hlslcc_movcTemp;
    u_xlat11 = vec3f((((u_xlat11.xy * u_xlat12.xx) + u_xlat27.xy)).xy, u_xlat11.z);
    u_xlat11 = vec3f((((u_xlat11.xy * x_604) + x_604)).xy, u_xlat11.z);
    u_xlat11 = vec3f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.z);
    u_xlat41 = floor(u_xlat56);
    u_xlat12.x = (u_xlat41 + 1.0f);
    u_xlat56 = (-(u_xlat41) + u_xlat56);
    u_xlatu41 = u32(u_xlat41);
    u_xlati41 = ((u_xlati10 * 7i) + bitcast<i32>(u_xlatu41));
    u_xlatu12.x = u32(u_xlat12.x);
    u_xlati10 = ((u_xlati10 * 7i) + bitcast<i32>(u_xlatu12.x));
    u_xlat12 = vec3f((((u_xlat11.xy * x_1451.urp_ReflProbes_MipScaleOffset[u_xlati41].xy) + x_1451.urp_ReflProbes_MipScaleOffset[u_xlati41].zw)).xy, u_xlat12.z);
    u_xlat12 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat12.xy, 0.0f).xyz;
    u_xlat11 = vec3f((((u_xlat11.xy * x_1451.urp_ReflProbes_MipScaleOffset[u_xlati10].xy) + x_1451.urp_ReflProbes_MipScaleOffset[u_xlati10].zw)).xy, u_xlat11.z);
    u_xlat11 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat11.xy, 0.0f).xyz;
    u_xlat11 = (-(u_xlat12) + u_xlat11);
    u_xlat11 = ((vec3f(u_xlat56) * u_xlat11) + u_xlat12);
    u_xlat9 = ((vec3f(u_xlat55) * u_xlat11) + u_xlat9);
    u_xlat54 = (u_xlat54 + u_xlat55);
  }
  u_xlatb49 = (u_xlat54 < 0.99000000953674316406f);
  if (u_xlatb49) {
    u_xlat5 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat5.xyz, u_xlat48);
    u_xlat48 = (-(u_xlat54) + 1.0f);
    u_xlat49 = (u_xlat5.w + -1.0f);
    u_xlat49 = ((x_178.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat49) + 1.0f);
    u_xlat49 = max(u_xlat49, 0.0f);
    u_xlat49 = log2(u_xlat49);
    u_xlat49 = (u_xlat49 * x_178.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat49 = exp2(u_xlat49);
    u_xlat49 = (u_xlat49 * x_178.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat5 = vec4f(((u_xlat5.xyz * vec3f(u_xlat49))).xyz, u_xlat5.w);
    u_xlat9 = ((vec3f(u_xlat48) * u_xlat5.xyz) + u_xlat9);
  }
  u_xlat48 = (x_82.x_Radius * 0.44999998807907104492f);
  u_xlat49 = ((-(x_82.x_Radius) * 0.55000001192092895508f) + u_xlat30);
  u_xlat48 = (1.0f / u_xlat48);
  u_xlat48 = (u_xlat48 * u_xlat49);
  u_xlat48 = clamp(u_xlat48, 0.0f, 1.0f);
  u_xlat49 = ((u_xlat48 * -2.0f) + 3.0f);
  u_xlat48 = (u_xlat48 * u_xlat48);
  u_xlat48 = (u_xlat48 * u_xlat49);
  u_xlat48 = (u_xlat48 * 0.60000002384185791016f);
  u_xlat5 = vec4f(((-(x_82.x_BodyColor.xyz) + x_82.x_ShallowColor.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((vec3f(u_xlat48) * u_xlat5.xyz) + x_82.x_BodyColor.xyz)).xyz, u_xlat5.w);
  u_xlat7.x = dot(x_1891.unity_SHAr.yw, x_848);
  u_xlat7.y = dot(x_1891.unity_SHAg.yw, x_848);
  u_xlat7.z = dot(x_1891.unity_SHAb.yw, x_848);
  u_xlat7 = (u_xlat7 + -(x_1891.unity_SHC.xyz));
  u_xlat48 = x_178.x_MainLightPosition.y;
  u_xlat48 = clamp(u_xlat48, 0.0f, 1.0f);
  u_xlat8 = vec4f(((vec3f(u_xlat48) * x_178.x_MainLightColor.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((vec3f(u_xlat45) * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f((((u_xlat8.xyz * vec3f(0.60000002384185791016f)) + u_xlat7)).xyz, u_xlat8.w);
  u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat8.xyz)).xyz, u_xlat5.w);
  u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat15.xxx) + x_178.x_MainLightPosition.xyz)).xyz, u_xlat4.w);
  u_xlat15.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat15.x = inverseSqrt(u_xlat15.x);
  u_xlat4 = vec4f(((u_xlat15.xxx * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat15.x = dot(u_xlat1, u_xlat4.xyz);
  u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
  u_xlat15.x = log2(u_xlat15.x);
  u_xlat1 = vec3f(((u_xlat15.xx * vec2f(900.0f, 90.0f))).xy, u_xlat1.z);
  u_xlat1 = vec3f(exp2(u_xlat1.xy).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * vec2f(x_82.x_Sun))).xy, u_xlat1.z);
  u_xlat15.x = ((u_xlat1.y * 0.03999999910593032837f) + u_xlat1.x);
  let x_2029 = vec3f(x_82.x_Reflection, x_82.x_Reflection, x_82.x_Reflection);
  u_xlat1 = ((u_xlat9 * vec3f(x_2029.x, x_2029.y, x_2029.z)) + -(u_xlat5.xyz));
  u_xlat1 = ((u_xlat33.xxx * u_xlat1) + u_xlat5.xyz);
  u_xlat4 = vec4f(((u_xlat15.xxx * x_178.x_MainLightColor.xyz)).xyz, u_xlat4.w);
  u_xlat1 = ((u_xlat4.xyz * vec3f(u_xlat45)) + u_xlat1);
  if (u_xlatb2.x) {
    u_xlat15.x = max(x_82.x_Rings.z, 0.00999999977648258209f);
    u_xlat15.x = (u_xlat32.x / u_xlat15.x);
    u_xlat15.x = (u_xlat15.x * u_xlat15.x);
    u_xlat15.x = (u_xlat15.x * -1.44269502162933349609f);
    u_xlat15.x = exp2(u_xlat15.x);
    u_xlat2.x = max(u_xlat32.x, 0.0f);
    u_xlat32.x = (x_82.x_Rings.z * 3.0f);
    u_xlat32.x = max(u_xlat32.x, 0.01999999955296516418f);
    u_xlat2.x = (-(u_xlat2.x) / u_xlat32.x);
    u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
    u_xlat2.x = exp2(u_xlat2.x);
    u_xlat32.x = select(0.0f, 1.0f, u_xlatb3.x);
    u_xlat2.x = (u_xlat32.x * u_xlat2.x);
    let x_2135 = (x_178.x_Time.yyy * x_2134);
    u_xlat3 = vec4f(x_2135.x, u_xlat3.y, x_2135.yz);
    u_xlat32.x = ((u_xlat0.x * 7.0f) + u_xlat3.x);
    u_xlat3.x = ((-(x_178.x_Time.y) * 0.11999999731779098511f) + u_xlat30);
    u_xlat3.x = (u_xlat3.x * 10.0f);
    u_xlat4.x = floor(u_xlat32.x);
    u_xlat4.y = floor(u_xlat3.x);
    u_xlat5.x = fract(u_xlat32.x);
    u_xlat5.y = fract(u_xlat3.x);
    u_xlat34 = (u_xlat5.xy * u_xlat5.xy);
    u_xlat5 = vec4f((((-(u_xlat5.xy) * x_558) + x_2184)).xy, u_xlat5.zw);
    u_xlat34 = (u_xlat34 * u_xlat5.xy);
    u_xlat5 = vec4f(((u_xlat4.xy * x_2195)).xy, u_xlat5.zw);
    u_xlat5 = vec4f(fract(u_xlat5.xy).xy, u_xlat5.zw);
    u_xlat8 = vec4f(((u_xlat5.yxx + x_2207)).xyz, u_xlat8.w);
    u_xlat32.x = dot(u_xlat5.xyx, u_xlat8.xyz);
    u_xlat5 = vec4f(((u_xlat32.xx + u_xlat5.xy)).xy, u_xlat5.zw);
    u_xlat32.x = (u_xlat5.y + u_xlat5.x);
    u_xlat32.x = (u_xlat5.x * u_xlat32.x);
    u_xlat32.x = fract(u_xlat32.x);
    u_xlat5 = (u_xlat4.yxyx + x_2242);
    u_xlat5 = (u_xlat5 * x_2245);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_2250);
    u_xlat3.x = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat5 = vec4f(((u_xlat3.xx + u_xlat5.yx)).xy, u_xlat5.zw);
    u_xlat3.x = (u_xlat5.y + u_xlat5.x);
    u_xlat3.x = (u_xlat5.x * u_xlat3.x);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat5.x = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat5 = vec4f(((u_xlat5.xx + u_xlat5.wz)).xy, u_xlat5.zw);
    u_xlat20.x = (u_xlat5.y + u_xlat5.x);
    u_xlat5.x = (u_xlat5.x * u_xlat20.x);
    u_xlat5.x = fract(u_xlat5.x);
    u_xlat4 = vec4f(((u_xlat4.xy + x_848)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_2195)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat20 = (u_xlat4.yxx + x_2207);
    u_xlat20.x = dot(u_xlat4.xyx, u_xlat20);
    u_xlat4 = vec4f(((u_xlat4.xy + u_xlat20.xx)).xy, u_xlat4.zw);
    u_xlat19 = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat19);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat3.x = (-(u_xlat32.x) + u_xlat3.x);
    u_xlat32.x = ((u_xlat34.x * u_xlat3.x) + u_xlat32.x);
    u_xlat3.x = (-(u_xlat5.x) + u_xlat4.x);
    u_xlat3.x = ((u_xlat34.x * u_xlat3.x) + u_xlat5.x);
    u_xlat3.x = (-(u_xlat32.x) + u_xlat3.x);
    u_xlat32.x = ((u_xlat34.y * u_xlat3.x) + u_xlat32.x);
    u_xlat3.x = ((u_xlat0.x * 19.0f) + -(u_xlat3.z));
    u_xlat3.z = ((u_xlat30 * 23.0f) + -(u_xlat3.w));
    u_xlat4 = vec4f(floor(u_xlat3.xz).xy, u_xlat4.zw);
    u_xlat5 = vec4f(fract(u_xlat3.xz).xy, u_xlat5.zw);
    let x_2435 = (u_xlat5.xy * u_xlat5.xy);
    u_xlat3 = vec4f(x_2435.x, u_xlat3.y, x_2435.y, u_xlat3.w);
    u_xlat34 = ((-(u_xlat5.xy) * x_558) + x_2184);
    let x_2446 = (u_xlat3.xz * u_xlat34);
    u_xlat3 = vec4f(x_2446.x, u_xlat3.y, x_2446.y, u_xlat3.w);
    u_xlat34 = (u_xlat4.xy * x_2195);
    u_xlat34 = fract(u_xlat34);
    u_xlat5 = vec4f(((u_xlat34.yxx + x_2207)).xyz, u_xlat5.w);
    u_xlat48 = dot(u_xlat34.xyx, u_xlat5.xyz);
    u_xlat34 = (vec2f(u_xlat48) + u_xlat34);
    u_xlat48 = (u_xlat34.y + u_xlat34.x);
    u_xlat48 = (u_xlat34.x * u_xlat48);
    u_xlat48 = fract(u_xlat48);
    u_xlat5 = (u_xlat4.yxyx + x_2242);
    u_xlat5 = (u_xlat5 * x_2245);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_2250);
    u_xlat34.x = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat34 = (u_xlat34.xx + u_xlat5.yx);
    u_xlat49 = (u_xlat34.y + u_xlat34.x);
    u_xlat4.z = (u_xlat34.x * u_xlat49);
    u_xlat49 = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat5 = vec4f(((vec2f(u_xlat49) + u_xlat5.wz)).xy, u_xlat5.zw);
    u_xlat49 = (u_xlat5.y + u_xlat5.x);
    u_xlat4.w = (u_xlat5.x * u_xlat49);
    u_xlat4 = vec4f(((u_xlat4.xy + x_848)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_2195)).xy, u_xlat4.zw);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_2207)).xyz, u_xlat5.w);
    u_xlat5.x = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((u_xlat4.xy + u_xlat5.xx)).xy, u_xlat4.zw);
    u_xlat19 = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat19);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat19 = (-(u_xlat48) + u_xlat4.z);
    u_xlat48 = ((u_xlat3.x * u_xlat19) + u_xlat48);
    u_xlat4.x = (-(u_xlat4.w) + u_xlat4.x);
    u_xlat3.x = ((u_xlat3.x * u_xlat4.x) + u_xlat4.w);
    u_xlat3.x = (-(u_xlat48) + u_xlat3.x);
    u_xlat3.x = ((u_xlat3.z * u_xlat3.x) + u_xlat48);
    u_xlat3.x = (u_xlat3.x * 0.34999999403953552246f);
    u_xlat32.x = ((u_xlat32.x * 0.64999997615814208984f) + u_xlat3.x);
    u_xlat2.x = (u_xlat2.x * 0.20000000298023223877f);
    u_xlat15.x = ((u_xlat15.x * 0.85000002384185791016f) + u_xlat2.x);
    u_xlat2.x = (u_xlat32.x + -0.30000001192092895508f);
    u_xlat2.x = (u_xlat2.x * 1.81818175315856933594f);
    u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
    u_xlat32.x = ((u_xlat2.x * -2.0f) + 3.0f);
    u_xlat2.x = (u_xlat2.x * u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * u_xlat32.x);
    u_xlat15.x = (u_xlat15.x * u_xlat2.x);
  } else {
    u_xlat15.x = 0.0f;
  }
  if (u_xlatb2.y) {
    u_xlat2.x = max(x_82.x_Rings.z, 0.00999999977648258209f);
    u_xlat2.x = (u_xlat32.y / u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * -1.44269502162933349609f);
    u_xlat2.x = exp2(u_xlat2.x);
    u_xlat17 = max(u_xlat32.y, 0.0f);
    u_xlat32.x = (x_82.x_Rings.z * 3.0f);
    u_xlat32.x = max(u_xlat32.x, 0.01999999955296516418f);
    u_xlat17 = (-(u_xlat17) / u_xlat32.x);
    u_xlat17 = (u_xlat17 * 1.44269502162933349609f);
    u_xlat17 = exp2(u_xlat17);
    u_xlat32.x = select(0.0f, 1.0f, u_xlatb3.y);
    u_xlat17 = (u_xlat32.x * u_xlat17);
    u_xlat3 = vec4f(((x_178.x_Time.yyy * x_2134)).xyz, u_xlat3.w);
    u_xlat32.x = ((u_xlat0.x * 7.0f) + u_xlat3.x);
    u_xlat47 = ((-(x_178.x_Time.y) * 0.11999999731779098511f) + u_xlat30);
    u_xlat32.y = (u_xlat47 * 10.0f);
    u_xlat4 = vec4f(floor(u_xlat32).xy, u_xlat4.zw);
    u_xlat5 = vec4f(fract(u_xlat32).xy, u_xlat5.zw);
    u_xlat32 = (u_xlat5.xy * u_xlat5.xy);
    let x_2778 = ((-(u_xlat5.xy) * x_558) + x_2184);
    u_xlat3 = vec4f(x_2778.x, u_xlat3.yz, x_2778.y);
    u_xlat32 = (u_xlat32 * u_xlat3.xw);
    let x_2787 = (u_xlat4.xy * x_2195);
    u_xlat3 = vec4f(x_2787.x, u_xlat3.yz, x_2787.y);
    let x_2792 = fract(u_xlat3.xw);
    u_xlat3 = vec4f(x_2792.x, u_xlat3.yz, x_2792.y);
    u_xlat5 = vec4f(((u_xlat3.wxx + x_2207)).xyz, u_xlat5.w);
    u_xlat34.x = dot(u_xlat3.xwx, u_xlat5.xyz);
    let x_2810 = (u_xlat3.xw + u_xlat34.xx);
    u_xlat3 = vec4f(x_2810.x, u_xlat3.yz, x_2810.y);
    u_xlat48 = (u_xlat3.w + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat48);
    u_xlat5 = (u_xlat4.yxyx + x_2242);
    u_xlat5 = (u_xlat5 * x_2245);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_2250);
    u_xlat48 = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat34 = (vec2f(u_xlat48) + u_xlat5.yx);
    u_xlat48 = (u_xlat34.y + u_xlat34.x);
    u_xlat3.w = (u_xlat34.x * u_xlat48);
    let x_2854 = fract(u_xlat3.xw);
    u_xlat3 = vec4f(x_2854.x, u_xlat3.yz, x_2854.y);
    u_xlat34.x = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat34 = (u_xlat34.xx + u_xlat5.wz);
    u_xlat49 = (u_xlat34.y + u_xlat34.x);
    u_xlat4.z = (u_xlat34.x * u_xlat49);
    u_xlat4 = vec4f(((u_xlat4.xy + x_848)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_2195)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xyz).xyz, u_xlat4.w);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_2207)).xyz, u_xlat5.w);
    u_xlat49 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((vec2f(u_xlat49) + u_xlat4.xy)).xy, u_xlat4.zw);
    u_xlat19 = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat19);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat48 = (-(u_xlat3.x) + u_xlat3.w);
    u_xlat3.x = ((u_xlat32.x * u_xlat48) + u_xlat3.x);
    u_xlat48 = (-(u_xlat4.z) + u_xlat4.x);
    u_xlat32.x = ((u_xlat32.x * u_xlat48) + u_xlat4.z);
    u_xlat32.x = (-(u_xlat3.x) + u_xlat32.x);
    u_xlat32.x = ((u_xlat32.y * u_xlat32.x) + u_xlat3.x);
    u_xlat0.x = ((u_xlat0.x * 19.0f) + -(u_xlat3.y));
    u_xlat0.z = ((u_xlat30 * 23.0f) + -(u_xlat3.z));
    u_xlat3 = vec4f(floor(u_xlat0.xz).xy, u_xlat3.zw);
    u_xlat4 = vec4f(fract(u_xlat0.xz).xy, u_xlat4.zw);
    let x_2997 = (u_xlat4.xy * u_xlat4.xy);
    u_xlat0 = vec3f(x_2997.x, u_xlat0.y, x_2997.y);
    u_xlat33 = ((-(u_xlat4.xy) * x_558) + x_2184);
    let x_3008 = (u_xlat0.xz * u_xlat33);
    u_xlat0 = vec3f(x_3008.x, u_xlat0.y, x_3008.y);
    u_xlat33 = (u_xlat3.xy * x_2195);
    u_xlat33 = fract(u_xlat33);
    u_xlat4 = vec4f(((u_xlat33.yxx + x_2207)).xyz, u_xlat4.w);
    u_xlat47 = dot(u_xlat33.xyx, u_xlat4.xyz);
    u_xlat33 = (vec2f(u_xlat47) + u_xlat33);
    u_xlat47 = (u_xlat33.y + u_xlat33.x);
    u_xlat47 = (u_xlat33.x * u_xlat47);
    u_xlat47 = fract(u_xlat47);
    u_xlat4 = (u_xlat3.yxyx + x_2242);
    u_xlat4 = (u_xlat4 * x_2245);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = (u_xlat4 + x_2250);
    u_xlat33.x = dot(u_xlat4.yxy, u_xlat5.xyy);
    u_xlat33 = (u_xlat33.xx + u_xlat4.yx);
    u_xlat48 = (u_xlat33.y + u_xlat33.x);
    u_xlat3.z = (u_xlat33.x * u_xlat48);
    u_xlat48 = dot(u_xlat4.wzw, u_xlat5.zww);
    u_xlat4 = vec4f(((vec2f(u_xlat48) + u_xlat4.wz)).xy, u_xlat4.zw);
    u_xlat48 = (u_xlat4.y + u_xlat4.x);
    u_xlat3.w = (u_xlat4.x * u_xlat48);
    u_xlat3 = vec4f(((u_xlat3.xy + x_848)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_2195)).xy, u_xlat3.zw);
    u_xlat3 = fract(u_xlat3);
    u_xlat4 = vec4f(((u_xlat3.yxx + x_2207)).xyz, u_xlat4.w);
    u_xlat4.x = dot(u_xlat3.xyx, u_xlat4.xyz);
    u_xlat3 = vec4f(((u_xlat3.xy + u_xlat4.xx)).xy, u_xlat3.zw);
    u_xlat18 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat18);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat18 = (-(u_xlat47) + u_xlat3.z);
    u_xlat47 = ((u_xlat0.x * u_xlat18) + u_xlat47);
    u_xlat3.x = (-(u_xlat3.w) + u_xlat3.x);
    u_xlat0.x = ((u_xlat0.x * u_xlat3.x) + u_xlat3.w);
    u_xlat0.x = (-(u_xlat47) + u_xlat0.x);
    u_xlat0.x = ((u_xlat0.z * u_xlat0.x) + u_xlat47);
    u_xlat0.x = (u_xlat0.x * 0.34999999403953552246f);
    u_xlat0.x = ((u_xlat32.x * 0.64999997615814208984f) + u_xlat0.x);
    u_xlat30 = (u_xlat17 * 0.20000000298023223877f);
    u_xlat30 = ((u_xlat2.x * 0.85000002384185791016f) + u_xlat30);
    u_xlat0.x = (u_xlat0.x + -0.30000001192092895508f);
    u_xlat0.x = (u_xlat0.x * 1.81818175315856933594f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat2.x = ((u_xlat0.x * -2.0f) + 3.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat0.x);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat0.x = (u_xlat0.x * u_xlat30);
    u_xlat15.x = max(u_xlat0.x, u_xlat15.x);
  }
  u_xlat0.x = (u_xlat15.x * x_82.x_Rings.w);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat15.x = (x_178.x_MainLightPosition.y + 0.30000001192092895508f);
  u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
  u_xlat2 = vec4f(((u_xlat15.xxx * x_178.x_MainLightColor.xyz)).xyz, u_xlat2.w);
  u_xlat15.x = ((u_xlat45 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat15 = (u_xlat15.xxx * u_xlat2.xyz);
  u_xlat15 = ((u_xlat7 * vec3f(0.80000001192092895508f)) + u_xlat15);
  u_xlat15 = ((x_82.x_FoamColor.xyz * u_xlat15) + -(u_xlat1));
  u_xlat0 = ((u_xlat0.xxx * u_xlat15) + u_xlat1);
  u_xlatb45 = (x_178.x_DesertSunDir.w >= 0.5f);
  if (u_xlatb45) {
    u_xlat45 = sqrt(u_xlat46);
    u_xlat1.x = max(u_xlat45, 0.00009999999747378752f);
    u_xlat2 = vec4f(((u_xlat6 / u_xlat1.xxx)).xyz, u_xlat2.w);
    u_xlat45 = (u_xlat45 + -(x_178.x_DesertHaze.z));
    u_xlat45 = max(u_xlat45, 0.0f);
    u_xlat16.x = (x_178.x_WorldSpaceCameraPos.y + -(x_178.x_DesertHaze2.x));
    u_xlat1.x = (u_xlat45 / u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * u_xlat6.y);
    u_xlat1.y = max(u_xlat16.x, -20.0f);
    let x_3351 = (u_xlat1.yx * -(x_178.x_DesertHaze.yy));
    u_xlat16 = vec3f(x_3351.x, u_xlat16.y, x_3351.y);
    let x_3356 = (u_xlat16.xz * x_218);
    u_xlat16 = vec3f(x_3356.x, u_xlat16.y, x_3356.y);
    u_xlat16.x = exp2(u_xlat16.x);
    u_xlatb31 = (0.00999999977648258209f < abs(u_xlat1.x));
    u_xlat46 = exp2(u_xlat16.z);
    u_xlat46 = (-(u_xlat46) + 1.0f);
    u_xlat46 = (u_xlat46 * u_xlat16.x);
    u_xlat1.x = (u_xlat1.x * x_178.x_DesertHaze.y);
    u_xlat1.x = (u_xlat46 / u_xlat1.x);
    if (u_xlatb31) {
      x_3390 = u_xlat1.x;
    } else {
      x_3390 = u_xlat16.x;
    }
    u_xlat1.x = x_3390;
    u_xlat16.x = (u_xlat45 * x_178.x_DesertHaze.x);
    u_xlat45 = (u_xlat45 * x_178.x_DesertHazeTint.w);
    u_xlat45 = ((u_xlat16.x * u_xlat1.x) + u_xlat45);
    u_xlat1.x = (u_xlat45 * -1.44269502162933349609f);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (-(u_xlat1.x) + 1.0f);
    u_xlat1.x = min(u_xlat1.x, x_178.x_DesertHaze.w);
    u_xlat2.w = 0.03500000014901161194f;
    u_xlat16.x = dot(u_xlat2.xzw, u_xlat2.xzw);
    u_xlat16.x = inverseSqrt(u_xlat16.x);
    u_xlat3 = vec4f(((u_xlat16.xxx * u_xlat2.xwz)).xyz, u_xlat3.w);
    u_xlat31.x = min(abs(u_xlat3.z), abs(u_xlat3.x));
    u_xlat46 = max(abs(u_xlat3.z), abs(u_xlat3.x));
    u_xlat46 = (1.0f / u_xlat46);
    u_xlat31.x = (u_xlat46 * u_xlat31.x);
    u_xlat46 = (u_xlat31.x * u_xlat31.x);
    u_xlat48 = ((u_xlat46 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat48 = ((u_xlat46 * u_xlat48) + 0.18014100193977355957f);
    u_xlat48 = ((u_xlat46 * u_xlat48) + -0.33029949665069580078f);
    u_xlat46 = ((u_xlat46 * u_xlat48) + 0.99986600875854492188f);
    u_xlat48 = (u_xlat46 * u_xlat31.x);
    u_xlatb4 = (abs(u_xlat3.z) < abs(u_xlat3.x));
    u_xlat48 = ((u_xlat48 * -2.0f) + 1.57079637050628662109f);
    u_xlat48 = select(0.0f, u_xlat48, u_xlatb4);
    u_xlat31.x = ((u_xlat31.x * u_xlat46) + u_xlat48);
    u_xlatb46 = (u_xlat3.z < -(u_xlat3.z));
    u_xlat46 = select(0.0f, -3.14159274101257324219f, u_xlatb46);
    u_xlat31.x = (u_xlat46 + u_xlat31.x);
    u_xlat46 = min(u_xlat3.z, u_xlat3.x);
    u_xlat3.x = max(u_xlat3.z, u_xlat3.x);
    u_xlatb46 = (u_xlat46 < -(u_xlat46));
    u_xlatb3.x = (u_xlat3.x >= -(u_xlat3.x));
    u_xlatb46 = (u_xlatb46 & u_xlatb3.x);
    if (u_xlatb46) {
      x_3560 = -(u_xlat31.x);
    } else {
      x_3560 = u_xlat31.x;
    }
    u_xlat31.x = x_3560;
    u_xlat4.x = ((u_xlat31.x * 0.15915493667125701904f) + 0.5f);
    u_xlat4.y = 0.5f;
    let x_3586 = textureSampleLevel(x_DesertHorizonRing, sampler_DesertHorizonRing, u_xlat4.xy, 0.0f).xyz;
    u_xlat3 = vec4f(x_3586.x, u_xlat3.y, x_3586.yz);
    u_xlat31.x = ((-(u_xlat2.w) * u_xlat16.x) + 1.0f);
    u_xlat31.x = sqrt(u_xlat31.x);
    u_xlat46 = ((u_xlat16.x * -0.00065552548039704561f) + 0.07426100224256515503f);
    u_xlat46 = ((u_xlat46 * u_xlat3.y) + -0.21211439371109008789f);
    u_xlat46 = ((u_xlat46 * u_xlat3.y) + 1.57072877883911132812f);
    u_xlat31.x = ((-(u_xlat46) * u_xlat31.x) + 1.57079637050628662109f);
    u_xlat4 = vec4f(((u_xlat31.xx * vec2f(57.295780181884765625f, -9.18448162078857421875f))).xy, u_xlat4.zw);
    u_xlat5 = vec4f(((u_xlat3.xzw * x_178.x_DesertSkyGrade0.xyz)).xyz, u_xlat5.w);
    u_xlat46 = dot(u_xlat5.xyz, vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
    u_xlat3 = vec4f((((u_xlat3.xzw * x_178.x_DesertSkyGrade0.xyz) + -(vec3f(u_xlat46)))).xyz, u_xlat3.w);
    u_xlat3 = vec4f((((x_178.x_DesertSkyGrade0.www * u_xlat3.xyz) + vec3f(u_xlat46))).xyz, u_xlat3.w);
    u_xlat3 = vec4f(max(u_xlat3.xyz, vec3f()).xyz, u_xlat3.w);
    u_xlat46 = max(x_178.x_DesertSkyGrade1.w, 0.10000000149011611938f);
    u_xlat46 = (u_xlat4.x / u_xlat46);
    u_xlat46 = (-(u_xlat46) + 1.0f);
    u_xlat46 = max(u_xlat46, 0.0f);
    u_xlat46 = (u_xlat46 * u_xlat46);
    let x_3700 = (x_178.x_DesertSkyGrade1.xyz + x_3699);
    u_xlat4 = vec4f(x_3700.x, u_xlat4.y, x_3700.yz);
    let x_3708 = ((vec3f(u_xlat46) * u_xlat4.xzw) + x_1601);
    u_xlat4 = vec4f(x_3708.x, u_xlat4.y, x_3708.yz);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat4.xzw)).xyz, u_xlat3.w);
    u_xlat31.x = ((u_xlat31.x * 57.295780181884765625f) + -(x_178.x_DesertSkyGrade2.w));
    u_xlat46 = (-(x_178.x_DesertSkyGrade2.w) + 90.0f);
    u_xlat46 = max(u_xlat46, 1.0f);
    u_xlat31.x = (u_xlat31.x / u_xlat46);
    u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
    let x_3744 = (x_178.x_DesertSkyGrade2.xyz + x_3699);
    u_xlat4 = vec4f(x_3744.x, u_xlat4.y, x_3744.yz);
    let x_3752 = ((u_xlat31.xxx * u_xlat4.xzw) + x_1601);
    u_xlat4 = vec4f(x_3752.x, u_xlat4.y, x_3752.yz);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat4.xzw)).xyz, u_xlat3.w);
    u_xlat16 = vec3f((((u_xlat2.xz * u_xlat16.xx) + x_3768)).xy, u_xlat16.z);
    u_xlat46 = dot(u_xlat16.xy, u_xlat16.xy);
    u_xlat46 = inverseSqrt(u_xlat46);
    u_xlat16 = vec3f(((vec2f(u_xlat46) * u_xlat16.xy)).xy, u_xlat16.z);
    let x_3789 = (x_178.x_DesertSunDir.xz + x_3768);
    u_xlat4 = vec4f(x_3789.x, u_xlat4.y, x_3789.y, u_xlat4.w);
    u_xlat46 = dot(u_xlat4.xz, u_xlat4.xz);
    u_xlat46 = inverseSqrt(u_xlat46);
    let x_3803 = (vec2f(u_xlat46) * u_xlat4.xz);
    u_xlat4 = vec4f(x_3803.x, u_xlat4.y, x_3803.y, u_xlat4.w);
    u_xlat16.x = dot(u_xlat16.xy, u_xlat4.xz);
    u_xlat16.x = ((u_xlat16.x * 0.5f) + 0.5f);
    u_xlat16.x = clamp(u_xlat16.x, 0.0f, 1.0f);
    u_xlat31.x = max(x_178.x_DesertSkyGrade3.w, 1.0f);
    u_xlat16.x = log2(u_xlat16.x);
    u_xlat16.x = (u_xlat16.x * u_xlat31.x);
    u_xlat16.x = exp2(u_xlat16.x);
    u_xlat31.x = exp2(u_xlat4.y);
    u_xlat16.x = (u_xlat31.x * u_xlat16.x);
    u_xlat31.x = (u_xlat16.x * 1.5f);
    u_xlat31.x = min(u_xlat31.x, 1.0f);
    u_xlat4 = vec4f((((u_xlat31.xxx * vec3f(0.0f, -0.19999998807907104492f, -0.33999997377395629883f)) + x_1601)).xyz, u_xlat4.w);
    u_xlat16 = (u_xlat16.xxx * x_178.x_DesertSkyGrade3.xyz);
    u_xlat16 = ((u_xlat3.xyz * u_xlat4.xyz) + u_xlat16);
    u_xlat45 = (u_xlat45 * x_178.x_DesertHaze2.w);
    u_xlat45 = (u_xlat45 * 0.44999998807907104492f);
    u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
    u_xlat16 = (u_xlat16 + -(x_178.x_DesertHazeTint.xyz));
    u_xlat16 = ((vec3f(u_xlat45) * u_xlat16) + x_178.x_DesertHazeTint.xyz);
    u_xlat45 = dot(u_xlat2.xyz, x_178.x_DesertSunDir.xyz);
    u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
    u_xlat2 = vec4f(((x_178.x_DesertSunColor.xyz * x_178.x_DesertHaze2.yyy)).xyz, u_xlat2.w);
    u_xlat45 = log2(u_xlat45);
    u_xlat45 = (u_xlat45 * x_178.x_DesertHaze2.z);
    u_xlat45 = exp2(u_xlat45);
    u_xlat16 = ((u_xlat2.xyz * vec3f(u_xlat45)) + u_xlat16);
    u_xlat16 = (-(u_xlat0) + u_xlat16);
    u_xlat0 = ((u_xlat1.xxx * u_xlat16) + u_xlat0);
  }
  SV_Target0 = vec4f(u_xlat0.xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

