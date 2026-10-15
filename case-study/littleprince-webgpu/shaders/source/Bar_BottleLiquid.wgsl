//Assets/Levels/Bar/Shaders/Bar_BottleLiquid.shader
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

@group(1) @binding(9) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

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
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0);
  vs_TEXCOORD2 = in_POSITION0.xyz;
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
  vs_TEXCOORD2_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1, vs_TEXCOORD2);
}

//Assets/Levels/Bar/Shaders/Bar_BottleLiquid.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_TopColor : vec4f,
  /* @offset(32) */
  x_BubbleColor : vec4f,
  /* @offset(48) */
  x_Smoothness : f32,
  /* @offset(52) */
  x_BubbleScale : f32,
  /* @offset(56) */
  x_BubbleSpeed : f32,
  /* @offset(64) */
  x_FillPlane : vec4f,
  /* @offset(80) */
  x_Glug : f32,
  /* @offset(84) */
  x_BubbleTime : f32,
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
  x_MainLightLayerMask : u32,
  /* @offset(96) */
  x_FPParams0 : vec4f,
  /* @offset(112) */
  x_FPParams1 : vec4f,
  /* @offset(128) */
  x_FPParams2 : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  unity_OrthoParams : vec4f,
  /* @offset(176) */
  x_ScaleBiasRt : vec4f,
  /* @offset(192) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

alias Arr_1 = array<vec4f, 20u>;

alias Arr_2 = array<vec4f, 32u>;

alias Arr_3 = array<vec4f, 128u>;

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
  x_AdditionalShadowOffset0 : vec4f,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4f,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4f,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4f,
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
  unity_RenderingLayer : vec4f,
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

alias Arr_9 = array<vec4f, 4u>;

alias Arr_10 = array<vec4f, 128u>;

alias Arr_11 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_12 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToLight : Arr_9,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  hlslcc_mtx4x4_AdditionalLightsWorldToLights : Arr_10,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_11,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_12,
}

alias Arr_13 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_13,
}

alias Arr_14 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_14,
}

alias Arr_15 = array<vec4f, 32u>;

alias Arr_16 = array<vec4f, 32u>;

alias Arr_17 = array<vec4f, 32u>;

alias Arr_18 = array<vec4f, 224u>;

alias Arr_19 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_15,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_16,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_17,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_18,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_19,
}

alias Arr_20 = array<vec4f, 32u>;

alias Arr_21 = array<vec4f, 32u>;

alias Arr_22 = array<vec4f, 32u>;

alias Arr_23 = array<vec4f, 32u>;

alias Arr_24 = array<vec4f, 32u>;

alias Arr_25 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_20,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_21,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_22,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_23,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_24,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_25,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(8) var<uniform> x_77 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

@group(1) @binding(0) var<uniform> x_601 : PGlobals;

@group(1) @binding(6) var<uniform> x_650 : LightShadows;

@group(1) @binding(5) var<uniform> x_827 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(7) var<uniform> x_2307 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_2630 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2807 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_3050 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(7) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3680 : AdditionalLights;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

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

const x_250 = vec2f(0.10310000181198120117f);

const x_263 = vec3f(33.3300018310546875f);

const x_902 = vec2f(1.0f);

const x_1060 = vec4f(0.25f);

const x_1077 = vec2f(0.5f);

const x_1100 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1111 = vec2f(0.07999999821186065674f);

const x_1163 = vec2f(0.15999999642372131348f);

const x_1233 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1567 = vec2f(0.04081600159406661987f);

const x_1609 = vec2f(2.0f);

const x_1625 = vec3f(0.08163200318813323975f);

const x_1631 = vec2f(0.08163200318813323975f);

const x_1641 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1644 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1651 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1689 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2766 = vec2u(2u);

const x_3221 = vec3f(1.0f);

const x_3611 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlatb28 : bool;
  var u_xlat28 : vec3f;
  var u_xlat1 : vec4f;
  var x_135 : vec3f;
  var x_149 : vec3f;
  var u_xlatb2 : bool;
  var u_xlati2 : i32;
  var x_168 : i32;
  var u_xlat2 : vec3f;
  var u_xlat30 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat60 : f32;
  var u_xlat32 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat59 : f32;
  var u_xlat31 : vec3f;
  var u_xlatb58 : bool;
  var u_xlat86 : f32;
  var x_548 : f32;
  var u_xlatb0 : bool;
  var x_624 : vec3f;
  var u_xlat8 : vec4f;
  var u_xlatb5 : vec4<bool>;
  var u_xlat87 : f32;
  var u_xlatu87 : u32;
  var u_xlati87 : i32;
  var u_xlat85 : f32;
  var u_xlat88 : f32;
  var u_xlat89 : f32;
  var u_xlat90 : f32;
  var u_xlatb35 : vec3<bool>;
  var txVec0 : vec3f;
  var u_xlat9 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlat35 : vec3f;
  var u_xlatb91 : bool;
  var u_xlat64 : vec2f;
  var u_xlat10 : vec4f;
  var u_xlat66 : vec2f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat91 : f32;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat36 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat37 : vec3f;
  var u_xlat17 : vec4f;
  var u_xlat18 : vec4f;
  var u_xlat38 : vec2f;
  var u_xlat72 : vec2f;
  var u_xlat67 : vec2f;
  var u_xlat19 : vec4f;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var txVec13 : vec3f;
  var txVec14 : vec3f;
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
  var u_xlatb33 : bool;
  var u_xlatb61 : bool;
  var x_2253 : f32;
  var u_xlat33 : f32;
  var u_xlat61 : vec2f;
  var x_2393 : f32;
  var x_2405 : vec3f;
  var u_xlatu7 : vec2u;
  var u_xlatu63 : vec2u;
  var u_xlati7 : i32;
  var x_2540 : f32;
  var u_xlatu0 : u32;
  var u_xlatu3 : vec4u;
  var u_xlati31 : i32;
  var u_xlatu31 : vec2u;
  var u_xlati35 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati64 : vec2i;
  var u_xlati0 : i32;
  var u_xlatu35 : vec3u;
  var u_xlatb8 : vec3<bool>;
  var u_xlatu11 : vec4u;
  var u_xlati67 : i32;
  var u_xlatu95 : u32;
  var u_xlatu91 : u32;
  var u_xlati92 : i32;
  var u_xlatu93 : u32;
  var u_xlatb94 : bool;
  var u_xlatu96 : u32;
  var u_xlatb96 : bool;
  var u_xlatu94 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati70 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati96 : i32;
  var u_xlati41 : i32;
  var u_xlati94 : i32;
  var u_xlati91 : i32;
  var u_xlat94 : f32;
  var u_xlat96 : f32;
  var x_3110 : f32;
  var x_3124 : f32;
  var x_3138 : f32;
  var u_xlat41 : vec3f;
  var x_3194 : vec3f;
  var u_xlat97 : f32;
  var u_xlatb42 : vec2<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_3253 : f32;
  var x_3266 : f32;
  var u_xlat69 : vec2f;
  var u_xlatu69 : vec2u;
  var u_xlati69 : i32;
  var x_3621 : vec3f;
  var u_xlatu_loop_1 : u32;
  var u_xlatb89 : bool;
  var u_xlati89 : i32;
  var x_3774 : i32;
  var u_xlatb11 : vec4<bool>;
  var x_3838 : f32;
  var x_3848 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var u_xlat68 : vec2f;
  var u_xlat70 : vec2f;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat92 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat74 : vec2f;
  var u_xlat22 : vec4f;
  var u_xlat71 : vec2f;
  var u_xlat23 : vec4f;
  var u_xlat24 : vec4f;
  var u_xlat25 : vec4f;
  var txVec43 : vec3f;
  var txVec44 : vec3f;
  var u_xlat93 : f32;
  var txVec45 : vec3f;
  var txVec46 : vec3f;
  var txVec47 : vec3f;
  var txVec48 : vec3f;
  var txVec49 : vec3f;
  var txVec50 : vec3f;
  var txVec51 : vec3f;
  var txVec52 : vec3f;
  var txVec53 : vec3f;
  var txVec54 : vec3f;
  var txVec55 : vec3f;
  var txVec56 : vec3f;
  var txVec57 : vec3f;
  var txVec58 : vec3f;
  var txVec59 : vec3f;
  var u_xlatb67 : vec2<bool>;
  var x_5440 : f32;
  var x_5453 : f32;
  var x_5511 : f32;
  var x_5523 : vec3f;
  var x_5672 : vec3f;
  var u_xlati3 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati61 : vec2i;
  var u_xlati9 : vec2i;
  var u_xlati86 : i32;
  var u_xlatu9 : vec2u;
  var u_xlatu65 : vec2u;
  var u_xlatu86 : u32;
  var u_xlatu89 : u32;
  var u_xlatu61 : u32;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlati11 : vec4i;
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
  var u_xlati12 : vec2i;
  var u_xlati68 : vec2i;
  var u_xlatb13 : vec4<bool>;
  var x_6259 : f32;
  var x_6268 : f32;
  var txVec60 : vec3f;
  var txVec61 : vec3f;
  var txVec62 : vec3f;
  var txVec63 : vec3f;
  var txVec64 : vec3f;
  var txVec65 : vec3f;
  var txVec66 : vec3f;
  var txVec67 : vec3f;
  var txVec68 : vec3f;
  var txVec69 : vec3f;
  var txVec70 : vec3f;
  var txVec71 : vec3f;
  var txVec72 : vec3f;
  var u_xlat43 : vec3f;
  var u_xlat44 : vec2f;
  var u_xlat78 : vec2f;
  var u_xlat73 : vec2f;
  var u_xlat26 : vec4f;
  var u_xlat27 : vec4f;
  var txVec73 : vec3f;
  var txVec74 : vec3f;
  var txVec75 : vec3f;
  var txVec76 : vec3f;
  var txVec77 : vec3f;
  var txVec78 : vec3f;
  var txVec79 : vec3f;
  var txVec80 : vec3f;
  var txVec81 : vec3f;
  var txVec82 : vec3f;
  var txVec83 : vec3f;
  var txVec84 : vec3f;
  var txVec85 : vec3f;
  var txVec86 : vec3f;
  var txVec87 : vec3f;
  var txVec88 : vec3f;
  var txVec89 : vec3f;
  var u_xlatb92 : bool;
  var x_7519 : f32;
  var u_xlatb69 : vec2<bool>;
  var x_7789 : f32;
  var x_7802 : f32;
  var x_7848 : f32;
  var x_7859 : vec3f;
  var x_8024 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(x_77.x_FillPlane.xyz, vs_TEXCOORD0);
  u_xlat0.x = (u_xlat0.x + -(x_77.x_FillPlane.w));
  u_xlatb28 = (-(u_xlat0.x) < 0.0f);
  if (((select(0i, 1i, u_xlatb28) * -1i) != 0i)) {
    discard;
  }
  u_xlat28.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat28.x = inverseSqrt(u_xlat28.x);
  u_xlat28 = (u_xlat28.xxx * vs_TEXCOORD1);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_135 = u_xlat28;
  } else {
    x_135 = x_77.x_FillPlane.xyz;
  }
  u_xlat1 = vec4f(x_135.xyz, u_xlat1.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_149 = x_77.x_BaseColor.xyz;
  } else {
    x_149 = x_77.x_TopColor.xyz;
  }
  u_xlat28 = x_149;
  u_xlatb2 = (0.00100000004749745131f < x_77.x_Glug);
  if (u_xlatb2) {
    x_168 = bitcast<i32>(select(0u, 4294967295u, gl_FrontFacing));
  } else {
    x_168 = 0i;
  }
  u_xlati2 = x_168;
  if ((u_xlati2 != 0i)) {
    u_xlat2.x = (x_77.x_BubbleTime * 19.0f);
    u_xlat2.x = sin(u_xlat2.x);
    u_xlat2.x = ((u_xlat2.x * 0.44999998807907104492f) + 0.55000001192092895508f);
    u_xlat30.x = (x_77.x_BubbleSpeed * x_77.x_BubbleTime);
    u_xlat30 = ((-(x_77.x_FillPlane.xyz) * u_xlat30.xxx) + vs_TEXCOORD0);
    let x_223 = vec3f(x_77.x_BubbleScale, x_77.x_BubbleScale, x_77.x_BubbleScale);
    u_xlat30 = (u_xlat30 * vec3f(x_223.x, x_223.y, x_223.z));
    u_xlat3 = floor(u_xlat30.yxzy);
    u_xlat30 = fract(u_xlat30);
    u_xlat4 = vec3f((((u_xlat3.ww * vec2f(17.3099994659423828125f)) + u_xlat3.yz)).xy, u_xlat4.z);
    u_xlat4 = vec3f(((u_xlat4.xy * x_250)).xy, u_xlat4.z);
    u_xlat4 = vec3f(fract(u_xlat4.xy).xy, u_xlat4.z);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat60 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec3f(((vec2f(u_xlat60) + u_xlat4.xy)).xy, u_xlat4.z);
    u_xlat32.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat32.x);
    u_xlat5 = (u_xlat3 + vec4f(7.09999990463256835938f, 7.09999990463256835938f, 3.70000004768371582031f, 3.70000004768371582031f));
    u_xlat5 = (u_xlat5 * vec4f(0.10310000181198120117f));
    u_xlat5 = fract(u_xlat5);
    u_xlat6 = (u_xlat5 + vec4f(33.3300018310546875f));
    u_xlat3.x = dot(u_xlat5.yxy, u_xlat6.xyy);
    u_xlat32 = vec3f(((u_xlat3.xx + u_xlat5.yx)).xy, u_xlat32.z);
    u_xlat3.x = (u_xlat32.y + u_xlat32.x);
    u_xlat3.x = (u_xlat32.x * u_xlat3.x);
    u_xlat7.x = fract(u_xlat3.x);
    u_xlat3.x = dot(u_xlat5.wzw, u_xlat6.zww);
    u_xlat32 = vec3f(((u_xlat3.xx + u_xlat5.wz)).xy, u_xlat32.z);
    u_xlat3.x = (u_xlat32.y + u_xlat32.x);
    u_xlat3.x = (u_xlat32.x * u_xlat3.x);
    u_xlat7.y = fract(u_xlat3.x);
    u_xlat32 = vec3f(((u_xlat3.zy + vec2f(5.30000019073486328125f))).xy, u_xlat32.z);
    u_xlat4 = vec3f(u_xlat4.x, ((u_xlat32.xy * x_250)).xy);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.zyy + x_263)).xyz, u_xlat5.w);
    u_xlat3.x = dot(u_xlat4.yzy, u_xlat5.xyz);
    u_xlat32 = vec3f(((u_xlat3.xx + u_xlat4.yz)).xy, u_xlat32.z);
    u_xlat3.x = (u_xlat32.y + u_xlat32.x);
    u_xlat3.x = (u_xlat32.x * u_xlat3.x);
    u_xlat7.z = fract(u_xlat3.x);
    u_xlat32 = ((u_xlat7.xyz * vec3f(0.5f)) + vec3f(0.25f));
    u_xlat3 = vec4f(((u_xlat3.ww + u_xlat3.yz)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + vec2f(1.29999995231628417969f))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_250)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat59 = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((vec2f(u_xlat59) + u_xlat3.xy)).xy, u_xlat3.zw);
    u_xlat31.x = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat31.x);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat3.x = ((u_xlat3.x * 0.1799999922513961792f) + 0.20000000298023223877f);
    u_xlat30 = (u_xlat30 + -(u_xlat32));
    u_xlat30.x = dot(u_xlat30, u_xlat30);
    u_xlat30.x = sqrt(u_xlat30.x);
    u_xlatb58 = (u_xlat4.x < 0.25999999046325683594f);
    u_xlat86 = (u_xlat3.x * -0.30000001192092895508f);
    u_xlat30.x = (-(u_xlat3.x) + u_xlat30.x);
    u_xlat86 = (1.0f / u_xlat86);
    u_xlat30.x = (u_xlat86 * u_xlat30.x);
    u_xlat30.x = clamp(u_xlat30.x, 0.0f, 1.0f);
    u_xlat86 = ((u_xlat30.x * -2.0f) + 3.0f);
    u_xlat30.x = (u_xlat30.x * u_xlat30.x);
    u_xlat30.x = (u_xlat30.x * u_xlat86);
    if (u_xlatb58) {
      x_548 = u_xlat30.x;
    } else {
      x_548 = 0.0f;
    }
    u_xlat30.x = x_548;
    u_xlat30.x = (u_xlat30.x * x_77.x_Glug);
    u_xlat2.x = (u_xlat2.x * u_xlat30.x);
    u_xlat0.x = (u_xlat0.x * -150.0f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat2 = (-(u_xlat28) + x_77.x_BubbleColor.xyz);
    u_xlat28 = ((u_xlat0.xxx * u_xlat2) + u_xlat28);
  }
  u_xlatb0 = (x_601.unity_OrthoParams.w == 0.0f);
  u_xlat2 = (-(vs_TEXCOORD0) + x_601.x_WorldSpaceCameraPos);
  u_xlat3.x = x_601.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat3.y = x_601.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat3.z = x_601.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_624 = u_xlat2;
  } else {
    x_624 = u_xlat3.xyz;
  }
  u_xlat2 = x_624;
  u_xlat86 = dot(u_xlat2, u_xlat2);
  u_xlat86 = inverseSqrt(u_xlat86);
  u_xlat4 = (vec3f(u_xlat86) * u_xlat2);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_650.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_650.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_650.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_650.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat8.w);
  u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlatb5 = (u_xlat5 < x_650.x_CascadeShadowSplitSphereRadii);
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb5.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb5.y);
  u_xlat6.z = select(0.0f, 1.0f, u_xlatb5.z);
  u_xlat6.w = select(0.0f, 1.0f, u_xlatb5.w);
  u_xlat5.x = select(-0.0f, -1.0f, u_xlatb5.x);
  u_xlat5.y = select(-0.0f, -1.0f, u_xlatb5.y);
  u_xlat5.z = select(-0.0f, -1.0f, u_xlatb5.z);
  u_xlat5 = vec4f(((u_xlat5.xyz + u_xlat6.yzw)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(u_xlat6.x, max(u_xlat5.xyz, vec3f()).xyz);
  u_xlat87 = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat87 = (-(u_xlat87) + 4.0f);
  u_xlatu87 = u32(u_xlat87);
  u_xlati87 = (bitcast<i32>(u_xlatu87) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_650.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati87 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_650.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati87].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_650.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati87 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_650.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati87 + 3i)].xyz)).xyz, u_xlat5.w);
  u_xlat1.w = 1.0f;
  u_xlat6.x = dot(x_827.unity_SHAr, u_xlat1);
  u_xlat6.y = dot(x_827.unity_SHAg, u_xlat1);
  u_xlat6.z = dot(x_827.unity_SHAb, u_xlat1);
  u_xlat7 = (u_xlat1.yzzx * u_xlat1.xyzz);
  u_xlat8.x = dot(x_827.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_827.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_827.unity_SHBb, u_xlat7);
  u_xlat85 = (u_xlat1.y * u_xlat1.y);
  u_xlat85 = ((u_xlat1.x * u_xlat1.x) + -(u_xlat85));
  u_xlat7 = vec4f((((x_827.unity_SHC.xyz * vec3f(u_xlat85)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_905 = x_601.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((x_902 / vec2f(x_905.x, x_905.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat85 = ((u_xlat7.y * x_601.x_ScaleBiasRt.x) + x_601.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat85) + 1.0f);
  u_xlat28 = (u_xlat28 * vec3f(0.95999997854232788086f));
  u_xlat85 = (-(x_77.x_Smoothness) + 1.0f);
  u_xlat87 = (u_xlat85 * u_xlat85);
  u_xlat87 = max(u_xlat87, 0.0078125f);
  u_xlat88 = (u_xlat87 * u_xlat87);
  u_xlat89 = (x_77.x_Smoothness + 0.04000002145767211914f);
  u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
  u_xlat90 = ((u_xlat87 * 4.0f) + 2.0f);
  u_xlatb35.x = (0.0f < x_650.x_MainLightShadowParams.y);
  if (u_xlatb35.x) {
    u_xlatb35.x = (x_650.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb35.x) {
      u_xlat8 = (u_xlat5.xyxy + x_650.x_MainLightShadowOffset0);
      let x_987 = u_xlat8.xy;
      txVec0 = vec3f(x_987.x, x_987.y, u_xlat5.z);
      u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1010 = u_xlat8.zw;
      txVec1 = vec3f(x_1010.x, x_1010.y, u_xlat5.z);
      u_xlat9.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat8 = (u_xlat5.xyxy + x_650.x_MainLightShadowOffset1);
      let x_1030 = u_xlat8.xy;
      txVec2 = vec3f(x_1030.x, x_1030.y, u_xlat5.z);
      u_xlat9.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1045 = u_xlat8.zw;
      txVec3 = vec3f(x_1045.x, x_1045.y, u_xlat5.z);
      u_xlat9.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat35.x = dot(u_xlat9, x_1060);
    } else {
      u_xlatb91 = (x_650.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb91) {
        u_xlat8 = vec4f((((u_xlat5.xy * x_650.x_MainLightShadowmapSize.zw) + x_1077)).xy, u_xlat8.zw);
        u_xlat8 = vec4f(floor(u_xlat8.xy).xy, u_xlat8.zw);
        u_xlat64 = ((u_xlat5.xy * x_650.x_MainLightShadowmapSize.zw) + -(u_xlat8.xy));
        u_xlat9 = (u_xlat64.xxyy + x_1100);
        u_xlat10 = (u_xlat9.xxzz * u_xlat9.xxzz);
        let x_1112 = (u_xlat10.yw * x_1111);
        u_xlat9 = vec4f(x_1112.x, u_xlat9.y, x_1112.y, u_xlat9.w);
        u_xlat10 = vec4f((((u_xlat10.xz * x_1077) + -(u_xlat64))).xy, u_xlat10.zw);
        u_xlat66 = (-(u_xlat64) + x_902);
        u_xlat11 = vec4f(min(u_xlat64, vec2f()).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat66)).xy, u_xlat11.zw);
        u_xlat64 = max(u_xlat64, vec2f());
        u_xlat64 = ((-(u_xlat64) * u_xlat64) + u_xlat9.yw);
        u_xlat11 = vec4f(((u_xlat11.xy + x_902)).xy, u_xlat11.zw);
        u_xlat64 = (u_xlat64 + x_902);
        u_xlat12 = vec4f(((u_xlat10.xy * x_1163)).xy, u_xlat12.zw);
        u_xlat10 = vec4f(((u_xlat66 * x_1163)).xy, u_xlat10.zw);
        u_xlat11 = vec4f(((u_xlat11.xy * x_1163)).xy, u_xlat11.zw);
        u_xlat13 = vec4f(((u_xlat64 * x_1163)).xy, u_xlat13.zw);
        u_xlat64 = (u_xlat9.yw * x_1163);
        u_xlat12.z = u_xlat11.x;
        u_xlat12.w = u_xlat64.x;
        u_xlat10.z = u_xlat13.x;
        u_xlat10.w = u_xlat9.x;
        u_xlat14 = (u_xlat10.zwxz + u_xlat12.zwxz);
        u_xlat11.z = u_xlat12.y;
        u_xlat11.w = u_xlat64.y;
        u_xlat13.z = u_xlat10.y;
        u_xlat13.w = u_xlat9.z;
        u_xlat9 = vec4f(((u_xlat11.zyw + u_xlat13.zyw)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat10.xzw / u_xlat14.zwy)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz + x_1233)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat13.zyw / u_xlat9.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_1233)).xyz, u_xlat11.w);
        u_xlat10 = vec4f(((u_xlat10.yxz * x_650.x_MainLightShadowmapSize.xxx)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_650.x_MainLightShadowmapSize.yyy)).xyz, u_xlat11.w);
        u_xlat10.w = u_xlat11.x;
        u_xlat12 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat10.ywxw);
        u_xlat64 = ((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat10.zw);
        u_xlat11.w = u_xlat10.y;
        let x_1290 = u_xlat11.yz;
        u_xlat10 = vec4f(u_xlat10.x, x_1290.x, u_xlat10.z, x_1290.y);
        u_xlat13 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyzy);
        u_xlat11 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat11.wywz);
        u_xlat10 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat10.xwzw);
        u_xlat15 = (u_xlat9.xxxy * u_xlat14.zwyz);
        u_xlat16 = (u_xlat9.yyzz * u_xlat14);
        u_xlat91 = (u_xlat9.z * u_xlat14.y);
        let x_1339 = u_xlat12.xy;
        txVec4 = vec3f(x_1339.x, x_1339.y, u_xlat5.z);
        u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1354 = u_xlat12.zw;
        txVec5 = vec3f(x_1354.x, x_1354.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat36 = (u_xlat36 * u_xlat15.y);
        u_xlat8.x = ((u_xlat15.x * u_xlat8.x) + u_xlat36);
        txVec6 = vec3f(u_xlat64.x, u_xlat64.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat8.x = ((u_xlat15.z * u_xlat36) + u_xlat8.x);
        let x_1402 = u_xlat11.xy;
        txVec7 = vec3f(x_1402.x, x_1402.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat8.x = ((u_xlat15.w * u_xlat36) + u_xlat8.x);
        let x_1424 = u_xlat13.xy;
        txVec8 = vec3f(x_1424.x, x_1424.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat8.x = ((u_xlat16.x * u_xlat36) + u_xlat8.x);
        let x_1446 = u_xlat13.zw;
        txVec9 = vec3f(x_1446.x, x_1446.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat8.x = ((u_xlat16.y * u_xlat36) + u_xlat8.x);
        let x_1468 = u_xlat11.zw;
        txVec10 = vec3f(x_1468.x, x_1468.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat8.x = ((u_xlat16.z * u_xlat36) + u_xlat8.x);
        let x_1490 = u_xlat10.xy;
        txVec11 = vec3f(x_1490.x, x_1490.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat8.x = ((u_xlat16.w * u_xlat36) + u_xlat8.x);
        let x_1512 = u_xlat10.zw;
        txVec12 = vec3f(x_1512.x, x_1512.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat35.x = ((u_xlat91 * u_xlat36) + u_xlat8.x);
      } else {
        u_xlat8 = vec4f((((u_xlat5.xy * x_650.x_MainLightShadowmapSize.zw) + x_1077)).xy, u_xlat8.zw);
        u_xlat8 = vec4f(floor(u_xlat8.xy).xy, u_xlat8.zw);
        u_xlat64 = ((u_xlat5.xy * x_650.x_MainLightShadowmapSize.zw) + -(u_xlat8.xy));
        u_xlat9 = (u_xlat64.xxyy + x_1100);
        u_xlat10 = (u_xlat9.xxzz * u_xlat9.xxzz);
        let x_1568 = (u_xlat10.yw * x_1567);
        u_xlat11 = vec4f(u_xlat11.x, x_1568.x, u_xlat11.z, x_1568.y);
        let x_1576 = ((u_xlat10.xz * x_1077) + -(u_xlat64));
        u_xlat9 = vec4f(x_1576.x, u_xlat9.y, x_1576.y, u_xlat9.w);
        u_xlat10 = vec4f(((-(u_xlat64) + x_902)).xy, u_xlat10.zw);
        u_xlat66 = min(u_xlat64, vec2f());
        u_xlat10 = vec4f((((-(u_xlat66) * u_xlat66) + u_xlat10.xy)).xy, u_xlat10.zw);
        u_xlat66 = max(u_xlat64, vec2f());
        let x_1604 = ((-(u_xlat66) * u_xlat66) + u_xlat9.yw);
        u_xlat37 = vec3f(x_1604.x, u_xlat37.y, x_1604.y);
        u_xlat10 = vec4f(((u_xlat10.xy + x_1609)).xy, u_xlat10.zw);
        let x_1615 = (u_xlat37.xz + x_1609);
        u_xlat9 = vec4f(u_xlat9.x, x_1615.x, u_xlat9.z, x_1615.y);
        u_xlat12.z = (u_xlat9.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat9.zxw * x_1625)).xyz, u_xlat13.w);
        u_xlat9 = vec4f(((u_xlat10.xy * x_1631)).xy, u_xlat9.zw);
        u_xlat12.x = u_xlat13.y;
        let x_1645 = ((u_xlat64.xx * x_1641) + x_1644);
        u_xlat12 = vec4f(u_xlat12.x, x_1645.x, u_xlat12.z, x_1645.y);
        let x_1652 = ((u_xlat64.xx * x_1641) + x_1651);
        u_xlat10 = vec4f(x_1652.x, u_xlat10.y, x_1652.y, u_xlat10.w);
        u_xlat10.y = u_xlat9.x;
        u_xlat10.w = u_xlat11.y;
        u_xlat12 = (u_xlat10 + u_xlat12);
        let x_1667 = ((u_xlat64.yy * x_1641) + x_1644);
        u_xlat13 = vec4f(u_xlat13.x, x_1667.x, u_xlat13.z, x_1667.y);
        let x_1673 = ((u_xlat64.yy * x_1641) + x_1651);
        u_xlat11 = vec4f(x_1673.x, u_xlat11.y, x_1673.y, u_xlat11.w);
        u_xlat11.y = u_xlat9.y;
        u_xlat9 = (u_xlat11 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat12);
        u_xlat10 = (u_xlat10 + x_1689);
        u_xlat11 = (u_xlat11 / u_xlat9);
        u_xlat11 = (u_xlat11 + x_1689);
        u_xlat10 = (u_xlat10.wxyz * x_650.x_MainLightShadowmapSize.xxxx);
        u_xlat11 = (u_xlat11.xwyz * x_650.x_MainLightShadowmapSize.yyyy);
        let x_1709 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_1709.x, u_xlat13.y, x_1709.yz);
        u_xlat13.y = u_xlat11.x;
        u_xlat14 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat64 = ((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat11.z;
        u_xlat15 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat16 = vec4f((((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat16.zw);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat11.w;
        u_xlat18 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat38 = ((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.w = u_xlat13.y;
        u_xlat72 = ((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat10.xw);
        let x_1809 = u_xlat13.xzw;
        u_xlat11 = vec4f(x_1809.x, u_xlat11.y, x_1809.yz);
        u_xlat13 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat67 = ((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat11.x = u_xlat10.x;
        u_xlat8 = vec4f((((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat11.xy)).xy, u_xlat8.zw);
        u_xlat19 = (u_xlat9.xxxx * u_xlat12);
        u_xlat20 = (u_xlat9.yyyy * u_xlat12);
        u_xlat21 = (u_xlat9.zzzz * u_xlat12);
        u_xlat9 = (u_xlat9.wwww * u_xlat12);
        let x_1866 = u_xlat14.xy;
        txVec13 = vec3f(x_1866.x, x_1866.y, u_xlat5.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1880 = u_xlat14.zw;
        txVec14 = vec3f(x_1880.x, x_1880.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat10.x = (u_xlat10.x * u_xlat19.y);
        u_xlat91 = ((u_xlat19.x * u_xlat91) + u_xlat10.x);
        txVec15 = vec3f(u_xlat64.x, u_xlat64.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat91 = ((u_xlat19.z * u_xlat64.x) + u_xlat91);
        let x_1929 = u_xlat17.xy;
        txVec16 = vec3f(x_1929.x, x_1929.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat91 = ((u_xlat19.w * u_xlat64.x) + u_xlat91);
        let x_1951 = u_xlat15.xy;
        txVec17 = vec3f(x_1951.x, x_1951.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat91 = ((u_xlat20.x * u_xlat64.x) + u_xlat91);
        let x_1973 = u_xlat15.zw;
        txVec18 = vec3f(x_1973.x, x_1973.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat91 = ((u_xlat20.y * u_xlat64.x) + u_xlat91);
        let x_1995 = u_xlat16.xy;
        txVec19 = vec3f(x_1995.x, x_1995.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat91 = ((u_xlat20.z * u_xlat64.x) + u_xlat91);
        let x_2017 = u_xlat17.zw;
        txVec20 = vec3f(x_2017.x, x_2017.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat91 = ((u_xlat20.w * u_xlat64.x) + u_xlat91);
        let x_2039 = u_xlat18.xy;
        txVec21 = vec3f(x_2039.x, x_2039.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat91 = ((u_xlat21.x * u_xlat64.x) + u_xlat91);
        let x_2061 = u_xlat18.zw;
        txVec22 = vec3f(x_2061.x, x_2061.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat91 = ((u_xlat21.y * u_xlat64.x) + u_xlat91);
        txVec23 = vec3f(u_xlat38.x, u_xlat38.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat91 = ((u_xlat21.z * u_xlat64.x) + u_xlat91);
        txVec24 = vec3f(u_xlat72.x, u_xlat72.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat91 = ((u_xlat21.w * u_xlat64.x) + u_xlat91);
        let x_2125 = u_xlat13.xy;
        txVec25 = vec3f(x_2125.x, x_2125.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat91 = ((u_xlat9.x * u_xlat64.x) + u_xlat91);
        let x_2147 = u_xlat13.zw;
        txVec26 = vec3f(x_2147.x, x_2147.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat91 = ((u_xlat9.y * u_xlat64.x) + u_xlat91);
        txVec27 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat91 = ((u_xlat9.z * u_xlat64.x) + u_xlat91);
        let x_2190 = u_xlat8.xy;
        txVec28 = vec3f(x_2190.x, x_2190.y, u_xlat5.z);
        u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat35.x = ((u_xlat9.w * u_xlat8.x) + u_xlat91);
      }
    }
  } else {
    let x_2214 = u_xlat5.xy;
    txVec29 = vec3f(x_2214.x, x_2214.y, u_xlat5.z);
    u_xlat35.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat5.x = (-(x_650.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat35.x * x_650.x_MainLightShadowParams.x) + u_xlat5.x);
  u_xlatb33 = (0.0f >= u_xlat5.z);
  u_xlatb61 = (u_xlat5.z >= 1.0f);
  u_xlatb33 = (u_xlatb61 | u_xlatb33);
  if (u_xlatb33) {
    x_2253 = 1.0f;
  } else {
    x_2253 = u_xlat5.x;
  }
  u_xlat5.x = x_2253;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_601.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat33 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat61.x = ((u_xlat33 * x_650.x_MainLightShadowParams.z) + x_650.x_MainLightShadowParams.w);
  u_xlat61.x = clamp(u_xlat61.x, 0.0f, 1.0f);
  u_xlat35.x = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat61.x * u_xlat35.x) + u_xlat5.x);
  u_xlatb61 = !((x_2307.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb61) {
    let x_2319 = (vs_TEXCOORD0.yy * x_2307.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy);
    u_xlat35 = vec3f(x_2319.x, u_xlat35.y, x_2319.y);
    let x_2330 = ((x_2307.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD0.xx) + u_xlat35.xz);
    u_xlat35 = vec3f(x_2330.x, u_xlat35.y, x_2330.y);
    let x_2341 = ((x_2307.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD0.zz) + u_xlat35.xz);
    u_xlat35 = vec3f(x_2341.x, u_xlat35.y, x_2341.y);
    let x_2349 = (u_xlat35.xz + x_2307.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy);
    u_xlat35 = vec3f(x_2349.x, u_xlat35.y, x_2349.y);
    let x_2355 = ((u_xlat35.xz * x_1077) + x_1077);
    u_xlat35 = vec3f(x_2355.x, u_xlat35.y, x_2355.y);
    let x_2366 = u_xlat35;
    let x_2369 = x_601.x_GlobalMipBias.x;
    let x_2370 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2366.xz, x_2369);
    u_xlat9 = x_2370;
    let x_2379 = vec4f(x_2307.x_MainLightCookieTextureFormat, x_2307.x_MainLightCookieTextureFormat, x_2307.x_MainLightCookieTextureFormat, x_2307.x_MainLightCookieTextureFormat);
    let x_2388 = ((vec4f(x_2379.x, x_2379.y, x_2379.z, x_2379.w) == vec4f(0.0f, 0.0f, 1.0f, 1.0f))).xz;
    u_xlatb35 = vec3<bool>(x_2388.x, u_xlatb35.y, x_2388.y);
    if (u_xlatb35.z) {
      x_2393 = u_xlat9.w;
    } else {
      x_2393 = u_xlat9.x;
    }
    u_xlat61.x = x_2393;
    if (u_xlatb35.x) {
      x_2405 = u_xlat9.xyz;
    } else {
      x_2405 = u_xlat61.xxx;
    }
    u_xlat9 = vec4f(x_2405.xyz, u_xlat9.w);
  } else {
    u_xlat9.x = 1.0f;
    u_xlat9.y = 1.0f;
    u_xlat9.z = 1.0f;
  }
  u_xlat9 = vec4f(((u_xlat9.xyz * x_601.x_MainLightColor.xyz)).xyz, u_xlat9.w);
  u_xlat61.x = dot(-(u_xlat4), u_xlat1.xyz);
  u_xlat61.x = (u_xlat61.x + u_xlat61.x);
  u_xlat10 = vec4f((((u_xlat1.xyz * -(u_xlat61.xxx)) + -(u_xlat4))).xyz, u_xlat10.w);
  u_xlat61.x = dot(u_xlat1.xyz, u_xlat4);
  u_xlat61.x = clamp(u_xlat61.x, 0.0f, 1.0f);
  u_xlat61.x = (-(u_xlat61.x) + 1.0f);
  u_xlat61.x = (u_xlat61.x * u_xlat61.x);
  u_xlat61.x = (u_xlat61.x * u_xlat61.x);
  u_xlat35.x = ((-(u_xlat85) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat85 = (u_xlat85 * u_xlat35.x);
  u_xlat85 = (u_xlat85 * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_601.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu63 = vec2u(x_601.x_FPParams1.zw);
  u_xlati7 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu63.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu7.x = (u_xlatu63.y * bitcast<u32>(u_xlati7));
  u_xlat3.x = dot(-(u_xlat3.xyz), u_xlat8.xyz);
  u_xlat31.x = log2(u_xlat3.x);
  if (u_xlatb0) {
    x_2540 = u_xlat31.x;
  } else {
    x_2540 = u_xlat3.x;
  }
  u_xlat0.x = x_2540;
  u_xlat0.x = ((u_xlat0.x * x_601.x_FPParams0.x) + x_601.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu3.x = u32(x_601.x_FPParams2.x);
  u_xlatu3.x = (u_xlatu3.x + 4294967295u);
  u_xlati31 = (bitcast<i32>(u_xlatu63.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu3.x);
  u_xlatu3.x = (bitcast<u32>(u_xlati31) * u_xlatu0);
  u_xlatu31 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati31))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu31.x >> 2u);
  param = bitcast<i32>(u_xlatu31.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2609 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu31.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2616 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati35 = vec3i(vec2i(x_2609, x_2616).xy, u_xlati35.z);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_2630.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_2641 = ~(u_xlati35.xy);
  u_xlati35 = vec3i(x_2641.x, u_xlati35.y, x_2641.y);
  u_xlati64 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_2630.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati64) | bitcast<vec2u>(u_xlati8)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati35.y) & bitcast<u32>(u_xlati8.x)));
  u_xlati31 = bitcast<i32>((bitcast<u32>(u_xlati35.z) & bitcast<u32>(u_xlati8.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati31));
  u_xlatu35 = vec3u(vec2u(x_601.x_FPParams0.zw).xy, u_xlatu35.z);
  u_xlatb8 = ((vec4f() < u_xlat10.xyzx)).xyz;
  u_xlatu11.x = u_xlatu7.x;
  u_xlatu11.y = u_xlatu31.y;
  u_xlati67 = 0i;
  u_xlatu95 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat31.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu91 = (u_xlatu95 >> 16u);
    u_xlati92 = u_xlati67;
    u_xlatu93 = u_xlatu95;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb94 = (u_xlati92 == 0i);
      u_xlatu96 = (u_xlatu93 & 65535u);
      u_xlatb96 = (u_xlatu91 >= u_xlatu96);
      u_xlatb94 = (u_xlatb94 & u_xlatb96);
      if (!(u_xlatb94)) {
        break;
      }
      param_6 = u_xlatu93;
      param_7 = 5i;
      param_8 = 11i;
      let x_2756 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu94 = x_2756;
      u_xlatu13 = (vec4u(u_xlatu94) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> x_2766);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2777 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2784 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2791 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2798 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_2777, x_2784, x_2791, x_2798);
      u_xlati70 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2807.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2807.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_2839 = bitcast<vec2i>((bitcast<vec2u>(u_xlati70) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_2839.x, u_xlati14.y, x_2839.y);
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2630.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_2630.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati41) | bitcast<u32>(u_xlati13.x)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu93) & 31i)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati94 = (bitcast<i32>(u_xlatu94) << bitcast<u32>(5i));
      u_xlatu94 = (u_xlatu91 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati94)))));
      u_xlatu94 = min(u_xlatu94, 31u);
      u_xlatu94 = (bitcast<u32>(-(bitcast<i32>(u_xlatu94))) + 31u);
      u_xlatu94 = (4294967295u >> (u_xlatu94 & 31u));
      u_xlati92 = bitcast<i32>((u_xlatu94 & bitcast<u32>(u_xlati96)));
      u_xlati94 = (bitcast<i32>(u_xlatu93) + 32i);
      u_xlatu93 = (bitcast<u32>(u_xlati94) & 4294967264u);
    }
    u_xlatu95 = u_xlatu93;
    u_xlatb91 = (u_xlati92 != 0i);
    u_xlatb94 = (u_xlat31.x < 0.99000000953674316406f);
    u_xlatb91 = (u_xlatb91 & u_xlatb94);
    if (!(u_xlatb91)) {
      break;
    }
    u_xlati91 = (0i - u_xlati92);
    u_xlatu91 = (bitcast<u32>(u_xlati91) & bitcast<u32>(u_xlati92));
    u_xlat91 = f32(u_xlatu91);
    u_xlatu91 = (bitcast<u32>(u_xlat91) >> 23u);
    u_xlati91 = (bitcast<i32>(u_xlatu91) + -127i);
    u_xlati94 = (1i << bitcast<u32>((u_xlati91 & 31i)));
    u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati92) ^ bitcast<u32>(u_xlati94)));
    u_xlati94 = (bitcast<i32>(u_xlatu95) + -32i);
    u_xlati94 = bitcast<i32>((bitcast<u32>(u_xlati94) & 65504u));
    u_xlati91 = (u_xlati91 + u_xlati94);
    u_xlati91 = (-(bitcast<i32>(u_xlatu35.x)) + u_xlati91);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_3050.urp_ReflProbes_BoxMin[u_xlati91].xyz))).xyz, u_xlat13.w);
    u_xlat14 = vec4f(((-(vs_TEXCOORD0) + x_3050.urp_ReflProbes_BoxMax[u_xlati91].xyz)).xyz, u_xlat14.w);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14.xyz).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_3050.urp_ReflProbes_BoxMax[u_xlati91].www)).xyz, u_xlat13.w);
    u_xlat94 = min(u_xlat13.z, u_xlat13.y);
    u_xlat94 = min(u_xlat94, u_xlat13.x);
    u_xlat94 = clamp(u_xlat94, 0.0f, 1.0f);
    u_xlat96 = (-(u_xlat31.x) + 1.0f);
    u_xlat94 = min(u_xlat94, u_xlat96);
    u_xlatb96 = (0.0f < x_3050.urp_ReflProbes_ProbePosition[u_xlati91].w);
    if (u_xlatb8.x) {
      x_3110 = x_3050.urp_ReflProbes_BoxMax[u_xlati91].x;
    } else {
      x_3110 = x_3050.urp_ReflProbes_BoxMin[u_xlati91].x;
    }
    u_xlat13.x = x_3110;
    if (u_xlatb8.y) {
      x_3124 = x_3050.urp_ReflProbes_BoxMax[u_xlati91].y;
    } else {
      x_3124 = x_3050.urp_ReflProbes_BoxMin[u_xlati91].y;
    }
    u_xlat13.y = x_3124;
    if (u_xlatb8.z) {
      x_3138 = x_3050.urp_ReflProbes_BoxMax[u_xlati91].z;
    } else {
      x_3138 = x_3050.urp_ReflProbes_BoxMin[u_xlati91].z;
    }
    u_xlat13.z = x_3138;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat10.xyz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat41 = (vs_TEXCOORD0 + -(x_3050.urp_ReflProbes_ProbePosition[u_xlati91].xyz));
    u_xlat13 = vec4f((((u_xlat10.xyz * u_xlat13.xxx) + u_xlat41)).xyz, u_xlat13.w);
    if (u_xlatb96) {
      x_3194 = u_xlat13.xyz;
    } else {
      x_3194 = u_xlat10.xyz;
    }
    u_xlat13 = vec4f(x_3194.xyz, u_xlat13.w);
    u_xlatu96 = u32(abs(x_3050.urp_ReflProbes_ProbePosition[u_xlati91].w));
    u_xlatu96 = (u_xlatu96 + 4294967295u);
    u_xlat96 = f32(u_xlatu96);
    u_xlat96 = min(u_xlat85, u_xlat96);
    u_xlat97 = dot(abs(u_xlat13.xyz), x_3221);
    u_xlat97 = max(u_xlat97, 0.00000099999999747524f);
    u_xlat97 = (1.0f / u_xlat97);
    u_xlat14 = vec4f(((vec3f(u_xlat97) * u_xlat13.zxy)).xyz, u_xlat14.w);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb42 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb42.x) {
      x_3253 = u_xlat14.x;
    } else {
      x_3253 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_3253;
    if (u_xlatb42.y) {
      x_3266 = u_xlat14.x;
    } else {
      x_3266 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_3266;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat97)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_1077) + x_1077)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat69.x = floor(u_xlat96);
    u_xlat69.y = (u_xlat69.x + 1.0f);
    u_xlat96 = (u_xlat96 + -(u_xlat69.x));
    u_xlatu69 = vec2u(u_xlat69);
    u_xlati69 = ((u_xlati91 * 7i) + bitcast<i32>(u_xlatu69.x));
    u_xlati91 = ((u_xlati91 * 7i) + bitcast<i32>(u_xlatu69.y));
    u_xlat69 = ((u_xlat13.xy * x_3050.urp_ReflProbes_MipScaleOffset[u_xlati69].xy) + x_3050.urp_ReflProbes_MipScaleOffset[u_xlati69].zw);
    u_xlat14 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat69, 0.0f).xyz.xyz, u_xlat14.w);
    u_xlat13 = vec4f((((u_xlat13.xy * x_3050.urp_ReflProbes_MipScaleOffset[u_xlati91].xy) + x_3050.urp_ReflProbes_MipScaleOffset[u_xlati91].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat96) * u_xlat13.xyz) + u_xlat14.xyz)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((vec3f(u_xlat94) * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat31.x = (u_xlat31.x + u_xlat94);
  }
  u_xlatb0 = (u_xlat31.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xyz, u_xlat85);
    u_xlat0.x = (-(u_xlat31.x) + 1.0f);
    u_xlat85 = (u_xlat8.w + -1.0f);
    u_xlat85 = ((x_601.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat85) + 1.0f);
    u_xlat85 = max(u_xlat85, 0.0f);
    u_xlat85 = log2(u_xlat85);
    u_xlat85 = (u_xlat85 * x_601.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat85 = exp2(u_xlat85);
    u_xlat85 = (u_xlat85 * x_601.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * vec3f(u_xlat85))).xyz, u_xlat8.w);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat8.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  let x_3476 = ((vec2f(u_xlat87) * vec2f(u_xlat87)) + vec2f(-1.0f, 1.0f));
  u_xlat31 = vec3f(x_3476.x, u_xlat31.y, x_3476.y);
  u_xlat0.x = (1.0f / u_xlat31.z);
  u_xlat85 = (u_xlat89 + -0.03999999910593032837f);
  u_xlat85 = ((u_xlat61.x * u_xlat85) + 0.03999999910593032837f);
  u_xlat0.x = (u_xlat0.x * u_xlat85);
  u_xlat8 = vec4f(((u_xlat0.xxx * u_xlat12.xyz)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat28) + u_xlat8.xyz)).xyz, u_xlat6.w);
  u_xlati0 = bitcast<i32>((x_601.x_MainLightLayerMask & bitcast<u32>(x_827.unity_RenderingLayer.x)));
  u_xlat85 = dot(u_xlat1.xyz, x_601.x_MainLightPosition.xyz);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat85 = (u_xlat85 * u_xlat5.x);
  let x_3537 = (vec3f(u_xlat85) * u_xlat9.xyz);
  u_xlat5 = vec4f(x_3537.x, u_xlat5.y, x_3537.yz);
  u_xlat2 = ((u_xlat2 * vec3f(u_xlat86)) + x_601.x_MainLightPosition.xyz);
  u_xlat85 = dot(u_xlat2, u_xlat2);
  u_xlat85 = max(u_xlat85, 1.17549435e-38f);
  u_xlat85 = inverseSqrt(u_xlat85);
  u_xlat2 = (vec3f(u_xlat85) * u_xlat2);
  u_xlat85 = dot(u_xlat1.xyz, u_xlat2);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat2.x = dot(x_601.x_MainLightPosition.xyz, u_xlat2);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = ((u_xlat85 * u_xlat31.x) + 1.00001001358032226562f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat2.x = max(u_xlat2.x, 0.10000000149011611938f);
  u_xlat85 = (u_xlat85 * u_xlat2.x);
  u_xlat85 = (u_xlat90 * u_xlat85);
  u_xlat85 = (u_xlat88 / u_xlat85);
  u_xlat2 = ((vec3f(u_xlat85) * x_3611) + u_xlat28);
  u_xlat2 = (u_xlat5.xzw * u_xlat2);
  if ((u_xlati0 != 0i)) {
    x_3621 = u_xlat2;
  } else {
    x_3621 = vec3f();
  }
  u_xlat2 = x_3621;
  u_xlatu0 = min(u_xlatu35.y, 32u);
  u_xlat85 = ((u_xlat33 * x_650.x_AdditionalShadowFadeParams.x) + x_650.x_AdditionalShadowFadeParams.y);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  let x_3647 = vec4f(x_2307.x_AdditionalLightsCookieAtlasTextureFormat, x_2307.x_AdditionalLightsCookieAtlasTextureFormat, x_2307.x_AdditionalLightsCookieAtlasTextureFormat, x_2307.x_AdditionalLightsCookieAtlasTextureFormat);
  u_xlatb5 = vec4<bool>(((vec4f(x_3647.x, x_3647.y, x_3647.z, x_3647.w) == vec4f(0.0f, 1.0f, 0.0f, 0.0f))).xy.xy, u_xlatb5.zw);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu0)) {
    } else {
      break;
    }
    u_xlat9 = vec4f((((-(vs_TEXCOORD0) * x_3680.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3680.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat9.w);
    u_xlat87 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat87 = max(u_xlat87, 0.00006103515625f);
    u_xlat61.x = inverseSqrt(u_xlat87);
    u_xlat10 = vec4f(((u_xlat61.xxx * u_xlat9.xyz)).xyz, u_xlat10.w);
    u_xlat89 = (1.0f / u_xlat87);
    u_xlat87 = (u_xlat87 * x_3680.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat87 = ((-(u_xlat87) * u_xlat87) + 1.0f);
    u_xlat87 = max(u_xlat87, 0.0f);
    u_xlat87 = (u_xlat87 * u_xlat87);
    u_xlat87 = (u_xlat87 * u_xlat89);
    u_xlat89 = dot(x_3680.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat10.xyz);
    u_xlat89 = ((u_xlat89 * x_3680.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3680.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
    u_xlat89 = (u_xlat89 * u_xlat89);
    u_xlat87 = (u_xlat87 * u_xlat89);
    u_xlatb89 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati35.x = i32(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    if (u_xlatb89) {
      x_3774 = -1i;
    } else {
      x_3774 = u_xlati35.x;
    }
    u_xlati89 = x_3774;
    u_xlatb35.x = (u_xlati89 >= 0i);
    if (u_xlatb35.x) {
      u_xlatb35.x = any(!((vec4f() == vec4f(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb35.x) {
        u_xlatb11 = vec4<bool>(((abs(u_xlat10.zzyz) >= abs(u_xlat10.xyxx))).xyz.xyz, u_xlatb11.w);
        u_xlatb35.x = (u_xlatb11.y & u_xlatb11.x);
        let x_3821 = ((-(u_xlat10.zyzx) < vec4f())).xyw;
        u_xlatb11 = vec4<bool>(x_3821.xy, u_xlatb11.z, x_3821.z);
        u_xlat11.x = select(4.0f, 5.0f, u_xlatb11.x);
        u_xlat11.y = select(2.0f, 3.0f, u_xlatb11.y);
        u_xlat91 = select(0.0f, 1.0f, u_xlatb11.w);
        if (u_xlatb11.z) {
          x_3838 = u_xlat11.y;
        } else {
          x_3838 = u_xlat91;
        }
        u_xlat91 = x_3838;
        if (u_xlatb35.x) {
          x_3848 = u_xlat11.x;
        } else {
          x_3848 = u_xlat91;
        }
        u_xlat35.x = x_3848;
        u_xlati35.x = i32(u_xlat35.x);
        u_xlati89 = (u_xlati89 + u_xlati35.x);
      }
      u_xlati89 = (u_xlati89 << bitcast<u32>(2i));
      u_xlat11 = (vs_TEXCOORD0.yyyy * x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati89 + 1i)]);
      u_xlat11 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati89] * vs_TEXCOORD0.xxxx) + u_xlat11);
      u_xlat11 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati89 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat11);
      u_xlat11 = (u_xlat11 + x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati89 + 3i)]);
      u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat11.www)).xyz, u_xlat11.w);
      u_xlatb89 = (0.0f < x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb89) {
        u_xlatb89 = (1.0f == x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb89) {
          u_xlat12 = (u_xlat11.xyxy + x_650.x_AdditionalShadowOffset0);
          let x_3928 = u_xlat12.xy;
          txVec30 = vec3f(x_3928.x, x_3928.y, u_xlat11.z);
          u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_3944 = u_xlat12.zw;
          txVec31 = vec3f(x_3944.x, x_3944.y, u_xlat11.z);
          u_xlat13.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat12 = (u_xlat11.xyxy + x_650.x_AdditionalShadowOffset1);
          let x_3964 = u_xlat12.xy;
          txVec32 = vec3f(x_3964.x, x_3964.y, u_xlat11.z);
          u_xlat13.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_3979 = u_xlat12.zw;
          txVec33 = vec3f(x_3979.x, x_3979.y, u_xlat11.z);
          u_xlat13.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat89 = dot(u_xlat13, x_1060);
        } else {
          u_xlatb35.x = (2.0f == x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb35.x) {
            let x_4012 = ((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.zw) + x_1077);
            u_xlat35 = vec3f(x_4012.x, u_xlat35.y, x_4012.y);
            let x_4017 = floor(u_xlat35.xz);
            u_xlat35 = vec3f(x_4017.x, u_xlat35.y, x_4017.y);
            u_xlat12 = vec4f((((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.zw) + -(u_xlat35.xz))).xy, u_xlat12.zw);
            u_xlat13 = (u_xlat12.xxyy + x_1100);
            u_xlat14 = (u_xlat13.xxzz * u_xlat13.xxzz);
            u_xlat68 = (u_xlat14.yw * x_1111);
            let x_4050 = ((u_xlat14.xz * x_1077) + -(u_xlat12.xy));
            u_xlat13 = vec4f(x_4050.x, u_xlat13.y, x_4050.y, u_xlat13.w);
            u_xlat14 = vec4f(((-(u_xlat12.xy) + x_902)).xy, u_xlat14.zw);
            u_xlat70 = min(u_xlat12.xy, vec2f());
            u_xlat70 = ((-(u_xlat70) * u_xlat70) + u_xlat14.xy);
            u_xlat12 = vec4f(max(u_xlat12.xy, vec2f()).xy, u_xlat12.zw);
            u_xlat12 = vec4f((((-(u_xlat12.xy) * u_xlat12.xy) + u_xlat13.yw)).xy, u_xlat12.zw);
            u_xlat70 = (u_xlat70 + x_902);
            u_xlat12 = vec4f(((u_xlat12.xy + x_902)).xy, u_xlat12.zw);
            u_xlat15 = vec4f(((u_xlat13.xz * x_1163)).xy, u_xlat15.zw);
            u_xlat16 = vec4f(((u_xlat14.xy * x_1163)).xy, u_xlat16.zw);
            u_xlat14 = vec4f(((u_xlat70 * x_1163)).xy, u_xlat14.zw);
            u_xlat17 = vec4f(((u_xlat12.xy * x_1163)).xy, u_xlat17.zw);
            u_xlat12 = vec4f(((u_xlat13.yw * x_1163)).xy, u_xlat12.zw);
            u_xlat15.z = u_xlat14.x;
            u_xlat15.w = u_xlat12.x;
            u_xlat16.z = u_xlat17.x;
            u_xlat16.w = u_xlat68.x;
            u_xlat13 = (u_xlat15.zwxz + u_xlat16.zwxz);
            u_xlat14.z = u_xlat15.y;
            u_xlat14.w = u_xlat12.y;
            u_xlat17.z = u_xlat16.y;
            u_xlat17.w = u_xlat68.y;
            u_xlat12 = vec4f(((u_xlat14.zyw + u_xlat17.zyw)).xyz, u_xlat12.w);
            u_xlat14 = vec4f(((u_xlat16.xzw / u_xlat13.zwy)).xyz, u_xlat14.w);
            u_xlat14 = vec4f(((u_xlat14.xyz + x_1233)).xyz, u_xlat14.w);
            u_xlat15 = vec4f(((u_xlat17.zyw / u_xlat12.xyz)).xyz, u_xlat15.w);
            u_xlat15 = vec4f(((u_xlat15.xyz + x_1233)).xyz, u_xlat15.w);
            u_xlat14 = vec4f(((u_xlat14.yxz * x_650.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat14.w);
            u_xlat15 = vec4f(((u_xlat15.xyz * x_650.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat15.w);
            u_xlat14.w = u_xlat15.x;
            u_xlat16 = ((u_xlat35.xzxz * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat14.ywxw);
            u_xlat17 = vec4f((((u_xlat35.xz * x_650.x_AdditionalShadowmapSize.xy) + u_xlat14.zw)).xy, u_xlat17.zw);
            u_xlat15.w = u_xlat14.y;
            let x_4220 = u_xlat15.yz;
            u_xlat14 = vec4f(u_xlat14.x, x_4220.x, u_xlat14.z, x_4220.y);
            u_xlat18 = ((u_xlat35.xzxz * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xyzy);
            u_xlat15 = ((u_xlat35.xzxz * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat15.wywz);
            u_xlat14 = ((u_xlat35.xzxz * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xwzw);
            u_xlat19 = (u_xlat12.xxxy * u_xlat13.zwyz);
            u_xlat20 = (u_xlat12.yyzz * u_xlat13);
            u_xlat35.x = (u_xlat12.z * u_xlat13.y);
            let x_4267 = u_xlat16.xy;
            txVec34 = vec3f(x_4267.x, x_4267.y, u_xlat11.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_4281 = u_xlat16.zw;
            txVec35 = vec3f(x_4281.x, x_4281.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat92 = (u_xlat92 * u_xlat19.y);
            u_xlat91 = ((u_xlat19.x * u_xlat91) + u_xlat92);
            let x_4306 = u_xlat17.xy;
            txVec36 = vec3f(x_4306.x, x_4306.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat91 = ((u_xlat19.z * u_xlat92) + u_xlat91);
            let x_4326 = u_xlat15.xy;
            txVec37 = vec3f(x_4326.x, x_4326.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat91 = ((u_xlat19.w * u_xlat92) + u_xlat91);
            let x_4346 = u_xlat18.xy;
            txVec38 = vec3f(x_4346.x, x_4346.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat91 = ((u_xlat20.x * u_xlat92) + u_xlat91);
            let x_4366 = u_xlat18.zw;
            txVec39 = vec3f(x_4366.x, x_4366.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat91 = ((u_xlat20.y * u_xlat92) + u_xlat91);
            let x_4386 = u_xlat15.zw;
            txVec40 = vec3f(x_4386.x, x_4386.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat91 = ((u_xlat20.z * u_xlat92) + u_xlat91);
            let x_4406 = u_xlat14.xy;
            txVec41 = vec3f(x_4406.x, x_4406.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat91 = ((u_xlat20.w * u_xlat92) + u_xlat91);
            let x_4426 = u_xlat14.zw;
            txVec42 = vec3f(x_4426.x, x_4426.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat89 = ((u_xlat35.x * u_xlat92) + u_xlat91);
          } else {
            let x_4451 = ((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.zw) + x_1077);
            u_xlat35 = vec3f(x_4451.x, u_xlat35.y, x_4451.y);
            let x_4456 = floor(u_xlat35.xz);
            u_xlat35 = vec3f(x_4456.x, u_xlat35.y, x_4456.y);
            u_xlat12 = vec4f((((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.zw) + -(u_xlat35.xz))).xy, u_xlat12.zw);
            u_xlat13 = (u_xlat12.xxyy + x_1100);
            u_xlat14 = (u_xlat13.xxzz * u_xlat13.xxzz);
            let x_4481 = (u_xlat14.yw * x_1567);
            u_xlat15 = vec4f(u_xlat15.x, x_4481.x, u_xlat15.z, x_4481.y);
            u_xlat68 = ((u_xlat14.xz * x_1077) + -(u_xlat12.xy));
            let x_4494 = (-(u_xlat12.xy) + x_902);
            u_xlat13 = vec4f(x_4494.x, u_xlat13.y, x_4494.y, u_xlat13.w);
            u_xlat14 = vec4f(min(u_xlat12.xy, vec2f()).xy, u_xlat14.zw);
            let x_4510 = ((-(u_xlat14.xy) * u_xlat14.xy) + u_xlat13.xz);
            u_xlat13 = vec4f(x_4510.x, u_xlat13.y, x_4510.y, u_xlat13.w);
            u_xlat14 = vec4f(max(u_xlat12.xy, vec2f()).xy, u_xlat14.zw);
            let x_4526 = ((-(u_xlat14.xy) * u_xlat14.xy) + u_xlat13.yw);
            u_xlat13 = vec4f(u_xlat13.x, x_4526.x, u_xlat13.z, x_4526.y);
            u_xlat13 = (u_xlat13 + vec4f(2.0f));
            u_xlat14.z = (u_xlat13.y * 0.08163200318813323975f);
            u_xlat16 = vec4f(((u_xlat68.yx * x_1631)).xy, u_xlat16.zw);
            u_xlat68 = (u_xlat13.xz * x_1631);
            u_xlat16.z = (u_xlat13.w * 0.08163200318813323975f);
            u_xlat14.x = u_xlat16.y;
            let x_4554 = ((u_xlat12.xx * x_1641) + x_1644);
            u_xlat14 = vec4f(u_xlat14.x, x_4554.x, u_xlat14.z, x_4554.y);
            let x_4560 = ((u_xlat12.xx * x_1641) + x_1651);
            u_xlat13 = vec4f(x_4560.x, u_xlat13.y, x_4560.y, u_xlat13.w);
            u_xlat13.y = u_xlat68.x;
            u_xlat13.w = u_xlat15.y;
            u_xlat14 = (u_xlat13 + u_xlat14);
            let x_4575 = ((u_xlat12.yy * x_1641) + x_1644);
            u_xlat16 = vec4f(u_xlat16.x, x_4575.x, u_xlat16.z, x_4575.y);
            let x_4581 = ((u_xlat12.yy * x_1641) + x_1651);
            u_xlat15 = vec4f(x_4581.x, u_xlat15.y, x_4581.y, u_xlat15.w);
            u_xlat15.y = u_xlat68.y;
            u_xlat12 = (u_xlat15 + u_xlat16);
            u_xlat13 = (u_xlat13 / u_xlat14);
            u_xlat13 = (u_xlat13 + x_1689);
            u_xlat15 = (u_xlat15 / u_xlat12);
            u_xlat15 = (u_xlat15 + x_1689);
            u_xlat13 = (u_xlat13.wxyz * x_650.x_AdditionalShadowmapSize.xxxx);
            u_xlat15 = (u_xlat15.xwyz * x_650.x_AdditionalShadowmapSize.yyyy);
            let x_4613 = u_xlat13.yzw;
            u_xlat16 = vec4f(x_4613.x, u_xlat16.y, x_4613.yz);
            u_xlat16.y = u_xlat15.x;
            u_xlat17 = ((u_xlat35.xzxz * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat18 = vec4f((((u_xlat35.xz * x_650.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat18.zw);
            u_xlat13.y = u_xlat16.y;
            u_xlat16.y = u_xlat15.z;
            u_xlat19 = ((u_xlat35.xzxz * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat74 = ((u_xlat35.xz * x_650.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat13.z = u_xlat16.y;
            u_xlat20 = ((u_xlat35.xzxz * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyxz);
            u_xlat16.y = u_xlat15.w;
            u_xlat21 = ((u_xlat35.xzxz * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat41 = vec3f((((u_xlat35.xz * x_650.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat41.z);
            u_xlat13.w = u_xlat16.y;
            u_xlat22 = vec4f((((u_xlat35.xz * x_650.x_AdditionalShadowmapSize.xy) + u_xlat13.xw)).xy, u_xlat22.zw);
            let x_4715 = u_xlat16.xzw;
            u_xlat15 = vec4f(x_4715.x, u_xlat15.y, x_4715.yz);
            u_xlat16 = ((u_xlat35.xzxz * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat71 = ((u_xlat35.xz * x_650.x_AdditionalShadowmapSize.xy) + u_xlat15.wy);
            u_xlat15.x = u_xlat13.x;
            let x_4748 = ((u_xlat35.xz * x_650.x_AdditionalShadowmapSize.xy) + u_xlat15.xy);
            u_xlat35 = vec3f(x_4748.x, u_xlat35.y, x_4748.y);
            u_xlat23 = (u_xlat12.xxxx * u_xlat14);
            u_xlat24 = (u_xlat12.yyyy * u_xlat14);
            u_xlat25 = (u_xlat12.zzzz * u_xlat14);
            u_xlat12 = (u_xlat12.wwww * u_xlat14);
            let x_4772 = u_xlat17.xy;
            txVec43 = vec3f(x_4772.x, x_4772.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_4786 = u_xlat17.zw;
            txVec44 = vec3f(x_4786.x, x_4786.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat93 = (u_xlat93 * u_xlat23.y);
            u_xlat92 = ((u_xlat23.x * u_xlat92) + u_xlat93);
            let x_4811 = u_xlat18.xy;
            txVec45 = vec3f(x_4811.x, x_4811.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat92 = ((u_xlat23.z * u_xlat93) + u_xlat92);
            let x_4831 = u_xlat20.xy;
            txVec46 = vec3f(x_4831.x, x_4831.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat92 = ((u_xlat23.w * u_xlat93) + u_xlat92);
            let x_4851 = u_xlat19.xy;
            txVec47 = vec3f(x_4851.x, x_4851.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat92 = ((u_xlat24.x * u_xlat93) + u_xlat92);
            let x_4871 = u_xlat19.zw;
            txVec48 = vec3f(x_4871.x, x_4871.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat92 = ((u_xlat24.y * u_xlat93) + u_xlat92);
            txVec49 = vec3f(u_xlat74.x, u_xlat74.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat92 = ((u_xlat24.z * u_xlat93) + u_xlat92);
            let x_4910 = u_xlat20.zw;
            txVec50 = vec3f(x_4910.x, x_4910.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat92 = ((u_xlat24.w * u_xlat93) + u_xlat92);
            let x_4930 = u_xlat21.xy;
            txVec51 = vec3f(x_4930.x, x_4930.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat92 = ((u_xlat25.x * u_xlat93) + u_xlat92);
            let x_4950 = u_xlat21.zw;
            txVec52 = vec3f(x_4950.x, x_4950.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat92 = ((u_xlat25.y * u_xlat93) + u_xlat92);
            let x_4970 = u_xlat41.xy;
            txVec53 = vec3f(x_4970.x, x_4970.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat92 = ((u_xlat25.z * u_xlat93) + u_xlat92);
            let x_4990 = u_xlat22.xy;
            txVec54 = vec3f(x_4990.x, x_4990.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat92 = ((u_xlat25.w * u_xlat93) + u_xlat92);
            let x_5010 = u_xlat16.xy;
            txVec55 = vec3f(x_5010.x, x_5010.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat92 = ((u_xlat12.x * u_xlat93) + u_xlat92);
            let x_5030 = u_xlat16.zw;
            txVec56 = vec3f(x_5030.x, x_5030.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat92 = ((u_xlat12.y * u_xlat93) + u_xlat92);
            txVec57 = vec3f(u_xlat71.x, u_xlat71.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat92 = ((u_xlat12.z * u_xlat93) + u_xlat92);
            let x_5069 = u_xlat35.xz;
            txVec58 = vec3f(x_5069.x, x_5069.y, u_xlat11.z);
            u_xlat35.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat89 = ((u_xlat12.w * u_xlat35.x) + u_xlat92);
          }
        }
      } else {
        let x_5092 = u_xlat11.xy;
        txVec59 = vec3f(x_5092.x, x_5092.y, u_xlat11.z);
        u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat35.x = (1.0f + -(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat89 = ((u_xlat89 * x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat35.x);
      u_xlatb35.x = (0.0f >= u_xlat11.z);
      u_xlatb91 = (u_xlat11.z >= 1.0f);
      u_xlatb35.x = (u_xlatb91 | u_xlatb35.x);
      u_xlat89 = select(u_xlat89, 1.0f, u_xlatb35.x);
    } else {
      u_xlat89 = 1.0f;
    }
    u_xlat35.x = (-(u_xlat89) + 1.0f);
    u_xlat89 = ((u_xlat85 * u_xlat35.x) + u_xlat89);
    u_xlati35.x = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati35.x) & bitcast<u32>(x_2307.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati35.x != 0i)) {
      u_xlati35.x = i32(x_2307.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati91 = select(1i, 0i, (u_xlati35.x != 0i));
      u_xlati92 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati91 != 0i)) {
        u_xlat11 = vec4f(((vs_TEXCOORD0.yyy * x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 1i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati92].xyw * vs_TEXCOORD0.xxx) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 3i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xy / u_xlat11.zz)).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((u_xlat11.xy * x_1077) + x_1077)).xy, u_xlat11.zw);
        u_xlat11 = vec4f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((x_2307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat11.xy) + x_2307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
      } else {
        u_xlatb35.x = (u_xlati35.x == 1i);
        u_xlati35.x = select(0i, 1i, u_xlatb35.x);
        if ((u_xlati35.x != 0i)) {
          let x_5285 = (vs_TEXCOORD0.yy * x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 1i)].xy);
          u_xlat35 = vec3f(x_5285.x, u_xlat35.y, x_5285.y);
          let x_5297 = ((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati92].xy * vs_TEXCOORD0.xx) + u_xlat35.xz);
          u_xlat35 = vec3f(x_5297.x, u_xlat35.y, x_5297.y);
          let x_5310 = ((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat35.xz);
          u_xlat35 = vec3f(x_5310.x, u_xlat35.y, x_5310.y);
          let x_5320 = (u_xlat35.xz + x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 3i)].xy);
          u_xlat35 = vec3f(x_5320.x, u_xlat35.y, x_5320.y);
          let x_5326 = ((u_xlat35.xz * x_1077) + x_1077);
          u_xlat35 = vec3f(x_5326.x, u_xlat35.y, x_5326.y);
          let x_5331 = fract(u_xlat35.xz);
          u_xlat35 = vec3f(x_5331.x, u_xlat35.y, x_5331.y);
          u_xlat11 = vec4f((((x_2307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat35.xz) + x_2307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
        } else {
          u_xlat12 = (vs_TEXCOORD0.yyyy * x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 1i)]);
          u_xlat12 = ((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati92] * vs_TEXCOORD0.xxxx) + u_xlat12);
          u_xlat12 = ((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
          u_xlat12 = (u_xlat12 + x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 3i)]);
          u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
          u_xlat35.x = dot(u_xlat12.xyz, u_xlat12.xyz);
          u_xlat35.x = inverseSqrt(u_xlat35.x);
          u_xlat12 = vec4f(((u_xlat35.xxx * u_xlat12.xyz)).xyz, u_xlat12.w);
          u_xlat35.x = dot(abs(u_xlat12.xyz), x_3221);
          u_xlat35.x = max(u_xlat35.x, 0.00000099999999747524f);
          u_xlat35.x = (1.0f / u_xlat35.x);
          u_xlat13 = vec4f(((u_xlat35.xxx * u_xlat12.zxy)).xyz, u_xlat13.w);
          u_xlat13.x = -(u_xlat13.x);
          u_xlat13.x = clamp(u_xlat13.x, 0.0f, 1.0f);
          u_xlatb67 = ((u_xlat13.yzyz >= vec4f())).xy;
          if (u_xlatb67.x) {
            x_5440 = u_xlat13.x;
          } else {
            x_5440 = -(u_xlat13.x);
          }
          u_xlat67.x = x_5440;
          if (u_xlatb67.y) {
            x_5453 = u_xlat13.x;
          } else {
            x_5453 = -(u_xlat13.x);
          }
          u_xlat67.y = x_5453;
          let x_5470 = ((u_xlat12.xy * u_xlat35.xx) + u_xlat67);
          u_xlat35 = vec3f(x_5470.x, u_xlat35.y, x_5470.y);
          let x_5476 = ((u_xlat35.xz * x_1077) + x_1077);
          u_xlat35 = vec3f(x_5476.x, u_xlat35.y, x_5476.y);
          let x_5483 = clamp(u_xlat35.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat35 = vec3f(x_5483.x, u_xlat35.y, x_5483.y);
          u_xlat11 = vec4f((((x_2307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat35.xz) + x_2307.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
        }
      }
      u_xlat11 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat11.xy, 0.0f);
      if (u_xlatb5.y) {
        x_5511 = u_xlat11.w;
      } else {
        x_5511 = u_xlat11.x;
      }
      u_xlat35.x = x_5511;
      if (u_xlatb5.x) {
        x_5523 = u_xlat11.xyz;
      } else {
        x_5523 = u_xlat35.xxx;
      }
      u_xlat11 = vec4f(x_5523.xyz, u_xlat11.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    u_xlat11 = vec4f(((u_xlat11.xyz * x_3680.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat11.w);
    u_xlati35.x = bitcast<i32>((bitcast<u32>(x_827.unity_RenderingLayer.x) & bitcast<u32>(x_3680.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat87 = (u_xlat87 * u_xlat89);
    u_xlat89 = dot(u_xlat1.xyz, u_xlat10.xyz);
    u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
    u_xlat87 = (u_xlat87 * u_xlat89);
    u_xlat11 = vec4f(((vec3f(u_xlat87) * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * u_xlat61.xxx) + u_xlat4)).xyz, u_xlat9.w);
    u_xlat87 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat87 = max(u_xlat87, 1.17549435e-38f);
    u_xlat87 = inverseSqrt(u_xlat87);
    u_xlat9 = vec4f(((vec3f(u_xlat87) * u_xlat9.xyz)).xyz, u_xlat9.w);
    u_xlat87 = dot(u_xlat1.xyz, u_xlat9.xyz);
    u_xlat87 = clamp(u_xlat87, 0.0f, 1.0f);
    u_xlat61.x = dot(u_xlat10.xyz, u_xlat9.xyz);
    u_xlat61.x = clamp(u_xlat61.x, 0.0f, 1.0f);
    u_xlat87 = (u_xlat87 * u_xlat87);
    u_xlat87 = ((u_xlat87 * u_xlat31.x) + 1.00001001358032226562f);
    u_xlat61.x = (u_xlat61.x * u_xlat61.x);
    u_xlat87 = (u_xlat87 * u_xlat87);
    u_xlat61.x = max(u_xlat61.x, 0.10000000149011611938f);
    u_xlat87 = (u_xlat87 * u_xlat61.x);
    u_xlat87 = (u_xlat90 * u_xlat87);
    u_xlat87 = (u_xlat88 / u_xlat87);
    u_xlat9 = vec4f((((vec3f(u_xlat87) * x_3611) + u_xlat28)).xyz, u_xlat9.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * u_xlat11.xyz) + u_xlat8.xyz)).xyz, u_xlat9.w);
    if ((u_xlati35.x != 0i)) {
      x_5672 = u_xlat9.xyz;
    } else {
      x_5672 = u_xlat8.xyz;
    }
    u_xlat8 = vec4f(x_5672.xyz, u_xlat8.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu0 = (u_xlatu3.x >> 2u);
  param_21 = bitcast<i32>(u_xlatu3.x);
  param_22 = 0i;
  param_23 = 1i;
  let x_5695 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu3.x);
  param_25 = 1i;
  param_26 = 1i;
  let x_5702 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  let x_5703 = vec2i(x_5695, x_5702);
  u_xlati3 = vec4i(x_5703.x, u_xlati3.yz, x_5703.y);
  u_xlati61 = bitcast<vec2i>((bitcast<vec2u>(u_xlati3.xx) & bitcast<vec2u>(x_2630.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_5720 = ~(u_xlati3.xw);
  u_xlati35 = vec3i(x_5720.x, u_xlati35.y, x_5720.y);
  u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_2630.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati61 = bitcast<vec2i>((bitcast<vec2u>(u_xlati61) | bitcast<vec2u>(u_xlati9)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati3.w) & bitcast<u32>(u_xlati61.x)));
  u_xlati86 = bitcast<i32>((bitcast<u32>(u_xlati35.z) & bitcast<u32>(u_xlati61.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati86));
  u_xlatu9.x = u_xlatu7.x;
  u_xlatu9.y = u_xlatu31.y;
  u_xlatu65.x = 0u;
  u_xlatu65.y = u_xlatu0;
  u_xlat10 = vec4f(u_xlat8.xyz.xyz, u_xlat10.w);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu86 = (u_xlatu65.y >> 16u);
    u_xlatu3 = vec4u(u_xlatu65.x, u_xlatu3.yz, u_xlatu65.y);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb61 = (bitcast<i32>(u_xlatu3.x) == 0i);
      u_xlatu89 = (u_xlatu3.w & 65535u);
      u_xlatb89 = (u_xlatu86 >= u_xlatu89);
      u_xlatb61 = (u_xlatb89 & u_xlatb61);
      if (!(u_xlatb61)) {
        break;
      }
      param_27 = u_xlatu3.w;
      param_28 = 5i;
      param_29 = 11i;
      let x_5820 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu61 = x_5820;
      u_xlatu11 = (vec4u(u_xlatu61) + u_xlatu9.xxyy);
      let x_5828 = (u_xlatu11.yw >> x_2766);
      u_xlatu35 = vec3u(x_5828.x, u_xlatu35.y, x_5828.y);
      param_30 = bitcast<i32>(u_xlatu11.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_5838 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu11.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_5845 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu11.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_5852 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu11.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_5859 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati11 = vec4i(x_5838, x_5845, x_5852, x_5859);
      u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_2807.urp_Tiles[bitcast<i32>(u_xlatu35.x)].wy)));
      u_xlati13 = ~(u_xlati11);
      u_xlati68 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2807.urp_Tiles[bitcast<i32>(u_xlatu35.x)].zx)));
      u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati68) | bitcast<vec2u>(u_xlati12)));
      u_xlati89 = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati12.x)));
      u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati12.y)));
      u_xlati89 = bitcast<i32>((bitcast<u32>(u_xlati89) | bitcast<u32>(u_xlati35.x)));
      u_xlati11 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_2630.urp_ZBins[bitcast<i32>(u_xlatu35.z)].wy))).xy, u_xlati11.zw);
      let x_5944 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2630.urp_ZBins[bitcast<i32>(u_xlatu35.z)].zx)));
      u_xlati35 = vec3i(x_5944.x, u_xlati35.y, x_5944.y);
      let x_5954 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xz) | bitcast<vec2u>(u_xlati11.xy)));
      u_xlati35 = vec3i(x_5954.x, u_xlati35.y, x_5954.y);
      u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati11.w) & bitcast<u32>(u_xlati35.x)));
      u_xlati91 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati35.z)));
      u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati91) | bitcast<u32>(u_xlati35.x)));
      u_xlati89 = bitcast<i32>((bitcast<u32>(u_xlati89) & bitcast<u32>(u_xlati35.x)));
      u_xlati35.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu3.w) & 31i)));
      u_xlati89 = bitcast<i32>((bitcast<u32>(u_xlati89) & bitcast<u32>(u_xlati35.x)));
      u_xlati61.x = (bitcast<i32>(u_xlatu61) << bitcast<u32>(5i));
      u_xlatu61 = (u_xlatu86 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati61.x)))));
      u_xlatu61 = min(u_xlatu61, 31u);
      u_xlatu61 = (bitcast<u32>(-(bitcast<i32>(u_xlatu61))) + 31u);
      u_xlatu61 = (4294967295u >> (u_xlatu61 & 31u));
      u_xlatu3.x = (u_xlatu61 & bitcast<u32>(u_xlati89));
      u_xlati61.x = (bitcast<i32>(u_xlatu3.w) + 32i);
      u_xlatu3.w = (bitcast<u32>(u_xlati61.x) & 4294967264u);
    }
    u_xlatu65.y = u_xlatu3.w;
    if ((u_xlatu3.x == 0u)) {
      break;
    }
    u_xlati86 = (0i - bitcast<i32>(u_xlatu3.x));
    u_xlatu86 = (bitcast<u32>(u_xlati86) & u_xlatu3.x);
    u_xlat86 = f32(u_xlatu86);
    u_xlatu86 = (bitcast<u32>(u_xlat86) >> 23u);
    u_xlati86 = (bitcast<i32>(u_xlatu86) + -127i);
    u_xlati61.x = (1i << bitcast<u32>((u_xlati86 & 31i)));
    u_xlatu65.x = (u_xlatu3.x ^ bitcast<u32>(u_xlati61.x));
    u_xlati61.x = (bitcast<i32>(u_xlatu65.y) + -32i);
    u_xlati61.x = bitcast<i32>((bitcast<u32>(u_xlati61.x) & 65504u));
    u_xlati86 = (u_xlati86 + u_xlati61.x);
    u_xlati86 = (bitcast<i32>(u_xlatu35.y) + u_xlati86);
    u_xlat11 = vec4f((((-(vs_TEXCOORD0) * x_3680.x_AdditionalLightsPosition[u_xlati86].www) + x_3680.x_AdditionalLightsPosition[u_xlati86].xyz)).xyz, u_xlat11.w);
    u_xlat61.x = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat61.x = max(u_xlat61.x, 0.00006103515625f);
    u_xlat89 = inverseSqrt(u_xlat61.x);
    u_xlat12 = vec4f(((vec3f(u_xlat89) * u_xlat11.xyz)).xyz, u_xlat12.w);
    u_xlat35.x = (1.0f / u_xlat61.x);
    u_xlat61.x = (u_xlat61.x * x_3680.x_AdditionalLightsAttenuation[u_xlati86].x);
    u_xlat61.x = ((-(u_xlat61.x) * u_xlat61.x) + 1.0f);
    u_xlat61.x = max(u_xlat61.x, 0.0f);
    u_xlat61.x = (u_xlat61.x * u_xlat61.x);
    u_xlat61.x = (u_xlat61.x * u_xlat35.x);
    u_xlat35.x = dot(x_3680.x_AdditionalLightsSpotDir[u_xlati86].xyz, u_xlat12.xyz);
    u_xlat35.x = ((u_xlat35.x * x_3680.x_AdditionalLightsAttenuation[u_xlati86].z) + x_3680.x_AdditionalLightsAttenuation[u_xlati86].w);
    u_xlat35.x = clamp(u_xlat35.x, 0.0f, 1.0f);
    u_xlat35.x = (u_xlat35.x * u_xlat35.x);
    u_xlat61.x = (u_xlat61.x * u_xlat35.x);
    u_xlatb35.x = (u_xlati86 < 0i);
    u_xlati91 = i32(x_650.x_AdditionalShadowParams[u_xlati86].w);
    u_xlati35.x = select(u_xlati91, -1i, u_xlatb35.x);
    u_xlatb91 = (u_xlati35.x >= 0i);
    if (u_xlatb91) {
      u_xlatb91 = any(!((vec4f() == vec4f(x_650.x_AdditionalShadowParams[u_xlati86].z))));
      if (u_xlatb91) {
        u_xlatb13 = vec4<bool>(((abs(u_xlat12.zzyz) >= abs(u_xlat12.xyxx))).xyz.xyz, u_xlatb13.w);
        u_xlatb91 = (u_xlatb13.y & u_xlatb13.x);
        let x_6243 = ((-(u_xlat12.zyzx) < vec4f())).xyw;
        u_xlatb13 = vec4<bool>(x_6243.xy, u_xlatb13.z, x_6243.z);
        u_xlat13.x = select(4.0f, 5.0f, u_xlatb13.x);
        u_xlat13.y = select(2.0f, 3.0f, u_xlatb13.y);
        u_xlat92 = select(0.0f, 1.0f, u_xlatb13.w);
        if (u_xlatb13.z) {
          x_6259 = u_xlat13.y;
        } else {
          x_6259 = u_xlat92;
        }
        u_xlat92 = x_6259;
        if (u_xlatb91) {
          x_6268 = u_xlat13.x;
        } else {
          x_6268 = u_xlat92;
        }
        u_xlat91 = x_6268;
        u_xlati91 = i32(u_xlat91);
        u_xlati35.x = (u_xlati91 + u_xlati35.x);
      }
      u_xlati35.x = (u_xlati35.x << bitcast<u32>(2i));
      u_xlat13 = (vs_TEXCOORD0.yyyy * x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati35.x + 1i)]);
      u_xlat13 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati35.x] * vs_TEXCOORD0.xxxx) + u_xlat13);
      u_xlat13 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati35.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat13);
      u_xlat13 = (u_xlat13 + x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati35.x + 3i)]);
      u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
      u_xlatb35.x = (0.0f < x_650.x_AdditionalShadowParams[u_xlati86].y);
      if (u_xlatb35.x) {
        u_xlatb35.x = (1.0f == x_650.x_AdditionalShadowParams[u_xlati86].y);
        if (u_xlatb35.x) {
          u_xlat14 = (u_xlat13.xyxy + x_650.x_AdditionalShadowOffset0);
          let x_6353 = u_xlat14.xy;
          txVec60 = vec3f(x_6353.x, x_6353.y, u_xlat13.z);
          u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_6368 = u_xlat14.zw;
          txVec61 = vec3f(x_6368.x, x_6368.y, u_xlat13.z);
          u_xlat15.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat14 = (u_xlat13.xyxy + x_650.x_AdditionalShadowOffset1);
          let x_6388 = u_xlat14.xy;
          txVec62 = vec3f(x_6388.x, x_6388.y, u_xlat13.z);
          u_xlat15.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_6403 = u_xlat14.zw;
          txVec63 = vec3f(x_6403.x, x_6403.y, u_xlat13.z);
          u_xlat15.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat35.x = dot(u_xlat15, x_1060);
        } else {
          u_xlatb91 = (2.0f == x_650.x_AdditionalShadowParams[u_xlati86].y);
          if (u_xlatb91) {
            u_xlat14 = vec4f((((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.zw) + x_1077)).xy, u_xlat14.zw);
            u_xlat14 = vec4f(floor(u_xlat14.xy).xy, u_xlat14.zw);
            u_xlat70 = ((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.zw) + -(u_xlat14.xy));
            u_xlat15 = (u_xlat70.xxyy + x_1100);
            u_xlat16 = (u_xlat15.xxzz * u_xlat15.xxzz);
            let x_6461 = (u_xlat16.yw * x_1111);
            u_xlat15 = vec4f(x_6461.x, u_xlat15.y, x_6461.y, u_xlat15.w);
            u_xlat16 = vec4f((((u_xlat16.xz * x_1077) + -(u_xlat70))).xy, u_xlat16.zw);
            u_xlat72 = (-(u_xlat70) + x_902);
            u_xlat17 = vec4f(min(u_xlat70, vec2f()).xy, u_xlat17.zw);
            u_xlat17 = vec4f((((-(u_xlat17.xy) * u_xlat17.xy) + u_xlat72)).xy, u_xlat17.zw);
            u_xlat70 = max(u_xlat70, vec2f());
            u_xlat70 = ((-(u_xlat70) * u_xlat70) + u_xlat15.yw);
            u_xlat17 = vec4f(((u_xlat17.xy + x_902)).xy, u_xlat17.zw);
            u_xlat70 = (u_xlat70 + x_902);
            u_xlat18 = vec4f(((u_xlat16.xy * x_1163)).xy, u_xlat18.zw);
            u_xlat16 = vec4f(((u_xlat72 * x_1163)).xy, u_xlat16.zw);
            u_xlat17 = vec4f(((u_xlat17.xy * x_1163)).xy, u_xlat17.zw);
            u_xlat19 = vec4f(((u_xlat70 * x_1163)).xy, u_xlat19.zw);
            u_xlat70 = (u_xlat15.yw * x_1163);
            u_xlat18.z = u_xlat17.x;
            u_xlat18.w = u_xlat70.x;
            u_xlat16.z = u_xlat19.x;
            u_xlat16.w = u_xlat15.x;
            u_xlat20 = (u_xlat16.zwxz + u_xlat18.zwxz);
            u_xlat17.z = u_xlat18.y;
            u_xlat17.w = u_xlat70.y;
            u_xlat19.z = u_xlat16.y;
            u_xlat19.w = u_xlat15.z;
            u_xlat15 = vec4f(((u_xlat17.zyw + u_xlat19.zyw)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xzw / u_xlat20.zwy)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_1233)).xyz, u_xlat16.w);
            u_xlat17 = vec4f(((u_xlat19.zyw / u_xlat15.xyz)).xyz, u_xlat17.w);
            u_xlat17 = vec4f(((u_xlat17.xyz + x_1233)).xyz, u_xlat17.w);
            u_xlat16 = vec4f(((u_xlat16.yxz * x_650.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat16.w);
            u_xlat17 = vec4f(((u_xlat17.xyz * x_650.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat17.w);
            u_xlat16.w = u_xlat17.x;
            u_xlat18 = ((u_xlat14.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.ywxw);
            u_xlat70 = ((u_xlat14.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat16.zw);
            u_xlat17.w = u_xlat16.y;
            let x_6627 = u_xlat17.yz;
            u_xlat16 = vec4f(u_xlat16.x, x_6627.x, u_xlat16.z, x_6627.y);
            u_xlat19 = ((u_xlat14.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat17 = ((u_xlat14.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat17.wywz);
            u_xlat16 = ((u_xlat14.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xwzw);
            u_xlat21 = (u_xlat15.xxxy * u_xlat20.zwyz);
            u_xlat22 = (u_xlat15.yyzz * u_xlat20);
            u_xlat91 = (u_xlat15.z * u_xlat20.y);
            let x_6673 = u_xlat18.xy;
            txVec64 = vec3f(x_6673.x, x_6673.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_6687 = u_xlat18.zw;
            txVec65 = vec3f(x_6687.x, x_6687.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat94 = (u_xlat94 * u_xlat21.y);
            u_xlat92 = ((u_xlat21.x * u_xlat92) + u_xlat94);
            txVec66 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat92 = ((u_xlat21.z * u_xlat94) + u_xlat92);
            let x_6730 = u_xlat17.xy;
            txVec67 = vec3f(x_6730.x, x_6730.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat92 = ((u_xlat21.w * u_xlat94) + u_xlat92);
            let x_6750 = u_xlat19.xy;
            txVec68 = vec3f(x_6750.x, x_6750.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat92 = ((u_xlat22.x * u_xlat94) + u_xlat92);
            let x_6770 = u_xlat19.zw;
            txVec69 = vec3f(x_6770.x, x_6770.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat92 = ((u_xlat22.y * u_xlat94) + u_xlat92);
            let x_6790 = u_xlat17.zw;
            txVec70 = vec3f(x_6790.x, x_6790.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat92 = ((u_xlat22.z * u_xlat94) + u_xlat92);
            let x_6810 = u_xlat16.xy;
            txVec71 = vec3f(x_6810.x, x_6810.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat92 = ((u_xlat22.w * u_xlat94) + u_xlat92);
            let x_6830 = u_xlat16.zw;
            txVec72 = vec3f(x_6830.x, x_6830.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat35.x = ((u_xlat91 * u_xlat94) + u_xlat92);
          } else {
            u_xlat14 = vec4f((((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.zw) + x_1077)).xy, u_xlat14.zw);
            u_xlat14 = vec4f(floor(u_xlat14.xy).xy, u_xlat14.zw);
            u_xlat70 = ((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.zw) + -(u_xlat14.xy));
            u_xlat15 = (u_xlat70.xxyy + x_1100);
            u_xlat16 = (u_xlat15.xxzz * u_xlat15.xxzz);
            let x_6883 = (u_xlat16.yw * x_1567);
            u_xlat17 = vec4f(u_xlat17.x, x_6883.x, u_xlat17.z, x_6883.y);
            let x_6891 = ((u_xlat16.xz * x_1077) + -(u_xlat70));
            u_xlat15 = vec4f(x_6891.x, u_xlat15.y, x_6891.y, u_xlat15.w);
            u_xlat16 = vec4f(((-(u_xlat70) + x_902)).xy, u_xlat16.zw);
            u_xlat72 = min(u_xlat70, vec2f());
            u_xlat16 = vec4f((((-(u_xlat72) * u_xlat72) + u_xlat16.xy)).xy, u_xlat16.zw);
            u_xlat72 = max(u_xlat70, vec2f());
            let x_6919 = ((-(u_xlat72) * u_xlat72) + u_xlat15.yw);
            u_xlat43 = vec3f(x_6919.x, u_xlat43.y, x_6919.y);
            u_xlat16 = vec4f(((u_xlat16.xy + x_1609)).xy, u_xlat16.zw);
            let x_6929 = (u_xlat43.xz + x_1609);
            u_xlat15 = vec4f(u_xlat15.x, x_6929.x, u_xlat15.z, x_6929.y);
            u_xlat18.z = (u_xlat15.y * 0.08163200318813323975f);
            u_xlat19 = vec4f(((u_xlat15.zxw * x_1625)).xyz, u_xlat19.w);
            u_xlat15 = vec4f(((u_xlat16.xy * x_1631)).xy, u_xlat15.zw);
            u_xlat18.x = u_xlat19.y;
            let x_6952 = ((u_xlat70.xx * x_1641) + x_1644);
            u_xlat18 = vec4f(u_xlat18.x, x_6952.x, u_xlat18.z, x_6952.y);
            let x_6958 = ((u_xlat70.xx * x_1641) + x_1651);
            u_xlat16 = vec4f(x_6958.x, u_xlat16.y, x_6958.y, u_xlat16.w);
            u_xlat16.y = u_xlat15.x;
            u_xlat16.w = u_xlat17.y;
            u_xlat18 = (u_xlat16 + u_xlat18);
            let x_6973 = ((u_xlat70.yy * x_1641) + x_1644);
            u_xlat19 = vec4f(u_xlat19.x, x_6973.x, u_xlat19.z, x_6973.y);
            let x_6979 = ((u_xlat70.yy * x_1641) + x_1651);
            u_xlat17 = vec4f(x_6979.x, u_xlat17.y, x_6979.y, u_xlat17.w);
            u_xlat17.y = u_xlat15.y;
            u_xlat15 = (u_xlat17 + u_xlat19);
            u_xlat16 = (u_xlat16 / u_xlat18);
            u_xlat16 = (u_xlat16 + x_1689);
            u_xlat17 = (u_xlat17 / u_xlat15);
            u_xlat17 = (u_xlat17 + x_1689);
            u_xlat16 = (u_xlat16.wxyz * x_650.x_AdditionalShadowmapSize.xxxx);
            u_xlat17 = (u_xlat17.xwyz * x_650.x_AdditionalShadowmapSize.yyyy);
            let x_7011 = u_xlat16.yzw;
            u_xlat19 = vec4f(x_7011.x, u_xlat19.y, x_7011.yz);
            u_xlat19.y = u_xlat17.x;
            u_xlat20 = ((u_xlat14.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat70 = ((u_xlat14.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat19.wy);
            u_xlat16.y = u_xlat19.y;
            u_xlat19.y = u_xlat17.z;
            u_xlat21 = ((u_xlat14.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat22 = vec4f((((u_xlat14.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat19.wy)).xy, u_xlat22.zw);
            u_xlat16.z = u_xlat19.y;
            u_xlat23 = ((u_xlat14.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyxz);
            u_xlat19.y = u_xlat17.w;
            u_xlat24 = ((u_xlat14.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat44 = ((u_xlat14.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat19.wy);
            u_xlat16.w = u_xlat19.y;
            u_xlat78 = ((u_xlat14.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat16.xw);
            let x_7109 = u_xlat19.xzw;
            u_xlat17 = vec4f(x_7109.x, u_xlat17.y, x_7109.yz);
            u_xlat19 = ((u_xlat14.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyzy);
            u_xlat73 = ((u_xlat14.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat17.wy);
            u_xlat17.x = u_xlat16.x;
            u_xlat14 = vec4f((((u_xlat14.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat17.xy)).xy, u_xlat14.zw);
            u_xlat25 = (u_xlat15.xxxx * u_xlat18);
            u_xlat26 = (u_xlat15.yyyy * u_xlat18);
            u_xlat27 = (u_xlat15.zzzz * u_xlat18);
            u_xlat15 = (u_xlat15.wwww * u_xlat18);
            let x_7165 = u_xlat20.xy;
            txVec73 = vec3f(x_7165.x, x_7165.y, u_xlat13.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_7179 = u_xlat20.zw;
            txVec74 = vec3f(x_7179.x, x_7179.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat92 = (u_xlat92 * u_xlat25.y);
            u_xlat91 = ((u_xlat25.x * u_xlat91) + u_xlat92);
            txVec75 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat91 = ((u_xlat25.z * u_xlat92) + u_xlat91);
            let x_7222 = u_xlat23.xy;
            txVec76 = vec3f(x_7222.x, x_7222.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat91 = ((u_xlat25.w * u_xlat92) + u_xlat91);
            let x_7242 = u_xlat21.xy;
            txVec77 = vec3f(x_7242.x, x_7242.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat91 = ((u_xlat26.x * u_xlat92) + u_xlat91);
            let x_7262 = u_xlat21.zw;
            txVec78 = vec3f(x_7262.x, x_7262.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat91 = ((u_xlat26.y * u_xlat92) + u_xlat91);
            let x_7282 = u_xlat22.xy;
            txVec79 = vec3f(x_7282.x, x_7282.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat91 = ((u_xlat26.z * u_xlat92) + u_xlat91);
            let x_7302 = u_xlat23.zw;
            txVec80 = vec3f(x_7302.x, x_7302.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat91 = ((u_xlat26.w * u_xlat92) + u_xlat91);
            let x_7322 = u_xlat24.xy;
            txVec81 = vec3f(x_7322.x, x_7322.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat91 = ((u_xlat27.x * u_xlat92) + u_xlat91);
            let x_7342 = u_xlat24.zw;
            txVec82 = vec3f(x_7342.x, x_7342.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat91 = ((u_xlat27.y * u_xlat92) + u_xlat91);
            txVec83 = vec3f(u_xlat44.x, u_xlat44.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat91 = ((u_xlat27.z * u_xlat92) + u_xlat91);
            txVec84 = vec3f(u_xlat78.x, u_xlat78.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat91 = ((u_xlat27.w * u_xlat92) + u_xlat91);
            let x_7400 = u_xlat19.xy;
            txVec85 = vec3f(x_7400.x, x_7400.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat91 = ((u_xlat15.x * u_xlat92) + u_xlat91);
            let x_7420 = u_xlat19.zw;
            txVec86 = vec3f(x_7420.x, x_7420.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat91 = ((u_xlat15.y * u_xlat92) + u_xlat91);
            txVec87 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat91 = ((u_xlat15.z * u_xlat92) + u_xlat91);
            let x_7459 = u_xlat14.xy;
            txVec88 = vec3f(x_7459.x, x_7459.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat35.x = ((u_xlat15.w * u_xlat92) + u_xlat91);
          }
        }
      } else {
        let x_7481 = u_xlat13.xy;
        txVec89 = vec3f(x_7481.x, x_7481.y, u_xlat13.z);
        u_xlat35.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat91 = (1.0f + -(x_650.x_AdditionalShadowParams[u_xlati86].x));
      u_xlat35.x = ((u_xlat35.x * x_650.x_AdditionalShadowParams[u_xlati86].x) + u_xlat91);
      u_xlatb91 = (0.0f >= u_xlat13.z);
      u_xlatb92 = (u_xlat13.z >= 1.0f);
      u_xlatb91 = (u_xlatb91 | u_xlatb92);
      if (u_xlatb91) {
        x_7519 = 1.0f;
      } else {
        x_7519 = u_xlat35.x;
      }
      u_xlat35.x = x_7519;
    } else {
      u_xlat35.x = 1.0f;
    }
    u_xlat91 = (-(u_xlat35.x) + 1.0f);
    u_xlat35.x = ((u_xlat85 * u_xlat91) + u_xlat35.x);
    u_xlati91 = (1i << bitcast<u32>((u_xlati86 & 31i)));
    u_xlati91 = bitcast<i32>((bitcast<u32>(u_xlati91) & bitcast<u32>(x_2307.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati91 != 0i)) {
      u_xlati91 = i32(x_2307.x_AdditionalLightsLightTypes[u_xlati86].el);
      u_xlati92 = select(1i, 0i, (u_xlati91 != 0i));
      u_xlati94 = (u_xlati86 << bitcast<u32>(2i));
      if ((u_xlati92 != 0i)) {
        u_xlat13 = vec4f(((vs_TEXCOORD0.yyy * x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 1i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati94].xyw * vs_TEXCOORD0.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 3i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xy / u_xlat13.zz)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((u_xlat13.xy * x_1077) + x_1077)).xy, u_xlat13.zw);
        u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((x_2307.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].xy * u_xlat13.xy) + x_2307.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].zw)).xy, u_xlat13.zw);
      } else {
        u_xlatb91 = (u_xlati91 == 1i);
        u_xlati91 = select(0i, 1i, u_xlatb91);
        if ((u_xlati91 != 0i)) {
          u_xlat69 = (vs_TEXCOORD0.yy * x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 1i)].xy);
          u_xlat69 = ((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati94].xy * vs_TEXCOORD0.xx) + u_xlat69);
          u_xlat69 = ((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat69);
          u_xlat69 = (u_xlat69 + x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 3i)].xy);
          u_xlat69 = ((u_xlat69 * x_1077) + x_1077);
          u_xlat69 = fract(u_xlat69);
          u_xlat13 = vec4f((((x_2307.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].xy * u_xlat69) + x_2307.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].zw)).xy, u_xlat13.zw);
        } else {
          u_xlat14 = (vs_TEXCOORD0.yyyy * x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 1i)]);
          u_xlat14 = ((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati94] * vs_TEXCOORD0.xxxx) + u_xlat14);
          u_xlat14 = ((x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat14);
          u_xlat14 = (u_xlat14 + x_2307.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 3i)]);
          u_xlat14 = vec4f(((u_xlat14.xyz / u_xlat14.www)).xyz, u_xlat14.w);
          u_xlat91 = dot(u_xlat14.xyz, u_xlat14.xyz);
          u_xlat91 = inverseSqrt(u_xlat91);
          u_xlat14 = vec4f(((vec3f(u_xlat91) * u_xlat14.xyz)).xyz, u_xlat14.w);
          u_xlat91 = dot(abs(u_xlat14.xyz), x_3221);
          u_xlat91 = max(u_xlat91, 0.00000099999999747524f);
          u_xlat91 = (1.0f / u_xlat91);
          u_xlat15 = vec4f(((vec3f(u_xlat91) * u_xlat14.zxy)).xyz, u_xlat15.w);
          u_xlat15.x = -(u_xlat15.x);
          u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
          u_xlatb69 = ((u_xlat15.yzyz >= vec4f())).xy;
          if (u_xlatb69.x) {
            x_7789 = u_xlat15.x;
          } else {
            x_7789 = -(u_xlat15.x);
          }
          u_xlat69.x = x_7789;
          if (u_xlatb69.y) {
            x_7802 = u_xlat15.x;
          } else {
            x_7802 = -(u_xlat15.x);
          }
          u_xlat69.y = x_7802;
          u_xlat69 = ((u_xlat14.xy * vec2f(u_xlat91)) + u_xlat69);
          u_xlat69 = ((u_xlat69 * x_1077) + x_1077);
          u_xlat69 = clamp(u_xlat69, vec2f(0.0f), vec2f(1.0f));
          u_xlat13 = vec4f((((x_2307.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].xy * u_xlat69) + x_2307.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].zw)).xy, u_xlat13.zw);
        }
      }
      u_xlat13 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat13.xy, 0.0f);
      if (u_xlatb5.y) {
        x_7848 = u_xlat13.w;
      } else {
        x_7848 = u_xlat13.x;
      }
      u_xlat91 = x_7848;
      if (u_xlatb5.x) {
        x_7859 = u_xlat13.xyz;
      } else {
        x_7859 = vec3f(u_xlat91);
      }
      u_xlat13 = vec4f(x_7859.xyz, u_xlat13.w);
    } else {
      u_xlat13.x = 1.0f;
      u_xlat13.y = 1.0f;
      u_xlat13.z = 1.0f;
    }
    u_xlat13 = vec4f(((u_xlat13.xyz * x_3680.x_AdditionalLightsColor[u_xlati86].xyz)).xyz, u_xlat13.w);
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_827.unity_RenderingLayer.x) & bitcast<u32>(x_3680.x_AdditionalLightsLayerMasks[u_xlati86].el)));
    u_xlat61.x = (u_xlat61.x * u_xlat35.x);
    u_xlat35.x = dot(u_xlat1.xyz, u_xlat12.xyz);
    u_xlat35.x = clamp(u_xlat35.x, 0.0f, 1.0f);
    u_xlat61.x = (u_xlat61.x * u_xlat35.x);
    u_xlat13 = vec4f(((u_xlat61.xxx * u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * vec3f(u_xlat89)) + u_xlat4)).xyz, u_xlat11.w);
    u_xlat61.x = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat61.x = max(u_xlat61.x, 1.17549435e-38f);
    u_xlat61.x = inverseSqrt(u_xlat61.x);
    u_xlat11 = vec4f(((u_xlat61.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat61.x = dot(u_xlat1.xyz, u_xlat11.xyz);
    u_xlat61.x = clamp(u_xlat61.x, 0.0f, 1.0f);
    u_xlat61.y = dot(u_xlat12.xyz, u_xlat11.xyz);
    u_xlat61.y = clamp(u_xlat61.y, 0.0f, 1.0f);
    u_xlat61 = (u_xlat61 * u_xlat61);
    u_xlat61.x = ((u_xlat61.x * u_xlat31.x) + 1.00001001358032226562f);
    u_xlat61.x = (u_xlat61.x * u_xlat61.x);
    u_xlat89 = max(u_xlat61.y, 0.10000000149011611938f);
    u_xlat61.x = (u_xlat89 * u_xlat61.x);
    u_xlat61.x = (u_xlat90 * u_xlat61.x);
    u_xlat61.x = (u_xlat88 / u_xlat61.x);
    u_xlat11 = vec4f((((u_xlat61.xxx * x_3611) + u_xlat28)).xyz, u_xlat11.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * u_xlat13.xyz) + u_xlat10.xyz)).xyz, u_xlat11.w);
    if ((u_xlati86 != 0i)) {
      x_8024 = u_xlat11.xyz;
    } else {
      x_8024 = u_xlat10.xyz;
    }
    u_xlat10 = vec4f(x_8024.xyz, u_xlat10.w);
  }
  u_xlat0 = (u_xlat2 + u_xlat6.xyz);
  SV_Target0 = vec4f(((u_xlat10.xyz + u_xlat0)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FrontFacing = gl_FrontFacing_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

