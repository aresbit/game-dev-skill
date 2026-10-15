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
  x_MainLightShadowOffset0 : vec4f,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4f,
  /* @offset(432) */
  x_MainLightShadowParams : vec4f,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4f,
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

@group(1) @binding(1) var<uniform> x_2223 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_2402 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_2644 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(6) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(4) var<uniform> x_3118 : UnityPerDraw;

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

const x_827 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_853 = vec2f(1.0f);

const x_896 = vec2f(0.15999999642372131348f);

const x_969 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1358 = vec2f(0.08163200318813323975f);

const x_1375 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1378 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1385 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1423 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2810 = vec3f(1.0f);

const x_3365 = vec3f(0.25f, 0.40000000596046447754f, 1.29999995231628417969f);

const x_3415 = vec2f(3.0f);

const x_3426 = vec2f(0.10310000181198120117f);

const x_3438 = vec3f(33.3300018310546875f);

const x_3473 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_3476 = vec4f(0.10310000181198120117f);

const x_3481 = vec4f(33.3300018310546875f);

const x_4930 = vec3f(-1.0f);

const x_4999 = vec2f(0.00000999999974737875f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat42 : f32;
  var u_xlat63 : f32;
  var u_xlat1 : vec3f;
  var u_xlat43 : vec2f;
  var u_xlatb2 : vec2<bool>;
  var u_xlat44 : vec2f;
  var u_xlatb3 : vec2<bool>;
  var u_xlat45 : vec2f;
  var u_xlat64 : f32;
  var u_xlat4 : vec4f;
  var u_xlat46 : vec2f;
  var u_xlat5 : vec4f;
  var x_332 : f32;
  var u_xlat66 : f32;
  var u_xlatb4 : bool;
  var u_xlatb45 : bool;
  var u_xlatb21 : bool;
  var u_xlatb0 : bool;
  var x_474 : f32;
  var u_xlat21 : vec3f;
  var u_xlat6 : vec3f;
  var u_xlatb63 : bool;
  var u_xlat7 : vec4f;
  var txVec0 : vec3f;
  var u_xlat8 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb64 : bool;
  var u_xlat9 : vec4f;
  var u_xlat49 : vec2f;
  var u_xlat51 : vec2f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat55 : vec2f;
  var u_xlat16 : vec4f;
  var u_xlat29 : vec2f;
  var u_xlat17 : vec2f;
  var u_xlat52 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
  var u_xlat20 : vec4f;
  var txVec13 : vec3f;
  var txVec14 : vec3f;
  var u_xlat67 : f32;
  var txVec15 : vec3f;
  var txVec16 : vec3f;
  var txVec17 : vec3f;
  var txVec18 : vec3f;
  var txVec19 : vec3f;
  var txVec20 : vec3f;
  var txVec21 : vec3f;
  var txVec22 : vec3f;
  var txVec23 : vec3f;
  var txVec24 : vec3f;
  var txVec25 : vec3f;
  var txVec26 : vec3f;
  var txVec27 : vec3f;
  var txVec28 : vec3f;
  var txVec29 : vec3f;
  var u_xlatu7 : vec2u;
  var u_xlatu49 : vec2u;
  var u_xlati67 : i32;
  var u_xlatu67 : u32;
  var u_xlat68 : f32;
  var u_xlatb69 : bool;
  var x_2148 : f32;
  var u_xlatu68 : u32;
  var u_xlatu69 : u32;
  var u_xlati7 : vec4i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati50 : vec2i;
  var u_xlati68 : i32;
  var u_xlati69 : i32;
  var u_xlatb7 : vec4<bool>;
  var u_xlatu8 : vec2u;
  var u_xlatu50 : vec2u;
  var u_xlat72 : f32;
  var u_xlatu10 : u32;
  var u_xlatu31 : vec2u;
  var u_xlatb73 : bool;
  var u_xlatu11 : vec4u;
  var u_xlatb11 : bool;
  var u_xlatu73 : u32;
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
  var u_xlati54 : vec2i;
  var u_xlati13 : vec4i;
  var u_xlati14 : vec2i;
  var u_xlati12 : vec3i;
  var u_xlati32 : vec2i;
  var u_xlati53 : i32;
  var u_xlati73 : i32;
  var u_xlatb10 : bool;
  var u_xlati10 : i32;
  var u_xlat73 : f32;
  var u_xlat32 : vec3f;
  var x_2705 : f32;
  var x_2719 : f32;
  var x_2733 : f32;
  var x_2783 : vec3f;
  var u_xlatu74 : u32;
  var u_xlat74 : f32;
  var u_xlat33 : vec3f;
  var u_xlatb54 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_2845 : f32;
  var x_2858 : f32;
  var u_xlat53 : f32;
  var u_xlatu53 : u32;
  var u_xlatb67 : bool;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat26 : vec3f;
  var u_xlat25 : f32;
  var u_xlat23 : f32;
  var u_xlat65 : f32;
  var u_xlat24 : f32;
  var u_xlat22 : vec3f;
  var u_xlatb43 : bool;
  var x_4621 : f32;
  var x_4791 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec3f(((vs_TEXCOORD0.zx + -(x_82.x_Centre.yx))).xy, u_xlat0.z);
  u_xlat42 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat42 = sqrt(u_xlat42);
  u_xlat63 = max(u_xlat42, 0.00009999999747378752f);
  u_xlat1 = vec3f(((u_xlat0.yx / vec2f(u_xlat63))).xy, u_xlat1.z);
  u_xlat63 = max(x_82.x_Ripple.y, 0.00999999977648258209f);
  u_xlat63 = (6.28318548202514648438f / u_xlat63);
  u_xlat43.x = (u_xlat63 * x_82.x_Ripple.z);
  u_xlatb2 = ((x_82.x_Rings.xyxx >= vec4f())).xy;
  u_xlat44 = (vec2f(u_xlat42) + -(x_82.x_Rings.xy));
  u_xlatb3 = ((vec4f(u_xlat42) >= x_82.x_Rings.xyxx)).xy;
  u_xlat45.x = select(-1.0f, 1.0f, u_xlatb3.x);
  u_xlat45.y = select(-1.0f, 1.0f, u_xlatb3.y);
  u_xlat64 = (u_xlat43.x * x_178.x_Time.y);
  u_xlat4 = vec4f((((vec2f(u_xlat63) * abs(u_xlat44)) + -(vec2f(u_xlat64)))).xy, u_xlat4.zw);
  u_xlat4 = vec4f(cos(u_xlat4.xy).xy, u_xlat4.zw);
  u_xlat4 = vec4f(((u_xlat4.xy * x_82.x_Ripple.xx)).xy, u_xlat4.zw);
  u_xlat46 = (-(abs(u_xlat44)) * x_82.x_Ripple.ww);
  u_xlat46 = (u_xlat46 * x_218);
  u_xlat46 = exp2(u_xlat46);
  u_xlat4 = vec4f(((u_xlat46 * u_xlat4.xy)).xy, u_xlat4.zw);
  u_xlat64 = (x_178.x_Time.y * 0.69999998807907104492f);
  u_xlat46.x = ((x_178.x_Time.y * 1.37000000476837158203f) + 0.89999997615814208984f);
  u_xlat63 = (u_xlat63 * 1.30999994277954101562f);
  u_xlat43.x = (u_xlat43.x * u_xlat46.x);
  u_xlat46 = (x_82.x_Ripple.xw * vec2f(0.60000002384185791016f, 1.20000004768371582031f));
  u_xlat43.x = (u_xlat43.x * 1.30999994277954101562f);
  u_xlat5 = vec4f((((vec2f(u_xlat63) * abs(u_xlat44)) + -(u_xlat43.xx))).xy, u_xlat5.zw);
  u_xlat5 = vec4f(cos(u_xlat5.xy).xy, u_xlat5.zw);
  u_xlat5 = vec4f(((u_xlat46.xx * u_xlat5.xy)).xy, u_xlat5.zw);
  u_xlat46 = (-(abs(u_xlat44)) * u_xlat46.yy);
  u_xlat46 = (u_xlat46 * x_218);
  u_xlat46 = exp2(u_xlat46);
  u_xlat46 = (u_xlat46 * u_xlat5.xy);
  u_xlat63 = (u_xlat45.x * u_xlat46.x);
  u_xlat63 = ((u_xlat4.x * u_xlat45.x) + u_xlat63);
  u_xlat63 = select(0.0f, u_xlat63, u_xlatb2.x);
  u_xlat43.x = ((u_xlat4.y * u_xlat45.y) + u_xlat63);
  u_xlat43.x = ((u_xlat46.y * u_xlat45.y) + u_xlat43.x);
  if (u_xlatb2.y) {
    x_332 = u_xlat43.x;
  } else {
    x_332 = u_xlat63;
  }
  u_xlat63 = x_332;
  u_xlat43.x = min(abs(u_xlat0.y), abs(u_xlat0.x));
  u_xlat45.x = max(abs(u_xlat0.y), abs(u_xlat0.x));
  u_xlat45.x = (1.0f / u_xlat45.x);
  u_xlat43.x = (u_xlat43.x * u_xlat45.x);
  u_xlat45.x = (u_xlat43.x * u_xlat43.x);
  u_xlat66 = ((u_xlat45.x * 0.02083509974181652069f) + -0.08513300120830535889f);
  u_xlat66 = ((u_xlat45.x * u_xlat66) + 0.18014100193977355957f);
  u_xlat66 = ((u_xlat45.x * u_xlat66) + -0.33029949665069580078f);
  u_xlat45.x = ((u_xlat45.x * u_xlat66) + 0.99986600875854492188f);
  u_xlat66 = (u_xlat43.x * u_xlat45.x);
  u_xlatb4 = (abs(u_xlat0.y) < abs(u_xlat0.x));
  u_xlat66 = ((u_xlat66 * -2.0f) + 1.57079637050628662109f);
  u_xlat66 = select(0.0f, u_xlat66, u_xlatb4);
  u_xlat43.x = ((u_xlat43.x * u_xlat45.x) + u_xlat66);
  u_xlatb45 = (u_xlat0.y < -(u_xlat0.y));
  u_xlat45.x = select(0.0f, -3.14159274101257324219f, u_xlatb45);
  u_xlat43.x = (u_xlat43.x + u_xlat45.x);
  u_xlat45.x = min(u_xlat0.y, u_xlat0.x);
  u_xlat0.x = max(u_xlat0.y, u_xlat0.x);
  u_xlatb21 = (u_xlat45.x < -(u_xlat45.x));
  u_xlatb0 = (u_xlat0.x >= -(u_xlat0.x));
  u_xlatb0 = (u_xlatb0 & u_xlatb21);
  if (u_xlatb0) {
    x_474 = -(u_xlat43.x);
  } else {
    x_474 = u_xlat43.x;
  }
  u_xlat0.x = x_474;
  u_xlat21.x = ((u_xlat0.x * 5.0f) + u_xlat64);
  u_xlat21.x = ((u_xlat42 * 3.0f) + u_xlat21.x);
  u_xlat21.x = sin(u_xlat21.x);
  u_xlat21.x = ((u_xlat21.x * 0.25f) + 0.75f);
  u_xlat21.x = (u_xlat21.x * u_xlat63);
  u_xlat43 = (vs_TEXCOORD0.xz / vec2f(x_82.x_DetailTile));
  u_xlat45 = ((x_178.x_Time.yy * vec2f(0.03099999949336051941f, 0.01700000092387199402f)) + u_xlat43);
  let x_542 = u_xlat45;
  let x_544 = x_178.x_GlobalMipBias.x;
  let x_545 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_542, x_544);
  u_xlat4 = vec4f(x_545.xyw.xyz, u_xlat4.w);
  u_xlat4.x = (u_xlat4.x * u_xlat4.z);
  u_xlat45 = ((u_xlat4.xy * x_558) + x_560);
  u_xlat4 = vec4f(((x_178.x_Time.yy * vec2f(0.02300000004470348358f, 0.04100000113248825073f))).xy, u_xlat4.zw);
  u_xlat43 = ((u_xlat43 * vec2f(1.70000004768371582031f)) + -(u_xlat4.xy));
  let x_582 = u_xlat43;
  let x_584 = x_178.x_GlobalMipBias.x;
  let x_585 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_582, x_584);
  u_xlat4 = vec4f(x_585.xyw.xyz, u_xlat4.w);
  u_xlat4.x = (u_xlat4.x * u_xlat4.z);
  u_xlat43 = ((u_xlat4.xy * x_558) + x_560);
  u_xlat43 = (u_xlat43 + u_xlat45);
  u_xlat43 = (u_xlat43 * x_604);
  let x_612 = vec2f(x_82.x_DetailStrength, x_82.x_DetailStrength);
  u_xlat43 = (u_xlat43 * vec2f(x_612.x, x_612.y));
  let x_623 = ((u_xlat1.xy * u_xlat21.xx) + u_xlat43);
  u_xlat21 = vec3f(x_623.x, u_xlat21.y, x_623.y);
  let x_628 = -(u_xlat21.xz);
  u_xlat1 = vec3f(x_628.x, u_xlat1.y, x_628.y);
  u_xlat1.y = 1.0f;
  u_xlat21.x = dot(u_xlat1, u_xlat1);
  u_xlat21.x = inverseSqrt(u_xlat21.x);
  u_xlat1 = (u_xlat21.xxx * u_xlat1);
  u_xlat4 = vec4f(((-(vs_TEXCOORD0) + x_178.x_WorldSpaceCameraPos)).xyz, u_xlat4.w);
  u_xlat21.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat21.x = inverseSqrt(u_xlat21.x);
  u_xlat5 = vec4f(((u_xlat21.xxx * u_xlat4.xyz)).xyz, u_xlat5.w);
  u_xlat6 = (vs_TEXCOORD0.yyy * x_677.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz);
  u_xlat6 = ((x_677.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat6);
  u_xlat6 = ((x_677.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat6);
  u_xlat6 = (u_xlat6 + x_677.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz);
  u_xlatb63 = (0.0f < x_677.x_MainLightShadowParams.y);
  if (u_xlatb63) {
    u_xlatb63 = (x_677.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb63) {
      u_xlat7 = (u_xlat6.xyxy + x_677.x_MainLightShadowOffset0);
      let x_725 = u_xlat7.xy;
      txVec0 = vec3f(x_725.x, x_725.y, u_xlat6.z);
      u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_746 = u_xlat7.zw;
      txVec1 = vec3f(x_746.x, x_746.y, u_xlat6.z);
      u_xlat8.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat7 = (u_xlat6.xyxy + x_677.x_MainLightShadowOffset1);
      let x_766 = u_xlat7.xy;
      txVec2 = vec3f(x_766.x, x_766.y, u_xlat6.z);
      u_xlat8.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_781 = u_xlat7.zw;
      txVec3 = vec3f(x_781.x, x_781.y, u_xlat6.z);
      u_xlat8.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat63 = dot(u_xlat8, vec4f(0.25f));
    } else {
      u_xlatb64 = (x_677.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb64) {
        u_xlat45 = ((u_xlat6.xy * x_677.x_MainLightShadowmapSize.zw) + x_604);
        u_xlat45 = floor(u_xlat45);
        u_xlat7 = vec4f((((u_xlat6.xy * x_677.x_MainLightShadowmapSize.zw) + -(u_xlat45))).xy, u_xlat7.zw);
        u_xlat8 = (u_xlat7.xxyy + x_827);
        u_xlat9 = (u_xlat8.xxzz * u_xlat8.xxzz);
        u_xlat49 = (u_xlat9.yw * vec2f(0.07999999821186065674f));
        let x_847 = ((u_xlat9.xz * x_604) + -(u_xlat7.xy));
        u_xlat8 = vec4f(x_847.x, u_xlat8.y, x_847.y, u_xlat8.w);
        u_xlat9 = vec4f(((-(u_xlat7.xy) + x_853)).xy, u_xlat9.zw);
        u_xlat51 = min(u_xlat7.xy, vec2f());
        u_xlat51 = ((-(u_xlat51) * u_xlat51) + u_xlat9.xy);
        u_xlat7 = vec4f(max(u_xlat7.xy, vec2f()).xy, u_xlat7.zw);
        u_xlat7 = vec4f((((-(u_xlat7.xy) * u_xlat7.xy) + u_xlat8.yw)).xy, u_xlat7.zw);
        u_xlat51 = (u_xlat51 + x_853);
        u_xlat7 = vec4f(((u_xlat7.xy + x_853)).xy, u_xlat7.zw);
        u_xlat10 = vec4f(((u_xlat8.xz * x_896)).xy, u_xlat10.zw);
        u_xlat11 = vec4f(((u_xlat9.xy * x_896)).xy, u_xlat11.zw);
        u_xlat9 = vec4f(((u_xlat51 * x_896)).xy, u_xlat9.zw);
        u_xlat12 = vec4f(((u_xlat7.xy * x_896)).xy, u_xlat12.zw);
        u_xlat7 = vec4f(((u_xlat8.yw * x_896)).xy, u_xlat7.zw);
        u_xlat10.z = u_xlat9.x;
        u_xlat10.w = u_xlat7.x;
        u_xlat11.z = u_xlat12.x;
        u_xlat11.w = u_xlat49.x;
        u_xlat8 = (u_xlat10.zwxz + u_xlat11.zwxz);
        u_xlat9.z = u_xlat10.y;
        u_xlat9.w = u_xlat7.y;
        u_xlat12.z = u_xlat11.y;
        u_xlat12.w = u_xlat49.y;
        u_xlat7 = vec4f(((u_xlat9.zyw + u_xlat12.zyw)).xyz, u_xlat7.w);
        u_xlat9 = vec4f(((u_xlat11.xzw / u_xlat8.zwy)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat9.xyz + x_969)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat12.zyw / u_xlat7.xyz)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz + x_969)).xyz, u_xlat10.w);
        u_xlat9 = vec4f(((u_xlat9.yxz * x_677.x_MainLightShadowmapSize.xxx)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat10.xyz * x_677.x_MainLightShadowmapSize.yyy)).xyz, u_xlat10.w);
        u_xlat9.w = u_xlat10.x;
        u_xlat11 = ((u_xlat45.xyxy * x_677.x_MainLightShadowmapSize.xyxy) + u_xlat9.ywxw);
        u_xlat12 = vec4f((((u_xlat45 * x_677.x_MainLightShadowmapSize.xy) + u_xlat9.zw)).xy, u_xlat12.zw);
        u_xlat10.w = u_xlat9.y;
        let x_1027 = u_xlat10.yz;
        u_xlat9 = vec4f(u_xlat9.x, x_1027.x, u_xlat9.z, x_1027.y);
        u_xlat13 = ((u_xlat45.xyxy * x_677.x_MainLightShadowmapSize.xyxy) + u_xlat9.xyzy);
        u_xlat10 = ((u_xlat45.xyxy * x_677.x_MainLightShadowmapSize.xyxy) + u_xlat10.wywz);
        u_xlat9 = ((u_xlat45.xyxy * x_677.x_MainLightShadowmapSize.xyxy) + u_xlat9.xwzw);
        u_xlat14 = (u_xlat7.xxxy * u_xlat8.zwyz);
        u_xlat15 = (u_xlat7.yyzz * u_xlat8);
        u_xlat64 = (u_xlat7.z * u_xlat8.y);
        let x_1076 = u_xlat11.xy;
        txVec4 = vec3f(x_1076.x, x_1076.y, u_xlat6.z);
        u_xlat45.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1091 = u_xlat11.zw;
        txVec5 = vec3f(x_1091.x, x_1091.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat66 = (u_xlat66 * u_xlat14.y);
        u_xlat45.x = ((u_xlat14.x * u_xlat45.x) + u_xlat66);
        let x_1117 = u_xlat12.xy;
        txVec6 = vec3f(x_1117.x, x_1117.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat45.x = ((u_xlat14.z * u_xlat66) + u_xlat45.x);
        let x_1139 = u_xlat10.xy;
        txVec7 = vec3f(x_1139.x, x_1139.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat45.x = ((u_xlat14.w * u_xlat66) + u_xlat45.x);
        let x_1161 = u_xlat13.xy;
        txVec8 = vec3f(x_1161.x, x_1161.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat45.x = ((u_xlat15.x * u_xlat66) + u_xlat45.x);
        let x_1183 = u_xlat13.zw;
        txVec9 = vec3f(x_1183.x, x_1183.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat45.x = ((u_xlat15.y * u_xlat66) + u_xlat45.x);
        let x_1205 = u_xlat10.zw;
        txVec10 = vec3f(x_1205.x, x_1205.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat45.x = ((u_xlat15.z * u_xlat66) + u_xlat45.x);
        let x_1227 = u_xlat9.xy;
        txVec11 = vec3f(x_1227.x, x_1227.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat45.x = ((u_xlat15.w * u_xlat66) + u_xlat45.x);
        let x_1249 = u_xlat9.zw;
        txVec12 = vec3f(x_1249.x, x_1249.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat63 = ((u_xlat64 * u_xlat66) + u_xlat45.x);
      } else {
        u_xlat45 = ((u_xlat6.xy * x_677.x_MainLightShadowmapSize.zw) + x_604);
        u_xlat45 = floor(u_xlat45);
        u_xlat7 = vec4f((((u_xlat6.xy * x_677.x_MainLightShadowmapSize.zw) + -(u_xlat45))).xy, u_xlat7.zw);
        u_xlat8 = (u_xlat7.xxyy + x_827);
        u_xlat9 = (u_xlat8.xxzz * u_xlat8.xxzz);
        let x_1300 = (u_xlat9.yw * vec2f(0.04081600159406661987f));
        u_xlat10 = vec4f(u_xlat10.x, x_1300.x, u_xlat10.z, x_1300.y);
        u_xlat49 = ((u_xlat9.xz * x_604) + -(u_xlat7.xy));
        let x_1313 = (-(u_xlat7.xy) + x_853);
        u_xlat8 = vec4f(x_1313.x, u_xlat8.y, x_1313.y, u_xlat8.w);
        u_xlat9 = vec4f(min(u_xlat7.xy, vec2f()).xy, u_xlat9.zw);
        let x_1329 = ((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat8.xz);
        u_xlat8 = vec4f(x_1329.x, u_xlat8.y, x_1329.y, u_xlat8.w);
        u_xlat9 = vec4f(max(u_xlat7.xy, vec2f()).xy, u_xlat9.zw);
        let x_1345 = ((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat8.yw);
        u_xlat8 = vec4f(u_xlat8.x, x_1345.x, u_xlat8.z, x_1345.y);
        u_xlat8 = (u_xlat8 + vec4f(2.0f));
        u_xlat9.z = (u_xlat8.y * 0.08163200318813323975f);
        u_xlat11 = vec4f(((u_xlat49.yx * x_1358)).xy, u_xlat11.zw);
        u_xlat49 = (u_xlat8.xz * x_1358);
        u_xlat11.z = (u_xlat8.w * 0.08163200318813323975f);
        u_xlat9.x = u_xlat11.y;
        let x_1379 = ((u_xlat7.xx * x_1375) + x_1378);
        u_xlat9 = vec4f(u_xlat9.x, x_1379.x, u_xlat9.z, x_1379.y);
        let x_1386 = ((u_xlat7.xx * x_1375) + x_1385);
        u_xlat8 = vec4f(x_1386.x, u_xlat8.y, x_1386.y, u_xlat8.w);
        u_xlat8.y = u_xlat49.x;
        u_xlat8.w = u_xlat10.y;
        u_xlat9 = (u_xlat8 + u_xlat9);
        let x_1401 = ((u_xlat7.yy * x_1375) + x_1378);
        u_xlat11 = vec4f(u_xlat11.x, x_1401.x, u_xlat11.z, x_1401.y);
        let x_1407 = ((u_xlat7.yy * x_1375) + x_1385);
        u_xlat10 = vec4f(x_1407.x, u_xlat10.y, x_1407.y, u_xlat10.w);
        u_xlat10.y = u_xlat49.y;
        u_xlat7 = (u_xlat10 + u_xlat11);
        u_xlat8 = (u_xlat8 / u_xlat9);
        u_xlat8 = (u_xlat8 + x_1423);
        u_xlat10 = (u_xlat10 / u_xlat7);
        u_xlat10 = (u_xlat10 + x_1423);
        u_xlat8 = (u_xlat8.wxyz * x_677.x_MainLightShadowmapSize.xxxx);
        u_xlat10 = (u_xlat10.xwyz * x_677.x_MainLightShadowmapSize.yyyy);
        let x_1443 = u_xlat8.yzw;
        u_xlat11 = vec4f(x_1443.x, u_xlat11.y, x_1443.yz);
        u_xlat11.y = u_xlat10.x;
        u_xlat12 = ((u_xlat45.xyxy * x_677.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat13 = vec4f((((u_xlat45 * x_677.x_MainLightShadowmapSize.xy) + u_xlat11.wy)).xy, u_xlat13.zw);
        u_xlat8.y = u_xlat11.y;
        u_xlat11.y = u_xlat10.z;
        u_xlat14 = ((u_xlat45.xyxy * x_677.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat55 = ((u_xlat45 * x_677.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat8.z = u_xlat11.y;
        u_xlat15 = ((u_xlat45.xyxy * x_677.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyxz);
        u_xlat11.y = u_xlat10.w;
        u_xlat16 = ((u_xlat45.xyxy * x_677.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat29 = ((u_xlat45 * x_677.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat8.w = u_xlat11.y;
        u_xlat17 = ((u_xlat45 * x_677.x_MainLightShadowmapSize.xy) + u_xlat8.xw);
        let x_1539 = u_xlat11.xzw;
        u_xlat10 = vec4f(x_1539.x, u_xlat10.y, x_1539.yz);
        u_xlat11 = ((u_xlat45.xyxy * x_677.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyzy);
        u_xlat52 = ((u_xlat45 * x_677.x_MainLightShadowmapSize.xy) + u_xlat10.wy);
        u_xlat10.x = u_xlat8.x;
        u_xlat45 = ((u_xlat45 * x_677.x_MainLightShadowmapSize.xy) + u_xlat10.xy);
        u_xlat18 = (u_xlat7.xxxx * u_xlat9);
        u_xlat19 = (u_xlat7.yyyy * u_xlat9);
        u_xlat20 = (u_xlat7.zzzz * u_xlat9);
        u_xlat7 = (u_xlat7.wwww * u_xlat9);
        let x_1592 = u_xlat12.xy;
        txVec13 = vec3f(x_1592.x, x_1592.y, u_xlat6.z);
        u_xlat64 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1606 = u_xlat12.zw;
        txVec14 = vec3f(x_1606.x, x_1606.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat67 = (u_xlat67 * u_xlat18.y);
        u_xlat64 = ((u_xlat18.x * u_xlat64) + u_xlat67);
        let x_1631 = u_xlat13.xy;
        txVec15 = vec3f(x_1631.x, x_1631.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat64 = ((u_xlat18.z * u_xlat67) + u_xlat64);
        let x_1651 = u_xlat15.xy;
        txVec16 = vec3f(x_1651.x, x_1651.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat64 = ((u_xlat18.w * u_xlat67) + u_xlat64);
        let x_1671 = u_xlat14.xy;
        txVec17 = vec3f(x_1671.x, x_1671.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat64 = ((u_xlat19.x * u_xlat67) + u_xlat64);
        let x_1691 = u_xlat14.zw;
        txVec18 = vec3f(x_1691.x, x_1691.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat64 = ((u_xlat19.y * u_xlat67) + u_xlat64);
        txVec19 = vec3f(u_xlat55.x, u_xlat55.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat64 = ((u_xlat19.z * u_xlat67) + u_xlat64);
        let x_1730 = u_xlat15.zw;
        txVec20 = vec3f(x_1730.x, x_1730.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat64 = ((u_xlat19.w * u_xlat67) + u_xlat64);
        let x_1750 = u_xlat16.xy;
        txVec21 = vec3f(x_1750.x, x_1750.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat64 = ((u_xlat20.x * u_xlat67) + u_xlat64);
        let x_1770 = u_xlat16.zw;
        txVec22 = vec3f(x_1770.x, x_1770.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat64 = ((u_xlat20.y * u_xlat67) + u_xlat64);
        txVec23 = vec3f(u_xlat29.x, u_xlat29.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat64 = ((u_xlat20.z * u_xlat67) + u_xlat64);
        txVec24 = vec3f(u_xlat17.x, u_xlat17.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat64 = ((u_xlat20.w * u_xlat67) + u_xlat64);
        let x_1828 = u_xlat11.xy;
        txVec25 = vec3f(x_1828.x, x_1828.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat64 = ((u_xlat7.x * u_xlat67) + u_xlat64);
        let x_1848 = u_xlat11.zw;
        txVec26 = vec3f(x_1848.x, x_1848.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat64 = ((u_xlat7.y * u_xlat67) + u_xlat64);
        txVec27 = vec3f(u_xlat52.x, u_xlat52.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat64 = ((u_xlat7.z * u_xlat67) + u_xlat64);
        txVec28 = vec3f(u_xlat45.x, u_xlat45.y, u_xlat6.z);
        u_xlat45.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat63 = ((u_xlat7.w * u_xlat45.x) + u_xlat64);
      }
    }
  } else {
    let x_1909 = u_xlat6.xy;
    txVec29 = vec3f(x_1909.x, x_1909.y, u_xlat6.z);
    u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat64 = (-(x_677.x_MainLightShadowParams.x) + 1.0f);
  u_xlat63 = ((u_xlat63 * x_677.x_MainLightShadowParams.x) + u_xlat64);
  u_xlatb64 = (0.0f >= u_xlat6.z);
  u_xlatb45 = (u_xlat6.z >= 1.0f);
  u_xlatb64 = (u_xlatb64 | u_xlatb45);
  u_xlat63 = select(u_xlat63, 1.0f, u_xlatb64);
  u_xlat6 = (vs_TEXCOORD0 + -(x_178.x_WorldSpaceCameraPos));
  u_xlat64 = dot(u_xlat6, u_xlat6);
  u_xlat45.x = ((u_xlat64 * x_677.x_MainLightShadowParams.z) + x_677.x_MainLightShadowParams.w);
  u_xlat45.x = clamp(u_xlat45.x, 0.0f, 1.0f);
  u_xlat66 = (-(u_xlat63) + 1.0f);
  u_xlat63 = ((u_xlat45.x * u_xlat66) + u_xlat63);
  u_xlat45.x = dot(u_xlat1, u_xlat5.xyz);
  u_xlat45.x = clamp(u_xlat45.x, 0.0f, 1.0f);
  u_xlat45.x = (-(u_xlat45.x) + 1.0f);
  u_xlat66 = (u_xlat45.x * u_xlat45.x);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat45.x = (u_xlat66 * u_xlat45.x);
  u_xlat45.x = ((u_xlat45.x * 0.98000001907348632812f) + 0.01999999955296516418f);
  u_xlat66 = dot(-(u_xlat5.xyz), u_xlat1);
  u_xlat66 = (u_xlat66 + u_xlat66);
  u_xlat5 = vec4f((((u_xlat1 * -(vec3f(u_xlat66))) + -(u_xlat5.xyz))).xyz, u_xlat5.w);
  u_xlat5.w = max(u_xlat5.y, 0.07999999821186065674f);
  u_xlat66 = dot(u_xlat5.xzw, u_xlat5.xzw);
  u_xlat66 = inverseSqrt(u_xlat66);
  u_xlat5 = vec4f(((vec3f(u_xlat66) * u_xlat5.xwz)).xyz, u_xlat5.w);
  let x_2045 = x_178.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((x_853 / vec2f(x_2045.x, x_2045.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat66 = ((u_xlat7.y * x_178.x_ScaleBiasRt.x) + x_178.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat66) + 1.0f);
  u_xlat66 = ((-(x_82.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat66 = (u_xlat66 * x_82.x_Roughness);
  u_xlat66 = (u_xlat66 * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_178.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu49 = vec2u(x_178.x_FPParams1.zw);
  u_xlati67 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu49.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu67 = (u_xlatu49.y * bitcast<u32>(u_xlati67));
  u_xlat7.x = -(x_178.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat7.y = -(x_178.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat7.z = -(x_178.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat68 = dot(u_xlat7.xyz, u_xlat6);
  u_xlatb69 = (x_178.unity_OrthoParams.w == 0.0f);
  u_xlat7.x = log2(u_xlat68);
  if (u_xlatb69) {
    x_2148 = u_xlat7.x;
  } else {
    x_2148 = u_xlat68;
  }
  u_xlat68 = x_2148;
  u_xlat68 = ((u_xlat68 * x_178.x_FPParams0.x) + x_178.x_FPParams0.y);
  u_xlatu68 = u32(u_xlat68);
  u_xlatu69 = u32(x_178.x_FPParams2.x);
  u_xlatu69 = (u_xlatu69 + 4294967295u);
  u_xlati7.x = (bitcast<i32>(u_xlatu49.y) + 2i);
  u_xlatu68 = min(u_xlatu68, u_xlatu69);
  u_xlatu7 = ((vec2u(u_xlatu68) * bitcast<vec2u>(u_xlati7.xx)) + vec2u(1u, 2u));
  u_xlatu68 = (u_xlatu7.x >> 2u);
  param = bitcast<i32>(u_xlatu7.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2203 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu7.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2210 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_2211 = vec2i(x_2203, x_2210);
  u_xlati7 = vec4i(x_2211.x, u_xlati7.y, x_2211.y, u_xlati7.w);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2223.urp_ZBins[bitcast<i32>(u_xlatu68)].wy)));
  let x_2234 = ~(u_xlati7.xz);
  u_xlati7 = vec4i(x_2234.x, u_xlati7.yz, x_2234.y);
  u_xlati50 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2223.urp_ZBins[bitcast<i32>(u_xlatu68)].zx)));
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati50) | bitcast<vec2u>(u_xlati8)));
  u_xlati68 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati69 = bitcast<i32>((bitcast<u32>(u_xlati7.w) & bitcast<u32>(u_xlati8.y)));
  u_xlatu68 = (bitcast<u32>(u_xlati68) | bitcast<u32>(u_xlati69));
  u_xlatu69 = u32(x_178.x_FPParams0.z);
  let x_2287 = ((vec4f() < u_xlat5.xxyz)).xzw;
  u_xlatb7 = vec4<bool>(x_2287.x, u_xlatb7.y, x_2287.yz);
  u_xlatu8.x = u_xlatu67;
  u_xlatu8.y = u_xlatu7.y;
  u_xlatu50.x = 0u;
  u_xlatu50.y = u_xlatu68;
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlat72 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu10 = (u_xlatu50.y >> 16u);
    u_xlatu31 = u_xlatu50;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb73 = (bitcast<i32>(u_xlatu31.x) == 0i);
      u_xlatu11.x = (u_xlatu31.y & 65535u);
      u_xlatb11 = (u_xlatu10 >= u_xlatu11.x);
      u_xlatb73 = (u_xlatb73 & u_xlatb11);
      if (!(u_xlatb73)) {
        break;
      }
      param_6 = u_xlatu31.y;
      param_7 = 5i;
      param_8 = 11i;
      let x_2354 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu73 = x_2354;
      u_xlatu11 = (u_xlatu8.xxyy + vec4u(u_xlatu73));
      u_xlatu12 = (u_xlatu11.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu11.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2372 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu11.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2379 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu11.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2386 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu11.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2393 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati11 = vec4i(x_2372, x_2379, x_2386, x_2393);
      u_xlati54 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_2402.urp_Tiles[bitcast<i32>(u_xlatu12.x)].wy)));
      u_xlati13 = ~(u_xlati11);
      u_xlati14 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2402.urp_Tiles[bitcast<i32>(u_xlatu12.x)].zx)));
      let x_2436 = bitcast<vec2i>((bitcast<vec2u>(u_xlati54) | bitcast<vec2u>(u_xlati14)));
      u_xlati12 = vec3i(x_2436.x, u_xlati12.y, x_2436.y);
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati12.x)));
      u_xlati32.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati12.z)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati32.x) | bitcast<u32>(u_xlati11.x)));
      u_xlati32 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_2223.urp_ZBins[bitcast<i32>(u_xlatu12.y)].wy)));
      u_xlati12 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2223.urp_ZBins[bitcast<i32>(u_xlatu12.y)].zx))).xy, u_xlati12.z);
      u_xlati32 = bitcast<vec2i>((bitcast<vec2u>(u_xlati32) | bitcast<vec2u>(u_xlati12.xy)));
      u_xlati32.x = bitcast<i32>((bitcast<u32>(u_xlati11.w) & bitcast<u32>(u_xlati32.x)));
      u_xlati53 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati32.y)));
      u_xlati32.x = bitcast<i32>((bitcast<u32>(u_xlati53) | bitcast<u32>(u_xlati32.x)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati32.x) & bitcast<u32>(u_xlati11.x)));
      u_xlati32.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu31.y) & 31i)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati32.x) & bitcast<u32>(u_xlati11.x)));
      u_xlati73 = (bitcast<i32>(u_xlatu73) << bitcast<u32>(5i));
      u_xlatu73 = (bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati73)))) + u_xlatu10);
      u_xlatu73 = min(u_xlatu73, 31u);
      u_xlatu73 = (bitcast<u32>(-(bitcast<i32>(u_xlatu73))) + 31u);
      u_xlatu73 = (4294967295u >> (u_xlatu73 & 31u));
      u_xlatu31.x = (u_xlatu73 & bitcast<u32>(u_xlati11.x));
      u_xlati73 = (bitcast<i32>(u_xlatu31.y) + 32i);
      u_xlatu31.y = (bitcast<u32>(u_xlati73) & 4294967264u);
    }
    u_xlatu50.y = u_xlatu31.y;
    u_xlatb10 = (bitcast<i32>(u_xlatu31.x) != 0i);
    u_xlatb73 = (u_xlat72 < 0.99000000953674316406f);
    u_xlatb10 = (u_xlatb73 & u_xlatb10);
    if (!(u_xlatb10)) {
      break;
    }
    u_xlati10 = bitcast<i32>(firstTrailingBit(u_xlatu31.x));
    u_xlati73 = (1i << bitcast<u32>((u_xlati10 & 31i)));
    u_xlatu50.x = (bitcast<u32>(u_xlati73) ^ u_xlatu31.x);
    u_xlati73 = (bitcast<i32>(u_xlatu50.y) + -32i);
    u_xlati73 = bitcast<i32>((bitcast<u32>(u_xlati73) & 65504u));
    u_xlati10 = (u_xlati10 + u_xlati73);
    u_xlati10 = (-(bitcast<i32>(u_xlatu69)) + u_xlati10);
    u_xlat11 = vec4f(((vs_TEXCOORD0 + -(x_2644.urp_ReflProbes_BoxMin[u_xlati10].xyz))).xyz, u_xlat11.w);
    u_xlat12 = vec4f(((-(vs_TEXCOORD0) + x_2644.urp_ReflProbes_BoxMax[u_xlati10].xyz)).xyz, u_xlat12.w);
    u_xlat11 = vec4f(min(u_xlat11.xyz, u_xlat12.xyz).xyz, u_xlat11.w);
    u_xlat11 = vec4f(((u_xlat11.xyz / x_2644.urp_ReflProbes_BoxMax[u_xlati10].www)).xyz, u_xlat11.w);
    u_xlat73 = min(u_xlat11.z, u_xlat11.y);
    u_xlat73 = min(u_xlat73, u_xlat11.x);
    u_xlat73 = clamp(u_xlat73, 0.0f, 1.0f);
    u_xlat11.x = (-(u_xlat72) + 1.0f);
    u_xlat73 = min(u_xlat73, u_xlat11.x);
    u_xlatb11 = (0.0f < x_2644.urp_ReflProbes_ProbePosition[u_xlati10].w);
    if (u_xlatb7.x) {
      x_2705 = x_2644.urp_ReflProbes_BoxMax[u_xlati10].x;
    } else {
      x_2705 = x_2644.urp_ReflProbes_BoxMin[u_xlati10].x;
    }
    u_xlat32.x = x_2705;
    if (u_xlatb7.z) {
      x_2719 = x_2644.urp_ReflProbes_BoxMax[u_xlati10].y;
    } else {
      x_2719 = x_2644.urp_ReflProbes_BoxMin[u_xlati10].y;
    }
    u_xlat32.y = x_2719;
    if (u_xlatb7.w) {
      x_2733 = x_2644.urp_ReflProbes_BoxMax[u_xlati10].z;
    } else {
      x_2733 = x_2644.urp_ReflProbes_BoxMin[u_xlati10].z;
    }
    u_xlat32.z = x_2733;
    u_xlat32 = (u_xlat32 + -(vs_TEXCOORD0));
    u_xlat32 = (u_xlat32 / u_xlat5.xyz);
    u_xlat32.x = min(u_xlat32.y, u_xlat32.x);
    u_xlat32.x = min(u_xlat32.z, u_xlat32.x);
    u_xlat12 = vec4f(((vs_TEXCOORD0 + -(x_2644.urp_ReflProbes_ProbePosition[u_xlati10].xyz))).xyz, u_xlat12.w);
    u_xlat32 = ((u_xlat5.xyz * u_xlat32.xxx) + u_xlat12.xyz);
    if (u_xlatb11) {
      x_2783 = u_xlat32;
    } else {
      x_2783 = u_xlat5.xyz;
    }
    u_xlat11 = vec4f(x_2783.xyz, u_xlat11.w);
    u_xlatu74 = u32(abs(x_2644.urp_ReflProbes_ProbePosition[u_xlati10].w));
    u_xlatu74 = (u_xlatu74 + 4294967295u);
    u_xlat74 = f32(u_xlatu74);
    u_xlat74 = min(u_xlat66, u_xlat74);
    u_xlat12.x = dot(abs(u_xlat11.xyz), x_2810);
    u_xlat12.x = max(u_xlat12.x, 0.00000099999999747524f);
    u_xlat12.x = (1.0f / u_xlat12.x);
    u_xlat33 = (u_xlat11.zxy * u_xlat12.xxx);
    u_xlat33.x = -(u_xlat33.x);
    u_xlat33.x = clamp(u_xlat33.x, 0.0f, 1.0f);
    u_xlatb54 = ((u_xlat33.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat33;
    if (u_xlatb54.x) {
      x_2845 = u_xlat33.x;
    } else {
      x_2845 = -(u_xlat33.x);
    }
    hlslcc_movcTemp.x = x_2845;
    if (u_xlatb54.y) {
      x_2858 = u_xlat33.x;
    } else {
      x_2858 = -(u_xlat33.x);
    }
    hlslcc_movcTemp.y = x_2858;
    u_xlat33 = hlslcc_movcTemp;
    u_xlat11 = vec4f((((u_xlat11.xy * u_xlat12.xx) + u_xlat33.xy)).xy, u_xlat11.zw);
    u_xlat11 = vec4f((((u_xlat11.xy * x_604) + x_604)).xy, u_xlat11.zw);
    u_xlat11 = vec4f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.zw);
    u_xlat53 = floor(u_xlat74);
    u_xlat12.x = (u_xlat53 + 1.0f);
    u_xlat74 = (-(u_xlat53) + u_xlat74);
    u_xlatu53 = u32(u_xlat53);
    u_xlati53 = ((u_xlati10 * 7i) + bitcast<i32>(u_xlatu53));
    u_xlatu12.x = u32(u_xlat12.x);
    u_xlati10 = ((u_xlati10 * 7i) + bitcast<i32>(u_xlatu12.x));
    u_xlat12 = vec4f((((u_xlat11.xy * x_2644.urp_ReflProbes_MipScaleOffset[u_xlati53].xy) + x_2644.urp_ReflProbes_MipScaleOffset[u_xlati53].zw)).xy, u_xlat12.zw);
    u_xlat12 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat12.xy, 0.0f).xyz.xyz, u_xlat12.w);
    u_xlat11 = vec4f((((u_xlat11.xy * x_2644.urp_ReflProbes_MipScaleOffset[u_xlati10].xy) + x_2644.urp_ReflProbes_MipScaleOffset[u_xlati10].zw)).xy, u_xlat11.zw);
    u_xlat11 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat11.xy, 0.0f).xyz.xyz, u_xlat11.w);
    u_xlat11 = vec4f(((-(u_xlat12.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat11 = vec4f((((vec3f(u_xlat74) * u_xlat11.xyz) + u_xlat12.xyz)).xyz, u_xlat11.w);
    u_xlat9 = vec4f((((vec3f(u_xlat73) * u_xlat11.xyz) + u_xlat9.xyz)).xyz, u_xlat9.w);
    u_xlat72 = (u_xlat72 + u_xlat73);
  }
  u_xlatb67 = (u_xlat72 < 0.99000000953674316406f);
  if (u_xlatb67) {
    u_xlat5 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat5.xyz, u_xlat66);
    u_xlat66 = (-(u_xlat72) + 1.0f);
    u_xlat67 = (u_xlat5.w + -1.0f);
    u_xlat67 = ((x_178.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat67) + 1.0f);
    u_xlat67 = max(u_xlat67, 0.0f);
    u_xlat67 = log2(u_xlat67);
    u_xlat67 = (u_xlat67 * x_178.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat67 = exp2(u_xlat67);
    u_xlat67 = (u_xlat67 * x_178.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat5 = vec4f(((u_xlat5.xyz * vec3f(u_xlat67))).xyz, u_xlat5.w);
    u_xlat9 = vec4f((((vec3f(u_xlat66) * u_xlat5.xyz) + u_xlat9.xyz)).xyz, u_xlat9.w);
  }
  u_xlat66 = (x_82.x_Radius * 0.44999998807907104492f);
  u_xlat67 = ((-(x_82.x_Radius) * 0.55000001192092895508f) + u_xlat42);
  u_xlat66 = (1.0f / u_xlat66);
  u_xlat66 = (u_xlat66 * u_xlat67);
  u_xlat66 = clamp(u_xlat66, 0.0f, 1.0f);
  u_xlat67 = ((u_xlat66 * -2.0f) + 3.0f);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat66 = (u_xlat66 * u_xlat67);
  u_xlat66 = (u_xlat66 * 0.60000002384185791016f);
  u_xlat5 = vec4f(((-(x_82.x_BodyColor.xyz) + x_82.x_ShallowColor.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((vec3f(u_xlat66) * u_xlat5.xyz) + x_82.x_BodyColor.xyz)).xyz, u_xlat5.w);
  u_xlat7.x = dot(x_3118.unity_SHAr.yw, x_853);
  u_xlat7.y = dot(x_3118.unity_SHAg.yw, x_853);
  u_xlat7.z = dot(x_3118.unity_SHAb.yw, x_853);
  u_xlat7 = vec4f(((u_xlat7.xyz + -(x_3118.unity_SHC.xyz))).xyz, u_xlat7.w);
  u_xlat66 = x_178.x_MainLightPosition.y;
  u_xlat66 = clamp(u_xlat66, 0.0f, 1.0f);
  u_xlat8 = vec4f(((vec3f(u_xlat66) * x_178.x_MainLightColor.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((vec3f(u_xlat63) * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f((((u_xlat8.xyz * vec3f(0.60000002384185791016f)) + u_xlat7.xyz)).xyz, u_xlat8.w);
  u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat8.xyz)).xyz, u_xlat5.w);
  u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat21.xxx) + x_178.x_MainLightPosition.xyz)).xyz, u_xlat4.w);
  u_xlat21.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat21.x = inverseSqrt(u_xlat21.x);
  u_xlat4 = vec4f(((u_xlat21.xxx * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat21.x = dot(u_xlat1, u_xlat4.xyz);
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat21.x = log2(u_xlat21.x);
  u_xlat1 = vec3f(((u_xlat21.xx * vec2f(900.0f, 90.0f))).xy, u_xlat1.z);
  u_xlat1 = vec3f(exp2(u_xlat1.xy).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * vec2f(x_82.x_Sun))).xy, u_xlat1.z);
  u_xlat21.x = ((u_xlat1.y * 0.03999999910593032837f) + u_xlat1.x);
  let x_3260 = vec3f(x_82.x_Reflection, x_82.x_Reflection, x_82.x_Reflection);
  u_xlat1 = ((u_xlat9.xyz * vec3f(x_3260.x, x_3260.y, x_3260.z)) + -(u_xlat5.xyz));
  u_xlat1 = ((u_xlat45.xxx * u_xlat1) + u_xlat5.xyz);
  u_xlat4 = vec4f(((u_xlat21.xxx * x_178.x_MainLightColor.xyz)).xyz, u_xlat4.w);
  u_xlat1 = ((u_xlat4.xyz * vec3f(u_xlat63)) + u_xlat1);
  if (u_xlatb2.x) {
    u_xlat21.x = max(x_82.x_Rings.z, 0.00999999977648258209f);
    u_xlat21.x = (u_xlat44.x / u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * -1.44269502162933349609f);
    u_xlat21.x = exp2(u_xlat21.x);
    u_xlat2.x = max(u_xlat44.x, 0.0f);
    u_xlat44.x = (x_82.x_Rings.z * 3.0f);
    u_xlat44.x = max(u_xlat44.x, 0.01999999955296516418f);
    u_xlat2.x = (-(u_xlat2.x) / u_xlat44.x);
    u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
    u_xlat2.x = exp2(u_xlat2.x);
    u_xlat44.x = select(0.0f, 1.0f, u_xlatb3.x);
    u_xlat2.x = (u_xlat44.x * u_xlat2.x);
    let x_3366 = (x_178.x_Time.yyy * x_3365);
    u_xlat3 = vec4f(x_3366.x, u_xlat3.y, x_3366.yz);
    u_xlat44.x = ((u_xlat0.x * 7.0f) + u_xlat3.x);
    u_xlat3.x = ((-(x_178.x_Time.y) * 0.11999999731779098511f) + u_xlat42);
    u_xlat3.x = (u_xlat3.x * 10.0f);
    u_xlat4.x = floor(u_xlat44.x);
    u_xlat4.y = floor(u_xlat3.x);
    u_xlat5.x = fract(u_xlat44.x);
    u_xlat5.y = fract(u_xlat3.x);
    u_xlat46 = (u_xlat5.xy * u_xlat5.xy);
    u_xlat5 = vec4f((((-(u_xlat5.xy) * x_558) + x_3415)).xy, u_xlat5.zw);
    u_xlat46 = (u_xlat46 * u_xlat5.xy);
    u_xlat5 = vec4f(((u_xlat4.xy * x_3426)).xy, u_xlat5.zw);
    u_xlat5 = vec4f(fract(u_xlat5.xy).xy, u_xlat5.zw);
    u_xlat8 = vec4f(((u_xlat5.yxx + x_3438)).xyz, u_xlat8.w);
    u_xlat44.x = dot(u_xlat5.xyx, u_xlat8.xyz);
    u_xlat5 = vec4f(((u_xlat44.xx + u_xlat5.xy)).xy, u_xlat5.zw);
    u_xlat44.x = (u_xlat5.y + u_xlat5.x);
    u_xlat44.x = (u_xlat5.x * u_xlat44.x);
    u_xlat44.x = fract(u_xlat44.x);
    u_xlat5 = (u_xlat4.yxyx + x_3473);
    u_xlat5 = (u_xlat5 * x_3476);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_3481);
    u_xlat3.x = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat5 = vec4f(((u_xlat3.xx + u_xlat5.yx)).xy, u_xlat5.zw);
    u_xlat3.x = (u_xlat5.y + u_xlat5.x);
    u_xlat3.x = (u_xlat5.x * u_xlat3.x);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat5.x = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat5 = vec4f(((u_xlat5.xx + u_xlat5.wz)).xy, u_xlat5.zw);
    u_xlat26.x = (u_xlat5.y + u_xlat5.x);
    u_xlat5.x = (u_xlat5.x * u_xlat26.x);
    u_xlat5.x = fract(u_xlat5.x);
    u_xlat4 = vec4f(((u_xlat4.xy + x_853)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_3426)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat26 = (u_xlat4.yxx + x_3438);
    u_xlat26.x = dot(u_xlat4.xyx, u_xlat26);
    u_xlat4 = vec4f(((u_xlat4.xy + u_xlat26.xx)).xy, u_xlat4.zw);
    u_xlat25 = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat25);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat3.x = (-(u_xlat44.x) + u_xlat3.x);
    u_xlat44.x = ((u_xlat46.x * u_xlat3.x) + u_xlat44.x);
    u_xlat3.x = (-(u_xlat5.x) + u_xlat4.x);
    u_xlat3.x = ((u_xlat46.x * u_xlat3.x) + u_xlat5.x);
    u_xlat3.x = (-(u_xlat44.x) + u_xlat3.x);
    u_xlat44.x = ((u_xlat46.y * u_xlat3.x) + u_xlat44.x);
    u_xlat3.x = ((u_xlat0.x * 19.0f) + -(u_xlat3.z));
    u_xlat3.z = ((u_xlat42 * 23.0f) + -(u_xlat3.w));
    u_xlat4 = vec4f(floor(u_xlat3.xz).xy, u_xlat4.zw);
    u_xlat5 = vec4f(fract(u_xlat3.xz).xy, u_xlat5.zw);
    let x_3666 = (u_xlat5.xy * u_xlat5.xy);
    u_xlat3 = vec4f(x_3666.x, u_xlat3.y, x_3666.y, u_xlat3.w);
    u_xlat46 = ((-(u_xlat5.xy) * x_558) + x_3415);
    let x_3677 = (u_xlat3.xz * u_xlat46);
    u_xlat3 = vec4f(x_3677.x, u_xlat3.y, x_3677.y, u_xlat3.w);
    u_xlat46 = (u_xlat4.xy * x_3426);
    u_xlat46 = fract(u_xlat46);
    u_xlat5 = vec4f(((u_xlat46.yxx + x_3438)).xyz, u_xlat5.w);
    u_xlat66 = dot(u_xlat46.xyx, u_xlat5.xyz);
    u_xlat46 = (vec2f(u_xlat66) + u_xlat46);
    u_xlat66 = (u_xlat46.y + u_xlat46.x);
    u_xlat66 = (u_xlat46.x * u_xlat66);
    u_xlat66 = fract(u_xlat66);
    u_xlat5 = (u_xlat4.yxyx + x_3473);
    u_xlat5 = (u_xlat5 * x_3476);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_3481);
    u_xlat46.x = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat46 = (u_xlat46.xx + u_xlat5.yx);
    u_xlat67 = (u_xlat46.y + u_xlat46.x);
    u_xlat4.z = (u_xlat46.x * u_xlat67);
    u_xlat67 = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat5 = vec4f(((vec2f(u_xlat67) + u_xlat5.wz)).xy, u_xlat5.zw);
    u_xlat67 = (u_xlat5.y + u_xlat5.x);
    u_xlat4.w = (u_xlat5.x * u_xlat67);
    u_xlat4 = vec4f(((u_xlat4.xy + x_853)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_3426)).xy, u_xlat4.zw);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_3438)).xyz, u_xlat5.w);
    u_xlat5.x = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((u_xlat4.xy + u_xlat5.xx)).xy, u_xlat4.zw);
    u_xlat25 = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat25);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat25 = (-(u_xlat66) + u_xlat4.z);
    u_xlat66 = ((u_xlat3.x * u_xlat25) + u_xlat66);
    u_xlat4.x = (-(u_xlat4.w) + u_xlat4.x);
    u_xlat3.x = ((u_xlat3.x * u_xlat4.x) + u_xlat4.w);
    u_xlat3.x = (-(u_xlat66) + u_xlat3.x);
    u_xlat3.x = ((u_xlat3.z * u_xlat3.x) + u_xlat66);
    u_xlat3.x = (u_xlat3.x * 0.34999999403953552246f);
    u_xlat44.x = ((u_xlat44.x * 0.64999997615814208984f) + u_xlat3.x);
    u_xlat2.x = (u_xlat2.x * 0.20000000298023223877f);
    u_xlat21.x = ((u_xlat21.x * 0.85000002384185791016f) + u_xlat2.x);
    u_xlat2.x = (u_xlat44.x + -0.30000001192092895508f);
    u_xlat2.x = (u_xlat2.x * 1.81818175315856933594f);
    u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
    u_xlat44.x = ((u_xlat2.x * -2.0f) + 3.0f);
    u_xlat2.x = (u_xlat2.x * u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * u_xlat44.x);
    u_xlat21.x = (u_xlat21.x * u_xlat2.x);
  } else {
    u_xlat21.x = 0.0f;
  }
  if (u_xlatb2.y) {
    u_xlat2.x = max(x_82.x_Rings.z, 0.00999999977648258209f);
    u_xlat2.x = (u_xlat44.y / u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * -1.44269502162933349609f);
    u_xlat2.x = exp2(u_xlat2.x);
    u_xlat23 = max(u_xlat44.y, 0.0f);
    u_xlat44.x = (x_82.x_Rings.z * 3.0f);
    u_xlat44.x = max(u_xlat44.x, 0.01999999955296516418f);
    u_xlat23 = (-(u_xlat23) / u_xlat44.x);
    u_xlat23 = (u_xlat23 * 1.44269502162933349609f);
    u_xlat23 = exp2(u_xlat23);
    u_xlat44.x = select(0.0f, 1.0f, u_xlatb3.y);
    u_xlat23 = (u_xlat44.x * u_xlat23);
    u_xlat3 = vec4f(((x_178.x_Time.yyy * x_3365)).xyz, u_xlat3.w);
    u_xlat44.x = ((u_xlat0.x * 7.0f) + u_xlat3.x);
    u_xlat65 = ((-(x_178.x_Time.y) * 0.11999999731779098511f) + u_xlat42);
    u_xlat44.y = (u_xlat65 * 10.0f);
    u_xlat4 = vec4f(floor(u_xlat44).xy, u_xlat4.zw);
    u_xlat5 = vec4f(fract(u_xlat44).xy, u_xlat5.zw);
    u_xlat44 = (u_xlat5.xy * u_xlat5.xy);
    let x_4009 = ((-(u_xlat5.xy) * x_558) + x_3415);
    u_xlat3 = vec4f(x_4009.x, u_xlat3.yz, x_4009.y);
    u_xlat44 = (u_xlat44 * u_xlat3.xw);
    let x_4018 = (u_xlat4.xy * x_3426);
    u_xlat3 = vec4f(x_4018.x, u_xlat3.yz, x_4018.y);
    let x_4023 = fract(u_xlat3.xw);
    u_xlat3 = vec4f(x_4023.x, u_xlat3.yz, x_4023.y);
    u_xlat5 = vec4f(((u_xlat3.wxx + x_3438)).xyz, u_xlat5.w);
    u_xlat46.x = dot(u_xlat3.xwx, u_xlat5.xyz);
    let x_4041 = (u_xlat3.xw + u_xlat46.xx);
    u_xlat3 = vec4f(x_4041.x, u_xlat3.yz, x_4041.y);
    u_xlat66 = (u_xlat3.w + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat66);
    u_xlat5 = (u_xlat4.yxyx + x_3473);
    u_xlat5 = (u_xlat5 * x_3476);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_3481);
    u_xlat66 = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat46 = (vec2f(u_xlat66) + u_xlat5.yx);
    u_xlat66 = (u_xlat46.y + u_xlat46.x);
    u_xlat3.w = (u_xlat46.x * u_xlat66);
    let x_4085 = fract(u_xlat3.xw);
    u_xlat3 = vec4f(x_4085.x, u_xlat3.yz, x_4085.y);
    u_xlat46.x = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat46 = (u_xlat46.xx + u_xlat5.wz);
    u_xlat67 = (u_xlat46.y + u_xlat46.x);
    u_xlat4.z = (u_xlat46.x * u_xlat67);
    u_xlat4 = vec4f(((u_xlat4.xy + x_853)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_3426)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xyz).xyz, u_xlat4.w);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_3438)).xyz, u_xlat5.w);
    u_xlat67 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((vec2f(u_xlat67) + u_xlat4.xy)).xy, u_xlat4.zw);
    u_xlat25 = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat25);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat66 = (-(u_xlat3.x) + u_xlat3.w);
    u_xlat3.x = ((u_xlat44.x * u_xlat66) + u_xlat3.x);
    u_xlat66 = (-(u_xlat4.z) + u_xlat4.x);
    u_xlat44.x = ((u_xlat44.x * u_xlat66) + u_xlat4.z);
    u_xlat44.x = (-(u_xlat3.x) + u_xlat44.x);
    u_xlat44.x = ((u_xlat44.y * u_xlat44.x) + u_xlat3.x);
    u_xlat0.x = ((u_xlat0.x * 19.0f) + -(u_xlat3.y));
    u_xlat0.z = ((u_xlat42 * 23.0f) + -(u_xlat3.z));
    u_xlat3 = vec4f(floor(u_xlat0.xz).xy, u_xlat3.zw);
    u_xlat4 = vec4f(fract(u_xlat0.xz).xy, u_xlat4.zw);
    let x_4228 = (u_xlat4.xy * u_xlat4.xy);
    u_xlat0 = vec3f(x_4228.x, u_xlat0.y, x_4228.y);
    u_xlat45 = ((-(u_xlat4.xy) * x_558) + x_3415);
    let x_4239 = (u_xlat0.xz * u_xlat45);
    u_xlat0 = vec3f(x_4239.x, u_xlat0.y, x_4239.y);
    u_xlat45 = (u_xlat3.xy * x_3426);
    u_xlat45 = fract(u_xlat45);
    u_xlat4 = vec4f(((u_xlat45.yxx + x_3438)).xyz, u_xlat4.w);
    u_xlat65 = dot(u_xlat45.xyx, u_xlat4.xyz);
    u_xlat45 = (vec2f(u_xlat65) + u_xlat45);
    u_xlat65 = (u_xlat45.y + u_xlat45.x);
    u_xlat65 = (u_xlat45.x * u_xlat65);
    u_xlat65 = fract(u_xlat65);
    u_xlat4 = (u_xlat3.yxyx + x_3473);
    u_xlat4 = (u_xlat4 * x_3476);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = (u_xlat4 + x_3481);
    u_xlat45.x = dot(u_xlat4.yxy, u_xlat5.xyy);
    u_xlat45 = (u_xlat45.xx + u_xlat4.yx);
    u_xlat66 = (u_xlat45.y + u_xlat45.x);
    u_xlat3.z = (u_xlat45.x * u_xlat66);
    u_xlat66 = dot(u_xlat4.wzw, u_xlat5.zww);
    u_xlat4 = vec4f(((vec2f(u_xlat66) + u_xlat4.wz)).xy, u_xlat4.zw);
    u_xlat66 = (u_xlat4.y + u_xlat4.x);
    u_xlat3.w = (u_xlat4.x * u_xlat66);
    u_xlat3 = vec4f(((u_xlat3.xy + x_853)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_3426)).xy, u_xlat3.zw);
    u_xlat3 = fract(u_xlat3);
    u_xlat4 = vec4f(((u_xlat3.yxx + x_3438)).xyz, u_xlat4.w);
    u_xlat4.x = dot(u_xlat3.xyx, u_xlat4.xyz);
    u_xlat3 = vec4f(((u_xlat3.xy + u_xlat4.xx)).xy, u_xlat3.zw);
    u_xlat24 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat24);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat24 = (-(u_xlat65) + u_xlat3.z);
    u_xlat65 = ((u_xlat0.x * u_xlat24) + u_xlat65);
    u_xlat3.x = (-(u_xlat3.w) + u_xlat3.x);
    u_xlat0.x = ((u_xlat0.x * u_xlat3.x) + u_xlat3.w);
    u_xlat0.x = (-(u_xlat65) + u_xlat0.x);
    u_xlat0.x = ((u_xlat0.z * u_xlat0.x) + u_xlat65);
    u_xlat0.x = (u_xlat0.x * 0.34999999403953552246f);
    u_xlat0.x = ((u_xlat44.x * 0.64999997615814208984f) + u_xlat0.x);
    u_xlat42 = (u_xlat23 * 0.20000000298023223877f);
    u_xlat42 = ((u_xlat2.x * 0.85000002384185791016f) + u_xlat42);
    u_xlat0.x = (u_xlat0.x + -0.30000001192092895508f);
    u_xlat0.x = (u_xlat0.x * 1.81818175315856933594f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat2.x = ((u_xlat0.x * -2.0f) + 3.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat0.x);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat0.x = (u_xlat0.x * u_xlat42);
    u_xlat21.x = max(u_xlat0.x, u_xlat21.x);
  }
  u_xlat0.x = (u_xlat21.x * x_82.x_Rings.w);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat21.x = (x_178.x_MainLightPosition.y + 0.30000001192092895508f);
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat2 = vec4f(((u_xlat21.xxx * x_178.x_MainLightColor.xyz)).xyz, u_xlat2.w);
  u_xlat21.x = ((u_xlat63 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat21 = (u_xlat21.xxx * u_xlat2.xyz);
  u_xlat21 = ((u_xlat7.xyz * vec3f(0.80000001192092895508f)) + u_xlat21);
  u_xlat21 = ((x_82.x_FoamColor.xyz * u_xlat21) + -(u_xlat1));
  u_xlat0 = ((u_xlat0.xxx * u_xlat21) + u_xlat1);
  u_xlatb63 = (x_178.x_DesertSunDir.w >= 0.5f);
  if (u_xlatb63) {
    u_xlat63 = sqrt(u_xlat64);
    u_xlat1.x = max(u_xlat63, 0.00009999999747378752f);
    u_xlat2 = vec4f(((u_xlat6 / u_xlat1.xxx)).xyz, u_xlat2.w);
    u_xlat63 = (u_xlat63 + -(x_178.x_DesertHaze.z));
    u_xlat63 = max(u_xlat63, 0.0f);
    u_xlat22.x = (x_178.x_WorldSpaceCameraPos.y + -(x_178.x_DesertHaze2.x));
    u_xlat1.x = (u_xlat63 / u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * u_xlat6.y);
    u_xlat1.y = max(u_xlat22.x, -20.0f);
    let x_4582 = (u_xlat1.yx * -(x_178.x_DesertHaze.yy));
    u_xlat22 = vec3f(x_4582.x, u_xlat22.y, x_4582.y);
    let x_4587 = (u_xlat22.xz * x_218);
    u_xlat22 = vec3f(x_4587.x, u_xlat22.y, x_4587.y);
    u_xlat22.x = exp2(u_xlat22.x);
    u_xlatb43 = (0.00999999977648258209f < abs(u_xlat1.x));
    u_xlat64 = exp2(u_xlat22.z);
    u_xlat64 = (-(u_xlat64) + 1.0f);
    u_xlat64 = (u_xlat64 * u_xlat22.x);
    u_xlat1.x = (u_xlat1.x * x_178.x_DesertHaze.y);
    u_xlat1.x = (u_xlat64 / u_xlat1.x);
    if (u_xlatb43) {
      x_4621 = u_xlat1.x;
    } else {
      x_4621 = u_xlat22.x;
    }
    u_xlat1.x = x_4621;
    u_xlat22.x = (u_xlat63 * x_178.x_DesertHaze.x);
    u_xlat63 = (u_xlat63 * x_178.x_DesertHazeTint.w);
    u_xlat63 = ((u_xlat22.x * u_xlat1.x) + u_xlat63);
    u_xlat1.x = (u_xlat63 * -1.44269502162933349609f);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (-(u_xlat1.x) + 1.0f);
    u_xlat1.x = min(u_xlat1.x, x_178.x_DesertHaze.w);
    u_xlat2.w = 0.03500000014901161194f;
    u_xlat22.x = dot(u_xlat2.xzw, u_xlat2.xzw);
    u_xlat22.x = inverseSqrt(u_xlat22.x);
    u_xlat3 = vec4f(((u_xlat22.xxx * u_xlat2.xwz)).xyz, u_xlat3.w);
    u_xlat43.x = min(abs(u_xlat3.z), abs(u_xlat3.x));
    u_xlat64 = max(abs(u_xlat3.z), abs(u_xlat3.x));
    u_xlat64 = (1.0f / u_xlat64);
    u_xlat43.x = (u_xlat64 * u_xlat43.x);
    u_xlat64 = (u_xlat43.x * u_xlat43.x);
    u_xlat66 = ((u_xlat64 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat66 = ((u_xlat64 * u_xlat66) + 0.18014100193977355957f);
    u_xlat66 = ((u_xlat64 * u_xlat66) + -0.33029949665069580078f);
    u_xlat64 = ((u_xlat64 * u_xlat66) + 0.99986600875854492188f);
    u_xlat66 = (u_xlat64 * u_xlat43.x);
    u_xlatb4 = (abs(u_xlat3.z) < abs(u_xlat3.x));
    u_xlat66 = ((u_xlat66 * -2.0f) + 1.57079637050628662109f);
    u_xlat66 = select(0.0f, u_xlat66, u_xlatb4);
    u_xlat43.x = ((u_xlat43.x * u_xlat64) + u_xlat66);
    u_xlatb64 = (u_xlat3.z < -(u_xlat3.z));
    u_xlat64 = select(0.0f, -3.14159274101257324219f, u_xlatb64);
    u_xlat43.x = (u_xlat64 + u_xlat43.x);
    u_xlat64 = min(u_xlat3.z, u_xlat3.x);
    u_xlat3.x = max(u_xlat3.z, u_xlat3.x);
    u_xlatb64 = (u_xlat64 < -(u_xlat64));
    u_xlatb3.x = (u_xlat3.x >= -(u_xlat3.x));
    u_xlatb64 = (u_xlatb64 & u_xlatb3.x);
    if (u_xlatb64) {
      x_4791 = -(u_xlat43.x);
    } else {
      x_4791 = u_xlat43.x;
    }
    u_xlat43.x = x_4791;
    u_xlat4.x = ((u_xlat43.x * 0.15915493667125701904f) + 0.5f);
    u_xlat4.y = 0.5f;
    let x_4817 = textureSampleLevel(x_DesertHorizonRing, sampler_DesertHorizonRing, u_xlat4.xy, 0.0f).xyz;
    u_xlat3 = vec4f(x_4817.x, u_xlat3.y, x_4817.yz);
    u_xlat43.x = ((-(u_xlat2.w) * u_xlat22.x) + 1.0f);
    u_xlat43.x = sqrt(u_xlat43.x);
    u_xlat64 = ((u_xlat22.x * -0.00065552548039704561f) + 0.07426100224256515503f);
    u_xlat64 = ((u_xlat64 * u_xlat3.y) + -0.21211439371109008789f);
    u_xlat64 = ((u_xlat64 * u_xlat3.y) + 1.57072877883911132812f);
    u_xlat43.x = ((-(u_xlat64) * u_xlat43.x) + 1.57079637050628662109f);
    u_xlat4 = vec4f(((u_xlat43.xx * vec2f(57.295780181884765625f, -9.18448162078857421875f))).xy, u_xlat4.zw);
    u_xlat5 = vec4f(((u_xlat3.xzw * x_178.x_DesertSkyGrade0.xyz)).xyz, u_xlat5.w);
    u_xlat64 = dot(u_xlat5.xyz, vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
    u_xlat3 = vec4f((((u_xlat3.xzw * x_178.x_DesertSkyGrade0.xyz) + -(vec3f(u_xlat64)))).xyz, u_xlat3.w);
    u_xlat3 = vec4f((((x_178.x_DesertSkyGrade0.www * u_xlat3.xyz) + vec3f(u_xlat64))).xyz, u_xlat3.w);
    u_xlat3 = vec4f(max(u_xlat3.xyz, vec3f()).xyz, u_xlat3.w);
    u_xlat64 = max(x_178.x_DesertSkyGrade1.w, 0.10000000149011611938f);
    u_xlat64 = (u_xlat4.x / u_xlat64);
    u_xlat64 = (-(u_xlat64) + 1.0f);
    u_xlat64 = max(u_xlat64, 0.0f);
    u_xlat64 = (u_xlat64 * u_xlat64);
    let x_4931 = (x_178.x_DesertSkyGrade1.xyz + x_4930);
    u_xlat4 = vec4f(x_4931.x, u_xlat4.y, x_4931.yz);
    let x_4939 = ((vec3f(u_xlat64) * u_xlat4.xzw) + x_2810);
    u_xlat4 = vec4f(x_4939.x, u_xlat4.y, x_4939.yz);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat4.xzw)).xyz, u_xlat3.w);
    u_xlat43.x = ((u_xlat43.x * 57.295780181884765625f) + -(x_178.x_DesertSkyGrade2.w));
    u_xlat64 = (-(x_178.x_DesertSkyGrade2.w) + 90.0f);
    u_xlat64 = max(u_xlat64, 1.0f);
    u_xlat43.x = (u_xlat43.x / u_xlat64);
    u_xlat43.x = clamp(u_xlat43.x, 0.0f, 1.0f);
    let x_4975 = (x_178.x_DesertSkyGrade2.xyz + x_4930);
    u_xlat4 = vec4f(x_4975.x, u_xlat4.y, x_4975.yz);
    let x_4983 = ((u_xlat43.xxx * u_xlat4.xzw) + x_2810);
    u_xlat4 = vec4f(x_4983.x, u_xlat4.y, x_4983.yz);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat4.xzw)).xyz, u_xlat3.w);
    u_xlat22 = vec3f((((u_xlat2.xz * u_xlat22.xx) + x_4999)).xy, u_xlat22.z);
    u_xlat64 = dot(u_xlat22.xy, u_xlat22.xy);
    u_xlat64 = inverseSqrt(u_xlat64);
    u_xlat22 = vec3f(((vec2f(u_xlat64) * u_xlat22.xy)).xy, u_xlat22.z);
    let x_5020 = (x_178.x_DesertSunDir.xz + x_4999);
    u_xlat4 = vec4f(x_5020.x, u_xlat4.y, x_5020.y, u_xlat4.w);
    u_xlat64 = dot(u_xlat4.xz, u_xlat4.xz);
    u_xlat64 = inverseSqrt(u_xlat64);
    let x_5034 = (vec2f(u_xlat64) * u_xlat4.xz);
    u_xlat4 = vec4f(x_5034.x, u_xlat4.y, x_5034.y, u_xlat4.w);
    u_xlat22.x = dot(u_xlat22.xy, u_xlat4.xz);
    u_xlat22.x = ((u_xlat22.x * 0.5f) + 0.5f);
    u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
    u_xlat43.x = max(x_178.x_DesertSkyGrade3.w, 1.0f);
    u_xlat22.x = log2(u_xlat22.x);
    u_xlat22.x = (u_xlat22.x * u_xlat43.x);
    u_xlat22.x = exp2(u_xlat22.x);
    u_xlat43.x = exp2(u_xlat4.y);
    u_xlat22.x = (u_xlat43.x * u_xlat22.x);
    u_xlat43.x = (u_xlat22.x * 1.5f);
    u_xlat43.x = min(u_xlat43.x, 1.0f);
    u_xlat4 = vec4f((((u_xlat43.xxx * vec3f(0.0f, -0.19999998807907104492f, -0.33999997377395629883f)) + x_2810)).xyz, u_xlat4.w);
    u_xlat22 = (u_xlat22.xxx * x_178.x_DesertSkyGrade3.xyz);
    u_xlat22 = ((u_xlat3.xyz * u_xlat4.xyz) + u_xlat22);
    u_xlat63 = (u_xlat63 * x_178.x_DesertHaze2.w);
    u_xlat63 = (u_xlat63 * 0.44999998807907104492f);
    u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
    u_xlat22 = (u_xlat22 + -(x_178.x_DesertHazeTint.xyz));
    u_xlat22 = ((vec3f(u_xlat63) * u_xlat22) + x_178.x_DesertHazeTint.xyz);
    u_xlat63 = dot(u_xlat2.xyz, x_178.x_DesertSunDir.xyz);
    u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
    u_xlat2 = vec4f(((x_178.x_DesertSunColor.xyz * x_178.x_DesertHaze2.yyy)).xyz, u_xlat2.w);
    u_xlat63 = log2(u_xlat63);
    u_xlat63 = (u_xlat63 * x_178.x_DesertHaze2.z);
    u_xlat63 = exp2(u_xlat63);
    u_xlat22 = ((u_xlat2.xyz * vec3f(u_xlat63)) + u_xlat22);
    u_xlat22 = (-(u_xlat0) + u_xlat22);
    u_xlat0 = ((u_xlat1.xxx * u_xlat22) + u_xlat0);
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
  x_CascadeShadowSplitSpheres0 : vec4f,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4f,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4f,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4f,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4f,
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

@group(1) @binding(5) var<uniform> x_676 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1169 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_1347 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_1590 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(6) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(4) var<uniform> x_2029 : UnityPerDraw;

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

const x_988 = vec2f(1.0f);

const x_1740 = vec3f(1.0f);

const x_2275 = vec3f(0.25f, 0.40000000596046447754f, 1.29999995231628417969f);

const x_2325 = vec2f(3.0f);

const x_2336 = vec2f(0.10310000181198120117f);

const x_2348 = vec3f(33.3300018310546875f);

const x_2383 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_2386 = vec4f(0.10310000181198120117f);

const x_2391 = vec4f(33.3300018310546875f);

const x_3841 = vec3f(-1.0f);

const x_3910 = vec2f(0.00000999999974737875f);

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
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu45 : u32;
  var u_xlati45 : i32;
  var txVec0 : vec3f;
  var u_xlatb46 : bool;
  var u_xlatu7 : vec2u;
  var u_xlatu37 : vec2u;
  var u_xlati49 : i32;
  var u_xlatu49 : u32;
  var u_xlat50 : f32;
  var u_xlatb51 : bool;
  var x_1095 : f32;
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
  var x_1641 : f32;
  var x_1655 : f32;
  var x_1669 : f32;
  var x_1716 : vec3f;
  var u_xlatu56 : u32;
  var u_xlat56 : f32;
  var u_xlat27 : vec3f;
  var u_xlatb42 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_1775 : f32;
  var x_1788 : f32;
  var u_xlat41 : f32;
  var u_xlatu41 : u32;
  var u_xlatb49 : bool;
  var u_xlat49 : f32;
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
  var x_3533 : f32;
  var x_3703 : f32;
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
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_676.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_676.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_676.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat8.w);
  u_xlat9 = (vs_TEXCOORD0 + -(x_676.x_CascadeShadowSplitSpheres3.xyz));
  u_xlat6.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat6.y = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat6.z = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat6.w = dot(u_xlat9, u_xlat9);
  u_xlatb6 = (u_xlat6 < x_676.x_CascadeShadowSplitSphereRadii);
  u_xlat7.x = select(0.0f, 1.0f, u_xlatb6.x);
  u_xlat7.y = select(0.0f, 1.0f, u_xlatb6.y);
  u_xlat7.z = select(0.0f, 1.0f, u_xlatb6.z);
  u_xlat7.w = select(0.0f, 1.0f, u_xlatb6.w);
  u_xlat6.x = select(-0.0f, -1.0f, u_xlatb6.x);
  u_xlat6.y = select(-0.0f, -1.0f, u_xlatb6.y);
  u_xlat6.z = select(-0.0f, -1.0f, u_xlatb6.z);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.yzw)).xyz, u_xlat6.w);
  u_xlat7 = vec4f(u_xlat7.x, max(u_xlat6.xyz, vec3f()).xyz);
  u_xlat45 = dot(u_xlat7, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat45 = (-(u_xlat45) + 4.0f);
  u_xlatu45 = u32(u_xlat45);
  u_xlati45 = (bitcast<i32>(u_xlatu45) << bitcast<u32>(2i));
  u_xlat6 = vec4f(((vs_TEXCOORD0.yyy * x_676.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati45 + 1i)].xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((x_676.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati45].xyz * vs_TEXCOORD0.xxx) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((x_676.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati45 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + x_676.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati45 + 3i)].xyz)).xyz, u_xlat6.w);
  let x_843 = u_xlat6.xy;
  txVec0 = vec3f(x_843.x, x_843.y, u_xlat6.z);
  u_xlat45 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat46 = (-(x_676.x_MainLightShadowParams.x) + 1.0f);
  u_xlat45 = ((u_xlat45 * x_676.x_MainLightShadowParams.x) + u_xlat46);
  u_xlatb46 = (0.0f >= u_xlat6.z);
  u_xlatb33 = (u_xlat6.z >= 1.0f);
  u_xlatb46 = (u_xlatb46 | u_xlatb33);
  u_xlat45 = select(u_xlat45, 1.0f, u_xlatb46);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_178.x_WorldSpaceCameraPos))).xyz, u_xlat6.w);
  u_xlat46 = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat33.x = ((u_xlat46 * x_676.x_MainLightShadowParams.z) + x_676.x_MainLightShadowParams.w);
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
  let x_991 = x_178.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((x_988 / vec2f(x_991.x, x_991.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat48 = ((u_xlat7.y * x_178.x_ScaleBiasRt.x) + x_178.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat48) + 1.0f);
  u_xlat48 = ((-(x_82.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat48 = (u_xlat48 * x_82.x_Roughness);
  u_xlat48 = (u_xlat48 * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_178.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu37 = vec2u(x_178.x_FPParams1.zw);
  u_xlati49 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu37.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu49 = (u_xlatu37.y * bitcast<u32>(u_xlati49));
  u_xlat7.x = -(x_178.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat7.y = -(x_178.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat7.z = -(x_178.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat50 = dot(u_xlat7.xyz, u_xlat6.xyz);
  u_xlatb51 = (x_178.unity_OrthoParams.w == 0.0f);
  u_xlat7.x = log2(u_xlat50);
  if (u_xlatb51) {
    x_1095 = u_xlat7.x;
  } else {
    x_1095 = u_xlat50;
  }
  u_xlat50 = x_1095;
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
  let x_1149 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu7.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_1156 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_1157 = vec2i(x_1149, x_1156);
  u_xlati7 = vec4i(x_1157.x, u_xlati7.y, x_1157.y, u_xlati7.w);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_1169.urp_ZBins[bitcast<i32>(u_xlatu50)].wy)));
  let x_1180 = ~(u_xlati7.xz);
  u_xlati7 = vec4i(x_1180.x, u_xlati7.yz, x_1180.y);
  u_xlati38 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_1169.urp_ZBins[bitcast<i32>(u_xlatu50)].zx)));
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati38) | bitcast<vec2u>(u_xlati8)));
  u_xlati50 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati51 = bitcast<i32>((bitcast<u32>(u_xlati7.w) & bitcast<u32>(u_xlati8.y)));
  u_xlatu50 = (bitcast<u32>(u_xlati50) | bitcast<u32>(u_xlati51));
  u_xlatu51 = u32(x_178.x_FPParams0.z);
  let x_1232 = ((vec4f() < u_xlat5.xxyz)).xzw;
  u_xlatb7 = vec4<bool>(x_1232.x, u_xlatb7.y, x_1232.yz);
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
      let x_1299 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu55 = x_1299;
      u_xlatu11 = (u_xlatu8.xxyy + vec4u(u_xlatu55));
      u_xlatu12 = (u_xlatu11.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu11.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_1317 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu11.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_1324 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu11.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_1331 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu11.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_1338 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati11 = vec4i(x_1317, x_1324, x_1331, x_1338);
      u_xlati42 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_1347.urp_Tiles[bitcast<i32>(u_xlatu12.x)].wy)));
      u_xlati13 = ~(u_xlati11);
      u_xlati14 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_1347.urp_Tiles[bitcast<i32>(u_xlatu12.x)].zx)));
      let x_1381 = bitcast<vec2i>((bitcast<vec2u>(u_xlati42) | bitcast<vec2u>(u_xlati14)));
      u_xlati12 = vec3i(x_1381.x, u_xlati12.y, x_1381.y);
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati12.x)));
      u_xlati26.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati12.z)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati26.x) | bitcast<u32>(u_xlati11.x)));
      u_xlati26 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_1169.urp_ZBins[bitcast<i32>(u_xlatu12.y)].wy)));
      u_xlati12 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_1169.urp_ZBins[bitcast<i32>(u_xlatu12.y)].zx))).xy, u_xlati12.z);
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
    u_xlat11 = (vs_TEXCOORD0 + -(x_1590.urp_ReflProbes_BoxMin[u_xlati10].xyz));
    u_xlat12 = (-(vs_TEXCOORD0) + x_1590.urp_ReflProbes_BoxMax[u_xlati10].xyz);
    u_xlat11 = min(u_xlat11, u_xlat12);
    u_xlat11 = (u_xlat11 / x_1590.urp_ReflProbes_BoxMax[u_xlati10].www);
    u_xlat55 = min(u_xlat11.z, u_xlat11.y);
    u_xlat55 = min(u_xlat55, u_xlat11.x);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat11.x = (-(u_xlat54) + 1.0f);
    u_xlat55 = min(u_xlat55, u_xlat11.x);
    u_xlatb11 = (0.0f < x_1590.urp_ReflProbes_ProbePosition[u_xlati10].w);
    if (u_xlatb7.x) {
      x_1641 = x_1590.urp_ReflProbes_BoxMax[u_xlati10].x;
    } else {
      x_1641 = x_1590.urp_ReflProbes_BoxMin[u_xlati10].x;
    }
    u_xlat26.x = x_1641;
    if (u_xlatb7.z) {
      x_1655 = x_1590.urp_ReflProbes_BoxMax[u_xlati10].y;
    } else {
      x_1655 = x_1590.urp_ReflProbes_BoxMin[u_xlati10].y;
    }
    u_xlat26.y = x_1655;
    if (u_xlatb7.w) {
      x_1669 = x_1590.urp_ReflProbes_BoxMax[u_xlati10].z;
    } else {
      x_1669 = x_1590.urp_ReflProbes_BoxMin[u_xlati10].z;
    }
    u_xlat26.z = x_1669;
    u_xlat26 = (u_xlat26 + -(vs_TEXCOORD0));
    u_xlat26 = (u_xlat26 / u_xlat5.xyz);
    u_xlat26.x = min(u_xlat26.y, u_xlat26.x);
    u_xlat26.x = min(u_xlat26.z, u_xlat26.x);
    u_xlat12 = (vs_TEXCOORD0 + -(x_1590.urp_ReflProbes_ProbePosition[u_xlati10].xyz));
    u_xlat26 = ((u_xlat5.xyz * u_xlat26.xxx) + u_xlat12);
    if (u_xlatb11) {
      x_1716 = u_xlat26;
    } else {
      x_1716 = u_xlat5.xyz;
    }
    u_xlat11 = x_1716;
    u_xlatu56 = u32(abs(x_1590.urp_ReflProbes_ProbePosition[u_xlati10].w));
    u_xlatu56 = (u_xlatu56 + 4294967295u);
    u_xlat56 = f32(u_xlatu56);
    u_xlat56 = min(u_xlat48, u_xlat56);
    u_xlat12.x = dot(abs(u_xlat11), x_1740);
    u_xlat12.x = max(u_xlat12.x, 0.00000099999999747524f);
    u_xlat12.x = (1.0f / u_xlat12.x);
    u_xlat27 = (u_xlat11.zxy * u_xlat12.xxx);
    u_xlat27.x = -(u_xlat27.x);
    u_xlat27.x = clamp(u_xlat27.x, 0.0f, 1.0f);
    u_xlatb42 = ((u_xlat27.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat27;
    if (u_xlatb42.x) {
      x_1775 = u_xlat27.x;
    } else {
      x_1775 = -(u_xlat27.x);
    }
    hlslcc_movcTemp.x = x_1775;
    if (u_xlatb42.y) {
      x_1788 = u_xlat27.x;
    } else {
      x_1788 = -(u_xlat27.x);
    }
    hlslcc_movcTemp.y = x_1788;
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
    u_xlat12 = vec3f((((u_xlat11.xy * x_1590.urp_ReflProbes_MipScaleOffset[u_xlati41].xy) + x_1590.urp_ReflProbes_MipScaleOffset[u_xlati41].zw)).xy, u_xlat12.z);
    u_xlat12 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat12.xy, 0.0f).xyz;
    u_xlat11 = vec3f((((u_xlat11.xy * x_1590.urp_ReflProbes_MipScaleOffset[u_xlati10].xy) + x_1590.urp_ReflProbes_MipScaleOffset[u_xlati10].zw)).xy, u_xlat11.z);
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
  u_xlat7.x = dot(x_2029.unity_SHAr.yw, x_988);
  u_xlat7.y = dot(x_2029.unity_SHAg.yw, x_988);
  u_xlat7.z = dot(x_2029.unity_SHAb.yw, x_988);
  u_xlat7 = vec4f(((u_xlat7.xyz + -(x_2029.unity_SHC.xyz))).xyz, u_xlat7.w);
  u_xlat48 = x_178.x_MainLightPosition.y;
  u_xlat48 = clamp(u_xlat48, 0.0f, 1.0f);
  u_xlat8 = vec4f(((vec3f(u_xlat48) * x_178.x_MainLightColor.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((vec3f(u_xlat45) * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f((((u_xlat8.xyz * vec3f(0.60000002384185791016f)) + u_xlat7.xyz)).xyz, u_xlat8.w);
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
  let x_2170 = vec3f(x_82.x_Reflection, x_82.x_Reflection, x_82.x_Reflection);
  u_xlat1 = ((u_xlat9 * vec3f(x_2170.x, x_2170.y, x_2170.z)) + -(u_xlat5.xyz));
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
    let x_2276 = (x_178.x_Time.yyy * x_2275);
    u_xlat3 = vec4f(x_2276.x, u_xlat3.y, x_2276.yz);
    u_xlat32.x = ((u_xlat0.x * 7.0f) + u_xlat3.x);
    u_xlat3.x = ((-(x_178.x_Time.y) * 0.11999999731779098511f) + u_xlat30);
    u_xlat3.x = (u_xlat3.x * 10.0f);
    u_xlat4.x = floor(u_xlat32.x);
    u_xlat4.y = floor(u_xlat3.x);
    u_xlat5.x = fract(u_xlat32.x);
    u_xlat5.y = fract(u_xlat3.x);
    u_xlat34 = (u_xlat5.xy * u_xlat5.xy);
    u_xlat5 = vec4f((((-(u_xlat5.xy) * x_558) + x_2325)).xy, u_xlat5.zw);
    u_xlat34 = (u_xlat34 * u_xlat5.xy);
    u_xlat5 = vec4f(((u_xlat4.xy * x_2336)).xy, u_xlat5.zw);
    u_xlat5 = vec4f(fract(u_xlat5.xy).xy, u_xlat5.zw);
    u_xlat8 = vec4f(((u_xlat5.yxx + x_2348)).xyz, u_xlat8.w);
    u_xlat32.x = dot(u_xlat5.xyx, u_xlat8.xyz);
    u_xlat5 = vec4f(((u_xlat32.xx + u_xlat5.xy)).xy, u_xlat5.zw);
    u_xlat32.x = (u_xlat5.y + u_xlat5.x);
    u_xlat32.x = (u_xlat5.x * u_xlat32.x);
    u_xlat32.x = fract(u_xlat32.x);
    u_xlat5 = (u_xlat4.yxyx + x_2383);
    u_xlat5 = (u_xlat5 * x_2386);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_2391);
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
    u_xlat4 = vec4f(((u_xlat4.xy + x_988)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_2336)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat20 = (u_xlat4.yxx + x_2348);
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
    let x_2576 = (u_xlat5.xy * u_xlat5.xy);
    u_xlat3 = vec4f(x_2576.x, u_xlat3.y, x_2576.y, u_xlat3.w);
    u_xlat34 = ((-(u_xlat5.xy) * x_558) + x_2325);
    let x_2587 = (u_xlat3.xz * u_xlat34);
    u_xlat3 = vec4f(x_2587.x, u_xlat3.y, x_2587.y, u_xlat3.w);
    u_xlat34 = (u_xlat4.xy * x_2336);
    u_xlat34 = fract(u_xlat34);
    u_xlat5 = vec4f(((u_xlat34.yxx + x_2348)).xyz, u_xlat5.w);
    u_xlat48 = dot(u_xlat34.xyx, u_xlat5.xyz);
    u_xlat34 = (vec2f(u_xlat48) + u_xlat34);
    u_xlat48 = (u_xlat34.y + u_xlat34.x);
    u_xlat48 = (u_xlat34.x * u_xlat48);
    u_xlat48 = fract(u_xlat48);
    u_xlat5 = (u_xlat4.yxyx + x_2383);
    u_xlat5 = (u_xlat5 * x_2386);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_2391);
    u_xlat34.x = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat34 = (u_xlat34.xx + u_xlat5.yx);
    u_xlat49 = (u_xlat34.y + u_xlat34.x);
    u_xlat4.z = (u_xlat34.x * u_xlat49);
    u_xlat49 = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat5 = vec4f(((vec2f(u_xlat49) + u_xlat5.wz)).xy, u_xlat5.zw);
    u_xlat49 = (u_xlat5.y + u_xlat5.x);
    u_xlat4.w = (u_xlat5.x * u_xlat49);
    u_xlat4 = vec4f(((u_xlat4.xy + x_988)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_2336)).xy, u_xlat4.zw);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_2348)).xyz, u_xlat5.w);
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
    u_xlat3 = vec4f(((x_178.x_Time.yyy * x_2275)).xyz, u_xlat3.w);
    u_xlat32.x = ((u_xlat0.x * 7.0f) + u_xlat3.x);
    u_xlat47 = ((-(x_178.x_Time.y) * 0.11999999731779098511f) + u_xlat30);
    u_xlat32.y = (u_xlat47 * 10.0f);
    u_xlat4 = vec4f(floor(u_xlat32).xy, u_xlat4.zw);
    u_xlat5 = vec4f(fract(u_xlat32).xy, u_xlat5.zw);
    u_xlat32 = (u_xlat5.xy * u_xlat5.xy);
    let x_2919 = ((-(u_xlat5.xy) * x_558) + x_2325);
    u_xlat3 = vec4f(x_2919.x, u_xlat3.yz, x_2919.y);
    u_xlat32 = (u_xlat32 * u_xlat3.xw);
    let x_2928 = (u_xlat4.xy * x_2336);
    u_xlat3 = vec4f(x_2928.x, u_xlat3.yz, x_2928.y);
    let x_2933 = fract(u_xlat3.xw);
    u_xlat3 = vec4f(x_2933.x, u_xlat3.yz, x_2933.y);
    u_xlat5 = vec4f(((u_xlat3.wxx + x_2348)).xyz, u_xlat5.w);
    u_xlat34.x = dot(u_xlat3.xwx, u_xlat5.xyz);
    let x_2951 = (u_xlat3.xw + u_xlat34.xx);
    u_xlat3 = vec4f(x_2951.x, u_xlat3.yz, x_2951.y);
    u_xlat48 = (u_xlat3.w + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat48);
    u_xlat5 = (u_xlat4.yxyx + x_2383);
    u_xlat5 = (u_xlat5 * x_2386);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_2391);
    u_xlat48 = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat34 = (vec2f(u_xlat48) + u_xlat5.yx);
    u_xlat48 = (u_xlat34.y + u_xlat34.x);
    u_xlat3.w = (u_xlat34.x * u_xlat48);
    let x_2995 = fract(u_xlat3.xw);
    u_xlat3 = vec4f(x_2995.x, u_xlat3.yz, x_2995.y);
    u_xlat34.x = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat34 = (u_xlat34.xx + u_xlat5.wz);
    u_xlat49 = (u_xlat34.y + u_xlat34.x);
    u_xlat4.z = (u_xlat34.x * u_xlat49);
    u_xlat4 = vec4f(((u_xlat4.xy + x_988)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_2336)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xyz).xyz, u_xlat4.w);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_2348)).xyz, u_xlat5.w);
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
    let x_3138 = (u_xlat4.xy * u_xlat4.xy);
    u_xlat0 = vec3f(x_3138.x, u_xlat0.y, x_3138.y);
    u_xlat33 = ((-(u_xlat4.xy) * x_558) + x_2325);
    let x_3149 = (u_xlat0.xz * u_xlat33);
    u_xlat0 = vec3f(x_3149.x, u_xlat0.y, x_3149.y);
    u_xlat33 = (u_xlat3.xy * x_2336);
    u_xlat33 = fract(u_xlat33);
    u_xlat4 = vec4f(((u_xlat33.yxx + x_2348)).xyz, u_xlat4.w);
    u_xlat47 = dot(u_xlat33.xyx, u_xlat4.xyz);
    u_xlat33 = (vec2f(u_xlat47) + u_xlat33);
    u_xlat47 = (u_xlat33.y + u_xlat33.x);
    u_xlat47 = (u_xlat33.x * u_xlat47);
    u_xlat47 = fract(u_xlat47);
    u_xlat4 = (u_xlat3.yxyx + x_2383);
    u_xlat4 = (u_xlat4 * x_2386);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = (u_xlat4 + x_2391);
    u_xlat33.x = dot(u_xlat4.yxy, u_xlat5.xyy);
    u_xlat33 = (u_xlat33.xx + u_xlat4.yx);
    u_xlat48 = (u_xlat33.y + u_xlat33.x);
    u_xlat3.z = (u_xlat33.x * u_xlat48);
    u_xlat48 = dot(u_xlat4.wzw, u_xlat5.zww);
    u_xlat4 = vec4f(((vec2f(u_xlat48) + u_xlat4.wz)).xy, u_xlat4.zw);
    u_xlat48 = (u_xlat4.y + u_xlat4.x);
    u_xlat3.w = (u_xlat4.x * u_xlat48);
    u_xlat3 = vec4f(((u_xlat3.xy + x_988)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_2336)).xy, u_xlat3.zw);
    u_xlat3 = fract(u_xlat3);
    u_xlat4 = vec4f(((u_xlat3.yxx + x_2348)).xyz, u_xlat4.w);
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
  u_xlat15 = ((u_xlat7.xyz * vec3f(0.80000001192092895508f)) + u_xlat15);
  u_xlat15 = ((x_82.x_FoamColor.xyz * u_xlat15) + -(u_xlat1));
  u_xlat0 = ((u_xlat0.xxx * u_xlat15) + u_xlat1);
  u_xlatb45 = (x_178.x_DesertSunDir.w >= 0.5f);
  if (u_xlatb45) {
    u_xlat45 = sqrt(u_xlat46);
    u_xlat1.x = max(u_xlat45, 0.00009999999747378752f);
    u_xlat2 = vec4f(((u_xlat6.xyz / u_xlat1.xxx)).xyz, u_xlat2.w);
    u_xlat45 = (u_xlat45 + -(x_178.x_DesertHaze.z));
    u_xlat45 = max(u_xlat45, 0.0f);
    u_xlat16.x = (x_178.x_WorldSpaceCameraPos.y + -(x_178.x_DesertHaze2.x));
    u_xlat1.x = (u_xlat45 / u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * u_xlat6.y);
    u_xlat1.y = max(u_xlat16.x, -20.0f);
    let x_3494 = (u_xlat1.yx * -(x_178.x_DesertHaze.yy));
    u_xlat16 = vec3f(x_3494.x, u_xlat16.y, x_3494.y);
    let x_3499 = (u_xlat16.xz * x_218);
    u_xlat16 = vec3f(x_3499.x, u_xlat16.y, x_3499.y);
    u_xlat16.x = exp2(u_xlat16.x);
    u_xlatb31 = (0.00999999977648258209f < abs(u_xlat1.x));
    u_xlat46 = exp2(u_xlat16.z);
    u_xlat46 = (-(u_xlat46) + 1.0f);
    u_xlat46 = (u_xlat46 * u_xlat16.x);
    u_xlat1.x = (u_xlat1.x * x_178.x_DesertHaze.y);
    u_xlat1.x = (u_xlat46 / u_xlat1.x);
    if (u_xlatb31) {
      x_3533 = u_xlat1.x;
    } else {
      x_3533 = u_xlat16.x;
    }
    u_xlat1.x = x_3533;
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
      x_3703 = -(u_xlat31.x);
    } else {
      x_3703 = u_xlat31.x;
    }
    u_xlat31.x = x_3703;
    u_xlat4.x = ((u_xlat31.x * 0.15915493667125701904f) + 0.5f);
    u_xlat4.y = 0.5f;
    let x_3729 = textureSampleLevel(x_DesertHorizonRing, sampler_DesertHorizonRing, u_xlat4.xy, 0.0f).xyz;
    u_xlat3 = vec4f(x_3729.x, u_xlat3.y, x_3729.yz);
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
    let x_3842 = (x_178.x_DesertSkyGrade1.xyz + x_3841);
    u_xlat4 = vec4f(x_3842.x, u_xlat4.y, x_3842.yz);
    let x_3850 = ((vec3f(u_xlat46) * u_xlat4.xzw) + x_1740);
    u_xlat4 = vec4f(x_3850.x, u_xlat4.y, x_3850.yz);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat4.xzw)).xyz, u_xlat3.w);
    u_xlat31.x = ((u_xlat31.x * 57.295780181884765625f) + -(x_178.x_DesertSkyGrade2.w));
    u_xlat46 = (-(x_178.x_DesertSkyGrade2.w) + 90.0f);
    u_xlat46 = max(u_xlat46, 1.0f);
    u_xlat31.x = (u_xlat31.x / u_xlat46);
    u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
    let x_3886 = (x_178.x_DesertSkyGrade2.xyz + x_3841);
    u_xlat4 = vec4f(x_3886.x, u_xlat4.y, x_3886.yz);
    let x_3894 = ((u_xlat31.xxx * u_xlat4.xzw) + x_1740);
    u_xlat4 = vec4f(x_3894.x, u_xlat4.y, x_3894.yz);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat4.xzw)).xyz, u_xlat3.w);
    u_xlat16 = vec3f((((u_xlat2.xz * u_xlat16.xx) + x_3910)).xy, u_xlat16.z);
    u_xlat46 = dot(u_xlat16.xy, u_xlat16.xy);
    u_xlat46 = inverseSqrt(u_xlat46);
    u_xlat16 = vec3f(((vec2f(u_xlat46) * u_xlat16.xy)).xy, u_xlat16.z);
    let x_3931 = (x_178.x_DesertSunDir.xz + x_3910);
    u_xlat4 = vec4f(x_3931.x, u_xlat4.y, x_3931.y, u_xlat4.w);
    u_xlat46 = dot(u_xlat4.xz, u_xlat4.xz);
    u_xlat46 = inverseSqrt(u_xlat46);
    let x_3945 = (vec2f(u_xlat46) * u_xlat4.xz);
    u_xlat4 = vec4f(x_3945.x, u_xlat4.y, x_3945.y, u_xlat4.w);
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
    u_xlat4 = vec4f((((u_xlat31.xxx * vec3f(0.0f, -0.19999998807907104492f, -0.33999997377395629883f)) + x_1740)).xyz, u_xlat4.w);
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
  x_CascadeShadowSplitSpheres0 : vec4f,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4f,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4f,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4f,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4f,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4f,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4f,
  /* @offset(432) */
  x_MainLightShadowParams : vec4f,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4f,
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

@group(1) @binding(5) var<uniform> x_676 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_2365 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_2543 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_2785 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(6) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(4) var<uniform> x_3258 : UnityPerDraw;

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

const x_966 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_991 = vec2f(1.0f);

const x_1034 = vec2f(0.15999999642372131348f);

const x_1107 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1496 = vec2f(0.08163200318813323975f);

const x_1513 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1516 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1523 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1561 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2951 = vec3f(1.0f);

const x_3505 = vec3f(0.25f, 0.40000000596046447754f, 1.29999995231628417969f);

const x_3555 = vec2f(3.0f);

const x_3566 = vec2f(0.10310000181198120117f);

const x_3578 = vec3f(33.3300018310546875f);

const x_3613 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_3616 = vec4f(0.10310000181198120117f);

const x_3621 = vec4f(33.3300018310546875f);

const x_5070 = vec3f(-1.0f);

const x_5139 = vec2f(0.00000999999974737875f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat42 : f32;
  var u_xlat63 : f32;
  var u_xlat1 : vec3f;
  var u_xlat43 : vec2f;
  var u_xlatb2 : vec2<bool>;
  var u_xlat44 : vec2f;
  var u_xlatb3 : vec2<bool>;
  var u_xlat45 : vec2f;
  var u_xlat64 : f32;
  var u_xlat4 : vec4f;
  var u_xlat46 : vec2f;
  var u_xlat5 : vec4f;
  var x_332 : f32;
  var u_xlat66 : f32;
  var u_xlatb4 : bool;
  var u_xlatb45 : bool;
  var u_xlatb21 : bool;
  var u_xlatb0 : bool;
  var x_474 : f32;
  var u_xlat21 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlatb63 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb64 : bool;
  var u_xlat49 : vec2f;
  var u_xlat51 : vec2f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat55 : vec2f;
  var u_xlat16 : vec4f;
  var u_xlat29 : vec2f;
  var u_xlat17 : vec2f;
  var u_xlat52 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
  var u_xlat20 : vec4f;
  var txVec13 : vec3f;
  var txVec14 : vec3f;
  var u_xlat67 : f32;
  var txVec15 : vec3f;
  var txVec16 : vec3f;
  var txVec17 : vec3f;
  var txVec18 : vec3f;
  var txVec19 : vec3f;
  var txVec20 : vec3f;
  var txVec21 : vec3f;
  var txVec22 : vec3f;
  var txVec23 : vec3f;
  var txVec24 : vec3f;
  var txVec25 : vec3f;
  var txVec26 : vec3f;
  var txVec27 : vec3f;
  var txVec28 : vec3f;
  var txVec29 : vec3f;
  var u_xlatu7 : vec2u;
  var u_xlatu49 : vec2u;
  var u_xlati67 : i32;
  var u_xlatu67 : u32;
  var u_xlat68 : f32;
  var u_xlatb69 : bool;
  var x_2291 : f32;
  var u_xlatu68 : u32;
  var u_xlatu69 : u32;
  var u_xlati7 : vec4i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati50 : vec2i;
  var u_xlati68 : i32;
  var u_xlati69 : i32;
  var u_xlatb7 : vec4<bool>;
  var u_xlatu8 : vec2u;
  var u_xlatu50 : vec2u;
  var u_xlat72 : f32;
  var u_xlatu10 : u32;
  var u_xlatu31 : vec2u;
  var u_xlatb73 : bool;
  var u_xlatu11 : vec4u;
  var u_xlatb11 : bool;
  var u_xlatu73 : u32;
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
  var u_xlati54 : vec2i;
  var u_xlati13 : vec4i;
  var u_xlati14 : vec2i;
  var u_xlati12 : vec3i;
  var u_xlati32 : vec2i;
  var u_xlati53 : i32;
  var u_xlati73 : i32;
  var u_xlatb10 : bool;
  var u_xlati10 : i32;
  var u_xlat73 : f32;
  var u_xlat32 : vec3f;
  var x_2846 : f32;
  var x_2860 : f32;
  var x_2874 : f32;
  var x_2924 : vec3f;
  var u_xlatu74 : u32;
  var u_xlat74 : f32;
  var u_xlat33 : vec3f;
  var u_xlatb54 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_2986 : f32;
  var x_2999 : f32;
  var u_xlat53 : f32;
  var u_xlatu53 : u32;
  var u_xlatb67 : bool;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat26 : vec3f;
  var u_xlat25 : f32;
  var u_xlat23 : f32;
  var u_xlat65 : f32;
  var u_xlat24 : f32;
  var u_xlat22 : vec3f;
  var u_xlatb43 : bool;
  var x_4762 : f32;
  var x_4932 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec3f(((vs_TEXCOORD0.zx + -(x_82.x_Centre.yx))).xy, u_xlat0.z);
  u_xlat42 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat42 = sqrt(u_xlat42);
  u_xlat63 = max(u_xlat42, 0.00009999999747378752f);
  u_xlat1 = vec3f(((u_xlat0.yx / vec2f(u_xlat63))).xy, u_xlat1.z);
  u_xlat63 = max(x_82.x_Ripple.y, 0.00999999977648258209f);
  u_xlat63 = (6.28318548202514648438f / u_xlat63);
  u_xlat43.x = (u_xlat63 * x_82.x_Ripple.z);
  u_xlatb2 = ((x_82.x_Rings.xyxx >= vec4f())).xy;
  u_xlat44 = (vec2f(u_xlat42) + -(x_82.x_Rings.xy));
  u_xlatb3 = ((vec4f(u_xlat42) >= x_82.x_Rings.xyxx)).xy;
  u_xlat45.x = select(-1.0f, 1.0f, u_xlatb3.x);
  u_xlat45.y = select(-1.0f, 1.0f, u_xlatb3.y);
  u_xlat64 = (u_xlat43.x * x_178.x_Time.y);
  u_xlat4 = vec4f((((vec2f(u_xlat63) * abs(u_xlat44)) + -(vec2f(u_xlat64)))).xy, u_xlat4.zw);
  u_xlat4 = vec4f(cos(u_xlat4.xy).xy, u_xlat4.zw);
  u_xlat4 = vec4f(((u_xlat4.xy * x_82.x_Ripple.xx)).xy, u_xlat4.zw);
  u_xlat46 = (-(abs(u_xlat44)) * x_82.x_Ripple.ww);
  u_xlat46 = (u_xlat46 * x_218);
  u_xlat46 = exp2(u_xlat46);
  u_xlat4 = vec4f(((u_xlat46 * u_xlat4.xy)).xy, u_xlat4.zw);
  u_xlat64 = (x_178.x_Time.y * 0.69999998807907104492f);
  u_xlat46.x = ((x_178.x_Time.y * 1.37000000476837158203f) + 0.89999997615814208984f);
  u_xlat63 = (u_xlat63 * 1.30999994277954101562f);
  u_xlat43.x = (u_xlat43.x * u_xlat46.x);
  u_xlat46 = (x_82.x_Ripple.xw * vec2f(0.60000002384185791016f, 1.20000004768371582031f));
  u_xlat43.x = (u_xlat43.x * 1.30999994277954101562f);
  u_xlat5 = vec4f((((vec2f(u_xlat63) * abs(u_xlat44)) + -(u_xlat43.xx))).xy, u_xlat5.zw);
  u_xlat5 = vec4f(cos(u_xlat5.xy).xy, u_xlat5.zw);
  u_xlat5 = vec4f(((u_xlat46.xx * u_xlat5.xy)).xy, u_xlat5.zw);
  u_xlat46 = (-(abs(u_xlat44)) * u_xlat46.yy);
  u_xlat46 = (u_xlat46 * x_218);
  u_xlat46 = exp2(u_xlat46);
  u_xlat46 = (u_xlat46 * u_xlat5.xy);
  u_xlat63 = (u_xlat45.x * u_xlat46.x);
  u_xlat63 = ((u_xlat4.x * u_xlat45.x) + u_xlat63);
  u_xlat63 = select(0.0f, u_xlat63, u_xlatb2.x);
  u_xlat43.x = ((u_xlat4.y * u_xlat45.y) + u_xlat63);
  u_xlat43.x = ((u_xlat46.y * u_xlat45.y) + u_xlat43.x);
  if (u_xlatb2.y) {
    x_332 = u_xlat43.x;
  } else {
    x_332 = u_xlat63;
  }
  u_xlat63 = x_332;
  u_xlat43.x = min(abs(u_xlat0.y), abs(u_xlat0.x));
  u_xlat45.x = max(abs(u_xlat0.y), abs(u_xlat0.x));
  u_xlat45.x = (1.0f / u_xlat45.x);
  u_xlat43.x = (u_xlat43.x * u_xlat45.x);
  u_xlat45.x = (u_xlat43.x * u_xlat43.x);
  u_xlat66 = ((u_xlat45.x * 0.02083509974181652069f) + -0.08513300120830535889f);
  u_xlat66 = ((u_xlat45.x * u_xlat66) + 0.18014100193977355957f);
  u_xlat66 = ((u_xlat45.x * u_xlat66) + -0.33029949665069580078f);
  u_xlat45.x = ((u_xlat45.x * u_xlat66) + 0.99986600875854492188f);
  u_xlat66 = (u_xlat43.x * u_xlat45.x);
  u_xlatb4 = (abs(u_xlat0.y) < abs(u_xlat0.x));
  u_xlat66 = ((u_xlat66 * -2.0f) + 1.57079637050628662109f);
  u_xlat66 = select(0.0f, u_xlat66, u_xlatb4);
  u_xlat43.x = ((u_xlat43.x * u_xlat45.x) + u_xlat66);
  u_xlatb45 = (u_xlat0.y < -(u_xlat0.y));
  u_xlat45.x = select(0.0f, -3.14159274101257324219f, u_xlatb45);
  u_xlat43.x = (u_xlat43.x + u_xlat45.x);
  u_xlat45.x = min(u_xlat0.y, u_xlat0.x);
  u_xlat0.x = max(u_xlat0.y, u_xlat0.x);
  u_xlatb21 = (u_xlat45.x < -(u_xlat45.x));
  u_xlatb0 = (u_xlat0.x >= -(u_xlat0.x));
  u_xlatb0 = (u_xlatb0 & u_xlatb21);
  if (u_xlatb0) {
    x_474 = -(u_xlat43.x);
  } else {
    x_474 = u_xlat43.x;
  }
  u_xlat0.x = x_474;
  u_xlat21.x = ((u_xlat0.x * 5.0f) + u_xlat64);
  u_xlat21.x = ((u_xlat42 * 3.0f) + u_xlat21.x);
  u_xlat21.x = sin(u_xlat21.x);
  u_xlat21.x = ((u_xlat21.x * 0.25f) + 0.75f);
  u_xlat21.x = (u_xlat21.x * u_xlat63);
  u_xlat43 = (vs_TEXCOORD0.xz / vec2f(x_82.x_DetailTile));
  u_xlat45 = ((x_178.x_Time.yy * vec2f(0.03099999949336051941f, 0.01700000092387199402f)) + u_xlat43);
  let x_542 = u_xlat45;
  let x_544 = x_178.x_GlobalMipBias.x;
  let x_545 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_542, x_544);
  u_xlat4 = vec4f(x_545.xyw.xyz, u_xlat4.w);
  u_xlat4.x = (u_xlat4.x * u_xlat4.z);
  u_xlat45 = ((u_xlat4.xy * x_558) + x_560);
  u_xlat4 = vec4f(((x_178.x_Time.yy * vec2f(0.02300000004470348358f, 0.04100000113248825073f))).xy, u_xlat4.zw);
  u_xlat43 = ((u_xlat43 * vec2f(1.70000004768371582031f)) + -(u_xlat4.xy));
  let x_582 = u_xlat43;
  let x_584 = x_178.x_GlobalMipBias.x;
  let x_585 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_582, x_584);
  u_xlat4 = vec4f(x_585.xyw.xyz, u_xlat4.w);
  u_xlat4.x = (u_xlat4.x * u_xlat4.z);
  u_xlat43 = ((u_xlat4.xy * x_558) + x_560);
  u_xlat43 = (u_xlat43 + u_xlat45);
  u_xlat43 = (u_xlat43 * x_604);
  let x_612 = vec2f(x_82.x_DetailStrength, x_82.x_DetailStrength);
  u_xlat43 = (u_xlat43 * vec2f(x_612.x, x_612.y));
  let x_623 = ((u_xlat1.xy * u_xlat21.xx) + u_xlat43);
  u_xlat21 = vec3f(x_623.x, u_xlat21.y, x_623.y);
  let x_628 = -(u_xlat21.xz);
  u_xlat1 = vec3f(x_628.x, u_xlat1.y, x_628.y);
  u_xlat1.y = 1.0f;
  u_xlat21.x = dot(u_xlat1, u_xlat1);
  u_xlat21.x = inverseSqrt(u_xlat21.x);
  u_xlat1 = (u_xlat21.xxx * u_xlat1);
  u_xlat4 = vec4f(((-(vs_TEXCOORD0) + x_178.x_WorldSpaceCameraPos)).xyz, u_xlat4.w);
  u_xlat21.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat21.x = inverseSqrt(u_xlat21.x);
  u_xlat5 = vec4f(((u_xlat21.xxx * u_xlat4.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_676.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_676.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_676.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat8.w);
  u_xlat9 = vec4f(((vs_TEXCOORD0 + -(x_676.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat9.w);
  u_xlat6.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat6.y = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat6.z = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat6.w = dot(u_xlat9.xyz, u_xlat9.xyz);
  u_xlatb6 = (u_xlat6 < x_676.x_CascadeShadowSplitSphereRadii);
  u_xlat7.x = select(0.0f, 1.0f, u_xlatb6.x);
  u_xlat7.y = select(0.0f, 1.0f, u_xlatb6.y);
  u_xlat7.z = select(0.0f, 1.0f, u_xlatb6.z);
  u_xlat7.w = select(0.0f, 1.0f, u_xlatb6.w);
  u_xlat6.x = select(-0.0f, -1.0f, u_xlatb6.x);
  u_xlat6.y = select(-0.0f, -1.0f, u_xlatb6.y);
  u_xlat6.z = select(-0.0f, -1.0f, u_xlatb6.z);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.yzw)).xyz, u_xlat6.w);
  u_xlat7 = vec4f(u_xlat7.x, max(u_xlat6.xyz, vec3f()).xyz);
  u_xlat63 = dot(u_xlat7, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat63 = (-(u_xlat63) + 4.0f);
  u_xlatu63 = u32(u_xlat63);
  u_xlati63 = (bitcast<i32>(u_xlatu63) << bitcast<u32>(2i));
  u_xlat6 = vec4f(((vs_TEXCOORD0.yyy * x_676.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati63 + 1i)].xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((x_676.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati63].xyz * vs_TEXCOORD0.xxx) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((x_676.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati63 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + x_676.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati63 + 3i)].xyz)).xyz, u_xlat6.w);
  u_xlatb63 = (0.0f < x_676.x_MainLightShadowParams.y);
  if (u_xlatb63) {
    u_xlatb63 = (x_676.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb63) {
      u_xlat7 = (u_xlat6.xyxy + x_676.x_MainLightShadowOffset0);
      let x_865 = u_xlat7.xy;
      txVec0 = vec3f(x_865.x, x_865.y, u_xlat6.z);
      u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_885 = u_xlat7.zw;
      txVec1 = vec3f(x_885.x, x_885.y, u_xlat6.z);
      u_xlat8.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat7 = (u_xlat6.xyxy + x_676.x_MainLightShadowOffset1);
      let x_905 = u_xlat7.xy;
      txVec2 = vec3f(x_905.x, x_905.y, u_xlat6.z);
      u_xlat8.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_920 = u_xlat7.zw;
      txVec3 = vec3f(x_920.x, x_920.y, u_xlat6.z);
      u_xlat8.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat63 = dot(u_xlat8, vec4f(0.25f));
    } else {
      u_xlatb64 = (x_676.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb64) {
        u_xlat45 = ((u_xlat6.xy * x_676.x_MainLightShadowmapSize.zw) + x_604);
        u_xlat45 = floor(u_xlat45);
        u_xlat7 = vec4f((((u_xlat6.xy * x_676.x_MainLightShadowmapSize.zw) + -(u_xlat45))).xy, u_xlat7.zw);
        u_xlat8 = (u_xlat7.xxyy + x_966);
        u_xlat9 = (u_xlat8.xxzz * u_xlat8.xxzz);
        u_xlat49 = (u_xlat9.yw * vec2f(0.07999999821186065674f));
        let x_985 = ((u_xlat9.xz * x_604) + -(u_xlat7.xy));
        u_xlat8 = vec4f(x_985.x, u_xlat8.y, x_985.y, u_xlat8.w);
        u_xlat9 = vec4f(((-(u_xlat7.xy) + x_991)).xy, u_xlat9.zw);
        u_xlat51 = min(u_xlat7.xy, vec2f());
        u_xlat51 = ((-(u_xlat51) * u_xlat51) + u_xlat9.xy);
        u_xlat7 = vec4f(max(u_xlat7.xy, vec2f()).xy, u_xlat7.zw);
        u_xlat7 = vec4f((((-(u_xlat7.xy) * u_xlat7.xy) + u_xlat8.yw)).xy, u_xlat7.zw);
        u_xlat51 = (u_xlat51 + x_991);
        u_xlat7 = vec4f(((u_xlat7.xy + x_991)).xy, u_xlat7.zw);
        u_xlat10 = vec4f(((u_xlat8.xz * x_1034)).xy, u_xlat10.zw);
        u_xlat11 = vec4f(((u_xlat9.xy * x_1034)).xy, u_xlat11.zw);
        u_xlat9 = vec4f(((u_xlat51 * x_1034)).xy, u_xlat9.zw);
        u_xlat12 = vec4f(((u_xlat7.xy * x_1034)).xy, u_xlat12.zw);
        u_xlat7 = vec4f(((u_xlat8.yw * x_1034)).xy, u_xlat7.zw);
        u_xlat10.z = u_xlat9.x;
        u_xlat10.w = u_xlat7.x;
        u_xlat11.z = u_xlat12.x;
        u_xlat11.w = u_xlat49.x;
        u_xlat8 = (u_xlat10.zwxz + u_xlat11.zwxz);
        u_xlat9.z = u_xlat10.y;
        u_xlat9.w = u_xlat7.y;
        u_xlat12.z = u_xlat11.y;
        u_xlat12.w = u_xlat49.y;
        u_xlat7 = vec4f(((u_xlat9.zyw + u_xlat12.zyw)).xyz, u_xlat7.w);
        u_xlat9 = vec4f(((u_xlat11.xzw / u_xlat8.zwy)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat9.xyz + x_1107)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat12.zyw / u_xlat7.xyz)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz + x_1107)).xyz, u_xlat10.w);
        u_xlat9 = vec4f(((u_xlat9.yxz * x_676.x_MainLightShadowmapSize.xxx)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat10.xyz * x_676.x_MainLightShadowmapSize.yyy)).xyz, u_xlat10.w);
        u_xlat9.w = u_xlat10.x;
        u_xlat11 = ((u_xlat45.xyxy * x_676.x_MainLightShadowmapSize.xyxy) + u_xlat9.ywxw);
        u_xlat12 = vec4f((((u_xlat45 * x_676.x_MainLightShadowmapSize.xy) + u_xlat9.zw)).xy, u_xlat12.zw);
        u_xlat10.w = u_xlat9.y;
        let x_1165 = u_xlat10.yz;
        u_xlat9 = vec4f(u_xlat9.x, x_1165.x, u_xlat9.z, x_1165.y);
        u_xlat13 = ((u_xlat45.xyxy * x_676.x_MainLightShadowmapSize.xyxy) + u_xlat9.xyzy);
        u_xlat10 = ((u_xlat45.xyxy * x_676.x_MainLightShadowmapSize.xyxy) + u_xlat10.wywz);
        u_xlat9 = ((u_xlat45.xyxy * x_676.x_MainLightShadowmapSize.xyxy) + u_xlat9.xwzw);
        u_xlat14 = (u_xlat7.xxxy * u_xlat8.zwyz);
        u_xlat15 = (u_xlat7.yyzz * u_xlat8);
        u_xlat64 = (u_xlat7.z * u_xlat8.y);
        let x_1214 = u_xlat11.xy;
        txVec4 = vec3f(x_1214.x, x_1214.y, u_xlat6.z);
        u_xlat45.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1229 = u_xlat11.zw;
        txVec5 = vec3f(x_1229.x, x_1229.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat66 = (u_xlat66 * u_xlat14.y);
        u_xlat45.x = ((u_xlat14.x * u_xlat45.x) + u_xlat66);
        let x_1255 = u_xlat12.xy;
        txVec6 = vec3f(x_1255.x, x_1255.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat45.x = ((u_xlat14.z * u_xlat66) + u_xlat45.x);
        let x_1277 = u_xlat10.xy;
        txVec7 = vec3f(x_1277.x, x_1277.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat45.x = ((u_xlat14.w * u_xlat66) + u_xlat45.x);
        let x_1299 = u_xlat13.xy;
        txVec8 = vec3f(x_1299.x, x_1299.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat45.x = ((u_xlat15.x * u_xlat66) + u_xlat45.x);
        let x_1321 = u_xlat13.zw;
        txVec9 = vec3f(x_1321.x, x_1321.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat45.x = ((u_xlat15.y * u_xlat66) + u_xlat45.x);
        let x_1343 = u_xlat10.zw;
        txVec10 = vec3f(x_1343.x, x_1343.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat45.x = ((u_xlat15.z * u_xlat66) + u_xlat45.x);
        let x_1365 = u_xlat9.xy;
        txVec11 = vec3f(x_1365.x, x_1365.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat45.x = ((u_xlat15.w * u_xlat66) + u_xlat45.x);
        let x_1387 = u_xlat9.zw;
        txVec12 = vec3f(x_1387.x, x_1387.y, u_xlat6.z);
        u_xlat66 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat63 = ((u_xlat64 * u_xlat66) + u_xlat45.x);
      } else {
        u_xlat45 = ((u_xlat6.xy * x_676.x_MainLightShadowmapSize.zw) + x_604);
        u_xlat45 = floor(u_xlat45);
        u_xlat7 = vec4f((((u_xlat6.xy * x_676.x_MainLightShadowmapSize.zw) + -(u_xlat45))).xy, u_xlat7.zw);
        u_xlat8 = (u_xlat7.xxyy + x_966);
        u_xlat9 = (u_xlat8.xxzz * u_xlat8.xxzz);
        let x_1438 = (u_xlat9.yw * vec2f(0.04081600159406661987f));
        u_xlat10 = vec4f(u_xlat10.x, x_1438.x, u_xlat10.z, x_1438.y);
        u_xlat49 = ((u_xlat9.xz * x_604) + -(u_xlat7.xy));
        let x_1451 = (-(u_xlat7.xy) + x_991);
        u_xlat8 = vec4f(x_1451.x, u_xlat8.y, x_1451.y, u_xlat8.w);
        u_xlat9 = vec4f(min(u_xlat7.xy, vec2f()).xy, u_xlat9.zw);
        let x_1467 = ((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat8.xz);
        u_xlat8 = vec4f(x_1467.x, u_xlat8.y, x_1467.y, u_xlat8.w);
        u_xlat9 = vec4f(max(u_xlat7.xy, vec2f()).xy, u_xlat9.zw);
        let x_1483 = ((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat8.yw);
        u_xlat8 = vec4f(u_xlat8.x, x_1483.x, u_xlat8.z, x_1483.y);
        u_xlat8 = (u_xlat8 + vec4f(2.0f));
        u_xlat9.z = (u_xlat8.y * 0.08163200318813323975f);
        u_xlat11 = vec4f(((u_xlat49.yx * x_1496)).xy, u_xlat11.zw);
        u_xlat49 = (u_xlat8.xz * x_1496);
        u_xlat11.z = (u_xlat8.w * 0.08163200318813323975f);
        u_xlat9.x = u_xlat11.y;
        let x_1517 = ((u_xlat7.xx * x_1513) + x_1516);
        u_xlat9 = vec4f(u_xlat9.x, x_1517.x, u_xlat9.z, x_1517.y);
        let x_1524 = ((u_xlat7.xx * x_1513) + x_1523);
        u_xlat8 = vec4f(x_1524.x, u_xlat8.y, x_1524.y, u_xlat8.w);
        u_xlat8.y = u_xlat49.x;
        u_xlat8.w = u_xlat10.y;
        u_xlat9 = (u_xlat8 + u_xlat9);
        let x_1539 = ((u_xlat7.yy * x_1513) + x_1516);
        u_xlat11 = vec4f(u_xlat11.x, x_1539.x, u_xlat11.z, x_1539.y);
        let x_1545 = ((u_xlat7.yy * x_1513) + x_1523);
        u_xlat10 = vec4f(x_1545.x, u_xlat10.y, x_1545.y, u_xlat10.w);
        u_xlat10.y = u_xlat49.y;
        u_xlat7 = (u_xlat10 + u_xlat11);
        u_xlat8 = (u_xlat8 / u_xlat9);
        u_xlat8 = (u_xlat8 + x_1561);
        u_xlat10 = (u_xlat10 / u_xlat7);
        u_xlat10 = (u_xlat10 + x_1561);
        u_xlat8 = (u_xlat8.wxyz * x_676.x_MainLightShadowmapSize.xxxx);
        u_xlat10 = (u_xlat10.xwyz * x_676.x_MainLightShadowmapSize.yyyy);
        let x_1581 = u_xlat8.yzw;
        u_xlat11 = vec4f(x_1581.x, u_xlat11.y, x_1581.yz);
        u_xlat11.y = u_xlat10.x;
        u_xlat12 = ((u_xlat45.xyxy * x_676.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat13 = vec4f((((u_xlat45 * x_676.x_MainLightShadowmapSize.xy) + u_xlat11.wy)).xy, u_xlat13.zw);
        u_xlat8.y = u_xlat11.y;
        u_xlat11.y = u_xlat10.z;
        u_xlat14 = ((u_xlat45.xyxy * x_676.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat55 = ((u_xlat45 * x_676.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat8.z = u_xlat11.y;
        u_xlat15 = ((u_xlat45.xyxy * x_676.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyxz);
        u_xlat11.y = u_xlat10.w;
        u_xlat16 = ((u_xlat45.xyxy * x_676.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat29 = ((u_xlat45 * x_676.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat8.w = u_xlat11.y;
        u_xlat17 = ((u_xlat45 * x_676.x_MainLightShadowmapSize.xy) + u_xlat8.xw);
        let x_1677 = u_xlat11.xzw;
        u_xlat10 = vec4f(x_1677.x, u_xlat10.y, x_1677.yz);
        u_xlat11 = ((u_xlat45.xyxy * x_676.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyzy);
        u_xlat52 = ((u_xlat45 * x_676.x_MainLightShadowmapSize.xy) + u_xlat10.wy);
        u_xlat10.x = u_xlat8.x;
        u_xlat45 = ((u_xlat45 * x_676.x_MainLightShadowmapSize.xy) + u_xlat10.xy);
        u_xlat18 = (u_xlat7.xxxx * u_xlat9);
        u_xlat19 = (u_xlat7.yyyy * u_xlat9);
        u_xlat20 = (u_xlat7.zzzz * u_xlat9);
        u_xlat7 = (u_xlat7.wwww * u_xlat9);
        let x_1730 = u_xlat12.xy;
        txVec13 = vec3f(x_1730.x, x_1730.y, u_xlat6.z);
        u_xlat64 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1744 = u_xlat12.zw;
        txVec14 = vec3f(x_1744.x, x_1744.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat67 = (u_xlat67 * u_xlat18.y);
        u_xlat64 = ((u_xlat18.x * u_xlat64) + u_xlat67);
        let x_1769 = u_xlat13.xy;
        txVec15 = vec3f(x_1769.x, x_1769.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat64 = ((u_xlat18.z * u_xlat67) + u_xlat64);
        let x_1789 = u_xlat15.xy;
        txVec16 = vec3f(x_1789.x, x_1789.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat64 = ((u_xlat18.w * u_xlat67) + u_xlat64);
        let x_1809 = u_xlat14.xy;
        txVec17 = vec3f(x_1809.x, x_1809.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat64 = ((u_xlat19.x * u_xlat67) + u_xlat64);
        let x_1829 = u_xlat14.zw;
        txVec18 = vec3f(x_1829.x, x_1829.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat64 = ((u_xlat19.y * u_xlat67) + u_xlat64);
        txVec19 = vec3f(u_xlat55.x, u_xlat55.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat64 = ((u_xlat19.z * u_xlat67) + u_xlat64);
        let x_1868 = u_xlat15.zw;
        txVec20 = vec3f(x_1868.x, x_1868.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat64 = ((u_xlat19.w * u_xlat67) + u_xlat64);
        let x_1888 = u_xlat16.xy;
        txVec21 = vec3f(x_1888.x, x_1888.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat64 = ((u_xlat20.x * u_xlat67) + u_xlat64);
        let x_1908 = u_xlat16.zw;
        txVec22 = vec3f(x_1908.x, x_1908.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat64 = ((u_xlat20.y * u_xlat67) + u_xlat64);
        txVec23 = vec3f(u_xlat29.x, u_xlat29.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat64 = ((u_xlat20.z * u_xlat67) + u_xlat64);
        txVec24 = vec3f(u_xlat17.x, u_xlat17.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat64 = ((u_xlat20.w * u_xlat67) + u_xlat64);
        let x_1966 = u_xlat11.xy;
        txVec25 = vec3f(x_1966.x, x_1966.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat64 = ((u_xlat7.x * u_xlat67) + u_xlat64);
        let x_1986 = u_xlat11.zw;
        txVec26 = vec3f(x_1986.x, x_1986.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat64 = ((u_xlat7.y * u_xlat67) + u_xlat64);
        txVec27 = vec3f(u_xlat52.x, u_xlat52.y, u_xlat6.z);
        u_xlat67 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat64 = ((u_xlat7.z * u_xlat67) + u_xlat64);
        txVec28 = vec3f(u_xlat45.x, u_xlat45.y, u_xlat6.z);
        u_xlat45.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat63 = ((u_xlat7.w * u_xlat45.x) + u_xlat64);
      }
    }
  } else {
    let x_2047 = u_xlat6.xy;
    txVec29 = vec3f(x_2047.x, x_2047.y, u_xlat6.z);
    u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat64 = (-(x_676.x_MainLightShadowParams.x) + 1.0f);
  u_xlat63 = ((u_xlat63 * x_676.x_MainLightShadowParams.x) + u_xlat64);
  u_xlatb64 = (0.0f >= u_xlat6.z);
  u_xlatb45 = (u_xlat6.z >= 1.0f);
  u_xlatb64 = (u_xlatb64 | u_xlatb45);
  u_xlat63 = select(u_xlat63, 1.0f, u_xlatb64);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_178.x_WorldSpaceCameraPos))).xyz, u_xlat6.w);
  u_xlat64 = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat45.x = ((u_xlat64 * x_676.x_MainLightShadowParams.z) + x_676.x_MainLightShadowParams.w);
  u_xlat45.x = clamp(u_xlat45.x, 0.0f, 1.0f);
  u_xlat66 = (-(u_xlat63) + 1.0f);
  u_xlat63 = ((u_xlat45.x * u_xlat66) + u_xlat63);
  u_xlat45.x = dot(u_xlat1, u_xlat5.xyz);
  u_xlat45.x = clamp(u_xlat45.x, 0.0f, 1.0f);
  u_xlat45.x = (-(u_xlat45.x) + 1.0f);
  u_xlat66 = (u_xlat45.x * u_xlat45.x);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat45.x = (u_xlat66 * u_xlat45.x);
  u_xlat45.x = ((u_xlat45.x * 0.98000001907348632812f) + 0.01999999955296516418f);
  u_xlat66 = dot(-(u_xlat5.xyz), u_xlat1);
  u_xlat66 = (u_xlat66 + u_xlat66);
  u_xlat5 = vec4f((((u_xlat1 * -(vec3f(u_xlat66))) + -(u_xlat5.xyz))).xyz, u_xlat5.w);
  u_xlat5.w = max(u_xlat5.y, 0.07999999821186065674f);
  u_xlat66 = dot(u_xlat5.xzw, u_xlat5.xzw);
  u_xlat66 = inverseSqrt(u_xlat66);
  u_xlat5 = vec4f(((vec3f(u_xlat66) * u_xlat5.xwz)).xyz, u_xlat5.w);
  let x_2187 = x_178.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((x_991 / vec2f(x_2187.x, x_2187.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat66 = ((u_xlat7.y * x_178.x_ScaleBiasRt.x) + x_178.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat66) + 1.0f);
  u_xlat66 = ((-(x_82.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat66 = (u_xlat66 * x_82.x_Roughness);
  u_xlat66 = (u_xlat66 * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_178.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu49 = vec2u(x_178.x_FPParams1.zw);
  u_xlati67 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu49.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu67 = (u_xlatu49.y * bitcast<u32>(u_xlati67));
  u_xlat7.x = -(x_178.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat7.y = -(x_178.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat7.z = -(x_178.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat68 = dot(u_xlat7.xyz, u_xlat6.xyz);
  u_xlatb69 = (x_178.unity_OrthoParams.w == 0.0f);
  u_xlat7.x = log2(u_xlat68);
  if (u_xlatb69) {
    x_2291 = u_xlat7.x;
  } else {
    x_2291 = u_xlat68;
  }
  u_xlat68 = x_2291;
  u_xlat68 = ((u_xlat68 * x_178.x_FPParams0.x) + x_178.x_FPParams0.y);
  u_xlatu68 = u32(u_xlat68);
  u_xlatu69 = u32(x_178.x_FPParams2.x);
  u_xlatu69 = (u_xlatu69 + 4294967295u);
  u_xlati7.x = (bitcast<i32>(u_xlatu49.y) + 2i);
  u_xlatu68 = min(u_xlatu68, u_xlatu69);
  u_xlatu7 = ((vec2u(u_xlatu68) * bitcast<vec2u>(u_xlati7.xx)) + vec2u(1u, 2u));
  u_xlatu68 = (u_xlatu7.x >> 2u);
  param = bitcast<i32>(u_xlatu7.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2345 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu7.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2352 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_2353 = vec2i(x_2345, x_2352);
  u_xlati7 = vec4i(x_2353.x, u_xlati7.y, x_2353.y, u_xlati7.w);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2365.urp_ZBins[bitcast<i32>(u_xlatu68)].wy)));
  let x_2376 = ~(u_xlati7.xz);
  u_xlati7 = vec4i(x_2376.x, u_xlati7.yz, x_2376.y);
  u_xlati50 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2365.urp_ZBins[bitcast<i32>(u_xlatu68)].zx)));
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati50) | bitcast<vec2u>(u_xlati8)));
  u_xlati68 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati69 = bitcast<i32>((bitcast<u32>(u_xlati7.w) & bitcast<u32>(u_xlati8.y)));
  u_xlatu68 = (bitcast<u32>(u_xlati68) | bitcast<u32>(u_xlati69));
  u_xlatu69 = u32(x_178.x_FPParams0.z);
  let x_2428 = ((vec4f() < u_xlat5.xxyz)).xzw;
  u_xlatb7 = vec4<bool>(x_2428.x, u_xlatb7.y, x_2428.yz);
  u_xlatu8.x = u_xlatu67;
  u_xlatu8.y = u_xlatu7.y;
  u_xlatu50.x = 0u;
  u_xlatu50.y = u_xlatu68;
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlat72 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu10 = (u_xlatu50.y >> 16u);
    u_xlatu31 = u_xlatu50;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb73 = (bitcast<i32>(u_xlatu31.x) == 0i);
      u_xlatu11.x = (u_xlatu31.y & 65535u);
      u_xlatb11 = (u_xlatu10 >= u_xlatu11.x);
      u_xlatb73 = (u_xlatb73 & u_xlatb11);
      if (!(u_xlatb73)) {
        break;
      }
      param_6 = u_xlatu31.y;
      param_7 = 5i;
      param_8 = 11i;
      let x_2495 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu73 = x_2495;
      u_xlatu11 = (u_xlatu8.xxyy + vec4u(u_xlatu73));
      u_xlatu12 = (u_xlatu11.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu11.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2513 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu11.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2520 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu11.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2527 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu11.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2534 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati11 = vec4i(x_2513, x_2520, x_2527, x_2534);
      u_xlati54 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_2543.urp_Tiles[bitcast<i32>(u_xlatu12.x)].wy)));
      u_xlati13 = ~(u_xlati11);
      u_xlati14 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2543.urp_Tiles[bitcast<i32>(u_xlatu12.x)].zx)));
      let x_2577 = bitcast<vec2i>((bitcast<vec2u>(u_xlati54) | bitcast<vec2u>(u_xlati14)));
      u_xlati12 = vec3i(x_2577.x, u_xlati12.y, x_2577.y);
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati12.x)));
      u_xlati32.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati12.z)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati32.x) | bitcast<u32>(u_xlati11.x)));
      u_xlati32 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_2365.urp_ZBins[bitcast<i32>(u_xlatu12.y)].wy)));
      u_xlati12 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2365.urp_ZBins[bitcast<i32>(u_xlatu12.y)].zx))).xy, u_xlati12.z);
      u_xlati32 = bitcast<vec2i>((bitcast<vec2u>(u_xlati32) | bitcast<vec2u>(u_xlati12.xy)));
      u_xlati32.x = bitcast<i32>((bitcast<u32>(u_xlati11.w) & bitcast<u32>(u_xlati32.x)));
      u_xlati53 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati32.y)));
      u_xlati32.x = bitcast<i32>((bitcast<u32>(u_xlati53) | bitcast<u32>(u_xlati32.x)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati32.x) & bitcast<u32>(u_xlati11.x)));
      u_xlati32.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu31.y) & 31i)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati32.x) & bitcast<u32>(u_xlati11.x)));
      u_xlati73 = (bitcast<i32>(u_xlatu73) << bitcast<u32>(5i));
      u_xlatu73 = (bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati73)))) + u_xlatu10);
      u_xlatu73 = min(u_xlatu73, 31u);
      u_xlatu73 = (bitcast<u32>(-(bitcast<i32>(u_xlatu73))) + 31u);
      u_xlatu73 = (4294967295u >> (u_xlatu73 & 31u));
      u_xlatu31.x = (u_xlatu73 & bitcast<u32>(u_xlati11.x));
      u_xlati73 = (bitcast<i32>(u_xlatu31.y) + 32i);
      u_xlatu31.y = (bitcast<u32>(u_xlati73) & 4294967264u);
    }
    u_xlatu50.y = u_xlatu31.y;
    u_xlatb10 = (bitcast<i32>(u_xlatu31.x) != 0i);
    u_xlatb73 = (u_xlat72 < 0.99000000953674316406f);
    u_xlatb10 = (u_xlatb73 & u_xlatb10);
    if (!(u_xlatb10)) {
      break;
    }
    u_xlati10 = bitcast<i32>(firstTrailingBit(u_xlatu31.x));
    u_xlati73 = (1i << bitcast<u32>((u_xlati10 & 31i)));
    u_xlatu50.x = (bitcast<u32>(u_xlati73) ^ u_xlatu31.x);
    u_xlati73 = (bitcast<i32>(u_xlatu50.y) + -32i);
    u_xlati73 = bitcast<i32>((bitcast<u32>(u_xlati73) & 65504u));
    u_xlati10 = (u_xlati10 + u_xlati73);
    u_xlati10 = (-(bitcast<i32>(u_xlatu69)) + u_xlati10);
    u_xlat11 = vec4f(((vs_TEXCOORD0 + -(x_2785.urp_ReflProbes_BoxMin[u_xlati10].xyz))).xyz, u_xlat11.w);
    u_xlat12 = vec4f(((-(vs_TEXCOORD0) + x_2785.urp_ReflProbes_BoxMax[u_xlati10].xyz)).xyz, u_xlat12.w);
    u_xlat11 = vec4f(min(u_xlat11.xyz, u_xlat12.xyz).xyz, u_xlat11.w);
    u_xlat11 = vec4f(((u_xlat11.xyz / x_2785.urp_ReflProbes_BoxMax[u_xlati10].www)).xyz, u_xlat11.w);
    u_xlat73 = min(u_xlat11.z, u_xlat11.y);
    u_xlat73 = min(u_xlat73, u_xlat11.x);
    u_xlat73 = clamp(u_xlat73, 0.0f, 1.0f);
    u_xlat11.x = (-(u_xlat72) + 1.0f);
    u_xlat73 = min(u_xlat73, u_xlat11.x);
    u_xlatb11 = (0.0f < x_2785.urp_ReflProbes_ProbePosition[u_xlati10].w);
    if (u_xlatb7.x) {
      x_2846 = x_2785.urp_ReflProbes_BoxMax[u_xlati10].x;
    } else {
      x_2846 = x_2785.urp_ReflProbes_BoxMin[u_xlati10].x;
    }
    u_xlat32.x = x_2846;
    if (u_xlatb7.z) {
      x_2860 = x_2785.urp_ReflProbes_BoxMax[u_xlati10].y;
    } else {
      x_2860 = x_2785.urp_ReflProbes_BoxMin[u_xlati10].y;
    }
    u_xlat32.y = x_2860;
    if (u_xlatb7.w) {
      x_2874 = x_2785.urp_ReflProbes_BoxMax[u_xlati10].z;
    } else {
      x_2874 = x_2785.urp_ReflProbes_BoxMin[u_xlati10].z;
    }
    u_xlat32.z = x_2874;
    u_xlat32 = (u_xlat32 + -(vs_TEXCOORD0));
    u_xlat32 = (u_xlat32 / u_xlat5.xyz);
    u_xlat32.x = min(u_xlat32.y, u_xlat32.x);
    u_xlat32.x = min(u_xlat32.z, u_xlat32.x);
    u_xlat12 = vec4f(((vs_TEXCOORD0 + -(x_2785.urp_ReflProbes_ProbePosition[u_xlati10].xyz))).xyz, u_xlat12.w);
    u_xlat32 = ((u_xlat5.xyz * u_xlat32.xxx) + u_xlat12.xyz);
    if (u_xlatb11) {
      x_2924 = u_xlat32;
    } else {
      x_2924 = u_xlat5.xyz;
    }
    u_xlat11 = vec4f(x_2924.xyz, u_xlat11.w);
    u_xlatu74 = u32(abs(x_2785.urp_ReflProbes_ProbePosition[u_xlati10].w));
    u_xlatu74 = (u_xlatu74 + 4294967295u);
    u_xlat74 = f32(u_xlatu74);
    u_xlat74 = min(u_xlat66, u_xlat74);
    u_xlat12.x = dot(abs(u_xlat11.xyz), x_2951);
    u_xlat12.x = max(u_xlat12.x, 0.00000099999999747524f);
    u_xlat12.x = (1.0f / u_xlat12.x);
    u_xlat33 = (u_xlat11.zxy * u_xlat12.xxx);
    u_xlat33.x = -(u_xlat33.x);
    u_xlat33.x = clamp(u_xlat33.x, 0.0f, 1.0f);
    u_xlatb54 = ((u_xlat33.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat33;
    if (u_xlatb54.x) {
      x_2986 = u_xlat33.x;
    } else {
      x_2986 = -(u_xlat33.x);
    }
    hlslcc_movcTemp.x = x_2986;
    if (u_xlatb54.y) {
      x_2999 = u_xlat33.x;
    } else {
      x_2999 = -(u_xlat33.x);
    }
    hlslcc_movcTemp.y = x_2999;
    u_xlat33 = hlslcc_movcTemp;
    u_xlat11 = vec4f((((u_xlat11.xy * u_xlat12.xx) + u_xlat33.xy)).xy, u_xlat11.zw);
    u_xlat11 = vec4f((((u_xlat11.xy * x_604) + x_604)).xy, u_xlat11.zw);
    u_xlat11 = vec4f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.zw);
    u_xlat53 = floor(u_xlat74);
    u_xlat12.x = (u_xlat53 + 1.0f);
    u_xlat74 = (-(u_xlat53) + u_xlat74);
    u_xlatu53 = u32(u_xlat53);
    u_xlati53 = ((u_xlati10 * 7i) + bitcast<i32>(u_xlatu53));
    u_xlatu12.x = u32(u_xlat12.x);
    u_xlati10 = ((u_xlati10 * 7i) + bitcast<i32>(u_xlatu12.x));
    u_xlat12 = vec4f((((u_xlat11.xy * x_2785.urp_ReflProbes_MipScaleOffset[u_xlati53].xy) + x_2785.urp_ReflProbes_MipScaleOffset[u_xlati53].zw)).xy, u_xlat12.zw);
    u_xlat12 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat12.xy, 0.0f).xyz.xyz, u_xlat12.w);
    u_xlat11 = vec4f((((u_xlat11.xy * x_2785.urp_ReflProbes_MipScaleOffset[u_xlati10].xy) + x_2785.urp_ReflProbes_MipScaleOffset[u_xlati10].zw)).xy, u_xlat11.zw);
    u_xlat11 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat11.xy, 0.0f).xyz.xyz, u_xlat11.w);
    u_xlat11 = vec4f(((-(u_xlat12.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat11 = vec4f((((vec3f(u_xlat74) * u_xlat11.xyz) + u_xlat12.xyz)).xyz, u_xlat11.w);
    u_xlat9 = vec4f((((vec3f(u_xlat73) * u_xlat11.xyz) + u_xlat9.xyz)).xyz, u_xlat9.w);
    u_xlat72 = (u_xlat72 + u_xlat73);
  }
  u_xlatb67 = (u_xlat72 < 0.99000000953674316406f);
  if (u_xlatb67) {
    u_xlat5 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat5.xyz, u_xlat66);
    u_xlat66 = (-(u_xlat72) + 1.0f);
    u_xlat67 = (u_xlat5.w + -1.0f);
    u_xlat67 = ((x_178.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat67) + 1.0f);
    u_xlat67 = max(u_xlat67, 0.0f);
    u_xlat67 = log2(u_xlat67);
    u_xlat67 = (u_xlat67 * x_178.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat67 = exp2(u_xlat67);
    u_xlat67 = (u_xlat67 * x_178.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat5 = vec4f(((u_xlat5.xyz * vec3f(u_xlat67))).xyz, u_xlat5.w);
    u_xlat9 = vec4f((((vec3f(u_xlat66) * u_xlat5.xyz) + u_xlat9.xyz)).xyz, u_xlat9.w);
  }
  u_xlat66 = (x_82.x_Radius * 0.44999998807907104492f);
  u_xlat67 = ((-(x_82.x_Radius) * 0.55000001192092895508f) + u_xlat42);
  u_xlat66 = (1.0f / u_xlat66);
  u_xlat66 = (u_xlat66 * u_xlat67);
  u_xlat66 = clamp(u_xlat66, 0.0f, 1.0f);
  u_xlat67 = ((u_xlat66 * -2.0f) + 3.0f);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat66 = (u_xlat66 * u_xlat67);
  u_xlat66 = (u_xlat66 * 0.60000002384185791016f);
  u_xlat5 = vec4f(((-(x_82.x_BodyColor.xyz) + x_82.x_ShallowColor.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((vec3f(u_xlat66) * u_xlat5.xyz) + x_82.x_BodyColor.xyz)).xyz, u_xlat5.w);
  u_xlat7.x = dot(x_3258.unity_SHAr.yw, x_991);
  u_xlat7.y = dot(x_3258.unity_SHAg.yw, x_991);
  u_xlat7.z = dot(x_3258.unity_SHAb.yw, x_991);
  u_xlat7 = vec4f(((u_xlat7.xyz + -(x_3258.unity_SHC.xyz))).xyz, u_xlat7.w);
  u_xlat66 = x_178.x_MainLightPosition.y;
  u_xlat66 = clamp(u_xlat66, 0.0f, 1.0f);
  u_xlat8 = vec4f(((vec3f(u_xlat66) * x_178.x_MainLightColor.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((vec3f(u_xlat63) * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f((((u_xlat8.xyz * vec3f(0.60000002384185791016f)) + u_xlat7.xyz)).xyz, u_xlat8.w);
  u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat8.xyz)).xyz, u_xlat5.w);
  u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat21.xxx) + x_178.x_MainLightPosition.xyz)).xyz, u_xlat4.w);
  u_xlat21.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat21.x = inverseSqrt(u_xlat21.x);
  u_xlat4 = vec4f(((u_xlat21.xxx * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat21.x = dot(u_xlat1, u_xlat4.xyz);
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat21.x = log2(u_xlat21.x);
  u_xlat1 = vec3f(((u_xlat21.xx * vec2f(900.0f, 90.0f))).xy, u_xlat1.z);
  u_xlat1 = vec3f(exp2(u_xlat1.xy).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * vec2f(x_82.x_Sun))).xy, u_xlat1.z);
  u_xlat21.x = ((u_xlat1.y * 0.03999999910593032837f) + u_xlat1.x);
  let x_3400 = vec3f(x_82.x_Reflection, x_82.x_Reflection, x_82.x_Reflection);
  u_xlat1 = ((u_xlat9.xyz * vec3f(x_3400.x, x_3400.y, x_3400.z)) + -(u_xlat5.xyz));
  u_xlat1 = ((u_xlat45.xxx * u_xlat1) + u_xlat5.xyz);
  u_xlat4 = vec4f(((u_xlat21.xxx * x_178.x_MainLightColor.xyz)).xyz, u_xlat4.w);
  u_xlat1 = ((u_xlat4.xyz * vec3f(u_xlat63)) + u_xlat1);
  if (u_xlatb2.x) {
    u_xlat21.x = max(x_82.x_Rings.z, 0.00999999977648258209f);
    u_xlat21.x = (u_xlat44.x / u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * -1.44269502162933349609f);
    u_xlat21.x = exp2(u_xlat21.x);
    u_xlat2.x = max(u_xlat44.x, 0.0f);
    u_xlat44.x = (x_82.x_Rings.z * 3.0f);
    u_xlat44.x = max(u_xlat44.x, 0.01999999955296516418f);
    u_xlat2.x = (-(u_xlat2.x) / u_xlat44.x);
    u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
    u_xlat2.x = exp2(u_xlat2.x);
    u_xlat44.x = select(0.0f, 1.0f, u_xlatb3.x);
    u_xlat2.x = (u_xlat44.x * u_xlat2.x);
    let x_3506 = (x_178.x_Time.yyy * x_3505);
    u_xlat3 = vec4f(x_3506.x, u_xlat3.y, x_3506.yz);
    u_xlat44.x = ((u_xlat0.x * 7.0f) + u_xlat3.x);
    u_xlat3.x = ((-(x_178.x_Time.y) * 0.11999999731779098511f) + u_xlat42);
    u_xlat3.x = (u_xlat3.x * 10.0f);
    u_xlat4.x = floor(u_xlat44.x);
    u_xlat4.y = floor(u_xlat3.x);
    u_xlat5.x = fract(u_xlat44.x);
    u_xlat5.y = fract(u_xlat3.x);
    u_xlat46 = (u_xlat5.xy * u_xlat5.xy);
    u_xlat5 = vec4f((((-(u_xlat5.xy) * x_558) + x_3555)).xy, u_xlat5.zw);
    u_xlat46 = (u_xlat46 * u_xlat5.xy);
    u_xlat5 = vec4f(((u_xlat4.xy * x_3566)).xy, u_xlat5.zw);
    u_xlat5 = vec4f(fract(u_xlat5.xy).xy, u_xlat5.zw);
    u_xlat8 = vec4f(((u_xlat5.yxx + x_3578)).xyz, u_xlat8.w);
    u_xlat44.x = dot(u_xlat5.xyx, u_xlat8.xyz);
    u_xlat5 = vec4f(((u_xlat44.xx + u_xlat5.xy)).xy, u_xlat5.zw);
    u_xlat44.x = (u_xlat5.y + u_xlat5.x);
    u_xlat44.x = (u_xlat5.x * u_xlat44.x);
    u_xlat44.x = fract(u_xlat44.x);
    u_xlat5 = (u_xlat4.yxyx + x_3613);
    u_xlat5 = (u_xlat5 * x_3616);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_3621);
    u_xlat3.x = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat5 = vec4f(((u_xlat3.xx + u_xlat5.yx)).xy, u_xlat5.zw);
    u_xlat3.x = (u_xlat5.y + u_xlat5.x);
    u_xlat3.x = (u_xlat5.x * u_xlat3.x);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat5.x = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat5 = vec4f(((u_xlat5.xx + u_xlat5.wz)).xy, u_xlat5.zw);
    u_xlat26.x = (u_xlat5.y + u_xlat5.x);
    u_xlat5.x = (u_xlat5.x * u_xlat26.x);
    u_xlat5.x = fract(u_xlat5.x);
    u_xlat4 = vec4f(((u_xlat4.xy + x_991)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_3566)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat26 = (u_xlat4.yxx + x_3578);
    u_xlat26.x = dot(u_xlat4.xyx, u_xlat26);
    u_xlat4 = vec4f(((u_xlat4.xy + u_xlat26.xx)).xy, u_xlat4.zw);
    u_xlat25 = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat25);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat3.x = (-(u_xlat44.x) + u_xlat3.x);
    u_xlat44.x = ((u_xlat46.x * u_xlat3.x) + u_xlat44.x);
    u_xlat3.x = (-(u_xlat5.x) + u_xlat4.x);
    u_xlat3.x = ((u_xlat46.x * u_xlat3.x) + u_xlat5.x);
    u_xlat3.x = (-(u_xlat44.x) + u_xlat3.x);
    u_xlat44.x = ((u_xlat46.y * u_xlat3.x) + u_xlat44.x);
    u_xlat3.x = ((u_xlat0.x * 19.0f) + -(u_xlat3.z));
    u_xlat3.z = ((u_xlat42 * 23.0f) + -(u_xlat3.w));
    u_xlat4 = vec4f(floor(u_xlat3.xz).xy, u_xlat4.zw);
    u_xlat5 = vec4f(fract(u_xlat3.xz).xy, u_xlat5.zw);
    let x_3806 = (u_xlat5.xy * u_xlat5.xy);
    u_xlat3 = vec4f(x_3806.x, u_xlat3.y, x_3806.y, u_xlat3.w);
    u_xlat46 = ((-(u_xlat5.xy) * x_558) + x_3555);
    let x_3817 = (u_xlat3.xz * u_xlat46);
    u_xlat3 = vec4f(x_3817.x, u_xlat3.y, x_3817.y, u_xlat3.w);
    u_xlat46 = (u_xlat4.xy * x_3566);
    u_xlat46 = fract(u_xlat46);
    u_xlat5 = vec4f(((u_xlat46.yxx + x_3578)).xyz, u_xlat5.w);
    u_xlat66 = dot(u_xlat46.xyx, u_xlat5.xyz);
    u_xlat46 = (vec2f(u_xlat66) + u_xlat46);
    u_xlat66 = (u_xlat46.y + u_xlat46.x);
    u_xlat66 = (u_xlat46.x * u_xlat66);
    u_xlat66 = fract(u_xlat66);
    u_xlat5 = (u_xlat4.yxyx + x_3613);
    u_xlat5 = (u_xlat5 * x_3616);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_3621);
    u_xlat46.x = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat46 = (u_xlat46.xx + u_xlat5.yx);
    u_xlat67 = (u_xlat46.y + u_xlat46.x);
    u_xlat4.z = (u_xlat46.x * u_xlat67);
    u_xlat67 = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat5 = vec4f(((vec2f(u_xlat67) + u_xlat5.wz)).xy, u_xlat5.zw);
    u_xlat67 = (u_xlat5.y + u_xlat5.x);
    u_xlat4.w = (u_xlat5.x * u_xlat67);
    u_xlat4 = vec4f(((u_xlat4.xy + x_991)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_3566)).xy, u_xlat4.zw);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_3578)).xyz, u_xlat5.w);
    u_xlat5.x = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((u_xlat4.xy + u_xlat5.xx)).xy, u_xlat4.zw);
    u_xlat25 = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat25);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat25 = (-(u_xlat66) + u_xlat4.z);
    u_xlat66 = ((u_xlat3.x * u_xlat25) + u_xlat66);
    u_xlat4.x = (-(u_xlat4.w) + u_xlat4.x);
    u_xlat3.x = ((u_xlat3.x * u_xlat4.x) + u_xlat4.w);
    u_xlat3.x = (-(u_xlat66) + u_xlat3.x);
    u_xlat3.x = ((u_xlat3.z * u_xlat3.x) + u_xlat66);
    u_xlat3.x = (u_xlat3.x * 0.34999999403953552246f);
    u_xlat44.x = ((u_xlat44.x * 0.64999997615814208984f) + u_xlat3.x);
    u_xlat2.x = (u_xlat2.x * 0.20000000298023223877f);
    u_xlat21.x = ((u_xlat21.x * 0.85000002384185791016f) + u_xlat2.x);
    u_xlat2.x = (u_xlat44.x + -0.30000001192092895508f);
    u_xlat2.x = (u_xlat2.x * 1.81818175315856933594f);
    u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
    u_xlat44.x = ((u_xlat2.x * -2.0f) + 3.0f);
    u_xlat2.x = (u_xlat2.x * u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * u_xlat44.x);
    u_xlat21.x = (u_xlat21.x * u_xlat2.x);
  } else {
    u_xlat21.x = 0.0f;
  }
  if (u_xlatb2.y) {
    u_xlat2.x = max(x_82.x_Rings.z, 0.00999999977648258209f);
    u_xlat2.x = (u_xlat44.y / u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * -1.44269502162933349609f);
    u_xlat2.x = exp2(u_xlat2.x);
    u_xlat23 = max(u_xlat44.y, 0.0f);
    u_xlat44.x = (x_82.x_Rings.z * 3.0f);
    u_xlat44.x = max(u_xlat44.x, 0.01999999955296516418f);
    u_xlat23 = (-(u_xlat23) / u_xlat44.x);
    u_xlat23 = (u_xlat23 * 1.44269502162933349609f);
    u_xlat23 = exp2(u_xlat23);
    u_xlat44.x = select(0.0f, 1.0f, u_xlatb3.y);
    u_xlat23 = (u_xlat44.x * u_xlat23);
    u_xlat3 = vec4f(((x_178.x_Time.yyy * x_3505)).xyz, u_xlat3.w);
    u_xlat44.x = ((u_xlat0.x * 7.0f) + u_xlat3.x);
    u_xlat65 = ((-(x_178.x_Time.y) * 0.11999999731779098511f) + u_xlat42);
    u_xlat44.y = (u_xlat65 * 10.0f);
    u_xlat4 = vec4f(floor(u_xlat44).xy, u_xlat4.zw);
    u_xlat5 = vec4f(fract(u_xlat44).xy, u_xlat5.zw);
    u_xlat44 = (u_xlat5.xy * u_xlat5.xy);
    let x_4149 = ((-(u_xlat5.xy) * x_558) + x_3555);
    u_xlat3 = vec4f(x_4149.x, u_xlat3.yz, x_4149.y);
    u_xlat44 = (u_xlat44 * u_xlat3.xw);
    let x_4158 = (u_xlat4.xy * x_3566);
    u_xlat3 = vec4f(x_4158.x, u_xlat3.yz, x_4158.y);
    let x_4163 = fract(u_xlat3.xw);
    u_xlat3 = vec4f(x_4163.x, u_xlat3.yz, x_4163.y);
    u_xlat5 = vec4f(((u_xlat3.wxx + x_3578)).xyz, u_xlat5.w);
    u_xlat46.x = dot(u_xlat3.xwx, u_xlat5.xyz);
    let x_4181 = (u_xlat3.xw + u_xlat46.xx);
    u_xlat3 = vec4f(x_4181.x, u_xlat3.yz, x_4181.y);
    u_xlat66 = (u_xlat3.w + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat66);
    u_xlat5 = (u_xlat4.yxyx + x_3613);
    u_xlat5 = (u_xlat5 * x_3616);
    u_xlat5 = fract(u_xlat5);
    u_xlat8 = (u_xlat5 + x_3621);
    u_xlat66 = dot(u_xlat5.yxy, u_xlat8.xyy);
    u_xlat46 = (vec2f(u_xlat66) + u_xlat5.yx);
    u_xlat66 = (u_xlat46.y + u_xlat46.x);
    u_xlat3.w = (u_xlat46.x * u_xlat66);
    let x_4225 = fract(u_xlat3.xw);
    u_xlat3 = vec4f(x_4225.x, u_xlat3.yz, x_4225.y);
    u_xlat46.x = dot(u_xlat5.wzw, u_xlat8.zww);
    u_xlat46 = (u_xlat46.xx + u_xlat5.wz);
    u_xlat67 = (u_xlat46.y + u_xlat46.x);
    u_xlat4.z = (u_xlat46.x * u_xlat67);
    u_xlat4 = vec4f(((u_xlat4.xy + x_991)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(((u_xlat4.xy * x_3566)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xyz).xyz, u_xlat4.w);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_3578)).xyz, u_xlat5.w);
    u_xlat67 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((vec2f(u_xlat67) + u_xlat4.xy)).xy, u_xlat4.zw);
    u_xlat25 = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat25);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat66 = (-(u_xlat3.x) + u_xlat3.w);
    u_xlat3.x = ((u_xlat44.x * u_xlat66) + u_xlat3.x);
    u_xlat66 = (-(u_xlat4.z) + u_xlat4.x);
    u_xlat44.x = ((u_xlat44.x * u_xlat66) + u_xlat4.z);
    u_xlat44.x = (-(u_xlat3.x) + u_xlat44.x);
    u_xlat44.x = ((u_xlat44.y * u_xlat44.x) + u_xlat3.x);
    u_xlat0.x = ((u_xlat0.x * 19.0f) + -(u_xlat3.y));
    u_xlat0.z = ((u_xlat42 * 23.0f) + -(u_xlat3.z));
    u_xlat3 = vec4f(floor(u_xlat0.xz).xy, u_xlat3.zw);
    u_xlat4 = vec4f(fract(u_xlat0.xz).xy, u_xlat4.zw);
    let x_4368 = (u_xlat4.xy * u_xlat4.xy);
    u_xlat0 = vec3f(x_4368.x, u_xlat0.y, x_4368.y);
    u_xlat45 = ((-(u_xlat4.xy) * x_558) + x_3555);
    let x_4379 = (u_xlat0.xz * u_xlat45);
    u_xlat0 = vec3f(x_4379.x, u_xlat0.y, x_4379.y);
    u_xlat45 = (u_xlat3.xy * x_3566);
    u_xlat45 = fract(u_xlat45);
    u_xlat4 = vec4f(((u_xlat45.yxx + x_3578)).xyz, u_xlat4.w);
    u_xlat65 = dot(u_xlat45.xyx, u_xlat4.xyz);
    u_xlat45 = (vec2f(u_xlat65) + u_xlat45);
    u_xlat65 = (u_xlat45.y + u_xlat45.x);
    u_xlat65 = (u_xlat45.x * u_xlat65);
    u_xlat65 = fract(u_xlat65);
    u_xlat4 = (u_xlat3.yxyx + x_3613);
    u_xlat4 = (u_xlat4 * x_3616);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = (u_xlat4 + x_3621);
    u_xlat45.x = dot(u_xlat4.yxy, u_xlat5.xyy);
    u_xlat45 = (u_xlat45.xx + u_xlat4.yx);
    u_xlat66 = (u_xlat45.y + u_xlat45.x);
    u_xlat3.z = (u_xlat45.x * u_xlat66);
    u_xlat66 = dot(u_xlat4.wzw, u_xlat5.zww);
    u_xlat4 = vec4f(((vec2f(u_xlat66) + u_xlat4.wz)).xy, u_xlat4.zw);
    u_xlat66 = (u_xlat4.y + u_xlat4.x);
    u_xlat3.w = (u_xlat4.x * u_xlat66);
    u_xlat3 = vec4f(((u_xlat3.xy + x_991)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_3566)).xy, u_xlat3.zw);
    u_xlat3 = fract(u_xlat3);
    u_xlat4 = vec4f(((u_xlat3.yxx + x_3578)).xyz, u_xlat4.w);
    u_xlat4.x = dot(u_xlat3.xyx, u_xlat4.xyz);
    u_xlat3 = vec4f(((u_xlat3.xy + u_xlat4.xx)).xy, u_xlat3.zw);
    u_xlat24 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat24);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat24 = (-(u_xlat65) + u_xlat3.z);
    u_xlat65 = ((u_xlat0.x * u_xlat24) + u_xlat65);
    u_xlat3.x = (-(u_xlat3.w) + u_xlat3.x);
    u_xlat0.x = ((u_xlat0.x * u_xlat3.x) + u_xlat3.w);
    u_xlat0.x = (-(u_xlat65) + u_xlat0.x);
    u_xlat0.x = ((u_xlat0.z * u_xlat0.x) + u_xlat65);
    u_xlat0.x = (u_xlat0.x * 0.34999999403953552246f);
    u_xlat0.x = ((u_xlat44.x * 0.64999997615814208984f) + u_xlat0.x);
    u_xlat42 = (u_xlat23 * 0.20000000298023223877f);
    u_xlat42 = ((u_xlat2.x * 0.85000002384185791016f) + u_xlat42);
    u_xlat0.x = (u_xlat0.x + -0.30000001192092895508f);
    u_xlat0.x = (u_xlat0.x * 1.81818175315856933594f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat2.x = ((u_xlat0.x * -2.0f) + 3.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat0.x);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat0.x = (u_xlat0.x * u_xlat42);
    u_xlat21.x = max(u_xlat0.x, u_xlat21.x);
  }
  u_xlat0.x = (u_xlat21.x * x_82.x_Rings.w);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat21.x = (x_178.x_MainLightPosition.y + 0.30000001192092895508f);
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat2 = vec4f(((u_xlat21.xxx * x_178.x_MainLightColor.xyz)).xyz, u_xlat2.w);
  u_xlat21.x = ((u_xlat63 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat21 = (u_xlat21.xxx * u_xlat2.xyz);
  u_xlat21 = ((u_xlat7.xyz * vec3f(0.80000001192092895508f)) + u_xlat21);
  u_xlat21 = ((x_82.x_FoamColor.xyz * u_xlat21) + -(u_xlat1));
  u_xlat0 = ((u_xlat0.xxx * u_xlat21) + u_xlat1);
  u_xlatb63 = (x_178.x_DesertSunDir.w >= 0.5f);
  if (u_xlatb63) {
    u_xlat63 = sqrt(u_xlat64);
    u_xlat1.x = max(u_xlat63, 0.00009999999747378752f);
    u_xlat2 = vec4f(((u_xlat6.xyz / u_xlat1.xxx)).xyz, u_xlat2.w);
    u_xlat63 = (u_xlat63 + -(x_178.x_DesertHaze.z));
    u_xlat63 = max(u_xlat63, 0.0f);
    u_xlat22.x = (x_178.x_WorldSpaceCameraPos.y + -(x_178.x_DesertHaze2.x));
    u_xlat1.x = (u_xlat63 / u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * u_xlat6.y);
    u_xlat1.y = max(u_xlat22.x, -20.0f);
    let x_4723 = (u_xlat1.yx * -(x_178.x_DesertHaze.yy));
    u_xlat22 = vec3f(x_4723.x, u_xlat22.y, x_4723.y);
    let x_4728 = (u_xlat22.xz * x_218);
    u_xlat22 = vec3f(x_4728.x, u_xlat22.y, x_4728.y);
    u_xlat22.x = exp2(u_xlat22.x);
    u_xlatb43 = (0.00999999977648258209f < abs(u_xlat1.x));
    u_xlat64 = exp2(u_xlat22.z);
    u_xlat64 = (-(u_xlat64) + 1.0f);
    u_xlat64 = (u_xlat64 * u_xlat22.x);
    u_xlat1.x = (u_xlat1.x * x_178.x_DesertHaze.y);
    u_xlat1.x = (u_xlat64 / u_xlat1.x);
    if (u_xlatb43) {
      x_4762 = u_xlat1.x;
    } else {
      x_4762 = u_xlat22.x;
    }
    u_xlat1.x = x_4762;
    u_xlat22.x = (u_xlat63 * x_178.x_DesertHaze.x);
    u_xlat63 = (u_xlat63 * x_178.x_DesertHazeTint.w);
    u_xlat63 = ((u_xlat22.x * u_xlat1.x) + u_xlat63);
    u_xlat1.x = (u_xlat63 * -1.44269502162933349609f);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (-(u_xlat1.x) + 1.0f);
    u_xlat1.x = min(u_xlat1.x, x_178.x_DesertHaze.w);
    u_xlat2.w = 0.03500000014901161194f;
    u_xlat22.x = dot(u_xlat2.xzw, u_xlat2.xzw);
    u_xlat22.x = inverseSqrt(u_xlat22.x);
    u_xlat3 = vec4f(((u_xlat22.xxx * u_xlat2.xwz)).xyz, u_xlat3.w);
    u_xlat43.x = min(abs(u_xlat3.z), abs(u_xlat3.x));
    u_xlat64 = max(abs(u_xlat3.z), abs(u_xlat3.x));
    u_xlat64 = (1.0f / u_xlat64);
    u_xlat43.x = (u_xlat64 * u_xlat43.x);
    u_xlat64 = (u_xlat43.x * u_xlat43.x);
    u_xlat66 = ((u_xlat64 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat66 = ((u_xlat64 * u_xlat66) + 0.18014100193977355957f);
    u_xlat66 = ((u_xlat64 * u_xlat66) + -0.33029949665069580078f);
    u_xlat64 = ((u_xlat64 * u_xlat66) + 0.99986600875854492188f);
    u_xlat66 = (u_xlat64 * u_xlat43.x);
    u_xlatb4 = (abs(u_xlat3.z) < abs(u_xlat3.x));
    u_xlat66 = ((u_xlat66 * -2.0f) + 1.57079637050628662109f);
    u_xlat66 = select(0.0f, u_xlat66, u_xlatb4);
    u_xlat43.x = ((u_xlat43.x * u_xlat64) + u_xlat66);
    u_xlatb64 = (u_xlat3.z < -(u_xlat3.z));
    u_xlat64 = select(0.0f, -3.14159274101257324219f, u_xlatb64);
    u_xlat43.x = (u_xlat64 + u_xlat43.x);
    u_xlat64 = min(u_xlat3.z, u_xlat3.x);
    u_xlat3.x = max(u_xlat3.z, u_xlat3.x);
    u_xlatb64 = (u_xlat64 < -(u_xlat64));
    u_xlatb3.x = (u_xlat3.x >= -(u_xlat3.x));
    u_xlatb64 = (u_xlatb64 & u_xlatb3.x);
    if (u_xlatb64) {
      x_4932 = -(u_xlat43.x);
    } else {
      x_4932 = u_xlat43.x;
    }
    u_xlat43.x = x_4932;
    u_xlat4.x = ((u_xlat43.x * 0.15915493667125701904f) + 0.5f);
    u_xlat4.y = 0.5f;
    let x_4958 = textureSampleLevel(x_DesertHorizonRing, sampler_DesertHorizonRing, u_xlat4.xy, 0.0f).xyz;
    u_xlat3 = vec4f(x_4958.x, u_xlat3.y, x_4958.yz);
    u_xlat43.x = ((-(u_xlat2.w) * u_xlat22.x) + 1.0f);
    u_xlat43.x = sqrt(u_xlat43.x);
    u_xlat64 = ((u_xlat22.x * -0.00065552548039704561f) + 0.07426100224256515503f);
    u_xlat64 = ((u_xlat64 * u_xlat3.y) + -0.21211439371109008789f);
    u_xlat64 = ((u_xlat64 * u_xlat3.y) + 1.57072877883911132812f);
    u_xlat43.x = ((-(u_xlat64) * u_xlat43.x) + 1.57079637050628662109f);
    u_xlat4 = vec4f(((u_xlat43.xx * vec2f(57.295780181884765625f, -9.18448162078857421875f))).xy, u_xlat4.zw);
    u_xlat5 = vec4f(((u_xlat3.xzw * x_178.x_DesertSkyGrade0.xyz)).xyz, u_xlat5.w);
    u_xlat64 = dot(u_xlat5.xyz, vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
    u_xlat3 = vec4f((((u_xlat3.xzw * x_178.x_DesertSkyGrade0.xyz) + -(vec3f(u_xlat64)))).xyz, u_xlat3.w);
    u_xlat3 = vec4f((((x_178.x_DesertSkyGrade0.www * u_xlat3.xyz) + vec3f(u_xlat64))).xyz, u_xlat3.w);
    u_xlat3 = vec4f(max(u_xlat3.xyz, vec3f()).xyz, u_xlat3.w);
    u_xlat64 = max(x_178.x_DesertSkyGrade1.w, 0.10000000149011611938f);
    u_xlat64 = (u_xlat4.x / u_xlat64);
    u_xlat64 = (-(u_xlat64) + 1.0f);
    u_xlat64 = max(u_xlat64, 0.0f);
    u_xlat64 = (u_xlat64 * u_xlat64);
    let x_5071 = (x_178.x_DesertSkyGrade1.xyz + x_5070);
    u_xlat4 = vec4f(x_5071.x, u_xlat4.y, x_5071.yz);
    let x_5079 = ((vec3f(u_xlat64) * u_xlat4.xzw) + x_2951);
    u_xlat4 = vec4f(x_5079.x, u_xlat4.y, x_5079.yz);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat4.xzw)).xyz, u_xlat3.w);
    u_xlat43.x = ((u_xlat43.x * 57.295780181884765625f) + -(x_178.x_DesertSkyGrade2.w));
    u_xlat64 = (-(x_178.x_DesertSkyGrade2.w) + 90.0f);
    u_xlat64 = max(u_xlat64, 1.0f);
    u_xlat43.x = (u_xlat43.x / u_xlat64);
    u_xlat43.x = clamp(u_xlat43.x, 0.0f, 1.0f);
    let x_5115 = (x_178.x_DesertSkyGrade2.xyz + x_5070);
    u_xlat4 = vec4f(x_5115.x, u_xlat4.y, x_5115.yz);
    let x_5123 = ((u_xlat43.xxx * u_xlat4.xzw) + x_2951);
    u_xlat4 = vec4f(x_5123.x, u_xlat4.y, x_5123.yz);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat4.xzw)).xyz, u_xlat3.w);
    u_xlat22 = vec3f((((u_xlat2.xz * u_xlat22.xx) + x_5139)).xy, u_xlat22.z);
    u_xlat64 = dot(u_xlat22.xy, u_xlat22.xy);
    u_xlat64 = inverseSqrt(u_xlat64);
    u_xlat22 = vec3f(((vec2f(u_xlat64) * u_xlat22.xy)).xy, u_xlat22.z);
    let x_5160 = (x_178.x_DesertSunDir.xz + x_5139);
    u_xlat4 = vec4f(x_5160.x, u_xlat4.y, x_5160.y, u_xlat4.w);
    u_xlat64 = dot(u_xlat4.xz, u_xlat4.xz);
    u_xlat64 = inverseSqrt(u_xlat64);
    let x_5174 = (vec2f(u_xlat64) * u_xlat4.xz);
    u_xlat4 = vec4f(x_5174.x, u_xlat4.y, x_5174.y, u_xlat4.w);
    u_xlat22.x = dot(u_xlat22.xy, u_xlat4.xz);
    u_xlat22.x = ((u_xlat22.x * 0.5f) + 0.5f);
    u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
    u_xlat43.x = max(x_178.x_DesertSkyGrade3.w, 1.0f);
    u_xlat22.x = log2(u_xlat22.x);
    u_xlat22.x = (u_xlat22.x * u_xlat43.x);
    u_xlat22.x = exp2(u_xlat22.x);
    u_xlat43.x = exp2(u_xlat4.y);
    u_xlat22.x = (u_xlat43.x * u_xlat22.x);
    u_xlat43.x = (u_xlat22.x * 1.5f);
    u_xlat43.x = min(u_xlat43.x, 1.0f);
    u_xlat4 = vec4f((((u_xlat43.xxx * vec3f(0.0f, -0.19999998807907104492f, -0.33999997377395629883f)) + x_2951)).xyz, u_xlat4.w);
    u_xlat22 = (u_xlat22.xxx * x_178.x_DesertSkyGrade3.xyz);
    u_xlat22 = ((u_xlat3.xyz * u_xlat4.xyz) + u_xlat22);
    u_xlat63 = (u_xlat63 * x_178.x_DesertHaze2.w);
    u_xlat63 = (u_xlat63 * 0.44999998807907104492f);
    u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
    u_xlat22 = (u_xlat22 + -(x_178.x_DesertHazeTint.xyz));
    u_xlat22 = ((vec3f(u_xlat63) * u_xlat22) + x_178.x_DesertHazeTint.xyz);
    u_xlat63 = dot(u_xlat2.xyz, x_178.x_DesertSunDir.xyz);
    u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
    u_xlat2 = vec4f(((x_178.x_DesertSunColor.xyz * x_178.x_DesertHaze2.yyy)).xyz, u_xlat2.w);
    u_xlat63 = log2(u_xlat63);
    u_xlat63 = (u_xlat63 * x_178.x_DesertHaze2.z);
    u_xlat63 = exp2(u_xlat63);
    u_xlat22 = ((u_xlat2.xyz * vec3f(u_xlat63)) + u_xlat22);
    u_xlat22 = (-(u_xlat0) + u_xlat22);
    u_xlat0 = ((u_xlat1.xxx * u_xlat22) + u_xlat0);
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

@group(1) @binding(1) var<uniform> x_24 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_58 : VGlobals;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyyy * x_24.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat0 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[0i] * in_POSITION0.xxxx) + u_xlat0);
  u_xlat0 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_24.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat1 = (u_xlat0.yyyy * x_58.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_58.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_58.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = ((x_58.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat0.wwww) + u_xlat1);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

//Assets/Levels/Desert/Materials/Shaders/Desert_FountainWater.shader
diagnostic(off, derivative_uniformity);

var<private> SV_Target0 : f32;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  SV_Target0 = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : f32,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

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

@group(1) @binding(1) var<uniform> x_24 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_58 : VGlobals;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyyy * x_24.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat0 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[0i] * in_POSITION0.xxxx) + u_xlat0);
  u_xlat0 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_24.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat1 = (u_xlat0.yyyy * x_58.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_58.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_58.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = ((x_58.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat0.wwww) + u_xlat1);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

//Assets/Levels/Desert/Materials/Shaders/Desert_FountainWater.shader
diagnostic(off, derivative_uniformity);

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  SV_Target0 = vec4f(0.0f, 1.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

