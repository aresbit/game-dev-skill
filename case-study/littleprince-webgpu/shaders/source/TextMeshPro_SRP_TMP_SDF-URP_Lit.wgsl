//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-URP Lit.shadergraph
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
  unity_LightmapST : vec4f,
  /* @offset(416) */
  unity_DynamicLightmapST : vec4f,
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

var<private> in_POSITION0 : vec3f;

@group(1) @binding(5) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(9) var<uniform> x_64 : VGlobals;

var<private> vs_INTERP10 : vec3f;

var<private> vs_INTERP0 : vec2f;

var<private> in_TEXCOORD1 : vec4f;

var<private> vs_INTERP1 : vec2f;

var<private> in_TEXCOORD2 : vec4f;

var<private> in_TANGENT0 : vec4f;

var<private> vs_INTERP5 : vec4f;

var<private> vs_INTERP6 : vec4f;

var<private> in_TEXCOORD0 : vec4f;

var<private> vs_INTERP7 : vec4f;

var<private> vs_INTERP8 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_INTERP9 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_INTERP11 : vec3f;

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
  vs_INTERP10 = u_xlat0;
  gl_Position = (u_xlat1 + x_64.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_INTERP0 = ((in_TEXCOORD1.xy * x_25.unity_LightmapST.xy) + x_25.unity_LightmapST.zw);
  vs_INTERP1 = ((in_TEXCOORD2.xy * x_25.unity_DynamicLightmapST.xy) + x_25.unity_DynamicLightmapST.zw);
  u_xlat0 = (in_TANGENT0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_TANGENT0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_TANGENT0.zzz) + u_xlat0);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_INTERP5 = vec4f(((vec3f(u_xlat6) * u_xlat0)).xyz, vs_INTERP5.w);
  vs_INTERP5.w = in_TANGENT0.w;
  vs_INTERP6 = in_TEXCOORD0;
  vs_INTERP7 = in_TEXCOORD1;
  vs_INTERP8 = in_COLOR0;
  vs_INTERP9 = vec4f();
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_INTERP11 = (vec3f(u_xlat6) * u_xlat0);
  return;
}

struct main_out {
  @location(5)
  vs_INTERP10_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_INTERP0_1 : vec2f,
  @location(1)
  vs_INTERP1_1 : vec2f,
  @location(7)
  vs_INTERP5_1 : vec4f,
  @location(2)
  vs_INTERP6_1 : vec4f,
  @location(3)
  vs_INTERP7_1 : vec4f,
  @location(4)
  vs_INTERP8_1 : vec4f,
  @location(8)
  vs_INTERP9_1 : vec4f,
  @location(6)
  vs_INTERP11_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3f, @location(4) in_TEXCOORD1_param : vec4f, @location(5) in_TEXCOORD2_param : vec4f, @location(2) in_TANGENT0_param : vec4f, @location(3) in_TEXCOORD0_param : vec4f, @location(6) in_COLOR0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_INTERP10, gl_Position, vs_INTERP0, vs_INTERP1, vs_INTERP5, vs_INTERP6, vs_INTERP7, vs_INTERP8, vs_INTERP9, vs_INTERP11);
}

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-URP Lit.shadergraph
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_FaceColor : vec4f,
  /* @offset(16) */
  x_IsoPerimeter : vec4f,
  /* @offset(32) */
  x_OutlineColor1 : vec4f,
  /* @offset(48) */
  x_OutlineColor2 : vec4f,
  /* @offset(64) */
  x_OutlineColor3 : vec4f,
  /* @offset(80) */
  x_OutlineOffset1 : vec2f,
  /* @offset(88) */
  x_OutlineOffset2 : vec2f,
  /* @offset(96) */
  x_OutlineOffset3 : vec2f,
  /* @offset(104) */
  x_OutlineMode : f32,
  /* @offset(112) */
  x_Softness : vec4f,
  /* @offset(128) */
  Xhlslcc_UnusedX_FaceTex_TexelSize : vec4f,
  /* @offset(144) */
  x_FaceUVSpeed : vec2f,
  /* @offset(160) */
  x_FaceTex_ST : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedX_OutlineTex_TexelSize : vec4f,
  /* @offset(192) */
  x_OutlineTex_ST : vec4f,
  /* @offset(208) */
  x_OutlineUVSpeed : vec2f,
  /* @offset(224) */
  x_UnderlayColor : vec4f,
  /* @offset(240) */
  x_UnderlayOffset : vec2f,
  /* @offset(248) */
  x_UnderlayDilate : f32,
  /* @offset(252) */
  x_UnderlaySoftness : f32,
  /* @offset(256) */
  x_BevelType : f32,
  /* @offset(260) */
  x_BevelAmount : f32,
  /* @offset(264) */
  x_BevelOffset : f32,
  /* @offset(268) */
  x_BevelWidth : f32,
  /* @offset(272) */
  x_BevelRoundness : f32,
  /* @offset(276) */
  x_BevelClamp : f32,
  /* @offset(288) */
  x_SpecularColor : vec4f,
  /* @offset(304) */
  x_LightAngle : f32,
  /* @offset(308) */
  x_SpecularPower : f32,
  /* @offset(312) */
  x_Reflectivity : f32,
  /* @offset(316) */
  x_Diffuse : f32,
  /* @offset(320) */
  x_Ambient : f32,
  /* @offset(336) */
  x_MainTex_TexelSize : vec4f,
  /* @offset(352) */
  x_GradientScale : f32,
  /* @offset(356) */
  Xhlslcc_UnusedX_ScaleRatioA : f32,
  /* @offset(368) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_ST : vec4f,
  /* @offset(384) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_TexelSize : vec4f,
  /* @offset(400) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_MipInfo : vec4f,
  /* @offset(416) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_StreamInfo : vec4f,
}

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(40) */
  x_AlphaToMaskAvailable : f32,
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
  x_Time : vec4f,
  /* @offset(160) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(176) */
  x_ProjectionParams : vec4f,
  /* @offset(192) */
  unity_OrthoParams : vec4f,
  /* @offset(208) */
  x_ScaleBiasRt : vec4f,
  /* @offset(224) */
  unity_FogParams : vec4f,
  /* @offset(240) */
  unity_FogColor : vec4f,
  /* @offset(256) */
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

alias Arr_5 = array<vec4f, 128u>;

alias Arr_6 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToLight : Arr_4,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  hlslcc_mtx4x4_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_6,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

alias Arr_15 = array<vec4f, 4u>;

alias Arr_16 = array<vec4f, 4u>;

alias Arr_17 = array<vec4f, 2u>;

alias Arr_18 = array<vec4f, 4u>;

alias Arr_19 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_15,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_16,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  unity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_17,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_18,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_19,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
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

var<private> vs_INTERP6 : vec4f;

@group(1) @binding(8) var<uniform> x_115 : UnityPerMaterial;

@group(0) @binding(10) var x_MainTex : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_139 : PGlobals;

var<private> vs_INTERP7 : vec4f;

@group(0) @binding(8) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(17) var sampler_FaceTex : sampler;

var<private> vs_INTERP8 : vec4f;

@group(0) @binding(9) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_OutlineTex : sampler;

@group(0) @binding(19) var samplerSamplerState_Linear_Clamp : sampler;

var<private> gl_FrontFacing : bool;

var<private> SV_Target0 : vec4f;

var<private> vs_INTERP11 : vec3f;

var<private> vs_INTERP10 : vec3f;

@group(1) @binding(6) var<uniform> x_1167 : LightShadows;

@group(0) @binding(2) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2f;

@group(0) @binding(3) var unity_DynamicLightmap : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_DynamicLightmap : sampler;

var<private> vs_INTERP1 : vec2f;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(7) var<uniform> x_2743 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_3026 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_3200 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_3444 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(12) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(5) var<uniform> x_3887 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_4048 : AdditionalLights;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

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

const x_242 = vec4f(-0.5f);

const x_280 = vec4f(2.0f);

const x_283 = vec4f(0.5f);

const x_308 = vec4f(1.0f);

const x_483 = vec2f(1.0f);

const x_697 = vec3f(1.0f);

const x_1527 = vec4f(0.25f);

const x_1544 = vec2f(0.5f);

const x_1567 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1579 = vec2f(0.07999999821186065674f);

const x_1635 = vec2f(0.15999999642372131348f);

const x_1707 = vec3f(-2.5f, -0.5f, 1.5f);

const x_2048 = vec2f(0.04081600159406661987f);

const x_2106 = vec2f(0.08163200318813323975f);

const x_2123 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_2126 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_2133 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_2171 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2820 = vec4f(0.0f, 0.0f, 1.0f, 1.0f);

const x_3159 = vec2u(2u);

const x_3976 = vec3f(0.03999999910593032837f);

const x_4927 = vec2f(2.0f);

const x_4942 = vec3f(0.08163200318813323975f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat52 : vec2f;
  var u_xlat26 : vec2f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlatb78 : bool;
  var u_xlat3 : vec4f;
  var u_xlat28 : vec3f;
  var x_264 : f32;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat78 : f32;
  var u_xlatb0 : bool;
  var x_1056 : f32;
  var x_1068 : f32;
  var u_xlat79 : f32;
  var x_1147 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu79 : u32;
  var u_xlati79 : i32;
  var u_xlat80 : f32;
  var u_xlatb80 : bool;
  var txVec0 : vec3f;
  var u_xlat8 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb81 : bool;
  var u_xlat31 : vec3f;
  var u_xlat9 : vec4f;
  var u_xlat59 : vec2f;
  var u_xlat61 : vec2f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat81 : f32;
  var txVec4 : vec3f;
  var u_xlat82 : f32;
  var txVec5 : vec3f;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat65 : vec2f;
  var u_xlat16 : vec4f;
  var u_xlat34 : vec3f;
  var u_xlat17 : vec4f;
  var u_xlat62 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
  var u_xlat20 : vec4f;
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
  var u_xlatb82 : bool;
  var u_xlatb31 : vec3<bool>;
  var x_2828 : f32;
  var x_2839 : vec3f;
  var u_xlatu5 : vec2u;
  var u_xlatu57 : vec2u;
  var u_xlati5 : i32;
  var u_xlat29 : f32;
  var x_2948 : f32;
  var u_xlatu78 : u32;
  var u_xlatu3 : u32;
  var u_xlati29 : i32;
  var u_xlatu29 : vec2u;
  var u_xlati4 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati31 : vec2i;
  var u_xlati9 : vec2i;
  var u_xlati78 : i32;
  var u_xlatu4 : vec2u;
  var u_xlatu9 : vec2u;
  var u_xlati61 : vec2i;
  var u_xlatu87 : u32;
  var u_xlatu56 : u32;
  var u_xlati84 : i32;
  var u_xlatu85 : u32;
  var u_xlatb86 : bool;
  var u_xlatu88 : u32;
  var u_xlatb88 : bool;
  var u_xlatu86 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu11 : vec4u;
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
  var u_xlati64 : vec2i;
  var u_xlati13 : vec4i;
  var u_xlati14 : vec2i;
  var u_xlati12 : vec4i;
  var u_xlati88 : i32;
  var u_xlati37 : i32;
  var u_xlati86 : i32;
  var u_xlatb56 : bool;
  var u_xlati56 : i32;
  var u_xlat56 : f32;
  var u_xlat86 : f32;
  var u_xlat88 : f32;
  var x_3503 : f32;
  var x_3517 : f32;
  var x_3531 : f32;
  var u_xlat37 : vec3f;
  var x_3587 : vec3f;
  var u_xlat89 : f32;
  var u_xlatb38 : vec2<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_3645 : f32;
  var x_3658 : f32;
  var u_xlat63 : vec2f;
  var u_xlatu63 : vec2u;
  var u_xlati63 : i32;
  var x_3989 : vec3f;
  var u_xlatb29 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlat85 : f32;
  var u_xlatb9 : bool;
  var u_xlati35 : vec3i;
  var x_4150 : i32;
  var u_xlatb35 : vec3<bool>;
  var u_xlatb10 : vec3<bool>;
  var x_4214 : f32;
  var u_xlat35 : vec3f;
  var x_4227 : f32;
  var u_xlatb87 : bool;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var u_xlat87 : f32;
  var u_xlat64 : vec2f;
  var txVec34 : vec3f;
  var u_xlat36 : vec3f;
  var txVec35 : vec3f;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat38 : vec2f;
  var u_xlat70 : vec2f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
  var u_xlat23 : vec4f;
  var txVec43 : vec3f;
  var txVec44 : vec3f;
  var u_xlat90 : f32;
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
  var u_xlatb61 : bool;
  var x_5564 : f32;
  var u_xlati87 : i32;
  var u_xlatb37 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec4f;
  var x_5879 : f32;
  var x_5892 : f32;
  var x_5952 : f32;
  var x_5964 : vec3f;
  var u_xlati10 : vec4i;
  var u_xlat33 : f32;
  var x_6117 : vec3f;
  var u_xlati7 : vec3i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati59 : vec2i;
  var u_xlati8 : vec3i;
  var u_xlati3 : i32;
  var u_xlatu7 : vec2u;
  var u_xlatu35 : vec2u;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlatu10 : vec4u;
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
  var u_xlatb11 : bool;
  var u_xlatb12 : vec3<bool>;
  var x_6690 : f32;
  var x_6702 : f32;
  var u_xlatb89 : bool;
  var txVec60 : vec3f;
  var txVec61 : vec3f;
  var txVec62 : vec3f;
  var txVec63 : vec3f;
  var u_xlat66 : vec2f;
  var txVec64 : vec3f;
  var txVec65 : vec3f;
  var txVec66 : vec3f;
  var txVec67 : vec3f;
  var txVec68 : vec3f;
  var txVec69 : vec3f;
  var txVec70 : vec3f;
  var txVec71 : vec3f;
  var txVec72 : vec3f;
  var u_xlat39 : vec3f;
  var u_xlat40 : vec2f;
  var u_xlat72 : vec2f;
  var u_xlat67 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat25 : vec4f;
  var txVec73 : vec3f;
  var txVec74 : vec3f;
  var u_xlat92 : f32;
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
  var u_xlatb63 : bool;
  var x_8028 : f32;
  var u_xlati89 : i32;
  var u_xlatb39 : vec2<bool>;
  var hlslcc_movcTemp_2 : vec4f;
  var x_8323 : f32;
  var x_8336 : f32;
  var x_8393 : f32;
  var x_8405 : vec3f;
  var x_8557 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  let x_76 = vs_INTERP6;
  let x_78 = dpdxCoarse(x_76.xy);
  u_xlat0 = vec4f(x_78.xy, u_xlat0.zw);
  let x_83 = vs_INTERP6;
  u_xlat52 = dpdyCoarse(x_83.yx);
  u_xlat26.x = (u_xlat52.y * u_xlat0.y);
  u_xlat0.x = ((u_xlat0.x * u_xlat52.x) + -(u_xlat26.x));
  u_xlat0.x = inverseSqrt(abs(u_xlat0.x));
  u_xlat0.x = (u_xlat0.x / x_115.x_MainTex_TexelSize.z);
  let x_133 = vs_INTERP6;
  let x_142 = x_139.x_GlobalMipBias.x;
  let x_143 = textureSampleBias(x_MainTex, sampler_MainTex, x_133.xy, x_142);
  u_xlat1.x = x_143.w;
  u_xlat26 = (vec2f(x_115.x_GradientScale) / x_115.x_MainTex_TexelSize.zw);
  u_xlat2 = ((-(vec4f(x_115.x_OutlineOffset1.x, x_115.x_OutlineOffset1.y, x_115.x_OutlineOffset2.x, x_115.x_OutlineOffset2.y)) * u_xlat26.xyxy) + vs_INTERP6.xyxy);
  let x_177 = u_xlat2;
  let x_180 = x_139.x_GlobalMipBias.x;
  let x_181 = textureSampleBias(x_MainTex, sampler_MainTex, x_177.xy, x_180);
  u_xlat1.y = x_181.w;
  let x_187 = u_xlat2;
  let x_190 = x_139.x_GlobalMipBias.x;
  let x_191 = textureSampleBias(x_MainTex, sampler_MainTex, x_187.zw, x_190);
  u_xlat1.z = x_191.w;
  u_xlat2 = vec4f((((-(x_115.x_OutlineOffset3) * u_xlat26) + vs_INTERP6.xy)).xy, u_xlat2.zw);
  let x_209 = u_xlat2;
  let x_212 = x_139.x_GlobalMipBias.x;
  let x_213 = textureSampleBias(x_MainTex, sampler_MainTex, x_209.xy, x_212);
  u_xlat1.w = x_213.w;
  u_xlatb78 = any(!((vec4f() == vec4f(x_115.x_OutlineMode))));
  u_xlat2.x = (u_xlat0.x * x_115.x_GradientScale);
  u_xlat3 = (u_xlat2.xxxx * x_115.x_Softness);
  u_xlat1 = (u_xlat1 + x_242);
  u_xlat1 = (u_xlat1 * vec4f(x_115.x_GradientScale));
  u_xlat28.x = max(u_xlat1.y, u_xlat1.x);
  u_xlat28.x = max(u_xlat1.z, u_xlat28.x);
  if (u_xlatb78) {
    x_264 = u_xlat28.x;
  } else {
    x_264 = u_xlat1.w;
  }
  u_xlat1.w = x_264;
  u_xlat1 = (u_xlat0.xxxx * u_xlat1);
  u_xlat1 = ((u_xlat1 * x_280) + x_283);
  u_xlat4 = (x_115.x_IsoPerimeter * vec4f(x_115.x_GradientScale));
  u_xlat1 = ((u_xlat4 * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((u_xlat3 * x_283) + u_xlat1);
  u_xlat3 = ((x_115.x_Softness * u_xlat2.xxxx) + x_308);
  u_xlat1 = (u_xlat1 / u_xlat3);
  u_xlat1 = clamp(u_xlat1, vec4f(0.0f), vec4f(1.0f));
  u_xlat28 = vec3f((((vs_INTERP7.xy * x_115.x_FaceTex_ST.xy) + x_115.x_FaceTex_ST.zw)).xy, u_xlat28.z);
  u_xlat28 = vec3f((((x_115.x_FaceUVSpeed * x_139.x_Time.yy) + u_xlat28.xy)).xy, u_xlat28.z);
  let x_349 = u_xlat28;
  let x_352 = x_139.x_GlobalMipBias.x;
  let x_353 = textureSampleBias(x_FaceTex, sampler_FaceTex, x_349.xy, x_352);
  u_xlat3 = x_353;
  u_xlat3 = (u_xlat3 * x_115.x_FaceColor);
  u_xlat3 = (u_xlat3 * vs_INTERP8);
  u_xlat28 = vec3f((((vs_INTERP7.xy * x_115.x_OutlineTex_ST.xy) + x_115.x_OutlineTex_ST.zw)).xy, u_xlat28.z);
  u_xlat28 = vec3f((((x_115.x_OutlineUVSpeed * x_139.x_Time.yy) + u_xlat28.xy)).xy, u_xlat28.z);
  let x_393 = u_xlat28;
  let x_396 = x_139.x_GlobalMipBias.x;
  let x_397 = textureSampleBias(x_OutlineTex, sampler_OutlineTex, x_393.xy, x_396);
  u_xlat4 = x_397;
  u_xlat4 = (u_xlat4 * x_115.x_OutlineColor1);
  u_xlat5.w = (u_xlat1.w * x_115.x_OutlineColor3.w);
  u_xlat3 = vec4f(((u_xlat3.www * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat4 = vec4f(((u_xlat4.www * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat6 = vec4f(((x_115.x_OutlineColor2.www * x_115.x_OutlineColor2.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f(((u_xlat5.www * x_115.x_OutlineColor3.xyz)).xyz, u_xlat5.w);
  u_xlat6.w = x_115.x_OutlineColor2.w;
  u_xlat6 = (-(u_xlat5) + u_xlat6);
  u_xlat5 = ((u_xlat1.zzzz * u_xlat6) + u_xlat5);
  u_xlat4 = (u_xlat4 + -(u_xlat5));
  u_xlat4 = ((u_xlat1.yyyy * u_xlat4) + u_xlat5);
  u_xlat3 = (u_xlat3 + -(u_xlat4));
  u_xlat1 = ((u_xlat1.xxxx * u_xlat3) + u_xlat4);
  u_xlat1 = vec4f(((u_xlat1.xyz / u_xlat1.www)).xyz, u_xlat1.w);
  u_xlat3 = vec4f(((x_483 / x_115.x_MainTex_TexelSize.zw)).xy, u_xlat3.zw);
  u_xlat3.z = 0.0f;
  u_xlat4 = (-(u_xlat3.xzzy) + vs_INTERP6.xyxy);
  let x_501 = u_xlat4;
  let x_504 = x_139.x_GlobalMipBias.x;
  let x_505 = textureSampleBias(x_MainTex, samplerSamplerState_Linear_Clamp, x_501.xy, x_504);
  u_xlat5.x = x_505.w;
  u_xlat3 = (u_xlat3.xzzy + vs_INTERP6.xyxy);
  let x_516 = u_xlat3;
  let x_519 = x_139.x_GlobalMipBias.x;
  let x_520 = textureSampleBias(x_MainTex, samplerSamplerState_Linear_Clamp, x_516.xy, x_519);
  u_xlat5.y = x_520.w;
  let x_526 = u_xlat4;
  let x_529 = x_139.x_GlobalMipBias.x;
  let x_530 = textureSampleBias(x_MainTex, samplerSamplerState_Linear_Clamp, x_526.zw, x_529);
  u_xlat5.z = x_530.w;
  let x_536 = u_xlat3;
  let x_539 = x_139.x_GlobalMipBias.x;
  let x_540 = textureSampleBias(x_MainTex, samplerSamplerState_Linear_Clamp, x_536.zw, x_539);
  u_xlat5.w = x_540.w;
  u_xlatb78 = any(!((vec4f() == vec4f(x_115.x_BevelType))));
  let x_559 = vec4f(x_115.x_BevelOffset, x_115.x_BevelOffset, x_115.x_BevelOffset, x_115.x_BevelOffset);
  u_xlat3 = (u_xlat5 + vec4f(x_559.x, x_559.y, x_559.z, x_559.w));
  u_xlat28.x = max(x_115.x_BevelWidth, 0.00999999977648258209f);
  u_xlat3 = (u_xlat3 + x_242);
  u_xlat3 = (u_xlat3 / u_xlat28.xxxx);
  u_xlat3 = (u_xlat3 + x_283);
  u_xlat3 = clamp(u_xlat3, vec4f(0.0f), vec4f(1.0f));
  u_xlat4 = ((u_xlat3 * x_280) + vec4f(-1.0f));
  u_xlat4 = (-(abs(u_xlat4)) + x_308);
  u_xlat3 = select(u_xlat3, u_xlat4, vec4<bool>(u_xlatb78));
  u_xlat4 = (u_xlat3 * vec4f(1.57079601287841796875f));
  u_xlat4 = sin(u_xlat4);
  u_xlat4 = (-(u_xlat3) + u_xlat4);
  u_xlat3 = ((vec4f(x_115.x_BevelRoundness) * u_xlat4) + u_xlat3);
  u_xlat78 = (-(x_115.x_BevelClamp) + 1.0f);
  u_xlat3 = min(vec4f(u_xlat78), u_xlat3);
  u_xlat78 = (u_xlat28.x * x_115.x_BevelAmount);
  u_xlat78 = (u_xlat78 * x_115.x_GradientScale);
  u_xlat78 = (u_xlat78 * -2.0f);
  u_xlat28 = vec3f(((vec2f(u_xlat78) * u_xlat3.xz)).xy, u_xlat28.z);
  u_xlat3 = vec4f(u_xlat3.x, (((u_xlat3.wy * vec2f(u_xlat78)) + -(u_xlat28.yx))).xy, u_xlat3.w);
  u_xlat3.x = 1.0f;
  u_xlat3.w = -1.0f;
  u_xlat78 = dot(u_xlat3.zw, u_xlat3.zw);
  u_xlat78 = inverseSqrt(u_xlat78);
  u_xlat4 = vec4f(u_xlat4.x, ((vec2f(u_xlat78) * vec2f(-1.0f, 0.0f))).xy, u_xlat4.w);
  u_xlat4.x = (u_xlat78 * u_xlat3.z);
  u_xlat78 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat78 = inverseSqrt(u_xlat78);
  u_xlat3.z = 0.0f;
  u_xlat28 = (vec3f(u_xlat78) * u_xlat3.xyz);
  u_xlat3 = vec4f(select(x_697, vec3f(1.0f, 1.0f, -1.0f), vec3<bool>((select(0u, 4294967295u, gl_FrontFacing) != 0u))).xyz, u_xlat3.w);
  u_xlat5 = vec4f(((u_xlat28 * u_xlat4.xyz)).xyz, u_xlat5.w);
  u_xlat28 = ((u_xlat4.zxy * u_xlat28.yzx) + -(u_xlat5.xyz));
  u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat28)).xyz, u_xlat3.w);
  u_xlat3.w = abs(u_xlat3.z);
  u_xlat4.x = sin(x_115.x_LightAngle);
  u_xlat5.x = cos(x_115.x_LightAngle);
  u_xlat4.y = u_xlat5.x;
  u_xlat4.z = 1.0f;
  u_xlat78 = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat78 = inverseSqrt(u_xlat78);
  u_xlat28 = (vec3f(u_xlat78) * u_xlat4.xyz);
  u_xlat1 = vec4f(max(u_xlat1.xyz, vec3f()).xyz, u_xlat1.w);
  u_xlat78 = dot(u_xlat3.xyw, u_xlat28);
  u_xlat28.x = max(u_xlat78, 0.0f);
  u_xlat28.x = log2(u_xlat28.x);
  u_xlat28.x = (u_xlat28.x * x_115.x_Reflectivity);
  u_xlat28.x = exp2(u_xlat28.x);
  u_xlat28 = (u_xlat28.xxx * x_115.x_SpecularColor.xyz);
  let x_796 = vec3f(x_115.x_SpecularPower, x_115.x_SpecularPower, x_115.x_SpecularPower);
  u_xlat28 = (u_xlat28 * vec3f(x_796.x, x_796.y, x_796.z));
  u_xlat1 = vec4f((((u_xlat28 * u_xlat1.www) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat78 = ((-(u_xlat78) * x_115.x_Diffuse) + 1.0f);
  u_xlat1 = vec4f(((vec3f(u_xlat78) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat78 = (u_xlat3.w * u_xlat3.w);
  u_xlat28.x = (-(x_115.x_Ambient) + 1.0f);
  u_xlat78 = ((u_xlat78 * u_xlat28.x) + x_115.x_Ambient);
  u_xlat1 = vec4f(((vec3f(u_xlat78) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat26 = ((-(x_115.x_UnderlayOffset) * u_xlat26) + vs_INTERP6.xy);
  let x_862 = u_xlat26;
  let x_864 = x_139.x_GlobalMipBias.x;
  let x_865 = textureSampleBias(x_MainTex, sampler_MainTex, x_862, x_864);
  u_xlat26.x = x_865.w;
  u_xlat52.x = (u_xlat2.x * x_115.x_UnderlaySoftness);
  u_xlat26.x = (u_xlat26.x + -0.5f);
  u_xlat26.x = (u_xlat26.x * x_115.x_GradientScale);
  u_xlat26.x = dot(u_xlat26.xx, u_xlat0.xx);
  u_xlat26.x = (u_xlat26.x + 0.5f);
  u_xlat78 = (x_115.x_UnderlayDilate * x_115.x_GradientScale);
  u_xlat0.x = ((u_xlat78 * u_xlat0.x) + u_xlat26.x);
  u_xlat0.x = ((u_xlat52.x * 0.5f) + u_xlat0.x);
  u_xlat26.x = ((x_115.x_UnderlaySoftness * u_xlat2.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x / u_xlat26.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat26.x = (u_xlat0.x * x_115.x_UnderlayColor.w);
  u_xlat2 = vec4f(((u_xlat26.xxx * x_115.x_UnderlayColor.xyz)).xyz, u_xlat2.w);
  u_xlat52.x = (-(u_xlat1.w) + 1.0f);
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat52.xxx)).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((u_xlat1.xyz * u_xlat1.www) + u_xlat2.xyz)).xyz, u_xlat1.w);
  u_xlat0.x = ((-(x_115.x_UnderlayColor.w) * u_xlat0.x) + 1.0f);
  u_xlat0.w = ((u_xlat0.x * u_xlat1.w) + u_xlat26.x);
  u_xlat0 = vec4f(((u_xlat1.xyz / u_xlat0.www)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0 * vs_INTERP8.wwww);
  u_xlatb0 = !((x_139.x_AlphaToMaskAvailable == 0.0f));
  let x_1003 = u_xlat1.w;
  u_xlat26.x = dpdxCoarse(x_1003);
  let x_1007 = u_xlat1.w;
  u_xlat52.x = dpdyCoarse(x_1007);
  u_xlat26.x = (abs(u_xlat52.x) + abs(u_xlat26.x));
  u_xlat52.x = ((u_xlat0.w * vs_INTERP8.w) + -0.00100000004749745131f);
  u_xlat78 = ((-(u_xlat26.x) * 0.5f) + u_xlat52.x);
  u_xlat26.x = max(u_xlat26.x, 0.00009999999747378752f);
  u_xlat26.x = (u_xlat78 / u_xlat26.x);
  u_xlat26.x = (u_xlat26.x + 1.0f);
  u_xlat26.x = clamp(u_xlat26.x, 0.0f, 1.0f);
  u_xlat78 = (u_xlat26.x + -0.00009999999747378752f);
  if (u_xlatb0) {
    x_1056 = u_xlat78;
  } else {
    x_1056 = u_xlat52.x;
  }
  u_xlat52.x = x_1056;
  if (u_xlatb0) {
    x_1068 = u_xlat26.x;
  } else {
    x_1068 = u_xlat1.w;
  }
  SV_Target0.w = x_1068;
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlatb0 = (u_xlat52.x < 0.0f);
  if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
    discard;
  }
  u_xlat0.x = dot(vs_INTERP11, vs_INTERP11);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_INTERP11)).xyz, u_xlat0.w);
  u_xlatb78 = (x_139.unity_OrthoParams.w == 0.0f);
  u_xlat2 = vec4f(((-(vs_INTERP10) + x_139.x_WorldSpaceCameraPos)).xyz, u_xlat2.w);
  u_xlat79 = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat79 = inverseSqrt(u_xlat79);
  u_xlat2 = vec4f(((vec3f(u_xlat79) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat3.x = x_139.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat3.y = x_139.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat3.z = x_139.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb78) {
    x_1147 = u_xlat2.xyz;
  } else {
    x_1147 = u_xlat3.xyz;
  }
  u_xlat2 = vec4f(x_1147.xyz, u_xlat2.w);
  u_xlat4 = vec4f(((vs_INTERP10 + -(x_1167.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((vs_INTERP10 + -(x_1167.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_INTERP10 + -(x_1167.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_INTERP10 + -(x_1167.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat7.w);
  u_xlat4.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat4.y = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat4.z = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat4.w = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlatb4 = (u_xlat4 < x_1167.x_CascadeShadowSplitSphereRadii);
  u_xlat5.x = select(0.0f, 1.0f, u_xlatb4.x);
  u_xlat5.y = select(0.0f, 1.0f, u_xlatb4.y);
  u_xlat5.z = select(0.0f, 1.0f, u_xlatb4.z);
  u_xlat5.w = select(0.0f, 1.0f, u_xlatb4.w);
  u_xlat4.x = select(-0.0f, -1.0f, u_xlatb4.x);
  u_xlat4.y = select(-0.0f, -1.0f, u_xlatb4.y);
  u_xlat4.z = select(-0.0f, -1.0f, u_xlatb4.z);
  u_xlat4 = vec4f(((u_xlat4.xyz + u_xlat5.yzw)).xyz, u_xlat4.w);
  u_xlat5 = vec4f(u_xlat5.x, max(u_xlat4.xyz, vec3f()).xyz);
  u_xlat79 = dot(u_xlat5, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat79 = (-(u_xlat79) + 4.0f);
  u_xlatu79 = u32(u_xlat79);
  u_xlati79 = (bitcast<i32>(u_xlatu79) << bitcast<u32>(2i));
  u_xlat4 = vec4f(((vs_INTERP10.yyy * x_1167.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati79 + 1i)].xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((x_1167.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati79].xyz * vs_INTERP10.xxx) + u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((x_1167.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati79 + 2i)].xyz * vs_INTERP10.zzz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f(((u_xlat4.xyz + x_1167.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati79 + 3i)].xyz)).xyz, u_xlat4.w);
  u_xlat79 = (vs_INTERP10.y * x_139.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat79 = ((x_139.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_INTERP10.x) + u_xlat79);
  u_xlat79 = ((x_139.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_INTERP10.z) + u_xlat79);
  u_xlat79 = (u_xlat79 + x_139.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat79 = (-(u_xlat79) + -(x_139.x_ProjectionParams.y));
  u_xlat79 = max(u_xlat79, 0.0f);
  u_xlat79 = (u_xlat79 * x_139.unity_FogParams.x);
  let x_1368 = x_139.x_ScaledScreenParams.xy;
  u_xlat5 = vec4f(((x_483 / vec2f(x_1368.x, x_1368.y))).xy, u_xlat5.zw);
  u_xlat5 = vec4f(((u_xlat5.xy * hlslcc_FragCoord.xy)).xy, u_xlat5.zw);
  u_xlat80 = ((u_xlat5.y * x_139.x_ScaleBiasRt.x) + x_139.x_ScaleBiasRt.y);
  u_xlat5.z = (-(u_xlat80) + 1.0f);
  let x_1402 = vs_INTERP0;
  let x_1404 = x_139.x_GlobalMipBias.x;
  let x_1405 = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1402, x_1404);
  u_xlat6 = vec4f(x_1405.xyz.xyz, u_xlat6.w);
  let x_1415 = vs_INTERP1;
  let x_1417 = x_139.x_GlobalMipBias.x;
  let x_1418 = textureSampleBias(unity_DynamicLightmap, samplerunity_DynamicLightmap, x_1415, x_1417);
  u_xlat7 = vec4f(x_1418.xyz.xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  u_xlat1 = vec4f(((u_xlat1.xyz * vec3f(0.95999997854232788086f))).xyz, u_xlat1.w);
  u_xlatb80 = (0.0f < x_1167.x_MainLightShadowParams.y);
  if (u_xlatb80) {
    u_xlatb80 = (x_1167.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb80) {
      u_xlat7 = (u_xlat4.xyxy + x_1167.x_MainLightShadowOffset0);
      let x_1456 = u_xlat7.xy;
      txVec0 = vec3f(x_1456.x, x_1456.y, u_xlat4.z);
      u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1477 = u_xlat7.zw;
      txVec1 = vec3f(x_1477.x, x_1477.y, u_xlat4.z);
      u_xlat8.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat7 = (u_xlat4.xyxy + x_1167.x_MainLightShadowOffset1);
      let x_1497 = u_xlat7.xy;
      txVec2 = vec3f(x_1497.x, x_1497.y, u_xlat4.z);
      u_xlat8.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1512 = u_xlat7.zw;
      txVec3 = vec3f(x_1512.x, x_1512.y, u_xlat4.z);
      u_xlat8.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat80 = dot(u_xlat8, x_1527);
    } else {
      u_xlatb81 = (x_1167.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb81) {
        let x_1545 = ((u_xlat4.xy * x_1167.x_MainLightShadowmapSize.zw) + x_1544);
        u_xlat31 = vec3f(x_1545.x, u_xlat31.y, x_1545.y);
        let x_1550 = floor(u_xlat31.xz);
        u_xlat31 = vec3f(x_1550.x, u_xlat31.y, x_1550.y);
        u_xlat7 = vec4f((((u_xlat4.xy * x_1167.x_MainLightShadowmapSize.zw) + -(u_xlat31.xz))).xy, u_xlat7.zw);
        u_xlat8 = (u_xlat7.xxyy + x_1567);
        u_xlat9 = (u_xlat8.xxzz * u_xlat8.xxzz);
        u_xlat59 = (u_xlat9.yw * x_1579);
        let x_1587 = ((u_xlat9.xz * x_1544) + -(u_xlat7.xy));
        u_xlat8 = vec4f(x_1587.x, u_xlat8.y, x_1587.y, u_xlat8.w);
        u_xlat9 = vec4f(((-(u_xlat7.xy) + x_483)).xy, u_xlat9.zw);
        u_xlat61 = min(u_xlat7.xy, vec2f());
        u_xlat61 = ((-(u_xlat61) * u_xlat61) + u_xlat9.xy);
        u_xlat7 = vec4f(max(u_xlat7.xy, vec2f()).xy, u_xlat7.zw);
        u_xlat7 = vec4f((((-(u_xlat7.xy) * u_xlat7.xy) + u_xlat8.yw)).xy, u_xlat7.zw);
        u_xlat61 = (u_xlat61 + x_483);
        u_xlat7 = vec4f(((u_xlat7.xy + x_483)).xy, u_xlat7.zw);
        u_xlat10 = vec4f(((u_xlat8.xz * x_1635)).xy, u_xlat10.zw);
        u_xlat11 = vec4f(((u_xlat9.xy * x_1635)).xy, u_xlat11.zw);
        u_xlat9 = vec4f(((u_xlat61 * x_1635)).xy, u_xlat9.zw);
        u_xlat12 = vec4f(((u_xlat7.xy * x_1635)).xy, u_xlat12.zw);
        u_xlat7 = vec4f(((u_xlat8.yw * x_1635)).xy, u_xlat7.zw);
        u_xlat10.z = u_xlat9.x;
        u_xlat10.w = u_xlat7.x;
        u_xlat11.z = u_xlat12.x;
        u_xlat11.w = u_xlat59.x;
        u_xlat8 = (u_xlat10.zwxz + u_xlat11.zwxz);
        u_xlat9.z = u_xlat10.y;
        u_xlat9.w = u_xlat7.y;
        u_xlat12.z = u_xlat11.y;
        u_xlat12.w = u_xlat59.y;
        u_xlat7 = vec4f(((u_xlat9.zyw + u_xlat12.zyw)).xyz, u_xlat7.w);
        u_xlat9 = vec4f(((u_xlat11.xzw / u_xlat8.zwy)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat9.xyz + x_1707)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat12.zyw / u_xlat7.xyz)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz + x_1707)).xyz, u_xlat10.w);
        u_xlat9 = vec4f(((u_xlat9.yxz * x_1167.x_MainLightShadowmapSize.xxx)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat10.xyz * x_1167.x_MainLightShadowmapSize.yyy)).xyz, u_xlat10.w);
        u_xlat9.w = u_xlat10.x;
        u_xlat11 = ((u_xlat31.xzxz * x_1167.x_MainLightShadowmapSize.xyxy) + u_xlat9.ywxw);
        u_xlat12 = vec4f((((u_xlat31.xz * x_1167.x_MainLightShadowmapSize.xy) + u_xlat9.zw)).xy, u_xlat12.zw);
        u_xlat10.w = u_xlat9.y;
        let x_1766 = u_xlat10.yz;
        u_xlat9 = vec4f(u_xlat9.x, x_1766.x, u_xlat9.z, x_1766.y);
        u_xlat13 = ((u_xlat31.xzxz * x_1167.x_MainLightShadowmapSize.xyxy) + u_xlat9.xyzy);
        u_xlat10 = ((u_xlat31.xzxz * x_1167.x_MainLightShadowmapSize.xyxy) + u_xlat10.wywz);
        u_xlat9 = ((u_xlat31.xzxz * x_1167.x_MainLightShadowmapSize.xyxy) + u_xlat9.xwzw);
        u_xlat14 = (u_xlat7.xxxy * u_xlat8.zwyz);
        u_xlat15 = (u_xlat7.yyzz * u_xlat8);
        u_xlat81 = (u_xlat7.z * u_xlat8.y);
        let x_1816 = u_xlat11.xy;
        txVec4 = vec3f(x_1816.x, x_1816.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1831 = u_xlat11.zw;
        txVec5 = vec3f(x_1831.x, x_1831.y, u_xlat4.z);
        u_xlat31.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat31.x = (u_xlat31.x * u_xlat14.y);
        u_xlat82 = ((u_xlat14.x * u_xlat82) + u_xlat31.x);
        let x_1859 = u_xlat12.xy;
        txVec6 = vec3f(x_1859.x, x_1859.y, u_xlat4.z);
        u_xlat31.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat82 = ((u_xlat14.z * u_xlat31.x) + u_xlat82);
        let x_1881 = u_xlat10.xy;
        txVec7 = vec3f(x_1881.x, x_1881.y, u_xlat4.z);
        u_xlat31.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat82 = ((u_xlat14.w * u_xlat31.x) + u_xlat82);
        let x_1903 = u_xlat13.xy;
        txVec8 = vec3f(x_1903.x, x_1903.y, u_xlat4.z);
        u_xlat31.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat82 = ((u_xlat15.x * u_xlat31.x) + u_xlat82);
        let x_1925 = u_xlat13.zw;
        txVec9 = vec3f(x_1925.x, x_1925.y, u_xlat4.z);
        u_xlat31.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat82 = ((u_xlat15.y * u_xlat31.x) + u_xlat82);
        let x_1947 = u_xlat10.zw;
        txVec10 = vec3f(x_1947.x, x_1947.y, u_xlat4.z);
        u_xlat31.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat82 = ((u_xlat15.z * u_xlat31.x) + u_xlat82);
        let x_1969 = u_xlat9.xy;
        txVec11 = vec3f(x_1969.x, x_1969.y, u_xlat4.z);
        u_xlat31.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat82 = ((u_xlat15.w * u_xlat31.x) + u_xlat82);
        let x_1991 = u_xlat9.zw;
        txVec12 = vec3f(x_1991.x, x_1991.y, u_xlat4.z);
        u_xlat31.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat80 = ((u_xlat81 * u_xlat31.x) + u_xlat82);
      } else {
        let x_2017 = ((u_xlat4.xy * x_1167.x_MainLightShadowmapSize.zw) + x_1544);
        u_xlat31 = vec3f(x_2017.x, u_xlat31.y, x_2017.y);
        let x_2022 = floor(u_xlat31.xz);
        u_xlat31 = vec3f(x_2022.x, u_xlat31.y, x_2022.y);
        u_xlat7 = vec4f((((u_xlat4.xy * x_1167.x_MainLightShadowmapSize.zw) + -(u_xlat31.xz))).xy, u_xlat7.zw);
        u_xlat8 = (u_xlat7.xxyy + x_1567);
        u_xlat9 = (u_xlat8.xxzz * u_xlat8.xxzz);
        let x_2049 = (u_xlat9.yw * x_2048);
        u_xlat10 = vec4f(u_xlat10.x, x_2049.x, u_xlat10.z, x_2049.y);
        u_xlat59 = ((u_xlat9.xz * x_1544) + -(u_xlat7.xy));
        let x_2062 = (-(u_xlat7.xy) + x_483);
        u_xlat8 = vec4f(x_2062.x, u_xlat8.y, x_2062.y, u_xlat8.w);
        u_xlat9 = vec4f(min(u_xlat7.xy, vec2f()).xy, u_xlat9.zw);
        let x_2078 = ((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat8.xz);
        u_xlat8 = vec4f(x_2078.x, u_xlat8.y, x_2078.y, u_xlat8.w);
        u_xlat9 = vec4f(max(u_xlat7.xy, vec2f()).xy, u_xlat9.zw);
        let x_2094 = ((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat8.yw);
        u_xlat8 = vec4f(u_xlat8.x, x_2094.x, u_xlat8.z, x_2094.y);
        u_xlat8 = (u_xlat8 + x_280);
        u_xlat9.z = (u_xlat8.y * 0.08163200318813323975f);
        u_xlat11 = vec4f(((u_xlat59.yx * x_2106)).xy, u_xlat11.zw);
        u_xlat59 = (u_xlat8.xz * x_2106);
        u_xlat11.z = (u_xlat8.w * 0.08163200318813323975f);
        u_xlat9.x = u_xlat11.y;
        let x_2127 = ((u_xlat7.xx * x_2123) + x_2126);
        u_xlat9 = vec4f(u_xlat9.x, x_2127.x, u_xlat9.z, x_2127.y);
        let x_2134 = ((u_xlat7.xx * x_2123) + x_2133);
        u_xlat8 = vec4f(x_2134.x, u_xlat8.y, x_2134.y, u_xlat8.w);
        u_xlat8.y = u_xlat59.x;
        u_xlat8.w = u_xlat10.y;
        u_xlat9 = (u_xlat8 + u_xlat9);
        let x_2149 = ((u_xlat7.yy * x_2123) + x_2126);
        u_xlat11 = vec4f(u_xlat11.x, x_2149.x, u_xlat11.z, x_2149.y);
        let x_2155 = ((u_xlat7.yy * x_2123) + x_2133);
        u_xlat10 = vec4f(x_2155.x, u_xlat10.y, x_2155.y, u_xlat10.w);
        u_xlat10.y = u_xlat59.y;
        u_xlat7 = (u_xlat10 + u_xlat11);
        u_xlat8 = (u_xlat8 / u_xlat9);
        u_xlat8 = (u_xlat8 + x_2171);
        u_xlat10 = (u_xlat10 / u_xlat7);
        u_xlat10 = (u_xlat10 + x_2171);
        u_xlat8 = (u_xlat8.wxyz * x_1167.x_MainLightShadowmapSize.xxxx);
        u_xlat10 = (u_xlat10.xwyz * x_1167.x_MainLightShadowmapSize.yyyy);
        let x_2191 = u_xlat8.yzw;
        u_xlat11 = vec4f(x_2191.x, u_xlat11.y, x_2191.yz);
        u_xlat11.y = u_xlat10.x;
        u_xlat12 = ((u_xlat31.xzxz * x_1167.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat13 = vec4f((((u_xlat31.xz * x_1167.x_MainLightShadowmapSize.xy) + u_xlat11.wy)).xy, u_xlat13.zw);
        u_xlat8.y = u_xlat11.y;
        u_xlat11.y = u_xlat10.z;
        u_xlat14 = ((u_xlat31.xzxz * x_1167.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat65 = ((u_xlat31.xz * x_1167.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat8.z = u_xlat11.y;
        u_xlat15 = ((u_xlat31.xzxz * x_1167.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyxz);
        u_xlat11.y = u_xlat10.w;
        u_xlat16 = ((u_xlat31.xzxz * x_1167.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat34 = vec3f((((u_xlat31.xz * x_1167.x_MainLightShadowmapSize.xy) + u_xlat11.wy)).xy, u_xlat34.z);
        u_xlat8.w = u_xlat11.y;
        u_xlat17 = vec4f((((u_xlat31.xz * x_1167.x_MainLightShadowmapSize.xy) + u_xlat8.xw)).xy, u_xlat17.zw);
        let x_2295 = u_xlat11.xzw;
        u_xlat10 = vec4f(x_2295.x, u_xlat10.y, x_2295.yz);
        u_xlat11 = ((u_xlat31.xzxz * x_1167.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyzy);
        u_xlat62 = ((u_xlat31.xz * x_1167.x_MainLightShadowmapSize.xy) + u_xlat10.wy);
        u_xlat10.x = u_xlat8.x;
        let x_2328 = ((u_xlat31.xz * x_1167.x_MainLightShadowmapSize.xy) + u_xlat10.xy);
        u_xlat31 = vec3f(x_2328.x, u_xlat31.y, x_2328.y);
        u_xlat18 = (u_xlat7.xxxx * u_xlat9);
        u_xlat19 = (u_xlat7.yyyy * u_xlat9);
        u_xlat20 = (u_xlat7.zzzz * u_xlat9);
        u_xlat7 = (u_xlat7.wwww * u_xlat9);
        let x_2352 = u_xlat12.xy;
        txVec13 = vec3f(x_2352.x, x_2352.y, u_xlat4.z);
        u_xlat81 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_2366 = u_xlat12.zw;
        txVec14 = vec3f(x_2366.x, x_2366.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat82 = (u_xlat82 * u_xlat18.y);
        u_xlat81 = ((u_xlat18.x * u_xlat81) + u_xlat82);
        let x_2390 = u_xlat13.xy;
        txVec15 = vec3f(x_2390.x, x_2390.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat81 = ((u_xlat18.z * u_xlat82) + u_xlat81);
        let x_2410 = u_xlat15.xy;
        txVec16 = vec3f(x_2410.x, x_2410.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat81 = ((u_xlat18.w * u_xlat82) + u_xlat81);
        let x_2430 = u_xlat14.xy;
        txVec17 = vec3f(x_2430.x, x_2430.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat81 = ((u_xlat19.x * u_xlat82) + u_xlat81);
        let x_2450 = u_xlat14.zw;
        txVec18 = vec3f(x_2450.x, x_2450.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat81 = ((u_xlat19.y * u_xlat82) + u_xlat81);
        txVec19 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat81 = ((u_xlat19.z * u_xlat82) + u_xlat81);
        let x_2489 = u_xlat15.zw;
        txVec20 = vec3f(x_2489.x, x_2489.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat81 = ((u_xlat19.w * u_xlat82) + u_xlat81);
        let x_2509 = u_xlat16.xy;
        txVec21 = vec3f(x_2509.x, x_2509.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat81 = ((u_xlat20.x * u_xlat82) + u_xlat81);
        let x_2529 = u_xlat16.zw;
        txVec22 = vec3f(x_2529.x, x_2529.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat81 = ((u_xlat20.y * u_xlat82) + u_xlat81);
        let x_2549 = u_xlat34.xy;
        txVec23 = vec3f(x_2549.x, x_2549.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat81 = ((u_xlat20.z * u_xlat82) + u_xlat81);
        let x_2569 = u_xlat17.xy;
        txVec24 = vec3f(x_2569.x, x_2569.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat81 = ((u_xlat20.w * u_xlat82) + u_xlat81);
        let x_2589 = u_xlat11.xy;
        txVec25 = vec3f(x_2589.x, x_2589.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat81 = ((u_xlat7.x * u_xlat82) + u_xlat81);
        let x_2609 = u_xlat11.zw;
        txVec26 = vec3f(x_2609.x, x_2609.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat81 = ((u_xlat7.y * u_xlat82) + u_xlat81);
        txVec27 = vec3f(u_xlat62.x, u_xlat62.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat81 = ((u_xlat7.z * u_xlat82) + u_xlat81);
        let x_2648 = u_xlat31.xz;
        txVec28 = vec3f(x_2648.x, x_2648.y, u_xlat4.z);
        u_xlat82 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat80 = ((u_xlat7.w * u_xlat82) + u_xlat81);
      }
    }
  } else {
    let x_2669 = u_xlat4.xy;
    txVec29 = vec3f(x_2669.x, x_2669.y, u_xlat4.z);
    u_xlat80 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat81 = (-(x_1167.x_MainLightShadowParams.x) + 1.0f);
  u_xlat80 = ((u_xlat80 * x_1167.x_MainLightShadowParams.x) + u_xlat81);
  u_xlatb81 = (0.0f >= u_xlat4.z);
  u_xlatb4.x = (u_xlat4.z >= 1.0f);
  u_xlatb81 = (u_xlatb81 | u_xlatb4.x);
  u_xlat80 = select(u_xlat80, 1.0f, u_xlatb81);
  u_xlat4 = vec4f(((vs_INTERP10 + -(x_139.x_WorldSpaceCameraPos))).xyz, u_xlat4.w);
  u_xlat81 = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat82 = ((u_xlat81 * x_1167.x_MainLightShadowParams.z) + x_1167.x_MainLightShadowParams.w);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  u_xlat31.x = (-(u_xlat80) + 1.0f);
  u_xlat80 = ((u_xlat82 * u_xlat31.x) + u_xlat80);
  u_xlatb82 = !((x_2743.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb82) {
    let x_2755 = (vs_INTERP10.yy * x_2743.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy);
    u_xlat31 = vec3f(x_2755.x, u_xlat31.y, x_2755.y);
    let x_2766 = ((x_2743.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_INTERP10.xx) + u_xlat31.xz);
    u_xlat31 = vec3f(x_2766.x, u_xlat31.y, x_2766.y);
    let x_2777 = ((x_2743.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_INTERP10.zz) + u_xlat31.xz);
    u_xlat31 = vec3f(x_2777.x, u_xlat31.y, x_2777.y);
    let x_2785 = (u_xlat31.xz + x_2743.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy);
    u_xlat31 = vec3f(x_2785.x, u_xlat31.y, x_2785.y);
    let x_2791 = ((u_xlat31.xz * x_1544) + x_1544);
    u_xlat31 = vec3f(x_2791.x, u_xlat31.y, x_2791.y);
    let x_2799 = u_xlat31;
    let x_2802 = x_139.x_GlobalMipBias.x;
    let x_2803 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2799.xz, x_2802);
    u_xlat7 = x_2803;
    let x_2814 = vec4f(x_2743.x_MainLightCookieTextureFormat, x_2743.x_MainLightCookieTextureFormat, x_2743.x_MainLightCookieTextureFormat, x_2743.x_MainLightCookieTextureFormat);
    let x_2823 = ((vec4f(x_2814.x, x_2814.y, x_2814.z, x_2814.w) == x_2820)).xz;
    u_xlatb31 = vec3<bool>(x_2823.x, u_xlatb31.y, x_2823.y);
    if (u_xlatb31.z) {
      x_2828 = u_xlat7.w;
    } else {
      x_2828 = u_xlat7.x;
    }
    u_xlat82 = x_2828;
    if (u_xlatb31.x) {
      x_2839 = u_xlat7.xyz;
    } else {
      x_2839 = vec3f(u_xlat82);
    }
    u_xlat7 = vec4f(x_2839.xyz, u_xlat7.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  u_xlat7 = vec4f(((u_xlat7.xyz * x_139.x_MainLightColor.xyz)).xyz, u_xlat7.w);
  u_xlat82 = dot(-(u_xlat2.xyz), u_xlat0.xyz);
  u_xlat82 = (u_xlat82 + u_xlat82);
  u_xlat8 = vec4f((((u_xlat0.xyz * -(vec3f(u_xlat82))) + -(u_xlat2.xyz))).xyz, u_xlat8.w);
  u_xlat82 = dot(u_xlat0.xyz, u_xlat2.xyz);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  u_xlat82 = (-(u_xlat82) + 1.0f);
  u_xlat82 = (u_xlat82 * u_xlat82);
  u_xlat82 = (u_xlat82 * u_xlat82);
  u_xlat5 = vec4f(((u_xlat5.xz * x_139.x_FPParams1.xy)).xy, u_xlat5.zw);
  u_xlatu5 = vec2u(u_xlat5.xy);
  u_xlatu57 = vec2u(x_139.x_FPParams1.zw);
  u_xlati5 = ((bitcast<i32>(u_xlatu5.y) * bitcast<i32>(u_xlatu57.x)) + bitcast<i32>(u_xlatu5.x));
  u_xlatu5.x = (u_xlatu57.y * bitcast<u32>(u_xlati5));
  u_xlat3.x = dot(-(u_xlat3.xyz), u_xlat4.xyz);
  u_xlat29 = log2(u_xlat3.x);
  if (u_xlatb78) {
    x_2948 = u_xlat29;
  } else {
    x_2948 = u_xlat3.x;
  }
  u_xlat78 = x_2948;
  u_xlat78 = ((u_xlat78 * x_139.x_FPParams0.x) + x_139.x_FPParams0.y);
  u_xlatu78 = u32(u_xlat78);
  u_xlatu3 = u32(x_139.x_FPParams2.x);
  u_xlatu3 = (u_xlatu3 + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu57.y) + 2i);
  u_xlatu78 = min(u_xlatu78, u_xlatu3);
  u_xlatu3 = (bitcast<u32>(u_xlati29) * u_xlatu78);
  u_xlatu29 = ((vec2u(u_xlatu78) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu78 = (u_xlatu29.x >> 2u);
  param = bitcast<i32>(u_xlatu29.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_3005 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu29.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_3012 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati4 = vec3i(vec2i(x_3005, x_3012).xy, u_xlati4.z);
  u_xlati31 = bitcast<vec2i>((bitcast<vec2u>(u_xlati4.xx) & bitcast<vec2u>(x_3026.urp_ZBins[bitcast<i32>(u_xlatu78)].wy)));
  let x_3037 = ~(u_xlati4.xy);
  u_xlati4 = vec3i(x_3037.x, u_xlati4.y, x_3037.y);
  u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati4.xx) & bitcast<vec2u>(x_3026.urp_ZBins[bitcast<i32>(u_xlatu78)].zx)));
  u_xlati31 = bitcast<vec2i>((bitcast<vec2u>(u_xlati31) | bitcast<vec2u>(u_xlati9)));
  u_xlati78 = bitcast<i32>((bitcast<u32>(u_xlati4.y) & bitcast<u32>(u_xlati31.x)));
  u_xlati29 = bitcast<i32>((bitcast<u32>(u_xlati4.z) & bitcast<u32>(u_xlati31.y)));
  u_xlatu78 = (bitcast<u32>(u_xlati78) | bitcast<u32>(u_xlati29));
  u_xlatu4 = vec2u(x_139.x_FPParams0.zw);
  u_xlatb31 = ((vec4f() < u_xlat8.xyzz)).xyz;
  u_xlatu9.x = u_xlatu5.x;
  u_xlatu9.y = u_xlatu29.y;
  u_xlati61.x = 0i;
  u_xlatu87 = u_xlatu78;
  u_xlat10.x = 0.0f;
  u_xlat10.y = 0.0f;
  u_xlat10.z = 0.0f;
  u_xlat29 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu56 = (u_xlatu87 >> 16u);
    u_xlati84 = u_xlati61.x;
    u_xlatu85 = u_xlatu87;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb86 = (u_xlati84 == 0i);
      u_xlatu88 = (u_xlatu85 & 65535u);
      u_xlatb88 = (u_xlatu56 >= u_xlatu88);
      u_xlatb86 = (u_xlatb86 & u_xlatb88);
      if (!(u_xlatb86)) {
        break;
      }
      param_6 = u_xlatu85;
      param_7 = 5i;
      param_8 = 11i;
      let x_3147 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu86 = x_3147;
      u_xlatu11 = (vec4u(u_xlatu86) + u_xlatu9.xxyy);
      u_xlatu12 = (u_xlatu11.yw >> x_3159);
      param_9 = bitcast<i32>(u_xlatu11.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3170 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu11.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3177 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu11.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3184 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu11.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3191 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati11 = vec4i(x_3170, x_3177, x_3184, x_3191);
      u_xlati64 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_3200.urp_Tiles[bitcast<i32>(u_xlatu12.x)].wy)));
      u_xlati13 = ~(u_xlati11);
      u_xlati14 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_3200.urp_Tiles[bitcast<i32>(u_xlatu12.x)].zx)));
      let x_3232 = bitcast<vec2i>((bitcast<vec2u>(u_xlati64) | bitcast<vec2u>(u_xlati14)));
      u_xlati12 = vec4i(x_3232.x, u_xlati12.y, x_3232.y, u_xlati12.w);
      u_xlati88 = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati12.x)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati12.z)));
      u_xlati88 = bitcast<i32>((bitcast<u32>(u_xlati88) | bitcast<u32>(u_xlati11.x)));
      u_xlati11 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_3026.urp_ZBins[bitcast<i32>(u_xlatu12.y)].wy))).xy, u_xlati11.zw);
      u_xlati12 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_3026.urp_ZBins[bitcast<i32>(u_xlatu12.y)].zx))).xy, u_xlati12.zw);
      u_xlati11 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xy) | bitcast<vec2u>(u_xlati12.xy))).xy, u_xlati11.zw);
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati11.w) & bitcast<u32>(u_xlati11.x)));
      u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati11.y)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati37) | bitcast<u32>(u_xlati11.x)));
      u_xlati88 = bitcast<i32>((bitcast<u32>(u_xlati88) & bitcast<u32>(u_xlati11.x)));
      u_xlati11.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu85) & 31i)));
      u_xlati88 = bitcast<i32>((bitcast<u32>(u_xlati88) & bitcast<u32>(u_xlati11.x)));
      u_xlati86 = (bitcast<i32>(u_xlatu86) << bitcast<u32>(5i));
      u_xlatu86 = (u_xlatu56 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati86)))));
      u_xlatu86 = min(u_xlatu86, 31u);
      u_xlatu86 = (bitcast<u32>(-(bitcast<i32>(u_xlatu86))) + 31u);
      u_xlatu86 = (4294967295u >> (u_xlatu86 & 31u));
      u_xlati84 = bitcast<i32>((u_xlatu86 & bitcast<u32>(u_xlati88)));
      u_xlati86 = (bitcast<i32>(u_xlatu85) + 32i);
      u_xlatu85 = (bitcast<u32>(u_xlati86) & 4294967264u);
    }
    u_xlatu87 = u_xlatu85;
    u_xlatb56 = (u_xlati84 != 0i);
    u_xlatb86 = (u_xlat29 < 0.99000000953674316406f);
    u_xlatb56 = (u_xlatb56 & u_xlatb86);
    if (!(u_xlatb56)) {
      break;
    }
    u_xlati56 = (0i - u_xlati84);
    u_xlatu56 = (bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati84));
    u_xlat56 = f32(u_xlatu56);
    u_xlatu56 = (bitcast<u32>(u_xlat56) >> 23u);
    u_xlati56 = (bitcast<i32>(u_xlatu56) + -127i);
    u_xlati86 = (1i << bitcast<u32>((u_xlati56 & 31i)));
    u_xlati61.x = bitcast<i32>((bitcast<u32>(u_xlati84) ^ bitcast<u32>(u_xlati86)));
    u_xlati86 = (bitcast<i32>(u_xlatu87) + -32i);
    u_xlati86 = bitcast<i32>((bitcast<u32>(u_xlati86) & 65504u));
    u_xlati56 = (u_xlati56 + u_xlati86);
    u_xlati56 = (-(bitcast<i32>(u_xlatu4.x)) + u_xlati56);
    u_xlat11 = vec4f(((vs_INTERP10 + -(x_3444.urp_ReflProbes_BoxMin[u_xlati56].xyz))).xyz, u_xlat11.w);
    u_xlat12 = vec4f(((-(vs_INTERP10) + x_3444.urp_ReflProbes_BoxMax[u_xlati56].xyz)).xyz, u_xlat12.w);
    u_xlat11 = vec4f(min(u_xlat11.xyz, u_xlat12.xyz).xyz, u_xlat11.w);
    u_xlat11 = vec4f(((u_xlat11.xyz / x_3444.urp_ReflProbes_BoxMax[u_xlati56].www)).xyz, u_xlat11.w);
    u_xlat86 = min(u_xlat11.z, u_xlat11.y);
    u_xlat86 = min(u_xlat86, u_xlat11.x);
    u_xlat86 = clamp(u_xlat86, 0.0f, 1.0f);
    u_xlat88 = (-(u_xlat29) + 1.0f);
    u_xlat86 = min(u_xlat86, u_xlat88);
    u_xlatb88 = (0.0f < x_3444.urp_ReflProbes_ProbePosition[u_xlati56].w);
    if (u_xlatb31.x) {
      x_3503 = x_3444.urp_ReflProbes_BoxMax[u_xlati56].x;
    } else {
      x_3503 = x_3444.urp_ReflProbes_BoxMin[u_xlati56].x;
    }
    u_xlat11.x = x_3503;
    if (u_xlatb31.y) {
      x_3517 = x_3444.urp_ReflProbes_BoxMax[u_xlati56].y;
    } else {
      x_3517 = x_3444.urp_ReflProbes_BoxMin[u_xlati56].y;
    }
    u_xlat11.y = x_3517;
    if (u_xlatb31.z) {
      x_3531 = x_3444.urp_ReflProbes_BoxMax[u_xlati56].z;
    } else {
      x_3531 = x_3444.urp_ReflProbes_BoxMin[u_xlati56].z;
    }
    u_xlat11.z = x_3531;
    u_xlat11 = vec4f(((u_xlat11.xyz + -(vs_INTERP10))).xyz, u_xlat11.w);
    u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat8.xyz)).xyz, u_xlat11.w);
    u_xlat11.x = min(u_xlat11.y, u_xlat11.x);
    u_xlat11.x = min(u_xlat11.z, u_xlat11.x);
    u_xlat37 = (vs_INTERP10 + -(x_3444.urp_ReflProbes_ProbePosition[u_xlati56].xyz));
    u_xlat11 = vec4f((((u_xlat8.xyz * u_xlat11.xxx) + u_xlat37)).xyz, u_xlat11.w);
    if (u_xlatb88) {
      x_3587 = u_xlat11.xyz;
    } else {
      x_3587 = u_xlat8.xyz;
    }
    u_xlat11 = vec4f(x_3587.xyz, u_xlat11.w);
    u_xlatu88 = u32(abs(x_3444.urp_ReflProbes_ProbePosition[u_xlati56].w));
    u_xlatu88 = (u_xlatu88 + 4294967295u);
    u_xlat88 = f32(u_xlatu88);
    u_xlat88 = min(u_xlat88, 4.05000019073486328125f);
    u_xlat89 = dot(abs(u_xlat11.xyz), x_697);
    u_xlat89 = max(u_xlat89, 0.00000099999999747524f);
    u_xlat89 = (1.0f / u_xlat89);
    u_xlat12 = vec4f(((vec3f(u_xlat89) * u_xlat11.zxy)).xyz, u_xlat12.w);
    u_xlat12.x = -(u_xlat12.x);
    u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
    u_xlatb38 = ((u_xlat12.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat12;
    if (u_xlatb38.x) {
      x_3645 = u_xlat12.x;
    } else {
      x_3645 = -(u_xlat12.x);
    }
    hlslcc_movcTemp.x = x_3645;
    if (u_xlatb38.y) {
      x_3658 = u_xlat12.x;
    } else {
      x_3658 = -(u_xlat12.x);
    }
    hlslcc_movcTemp.y = x_3658;
    u_xlat12 = hlslcc_movcTemp;
    u_xlat11 = vec4f((((u_xlat11.xy * vec2f(u_xlat89)) + u_xlat12.xy)).xy, u_xlat11.zw);
    u_xlat11 = vec4f((((u_xlat11.xy * x_1544) + x_1544)).xy, u_xlat11.zw);
    u_xlat11 = vec4f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.zw);
    u_xlat63.x = floor(u_xlat88);
    u_xlat63.y = (u_xlat63.x + 1.0f);
    u_xlat88 = (u_xlat88 + -(u_xlat63.x));
    u_xlatu63 = vec2u(u_xlat63);
    u_xlati63 = ((u_xlati56 * 7i) + bitcast<i32>(u_xlatu63.x));
    u_xlati56 = ((u_xlati56 * 7i) + bitcast<i32>(u_xlatu63.y));
    u_xlat63 = ((u_xlat11.xy * x_3444.urp_ReflProbes_MipScaleOffset[u_xlati63].xy) + x_3444.urp_ReflProbes_MipScaleOffset[u_xlati63].zw);
    u_xlat12 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat63, 0.0f).xyz.xyz, u_xlat12.w);
    u_xlat11 = vec4f((((u_xlat11.xy * x_3444.urp_ReflProbes_MipScaleOffset[u_xlati56].xy) + x_3444.urp_ReflProbes_MipScaleOffset[u_xlati56].zw)).xy, u_xlat11.zw);
    u_xlat11 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat11.xy, 0.0f).xyz.xyz, u_xlat11.w);
    u_xlat11 = vec4f(((-(u_xlat12.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat11 = vec4f((((vec3f(u_xlat88) * u_xlat11.xyz) + u_xlat12.xyz)).xyz, u_xlat11.w);
    u_xlat10 = vec4f((((vec3f(u_xlat86) * u_xlat11.xyz) + u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat29 = (u_xlat29 + u_xlat86);
  }
  u_xlatb78 = (u_xlat29 < 0.99000000953674316406f);
  if (u_xlatb78) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat8.xyz, 4.05000019073486328125f);
    u_xlat78 = (-(u_xlat29) + 1.0f);
    u_xlat29 = (u_xlat8.w + -1.0f);
    u_xlat29 = ((x_139.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat29) + 1.0f);
    u_xlat29 = max(u_xlat29, 0.0f);
    u_xlat29 = log2(u_xlat29);
    u_xlat29 = (u_xlat29 * x_139.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat29 = exp2(u_xlat29);
    u_xlat29 = (u_xlat29 * x_139.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat31 = (u_xlat8.xyz * vec3f(u_xlat29));
    u_xlat10 = vec4f((((vec3f(u_xlat78) * u_xlat31) + u_xlat10.xyz)).xyz, u_xlat10.w);
  }
  u_xlat78 = ((u_xlat82 * 0.5f) + 0.03999999910593032837f);
  u_xlat78 = (u_xlat78 * 0.94117647409439086914f);
  let x_3864 = (vec3f(u_xlat78) * u_xlat10.xyz);
  u_xlat4 = vec4f(x_3864.x, u_xlat4.y, x_3864.yz);
  let x_3874 = ((u_xlat6.xyz * u_xlat1.xyz) + u_xlat4.xzw);
  u_xlat4 = vec4f(x_3874.x, u_xlat4.y, x_3874.yz);
  u_xlati78 = bitcast<i32>((x_139.x_MainLightLayerMask & bitcast<u32>(x_3887.unity_RenderingLayer.x)));
  u_xlat29 = dot(u_xlat0.xyz, x_139.x_MainLightPosition.xyz);
  u_xlat29 = clamp(u_xlat29, 0.0f, 1.0f);
  u_xlat80 = (u_xlat80 * u_xlat29);
  u_xlat31 = (vec3f(u_xlat80) * u_xlat7.xyz);
  u_xlat6 = vec4f(((u_xlat2.xyz + x_139.x_MainLightPosition.xyz)).xyz, u_xlat6.w);
  u_xlat80 = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat80 = max(u_xlat80, 1.17549435e-38f);
  u_xlat80 = inverseSqrt(u_xlat80);
  u_xlat6 = vec4f(((vec3f(u_xlat80) * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat80 = dot(u_xlat0.xyz, u_xlat6.xyz);
  u_xlat80 = clamp(u_xlat80, 0.0f, 1.0f);
  u_xlat29 = dot(x_139.x_MainLightPosition.xyz, u_xlat6.xyz);
  u_xlat29 = clamp(u_xlat29, 0.0f, 1.0f);
  u_xlat80 = (u_xlat80 * u_xlat80);
  u_xlat80 = ((u_xlat80 * -0.9375f) + 1.00001001358032226562f);
  u_xlat29 = (u_xlat29 * u_xlat29);
  u_xlat80 = (u_xlat80 * u_xlat80);
  u_xlat29 = max(u_xlat29, 0.10000000149011611938f);
  u_xlat80 = (u_xlat80 * u_xlat29);
  u_xlat80 = (u_xlat80 * 3.0f);
  u_xlat80 = (0.0625f / u_xlat80);
  u_xlat6 = vec4f((((vec3f(u_xlat80) * x_3976) + u_xlat1.xyz)).xyz, u_xlat6.w);
  u_xlat31 = (u_xlat31 * u_xlat6.xyz);
  if ((u_xlati78 != 0i)) {
    x_3989 = u_xlat31;
  } else {
    x_3989 = vec3f();
  }
  u_xlat31 = x_3989;
  u_xlatu78 = min(u_xlatu4.y, 32u);
  u_xlat80 = ((u_xlat81 * x_1167.x_AdditionalShadowFadeParams.x) + x_1167.x_AdditionalShadowFadeParams.y);
  u_xlat80 = clamp(u_xlat80, 0.0f, 1.0f);
  let x_4016 = vec4f(x_2743.x_AdditionalLightsCookieAtlasTextureFormat, x_2743.x_AdditionalLightsCookieAtlasTextureFormat, x_2743.x_AdditionalLightsCookieAtlasTextureFormat, x_2743.x_AdditionalLightsCookieAtlasTextureFormat);
  let x_4023 = ((vec4f(x_4016.x, x_4016.y, x_4016.z, x_4016.w) == x_2820)).xz;
  u_xlatb29 = vec3<bool>(x_4023.x, u_xlatb29.y, x_4023.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu78)) {
    } else {
      break;
    }
    u_xlat7 = vec4f((((-(vs_INTERP10) * x_4048.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_4048.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat7.w);
    u_xlat85 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat85 = max(u_xlat85, 0.00006103515625f);
    u_xlat8.x = inverseSqrt(u_xlat85);
    u_xlat34 = (u_xlat7.xyz * u_xlat8.xxx);
    u_xlat9.x = (1.0f / u_xlat85);
    u_xlat85 = (u_xlat85 * x_4048.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat85 = ((-(u_xlat85) * u_xlat85) + 1.0f);
    u_xlat85 = max(u_xlat85, 0.0f);
    u_xlat85 = (u_xlat85 * u_xlat85);
    u_xlat85 = (u_xlat85 * u_xlat9.x);
    u_xlat9.x = dot(x_4048.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat34);
    u_xlat9.x = ((u_xlat9.x * x_4048.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_4048.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
    u_xlat9.x = (u_xlat9.x * u_xlat9.x);
    u_xlat85 = (u_xlat85 * u_xlat9.x);
    u_xlatb9 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati35.x = i32(x_1167.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    if (u_xlatb9) {
      x_4150 = -1i;
    } else {
      x_4150 = u_xlati35.x;
    }
    u_xlati9.x = x_4150;
    u_xlatb35.x = (u_xlati9.x >= 0i);
    if (u_xlatb35.x) {
      u_xlatb35.x = any(!((vec4f() == vec4f(x_1167.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb35.x) {
        u_xlatb35 = ((abs(u_xlat34.zzyy) >= abs(u_xlat34.xyxx))).xyz;
        u_xlatb35.x = (u_xlatb35.y & u_xlatb35.x);
        u_xlatb10 = ((-(u_xlat34.zyxz) < vec4f())).xyz;
        u_xlat10.x = select(4.0f, 5.0f, u_xlatb10.x);
        u_xlat10.y = select(2.0f, 3.0f, u_xlatb10.y);
        u_xlat61.x = select(0.0f, 1.0f, u_xlatb10.z);
        if (u_xlatb35.z) {
          x_4214 = u_xlat10.y;
        } else {
          x_4214 = u_xlat61.x;
        }
        u_xlat61.x = x_4214;
        if (u_xlatb35.x) {
          x_4227 = u_xlat10.x;
        } else {
          x_4227 = u_xlat61.x;
        }
        u_xlat35.x = x_4227;
        u_xlati35.x = i32(u_xlat35.x);
        u_xlati9.x = (u_xlati35.x + u_xlati9.x);
      }
      u_xlati9.x = (u_xlati9.x << bitcast<u32>(2i));
      u_xlat10 = (vs_INTERP10.yyyy * x_1167.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati9.x + 1i)]);
      u_xlat10 = ((x_1167.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati9.x] * vs_INTERP10.xxxx) + u_xlat10);
      u_xlat10 = ((x_1167.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati9.x + 2i)] * vs_INTERP10.zzzz) + u_xlat10);
      u_xlat9 = (u_xlat10 + x_1167.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati9.x + 3i)]);
      u_xlat9 = vec4f(((u_xlat9.xyz / u_xlat9.www)).xyz, u_xlat9.w);
      u_xlatb87 = (0.0f < x_1167.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb87) {
        u_xlatb87 = (1.0f == x_1167.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb87) {
          u_xlat10 = (u_xlat9.xyxy + x_1167.x_AdditionalShadowOffset0);
          let x_4316 = u_xlat10.xy;
          txVec30 = vec3f(x_4316.x, x_4316.y, u_xlat9.z);
          u_xlat11.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_4332 = u_xlat10.zw;
          txVec31 = vec3f(x_4332.x, x_4332.y, u_xlat9.z);
          u_xlat11.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat10 = (u_xlat9.xyxy + x_1167.x_AdditionalShadowOffset1);
          let x_4352 = u_xlat10.xy;
          txVec32 = vec3f(x_4352.x, x_4352.y, u_xlat9.z);
          u_xlat11.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_4367 = u_xlat10.zw;
          txVec33 = vec3f(x_4367.x, x_4367.y, u_xlat9.z);
          u_xlat11.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat87 = dot(u_xlat11, x_1527);
        } else {
          u_xlatb10.x = (2.0f == x_1167.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb10.x) {
            u_xlat10 = vec4f((((u_xlat9.xy * x_1167.x_AdditionalShadowmapSize.zw) + x_1544)).xy, u_xlat10.zw);
            u_xlat10 = vec4f(floor(u_xlat10.xy).xy, u_xlat10.zw);
            u_xlat62 = ((u_xlat9.xy * x_1167.x_AdditionalShadowmapSize.zw) + -(u_xlat10.xy));
            u_xlat11 = (u_xlat62.xxyy + x_1567);
            u_xlat12 = (u_xlat11.xxzz * u_xlat11.xxzz);
            let x_4428 = (u_xlat12.yw * x_1579);
            u_xlat11 = vec4f(x_4428.x, u_xlat11.y, x_4428.y, u_xlat11.w);
            u_xlat12 = vec4f((((u_xlat12.xz * x_1544) + -(u_xlat62))).xy, u_xlat12.zw);
            u_xlat64 = (-(u_xlat62) + x_483);
            u_xlat13 = vec4f(min(u_xlat62, vec2f()).xy, u_xlat13.zw);
            u_xlat13 = vec4f((((-(u_xlat13.xy) * u_xlat13.xy) + u_xlat64)).xy, u_xlat13.zw);
            u_xlat62 = max(u_xlat62, vec2f());
            u_xlat62 = ((-(u_xlat62) * u_xlat62) + u_xlat11.yw);
            u_xlat13 = vec4f(((u_xlat13.xy + x_483)).xy, u_xlat13.zw);
            u_xlat62 = (u_xlat62 + x_483);
            u_xlat14 = vec4f(((u_xlat12.xy * x_1635)).xy, u_xlat14.zw);
            u_xlat12 = vec4f(((u_xlat64 * x_1635)).xy, u_xlat12.zw);
            u_xlat13 = vec4f(((u_xlat13.xy * x_1635)).xy, u_xlat13.zw);
            u_xlat15 = vec4f(((u_xlat62 * x_1635)).xy, u_xlat15.zw);
            u_xlat62 = (u_xlat11.yw * x_1635);
            u_xlat14.z = u_xlat13.x;
            u_xlat14.w = u_xlat62.x;
            u_xlat12.z = u_xlat15.x;
            u_xlat12.w = u_xlat11.x;
            u_xlat16 = (u_xlat12.zwxz + u_xlat14.zwxz);
            u_xlat13.z = u_xlat14.y;
            u_xlat13.w = u_xlat62.y;
            u_xlat15.z = u_xlat12.y;
            u_xlat15.w = u_xlat11.z;
            u_xlat11 = vec4f(((u_xlat13.zyw + u_xlat15.zyw)).xyz, u_xlat11.w);
            u_xlat12 = vec4f(((u_xlat12.xzw / u_xlat16.zwy)).xyz, u_xlat12.w);
            u_xlat12 = vec4f(((u_xlat12.xyz + x_1707)).xyz, u_xlat12.w);
            u_xlat13 = vec4f(((u_xlat15.zyw / u_xlat11.xyz)).xyz, u_xlat13.w);
            u_xlat13 = vec4f(((u_xlat13.xyz + x_1707)).xyz, u_xlat13.w);
            u_xlat12 = vec4f(((u_xlat12.yxz * x_1167.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat12.w);
            u_xlat13 = vec4f(((u_xlat13.xyz * x_1167.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat13.w);
            u_xlat12.w = u_xlat13.x;
            u_xlat14 = ((u_xlat10.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat12.ywxw);
            u_xlat62 = ((u_xlat10.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat12.zw);
            u_xlat13.w = u_xlat12.y;
            let x_4595 = u_xlat13.yz;
            u_xlat12 = vec4f(u_xlat12.x, x_4595.x, u_xlat12.z, x_4595.y);
            u_xlat15 = ((u_xlat10.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat12.xyzy);
            u_xlat13 = ((u_xlat10.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat13.wywz);
            u_xlat12 = ((u_xlat10.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat12.xwzw);
            u_xlat17 = (u_xlat11.xxxy * u_xlat16.zwyz);
            u_xlat18 = (u_xlat11.yyzz * u_xlat16);
            u_xlat10.x = (u_xlat11.z * u_xlat16.y);
            let x_4642 = u_xlat14.xy;
            txVec34 = vec3f(x_4642.x, x_4642.y, u_xlat9.z);
            u_xlat36.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_4658 = u_xlat14.zw;
            txVec35 = vec3f(x_4658.x, x_4658.y, u_xlat9.z);
            u_xlat11.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat11.x = (u_xlat11.x * u_xlat17.y);
            u_xlat36.x = ((u_xlat17.x * u_xlat36.x) + u_xlat11.x);
            txVec36 = vec3f(u_xlat62.x, u_xlat62.y, u_xlat9.z);
            u_xlat62.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat36.x = ((u_xlat17.z * u_xlat62.x) + u_xlat36.x);
            let x_4711 = u_xlat13.xy;
            txVec37 = vec3f(x_4711.x, x_4711.y, u_xlat9.z);
            u_xlat62.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat36.x = ((u_xlat17.w * u_xlat62.x) + u_xlat36.x);
            let x_4735 = u_xlat15.xy;
            txVec38 = vec3f(x_4735.x, x_4735.y, u_xlat9.z);
            u_xlat62.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat36.x = ((u_xlat18.x * u_xlat62.x) + u_xlat36.x);
            let x_4759 = u_xlat15.zw;
            txVec39 = vec3f(x_4759.x, x_4759.y, u_xlat9.z);
            u_xlat62.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat36.x = ((u_xlat18.y * u_xlat62.x) + u_xlat36.x);
            let x_4783 = u_xlat13.zw;
            txVec40 = vec3f(x_4783.x, x_4783.y, u_xlat9.z);
            u_xlat62.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat36.x = ((u_xlat18.z * u_xlat62.x) + u_xlat36.x);
            let x_4807 = u_xlat12.xy;
            txVec41 = vec3f(x_4807.x, x_4807.y, u_xlat9.z);
            u_xlat62.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat36.x = ((u_xlat18.w * u_xlat62.x) + u_xlat36.x);
            let x_4831 = u_xlat12.zw;
            txVec42 = vec3f(x_4831.x, x_4831.y, u_xlat9.z);
            u_xlat62.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat87 = ((u_xlat10.x * u_xlat62.x) + u_xlat36.x);
          } else {
            u_xlat10 = vec4f((((u_xlat9.xy * x_1167.x_AdditionalShadowmapSize.zw) + x_1544)).xy, u_xlat10.zw);
            u_xlat10 = vec4f(floor(u_xlat10.xy).xy, u_xlat10.zw);
            u_xlat62 = ((u_xlat9.xy * x_1167.x_AdditionalShadowmapSize.zw) + -(u_xlat10.xy));
            u_xlat11 = (u_xlat62.xxyy + x_1567);
            u_xlat12 = (u_xlat11.xxzz * u_xlat11.xxzz);
            let x_4887 = (u_xlat12.yw * x_2048);
            u_xlat13 = vec4f(u_xlat13.x, x_4887.x, u_xlat13.z, x_4887.y);
            let x_4895 = ((u_xlat12.xz * x_1544) + -(u_xlat62));
            u_xlat11 = vec4f(x_4895.x, u_xlat11.y, x_4895.y, u_xlat11.w);
            u_xlat12 = vec4f(((-(u_xlat62) + x_483)).xy, u_xlat12.zw);
            u_xlat64 = min(u_xlat62, vec2f());
            u_xlat12 = vec4f((((-(u_xlat64) * u_xlat64) + u_xlat12.xy)).xy, u_xlat12.zw);
            u_xlat64 = max(u_xlat62, vec2f());
            let x_4922 = ((-(u_xlat64) * u_xlat64) + u_xlat11.yw);
            u_xlat37 = vec3f(x_4922.x, u_xlat37.y, x_4922.y);
            u_xlat12 = vec4f(((u_xlat12.xy + x_4927)).xy, u_xlat12.zw);
            let x_4933 = (u_xlat37.xz + x_4927);
            u_xlat11 = vec4f(u_xlat11.x, x_4933.x, u_xlat11.z, x_4933.y);
            u_xlat14.z = (u_xlat11.y * 0.08163200318813323975f);
            u_xlat15 = vec4f(((u_xlat11.zxw * x_4942)).xyz, u_xlat15.w);
            u_xlat11 = vec4f(((u_xlat12.xy * x_2106)).xy, u_xlat11.zw);
            u_xlat14.x = u_xlat15.y;
            let x_4957 = ((u_xlat62.xx * x_2123) + x_2126);
            u_xlat14 = vec4f(u_xlat14.x, x_4957.x, u_xlat14.z, x_4957.y);
            let x_4963 = ((u_xlat62.xx * x_2123) + x_2133);
            u_xlat12 = vec4f(x_4963.x, u_xlat12.y, x_4963.y, u_xlat12.w);
            u_xlat12.y = u_xlat11.x;
            u_xlat12.w = u_xlat13.y;
            u_xlat14 = (u_xlat12 + u_xlat14);
            let x_4978 = ((u_xlat62.yy * x_2123) + x_2126);
            u_xlat15 = vec4f(u_xlat15.x, x_4978.x, u_xlat15.z, x_4978.y);
            let x_4984 = ((u_xlat62.yy * x_2123) + x_2133);
            u_xlat13 = vec4f(x_4984.x, u_xlat13.y, x_4984.y, u_xlat13.w);
            u_xlat13.y = u_xlat11.y;
            u_xlat11 = (u_xlat13 + u_xlat15);
            u_xlat12 = (u_xlat12 / u_xlat14);
            u_xlat12 = (u_xlat12 + x_2171);
            u_xlat13 = (u_xlat13 / u_xlat11);
            u_xlat13 = (u_xlat13 + x_2171);
            u_xlat12 = (u_xlat12.wxyz * x_1167.x_AdditionalShadowmapSize.xxxx);
            u_xlat13 = (u_xlat13.xwyz * x_1167.x_AdditionalShadowmapSize.yyyy);
            let x_5016 = u_xlat12.yzw;
            u_xlat15 = vec4f(x_5016.x, u_xlat15.y, x_5016.yz);
            u_xlat15.y = u_xlat13.x;
            u_xlat16 = ((u_xlat10.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat62 = ((u_xlat10.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat15.wy);
            u_xlat12.y = u_xlat15.y;
            u_xlat15.y = u_xlat13.z;
            u_xlat17 = ((u_xlat10.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat18 = vec4f((((u_xlat10.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat15.wy)).xy, u_xlat18.zw);
            u_xlat12.z = u_xlat15.y;
            u_xlat19 = ((u_xlat10.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat12.xyxz);
            u_xlat15.y = u_xlat13.w;
            u_xlat20 = ((u_xlat10.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat38 = ((u_xlat10.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat15.wy);
            u_xlat12.w = u_xlat15.y;
            u_xlat70 = ((u_xlat10.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat12.xw);
            let x_5114 = u_xlat15.xzw;
            u_xlat13 = vec4f(x_5114.x, u_xlat13.y, x_5114.yz);
            u_xlat15 = ((u_xlat10.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyzy);
            u_xlat65 = ((u_xlat10.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat13.wy);
            u_xlat13.x = u_xlat12.x;
            u_xlat10 = vec4f((((u_xlat10.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat13.xy)).xy, u_xlat10.zw);
            u_xlat21 = (u_xlat11.xxxx * u_xlat14);
            u_xlat22 = (u_xlat11.yyyy * u_xlat14);
            u_xlat23 = (u_xlat11.zzzz * u_xlat14);
            u_xlat11 = (u_xlat11.wwww * u_xlat14);
            let x_5170 = u_xlat16.xy;
            txVec43 = vec3f(x_5170.x, x_5170.y, u_xlat9.z);
            u_xlat12.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_5185 = u_xlat16.zw;
            txVec44 = vec3f(x_5185.x, x_5185.y, u_xlat9.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat90 = (u_xlat90 * u_xlat21.y);
            u_xlat12.x = ((u_xlat21.x * u_xlat12.x) + u_xlat90);
            txVec45 = vec3f(u_xlat62.x, u_xlat62.y, u_xlat9.z);
            u_xlat62.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat62.x = ((u_xlat21.z * u_xlat62.x) + u_xlat12.x);
            let x_5235 = u_xlat19.xy;
            txVec46 = vec3f(x_5235.x, x_5235.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat62.x = ((u_xlat21.w * u_xlat88) + u_xlat62.x);
            let x_5257 = u_xlat17.xy;
            txVec47 = vec3f(x_5257.x, x_5257.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat62.x = ((u_xlat22.x * u_xlat88) + u_xlat62.x);
            let x_5279 = u_xlat17.zw;
            txVec48 = vec3f(x_5279.x, x_5279.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat62.x = ((u_xlat22.y * u_xlat88) + u_xlat62.x);
            let x_5301 = u_xlat18.xy;
            txVec49 = vec3f(x_5301.x, x_5301.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat62.x = ((u_xlat22.z * u_xlat88) + u_xlat62.x);
            let x_5323 = u_xlat19.zw;
            txVec50 = vec3f(x_5323.x, x_5323.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat62.x = ((u_xlat22.w * u_xlat88) + u_xlat62.x);
            let x_5345 = u_xlat20.xy;
            txVec51 = vec3f(x_5345.x, x_5345.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat62.x = ((u_xlat23.x * u_xlat88) + u_xlat62.x);
            let x_5367 = u_xlat20.zw;
            txVec52 = vec3f(x_5367.x, x_5367.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat62.x = ((u_xlat23.y * u_xlat88) + u_xlat62.x);
            txVec53 = vec3f(u_xlat38.x, u_xlat38.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat62.x = ((u_xlat23.z * u_xlat88) + u_xlat62.x);
            txVec54 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat62.x = ((u_xlat23.w * u_xlat88) + u_xlat62.x);
            let x_5431 = u_xlat15.xy;
            txVec55 = vec3f(x_5431.x, x_5431.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat62.x = ((u_xlat11.x * u_xlat88) + u_xlat62.x);
            let x_5453 = u_xlat15.zw;
            txVec56 = vec3f(x_5453.x, x_5453.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat62.x = ((u_xlat11.y * u_xlat88) + u_xlat62.x);
            txVec57 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat9.z);
            u_xlat88 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat62.x = ((u_xlat11.z * u_xlat88) + u_xlat62.x);
            let x_5496 = u_xlat10.xy;
            txVec58 = vec3f(x_5496.x, x_5496.y, u_xlat9.z);
            u_xlat10.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat87 = ((u_xlat11.w * u_xlat10.x) + u_xlat62.x);
          }
        }
      } else {
        let x_5520 = u_xlat9.xy;
        txVec59 = vec3f(x_5520.x, x_5520.y, u_xlat9.z);
        u_xlat87 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat9.x = (1.0f + -(x_1167.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat9.x = ((u_xlat87 * x_1167.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat9.x);
      u_xlatb35.x = (0.0f >= u_xlat9.z);
      u_xlatb61 = (u_xlat9.z >= 1.0f);
      u_xlatb35.x = (u_xlatb61 | u_xlatb35.x);
      if (u_xlatb35.x) {
        x_5564 = 1.0f;
      } else {
        x_5564 = u_xlat9.x;
      }
      u_xlat9.x = x_5564;
    } else {
      u_xlat9.x = 1.0f;
    }
    u_xlat35.x = (-(u_xlat9.x) + 1.0f);
    u_xlat9.x = ((u_xlat80 * u_xlat35.x) + u_xlat9.x);
    u_xlati35.x = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati35.x) & bitcast<u32>(x_2743.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati35.x != 0i)) {
      u_xlati35.x = i32(x_2743.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati61.x = select(1i, 0i, (u_xlati35.x != 0i));
      u_xlati87 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati61.x != 0i)) {
        u_xlat10 = vec4f(((vs_INTERP10.yyy * x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati87 + 1i)].xyw)).xyz, u_xlat10.w);
        u_xlat10 = vec4f((((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati87].xyw * vs_INTERP10.xxx) + u_xlat10.xyz)).xyz, u_xlat10.w);
        u_xlat10 = vec4f((((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati87 + 2i)].xyw * vs_INTERP10.zzz) + u_xlat10.xyz)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz + x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati87 + 3i)].xyw)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xy / u_xlat10.zz)).xy, u_xlat10.zw);
        u_xlat10 = vec4f((((u_xlat10.xy * x_1544) + x_1544)).xy, u_xlat10.zw);
        u_xlat10 = vec4f(clamp(u_xlat10.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat10.zw);
        u_xlat10 = vec4f((((x_2743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat10.xy) + x_2743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat10.zw);
      } else {
        u_xlatb35.x = (u_xlati35.x == 1i);
        u_xlati35.x = select(0i, 1i, u_xlatb35.x);
        if ((u_xlati35.x != 0i)) {
          u_xlat35 = vec3f(((vs_INTERP10.yy * x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati87 + 1i)].xy)).xy, u_xlat35.z);
          u_xlat35 = vec3f((((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati87].xy * vs_INTERP10.xx) + u_xlat35.xy)).xy, u_xlat35.z);
          u_xlat35 = vec3f((((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati87 + 2i)].xy * vs_INTERP10.zz) + u_xlat35.xy)).xy, u_xlat35.z);
          u_xlat35 = vec3f(((u_xlat35.xy + x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati87 + 3i)].xy)).xy, u_xlat35.z);
          u_xlat35 = vec3f((((u_xlat35.xy * x_1544) + x_1544)).xy, u_xlat35.z);
          u_xlat35 = vec3f(fract(u_xlat35.xy).xy, u_xlat35.z);
          u_xlat10 = vec4f((((x_2743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat35.xy) + x_2743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat10.zw);
        } else {
          u_xlat11 = (vs_INTERP10.yyyy * x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati87 + 1i)]);
          u_xlat11 = ((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati87] * vs_INTERP10.xxxx) + u_xlat11);
          u_xlat11 = ((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati87 + 2i)] * vs_INTERP10.zzzz) + u_xlat11);
          u_xlat11 = (u_xlat11 + x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati87 + 3i)]);
          u_xlat35 = (u_xlat11.xyz / u_xlat11.www);
          u_xlat62.x = dot(u_xlat35, u_xlat35);
          u_xlat62.x = inverseSqrt(u_xlat62.x);
          u_xlat35 = (u_xlat35 * u_xlat62.xxx);
          u_xlat62.x = dot(abs(u_xlat35), x_697);
          u_xlat62.x = max(u_xlat62.x, 0.00000099999999747524f);
          u_xlat62.x = (1.0f / u_xlat62.x);
          u_xlat11 = vec4f(((u_xlat35.zxy * u_xlat62.xxx)).xyz, u_xlat11.w);
          u_xlat11.x = -(u_xlat11.x);
          u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
          u_xlatb37 = vec3<bool>(((u_xlat11.yzyy >= vec4f())).xy.xy, u_xlatb37.z);
          hlslcc_movcTemp_1 = u_xlat11;
          if (u_xlatb37.x) {
            x_5879 = u_xlat11.x;
          } else {
            x_5879 = -(u_xlat11.x);
          }
          hlslcc_movcTemp_1.x = x_5879;
          if (u_xlatb37.y) {
            x_5892 = u_xlat11.x;
          } else {
            x_5892 = -(u_xlat11.x);
          }
          hlslcc_movcTemp_1.y = x_5892;
          u_xlat11 = hlslcc_movcTemp_1;
          u_xlat35 = vec3f((((u_xlat35.xy * u_xlat62.xx) + u_xlat11.xy)).xy, u_xlat35.z);
          u_xlat35 = vec3f((((u_xlat35.xy * x_1544) + x_1544)).xy, u_xlat35.z);
          u_xlat35 = vec3f(clamp(u_xlat35.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat35.z);
          u_xlat10 = vec4f((((x_2743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat35.xy) + x_2743.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat10.zw);
        }
      }
      u_xlat10 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat10.xy, 0.0f);
      if (u_xlatb29.z) {
        x_5952 = u_xlat10.w;
      } else {
        x_5952 = u_xlat10.x;
      }
      u_xlat35.x = x_5952;
      if (u_xlatb29.x) {
        x_5964 = u_xlat10.xyz;
      } else {
        x_5964 = u_xlat35.xxx;
      }
      u_xlat35 = x_5964;
    } else {
      u_xlat35.x = 1.0f;
      u_xlat35.y = 1.0f;
      u_xlat35.z = 1.0f;
    }
    u_xlat35 = (u_xlat35 * x_4048.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlati10.x = bitcast<i32>((bitcast<u32>(x_3887.unity_RenderingLayer.x) & bitcast<u32>(x_4048.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat85 = (u_xlat85 * u_xlat9.x);
    u_xlat9.x = dot(u_xlat0.xyz, u_xlat34);
    u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
    u_xlat85 = (u_xlat85 * u_xlat9.x);
    u_xlat9 = vec4f(((vec3f(u_xlat85) * u_xlat35)).xyz, u_xlat9.w);
    u_xlat7 = vec4f((((u_xlat7.xyz * u_xlat8.xxx) + u_xlat2.xyz)).xyz, u_xlat7.w);
    u_xlat85 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat85 = max(u_xlat85, 1.17549435e-38f);
    u_xlat85 = inverseSqrt(u_xlat85);
    u_xlat7 = vec4f(((vec3f(u_xlat85) * u_xlat7.xyz)).xyz, u_xlat7.w);
    u_xlat7.w = dot(u_xlat0.xyz, u_xlat7.xyz);
    u_xlat7.w = clamp(u_xlat7.w, 0.0f, 1.0f);
    u_xlat7.x = dot(u_xlat34, u_xlat7.xyz);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7 = vec4f(((u_xlat7.xw * u_xlat7.xw)).xy, u_xlat7.zw);
    u_xlat33 = ((u_xlat7.y * -0.9375f) + 1.00001001358032226562f);
    u_xlat33 = (u_xlat33 * u_xlat33);
    u_xlat7.x = max(u_xlat7.x, 0.10000000149011611938f);
    u_xlat7.x = (u_xlat7.x * u_xlat33);
    u_xlat7.x = (u_xlat7.x * 3.0f);
    u_xlat7.x = (0.0625f / u_xlat7.x);
    u_xlat7 = vec4f((((u_xlat7.xxx * x_3976) + u_xlat1.xyz)).xyz, u_xlat7.w);
    u_xlat7 = vec4f((((u_xlat7.xyz * u_xlat9.xyz) + u_xlat6.xyz)).xyz, u_xlat7.w);
    if ((u_xlati10.x != 0i)) {
      x_6117 = u_xlat7.xyz;
    } else {
      x_6117 = u_xlat6.xyz;
    }
    u_xlat6 = vec4f(x_6117.xyz, u_xlat6.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu78 = (u_xlatu3 >> 2u);
  param_21 = bitcast<i32>(u_xlatu3);
  param_22 = 0i;
  param_23 = 1i;
  let x_6138 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu3);
  param_25 = 1i;
  param_26 = 1i;
  let x_6144 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati7 = vec3i(vec2i(x_6138, x_6144).xy, u_xlati7.z);
  u_xlati59 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_3026.urp_ZBins[bitcast<i32>(u_xlatu78)].wy)));
  u_xlati8 = vec3i((~(u_xlati7.xy)).xy, u_xlati8.z);
  let x_6176 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8.xx) & bitcast<vec2u>(x_3026.urp_ZBins[bitcast<i32>(u_xlatu78)].zx)));
  u_xlati8 = vec3i(x_6176.x, u_xlati8.y, x_6176.y);
  let x_6185 = bitcast<vec2i>((bitcast<vec2u>(u_xlati59) | bitcast<vec2u>(u_xlati8.xz)));
  u_xlati7 = vec3i(x_6185.x, u_xlati7.y, x_6185.y);
  u_xlati78 = bitcast<i32>((bitcast<u32>(u_xlati7.y) & bitcast<u32>(u_xlati7.x)));
  u_xlati3 = bitcast<i32>((bitcast<u32>(u_xlati8.y) & bitcast<u32>(u_xlati7.z)));
  u_xlatu78 = (bitcast<u32>(u_xlati78) | bitcast<u32>(u_xlati3));
  u_xlatu7.x = u_xlatu5.x;
  u_xlatu7.y = u_xlatu29.y;
  u_xlati59.x = 0i;
  u_xlatu85 = u_xlatu78;
  u_xlat8 = vec4f(u_xlat6.xyz.xyz, u_xlat8.w);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu3 = (u_xlatu85 >> 16u);
    u_xlati84 = u_xlati59.x;
    u_xlatu86 = u_xlatu85;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb9 = (u_xlati84 == 0i);
      u_xlatu35.x = (u_xlatu86 & 65535u);
      u_xlatb35.x = (u_xlatu3 >= u_xlatu35.x);
      u_xlatb9 = (u_xlatb35.x & u_xlatb9);
      if (!(u_xlatb9)) {
        break;
      }
      param_27 = u_xlatu86;
      param_28 = 5i;
      param_29 = 11i;
      let x_6262 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu9.x = x_6262;
      u_xlatu10 = (u_xlatu7.xxyy + u_xlatu9.xxxx);
      u_xlatu35 = (u_xlatu10.yw >> x_3159);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_6279 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_6286 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_6293 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_6300 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_6279, x_6286, x_6293, x_6300);
      u_xlati11 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_3200.urp_Tiles[bitcast<i32>(u_xlatu35.x)].wy))).xy, u_xlati11.zw);
      u_xlati12 = ~(u_xlati10);
      let x_6329 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_3200.urp_Tiles[bitcast<i32>(u_xlatu35.x)].zx)));
      u_xlati35 = vec3i(x_6329.x, u_xlati35.y, x_6329.y);
      let x_6339 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xz) | bitcast<vec2u>(u_xlati11.xy)));
      u_xlati35 = vec3i(x_6339.x, u_xlati35.y, x_6339.y);
      u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati35.x)));
      u_xlati87 = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati35.z)));
      u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati87) | bitcast<u32>(u_xlati35.x)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_3026.urp_ZBins[bitcast<i32>(u_xlatu35.y)].wy))).xy, u_xlati10.zw);
      u_xlati61 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_3026.urp_ZBins[bitcast<i32>(u_xlatu35.y)].zx)));
      u_xlati61 = bitcast<vec2i>((bitcast<vec2u>(u_xlati61) | bitcast<vec2u>(u_xlati10.xy)));
      u_xlati61.x = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati61.x)));
      u_xlati87 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati61.y)));
      u_xlati61.x = bitcast<i32>((bitcast<u32>(u_xlati87) | bitcast<u32>(u_xlati61.x)));
      u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati61.x) & bitcast<u32>(u_xlati35.x)));
      u_xlati61.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu86) & 31i)));
      u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati61.x) & bitcast<u32>(u_xlati35.x)));
      u_xlati9.x = (bitcast<i32>(u_xlatu9.x) << bitcast<u32>(5i));
      u_xlatu9.x = (u_xlatu3 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati9.x)))));
      u_xlatu9.x = min(u_xlatu9.x, 31u);
      u_xlatu9.x = (bitcast<u32>(-(bitcast<i32>(u_xlatu9.x))) + 31u);
      u_xlatu9.x = (4294967295u >> (u_xlatu9.x & 31u));
      u_xlati84 = bitcast<i32>((u_xlatu9.x & bitcast<u32>(u_xlati35.x)));
      u_xlati9.x = (bitcast<i32>(u_xlatu86) + 32i);
      u_xlatu86 = (bitcast<u32>(u_xlati9.x) & 4294967264u);
    }
    u_xlatu85 = u_xlatu86;
    if ((u_xlati84 == 0i)) {
      break;
    }
    u_xlati3 = (0i - u_xlati84);
    u_xlatu3 = (bitcast<u32>(u_xlati3) & bitcast<u32>(u_xlati84));
    u_xlat3.x = f32(u_xlatu3);
    u_xlatu3 = (bitcast<u32>(u_xlat3.x) >> 23u);
    u_xlati3 = (bitcast<i32>(u_xlatu3) + -127i);
    u_xlati9.x = (1i << bitcast<u32>((u_xlati3 & 31i)));
    u_xlati59.x = bitcast<i32>((bitcast<u32>(u_xlati84) ^ bitcast<u32>(u_xlati9.x)));
    u_xlati9.x = (bitcast<i32>(u_xlatu85) + -32i);
    u_xlati9.x = bitcast<i32>((bitcast<u32>(u_xlati9.x) & 65504u));
    u_xlati3 = (u_xlati3 + u_xlati9.x);
    u_xlati3 = (bitcast<i32>(u_xlatu4.y) + u_xlati3);
    u_xlat9 = vec4f((((-(vs_INTERP10) * x_4048.x_AdditionalLightsPosition[u_xlati3].www) + x_4048.x_AdditionalLightsPosition[u_xlati3].xyz)).xyz, u_xlat9.w);
    u_xlat87 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat87 = max(u_xlat87, 0.00006103515625f);
    u_xlat10.x = inverseSqrt(u_xlat87);
    u_xlat36 = (u_xlat9.xyz * u_xlat10.xxx);
    u_xlat11.x = (1.0f / u_xlat87);
    u_xlat87 = (u_xlat87 * x_4048.x_AdditionalLightsAttenuation[u_xlati3].x);
    u_xlat87 = ((-(u_xlat87) * u_xlat87) + 1.0f);
    u_xlat87 = max(u_xlat87, 0.0f);
    u_xlat87 = (u_xlat87 * u_xlat87);
    u_xlat87 = (u_xlat87 * u_xlat11.x);
    u_xlat11.x = dot(x_4048.x_AdditionalLightsSpotDir[u_xlati3].xyz, u_xlat36);
    u_xlat11.x = ((u_xlat11.x * x_4048.x_AdditionalLightsAttenuation[u_xlati3].z) + x_4048.x_AdditionalLightsAttenuation[u_xlati3].w);
    u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
    u_xlat11.x = (u_xlat11.x * u_xlat11.x);
    u_xlat87 = (u_xlat87 * u_xlat11.x);
    u_xlatb11 = (u_xlati3 < 0i);
    u_xlati37 = i32(x_1167.x_AdditionalShadowParams[u_xlati3].w);
    u_xlati11.x = select(u_xlati37, -1i, u_xlatb11);
    u_xlatb37.x = (u_xlati11.x >= 0i);
    if (u_xlatb37.x) {
      u_xlatb37.x = any(!((vec4f() == vec4f(x_1167.x_AdditionalShadowParams[u_xlati3].z))));
      if (u_xlatb37.x) {
        u_xlatb37 = ((abs(u_xlat36.zzyy) >= abs(u_xlat36.xyxx))).xyz;
        u_xlatb37.x = (u_xlatb37.y & u_xlatb37.x);
        u_xlatb12 = ((-(u_xlat36.zyxz) < vec4f())).xyz;
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat63.x = select(0.0f, 1.0f, u_xlatb12.z);
        if (u_xlatb37.z) {
          x_6690 = u_xlat12.y;
        } else {
          x_6690 = u_xlat63.x;
        }
        u_xlat63.x = x_6690;
        if (u_xlatb37.x) {
          x_6702 = u_xlat12.x;
        } else {
          x_6702 = u_xlat63.x;
        }
        u_xlat37.x = x_6702;
        u_xlati37 = i32(u_xlat37.x);
        u_xlati11.x = (u_xlati37 + u_xlati11.x);
      }
      u_xlati11.x = (u_xlati11.x << bitcast<u32>(2i));
      u_xlat12 = (vs_INTERP10.yyyy * x_1167.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati11.x + 1i)]);
      u_xlat12 = ((x_1167.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati11.x] * vs_INTERP10.xxxx) + u_xlat12);
      u_xlat12 = ((x_1167.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati11.x + 2i)] * vs_INTERP10.zzzz) + u_xlat12);
      u_xlat11 = (u_xlat12 + x_1167.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati11.x + 3i)]);
      u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat11.www)).xyz, u_xlat11.w);
      u_xlatb89 = (0.0f < x_1167.x_AdditionalShadowParams[u_xlati3].y);
      if (u_xlatb89) {
        u_xlatb89 = (1.0f == x_1167.x_AdditionalShadowParams[u_xlati3].y);
        if (u_xlatb89) {
          u_xlat12 = (u_xlat11.xyxy + x_1167.x_AdditionalShadowOffset0);
          let x_6787 = u_xlat12.xy;
          txVec60 = vec3f(x_6787.x, x_6787.y, u_xlat11.z);
          u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_6802 = u_xlat12.zw;
          txVec61 = vec3f(x_6802.x, x_6802.y, u_xlat11.z);
          u_xlat13.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat12 = (u_xlat11.xyxy + x_1167.x_AdditionalShadowOffset1);
          let x_6822 = u_xlat12.xy;
          txVec62 = vec3f(x_6822.x, x_6822.y, u_xlat11.z);
          u_xlat13.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_6837 = u_xlat12.zw;
          txVec63 = vec3f(x_6837.x, x_6837.y, u_xlat11.z);
          u_xlat13.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat89 = dot(u_xlat13, x_1527);
        } else {
          u_xlatb12.x = (2.0f == x_1167.x_AdditionalShadowParams[u_xlati3].y);
          if (u_xlatb12.x) {
            u_xlat12 = vec4f((((u_xlat11.xy * x_1167.x_AdditionalShadowmapSize.zw) + x_1544)).xy, u_xlat12.zw);
            u_xlat12 = vec4f(floor(u_xlat12.xy).xy, u_xlat12.zw);
            u_xlat64 = ((u_xlat11.xy * x_1167.x_AdditionalShadowmapSize.zw) + -(u_xlat12.xy));
            u_xlat13 = (u_xlat64.xxyy + x_1567);
            u_xlat14 = (u_xlat13.xxzz * u_xlat13.xxzz);
            let x_6896 = (u_xlat14.yw * x_1579);
            u_xlat13 = vec4f(x_6896.x, u_xlat13.y, x_6896.y, u_xlat13.w);
            u_xlat14 = vec4f((((u_xlat14.xz * x_1544) + -(u_xlat64))).xy, u_xlat14.zw);
            u_xlat66 = (-(u_xlat64) + x_483);
            u_xlat15 = vec4f(min(u_xlat64, vec2f()).xy, u_xlat15.zw);
            u_xlat15 = vec4f((((-(u_xlat15.xy) * u_xlat15.xy) + u_xlat66)).xy, u_xlat15.zw);
            u_xlat64 = max(u_xlat64, vec2f());
            u_xlat64 = ((-(u_xlat64) * u_xlat64) + u_xlat13.yw);
            u_xlat15 = vec4f(((u_xlat15.xy + x_483)).xy, u_xlat15.zw);
            u_xlat64 = (u_xlat64 + x_483);
            u_xlat16 = vec4f(((u_xlat14.xy * x_1635)).xy, u_xlat16.zw);
            u_xlat14 = vec4f(((u_xlat66 * x_1635)).xy, u_xlat14.zw);
            u_xlat15 = vec4f(((u_xlat15.xy * x_1635)).xy, u_xlat15.zw);
            u_xlat17 = vec4f(((u_xlat64 * x_1635)).xy, u_xlat17.zw);
            u_xlat64 = (u_xlat13.yw * x_1635);
            u_xlat16.z = u_xlat15.x;
            u_xlat16.w = u_xlat64.x;
            u_xlat14.z = u_xlat17.x;
            u_xlat14.w = u_xlat13.x;
            u_xlat18 = (u_xlat14.zwxz + u_xlat16.zwxz);
            u_xlat15.z = u_xlat16.y;
            u_xlat15.w = u_xlat64.y;
            u_xlat17.z = u_xlat14.y;
            u_xlat17.w = u_xlat13.z;
            u_xlat13 = vec4f(((u_xlat15.zyw + u_xlat17.zyw)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat14.xzw / u_xlat18.zwy)).xyz, u_xlat14.w);
            u_xlat14 = vec4f(((u_xlat14.xyz + x_1707)).xyz, u_xlat14.w);
            u_xlat15 = vec4f(((u_xlat17.zyw / u_xlat13.xyz)).xyz, u_xlat15.w);
            u_xlat15 = vec4f(((u_xlat15.xyz + x_1707)).xyz, u_xlat15.w);
            u_xlat14 = vec4f(((u_xlat14.yxz * x_1167.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat14.w);
            u_xlat15 = vec4f(((u_xlat15.xyz * x_1167.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat15.w);
            u_xlat14.w = u_xlat15.x;
            u_xlat16 = ((u_xlat12.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat14.ywxw);
            u_xlat64 = ((u_xlat12.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat14.zw);
            u_xlat15.w = u_xlat14.y;
            let x_7063 = u_xlat15.yz;
            u_xlat14 = vec4f(u_xlat14.x, x_7063.x, u_xlat14.z, x_7063.y);
            u_xlat17 = ((u_xlat12.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xyzy);
            u_xlat15 = ((u_xlat12.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat15.wywz);
            u_xlat14 = ((u_xlat12.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xwzw);
            u_xlat19 = (u_xlat13.xxxy * u_xlat18.zwyz);
            u_xlat20 = (u_xlat13.yyzz * u_xlat18);
            u_xlat12.x = (u_xlat13.z * u_xlat18.y);
            let x_7110 = u_xlat16.xy;
            txVec64 = vec3f(x_7110.x, x_7110.y, u_xlat11.z);
            u_xlat38.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_7125 = u_xlat16.zw;
            txVec65 = vec3f(x_7125.x, x_7125.y, u_xlat11.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat13.x = (u_xlat13.x * u_xlat19.y);
            u_xlat38.x = ((u_xlat19.x * u_xlat38.x) + u_xlat13.x);
            txVec66 = vec3f(u_xlat64.x, u_xlat64.y, u_xlat11.z);
            u_xlat64.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat38.x = ((u_xlat19.z * u_xlat64.x) + u_xlat38.x);
            let x_7178 = u_xlat15.xy;
            txVec67 = vec3f(x_7178.x, x_7178.y, u_xlat11.z);
            u_xlat64.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat38.x = ((u_xlat19.w * u_xlat64.x) + u_xlat38.x);
            let x_7202 = u_xlat17.xy;
            txVec68 = vec3f(x_7202.x, x_7202.y, u_xlat11.z);
            u_xlat64.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat38.x = ((u_xlat20.x * u_xlat64.x) + u_xlat38.x);
            let x_7226 = u_xlat17.zw;
            txVec69 = vec3f(x_7226.x, x_7226.y, u_xlat11.z);
            u_xlat64.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat38.x = ((u_xlat20.y * u_xlat64.x) + u_xlat38.x);
            let x_7250 = u_xlat15.zw;
            txVec70 = vec3f(x_7250.x, x_7250.y, u_xlat11.z);
            u_xlat64.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat38.x = ((u_xlat20.z * u_xlat64.x) + u_xlat38.x);
            let x_7274 = u_xlat14.xy;
            txVec71 = vec3f(x_7274.x, x_7274.y, u_xlat11.z);
            u_xlat64.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat38.x = ((u_xlat20.w * u_xlat64.x) + u_xlat38.x);
            let x_7298 = u_xlat14.zw;
            txVec72 = vec3f(x_7298.x, x_7298.y, u_xlat11.z);
            u_xlat64.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat89 = ((u_xlat12.x * u_xlat64.x) + u_xlat38.x);
          } else {
            u_xlat12 = vec4f((((u_xlat11.xy * x_1167.x_AdditionalShadowmapSize.zw) + x_1544)).xy, u_xlat12.zw);
            u_xlat12 = vec4f(floor(u_xlat12.xy).xy, u_xlat12.zw);
            u_xlat64 = ((u_xlat11.xy * x_1167.x_AdditionalShadowmapSize.zw) + -(u_xlat12.xy));
            u_xlat13 = (u_xlat64.xxyy + x_1567);
            u_xlat14 = (u_xlat13.xxzz * u_xlat13.xxzz);
            let x_7354 = (u_xlat14.yw * x_2048);
            u_xlat15 = vec4f(u_xlat15.x, x_7354.x, u_xlat15.z, x_7354.y);
            let x_7362 = ((u_xlat14.xz * x_1544) + -(u_xlat64));
            u_xlat13 = vec4f(x_7362.x, u_xlat13.y, x_7362.y, u_xlat13.w);
            u_xlat14 = vec4f(((-(u_xlat64) + x_483)).xy, u_xlat14.zw);
            u_xlat66 = min(u_xlat64, vec2f());
            u_xlat14 = vec4f((((-(u_xlat66) * u_xlat66) + u_xlat14.xy)).xy, u_xlat14.zw);
            u_xlat66 = max(u_xlat64, vec2f());
            let x_7390 = ((-(u_xlat66) * u_xlat66) + u_xlat13.yw);
            u_xlat39 = vec3f(x_7390.x, u_xlat39.y, x_7390.y);
            u_xlat14 = vec4f(((u_xlat14.xy + x_4927)).xy, u_xlat14.zw);
            let x_7400 = (u_xlat39.xz + x_4927);
            u_xlat13 = vec4f(u_xlat13.x, x_7400.x, u_xlat13.z, x_7400.y);
            u_xlat16.z = (u_xlat13.y * 0.08163200318813323975f);
            u_xlat17 = vec4f(((u_xlat13.zxw * x_4942)).xyz, u_xlat17.w);
            u_xlat13 = vec4f(((u_xlat14.xy * x_2106)).xy, u_xlat13.zw);
            u_xlat16.x = u_xlat17.y;
            let x_7423 = ((u_xlat64.xx * x_2123) + x_2126);
            u_xlat16 = vec4f(u_xlat16.x, x_7423.x, u_xlat16.z, x_7423.y);
            let x_7429 = ((u_xlat64.xx * x_2123) + x_2133);
            u_xlat14 = vec4f(x_7429.x, u_xlat14.y, x_7429.y, u_xlat14.w);
            u_xlat14.y = u_xlat13.x;
            u_xlat14.w = u_xlat15.y;
            u_xlat16 = (u_xlat14 + u_xlat16);
            let x_7444 = ((u_xlat64.yy * x_2123) + x_2126);
            u_xlat17 = vec4f(u_xlat17.x, x_7444.x, u_xlat17.z, x_7444.y);
            let x_7450 = ((u_xlat64.yy * x_2123) + x_2133);
            u_xlat15 = vec4f(x_7450.x, u_xlat15.y, x_7450.y, u_xlat15.w);
            u_xlat15.y = u_xlat13.y;
            u_xlat13 = (u_xlat15 + u_xlat17);
            u_xlat14 = (u_xlat14 / u_xlat16);
            u_xlat14 = (u_xlat14 + x_2171);
            u_xlat15 = (u_xlat15 / u_xlat13);
            u_xlat15 = (u_xlat15 + x_2171);
            u_xlat14 = (u_xlat14.wxyz * x_1167.x_AdditionalShadowmapSize.xxxx);
            u_xlat15 = (u_xlat15.xwyz * x_1167.x_AdditionalShadowmapSize.yyyy);
            let x_7482 = u_xlat14.yzw;
            u_xlat17 = vec4f(x_7482.x, u_xlat17.y, x_7482.yz);
            u_xlat17.y = u_xlat15.x;
            u_xlat18 = ((u_xlat12.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyzy);
            u_xlat64 = ((u_xlat12.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat17.wy);
            u_xlat14.y = u_xlat17.y;
            u_xlat17.y = u_xlat15.z;
            u_xlat19 = ((u_xlat12.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyzy);
            u_xlat20 = vec4f((((u_xlat12.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat17.wy)).xy, u_xlat20.zw);
            u_xlat14.z = u_xlat17.y;
            u_xlat21 = ((u_xlat12.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xyxz);
            u_xlat17.y = u_xlat15.w;
            u_xlat22 = ((u_xlat12.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyzy);
            u_xlat40 = ((u_xlat12.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat17.wy);
            u_xlat14.w = u_xlat17.y;
            u_xlat72 = ((u_xlat12.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat14.xw);
            let x_7580 = u_xlat17.xzw;
            u_xlat15 = vec4f(x_7580.x, u_xlat15.y, x_7580.yz);
            u_xlat17 = ((u_xlat12.xyxy * x_1167.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat67 = ((u_xlat12.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat15.wy);
            u_xlat15.x = u_xlat14.x;
            u_xlat12 = vec4f((((u_xlat12.xy * x_1167.x_AdditionalShadowmapSize.xy) + u_xlat15.xy)).xy, u_xlat12.zw);
            u_xlat23 = (u_xlat13.xxxx * u_xlat16);
            u_xlat24 = (u_xlat13.yyyy * u_xlat16);
            u_xlat25 = (u_xlat13.zzzz * u_xlat16);
            u_xlat13 = (u_xlat13.wwww * u_xlat16);
            let x_7636 = u_xlat18.xy;
            txVec73 = vec3f(x_7636.x, x_7636.y, u_xlat11.z);
            u_xlat14.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_7651 = u_xlat18.zw;
            txVec74 = vec3f(x_7651.x, x_7651.y, u_xlat11.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat92 = (u_xlat92 * u_xlat23.y);
            u_xlat14.x = ((u_xlat23.x * u_xlat14.x) + u_xlat92);
            txVec75 = vec3f(u_xlat64.x, u_xlat64.y, u_xlat11.z);
            u_xlat64.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat64.x = ((u_xlat23.z * u_xlat64.x) + u_xlat14.x);
            let x_7701 = u_xlat21.xy;
            txVec76 = vec3f(x_7701.x, x_7701.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat64.x = ((u_xlat23.w * u_xlat90) + u_xlat64.x);
            let x_7723 = u_xlat19.xy;
            txVec77 = vec3f(x_7723.x, x_7723.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat64.x = ((u_xlat24.x * u_xlat90) + u_xlat64.x);
            let x_7745 = u_xlat19.zw;
            txVec78 = vec3f(x_7745.x, x_7745.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat64.x = ((u_xlat24.y * u_xlat90) + u_xlat64.x);
            let x_7767 = u_xlat20.xy;
            txVec79 = vec3f(x_7767.x, x_7767.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat64.x = ((u_xlat24.z * u_xlat90) + u_xlat64.x);
            let x_7789 = u_xlat21.zw;
            txVec80 = vec3f(x_7789.x, x_7789.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat64.x = ((u_xlat24.w * u_xlat90) + u_xlat64.x);
            let x_7811 = u_xlat22.xy;
            txVec81 = vec3f(x_7811.x, x_7811.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat64.x = ((u_xlat25.x * u_xlat90) + u_xlat64.x);
            let x_7833 = u_xlat22.zw;
            txVec82 = vec3f(x_7833.x, x_7833.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat64.x = ((u_xlat25.y * u_xlat90) + u_xlat64.x);
            txVec83 = vec3f(u_xlat40.x, u_xlat40.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat64.x = ((u_xlat25.z * u_xlat90) + u_xlat64.x);
            txVec84 = vec3f(u_xlat72.x, u_xlat72.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat64.x = ((u_xlat25.w * u_xlat90) + u_xlat64.x);
            let x_7897 = u_xlat17.xy;
            txVec85 = vec3f(x_7897.x, x_7897.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat64.x = ((u_xlat13.x * u_xlat90) + u_xlat64.x);
            let x_7919 = u_xlat17.zw;
            txVec86 = vec3f(x_7919.x, x_7919.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat64.x = ((u_xlat13.y * u_xlat90) + u_xlat64.x);
            txVec87 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat11.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat64.x = ((u_xlat13.z * u_xlat90) + u_xlat64.x);
            let x_7962 = u_xlat12.xy;
            txVec88 = vec3f(x_7962.x, x_7962.y, u_xlat11.z);
            u_xlat12.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat89 = ((u_xlat13.w * u_xlat12.x) + u_xlat64.x);
          }
        }
      } else {
        let x_7986 = u_xlat11.xy;
        txVec89 = vec3f(x_7986.x, x_7986.y, u_xlat11.z);
        u_xlat89 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat11.x = (1.0f + -(x_1167.x_AdditionalShadowParams[u_xlati3].x));
      u_xlat11.x = ((u_xlat89 * x_1167.x_AdditionalShadowParams[u_xlati3].x) + u_xlat11.x);
      u_xlatb37.x = (0.0f >= u_xlat11.z);
      u_xlatb63 = (u_xlat11.z >= 1.0f);
      u_xlatb37.x = (u_xlatb63 | u_xlatb37.x);
      if (u_xlatb37.x) {
        x_8028 = 1.0f;
      } else {
        x_8028 = u_xlat11.x;
      }
      u_xlat11.x = x_8028;
    } else {
      u_xlat11.x = 1.0f;
    }
    u_xlat37.x = (-(u_xlat11.x) + 1.0f);
    u_xlat11.x = ((u_xlat80 * u_xlat37.x) + u_xlat11.x);
    u_xlati37 = (1i << bitcast<u32>((u_xlati3 & 31i)));
    u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati37) & bitcast<u32>(x_2743.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati37 != 0i)) {
      u_xlati37 = i32(x_2743.x_AdditionalLightsLightTypes[u_xlati3].el);
      u_xlati63 = select(1i, 0i, (u_xlati37 != 0i));
      u_xlati89 = (u_xlati3 << bitcast<u32>(2i));
      if ((u_xlati63 != 0i)) {
        u_xlat12 = vec4f(((vs_INTERP10.yyy * x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati89 + 1i)].xyw)).xyz, u_xlat12.w);
        u_xlat12 = vec4f((((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati89].xyw * vs_INTERP10.xxx) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f((((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati89 + 2i)].xyw * vs_INTERP10.zzz) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati89 + 3i)].xyw)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xy / u_xlat12.zz)).xy, u_xlat12.zw);
        u_xlat12 = vec4f((((u_xlat12.xy * x_1544) + x_1544)).xy, u_xlat12.zw);
        u_xlat12 = vec4f(clamp(u_xlat12.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat12.zw);
        u_xlat12 = vec4f((((x_2743.x_AdditionalLightsCookieAtlasUVRects[u_xlati3].xy * u_xlat12.xy) + x_2743.x_AdditionalLightsCookieAtlasUVRects[u_xlati3].zw)).xy, u_xlat12.zw);
      } else {
        u_xlatb37.x = (u_xlati37 == 1i);
        u_xlati37 = select(0i, 1i, u_xlatb37.x);
        if ((u_xlati37 != 0i)) {
          u_xlat37 = vec3f(((vs_INTERP10.yy * x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati89 + 1i)].xy)).xy, u_xlat37.z);
          u_xlat37 = vec3f((((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati89].xy * vs_INTERP10.xx) + u_xlat37.xy)).xy, u_xlat37.z);
          u_xlat37 = vec3f((((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati89 + 2i)].xy * vs_INTERP10.zz) + u_xlat37.xy)).xy, u_xlat37.z);
          u_xlat37 = vec3f(((u_xlat37.xy + x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati89 + 3i)].xy)).xy, u_xlat37.z);
          u_xlat37 = vec3f((((u_xlat37.xy * x_1544) + x_1544)).xy, u_xlat37.z);
          u_xlat37 = vec3f(fract(u_xlat37.xy).xy, u_xlat37.z);
          u_xlat12 = vec4f((((x_2743.x_AdditionalLightsCookieAtlasUVRects[u_xlati3].xy * u_xlat37.xy) + x_2743.x_AdditionalLightsCookieAtlasUVRects[u_xlati3].zw)).xy, u_xlat12.zw);
        } else {
          u_xlat13 = (vs_INTERP10.yyyy * x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati89 + 1i)]);
          u_xlat13 = ((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati89] * vs_INTERP10.xxxx) + u_xlat13);
          u_xlat13 = ((x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati89 + 2i)] * vs_INTERP10.zzzz) + u_xlat13);
          u_xlat13 = (u_xlat13 + x_2743.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati89 + 3i)]);
          u_xlat37 = (u_xlat13.xyz / u_xlat13.www);
          u_xlat64.x = dot(u_xlat37, u_xlat37);
          u_xlat64.x = inverseSqrt(u_xlat64.x);
          u_xlat37 = (u_xlat37 * u_xlat64.xxx);
          u_xlat64.x = dot(abs(u_xlat37), x_697);
          u_xlat64.x = max(u_xlat64.x, 0.00000099999999747524f);
          u_xlat64.x = (1.0f / u_xlat64.x);
          u_xlat13 = vec4f(((u_xlat37.zxy * u_xlat64.xxx)).xyz, u_xlat13.w);
          u_xlat13.x = -(u_xlat13.x);
          u_xlat13.x = clamp(u_xlat13.x, 0.0f, 1.0f);
          u_xlatb39 = ((u_xlat13.yzyy >= vec4f())).xy;
          hlslcc_movcTemp_2 = u_xlat13;
          if (u_xlatb39.x) {
            x_8323 = u_xlat13.x;
          } else {
            x_8323 = -(u_xlat13.x);
          }
          hlslcc_movcTemp_2.x = x_8323;
          if (u_xlatb39.y) {
            x_8336 = u_xlat13.x;
          } else {
            x_8336 = -(u_xlat13.x);
          }
          hlslcc_movcTemp_2.y = x_8336;
          u_xlat13 = hlslcc_movcTemp_2;
          u_xlat37 = vec3f((((u_xlat37.xy * u_xlat64.xx) + u_xlat13.xy)).xy, u_xlat37.z);
          u_xlat37 = vec3f((((u_xlat37.xy * x_1544) + x_1544)).xy, u_xlat37.z);
          u_xlat37 = vec3f(clamp(u_xlat37.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat37.z);
          u_xlat12 = vec4f((((x_2743.x_AdditionalLightsCookieAtlasUVRects[u_xlati3].xy * u_xlat37.xy) + x_2743.x_AdditionalLightsCookieAtlasUVRects[u_xlati3].zw)).xy, u_xlat12.zw);
        }
      }
      u_xlat12 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat12.xy, 0.0f);
      if (u_xlatb29.z) {
        x_8393 = u_xlat12.w;
      } else {
        x_8393 = u_xlat12.x;
      }
      u_xlat37.x = x_8393;
      if (u_xlatb29.x) {
        x_8405 = u_xlat12.xyz;
      } else {
        x_8405 = u_xlat37.xxx;
      }
      u_xlat37 = x_8405;
    } else {
      u_xlat37.x = 1.0f;
      u_xlat37.y = 1.0f;
      u_xlat37.z = 1.0f;
    }
    u_xlat37 = (u_xlat37 * x_4048.x_AdditionalLightsColor[u_xlati3].xyz);
    u_xlati3 = bitcast<i32>((bitcast<u32>(x_3887.unity_RenderingLayer.x) & bitcast<u32>(x_4048.x_AdditionalLightsLayerMasks[u_xlati3].el)));
    u_xlat87 = (u_xlat87 * u_xlat11.x);
    u_xlat11.x = dot(u_xlat0.xyz, u_xlat36);
    u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
    u_xlat87 = (u_xlat87 * u_xlat11.x);
    u_xlat11 = vec4f(((vec3f(u_xlat87) * u_xlat37)).xyz, u_xlat11.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * u_xlat10.xxx) + u_xlat2.xyz)).xyz, u_xlat9.w);
    u_xlat87 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat87 = max(u_xlat87, 1.17549435e-38f);
    u_xlat87 = inverseSqrt(u_xlat87);
    u_xlat9 = vec4f(((vec3f(u_xlat87) * u_xlat9.xyz)).xyz, u_xlat9.w);
    u_xlat9.w = dot(u_xlat0.xyz, u_xlat9.xyz);
    u_xlat9.w = clamp(u_xlat9.w, 0.0f, 1.0f);
    u_xlat9.x = dot(u_xlat36, u_xlat9.xyz);
    u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
    u_xlat9 = vec4f(((u_xlat9.xw * u_xlat9.xw)).xy, u_xlat9.zw);
    u_xlat35.x = ((u_xlat9.y * -0.9375f) + 1.00001001358032226562f);
    u_xlat35.x = (u_xlat35.x * u_xlat35.x);
    u_xlat9.x = max(u_xlat9.x, 0.10000000149011611938f);
    u_xlat9.x = (u_xlat9.x * u_xlat35.x);
    u_xlat9.x = (u_xlat9.x * 3.0f);
    u_xlat9.x = (0.0625f / u_xlat9.x);
    u_xlat9 = vec4f((((u_xlat9.xxx * x_3976) + u_xlat1.xyz)).xyz, u_xlat9.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * u_xlat11.xyz) + u_xlat8.xyz)).xyz, u_xlat9.w);
    if ((u_xlati3 != 0i)) {
      x_8557 = u_xlat9.xyz;
    } else {
      x_8557 = u_xlat8.xyz;
    }
    u_xlat8 = vec4f(x_8557.xyz, u_xlat8.w);
  }
  u_xlat0 = vec4f(((u_xlat4.xzw + u_xlat31)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat8.xyz + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat78 = (u_xlat79 * -(u_xlat79));
  u_xlat78 = exp2(u_xlat78);
  u_xlat1.x = (-(u_xlat78) + 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xxx * x_139.unity_FogColor.xyz)).xyz, u_xlat1.w);
  SV_Target0 = vec4f((((u_xlat0.xyz * vec3f(u_xlat78)) + u_xlat1.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(2) vs_INTERP6_param : vec4f, @location(3) vs_INTERP7_param : vec4f, @location(4) vs_INTERP8_param : vec4f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(6) vs_INTERP11_param : vec3f, @location(5) vs_INTERP10_param : vec3f, @location(0) vs_INTERP0_param : vec2f, @location(1) vs_INTERP1_param : vec2f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP8 = vs_INTERP8_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_INTERP11 = vs_INTERP11_param;
  vs_INTERP10 = vs_INTERP10_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP1 = vs_INTERP1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

