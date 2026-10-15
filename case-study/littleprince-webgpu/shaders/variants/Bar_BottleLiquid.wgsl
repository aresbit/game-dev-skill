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

@group(1) @binding(8) var<uniform> x_64 : VGlobals;

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
  x_MainLightPosition : vec4f,
  /* @offset(48) */
  x_MainLightColor : vec4f,
  /* @offset(64) */
  x_MainLightLayerMask : u32,
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

alias Arr_9 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_9,
}

alias Arr_10 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_10,
}

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 32u>;

alias Arr_14 = array<vec4f, 224u>;

alias Arr_15 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_11,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_12,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_13,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_14,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_15,
}

alias Arr_16 = array<vec4f, 32u>;

alias Arr_17 = array<vec4f, 32u>;

alias Arr_18 = array<vec4f, 32u>;

alias Arr_19 = array<vec4f, 32u>;

alias Arr_20 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_21 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_16,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_17,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_18,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_19,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_20,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_21,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(7) var<uniform> x_77 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

@group(1) @binding(0) var<uniform> x_601 : PGlobals;

@group(1) @binding(6) var<uniform> x_649 : LightShadows;

@group(1) @binding(5) var<uniform> x_826 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_2467 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2655 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2901 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(5) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3521 : AdditionalLights;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

const x_901 = vec2f(1.0f);

const x_1053 = vec4f(0.25f);

const x_1069 = vec2f(0.5f);

const x_1092 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1103 = vec2f(0.07999999821186065674f);

const x_1155 = vec2f(0.15999999642372131348f);

const x_1225 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1558 = vec2f(0.04081600159406661987f);

const x_1600 = vec2f(2.0f);

const x_1616 = vec3f(0.08163200318813323975f);

const x_1622 = vec2f(0.08163200318813323975f);

const x_1632 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1635 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1642 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1680 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2614 = vec2u(2u);

const x_3470 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlatb27 : bool;
  var u_xlat27 : vec3f;
  var u_xlat1 : vec4f;
  var x_135 : vec3f;
  var x_149 : vec3f;
  var u_xlatb2 : bool;
  var u_xlati2 : i32;
  var x_168 : i32;
  var u_xlat2 : vec3f;
  var u_xlat29 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat58 : f32;
  var u_xlat31 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat57 : f32;
  var u_xlat30 : vec3f;
  var u_xlatb56 : bool;
  var u_xlat83 : f32;
  var x_548 : f32;
  var u_xlatb0 : bool;
  var x_623 : vec3f;
  var u_xlat8 : vec4f;
  var u_xlatb5 : vec4<bool>;
  var u_xlat84 : f32;
  var u_xlatu84 : u32;
  var u_xlati84 : i32;
  var u_xlat82 : f32;
  var u_xlat85 : f32;
  var u_xlat86 : f32;
  var u_xlat87 : f32;
  var u_xlatb34 : bool;
  var txVec0 : vec3f;
  var u_xlat9 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlat34 : f32;
  var u_xlatb88 : bool;
  var u_xlat62 : vec2f;
  var u_xlat10 : vec4f;
  var u_xlat64 : vec2f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat88 : f32;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat35 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat36 : vec3f;
  var u_xlat17 : vec4f;
  var u_xlat18 : vec4f;
  var u_xlat37 : vec2f;
  var u_xlat70 : vec2f;
  var u_xlat65 : vec2f;
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
  var u_xlatb32 : bool;
  var u_xlatb59 : bool;
  var x_2241 : f32;
  var u_xlat32 : f32;
  var u_xlat59 : f32;
  var u_xlatu7 : vec2u;
  var u_xlatu61 : vec2u;
  var u_xlati7 : i32;
  var x_2378 : f32;
  var u_xlatu0 : u32;
  var u_xlatu3 : vec4u;
  var u_xlati30 : i32;
  var u_xlatu30 : vec2u;
  var u_xlati34 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec3i;
  var u_xlati62 : vec2i;
  var u_xlati0 : i32;
  var u_xlatu34 : vec3u;
  var u_xlatb8 : vec3<bool>;
  var u_xlatu10 : vec4u;
  var u_xlati64 : i32;
  var u_xlatu91 : u32;
  var u_xlatu88 : u32;
  var u_xlati89 : i32;
  var u_xlatu90 : u32;
  var u_xlatb92 : bool;
  var u_xlatu12 : vec4u;
  var u_xlatb12 : vec4<bool>;
  var u_xlatu92 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec2u;
  var u_xlati12 : vec4i;
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
  var u_xlati67 : vec2i;
  var u_xlati14 : vec4i;
  var u_xlati15 : vec2i;
  var u_xlati13 : vec3i;
  var u_xlati39 : vec2i;
  var u_xlati66 : i32;
  var u_xlati92 : i32;
  var u_xlati88 : i32;
  var u_xlat92 : f32;
  var u_xlat39 : vec3f;
  var x_2964 : f32;
  var x_2978 : f32;
  var x_2992 : f32;
  var x_3043 : vec3f;
  var u_xlatu93 : u32;
  var u_xlat93 : f32;
  var u_xlat40 : vec3f;
  var u_xlatb67 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_3107 : f32;
  var x_3120 : f32;
  var u_xlat66 : f32;
  var u_xlatu66 : u32;
  var x_3480 : vec3f;
  var u_xlatu_loop_1 : u32;
  var u_xlatb10 : vec4<bool>;
  var u_xlat89 : f32;
  var x_3668 : f32;
  var x_3677 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var u_xlat67 : vec2f;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat90 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat73 : vec2f;
  var u_xlat68 : vec2f;
  var u_xlat22 : vec4f;
  var u_xlat23 : vec4f;
  var u_xlat24 : vec4f;
  var txVec43 : vec3f;
  var txVec44 : vec3f;
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
  var u_xlatb89 : bool;
  var x_5057 : vec3f;
  var u_xlati3 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati83 : i32;
  var u_xlatu8 : vec2u;
  var u_xlatu62 : vec2u;
  var u_xlatu83 : u32;
  var u_xlatb86 : bool;
  var u_xlatu86 : u32;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlati10 : vec4i;
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
  var u_xlati11 : vec2i;
  var u_xlati65 : vec2i;
  var u_xlati90 : i32;
  var u_xlati86 : i32;
  var u_xlatb90 : bool;
  var u_xlat91 : f32;
  var x_5608 : f32;
  var x_5617 : f32;
  var txVec60 : vec3f;
  var txVec61 : vec3f;
  var txVec62 : vec3f;
  var txVec63 : vec3f;
  var u_xlat69 : vec2f;
  var txVec64 : vec3f;
  var txVec65 : vec3f;
  var txVec66 : vec3f;
  var txVec67 : vec3f;
  var txVec68 : vec3f;
  var txVec69 : vec3f;
  var txVec70 : vec3f;
  var txVec71 : vec3f;
  var txVec72 : vec3f;
  var u_xlat41 : vec3f;
  var u_xlat42 : vec2f;
  var u_xlat75 : vec2f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec4f;
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
  var u_xlatb91 : bool;
  var x_6975 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(x_77.x_FillPlane.xyz, vs_TEXCOORD0);
  u_xlat0.x = (u_xlat0.x + -(x_77.x_FillPlane.w));
  u_xlatb27 = (-(u_xlat0.x) < 0.0f);
  if (((select(0i, 1i, u_xlatb27) * -1i) != 0i)) {
    discard;
  }
  u_xlat27.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat27.x = inverseSqrt(u_xlat27.x);
  u_xlat27 = (u_xlat27.xxx * vs_TEXCOORD1);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_135 = u_xlat27;
  } else {
    x_135 = x_77.x_FillPlane.xyz;
  }
  u_xlat1 = vec4f(x_135.xyz, u_xlat1.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_149 = x_77.x_BaseColor.xyz;
  } else {
    x_149 = x_77.x_TopColor.xyz;
  }
  u_xlat27 = x_149;
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
    u_xlat29.x = (x_77.x_BubbleSpeed * x_77.x_BubbleTime);
    u_xlat29 = ((-(x_77.x_FillPlane.xyz) * u_xlat29.xxx) + vs_TEXCOORD0);
    let x_223 = vec3f(x_77.x_BubbleScale, x_77.x_BubbleScale, x_77.x_BubbleScale);
    u_xlat29 = (u_xlat29 * vec3f(x_223.x, x_223.y, x_223.z));
    u_xlat3 = floor(u_xlat29.yxzy);
    u_xlat29 = fract(u_xlat29);
    u_xlat4 = vec3f((((u_xlat3.ww * vec2f(17.3099994659423828125f)) + u_xlat3.yz)).xy, u_xlat4.z);
    u_xlat4 = vec3f(((u_xlat4.xy * x_250)).xy, u_xlat4.z);
    u_xlat4 = vec3f(fract(u_xlat4.xy).xy, u_xlat4.z);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat58 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec3f(((vec2f(u_xlat58) + u_xlat4.xy)).xy, u_xlat4.z);
    u_xlat31.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat31.x);
    u_xlat5 = (u_xlat3 + vec4f(7.09999990463256835938f, 7.09999990463256835938f, 3.70000004768371582031f, 3.70000004768371582031f));
    u_xlat5 = (u_xlat5 * vec4f(0.10310000181198120117f));
    u_xlat5 = fract(u_xlat5);
    u_xlat6 = (u_xlat5 + vec4f(33.3300018310546875f));
    u_xlat3.x = dot(u_xlat5.yxy, u_xlat6.xyy);
    u_xlat31 = vec3f(((u_xlat3.xx + u_xlat5.yx)).xy, u_xlat31.z);
    u_xlat3.x = (u_xlat31.y + u_xlat31.x);
    u_xlat3.x = (u_xlat31.x * u_xlat3.x);
    u_xlat7.x = fract(u_xlat3.x);
    u_xlat3.x = dot(u_xlat5.wzw, u_xlat6.zww);
    u_xlat31 = vec3f(((u_xlat3.xx + u_xlat5.wz)).xy, u_xlat31.z);
    u_xlat3.x = (u_xlat31.y + u_xlat31.x);
    u_xlat3.x = (u_xlat31.x * u_xlat3.x);
    u_xlat7.y = fract(u_xlat3.x);
    u_xlat31 = vec3f(((u_xlat3.zy + vec2f(5.30000019073486328125f))).xy, u_xlat31.z);
    u_xlat4 = vec3f(u_xlat4.x, ((u_xlat31.xy * x_250)).xy);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.zyy + x_263)).xyz, u_xlat5.w);
    u_xlat3.x = dot(u_xlat4.yzy, u_xlat5.xyz);
    u_xlat31 = vec3f(((u_xlat3.xx + u_xlat4.yz)).xy, u_xlat31.z);
    u_xlat3.x = (u_xlat31.y + u_xlat31.x);
    u_xlat3.x = (u_xlat31.x * u_xlat3.x);
    u_xlat7.z = fract(u_xlat3.x);
    u_xlat31 = ((u_xlat7.xyz * vec3f(0.5f)) + vec3f(0.25f));
    u_xlat3 = vec4f(((u_xlat3.ww + u_xlat3.yz)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + vec2f(1.29999995231628417969f))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_250)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat57 = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((vec2f(u_xlat57) + u_xlat3.xy)).xy, u_xlat3.zw);
    u_xlat30.x = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat30.x);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat3.x = ((u_xlat3.x * 0.1799999922513961792f) + 0.20000000298023223877f);
    u_xlat29 = (u_xlat29 + -(u_xlat31));
    u_xlat29.x = dot(u_xlat29, u_xlat29);
    u_xlat29.x = sqrt(u_xlat29.x);
    u_xlatb56 = (u_xlat4.x < 0.25999999046325683594f);
    u_xlat83 = (u_xlat3.x * -0.30000001192092895508f);
    u_xlat29.x = (-(u_xlat3.x) + u_xlat29.x);
    u_xlat83 = (1.0f / u_xlat83);
    u_xlat29.x = (u_xlat83 * u_xlat29.x);
    u_xlat29.x = clamp(u_xlat29.x, 0.0f, 1.0f);
    u_xlat83 = ((u_xlat29.x * -2.0f) + 3.0f);
    u_xlat29.x = (u_xlat29.x * u_xlat29.x);
    u_xlat29.x = (u_xlat29.x * u_xlat83);
    if (u_xlatb56) {
      x_548 = u_xlat29.x;
    } else {
      x_548 = 0.0f;
    }
    u_xlat29.x = x_548;
    u_xlat29.x = (u_xlat29.x * x_77.x_Glug);
    u_xlat2.x = (u_xlat2.x * u_xlat29.x);
    u_xlat0.x = (u_xlat0.x * -150.0f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat2 = (-(u_xlat27) + x_77.x_BubbleColor.xyz);
    u_xlat27 = ((u_xlat0.xxx * u_xlat2) + u_xlat27);
  }
  u_xlatb0 = (x_601.unity_OrthoParams.w == 0.0f);
  u_xlat2 = (-(vs_TEXCOORD0) + x_601.x_WorldSpaceCameraPos);
  u_xlat3.x = x_601.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat3.y = x_601.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat3.z = x_601.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_623 = u_xlat2;
  } else {
    x_623 = u_xlat3.xyz;
  }
  u_xlat2 = x_623;
  u_xlat83 = dot(u_xlat2, u_xlat2);
  u_xlat83 = inverseSqrt(u_xlat83);
  u_xlat4 = (vec3f(u_xlat83) * u_xlat2);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_649.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_649.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_649.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_649.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat8.w);
  u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlatb5 = (u_xlat5 < x_649.x_CascadeShadowSplitSphereRadii);
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb5.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb5.y);
  u_xlat6.z = select(0.0f, 1.0f, u_xlatb5.z);
  u_xlat6.w = select(0.0f, 1.0f, u_xlatb5.w);
  u_xlat5.x = select(-0.0f, -1.0f, u_xlatb5.x);
  u_xlat5.y = select(-0.0f, -1.0f, u_xlatb5.y);
  u_xlat5.z = select(-0.0f, -1.0f, u_xlatb5.z);
  u_xlat5 = vec4f(((u_xlat5.xyz + u_xlat6.yzw)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(u_xlat6.x, max(u_xlat5.xyz, vec3f()).xyz);
  u_xlat84 = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat84 = (-(u_xlat84) + 4.0f);
  u_xlatu84 = u32(u_xlat84);
  u_xlati84 = (bitcast<i32>(u_xlatu84) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_649.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati84 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_649.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati84].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_649.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati84 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_649.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati84 + 3i)].xyz)).xyz, u_xlat5.w);
  u_xlat1.w = 1.0f;
  u_xlat6.x = dot(x_826.unity_SHAr, u_xlat1);
  u_xlat6.y = dot(x_826.unity_SHAg, u_xlat1);
  u_xlat6.z = dot(x_826.unity_SHAb, u_xlat1);
  u_xlat7 = (u_xlat1.yzzx * u_xlat1.xyzz);
  u_xlat8.x = dot(x_826.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_826.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_826.unity_SHBb, u_xlat7);
  u_xlat82 = (u_xlat1.y * u_xlat1.y);
  u_xlat82 = ((u_xlat1.x * u_xlat1.x) + -(u_xlat82));
  u_xlat7 = vec4f((((x_826.unity_SHC.xyz * vec3f(u_xlat82)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_904 = x_601.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((x_901 / vec2f(x_904.x, x_904.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat82 = ((u_xlat7.y * x_601.x_ScaleBiasRt.x) + x_601.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat82) + 1.0f);
  u_xlat27 = (u_xlat27 * vec3f(0.95999997854232788086f));
  u_xlat82 = (-(x_77.x_Smoothness) + 1.0f);
  u_xlat84 = (u_xlat82 * u_xlat82);
  u_xlat84 = max(u_xlat84, 0.0078125f);
  u_xlat85 = (u_xlat84 * u_xlat84);
  u_xlat86 = (x_77.x_Smoothness + 0.04000002145767211914f);
  u_xlat86 = clamp(u_xlat86, 0.0f, 1.0f);
  u_xlat87 = ((u_xlat84 * 4.0f) + 2.0f);
  u_xlatb34 = (0.0f < x_649.x_MainLightShadowParams.y);
  if (u_xlatb34) {
    u_xlatb34 = (x_649.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb34) {
      u_xlat8 = (u_xlat5.xyxy + x_649.x_MainLightShadowOffset0);
      let x_980 = u_xlat8.xy;
      txVec0 = vec3f(x_980.x, x_980.y, u_xlat5.z);
      u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1003 = u_xlat8.zw;
      txVec1 = vec3f(x_1003.x, x_1003.y, u_xlat5.z);
      u_xlat9.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat8 = (u_xlat5.xyxy + x_649.x_MainLightShadowOffset1);
      let x_1023 = u_xlat8.xy;
      txVec2 = vec3f(x_1023.x, x_1023.y, u_xlat5.z);
      u_xlat9.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1038 = u_xlat8.zw;
      txVec3 = vec3f(x_1038.x, x_1038.y, u_xlat5.z);
      u_xlat9.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat34 = dot(u_xlat9, x_1053);
    } else {
      u_xlatb88 = (x_649.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb88) {
        u_xlat8 = vec4f((((u_xlat5.xy * x_649.x_MainLightShadowmapSize.zw) + x_1069)).xy, u_xlat8.zw);
        u_xlat8 = vec4f(floor(u_xlat8.xy).xy, u_xlat8.zw);
        u_xlat62 = ((u_xlat5.xy * x_649.x_MainLightShadowmapSize.zw) + -(u_xlat8.xy));
        u_xlat9 = (u_xlat62.xxyy + x_1092);
        u_xlat10 = (u_xlat9.xxzz * u_xlat9.xxzz);
        let x_1104 = (u_xlat10.yw * x_1103);
        u_xlat9 = vec4f(x_1104.x, u_xlat9.y, x_1104.y, u_xlat9.w);
        u_xlat10 = vec4f((((u_xlat10.xz * x_1069) + -(u_xlat62))).xy, u_xlat10.zw);
        u_xlat64 = (-(u_xlat62) + x_901);
        u_xlat11 = vec4f(min(u_xlat62, vec2f()).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat64)).xy, u_xlat11.zw);
        u_xlat62 = max(u_xlat62, vec2f());
        u_xlat62 = ((-(u_xlat62) * u_xlat62) + u_xlat9.yw);
        u_xlat11 = vec4f(((u_xlat11.xy + x_901)).xy, u_xlat11.zw);
        u_xlat62 = (u_xlat62 + x_901);
        u_xlat12 = vec4f(((u_xlat10.xy * x_1155)).xy, u_xlat12.zw);
        u_xlat10 = vec4f(((u_xlat64 * x_1155)).xy, u_xlat10.zw);
        u_xlat11 = vec4f(((u_xlat11.xy * x_1155)).xy, u_xlat11.zw);
        u_xlat13 = vec4f(((u_xlat62 * x_1155)).xy, u_xlat13.zw);
        u_xlat62 = (u_xlat9.yw * x_1155);
        u_xlat12.z = u_xlat11.x;
        u_xlat12.w = u_xlat62.x;
        u_xlat10.z = u_xlat13.x;
        u_xlat10.w = u_xlat9.x;
        u_xlat14 = (u_xlat10.zwxz + u_xlat12.zwxz);
        u_xlat11.z = u_xlat12.y;
        u_xlat11.w = u_xlat62.y;
        u_xlat13.z = u_xlat10.y;
        u_xlat13.w = u_xlat9.z;
        u_xlat9 = vec4f(((u_xlat11.zyw + u_xlat13.zyw)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat10.xzw / u_xlat14.zwy)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz + x_1225)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat13.zyw / u_xlat9.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_1225)).xyz, u_xlat11.w);
        u_xlat10 = vec4f(((u_xlat10.yxz * x_649.x_MainLightShadowmapSize.xxx)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_649.x_MainLightShadowmapSize.yyy)).xyz, u_xlat11.w);
        u_xlat10.w = u_xlat11.x;
        u_xlat12 = ((u_xlat8.xyxy * x_649.x_MainLightShadowmapSize.xyxy) + u_xlat10.ywxw);
        u_xlat62 = ((u_xlat8.xy * x_649.x_MainLightShadowmapSize.xy) + u_xlat10.zw);
        u_xlat11.w = u_xlat10.y;
        let x_1282 = u_xlat11.yz;
        u_xlat10 = vec4f(u_xlat10.x, x_1282.x, u_xlat10.z, x_1282.y);
        u_xlat13 = ((u_xlat8.xyxy * x_649.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyzy);
        u_xlat11 = ((u_xlat8.xyxy * x_649.x_MainLightShadowmapSize.xyxy) + u_xlat11.wywz);
        u_xlat10 = ((u_xlat8.xyxy * x_649.x_MainLightShadowmapSize.xyxy) + u_xlat10.xwzw);
        u_xlat15 = (u_xlat9.xxxy * u_xlat14.zwyz);
        u_xlat16 = (u_xlat9.yyzz * u_xlat14);
        u_xlat88 = (u_xlat9.z * u_xlat14.y);
        let x_1331 = u_xlat12.xy;
        txVec4 = vec3f(x_1331.x, x_1331.y, u_xlat5.z);
        u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1346 = u_xlat12.zw;
        txVec5 = vec3f(x_1346.x, x_1346.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat35 = (u_xlat35 * u_xlat15.y);
        u_xlat8.x = ((u_xlat15.x * u_xlat8.x) + u_xlat35);
        txVec6 = vec3f(u_xlat62.x, u_xlat62.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat8.x = ((u_xlat15.z * u_xlat35) + u_xlat8.x);
        let x_1394 = u_xlat11.xy;
        txVec7 = vec3f(x_1394.x, x_1394.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat8.x = ((u_xlat15.w * u_xlat35) + u_xlat8.x);
        let x_1416 = u_xlat13.xy;
        txVec8 = vec3f(x_1416.x, x_1416.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat8.x = ((u_xlat16.x * u_xlat35) + u_xlat8.x);
        let x_1438 = u_xlat13.zw;
        txVec9 = vec3f(x_1438.x, x_1438.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat8.x = ((u_xlat16.y * u_xlat35) + u_xlat8.x);
        let x_1460 = u_xlat11.zw;
        txVec10 = vec3f(x_1460.x, x_1460.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat8.x = ((u_xlat16.z * u_xlat35) + u_xlat8.x);
        let x_1482 = u_xlat10.xy;
        txVec11 = vec3f(x_1482.x, x_1482.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat8.x = ((u_xlat16.w * u_xlat35) + u_xlat8.x);
        let x_1504 = u_xlat10.zw;
        txVec12 = vec3f(x_1504.x, x_1504.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat34 = ((u_xlat88 * u_xlat35) + u_xlat8.x);
      } else {
        u_xlat8 = vec4f((((u_xlat5.xy * x_649.x_MainLightShadowmapSize.zw) + x_1069)).xy, u_xlat8.zw);
        u_xlat8 = vec4f(floor(u_xlat8.xy).xy, u_xlat8.zw);
        u_xlat62 = ((u_xlat5.xy * x_649.x_MainLightShadowmapSize.zw) + -(u_xlat8.xy));
        u_xlat9 = (u_xlat62.xxyy + x_1092);
        u_xlat10 = (u_xlat9.xxzz * u_xlat9.xxzz);
        let x_1559 = (u_xlat10.yw * x_1558);
        u_xlat11 = vec4f(u_xlat11.x, x_1559.x, u_xlat11.z, x_1559.y);
        let x_1567 = ((u_xlat10.xz * x_1069) + -(u_xlat62));
        u_xlat9 = vec4f(x_1567.x, u_xlat9.y, x_1567.y, u_xlat9.w);
        u_xlat10 = vec4f(((-(u_xlat62) + x_901)).xy, u_xlat10.zw);
        u_xlat64 = min(u_xlat62, vec2f());
        u_xlat10 = vec4f((((-(u_xlat64) * u_xlat64) + u_xlat10.xy)).xy, u_xlat10.zw);
        u_xlat64 = max(u_xlat62, vec2f());
        let x_1595 = ((-(u_xlat64) * u_xlat64) + u_xlat9.yw);
        u_xlat36 = vec3f(x_1595.x, u_xlat36.y, x_1595.y);
        u_xlat10 = vec4f(((u_xlat10.xy + x_1600)).xy, u_xlat10.zw);
        let x_1606 = (u_xlat36.xz + x_1600);
        u_xlat9 = vec4f(u_xlat9.x, x_1606.x, u_xlat9.z, x_1606.y);
        u_xlat12.z = (u_xlat9.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat9.zxw * x_1616)).xyz, u_xlat13.w);
        u_xlat9 = vec4f(((u_xlat10.xy * x_1622)).xy, u_xlat9.zw);
        u_xlat12.x = u_xlat13.y;
        let x_1636 = ((u_xlat62.xx * x_1632) + x_1635);
        u_xlat12 = vec4f(u_xlat12.x, x_1636.x, u_xlat12.z, x_1636.y);
        let x_1643 = ((u_xlat62.xx * x_1632) + x_1642);
        u_xlat10 = vec4f(x_1643.x, u_xlat10.y, x_1643.y, u_xlat10.w);
        u_xlat10.y = u_xlat9.x;
        u_xlat10.w = u_xlat11.y;
        u_xlat12 = (u_xlat10 + u_xlat12);
        let x_1658 = ((u_xlat62.yy * x_1632) + x_1635);
        u_xlat13 = vec4f(u_xlat13.x, x_1658.x, u_xlat13.z, x_1658.y);
        let x_1664 = ((u_xlat62.yy * x_1632) + x_1642);
        u_xlat11 = vec4f(x_1664.x, u_xlat11.y, x_1664.y, u_xlat11.w);
        u_xlat11.y = u_xlat9.y;
        u_xlat9 = (u_xlat11 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat12);
        u_xlat10 = (u_xlat10 + x_1680);
        u_xlat11 = (u_xlat11 / u_xlat9);
        u_xlat11 = (u_xlat11 + x_1680);
        u_xlat10 = (u_xlat10.wxyz * x_649.x_MainLightShadowmapSize.xxxx);
        u_xlat11 = (u_xlat11.xwyz * x_649.x_MainLightShadowmapSize.yyyy);
        let x_1700 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_1700.x, u_xlat13.y, x_1700.yz);
        u_xlat13.y = u_xlat11.x;
        u_xlat14 = ((u_xlat8.xyxy * x_649.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat62 = ((u_xlat8.xy * x_649.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat11.z;
        u_xlat15 = ((u_xlat8.xyxy * x_649.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat16 = vec4f((((u_xlat8.xy * x_649.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat16.zw);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat8.xyxy * x_649.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat11.w;
        u_xlat18 = ((u_xlat8.xyxy * x_649.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat37 = ((u_xlat8.xy * x_649.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.w = u_xlat13.y;
        u_xlat70 = ((u_xlat8.xy * x_649.x_MainLightShadowmapSize.xy) + u_xlat10.xw);
        let x_1800 = u_xlat13.xzw;
        u_xlat11 = vec4f(x_1800.x, u_xlat11.y, x_1800.yz);
        u_xlat13 = ((u_xlat8.xyxy * x_649.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat65 = ((u_xlat8.xy * x_649.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat11.x = u_xlat10.x;
        u_xlat8 = vec4f((((u_xlat8.xy * x_649.x_MainLightShadowmapSize.xy) + u_xlat11.xy)).xy, u_xlat8.zw);
        u_xlat19 = (u_xlat9.xxxx * u_xlat12);
        u_xlat20 = (u_xlat9.yyyy * u_xlat12);
        u_xlat21 = (u_xlat9.zzzz * u_xlat12);
        u_xlat9 = (u_xlat9.wwww * u_xlat12);
        let x_1857 = u_xlat14.xy;
        txVec13 = vec3f(x_1857.x, x_1857.y, u_xlat5.z);
        u_xlat88 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1871 = u_xlat14.zw;
        txVec14 = vec3f(x_1871.x, x_1871.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat10.x = (u_xlat10.x * u_xlat19.y);
        u_xlat88 = ((u_xlat19.x * u_xlat88) + u_xlat10.x);
        txVec15 = vec3f(u_xlat62.x, u_xlat62.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat88 = ((u_xlat19.z * u_xlat62.x) + u_xlat88);
        let x_1920 = u_xlat17.xy;
        txVec16 = vec3f(x_1920.x, x_1920.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat88 = ((u_xlat19.w * u_xlat62.x) + u_xlat88);
        let x_1942 = u_xlat15.xy;
        txVec17 = vec3f(x_1942.x, x_1942.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat88 = ((u_xlat20.x * u_xlat62.x) + u_xlat88);
        let x_1964 = u_xlat15.zw;
        txVec18 = vec3f(x_1964.x, x_1964.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat88 = ((u_xlat20.y * u_xlat62.x) + u_xlat88);
        let x_1986 = u_xlat16.xy;
        txVec19 = vec3f(x_1986.x, x_1986.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat88 = ((u_xlat20.z * u_xlat62.x) + u_xlat88);
        let x_2008 = u_xlat17.zw;
        txVec20 = vec3f(x_2008.x, x_2008.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat88 = ((u_xlat20.w * u_xlat62.x) + u_xlat88);
        let x_2030 = u_xlat18.xy;
        txVec21 = vec3f(x_2030.x, x_2030.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat88 = ((u_xlat21.x * u_xlat62.x) + u_xlat88);
        let x_2052 = u_xlat18.zw;
        txVec22 = vec3f(x_2052.x, x_2052.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat88 = ((u_xlat21.y * u_xlat62.x) + u_xlat88);
        txVec23 = vec3f(u_xlat37.x, u_xlat37.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat88 = ((u_xlat21.z * u_xlat62.x) + u_xlat88);
        txVec24 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat88 = ((u_xlat21.w * u_xlat62.x) + u_xlat88);
        let x_2116 = u_xlat13.xy;
        txVec25 = vec3f(x_2116.x, x_2116.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat88 = ((u_xlat9.x * u_xlat62.x) + u_xlat88);
        let x_2138 = u_xlat13.zw;
        txVec26 = vec3f(x_2138.x, x_2138.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat88 = ((u_xlat9.y * u_xlat62.x) + u_xlat88);
        txVec27 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat88 = ((u_xlat9.z * u_xlat62.x) + u_xlat88);
        let x_2181 = u_xlat8.xy;
        txVec28 = vec3f(x_2181.x, x_2181.y, u_xlat5.z);
        u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat34 = ((u_xlat9.w * u_xlat8.x) + u_xlat88);
      }
    }
  } else {
    let x_2204 = u_xlat5.xy;
    txVec29 = vec3f(x_2204.x, x_2204.y, u_xlat5.z);
    u_xlat34 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat5.x = (-(x_649.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat34 * x_649.x_MainLightShadowParams.x) + u_xlat5.x);
  u_xlatb32 = (0.0f >= u_xlat5.z);
  u_xlatb59 = (u_xlat5.z >= 1.0f);
  u_xlatb32 = (u_xlatb59 | u_xlatb32);
  if (u_xlatb32) {
    x_2241 = 1.0f;
  } else {
    x_2241 = u_xlat5.x;
  }
  u_xlat5.x = x_2241;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_601.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat32 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat59 = ((u_xlat32 * x_649.x_MainLightShadowParams.z) + x_649.x_MainLightShadowParams.w);
  u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
  u_xlat34 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat59 * u_xlat34) + u_xlat5.x);
  u_xlat59 = dot(-(u_xlat4), u_xlat1.xyz);
  u_xlat59 = (u_xlat59 + u_xlat59);
  u_xlat9 = vec4f((((u_xlat1.xyz * -(vec3f(u_xlat59))) + -(u_xlat4))).xyz, u_xlat9.w);
  u_xlat59 = dot(u_xlat1.xyz, u_xlat4);
  u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
  u_xlat59 = (-(u_xlat59) + 1.0f);
  u_xlat59 = (u_xlat59 * u_xlat59);
  u_xlat59 = (u_xlat59 * u_xlat59);
  u_xlat34 = ((-(u_xlat82) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat82 = (u_xlat82 * u_xlat34);
  u_xlat82 = (u_xlat82 * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_601.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu61 = vec2u(x_601.x_FPParams1.zw);
  u_xlati7 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu61.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu7.x = (u_xlatu61.y * bitcast<u32>(u_xlati7));
  u_xlat3.x = dot(-(u_xlat3.xyz), u_xlat8.xyz);
  u_xlat30.x = log2(u_xlat3.x);
  if (u_xlatb0) {
    x_2378 = u_xlat30.x;
  } else {
    x_2378 = u_xlat3.x;
  }
  u_xlat0.x = x_2378;
  u_xlat0.x = ((u_xlat0.x * x_601.x_FPParams0.x) + x_601.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu3.x = u32(x_601.x_FPParams2.x);
  u_xlatu3.x = (u_xlatu3.x + 4294967295u);
  u_xlati30 = (bitcast<i32>(u_xlatu61.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu3.x);
  u_xlatu3.x = (bitcast<u32>(u_xlati30) * u_xlatu0);
  u_xlatu30 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati30))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu30.x >> 2u);
  param = bitcast<i32>(u_xlatu30.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2447 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu30.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2454 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati34 = vec3i(vec2i(x_2447, x_2454).xy, u_xlati34.z);
  u_xlati8 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati34.xx) & bitcast<vec2u>(x_2467.urp_ZBins[bitcast<i32>(u_xlatu0)].wy))).xy, u_xlati8.z);
  let x_2480 = ~(u_xlati34.xy);
  u_xlati34 = vec3i(x_2480.x, u_xlati34.y, x_2480.y);
  u_xlati62 = bitcast<vec2i>((bitcast<vec2u>(u_xlati34.xx) & bitcast<vec2u>(x_2467.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati62) | bitcast<vec2u>(u_xlati8.xy))).xy, u_xlati8.z);
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati34.y) & bitcast<u32>(u_xlati8.x)));
  u_xlati30 = bitcast<i32>((bitcast<u32>(u_xlati34.z) & bitcast<u32>(u_xlati8.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati30));
  u_xlatu34 = vec3u(vec2u(x_601.x_FPParams0.zw).xy, u_xlatu34.z);
  u_xlatb8 = ((vec4f() < u_xlat9.xyzx)).xyz;
  u_xlatu10.x = u_xlatu7.x;
  u_xlatu10.y = u_xlatu30.y;
  u_xlati64 = 0i;
  u_xlatu91 = u_xlatu0;
  u_xlat11.x = 0.0f;
  u_xlat11.y = 0.0f;
  u_xlat11.z = 0.0f;
  u_xlat30.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu88 = (u_xlatu91 >> 16u);
    u_xlati89 = u_xlati64;
    u_xlatu90 = u_xlatu91;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb92 = (u_xlati89 == 0i);
      u_xlatu12.x = (u_xlatu90 & 65535u);
      u_xlatb12.x = (u_xlatu88 >= u_xlatu12.x);
      u_xlatb92 = (u_xlatb92 & u_xlatb12.x);
      if (!(u_xlatb92)) {
        break;
      }
      param_6 = u_xlatu90;
      param_7 = 5i;
      param_8 = 11i;
      let x_2605 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu92 = x_2605;
      u_xlatu12 = (u_xlatu10.xxyy + vec4u(u_xlatu92));
      u_xlatu13 = (u_xlatu12.yw >> x_2614);
      param_9 = bitcast<i32>(u_xlatu12.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2625 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu12.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2632 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu12.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2639 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu12.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2646 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati12 = vec4i(x_2625, x_2632, x_2639, x_2646);
      u_xlati67 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2655.urp_Tiles[bitcast<i32>(u_xlatu13.x)].wy)));
      u_xlati14 = ~(u_xlati12);
      u_xlati15 = bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_2655.urp_Tiles[bitcast<i32>(u_xlatu13.x)].zx)));
      let x_2687 = bitcast<vec2i>((bitcast<vec2u>(u_xlati67) | bitcast<vec2u>(u_xlati15)));
      u_xlati13 = vec3i(x_2687.x, u_xlati13.y, x_2687.y);
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati13.x)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati13.z)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati39.x) | bitcast<u32>(u_xlati12.x)));
      u_xlati39 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_2467.urp_ZBins[bitcast<i32>(u_xlatu13.y)].wy)));
      u_xlati13 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_2467.urp_ZBins[bitcast<i32>(u_xlatu13.y)].zx))).xy, u_xlati13.z);
      u_xlati39 = bitcast<vec2i>((bitcast<vec2u>(u_xlati39) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati39.x)));
      u_xlati66 = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati39.y)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati66) | bitcast<u32>(u_xlati39.x)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati39.x) & bitcast<u32>(u_xlati12.x)));
      u_xlati39.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu90) & 31i)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati39.x) & bitcast<u32>(u_xlati12.x)));
      u_xlati92 = (bitcast<i32>(u_xlatu92) << bitcast<u32>(5i));
      u_xlatu92 = (u_xlatu88 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati92)))));
      u_xlatu92 = min(u_xlatu92, 31u);
      u_xlatu92 = (bitcast<u32>(-(bitcast<i32>(u_xlatu92))) + 31u);
      u_xlatu92 = (4294967295u >> (u_xlatu92 & 31u));
      u_xlati89 = bitcast<i32>((u_xlatu92 & bitcast<u32>(u_xlati12.x)));
      u_xlati92 = (bitcast<i32>(u_xlatu90) + 32i);
      u_xlatu90 = (bitcast<u32>(u_xlati92) & 4294967264u);
    }
    u_xlatu91 = u_xlatu90;
    u_xlatb88 = (u_xlati89 != 0i);
    u_xlatb92 = (u_xlat30.x < 0.99000000953674316406f);
    u_xlatb88 = (u_xlatb88 & u_xlatb92);
    if (!(u_xlatb88)) {
      break;
    }
    u_xlati88 = (0i - u_xlati89);
    u_xlatu88 = (bitcast<u32>(u_xlati88) & bitcast<u32>(u_xlati89));
    u_xlat88 = f32(u_xlatu88);
    u_xlatu88 = (bitcast<u32>(u_xlat88) >> 23u);
    u_xlati88 = (bitcast<i32>(u_xlatu88) + -127i);
    u_xlati92 = (1i << bitcast<u32>((u_xlati88 & 31i)));
    u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati89) ^ bitcast<u32>(u_xlati92)));
    u_xlati92 = (bitcast<i32>(u_xlatu91) + -32i);
    u_xlati92 = bitcast<i32>((bitcast<u32>(u_xlati92) & 65504u));
    u_xlati88 = (u_xlati88 + u_xlati92);
    u_xlati88 = (-(bitcast<i32>(u_xlatu34.x)) + u_xlati88);
    u_xlat12 = vec4f(((vs_TEXCOORD0 + -(x_2901.urp_ReflProbes_BoxMin[u_xlati88].xyz))).xyz, u_xlat12.w);
    u_xlat13 = vec4f(((-(vs_TEXCOORD0) + x_2901.urp_ReflProbes_BoxMax[u_xlati88].xyz)).xyz, u_xlat13.w);
    u_xlat12 = vec4f(min(u_xlat12.xyz, u_xlat13.xyz).xyz, u_xlat12.w);
    u_xlat12 = vec4f(((u_xlat12.xyz / x_2901.urp_ReflProbes_BoxMax[u_xlati88].www)).xyz, u_xlat12.w);
    u_xlat92 = min(u_xlat12.z, u_xlat12.y);
    u_xlat92 = min(u_xlat92, u_xlat12.x);
    u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
    u_xlat12.x = (-(u_xlat30.x) + 1.0f);
    u_xlat92 = min(u_xlat92, u_xlat12.x);
    u_xlatb12.x = (0.0f < x_2901.urp_ReflProbes_ProbePosition[u_xlati88].w);
    if (u_xlatb8.x) {
      x_2964 = x_2901.urp_ReflProbes_BoxMax[u_xlati88].x;
    } else {
      x_2964 = x_2901.urp_ReflProbes_BoxMin[u_xlati88].x;
    }
    u_xlat39.x = x_2964;
    if (u_xlatb8.y) {
      x_2978 = x_2901.urp_ReflProbes_BoxMax[u_xlati88].y;
    } else {
      x_2978 = x_2901.urp_ReflProbes_BoxMin[u_xlati88].y;
    }
    u_xlat39.y = x_2978;
    if (u_xlatb8.z) {
      x_2992 = x_2901.urp_ReflProbes_BoxMax[u_xlati88].z;
    } else {
      x_2992 = x_2901.urp_ReflProbes_BoxMin[u_xlati88].z;
    }
    u_xlat39.z = x_2992;
    u_xlat39 = (u_xlat39 + -(vs_TEXCOORD0));
    u_xlat39 = (u_xlat39 / u_xlat9.xyz);
    u_xlat39.x = min(u_xlat39.y, u_xlat39.x);
    u_xlat39.x = min(u_xlat39.z, u_xlat39.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_2901.urp_ReflProbes_ProbePosition[u_xlati88].xyz))).xyz, u_xlat13.w);
    u_xlat39 = ((u_xlat9.xyz * u_xlat39.xxx) + u_xlat13.xyz);
    if (u_xlatb12.x) {
      x_3043 = u_xlat39;
    } else {
      x_3043 = u_xlat9.xyz;
    }
    u_xlat12 = vec4f(x_3043.xyz, u_xlat12.w);
    u_xlatu93 = u32(abs(x_2901.urp_ReflProbes_ProbePosition[u_xlati88].w));
    u_xlatu93 = (u_xlatu93 + 4294967295u);
    u_xlat93 = f32(u_xlatu93);
    u_xlat93 = min(u_xlat82, u_xlat93);
    u_xlat13.x = dot(abs(u_xlat12.xyz), vec3f(1.0f));
    u_xlat13.x = max(u_xlat13.x, 0.00000099999999747524f);
    u_xlat13.x = (1.0f / u_xlat13.x);
    u_xlat40 = (u_xlat12.zxy * u_xlat13.xxx);
    u_xlat40.x = -(u_xlat40.x);
    u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
    u_xlatb67 = ((u_xlat40.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat40;
    if (u_xlatb67.x) {
      x_3107 = u_xlat40.x;
    } else {
      x_3107 = -(u_xlat40.x);
    }
    hlslcc_movcTemp.x = x_3107;
    if (u_xlatb67.y) {
      x_3120 = u_xlat40.x;
    } else {
      x_3120 = -(u_xlat40.x);
    }
    hlslcc_movcTemp.y = x_3120;
    u_xlat40 = hlslcc_movcTemp;
    u_xlat12 = vec4f((((u_xlat12.xy * u_xlat13.xx) + u_xlat40.xy)).xy, u_xlat12.zw);
    u_xlat12 = vec4f((((u_xlat12.xy * x_1069) + x_1069)).xy, u_xlat12.zw);
    u_xlat12 = vec4f(clamp(u_xlat12.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat12.zw);
    u_xlat66 = floor(u_xlat93);
    u_xlat13.x = (u_xlat66 + 1.0f);
    u_xlat93 = (-(u_xlat66) + u_xlat93);
    u_xlatu66 = u32(u_xlat66);
    u_xlati66 = ((u_xlati88 * 7i) + bitcast<i32>(u_xlatu66));
    u_xlatu13.x = u32(u_xlat13.x);
    u_xlati88 = ((u_xlati88 * 7i) + bitcast<i32>(u_xlatu13.x));
    u_xlat13 = vec4f((((u_xlat12.xy * x_2901.urp_ReflProbes_MipScaleOffset[u_xlati66].xy) + x_2901.urp_ReflProbes_MipScaleOffset[u_xlati66].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat12.xy * x_2901.urp_ReflProbes_MipScaleOffset[u_xlati88].xy) + x_2901.urp_ReflProbes_MipScaleOffset[u_xlati88].zw)).xy, u_xlat12.zw);
    u_xlat12 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat12.xy, 0.0f).xyz.xyz, u_xlat12.w);
    u_xlat12 = vec4f(((-(u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat12 = vec4f((((vec3f(u_xlat93) * u_xlat12.xyz) + u_xlat13.xyz)).xyz, u_xlat12.w);
    u_xlat11 = vec4f((((vec3f(u_xlat92) * u_xlat12.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat30.x = (u_xlat30.x + u_xlat92);
  }
  u_xlatb0 = (u_xlat30.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xyz, u_xlat82);
    u_xlat0.x = (-(u_xlat30.x) + 1.0f);
    u_xlat82 = (u_xlat8.w + -1.0f);
    u_xlat82 = ((x_601.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat82) + 1.0f);
    u_xlat82 = max(u_xlat82, 0.0f);
    u_xlat82 = log2(u_xlat82);
    u_xlat82 = (u_xlat82 * x_601.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat82 = exp2(u_xlat82);
    u_xlat82 = (u_xlat82 * x_601.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * vec3f(u_xlat82))).xyz, u_xlat8.w);
    u_xlat11 = vec4f((((u_xlat0.xxx * u_xlat8.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
  }
  let x_3335 = ((vec2f(u_xlat84) * vec2f(u_xlat84)) + vec2f(-1.0f, 1.0f));
  u_xlat30 = vec3f(x_3335.x, u_xlat30.y, x_3335.y);
  u_xlat0.x = (1.0f / u_xlat30.z);
  u_xlat82 = (u_xlat86 + -0.03999999910593032837f);
  u_xlat82 = ((u_xlat59 * u_xlat82) + 0.03999999910593032837f);
  u_xlat0.x = (u_xlat0.x * u_xlat82);
  u_xlat8 = vec4f(((u_xlat0.xxx * u_xlat11.xyz)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat27) + u_xlat8.xyz)).xyz, u_xlat6.w);
  u_xlati0 = bitcast<i32>((x_601.x_MainLightLayerMask & bitcast<u32>(x_826.unity_RenderingLayer.x)));
  u_xlat82 = dot(u_xlat1.xyz, x_601.x_MainLightPosition.xyz);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  u_xlat82 = (u_xlat82 * u_xlat5.x);
  let x_3396 = (vec3f(u_xlat82) * x_601.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_3396.x, u_xlat5.y, x_3396.yz);
  u_xlat2 = ((u_xlat2 * vec3f(u_xlat83)) + x_601.x_MainLightPosition.xyz);
  u_xlat82 = dot(u_xlat2, u_xlat2);
  u_xlat82 = max(u_xlat82, 1.17549435e-38f);
  u_xlat82 = inverseSqrt(u_xlat82);
  u_xlat2 = (vec3f(u_xlat82) * u_xlat2);
  u_xlat82 = dot(u_xlat1.xyz, u_xlat2);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  u_xlat2.x = dot(x_601.x_MainLightPosition.xyz, u_xlat2);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat82 = (u_xlat82 * u_xlat82);
  u_xlat82 = ((u_xlat82 * u_xlat30.x) + 1.00001001358032226562f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat82 = (u_xlat82 * u_xlat82);
  u_xlat2.x = max(u_xlat2.x, 0.10000000149011611938f);
  u_xlat82 = (u_xlat82 * u_xlat2.x);
  u_xlat82 = (u_xlat87 * u_xlat82);
  u_xlat82 = (u_xlat85 / u_xlat82);
  u_xlat2 = ((vec3f(u_xlat82) * x_3470) + u_xlat27);
  u_xlat2 = (u_xlat5.xzw * u_xlat2);
  if ((u_xlati0 != 0i)) {
    x_3480 = u_xlat2;
  } else {
    x_3480 = vec3f();
  }
  u_xlat2 = x_3480;
  u_xlatu0 = min(u_xlatu34.y, 32u);
  u_xlat82 = ((u_xlat32 * x_649.x_AdditionalShadowFadeParams.x) + x_649.x_AdditionalShadowFadeParams.y);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu0)) {
    } else {
      break;
    }
    u_xlat8 = vec4f((((-(vs_TEXCOORD0) * x_3521.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3521.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat8.w);
    u_xlat84 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat84 = max(u_xlat84, 0.00006103515625f);
    u_xlat86 = inverseSqrt(u_xlat84);
    u_xlat9 = vec4f(((vec3f(u_xlat86) * u_xlat8.xyz)).xyz, u_xlat9.w);
    u_xlat34 = (1.0f / u_xlat84);
    u_xlat84 = (u_xlat84 * x_3521.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat84 = ((-(u_xlat84) * u_xlat84) + 1.0f);
    u_xlat84 = max(u_xlat84, 0.0f);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat84 = (u_xlat84 * u_xlat34);
    u_xlat34 = dot(x_3521.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9.xyz);
    u_xlat34 = ((u_xlat34 * x_3521.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3521.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat84 = (u_xlat84 * u_xlat34);
    u_xlatb34 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati88 = i32(x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati34.x = select(u_xlati88, -1i, u_xlatb34);
    u_xlatb88 = (u_xlati34.x >= 0i);
    if (u_xlatb88) {
      u_xlatb88 = any(!((vec4f() == vec4f(x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb88) {
        u_xlatb10 = vec4<bool>(((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz.xyz, u_xlatb10.w);
        u_xlatb88 = (u_xlatb10.y & u_xlatb10.x);
        let x_3650 = ((-(u_xlat9.zyzx) < vec4f())).xyw;
        u_xlatb10 = vec4<bool>(x_3650.xy, u_xlatb10.z, x_3650.z);
        u_xlat10.x = select(4.0f, 5.0f, u_xlatb10.x);
        u_xlat10.y = select(2.0f, 3.0f, u_xlatb10.y);
        u_xlat89 = select(0.0f, 1.0f, u_xlatb10.w);
        if (u_xlatb10.z) {
          x_3668 = u_xlat10.y;
        } else {
          x_3668 = u_xlat89;
        }
        u_xlat89 = x_3668;
        if (u_xlatb88) {
          x_3677 = u_xlat10.x;
        } else {
          x_3677 = u_xlat89;
        }
        u_xlat88 = x_3677;
        u_xlati88 = i32(u_xlat88);
        u_xlati34.x = (u_xlati88 + u_xlati34.x);
      }
      u_xlati34.x = (u_xlati34.x << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati34.x + 1i)]);
      u_xlat10 = ((x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati34.x] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati34.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati34.x + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      u_xlatb34 = (0.0f < x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb34) {
        u_xlatb34 = (1.0f == x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb34) {
          u_xlat11 = (u_xlat10.xyxy + x_649.x_AdditionalShadowOffset0);
          let x_3761 = u_xlat11.xy;
          txVec30 = vec3f(x_3761.x, x_3761.y, u_xlat10.z);
          u_xlat12.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_3777 = u_xlat11.zw;
          txVec31 = vec3f(x_3777.x, x_3777.y, u_xlat10.z);
          u_xlat12.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat11 = (u_xlat10.xyxy + x_649.x_AdditionalShadowOffset1);
          let x_3797 = u_xlat11.xy;
          txVec32 = vec3f(x_3797.x, x_3797.y, u_xlat10.z);
          u_xlat12.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_3812 = u_xlat11.zw;
          txVec33 = vec3f(x_3812.x, x_3812.y, u_xlat10.z);
          u_xlat12.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat34 = dot(u_xlat12, x_1053);
        } else {
          u_xlatb88 = (2.0f == x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb88) {
            u_xlat11 = vec4f((((u_xlat10.xy * x_649.x_AdditionalShadowmapSize.zw) + x_1069)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_649.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_1092);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_3871 = (u_xlat13.yw * x_1103);
            u_xlat12 = vec4f(x_3871.x, u_xlat12.y, x_3871.y, u_xlat12.w);
            u_xlat13 = vec4f((((u_xlat13.xz * x_1069) + -(u_xlat65))).xy, u_xlat13.zw);
            u_xlat67 = (-(u_xlat65) + x_901);
            u_xlat14 = vec4f(min(u_xlat65, vec2f()).xy, u_xlat14.zw);
            u_xlat14 = vec4f((((-(u_xlat14.xy) * u_xlat14.xy) + u_xlat67)).xy, u_xlat14.zw);
            u_xlat65 = max(u_xlat65, vec2f());
            u_xlat65 = ((-(u_xlat65) * u_xlat65) + u_xlat12.yw);
            u_xlat14 = vec4f(((u_xlat14.xy + x_901)).xy, u_xlat14.zw);
            u_xlat65 = (u_xlat65 + x_901);
            u_xlat15 = vec4f(((u_xlat13.xy * x_1155)).xy, u_xlat15.zw);
            u_xlat13 = vec4f(((u_xlat67 * x_1155)).xy, u_xlat13.zw);
            u_xlat14 = vec4f(((u_xlat14.xy * x_1155)).xy, u_xlat14.zw);
            u_xlat16 = vec4f(((u_xlat65 * x_1155)).xy, u_xlat16.zw);
            u_xlat65 = (u_xlat12.yw * x_1155);
            u_xlat15.z = u_xlat14.x;
            u_xlat15.w = u_xlat65.x;
            u_xlat13.z = u_xlat16.x;
            u_xlat13.w = u_xlat12.x;
            u_xlat17 = (u_xlat13.zwxz + u_xlat15.zwxz);
            u_xlat14.z = u_xlat15.y;
            u_xlat14.w = u_xlat65.y;
            u_xlat16.z = u_xlat13.y;
            u_xlat16.w = u_xlat12.z;
            u_xlat12 = vec4f(((u_xlat14.zyw + u_xlat16.zyw)).xyz, u_xlat12.w);
            u_xlat13 = vec4f(((u_xlat13.xzw / u_xlat17.zwy)).xyz, u_xlat13.w);
            u_xlat13 = vec4f(((u_xlat13.xyz + x_1225)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat16.zyw / u_xlat12.xyz)).xyz, u_xlat14.w);
            u_xlat14 = vec4f(((u_xlat14.xyz + x_1225)).xyz, u_xlat14.w);
            u_xlat13 = vec4f(((u_xlat13.yxz * x_649.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat14.xyz * x_649.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat14.w);
            u_xlat13.w = u_xlat14.x;
            u_xlat15 = ((u_xlat11.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat13.ywxw);
            u_xlat65 = ((u_xlat11.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat13.zw);
            u_xlat14.w = u_xlat13.y;
            let x_4038 = u_xlat14.yz;
            u_xlat13 = vec4f(u_xlat13.x, x_4038.x, u_xlat13.z, x_4038.y);
            u_xlat16 = ((u_xlat11.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyzy);
            u_xlat14 = ((u_xlat11.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat14.wywz);
            u_xlat13 = ((u_xlat11.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xwzw);
            u_xlat18 = (u_xlat12.xxxy * u_xlat17.zwyz);
            u_xlat19 = (u_xlat12.yyzz * u_xlat17);
            u_xlat88 = (u_xlat12.z * u_xlat17.y);
            let x_4084 = u_xlat15.xy;
            txVec34 = vec3f(x_4084.x, x_4084.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_4098 = u_xlat15.zw;
            txVec35 = vec3f(x_4098.x, x_4098.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat90 = (u_xlat90 * u_xlat18.y);
            u_xlat89 = ((u_xlat18.x * u_xlat89) + u_xlat90);
            txVec36 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat89 = ((u_xlat18.z * u_xlat90) + u_xlat89);
            let x_4142 = u_xlat14.xy;
            txVec37 = vec3f(x_4142.x, x_4142.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat89 = ((u_xlat18.w * u_xlat90) + u_xlat89);
            let x_4162 = u_xlat16.xy;
            txVec38 = vec3f(x_4162.x, x_4162.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat89 = ((u_xlat19.x * u_xlat90) + u_xlat89);
            let x_4182 = u_xlat16.zw;
            txVec39 = vec3f(x_4182.x, x_4182.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat89 = ((u_xlat19.y * u_xlat90) + u_xlat89);
            let x_4202 = u_xlat14.zw;
            txVec40 = vec3f(x_4202.x, x_4202.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat89 = ((u_xlat19.z * u_xlat90) + u_xlat89);
            let x_4222 = u_xlat13.xy;
            txVec41 = vec3f(x_4222.x, x_4222.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat89 = ((u_xlat19.w * u_xlat90) + u_xlat89);
            let x_4242 = u_xlat13.zw;
            txVec42 = vec3f(x_4242.x, x_4242.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat34 = ((u_xlat88 * u_xlat90) + u_xlat89);
          } else {
            u_xlat11 = vec4f((((u_xlat10.xy * x_649.x_AdditionalShadowmapSize.zw) + x_1069)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_649.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_1092);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_4294 = (u_xlat13.yw * x_1558);
            u_xlat14 = vec4f(u_xlat14.x, x_4294.x, u_xlat14.z, x_4294.y);
            let x_4302 = ((u_xlat13.xz * x_1069) + -(u_xlat65));
            u_xlat12 = vec4f(x_4302.x, u_xlat12.y, x_4302.y, u_xlat12.w);
            u_xlat13 = vec4f(((-(u_xlat65) + x_901)).xy, u_xlat13.zw);
            u_xlat67 = min(u_xlat65, vec2f());
            u_xlat13 = vec4f((((-(u_xlat67) * u_xlat67) + u_xlat13.xy)).xy, u_xlat13.zw);
            u_xlat67 = max(u_xlat65, vec2f());
            let x_4329 = ((-(u_xlat67) * u_xlat67) + u_xlat12.yw);
            u_xlat39 = vec3f(x_4329.x, u_xlat39.y, x_4329.y);
            u_xlat13 = vec4f(((u_xlat13.xy + x_1600)).xy, u_xlat13.zw);
            let x_4339 = (u_xlat39.xz + x_1600);
            u_xlat12 = vec4f(u_xlat12.x, x_4339.x, u_xlat12.z, x_4339.y);
            u_xlat15.z = (u_xlat12.y * 0.08163200318813323975f);
            u_xlat16 = vec4f(((u_xlat12.zxw * x_1616)).xyz, u_xlat16.w);
            u_xlat12 = vec4f(((u_xlat13.xy * x_1622)).xy, u_xlat12.zw);
            u_xlat15.x = u_xlat16.y;
            let x_4362 = ((u_xlat65.xx * x_1632) + x_1635);
            u_xlat15 = vec4f(u_xlat15.x, x_4362.x, u_xlat15.z, x_4362.y);
            let x_4368 = ((u_xlat65.xx * x_1632) + x_1642);
            u_xlat13 = vec4f(x_4368.x, u_xlat13.y, x_4368.y, u_xlat13.w);
            u_xlat13.y = u_xlat12.x;
            u_xlat13.w = u_xlat14.y;
            u_xlat15 = (u_xlat13 + u_xlat15);
            let x_4383 = ((u_xlat65.yy * x_1632) + x_1635);
            u_xlat16 = vec4f(u_xlat16.x, x_4383.x, u_xlat16.z, x_4383.y);
            let x_4389 = ((u_xlat65.yy * x_1632) + x_1642);
            u_xlat14 = vec4f(x_4389.x, u_xlat14.y, x_4389.y, u_xlat14.w);
            u_xlat14.y = u_xlat12.y;
            u_xlat12 = (u_xlat14 + u_xlat16);
            u_xlat13 = (u_xlat13 / u_xlat15);
            u_xlat13 = (u_xlat13 + x_1680);
            u_xlat14 = (u_xlat14 / u_xlat12);
            u_xlat14 = (u_xlat14 + x_1680);
            u_xlat13 = (u_xlat13.wxyz * x_649.x_AdditionalShadowmapSize.xxxx);
            u_xlat14 = (u_xlat14.xwyz * x_649.x_AdditionalShadowmapSize.yyyy);
            let x_4421 = u_xlat13.yzw;
            u_xlat16 = vec4f(x_4421.x, u_xlat16.y, x_4421.yz);
            u_xlat16.y = u_xlat14.x;
            u_xlat17 = ((u_xlat11.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat65 = ((u_xlat11.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat13.y = u_xlat16.y;
            u_xlat16.y = u_xlat14.z;
            u_xlat18 = ((u_xlat11.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat19 = vec4f((((u_xlat11.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat19.zw);
            u_xlat13.z = u_xlat16.y;
            u_xlat20 = ((u_xlat11.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyxz);
            u_xlat16.y = u_xlat14.w;
            u_xlat21 = ((u_xlat11.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat40 = vec3f((((u_xlat11.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat40.z);
            u_xlat13.w = u_xlat16.y;
            u_xlat73 = ((u_xlat11.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat13.xw);
            let x_4520 = u_xlat16.xzw;
            u_xlat14 = vec4f(x_4520.x, u_xlat14.y, x_4520.yz);
            u_xlat16 = ((u_xlat11.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xyzy);
            u_xlat68 = ((u_xlat11.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat14.wy);
            u_xlat14.x = u_xlat13.x;
            u_xlat11 = vec4f((((u_xlat11.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat14.xy)).xy, u_xlat11.zw);
            u_xlat22 = (u_xlat12.xxxx * u_xlat15);
            u_xlat23 = (u_xlat12.yyyy * u_xlat15);
            u_xlat24 = (u_xlat12.zzzz * u_xlat15);
            u_xlat12 = (u_xlat12.wwww * u_xlat15);
            let x_4577 = u_xlat17.xy;
            txVec43 = vec3f(x_4577.x, x_4577.y, u_xlat10.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_4591 = u_xlat17.zw;
            txVec44 = vec3f(x_4591.x, x_4591.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat89 = (u_xlat89 * u_xlat22.y);
            u_xlat88 = ((u_xlat22.x * u_xlat88) + u_xlat89);
            txVec45 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat88 = ((u_xlat22.z * u_xlat89) + u_xlat88);
            let x_4634 = u_xlat20.xy;
            txVec46 = vec3f(x_4634.x, x_4634.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat88 = ((u_xlat22.w * u_xlat89) + u_xlat88);
            let x_4654 = u_xlat18.xy;
            txVec47 = vec3f(x_4654.x, x_4654.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat88 = ((u_xlat23.x * u_xlat89) + u_xlat88);
            let x_4674 = u_xlat18.zw;
            txVec48 = vec3f(x_4674.x, x_4674.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat88 = ((u_xlat23.y * u_xlat89) + u_xlat88);
            let x_4694 = u_xlat19.xy;
            txVec49 = vec3f(x_4694.x, x_4694.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat88 = ((u_xlat23.z * u_xlat89) + u_xlat88);
            let x_4714 = u_xlat20.zw;
            txVec50 = vec3f(x_4714.x, x_4714.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat88 = ((u_xlat23.w * u_xlat89) + u_xlat88);
            let x_4734 = u_xlat21.xy;
            txVec51 = vec3f(x_4734.x, x_4734.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat88 = ((u_xlat24.x * u_xlat89) + u_xlat88);
            let x_4754 = u_xlat21.zw;
            txVec52 = vec3f(x_4754.x, x_4754.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat88 = ((u_xlat24.y * u_xlat89) + u_xlat88);
            let x_4774 = u_xlat40.xy;
            txVec53 = vec3f(x_4774.x, x_4774.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat88 = ((u_xlat24.z * u_xlat89) + u_xlat88);
            txVec54 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat88 = ((u_xlat24.w * u_xlat89) + u_xlat88);
            let x_4813 = u_xlat16.xy;
            txVec55 = vec3f(x_4813.x, x_4813.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat88 = ((u_xlat12.x * u_xlat89) + u_xlat88);
            let x_4833 = u_xlat16.zw;
            txVec56 = vec3f(x_4833.x, x_4833.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat88 = ((u_xlat12.y * u_xlat89) + u_xlat88);
            txVec57 = vec3f(u_xlat68.x, u_xlat68.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat88 = ((u_xlat12.z * u_xlat89) + u_xlat88);
            let x_4872 = u_xlat11.xy;
            txVec58 = vec3f(x_4872.x, x_4872.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat34 = ((u_xlat12.w * u_xlat89) + u_xlat88);
          }
        }
      } else {
        let x_4893 = u_xlat10.xy;
        txVec59 = vec3f(x_4893.x, x_4893.y, u_xlat10.z);
        u_xlat34 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat88 = (1.0f + -(x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat34 = ((u_xlat34 * x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat88);
      u_xlatb88 = (0.0f >= u_xlat10.z);
      u_xlatb89 = (u_xlat10.z >= 1.0f);
      u_xlatb88 = (u_xlatb88 | u_xlatb89);
      u_xlat34 = select(u_xlat34, 1.0f, u_xlatb88);
    } else {
      u_xlat34 = 1.0f;
    }
    u_xlat88 = (-(u_xlat34) + 1.0f);
    u_xlat34 = ((u_xlat82 * u_xlat88) + u_xlat34);
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_826.unity_RenderingLayer.x) & bitcast<u32>(x_3521.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat84 = (u_xlat84 * u_xlat34);
    u_xlat34 = dot(u_xlat1.xyz, u_xlat9.xyz);
    u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
    u_xlat84 = (u_xlat84 * u_xlat34);
    u_xlat10 = vec4f(((vec3f(u_xlat84) * x_3521.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlat8 = vec4f((((u_xlat8.xyz * vec3f(u_xlat86)) + u_xlat4)).xyz, u_xlat8.w);
    u_xlat84 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat84 = max(u_xlat84, 1.17549435e-38f);
    u_xlat84 = inverseSqrt(u_xlat84);
    u_xlat8 = vec4f(((vec3f(u_xlat84) * u_xlat8.xyz)).xyz, u_xlat8.w);
    u_xlat84 = dot(u_xlat1.xyz, u_xlat8.xyz);
    u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
    u_xlat86 = dot(u_xlat9.xyz, u_xlat8.xyz);
    u_xlat86 = clamp(u_xlat86, 0.0f, 1.0f);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat84 = ((u_xlat84 * u_xlat30.x) + 1.00001001358032226562f);
    u_xlat86 = (u_xlat86 * u_xlat86);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat86 = max(u_xlat86, 0.10000000149011611938f);
    u_xlat84 = (u_xlat84 * u_xlat86);
    u_xlat84 = (u_xlat87 * u_xlat84);
    u_xlat84 = (u_xlat85 / u_xlat84);
    u_xlat8 = vec4f((((vec3f(u_xlat84) * x_3470) + u_xlat27)).xyz, u_xlat8.w);
    u_xlat8 = vec4f((((u_xlat8.xyz * u_xlat10.xyz) + u_xlat5.xyz)).xyz, u_xlat8.w);
    if ((u_xlati88 != 0i)) {
      x_5057 = u_xlat8.xyz;
    } else {
      x_5057 = u_xlat5.xyz;
    }
    u_xlat5 = vec4f(x_5057.xyz, u_xlat5.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu0 = (u_xlatu3.x >> 2u);
  param_21 = bitcast<i32>(u_xlatu3.x);
  param_22 = 0i;
  param_23 = 1i;
  let x_5080 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu3.x);
  param_25 = 1i;
  param_26 = 1i;
  let x_5087 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  let x_5088 = vec2i(x_5080, x_5087);
  u_xlati3 = vec4i(x_5088.x, u_xlati3.yz, x_5088.y);
  let x_5101 = bitcast<vec2i>((bitcast<vec2u>(u_xlati3.xx) & bitcast<vec2u>(x_2467.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  u_xlati34 = vec3i(x_5101.x, u_xlati34.y, x_5101.y);
  u_xlati8 = vec3i((~(u_xlati3.xw)).xy, u_xlati8.z);
  let x_5119 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8.xx) & bitcast<vec2u>(x_2467.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = vec3i(x_5119.x, u_xlati8.y, x_5119.y);
  let x_5129 = bitcast<vec2i>((bitcast<vec2u>(u_xlati34.xz) | bitcast<vec2u>(u_xlati8.xz)));
  u_xlati34 = vec3i(x_5129.x, u_xlati34.y, x_5129.y);
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati3.w) & bitcast<u32>(u_xlati34.x)));
  u_xlati83 = bitcast<i32>((bitcast<u32>(u_xlati8.y) & bitcast<u32>(u_xlati34.z)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati83));
  u_xlatu8.x = u_xlatu7.x;
  u_xlatu8.y = u_xlatu30.y;
  u_xlatu62.x = 0u;
  u_xlatu62.y = u_xlatu0;
  u_xlat9 = vec4f(u_xlat5.xyz.xyz, u_xlat9.w);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu83 = (u_xlatu62.y >> 16u);
    u_xlatu3 = vec4u(u_xlatu62.x, u_xlatu3.yz, u_xlatu62.y);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb86 = (bitcast<i32>(u_xlatu3.x) == 0i);
      u_xlatu34.x = (u_xlatu3.w & 65535u);
      u_xlatb34 = (u_xlatu83 >= u_xlatu34.x);
      u_xlatb86 = (u_xlatb86 & u_xlatb34);
      if (!(u_xlatb86)) {
        break;
      }
      param_27 = u_xlatu3.w;
      param_28 = 5i;
      param_29 = 11i;
      let x_5213 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu86 = x_5213;
      u_xlatu10 = (vec4u(u_xlatu86) + u_xlatu8.xxyy);
      let x_5221 = (u_xlatu10.yw >> x_2614);
      u_xlatu34 = vec3u(x_5221.x, u_xlatu34.y, x_5221.y);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_5231 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_5238 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_5245 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_5252 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_5231, x_5238, x_5245, x_5252);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_2655.urp_Tiles[bitcast<i32>(u_xlatu34.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati65 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2655.urp_Tiles[bitcast<i32>(u_xlatu34.x)].zx)));
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati65) | bitcast<vec2u>(u_xlati11)));
      u_xlati34.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati90 = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.y)));
      u_xlati34.x = bitcast<i32>((bitcast<u32>(u_xlati34.x) | bitcast<u32>(u_xlati90)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_2467.urp_ZBins[bitcast<i32>(u_xlatu34.z)].wy))).xy, u_xlati10.zw);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_2467.urp_ZBins[bitcast<i32>(u_xlatu34.z)].zx)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xy) | bitcast<vec2u>(u_xlati11))).xy, u_xlati10.zw);
      u_xlati88 = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati10.x)));
      u_xlati90 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati10.y)));
      u_xlati88 = bitcast<i32>((bitcast<u32>(u_xlati88) | bitcast<u32>(u_xlati90)));
      u_xlati34.x = bitcast<i32>((bitcast<u32>(u_xlati88) & bitcast<u32>(u_xlati34.x)));
      u_xlati88 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu3.w) & 31i)));
      u_xlati34.x = bitcast<i32>((bitcast<u32>(u_xlati88) & bitcast<u32>(u_xlati34.x)));
      u_xlati86 = (bitcast<i32>(u_xlatu86) << bitcast<u32>(5i));
      u_xlatu86 = (u_xlatu83 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati86)))));
      u_xlatu86 = min(u_xlatu86, 31u);
      u_xlatu86 = (bitcast<u32>(-(bitcast<i32>(u_xlatu86))) + 31u);
      u_xlatu86 = (4294967295u >> (u_xlatu86 & 31u));
      u_xlatu3.x = (u_xlatu86 & bitcast<u32>(u_xlati34.x));
      u_xlati86 = (bitcast<i32>(u_xlatu3.w) + 32i);
      u_xlatu3.w = (bitcast<u32>(u_xlati86) & 4294967264u);
    }
    u_xlatu62.y = u_xlatu3.w;
    if ((u_xlatu3.x == 0u)) {
      break;
    }
    u_xlati83 = (0i - bitcast<i32>(u_xlatu3.x));
    u_xlatu83 = (bitcast<u32>(u_xlati83) & u_xlatu3.x);
    u_xlat83 = f32(u_xlatu83);
    u_xlatu83 = (bitcast<u32>(u_xlat83) >> 23u);
    u_xlati83 = (bitcast<i32>(u_xlatu83) + -127i);
    u_xlati86 = (1i << bitcast<u32>((u_xlati83 & 31i)));
    u_xlatu62.x = (u_xlatu3.x ^ bitcast<u32>(u_xlati86));
    u_xlati86 = (bitcast<i32>(u_xlatu62.y) + -32i);
    u_xlati86 = bitcast<i32>((bitcast<u32>(u_xlati86) & 65504u));
    u_xlati83 = (u_xlati83 + u_xlati86);
    u_xlati83 = (bitcast<i32>(u_xlatu34.y) + u_xlati83);
    u_xlat10 = vec4f((((-(vs_TEXCOORD0) * x_3521.x_AdditionalLightsPosition[u_xlati83].www) + x_3521.x_AdditionalLightsPosition[u_xlati83].xyz)).xyz, u_xlat10.w);
    u_xlat86 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat86 = max(u_xlat86, 0.00006103515625f);
    u_xlat34 = inverseSqrt(u_xlat86);
    u_xlat11 = vec4f(((vec3f(u_xlat34) * u_xlat10.xyz)).xyz, u_xlat11.w);
    u_xlat88 = (1.0f / u_xlat86);
    u_xlat86 = (u_xlat86 * x_3521.x_AdditionalLightsAttenuation[u_xlati83].x);
    u_xlat86 = ((-(u_xlat86) * u_xlat86) + 1.0f);
    u_xlat86 = max(u_xlat86, 0.0f);
    u_xlat86 = (u_xlat86 * u_xlat86);
    u_xlat86 = (u_xlat86 * u_xlat88);
    u_xlat88 = dot(x_3521.x_AdditionalLightsSpotDir[u_xlati83].xyz, u_xlat11.xyz);
    u_xlat88 = ((u_xlat88 * x_3521.x_AdditionalLightsAttenuation[u_xlati83].z) + x_3521.x_AdditionalLightsAttenuation[u_xlati83].w);
    u_xlat88 = clamp(u_xlat88, 0.0f, 1.0f);
    u_xlat88 = (u_xlat88 * u_xlat88);
    u_xlat86 = (u_xlat86 * u_xlat88);
    u_xlatb88 = (u_xlati83 < 0i);
    u_xlati90 = i32(x_649.x_AdditionalShadowParams[u_xlati83].w);
    u_xlati88 = select(u_xlati90, -1i, u_xlatb88);
    u_xlatb90 = (u_xlati88 >= 0i);
    if (u_xlatb90) {
      u_xlatb90 = any(!((vec4f() == vec4f(x_649.x_AdditionalShadowParams[u_xlati83].z))));
      if (u_xlatb90) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb90 = (u_xlatb12.y & u_xlatb12.x);
        let x_5591 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_5591.xy, u_xlatb12.z, x_5591.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat91 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_5608 = u_xlat12.y;
        } else {
          x_5608 = u_xlat91;
        }
        u_xlat91 = x_5608;
        if (u_xlatb90) {
          x_5617 = u_xlat12.x;
        } else {
          x_5617 = u_xlat91;
        }
        u_xlat90 = x_5617;
        u_xlati90 = i32(u_xlat90);
        u_xlati88 = (u_xlati88 + u_xlati90);
      }
      u_xlati88 = (u_xlati88 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati88 + 1i)]);
      u_xlat12 = ((x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati88] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati88 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati88 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      u_xlatb88 = (0.0f < x_649.x_AdditionalShadowParams[u_xlati83].y);
      if (u_xlatb88) {
        u_xlatb88 = (1.0f == x_649.x_AdditionalShadowParams[u_xlati83].y);
        if (u_xlatb88) {
          u_xlat13 = (u_xlat12.xyxy + x_649.x_AdditionalShadowOffset0);
          let x_5690 = u_xlat13.xy;
          txVec60 = vec3f(x_5690.x, x_5690.y, u_xlat12.z);
          u_xlat14.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_5705 = u_xlat13.zw;
          txVec61 = vec3f(x_5705.x, x_5705.y, u_xlat12.z);
          u_xlat14.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat13 = (u_xlat12.xyxy + x_649.x_AdditionalShadowOffset1);
          let x_5725 = u_xlat13.xy;
          txVec62 = vec3f(x_5725.x, x_5725.y, u_xlat12.z);
          u_xlat14.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_5740 = u_xlat13.zw;
          txVec63 = vec3f(x_5740.x, x_5740.y, u_xlat12.z);
          u_xlat14.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat88 = dot(u_xlat14, x_1053);
        } else {
          u_xlatb90 = (2.0f == x_649.x_AdditionalShadowParams[u_xlati83].y);
          if (u_xlatb90) {
            u_xlat13 = vec4f((((u_xlat12.xy * x_649.x_AdditionalShadowmapSize.zw) + x_1069)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_649.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_1092);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_5797 = (u_xlat15.yw * x_1103);
            u_xlat14 = vec4f(x_5797.x, u_xlat14.y, x_5797.y, u_xlat14.w);
            u_xlat15 = vec4f((((u_xlat15.xz * x_1069) + -(u_xlat67))).xy, u_xlat15.zw);
            u_xlat69 = (-(u_xlat67) + x_901);
            u_xlat16 = vec4f(min(u_xlat67, vec2f()).xy, u_xlat16.zw);
            u_xlat16 = vec4f((((-(u_xlat16.xy) * u_xlat16.xy) + u_xlat69)).xy, u_xlat16.zw);
            u_xlat67 = max(u_xlat67, vec2f());
            u_xlat67 = ((-(u_xlat67) * u_xlat67) + u_xlat14.yw);
            u_xlat16 = vec4f(((u_xlat16.xy + x_901)).xy, u_xlat16.zw);
            u_xlat67 = (u_xlat67 + x_901);
            u_xlat17 = vec4f(((u_xlat15.xy * x_1155)).xy, u_xlat17.zw);
            u_xlat15 = vec4f(((u_xlat69 * x_1155)).xy, u_xlat15.zw);
            u_xlat16 = vec4f(((u_xlat16.xy * x_1155)).xy, u_xlat16.zw);
            u_xlat18 = vec4f(((u_xlat67 * x_1155)).xy, u_xlat18.zw);
            u_xlat67 = (u_xlat14.yw * x_1155);
            u_xlat17.z = u_xlat16.x;
            u_xlat17.w = u_xlat67.x;
            u_xlat15.z = u_xlat18.x;
            u_xlat15.w = u_xlat14.x;
            u_xlat19 = (u_xlat15.zwxz + u_xlat17.zwxz);
            u_xlat16.z = u_xlat17.y;
            u_xlat16.w = u_xlat67.y;
            u_xlat18.z = u_xlat15.y;
            u_xlat18.w = u_xlat14.z;
            u_xlat14 = vec4f(((u_xlat16.zyw + u_xlat18.zyw)).xyz, u_xlat14.w);
            u_xlat15 = vec4f(((u_xlat15.xzw / u_xlat19.zwy)).xyz, u_xlat15.w);
            u_xlat15 = vec4f(((u_xlat15.xyz + x_1225)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat18.zyw / u_xlat14.xyz)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_1225)).xyz, u_xlat16.w);
            u_xlat15 = vec4f(((u_xlat15.yxz * x_649.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xyz * x_649.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat16.w);
            u_xlat15.w = u_xlat16.x;
            u_xlat17 = ((u_xlat13.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat15.ywxw);
            u_xlat67 = ((u_xlat13.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat15.zw);
            u_xlat16.w = u_xlat15.y;
            let x_5964 = u_xlat16.yz;
            u_xlat15 = vec4f(u_xlat15.x, x_5964.x, u_xlat15.z, x_5964.y);
            u_xlat18 = ((u_xlat13.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat16 = ((u_xlat13.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat16.wywz);
            u_xlat15 = ((u_xlat13.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xwzw);
            u_xlat20 = (u_xlat14.xxxy * u_xlat19.zwyz);
            u_xlat21 = (u_xlat14.yyzz * u_xlat19);
            u_xlat90 = (u_xlat14.z * u_xlat19.y);
            let x_6010 = u_xlat17.xy;
            txVec64 = vec3f(x_6010.x, x_6010.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_6024 = u_xlat17.zw;
            txVec65 = vec3f(x_6024.x, x_6024.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat92 = (u_xlat92 * u_xlat20.y);
            u_xlat91 = ((u_xlat20.x * u_xlat91) + u_xlat92);
            txVec66 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat91 = ((u_xlat20.z * u_xlat92) + u_xlat91);
            let x_6067 = u_xlat16.xy;
            txVec67 = vec3f(x_6067.x, x_6067.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat91 = ((u_xlat20.w * u_xlat92) + u_xlat91);
            let x_6087 = u_xlat18.xy;
            txVec68 = vec3f(x_6087.x, x_6087.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat91 = ((u_xlat21.x * u_xlat92) + u_xlat91);
            let x_6107 = u_xlat18.zw;
            txVec69 = vec3f(x_6107.x, x_6107.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat91 = ((u_xlat21.y * u_xlat92) + u_xlat91);
            let x_6127 = u_xlat16.zw;
            txVec70 = vec3f(x_6127.x, x_6127.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat91 = ((u_xlat21.z * u_xlat92) + u_xlat91);
            let x_6147 = u_xlat15.xy;
            txVec71 = vec3f(x_6147.x, x_6147.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat91 = ((u_xlat21.w * u_xlat92) + u_xlat91);
            let x_6167 = u_xlat15.zw;
            txVec72 = vec3f(x_6167.x, x_6167.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat88 = ((u_xlat90 * u_xlat92) + u_xlat91);
          } else {
            u_xlat13 = vec4f((((u_xlat12.xy * x_649.x_AdditionalShadowmapSize.zw) + x_1069)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_649.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_1092);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_6219 = (u_xlat15.yw * x_1558);
            u_xlat16 = vec4f(u_xlat16.x, x_6219.x, u_xlat16.z, x_6219.y);
            let x_6227 = ((u_xlat15.xz * x_1069) + -(u_xlat67));
            u_xlat14 = vec4f(x_6227.x, u_xlat14.y, x_6227.y, u_xlat14.w);
            u_xlat15 = vec4f(((-(u_xlat67) + x_901)).xy, u_xlat15.zw);
            u_xlat69 = min(u_xlat67, vec2f());
            u_xlat15 = vec4f((((-(u_xlat69) * u_xlat69) + u_xlat15.xy)).xy, u_xlat15.zw);
            u_xlat69 = max(u_xlat67, vec2f());
            let x_6255 = ((-(u_xlat69) * u_xlat69) + u_xlat14.yw);
            u_xlat41 = vec3f(x_6255.x, u_xlat41.y, x_6255.y);
            u_xlat15 = vec4f(((u_xlat15.xy + x_1600)).xy, u_xlat15.zw);
            let x_6265 = (u_xlat41.xz + x_1600);
            u_xlat14 = vec4f(u_xlat14.x, x_6265.x, u_xlat14.z, x_6265.y);
            u_xlat17.z = (u_xlat14.y * 0.08163200318813323975f);
            u_xlat18 = vec4f(((u_xlat14.zxw * x_1616)).xyz, u_xlat18.w);
            u_xlat14 = vec4f(((u_xlat15.xy * x_1622)).xy, u_xlat14.zw);
            u_xlat17.x = u_xlat18.y;
            let x_6288 = ((u_xlat67.xx * x_1632) + x_1635);
            u_xlat17 = vec4f(u_xlat17.x, x_6288.x, u_xlat17.z, x_6288.y);
            let x_6294 = ((u_xlat67.xx * x_1632) + x_1642);
            u_xlat15 = vec4f(x_6294.x, u_xlat15.y, x_6294.y, u_xlat15.w);
            u_xlat15.y = u_xlat14.x;
            u_xlat15.w = u_xlat16.y;
            u_xlat17 = (u_xlat15 + u_xlat17);
            let x_6309 = ((u_xlat67.yy * x_1632) + x_1635);
            u_xlat18 = vec4f(u_xlat18.x, x_6309.x, u_xlat18.z, x_6309.y);
            let x_6315 = ((u_xlat67.yy * x_1632) + x_1642);
            u_xlat16 = vec4f(x_6315.x, u_xlat16.y, x_6315.y, u_xlat16.w);
            u_xlat16.y = u_xlat14.y;
            u_xlat14 = (u_xlat16 + u_xlat18);
            u_xlat15 = (u_xlat15 / u_xlat17);
            u_xlat15 = (u_xlat15 + x_1680);
            u_xlat16 = (u_xlat16 / u_xlat14);
            u_xlat16 = (u_xlat16 + x_1680);
            u_xlat15 = (u_xlat15.wxyz * x_649.x_AdditionalShadowmapSize.xxxx);
            u_xlat16 = (u_xlat16.xwyz * x_649.x_AdditionalShadowmapSize.yyyy);
            let x_6347 = u_xlat15.yzw;
            u_xlat18 = vec4f(x_6347.x, u_xlat18.y, x_6347.yz);
            u_xlat18.y = u_xlat16.x;
            u_xlat19 = ((u_xlat13.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat67 = ((u_xlat13.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.y = u_xlat18.y;
            u_xlat18.y = u_xlat16.z;
            u_xlat20 = ((u_xlat13.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat21 = vec4f((((u_xlat13.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat18.wy)).xy, u_xlat21.zw);
            u_xlat15.z = u_xlat18.y;
            u_xlat22 = ((u_xlat13.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyxz);
            u_xlat18.y = u_xlat16.w;
            u_xlat23 = ((u_xlat13.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat42 = ((u_xlat13.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.w = u_xlat18.y;
            u_xlat75 = ((u_xlat13.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat15.xw);
            let x_6445 = u_xlat18.xzw;
            u_xlat16 = vec4f(x_6445.x, u_xlat16.y, x_6445.yz);
            u_xlat18 = ((u_xlat13.xyxy * x_649.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat70 = ((u_xlat13.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat16.x = u_xlat15.x;
            u_xlat13 = vec4f((((u_xlat13.xy * x_649.x_AdditionalShadowmapSize.xy) + u_xlat16.xy)).xy, u_xlat13.zw);
            u_xlat24 = (u_xlat14.xxxx * u_xlat17);
            u_xlat25 = (u_xlat14.yyyy * u_xlat17);
            u_xlat26 = (u_xlat14.zzzz * u_xlat17);
            u_xlat14 = (u_xlat14.wwww * u_xlat17);
            let x_6500 = u_xlat19.xy;
            txVec73 = vec3f(x_6500.x, x_6500.y, u_xlat12.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_6514 = u_xlat19.zw;
            txVec74 = vec3f(x_6514.x, x_6514.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat91 = (u_xlat91 * u_xlat24.y);
            u_xlat90 = ((u_xlat24.x * u_xlat90) + u_xlat91);
            txVec75 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat90 = ((u_xlat24.z * u_xlat91) + u_xlat90);
            let x_6557 = u_xlat22.xy;
            txVec76 = vec3f(x_6557.x, x_6557.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat90 = ((u_xlat24.w * u_xlat91) + u_xlat90);
            let x_6577 = u_xlat20.xy;
            txVec77 = vec3f(x_6577.x, x_6577.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat90 = ((u_xlat25.x * u_xlat91) + u_xlat90);
            let x_6597 = u_xlat20.zw;
            txVec78 = vec3f(x_6597.x, x_6597.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat90 = ((u_xlat25.y * u_xlat91) + u_xlat90);
            let x_6617 = u_xlat21.xy;
            txVec79 = vec3f(x_6617.x, x_6617.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat90 = ((u_xlat25.z * u_xlat91) + u_xlat90);
            let x_6637 = u_xlat22.zw;
            txVec80 = vec3f(x_6637.x, x_6637.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat90 = ((u_xlat25.w * u_xlat91) + u_xlat90);
            let x_6657 = u_xlat23.xy;
            txVec81 = vec3f(x_6657.x, x_6657.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat90 = ((u_xlat26.x * u_xlat91) + u_xlat90);
            let x_6677 = u_xlat23.zw;
            txVec82 = vec3f(x_6677.x, x_6677.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat90 = ((u_xlat26.y * u_xlat91) + u_xlat90);
            txVec83 = vec3f(u_xlat42.x, u_xlat42.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat90 = ((u_xlat26.z * u_xlat91) + u_xlat90);
            txVec84 = vec3f(u_xlat75.x, u_xlat75.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat90 = ((u_xlat26.w * u_xlat91) + u_xlat90);
            let x_6735 = u_xlat18.xy;
            txVec85 = vec3f(x_6735.x, x_6735.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat90 = ((u_xlat14.x * u_xlat91) + u_xlat90);
            let x_6755 = u_xlat18.zw;
            txVec86 = vec3f(x_6755.x, x_6755.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat90 = ((u_xlat14.y * u_xlat91) + u_xlat90);
            txVec87 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat90 = ((u_xlat14.z * u_xlat91) + u_xlat90);
            let x_6794 = u_xlat13.xy;
            txVec88 = vec3f(x_6794.x, x_6794.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat88 = ((u_xlat14.w * u_xlat91) + u_xlat90);
          }
        }
      } else {
        let x_6815 = u_xlat12.xy;
        txVec89 = vec3f(x_6815.x, x_6815.y, u_xlat12.z);
        u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat90 = (1.0f + -(x_649.x_AdditionalShadowParams[u_xlati83].x));
      u_xlat88 = ((u_xlat88 * x_649.x_AdditionalShadowParams[u_xlati83].x) + u_xlat90);
      u_xlatb90 = (0.0f >= u_xlat12.z);
      u_xlatb91 = (u_xlat12.z >= 1.0f);
      u_xlatb90 = (u_xlatb90 | u_xlatb91);
      u_xlat88 = select(u_xlat88, 1.0f, u_xlatb90);
    } else {
      u_xlat88 = 1.0f;
    }
    u_xlat90 = (-(u_xlat88) + 1.0f);
    u_xlat88 = ((u_xlat82 * u_xlat90) + u_xlat88);
    u_xlati90 = bitcast<i32>((bitcast<u32>(x_826.unity_RenderingLayer.x) & bitcast<u32>(x_3521.x_AdditionalLightsLayerMasks[u_xlati83].el)));
    u_xlat86 = (u_xlat86 * u_xlat88);
    u_xlat88 = dot(u_xlat1.xyz, u_xlat11.xyz);
    u_xlat88 = clamp(u_xlat88, 0.0f, 1.0f);
    u_xlat86 = (u_xlat86 * u_xlat88);
    u_xlat12 = vec4f(((vec3f(u_xlat86) * x_3521.x_AdditionalLightsColor[u_xlati83].xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat34)) + u_xlat4)).xyz, u_xlat10.w);
    u_xlat83 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat83 = max(u_xlat83, 1.17549435e-38f);
    u_xlat83 = inverseSqrt(u_xlat83);
    u_xlat10 = vec4f(((vec3f(u_xlat83) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat83 = dot(u_xlat1.xyz, u_xlat10.xyz);
    u_xlat83 = clamp(u_xlat83, 0.0f, 1.0f);
    u_xlat86 = dot(u_xlat11.xyz, u_xlat10.xyz);
    u_xlat86 = clamp(u_xlat86, 0.0f, 1.0f);
    u_xlat83 = (u_xlat83 * u_xlat83);
    u_xlat83 = ((u_xlat83 * u_xlat30.x) + 1.00001001358032226562f);
    u_xlat86 = (u_xlat86 * u_xlat86);
    u_xlat83 = (u_xlat83 * u_xlat83);
    u_xlat86 = max(u_xlat86, 0.10000000149011611938f);
    u_xlat83 = (u_xlat83 * u_xlat86);
    u_xlat83 = (u_xlat87 * u_xlat83);
    u_xlat83 = (u_xlat85 / u_xlat83);
    u_xlat10 = vec4f((((vec3f(u_xlat83) * x_3470) + u_xlat27)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat9.xyz)).xyz, u_xlat10.w);
    if ((u_xlati90 != 0i)) {
      x_6975 = u_xlat10.xyz;
    } else {
      x_6975 = u_xlat9.xyz;
    }
    u_xlat9 = vec4f(x_6975.xyz, u_xlat9.w);
  }
  u_xlat0 = (u_xlat2 + u_xlat6.xyz);
  SV_Target0 = vec4f(((u_xlat9.xyz + u_xlat0)).xyz, SV_Target0.w);
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

@group(1) @binding(7) var<uniform> x_1063 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1390 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_1568 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_1814 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(7) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_2441 : AdditionalLights;

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

const x_1110 = vec2f(0.5f);

const x_1527 = vec2u(2u);

const x_1983 = vec3f(1.0f);

const x_2372 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlatb17 : bool;
  var u_xlat17 : vec3f;
  var u_xlat1 : vec4f;
  var x_135 : vec3f;
  var x_149 : vec3f;
  var u_xlatb2 : bool;
  var u_xlati2 : i32;
  var x_168 : i32;
  var u_xlat2 : vec3f;
  var u_xlat19 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat38 : f32;
  var u_xlat21 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat37 : f32;
  var u_xlat20 : vec3f;
  var u_xlatb36 : bool;
  var u_xlat53 : f32;
  var x_548 : f32;
  var u_xlatb0 : bool;
  var x_624 : vec3f;
  var u_xlat8 : vec4f;
  var u_xlatb5 : vec4<bool>;
  var u_xlat54 : f32;
  var u_xlatu54 : u32;
  var u_xlati54 : i32;
  var u_xlat52 : f32;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlat57 : f32;
  var txVec0 : vec3f;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlatb39 : bool;
  var x_1008 : f32;
  var u_xlat39 : vec2f;
  var u_xlat24 : vec3f;
  var u_xlat9 : vec4f;
  var u_xlatb24 : vec3<bool>;
  var x_1154 : f32;
  var x_1166 : vec3f;
  var u_xlat10 : vec3f;
  var u_xlatu7 : vec2u;
  var u_xlatu41 : vec2u;
  var u_xlati7 : i32;
  var x_1300 : f32;
  var u_xlatu0 : u32;
  var u_xlatu3 : vec4u;
  var u_xlati20 : i32;
  var u_xlatu20 : vec2u;
  var u_xlati24 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati42 : vec2i;
  var u_xlati0 : i32;
  var u_xlatu24 : vec3u;
  var u_xlatb8 : vec3<bool>;
  var u_xlatu11 : vec4u;
  var u_xlati45 : i32;
  var u_xlatu62 : u32;
  var u_xlat12 : vec4f;
  var u_xlatu58 : u32;
  var u_xlati59 : i32;
  var u_xlatu60 : u32;
  var u_xlatb61 : bool;
  var u_xlatu63 : u32;
  var u_xlatb63 : bool;
  var u_xlatu61 : u32;
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
  var u_xlati48 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati63 : i32;
  var u_xlati30 : i32;
  var u_xlati61 : i32;
  var u_xlatb58 : bool;
  var u_xlati58 : i32;
  var u_xlat58 : f32;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat61 : f32;
  var u_xlat63 : f32;
  var x_1875 : f32;
  var x_1889 : f32;
  var x_1903 : f32;
  var u_xlat30 : vec3f;
  var x_1957 : vec3f;
  var u_xlat64 : f32;
  var u_xlatb31 : vec2<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_2015 : f32;
  var x_2028 : f32;
  var u_xlat47 : vec2f;
  var u_xlatu47 : vec2u;
  var u_xlati47 : i32;
  var x_2382 : vec3f;
  var u_xlatu_loop_1 : u32;
  var u_xlatb56 : bool;
  var u_xlati56 : i32;
  var x_2532 : i32;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4f;
  var x_2597 : f32;
  var x_2607 : f32;
  var txVec1 : vec3f;
  var u_xlatb45 : vec2<bool>;
  var u_xlat45 : vec2f;
  var x_3016 : f32;
  var x_3029 : f32;
  var x_3087 : f32;
  var x_3099 : vec3f;
  var x_3246 : vec3f;
  var u_xlati3 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati39 : vec2i;
  var u_xlati9 : vec2i;
  var u_xlati53 : i32;
  var u_xlatu9 : vec2u;
  var u_xlatu43 : vec2u;
  var u_xlatu53 : u32;
  var u_xlatu56 : u32;
  var u_xlatu39 : u32;
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
  var u_xlati46 : vec2i;
  var u_xlatb13 : vec4<bool>;
  var u_xlat59 : f32;
  var x_3832 : f32;
  var x_3841 : f32;
  var txVec2 : vec3f;
  var u_xlatb59 : bool;
  var x_3941 : f32;
  var u_xlat15 : vec3f;
  var u_xlatb47 : vec2<bool>;
  var x_4210 : f32;
  var x_4223 : f32;
  var x_4269 : f32;
  var x_4280 : vec3f;
  var x_4444 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(x_77.x_FillPlane.xyz, vs_TEXCOORD0);
  u_xlat0.x = (u_xlat0.x + -(x_77.x_FillPlane.w));
  u_xlatb17 = (-(u_xlat0.x) < 0.0f);
  if (((select(0i, 1i, u_xlatb17) * -1i) != 0i)) {
    discard;
  }
  u_xlat17.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat17.x = inverseSqrt(u_xlat17.x);
  u_xlat17 = (u_xlat17.xxx * vs_TEXCOORD1);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_135 = u_xlat17;
  } else {
    x_135 = x_77.x_FillPlane.xyz;
  }
  u_xlat1 = vec4f(x_135.xyz, u_xlat1.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_149 = x_77.x_BaseColor.xyz;
  } else {
    x_149 = x_77.x_TopColor.xyz;
  }
  u_xlat17 = x_149;
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
    u_xlat19.x = (x_77.x_BubbleSpeed * x_77.x_BubbleTime);
    u_xlat19 = ((-(x_77.x_FillPlane.xyz) * u_xlat19.xxx) + vs_TEXCOORD0);
    let x_223 = vec3f(x_77.x_BubbleScale, x_77.x_BubbleScale, x_77.x_BubbleScale);
    u_xlat19 = (u_xlat19 * vec3f(x_223.x, x_223.y, x_223.z));
    u_xlat3 = floor(u_xlat19.yxzy);
    u_xlat19 = fract(u_xlat19);
    u_xlat4 = vec3f((((u_xlat3.ww * vec2f(17.3099994659423828125f)) + u_xlat3.yz)).xy, u_xlat4.z);
    u_xlat4 = vec3f(((u_xlat4.xy * x_250)).xy, u_xlat4.z);
    u_xlat4 = vec3f(fract(u_xlat4.xy).xy, u_xlat4.z);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat38 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec3f(((vec2f(u_xlat38) + u_xlat4.xy)).xy, u_xlat4.z);
    u_xlat21.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat21.x);
    u_xlat5 = (u_xlat3 + vec4f(7.09999990463256835938f, 7.09999990463256835938f, 3.70000004768371582031f, 3.70000004768371582031f));
    u_xlat5 = (u_xlat5 * vec4f(0.10310000181198120117f));
    u_xlat5 = fract(u_xlat5);
    u_xlat6 = (u_xlat5 + vec4f(33.3300018310546875f));
    u_xlat3.x = dot(u_xlat5.yxy, u_xlat6.xyy);
    u_xlat21 = vec3f(((u_xlat3.xx + u_xlat5.yx)).xy, u_xlat21.z);
    u_xlat3.x = (u_xlat21.y + u_xlat21.x);
    u_xlat3.x = (u_xlat21.x * u_xlat3.x);
    u_xlat7.x = fract(u_xlat3.x);
    u_xlat3.x = dot(u_xlat5.wzw, u_xlat6.zww);
    u_xlat21 = vec3f(((u_xlat3.xx + u_xlat5.wz)).xy, u_xlat21.z);
    u_xlat3.x = (u_xlat21.y + u_xlat21.x);
    u_xlat3.x = (u_xlat21.x * u_xlat3.x);
    u_xlat7.y = fract(u_xlat3.x);
    u_xlat21 = vec3f(((u_xlat3.zy + vec2f(5.30000019073486328125f))).xy, u_xlat21.z);
    u_xlat4 = vec3f(u_xlat4.x, ((u_xlat21.xy * x_250)).xy);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.zyy + x_263)).xyz, u_xlat5.w);
    u_xlat3.x = dot(u_xlat4.yzy, u_xlat5.xyz);
    u_xlat21 = vec3f(((u_xlat3.xx + u_xlat4.yz)).xy, u_xlat21.z);
    u_xlat3.x = (u_xlat21.y + u_xlat21.x);
    u_xlat3.x = (u_xlat21.x * u_xlat3.x);
    u_xlat7.z = fract(u_xlat3.x);
    u_xlat21 = ((u_xlat7.xyz * vec3f(0.5f)) + vec3f(0.25f));
    u_xlat3 = vec4f(((u_xlat3.ww + u_xlat3.yz)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + vec2f(1.29999995231628417969f))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_250)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat37 = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((vec2f(u_xlat37) + u_xlat3.xy)).xy, u_xlat3.zw);
    u_xlat20.x = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat20.x);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat3.x = ((u_xlat3.x * 0.1799999922513961792f) + 0.20000000298023223877f);
    u_xlat19 = (u_xlat19 + -(u_xlat21));
    u_xlat19.x = dot(u_xlat19, u_xlat19);
    u_xlat19.x = sqrt(u_xlat19.x);
    u_xlatb36 = (u_xlat4.x < 0.25999999046325683594f);
    u_xlat53 = (u_xlat3.x * -0.30000001192092895508f);
    u_xlat19.x = (-(u_xlat3.x) + u_xlat19.x);
    u_xlat53 = (1.0f / u_xlat53);
    u_xlat19.x = (u_xlat53 * u_xlat19.x);
    u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
    u_xlat53 = ((u_xlat19.x * -2.0f) + 3.0f);
    u_xlat19.x = (u_xlat19.x * u_xlat19.x);
    u_xlat19.x = (u_xlat19.x * u_xlat53);
    if (u_xlatb36) {
      x_548 = u_xlat19.x;
    } else {
      x_548 = 0.0f;
    }
    u_xlat19.x = x_548;
    u_xlat19.x = (u_xlat19.x * x_77.x_Glug);
    u_xlat2.x = (u_xlat2.x * u_xlat19.x);
    u_xlat0.x = (u_xlat0.x * -150.0f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat2 = (-(u_xlat17) + x_77.x_BubbleColor.xyz);
    u_xlat17 = ((u_xlat0.xxx * u_xlat2) + u_xlat17);
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
  u_xlat53 = dot(u_xlat2, u_xlat2);
  u_xlat53 = inverseSqrt(u_xlat53);
  u_xlat4 = (vec3f(u_xlat53) * u_xlat2);
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
  u_xlat54 = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat54 = (-(u_xlat54) + 4.0f);
  u_xlatu54 = u32(u_xlat54);
  u_xlati54 = (bitcast<i32>(u_xlatu54) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_650.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati54 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_650.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati54].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_650.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati54 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_650.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati54 + 3i)].xyz)).xyz, u_xlat5.w);
  u_xlat1.w = 1.0f;
  u_xlat6.x = dot(x_827.unity_SHAr, u_xlat1);
  u_xlat6.y = dot(x_827.unity_SHAg, u_xlat1);
  u_xlat6.z = dot(x_827.unity_SHAb, u_xlat1);
  u_xlat7 = (u_xlat1.yzzx * u_xlat1.xyzz);
  u_xlat8.x = dot(x_827.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_827.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_827.unity_SHBb, u_xlat7);
  u_xlat52 = (u_xlat1.y * u_xlat1.y);
  u_xlat52 = ((u_xlat1.x * u_xlat1.x) + -(u_xlat52));
  u_xlat7 = vec4f((((x_827.unity_SHC.xyz * vec3f(u_xlat52)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_905 = x_601.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((vec2f(1.0f) / vec2f(x_905.x, x_905.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat52 = ((u_xlat7.y * x_601.x_ScaleBiasRt.x) + x_601.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat52) + 1.0f);
  u_xlat17 = (u_xlat17 * vec3f(0.95999997854232788086f));
  u_xlat52 = (-(x_77.x_Smoothness) + 1.0f);
  u_xlat54 = (u_xlat52 * u_xlat52);
  u_xlat54 = max(u_xlat54, 0.0078125f);
  u_xlat55 = (u_xlat54 * u_xlat54);
  u_xlat56 = (x_77.x_Smoothness + 0.04000002145767211914f);
  u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
  u_xlat57 = ((u_xlat54 * 4.0f) + 2.0f);
  let x_963 = u_xlat5.xy;
  txVec0 = vec3f(x_963.x, x_963.y, u_xlat5.z);
  u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat22 = (-(x_650.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat5.x * x_650.x_MainLightShadowParams.x) + u_xlat22);
  u_xlatb22 = (0.0f >= u_xlat5.z);
  u_xlatb39 = (u_xlat5.z >= 1.0f);
  u_xlatb22 = (u_xlatb39 | u_xlatb22);
  if (u_xlatb22) {
    x_1008 = 1.0f;
  } else {
    x_1008 = u_xlat5.x;
  }
  u_xlat5.x = x_1008;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_601.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat22 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat39.x = ((u_xlat22 * x_650.x_MainLightShadowParams.z) + x_650.x_MainLightShadowParams.w);
  u_xlat39.x = clamp(u_xlat39.x, 0.0f, 1.0f);
  u_xlat24.x = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat39.x * u_xlat24.x) + u_xlat5.x);
  u_xlatb39 = !((x_1063.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb39) {
    let x_1075 = (vs_TEXCOORD0.yy * x_1063.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy);
    u_xlat24 = vec3f(x_1075.x, u_xlat24.y, x_1075.y);
    let x_1086 = ((x_1063.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD0.xx) + u_xlat24.xz);
    u_xlat24 = vec3f(x_1086.x, u_xlat24.y, x_1086.y);
    let x_1097 = ((x_1063.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD0.zz) + u_xlat24.xz);
    u_xlat24 = vec3f(x_1097.x, u_xlat24.y, x_1097.y);
    let x_1105 = (u_xlat24.xz + x_1063.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy);
    u_xlat24 = vec3f(x_1105.x, u_xlat24.y, x_1105.y);
    let x_1112 = ((u_xlat24.xz * x_1110) + x_1110);
    u_xlat24 = vec3f(x_1112.x, u_xlat24.y, x_1112.y);
    let x_1124 = u_xlat24;
    let x_1127 = x_601.x_GlobalMipBias.x;
    let x_1128 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1124.xz, x_1127);
    u_xlat9 = x_1128;
    let x_1140 = vec4f(x_1063.x_MainLightCookieTextureFormat, x_1063.x_MainLightCookieTextureFormat, x_1063.x_MainLightCookieTextureFormat, x_1063.x_MainLightCookieTextureFormat);
    let x_1149 = ((vec4f(x_1140.x, x_1140.y, x_1140.z, x_1140.w) == vec4f(0.0f, 0.0f, 1.0f, 1.0f))).xz;
    u_xlatb24 = vec3<bool>(x_1149.x, u_xlatb24.y, x_1149.y);
    if (u_xlatb24.z) {
      x_1154 = u_xlat9.w;
    } else {
      x_1154 = u_xlat9.x;
    }
    u_xlat39.x = x_1154;
    if (u_xlatb24.x) {
      x_1166 = u_xlat9.xyz;
    } else {
      x_1166 = u_xlat39.xxx;
    }
    u_xlat9 = vec4f(x_1166.xyz, u_xlat9.w);
  } else {
    u_xlat9.x = 1.0f;
    u_xlat9.y = 1.0f;
    u_xlat9.z = 1.0f;
  }
  u_xlat9 = vec4f(((u_xlat9.xyz * x_601.x_MainLightColor.xyz)).xyz, u_xlat9.w);
  u_xlat39.x = dot(-(u_xlat4), u_xlat1.xyz);
  u_xlat39.x = (u_xlat39.x + u_xlat39.x);
  u_xlat10 = ((u_xlat1.xyz * -(u_xlat39.xxx)) + -(u_xlat4));
  u_xlat39.x = dot(u_xlat1.xyz, u_xlat4);
  u_xlat39.x = clamp(u_xlat39.x, 0.0f, 1.0f);
  u_xlat39.x = (-(u_xlat39.x) + 1.0f);
  u_xlat39.x = (u_xlat39.x * u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * u_xlat39.x);
  u_xlat24.x = ((-(u_xlat52) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat52 = (u_xlat52 * u_xlat24.x);
  u_xlat52 = (u_xlat52 * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_601.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu41 = vec2u(x_601.x_FPParams1.zw);
  u_xlati7 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu41.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu7.x = (u_xlatu41.y * bitcast<u32>(u_xlati7));
  u_xlat3.x = dot(-(u_xlat3.xyz), u_xlat8.xyz);
  u_xlat20.x = log2(u_xlat3.x);
  if (u_xlatb0) {
    x_1300 = u_xlat20.x;
  } else {
    x_1300 = u_xlat3.x;
  }
  u_xlat0.x = x_1300;
  u_xlat0.x = ((u_xlat0.x * x_601.x_FPParams0.x) + x_601.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu3.x = u32(x_601.x_FPParams2.x);
  u_xlatu3.x = (u_xlatu3.x + 4294967295u);
  u_xlati20 = (bitcast<i32>(u_xlatu41.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu3.x);
  u_xlatu3.x = (bitcast<u32>(u_xlati20) * u_xlatu0);
  u_xlatu20 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati20))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu20.x >> 2u);
  param = bitcast<i32>(u_xlatu20.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_1369 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu20.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_1376 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati24 = vec3i(vec2i(x_1369, x_1376).xy, u_xlati24.z);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati24.xx) & bitcast<vec2u>(x_1390.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_1401 = ~(u_xlati24.xy);
  u_xlati24 = vec3i(x_1401.x, u_xlati24.y, x_1401.y);
  u_xlati42 = bitcast<vec2i>((bitcast<vec2u>(u_xlati24.xx) & bitcast<vec2u>(x_1390.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati42) | bitcast<vec2u>(u_xlati8)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati24.y) & bitcast<u32>(u_xlati8.x)));
  u_xlati20 = bitcast<i32>((bitcast<u32>(u_xlati24.z) & bitcast<u32>(u_xlati8.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati20));
  u_xlatu24 = vec3u(vec2u(x_601.x_FPParams0.zw).xy, u_xlatu24.z);
  u_xlatb8 = ((vec4f() < u_xlat10.xyzx)).xyz;
  u_xlatu11.x = u_xlatu7.x;
  u_xlatu11.y = u_xlatu20.y;
  u_xlati45 = 0i;
  u_xlatu62 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat20.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu58 = (u_xlatu62 >> 16u);
    u_xlati59 = u_xlati45;
    u_xlatu60 = u_xlatu62;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb61 = (u_xlati59 == 0i);
      u_xlatu63 = (u_xlatu60 & 65535u);
      u_xlatb63 = (u_xlatu58 >= u_xlatu63);
      u_xlatb61 = (u_xlatb61 & u_xlatb63);
      if (!(u_xlatb61)) {
        break;
      }
      param_6 = u_xlatu60;
      param_7 = 5i;
      param_8 = 11i;
      let x_1517 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu61 = x_1517;
      u_xlatu13 = (vec4u(u_xlatu61) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> x_1527);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_1538 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_1545 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_1552 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_1559 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_1538, x_1545, x_1552, x_1559);
      u_xlati48 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_1568.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_1568.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_1600 = bitcast<vec2i>((bitcast<vec2u>(u_xlati48) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_1600.x, u_xlati14.y, x_1600.y);
      u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati63) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_1390.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_1390.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati30 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati30) | bitcast<u32>(u_xlati13.x)));
      u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati63) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu60) & 31i)));
      u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati63) & bitcast<u32>(u_xlati13.x)));
      u_xlati61 = (bitcast<i32>(u_xlatu61) << bitcast<u32>(5i));
      u_xlatu61 = (u_xlatu58 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati61)))));
      u_xlatu61 = min(u_xlatu61, 31u);
      u_xlatu61 = (bitcast<u32>(-(bitcast<i32>(u_xlatu61))) + 31u);
      u_xlatu61 = (4294967295u >> (u_xlatu61 & 31u));
      u_xlati59 = bitcast<i32>((u_xlatu61 & bitcast<u32>(u_xlati63)));
      u_xlati61 = (bitcast<i32>(u_xlatu60) + 32i);
      u_xlatu60 = (bitcast<u32>(u_xlati61) & 4294967264u);
    }
    u_xlatu62 = u_xlatu60;
    u_xlatb58 = (u_xlati59 != 0i);
    u_xlatb61 = (u_xlat20.x < 0.99000000953674316406f);
    u_xlatb58 = (u_xlatb58 & u_xlatb61);
    if (!(u_xlatb58)) {
      break;
    }
    u_xlati58 = (0i - u_xlati59);
    u_xlatu58 = (bitcast<u32>(u_xlati58) & bitcast<u32>(u_xlati59));
    u_xlat58 = f32(u_xlatu58);
    u_xlatu58 = (bitcast<u32>(u_xlat58) >> 23u);
    u_xlati58 = (bitcast<i32>(u_xlatu58) + -127i);
    u_xlati61 = (1i << bitcast<u32>((u_xlati58 & 31i)));
    u_xlati45 = bitcast<i32>((bitcast<u32>(u_xlati59) ^ bitcast<u32>(u_xlati61)));
    u_xlati61 = (bitcast<i32>(u_xlatu62) + -32i);
    u_xlati61 = bitcast<i32>((bitcast<u32>(u_xlati61) & 65504u));
    u_xlati58 = (u_xlati58 + u_xlati61);
    u_xlati58 = (-(bitcast<i32>(u_xlatu24.x)) + u_xlati58);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_1814.urp_ReflProbes_BoxMin[u_xlati58].xyz))).xyz, u_xlat13.w);
    u_xlat14 = vec4f(((-(vs_TEXCOORD0) + x_1814.urp_ReflProbes_BoxMax[u_xlati58].xyz)).xyz, u_xlat14.w);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14.xyz).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_1814.urp_ReflProbes_BoxMax[u_xlati58].www)).xyz, u_xlat13.w);
    u_xlat61 = min(u_xlat13.z, u_xlat13.y);
    u_xlat61 = min(u_xlat61, u_xlat13.x);
    u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
    u_xlat63 = (-(u_xlat20.x) + 1.0f);
    u_xlat61 = min(u_xlat61, u_xlat63);
    u_xlatb63 = (0.0f < x_1814.urp_ReflProbes_ProbePosition[u_xlati58].w);
    if (u_xlatb8.x) {
      x_1875 = x_1814.urp_ReflProbes_BoxMax[u_xlati58].x;
    } else {
      x_1875 = x_1814.urp_ReflProbes_BoxMin[u_xlati58].x;
    }
    u_xlat13.x = x_1875;
    if (u_xlatb8.y) {
      x_1889 = x_1814.urp_ReflProbes_BoxMax[u_xlati58].y;
    } else {
      x_1889 = x_1814.urp_ReflProbes_BoxMin[u_xlati58].y;
    }
    u_xlat13.y = x_1889;
    if (u_xlatb8.z) {
      x_1903 = x_1814.urp_ReflProbes_BoxMax[u_xlati58].z;
    } else {
      x_1903 = x_1814.urp_ReflProbes_BoxMin[u_xlati58].z;
    }
    u_xlat13.z = x_1903;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat10)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat30 = (vs_TEXCOORD0 + -(x_1814.urp_ReflProbes_ProbePosition[u_xlati58].xyz));
    u_xlat13 = vec4f((((u_xlat10 * u_xlat13.xxx) + u_xlat30)).xyz, u_xlat13.w);
    if (u_xlatb63) {
      x_1957 = u_xlat13.xyz;
    } else {
      x_1957 = u_xlat10;
    }
    u_xlat13 = vec4f(x_1957.xyz, u_xlat13.w);
    u_xlatu63 = u32(abs(x_1814.urp_ReflProbes_ProbePosition[u_xlati58].w));
    u_xlatu63 = (u_xlatu63 + 4294967295u);
    u_xlat63 = f32(u_xlatu63);
    u_xlat63 = min(u_xlat52, u_xlat63);
    u_xlat64 = dot(abs(u_xlat13.xyz), x_1983);
    u_xlat64 = max(u_xlat64, 0.00000099999999747524f);
    u_xlat64 = (1.0f / u_xlat64);
    u_xlat14 = vec4f(((vec3f(u_xlat64) * u_xlat13.zxy)).xyz, u_xlat14.w);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb31 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb31.x) {
      x_2015 = u_xlat14.x;
    } else {
      x_2015 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_2015;
    if (u_xlatb31.y) {
      x_2028 = u_xlat14.x;
    } else {
      x_2028 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_2028;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat64)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_1110) + x_1110)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat47.x = floor(u_xlat63);
    u_xlat47.y = (u_xlat47.x + 1.0f);
    u_xlat63 = (u_xlat63 + -(u_xlat47.x));
    u_xlatu47 = vec2u(u_xlat47);
    u_xlati47 = ((u_xlati58 * 7i) + bitcast<i32>(u_xlatu47.x));
    u_xlati58 = ((u_xlati58 * 7i) + bitcast<i32>(u_xlatu47.y));
    u_xlat47 = ((u_xlat13.xy * x_1814.urp_ReflProbes_MipScaleOffset[u_xlati47].xy) + x_1814.urp_ReflProbes_MipScaleOffset[u_xlati47].zw);
    u_xlat14 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat47, 0.0f).xyz.xyz, u_xlat14.w);
    u_xlat13 = vec4f((((u_xlat13.xy * x_1814.urp_ReflProbes_MipScaleOffset[u_xlati58].xy) + x_1814.urp_ReflProbes_MipScaleOffset[u_xlati58].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat63) * u_xlat13.xyz) + u_xlat14.xyz)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((vec3f(u_xlat61) * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat20.x = (u_xlat20.x + u_xlat61);
  }
  u_xlatb0 = (u_xlat20.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10, u_xlat52);
    u_xlat0.x = (-(u_xlat20.x) + 1.0f);
    u_xlat52 = (u_xlat8.w + -1.0f);
    u_xlat52 = ((x_601.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat52) + 1.0f);
    u_xlat52 = max(u_xlat52, 0.0f);
    u_xlat52 = log2(u_xlat52);
    u_xlat52 = (u_xlat52 * x_601.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat52 = exp2(u_xlat52);
    u_xlat52 = (u_xlat52 * x_601.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * vec3f(u_xlat52))).xyz, u_xlat8.w);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat8.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  let x_2237 = ((vec2f(u_xlat54) * vec2f(u_xlat54)) + vec2f(-1.0f, 1.0f));
  u_xlat20 = vec3f(x_2237.x, u_xlat20.y, x_2237.y);
  u_xlat0.x = (1.0f / u_xlat20.z);
  u_xlat52 = (u_xlat56 + -0.03999999910593032837f);
  u_xlat52 = ((u_xlat39.x * u_xlat52) + 0.03999999910593032837f);
  u_xlat0.x = (u_xlat0.x * u_xlat52);
  u_xlat8 = vec4f(((u_xlat0.xxx * u_xlat12.xyz)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat17) + u_xlat8.xyz)).xyz, u_xlat6.w);
  u_xlati0 = bitcast<i32>((x_601.x_MainLightLayerMask & bitcast<u32>(x_827.unity_RenderingLayer.x)));
  u_xlat52 = dot(u_xlat1.xyz, x_601.x_MainLightPosition.xyz);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat52 = (u_xlat52 * u_xlat5.x);
  let x_2298 = (vec3f(u_xlat52) * u_xlat9.xyz);
  u_xlat5 = vec4f(x_2298.x, u_xlat5.y, x_2298.yz);
  u_xlat2 = ((u_xlat2 * vec3f(u_xlat53)) + x_601.x_MainLightPosition.xyz);
  u_xlat52 = dot(u_xlat2, u_xlat2);
  u_xlat52 = max(u_xlat52, 1.17549435e-38f);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat2 = (vec3f(u_xlat52) * u_xlat2);
  u_xlat52 = dot(u_xlat1.xyz, u_xlat2);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat2.x = dot(x_601.x_MainLightPosition.xyz, u_xlat2);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat52 = (u_xlat52 * u_xlat52);
  u_xlat52 = ((u_xlat52 * u_xlat20.x) + 1.00001001358032226562f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat52 = (u_xlat52 * u_xlat52);
  u_xlat2.x = max(u_xlat2.x, 0.10000000149011611938f);
  u_xlat52 = (u_xlat52 * u_xlat2.x);
  u_xlat52 = (u_xlat57 * u_xlat52);
  u_xlat52 = (u_xlat55 / u_xlat52);
  u_xlat2 = ((vec3f(u_xlat52) * x_2372) + u_xlat17);
  u_xlat2 = (u_xlat5.xzw * u_xlat2);
  if ((u_xlati0 != 0i)) {
    x_2382 = u_xlat2;
  } else {
    x_2382 = vec3f();
  }
  u_xlat2 = x_2382;
  u_xlatu0 = min(u_xlatu24.y, 32u);
  u_xlat52 = ((u_xlat22 * x_650.x_AdditionalShadowFadeParams.x) + x_650.x_AdditionalShadowFadeParams.y);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  let x_2408 = vec4f(x_1063.x_AdditionalLightsCookieAtlasTextureFormat, x_1063.x_AdditionalLightsCookieAtlasTextureFormat, x_1063.x_AdditionalLightsCookieAtlasTextureFormat, x_1063.x_AdditionalLightsCookieAtlasTextureFormat);
  u_xlatb5 = vec4<bool>(((vec4f(x_2408.x, x_2408.y, x_2408.z, x_2408.w) == vec4f(0.0f, 1.0f, 0.0f, 0.0f))).xy.xy, u_xlatb5.zw);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu0)) {
    } else {
      break;
    }
    u_xlat9 = vec4f((((-(vs_TEXCOORD0) * x_2441.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_2441.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat9.w);
    u_xlat54 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat54 = max(u_xlat54, 0.00006103515625f);
    u_xlat39.x = inverseSqrt(u_xlat54);
    u_xlat10 = (u_xlat39.xxx * u_xlat9.xyz);
    u_xlat56 = (1.0f / u_xlat54);
    u_xlat54 = (u_xlat54 * x_2441.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat54 = ((-(u_xlat54) * u_xlat54) + 1.0f);
    u_xlat54 = max(u_xlat54, 0.0f);
    u_xlat54 = (u_xlat54 * u_xlat54);
    u_xlat54 = (u_xlat54 * u_xlat56);
    u_xlat56 = dot(x_2441.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat10);
    u_xlat56 = ((u_xlat56 * x_2441.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_2441.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
    u_xlat56 = (u_xlat56 * u_xlat56);
    u_xlat54 = (u_xlat54 * u_xlat56);
    u_xlatb56 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati24.x = i32(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    if (u_xlatb56) {
      x_2532 = -1i;
    } else {
      x_2532 = u_xlati24.x;
    }
    u_xlati56 = x_2532;
    u_xlatb24.x = (u_xlati56 >= 0i);
    if (u_xlatb24.x) {
      u_xlatb24.x = any(!((vec4f() == vec4f(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb24.x) {
        u_xlatb11 = vec4<bool>(((abs(u_xlat10.zzyz) >= abs(u_xlat10.xyxx))).xyz.xyz, u_xlatb11.w);
        u_xlatb24.x = (u_xlatb11.y & u_xlatb11.x);
        let x_2579 = ((-(u_xlat10.zyzx) < vec4f())).xyw;
        u_xlatb11 = vec4<bool>(x_2579.xy, u_xlatb11.z, x_2579.z);
        u_xlat11.x = select(4.0f, 5.0f, u_xlatb11.x);
        u_xlat11.y = select(2.0f, 3.0f, u_xlatb11.y);
        u_xlat58 = select(0.0f, 1.0f, u_xlatb11.w);
        if (u_xlatb11.z) {
          x_2597 = u_xlat11.y;
        } else {
          x_2597 = u_xlat58;
        }
        u_xlat58 = x_2597;
        if (u_xlatb24.x) {
          x_2607 = u_xlat11.x;
        } else {
          x_2607 = u_xlat58;
        }
        u_xlat24.x = x_2607;
        u_xlati24.x = i32(u_xlat24.x);
        u_xlati56 = (u_xlati56 + u_xlati24.x);
      }
      u_xlati56 = (u_xlati56 << bitcast<u32>(2i));
      u_xlat11 = (vs_TEXCOORD0.yyyy * x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati56 + 1i)]);
      u_xlat11 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati56] * vs_TEXCOORD0.xxxx) + u_xlat11);
      u_xlat11 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati56 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat11);
      u_xlat11 = (u_xlat11 + x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati56 + 3i)]);
      u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat11.www)).xyz, u_xlat11.w);
      let x_2666 = u_xlat11.xy;
      txVec1 = vec3f(x_2666.x, x_2666.y, u_xlat11.z);
      u_xlat56 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat24.x = (1.0f + -(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat56 = ((u_xlat56 * x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat24.x);
      u_xlatb24.x = (0.0f >= u_xlat11.z);
      u_xlatb58 = (u_xlat11.z >= 1.0f);
      u_xlatb24.x = (u_xlatb58 | u_xlatb24.x);
      u_xlat56 = select(u_xlat56, 1.0f, u_xlatb24.x);
    } else {
      u_xlat56 = 1.0f;
    }
    u_xlat24.x = (-(u_xlat56) + 1.0f);
    u_xlat56 = ((u_xlat52 * u_xlat24.x) + u_xlat56);
    u_xlati24.x = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati24.x = bitcast<i32>((bitcast<u32>(u_xlati24.x) & bitcast<u32>(x_1063.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati24.x != 0i)) {
      u_xlati24.x = i32(x_1063.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati58 = select(1i, 0i, (u_xlati24.x != 0i));
      u_xlati59 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati58 != 0i)) {
        u_xlat11 = vec4f(((vs_TEXCOORD0.yyy * x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 1i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati59].xyw * vs_TEXCOORD0.xxx) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 3i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xy / u_xlat11.zz)).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((u_xlat11.xy * x_1110) + x_1110)).xy, u_xlat11.zw);
        u_xlat11 = vec4f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((x_1063.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat11.xy) + x_1063.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
      } else {
        u_xlatb24.x = (u_xlati24.x == 1i);
        u_xlati24.x = select(0i, 1i, u_xlatb24.x);
        if ((u_xlati24.x != 0i)) {
          let x_2860 = (vs_TEXCOORD0.yy * x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 1i)].xy);
          u_xlat24 = vec3f(x_2860.x, u_xlat24.y, x_2860.y);
          let x_2872 = ((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati59].xy * vs_TEXCOORD0.xx) + u_xlat24.xz);
          u_xlat24 = vec3f(x_2872.x, u_xlat24.y, x_2872.y);
          let x_2885 = ((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat24.xz);
          u_xlat24 = vec3f(x_2885.x, u_xlat24.y, x_2885.y);
          let x_2895 = (u_xlat24.xz + x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 3i)].xy);
          u_xlat24 = vec3f(x_2895.x, u_xlat24.y, x_2895.y);
          let x_2901 = ((u_xlat24.xz * x_1110) + x_1110);
          u_xlat24 = vec3f(x_2901.x, u_xlat24.y, x_2901.y);
          let x_2906 = fract(u_xlat24.xz);
          u_xlat24 = vec3f(x_2906.x, u_xlat24.y, x_2906.y);
          u_xlat11 = vec4f((((x_1063.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat24.xz) + x_1063.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
        } else {
          u_xlat12 = (vs_TEXCOORD0.yyyy * x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 1i)]);
          u_xlat12 = ((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati59] * vs_TEXCOORD0.xxxx) + u_xlat12);
          u_xlat12 = ((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
          u_xlat12 = (u_xlat12 + x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 3i)]);
          u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
          u_xlat24.x = dot(u_xlat12.xyz, u_xlat12.xyz);
          u_xlat24.x = inverseSqrt(u_xlat24.x);
          u_xlat12 = vec4f(((u_xlat24.xxx * u_xlat12.xyz)).xyz, u_xlat12.w);
          u_xlat24.x = dot(abs(u_xlat12.xyz), x_1983);
          u_xlat24.x = max(u_xlat24.x, 0.00000099999999747524f);
          u_xlat24.x = (1.0f / u_xlat24.x);
          u_xlat13 = vec4f(((u_xlat24.xxx * u_xlat12.zxy)).xyz, u_xlat13.w);
          u_xlat13.x = -(u_xlat13.x);
          u_xlat13.x = clamp(u_xlat13.x, 0.0f, 1.0f);
          u_xlatb45 = ((u_xlat13.yzyz >= vec4f())).xy;
          if (u_xlatb45.x) {
            x_3016 = u_xlat13.x;
          } else {
            x_3016 = -(u_xlat13.x);
          }
          u_xlat45.x = x_3016;
          if (u_xlatb45.y) {
            x_3029 = u_xlat13.x;
          } else {
            x_3029 = -(u_xlat13.x);
          }
          u_xlat45.y = x_3029;
          let x_3046 = ((u_xlat12.xy * u_xlat24.xx) + u_xlat45);
          u_xlat24 = vec3f(x_3046.x, u_xlat24.y, x_3046.y);
          let x_3052 = ((u_xlat24.xz * x_1110) + x_1110);
          u_xlat24 = vec3f(x_3052.x, u_xlat24.y, x_3052.y);
          let x_3059 = clamp(u_xlat24.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat24 = vec3f(x_3059.x, u_xlat24.y, x_3059.y);
          u_xlat11 = vec4f((((x_1063.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat24.xz) + x_1063.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
        }
      }
      u_xlat11 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat11.xy, 0.0f);
      if (u_xlatb5.y) {
        x_3087 = u_xlat11.w;
      } else {
        x_3087 = u_xlat11.x;
      }
      u_xlat24.x = x_3087;
      if (u_xlatb5.x) {
        x_3099 = u_xlat11.xyz;
      } else {
        x_3099 = u_xlat24.xxx;
      }
      u_xlat11 = vec4f(x_3099.xyz, u_xlat11.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    u_xlat11 = vec4f(((u_xlat11.xyz * x_2441.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat11.w);
    u_xlati24.x = bitcast<i32>((bitcast<u32>(x_827.unity_RenderingLayer.x) & bitcast<u32>(x_2441.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat54 = (u_xlat54 * u_xlat56);
    u_xlat56 = dot(u_xlat1.xyz, u_xlat10);
    u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
    u_xlat54 = (u_xlat54 * u_xlat56);
    u_xlat11 = vec4f(((vec3f(u_xlat54) * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * u_xlat39.xxx) + u_xlat4)).xyz, u_xlat9.w);
    u_xlat54 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat54 = max(u_xlat54, 1.17549435e-38f);
    u_xlat54 = inverseSqrt(u_xlat54);
    u_xlat9 = vec4f(((vec3f(u_xlat54) * u_xlat9.xyz)).xyz, u_xlat9.w);
    u_xlat54 = dot(u_xlat1.xyz, u_xlat9.xyz);
    u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
    u_xlat39.x = dot(u_xlat10, u_xlat9.xyz);
    u_xlat39.x = clamp(u_xlat39.x, 0.0f, 1.0f);
    u_xlat54 = (u_xlat54 * u_xlat54);
    u_xlat54 = ((u_xlat54 * u_xlat20.x) + 1.00001001358032226562f);
    u_xlat39.x = (u_xlat39.x * u_xlat39.x);
    u_xlat54 = (u_xlat54 * u_xlat54);
    u_xlat39.x = max(u_xlat39.x, 0.10000000149011611938f);
    u_xlat54 = (u_xlat54 * u_xlat39.x);
    u_xlat54 = (u_xlat57 * u_xlat54);
    u_xlat54 = (u_xlat55 / u_xlat54);
    u_xlat9 = vec4f((((vec3f(u_xlat54) * x_2372) + u_xlat17)).xyz, u_xlat9.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * u_xlat11.xyz) + u_xlat8.xyz)).xyz, u_xlat9.w);
    if ((u_xlati24.x != 0i)) {
      x_3246 = u_xlat9.xyz;
    } else {
      x_3246 = u_xlat8.xyz;
    }
    u_xlat8 = vec4f(x_3246.xyz, u_xlat8.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu0 = (u_xlatu3.x >> 2u);
  param_21 = bitcast<i32>(u_xlatu3.x);
  param_22 = 0i;
  param_23 = 1i;
  let x_3269 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu3.x);
  param_25 = 1i;
  param_26 = 1i;
  let x_3276 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  let x_3277 = vec2i(x_3269, x_3276);
  u_xlati3 = vec4i(x_3277.x, u_xlati3.yz, x_3277.y);
  u_xlati39 = bitcast<vec2i>((bitcast<vec2u>(u_xlati3.xx) & bitcast<vec2u>(x_1390.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_3294 = ~(u_xlati3.xw);
  u_xlati24 = vec3i(x_3294.x, u_xlati24.y, x_3294.y);
  u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati24.xx) & bitcast<vec2u>(x_1390.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati39 = bitcast<vec2i>((bitcast<vec2u>(u_xlati39) | bitcast<vec2u>(u_xlati9)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati3.w) & bitcast<u32>(u_xlati39.x)));
  u_xlati53 = bitcast<i32>((bitcast<u32>(u_xlati24.z) & bitcast<u32>(u_xlati39.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati53));
  u_xlatu9.x = u_xlatu7.x;
  u_xlatu9.y = u_xlatu20.y;
  u_xlatu43.x = 0u;
  u_xlatu43.y = u_xlatu0;
  u_xlat10 = u_xlat8.xyz;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu53 = (u_xlatu43.y >> 16u);
    u_xlatu3 = vec4u(u_xlatu43.x, u_xlatu3.yz, u_xlatu43.y);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb39 = (bitcast<i32>(u_xlatu3.x) == 0i);
      u_xlatu56 = (u_xlatu3.w & 65535u);
      u_xlatb56 = (u_xlatu53 >= u_xlatu56);
      u_xlatb39 = (u_xlatb56 & u_xlatb39);
      if (!(u_xlatb39)) {
        break;
      }
      param_27 = u_xlatu3.w;
      param_28 = 5i;
      param_29 = 11i;
      let x_3392 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu39 = x_3392;
      u_xlatu11 = (vec4u(u_xlatu39) + u_xlatu9.xxyy);
      let x_3400 = (u_xlatu11.yw >> x_1527);
      u_xlatu24 = vec3u(x_3400.x, u_xlatu24.y, x_3400.y);
      param_30 = bitcast<i32>(u_xlatu11.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_3410 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu11.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_3417 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu11.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_3424 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu11.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_3431 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati11 = vec4i(x_3410, x_3417, x_3424, x_3431);
      u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_1568.urp_Tiles[bitcast<i32>(u_xlatu24.x)].wy)));
      u_xlati13 = ~(u_xlati11);
      u_xlati46 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_1568.urp_Tiles[bitcast<i32>(u_xlatu24.x)].zx)));
      u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati46) | bitcast<vec2u>(u_xlati12)));
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati12.x)));
      u_xlati24.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati12.y)));
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati56) | bitcast<u32>(u_xlati24.x)));
      u_xlati11 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_1390.urp_ZBins[bitcast<i32>(u_xlatu24.z)].wy))).xy, u_xlati11.zw);
      let x_3516 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_1390.urp_ZBins[bitcast<i32>(u_xlatu24.z)].zx)));
      u_xlati24 = vec3i(x_3516.x, u_xlati24.y, x_3516.y);
      let x_3526 = bitcast<vec2i>((bitcast<vec2u>(u_xlati24.xz) | bitcast<vec2u>(u_xlati11.xy)));
      u_xlati24 = vec3i(x_3526.x, u_xlati24.y, x_3526.y);
      u_xlati24.x = bitcast<i32>((bitcast<u32>(u_xlati11.w) & bitcast<u32>(u_xlati24.x)));
      u_xlati58 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati24.z)));
      u_xlati24.x = bitcast<i32>((bitcast<u32>(u_xlati58) | bitcast<u32>(u_xlati24.x)));
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati24.x)));
      u_xlati24.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu3.w) & 31i)));
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati24.x)));
      u_xlati39.x = (bitcast<i32>(u_xlatu39) << bitcast<u32>(5i));
      u_xlatu39 = (u_xlatu53 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati39.x)))));
      u_xlatu39 = min(u_xlatu39, 31u);
      u_xlatu39 = (bitcast<u32>(-(bitcast<i32>(u_xlatu39))) + 31u);
      u_xlatu39 = (4294967295u >> (u_xlatu39 & 31u));
      u_xlatu3.x = (u_xlatu39 & bitcast<u32>(u_xlati56));
      u_xlati39.x = (bitcast<i32>(u_xlatu3.w) + 32i);
      u_xlatu3.w = (bitcast<u32>(u_xlati39.x) & 4294967264u);
    }
    u_xlatu43.y = u_xlatu3.w;
    if ((u_xlatu3.x == 0u)) {
      break;
    }
    u_xlati53 = (0i - bitcast<i32>(u_xlatu3.x));
    u_xlatu53 = (bitcast<u32>(u_xlati53) & u_xlatu3.x);
    u_xlat53 = f32(u_xlatu53);
    u_xlatu53 = (bitcast<u32>(u_xlat53) >> 23u);
    u_xlati53 = (bitcast<i32>(u_xlatu53) + -127i);
    u_xlati39.x = (1i << bitcast<u32>((u_xlati53 & 31i)));
    u_xlatu43.x = (u_xlatu3.x ^ bitcast<u32>(u_xlati39.x));
    u_xlati39.x = (bitcast<i32>(u_xlatu43.y) + -32i);
    u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati39.x) & 65504u));
    u_xlati53 = (u_xlati53 + u_xlati39.x);
    u_xlati53 = (bitcast<i32>(u_xlatu24.y) + u_xlati53);
    u_xlat11 = vec4f((((-(vs_TEXCOORD0) * x_2441.x_AdditionalLightsPosition[u_xlati53].www) + x_2441.x_AdditionalLightsPosition[u_xlati53].xyz)).xyz, u_xlat11.w);
    u_xlat39.x = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat39.x = max(u_xlat39.x, 0.00006103515625f);
    u_xlat56 = inverseSqrt(u_xlat39.x);
    u_xlat12 = vec4f(((vec3f(u_xlat56) * u_xlat11.xyz)).xyz, u_xlat12.w);
    u_xlat24.x = (1.0f / u_xlat39.x);
    u_xlat39.x = (u_xlat39.x * x_2441.x_AdditionalLightsAttenuation[u_xlati53].x);
    u_xlat39.x = ((-(u_xlat39.x) * u_xlat39.x) + 1.0f);
    u_xlat39.x = max(u_xlat39.x, 0.0f);
    u_xlat39.x = (u_xlat39.x * u_xlat39.x);
    u_xlat39.x = (u_xlat39.x * u_xlat24.x);
    u_xlat24.x = dot(x_2441.x_AdditionalLightsSpotDir[u_xlati53].xyz, u_xlat12.xyz);
    u_xlat24.x = ((u_xlat24.x * x_2441.x_AdditionalLightsAttenuation[u_xlati53].z) + x_2441.x_AdditionalLightsAttenuation[u_xlati53].w);
    u_xlat24.x = clamp(u_xlat24.x, 0.0f, 1.0f);
    u_xlat24.x = (u_xlat24.x * u_xlat24.x);
    u_xlat39.x = (u_xlat39.x * u_xlat24.x);
    u_xlatb24.x = (u_xlati53 < 0i);
    u_xlati58 = i32(x_650.x_AdditionalShadowParams[u_xlati53].w);
    u_xlati24.x = select(u_xlati58, -1i, u_xlatb24.x);
    u_xlatb58 = (u_xlati24.x >= 0i);
    if (u_xlatb58) {
      u_xlatb58 = any(!((vec4f() == vec4f(x_650.x_AdditionalShadowParams[u_xlati53].z))));
      if (u_xlatb58) {
        u_xlatb13 = vec4<bool>(((abs(u_xlat12.zzyz) >= abs(u_xlat12.xyxx))).xyz.xyz, u_xlatb13.w);
        u_xlatb58 = (u_xlatb13.y & u_xlatb13.x);
        let x_3815 = ((-(u_xlat12.zyzx) < vec4f())).xyw;
        u_xlatb13 = vec4<bool>(x_3815.xy, u_xlatb13.z, x_3815.z);
        u_xlat13.x = select(4.0f, 5.0f, u_xlatb13.x);
        u_xlat13.y = select(2.0f, 3.0f, u_xlatb13.y);
        u_xlat59 = select(0.0f, 1.0f, u_xlatb13.w);
        if (u_xlatb13.z) {
          x_3832 = u_xlat13.y;
        } else {
          x_3832 = u_xlat59;
        }
        u_xlat59 = x_3832;
        if (u_xlatb58) {
          x_3841 = u_xlat13.x;
        } else {
          x_3841 = u_xlat59;
        }
        u_xlat58 = x_3841;
        u_xlati58 = i32(u_xlat58);
        u_xlati24.x = (u_xlati58 + u_xlati24.x);
      }
      u_xlati24.x = (u_xlati24.x << bitcast<u32>(2i));
      u_xlat13 = (vs_TEXCOORD0.yyyy * x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati24.x + 1i)]);
      u_xlat13 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati24.x] * vs_TEXCOORD0.xxxx) + u_xlat13);
      u_xlat13 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati24.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat13);
      u_xlat13 = (u_xlat13 + x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati24.x + 3i)]);
      u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
      let x_3903 = u_xlat13.xy;
      txVec2 = vec3f(x_3903.x, x_3903.y, u_xlat13.z);
      u_xlat24.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat58 = (1.0f + -(x_650.x_AdditionalShadowParams[u_xlati53].x));
      u_xlat24.x = ((u_xlat24.x * x_650.x_AdditionalShadowParams[u_xlati53].x) + u_xlat58);
      u_xlatb58 = (0.0f >= u_xlat13.z);
      u_xlatb59 = (u_xlat13.z >= 1.0f);
      u_xlatb58 = (u_xlatb58 | u_xlatb59);
      if (u_xlatb58) {
        x_3941 = 1.0f;
      } else {
        x_3941 = u_xlat24.x;
      }
      u_xlat24.x = x_3941;
    } else {
      u_xlat24.x = 1.0f;
    }
    u_xlat58 = (-(u_xlat24.x) + 1.0f);
    u_xlat24.x = ((u_xlat52 * u_xlat58) + u_xlat24.x);
    u_xlati58 = (1i << bitcast<u32>((u_xlati53 & 31i)));
    u_xlati58 = bitcast<i32>((bitcast<u32>(u_xlati58) & bitcast<u32>(x_1063.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati58 != 0i)) {
      u_xlati58 = i32(x_1063.x_AdditionalLightsLightTypes[u_xlati53].el);
      u_xlati59 = select(1i, 0i, (u_xlati58 != 0i));
      u_xlati61 = (u_xlati53 << bitcast<u32>(2i));
      if ((u_xlati59 != 0i)) {
        u_xlat13 = vec4f(((vs_TEXCOORD0.yyy * x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 1i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati61].xyw * vs_TEXCOORD0.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 3i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xy / u_xlat13.zz)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((u_xlat13.xy * x_1110) + x_1110)).xy, u_xlat13.zw);
        u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((x_1063.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].xy * u_xlat13.xy) + x_1063.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].zw)).xy, u_xlat13.zw);
      } else {
        u_xlatb58 = (u_xlati58 == 1i);
        u_xlati58 = select(0i, 1i, u_xlatb58);
        if ((u_xlati58 != 0i)) {
          u_xlat47 = (vs_TEXCOORD0.yy * x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 1i)].xy);
          u_xlat47 = ((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati61].xy * vs_TEXCOORD0.xx) + u_xlat47);
          u_xlat47 = ((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat47);
          u_xlat47 = (u_xlat47 + x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 3i)].xy);
          u_xlat47 = ((u_xlat47 * x_1110) + x_1110);
          u_xlat47 = fract(u_xlat47);
          u_xlat13 = vec4f((((x_1063.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].xy * u_xlat47) + x_1063.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].zw)).xy, u_xlat13.zw);
        } else {
          u_xlat14 = (vs_TEXCOORD0.yyyy * x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 1i)]);
          u_xlat14 = ((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati61] * vs_TEXCOORD0.xxxx) + u_xlat14);
          u_xlat14 = ((x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat14);
          u_xlat14 = (u_xlat14 + x_1063.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 3i)]);
          u_xlat14 = vec4f(((u_xlat14.xyz / u_xlat14.www)).xyz, u_xlat14.w);
          u_xlat58 = dot(u_xlat14.xyz, u_xlat14.xyz);
          u_xlat58 = inverseSqrt(u_xlat58);
          u_xlat14 = vec4f(((vec3f(u_xlat58) * u_xlat14.xyz)).xyz, u_xlat14.w);
          u_xlat58 = dot(abs(u_xlat14.xyz), x_1983);
          u_xlat58 = max(u_xlat58, 0.00000099999999747524f);
          u_xlat58 = (1.0f / u_xlat58);
          u_xlat15 = (vec3f(u_xlat58) * u_xlat14.zxy);
          u_xlat15.x = -(u_xlat15.x);
          u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
          u_xlatb47 = ((u_xlat15.yzyz >= vec4f())).xy;
          if (u_xlatb47.x) {
            x_4210 = u_xlat15.x;
          } else {
            x_4210 = -(u_xlat15.x);
          }
          u_xlat47.x = x_4210;
          if (u_xlatb47.y) {
            x_4223 = u_xlat15.x;
          } else {
            x_4223 = -(u_xlat15.x);
          }
          u_xlat47.y = x_4223;
          u_xlat47 = ((u_xlat14.xy * vec2f(u_xlat58)) + u_xlat47);
          u_xlat47 = ((u_xlat47 * x_1110) + x_1110);
          u_xlat47 = clamp(u_xlat47, vec2f(0.0f), vec2f(1.0f));
          u_xlat13 = vec4f((((x_1063.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].xy * u_xlat47) + x_1063.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].zw)).xy, u_xlat13.zw);
        }
      }
      u_xlat13 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat13.xy, 0.0f);
      if (u_xlatb5.y) {
        x_4269 = u_xlat13.w;
      } else {
        x_4269 = u_xlat13.x;
      }
      u_xlat58 = x_4269;
      if (u_xlatb5.x) {
        x_4280 = u_xlat13.xyz;
      } else {
        x_4280 = vec3f(u_xlat58);
      }
      u_xlat13 = vec4f(x_4280.xyz, u_xlat13.w);
    } else {
      u_xlat13.x = 1.0f;
      u_xlat13.y = 1.0f;
      u_xlat13.z = 1.0f;
    }
    u_xlat13 = vec4f(((u_xlat13.xyz * x_2441.x_AdditionalLightsColor[u_xlati53].xyz)).xyz, u_xlat13.w);
    u_xlati53 = bitcast<i32>((bitcast<u32>(x_827.unity_RenderingLayer.x) & bitcast<u32>(x_2441.x_AdditionalLightsLayerMasks[u_xlati53].el)));
    u_xlat39.x = (u_xlat39.x * u_xlat24.x);
    u_xlat24.x = dot(u_xlat1.xyz, u_xlat12.xyz);
    u_xlat24.x = clamp(u_xlat24.x, 0.0f, 1.0f);
    u_xlat39.x = (u_xlat39.x * u_xlat24.x);
    u_xlat13 = vec4f(((u_xlat39.xxx * u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * vec3f(u_xlat56)) + u_xlat4)).xyz, u_xlat11.w);
    u_xlat39.x = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat39.x = max(u_xlat39.x, 1.17549435e-38f);
    u_xlat39.x = inverseSqrt(u_xlat39.x);
    u_xlat11 = vec4f(((u_xlat39.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat39.x = dot(u_xlat1.xyz, u_xlat11.xyz);
    u_xlat39.x = clamp(u_xlat39.x, 0.0f, 1.0f);
    u_xlat39.y = dot(u_xlat12.xyz, u_xlat11.xyz);
    u_xlat39.y = clamp(u_xlat39.y, 0.0f, 1.0f);
    u_xlat39 = (u_xlat39 * u_xlat39);
    u_xlat39.x = ((u_xlat39.x * u_xlat20.x) + 1.00001001358032226562f);
    u_xlat39.x = (u_xlat39.x * u_xlat39.x);
    u_xlat56 = max(u_xlat39.y, 0.10000000149011611938f);
    u_xlat39.x = (u_xlat56 * u_xlat39.x);
    u_xlat39.x = (u_xlat57 * u_xlat39.x);
    u_xlat39.x = (u_xlat55 / u_xlat39.x);
    u_xlat11 = vec4f((((u_xlat39.xxx * x_2372) + u_xlat17)).xyz, u_xlat11.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * u_xlat13.xyz) + u_xlat10)).xyz, u_xlat11.w);
    if ((u_xlati53 != 0i)) {
      x_4444 = u_xlat11.xyz;
    } else {
      x_4444 = u_xlat10;
    }
    u_xlat10 = x_4444;
  }
  u_xlat0 = (u_xlat2 + u_xlat6.xyz);
  SV_Target0 = vec4f(((u_xlat10 + u_xlat0)).xyz, SV_Target0.w);
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

@group(1) @binding(8) var<uniform> x_64 : VGlobals;

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
  x_MainLightPosition : vec4f,
  /* @offset(48) */
  x_MainLightColor : vec4f,
  /* @offset(64) */
  x_MainLightLayerMask : u32,
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

alias Arr_9 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_9,
}

alias Arr_10 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_10,
}

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 32u>;

alias Arr_14 = array<vec4f, 224u>;

alias Arr_15 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_11,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_12,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_13,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_14,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_15,
}

alias Arr_16 = array<vec4f, 32u>;

alias Arr_17 = array<vec4f, 32u>;

alias Arr_18 = array<vec4f, 32u>;

alias Arr_19 = array<vec4f, 32u>;

alias Arr_20 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_21 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_16,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_17,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_18,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_19,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_20,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_21,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(7) var<uniform> x_77 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

@group(1) @binding(0) var<uniform> x_601 : PGlobals;

@group(1) @binding(6) var<uniform> x_649 : LightShadows;

@group(1) @binding(5) var<uniform> x_826 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_1232 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_1421 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_1670 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(5) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_2271 : AdditionalLights;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

const x_1380 = vec2u(2u);

const x_1905 = vec2f(0.5f);

const x_2220 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlatb16 : bool;
  var u_xlat16 : vec3f;
  var u_xlat1 : vec4f;
  var x_135 : vec3f;
  var x_149 : vec3f;
  var u_xlatb2 : bool;
  var u_xlati2 : i32;
  var x_168 : i32;
  var u_xlat2 : vec3f;
  var u_xlat18 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat36 : f32;
  var u_xlat20 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat35 : f32;
  var u_xlat19 : vec3f;
  var u_xlatb34 : bool;
  var u_xlat50 : f32;
  var x_548 : f32;
  var u_xlatb0 : bool;
  var x_623 : vec3f;
  var u_xlat8 : vec4f;
  var u_xlatb5 : vec4<bool>;
  var u_xlat51 : f32;
  var u_xlatu51 : u32;
  var u_xlati51 : i32;
  var u_xlat49 : f32;
  var u_xlat52 : f32;
  var u_xlat53 : f32;
  var u_xlat54 : f32;
  var txVec0 : vec3f;
  var u_xlat21 : f32;
  var u_xlatb21 : bool;
  var u_xlatb37 : bool;
  var x_1007 : f32;
  var u_xlat37 : f32;
  var u_xlat23 : f32;
  var u_xlat9 : vec3f;
  var u_xlatu7 : vec2u;
  var u_xlatu39 : vec2u;
  var u_xlati7 : i32;
  var x_1143 : f32;
  var u_xlatu0 : u32;
  var u_xlatu3 : vec4u;
  var u_xlati19 : i32;
  var u_xlatu19 : vec2u;
  var u_xlati23 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec3i;
  var u_xlati40 : vec2i;
  var u_xlati0 : i32;
  var u_xlatu23 : vec3u;
  var u_xlatb8 : vec3<bool>;
  var u_xlatu10 : vec4u;
  var u_xlati42 : i32;
  var u_xlatu58 : u32;
  var u_xlat11 : vec3f;
  var u_xlatu55 : u32;
  var u_xlati56 : i32;
  var u_xlatu57 : u32;
  var u_xlatb59 : bool;
  var u_xlatu12 : vec4u;
  var u_xlatb12 : vec4<bool>;
  var u_xlatu59 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec2u;
  var u_xlati12 : vec4i;
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
  var u_xlati45 : vec2i;
  var u_xlati14 : vec4i;
  var u_xlati15 : vec2i;
  var u_xlati13 : vec3i;
  var u_xlati28 : vec2i;
  var u_xlati44 : i32;
  var u_xlati59 : i32;
  var u_xlatb55 : bool;
  var u_xlati55 : i32;
  var u_xlat55 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec3f;
  var u_xlat59 : f32;
  var u_xlat28 : vec3f;
  var x_1731 : f32;
  var x_1745 : f32;
  var x_1759 : f32;
  var x_1805 : vec3f;
  var u_xlatu60 : u32;
  var u_xlat60 : f32;
  var u_xlat29 : vec3f;
  var u_xlatb45 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_1868 : f32;
  var x_1881 : f32;
  var u_xlat44 : f32;
  var u_xlatu44 : u32;
  var x_2230 : vec3f;
  var u_xlatu_loop_1 : u32;
  var u_xlatb23 : bool;
  var u_xlatb10 : vec4<bool>;
  var u_xlat10 : vec4f;
  var u_xlat56 : f32;
  var x_2417 : f32;
  var x_2426 : f32;
  var txVec1 : vec3f;
  var u_xlatb56 : bool;
  var x_2652 : vec3f;
  var u_xlati3 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati50 : i32;
  var u_xlatu8 : vec2u;
  var u_xlatu40 : vec2u;
  var u_xlatu50 : u32;
  var u_xlatb53 : bool;
  var u_xlatu53 : u32;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlati10 : vec4i;
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
  var u_xlati11 : vec2i;
  var u_xlati43 : vec2i;
  var u_xlati57 : i32;
  var u_xlati53 : i32;
  var u_xlatb57 : bool;
  var u_xlat58 : f32;
  var x_3198 : f32;
  var u_xlat57 : f32;
  var x_3208 : f32;
  var txVec2 : vec3f;
  var u_xlatb58 : bool;
  var x_3419 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(x_77.x_FillPlane.xyz, vs_TEXCOORD0);
  u_xlat0.x = (u_xlat0.x + -(x_77.x_FillPlane.w));
  u_xlatb16 = (-(u_xlat0.x) < 0.0f);
  if (((select(0i, 1i, u_xlatb16) * -1i) != 0i)) {
    discard;
  }
  u_xlat16.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat16.x = inverseSqrt(u_xlat16.x);
  u_xlat16 = (u_xlat16.xxx * vs_TEXCOORD1);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_135 = u_xlat16;
  } else {
    x_135 = x_77.x_FillPlane.xyz;
  }
  u_xlat1 = vec4f(x_135.xyz, u_xlat1.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_149 = x_77.x_BaseColor.xyz;
  } else {
    x_149 = x_77.x_TopColor.xyz;
  }
  u_xlat16 = x_149;
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
    u_xlat18.x = (x_77.x_BubbleSpeed * x_77.x_BubbleTime);
    u_xlat18 = ((-(x_77.x_FillPlane.xyz) * u_xlat18.xxx) + vs_TEXCOORD0);
    let x_223 = vec3f(x_77.x_BubbleScale, x_77.x_BubbleScale, x_77.x_BubbleScale);
    u_xlat18 = (u_xlat18 * vec3f(x_223.x, x_223.y, x_223.z));
    u_xlat3 = floor(u_xlat18.yxzy);
    u_xlat18 = fract(u_xlat18);
    u_xlat4 = vec3f((((u_xlat3.ww * vec2f(17.3099994659423828125f)) + u_xlat3.yz)).xy, u_xlat4.z);
    u_xlat4 = vec3f(((u_xlat4.xy * x_250)).xy, u_xlat4.z);
    u_xlat4 = vec3f(fract(u_xlat4.xy).xy, u_xlat4.z);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat36 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec3f(((vec2f(u_xlat36) + u_xlat4.xy)).xy, u_xlat4.z);
    u_xlat20.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat20.x);
    u_xlat5 = (u_xlat3 + vec4f(7.09999990463256835938f, 7.09999990463256835938f, 3.70000004768371582031f, 3.70000004768371582031f));
    u_xlat5 = (u_xlat5 * vec4f(0.10310000181198120117f));
    u_xlat5 = fract(u_xlat5);
    u_xlat6 = (u_xlat5 + vec4f(33.3300018310546875f));
    u_xlat3.x = dot(u_xlat5.yxy, u_xlat6.xyy);
    u_xlat20 = vec3f(((u_xlat3.xx + u_xlat5.yx)).xy, u_xlat20.z);
    u_xlat3.x = (u_xlat20.y + u_xlat20.x);
    u_xlat3.x = (u_xlat20.x * u_xlat3.x);
    u_xlat7.x = fract(u_xlat3.x);
    u_xlat3.x = dot(u_xlat5.wzw, u_xlat6.zww);
    u_xlat20 = vec3f(((u_xlat3.xx + u_xlat5.wz)).xy, u_xlat20.z);
    u_xlat3.x = (u_xlat20.y + u_xlat20.x);
    u_xlat3.x = (u_xlat20.x * u_xlat3.x);
    u_xlat7.y = fract(u_xlat3.x);
    u_xlat20 = vec3f(((u_xlat3.zy + vec2f(5.30000019073486328125f))).xy, u_xlat20.z);
    u_xlat4 = vec3f(u_xlat4.x, ((u_xlat20.xy * x_250)).xy);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.zyy + x_263)).xyz, u_xlat5.w);
    u_xlat3.x = dot(u_xlat4.yzy, u_xlat5.xyz);
    u_xlat20 = vec3f(((u_xlat3.xx + u_xlat4.yz)).xy, u_xlat20.z);
    u_xlat3.x = (u_xlat20.y + u_xlat20.x);
    u_xlat3.x = (u_xlat20.x * u_xlat3.x);
    u_xlat7.z = fract(u_xlat3.x);
    u_xlat20 = ((u_xlat7.xyz * vec3f(0.5f)) + vec3f(0.25f));
    u_xlat3 = vec4f(((u_xlat3.ww + u_xlat3.yz)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + vec2f(1.29999995231628417969f))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_250)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat35 = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((vec2f(u_xlat35) + u_xlat3.xy)).xy, u_xlat3.zw);
    u_xlat19.x = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat19.x);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat3.x = ((u_xlat3.x * 0.1799999922513961792f) + 0.20000000298023223877f);
    u_xlat18 = (u_xlat18 + -(u_xlat20));
    u_xlat18.x = dot(u_xlat18, u_xlat18);
    u_xlat18.x = sqrt(u_xlat18.x);
    u_xlatb34 = (u_xlat4.x < 0.25999999046325683594f);
    u_xlat50 = (u_xlat3.x * -0.30000001192092895508f);
    u_xlat18.x = (-(u_xlat3.x) + u_xlat18.x);
    u_xlat50 = (1.0f / u_xlat50);
    u_xlat18.x = (u_xlat50 * u_xlat18.x);
    u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
    u_xlat50 = ((u_xlat18.x * -2.0f) + 3.0f);
    u_xlat18.x = (u_xlat18.x * u_xlat18.x);
    u_xlat18.x = (u_xlat18.x * u_xlat50);
    if (u_xlatb34) {
      x_548 = u_xlat18.x;
    } else {
      x_548 = 0.0f;
    }
    u_xlat18.x = x_548;
    u_xlat18.x = (u_xlat18.x * x_77.x_Glug);
    u_xlat2.x = (u_xlat2.x * u_xlat18.x);
    u_xlat0.x = (u_xlat0.x * -150.0f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat2 = (-(u_xlat16) + x_77.x_BubbleColor.xyz);
    u_xlat16 = ((u_xlat0.xxx * u_xlat2) + u_xlat16);
  }
  u_xlatb0 = (x_601.unity_OrthoParams.w == 0.0f);
  u_xlat2 = (-(vs_TEXCOORD0) + x_601.x_WorldSpaceCameraPos);
  u_xlat3.x = x_601.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat3.y = x_601.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat3.z = x_601.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_623 = u_xlat2;
  } else {
    x_623 = u_xlat3.xyz;
  }
  u_xlat2 = x_623;
  u_xlat50 = dot(u_xlat2, u_xlat2);
  u_xlat50 = inverseSqrt(u_xlat50);
  u_xlat4 = (vec3f(u_xlat50) * u_xlat2);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_649.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_649.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_649.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_649.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat8.w);
  u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlatb5 = (u_xlat5 < x_649.x_CascadeShadowSplitSphereRadii);
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb5.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb5.y);
  u_xlat6.z = select(0.0f, 1.0f, u_xlatb5.z);
  u_xlat6.w = select(0.0f, 1.0f, u_xlatb5.w);
  u_xlat5.x = select(-0.0f, -1.0f, u_xlatb5.x);
  u_xlat5.y = select(-0.0f, -1.0f, u_xlatb5.y);
  u_xlat5.z = select(-0.0f, -1.0f, u_xlatb5.z);
  u_xlat5 = vec4f(((u_xlat5.xyz + u_xlat6.yzw)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(u_xlat6.x, max(u_xlat5.xyz, vec3f()).xyz);
  u_xlat51 = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat51 = (-(u_xlat51) + 4.0f);
  u_xlatu51 = u32(u_xlat51);
  u_xlati51 = (bitcast<i32>(u_xlatu51) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_649.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_649.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati51].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_649.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_649.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 3i)].xyz)).xyz, u_xlat5.w);
  u_xlat1.w = 1.0f;
  u_xlat6.x = dot(x_826.unity_SHAr, u_xlat1);
  u_xlat6.y = dot(x_826.unity_SHAg, u_xlat1);
  u_xlat6.z = dot(x_826.unity_SHAb, u_xlat1);
  u_xlat7 = (u_xlat1.yzzx * u_xlat1.xyzz);
  u_xlat8.x = dot(x_826.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_826.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_826.unity_SHBb, u_xlat7);
  u_xlat49 = (u_xlat1.y * u_xlat1.y);
  u_xlat49 = ((u_xlat1.x * u_xlat1.x) + -(u_xlat49));
  u_xlat7 = vec4f((((x_826.unity_SHC.xyz * vec3f(u_xlat49)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_904 = x_601.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((vec2f(1.0f) / vec2f(x_904.x, x_904.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat49 = ((u_xlat7.y * x_601.x_ScaleBiasRt.x) + x_601.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat49) + 1.0f);
  u_xlat16 = (u_xlat16 * vec3f(0.95999997854232788086f));
  u_xlat49 = (-(x_77.x_Smoothness) + 1.0f);
  u_xlat51 = (u_xlat49 * u_xlat49);
  u_xlat51 = max(u_xlat51, 0.0078125f);
  u_xlat52 = (u_xlat51 * u_xlat51);
  u_xlat53 = (x_77.x_Smoothness + 0.04000002145767211914f);
  u_xlat53 = clamp(u_xlat53, 0.0f, 1.0f);
  u_xlat54 = ((u_xlat51 * 4.0f) + 2.0f);
  let x_962 = u_xlat5.xy;
  txVec0 = vec3f(x_962.x, x_962.y, u_xlat5.z);
  u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat21 = (-(x_649.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat5.x * x_649.x_MainLightShadowParams.x) + u_xlat21);
  u_xlatb21 = (0.0f >= u_xlat5.z);
  u_xlatb37 = (u_xlat5.z >= 1.0f);
  u_xlatb21 = (u_xlatb37 | u_xlatb21);
  if (u_xlatb21) {
    x_1007 = 1.0f;
  } else {
    x_1007 = u_xlat5.x;
  }
  u_xlat5.x = x_1007;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_601.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat21 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat37 = ((u_xlat21 * x_649.x_MainLightShadowParams.z) + x_649.x_MainLightShadowParams.w);
  u_xlat37 = clamp(u_xlat37, 0.0f, 1.0f);
  u_xlat23 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat37 * u_xlat23) + u_xlat5.x);
  u_xlat37 = dot(-(u_xlat4), u_xlat1.xyz);
  u_xlat37 = (u_xlat37 + u_xlat37);
  u_xlat9 = ((u_xlat1.xyz * -(vec3f(u_xlat37))) + -(u_xlat4));
  u_xlat37 = dot(u_xlat1.xyz, u_xlat4);
  u_xlat37 = clamp(u_xlat37, 0.0f, 1.0f);
  u_xlat37 = (-(u_xlat37) + 1.0f);
  u_xlat37 = (u_xlat37 * u_xlat37);
  u_xlat37 = (u_xlat37 * u_xlat37);
  u_xlat23 = ((-(u_xlat49) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat49 = (u_xlat49 * u_xlat23);
  u_xlat49 = (u_xlat49 * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_601.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu39 = vec2u(x_601.x_FPParams1.zw);
  u_xlati7 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu39.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu7.x = (u_xlatu39.y * bitcast<u32>(u_xlati7));
  u_xlat3.x = dot(-(u_xlat3.xyz), u_xlat8.xyz);
  u_xlat19.x = log2(u_xlat3.x);
  if (u_xlatb0) {
    x_1143 = u_xlat19.x;
  } else {
    x_1143 = u_xlat3.x;
  }
  u_xlat0.x = x_1143;
  u_xlat0.x = ((u_xlat0.x * x_601.x_FPParams0.x) + x_601.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu3.x = u32(x_601.x_FPParams2.x);
  u_xlatu3.x = (u_xlatu3.x + 4294967295u);
  u_xlati19 = (bitcast<i32>(u_xlatu39.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu3.x);
  u_xlatu3.x = (bitcast<u32>(u_xlati19) * u_xlatu0);
  u_xlatu19 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati19))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu19.x >> 2u);
  param = bitcast<i32>(u_xlatu19.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_1212 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu19.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_1219 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati23 = vec3i(vec2i(x_1212, x_1219).xy, u_xlati23.z);
  u_xlati8 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati23.xx) & bitcast<vec2u>(x_1232.urp_ZBins[bitcast<i32>(u_xlatu0)].wy))).xy, u_xlati8.z);
  let x_1245 = ~(u_xlati23.xy);
  u_xlati23 = vec3i(x_1245.x, u_xlati23.y, x_1245.y);
  u_xlati40 = bitcast<vec2i>((bitcast<vec2u>(u_xlati23.xx) & bitcast<vec2u>(x_1232.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati40) | bitcast<vec2u>(u_xlati8.xy))).xy, u_xlati8.z);
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati23.y) & bitcast<u32>(u_xlati8.x)));
  u_xlati19 = bitcast<i32>((bitcast<u32>(u_xlati23.z) & bitcast<u32>(u_xlati8.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati19));
  u_xlatu23 = vec3u(vec2u(x_601.x_FPParams0.zw).xy, u_xlatu23.z);
  u_xlatb8 = ((vec4f() < u_xlat9.xyzx)).xyz;
  u_xlatu10.x = u_xlatu7.x;
  u_xlatu10.y = u_xlatu19.y;
  u_xlati42 = 0i;
  u_xlatu58 = u_xlatu0;
  u_xlat11.x = 0.0f;
  u_xlat11.y = 0.0f;
  u_xlat11.z = 0.0f;
  u_xlat19.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu55 = (u_xlatu58 >> 16u);
    u_xlati56 = u_xlati42;
    u_xlatu57 = u_xlatu58;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb59 = (u_xlati56 == 0i);
      u_xlatu12.x = (u_xlatu57 & 65535u);
      u_xlatb12.x = (u_xlatu55 >= u_xlatu12.x);
      u_xlatb59 = (u_xlatb59 & u_xlatb12.x);
      if (!(u_xlatb59)) {
        break;
      }
      param_6 = u_xlatu57;
      param_7 = 5i;
      param_8 = 11i;
      let x_1371 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu59 = x_1371;
      u_xlatu12 = (u_xlatu10.xxyy + vec4u(u_xlatu59));
      u_xlatu13 = (u_xlatu12.yw >> x_1380);
      param_9 = bitcast<i32>(u_xlatu12.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_1391 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu12.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_1398 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu12.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_1405 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu12.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_1412 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati12 = vec4i(x_1391, x_1398, x_1405, x_1412);
      u_xlati45 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_1421.urp_Tiles[bitcast<i32>(u_xlatu13.x)].wy)));
      u_xlati14 = ~(u_xlati12);
      u_xlati15 = bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_1421.urp_Tiles[bitcast<i32>(u_xlatu13.x)].zx)));
      let x_1453 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45) | bitcast<vec2u>(u_xlati15)));
      u_xlati13 = vec3i(x_1453.x, u_xlati13.y, x_1453.y);
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati13.x)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati13.z)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati28.x) | bitcast<u32>(u_xlati12.x)));
      u_xlati28 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_1232.urp_ZBins[bitcast<i32>(u_xlatu13.y)].wy)));
      u_xlati13 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_1232.urp_ZBins[bitcast<i32>(u_xlatu13.y)].zx))).xy, u_xlati13.z);
      u_xlati28 = bitcast<vec2i>((bitcast<vec2u>(u_xlati28) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati28.x)));
      u_xlati44 = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati28.y)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati44) | bitcast<u32>(u_xlati28.x)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati28.x) & bitcast<u32>(u_xlati12.x)));
      u_xlati28.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu57) & 31i)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati28.x) & bitcast<u32>(u_xlati12.x)));
      u_xlati59 = (bitcast<i32>(u_xlatu59) << bitcast<u32>(5i));
      u_xlatu59 = (u_xlatu55 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati59)))));
      u_xlatu59 = min(u_xlatu59, 31u);
      u_xlatu59 = (bitcast<u32>(-(bitcast<i32>(u_xlatu59))) + 31u);
      u_xlatu59 = (4294967295u >> (u_xlatu59 & 31u));
      u_xlati56 = bitcast<i32>((u_xlatu59 & bitcast<u32>(u_xlati12.x)));
      u_xlati59 = (bitcast<i32>(u_xlatu57) + 32i);
      u_xlatu57 = (bitcast<u32>(u_xlati59) & 4294967264u);
    }
    u_xlatu58 = u_xlatu57;
    u_xlatb55 = (u_xlati56 != 0i);
    u_xlatb59 = (u_xlat19.x < 0.99000000953674316406f);
    u_xlatb55 = (u_xlatb55 & u_xlatb59);
    if (!(u_xlatb55)) {
      break;
    }
    u_xlati55 = (0i - u_xlati56);
    u_xlatu55 = (bitcast<u32>(u_xlati55) & bitcast<u32>(u_xlati56));
    u_xlat55 = f32(u_xlatu55);
    u_xlatu55 = (bitcast<u32>(u_xlat55) >> 23u);
    u_xlati55 = (bitcast<i32>(u_xlatu55) + -127i);
    u_xlati59 = (1i << bitcast<u32>((u_xlati55 & 31i)));
    u_xlati42 = bitcast<i32>((bitcast<u32>(u_xlati56) ^ bitcast<u32>(u_xlati59)));
    u_xlati59 = (bitcast<i32>(u_xlatu58) + -32i);
    u_xlati59 = bitcast<i32>((bitcast<u32>(u_xlati59) & 65504u));
    u_xlati55 = (u_xlati55 + u_xlati59);
    u_xlati55 = (-(bitcast<i32>(u_xlatu23.x)) + u_xlati55);
    u_xlat12 = vec4f(((vs_TEXCOORD0 + -(x_1670.urp_ReflProbes_BoxMin[u_xlati55].xyz))).xyz, u_xlat12.w);
    u_xlat13 = (-(vs_TEXCOORD0) + x_1670.urp_ReflProbes_BoxMax[u_xlati55].xyz);
    u_xlat12 = vec4f(min(u_xlat12.xyz, u_xlat13).xyz, u_xlat12.w);
    u_xlat12 = vec4f(((u_xlat12.xyz / x_1670.urp_ReflProbes_BoxMax[u_xlati55].www)).xyz, u_xlat12.w);
    u_xlat59 = min(u_xlat12.z, u_xlat12.y);
    u_xlat59 = min(u_xlat59, u_xlat12.x);
    u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
    u_xlat12.x = (-(u_xlat19.x) + 1.0f);
    u_xlat59 = min(u_xlat59, u_xlat12.x);
    u_xlatb12.x = (0.0f < x_1670.urp_ReflProbes_ProbePosition[u_xlati55].w);
    if (u_xlatb8.x) {
      x_1731 = x_1670.urp_ReflProbes_BoxMax[u_xlati55].x;
    } else {
      x_1731 = x_1670.urp_ReflProbes_BoxMin[u_xlati55].x;
    }
    u_xlat28.x = x_1731;
    if (u_xlatb8.y) {
      x_1745 = x_1670.urp_ReflProbes_BoxMax[u_xlati55].y;
    } else {
      x_1745 = x_1670.urp_ReflProbes_BoxMin[u_xlati55].y;
    }
    u_xlat28.y = x_1745;
    if (u_xlatb8.z) {
      x_1759 = x_1670.urp_ReflProbes_BoxMax[u_xlati55].z;
    } else {
      x_1759 = x_1670.urp_ReflProbes_BoxMin[u_xlati55].z;
    }
    u_xlat28.z = x_1759;
    u_xlat28 = (u_xlat28 + -(vs_TEXCOORD0));
    u_xlat28 = (u_xlat28 / u_xlat9);
    u_xlat28.x = min(u_xlat28.y, u_xlat28.x);
    u_xlat28.x = min(u_xlat28.z, u_xlat28.x);
    u_xlat13 = (vs_TEXCOORD0 + -(x_1670.urp_ReflProbes_ProbePosition[u_xlati55].xyz));
    u_xlat28 = ((u_xlat9 * u_xlat28.xxx) + u_xlat13);
    if (u_xlatb12.x) {
      x_1805 = u_xlat28;
    } else {
      x_1805 = u_xlat9;
    }
    u_xlat12 = vec4f(x_1805.xyz, u_xlat12.w);
    u_xlatu60 = u32(abs(x_1670.urp_ReflProbes_ProbePosition[u_xlati55].w));
    u_xlatu60 = (u_xlatu60 + 4294967295u);
    u_xlat60 = f32(u_xlatu60);
    u_xlat60 = min(u_xlat49, u_xlat60);
    u_xlat13.x = dot(abs(u_xlat12.xyz), vec3f(1.0f));
    u_xlat13.x = max(u_xlat13.x, 0.00000099999999747524f);
    u_xlat13.x = (1.0f / u_xlat13.x);
    u_xlat29 = (u_xlat12.zxy * u_xlat13.xxx);
    u_xlat29.x = -(u_xlat29.x);
    u_xlat29.x = clamp(u_xlat29.x, 0.0f, 1.0f);
    u_xlatb45 = ((u_xlat29.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat29;
    if (u_xlatb45.x) {
      x_1868 = u_xlat29.x;
    } else {
      x_1868 = -(u_xlat29.x);
    }
    hlslcc_movcTemp.x = x_1868;
    if (u_xlatb45.y) {
      x_1881 = u_xlat29.x;
    } else {
      x_1881 = -(u_xlat29.x);
    }
    hlslcc_movcTemp.y = x_1881;
    u_xlat29 = hlslcc_movcTemp;
    u_xlat12 = vec4f((((u_xlat12.xy * u_xlat13.xx) + u_xlat29.xy)).xy, u_xlat12.zw);
    u_xlat12 = vec4f((((u_xlat12.xy * x_1905) + x_1905)).xy, u_xlat12.zw);
    u_xlat12 = vec4f(clamp(u_xlat12.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat12.zw);
    u_xlat44 = floor(u_xlat60);
    u_xlat13.x = (u_xlat44 + 1.0f);
    u_xlat60 = (-(u_xlat44) + u_xlat60);
    u_xlatu44 = u32(u_xlat44);
    u_xlati44 = ((u_xlati55 * 7i) + bitcast<i32>(u_xlatu44));
    u_xlatu13.x = u32(u_xlat13.x);
    u_xlati55 = ((u_xlati55 * 7i) + bitcast<i32>(u_xlatu13.x));
    u_xlat13 = vec3f((((u_xlat12.xy * x_1670.urp_ReflProbes_MipScaleOffset[u_xlati44].xy) + x_1670.urp_ReflProbes_MipScaleOffset[u_xlati44].zw)).xy, u_xlat13.z);
    u_xlat13 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz;
    u_xlat12 = vec4f((((u_xlat12.xy * x_1670.urp_ReflProbes_MipScaleOffset[u_xlati55].xy) + x_1670.urp_ReflProbes_MipScaleOffset[u_xlati55].zw)).xy, u_xlat12.zw);
    u_xlat12 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat12.xy, 0.0f).xyz.xyz, u_xlat12.w);
    u_xlat12 = vec4f(((-(u_xlat13) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat12 = vec4f((((vec3f(u_xlat60) * u_xlat12.xyz) + u_xlat13)).xyz, u_xlat12.w);
    u_xlat11 = ((vec3f(u_xlat59) * u_xlat12.xyz) + u_xlat11);
    u_xlat19.x = (u_xlat19.x + u_xlat59);
  }
  u_xlatb0 = (u_xlat19.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9, u_xlat49);
    u_xlat0.x = (-(u_xlat19.x) + 1.0f);
    u_xlat49 = (u_xlat8.w + -1.0f);
    u_xlat49 = ((x_601.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat49) + 1.0f);
    u_xlat49 = max(u_xlat49, 0.0f);
    u_xlat49 = log2(u_xlat49);
    u_xlat49 = (u_xlat49 * x_601.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat49 = exp2(u_xlat49);
    u_xlat49 = (u_xlat49 * x_601.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * vec3f(u_xlat49))).xyz, u_xlat8.w);
    u_xlat11 = ((u_xlat0.xxx * u_xlat8.xyz) + u_xlat11);
  }
  let x_2086 = ((vec2f(u_xlat51) * vec2f(u_xlat51)) + vec2f(-1.0f, 1.0f));
  u_xlat19 = vec3f(x_2086.x, u_xlat19.y, x_2086.y);
  u_xlat0.x = (1.0f / u_xlat19.z);
  u_xlat49 = (u_xlat53 + -0.03999999910593032837f);
  u_xlat49 = ((u_xlat37 * u_xlat49) + 0.03999999910593032837f);
  u_xlat0.x = (u_xlat0.x * u_xlat49);
  u_xlat8 = vec4f(((u_xlat0.xxx * u_xlat11)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat16) + u_xlat8.xyz)).xyz, u_xlat6.w);
  u_xlati0 = bitcast<i32>((x_601.x_MainLightLayerMask & bitcast<u32>(x_826.unity_RenderingLayer.x)));
  u_xlat49 = dot(u_xlat1.xyz, x_601.x_MainLightPosition.xyz);
  u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
  u_xlat49 = (u_xlat49 * u_xlat5.x);
  let x_2146 = (vec3f(u_xlat49) * x_601.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_2146.x, u_xlat5.y, x_2146.yz);
  u_xlat2 = ((u_xlat2 * vec3f(u_xlat50)) + x_601.x_MainLightPosition.xyz);
  u_xlat49 = dot(u_xlat2, u_xlat2);
  u_xlat49 = max(u_xlat49, 1.17549435e-38f);
  u_xlat49 = inverseSqrt(u_xlat49);
  u_xlat2 = (vec3f(u_xlat49) * u_xlat2);
  u_xlat49 = dot(u_xlat1.xyz, u_xlat2);
  u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
  u_xlat2.x = dot(x_601.x_MainLightPosition.xyz, u_xlat2);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat49 = (u_xlat49 * u_xlat49);
  u_xlat49 = ((u_xlat49 * u_xlat19.x) + 1.00001001358032226562f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat49 = (u_xlat49 * u_xlat49);
  u_xlat2.x = max(u_xlat2.x, 0.10000000149011611938f);
  u_xlat49 = (u_xlat49 * u_xlat2.x);
  u_xlat49 = (u_xlat54 * u_xlat49);
  u_xlat49 = (u_xlat52 / u_xlat49);
  u_xlat2 = ((vec3f(u_xlat49) * x_2220) + u_xlat16);
  u_xlat2 = (u_xlat5.xzw * u_xlat2);
  if ((u_xlati0 != 0i)) {
    x_2230 = u_xlat2;
  } else {
    x_2230 = vec3f();
  }
  u_xlat2 = x_2230;
  u_xlatu0 = min(u_xlatu23.y, 32u);
  u_xlat49 = ((u_xlat21 * x_649.x_AdditionalShadowFadeParams.x) + x_649.x_AdditionalShadowFadeParams.y);
  u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu0)) {
    } else {
      break;
    }
    u_xlat8 = vec4f((((-(vs_TEXCOORD0) * x_2271.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_2271.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat8.w);
    u_xlat51 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat51 = max(u_xlat51, 0.00006103515625f);
    u_xlat53 = inverseSqrt(u_xlat51);
    u_xlat9 = (vec3f(u_xlat53) * u_xlat8.xyz);
    u_xlat23 = (1.0f / u_xlat51);
    u_xlat51 = (u_xlat51 * x_2271.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat51 = ((-(u_xlat51) * u_xlat51) + 1.0f);
    u_xlat51 = max(u_xlat51, 0.0f);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat51 = (u_xlat51 * u_xlat23);
    u_xlat23 = dot(x_2271.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9);
    u_xlat23 = ((u_xlat23 * x_2271.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_2271.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
    u_xlat23 = (u_xlat23 * u_xlat23);
    u_xlat51 = (u_xlat51 * u_xlat23);
    u_xlatb23 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati55 = i32(x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati23.x = select(u_xlati55, -1i, u_xlatb23);
    u_xlatb55 = (u_xlati23.x >= 0i);
    if (u_xlatb55) {
      u_xlatb55 = any(!((vec4f() == vec4f(x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb55) {
        u_xlatb10 = vec4<bool>(((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz.xyz, u_xlatb10.w);
        u_xlatb55 = (u_xlatb10.y & u_xlatb10.x);
        let x_2398 = ((-(u_xlat9.zyzx) < vec4f())).xyw;
        u_xlatb10 = vec4<bool>(x_2398.xy, u_xlatb10.z, x_2398.z);
        u_xlat10.x = select(4.0f, 5.0f, u_xlatb10.x);
        u_xlat10.y = select(2.0f, 3.0f, u_xlatb10.y);
        u_xlat56 = select(0.0f, 1.0f, u_xlatb10.w);
        if (u_xlatb10.z) {
          x_2417 = u_xlat10.y;
        } else {
          x_2417 = u_xlat56;
        }
        u_xlat56 = x_2417;
        if (u_xlatb55) {
          x_2426 = u_xlat10.x;
        } else {
          x_2426 = u_xlat56;
        }
        u_xlat55 = x_2426;
        u_xlati55 = i32(u_xlat55);
        u_xlati23.x = (u_xlati55 + u_xlati23.x);
      }
      u_xlati23.x = (u_xlati23.x << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati23.x + 1i)]);
      u_xlat10 = ((x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati23.x] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati23.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati23.x + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      let x_2489 = u_xlat10.xy;
      txVec1 = vec3f(x_2489.x, x_2489.y, u_xlat10.z);
      u_xlat23 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat55 = (1.0f + -(x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat23 = ((u_xlat23 * x_649.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat55);
      u_xlatb55 = (0.0f >= u_xlat10.z);
      u_xlatb56 = (u_xlat10.z >= 1.0f);
      u_xlatb55 = (u_xlatb55 | u_xlatb56);
      u_xlat23 = select(u_xlat23, 1.0f, u_xlatb55);
    } else {
      u_xlat23 = 1.0f;
    }
    u_xlat55 = (-(u_xlat23) + 1.0f);
    u_xlat23 = ((u_xlat49 * u_xlat55) + u_xlat23);
    u_xlati55 = bitcast<i32>((bitcast<u32>(x_826.unity_RenderingLayer.x) & bitcast<u32>(x_2271.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat51 = (u_xlat51 * u_xlat23);
    u_xlat23 = dot(u_xlat1.xyz, u_xlat9);
    u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
    u_xlat51 = (u_xlat51 * u_xlat23);
    u_xlat10 = vec4f(((vec3f(u_xlat51) * x_2271.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlat8 = vec4f((((u_xlat8.xyz * vec3f(u_xlat53)) + u_xlat4)).xyz, u_xlat8.w);
    u_xlat51 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat51 = max(u_xlat51, 1.17549435e-38f);
    u_xlat51 = inverseSqrt(u_xlat51);
    u_xlat8 = vec4f(((vec3f(u_xlat51) * u_xlat8.xyz)).xyz, u_xlat8.w);
    u_xlat51 = dot(u_xlat1.xyz, u_xlat8.xyz);
    u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
    u_xlat53 = dot(u_xlat9, u_xlat8.xyz);
    u_xlat53 = clamp(u_xlat53, 0.0f, 1.0f);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat51 = ((u_xlat51 * u_xlat19.x) + 1.00001001358032226562f);
    u_xlat53 = (u_xlat53 * u_xlat53);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat53 = max(u_xlat53, 0.10000000149011611938f);
    u_xlat51 = (u_xlat51 * u_xlat53);
    u_xlat51 = (u_xlat54 * u_xlat51);
    u_xlat51 = (u_xlat52 / u_xlat51);
    u_xlat8 = vec4f((((vec3f(u_xlat51) * x_2220) + u_xlat16)).xyz, u_xlat8.w);
    u_xlat8 = vec4f((((u_xlat8.xyz * u_xlat10.xyz) + u_xlat5.xyz)).xyz, u_xlat8.w);
    if ((u_xlati55 != 0i)) {
      x_2652 = u_xlat8.xyz;
    } else {
      x_2652 = u_xlat5.xyz;
    }
    u_xlat5 = vec4f(x_2652.xyz, u_xlat5.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu0 = (u_xlatu3.x >> 2u);
  param_21 = bitcast<i32>(u_xlatu3.x);
  param_22 = 0i;
  param_23 = 1i;
  let x_2675 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu3.x);
  param_25 = 1i;
  param_26 = 1i;
  let x_2682 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  let x_2683 = vec2i(x_2675, x_2682);
  u_xlati3 = vec4i(x_2683.x, u_xlati3.yz, x_2683.y);
  let x_2696 = bitcast<vec2i>((bitcast<vec2u>(u_xlati3.xx) & bitcast<vec2u>(x_1232.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  u_xlati23 = vec3i(x_2696.x, u_xlati23.y, x_2696.y);
  u_xlati8 = vec3i((~(u_xlati3.xw)).xy, u_xlati8.z);
  let x_2714 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8.xx) & bitcast<vec2u>(x_1232.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = vec3i(x_2714.x, u_xlati8.y, x_2714.y);
  let x_2724 = bitcast<vec2i>((bitcast<vec2u>(u_xlati23.xz) | bitcast<vec2u>(u_xlati8.xz)));
  u_xlati23 = vec3i(x_2724.x, u_xlati23.y, x_2724.y);
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati3.w) & bitcast<u32>(u_xlati23.x)));
  u_xlati50 = bitcast<i32>((bitcast<u32>(u_xlati8.y) & bitcast<u32>(u_xlati23.z)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati50));
  u_xlatu8.x = u_xlatu7.x;
  u_xlatu8.y = u_xlatu19.y;
  u_xlatu40.x = 0u;
  u_xlatu40.y = u_xlatu0;
  u_xlat9 = u_xlat5.xyz;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu50 = (u_xlatu40.y >> 16u);
    u_xlatu3 = vec4u(u_xlatu40.x, u_xlatu3.yz, u_xlatu40.y);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb53 = (bitcast<i32>(u_xlatu3.x) == 0i);
      u_xlatu23.x = (u_xlatu3.w & 65535u);
      u_xlatb23 = (u_xlatu50 >= u_xlatu23.x);
      u_xlatb53 = (u_xlatb53 & u_xlatb23);
      if (!(u_xlatb53)) {
        break;
      }
      param_27 = u_xlatu3.w;
      param_28 = 5i;
      param_29 = 11i;
      let x_2806 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu53 = x_2806;
      u_xlatu10 = (vec4u(u_xlatu53) + u_xlatu8.xxyy);
      let x_2814 = (u_xlatu10.yw >> x_1380);
      u_xlatu23 = vec3u(x_2814.x, u_xlatu23.y, x_2814.y);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_2824 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_2831 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_2838 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_2845 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_2824, x_2831, x_2838, x_2845);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_1421.urp_Tiles[bitcast<i32>(u_xlatu23.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati43 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_1421.urp_Tiles[bitcast<i32>(u_xlatu23.x)].zx)));
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati43) | bitcast<vec2u>(u_xlati11)));
      u_xlati23.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati57 = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.y)));
      u_xlati23.x = bitcast<i32>((bitcast<u32>(u_xlati23.x) | bitcast<u32>(u_xlati57)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_1232.urp_ZBins[bitcast<i32>(u_xlatu23.z)].wy))).xy, u_xlati10.zw);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_1232.urp_ZBins[bitcast<i32>(u_xlatu23.z)].zx)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xy) | bitcast<vec2u>(u_xlati11))).xy, u_xlati10.zw);
      u_xlati55 = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati10.x)));
      u_xlati57 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati10.y)));
      u_xlati55 = bitcast<i32>((bitcast<u32>(u_xlati55) | bitcast<u32>(u_xlati57)));
      u_xlati23.x = bitcast<i32>((bitcast<u32>(u_xlati55) & bitcast<u32>(u_xlati23.x)));
      u_xlati55 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu3.w) & 31i)));
      u_xlati23.x = bitcast<i32>((bitcast<u32>(u_xlati55) & bitcast<u32>(u_xlati23.x)));
      u_xlati53 = (bitcast<i32>(u_xlatu53) << bitcast<u32>(5i));
      u_xlatu53 = (u_xlatu50 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati53)))));
      u_xlatu53 = min(u_xlatu53, 31u);
      u_xlatu53 = (bitcast<u32>(-(bitcast<i32>(u_xlatu53))) + 31u);
      u_xlatu53 = (4294967295u >> (u_xlatu53 & 31u));
      u_xlatu3.x = (u_xlatu53 & bitcast<u32>(u_xlati23.x));
      u_xlati53 = (bitcast<i32>(u_xlatu3.w) + 32i);
      u_xlatu3.w = (bitcast<u32>(u_xlati53) & 4294967264u);
    }
    u_xlatu40.y = u_xlatu3.w;
    if ((u_xlatu3.x == 0u)) {
      break;
    }
    u_xlati50 = (0i - bitcast<i32>(u_xlatu3.x));
    u_xlatu50 = (bitcast<u32>(u_xlati50) & u_xlatu3.x);
    u_xlat50 = f32(u_xlatu50);
    u_xlatu50 = (bitcast<u32>(u_xlat50) >> 23u);
    u_xlati50 = (bitcast<i32>(u_xlatu50) + -127i);
    u_xlati53 = (1i << bitcast<u32>((u_xlati50 & 31i)));
    u_xlatu40.x = (u_xlatu3.x ^ bitcast<u32>(u_xlati53));
    u_xlati53 = (bitcast<i32>(u_xlatu40.y) + -32i);
    u_xlati53 = bitcast<i32>((bitcast<u32>(u_xlati53) & 65504u));
    u_xlati50 = (u_xlati50 + u_xlati53);
    u_xlati50 = (bitcast<i32>(u_xlatu23.y) + u_xlati50);
    u_xlat10 = vec4f((((-(vs_TEXCOORD0) * x_2271.x_AdditionalLightsPosition[u_xlati50].www) + x_2271.x_AdditionalLightsPosition[u_xlati50].xyz)).xyz, u_xlat10.w);
    u_xlat53 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat53 = max(u_xlat53, 0.00006103515625f);
    u_xlat23 = inverseSqrt(u_xlat53);
    u_xlat11 = (vec3f(u_xlat23) * u_xlat10.xyz);
    u_xlat55 = (1.0f / u_xlat53);
    u_xlat53 = (u_xlat53 * x_2271.x_AdditionalLightsAttenuation[u_xlati50].x);
    u_xlat53 = ((-(u_xlat53) * u_xlat53) + 1.0f);
    u_xlat53 = max(u_xlat53, 0.0f);
    u_xlat53 = (u_xlat53 * u_xlat53);
    u_xlat53 = (u_xlat53 * u_xlat55);
    u_xlat55 = dot(x_2271.x_AdditionalLightsSpotDir[u_xlati50].xyz, u_xlat11);
    u_xlat55 = ((u_xlat55 * x_2271.x_AdditionalLightsAttenuation[u_xlati50].z) + x_2271.x_AdditionalLightsAttenuation[u_xlati50].w);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat55 = (u_xlat55 * u_xlat55);
    u_xlat53 = (u_xlat53 * u_xlat55);
    u_xlatb55 = (u_xlati50 < 0i);
    u_xlati57 = i32(x_649.x_AdditionalShadowParams[u_xlati50].w);
    u_xlati55 = select(u_xlati57, -1i, u_xlatb55);
    u_xlatb57 = (u_xlati55 >= 0i);
    if (u_xlatb57) {
      u_xlatb57 = any(!((vec4f() == vec4f(x_649.x_AdditionalShadowParams[u_xlati50].z))));
      if (u_xlatb57) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb57 = (u_xlatb12.y & u_xlatb12.x);
        let x_3181 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_3181.xy, u_xlatb12.z, x_3181.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat58 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_3198 = u_xlat12.y;
        } else {
          x_3198 = u_xlat58;
        }
        u_xlat58 = x_3198;
        if (u_xlatb57) {
          x_3208 = u_xlat12.x;
        } else {
          x_3208 = u_xlat58;
        }
        u_xlat57 = x_3208;
        u_xlati57 = i32(u_xlat57);
        u_xlati55 = (u_xlati55 + u_xlati57);
      }
      u_xlati55 = (u_xlati55 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati55 + 1i)]);
      u_xlat12 = ((x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati55] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati55 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_649.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati55 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      let x_3262 = u_xlat12.xy;
      txVec2 = vec3f(x_3262.x, x_3262.y, u_xlat12.z);
      u_xlat55 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat57 = (1.0f + -(x_649.x_AdditionalShadowParams[u_xlati50].x));
      u_xlat55 = ((u_xlat55 * x_649.x_AdditionalShadowParams[u_xlati50].x) + u_xlat57);
      u_xlatb57 = (0.0f >= u_xlat12.z);
      u_xlatb58 = (u_xlat12.z >= 1.0f);
      u_xlatb57 = (u_xlatb57 | u_xlatb58);
      u_xlat55 = select(u_xlat55, 1.0f, u_xlatb57);
    } else {
      u_xlat55 = 1.0f;
    }
    u_xlat57 = (-(u_xlat55) + 1.0f);
    u_xlat55 = ((u_xlat49 * u_xlat57) + u_xlat55);
    u_xlati57 = bitcast<i32>((bitcast<u32>(x_826.unity_RenderingLayer.x) & bitcast<u32>(x_2271.x_AdditionalLightsLayerMasks[u_xlati50].el)));
    u_xlat53 = (u_xlat53 * u_xlat55);
    u_xlat55 = dot(u_xlat1.xyz, u_xlat11);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat53 = (u_xlat53 * u_xlat55);
    u_xlat12 = vec4f(((vec3f(u_xlat53) * x_2271.x_AdditionalLightsColor[u_xlati50].xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat23)) + u_xlat4)).xyz, u_xlat10.w);
    u_xlat50 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat50 = max(u_xlat50, 1.17549435e-38f);
    u_xlat50 = inverseSqrt(u_xlat50);
    u_xlat10 = vec4f(((vec3f(u_xlat50) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat50 = dot(u_xlat1.xyz, u_xlat10.xyz);
    u_xlat50 = clamp(u_xlat50, 0.0f, 1.0f);
    u_xlat53 = dot(u_xlat11, u_xlat10.xyz);
    u_xlat53 = clamp(u_xlat53, 0.0f, 1.0f);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat50 = ((u_xlat50 * u_xlat19.x) + 1.00001001358032226562f);
    u_xlat53 = (u_xlat53 * u_xlat53);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat53 = max(u_xlat53, 0.10000000149011611938f);
    u_xlat50 = (u_xlat50 * u_xlat53);
    u_xlat50 = (u_xlat54 * u_xlat50);
    u_xlat50 = (u_xlat52 / u_xlat50);
    u_xlat10 = vec4f((((vec3f(u_xlat50) * x_2220) + u_xlat16)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat9)).xyz, u_xlat10.w);
    if ((u_xlati57 != 0i)) {
      x_3419 = u_xlat10.xyz;
    } else {
      x_3419 = u_xlat9;
    }
    u_xlat9 = x_3419;
  }
  u_xlat0 = (u_xlat2 + u_xlat6.xyz);
  SV_Target0 = vec4f(((u_xlat9 + u_xlat0)).xyz, SV_Target0.w);
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

@group(1) @binding(8) var<uniform> x_64 : VGlobals;

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
  x_MainLightPosition : vec4f,
  /* @offset(48) */
  x_MainLightColor : vec4f,
  /* @offset(64) */
  x_MainLightLayerMask : u32,
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

alias Arr_9 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_9,
}

alias Arr_10 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_10,
}

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 32u>;

alias Arr_14 = array<vec4f, 224u>;

alias Arr_15 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_11,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_12,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_13,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_14,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_15,
}

alias Arr_16 = array<vec4f, 32u>;

alias Arr_17 = array<vec4f, 32u>;

alias Arr_18 = array<vec4f, 32u>;

alias Arr_19 = array<vec4f, 32u>;

alias Arr_20 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_21 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_16,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_17,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_18,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_19,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_20,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_21,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(7) var<uniform> x_77 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

@group(1) @binding(0) var<uniform> x_601 : PGlobals;

@group(1) @binding(6) var<uniform> x_650 : LightShadows;

@group(1) @binding(5) var<uniform> x_696 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_1106 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_1297 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_1546 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(5) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_2149 : AdditionalLights;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

const x_1256 = vec2u(2u);

const x_1781 = vec2f(0.5f);

const x_2097 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlatb16 : bool;
  var u_xlat16 : vec3f;
  var u_xlat1 : vec4f;
  var x_135 : vec3f;
  var x_149 : vec3f;
  var u_xlatb2 : bool;
  var u_xlati2 : i32;
  var x_168 : i32;
  var u_xlat2 : vec3f;
  var u_xlat18 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat36 : f32;
  var u_xlat20 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat35 : f32;
  var u_xlat19 : vec3f;
  var u_xlatb34 : bool;
  var u_xlat50 : f32;
  var x_548 : f32;
  var u_xlatb0 : bool;
  var x_623 : vec3f;
  var u_xlat8 : vec4f;
  var u_xlat49 : f32;
  var u_xlat51 : f32;
  var u_xlat52 : f32;
  var u_xlat53 : f32;
  var u_xlat54 : f32;
  var txVec0 : vec3f;
  var u_xlat21 : f32;
  var u_xlatb21 : bool;
  var u_xlatb37 : bool;
  var x_881 : f32;
  var u_xlat37 : f32;
  var u_xlat23 : f32;
  var u_xlat9 : vec3f;
  var u_xlatu7 : vec2u;
  var u_xlatu39 : vec2u;
  var u_xlati7 : i32;
  var x_1017 : f32;
  var u_xlatu0 : u32;
  var u_xlatu3 : vec4u;
  var u_xlati19 : i32;
  var u_xlatu19 : vec2u;
  var u_xlati23 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec3i;
  var u_xlati40 : vec2i;
  var u_xlati0 : i32;
  var u_xlatu23 : vec3u;
  var u_xlatb8 : vec3<bool>;
  var u_xlatu10 : vec4u;
  var u_xlati42 : i32;
  var u_xlatu58 : u32;
  var u_xlat11 : vec3f;
  var u_xlatu55 : u32;
  var u_xlati56 : i32;
  var u_xlatu57 : u32;
  var u_xlatb59 : bool;
  var u_xlatu12 : vec4u;
  var u_xlatb12 : vec4<bool>;
  var u_xlatu59 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec2u;
  var u_xlati12 : vec4i;
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
  var u_xlati45 : vec2i;
  var u_xlati14 : vec4i;
  var u_xlati15 : vec2i;
  var u_xlati13 : vec3i;
  var u_xlati28 : vec2i;
  var u_xlati44 : i32;
  var u_xlati59 : i32;
  var u_xlatb55 : bool;
  var u_xlati55 : i32;
  var u_xlat55 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec3f;
  var u_xlat59 : f32;
  var u_xlat28 : vec3f;
  var x_1607 : f32;
  var x_1621 : f32;
  var x_1635 : f32;
  var x_1681 : vec3f;
  var u_xlatu60 : u32;
  var u_xlat60 : f32;
  var u_xlat29 : vec3f;
  var u_xlatb45 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_1744 : f32;
  var x_1757 : f32;
  var u_xlat44 : f32;
  var u_xlatu44 : u32;
  var x_2107 : vec3f;
  var u_xlatu_loop_1 : u32;
  var u_xlatb23 : bool;
  var u_xlatb10 : vec4<bool>;
  var u_xlat10 : vec4f;
  var u_xlat56 : f32;
  var x_2295 : f32;
  var x_2304 : f32;
  var txVec1 : vec3f;
  var u_xlatb56 : bool;
  var x_2530 : vec3f;
  var u_xlati3 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati50 : i32;
  var u_xlatu8 : vec2u;
  var u_xlatu40 : vec2u;
  var u_xlatu50 : u32;
  var u_xlatb53 : bool;
  var u_xlatu53 : u32;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlati10 : vec4i;
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
  var u_xlati11 : vec2i;
  var u_xlati43 : vec2i;
  var u_xlati57 : i32;
  var u_xlati53 : i32;
  var u_xlatb57 : bool;
  var u_xlat58 : f32;
  var x_3076 : f32;
  var u_xlat57 : f32;
  var x_3086 : f32;
  var txVec2 : vec3f;
  var u_xlatb58 : bool;
  var x_3297 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(x_77.x_FillPlane.xyz, vs_TEXCOORD0);
  u_xlat0.x = (u_xlat0.x + -(x_77.x_FillPlane.w));
  u_xlatb16 = (-(u_xlat0.x) < 0.0f);
  if (((select(0i, 1i, u_xlatb16) * -1i) != 0i)) {
    discard;
  }
  u_xlat16.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat16.x = inverseSqrt(u_xlat16.x);
  u_xlat16 = (u_xlat16.xxx * vs_TEXCOORD1);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_135 = u_xlat16;
  } else {
    x_135 = x_77.x_FillPlane.xyz;
  }
  u_xlat1 = vec4f(x_135.xyz, u_xlat1.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_149 = x_77.x_BaseColor.xyz;
  } else {
    x_149 = x_77.x_TopColor.xyz;
  }
  u_xlat16 = x_149;
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
    u_xlat18.x = (x_77.x_BubbleSpeed * x_77.x_BubbleTime);
    u_xlat18 = ((-(x_77.x_FillPlane.xyz) * u_xlat18.xxx) + vs_TEXCOORD0);
    let x_223 = vec3f(x_77.x_BubbleScale, x_77.x_BubbleScale, x_77.x_BubbleScale);
    u_xlat18 = (u_xlat18 * vec3f(x_223.x, x_223.y, x_223.z));
    u_xlat3 = floor(u_xlat18.yxzy);
    u_xlat18 = fract(u_xlat18);
    u_xlat4 = vec3f((((u_xlat3.ww * vec2f(17.3099994659423828125f)) + u_xlat3.yz)).xy, u_xlat4.z);
    u_xlat4 = vec3f(((u_xlat4.xy * x_250)).xy, u_xlat4.z);
    u_xlat4 = vec3f(fract(u_xlat4.xy).xy, u_xlat4.z);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat36 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec3f(((vec2f(u_xlat36) + u_xlat4.xy)).xy, u_xlat4.z);
    u_xlat20.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat20.x);
    u_xlat5 = (u_xlat3 + vec4f(7.09999990463256835938f, 7.09999990463256835938f, 3.70000004768371582031f, 3.70000004768371582031f));
    u_xlat5 = (u_xlat5 * vec4f(0.10310000181198120117f));
    u_xlat5 = fract(u_xlat5);
    u_xlat6 = (u_xlat5 + vec4f(33.3300018310546875f));
    u_xlat3.x = dot(u_xlat5.yxy, u_xlat6.xyy);
    u_xlat20 = vec3f(((u_xlat3.xx + u_xlat5.yx)).xy, u_xlat20.z);
    u_xlat3.x = (u_xlat20.y + u_xlat20.x);
    u_xlat3.x = (u_xlat20.x * u_xlat3.x);
    u_xlat7.x = fract(u_xlat3.x);
    u_xlat3.x = dot(u_xlat5.wzw, u_xlat6.zww);
    u_xlat20 = vec3f(((u_xlat3.xx + u_xlat5.wz)).xy, u_xlat20.z);
    u_xlat3.x = (u_xlat20.y + u_xlat20.x);
    u_xlat3.x = (u_xlat20.x * u_xlat3.x);
    u_xlat7.y = fract(u_xlat3.x);
    u_xlat20 = vec3f(((u_xlat3.zy + vec2f(5.30000019073486328125f))).xy, u_xlat20.z);
    u_xlat4 = vec3f(u_xlat4.x, ((u_xlat20.xy * x_250)).xy);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.zyy + x_263)).xyz, u_xlat5.w);
    u_xlat3.x = dot(u_xlat4.yzy, u_xlat5.xyz);
    u_xlat20 = vec3f(((u_xlat3.xx + u_xlat4.yz)).xy, u_xlat20.z);
    u_xlat3.x = (u_xlat20.y + u_xlat20.x);
    u_xlat3.x = (u_xlat20.x * u_xlat3.x);
    u_xlat7.z = fract(u_xlat3.x);
    u_xlat20 = ((u_xlat7.xyz * vec3f(0.5f)) + vec3f(0.25f));
    u_xlat3 = vec4f(((u_xlat3.ww + u_xlat3.yz)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + vec2f(1.29999995231628417969f))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_250)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat35 = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((vec2f(u_xlat35) + u_xlat3.xy)).xy, u_xlat3.zw);
    u_xlat19.x = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat19.x);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat3.x = ((u_xlat3.x * 0.1799999922513961792f) + 0.20000000298023223877f);
    u_xlat18 = (u_xlat18 + -(u_xlat20));
    u_xlat18.x = dot(u_xlat18, u_xlat18);
    u_xlat18.x = sqrt(u_xlat18.x);
    u_xlatb34 = (u_xlat4.x < 0.25999999046325683594f);
    u_xlat50 = (u_xlat3.x * -0.30000001192092895508f);
    u_xlat18.x = (-(u_xlat3.x) + u_xlat18.x);
    u_xlat50 = (1.0f / u_xlat50);
    u_xlat18.x = (u_xlat50 * u_xlat18.x);
    u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
    u_xlat50 = ((u_xlat18.x * -2.0f) + 3.0f);
    u_xlat18.x = (u_xlat18.x * u_xlat18.x);
    u_xlat18.x = (u_xlat18.x * u_xlat50);
    if (u_xlatb34) {
      x_548 = u_xlat18.x;
    } else {
      x_548 = 0.0f;
    }
    u_xlat18.x = x_548;
    u_xlat18.x = (u_xlat18.x * x_77.x_Glug);
    u_xlat2.x = (u_xlat2.x * u_xlat18.x);
    u_xlat0.x = (u_xlat0.x * -150.0f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat2 = (-(u_xlat16) + x_77.x_BubbleColor.xyz);
    u_xlat16 = ((u_xlat0.xxx * u_xlat2) + u_xlat16);
  }
  u_xlatb0 = (x_601.unity_OrthoParams.w == 0.0f);
  u_xlat2 = (-(vs_TEXCOORD0) + x_601.x_WorldSpaceCameraPos);
  u_xlat3.x = x_601.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat3.y = x_601.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat3.z = x_601.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_623 = u_xlat2;
  } else {
    x_623 = u_xlat3.xyz;
  }
  u_xlat2 = x_623;
  u_xlat50 = dot(u_xlat2, u_xlat2);
  u_xlat50 = inverseSqrt(u_xlat50);
  u_xlat4 = (vec3f(u_xlat50) * u_xlat2);
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_650.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_650.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_650.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_650.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat5.w);
  u_xlat1.w = 1.0f;
  u_xlat6.x = dot(x_696.unity_SHAr, u_xlat1);
  u_xlat6.y = dot(x_696.unity_SHAg, u_xlat1);
  u_xlat6.z = dot(x_696.unity_SHAb, u_xlat1);
  u_xlat7 = (u_xlat1.yzzx * u_xlat1.xyzz);
  u_xlat8.x = dot(x_696.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_696.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_696.unity_SHBb, u_xlat7);
  u_xlat49 = (u_xlat1.y * u_xlat1.y);
  u_xlat49 = ((u_xlat1.x * u_xlat1.x) + -(u_xlat49));
  u_xlat7 = vec4f((((x_696.unity_SHC.xyz * vec3f(u_xlat49)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_775 = x_601.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((vec2f(1.0f) / vec2f(x_775.x, x_775.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat49 = ((u_xlat7.y * x_601.x_ScaleBiasRt.x) + x_601.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat49) + 1.0f);
  u_xlat16 = (u_xlat16 * vec3f(0.95999997854232788086f));
  u_xlat49 = (-(x_77.x_Smoothness) + 1.0f);
  u_xlat51 = (u_xlat49 * u_xlat49);
  u_xlat51 = max(u_xlat51, 0.0078125f);
  u_xlat52 = (u_xlat51 * u_xlat51);
  u_xlat53 = (x_77.x_Smoothness + 0.04000002145767211914f);
  u_xlat53 = clamp(u_xlat53, 0.0f, 1.0f);
  u_xlat54 = ((u_xlat51 * 4.0f) + 2.0f);
  let x_836 = u_xlat5.xy;
  txVec0 = vec3f(x_836.x, x_836.y, u_xlat5.z);
  u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat21 = (-(x_650.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat5.x * x_650.x_MainLightShadowParams.x) + u_xlat21);
  u_xlatb21 = (0.0f >= u_xlat5.z);
  u_xlatb37 = (u_xlat5.z >= 1.0f);
  u_xlatb21 = (u_xlatb37 | u_xlatb21);
  if (u_xlatb21) {
    x_881 = 1.0f;
  } else {
    x_881 = u_xlat5.x;
  }
  u_xlat5.x = x_881;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_601.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat21 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat37 = ((u_xlat21 * x_650.x_MainLightShadowParams.z) + x_650.x_MainLightShadowParams.w);
  u_xlat37 = clamp(u_xlat37, 0.0f, 1.0f);
  u_xlat23 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat37 * u_xlat23) + u_xlat5.x);
  u_xlat37 = dot(-(u_xlat4), u_xlat1.xyz);
  u_xlat37 = (u_xlat37 + u_xlat37);
  u_xlat9 = ((u_xlat1.xyz * -(vec3f(u_xlat37))) + -(u_xlat4));
  u_xlat37 = dot(u_xlat1.xyz, u_xlat4);
  u_xlat37 = clamp(u_xlat37, 0.0f, 1.0f);
  u_xlat37 = (-(u_xlat37) + 1.0f);
  u_xlat37 = (u_xlat37 * u_xlat37);
  u_xlat37 = (u_xlat37 * u_xlat37);
  u_xlat23 = ((-(u_xlat49) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat49 = (u_xlat49 * u_xlat23);
  u_xlat49 = (u_xlat49 * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_601.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu39 = vec2u(x_601.x_FPParams1.zw);
  u_xlati7 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu39.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu7.x = (u_xlatu39.y * bitcast<u32>(u_xlati7));
  u_xlat3.x = dot(-(u_xlat3.xyz), u_xlat8.xyz);
  u_xlat19.x = log2(u_xlat3.x);
  if (u_xlatb0) {
    x_1017 = u_xlat19.x;
  } else {
    x_1017 = u_xlat3.x;
  }
  u_xlat0.x = x_1017;
  u_xlat0.x = ((u_xlat0.x * x_601.x_FPParams0.x) + x_601.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu3.x = u32(x_601.x_FPParams2.x);
  u_xlatu3.x = (u_xlatu3.x + 4294967295u);
  u_xlati19 = (bitcast<i32>(u_xlatu39.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu3.x);
  u_xlatu3.x = (bitcast<u32>(u_xlati19) * u_xlatu0);
  u_xlatu19 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati19))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu19.x >> 2u);
  param = bitcast<i32>(u_xlatu19.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_1086 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu19.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_1093 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati23 = vec3i(vec2i(x_1086, x_1093).xy, u_xlati23.z);
  u_xlati8 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati23.xx) & bitcast<vec2u>(x_1106.urp_ZBins[bitcast<i32>(u_xlatu0)].wy))).xy, u_xlati8.z);
  let x_1119 = ~(u_xlati23.xy);
  u_xlati23 = vec3i(x_1119.x, u_xlati23.y, x_1119.y);
  u_xlati40 = bitcast<vec2i>((bitcast<vec2u>(u_xlati23.xx) & bitcast<vec2u>(x_1106.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati40) | bitcast<vec2u>(u_xlati8.xy))).xy, u_xlati8.z);
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati23.y) & bitcast<u32>(u_xlati8.x)));
  u_xlati19 = bitcast<i32>((bitcast<u32>(u_xlati23.z) & bitcast<u32>(u_xlati8.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati19));
  u_xlatu23 = vec3u(vec2u(x_601.x_FPParams0.zw).xy, u_xlatu23.z);
  u_xlatb8 = ((vec4f() < u_xlat9.xyzx)).xyz;
  u_xlatu10.x = u_xlatu7.x;
  u_xlatu10.y = u_xlatu19.y;
  u_xlati42 = 0i;
  u_xlatu58 = u_xlatu0;
  u_xlat11.x = 0.0f;
  u_xlat11.y = 0.0f;
  u_xlat11.z = 0.0f;
  u_xlat19.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu55 = (u_xlatu58 >> 16u);
    u_xlati56 = u_xlati42;
    u_xlatu57 = u_xlatu58;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb59 = (u_xlati56 == 0i);
      u_xlatu12.x = (u_xlatu57 & 65535u);
      u_xlatb12.x = (u_xlatu55 >= u_xlatu12.x);
      u_xlatb59 = (u_xlatb59 & u_xlatb12.x);
      if (!(u_xlatb59)) {
        break;
      }
      param_6 = u_xlatu57;
      param_7 = 5i;
      param_8 = 11i;
      let x_1247 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu59 = x_1247;
      u_xlatu12 = (u_xlatu10.xxyy + vec4u(u_xlatu59));
      u_xlatu13 = (u_xlatu12.yw >> x_1256);
      param_9 = bitcast<i32>(u_xlatu12.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_1267 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu12.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_1274 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu12.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_1281 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu12.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_1288 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati12 = vec4i(x_1267, x_1274, x_1281, x_1288);
      u_xlati45 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_1297.urp_Tiles[bitcast<i32>(u_xlatu13.x)].wy)));
      u_xlati14 = ~(u_xlati12);
      u_xlati15 = bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_1297.urp_Tiles[bitcast<i32>(u_xlatu13.x)].zx)));
      let x_1329 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45) | bitcast<vec2u>(u_xlati15)));
      u_xlati13 = vec3i(x_1329.x, u_xlati13.y, x_1329.y);
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati13.x)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati13.z)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati28.x) | bitcast<u32>(u_xlati12.x)));
      u_xlati28 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_1106.urp_ZBins[bitcast<i32>(u_xlatu13.y)].wy)));
      u_xlati13 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_1106.urp_ZBins[bitcast<i32>(u_xlatu13.y)].zx))).xy, u_xlati13.z);
      u_xlati28 = bitcast<vec2i>((bitcast<vec2u>(u_xlati28) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati28.x)));
      u_xlati44 = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati28.y)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati44) | bitcast<u32>(u_xlati28.x)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati28.x) & bitcast<u32>(u_xlati12.x)));
      u_xlati28.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu57) & 31i)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati28.x) & bitcast<u32>(u_xlati12.x)));
      u_xlati59 = (bitcast<i32>(u_xlatu59) << bitcast<u32>(5i));
      u_xlatu59 = (u_xlatu55 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati59)))));
      u_xlatu59 = min(u_xlatu59, 31u);
      u_xlatu59 = (bitcast<u32>(-(bitcast<i32>(u_xlatu59))) + 31u);
      u_xlatu59 = (4294967295u >> (u_xlatu59 & 31u));
      u_xlati56 = bitcast<i32>((u_xlatu59 & bitcast<u32>(u_xlati12.x)));
      u_xlati59 = (bitcast<i32>(u_xlatu57) + 32i);
      u_xlatu57 = (bitcast<u32>(u_xlati59) & 4294967264u);
    }
    u_xlatu58 = u_xlatu57;
    u_xlatb55 = (u_xlati56 != 0i);
    u_xlatb59 = (u_xlat19.x < 0.99000000953674316406f);
    u_xlatb55 = (u_xlatb55 & u_xlatb59);
    if (!(u_xlatb55)) {
      break;
    }
    u_xlati55 = (0i - u_xlati56);
    u_xlatu55 = (bitcast<u32>(u_xlati55) & bitcast<u32>(u_xlati56));
    u_xlat55 = f32(u_xlatu55);
    u_xlatu55 = (bitcast<u32>(u_xlat55) >> 23u);
    u_xlati55 = (bitcast<i32>(u_xlatu55) + -127i);
    u_xlati59 = (1i << bitcast<u32>((u_xlati55 & 31i)));
    u_xlati42 = bitcast<i32>((bitcast<u32>(u_xlati56) ^ bitcast<u32>(u_xlati59)));
    u_xlati59 = (bitcast<i32>(u_xlatu58) + -32i);
    u_xlati59 = bitcast<i32>((bitcast<u32>(u_xlati59) & 65504u));
    u_xlati55 = (u_xlati55 + u_xlati59);
    u_xlati55 = (-(bitcast<i32>(u_xlatu23.x)) + u_xlati55);
    u_xlat12 = vec4f(((vs_TEXCOORD0 + -(x_1546.urp_ReflProbes_BoxMin[u_xlati55].xyz))).xyz, u_xlat12.w);
    u_xlat13 = (-(vs_TEXCOORD0) + x_1546.urp_ReflProbes_BoxMax[u_xlati55].xyz);
    u_xlat12 = vec4f(min(u_xlat12.xyz, u_xlat13).xyz, u_xlat12.w);
    u_xlat12 = vec4f(((u_xlat12.xyz / x_1546.urp_ReflProbes_BoxMax[u_xlati55].www)).xyz, u_xlat12.w);
    u_xlat59 = min(u_xlat12.z, u_xlat12.y);
    u_xlat59 = min(u_xlat59, u_xlat12.x);
    u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
    u_xlat12.x = (-(u_xlat19.x) + 1.0f);
    u_xlat59 = min(u_xlat59, u_xlat12.x);
    u_xlatb12.x = (0.0f < x_1546.urp_ReflProbes_ProbePosition[u_xlati55].w);
    if (u_xlatb8.x) {
      x_1607 = x_1546.urp_ReflProbes_BoxMax[u_xlati55].x;
    } else {
      x_1607 = x_1546.urp_ReflProbes_BoxMin[u_xlati55].x;
    }
    u_xlat28.x = x_1607;
    if (u_xlatb8.y) {
      x_1621 = x_1546.urp_ReflProbes_BoxMax[u_xlati55].y;
    } else {
      x_1621 = x_1546.urp_ReflProbes_BoxMin[u_xlati55].y;
    }
    u_xlat28.y = x_1621;
    if (u_xlatb8.z) {
      x_1635 = x_1546.urp_ReflProbes_BoxMax[u_xlati55].z;
    } else {
      x_1635 = x_1546.urp_ReflProbes_BoxMin[u_xlati55].z;
    }
    u_xlat28.z = x_1635;
    u_xlat28 = (u_xlat28 + -(vs_TEXCOORD0));
    u_xlat28 = (u_xlat28 / u_xlat9);
    u_xlat28.x = min(u_xlat28.y, u_xlat28.x);
    u_xlat28.x = min(u_xlat28.z, u_xlat28.x);
    u_xlat13 = (vs_TEXCOORD0 + -(x_1546.urp_ReflProbes_ProbePosition[u_xlati55].xyz));
    u_xlat28 = ((u_xlat9 * u_xlat28.xxx) + u_xlat13);
    if (u_xlatb12.x) {
      x_1681 = u_xlat28;
    } else {
      x_1681 = u_xlat9;
    }
    u_xlat12 = vec4f(x_1681.xyz, u_xlat12.w);
    u_xlatu60 = u32(abs(x_1546.urp_ReflProbes_ProbePosition[u_xlati55].w));
    u_xlatu60 = (u_xlatu60 + 4294967295u);
    u_xlat60 = f32(u_xlatu60);
    u_xlat60 = min(u_xlat49, u_xlat60);
    u_xlat13.x = dot(abs(u_xlat12.xyz), vec3f(1.0f));
    u_xlat13.x = max(u_xlat13.x, 0.00000099999999747524f);
    u_xlat13.x = (1.0f / u_xlat13.x);
    u_xlat29 = (u_xlat12.zxy * u_xlat13.xxx);
    u_xlat29.x = -(u_xlat29.x);
    u_xlat29.x = clamp(u_xlat29.x, 0.0f, 1.0f);
    u_xlatb45 = ((u_xlat29.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat29;
    if (u_xlatb45.x) {
      x_1744 = u_xlat29.x;
    } else {
      x_1744 = -(u_xlat29.x);
    }
    hlslcc_movcTemp.x = x_1744;
    if (u_xlatb45.y) {
      x_1757 = u_xlat29.x;
    } else {
      x_1757 = -(u_xlat29.x);
    }
    hlslcc_movcTemp.y = x_1757;
    u_xlat29 = hlslcc_movcTemp;
    u_xlat12 = vec4f((((u_xlat12.xy * u_xlat13.xx) + u_xlat29.xy)).xy, u_xlat12.zw);
    u_xlat12 = vec4f((((u_xlat12.xy * x_1781) + x_1781)).xy, u_xlat12.zw);
    u_xlat12 = vec4f(clamp(u_xlat12.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat12.zw);
    u_xlat44 = floor(u_xlat60);
    u_xlat13.x = (u_xlat44 + 1.0f);
    u_xlat60 = (-(u_xlat44) + u_xlat60);
    u_xlatu44 = u32(u_xlat44);
    u_xlati44 = ((u_xlati55 * 7i) + bitcast<i32>(u_xlatu44));
    u_xlatu13.x = u32(u_xlat13.x);
    u_xlati55 = ((u_xlati55 * 7i) + bitcast<i32>(u_xlatu13.x));
    u_xlat13 = vec3f((((u_xlat12.xy * x_1546.urp_ReflProbes_MipScaleOffset[u_xlati44].xy) + x_1546.urp_ReflProbes_MipScaleOffset[u_xlati44].zw)).xy, u_xlat13.z);
    u_xlat13 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz;
    u_xlat12 = vec4f((((u_xlat12.xy * x_1546.urp_ReflProbes_MipScaleOffset[u_xlati55].xy) + x_1546.urp_ReflProbes_MipScaleOffset[u_xlati55].zw)).xy, u_xlat12.zw);
    u_xlat12 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat12.xy, 0.0f).xyz.xyz, u_xlat12.w);
    u_xlat12 = vec4f(((-(u_xlat13) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat12 = vec4f((((vec3f(u_xlat60) * u_xlat12.xyz) + u_xlat13)).xyz, u_xlat12.w);
    u_xlat11 = ((vec3f(u_xlat59) * u_xlat12.xyz) + u_xlat11);
    u_xlat19.x = (u_xlat19.x + u_xlat59);
  }
  u_xlatb0 = (u_xlat19.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9, u_xlat49);
    u_xlat0.x = (-(u_xlat19.x) + 1.0f);
    u_xlat49 = (u_xlat8.w + -1.0f);
    u_xlat49 = ((x_601.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat49) + 1.0f);
    u_xlat49 = max(u_xlat49, 0.0f);
    u_xlat49 = log2(u_xlat49);
    u_xlat49 = (u_xlat49 * x_601.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat49 = exp2(u_xlat49);
    u_xlat49 = (u_xlat49 * x_601.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * vec3f(u_xlat49))).xyz, u_xlat8.w);
    u_xlat11 = ((u_xlat0.xxx * u_xlat8.xyz) + u_xlat11);
  }
  let x_1963 = ((vec2f(u_xlat51) * vec2f(u_xlat51)) + vec2f(-1.0f, 1.0f));
  u_xlat19 = vec3f(x_1963.x, u_xlat19.y, x_1963.y);
  u_xlat0.x = (1.0f / u_xlat19.z);
  u_xlat49 = (u_xlat53 + -0.03999999910593032837f);
  u_xlat49 = ((u_xlat37 * u_xlat49) + 0.03999999910593032837f);
  u_xlat0.x = (u_xlat0.x * u_xlat49);
  u_xlat8 = vec4f(((u_xlat0.xxx * u_xlat11)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat16) + u_xlat8.xyz)).xyz, u_xlat6.w);
  u_xlati0 = bitcast<i32>((x_601.x_MainLightLayerMask & bitcast<u32>(x_696.unity_RenderingLayer.x)));
  u_xlat49 = dot(u_xlat1.xyz, x_601.x_MainLightPosition.xyz);
  u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
  u_xlat49 = (u_xlat49 * u_xlat5.x);
  let x_2023 = (vec3f(u_xlat49) * x_601.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_2023.x, u_xlat5.y, x_2023.yz);
  u_xlat2 = ((u_xlat2 * vec3f(u_xlat50)) + x_601.x_MainLightPosition.xyz);
  u_xlat49 = dot(u_xlat2, u_xlat2);
  u_xlat49 = max(u_xlat49, 1.17549435e-38f);
  u_xlat49 = inverseSqrt(u_xlat49);
  u_xlat2 = (vec3f(u_xlat49) * u_xlat2);
  u_xlat49 = dot(u_xlat1.xyz, u_xlat2);
  u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
  u_xlat2.x = dot(x_601.x_MainLightPosition.xyz, u_xlat2);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat49 = (u_xlat49 * u_xlat49);
  u_xlat49 = ((u_xlat49 * u_xlat19.x) + 1.00001001358032226562f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat49 = (u_xlat49 * u_xlat49);
  u_xlat2.x = max(u_xlat2.x, 0.10000000149011611938f);
  u_xlat49 = (u_xlat49 * u_xlat2.x);
  u_xlat49 = (u_xlat54 * u_xlat49);
  u_xlat49 = (u_xlat52 / u_xlat49);
  u_xlat2 = ((vec3f(u_xlat49) * x_2097) + u_xlat16);
  u_xlat2 = (u_xlat5.xzw * u_xlat2);
  if ((u_xlati0 != 0i)) {
    x_2107 = u_xlat2;
  } else {
    x_2107 = vec3f();
  }
  u_xlat2 = x_2107;
  u_xlatu0 = min(u_xlatu23.y, 32u);
  u_xlat49 = ((u_xlat21 * x_650.x_AdditionalShadowFadeParams.x) + x_650.x_AdditionalShadowFadeParams.y);
  u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu0)) {
    } else {
      break;
    }
    u_xlat8 = vec4f((((-(vs_TEXCOORD0) * x_2149.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_2149.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat8.w);
    u_xlat51 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat51 = max(u_xlat51, 0.00006103515625f);
    u_xlat53 = inverseSqrt(u_xlat51);
    u_xlat9 = (vec3f(u_xlat53) * u_xlat8.xyz);
    u_xlat23 = (1.0f / u_xlat51);
    u_xlat51 = (u_xlat51 * x_2149.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat51 = ((-(u_xlat51) * u_xlat51) + 1.0f);
    u_xlat51 = max(u_xlat51, 0.0f);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat51 = (u_xlat51 * u_xlat23);
    u_xlat23 = dot(x_2149.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9);
    u_xlat23 = ((u_xlat23 * x_2149.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_2149.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
    u_xlat23 = (u_xlat23 * u_xlat23);
    u_xlat51 = (u_xlat51 * u_xlat23);
    u_xlatb23 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati55 = i32(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati23.x = select(u_xlati55, -1i, u_xlatb23);
    u_xlatb55 = (u_xlati23.x >= 0i);
    if (u_xlatb55) {
      u_xlatb55 = any(!((vec4f() == vec4f(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb55) {
        u_xlatb10 = vec4<bool>(((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz.xyz, u_xlatb10.w);
        u_xlatb55 = (u_xlatb10.y & u_xlatb10.x);
        let x_2276 = ((-(u_xlat9.zyzx) < vec4f())).xyw;
        u_xlatb10 = vec4<bool>(x_2276.xy, u_xlatb10.z, x_2276.z);
        u_xlat10.x = select(4.0f, 5.0f, u_xlatb10.x);
        u_xlat10.y = select(2.0f, 3.0f, u_xlatb10.y);
        u_xlat56 = select(0.0f, 1.0f, u_xlatb10.w);
        if (u_xlatb10.z) {
          x_2295 = u_xlat10.y;
        } else {
          x_2295 = u_xlat56;
        }
        u_xlat56 = x_2295;
        if (u_xlatb55) {
          x_2304 = u_xlat10.x;
        } else {
          x_2304 = u_xlat56;
        }
        u_xlat55 = x_2304;
        u_xlati55 = i32(u_xlat55);
        u_xlati23.x = (u_xlati55 + u_xlati23.x);
      }
      u_xlati23.x = (u_xlati23.x << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati23.x + 1i)]);
      u_xlat10 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati23.x] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati23.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati23.x + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      let x_2367 = u_xlat10.xy;
      txVec1 = vec3f(x_2367.x, x_2367.y, u_xlat10.z);
      u_xlat23 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat55 = (1.0f + -(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat23 = ((u_xlat23 * x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat55);
      u_xlatb55 = (0.0f >= u_xlat10.z);
      u_xlatb56 = (u_xlat10.z >= 1.0f);
      u_xlatb55 = (u_xlatb55 | u_xlatb56);
      u_xlat23 = select(u_xlat23, 1.0f, u_xlatb55);
    } else {
      u_xlat23 = 1.0f;
    }
    u_xlat55 = (-(u_xlat23) + 1.0f);
    u_xlat23 = ((u_xlat49 * u_xlat55) + u_xlat23);
    u_xlati55 = bitcast<i32>((bitcast<u32>(x_696.unity_RenderingLayer.x) & bitcast<u32>(x_2149.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat51 = (u_xlat51 * u_xlat23);
    u_xlat23 = dot(u_xlat1.xyz, u_xlat9);
    u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
    u_xlat51 = (u_xlat51 * u_xlat23);
    u_xlat10 = vec4f(((vec3f(u_xlat51) * x_2149.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlat8 = vec4f((((u_xlat8.xyz * vec3f(u_xlat53)) + u_xlat4)).xyz, u_xlat8.w);
    u_xlat51 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat51 = max(u_xlat51, 1.17549435e-38f);
    u_xlat51 = inverseSqrt(u_xlat51);
    u_xlat8 = vec4f(((vec3f(u_xlat51) * u_xlat8.xyz)).xyz, u_xlat8.w);
    u_xlat51 = dot(u_xlat1.xyz, u_xlat8.xyz);
    u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
    u_xlat53 = dot(u_xlat9, u_xlat8.xyz);
    u_xlat53 = clamp(u_xlat53, 0.0f, 1.0f);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat51 = ((u_xlat51 * u_xlat19.x) + 1.00001001358032226562f);
    u_xlat53 = (u_xlat53 * u_xlat53);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat53 = max(u_xlat53, 0.10000000149011611938f);
    u_xlat51 = (u_xlat51 * u_xlat53);
    u_xlat51 = (u_xlat54 * u_xlat51);
    u_xlat51 = (u_xlat52 / u_xlat51);
    u_xlat8 = vec4f((((vec3f(u_xlat51) * x_2097) + u_xlat16)).xyz, u_xlat8.w);
    u_xlat8 = vec4f((((u_xlat8.xyz * u_xlat10.xyz) + u_xlat5.xyz)).xyz, u_xlat8.w);
    if ((u_xlati55 != 0i)) {
      x_2530 = u_xlat8.xyz;
    } else {
      x_2530 = u_xlat5.xyz;
    }
    u_xlat5 = vec4f(x_2530.xyz, u_xlat5.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu0 = (u_xlatu3.x >> 2u);
  param_21 = bitcast<i32>(u_xlatu3.x);
  param_22 = 0i;
  param_23 = 1i;
  let x_2553 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu3.x);
  param_25 = 1i;
  param_26 = 1i;
  let x_2560 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  let x_2561 = vec2i(x_2553, x_2560);
  u_xlati3 = vec4i(x_2561.x, u_xlati3.yz, x_2561.y);
  let x_2574 = bitcast<vec2i>((bitcast<vec2u>(u_xlati3.xx) & bitcast<vec2u>(x_1106.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  u_xlati23 = vec3i(x_2574.x, u_xlati23.y, x_2574.y);
  u_xlati8 = vec3i((~(u_xlati3.xw)).xy, u_xlati8.z);
  let x_2592 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8.xx) & bitcast<vec2u>(x_1106.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = vec3i(x_2592.x, u_xlati8.y, x_2592.y);
  let x_2602 = bitcast<vec2i>((bitcast<vec2u>(u_xlati23.xz) | bitcast<vec2u>(u_xlati8.xz)));
  u_xlati23 = vec3i(x_2602.x, u_xlati23.y, x_2602.y);
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati3.w) & bitcast<u32>(u_xlati23.x)));
  u_xlati50 = bitcast<i32>((bitcast<u32>(u_xlati8.y) & bitcast<u32>(u_xlati23.z)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati50));
  u_xlatu8.x = u_xlatu7.x;
  u_xlatu8.y = u_xlatu19.y;
  u_xlatu40.x = 0u;
  u_xlatu40.y = u_xlatu0;
  u_xlat9 = u_xlat5.xyz;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu50 = (u_xlatu40.y >> 16u);
    u_xlatu3 = vec4u(u_xlatu40.x, u_xlatu3.yz, u_xlatu40.y);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb53 = (bitcast<i32>(u_xlatu3.x) == 0i);
      u_xlatu23.x = (u_xlatu3.w & 65535u);
      u_xlatb23 = (u_xlatu50 >= u_xlatu23.x);
      u_xlatb53 = (u_xlatb53 & u_xlatb23);
      if (!(u_xlatb53)) {
        break;
      }
      param_27 = u_xlatu3.w;
      param_28 = 5i;
      param_29 = 11i;
      let x_2684 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu53 = x_2684;
      u_xlatu10 = (vec4u(u_xlatu53) + u_xlatu8.xxyy);
      let x_2692 = (u_xlatu10.yw >> x_1256);
      u_xlatu23 = vec3u(x_2692.x, u_xlatu23.y, x_2692.y);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_2702 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_2709 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_2716 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_2723 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_2702, x_2709, x_2716, x_2723);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_1297.urp_Tiles[bitcast<i32>(u_xlatu23.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati43 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_1297.urp_Tiles[bitcast<i32>(u_xlatu23.x)].zx)));
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati43) | bitcast<vec2u>(u_xlati11)));
      u_xlati23.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati57 = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.y)));
      u_xlati23.x = bitcast<i32>((bitcast<u32>(u_xlati23.x) | bitcast<u32>(u_xlati57)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_1106.urp_ZBins[bitcast<i32>(u_xlatu23.z)].wy))).xy, u_xlati10.zw);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_1106.urp_ZBins[bitcast<i32>(u_xlatu23.z)].zx)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xy) | bitcast<vec2u>(u_xlati11))).xy, u_xlati10.zw);
      u_xlati55 = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati10.x)));
      u_xlati57 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati10.y)));
      u_xlati55 = bitcast<i32>((bitcast<u32>(u_xlati55) | bitcast<u32>(u_xlati57)));
      u_xlati23.x = bitcast<i32>((bitcast<u32>(u_xlati55) & bitcast<u32>(u_xlati23.x)));
      u_xlati55 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu3.w) & 31i)));
      u_xlati23.x = bitcast<i32>((bitcast<u32>(u_xlati55) & bitcast<u32>(u_xlati23.x)));
      u_xlati53 = (bitcast<i32>(u_xlatu53) << bitcast<u32>(5i));
      u_xlatu53 = (u_xlatu50 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati53)))));
      u_xlatu53 = min(u_xlatu53, 31u);
      u_xlatu53 = (bitcast<u32>(-(bitcast<i32>(u_xlatu53))) + 31u);
      u_xlatu53 = (4294967295u >> (u_xlatu53 & 31u));
      u_xlatu3.x = (u_xlatu53 & bitcast<u32>(u_xlati23.x));
      u_xlati53 = (bitcast<i32>(u_xlatu3.w) + 32i);
      u_xlatu3.w = (bitcast<u32>(u_xlati53) & 4294967264u);
    }
    u_xlatu40.y = u_xlatu3.w;
    if ((u_xlatu3.x == 0u)) {
      break;
    }
    u_xlati50 = (0i - bitcast<i32>(u_xlatu3.x));
    u_xlatu50 = (bitcast<u32>(u_xlati50) & u_xlatu3.x);
    u_xlat50 = f32(u_xlatu50);
    u_xlatu50 = (bitcast<u32>(u_xlat50) >> 23u);
    u_xlati50 = (bitcast<i32>(u_xlatu50) + -127i);
    u_xlati53 = (1i << bitcast<u32>((u_xlati50 & 31i)));
    u_xlatu40.x = (u_xlatu3.x ^ bitcast<u32>(u_xlati53));
    u_xlati53 = (bitcast<i32>(u_xlatu40.y) + -32i);
    u_xlati53 = bitcast<i32>((bitcast<u32>(u_xlati53) & 65504u));
    u_xlati50 = (u_xlati50 + u_xlati53);
    u_xlati50 = (bitcast<i32>(u_xlatu23.y) + u_xlati50);
    u_xlat10 = vec4f((((-(vs_TEXCOORD0) * x_2149.x_AdditionalLightsPosition[u_xlati50].www) + x_2149.x_AdditionalLightsPosition[u_xlati50].xyz)).xyz, u_xlat10.w);
    u_xlat53 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat53 = max(u_xlat53, 0.00006103515625f);
    u_xlat23 = inverseSqrt(u_xlat53);
    u_xlat11 = (vec3f(u_xlat23) * u_xlat10.xyz);
    u_xlat55 = (1.0f / u_xlat53);
    u_xlat53 = (u_xlat53 * x_2149.x_AdditionalLightsAttenuation[u_xlati50].x);
    u_xlat53 = ((-(u_xlat53) * u_xlat53) + 1.0f);
    u_xlat53 = max(u_xlat53, 0.0f);
    u_xlat53 = (u_xlat53 * u_xlat53);
    u_xlat53 = (u_xlat53 * u_xlat55);
    u_xlat55 = dot(x_2149.x_AdditionalLightsSpotDir[u_xlati50].xyz, u_xlat11);
    u_xlat55 = ((u_xlat55 * x_2149.x_AdditionalLightsAttenuation[u_xlati50].z) + x_2149.x_AdditionalLightsAttenuation[u_xlati50].w);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat55 = (u_xlat55 * u_xlat55);
    u_xlat53 = (u_xlat53 * u_xlat55);
    u_xlatb55 = (u_xlati50 < 0i);
    u_xlati57 = i32(x_650.x_AdditionalShadowParams[u_xlati50].w);
    u_xlati55 = select(u_xlati57, -1i, u_xlatb55);
    u_xlatb57 = (u_xlati55 >= 0i);
    if (u_xlatb57) {
      u_xlatb57 = any(!((vec4f() == vec4f(x_650.x_AdditionalShadowParams[u_xlati50].z))));
      if (u_xlatb57) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb57 = (u_xlatb12.y & u_xlatb12.x);
        let x_3059 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_3059.xy, u_xlatb12.z, x_3059.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat58 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_3076 = u_xlat12.y;
        } else {
          x_3076 = u_xlat58;
        }
        u_xlat58 = x_3076;
        if (u_xlatb57) {
          x_3086 = u_xlat12.x;
        } else {
          x_3086 = u_xlat58;
        }
        u_xlat57 = x_3086;
        u_xlati57 = i32(u_xlat57);
        u_xlati55 = (u_xlati55 + u_xlati57);
      }
      u_xlati55 = (u_xlati55 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati55 + 1i)]);
      u_xlat12 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati55] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati55 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati55 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      let x_3140 = u_xlat12.xy;
      txVec2 = vec3f(x_3140.x, x_3140.y, u_xlat12.z);
      u_xlat55 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat57 = (1.0f + -(x_650.x_AdditionalShadowParams[u_xlati50].x));
      u_xlat55 = ((u_xlat55 * x_650.x_AdditionalShadowParams[u_xlati50].x) + u_xlat57);
      u_xlatb57 = (0.0f >= u_xlat12.z);
      u_xlatb58 = (u_xlat12.z >= 1.0f);
      u_xlatb57 = (u_xlatb57 | u_xlatb58);
      u_xlat55 = select(u_xlat55, 1.0f, u_xlatb57);
    } else {
      u_xlat55 = 1.0f;
    }
    u_xlat57 = (-(u_xlat55) + 1.0f);
    u_xlat55 = ((u_xlat49 * u_xlat57) + u_xlat55);
    u_xlati57 = bitcast<i32>((bitcast<u32>(x_696.unity_RenderingLayer.x) & bitcast<u32>(x_2149.x_AdditionalLightsLayerMasks[u_xlati50].el)));
    u_xlat53 = (u_xlat53 * u_xlat55);
    u_xlat55 = dot(u_xlat1.xyz, u_xlat11);
    u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
    u_xlat53 = (u_xlat53 * u_xlat55);
    u_xlat12 = vec4f(((vec3f(u_xlat53) * x_2149.x_AdditionalLightsColor[u_xlati50].xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat23)) + u_xlat4)).xyz, u_xlat10.w);
    u_xlat50 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat50 = max(u_xlat50, 1.17549435e-38f);
    u_xlat50 = inverseSqrt(u_xlat50);
    u_xlat10 = vec4f(((vec3f(u_xlat50) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat50 = dot(u_xlat1.xyz, u_xlat10.xyz);
    u_xlat50 = clamp(u_xlat50, 0.0f, 1.0f);
    u_xlat53 = dot(u_xlat11, u_xlat10.xyz);
    u_xlat53 = clamp(u_xlat53, 0.0f, 1.0f);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat50 = ((u_xlat50 * u_xlat19.x) + 1.00001001358032226562f);
    u_xlat53 = (u_xlat53 * u_xlat53);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat53 = max(u_xlat53, 0.10000000149011611938f);
    u_xlat50 = (u_xlat50 * u_xlat53);
    u_xlat50 = (u_xlat54 * u_xlat50);
    u_xlat50 = (u_xlat52 / u_xlat50);
    u_xlat10 = vec4f((((vec3f(u_xlat50) * x_2097) + u_xlat16)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat9)).xyz, u_xlat10.w);
    if ((u_xlati57 != 0i)) {
      x_3297 = u_xlat10.xyz;
    } else {
      x_3297 = u_xlat9;
    }
    u_xlat9 = x_3297;
  }
  u_xlat0 = (u_xlat2 + u_xlat6.xyz);
  SV_Target0 = vec4f(((u_xlat9 + u_xlat0)).xyz, SV_Target0.w);
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

@group(1) @binding(6) var<uniform> x_651 : LightShadows;

@group(1) @binding(5) var<uniform> x_697 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(7) var<uniform> x_937 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_1266 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_1444 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_1690 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(7) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_2317 : AdditionalLights;

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

const x_985 = vec2f(0.5f);

const x_1403 = vec2u(2u);

const x_1859 = vec3f(1.0f);

const x_2248 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlatb17 : bool;
  var u_xlat17 : vec3f;
  var u_xlat1 : vec4f;
  var x_135 : vec3f;
  var x_149 : vec3f;
  var u_xlatb2 : bool;
  var u_xlati2 : i32;
  var x_168 : i32;
  var u_xlat2 : vec3f;
  var u_xlat19 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat38 : f32;
  var u_xlat21 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat37 : f32;
  var u_xlat20 : vec3f;
  var u_xlatb36 : bool;
  var u_xlat53 : f32;
  var x_548 : f32;
  var u_xlatb0 : bool;
  var x_624 : vec3f;
  var u_xlat8 : vec4f;
  var u_xlat52 : f32;
  var u_xlat54 : f32;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlat57 : f32;
  var txVec0 : vec3f;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlatb39 : bool;
  var x_882 : f32;
  var u_xlat39 : vec2f;
  var u_xlat24 : vec3f;
  var u_xlat9 : vec4f;
  var u_xlatb24 : vec3<bool>;
  var x_1030 : f32;
  var x_1042 : vec3f;
  var u_xlat10 : vec3f;
  var u_xlatu7 : vec2u;
  var u_xlatu41 : vec2u;
  var u_xlati7 : i32;
  var x_1176 : f32;
  var u_xlatu0 : u32;
  var u_xlatu3 : vec4u;
  var u_xlati20 : i32;
  var u_xlatu20 : vec2u;
  var u_xlati24 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati42 : vec2i;
  var u_xlati0 : i32;
  var u_xlatu24 : vec3u;
  var u_xlatb8 : vec3<bool>;
  var u_xlatu11 : vec4u;
  var u_xlati45 : i32;
  var u_xlatu62 : u32;
  var u_xlat12 : vec4f;
  var u_xlatu58 : u32;
  var u_xlati59 : i32;
  var u_xlatu60 : u32;
  var u_xlatb61 : bool;
  var u_xlatu63 : u32;
  var u_xlatb63 : bool;
  var u_xlatu61 : u32;
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
  var u_xlati48 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati63 : i32;
  var u_xlati30 : i32;
  var u_xlati61 : i32;
  var u_xlatb58 : bool;
  var u_xlati58 : i32;
  var u_xlat58 : f32;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat61 : f32;
  var u_xlat63 : f32;
  var x_1751 : f32;
  var x_1765 : f32;
  var x_1779 : f32;
  var u_xlat30 : vec3f;
  var x_1833 : vec3f;
  var u_xlat64 : f32;
  var u_xlatb31 : vec2<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_1891 : f32;
  var x_1904 : f32;
  var u_xlat47 : vec2f;
  var u_xlatu47 : vec2u;
  var u_xlati47 : i32;
  var x_2258 : vec3f;
  var u_xlatb5 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatb56 : bool;
  var u_xlati56 : i32;
  var x_2408 : i32;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4f;
  var x_2474 : f32;
  var x_2484 : f32;
  var txVec1 : vec3f;
  var u_xlatb45 : vec2<bool>;
  var u_xlat45 : vec2f;
  var x_2893 : f32;
  var x_2906 : f32;
  var x_2964 : f32;
  var x_2976 : vec3f;
  var x_3123 : vec3f;
  var u_xlati3 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati39 : vec2i;
  var u_xlati9 : vec2i;
  var u_xlati53 : i32;
  var u_xlatu9 : vec2u;
  var u_xlatu43 : vec2u;
  var u_xlatu53 : u32;
  var u_xlatu56 : u32;
  var u_xlatu39 : u32;
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
  var u_xlati46 : vec2i;
  var u_xlatb13 : vec4<bool>;
  var u_xlat59 : f32;
  var x_3709 : f32;
  var x_3718 : f32;
  var txVec2 : vec3f;
  var u_xlatb59 : bool;
  var x_3818 : f32;
  var u_xlat15 : vec3f;
  var u_xlatb47 : vec2<bool>;
  var x_4087 : f32;
  var x_4100 : f32;
  var x_4146 : f32;
  var x_4157 : vec3f;
  var x_4321 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(x_77.x_FillPlane.xyz, vs_TEXCOORD0);
  u_xlat0.x = (u_xlat0.x + -(x_77.x_FillPlane.w));
  u_xlatb17 = (-(u_xlat0.x) < 0.0f);
  if (((select(0i, 1i, u_xlatb17) * -1i) != 0i)) {
    discard;
  }
  u_xlat17.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat17.x = inverseSqrt(u_xlat17.x);
  u_xlat17 = (u_xlat17.xxx * vs_TEXCOORD1);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_135 = u_xlat17;
  } else {
    x_135 = x_77.x_FillPlane.xyz;
  }
  u_xlat1 = vec4f(x_135.xyz, u_xlat1.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_149 = x_77.x_BaseColor.xyz;
  } else {
    x_149 = x_77.x_TopColor.xyz;
  }
  u_xlat17 = x_149;
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
    u_xlat19.x = (x_77.x_BubbleSpeed * x_77.x_BubbleTime);
    u_xlat19 = ((-(x_77.x_FillPlane.xyz) * u_xlat19.xxx) + vs_TEXCOORD0);
    let x_223 = vec3f(x_77.x_BubbleScale, x_77.x_BubbleScale, x_77.x_BubbleScale);
    u_xlat19 = (u_xlat19 * vec3f(x_223.x, x_223.y, x_223.z));
    u_xlat3 = floor(u_xlat19.yxzy);
    u_xlat19 = fract(u_xlat19);
    u_xlat4 = vec3f((((u_xlat3.ww * vec2f(17.3099994659423828125f)) + u_xlat3.yz)).xy, u_xlat4.z);
    u_xlat4 = vec3f(((u_xlat4.xy * x_250)).xy, u_xlat4.z);
    u_xlat4 = vec3f(fract(u_xlat4.xy).xy, u_xlat4.z);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat38 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec3f(((vec2f(u_xlat38) + u_xlat4.xy)).xy, u_xlat4.z);
    u_xlat21.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat21.x);
    u_xlat5 = (u_xlat3 + vec4f(7.09999990463256835938f, 7.09999990463256835938f, 3.70000004768371582031f, 3.70000004768371582031f));
    u_xlat5 = (u_xlat5 * vec4f(0.10310000181198120117f));
    u_xlat5 = fract(u_xlat5);
    u_xlat6 = (u_xlat5 + vec4f(33.3300018310546875f));
    u_xlat3.x = dot(u_xlat5.yxy, u_xlat6.xyy);
    u_xlat21 = vec3f(((u_xlat3.xx + u_xlat5.yx)).xy, u_xlat21.z);
    u_xlat3.x = (u_xlat21.y + u_xlat21.x);
    u_xlat3.x = (u_xlat21.x * u_xlat3.x);
    u_xlat7.x = fract(u_xlat3.x);
    u_xlat3.x = dot(u_xlat5.wzw, u_xlat6.zww);
    u_xlat21 = vec3f(((u_xlat3.xx + u_xlat5.wz)).xy, u_xlat21.z);
    u_xlat3.x = (u_xlat21.y + u_xlat21.x);
    u_xlat3.x = (u_xlat21.x * u_xlat3.x);
    u_xlat7.y = fract(u_xlat3.x);
    u_xlat21 = vec3f(((u_xlat3.zy + vec2f(5.30000019073486328125f))).xy, u_xlat21.z);
    u_xlat4 = vec3f(u_xlat4.x, ((u_xlat21.xy * x_250)).xy);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.zyy + x_263)).xyz, u_xlat5.w);
    u_xlat3.x = dot(u_xlat4.yzy, u_xlat5.xyz);
    u_xlat21 = vec3f(((u_xlat3.xx + u_xlat4.yz)).xy, u_xlat21.z);
    u_xlat3.x = (u_xlat21.y + u_xlat21.x);
    u_xlat3.x = (u_xlat21.x * u_xlat3.x);
    u_xlat7.z = fract(u_xlat3.x);
    u_xlat21 = ((u_xlat7.xyz * vec3f(0.5f)) + vec3f(0.25f));
    u_xlat3 = vec4f(((u_xlat3.ww + u_xlat3.yz)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + vec2f(1.29999995231628417969f))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_250)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat37 = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((vec2f(u_xlat37) + u_xlat3.xy)).xy, u_xlat3.zw);
    u_xlat20.x = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat20.x);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat3.x = ((u_xlat3.x * 0.1799999922513961792f) + 0.20000000298023223877f);
    u_xlat19 = (u_xlat19 + -(u_xlat21));
    u_xlat19.x = dot(u_xlat19, u_xlat19);
    u_xlat19.x = sqrt(u_xlat19.x);
    u_xlatb36 = (u_xlat4.x < 0.25999999046325683594f);
    u_xlat53 = (u_xlat3.x * -0.30000001192092895508f);
    u_xlat19.x = (-(u_xlat3.x) + u_xlat19.x);
    u_xlat53 = (1.0f / u_xlat53);
    u_xlat19.x = (u_xlat53 * u_xlat19.x);
    u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
    u_xlat53 = ((u_xlat19.x * -2.0f) + 3.0f);
    u_xlat19.x = (u_xlat19.x * u_xlat19.x);
    u_xlat19.x = (u_xlat19.x * u_xlat53);
    if (u_xlatb36) {
      x_548 = u_xlat19.x;
    } else {
      x_548 = 0.0f;
    }
    u_xlat19.x = x_548;
    u_xlat19.x = (u_xlat19.x * x_77.x_Glug);
    u_xlat2.x = (u_xlat2.x * u_xlat19.x);
    u_xlat0.x = (u_xlat0.x * -150.0f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat2 = (-(u_xlat17) + x_77.x_BubbleColor.xyz);
    u_xlat17 = ((u_xlat0.xxx * u_xlat2) + u_xlat17);
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
  u_xlat53 = dot(u_xlat2, u_xlat2);
  u_xlat53 = inverseSqrt(u_xlat53);
  u_xlat4 = (vec3f(u_xlat53) * u_xlat2);
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_651.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_651.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_651.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_651.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat5.w);
  u_xlat1.w = 1.0f;
  u_xlat6.x = dot(x_697.unity_SHAr, u_xlat1);
  u_xlat6.y = dot(x_697.unity_SHAg, u_xlat1);
  u_xlat6.z = dot(x_697.unity_SHAb, u_xlat1);
  u_xlat7 = (u_xlat1.yzzx * u_xlat1.xyzz);
  u_xlat8.x = dot(x_697.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_697.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_697.unity_SHBb, u_xlat7);
  u_xlat52 = (u_xlat1.y * u_xlat1.y);
  u_xlat52 = ((u_xlat1.x * u_xlat1.x) + -(u_xlat52));
  u_xlat7 = vec4f((((x_697.unity_SHC.xyz * vec3f(u_xlat52)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_776 = x_601.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((vec2f(1.0f) / vec2f(x_776.x, x_776.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat52 = ((u_xlat7.y * x_601.x_ScaleBiasRt.x) + x_601.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat52) + 1.0f);
  u_xlat17 = (u_xlat17 * vec3f(0.95999997854232788086f));
  u_xlat52 = (-(x_77.x_Smoothness) + 1.0f);
  u_xlat54 = (u_xlat52 * u_xlat52);
  u_xlat54 = max(u_xlat54, 0.0078125f);
  u_xlat55 = (u_xlat54 * u_xlat54);
  u_xlat56 = (x_77.x_Smoothness + 0.04000002145767211914f);
  u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
  u_xlat57 = ((u_xlat54 * 4.0f) + 2.0f);
  let x_837 = u_xlat5.xy;
  txVec0 = vec3f(x_837.x, x_837.y, u_xlat5.z);
  u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat22 = (-(x_651.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat5.x * x_651.x_MainLightShadowParams.x) + u_xlat22);
  u_xlatb22 = (0.0f >= u_xlat5.z);
  u_xlatb39 = (u_xlat5.z >= 1.0f);
  u_xlatb22 = (u_xlatb39 | u_xlatb22);
  if (u_xlatb22) {
    x_882 = 1.0f;
  } else {
    x_882 = u_xlat5.x;
  }
  u_xlat5.x = x_882;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_601.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat22 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat39.x = ((u_xlat22 * x_651.x_MainLightShadowParams.z) + x_651.x_MainLightShadowParams.w);
  u_xlat39.x = clamp(u_xlat39.x, 0.0f, 1.0f);
  u_xlat24.x = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat39.x * u_xlat24.x) + u_xlat5.x);
  u_xlatb39 = !((x_937.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb39) {
    let x_950 = (vs_TEXCOORD0.yy * x_937.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy);
    u_xlat24 = vec3f(x_950.x, u_xlat24.y, x_950.y);
    let x_961 = ((x_937.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD0.xx) + u_xlat24.xz);
    u_xlat24 = vec3f(x_961.x, u_xlat24.y, x_961.y);
    let x_972 = ((x_937.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD0.zz) + u_xlat24.xz);
    u_xlat24 = vec3f(x_972.x, u_xlat24.y, x_972.y);
    let x_980 = (u_xlat24.xz + x_937.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy);
    u_xlat24 = vec3f(x_980.x, u_xlat24.y, x_980.y);
    let x_987 = ((u_xlat24.xz * x_985) + x_985);
    u_xlat24 = vec3f(x_987.x, u_xlat24.y, x_987.y);
    let x_999 = u_xlat24;
    let x_1002 = x_601.x_GlobalMipBias.x;
    let x_1003 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_999.xz, x_1002);
    u_xlat9 = x_1003;
    let x_1015 = vec4f(x_937.x_MainLightCookieTextureFormat, x_937.x_MainLightCookieTextureFormat, x_937.x_MainLightCookieTextureFormat, x_937.x_MainLightCookieTextureFormat);
    let x_1025 = ((vec4f(x_1015.x, x_1015.y, x_1015.z, x_1015.w) == vec4f(0.0f, 0.0f, 1.0f, 1.0f))).xz;
    u_xlatb24 = vec3<bool>(x_1025.x, u_xlatb24.y, x_1025.y);
    if (u_xlatb24.z) {
      x_1030 = u_xlat9.w;
    } else {
      x_1030 = u_xlat9.x;
    }
    u_xlat39.x = x_1030;
    if (u_xlatb24.x) {
      x_1042 = u_xlat9.xyz;
    } else {
      x_1042 = u_xlat39.xxx;
    }
    u_xlat9 = vec4f(x_1042.xyz, u_xlat9.w);
  } else {
    u_xlat9.x = 1.0f;
    u_xlat9.y = 1.0f;
    u_xlat9.z = 1.0f;
  }
  u_xlat9 = vec4f(((u_xlat9.xyz * x_601.x_MainLightColor.xyz)).xyz, u_xlat9.w);
  u_xlat39.x = dot(-(u_xlat4), u_xlat1.xyz);
  u_xlat39.x = (u_xlat39.x + u_xlat39.x);
  u_xlat10 = ((u_xlat1.xyz * -(u_xlat39.xxx)) + -(u_xlat4));
  u_xlat39.x = dot(u_xlat1.xyz, u_xlat4);
  u_xlat39.x = clamp(u_xlat39.x, 0.0f, 1.0f);
  u_xlat39.x = (-(u_xlat39.x) + 1.0f);
  u_xlat39.x = (u_xlat39.x * u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * u_xlat39.x);
  u_xlat24.x = ((-(u_xlat52) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat52 = (u_xlat52 * u_xlat24.x);
  u_xlat52 = (u_xlat52 * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_601.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu41 = vec2u(x_601.x_FPParams1.zw);
  u_xlati7 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu41.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu7.x = (u_xlatu41.y * bitcast<u32>(u_xlati7));
  u_xlat3.x = dot(-(u_xlat3.xyz), u_xlat8.xyz);
  u_xlat20.x = log2(u_xlat3.x);
  if (u_xlatb0) {
    x_1176 = u_xlat20.x;
  } else {
    x_1176 = u_xlat3.x;
  }
  u_xlat0.x = x_1176;
  u_xlat0.x = ((u_xlat0.x * x_601.x_FPParams0.x) + x_601.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu3.x = u32(x_601.x_FPParams2.x);
  u_xlatu3.x = (u_xlatu3.x + 4294967295u);
  u_xlati20 = (bitcast<i32>(u_xlatu41.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu3.x);
  u_xlatu3.x = (bitcast<u32>(u_xlati20) * u_xlatu0);
  u_xlatu20 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati20))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu20.x >> 2u);
  param = bitcast<i32>(u_xlatu20.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_1245 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu20.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_1252 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati24 = vec3i(vec2i(x_1245, x_1252).xy, u_xlati24.z);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati24.xx) & bitcast<vec2u>(x_1266.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_1277 = ~(u_xlati24.xy);
  u_xlati24 = vec3i(x_1277.x, u_xlati24.y, x_1277.y);
  u_xlati42 = bitcast<vec2i>((bitcast<vec2u>(u_xlati24.xx) & bitcast<vec2u>(x_1266.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati42) | bitcast<vec2u>(u_xlati8)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati24.y) & bitcast<u32>(u_xlati8.x)));
  u_xlati20 = bitcast<i32>((bitcast<u32>(u_xlati24.z) & bitcast<u32>(u_xlati8.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati20));
  u_xlatu24 = vec3u(vec2u(x_601.x_FPParams0.zw).xy, u_xlatu24.z);
  u_xlatb8 = ((vec4f() < u_xlat10.xyzx)).xyz;
  u_xlatu11.x = u_xlatu7.x;
  u_xlatu11.y = u_xlatu20.y;
  u_xlati45 = 0i;
  u_xlatu62 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat20.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu58 = (u_xlatu62 >> 16u);
    u_xlati59 = u_xlati45;
    u_xlatu60 = u_xlatu62;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb61 = (u_xlati59 == 0i);
      u_xlatu63 = (u_xlatu60 & 65535u);
      u_xlatb63 = (u_xlatu58 >= u_xlatu63);
      u_xlatb61 = (u_xlatb61 & u_xlatb63);
      if (!(u_xlatb61)) {
        break;
      }
      param_6 = u_xlatu60;
      param_7 = 5i;
      param_8 = 11i;
      let x_1393 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu61 = x_1393;
      u_xlatu13 = (vec4u(u_xlatu61) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> x_1403);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_1414 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_1421 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_1428 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_1435 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_1414, x_1421, x_1428, x_1435);
      u_xlati48 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_1444.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_1444.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_1476 = bitcast<vec2i>((bitcast<vec2u>(u_xlati48) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_1476.x, u_xlati14.y, x_1476.y);
      u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati63) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_1266.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_1266.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati30 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati30) | bitcast<u32>(u_xlati13.x)));
      u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati63) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu60) & 31i)));
      u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati63) & bitcast<u32>(u_xlati13.x)));
      u_xlati61 = (bitcast<i32>(u_xlatu61) << bitcast<u32>(5i));
      u_xlatu61 = (u_xlatu58 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati61)))));
      u_xlatu61 = min(u_xlatu61, 31u);
      u_xlatu61 = (bitcast<u32>(-(bitcast<i32>(u_xlatu61))) + 31u);
      u_xlatu61 = (4294967295u >> (u_xlatu61 & 31u));
      u_xlati59 = bitcast<i32>((u_xlatu61 & bitcast<u32>(u_xlati63)));
      u_xlati61 = (bitcast<i32>(u_xlatu60) + 32i);
      u_xlatu60 = (bitcast<u32>(u_xlati61) & 4294967264u);
    }
    u_xlatu62 = u_xlatu60;
    u_xlatb58 = (u_xlati59 != 0i);
    u_xlatb61 = (u_xlat20.x < 0.99000000953674316406f);
    u_xlatb58 = (u_xlatb58 & u_xlatb61);
    if (!(u_xlatb58)) {
      break;
    }
    u_xlati58 = (0i - u_xlati59);
    u_xlatu58 = (bitcast<u32>(u_xlati58) & bitcast<u32>(u_xlati59));
    u_xlat58 = f32(u_xlatu58);
    u_xlatu58 = (bitcast<u32>(u_xlat58) >> 23u);
    u_xlati58 = (bitcast<i32>(u_xlatu58) + -127i);
    u_xlati61 = (1i << bitcast<u32>((u_xlati58 & 31i)));
    u_xlati45 = bitcast<i32>((bitcast<u32>(u_xlati59) ^ bitcast<u32>(u_xlati61)));
    u_xlati61 = (bitcast<i32>(u_xlatu62) + -32i);
    u_xlati61 = bitcast<i32>((bitcast<u32>(u_xlati61) & 65504u));
    u_xlati58 = (u_xlati58 + u_xlati61);
    u_xlati58 = (-(bitcast<i32>(u_xlatu24.x)) + u_xlati58);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_1690.urp_ReflProbes_BoxMin[u_xlati58].xyz))).xyz, u_xlat13.w);
    u_xlat14 = vec4f(((-(vs_TEXCOORD0) + x_1690.urp_ReflProbes_BoxMax[u_xlati58].xyz)).xyz, u_xlat14.w);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14.xyz).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_1690.urp_ReflProbes_BoxMax[u_xlati58].www)).xyz, u_xlat13.w);
    u_xlat61 = min(u_xlat13.z, u_xlat13.y);
    u_xlat61 = min(u_xlat61, u_xlat13.x);
    u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
    u_xlat63 = (-(u_xlat20.x) + 1.0f);
    u_xlat61 = min(u_xlat61, u_xlat63);
    u_xlatb63 = (0.0f < x_1690.urp_ReflProbes_ProbePosition[u_xlati58].w);
    if (u_xlatb8.x) {
      x_1751 = x_1690.urp_ReflProbes_BoxMax[u_xlati58].x;
    } else {
      x_1751 = x_1690.urp_ReflProbes_BoxMin[u_xlati58].x;
    }
    u_xlat13.x = x_1751;
    if (u_xlatb8.y) {
      x_1765 = x_1690.urp_ReflProbes_BoxMax[u_xlati58].y;
    } else {
      x_1765 = x_1690.urp_ReflProbes_BoxMin[u_xlati58].y;
    }
    u_xlat13.y = x_1765;
    if (u_xlatb8.z) {
      x_1779 = x_1690.urp_ReflProbes_BoxMax[u_xlati58].z;
    } else {
      x_1779 = x_1690.urp_ReflProbes_BoxMin[u_xlati58].z;
    }
    u_xlat13.z = x_1779;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat10)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat30 = (vs_TEXCOORD0 + -(x_1690.urp_ReflProbes_ProbePosition[u_xlati58].xyz));
    u_xlat13 = vec4f((((u_xlat10 * u_xlat13.xxx) + u_xlat30)).xyz, u_xlat13.w);
    if (u_xlatb63) {
      x_1833 = u_xlat13.xyz;
    } else {
      x_1833 = u_xlat10;
    }
    u_xlat13 = vec4f(x_1833.xyz, u_xlat13.w);
    u_xlatu63 = u32(abs(x_1690.urp_ReflProbes_ProbePosition[u_xlati58].w));
    u_xlatu63 = (u_xlatu63 + 4294967295u);
    u_xlat63 = f32(u_xlatu63);
    u_xlat63 = min(u_xlat52, u_xlat63);
    u_xlat64 = dot(abs(u_xlat13.xyz), x_1859);
    u_xlat64 = max(u_xlat64, 0.00000099999999747524f);
    u_xlat64 = (1.0f / u_xlat64);
    u_xlat14 = vec4f(((vec3f(u_xlat64) * u_xlat13.zxy)).xyz, u_xlat14.w);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb31 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb31.x) {
      x_1891 = u_xlat14.x;
    } else {
      x_1891 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_1891;
    if (u_xlatb31.y) {
      x_1904 = u_xlat14.x;
    } else {
      x_1904 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_1904;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat64)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_985) + x_985)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat47.x = floor(u_xlat63);
    u_xlat47.y = (u_xlat47.x + 1.0f);
    u_xlat63 = (u_xlat63 + -(u_xlat47.x));
    u_xlatu47 = vec2u(u_xlat47);
    u_xlati47 = ((u_xlati58 * 7i) + bitcast<i32>(u_xlatu47.x));
    u_xlati58 = ((u_xlati58 * 7i) + bitcast<i32>(u_xlatu47.y));
    u_xlat47 = ((u_xlat13.xy * x_1690.urp_ReflProbes_MipScaleOffset[u_xlati47].xy) + x_1690.urp_ReflProbes_MipScaleOffset[u_xlati47].zw);
    u_xlat14 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat47, 0.0f).xyz.xyz, u_xlat14.w);
    u_xlat13 = vec4f((((u_xlat13.xy * x_1690.urp_ReflProbes_MipScaleOffset[u_xlati58].xy) + x_1690.urp_ReflProbes_MipScaleOffset[u_xlati58].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat63) * u_xlat13.xyz) + u_xlat14.xyz)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((vec3f(u_xlat61) * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat20.x = (u_xlat20.x + u_xlat61);
  }
  u_xlatb0 = (u_xlat20.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10, u_xlat52);
    u_xlat0.x = (-(u_xlat20.x) + 1.0f);
    u_xlat52 = (u_xlat8.w + -1.0f);
    u_xlat52 = ((x_601.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat52) + 1.0f);
    u_xlat52 = max(u_xlat52, 0.0f);
    u_xlat52 = log2(u_xlat52);
    u_xlat52 = (u_xlat52 * x_601.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat52 = exp2(u_xlat52);
    u_xlat52 = (u_xlat52 * x_601.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * vec3f(u_xlat52))).xyz, u_xlat8.w);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat8.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  let x_2113 = ((vec2f(u_xlat54) * vec2f(u_xlat54)) + vec2f(-1.0f, 1.0f));
  u_xlat20 = vec3f(x_2113.x, u_xlat20.y, x_2113.y);
  u_xlat0.x = (1.0f / u_xlat20.z);
  u_xlat52 = (u_xlat56 + -0.03999999910593032837f);
  u_xlat52 = ((u_xlat39.x * u_xlat52) + 0.03999999910593032837f);
  u_xlat0.x = (u_xlat0.x * u_xlat52);
  u_xlat8 = vec4f(((u_xlat0.xxx * u_xlat12.xyz)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat17) + u_xlat8.xyz)).xyz, u_xlat6.w);
  u_xlati0 = bitcast<i32>((x_601.x_MainLightLayerMask & bitcast<u32>(x_697.unity_RenderingLayer.x)));
  u_xlat52 = dot(u_xlat1.xyz, x_601.x_MainLightPosition.xyz);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat52 = (u_xlat52 * u_xlat5.x);
  let x_2174 = (vec3f(u_xlat52) * u_xlat9.xyz);
  u_xlat5 = vec4f(x_2174.x, u_xlat5.y, x_2174.yz);
  u_xlat2 = ((u_xlat2 * vec3f(u_xlat53)) + x_601.x_MainLightPosition.xyz);
  u_xlat52 = dot(u_xlat2, u_xlat2);
  u_xlat52 = max(u_xlat52, 1.17549435e-38f);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat2 = (vec3f(u_xlat52) * u_xlat2);
  u_xlat52 = dot(u_xlat1.xyz, u_xlat2);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat2.x = dot(x_601.x_MainLightPosition.xyz, u_xlat2);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat52 = (u_xlat52 * u_xlat52);
  u_xlat52 = ((u_xlat52 * u_xlat20.x) + 1.00001001358032226562f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat52 = (u_xlat52 * u_xlat52);
  u_xlat2.x = max(u_xlat2.x, 0.10000000149011611938f);
  u_xlat52 = (u_xlat52 * u_xlat2.x);
  u_xlat52 = (u_xlat57 * u_xlat52);
  u_xlat52 = (u_xlat55 / u_xlat52);
  u_xlat2 = ((vec3f(u_xlat52) * x_2248) + u_xlat17);
  u_xlat2 = (u_xlat5.xzw * u_xlat2);
  if ((u_xlati0 != 0i)) {
    x_2258 = u_xlat2;
  } else {
    x_2258 = vec3f();
  }
  u_xlat2 = x_2258;
  u_xlatu0 = min(u_xlatu24.y, 32u);
  u_xlat52 = ((u_xlat22 * x_651.x_AdditionalShadowFadeParams.x) + x_651.x_AdditionalShadowFadeParams.y);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  let x_2286 = vec4f(x_937.x_AdditionalLightsCookieAtlasTextureFormat, x_937.x_AdditionalLightsCookieAtlasTextureFormat, x_937.x_AdditionalLightsCookieAtlasTextureFormat, x_937.x_AdditionalLightsCookieAtlasTextureFormat);
  u_xlatb5 = ((vec4f(x_2286.x, x_2286.y, x_2286.z, x_2286.w) == vec4f(0.0f, 1.0f, 0.0f, 0.0f))).xy;
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu0)) {
    } else {
      break;
    }
    u_xlat9 = vec4f((((-(vs_TEXCOORD0) * x_2317.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_2317.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat9.w);
    u_xlat54 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat54 = max(u_xlat54, 0.00006103515625f);
    u_xlat39.x = inverseSqrt(u_xlat54);
    u_xlat10 = (u_xlat39.xxx * u_xlat9.xyz);
    u_xlat56 = (1.0f / u_xlat54);
    u_xlat54 = (u_xlat54 * x_2317.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat54 = ((-(u_xlat54) * u_xlat54) + 1.0f);
    u_xlat54 = max(u_xlat54, 0.0f);
    u_xlat54 = (u_xlat54 * u_xlat54);
    u_xlat54 = (u_xlat54 * u_xlat56);
    u_xlat56 = dot(x_2317.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat10);
    u_xlat56 = ((u_xlat56 * x_2317.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_2317.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
    u_xlat56 = (u_xlat56 * u_xlat56);
    u_xlat54 = (u_xlat54 * u_xlat56);
    u_xlatb56 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati24.x = i32(x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    if (u_xlatb56) {
      x_2408 = -1i;
    } else {
      x_2408 = u_xlati24.x;
    }
    u_xlati56 = x_2408;
    u_xlatb24.x = (u_xlati56 >= 0i);
    if (u_xlatb24.x) {
      u_xlatb24.x = any(!((vec4f() == vec4f(x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb24.x) {
        u_xlatb11 = vec4<bool>(((abs(u_xlat10.zzyz) >= abs(u_xlat10.xyxx))).xyz.xyz, u_xlatb11.w);
        u_xlatb24.x = (u_xlatb11.y & u_xlatb11.x);
        let x_2456 = ((-(u_xlat10.zyzx) < vec4f())).xyw;
        u_xlatb11 = vec4<bool>(x_2456.xy, u_xlatb11.z, x_2456.z);
        u_xlat11.x = select(4.0f, 5.0f, u_xlatb11.x);
        u_xlat11.y = select(2.0f, 3.0f, u_xlatb11.y);
        u_xlat58 = select(0.0f, 1.0f, u_xlatb11.w);
        if (u_xlatb11.z) {
          x_2474 = u_xlat11.y;
        } else {
          x_2474 = u_xlat58;
        }
        u_xlat58 = x_2474;
        if (u_xlatb24.x) {
          x_2484 = u_xlat11.x;
        } else {
          x_2484 = u_xlat58;
        }
        u_xlat24.x = x_2484;
        u_xlati24.x = i32(u_xlat24.x);
        u_xlati56 = (u_xlati56 + u_xlati24.x);
      }
      u_xlati56 = (u_xlati56 << bitcast<u32>(2i));
      u_xlat11 = (vs_TEXCOORD0.yyyy * x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati56 + 1i)]);
      u_xlat11 = ((x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati56] * vs_TEXCOORD0.xxxx) + u_xlat11);
      u_xlat11 = ((x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati56 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat11);
      u_xlat11 = (u_xlat11 + x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati56 + 3i)]);
      u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat11.www)).xyz, u_xlat11.w);
      let x_2543 = u_xlat11.xy;
      txVec1 = vec3f(x_2543.x, x_2543.y, u_xlat11.z);
      u_xlat56 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat24.x = (1.0f + -(x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat56 = ((u_xlat56 * x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat24.x);
      u_xlatb24.x = (0.0f >= u_xlat11.z);
      u_xlatb58 = (u_xlat11.z >= 1.0f);
      u_xlatb24.x = (u_xlatb58 | u_xlatb24.x);
      u_xlat56 = select(u_xlat56, 1.0f, u_xlatb24.x);
    } else {
      u_xlat56 = 1.0f;
    }
    u_xlat24.x = (-(u_xlat56) + 1.0f);
    u_xlat56 = ((u_xlat52 * u_xlat24.x) + u_xlat56);
    u_xlati24.x = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati24.x = bitcast<i32>((bitcast<u32>(u_xlati24.x) & bitcast<u32>(x_937.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati24.x != 0i)) {
      u_xlati24.x = i32(x_937.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati58 = select(1i, 0i, (u_xlati24.x != 0i));
      u_xlati59 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati58 != 0i)) {
        u_xlat11 = vec4f(((vs_TEXCOORD0.yyy * x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 1i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati59].xyw * vs_TEXCOORD0.xxx) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 3i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xy / u_xlat11.zz)).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((u_xlat11.xy * x_985) + x_985)).xy, u_xlat11.zw);
        u_xlat11 = vec4f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat11.xy) + x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
      } else {
        u_xlatb24.x = (u_xlati24.x == 1i);
        u_xlati24.x = select(0i, 1i, u_xlatb24.x);
        if ((u_xlati24.x != 0i)) {
          let x_2737 = (vs_TEXCOORD0.yy * x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 1i)].xy);
          u_xlat24 = vec3f(x_2737.x, u_xlat24.y, x_2737.y);
          let x_2749 = ((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati59].xy * vs_TEXCOORD0.xx) + u_xlat24.xz);
          u_xlat24 = vec3f(x_2749.x, u_xlat24.y, x_2749.y);
          let x_2762 = ((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat24.xz);
          u_xlat24 = vec3f(x_2762.x, u_xlat24.y, x_2762.y);
          let x_2772 = (u_xlat24.xz + x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 3i)].xy);
          u_xlat24 = vec3f(x_2772.x, u_xlat24.y, x_2772.y);
          let x_2778 = ((u_xlat24.xz * x_985) + x_985);
          u_xlat24 = vec3f(x_2778.x, u_xlat24.y, x_2778.y);
          let x_2783 = fract(u_xlat24.xz);
          u_xlat24 = vec3f(x_2783.x, u_xlat24.y, x_2783.y);
          u_xlat11 = vec4f((((x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat24.xz) + x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
        } else {
          u_xlat12 = (vs_TEXCOORD0.yyyy * x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 1i)]);
          u_xlat12 = ((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati59] * vs_TEXCOORD0.xxxx) + u_xlat12);
          u_xlat12 = ((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
          u_xlat12 = (u_xlat12 + x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati59 + 3i)]);
          u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
          u_xlat24.x = dot(u_xlat12.xyz, u_xlat12.xyz);
          u_xlat24.x = inverseSqrt(u_xlat24.x);
          u_xlat12 = vec4f(((u_xlat24.xxx * u_xlat12.xyz)).xyz, u_xlat12.w);
          u_xlat24.x = dot(abs(u_xlat12.xyz), x_1859);
          u_xlat24.x = max(u_xlat24.x, 0.00000099999999747524f);
          u_xlat24.x = (1.0f / u_xlat24.x);
          u_xlat13 = vec4f(((u_xlat24.xxx * u_xlat12.zxy)).xyz, u_xlat13.w);
          u_xlat13.x = -(u_xlat13.x);
          u_xlat13.x = clamp(u_xlat13.x, 0.0f, 1.0f);
          u_xlatb45 = ((u_xlat13.yzyz >= vec4f())).xy;
          if (u_xlatb45.x) {
            x_2893 = u_xlat13.x;
          } else {
            x_2893 = -(u_xlat13.x);
          }
          u_xlat45.x = x_2893;
          if (u_xlatb45.y) {
            x_2906 = u_xlat13.x;
          } else {
            x_2906 = -(u_xlat13.x);
          }
          u_xlat45.y = x_2906;
          let x_2923 = ((u_xlat12.xy * u_xlat24.xx) + u_xlat45);
          u_xlat24 = vec3f(x_2923.x, u_xlat24.y, x_2923.y);
          let x_2929 = ((u_xlat24.xz * x_985) + x_985);
          u_xlat24 = vec3f(x_2929.x, u_xlat24.y, x_2929.y);
          let x_2936 = clamp(u_xlat24.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat24 = vec3f(x_2936.x, u_xlat24.y, x_2936.y);
          u_xlat11 = vec4f((((x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat24.xz) + x_937.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
        }
      }
      u_xlat11 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat11.xy, 0.0f);
      if (u_xlatb5.y) {
        x_2964 = u_xlat11.w;
      } else {
        x_2964 = u_xlat11.x;
      }
      u_xlat24.x = x_2964;
      if (u_xlatb5.x) {
        x_2976 = u_xlat11.xyz;
      } else {
        x_2976 = u_xlat24.xxx;
      }
      u_xlat11 = vec4f(x_2976.xyz, u_xlat11.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    u_xlat11 = vec4f(((u_xlat11.xyz * x_2317.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat11.w);
    u_xlati24.x = bitcast<i32>((bitcast<u32>(x_697.unity_RenderingLayer.x) & bitcast<u32>(x_2317.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat54 = (u_xlat54 * u_xlat56);
    u_xlat56 = dot(u_xlat1.xyz, u_xlat10);
    u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
    u_xlat54 = (u_xlat54 * u_xlat56);
    u_xlat11 = vec4f(((vec3f(u_xlat54) * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * u_xlat39.xxx) + u_xlat4)).xyz, u_xlat9.w);
    u_xlat54 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat54 = max(u_xlat54, 1.17549435e-38f);
    u_xlat54 = inverseSqrt(u_xlat54);
    u_xlat9 = vec4f(((vec3f(u_xlat54) * u_xlat9.xyz)).xyz, u_xlat9.w);
    u_xlat54 = dot(u_xlat1.xyz, u_xlat9.xyz);
    u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
    u_xlat39.x = dot(u_xlat10, u_xlat9.xyz);
    u_xlat39.x = clamp(u_xlat39.x, 0.0f, 1.0f);
    u_xlat54 = (u_xlat54 * u_xlat54);
    u_xlat54 = ((u_xlat54 * u_xlat20.x) + 1.00001001358032226562f);
    u_xlat39.x = (u_xlat39.x * u_xlat39.x);
    u_xlat54 = (u_xlat54 * u_xlat54);
    u_xlat39.x = max(u_xlat39.x, 0.10000000149011611938f);
    u_xlat54 = (u_xlat54 * u_xlat39.x);
    u_xlat54 = (u_xlat57 * u_xlat54);
    u_xlat54 = (u_xlat55 / u_xlat54);
    u_xlat9 = vec4f((((vec3f(u_xlat54) * x_2248) + u_xlat17)).xyz, u_xlat9.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * u_xlat11.xyz) + u_xlat8.xyz)).xyz, u_xlat9.w);
    if ((u_xlati24.x != 0i)) {
      x_3123 = u_xlat9.xyz;
    } else {
      x_3123 = u_xlat8.xyz;
    }
    u_xlat8 = vec4f(x_3123.xyz, u_xlat8.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu0 = (u_xlatu3.x >> 2u);
  param_21 = bitcast<i32>(u_xlatu3.x);
  param_22 = 0i;
  param_23 = 1i;
  let x_3146 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu3.x);
  param_25 = 1i;
  param_26 = 1i;
  let x_3153 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  let x_3154 = vec2i(x_3146, x_3153);
  u_xlati3 = vec4i(x_3154.x, u_xlati3.yz, x_3154.y);
  u_xlati39 = bitcast<vec2i>((bitcast<vec2u>(u_xlati3.xx) & bitcast<vec2u>(x_1266.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_3171 = ~(u_xlati3.xw);
  u_xlati24 = vec3i(x_3171.x, u_xlati24.y, x_3171.y);
  u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati24.xx) & bitcast<vec2u>(x_1266.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati39 = bitcast<vec2i>((bitcast<vec2u>(u_xlati39) | bitcast<vec2u>(u_xlati9)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati3.w) & bitcast<u32>(u_xlati39.x)));
  u_xlati53 = bitcast<i32>((bitcast<u32>(u_xlati24.z) & bitcast<u32>(u_xlati39.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati53));
  u_xlatu9.x = u_xlatu7.x;
  u_xlatu9.y = u_xlatu20.y;
  u_xlatu43.x = 0u;
  u_xlatu43.y = u_xlatu0;
  u_xlat10 = u_xlat8.xyz;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu53 = (u_xlatu43.y >> 16u);
    u_xlatu3 = vec4u(u_xlatu43.x, u_xlatu3.yz, u_xlatu43.y);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb39 = (bitcast<i32>(u_xlatu3.x) == 0i);
      u_xlatu56 = (u_xlatu3.w & 65535u);
      u_xlatb56 = (u_xlatu53 >= u_xlatu56);
      u_xlatb39 = (u_xlatb56 & u_xlatb39);
      if (!(u_xlatb39)) {
        break;
      }
      param_27 = u_xlatu3.w;
      param_28 = 5i;
      param_29 = 11i;
      let x_3269 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu39 = x_3269;
      u_xlatu11 = (vec4u(u_xlatu39) + u_xlatu9.xxyy);
      let x_3277 = (u_xlatu11.yw >> x_1403);
      u_xlatu24 = vec3u(x_3277.x, u_xlatu24.y, x_3277.y);
      param_30 = bitcast<i32>(u_xlatu11.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_3287 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu11.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_3294 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu11.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_3301 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu11.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_3308 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati11 = vec4i(x_3287, x_3294, x_3301, x_3308);
      u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_1444.urp_Tiles[bitcast<i32>(u_xlatu24.x)].wy)));
      u_xlati13 = ~(u_xlati11);
      u_xlati46 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_1444.urp_Tiles[bitcast<i32>(u_xlatu24.x)].zx)));
      u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati46) | bitcast<vec2u>(u_xlati12)));
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati12.x)));
      u_xlati24.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati12.y)));
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati56) | bitcast<u32>(u_xlati24.x)));
      u_xlati11 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_1266.urp_ZBins[bitcast<i32>(u_xlatu24.z)].wy))).xy, u_xlati11.zw);
      let x_3393 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_1266.urp_ZBins[bitcast<i32>(u_xlatu24.z)].zx)));
      u_xlati24 = vec3i(x_3393.x, u_xlati24.y, x_3393.y);
      let x_3403 = bitcast<vec2i>((bitcast<vec2u>(u_xlati24.xz) | bitcast<vec2u>(u_xlati11.xy)));
      u_xlati24 = vec3i(x_3403.x, u_xlati24.y, x_3403.y);
      u_xlati24.x = bitcast<i32>((bitcast<u32>(u_xlati11.w) & bitcast<u32>(u_xlati24.x)));
      u_xlati58 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati24.z)));
      u_xlati24.x = bitcast<i32>((bitcast<u32>(u_xlati58) | bitcast<u32>(u_xlati24.x)));
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati24.x)));
      u_xlati24.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu3.w) & 31i)));
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati24.x)));
      u_xlati39.x = (bitcast<i32>(u_xlatu39) << bitcast<u32>(5i));
      u_xlatu39 = (u_xlatu53 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati39.x)))));
      u_xlatu39 = min(u_xlatu39, 31u);
      u_xlatu39 = (bitcast<u32>(-(bitcast<i32>(u_xlatu39))) + 31u);
      u_xlatu39 = (4294967295u >> (u_xlatu39 & 31u));
      u_xlatu3.x = (u_xlatu39 & bitcast<u32>(u_xlati56));
      u_xlati39.x = (bitcast<i32>(u_xlatu3.w) + 32i);
      u_xlatu3.w = (bitcast<u32>(u_xlati39.x) & 4294967264u);
    }
    u_xlatu43.y = u_xlatu3.w;
    if ((u_xlatu3.x == 0u)) {
      break;
    }
    u_xlati53 = (0i - bitcast<i32>(u_xlatu3.x));
    u_xlatu53 = (bitcast<u32>(u_xlati53) & u_xlatu3.x);
    u_xlat53 = f32(u_xlatu53);
    u_xlatu53 = (bitcast<u32>(u_xlat53) >> 23u);
    u_xlati53 = (bitcast<i32>(u_xlatu53) + -127i);
    u_xlati39.x = (1i << bitcast<u32>((u_xlati53 & 31i)));
    u_xlatu43.x = (u_xlatu3.x ^ bitcast<u32>(u_xlati39.x));
    u_xlati39.x = (bitcast<i32>(u_xlatu43.y) + -32i);
    u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati39.x) & 65504u));
    u_xlati53 = (u_xlati53 + u_xlati39.x);
    u_xlati53 = (bitcast<i32>(u_xlatu24.y) + u_xlati53);
    u_xlat11 = vec4f((((-(vs_TEXCOORD0) * x_2317.x_AdditionalLightsPosition[u_xlati53].www) + x_2317.x_AdditionalLightsPosition[u_xlati53].xyz)).xyz, u_xlat11.w);
    u_xlat39.x = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat39.x = max(u_xlat39.x, 0.00006103515625f);
    u_xlat56 = inverseSqrt(u_xlat39.x);
    u_xlat12 = vec4f(((vec3f(u_xlat56) * u_xlat11.xyz)).xyz, u_xlat12.w);
    u_xlat24.x = (1.0f / u_xlat39.x);
    u_xlat39.x = (u_xlat39.x * x_2317.x_AdditionalLightsAttenuation[u_xlati53].x);
    u_xlat39.x = ((-(u_xlat39.x) * u_xlat39.x) + 1.0f);
    u_xlat39.x = max(u_xlat39.x, 0.0f);
    u_xlat39.x = (u_xlat39.x * u_xlat39.x);
    u_xlat39.x = (u_xlat39.x * u_xlat24.x);
    u_xlat24.x = dot(x_2317.x_AdditionalLightsSpotDir[u_xlati53].xyz, u_xlat12.xyz);
    u_xlat24.x = ((u_xlat24.x * x_2317.x_AdditionalLightsAttenuation[u_xlati53].z) + x_2317.x_AdditionalLightsAttenuation[u_xlati53].w);
    u_xlat24.x = clamp(u_xlat24.x, 0.0f, 1.0f);
    u_xlat24.x = (u_xlat24.x * u_xlat24.x);
    u_xlat39.x = (u_xlat39.x * u_xlat24.x);
    u_xlatb24.x = (u_xlati53 < 0i);
    u_xlati58 = i32(x_651.x_AdditionalShadowParams[u_xlati53].w);
    u_xlati24.x = select(u_xlati58, -1i, u_xlatb24.x);
    u_xlatb58 = (u_xlati24.x >= 0i);
    if (u_xlatb58) {
      u_xlatb58 = any(!((vec4f() == vec4f(x_651.x_AdditionalShadowParams[u_xlati53].z))));
      if (u_xlatb58) {
        u_xlatb13 = vec4<bool>(((abs(u_xlat12.zzyz) >= abs(u_xlat12.xyxx))).xyz.xyz, u_xlatb13.w);
        u_xlatb58 = (u_xlatb13.y & u_xlatb13.x);
        let x_3692 = ((-(u_xlat12.zyzx) < vec4f())).xyw;
        u_xlatb13 = vec4<bool>(x_3692.xy, u_xlatb13.z, x_3692.z);
        u_xlat13.x = select(4.0f, 5.0f, u_xlatb13.x);
        u_xlat13.y = select(2.0f, 3.0f, u_xlatb13.y);
        u_xlat59 = select(0.0f, 1.0f, u_xlatb13.w);
        if (u_xlatb13.z) {
          x_3709 = u_xlat13.y;
        } else {
          x_3709 = u_xlat59;
        }
        u_xlat59 = x_3709;
        if (u_xlatb58) {
          x_3718 = u_xlat13.x;
        } else {
          x_3718 = u_xlat59;
        }
        u_xlat58 = x_3718;
        u_xlati58 = i32(u_xlat58);
        u_xlati24.x = (u_xlati58 + u_xlati24.x);
      }
      u_xlati24.x = (u_xlati24.x << bitcast<u32>(2i));
      u_xlat13 = (vs_TEXCOORD0.yyyy * x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati24.x + 1i)]);
      u_xlat13 = ((x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati24.x] * vs_TEXCOORD0.xxxx) + u_xlat13);
      u_xlat13 = ((x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati24.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat13);
      u_xlat13 = (u_xlat13 + x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati24.x + 3i)]);
      u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
      let x_3780 = u_xlat13.xy;
      txVec2 = vec3f(x_3780.x, x_3780.y, u_xlat13.z);
      u_xlat24.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat58 = (1.0f + -(x_651.x_AdditionalShadowParams[u_xlati53].x));
      u_xlat24.x = ((u_xlat24.x * x_651.x_AdditionalShadowParams[u_xlati53].x) + u_xlat58);
      u_xlatb58 = (0.0f >= u_xlat13.z);
      u_xlatb59 = (u_xlat13.z >= 1.0f);
      u_xlatb58 = (u_xlatb58 | u_xlatb59);
      if (u_xlatb58) {
        x_3818 = 1.0f;
      } else {
        x_3818 = u_xlat24.x;
      }
      u_xlat24.x = x_3818;
    } else {
      u_xlat24.x = 1.0f;
    }
    u_xlat58 = (-(u_xlat24.x) + 1.0f);
    u_xlat24.x = ((u_xlat52 * u_xlat58) + u_xlat24.x);
    u_xlati58 = (1i << bitcast<u32>((u_xlati53 & 31i)));
    u_xlati58 = bitcast<i32>((bitcast<u32>(u_xlati58) & bitcast<u32>(x_937.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati58 != 0i)) {
      u_xlati58 = i32(x_937.x_AdditionalLightsLightTypes[u_xlati53].el);
      u_xlati59 = select(1i, 0i, (u_xlati58 != 0i));
      u_xlati61 = (u_xlati53 << bitcast<u32>(2i));
      if ((u_xlati59 != 0i)) {
        u_xlat13 = vec4f(((vs_TEXCOORD0.yyy * x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 1i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati61].xyw * vs_TEXCOORD0.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 3i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xy / u_xlat13.zz)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((u_xlat13.xy * x_985) + x_985)).xy, u_xlat13.zw);
        u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((x_937.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].xy * u_xlat13.xy) + x_937.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].zw)).xy, u_xlat13.zw);
      } else {
        u_xlatb58 = (u_xlati58 == 1i);
        u_xlati58 = select(0i, 1i, u_xlatb58);
        if ((u_xlati58 != 0i)) {
          u_xlat47 = (vs_TEXCOORD0.yy * x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 1i)].xy);
          u_xlat47 = ((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati61].xy * vs_TEXCOORD0.xx) + u_xlat47);
          u_xlat47 = ((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat47);
          u_xlat47 = (u_xlat47 + x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 3i)].xy);
          u_xlat47 = ((u_xlat47 * x_985) + x_985);
          u_xlat47 = fract(u_xlat47);
          u_xlat13 = vec4f((((x_937.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].xy * u_xlat47) + x_937.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].zw)).xy, u_xlat13.zw);
        } else {
          u_xlat14 = (vs_TEXCOORD0.yyyy * x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 1i)]);
          u_xlat14 = ((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati61] * vs_TEXCOORD0.xxxx) + u_xlat14);
          u_xlat14 = ((x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat14);
          u_xlat14 = (u_xlat14 + x_937.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati61 + 3i)]);
          u_xlat14 = vec4f(((u_xlat14.xyz / u_xlat14.www)).xyz, u_xlat14.w);
          u_xlat58 = dot(u_xlat14.xyz, u_xlat14.xyz);
          u_xlat58 = inverseSqrt(u_xlat58);
          u_xlat14 = vec4f(((vec3f(u_xlat58) * u_xlat14.xyz)).xyz, u_xlat14.w);
          u_xlat58 = dot(abs(u_xlat14.xyz), x_1859);
          u_xlat58 = max(u_xlat58, 0.00000099999999747524f);
          u_xlat58 = (1.0f / u_xlat58);
          u_xlat15 = (vec3f(u_xlat58) * u_xlat14.zxy);
          u_xlat15.x = -(u_xlat15.x);
          u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
          u_xlatb47 = ((u_xlat15.yzyz >= vec4f())).xy;
          if (u_xlatb47.x) {
            x_4087 = u_xlat15.x;
          } else {
            x_4087 = -(u_xlat15.x);
          }
          u_xlat47.x = x_4087;
          if (u_xlatb47.y) {
            x_4100 = u_xlat15.x;
          } else {
            x_4100 = -(u_xlat15.x);
          }
          u_xlat47.y = x_4100;
          u_xlat47 = ((u_xlat14.xy * vec2f(u_xlat58)) + u_xlat47);
          u_xlat47 = ((u_xlat47 * x_985) + x_985);
          u_xlat47 = clamp(u_xlat47, vec2f(0.0f), vec2f(1.0f));
          u_xlat13 = vec4f((((x_937.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].xy * u_xlat47) + x_937.x_AdditionalLightsCookieAtlasUVRects[u_xlati53].zw)).xy, u_xlat13.zw);
        }
      }
      u_xlat13 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat13.xy, 0.0f);
      if (u_xlatb5.y) {
        x_4146 = u_xlat13.w;
      } else {
        x_4146 = u_xlat13.x;
      }
      u_xlat58 = x_4146;
      if (u_xlatb5.x) {
        x_4157 = u_xlat13.xyz;
      } else {
        x_4157 = vec3f(u_xlat58);
      }
      u_xlat13 = vec4f(x_4157.xyz, u_xlat13.w);
    } else {
      u_xlat13.x = 1.0f;
      u_xlat13.y = 1.0f;
      u_xlat13.z = 1.0f;
    }
    u_xlat13 = vec4f(((u_xlat13.xyz * x_2317.x_AdditionalLightsColor[u_xlati53].xyz)).xyz, u_xlat13.w);
    u_xlati53 = bitcast<i32>((bitcast<u32>(x_697.unity_RenderingLayer.x) & bitcast<u32>(x_2317.x_AdditionalLightsLayerMasks[u_xlati53].el)));
    u_xlat39.x = (u_xlat39.x * u_xlat24.x);
    u_xlat24.x = dot(u_xlat1.xyz, u_xlat12.xyz);
    u_xlat24.x = clamp(u_xlat24.x, 0.0f, 1.0f);
    u_xlat39.x = (u_xlat39.x * u_xlat24.x);
    u_xlat13 = vec4f(((u_xlat39.xxx * u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * vec3f(u_xlat56)) + u_xlat4)).xyz, u_xlat11.w);
    u_xlat39.x = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat39.x = max(u_xlat39.x, 1.17549435e-38f);
    u_xlat39.x = inverseSqrt(u_xlat39.x);
    u_xlat11 = vec4f(((u_xlat39.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat39.x = dot(u_xlat1.xyz, u_xlat11.xyz);
    u_xlat39.x = clamp(u_xlat39.x, 0.0f, 1.0f);
    u_xlat39.y = dot(u_xlat12.xyz, u_xlat11.xyz);
    u_xlat39.y = clamp(u_xlat39.y, 0.0f, 1.0f);
    u_xlat39 = (u_xlat39 * u_xlat39);
    u_xlat39.x = ((u_xlat39.x * u_xlat20.x) + 1.00001001358032226562f);
    u_xlat39.x = (u_xlat39.x * u_xlat39.x);
    u_xlat56 = max(u_xlat39.y, 0.10000000149011611938f);
    u_xlat39.x = (u_xlat56 * u_xlat39.x);
    u_xlat39.x = (u_xlat57 * u_xlat39.x);
    u_xlat39.x = (u_xlat55 / u_xlat39.x);
    u_xlat11 = vec4f((((u_xlat39.xxx * x_2248) + u_xlat17)).xyz, u_xlat11.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * u_xlat13.xyz) + u_xlat10)).xyz, u_xlat11.w);
    if ((u_xlati53 != 0i)) {
      x_4321 = u_xlat11.xyz;
    } else {
      x_4321 = u_xlat10;
    }
    u_xlat10 = x_4321;
  }
  u_xlat0 = (u_xlat2 + u_xlat6.xyz);
  SV_Target0 = vec4f(((u_xlat10 + u_xlat0)).xyz, SV_Target0.w);
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

@group(1) @binding(8) var<uniform> x_64 : VGlobals;

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
  x_MainLightPosition : vec4f,
  /* @offset(48) */
  x_MainLightColor : vec4f,
  /* @offset(64) */
  x_MainLightLayerMask : u32,
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

alias Arr_9 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_9,
}

alias Arr_10 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_10,
}

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 32u>;

alias Arr_14 = array<vec4f, 224u>;

alias Arr_15 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_11,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_12,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_13,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_14,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_15,
}

alias Arr_16 = array<vec4f, 32u>;

alias Arr_17 = array<vec4f, 32u>;

alias Arr_18 = array<vec4f, 32u>;

alias Arr_19 = array<vec4f, 32u>;

alias Arr_20 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_21 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_16,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_17,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_18,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_19,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_20,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_21,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(7) var<uniform> x_77 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

@group(1) @binding(0) var<uniform> x_601 : PGlobals;

@group(1) @binding(6) var<uniform> x_650 : LightShadows;

@group(1) @binding(5) var<uniform> x_696 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_2341 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2531 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2777 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(5) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3399 : AdditionalLights;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

const x_772 = vec2f(1.0f);

const x_927 = vec4f(0.25f);

const x_943 = vec2f(0.5f);

const x_966 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_977 = vec2f(0.07999999821186065674f);

const x_1029 = vec2f(0.15999999642372131348f);

const x_1099 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1432 = vec2f(0.04081600159406661987f);

const x_1474 = vec2f(2.0f);

const x_1490 = vec3f(0.08163200318813323975f);

const x_1496 = vec2f(0.08163200318813323975f);

const x_1506 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1509 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1516 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1554 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2490 = vec2u(2u);

const x_3347 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlatb27 : bool;
  var u_xlat27 : vec3f;
  var u_xlat1 : vec4f;
  var x_135 : vec3f;
  var x_149 : vec3f;
  var u_xlatb2 : bool;
  var u_xlati2 : i32;
  var x_168 : i32;
  var u_xlat2 : vec3f;
  var u_xlat29 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat58 : f32;
  var u_xlat31 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat57 : f32;
  var u_xlat30 : vec3f;
  var u_xlatb56 : bool;
  var u_xlat83 : f32;
  var x_548 : f32;
  var u_xlatb0 : bool;
  var x_623 : vec3f;
  var u_xlat8 : vec4f;
  var u_xlat82 : f32;
  var u_xlat84 : f32;
  var u_xlat85 : f32;
  var u_xlat86 : f32;
  var u_xlat87 : f32;
  var u_xlatb34 : bool;
  var txVec0 : vec3f;
  var u_xlat9 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlat34 : f32;
  var u_xlatb88 : bool;
  var u_xlat62 : vec2f;
  var u_xlat10 : vec4f;
  var u_xlat64 : vec2f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat88 : f32;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat35 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat36 : vec3f;
  var u_xlat17 : vec4f;
  var u_xlat18 : vec4f;
  var u_xlat37 : vec2f;
  var u_xlat70 : vec2f;
  var u_xlat65 : vec2f;
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
  var u_xlatb32 : bool;
  var u_xlatb59 : bool;
  var x_2115 : f32;
  var u_xlat32 : f32;
  var u_xlat59 : f32;
  var u_xlatu7 : vec2u;
  var u_xlatu61 : vec2u;
  var u_xlati7 : i32;
  var x_2252 : f32;
  var u_xlatu0 : u32;
  var u_xlatu3 : vec4u;
  var u_xlati30 : i32;
  var u_xlatu30 : vec2u;
  var u_xlati34 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec3i;
  var u_xlati62 : vec2i;
  var u_xlati0 : i32;
  var u_xlatu34 : vec3u;
  var u_xlatb8 : vec3<bool>;
  var u_xlatu10 : vec4u;
  var u_xlati64 : i32;
  var u_xlatu91 : u32;
  var u_xlatu88 : u32;
  var u_xlati89 : i32;
  var u_xlatu90 : u32;
  var u_xlatb92 : bool;
  var u_xlatu12 : vec4u;
  var u_xlatb12 : vec4<bool>;
  var u_xlatu92 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec2u;
  var u_xlati12 : vec4i;
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
  var u_xlati67 : vec2i;
  var u_xlati14 : vec4i;
  var u_xlati15 : vec2i;
  var u_xlati13 : vec3i;
  var u_xlati39 : vec2i;
  var u_xlati66 : i32;
  var u_xlati92 : i32;
  var u_xlati88 : i32;
  var u_xlat92 : f32;
  var u_xlat39 : vec3f;
  var x_2840 : f32;
  var x_2854 : f32;
  var x_2868 : f32;
  var x_2919 : vec3f;
  var u_xlatu93 : u32;
  var u_xlat93 : f32;
  var u_xlat40 : vec3f;
  var u_xlatb67 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_2983 : f32;
  var x_2996 : f32;
  var u_xlat66 : f32;
  var u_xlatu66 : u32;
  var x_3357 : vec3f;
  var u_xlatu_loop_1 : u32;
  var u_xlatb10 : vec4<bool>;
  var u_xlat89 : f32;
  var x_3546 : f32;
  var x_3555 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var u_xlat67 : vec2f;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat90 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat73 : vec2f;
  var u_xlat68 : vec2f;
  var u_xlat22 : vec4f;
  var u_xlat23 : vec4f;
  var u_xlat24 : vec4f;
  var txVec43 : vec3f;
  var txVec44 : vec3f;
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
  var u_xlatb89 : bool;
  var x_4935 : vec3f;
  var u_xlati3 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati83 : i32;
  var u_xlatu8 : vec2u;
  var u_xlatu62 : vec2u;
  var u_xlatu83 : u32;
  var u_xlatb86 : bool;
  var u_xlatu86 : u32;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlati10 : vec4i;
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
  var u_xlati11 : vec2i;
  var u_xlati65 : vec2i;
  var u_xlati90 : i32;
  var u_xlati86 : i32;
  var u_xlatb90 : bool;
  var u_xlat91 : f32;
  var x_5486 : f32;
  var x_5495 : f32;
  var txVec60 : vec3f;
  var txVec61 : vec3f;
  var txVec62 : vec3f;
  var txVec63 : vec3f;
  var u_xlat69 : vec2f;
  var txVec64 : vec3f;
  var txVec65 : vec3f;
  var txVec66 : vec3f;
  var txVec67 : vec3f;
  var txVec68 : vec3f;
  var txVec69 : vec3f;
  var txVec70 : vec3f;
  var txVec71 : vec3f;
  var txVec72 : vec3f;
  var u_xlat41 : vec3f;
  var u_xlat42 : vec2f;
  var u_xlat75 : vec2f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec4f;
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
  var u_xlatb91 : bool;
  var x_6853 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(x_77.x_FillPlane.xyz, vs_TEXCOORD0);
  u_xlat0.x = (u_xlat0.x + -(x_77.x_FillPlane.w));
  u_xlatb27 = (-(u_xlat0.x) < 0.0f);
  if (((select(0i, 1i, u_xlatb27) * -1i) != 0i)) {
    discard;
  }
  u_xlat27.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat27.x = inverseSqrt(u_xlat27.x);
  u_xlat27 = (u_xlat27.xxx * vs_TEXCOORD1);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_135 = u_xlat27;
  } else {
    x_135 = x_77.x_FillPlane.xyz;
  }
  u_xlat1 = vec4f(x_135.xyz, u_xlat1.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_149 = x_77.x_BaseColor.xyz;
  } else {
    x_149 = x_77.x_TopColor.xyz;
  }
  u_xlat27 = x_149;
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
    u_xlat29.x = (x_77.x_BubbleSpeed * x_77.x_BubbleTime);
    u_xlat29 = ((-(x_77.x_FillPlane.xyz) * u_xlat29.xxx) + vs_TEXCOORD0);
    let x_223 = vec3f(x_77.x_BubbleScale, x_77.x_BubbleScale, x_77.x_BubbleScale);
    u_xlat29 = (u_xlat29 * vec3f(x_223.x, x_223.y, x_223.z));
    u_xlat3 = floor(u_xlat29.yxzy);
    u_xlat29 = fract(u_xlat29);
    u_xlat4 = vec3f((((u_xlat3.ww * vec2f(17.3099994659423828125f)) + u_xlat3.yz)).xy, u_xlat4.z);
    u_xlat4 = vec3f(((u_xlat4.xy * x_250)).xy, u_xlat4.z);
    u_xlat4 = vec3f(fract(u_xlat4.xy).xy, u_xlat4.z);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat58 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec3f(((vec2f(u_xlat58) + u_xlat4.xy)).xy, u_xlat4.z);
    u_xlat31.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat31.x);
    u_xlat5 = (u_xlat3 + vec4f(7.09999990463256835938f, 7.09999990463256835938f, 3.70000004768371582031f, 3.70000004768371582031f));
    u_xlat5 = (u_xlat5 * vec4f(0.10310000181198120117f));
    u_xlat5 = fract(u_xlat5);
    u_xlat6 = (u_xlat5 + vec4f(33.3300018310546875f));
    u_xlat3.x = dot(u_xlat5.yxy, u_xlat6.xyy);
    u_xlat31 = vec3f(((u_xlat3.xx + u_xlat5.yx)).xy, u_xlat31.z);
    u_xlat3.x = (u_xlat31.y + u_xlat31.x);
    u_xlat3.x = (u_xlat31.x * u_xlat3.x);
    u_xlat7.x = fract(u_xlat3.x);
    u_xlat3.x = dot(u_xlat5.wzw, u_xlat6.zww);
    u_xlat31 = vec3f(((u_xlat3.xx + u_xlat5.wz)).xy, u_xlat31.z);
    u_xlat3.x = (u_xlat31.y + u_xlat31.x);
    u_xlat3.x = (u_xlat31.x * u_xlat3.x);
    u_xlat7.y = fract(u_xlat3.x);
    u_xlat31 = vec3f(((u_xlat3.zy + vec2f(5.30000019073486328125f))).xy, u_xlat31.z);
    u_xlat4 = vec3f(u_xlat4.x, ((u_xlat31.xy * x_250)).xy);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = vec4f(((u_xlat4.zyy + x_263)).xyz, u_xlat5.w);
    u_xlat3.x = dot(u_xlat4.yzy, u_xlat5.xyz);
    u_xlat31 = vec3f(((u_xlat3.xx + u_xlat4.yz)).xy, u_xlat31.z);
    u_xlat3.x = (u_xlat31.y + u_xlat31.x);
    u_xlat3.x = (u_xlat31.x * u_xlat3.x);
    u_xlat7.z = fract(u_xlat3.x);
    u_xlat31 = ((u_xlat7.xyz * vec3f(0.5f)) + vec3f(0.25f));
    u_xlat3 = vec4f(((u_xlat3.ww + u_xlat3.yz)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + vec2f(1.29999995231628417969f))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_250)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_263)).xyz, u_xlat5.w);
    u_xlat57 = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((vec2f(u_xlat57) + u_xlat3.xy)).xy, u_xlat3.zw);
    u_xlat30.x = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat30.x);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat3.x = ((u_xlat3.x * 0.1799999922513961792f) + 0.20000000298023223877f);
    u_xlat29 = (u_xlat29 + -(u_xlat31));
    u_xlat29.x = dot(u_xlat29, u_xlat29);
    u_xlat29.x = sqrt(u_xlat29.x);
    u_xlatb56 = (u_xlat4.x < 0.25999999046325683594f);
    u_xlat83 = (u_xlat3.x * -0.30000001192092895508f);
    u_xlat29.x = (-(u_xlat3.x) + u_xlat29.x);
    u_xlat83 = (1.0f / u_xlat83);
    u_xlat29.x = (u_xlat83 * u_xlat29.x);
    u_xlat29.x = clamp(u_xlat29.x, 0.0f, 1.0f);
    u_xlat83 = ((u_xlat29.x * -2.0f) + 3.0f);
    u_xlat29.x = (u_xlat29.x * u_xlat29.x);
    u_xlat29.x = (u_xlat29.x * u_xlat83);
    if (u_xlatb56) {
      x_548 = u_xlat29.x;
    } else {
      x_548 = 0.0f;
    }
    u_xlat29.x = x_548;
    u_xlat29.x = (u_xlat29.x * x_77.x_Glug);
    u_xlat2.x = (u_xlat2.x * u_xlat29.x);
    u_xlat0.x = (u_xlat0.x * -150.0f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat2 = (-(u_xlat27) + x_77.x_BubbleColor.xyz);
    u_xlat27 = ((u_xlat0.xxx * u_xlat2) + u_xlat27);
  }
  u_xlatb0 = (x_601.unity_OrthoParams.w == 0.0f);
  u_xlat2 = (-(vs_TEXCOORD0) + x_601.x_WorldSpaceCameraPos);
  u_xlat3.x = x_601.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat3.y = x_601.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat3.z = x_601.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_623 = u_xlat2;
  } else {
    x_623 = u_xlat3.xyz;
  }
  u_xlat2 = x_623;
  u_xlat83 = dot(u_xlat2, u_xlat2);
  u_xlat83 = inverseSqrt(u_xlat83);
  u_xlat4 = (vec3f(u_xlat83) * u_xlat2);
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_650.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_650.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_650.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_650.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat5.w);
  u_xlat1.w = 1.0f;
  u_xlat6.x = dot(x_696.unity_SHAr, u_xlat1);
  u_xlat6.y = dot(x_696.unity_SHAg, u_xlat1);
  u_xlat6.z = dot(x_696.unity_SHAb, u_xlat1);
  u_xlat7 = (u_xlat1.yzzx * u_xlat1.xyzz);
  u_xlat8.x = dot(x_696.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_696.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_696.unity_SHBb, u_xlat7);
  u_xlat82 = (u_xlat1.y * u_xlat1.y);
  u_xlat82 = ((u_xlat1.x * u_xlat1.x) + -(u_xlat82));
  u_xlat7 = vec4f((((x_696.unity_SHC.xyz * vec3f(u_xlat82)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_775 = x_601.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((x_772 / vec2f(x_775.x, x_775.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat82 = ((u_xlat7.y * x_601.x_ScaleBiasRt.x) + x_601.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat82) + 1.0f);
  u_xlat27 = (u_xlat27 * vec3f(0.95999997854232788086f));
  u_xlat82 = (-(x_77.x_Smoothness) + 1.0f);
  u_xlat84 = (u_xlat82 * u_xlat82);
  u_xlat84 = max(u_xlat84, 0.0078125f);
  u_xlat85 = (u_xlat84 * u_xlat84);
  u_xlat86 = (x_77.x_Smoothness + 0.04000002145767211914f);
  u_xlat86 = clamp(u_xlat86, 0.0f, 1.0f);
  u_xlat87 = ((u_xlat84 * 4.0f) + 2.0f);
  u_xlatb34 = (0.0f < x_650.x_MainLightShadowParams.y);
  if (u_xlatb34) {
    u_xlatb34 = (x_650.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb34) {
      u_xlat8 = (u_xlat5.xyxy + x_650.x_MainLightShadowOffset0);
      let x_854 = u_xlat8.xy;
      txVec0 = vec3f(x_854.x, x_854.y, u_xlat5.z);
      u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_877 = u_xlat8.zw;
      txVec1 = vec3f(x_877.x, x_877.y, u_xlat5.z);
      u_xlat9.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat8 = (u_xlat5.xyxy + x_650.x_MainLightShadowOffset1);
      let x_897 = u_xlat8.xy;
      txVec2 = vec3f(x_897.x, x_897.y, u_xlat5.z);
      u_xlat9.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_912 = u_xlat8.zw;
      txVec3 = vec3f(x_912.x, x_912.y, u_xlat5.z);
      u_xlat9.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat34 = dot(u_xlat9, x_927);
    } else {
      u_xlatb88 = (x_650.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb88) {
        u_xlat8 = vec4f((((u_xlat5.xy * x_650.x_MainLightShadowmapSize.zw) + x_943)).xy, u_xlat8.zw);
        u_xlat8 = vec4f(floor(u_xlat8.xy).xy, u_xlat8.zw);
        u_xlat62 = ((u_xlat5.xy * x_650.x_MainLightShadowmapSize.zw) + -(u_xlat8.xy));
        u_xlat9 = (u_xlat62.xxyy + x_966);
        u_xlat10 = (u_xlat9.xxzz * u_xlat9.xxzz);
        let x_978 = (u_xlat10.yw * x_977);
        u_xlat9 = vec4f(x_978.x, u_xlat9.y, x_978.y, u_xlat9.w);
        u_xlat10 = vec4f((((u_xlat10.xz * x_943) + -(u_xlat62))).xy, u_xlat10.zw);
        u_xlat64 = (-(u_xlat62) + x_772);
        u_xlat11 = vec4f(min(u_xlat62, vec2f()).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat64)).xy, u_xlat11.zw);
        u_xlat62 = max(u_xlat62, vec2f());
        u_xlat62 = ((-(u_xlat62) * u_xlat62) + u_xlat9.yw);
        u_xlat11 = vec4f(((u_xlat11.xy + x_772)).xy, u_xlat11.zw);
        u_xlat62 = (u_xlat62 + x_772);
        u_xlat12 = vec4f(((u_xlat10.xy * x_1029)).xy, u_xlat12.zw);
        u_xlat10 = vec4f(((u_xlat64 * x_1029)).xy, u_xlat10.zw);
        u_xlat11 = vec4f(((u_xlat11.xy * x_1029)).xy, u_xlat11.zw);
        u_xlat13 = vec4f(((u_xlat62 * x_1029)).xy, u_xlat13.zw);
        u_xlat62 = (u_xlat9.yw * x_1029);
        u_xlat12.z = u_xlat11.x;
        u_xlat12.w = u_xlat62.x;
        u_xlat10.z = u_xlat13.x;
        u_xlat10.w = u_xlat9.x;
        u_xlat14 = (u_xlat10.zwxz + u_xlat12.zwxz);
        u_xlat11.z = u_xlat12.y;
        u_xlat11.w = u_xlat62.y;
        u_xlat13.z = u_xlat10.y;
        u_xlat13.w = u_xlat9.z;
        u_xlat9 = vec4f(((u_xlat11.zyw + u_xlat13.zyw)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat10.xzw / u_xlat14.zwy)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz + x_1099)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat13.zyw / u_xlat9.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_1099)).xyz, u_xlat11.w);
        u_xlat10 = vec4f(((u_xlat10.yxz * x_650.x_MainLightShadowmapSize.xxx)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_650.x_MainLightShadowmapSize.yyy)).xyz, u_xlat11.w);
        u_xlat10.w = u_xlat11.x;
        u_xlat12 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat10.ywxw);
        u_xlat62 = ((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat10.zw);
        u_xlat11.w = u_xlat10.y;
        let x_1156 = u_xlat11.yz;
        u_xlat10 = vec4f(u_xlat10.x, x_1156.x, u_xlat10.z, x_1156.y);
        u_xlat13 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyzy);
        u_xlat11 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat11.wywz);
        u_xlat10 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat10.xwzw);
        u_xlat15 = (u_xlat9.xxxy * u_xlat14.zwyz);
        u_xlat16 = (u_xlat9.yyzz * u_xlat14);
        u_xlat88 = (u_xlat9.z * u_xlat14.y);
        let x_1205 = u_xlat12.xy;
        txVec4 = vec3f(x_1205.x, x_1205.y, u_xlat5.z);
        u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1220 = u_xlat12.zw;
        txVec5 = vec3f(x_1220.x, x_1220.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat35 = (u_xlat35 * u_xlat15.y);
        u_xlat8.x = ((u_xlat15.x * u_xlat8.x) + u_xlat35);
        txVec6 = vec3f(u_xlat62.x, u_xlat62.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat8.x = ((u_xlat15.z * u_xlat35) + u_xlat8.x);
        let x_1268 = u_xlat11.xy;
        txVec7 = vec3f(x_1268.x, x_1268.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat8.x = ((u_xlat15.w * u_xlat35) + u_xlat8.x);
        let x_1290 = u_xlat13.xy;
        txVec8 = vec3f(x_1290.x, x_1290.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat8.x = ((u_xlat16.x * u_xlat35) + u_xlat8.x);
        let x_1312 = u_xlat13.zw;
        txVec9 = vec3f(x_1312.x, x_1312.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat8.x = ((u_xlat16.y * u_xlat35) + u_xlat8.x);
        let x_1334 = u_xlat11.zw;
        txVec10 = vec3f(x_1334.x, x_1334.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat8.x = ((u_xlat16.z * u_xlat35) + u_xlat8.x);
        let x_1356 = u_xlat10.xy;
        txVec11 = vec3f(x_1356.x, x_1356.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat8.x = ((u_xlat16.w * u_xlat35) + u_xlat8.x);
        let x_1378 = u_xlat10.zw;
        txVec12 = vec3f(x_1378.x, x_1378.y, u_xlat5.z);
        u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat34 = ((u_xlat88 * u_xlat35) + u_xlat8.x);
      } else {
        u_xlat8 = vec4f((((u_xlat5.xy * x_650.x_MainLightShadowmapSize.zw) + x_943)).xy, u_xlat8.zw);
        u_xlat8 = vec4f(floor(u_xlat8.xy).xy, u_xlat8.zw);
        u_xlat62 = ((u_xlat5.xy * x_650.x_MainLightShadowmapSize.zw) + -(u_xlat8.xy));
        u_xlat9 = (u_xlat62.xxyy + x_966);
        u_xlat10 = (u_xlat9.xxzz * u_xlat9.xxzz);
        let x_1433 = (u_xlat10.yw * x_1432);
        u_xlat11 = vec4f(u_xlat11.x, x_1433.x, u_xlat11.z, x_1433.y);
        let x_1441 = ((u_xlat10.xz * x_943) + -(u_xlat62));
        u_xlat9 = vec4f(x_1441.x, u_xlat9.y, x_1441.y, u_xlat9.w);
        u_xlat10 = vec4f(((-(u_xlat62) + x_772)).xy, u_xlat10.zw);
        u_xlat64 = min(u_xlat62, vec2f());
        u_xlat10 = vec4f((((-(u_xlat64) * u_xlat64) + u_xlat10.xy)).xy, u_xlat10.zw);
        u_xlat64 = max(u_xlat62, vec2f());
        let x_1469 = ((-(u_xlat64) * u_xlat64) + u_xlat9.yw);
        u_xlat36 = vec3f(x_1469.x, u_xlat36.y, x_1469.y);
        u_xlat10 = vec4f(((u_xlat10.xy + x_1474)).xy, u_xlat10.zw);
        let x_1480 = (u_xlat36.xz + x_1474);
        u_xlat9 = vec4f(u_xlat9.x, x_1480.x, u_xlat9.z, x_1480.y);
        u_xlat12.z = (u_xlat9.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat9.zxw * x_1490)).xyz, u_xlat13.w);
        u_xlat9 = vec4f(((u_xlat10.xy * x_1496)).xy, u_xlat9.zw);
        u_xlat12.x = u_xlat13.y;
        let x_1510 = ((u_xlat62.xx * x_1506) + x_1509);
        u_xlat12 = vec4f(u_xlat12.x, x_1510.x, u_xlat12.z, x_1510.y);
        let x_1517 = ((u_xlat62.xx * x_1506) + x_1516);
        u_xlat10 = vec4f(x_1517.x, u_xlat10.y, x_1517.y, u_xlat10.w);
        u_xlat10.y = u_xlat9.x;
        u_xlat10.w = u_xlat11.y;
        u_xlat12 = (u_xlat10 + u_xlat12);
        let x_1532 = ((u_xlat62.yy * x_1506) + x_1509);
        u_xlat13 = vec4f(u_xlat13.x, x_1532.x, u_xlat13.z, x_1532.y);
        let x_1538 = ((u_xlat62.yy * x_1506) + x_1516);
        u_xlat11 = vec4f(x_1538.x, u_xlat11.y, x_1538.y, u_xlat11.w);
        u_xlat11.y = u_xlat9.y;
        u_xlat9 = (u_xlat11 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat12);
        u_xlat10 = (u_xlat10 + x_1554);
        u_xlat11 = (u_xlat11 / u_xlat9);
        u_xlat11 = (u_xlat11 + x_1554);
        u_xlat10 = (u_xlat10.wxyz * x_650.x_MainLightShadowmapSize.xxxx);
        u_xlat11 = (u_xlat11.xwyz * x_650.x_MainLightShadowmapSize.yyyy);
        let x_1574 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_1574.x, u_xlat13.y, x_1574.yz);
        u_xlat13.y = u_xlat11.x;
        u_xlat14 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat62 = ((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat11.z;
        u_xlat15 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat16 = vec4f((((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat16.zw);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat11.w;
        u_xlat18 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat37 = ((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.w = u_xlat13.y;
        u_xlat70 = ((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat10.xw);
        let x_1674 = u_xlat13.xzw;
        u_xlat11 = vec4f(x_1674.x, u_xlat11.y, x_1674.yz);
        u_xlat13 = ((u_xlat8.xyxy * x_650.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat65 = ((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat11.x = u_xlat10.x;
        u_xlat8 = vec4f((((u_xlat8.xy * x_650.x_MainLightShadowmapSize.xy) + u_xlat11.xy)).xy, u_xlat8.zw);
        u_xlat19 = (u_xlat9.xxxx * u_xlat12);
        u_xlat20 = (u_xlat9.yyyy * u_xlat12);
        u_xlat21 = (u_xlat9.zzzz * u_xlat12);
        u_xlat9 = (u_xlat9.wwww * u_xlat12);
        let x_1731 = u_xlat14.xy;
        txVec13 = vec3f(x_1731.x, x_1731.y, u_xlat5.z);
        u_xlat88 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1745 = u_xlat14.zw;
        txVec14 = vec3f(x_1745.x, x_1745.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat10.x = (u_xlat10.x * u_xlat19.y);
        u_xlat88 = ((u_xlat19.x * u_xlat88) + u_xlat10.x);
        txVec15 = vec3f(u_xlat62.x, u_xlat62.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat88 = ((u_xlat19.z * u_xlat62.x) + u_xlat88);
        let x_1794 = u_xlat17.xy;
        txVec16 = vec3f(x_1794.x, x_1794.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat88 = ((u_xlat19.w * u_xlat62.x) + u_xlat88);
        let x_1816 = u_xlat15.xy;
        txVec17 = vec3f(x_1816.x, x_1816.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat88 = ((u_xlat20.x * u_xlat62.x) + u_xlat88);
        let x_1838 = u_xlat15.zw;
        txVec18 = vec3f(x_1838.x, x_1838.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat88 = ((u_xlat20.y * u_xlat62.x) + u_xlat88);
        let x_1860 = u_xlat16.xy;
        txVec19 = vec3f(x_1860.x, x_1860.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat88 = ((u_xlat20.z * u_xlat62.x) + u_xlat88);
        let x_1882 = u_xlat17.zw;
        txVec20 = vec3f(x_1882.x, x_1882.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat88 = ((u_xlat20.w * u_xlat62.x) + u_xlat88);
        let x_1904 = u_xlat18.xy;
        txVec21 = vec3f(x_1904.x, x_1904.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat88 = ((u_xlat21.x * u_xlat62.x) + u_xlat88);
        let x_1926 = u_xlat18.zw;
        txVec22 = vec3f(x_1926.x, x_1926.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat88 = ((u_xlat21.y * u_xlat62.x) + u_xlat88);
        txVec23 = vec3f(u_xlat37.x, u_xlat37.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat88 = ((u_xlat21.z * u_xlat62.x) + u_xlat88);
        txVec24 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat88 = ((u_xlat21.w * u_xlat62.x) + u_xlat88);
        let x_1990 = u_xlat13.xy;
        txVec25 = vec3f(x_1990.x, x_1990.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat88 = ((u_xlat9.x * u_xlat62.x) + u_xlat88);
        let x_2012 = u_xlat13.zw;
        txVec26 = vec3f(x_2012.x, x_2012.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat88 = ((u_xlat9.y * u_xlat62.x) + u_xlat88);
        txVec27 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat5.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat88 = ((u_xlat9.z * u_xlat62.x) + u_xlat88);
        let x_2055 = u_xlat8.xy;
        txVec28 = vec3f(x_2055.x, x_2055.y, u_xlat5.z);
        u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat34 = ((u_xlat9.w * u_xlat8.x) + u_xlat88);
      }
    }
  } else {
    let x_2078 = u_xlat5.xy;
    txVec29 = vec3f(x_2078.x, x_2078.y, u_xlat5.z);
    u_xlat34 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat5.x = (-(x_650.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat34 * x_650.x_MainLightShadowParams.x) + u_xlat5.x);
  u_xlatb32 = (0.0f >= u_xlat5.z);
  u_xlatb59 = (u_xlat5.z >= 1.0f);
  u_xlatb32 = (u_xlatb59 | u_xlatb32);
  if (u_xlatb32) {
    x_2115 = 1.0f;
  } else {
    x_2115 = u_xlat5.x;
  }
  u_xlat5.x = x_2115;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_601.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat32 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat59 = ((u_xlat32 * x_650.x_MainLightShadowParams.z) + x_650.x_MainLightShadowParams.w);
  u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
  u_xlat34 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat59 * u_xlat34) + u_xlat5.x);
  u_xlat59 = dot(-(u_xlat4), u_xlat1.xyz);
  u_xlat59 = (u_xlat59 + u_xlat59);
  u_xlat9 = vec4f((((u_xlat1.xyz * -(vec3f(u_xlat59))) + -(u_xlat4))).xyz, u_xlat9.w);
  u_xlat59 = dot(u_xlat1.xyz, u_xlat4);
  u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
  u_xlat59 = (-(u_xlat59) + 1.0f);
  u_xlat59 = (u_xlat59 * u_xlat59);
  u_xlat59 = (u_xlat59 * u_xlat59);
  u_xlat34 = ((-(u_xlat82) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat82 = (u_xlat82 * u_xlat34);
  u_xlat82 = (u_xlat82 * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_601.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu61 = vec2u(x_601.x_FPParams1.zw);
  u_xlati7 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu61.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu7.x = (u_xlatu61.y * bitcast<u32>(u_xlati7));
  u_xlat3.x = dot(-(u_xlat3.xyz), u_xlat8.xyz);
  u_xlat30.x = log2(u_xlat3.x);
  if (u_xlatb0) {
    x_2252 = u_xlat30.x;
  } else {
    x_2252 = u_xlat3.x;
  }
  u_xlat0.x = x_2252;
  u_xlat0.x = ((u_xlat0.x * x_601.x_FPParams0.x) + x_601.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu3.x = u32(x_601.x_FPParams2.x);
  u_xlatu3.x = (u_xlatu3.x + 4294967295u);
  u_xlati30 = (bitcast<i32>(u_xlatu61.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu3.x);
  u_xlatu3.x = (bitcast<u32>(u_xlati30) * u_xlatu0);
  u_xlatu30 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati30))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu30.x >> 2u);
  param = bitcast<i32>(u_xlatu30.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2321 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu30.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2328 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati34 = vec3i(vec2i(x_2321, x_2328).xy, u_xlati34.z);
  u_xlati8 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati34.xx) & bitcast<vec2u>(x_2341.urp_ZBins[bitcast<i32>(u_xlatu0)].wy))).xy, u_xlati8.z);
  let x_2354 = ~(u_xlati34.xy);
  u_xlati34 = vec3i(x_2354.x, u_xlati34.y, x_2354.y);
  u_xlati62 = bitcast<vec2i>((bitcast<vec2u>(u_xlati34.xx) & bitcast<vec2u>(x_2341.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati62) | bitcast<vec2u>(u_xlati8.xy))).xy, u_xlati8.z);
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati34.y) & bitcast<u32>(u_xlati8.x)));
  u_xlati30 = bitcast<i32>((bitcast<u32>(u_xlati34.z) & bitcast<u32>(u_xlati8.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati30));
  u_xlatu34 = vec3u(vec2u(x_601.x_FPParams0.zw).xy, u_xlatu34.z);
  u_xlatb8 = ((vec4f() < u_xlat9.xyzx)).xyz;
  u_xlatu10.x = u_xlatu7.x;
  u_xlatu10.y = u_xlatu30.y;
  u_xlati64 = 0i;
  u_xlatu91 = u_xlatu0;
  u_xlat11.x = 0.0f;
  u_xlat11.y = 0.0f;
  u_xlat11.z = 0.0f;
  u_xlat30.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu88 = (u_xlatu91 >> 16u);
    u_xlati89 = u_xlati64;
    u_xlatu90 = u_xlatu91;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb92 = (u_xlati89 == 0i);
      u_xlatu12.x = (u_xlatu90 & 65535u);
      u_xlatb12.x = (u_xlatu88 >= u_xlatu12.x);
      u_xlatb92 = (u_xlatb92 & u_xlatb12.x);
      if (!(u_xlatb92)) {
        break;
      }
      param_6 = u_xlatu90;
      param_7 = 5i;
      param_8 = 11i;
      let x_2481 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu92 = x_2481;
      u_xlatu12 = (u_xlatu10.xxyy + vec4u(u_xlatu92));
      u_xlatu13 = (u_xlatu12.yw >> x_2490);
      param_9 = bitcast<i32>(u_xlatu12.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2501 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu12.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2508 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu12.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2515 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu12.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2522 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati12 = vec4i(x_2501, x_2508, x_2515, x_2522);
      u_xlati67 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2531.urp_Tiles[bitcast<i32>(u_xlatu13.x)].wy)));
      u_xlati14 = ~(u_xlati12);
      u_xlati15 = bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_2531.urp_Tiles[bitcast<i32>(u_xlatu13.x)].zx)));
      let x_2563 = bitcast<vec2i>((bitcast<vec2u>(u_xlati67) | bitcast<vec2u>(u_xlati15)));
      u_xlati13 = vec3i(x_2563.x, u_xlati13.y, x_2563.y);
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati13.x)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati13.z)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati39.x) | bitcast<u32>(u_xlati12.x)));
      u_xlati39 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_2341.urp_ZBins[bitcast<i32>(u_xlatu13.y)].wy)));
      u_xlati13 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_2341.urp_ZBins[bitcast<i32>(u_xlatu13.y)].zx))).xy, u_xlati13.z);
      u_xlati39 = bitcast<vec2i>((bitcast<vec2u>(u_xlati39) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati39.x)));
      u_xlati66 = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati39.y)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati66) | bitcast<u32>(u_xlati39.x)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati39.x) & bitcast<u32>(u_xlati12.x)));
      u_xlati39.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu90) & 31i)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati39.x) & bitcast<u32>(u_xlati12.x)));
      u_xlati92 = (bitcast<i32>(u_xlatu92) << bitcast<u32>(5i));
      u_xlatu92 = (u_xlatu88 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati92)))));
      u_xlatu92 = min(u_xlatu92, 31u);
      u_xlatu92 = (bitcast<u32>(-(bitcast<i32>(u_xlatu92))) + 31u);
      u_xlatu92 = (4294967295u >> (u_xlatu92 & 31u));
      u_xlati89 = bitcast<i32>((u_xlatu92 & bitcast<u32>(u_xlati12.x)));
      u_xlati92 = (bitcast<i32>(u_xlatu90) + 32i);
      u_xlatu90 = (bitcast<u32>(u_xlati92) & 4294967264u);
    }
    u_xlatu91 = u_xlatu90;
    u_xlatb88 = (u_xlati89 != 0i);
    u_xlatb92 = (u_xlat30.x < 0.99000000953674316406f);
    u_xlatb88 = (u_xlatb88 & u_xlatb92);
    if (!(u_xlatb88)) {
      break;
    }
    u_xlati88 = (0i - u_xlati89);
    u_xlatu88 = (bitcast<u32>(u_xlati88) & bitcast<u32>(u_xlati89));
    u_xlat88 = f32(u_xlatu88);
    u_xlatu88 = (bitcast<u32>(u_xlat88) >> 23u);
    u_xlati88 = (bitcast<i32>(u_xlatu88) + -127i);
    u_xlati92 = (1i << bitcast<u32>((u_xlati88 & 31i)));
    u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati89) ^ bitcast<u32>(u_xlati92)));
    u_xlati92 = (bitcast<i32>(u_xlatu91) + -32i);
    u_xlati92 = bitcast<i32>((bitcast<u32>(u_xlati92) & 65504u));
    u_xlati88 = (u_xlati88 + u_xlati92);
    u_xlati88 = (-(bitcast<i32>(u_xlatu34.x)) + u_xlati88);
    u_xlat12 = vec4f(((vs_TEXCOORD0 + -(x_2777.urp_ReflProbes_BoxMin[u_xlati88].xyz))).xyz, u_xlat12.w);
    u_xlat13 = vec4f(((-(vs_TEXCOORD0) + x_2777.urp_ReflProbes_BoxMax[u_xlati88].xyz)).xyz, u_xlat13.w);
    u_xlat12 = vec4f(min(u_xlat12.xyz, u_xlat13.xyz).xyz, u_xlat12.w);
    u_xlat12 = vec4f(((u_xlat12.xyz / x_2777.urp_ReflProbes_BoxMax[u_xlati88].www)).xyz, u_xlat12.w);
    u_xlat92 = min(u_xlat12.z, u_xlat12.y);
    u_xlat92 = min(u_xlat92, u_xlat12.x);
    u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
    u_xlat12.x = (-(u_xlat30.x) + 1.0f);
    u_xlat92 = min(u_xlat92, u_xlat12.x);
    u_xlatb12.x = (0.0f < x_2777.urp_ReflProbes_ProbePosition[u_xlati88].w);
    if (u_xlatb8.x) {
      x_2840 = x_2777.urp_ReflProbes_BoxMax[u_xlati88].x;
    } else {
      x_2840 = x_2777.urp_ReflProbes_BoxMin[u_xlati88].x;
    }
    u_xlat39.x = x_2840;
    if (u_xlatb8.y) {
      x_2854 = x_2777.urp_ReflProbes_BoxMax[u_xlati88].y;
    } else {
      x_2854 = x_2777.urp_ReflProbes_BoxMin[u_xlati88].y;
    }
    u_xlat39.y = x_2854;
    if (u_xlatb8.z) {
      x_2868 = x_2777.urp_ReflProbes_BoxMax[u_xlati88].z;
    } else {
      x_2868 = x_2777.urp_ReflProbes_BoxMin[u_xlati88].z;
    }
    u_xlat39.z = x_2868;
    u_xlat39 = (u_xlat39 + -(vs_TEXCOORD0));
    u_xlat39 = (u_xlat39 / u_xlat9.xyz);
    u_xlat39.x = min(u_xlat39.y, u_xlat39.x);
    u_xlat39.x = min(u_xlat39.z, u_xlat39.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_2777.urp_ReflProbes_ProbePosition[u_xlati88].xyz))).xyz, u_xlat13.w);
    u_xlat39 = ((u_xlat9.xyz * u_xlat39.xxx) + u_xlat13.xyz);
    if (u_xlatb12.x) {
      x_2919 = u_xlat39;
    } else {
      x_2919 = u_xlat9.xyz;
    }
    u_xlat12 = vec4f(x_2919.xyz, u_xlat12.w);
    u_xlatu93 = u32(abs(x_2777.urp_ReflProbes_ProbePosition[u_xlati88].w));
    u_xlatu93 = (u_xlatu93 + 4294967295u);
    u_xlat93 = f32(u_xlatu93);
    u_xlat93 = min(u_xlat82, u_xlat93);
    u_xlat13.x = dot(abs(u_xlat12.xyz), vec3f(1.0f));
    u_xlat13.x = max(u_xlat13.x, 0.00000099999999747524f);
    u_xlat13.x = (1.0f / u_xlat13.x);
    u_xlat40 = (u_xlat12.zxy * u_xlat13.xxx);
    u_xlat40.x = -(u_xlat40.x);
    u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
    u_xlatb67 = ((u_xlat40.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat40;
    if (u_xlatb67.x) {
      x_2983 = u_xlat40.x;
    } else {
      x_2983 = -(u_xlat40.x);
    }
    hlslcc_movcTemp.x = x_2983;
    if (u_xlatb67.y) {
      x_2996 = u_xlat40.x;
    } else {
      x_2996 = -(u_xlat40.x);
    }
    hlslcc_movcTemp.y = x_2996;
    u_xlat40 = hlslcc_movcTemp;
    u_xlat12 = vec4f((((u_xlat12.xy * u_xlat13.xx) + u_xlat40.xy)).xy, u_xlat12.zw);
    u_xlat12 = vec4f((((u_xlat12.xy * x_943) + x_943)).xy, u_xlat12.zw);
    u_xlat12 = vec4f(clamp(u_xlat12.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat12.zw);
    u_xlat66 = floor(u_xlat93);
    u_xlat13.x = (u_xlat66 + 1.0f);
    u_xlat93 = (-(u_xlat66) + u_xlat93);
    u_xlatu66 = u32(u_xlat66);
    u_xlati66 = ((u_xlati88 * 7i) + bitcast<i32>(u_xlatu66));
    u_xlatu13.x = u32(u_xlat13.x);
    u_xlati88 = ((u_xlati88 * 7i) + bitcast<i32>(u_xlatu13.x));
    u_xlat13 = vec4f((((u_xlat12.xy * x_2777.urp_ReflProbes_MipScaleOffset[u_xlati66].xy) + x_2777.urp_ReflProbes_MipScaleOffset[u_xlati66].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat12.xy * x_2777.urp_ReflProbes_MipScaleOffset[u_xlati88].xy) + x_2777.urp_ReflProbes_MipScaleOffset[u_xlati88].zw)).xy, u_xlat12.zw);
    u_xlat12 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat12.xy, 0.0f).xyz.xyz, u_xlat12.w);
    u_xlat12 = vec4f(((-(u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat12 = vec4f((((vec3f(u_xlat93) * u_xlat12.xyz) + u_xlat13.xyz)).xyz, u_xlat12.w);
    u_xlat11 = vec4f((((vec3f(u_xlat92) * u_xlat12.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat30.x = (u_xlat30.x + u_xlat92);
  }
  u_xlatb0 = (u_xlat30.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xyz, u_xlat82);
    u_xlat0.x = (-(u_xlat30.x) + 1.0f);
    u_xlat82 = (u_xlat8.w + -1.0f);
    u_xlat82 = ((x_601.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat82) + 1.0f);
    u_xlat82 = max(u_xlat82, 0.0f);
    u_xlat82 = log2(u_xlat82);
    u_xlat82 = (u_xlat82 * x_601.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat82 = exp2(u_xlat82);
    u_xlat82 = (u_xlat82 * x_601.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * vec3f(u_xlat82))).xyz, u_xlat8.w);
    u_xlat11 = vec4f((((u_xlat0.xxx * u_xlat8.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
  }
  let x_3212 = ((vec2f(u_xlat84) * vec2f(u_xlat84)) + vec2f(-1.0f, 1.0f));
  u_xlat30 = vec3f(x_3212.x, u_xlat30.y, x_3212.y);
  u_xlat0.x = (1.0f / u_xlat30.z);
  u_xlat82 = (u_xlat86 + -0.03999999910593032837f);
  u_xlat82 = ((u_xlat59 * u_xlat82) + 0.03999999910593032837f);
  u_xlat0.x = (u_xlat0.x * u_xlat82);
  u_xlat8 = vec4f(((u_xlat0.xxx * u_xlat11.xyz)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat27) + u_xlat8.xyz)).xyz, u_xlat6.w);
  u_xlati0 = bitcast<i32>((x_601.x_MainLightLayerMask & bitcast<u32>(x_696.unity_RenderingLayer.x)));
  u_xlat82 = dot(u_xlat1.xyz, x_601.x_MainLightPosition.xyz);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  u_xlat82 = (u_xlat82 * u_xlat5.x);
  let x_3273 = (vec3f(u_xlat82) * x_601.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_3273.x, u_xlat5.y, x_3273.yz);
  u_xlat2 = ((u_xlat2 * vec3f(u_xlat83)) + x_601.x_MainLightPosition.xyz);
  u_xlat82 = dot(u_xlat2, u_xlat2);
  u_xlat82 = max(u_xlat82, 1.17549435e-38f);
  u_xlat82 = inverseSqrt(u_xlat82);
  u_xlat2 = (vec3f(u_xlat82) * u_xlat2);
  u_xlat82 = dot(u_xlat1.xyz, u_xlat2);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  u_xlat2.x = dot(x_601.x_MainLightPosition.xyz, u_xlat2);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat82 = (u_xlat82 * u_xlat82);
  u_xlat82 = ((u_xlat82 * u_xlat30.x) + 1.00001001358032226562f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat82 = (u_xlat82 * u_xlat82);
  u_xlat2.x = max(u_xlat2.x, 0.10000000149011611938f);
  u_xlat82 = (u_xlat82 * u_xlat2.x);
  u_xlat82 = (u_xlat87 * u_xlat82);
  u_xlat82 = (u_xlat85 / u_xlat82);
  u_xlat2 = ((vec3f(u_xlat82) * x_3347) + u_xlat27);
  u_xlat2 = (u_xlat5.xzw * u_xlat2);
  if ((u_xlati0 != 0i)) {
    x_3357 = u_xlat2;
  } else {
    x_3357 = vec3f();
  }
  u_xlat2 = x_3357;
  u_xlatu0 = min(u_xlatu34.y, 32u);
  u_xlat82 = ((u_xlat32 * x_650.x_AdditionalShadowFadeParams.x) + x_650.x_AdditionalShadowFadeParams.y);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu0)) {
    } else {
      break;
    }
    u_xlat8 = vec4f((((-(vs_TEXCOORD0) * x_3399.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3399.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat8.w);
    u_xlat84 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat84 = max(u_xlat84, 0.00006103515625f);
    u_xlat86 = inverseSqrt(u_xlat84);
    u_xlat9 = vec4f(((vec3f(u_xlat86) * u_xlat8.xyz)).xyz, u_xlat9.w);
    u_xlat34 = (1.0f / u_xlat84);
    u_xlat84 = (u_xlat84 * x_3399.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat84 = ((-(u_xlat84) * u_xlat84) + 1.0f);
    u_xlat84 = max(u_xlat84, 0.0f);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat84 = (u_xlat84 * u_xlat34);
    u_xlat34 = dot(x_3399.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9.xyz);
    u_xlat34 = ((u_xlat34 * x_3399.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3399.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat84 = (u_xlat84 * u_xlat34);
    u_xlatb34 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati88 = i32(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati34.x = select(u_xlati88, -1i, u_xlatb34);
    u_xlatb88 = (u_xlati34.x >= 0i);
    if (u_xlatb88) {
      u_xlatb88 = any(!((vec4f() == vec4f(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb88) {
        u_xlatb10 = vec4<bool>(((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz.xyz, u_xlatb10.w);
        u_xlatb88 = (u_xlatb10.y & u_xlatb10.x);
        let x_3528 = ((-(u_xlat9.zyzx) < vec4f())).xyw;
        u_xlatb10 = vec4<bool>(x_3528.xy, u_xlatb10.z, x_3528.z);
        u_xlat10.x = select(4.0f, 5.0f, u_xlatb10.x);
        u_xlat10.y = select(2.0f, 3.0f, u_xlatb10.y);
        u_xlat89 = select(0.0f, 1.0f, u_xlatb10.w);
        if (u_xlatb10.z) {
          x_3546 = u_xlat10.y;
        } else {
          x_3546 = u_xlat89;
        }
        u_xlat89 = x_3546;
        if (u_xlatb88) {
          x_3555 = u_xlat10.x;
        } else {
          x_3555 = u_xlat89;
        }
        u_xlat88 = x_3555;
        u_xlati88 = i32(u_xlat88);
        u_xlati34.x = (u_xlati88 + u_xlati34.x);
      }
      u_xlati34.x = (u_xlati34.x << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati34.x + 1i)]);
      u_xlat10 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati34.x] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati34.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati34.x + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      u_xlatb34 = (0.0f < x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb34) {
        u_xlatb34 = (1.0f == x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb34) {
          u_xlat11 = (u_xlat10.xyxy + x_650.x_AdditionalShadowOffset0);
          let x_3639 = u_xlat11.xy;
          txVec30 = vec3f(x_3639.x, x_3639.y, u_xlat10.z);
          u_xlat12.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_3655 = u_xlat11.zw;
          txVec31 = vec3f(x_3655.x, x_3655.y, u_xlat10.z);
          u_xlat12.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat11 = (u_xlat10.xyxy + x_650.x_AdditionalShadowOffset1);
          let x_3675 = u_xlat11.xy;
          txVec32 = vec3f(x_3675.x, x_3675.y, u_xlat10.z);
          u_xlat12.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_3690 = u_xlat11.zw;
          txVec33 = vec3f(x_3690.x, x_3690.y, u_xlat10.z);
          u_xlat12.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat34 = dot(u_xlat12, x_927);
        } else {
          u_xlatb88 = (2.0f == x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb88) {
            u_xlat11 = vec4f((((u_xlat10.xy * x_650.x_AdditionalShadowmapSize.zw) + x_943)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_650.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_966);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_3749 = (u_xlat13.yw * x_977);
            u_xlat12 = vec4f(x_3749.x, u_xlat12.y, x_3749.y, u_xlat12.w);
            u_xlat13 = vec4f((((u_xlat13.xz * x_943) + -(u_xlat65))).xy, u_xlat13.zw);
            u_xlat67 = (-(u_xlat65) + x_772);
            u_xlat14 = vec4f(min(u_xlat65, vec2f()).xy, u_xlat14.zw);
            u_xlat14 = vec4f((((-(u_xlat14.xy) * u_xlat14.xy) + u_xlat67)).xy, u_xlat14.zw);
            u_xlat65 = max(u_xlat65, vec2f());
            u_xlat65 = ((-(u_xlat65) * u_xlat65) + u_xlat12.yw);
            u_xlat14 = vec4f(((u_xlat14.xy + x_772)).xy, u_xlat14.zw);
            u_xlat65 = (u_xlat65 + x_772);
            u_xlat15 = vec4f(((u_xlat13.xy * x_1029)).xy, u_xlat15.zw);
            u_xlat13 = vec4f(((u_xlat67 * x_1029)).xy, u_xlat13.zw);
            u_xlat14 = vec4f(((u_xlat14.xy * x_1029)).xy, u_xlat14.zw);
            u_xlat16 = vec4f(((u_xlat65 * x_1029)).xy, u_xlat16.zw);
            u_xlat65 = (u_xlat12.yw * x_1029);
            u_xlat15.z = u_xlat14.x;
            u_xlat15.w = u_xlat65.x;
            u_xlat13.z = u_xlat16.x;
            u_xlat13.w = u_xlat12.x;
            u_xlat17 = (u_xlat13.zwxz + u_xlat15.zwxz);
            u_xlat14.z = u_xlat15.y;
            u_xlat14.w = u_xlat65.y;
            u_xlat16.z = u_xlat13.y;
            u_xlat16.w = u_xlat12.z;
            u_xlat12 = vec4f(((u_xlat14.zyw + u_xlat16.zyw)).xyz, u_xlat12.w);
            u_xlat13 = vec4f(((u_xlat13.xzw / u_xlat17.zwy)).xyz, u_xlat13.w);
            u_xlat13 = vec4f(((u_xlat13.xyz + x_1099)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat16.zyw / u_xlat12.xyz)).xyz, u_xlat14.w);
            u_xlat14 = vec4f(((u_xlat14.xyz + x_1099)).xyz, u_xlat14.w);
            u_xlat13 = vec4f(((u_xlat13.yxz * x_650.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat14.xyz * x_650.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat14.w);
            u_xlat13.w = u_xlat14.x;
            u_xlat15 = ((u_xlat11.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat13.ywxw);
            u_xlat65 = ((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat13.zw);
            u_xlat14.w = u_xlat13.y;
            let x_3916 = u_xlat14.yz;
            u_xlat13 = vec4f(u_xlat13.x, x_3916.x, u_xlat13.z, x_3916.y);
            u_xlat16 = ((u_xlat11.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyzy);
            u_xlat14 = ((u_xlat11.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat14.wywz);
            u_xlat13 = ((u_xlat11.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xwzw);
            u_xlat18 = (u_xlat12.xxxy * u_xlat17.zwyz);
            u_xlat19 = (u_xlat12.yyzz * u_xlat17);
            u_xlat88 = (u_xlat12.z * u_xlat17.y);
            let x_3962 = u_xlat15.xy;
            txVec34 = vec3f(x_3962.x, x_3962.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_3976 = u_xlat15.zw;
            txVec35 = vec3f(x_3976.x, x_3976.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat90 = (u_xlat90 * u_xlat18.y);
            u_xlat89 = ((u_xlat18.x * u_xlat89) + u_xlat90);
            txVec36 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat89 = ((u_xlat18.z * u_xlat90) + u_xlat89);
            let x_4020 = u_xlat14.xy;
            txVec37 = vec3f(x_4020.x, x_4020.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat89 = ((u_xlat18.w * u_xlat90) + u_xlat89);
            let x_4040 = u_xlat16.xy;
            txVec38 = vec3f(x_4040.x, x_4040.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat89 = ((u_xlat19.x * u_xlat90) + u_xlat89);
            let x_4060 = u_xlat16.zw;
            txVec39 = vec3f(x_4060.x, x_4060.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat89 = ((u_xlat19.y * u_xlat90) + u_xlat89);
            let x_4080 = u_xlat14.zw;
            txVec40 = vec3f(x_4080.x, x_4080.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat89 = ((u_xlat19.z * u_xlat90) + u_xlat89);
            let x_4100 = u_xlat13.xy;
            txVec41 = vec3f(x_4100.x, x_4100.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat89 = ((u_xlat19.w * u_xlat90) + u_xlat89);
            let x_4120 = u_xlat13.zw;
            txVec42 = vec3f(x_4120.x, x_4120.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat34 = ((u_xlat88 * u_xlat90) + u_xlat89);
          } else {
            u_xlat11 = vec4f((((u_xlat10.xy * x_650.x_AdditionalShadowmapSize.zw) + x_943)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_650.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_966);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_4172 = (u_xlat13.yw * x_1432);
            u_xlat14 = vec4f(u_xlat14.x, x_4172.x, u_xlat14.z, x_4172.y);
            let x_4180 = ((u_xlat13.xz * x_943) + -(u_xlat65));
            u_xlat12 = vec4f(x_4180.x, u_xlat12.y, x_4180.y, u_xlat12.w);
            u_xlat13 = vec4f(((-(u_xlat65) + x_772)).xy, u_xlat13.zw);
            u_xlat67 = min(u_xlat65, vec2f());
            u_xlat13 = vec4f((((-(u_xlat67) * u_xlat67) + u_xlat13.xy)).xy, u_xlat13.zw);
            u_xlat67 = max(u_xlat65, vec2f());
            let x_4207 = ((-(u_xlat67) * u_xlat67) + u_xlat12.yw);
            u_xlat39 = vec3f(x_4207.x, u_xlat39.y, x_4207.y);
            u_xlat13 = vec4f(((u_xlat13.xy + x_1474)).xy, u_xlat13.zw);
            let x_4217 = (u_xlat39.xz + x_1474);
            u_xlat12 = vec4f(u_xlat12.x, x_4217.x, u_xlat12.z, x_4217.y);
            u_xlat15.z = (u_xlat12.y * 0.08163200318813323975f);
            u_xlat16 = vec4f(((u_xlat12.zxw * x_1490)).xyz, u_xlat16.w);
            u_xlat12 = vec4f(((u_xlat13.xy * x_1496)).xy, u_xlat12.zw);
            u_xlat15.x = u_xlat16.y;
            let x_4240 = ((u_xlat65.xx * x_1506) + x_1509);
            u_xlat15 = vec4f(u_xlat15.x, x_4240.x, u_xlat15.z, x_4240.y);
            let x_4246 = ((u_xlat65.xx * x_1506) + x_1516);
            u_xlat13 = vec4f(x_4246.x, u_xlat13.y, x_4246.y, u_xlat13.w);
            u_xlat13.y = u_xlat12.x;
            u_xlat13.w = u_xlat14.y;
            u_xlat15 = (u_xlat13 + u_xlat15);
            let x_4261 = ((u_xlat65.yy * x_1506) + x_1509);
            u_xlat16 = vec4f(u_xlat16.x, x_4261.x, u_xlat16.z, x_4261.y);
            let x_4267 = ((u_xlat65.yy * x_1506) + x_1516);
            u_xlat14 = vec4f(x_4267.x, u_xlat14.y, x_4267.y, u_xlat14.w);
            u_xlat14.y = u_xlat12.y;
            u_xlat12 = (u_xlat14 + u_xlat16);
            u_xlat13 = (u_xlat13 / u_xlat15);
            u_xlat13 = (u_xlat13 + x_1554);
            u_xlat14 = (u_xlat14 / u_xlat12);
            u_xlat14 = (u_xlat14 + x_1554);
            u_xlat13 = (u_xlat13.wxyz * x_650.x_AdditionalShadowmapSize.xxxx);
            u_xlat14 = (u_xlat14.xwyz * x_650.x_AdditionalShadowmapSize.yyyy);
            let x_4299 = u_xlat13.yzw;
            u_xlat16 = vec4f(x_4299.x, u_xlat16.y, x_4299.yz);
            u_xlat16.y = u_xlat14.x;
            u_xlat17 = ((u_xlat11.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat65 = ((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat13.y = u_xlat16.y;
            u_xlat16.y = u_xlat14.z;
            u_xlat18 = ((u_xlat11.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat19 = vec4f((((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat19.zw);
            u_xlat13.z = u_xlat16.y;
            u_xlat20 = ((u_xlat11.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyxz);
            u_xlat16.y = u_xlat14.w;
            u_xlat21 = ((u_xlat11.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat40 = vec3f((((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat40.z);
            u_xlat13.w = u_xlat16.y;
            u_xlat73 = ((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat13.xw);
            let x_4398 = u_xlat16.xzw;
            u_xlat14 = vec4f(x_4398.x, u_xlat14.y, x_4398.yz);
            u_xlat16 = ((u_xlat11.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xyzy);
            u_xlat68 = ((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat14.wy);
            u_xlat14.x = u_xlat13.x;
            u_xlat11 = vec4f((((u_xlat11.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat14.xy)).xy, u_xlat11.zw);
            u_xlat22 = (u_xlat12.xxxx * u_xlat15);
            u_xlat23 = (u_xlat12.yyyy * u_xlat15);
            u_xlat24 = (u_xlat12.zzzz * u_xlat15);
            u_xlat12 = (u_xlat12.wwww * u_xlat15);
            let x_4455 = u_xlat17.xy;
            txVec43 = vec3f(x_4455.x, x_4455.y, u_xlat10.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_4469 = u_xlat17.zw;
            txVec44 = vec3f(x_4469.x, x_4469.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat89 = (u_xlat89 * u_xlat22.y);
            u_xlat88 = ((u_xlat22.x * u_xlat88) + u_xlat89);
            txVec45 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat88 = ((u_xlat22.z * u_xlat89) + u_xlat88);
            let x_4512 = u_xlat20.xy;
            txVec46 = vec3f(x_4512.x, x_4512.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat88 = ((u_xlat22.w * u_xlat89) + u_xlat88);
            let x_4532 = u_xlat18.xy;
            txVec47 = vec3f(x_4532.x, x_4532.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat88 = ((u_xlat23.x * u_xlat89) + u_xlat88);
            let x_4552 = u_xlat18.zw;
            txVec48 = vec3f(x_4552.x, x_4552.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat88 = ((u_xlat23.y * u_xlat89) + u_xlat88);
            let x_4572 = u_xlat19.xy;
            txVec49 = vec3f(x_4572.x, x_4572.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat88 = ((u_xlat23.z * u_xlat89) + u_xlat88);
            let x_4592 = u_xlat20.zw;
            txVec50 = vec3f(x_4592.x, x_4592.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat88 = ((u_xlat23.w * u_xlat89) + u_xlat88);
            let x_4612 = u_xlat21.xy;
            txVec51 = vec3f(x_4612.x, x_4612.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat88 = ((u_xlat24.x * u_xlat89) + u_xlat88);
            let x_4632 = u_xlat21.zw;
            txVec52 = vec3f(x_4632.x, x_4632.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat88 = ((u_xlat24.y * u_xlat89) + u_xlat88);
            let x_4652 = u_xlat40.xy;
            txVec53 = vec3f(x_4652.x, x_4652.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat88 = ((u_xlat24.z * u_xlat89) + u_xlat88);
            txVec54 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat88 = ((u_xlat24.w * u_xlat89) + u_xlat88);
            let x_4691 = u_xlat16.xy;
            txVec55 = vec3f(x_4691.x, x_4691.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat88 = ((u_xlat12.x * u_xlat89) + u_xlat88);
            let x_4711 = u_xlat16.zw;
            txVec56 = vec3f(x_4711.x, x_4711.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat88 = ((u_xlat12.y * u_xlat89) + u_xlat88);
            txVec57 = vec3f(u_xlat68.x, u_xlat68.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat88 = ((u_xlat12.z * u_xlat89) + u_xlat88);
            let x_4750 = u_xlat11.xy;
            txVec58 = vec3f(x_4750.x, x_4750.y, u_xlat10.z);
            u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat34 = ((u_xlat12.w * u_xlat89) + u_xlat88);
          }
        }
      } else {
        let x_4771 = u_xlat10.xy;
        txVec59 = vec3f(x_4771.x, x_4771.y, u_xlat10.z);
        u_xlat34 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat88 = (1.0f + -(x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat34 = ((u_xlat34 * x_650.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat88);
      u_xlatb88 = (0.0f >= u_xlat10.z);
      u_xlatb89 = (u_xlat10.z >= 1.0f);
      u_xlatb88 = (u_xlatb88 | u_xlatb89);
      u_xlat34 = select(u_xlat34, 1.0f, u_xlatb88);
    } else {
      u_xlat34 = 1.0f;
    }
    u_xlat88 = (-(u_xlat34) + 1.0f);
    u_xlat34 = ((u_xlat82 * u_xlat88) + u_xlat34);
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_696.unity_RenderingLayer.x) & bitcast<u32>(x_3399.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat84 = (u_xlat84 * u_xlat34);
    u_xlat34 = dot(u_xlat1.xyz, u_xlat9.xyz);
    u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
    u_xlat84 = (u_xlat84 * u_xlat34);
    u_xlat10 = vec4f(((vec3f(u_xlat84) * x_3399.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlat8 = vec4f((((u_xlat8.xyz * vec3f(u_xlat86)) + u_xlat4)).xyz, u_xlat8.w);
    u_xlat84 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat84 = max(u_xlat84, 1.17549435e-38f);
    u_xlat84 = inverseSqrt(u_xlat84);
    u_xlat8 = vec4f(((vec3f(u_xlat84) * u_xlat8.xyz)).xyz, u_xlat8.w);
    u_xlat84 = dot(u_xlat1.xyz, u_xlat8.xyz);
    u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
    u_xlat86 = dot(u_xlat9.xyz, u_xlat8.xyz);
    u_xlat86 = clamp(u_xlat86, 0.0f, 1.0f);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat84 = ((u_xlat84 * u_xlat30.x) + 1.00001001358032226562f);
    u_xlat86 = (u_xlat86 * u_xlat86);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat86 = max(u_xlat86, 0.10000000149011611938f);
    u_xlat84 = (u_xlat84 * u_xlat86);
    u_xlat84 = (u_xlat87 * u_xlat84);
    u_xlat84 = (u_xlat85 / u_xlat84);
    u_xlat8 = vec4f((((vec3f(u_xlat84) * x_3347) + u_xlat27)).xyz, u_xlat8.w);
    u_xlat8 = vec4f((((u_xlat8.xyz * u_xlat10.xyz) + u_xlat5.xyz)).xyz, u_xlat8.w);
    if ((u_xlati88 != 0i)) {
      x_4935 = u_xlat8.xyz;
    } else {
      x_4935 = u_xlat5.xyz;
    }
    u_xlat5 = vec4f(x_4935.xyz, u_xlat5.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu0 = (u_xlatu3.x >> 2u);
  param_21 = bitcast<i32>(u_xlatu3.x);
  param_22 = 0i;
  param_23 = 1i;
  let x_4958 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu3.x);
  param_25 = 1i;
  param_26 = 1i;
  let x_4965 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  let x_4966 = vec2i(x_4958, x_4965);
  u_xlati3 = vec4i(x_4966.x, u_xlati3.yz, x_4966.y);
  let x_4979 = bitcast<vec2i>((bitcast<vec2u>(u_xlati3.xx) & bitcast<vec2u>(x_2341.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  u_xlati34 = vec3i(x_4979.x, u_xlati34.y, x_4979.y);
  u_xlati8 = vec3i((~(u_xlati3.xw)).xy, u_xlati8.z);
  let x_4997 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8.xx) & bitcast<vec2u>(x_2341.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati8 = vec3i(x_4997.x, u_xlati8.y, x_4997.y);
  let x_5007 = bitcast<vec2i>((bitcast<vec2u>(u_xlati34.xz) | bitcast<vec2u>(u_xlati8.xz)));
  u_xlati34 = vec3i(x_5007.x, u_xlati34.y, x_5007.y);
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati3.w) & bitcast<u32>(u_xlati34.x)));
  u_xlati83 = bitcast<i32>((bitcast<u32>(u_xlati8.y) & bitcast<u32>(u_xlati34.z)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati83));
  u_xlatu8.x = u_xlatu7.x;
  u_xlatu8.y = u_xlatu30.y;
  u_xlatu62.x = 0u;
  u_xlatu62.y = u_xlatu0;
  u_xlat9 = vec4f(u_xlat5.xyz.xyz, u_xlat9.w);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu83 = (u_xlatu62.y >> 16u);
    u_xlatu3 = vec4u(u_xlatu62.x, u_xlatu3.yz, u_xlatu62.y);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb86 = (bitcast<i32>(u_xlatu3.x) == 0i);
      u_xlatu34.x = (u_xlatu3.w & 65535u);
      u_xlatb34 = (u_xlatu83 >= u_xlatu34.x);
      u_xlatb86 = (u_xlatb86 & u_xlatb34);
      if (!(u_xlatb86)) {
        break;
      }
      param_27 = u_xlatu3.w;
      param_28 = 5i;
      param_29 = 11i;
      let x_5091 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu86 = x_5091;
      u_xlatu10 = (vec4u(u_xlatu86) + u_xlatu8.xxyy);
      let x_5099 = (u_xlatu10.yw >> x_2490);
      u_xlatu34 = vec3u(x_5099.x, u_xlatu34.y, x_5099.y);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_5109 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_5116 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_5123 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_5130 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_5109, x_5116, x_5123, x_5130);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_2531.urp_Tiles[bitcast<i32>(u_xlatu34.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati65 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2531.urp_Tiles[bitcast<i32>(u_xlatu34.x)].zx)));
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati65) | bitcast<vec2u>(u_xlati11)));
      u_xlati34.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati90 = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.y)));
      u_xlati34.x = bitcast<i32>((bitcast<u32>(u_xlati34.x) | bitcast<u32>(u_xlati90)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_2341.urp_ZBins[bitcast<i32>(u_xlatu34.z)].wy))).xy, u_xlati10.zw);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_2341.urp_ZBins[bitcast<i32>(u_xlatu34.z)].zx)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xy) | bitcast<vec2u>(u_xlati11))).xy, u_xlati10.zw);
      u_xlati88 = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati10.x)));
      u_xlati90 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati10.y)));
      u_xlati88 = bitcast<i32>((bitcast<u32>(u_xlati88) | bitcast<u32>(u_xlati90)));
      u_xlati34.x = bitcast<i32>((bitcast<u32>(u_xlati88) & bitcast<u32>(u_xlati34.x)));
      u_xlati88 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu3.w) & 31i)));
      u_xlati34.x = bitcast<i32>((bitcast<u32>(u_xlati88) & bitcast<u32>(u_xlati34.x)));
      u_xlati86 = (bitcast<i32>(u_xlatu86) << bitcast<u32>(5i));
      u_xlatu86 = (u_xlatu83 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati86)))));
      u_xlatu86 = min(u_xlatu86, 31u);
      u_xlatu86 = (bitcast<u32>(-(bitcast<i32>(u_xlatu86))) + 31u);
      u_xlatu86 = (4294967295u >> (u_xlatu86 & 31u));
      u_xlatu3.x = (u_xlatu86 & bitcast<u32>(u_xlati34.x));
      u_xlati86 = (bitcast<i32>(u_xlatu3.w) + 32i);
      u_xlatu3.w = (bitcast<u32>(u_xlati86) & 4294967264u);
    }
    u_xlatu62.y = u_xlatu3.w;
    if ((u_xlatu3.x == 0u)) {
      break;
    }
    u_xlati83 = (0i - bitcast<i32>(u_xlatu3.x));
    u_xlatu83 = (bitcast<u32>(u_xlati83) & u_xlatu3.x);
    u_xlat83 = f32(u_xlatu83);
    u_xlatu83 = (bitcast<u32>(u_xlat83) >> 23u);
    u_xlati83 = (bitcast<i32>(u_xlatu83) + -127i);
    u_xlati86 = (1i << bitcast<u32>((u_xlati83 & 31i)));
    u_xlatu62.x = (u_xlatu3.x ^ bitcast<u32>(u_xlati86));
    u_xlati86 = (bitcast<i32>(u_xlatu62.y) + -32i);
    u_xlati86 = bitcast<i32>((bitcast<u32>(u_xlati86) & 65504u));
    u_xlati83 = (u_xlati83 + u_xlati86);
    u_xlati83 = (bitcast<i32>(u_xlatu34.y) + u_xlati83);
    u_xlat10 = vec4f((((-(vs_TEXCOORD0) * x_3399.x_AdditionalLightsPosition[u_xlati83].www) + x_3399.x_AdditionalLightsPosition[u_xlati83].xyz)).xyz, u_xlat10.w);
    u_xlat86 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat86 = max(u_xlat86, 0.00006103515625f);
    u_xlat34 = inverseSqrt(u_xlat86);
    u_xlat11 = vec4f(((vec3f(u_xlat34) * u_xlat10.xyz)).xyz, u_xlat11.w);
    u_xlat88 = (1.0f / u_xlat86);
    u_xlat86 = (u_xlat86 * x_3399.x_AdditionalLightsAttenuation[u_xlati83].x);
    u_xlat86 = ((-(u_xlat86) * u_xlat86) + 1.0f);
    u_xlat86 = max(u_xlat86, 0.0f);
    u_xlat86 = (u_xlat86 * u_xlat86);
    u_xlat86 = (u_xlat86 * u_xlat88);
    u_xlat88 = dot(x_3399.x_AdditionalLightsSpotDir[u_xlati83].xyz, u_xlat11.xyz);
    u_xlat88 = ((u_xlat88 * x_3399.x_AdditionalLightsAttenuation[u_xlati83].z) + x_3399.x_AdditionalLightsAttenuation[u_xlati83].w);
    u_xlat88 = clamp(u_xlat88, 0.0f, 1.0f);
    u_xlat88 = (u_xlat88 * u_xlat88);
    u_xlat86 = (u_xlat86 * u_xlat88);
    u_xlatb88 = (u_xlati83 < 0i);
    u_xlati90 = i32(x_650.x_AdditionalShadowParams[u_xlati83].w);
    u_xlati88 = select(u_xlati90, -1i, u_xlatb88);
    u_xlatb90 = (u_xlati88 >= 0i);
    if (u_xlatb90) {
      u_xlatb90 = any(!((vec4f() == vec4f(x_650.x_AdditionalShadowParams[u_xlati83].z))));
      if (u_xlatb90) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb90 = (u_xlatb12.y & u_xlatb12.x);
        let x_5469 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_5469.xy, u_xlatb12.z, x_5469.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat91 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_5486 = u_xlat12.y;
        } else {
          x_5486 = u_xlat91;
        }
        u_xlat91 = x_5486;
        if (u_xlatb90) {
          x_5495 = u_xlat12.x;
        } else {
          x_5495 = u_xlat91;
        }
        u_xlat90 = x_5495;
        u_xlati90 = i32(u_xlat90);
        u_xlati88 = (u_xlati88 + u_xlati90);
      }
      u_xlati88 = (u_xlati88 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati88 + 1i)]);
      u_xlat12 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati88] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati88 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_650.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati88 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      u_xlatb88 = (0.0f < x_650.x_AdditionalShadowParams[u_xlati83].y);
      if (u_xlatb88) {
        u_xlatb88 = (1.0f == x_650.x_AdditionalShadowParams[u_xlati83].y);
        if (u_xlatb88) {
          u_xlat13 = (u_xlat12.xyxy + x_650.x_AdditionalShadowOffset0);
          let x_5568 = u_xlat13.xy;
          txVec60 = vec3f(x_5568.x, x_5568.y, u_xlat12.z);
          u_xlat14.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_5583 = u_xlat13.zw;
          txVec61 = vec3f(x_5583.x, x_5583.y, u_xlat12.z);
          u_xlat14.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat13 = (u_xlat12.xyxy + x_650.x_AdditionalShadowOffset1);
          let x_5603 = u_xlat13.xy;
          txVec62 = vec3f(x_5603.x, x_5603.y, u_xlat12.z);
          u_xlat14.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_5618 = u_xlat13.zw;
          txVec63 = vec3f(x_5618.x, x_5618.y, u_xlat12.z);
          u_xlat14.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat88 = dot(u_xlat14, x_927);
        } else {
          u_xlatb90 = (2.0f == x_650.x_AdditionalShadowParams[u_xlati83].y);
          if (u_xlatb90) {
            u_xlat13 = vec4f((((u_xlat12.xy * x_650.x_AdditionalShadowmapSize.zw) + x_943)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_650.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_966);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_5675 = (u_xlat15.yw * x_977);
            u_xlat14 = vec4f(x_5675.x, u_xlat14.y, x_5675.y, u_xlat14.w);
            u_xlat15 = vec4f((((u_xlat15.xz * x_943) + -(u_xlat67))).xy, u_xlat15.zw);
            u_xlat69 = (-(u_xlat67) + x_772);
            u_xlat16 = vec4f(min(u_xlat67, vec2f()).xy, u_xlat16.zw);
            u_xlat16 = vec4f((((-(u_xlat16.xy) * u_xlat16.xy) + u_xlat69)).xy, u_xlat16.zw);
            u_xlat67 = max(u_xlat67, vec2f());
            u_xlat67 = ((-(u_xlat67) * u_xlat67) + u_xlat14.yw);
            u_xlat16 = vec4f(((u_xlat16.xy + x_772)).xy, u_xlat16.zw);
            u_xlat67 = (u_xlat67 + x_772);
            u_xlat17 = vec4f(((u_xlat15.xy * x_1029)).xy, u_xlat17.zw);
            u_xlat15 = vec4f(((u_xlat69 * x_1029)).xy, u_xlat15.zw);
            u_xlat16 = vec4f(((u_xlat16.xy * x_1029)).xy, u_xlat16.zw);
            u_xlat18 = vec4f(((u_xlat67 * x_1029)).xy, u_xlat18.zw);
            u_xlat67 = (u_xlat14.yw * x_1029);
            u_xlat17.z = u_xlat16.x;
            u_xlat17.w = u_xlat67.x;
            u_xlat15.z = u_xlat18.x;
            u_xlat15.w = u_xlat14.x;
            u_xlat19 = (u_xlat15.zwxz + u_xlat17.zwxz);
            u_xlat16.z = u_xlat17.y;
            u_xlat16.w = u_xlat67.y;
            u_xlat18.z = u_xlat15.y;
            u_xlat18.w = u_xlat14.z;
            u_xlat14 = vec4f(((u_xlat16.zyw + u_xlat18.zyw)).xyz, u_xlat14.w);
            u_xlat15 = vec4f(((u_xlat15.xzw / u_xlat19.zwy)).xyz, u_xlat15.w);
            u_xlat15 = vec4f(((u_xlat15.xyz + x_1099)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat18.zyw / u_xlat14.xyz)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_1099)).xyz, u_xlat16.w);
            u_xlat15 = vec4f(((u_xlat15.yxz * x_650.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xyz * x_650.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat16.w);
            u_xlat15.w = u_xlat16.x;
            u_xlat17 = ((u_xlat13.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat15.ywxw);
            u_xlat67 = ((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat15.zw);
            u_xlat16.w = u_xlat15.y;
            let x_5842 = u_xlat16.yz;
            u_xlat15 = vec4f(u_xlat15.x, x_5842.x, u_xlat15.z, x_5842.y);
            u_xlat18 = ((u_xlat13.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat16 = ((u_xlat13.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.wywz);
            u_xlat15 = ((u_xlat13.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xwzw);
            u_xlat20 = (u_xlat14.xxxy * u_xlat19.zwyz);
            u_xlat21 = (u_xlat14.yyzz * u_xlat19);
            u_xlat90 = (u_xlat14.z * u_xlat19.y);
            let x_5888 = u_xlat17.xy;
            txVec64 = vec3f(x_5888.x, x_5888.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_5902 = u_xlat17.zw;
            txVec65 = vec3f(x_5902.x, x_5902.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat92 = (u_xlat92 * u_xlat20.y);
            u_xlat91 = ((u_xlat20.x * u_xlat91) + u_xlat92);
            txVec66 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat91 = ((u_xlat20.z * u_xlat92) + u_xlat91);
            let x_5945 = u_xlat16.xy;
            txVec67 = vec3f(x_5945.x, x_5945.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat91 = ((u_xlat20.w * u_xlat92) + u_xlat91);
            let x_5965 = u_xlat18.xy;
            txVec68 = vec3f(x_5965.x, x_5965.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat91 = ((u_xlat21.x * u_xlat92) + u_xlat91);
            let x_5985 = u_xlat18.zw;
            txVec69 = vec3f(x_5985.x, x_5985.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat91 = ((u_xlat21.y * u_xlat92) + u_xlat91);
            let x_6005 = u_xlat16.zw;
            txVec70 = vec3f(x_6005.x, x_6005.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat91 = ((u_xlat21.z * u_xlat92) + u_xlat91);
            let x_6025 = u_xlat15.xy;
            txVec71 = vec3f(x_6025.x, x_6025.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat91 = ((u_xlat21.w * u_xlat92) + u_xlat91);
            let x_6045 = u_xlat15.zw;
            txVec72 = vec3f(x_6045.x, x_6045.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat88 = ((u_xlat90 * u_xlat92) + u_xlat91);
          } else {
            u_xlat13 = vec4f((((u_xlat12.xy * x_650.x_AdditionalShadowmapSize.zw) + x_943)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_650.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_966);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_6097 = (u_xlat15.yw * x_1432);
            u_xlat16 = vec4f(u_xlat16.x, x_6097.x, u_xlat16.z, x_6097.y);
            let x_6105 = ((u_xlat15.xz * x_943) + -(u_xlat67));
            u_xlat14 = vec4f(x_6105.x, u_xlat14.y, x_6105.y, u_xlat14.w);
            u_xlat15 = vec4f(((-(u_xlat67) + x_772)).xy, u_xlat15.zw);
            u_xlat69 = min(u_xlat67, vec2f());
            u_xlat15 = vec4f((((-(u_xlat69) * u_xlat69) + u_xlat15.xy)).xy, u_xlat15.zw);
            u_xlat69 = max(u_xlat67, vec2f());
            let x_6133 = ((-(u_xlat69) * u_xlat69) + u_xlat14.yw);
            u_xlat41 = vec3f(x_6133.x, u_xlat41.y, x_6133.y);
            u_xlat15 = vec4f(((u_xlat15.xy + x_1474)).xy, u_xlat15.zw);
            let x_6143 = (u_xlat41.xz + x_1474);
            u_xlat14 = vec4f(u_xlat14.x, x_6143.x, u_xlat14.z, x_6143.y);
            u_xlat17.z = (u_xlat14.y * 0.08163200318813323975f);
            u_xlat18 = vec4f(((u_xlat14.zxw * x_1490)).xyz, u_xlat18.w);
            u_xlat14 = vec4f(((u_xlat15.xy * x_1496)).xy, u_xlat14.zw);
            u_xlat17.x = u_xlat18.y;
            let x_6166 = ((u_xlat67.xx * x_1506) + x_1509);
            u_xlat17 = vec4f(u_xlat17.x, x_6166.x, u_xlat17.z, x_6166.y);
            let x_6172 = ((u_xlat67.xx * x_1506) + x_1516);
            u_xlat15 = vec4f(x_6172.x, u_xlat15.y, x_6172.y, u_xlat15.w);
            u_xlat15.y = u_xlat14.x;
            u_xlat15.w = u_xlat16.y;
            u_xlat17 = (u_xlat15 + u_xlat17);
            let x_6187 = ((u_xlat67.yy * x_1506) + x_1509);
            u_xlat18 = vec4f(u_xlat18.x, x_6187.x, u_xlat18.z, x_6187.y);
            let x_6193 = ((u_xlat67.yy * x_1506) + x_1516);
            u_xlat16 = vec4f(x_6193.x, u_xlat16.y, x_6193.y, u_xlat16.w);
            u_xlat16.y = u_xlat14.y;
            u_xlat14 = (u_xlat16 + u_xlat18);
            u_xlat15 = (u_xlat15 / u_xlat17);
            u_xlat15 = (u_xlat15 + x_1554);
            u_xlat16 = (u_xlat16 / u_xlat14);
            u_xlat16 = (u_xlat16 + x_1554);
            u_xlat15 = (u_xlat15.wxyz * x_650.x_AdditionalShadowmapSize.xxxx);
            u_xlat16 = (u_xlat16.xwyz * x_650.x_AdditionalShadowmapSize.yyyy);
            let x_6225 = u_xlat15.yzw;
            u_xlat18 = vec4f(x_6225.x, u_xlat18.y, x_6225.yz);
            u_xlat18.y = u_xlat16.x;
            u_xlat19 = ((u_xlat13.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat67 = ((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.y = u_xlat18.y;
            u_xlat18.y = u_xlat16.z;
            u_xlat20 = ((u_xlat13.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat21 = vec4f((((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat18.wy)).xy, u_xlat21.zw);
            u_xlat15.z = u_xlat18.y;
            u_xlat22 = ((u_xlat13.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyxz);
            u_xlat18.y = u_xlat16.w;
            u_xlat23 = ((u_xlat13.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat42 = ((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.w = u_xlat18.y;
            u_xlat75 = ((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat15.xw);
            let x_6323 = u_xlat18.xzw;
            u_xlat16 = vec4f(x_6323.x, u_xlat16.y, x_6323.yz);
            u_xlat18 = ((u_xlat13.xyxy * x_650.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat70 = ((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat16.x = u_xlat15.x;
            u_xlat13 = vec4f((((u_xlat13.xy * x_650.x_AdditionalShadowmapSize.xy) + u_xlat16.xy)).xy, u_xlat13.zw);
            u_xlat24 = (u_xlat14.xxxx * u_xlat17);
            u_xlat25 = (u_xlat14.yyyy * u_xlat17);
            u_xlat26 = (u_xlat14.zzzz * u_xlat17);
            u_xlat14 = (u_xlat14.wwww * u_xlat17);
            let x_6378 = u_xlat19.xy;
            txVec73 = vec3f(x_6378.x, x_6378.y, u_xlat12.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_6392 = u_xlat19.zw;
            txVec74 = vec3f(x_6392.x, x_6392.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat91 = (u_xlat91 * u_xlat24.y);
            u_xlat90 = ((u_xlat24.x * u_xlat90) + u_xlat91);
            txVec75 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat90 = ((u_xlat24.z * u_xlat91) + u_xlat90);
            let x_6435 = u_xlat22.xy;
            txVec76 = vec3f(x_6435.x, x_6435.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat90 = ((u_xlat24.w * u_xlat91) + u_xlat90);
            let x_6455 = u_xlat20.xy;
            txVec77 = vec3f(x_6455.x, x_6455.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat90 = ((u_xlat25.x * u_xlat91) + u_xlat90);
            let x_6475 = u_xlat20.zw;
            txVec78 = vec3f(x_6475.x, x_6475.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat90 = ((u_xlat25.y * u_xlat91) + u_xlat90);
            let x_6495 = u_xlat21.xy;
            txVec79 = vec3f(x_6495.x, x_6495.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat90 = ((u_xlat25.z * u_xlat91) + u_xlat90);
            let x_6515 = u_xlat22.zw;
            txVec80 = vec3f(x_6515.x, x_6515.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat90 = ((u_xlat25.w * u_xlat91) + u_xlat90);
            let x_6535 = u_xlat23.xy;
            txVec81 = vec3f(x_6535.x, x_6535.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat90 = ((u_xlat26.x * u_xlat91) + u_xlat90);
            let x_6555 = u_xlat23.zw;
            txVec82 = vec3f(x_6555.x, x_6555.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat90 = ((u_xlat26.y * u_xlat91) + u_xlat90);
            txVec83 = vec3f(u_xlat42.x, u_xlat42.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat90 = ((u_xlat26.z * u_xlat91) + u_xlat90);
            txVec84 = vec3f(u_xlat75.x, u_xlat75.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat90 = ((u_xlat26.w * u_xlat91) + u_xlat90);
            let x_6613 = u_xlat18.xy;
            txVec85 = vec3f(x_6613.x, x_6613.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat90 = ((u_xlat14.x * u_xlat91) + u_xlat90);
            let x_6633 = u_xlat18.zw;
            txVec86 = vec3f(x_6633.x, x_6633.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat90 = ((u_xlat14.y * u_xlat91) + u_xlat90);
            txVec87 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat90 = ((u_xlat14.z * u_xlat91) + u_xlat90);
            let x_6672 = u_xlat13.xy;
            txVec88 = vec3f(x_6672.x, x_6672.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat88 = ((u_xlat14.w * u_xlat91) + u_xlat90);
          }
        }
      } else {
        let x_6693 = u_xlat12.xy;
        txVec89 = vec3f(x_6693.x, x_6693.y, u_xlat12.z);
        u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat90 = (1.0f + -(x_650.x_AdditionalShadowParams[u_xlati83].x));
      u_xlat88 = ((u_xlat88 * x_650.x_AdditionalShadowParams[u_xlati83].x) + u_xlat90);
      u_xlatb90 = (0.0f >= u_xlat12.z);
      u_xlatb91 = (u_xlat12.z >= 1.0f);
      u_xlatb90 = (u_xlatb90 | u_xlatb91);
      u_xlat88 = select(u_xlat88, 1.0f, u_xlatb90);
    } else {
      u_xlat88 = 1.0f;
    }
    u_xlat90 = (-(u_xlat88) + 1.0f);
    u_xlat88 = ((u_xlat82 * u_xlat90) + u_xlat88);
    u_xlati90 = bitcast<i32>((bitcast<u32>(x_696.unity_RenderingLayer.x) & bitcast<u32>(x_3399.x_AdditionalLightsLayerMasks[u_xlati83].el)));
    u_xlat86 = (u_xlat86 * u_xlat88);
    u_xlat88 = dot(u_xlat1.xyz, u_xlat11.xyz);
    u_xlat88 = clamp(u_xlat88, 0.0f, 1.0f);
    u_xlat86 = (u_xlat86 * u_xlat88);
    u_xlat12 = vec4f(((vec3f(u_xlat86) * x_3399.x_AdditionalLightsColor[u_xlati83].xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat34)) + u_xlat4)).xyz, u_xlat10.w);
    u_xlat83 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat83 = max(u_xlat83, 1.17549435e-38f);
    u_xlat83 = inverseSqrt(u_xlat83);
    u_xlat10 = vec4f(((vec3f(u_xlat83) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat83 = dot(u_xlat1.xyz, u_xlat10.xyz);
    u_xlat83 = clamp(u_xlat83, 0.0f, 1.0f);
    u_xlat86 = dot(u_xlat11.xyz, u_xlat10.xyz);
    u_xlat86 = clamp(u_xlat86, 0.0f, 1.0f);
    u_xlat83 = (u_xlat83 * u_xlat83);
    u_xlat83 = ((u_xlat83 * u_xlat30.x) + 1.00001001358032226562f);
    u_xlat86 = (u_xlat86 * u_xlat86);
    u_xlat83 = (u_xlat83 * u_xlat83);
    u_xlat86 = max(u_xlat86, 0.10000000149011611938f);
    u_xlat83 = (u_xlat83 * u_xlat86);
    u_xlat83 = (u_xlat87 * u_xlat83);
    u_xlat83 = (u_xlat85 / u_xlat83);
    u_xlat10 = vec4f((((vec3f(u_xlat83) * x_3347) + u_xlat27)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat9.xyz)).xyz, u_xlat10.w);
    if ((u_xlati90 != 0i)) {
      x_6853 = u_xlat10.xyz;
    } else {
      x_6853 = u_xlat9.xyz;
    }
    u_xlat9 = vec4f(x_6853.xyz, u_xlat9.w);
  }
  u_xlat0 = (u_xlat2 + u_xlat6.xyz);
  SV_Target0 = vec4f(((u_xlat9.xyz + u_xlat0)).xyz, SV_Target0.w);
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

@group(1) @binding(6) var<uniform> x_651 : LightShadows;

@group(1) @binding(5) var<uniform> x_697 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(7) var<uniform> x_2181 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_2506 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2683 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2926 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(7) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3556 : AdditionalLights;

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

const x_773 = vec2f(1.0f);

const x_934 = vec4f(0.25f);

const x_951 = vec2f(0.5f);

const x_974 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_985 = vec2f(0.07999999821186065674f);

const x_1037 = vec2f(0.15999999642372131348f);

const x_1107 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1441 = vec2f(0.04081600159406661987f);

const x_1483 = vec2f(2.0f);

const x_1499 = vec3f(0.08163200318813323975f);

const x_1505 = vec2f(0.08163200318813323975f);

const x_1515 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1518 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1525 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1563 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2642 = vec2u(2u);

const x_3097 = vec3f(1.0f);

const x_3487 = vec3f(0.03999999910593032837f);

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
  var u_xlat85 : f32;
  var u_xlat87 : f32;
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
  var x_2127 : f32;
  var u_xlat33 : f32;
  var u_xlat61 : vec2f;
  var x_2269 : f32;
  var x_2281 : vec3f;
  var u_xlatu7 : vec2u;
  var u_xlatu63 : vec2u;
  var u_xlati7 : i32;
  var x_2416 : f32;
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
  var x_2986 : f32;
  var x_3000 : f32;
  var x_3014 : f32;
  var u_xlat41 : vec3f;
  var x_3070 : vec3f;
  var u_xlat97 : f32;
  var u_xlatb42 : vec2<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_3129 : f32;
  var x_3142 : f32;
  var u_xlat69 : vec2f;
  var u_xlatu69 : vec2u;
  var u_xlati69 : i32;
  var x_3497 : vec3f;
  var u_xlatb5 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatb89 : bool;
  var u_xlati89 : i32;
  var x_3650 : i32;
  var u_xlatb11 : vec4<bool>;
  var x_3715 : f32;
  var x_3725 : f32;
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
  var x_5317 : f32;
  var x_5330 : f32;
  var x_5388 : f32;
  var x_5400 : vec3f;
  var x_5549 : vec3f;
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
  var x_6136 : f32;
  var x_6145 : f32;
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
  var x_7396 : f32;
  var u_xlatb69 : vec2<bool>;
  var x_7666 : f32;
  var x_7679 : f32;
  var x_7725 : f32;
  var x_7736 : vec3f;
  var x_7901 : vec3f;
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
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_651.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_651.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_651.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_651.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat5.w);
  u_xlat1.w = 1.0f;
  u_xlat6.x = dot(x_697.unity_SHAr, u_xlat1);
  u_xlat6.y = dot(x_697.unity_SHAg, u_xlat1);
  u_xlat6.z = dot(x_697.unity_SHAb, u_xlat1);
  u_xlat7 = (u_xlat1.yzzx * u_xlat1.xyzz);
  u_xlat8.x = dot(x_697.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_697.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_697.unity_SHBb, u_xlat7);
  u_xlat85 = (u_xlat1.y * u_xlat1.y);
  u_xlat85 = ((u_xlat1.x * u_xlat1.x) + -(u_xlat85));
  u_xlat7 = vec4f((((x_697.unity_SHC.xyz * vec3f(u_xlat85)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_776 = x_601.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((x_773 / vec2f(x_776.x, x_776.y))).xy, u_xlat7.zw);
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
  u_xlatb35.x = (0.0f < x_651.x_MainLightShadowParams.y);
  if (u_xlatb35.x) {
    u_xlatb35.x = (x_651.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb35.x) {
      u_xlat8 = (u_xlat5.xyxy + x_651.x_MainLightShadowOffset0);
      let x_861 = u_xlat8.xy;
      txVec0 = vec3f(x_861.x, x_861.y, u_xlat5.z);
      u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_884 = u_xlat8.zw;
      txVec1 = vec3f(x_884.x, x_884.y, u_xlat5.z);
      u_xlat9.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat8 = (u_xlat5.xyxy + x_651.x_MainLightShadowOffset1);
      let x_904 = u_xlat8.xy;
      txVec2 = vec3f(x_904.x, x_904.y, u_xlat5.z);
      u_xlat9.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_919 = u_xlat8.zw;
      txVec3 = vec3f(x_919.x, x_919.y, u_xlat5.z);
      u_xlat9.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat35.x = dot(u_xlat9, x_934);
    } else {
      u_xlatb91 = (x_651.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb91) {
        u_xlat8 = vec4f((((u_xlat5.xy * x_651.x_MainLightShadowmapSize.zw) + x_951)).xy, u_xlat8.zw);
        u_xlat8 = vec4f(floor(u_xlat8.xy).xy, u_xlat8.zw);
        u_xlat64 = ((u_xlat5.xy * x_651.x_MainLightShadowmapSize.zw) + -(u_xlat8.xy));
        u_xlat9 = (u_xlat64.xxyy + x_974);
        u_xlat10 = (u_xlat9.xxzz * u_xlat9.xxzz);
        let x_986 = (u_xlat10.yw * x_985);
        u_xlat9 = vec4f(x_986.x, u_xlat9.y, x_986.y, u_xlat9.w);
        u_xlat10 = vec4f((((u_xlat10.xz * x_951) + -(u_xlat64))).xy, u_xlat10.zw);
        u_xlat66 = (-(u_xlat64) + x_773);
        u_xlat11 = vec4f(min(u_xlat64, vec2f()).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat66)).xy, u_xlat11.zw);
        u_xlat64 = max(u_xlat64, vec2f());
        u_xlat64 = ((-(u_xlat64) * u_xlat64) + u_xlat9.yw);
        u_xlat11 = vec4f(((u_xlat11.xy + x_773)).xy, u_xlat11.zw);
        u_xlat64 = (u_xlat64 + x_773);
        u_xlat12 = vec4f(((u_xlat10.xy * x_1037)).xy, u_xlat12.zw);
        u_xlat10 = vec4f(((u_xlat66 * x_1037)).xy, u_xlat10.zw);
        u_xlat11 = vec4f(((u_xlat11.xy * x_1037)).xy, u_xlat11.zw);
        u_xlat13 = vec4f(((u_xlat64 * x_1037)).xy, u_xlat13.zw);
        u_xlat64 = (u_xlat9.yw * x_1037);
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
        u_xlat10 = vec4f(((u_xlat10.xyz + x_1107)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat13.zyw / u_xlat9.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_1107)).xyz, u_xlat11.w);
        u_xlat10 = vec4f(((u_xlat10.yxz * x_651.x_MainLightShadowmapSize.xxx)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_651.x_MainLightShadowmapSize.yyy)).xyz, u_xlat11.w);
        u_xlat10.w = u_xlat11.x;
        u_xlat12 = ((u_xlat8.xyxy * x_651.x_MainLightShadowmapSize.xyxy) + u_xlat10.ywxw);
        u_xlat64 = ((u_xlat8.xy * x_651.x_MainLightShadowmapSize.xy) + u_xlat10.zw);
        u_xlat11.w = u_xlat10.y;
        let x_1164 = u_xlat11.yz;
        u_xlat10 = vec4f(u_xlat10.x, x_1164.x, u_xlat10.z, x_1164.y);
        u_xlat13 = ((u_xlat8.xyxy * x_651.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyzy);
        u_xlat11 = ((u_xlat8.xyxy * x_651.x_MainLightShadowmapSize.xyxy) + u_xlat11.wywz);
        u_xlat10 = ((u_xlat8.xyxy * x_651.x_MainLightShadowmapSize.xyxy) + u_xlat10.xwzw);
        u_xlat15 = (u_xlat9.xxxy * u_xlat14.zwyz);
        u_xlat16 = (u_xlat9.yyzz * u_xlat14);
        u_xlat91 = (u_xlat9.z * u_xlat14.y);
        let x_1213 = u_xlat12.xy;
        txVec4 = vec3f(x_1213.x, x_1213.y, u_xlat5.z);
        u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1228 = u_xlat12.zw;
        txVec5 = vec3f(x_1228.x, x_1228.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat36 = (u_xlat36 * u_xlat15.y);
        u_xlat8.x = ((u_xlat15.x * u_xlat8.x) + u_xlat36);
        txVec6 = vec3f(u_xlat64.x, u_xlat64.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat8.x = ((u_xlat15.z * u_xlat36) + u_xlat8.x);
        let x_1276 = u_xlat11.xy;
        txVec7 = vec3f(x_1276.x, x_1276.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat8.x = ((u_xlat15.w * u_xlat36) + u_xlat8.x);
        let x_1298 = u_xlat13.xy;
        txVec8 = vec3f(x_1298.x, x_1298.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat8.x = ((u_xlat16.x * u_xlat36) + u_xlat8.x);
        let x_1320 = u_xlat13.zw;
        txVec9 = vec3f(x_1320.x, x_1320.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat8.x = ((u_xlat16.y * u_xlat36) + u_xlat8.x);
        let x_1342 = u_xlat11.zw;
        txVec10 = vec3f(x_1342.x, x_1342.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat8.x = ((u_xlat16.z * u_xlat36) + u_xlat8.x);
        let x_1364 = u_xlat10.xy;
        txVec11 = vec3f(x_1364.x, x_1364.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat8.x = ((u_xlat16.w * u_xlat36) + u_xlat8.x);
        let x_1386 = u_xlat10.zw;
        txVec12 = vec3f(x_1386.x, x_1386.y, u_xlat5.z);
        u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat35.x = ((u_xlat91 * u_xlat36) + u_xlat8.x);
      } else {
        u_xlat8 = vec4f((((u_xlat5.xy * x_651.x_MainLightShadowmapSize.zw) + x_951)).xy, u_xlat8.zw);
        u_xlat8 = vec4f(floor(u_xlat8.xy).xy, u_xlat8.zw);
        u_xlat64 = ((u_xlat5.xy * x_651.x_MainLightShadowmapSize.zw) + -(u_xlat8.xy));
        u_xlat9 = (u_xlat64.xxyy + x_974);
        u_xlat10 = (u_xlat9.xxzz * u_xlat9.xxzz);
        let x_1442 = (u_xlat10.yw * x_1441);
        u_xlat11 = vec4f(u_xlat11.x, x_1442.x, u_xlat11.z, x_1442.y);
        let x_1450 = ((u_xlat10.xz * x_951) + -(u_xlat64));
        u_xlat9 = vec4f(x_1450.x, u_xlat9.y, x_1450.y, u_xlat9.w);
        u_xlat10 = vec4f(((-(u_xlat64) + x_773)).xy, u_xlat10.zw);
        u_xlat66 = min(u_xlat64, vec2f());
        u_xlat10 = vec4f((((-(u_xlat66) * u_xlat66) + u_xlat10.xy)).xy, u_xlat10.zw);
        u_xlat66 = max(u_xlat64, vec2f());
        let x_1478 = ((-(u_xlat66) * u_xlat66) + u_xlat9.yw);
        u_xlat37 = vec3f(x_1478.x, u_xlat37.y, x_1478.y);
        u_xlat10 = vec4f(((u_xlat10.xy + x_1483)).xy, u_xlat10.zw);
        let x_1489 = (u_xlat37.xz + x_1483);
        u_xlat9 = vec4f(u_xlat9.x, x_1489.x, u_xlat9.z, x_1489.y);
        u_xlat12.z = (u_xlat9.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat9.zxw * x_1499)).xyz, u_xlat13.w);
        u_xlat9 = vec4f(((u_xlat10.xy * x_1505)).xy, u_xlat9.zw);
        u_xlat12.x = u_xlat13.y;
        let x_1519 = ((u_xlat64.xx * x_1515) + x_1518);
        u_xlat12 = vec4f(u_xlat12.x, x_1519.x, u_xlat12.z, x_1519.y);
        let x_1526 = ((u_xlat64.xx * x_1515) + x_1525);
        u_xlat10 = vec4f(x_1526.x, u_xlat10.y, x_1526.y, u_xlat10.w);
        u_xlat10.y = u_xlat9.x;
        u_xlat10.w = u_xlat11.y;
        u_xlat12 = (u_xlat10 + u_xlat12);
        let x_1541 = ((u_xlat64.yy * x_1515) + x_1518);
        u_xlat13 = vec4f(u_xlat13.x, x_1541.x, u_xlat13.z, x_1541.y);
        let x_1547 = ((u_xlat64.yy * x_1515) + x_1525);
        u_xlat11 = vec4f(x_1547.x, u_xlat11.y, x_1547.y, u_xlat11.w);
        u_xlat11.y = u_xlat9.y;
        u_xlat9 = (u_xlat11 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat12);
        u_xlat10 = (u_xlat10 + x_1563);
        u_xlat11 = (u_xlat11 / u_xlat9);
        u_xlat11 = (u_xlat11 + x_1563);
        u_xlat10 = (u_xlat10.wxyz * x_651.x_MainLightShadowmapSize.xxxx);
        u_xlat11 = (u_xlat11.xwyz * x_651.x_MainLightShadowmapSize.yyyy);
        let x_1583 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_1583.x, u_xlat13.y, x_1583.yz);
        u_xlat13.y = u_xlat11.x;
        u_xlat14 = ((u_xlat8.xyxy * x_651.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat64 = ((u_xlat8.xy * x_651.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat11.z;
        u_xlat15 = ((u_xlat8.xyxy * x_651.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat16 = vec4f((((u_xlat8.xy * x_651.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat16.zw);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat8.xyxy * x_651.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat11.w;
        u_xlat18 = ((u_xlat8.xyxy * x_651.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat38 = ((u_xlat8.xy * x_651.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.w = u_xlat13.y;
        u_xlat72 = ((u_xlat8.xy * x_651.x_MainLightShadowmapSize.xy) + u_xlat10.xw);
        let x_1683 = u_xlat13.xzw;
        u_xlat11 = vec4f(x_1683.x, u_xlat11.y, x_1683.yz);
        u_xlat13 = ((u_xlat8.xyxy * x_651.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat67 = ((u_xlat8.xy * x_651.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat11.x = u_xlat10.x;
        u_xlat8 = vec4f((((u_xlat8.xy * x_651.x_MainLightShadowmapSize.xy) + u_xlat11.xy)).xy, u_xlat8.zw);
        u_xlat19 = (u_xlat9.xxxx * u_xlat12);
        u_xlat20 = (u_xlat9.yyyy * u_xlat12);
        u_xlat21 = (u_xlat9.zzzz * u_xlat12);
        u_xlat9 = (u_xlat9.wwww * u_xlat12);
        let x_1740 = u_xlat14.xy;
        txVec13 = vec3f(x_1740.x, x_1740.y, u_xlat5.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1754 = u_xlat14.zw;
        txVec14 = vec3f(x_1754.x, x_1754.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat10.x = (u_xlat10.x * u_xlat19.y);
        u_xlat91 = ((u_xlat19.x * u_xlat91) + u_xlat10.x);
        txVec15 = vec3f(u_xlat64.x, u_xlat64.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat91 = ((u_xlat19.z * u_xlat64.x) + u_xlat91);
        let x_1803 = u_xlat17.xy;
        txVec16 = vec3f(x_1803.x, x_1803.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat91 = ((u_xlat19.w * u_xlat64.x) + u_xlat91);
        let x_1825 = u_xlat15.xy;
        txVec17 = vec3f(x_1825.x, x_1825.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat91 = ((u_xlat20.x * u_xlat64.x) + u_xlat91);
        let x_1847 = u_xlat15.zw;
        txVec18 = vec3f(x_1847.x, x_1847.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat91 = ((u_xlat20.y * u_xlat64.x) + u_xlat91);
        let x_1869 = u_xlat16.xy;
        txVec19 = vec3f(x_1869.x, x_1869.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat91 = ((u_xlat20.z * u_xlat64.x) + u_xlat91);
        let x_1891 = u_xlat17.zw;
        txVec20 = vec3f(x_1891.x, x_1891.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat91 = ((u_xlat20.w * u_xlat64.x) + u_xlat91);
        let x_1913 = u_xlat18.xy;
        txVec21 = vec3f(x_1913.x, x_1913.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat91 = ((u_xlat21.x * u_xlat64.x) + u_xlat91);
        let x_1935 = u_xlat18.zw;
        txVec22 = vec3f(x_1935.x, x_1935.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat91 = ((u_xlat21.y * u_xlat64.x) + u_xlat91);
        txVec23 = vec3f(u_xlat38.x, u_xlat38.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat91 = ((u_xlat21.z * u_xlat64.x) + u_xlat91);
        txVec24 = vec3f(u_xlat72.x, u_xlat72.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat91 = ((u_xlat21.w * u_xlat64.x) + u_xlat91);
        let x_1999 = u_xlat13.xy;
        txVec25 = vec3f(x_1999.x, x_1999.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat91 = ((u_xlat9.x * u_xlat64.x) + u_xlat91);
        let x_2021 = u_xlat13.zw;
        txVec26 = vec3f(x_2021.x, x_2021.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat91 = ((u_xlat9.y * u_xlat64.x) + u_xlat91);
        txVec27 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat5.z);
        u_xlat64.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat91 = ((u_xlat9.z * u_xlat64.x) + u_xlat91);
        let x_2064 = u_xlat8.xy;
        txVec28 = vec3f(x_2064.x, x_2064.y, u_xlat5.z);
        u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat35.x = ((u_xlat9.w * u_xlat8.x) + u_xlat91);
      }
    }
  } else {
    let x_2088 = u_xlat5.xy;
    txVec29 = vec3f(x_2088.x, x_2088.y, u_xlat5.z);
    u_xlat35.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat5.x = (-(x_651.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat35.x * x_651.x_MainLightShadowParams.x) + u_xlat5.x);
  u_xlatb33 = (0.0f >= u_xlat5.z);
  u_xlatb61 = (u_xlat5.z >= 1.0f);
  u_xlatb33 = (u_xlatb61 | u_xlatb33);
  if (u_xlatb33) {
    x_2127 = 1.0f;
  } else {
    x_2127 = u_xlat5.x;
  }
  u_xlat5.x = x_2127;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_601.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat33 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat61.x = ((u_xlat33 * x_651.x_MainLightShadowParams.z) + x_651.x_MainLightShadowParams.w);
  u_xlat61.x = clamp(u_xlat61.x, 0.0f, 1.0f);
  u_xlat35.x = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat61.x * u_xlat35.x) + u_xlat5.x);
  u_xlatb61 = !((x_2181.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb61) {
    let x_2194 = (vs_TEXCOORD0.yy * x_2181.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy);
    u_xlat35 = vec3f(x_2194.x, u_xlat35.y, x_2194.y);
    let x_2205 = ((x_2181.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD0.xx) + u_xlat35.xz);
    u_xlat35 = vec3f(x_2205.x, u_xlat35.y, x_2205.y);
    let x_2216 = ((x_2181.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD0.zz) + u_xlat35.xz);
    u_xlat35 = vec3f(x_2216.x, u_xlat35.y, x_2216.y);
    let x_2224 = (u_xlat35.xz + x_2181.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy);
    u_xlat35 = vec3f(x_2224.x, u_xlat35.y, x_2224.y);
    let x_2230 = ((u_xlat35.xz * x_951) + x_951);
    u_xlat35 = vec3f(x_2230.x, u_xlat35.y, x_2230.y);
    let x_2241 = u_xlat35;
    let x_2244 = x_601.x_GlobalMipBias.x;
    let x_2245 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2241.xz, x_2244);
    u_xlat9 = x_2245;
    let x_2254 = vec4f(x_2181.x_MainLightCookieTextureFormat, x_2181.x_MainLightCookieTextureFormat, x_2181.x_MainLightCookieTextureFormat, x_2181.x_MainLightCookieTextureFormat);
    let x_2264 = ((vec4f(x_2254.x, x_2254.y, x_2254.z, x_2254.w) == vec4f(0.0f, 0.0f, 1.0f, 1.0f))).xz;
    u_xlatb35 = vec3<bool>(x_2264.x, u_xlatb35.y, x_2264.y);
    if (u_xlatb35.z) {
      x_2269 = u_xlat9.w;
    } else {
      x_2269 = u_xlat9.x;
    }
    u_xlat61.x = x_2269;
    if (u_xlatb35.x) {
      x_2281 = u_xlat9.xyz;
    } else {
      x_2281 = u_xlat61.xxx;
    }
    u_xlat9 = vec4f(x_2281.xyz, u_xlat9.w);
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
    x_2416 = u_xlat31.x;
  } else {
    x_2416 = u_xlat3.x;
  }
  u_xlat0.x = x_2416;
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
  let x_2485 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu31.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2492 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati35 = vec3i(vec2i(x_2485, x_2492).xy, u_xlati35.z);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_2506.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_2517 = ~(u_xlati35.xy);
  u_xlati35 = vec3i(x_2517.x, u_xlati35.y, x_2517.y);
  u_xlati64 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_2506.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
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
      let x_2632 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu94 = x_2632;
      u_xlatu13 = (vec4u(u_xlatu94) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> x_2642);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2653 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2660 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2667 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2674 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_2653, x_2660, x_2667, x_2674);
      u_xlati70 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2683.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2683.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_2715 = bitcast<vec2i>((bitcast<vec2u>(u_xlati70) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_2715.x, u_xlati14.y, x_2715.y);
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2506.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_2506.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
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
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_2926.urp_ReflProbes_BoxMin[u_xlati91].xyz))).xyz, u_xlat13.w);
    u_xlat14 = vec4f(((-(vs_TEXCOORD0) + x_2926.urp_ReflProbes_BoxMax[u_xlati91].xyz)).xyz, u_xlat14.w);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14.xyz).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_2926.urp_ReflProbes_BoxMax[u_xlati91].www)).xyz, u_xlat13.w);
    u_xlat94 = min(u_xlat13.z, u_xlat13.y);
    u_xlat94 = min(u_xlat94, u_xlat13.x);
    u_xlat94 = clamp(u_xlat94, 0.0f, 1.0f);
    u_xlat96 = (-(u_xlat31.x) + 1.0f);
    u_xlat94 = min(u_xlat94, u_xlat96);
    u_xlatb96 = (0.0f < x_2926.urp_ReflProbes_ProbePosition[u_xlati91].w);
    if (u_xlatb8.x) {
      x_2986 = x_2926.urp_ReflProbes_BoxMax[u_xlati91].x;
    } else {
      x_2986 = x_2926.urp_ReflProbes_BoxMin[u_xlati91].x;
    }
    u_xlat13.x = x_2986;
    if (u_xlatb8.y) {
      x_3000 = x_2926.urp_ReflProbes_BoxMax[u_xlati91].y;
    } else {
      x_3000 = x_2926.urp_ReflProbes_BoxMin[u_xlati91].y;
    }
    u_xlat13.y = x_3000;
    if (u_xlatb8.z) {
      x_3014 = x_2926.urp_ReflProbes_BoxMax[u_xlati91].z;
    } else {
      x_3014 = x_2926.urp_ReflProbes_BoxMin[u_xlati91].z;
    }
    u_xlat13.z = x_3014;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat10.xyz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat41 = (vs_TEXCOORD0 + -(x_2926.urp_ReflProbes_ProbePosition[u_xlati91].xyz));
    u_xlat13 = vec4f((((u_xlat10.xyz * u_xlat13.xxx) + u_xlat41)).xyz, u_xlat13.w);
    if (u_xlatb96) {
      x_3070 = u_xlat13.xyz;
    } else {
      x_3070 = u_xlat10.xyz;
    }
    u_xlat13 = vec4f(x_3070.xyz, u_xlat13.w);
    u_xlatu96 = u32(abs(x_2926.urp_ReflProbes_ProbePosition[u_xlati91].w));
    u_xlatu96 = (u_xlatu96 + 4294967295u);
    u_xlat96 = f32(u_xlatu96);
    u_xlat96 = min(u_xlat85, u_xlat96);
    u_xlat97 = dot(abs(u_xlat13.xyz), x_3097);
    u_xlat97 = max(u_xlat97, 0.00000099999999747524f);
    u_xlat97 = (1.0f / u_xlat97);
    u_xlat14 = vec4f(((vec3f(u_xlat97) * u_xlat13.zxy)).xyz, u_xlat14.w);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb42 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb42.x) {
      x_3129 = u_xlat14.x;
    } else {
      x_3129 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_3129;
    if (u_xlatb42.y) {
      x_3142 = u_xlat14.x;
    } else {
      x_3142 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_3142;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat97)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_951) + x_951)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat69.x = floor(u_xlat96);
    u_xlat69.y = (u_xlat69.x + 1.0f);
    u_xlat96 = (u_xlat96 + -(u_xlat69.x));
    u_xlatu69 = vec2u(u_xlat69);
    u_xlati69 = ((u_xlati91 * 7i) + bitcast<i32>(u_xlatu69.x));
    u_xlati91 = ((u_xlati91 * 7i) + bitcast<i32>(u_xlatu69.y));
    u_xlat69 = ((u_xlat13.xy * x_2926.urp_ReflProbes_MipScaleOffset[u_xlati69].xy) + x_2926.urp_ReflProbes_MipScaleOffset[u_xlati69].zw);
    u_xlat14 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat69, 0.0f).xyz.xyz, u_xlat14.w);
    u_xlat13 = vec4f((((u_xlat13.xy * x_2926.urp_ReflProbes_MipScaleOffset[u_xlati91].xy) + x_2926.urp_ReflProbes_MipScaleOffset[u_xlati91].zw)).xy, u_xlat13.zw);
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
  let x_3352 = ((vec2f(u_xlat87) * vec2f(u_xlat87)) + vec2f(-1.0f, 1.0f));
  u_xlat31 = vec3f(x_3352.x, u_xlat31.y, x_3352.y);
  u_xlat0.x = (1.0f / u_xlat31.z);
  u_xlat85 = (u_xlat89 + -0.03999999910593032837f);
  u_xlat85 = ((u_xlat61.x * u_xlat85) + 0.03999999910593032837f);
  u_xlat0.x = (u_xlat0.x * u_xlat85);
  u_xlat8 = vec4f(((u_xlat0.xxx * u_xlat12.xyz)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat28) + u_xlat8.xyz)).xyz, u_xlat6.w);
  u_xlati0 = bitcast<i32>((x_601.x_MainLightLayerMask & bitcast<u32>(x_697.unity_RenderingLayer.x)));
  u_xlat85 = dot(u_xlat1.xyz, x_601.x_MainLightPosition.xyz);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat85 = (u_xlat85 * u_xlat5.x);
  let x_3413 = (vec3f(u_xlat85) * u_xlat9.xyz);
  u_xlat5 = vec4f(x_3413.x, u_xlat5.y, x_3413.yz);
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
  u_xlat2 = ((vec3f(u_xlat85) * x_3487) + u_xlat28);
  u_xlat2 = (u_xlat5.xzw * u_xlat2);
  if ((u_xlati0 != 0i)) {
    x_3497 = u_xlat2;
  } else {
    x_3497 = vec3f();
  }
  u_xlat2 = x_3497;
  u_xlatu0 = min(u_xlatu35.y, 32u);
  u_xlat85 = ((u_xlat33 * x_651.x_AdditionalShadowFadeParams.x) + x_651.x_AdditionalShadowFadeParams.y);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  let x_3525 = vec4f(x_2181.x_AdditionalLightsCookieAtlasTextureFormat, x_2181.x_AdditionalLightsCookieAtlasTextureFormat, x_2181.x_AdditionalLightsCookieAtlasTextureFormat, x_2181.x_AdditionalLightsCookieAtlasTextureFormat);
  u_xlatb5 = ((vec4f(x_3525.x, x_3525.y, x_3525.z, x_3525.w) == vec4f(0.0f, 1.0f, 0.0f, 0.0f))).xy;
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu0)) {
    } else {
      break;
    }
    u_xlat9 = vec4f((((-(vs_TEXCOORD0) * x_3556.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3556.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat9.w);
    u_xlat87 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat87 = max(u_xlat87, 0.00006103515625f);
    u_xlat61.x = inverseSqrt(u_xlat87);
    u_xlat10 = vec4f(((u_xlat61.xxx * u_xlat9.xyz)).xyz, u_xlat10.w);
    u_xlat89 = (1.0f / u_xlat87);
    u_xlat87 = (u_xlat87 * x_3556.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat87 = ((-(u_xlat87) * u_xlat87) + 1.0f);
    u_xlat87 = max(u_xlat87, 0.0f);
    u_xlat87 = (u_xlat87 * u_xlat87);
    u_xlat87 = (u_xlat87 * u_xlat89);
    u_xlat89 = dot(x_3556.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat10.xyz);
    u_xlat89 = ((u_xlat89 * x_3556.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3556.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
    u_xlat89 = (u_xlat89 * u_xlat89);
    u_xlat87 = (u_xlat87 * u_xlat89);
    u_xlatb89 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati35.x = i32(x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    if (u_xlatb89) {
      x_3650 = -1i;
    } else {
      x_3650 = u_xlati35.x;
    }
    u_xlati89 = x_3650;
    u_xlatb35.x = (u_xlati89 >= 0i);
    if (u_xlatb35.x) {
      u_xlatb35.x = any(!((vec4f() == vec4f(x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb35.x) {
        u_xlatb11 = vec4<bool>(((abs(u_xlat10.zzyz) >= abs(u_xlat10.xyxx))).xyz.xyz, u_xlatb11.w);
        u_xlatb35.x = (u_xlatb11.y & u_xlatb11.x);
        let x_3698 = ((-(u_xlat10.zyzx) < vec4f())).xyw;
        u_xlatb11 = vec4<bool>(x_3698.xy, u_xlatb11.z, x_3698.z);
        u_xlat11.x = select(4.0f, 5.0f, u_xlatb11.x);
        u_xlat11.y = select(2.0f, 3.0f, u_xlatb11.y);
        u_xlat91 = select(0.0f, 1.0f, u_xlatb11.w);
        if (u_xlatb11.z) {
          x_3715 = u_xlat11.y;
        } else {
          x_3715 = u_xlat91;
        }
        u_xlat91 = x_3715;
        if (u_xlatb35.x) {
          x_3725 = u_xlat11.x;
        } else {
          x_3725 = u_xlat91;
        }
        u_xlat35.x = x_3725;
        u_xlati35.x = i32(u_xlat35.x);
        u_xlati89 = (u_xlati89 + u_xlati35.x);
      }
      u_xlati89 = (u_xlati89 << bitcast<u32>(2i));
      u_xlat11 = (vs_TEXCOORD0.yyyy * x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati89 + 1i)]);
      u_xlat11 = ((x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati89] * vs_TEXCOORD0.xxxx) + u_xlat11);
      u_xlat11 = ((x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati89 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat11);
      u_xlat11 = (u_xlat11 + x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati89 + 3i)]);
      u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat11.www)).xyz, u_xlat11.w);
      u_xlatb89 = (0.0f < x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb89) {
        u_xlatb89 = (1.0f == x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb89) {
          u_xlat12 = (u_xlat11.xyxy + x_651.x_AdditionalShadowOffset0);
          let x_3805 = u_xlat12.xy;
          txVec30 = vec3f(x_3805.x, x_3805.y, u_xlat11.z);
          u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_3821 = u_xlat12.zw;
          txVec31 = vec3f(x_3821.x, x_3821.y, u_xlat11.z);
          u_xlat13.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat12 = (u_xlat11.xyxy + x_651.x_AdditionalShadowOffset1);
          let x_3841 = u_xlat12.xy;
          txVec32 = vec3f(x_3841.x, x_3841.y, u_xlat11.z);
          u_xlat13.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_3856 = u_xlat12.zw;
          txVec33 = vec3f(x_3856.x, x_3856.y, u_xlat11.z);
          u_xlat13.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat89 = dot(u_xlat13, x_934);
        } else {
          u_xlatb35.x = (2.0f == x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb35.x) {
            let x_3889 = ((u_xlat11.xy * x_651.x_AdditionalShadowmapSize.zw) + x_951);
            u_xlat35 = vec3f(x_3889.x, u_xlat35.y, x_3889.y);
            let x_3894 = floor(u_xlat35.xz);
            u_xlat35 = vec3f(x_3894.x, u_xlat35.y, x_3894.y);
            u_xlat12 = vec4f((((u_xlat11.xy * x_651.x_AdditionalShadowmapSize.zw) + -(u_xlat35.xz))).xy, u_xlat12.zw);
            u_xlat13 = (u_xlat12.xxyy + x_974);
            u_xlat14 = (u_xlat13.xxzz * u_xlat13.xxzz);
            u_xlat68 = (u_xlat14.yw * x_985);
            let x_3927 = ((u_xlat14.xz * x_951) + -(u_xlat12.xy));
            u_xlat13 = vec4f(x_3927.x, u_xlat13.y, x_3927.y, u_xlat13.w);
            u_xlat14 = vec4f(((-(u_xlat12.xy) + x_773)).xy, u_xlat14.zw);
            u_xlat70 = min(u_xlat12.xy, vec2f());
            u_xlat70 = ((-(u_xlat70) * u_xlat70) + u_xlat14.xy);
            u_xlat12 = vec4f(max(u_xlat12.xy, vec2f()).xy, u_xlat12.zw);
            u_xlat12 = vec4f((((-(u_xlat12.xy) * u_xlat12.xy) + u_xlat13.yw)).xy, u_xlat12.zw);
            u_xlat70 = (u_xlat70 + x_773);
            u_xlat12 = vec4f(((u_xlat12.xy + x_773)).xy, u_xlat12.zw);
            u_xlat15 = vec4f(((u_xlat13.xz * x_1037)).xy, u_xlat15.zw);
            u_xlat16 = vec4f(((u_xlat14.xy * x_1037)).xy, u_xlat16.zw);
            u_xlat14 = vec4f(((u_xlat70 * x_1037)).xy, u_xlat14.zw);
            u_xlat17 = vec4f(((u_xlat12.xy * x_1037)).xy, u_xlat17.zw);
            u_xlat12 = vec4f(((u_xlat13.yw * x_1037)).xy, u_xlat12.zw);
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
            u_xlat14 = vec4f(((u_xlat14.xyz + x_1107)).xyz, u_xlat14.w);
            u_xlat15 = vec4f(((u_xlat17.zyw / u_xlat12.xyz)).xyz, u_xlat15.w);
            u_xlat15 = vec4f(((u_xlat15.xyz + x_1107)).xyz, u_xlat15.w);
            u_xlat14 = vec4f(((u_xlat14.yxz * x_651.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat14.w);
            u_xlat15 = vec4f(((u_xlat15.xyz * x_651.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat15.w);
            u_xlat14.w = u_xlat15.x;
            u_xlat16 = ((u_xlat35.xzxz * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat14.ywxw);
            u_xlat17 = vec4f((((u_xlat35.xz * x_651.x_AdditionalShadowmapSize.xy) + u_xlat14.zw)).xy, u_xlat17.zw);
            u_xlat15.w = u_xlat14.y;
            let x_4097 = u_xlat15.yz;
            u_xlat14 = vec4f(u_xlat14.x, x_4097.x, u_xlat14.z, x_4097.y);
            u_xlat18 = ((u_xlat35.xzxz * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xyzy);
            u_xlat15 = ((u_xlat35.xzxz * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat15.wywz);
            u_xlat14 = ((u_xlat35.xzxz * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xwzw);
            u_xlat19 = (u_xlat12.xxxy * u_xlat13.zwyz);
            u_xlat20 = (u_xlat12.yyzz * u_xlat13);
            u_xlat35.x = (u_xlat12.z * u_xlat13.y);
            let x_4144 = u_xlat16.xy;
            txVec34 = vec3f(x_4144.x, x_4144.y, u_xlat11.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_4158 = u_xlat16.zw;
            txVec35 = vec3f(x_4158.x, x_4158.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat92 = (u_xlat92 * u_xlat19.y);
            u_xlat91 = ((u_xlat19.x * u_xlat91) + u_xlat92);
            let x_4183 = u_xlat17.xy;
            txVec36 = vec3f(x_4183.x, x_4183.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat91 = ((u_xlat19.z * u_xlat92) + u_xlat91);
            let x_4203 = u_xlat15.xy;
            txVec37 = vec3f(x_4203.x, x_4203.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat91 = ((u_xlat19.w * u_xlat92) + u_xlat91);
            let x_4223 = u_xlat18.xy;
            txVec38 = vec3f(x_4223.x, x_4223.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat91 = ((u_xlat20.x * u_xlat92) + u_xlat91);
            let x_4243 = u_xlat18.zw;
            txVec39 = vec3f(x_4243.x, x_4243.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat91 = ((u_xlat20.y * u_xlat92) + u_xlat91);
            let x_4263 = u_xlat15.zw;
            txVec40 = vec3f(x_4263.x, x_4263.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat91 = ((u_xlat20.z * u_xlat92) + u_xlat91);
            let x_4283 = u_xlat14.xy;
            txVec41 = vec3f(x_4283.x, x_4283.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat91 = ((u_xlat20.w * u_xlat92) + u_xlat91);
            let x_4303 = u_xlat14.zw;
            txVec42 = vec3f(x_4303.x, x_4303.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat89 = ((u_xlat35.x * u_xlat92) + u_xlat91);
          } else {
            let x_4328 = ((u_xlat11.xy * x_651.x_AdditionalShadowmapSize.zw) + x_951);
            u_xlat35 = vec3f(x_4328.x, u_xlat35.y, x_4328.y);
            let x_4333 = floor(u_xlat35.xz);
            u_xlat35 = vec3f(x_4333.x, u_xlat35.y, x_4333.y);
            u_xlat12 = vec4f((((u_xlat11.xy * x_651.x_AdditionalShadowmapSize.zw) + -(u_xlat35.xz))).xy, u_xlat12.zw);
            u_xlat13 = (u_xlat12.xxyy + x_974);
            u_xlat14 = (u_xlat13.xxzz * u_xlat13.xxzz);
            let x_4358 = (u_xlat14.yw * x_1441);
            u_xlat15 = vec4f(u_xlat15.x, x_4358.x, u_xlat15.z, x_4358.y);
            u_xlat68 = ((u_xlat14.xz * x_951) + -(u_xlat12.xy));
            let x_4371 = (-(u_xlat12.xy) + x_773);
            u_xlat13 = vec4f(x_4371.x, u_xlat13.y, x_4371.y, u_xlat13.w);
            u_xlat14 = vec4f(min(u_xlat12.xy, vec2f()).xy, u_xlat14.zw);
            let x_4387 = ((-(u_xlat14.xy) * u_xlat14.xy) + u_xlat13.xz);
            u_xlat13 = vec4f(x_4387.x, u_xlat13.y, x_4387.y, u_xlat13.w);
            u_xlat14 = vec4f(max(u_xlat12.xy, vec2f()).xy, u_xlat14.zw);
            let x_4403 = ((-(u_xlat14.xy) * u_xlat14.xy) + u_xlat13.yw);
            u_xlat13 = vec4f(u_xlat13.x, x_4403.x, u_xlat13.z, x_4403.y);
            u_xlat13 = (u_xlat13 + vec4f(2.0f));
            u_xlat14.z = (u_xlat13.y * 0.08163200318813323975f);
            u_xlat16 = vec4f(((u_xlat68.yx * x_1505)).xy, u_xlat16.zw);
            u_xlat68 = (u_xlat13.xz * x_1505);
            u_xlat16.z = (u_xlat13.w * 0.08163200318813323975f);
            u_xlat14.x = u_xlat16.y;
            let x_4431 = ((u_xlat12.xx * x_1515) + x_1518);
            u_xlat14 = vec4f(u_xlat14.x, x_4431.x, u_xlat14.z, x_4431.y);
            let x_4437 = ((u_xlat12.xx * x_1515) + x_1525);
            u_xlat13 = vec4f(x_4437.x, u_xlat13.y, x_4437.y, u_xlat13.w);
            u_xlat13.y = u_xlat68.x;
            u_xlat13.w = u_xlat15.y;
            u_xlat14 = (u_xlat13 + u_xlat14);
            let x_4452 = ((u_xlat12.yy * x_1515) + x_1518);
            u_xlat16 = vec4f(u_xlat16.x, x_4452.x, u_xlat16.z, x_4452.y);
            let x_4458 = ((u_xlat12.yy * x_1515) + x_1525);
            u_xlat15 = vec4f(x_4458.x, u_xlat15.y, x_4458.y, u_xlat15.w);
            u_xlat15.y = u_xlat68.y;
            u_xlat12 = (u_xlat15 + u_xlat16);
            u_xlat13 = (u_xlat13 / u_xlat14);
            u_xlat13 = (u_xlat13 + x_1563);
            u_xlat15 = (u_xlat15 / u_xlat12);
            u_xlat15 = (u_xlat15 + x_1563);
            u_xlat13 = (u_xlat13.wxyz * x_651.x_AdditionalShadowmapSize.xxxx);
            u_xlat15 = (u_xlat15.xwyz * x_651.x_AdditionalShadowmapSize.yyyy);
            let x_4490 = u_xlat13.yzw;
            u_xlat16 = vec4f(x_4490.x, u_xlat16.y, x_4490.yz);
            u_xlat16.y = u_xlat15.x;
            u_xlat17 = ((u_xlat35.xzxz * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat18 = vec4f((((u_xlat35.xz * x_651.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat18.zw);
            u_xlat13.y = u_xlat16.y;
            u_xlat16.y = u_xlat15.z;
            u_xlat19 = ((u_xlat35.xzxz * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat74 = ((u_xlat35.xz * x_651.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat13.z = u_xlat16.y;
            u_xlat20 = ((u_xlat35.xzxz * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyxz);
            u_xlat16.y = u_xlat15.w;
            u_xlat21 = ((u_xlat35.xzxz * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat41 = vec3f((((u_xlat35.xz * x_651.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat41.z);
            u_xlat13.w = u_xlat16.y;
            u_xlat22 = vec4f((((u_xlat35.xz * x_651.x_AdditionalShadowmapSize.xy) + u_xlat13.xw)).xy, u_xlat22.zw);
            let x_4592 = u_xlat16.xzw;
            u_xlat15 = vec4f(x_4592.x, u_xlat15.y, x_4592.yz);
            u_xlat16 = ((u_xlat35.xzxz * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat71 = ((u_xlat35.xz * x_651.x_AdditionalShadowmapSize.xy) + u_xlat15.wy);
            u_xlat15.x = u_xlat13.x;
            let x_4625 = ((u_xlat35.xz * x_651.x_AdditionalShadowmapSize.xy) + u_xlat15.xy);
            u_xlat35 = vec3f(x_4625.x, u_xlat35.y, x_4625.y);
            u_xlat23 = (u_xlat12.xxxx * u_xlat14);
            u_xlat24 = (u_xlat12.yyyy * u_xlat14);
            u_xlat25 = (u_xlat12.zzzz * u_xlat14);
            u_xlat12 = (u_xlat12.wwww * u_xlat14);
            let x_4649 = u_xlat17.xy;
            txVec43 = vec3f(x_4649.x, x_4649.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_4663 = u_xlat17.zw;
            txVec44 = vec3f(x_4663.x, x_4663.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat93 = (u_xlat93 * u_xlat23.y);
            u_xlat92 = ((u_xlat23.x * u_xlat92) + u_xlat93);
            let x_4688 = u_xlat18.xy;
            txVec45 = vec3f(x_4688.x, x_4688.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat92 = ((u_xlat23.z * u_xlat93) + u_xlat92);
            let x_4708 = u_xlat20.xy;
            txVec46 = vec3f(x_4708.x, x_4708.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat92 = ((u_xlat23.w * u_xlat93) + u_xlat92);
            let x_4728 = u_xlat19.xy;
            txVec47 = vec3f(x_4728.x, x_4728.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat92 = ((u_xlat24.x * u_xlat93) + u_xlat92);
            let x_4748 = u_xlat19.zw;
            txVec48 = vec3f(x_4748.x, x_4748.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat92 = ((u_xlat24.y * u_xlat93) + u_xlat92);
            txVec49 = vec3f(u_xlat74.x, u_xlat74.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat92 = ((u_xlat24.z * u_xlat93) + u_xlat92);
            let x_4787 = u_xlat20.zw;
            txVec50 = vec3f(x_4787.x, x_4787.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat92 = ((u_xlat24.w * u_xlat93) + u_xlat92);
            let x_4807 = u_xlat21.xy;
            txVec51 = vec3f(x_4807.x, x_4807.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat92 = ((u_xlat25.x * u_xlat93) + u_xlat92);
            let x_4827 = u_xlat21.zw;
            txVec52 = vec3f(x_4827.x, x_4827.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat92 = ((u_xlat25.y * u_xlat93) + u_xlat92);
            let x_4847 = u_xlat41.xy;
            txVec53 = vec3f(x_4847.x, x_4847.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat92 = ((u_xlat25.z * u_xlat93) + u_xlat92);
            let x_4867 = u_xlat22.xy;
            txVec54 = vec3f(x_4867.x, x_4867.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat92 = ((u_xlat25.w * u_xlat93) + u_xlat92);
            let x_4887 = u_xlat16.xy;
            txVec55 = vec3f(x_4887.x, x_4887.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat92 = ((u_xlat12.x * u_xlat93) + u_xlat92);
            let x_4907 = u_xlat16.zw;
            txVec56 = vec3f(x_4907.x, x_4907.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat92 = ((u_xlat12.y * u_xlat93) + u_xlat92);
            txVec57 = vec3f(u_xlat71.x, u_xlat71.y, u_xlat11.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat92 = ((u_xlat12.z * u_xlat93) + u_xlat92);
            let x_4946 = u_xlat35.xz;
            txVec58 = vec3f(x_4946.x, x_4946.y, u_xlat11.z);
            u_xlat35.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat89 = ((u_xlat12.w * u_xlat35.x) + u_xlat92);
          }
        }
      } else {
        let x_4969 = u_xlat11.xy;
        txVec59 = vec3f(x_4969.x, x_4969.y, u_xlat11.z);
        u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat35.x = (1.0f + -(x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat89 = ((u_xlat89 * x_651.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat35.x);
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
    u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati35.x) & bitcast<u32>(x_2181.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati35.x != 0i)) {
      u_xlati35.x = i32(x_2181.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati91 = select(1i, 0i, (u_xlati35.x != 0i));
      u_xlati92 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati91 != 0i)) {
        u_xlat11 = vec4f(((vs_TEXCOORD0.yyy * x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 1i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati92].xyw * vs_TEXCOORD0.xxx) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 3i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xy / u_xlat11.zz)).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((u_xlat11.xy * x_951) + x_951)).xy, u_xlat11.zw);
        u_xlat11 = vec4f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((x_2181.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat11.xy) + x_2181.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
      } else {
        u_xlatb35.x = (u_xlati35.x == 1i);
        u_xlati35.x = select(0i, 1i, u_xlatb35.x);
        if ((u_xlati35.x != 0i)) {
          let x_5162 = (vs_TEXCOORD0.yy * x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 1i)].xy);
          u_xlat35 = vec3f(x_5162.x, u_xlat35.y, x_5162.y);
          let x_5174 = ((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati92].xy * vs_TEXCOORD0.xx) + u_xlat35.xz);
          u_xlat35 = vec3f(x_5174.x, u_xlat35.y, x_5174.y);
          let x_5187 = ((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat35.xz);
          u_xlat35 = vec3f(x_5187.x, u_xlat35.y, x_5187.y);
          let x_5197 = (u_xlat35.xz + x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 3i)].xy);
          u_xlat35 = vec3f(x_5197.x, u_xlat35.y, x_5197.y);
          let x_5203 = ((u_xlat35.xz * x_951) + x_951);
          u_xlat35 = vec3f(x_5203.x, u_xlat35.y, x_5203.y);
          let x_5208 = fract(u_xlat35.xz);
          u_xlat35 = vec3f(x_5208.x, u_xlat35.y, x_5208.y);
          u_xlat11 = vec4f((((x_2181.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat35.xz) + x_2181.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
        } else {
          u_xlat12 = (vs_TEXCOORD0.yyyy * x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 1i)]);
          u_xlat12 = ((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati92] * vs_TEXCOORD0.xxxx) + u_xlat12);
          u_xlat12 = ((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
          u_xlat12 = (u_xlat12 + x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati92 + 3i)]);
          u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
          u_xlat35.x = dot(u_xlat12.xyz, u_xlat12.xyz);
          u_xlat35.x = inverseSqrt(u_xlat35.x);
          u_xlat12 = vec4f(((u_xlat35.xxx * u_xlat12.xyz)).xyz, u_xlat12.w);
          u_xlat35.x = dot(abs(u_xlat12.xyz), x_3097);
          u_xlat35.x = max(u_xlat35.x, 0.00000099999999747524f);
          u_xlat35.x = (1.0f / u_xlat35.x);
          u_xlat13 = vec4f(((u_xlat35.xxx * u_xlat12.zxy)).xyz, u_xlat13.w);
          u_xlat13.x = -(u_xlat13.x);
          u_xlat13.x = clamp(u_xlat13.x, 0.0f, 1.0f);
          u_xlatb67 = ((u_xlat13.yzyz >= vec4f())).xy;
          if (u_xlatb67.x) {
            x_5317 = u_xlat13.x;
          } else {
            x_5317 = -(u_xlat13.x);
          }
          u_xlat67.x = x_5317;
          if (u_xlatb67.y) {
            x_5330 = u_xlat13.x;
          } else {
            x_5330 = -(u_xlat13.x);
          }
          u_xlat67.y = x_5330;
          let x_5347 = ((u_xlat12.xy * u_xlat35.xx) + u_xlat67);
          u_xlat35 = vec3f(x_5347.x, u_xlat35.y, x_5347.y);
          let x_5353 = ((u_xlat35.xz * x_951) + x_951);
          u_xlat35 = vec3f(x_5353.x, u_xlat35.y, x_5353.y);
          let x_5360 = clamp(u_xlat35.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat35 = vec3f(x_5360.x, u_xlat35.y, x_5360.y);
          u_xlat11 = vec4f((((x_2181.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat35.xz) + x_2181.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat11.zw);
        }
      }
      u_xlat11 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat11.xy, 0.0f);
      if (u_xlatb5.y) {
        x_5388 = u_xlat11.w;
      } else {
        x_5388 = u_xlat11.x;
      }
      u_xlat35.x = x_5388;
      if (u_xlatb5.x) {
        x_5400 = u_xlat11.xyz;
      } else {
        x_5400 = u_xlat35.xxx;
      }
      u_xlat11 = vec4f(x_5400.xyz, u_xlat11.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    u_xlat11 = vec4f(((u_xlat11.xyz * x_3556.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat11.w);
    u_xlati35.x = bitcast<i32>((bitcast<u32>(x_697.unity_RenderingLayer.x) & bitcast<u32>(x_3556.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
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
    u_xlat9 = vec4f((((vec3f(u_xlat87) * x_3487) + u_xlat28)).xyz, u_xlat9.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * u_xlat11.xyz) + u_xlat8.xyz)).xyz, u_xlat9.w);
    if ((u_xlati35.x != 0i)) {
      x_5549 = u_xlat9.xyz;
    } else {
      x_5549 = u_xlat8.xyz;
    }
    u_xlat8 = vec4f(x_5549.xyz, u_xlat8.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu0 = (u_xlatu3.x >> 2u);
  param_21 = bitcast<i32>(u_xlatu3.x);
  param_22 = 0i;
  param_23 = 1i;
  let x_5572 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu3.x);
  param_25 = 1i;
  param_26 = 1i;
  let x_5579 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  let x_5580 = vec2i(x_5572, x_5579);
  u_xlati3 = vec4i(x_5580.x, u_xlati3.yz, x_5580.y);
  u_xlati61 = bitcast<vec2i>((bitcast<vec2u>(u_xlati3.xx) & bitcast<vec2u>(x_2506.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_5597 = ~(u_xlati3.xw);
  u_xlati35 = vec3i(x_5597.x, u_xlati35.y, x_5597.y);
  u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_2506.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
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
      let x_5697 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu61 = x_5697;
      u_xlatu11 = (vec4u(u_xlatu61) + u_xlatu9.xxyy);
      let x_5705 = (u_xlatu11.yw >> x_2642);
      u_xlatu35 = vec3u(x_5705.x, u_xlatu35.y, x_5705.y);
      param_30 = bitcast<i32>(u_xlatu11.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_5715 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu11.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_5722 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu11.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_5729 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu11.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_5736 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati11 = vec4i(x_5715, x_5722, x_5729, x_5736);
      u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_2683.urp_Tiles[bitcast<i32>(u_xlatu35.x)].wy)));
      u_xlati13 = ~(u_xlati11);
      u_xlati68 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2683.urp_Tiles[bitcast<i32>(u_xlatu35.x)].zx)));
      u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati68) | bitcast<vec2u>(u_xlati12)));
      u_xlati89 = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati12.x)));
      u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati12.y)));
      u_xlati89 = bitcast<i32>((bitcast<u32>(u_xlati89) | bitcast<u32>(u_xlati35.x)));
      u_xlati11 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_2506.urp_ZBins[bitcast<i32>(u_xlatu35.z)].wy))).xy, u_xlati11.zw);
      let x_5821 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2506.urp_ZBins[bitcast<i32>(u_xlatu35.z)].zx)));
      u_xlati35 = vec3i(x_5821.x, u_xlati35.y, x_5821.y);
      let x_5831 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xz) | bitcast<vec2u>(u_xlati11.xy)));
      u_xlati35 = vec3i(x_5831.x, u_xlati35.y, x_5831.y);
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
    u_xlat11 = vec4f((((-(vs_TEXCOORD0) * x_3556.x_AdditionalLightsPosition[u_xlati86].www) + x_3556.x_AdditionalLightsPosition[u_xlati86].xyz)).xyz, u_xlat11.w);
    u_xlat61.x = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat61.x = max(u_xlat61.x, 0.00006103515625f);
    u_xlat89 = inverseSqrt(u_xlat61.x);
    u_xlat12 = vec4f(((vec3f(u_xlat89) * u_xlat11.xyz)).xyz, u_xlat12.w);
    u_xlat35.x = (1.0f / u_xlat61.x);
    u_xlat61.x = (u_xlat61.x * x_3556.x_AdditionalLightsAttenuation[u_xlati86].x);
    u_xlat61.x = ((-(u_xlat61.x) * u_xlat61.x) + 1.0f);
    u_xlat61.x = max(u_xlat61.x, 0.0f);
    u_xlat61.x = (u_xlat61.x * u_xlat61.x);
    u_xlat61.x = (u_xlat61.x * u_xlat35.x);
    u_xlat35.x = dot(x_3556.x_AdditionalLightsSpotDir[u_xlati86].xyz, u_xlat12.xyz);
    u_xlat35.x = ((u_xlat35.x * x_3556.x_AdditionalLightsAttenuation[u_xlati86].z) + x_3556.x_AdditionalLightsAttenuation[u_xlati86].w);
    u_xlat35.x = clamp(u_xlat35.x, 0.0f, 1.0f);
    u_xlat35.x = (u_xlat35.x * u_xlat35.x);
    u_xlat61.x = (u_xlat61.x * u_xlat35.x);
    u_xlatb35.x = (u_xlati86 < 0i);
    u_xlati91 = i32(x_651.x_AdditionalShadowParams[u_xlati86].w);
    u_xlati35.x = select(u_xlati91, -1i, u_xlatb35.x);
    u_xlatb91 = (u_xlati35.x >= 0i);
    if (u_xlatb91) {
      u_xlatb91 = any(!((vec4f() == vec4f(x_651.x_AdditionalShadowParams[u_xlati86].z))));
      if (u_xlatb91) {
        u_xlatb13 = vec4<bool>(((abs(u_xlat12.zzyz) >= abs(u_xlat12.xyxx))).xyz.xyz, u_xlatb13.w);
        u_xlatb91 = (u_xlatb13.y & u_xlatb13.x);
        let x_6120 = ((-(u_xlat12.zyzx) < vec4f())).xyw;
        u_xlatb13 = vec4<bool>(x_6120.xy, u_xlatb13.z, x_6120.z);
        u_xlat13.x = select(4.0f, 5.0f, u_xlatb13.x);
        u_xlat13.y = select(2.0f, 3.0f, u_xlatb13.y);
        u_xlat92 = select(0.0f, 1.0f, u_xlatb13.w);
        if (u_xlatb13.z) {
          x_6136 = u_xlat13.y;
        } else {
          x_6136 = u_xlat92;
        }
        u_xlat92 = x_6136;
        if (u_xlatb91) {
          x_6145 = u_xlat13.x;
        } else {
          x_6145 = u_xlat92;
        }
        u_xlat91 = x_6145;
        u_xlati91 = i32(u_xlat91);
        u_xlati35.x = (u_xlati91 + u_xlati35.x);
      }
      u_xlati35.x = (u_xlati35.x << bitcast<u32>(2i));
      u_xlat13 = (vs_TEXCOORD0.yyyy * x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati35.x + 1i)]);
      u_xlat13 = ((x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati35.x] * vs_TEXCOORD0.xxxx) + u_xlat13);
      u_xlat13 = ((x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati35.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat13);
      u_xlat13 = (u_xlat13 + x_651.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati35.x + 3i)]);
      u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
      u_xlatb35.x = (0.0f < x_651.x_AdditionalShadowParams[u_xlati86].y);
      if (u_xlatb35.x) {
        u_xlatb35.x = (1.0f == x_651.x_AdditionalShadowParams[u_xlati86].y);
        if (u_xlatb35.x) {
          u_xlat14 = (u_xlat13.xyxy + x_651.x_AdditionalShadowOffset0);
          let x_6230 = u_xlat14.xy;
          txVec60 = vec3f(x_6230.x, x_6230.y, u_xlat13.z);
          u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_6245 = u_xlat14.zw;
          txVec61 = vec3f(x_6245.x, x_6245.y, u_xlat13.z);
          u_xlat15.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat14 = (u_xlat13.xyxy + x_651.x_AdditionalShadowOffset1);
          let x_6265 = u_xlat14.xy;
          txVec62 = vec3f(x_6265.x, x_6265.y, u_xlat13.z);
          u_xlat15.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_6280 = u_xlat14.zw;
          txVec63 = vec3f(x_6280.x, x_6280.y, u_xlat13.z);
          u_xlat15.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat35.x = dot(u_xlat15, x_934);
        } else {
          u_xlatb91 = (2.0f == x_651.x_AdditionalShadowParams[u_xlati86].y);
          if (u_xlatb91) {
            u_xlat14 = vec4f((((u_xlat13.xy * x_651.x_AdditionalShadowmapSize.zw) + x_951)).xy, u_xlat14.zw);
            u_xlat14 = vec4f(floor(u_xlat14.xy).xy, u_xlat14.zw);
            u_xlat70 = ((u_xlat13.xy * x_651.x_AdditionalShadowmapSize.zw) + -(u_xlat14.xy));
            u_xlat15 = (u_xlat70.xxyy + x_974);
            u_xlat16 = (u_xlat15.xxzz * u_xlat15.xxzz);
            let x_6338 = (u_xlat16.yw * x_985);
            u_xlat15 = vec4f(x_6338.x, u_xlat15.y, x_6338.y, u_xlat15.w);
            u_xlat16 = vec4f((((u_xlat16.xz * x_951) + -(u_xlat70))).xy, u_xlat16.zw);
            u_xlat72 = (-(u_xlat70) + x_773);
            u_xlat17 = vec4f(min(u_xlat70, vec2f()).xy, u_xlat17.zw);
            u_xlat17 = vec4f((((-(u_xlat17.xy) * u_xlat17.xy) + u_xlat72)).xy, u_xlat17.zw);
            u_xlat70 = max(u_xlat70, vec2f());
            u_xlat70 = ((-(u_xlat70) * u_xlat70) + u_xlat15.yw);
            u_xlat17 = vec4f(((u_xlat17.xy + x_773)).xy, u_xlat17.zw);
            u_xlat70 = (u_xlat70 + x_773);
            u_xlat18 = vec4f(((u_xlat16.xy * x_1037)).xy, u_xlat18.zw);
            u_xlat16 = vec4f(((u_xlat72 * x_1037)).xy, u_xlat16.zw);
            u_xlat17 = vec4f(((u_xlat17.xy * x_1037)).xy, u_xlat17.zw);
            u_xlat19 = vec4f(((u_xlat70 * x_1037)).xy, u_xlat19.zw);
            u_xlat70 = (u_xlat15.yw * x_1037);
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
            u_xlat16 = vec4f(((u_xlat16.xyz + x_1107)).xyz, u_xlat16.w);
            u_xlat17 = vec4f(((u_xlat19.zyw / u_xlat15.xyz)).xyz, u_xlat17.w);
            u_xlat17 = vec4f(((u_xlat17.xyz + x_1107)).xyz, u_xlat17.w);
            u_xlat16 = vec4f(((u_xlat16.yxz * x_651.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat16.w);
            u_xlat17 = vec4f(((u_xlat17.xyz * x_651.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat17.w);
            u_xlat16.w = u_xlat17.x;
            u_xlat18 = ((u_xlat14.xyxy * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat16.ywxw);
            u_xlat70 = ((u_xlat14.xy * x_651.x_AdditionalShadowmapSize.xy) + u_xlat16.zw);
            u_xlat17.w = u_xlat16.y;
            let x_6504 = u_xlat17.yz;
            u_xlat16 = vec4f(u_xlat16.x, x_6504.x, u_xlat16.z, x_6504.y);
            u_xlat19 = ((u_xlat14.xyxy * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat17 = ((u_xlat14.xyxy * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat17.wywz);
            u_xlat16 = ((u_xlat14.xyxy * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xwzw);
            u_xlat21 = (u_xlat15.xxxy * u_xlat20.zwyz);
            u_xlat22 = (u_xlat15.yyzz * u_xlat20);
            u_xlat91 = (u_xlat15.z * u_xlat20.y);
            let x_6550 = u_xlat18.xy;
            txVec64 = vec3f(x_6550.x, x_6550.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_6564 = u_xlat18.zw;
            txVec65 = vec3f(x_6564.x, x_6564.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat94 = (u_xlat94 * u_xlat21.y);
            u_xlat92 = ((u_xlat21.x * u_xlat92) + u_xlat94);
            txVec66 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat92 = ((u_xlat21.z * u_xlat94) + u_xlat92);
            let x_6607 = u_xlat17.xy;
            txVec67 = vec3f(x_6607.x, x_6607.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat92 = ((u_xlat21.w * u_xlat94) + u_xlat92);
            let x_6627 = u_xlat19.xy;
            txVec68 = vec3f(x_6627.x, x_6627.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat92 = ((u_xlat22.x * u_xlat94) + u_xlat92);
            let x_6647 = u_xlat19.zw;
            txVec69 = vec3f(x_6647.x, x_6647.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat92 = ((u_xlat22.y * u_xlat94) + u_xlat92);
            let x_6667 = u_xlat17.zw;
            txVec70 = vec3f(x_6667.x, x_6667.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat92 = ((u_xlat22.z * u_xlat94) + u_xlat92);
            let x_6687 = u_xlat16.xy;
            txVec71 = vec3f(x_6687.x, x_6687.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat92 = ((u_xlat22.w * u_xlat94) + u_xlat92);
            let x_6707 = u_xlat16.zw;
            txVec72 = vec3f(x_6707.x, x_6707.y, u_xlat13.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat35.x = ((u_xlat91 * u_xlat94) + u_xlat92);
          } else {
            u_xlat14 = vec4f((((u_xlat13.xy * x_651.x_AdditionalShadowmapSize.zw) + x_951)).xy, u_xlat14.zw);
            u_xlat14 = vec4f(floor(u_xlat14.xy).xy, u_xlat14.zw);
            u_xlat70 = ((u_xlat13.xy * x_651.x_AdditionalShadowmapSize.zw) + -(u_xlat14.xy));
            u_xlat15 = (u_xlat70.xxyy + x_974);
            u_xlat16 = (u_xlat15.xxzz * u_xlat15.xxzz);
            let x_6760 = (u_xlat16.yw * x_1441);
            u_xlat17 = vec4f(u_xlat17.x, x_6760.x, u_xlat17.z, x_6760.y);
            let x_6768 = ((u_xlat16.xz * x_951) + -(u_xlat70));
            u_xlat15 = vec4f(x_6768.x, u_xlat15.y, x_6768.y, u_xlat15.w);
            u_xlat16 = vec4f(((-(u_xlat70) + x_773)).xy, u_xlat16.zw);
            u_xlat72 = min(u_xlat70, vec2f());
            u_xlat16 = vec4f((((-(u_xlat72) * u_xlat72) + u_xlat16.xy)).xy, u_xlat16.zw);
            u_xlat72 = max(u_xlat70, vec2f());
            let x_6796 = ((-(u_xlat72) * u_xlat72) + u_xlat15.yw);
            u_xlat43 = vec3f(x_6796.x, u_xlat43.y, x_6796.y);
            u_xlat16 = vec4f(((u_xlat16.xy + x_1483)).xy, u_xlat16.zw);
            let x_6806 = (u_xlat43.xz + x_1483);
            u_xlat15 = vec4f(u_xlat15.x, x_6806.x, u_xlat15.z, x_6806.y);
            u_xlat18.z = (u_xlat15.y * 0.08163200318813323975f);
            u_xlat19 = vec4f(((u_xlat15.zxw * x_1499)).xyz, u_xlat19.w);
            u_xlat15 = vec4f(((u_xlat16.xy * x_1505)).xy, u_xlat15.zw);
            u_xlat18.x = u_xlat19.y;
            let x_6829 = ((u_xlat70.xx * x_1515) + x_1518);
            u_xlat18 = vec4f(u_xlat18.x, x_6829.x, u_xlat18.z, x_6829.y);
            let x_6835 = ((u_xlat70.xx * x_1515) + x_1525);
            u_xlat16 = vec4f(x_6835.x, u_xlat16.y, x_6835.y, u_xlat16.w);
            u_xlat16.y = u_xlat15.x;
            u_xlat16.w = u_xlat17.y;
            u_xlat18 = (u_xlat16 + u_xlat18);
            let x_6850 = ((u_xlat70.yy * x_1515) + x_1518);
            u_xlat19 = vec4f(u_xlat19.x, x_6850.x, u_xlat19.z, x_6850.y);
            let x_6856 = ((u_xlat70.yy * x_1515) + x_1525);
            u_xlat17 = vec4f(x_6856.x, u_xlat17.y, x_6856.y, u_xlat17.w);
            u_xlat17.y = u_xlat15.y;
            u_xlat15 = (u_xlat17 + u_xlat19);
            u_xlat16 = (u_xlat16 / u_xlat18);
            u_xlat16 = (u_xlat16 + x_1563);
            u_xlat17 = (u_xlat17 / u_xlat15);
            u_xlat17 = (u_xlat17 + x_1563);
            u_xlat16 = (u_xlat16.wxyz * x_651.x_AdditionalShadowmapSize.xxxx);
            u_xlat17 = (u_xlat17.xwyz * x_651.x_AdditionalShadowmapSize.yyyy);
            let x_6888 = u_xlat16.yzw;
            u_xlat19 = vec4f(x_6888.x, u_xlat19.y, x_6888.yz);
            u_xlat19.y = u_xlat17.x;
            u_xlat20 = ((u_xlat14.xyxy * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat70 = ((u_xlat14.xy * x_651.x_AdditionalShadowmapSize.xy) + u_xlat19.wy);
            u_xlat16.y = u_xlat19.y;
            u_xlat19.y = u_xlat17.z;
            u_xlat21 = ((u_xlat14.xyxy * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat22 = vec4f((((u_xlat14.xy * x_651.x_AdditionalShadowmapSize.xy) + u_xlat19.wy)).xy, u_xlat22.zw);
            u_xlat16.z = u_xlat19.y;
            u_xlat23 = ((u_xlat14.xyxy * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyxz);
            u_xlat19.y = u_xlat17.w;
            u_xlat24 = ((u_xlat14.xyxy * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat44 = ((u_xlat14.xy * x_651.x_AdditionalShadowmapSize.xy) + u_xlat19.wy);
            u_xlat16.w = u_xlat19.y;
            u_xlat78 = ((u_xlat14.xy * x_651.x_AdditionalShadowmapSize.xy) + u_xlat16.xw);
            let x_6986 = u_xlat19.xzw;
            u_xlat17 = vec4f(x_6986.x, u_xlat17.y, x_6986.yz);
            u_xlat19 = ((u_xlat14.xyxy * x_651.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyzy);
            u_xlat73 = ((u_xlat14.xy * x_651.x_AdditionalShadowmapSize.xy) + u_xlat17.wy);
            u_xlat17.x = u_xlat16.x;
            u_xlat14 = vec4f((((u_xlat14.xy * x_651.x_AdditionalShadowmapSize.xy) + u_xlat17.xy)).xy, u_xlat14.zw);
            u_xlat25 = (u_xlat15.xxxx * u_xlat18);
            u_xlat26 = (u_xlat15.yyyy * u_xlat18);
            u_xlat27 = (u_xlat15.zzzz * u_xlat18);
            u_xlat15 = (u_xlat15.wwww * u_xlat18);
            let x_7042 = u_xlat20.xy;
            txVec73 = vec3f(x_7042.x, x_7042.y, u_xlat13.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_7056 = u_xlat20.zw;
            txVec74 = vec3f(x_7056.x, x_7056.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat92 = (u_xlat92 * u_xlat25.y);
            u_xlat91 = ((u_xlat25.x * u_xlat91) + u_xlat92);
            txVec75 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat91 = ((u_xlat25.z * u_xlat92) + u_xlat91);
            let x_7099 = u_xlat23.xy;
            txVec76 = vec3f(x_7099.x, x_7099.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat91 = ((u_xlat25.w * u_xlat92) + u_xlat91);
            let x_7119 = u_xlat21.xy;
            txVec77 = vec3f(x_7119.x, x_7119.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat91 = ((u_xlat26.x * u_xlat92) + u_xlat91);
            let x_7139 = u_xlat21.zw;
            txVec78 = vec3f(x_7139.x, x_7139.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat91 = ((u_xlat26.y * u_xlat92) + u_xlat91);
            let x_7159 = u_xlat22.xy;
            txVec79 = vec3f(x_7159.x, x_7159.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat91 = ((u_xlat26.z * u_xlat92) + u_xlat91);
            let x_7179 = u_xlat23.zw;
            txVec80 = vec3f(x_7179.x, x_7179.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat91 = ((u_xlat26.w * u_xlat92) + u_xlat91);
            let x_7199 = u_xlat24.xy;
            txVec81 = vec3f(x_7199.x, x_7199.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat91 = ((u_xlat27.x * u_xlat92) + u_xlat91);
            let x_7219 = u_xlat24.zw;
            txVec82 = vec3f(x_7219.x, x_7219.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat91 = ((u_xlat27.y * u_xlat92) + u_xlat91);
            txVec83 = vec3f(u_xlat44.x, u_xlat44.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat91 = ((u_xlat27.z * u_xlat92) + u_xlat91);
            txVec84 = vec3f(u_xlat78.x, u_xlat78.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat91 = ((u_xlat27.w * u_xlat92) + u_xlat91);
            let x_7277 = u_xlat19.xy;
            txVec85 = vec3f(x_7277.x, x_7277.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat91 = ((u_xlat15.x * u_xlat92) + u_xlat91);
            let x_7297 = u_xlat19.zw;
            txVec86 = vec3f(x_7297.x, x_7297.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat91 = ((u_xlat15.y * u_xlat92) + u_xlat91);
            txVec87 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat91 = ((u_xlat15.z * u_xlat92) + u_xlat91);
            let x_7336 = u_xlat14.xy;
            txVec88 = vec3f(x_7336.x, x_7336.y, u_xlat13.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat35.x = ((u_xlat15.w * u_xlat92) + u_xlat91);
          }
        }
      } else {
        let x_7358 = u_xlat13.xy;
        txVec89 = vec3f(x_7358.x, x_7358.y, u_xlat13.z);
        u_xlat35.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat91 = (1.0f + -(x_651.x_AdditionalShadowParams[u_xlati86].x));
      u_xlat35.x = ((u_xlat35.x * x_651.x_AdditionalShadowParams[u_xlati86].x) + u_xlat91);
      u_xlatb91 = (0.0f >= u_xlat13.z);
      u_xlatb92 = (u_xlat13.z >= 1.0f);
      u_xlatb91 = (u_xlatb91 | u_xlatb92);
      if (u_xlatb91) {
        x_7396 = 1.0f;
      } else {
        x_7396 = u_xlat35.x;
      }
      u_xlat35.x = x_7396;
    } else {
      u_xlat35.x = 1.0f;
    }
    u_xlat91 = (-(u_xlat35.x) + 1.0f);
    u_xlat35.x = ((u_xlat85 * u_xlat91) + u_xlat35.x);
    u_xlati91 = (1i << bitcast<u32>((u_xlati86 & 31i)));
    u_xlati91 = bitcast<i32>((bitcast<u32>(u_xlati91) & bitcast<u32>(x_2181.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati91 != 0i)) {
      u_xlati91 = i32(x_2181.x_AdditionalLightsLightTypes[u_xlati86].el);
      u_xlati92 = select(1i, 0i, (u_xlati91 != 0i));
      u_xlati94 = (u_xlati86 << bitcast<u32>(2i));
      if ((u_xlati92 != 0i)) {
        u_xlat13 = vec4f(((vs_TEXCOORD0.yyy * x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 1i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati94].xyw * vs_TEXCOORD0.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 3i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xy / u_xlat13.zz)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((u_xlat13.xy * x_951) + x_951)).xy, u_xlat13.zw);
        u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((x_2181.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].xy * u_xlat13.xy) + x_2181.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].zw)).xy, u_xlat13.zw);
      } else {
        u_xlatb91 = (u_xlati91 == 1i);
        u_xlati91 = select(0i, 1i, u_xlatb91);
        if ((u_xlati91 != 0i)) {
          u_xlat69 = (vs_TEXCOORD0.yy * x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 1i)].xy);
          u_xlat69 = ((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati94].xy * vs_TEXCOORD0.xx) + u_xlat69);
          u_xlat69 = ((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat69);
          u_xlat69 = (u_xlat69 + x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 3i)].xy);
          u_xlat69 = ((u_xlat69 * x_951) + x_951);
          u_xlat69 = fract(u_xlat69);
          u_xlat13 = vec4f((((x_2181.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].xy * u_xlat69) + x_2181.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].zw)).xy, u_xlat13.zw);
        } else {
          u_xlat14 = (vs_TEXCOORD0.yyyy * x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 1i)]);
          u_xlat14 = ((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati94] * vs_TEXCOORD0.xxxx) + u_xlat14);
          u_xlat14 = ((x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat14);
          u_xlat14 = (u_xlat14 + x_2181.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati94 + 3i)]);
          u_xlat14 = vec4f(((u_xlat14.xyz / u_xlat14.www)).xyz, u_xlat14.w);
          u_xlat91 = dot(u_xlat14.xyz, u_xlat14.xyz);
          u_xlat91 = inverseSqrt(u_xlat91);
          u_xlat14 = vec4f(((vec3f(u_xlat91) * u_xlat14.xyz)).xyz, u_xlat14.w);
          u_xlat91 = dot(abs(u_xlat14.xyz), x_3097);
          u_xlat91 = max(u_xlat91, 0.00000099999999747524f);
          u_xlat91 = (1.0f / u_xlat91);
          u_xlat15 = vec4f(((vec3f(u_xlat91) * u_xlat14.zxy)).xyz, u_xlat15.w);
          u_xlat15.x = -(u_xlat15.x);
          u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
          u_xlatb69 = ((u_xlat15.yzyz >= vec4f())).xy;
          if (u_xlatb69.x) {
            x_7666 = u_xlat15.x;
          } else {
            x_7666 = -(u_xlat15.x);
          }
          u_xlat69.x = x_7666;
          if (u_xlatb69.y) {
            x_7679 = u_xlat15.x;
          } else {
            x_7679 = -(u_xlat15.x);
          }
          u_xlat69.y = x_7679;
          u_xlat69 = ((u_xlat14.xy * vec2f(u_xlat91)) + u_xlat69);
          u_xlat69 = ((u_xlat69 * x_951) + x_951);
          u_xlat69 = clamp(u_xlat69, vec2f(0.0f), vec2f(1.0f));
          u_xlat13 = vec4f((((x_2181.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].xy * u_xlat69) + x_2181.x_AdditionalLightsCookieAtlasUVRects[u_xlati86].zw)).xy, u_xlat13.zw);
        }
      }
      u_xlat13 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat13.xy, 0.0f);
      if (u_xlatb5.y) {
        x_7725 = u_xlat13.w;
      } else {
        x_7725 = u_xlat13.x;
      }
      u_xlat91 = x_7725;
      if (u_xlatb5.x) {
        x_7736 = u_xlat13.xyz;
      } else {
        x_7736 = vec3f(u_xlat91);
      }
      u_xlat13 = vec4f(x_7736.xyz, u_xlat13.w);
    } else {
      u_xlat13.x = 1.0f;
      u_xlat13.y = 1.0f;
      u_xlat13.z = 1.0f;
    }
    u_xlat13 = vec4f(((u_xlat13.xyz * x_3556.x_AdditionalLightsColor[u_xlati86].xyz)).xyz, u_xlat13.w);
    u_xlati86 = bitcast<i32>((bitcast<u32>(x_697.unity_RenderingLayer.x) & bitcast<u32>(x_3556.x_AdditionalLightsLayerMasks[u_xlati86].el)));
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
    u_xlat11 = vec4f((((u_xlat61.xxx * x_3487) + u_xlat28)).xyz, u_xlat11.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * u_xlat13.xyz) + u_xlat10.xyz)).xyz, u_xlat11.w);
    if ((u_xlati86 != 0i)) {
      x_7901 = u_xlat11.xyz;
    } else {
      x_7901 = u_xlat10.xyz;
    }
    u_xlat10 = vec4f(x_7901.xyz, u_xlat10.w);
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

