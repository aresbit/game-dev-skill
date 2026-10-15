//Assets/Shared/Core/Shaders/B612Fabric.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_DetailAlbedoMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseColor : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_SpecColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(100) */
  Xhlslcc_UnusedX_Smoothness : f32,
  /* @offset(104) */
  Xhlslcc_UnusedX_Metallic : f32,
  /* @offset(108) */
  Xhlslcc_UnusedX_BumpScale : f32,
  /* @offset(112) */
  Xhlslcc_UnusedX_Parallax : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_OcclusionStrength : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_ClearCoatMask : f32,
  /* @offset(124) */
  Xhlslcc_UnusedX_ClearCoatSmoothness : f32,
  /* @offset(128) */
  Xhlslcc_UnusedX_DetailAlbedoMapScale : f32,
  /* @offset(132) */
  Xhlslcc_UnusedX_DetailNormalMapScale : f32,
  /* @offset(136) */
  Xhlslcc_UnusedX_Surface : f32,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_ST : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_TexelSize : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_MipInfo : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_StreamInfo : vec4f,
}

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
  unity_WorldTransformParams : vec4f,
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

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

@group(1) @binding(5) var<uniform> x_16 : UnityPerMaterial;

var<private> vs_TEXCOORD5 : f32;

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_48 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> in_TANGENT0 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

var<private> vs_TEXCOORD8 : vec2f;

var<private> in_TEXCOORD1 : vec2f;

@group(1) @binding(8) var<uniform> x_217 : VGlobals;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  vs_TEXCOORD0 = ((in_TEXCOORD0 * x_16.x_BaseMap_ST.xy) + x_16.x_BaseMap_ST.zw);
  vs_TEXCOORD5 = 0.0f;
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_48.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_48.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_48.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_48.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  vs_TEXCOORD1 = u_xlat0.xyz;
  u_xlat1.x = dot(in_NORMAL0, x_48.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_48.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_48.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD2 = (vec3f(u_xlat6) * u_xlat1.xyz);
  u_xlat1 = vec4f(((in_TANGENT0.yyy * x_48.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_48.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_TANGENT0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_48.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_TANGENT0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD3 = vec4f(((vec3f(u_xlat6) * u_xlat1.xyz)).xyz, vs_TEXCOORD3.w);
  u_xlatb6 = (x_48.unity_WorldTransformParams.w >= 0.0f);
  u_xlat6 = select(-1.0f, 1.0f, u_xlatb6);
  vs_TEXCOORD3.w = (u_xlat6 * in_TANGENT0.w);
  vs_TEXCOORD8 = ((in_TEXCOORD1 * x_48.unity_LightmapST.xy) + x_48.unity_LightmapST.zw);
  u_xlat1 = (u_xlat0.yyyy * x_217.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_217.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat0 = ((x_217.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat0 + x_217.hlslcc_mtx4x4unity_MatrixVP[3i]);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(5)
  vs_TEXCOORD5_1 : f32,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec3f,
  @location(3)
  vs_TEXCOORD3_1 : vec4f,
  @location(4)
  vs_TEXCOORD8_1 : vec2f,
  @builtin(position)
  gl_Position : vec4f,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec2f, @location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(2) in_TANGENT0_param : vec4f, @location(4) in_TEXCOORD1_param : vec2f) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD5, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8, gl_Position);
}

//Assets/Shared/Core/Shaders/B612Fabric.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentColor : vec4f,
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
  x_AmbientOcclusionParam : vec4f,
  /* @offset(112) */
  x_FPParams0 : vec4f,
  /* @offset(128) */
  x_FPParams1 : vec4f,
  /* @offset(144) */
  x_FPParams2 : vec4f,
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
  /* @offset(320) */
  x_DitheringTextureInvSize : f32,
  /* @offset(336) */
  x_SheenColor : vec4f,
  /* @offset(352) */
  x_SheenStrength : f32,
  /* @offset(356) */
  x_SheenPower : f32,
  /* @offset(368) */
  x_ShadowWarmth : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_DetailAlbedoMap_ST : vec4f,
  /* @offset(48) */
  x_BaseColor : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_SpecColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(100) */
  x_Smoothness : f32,
  /* @offset(104) */
  x_Metallic : f32,
  /* @offset(108) */
  x_BumpScale : f32,
  /* @offset(112) */
  Xhlslcc_UnusedX_Parallax : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_OcclusionStrength : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_ClearCoatMask : f32,
  /* @offset(124) */
  Xhlslcc_UnusedX_ClearCoatSmoothness : f32,
  /* @offset(128) */
  Xhlslcc_UnusedX_DetailAlbedoMapScale : f32,
  /* @offset(132) */
  Xhlslcc_UnusedX_DetailNormalMapScale : f32,
  /* @offset(136) */
  x_Surface : f32,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_ST : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_TexelSize : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_MipInfo : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_StreamInfo : vec4f,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 2u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_1,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_2,
  /* @offset(128) */
  unity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  unity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_3,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_4,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_5,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_6 = array<vec4f, 20u>;

alias Arr_7 = array<vec4f, 32u>;

alias Arr_8 = array<vec4f, 128u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_6,
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
  x_AdditionalShadowParams : Arr_7,
  /* @offset(1040) */
  hlslcc_mtx4x4_AdditionalLightsWorldToShadow : Arr_8,
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

alias Arr_13 = array<vec4f, 32u>;

alias Arr_14 = array<vec4f, 32u>;

alias Arr_15 = array<vec4f, 32u>;

alias Arr_16 = array<vec4f, 32u>;

alias Arr_17 = array<vec4f, 32u>;

alias Arr_18 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_13,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_14,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_15,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_16,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_17,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_18,
}

alias Arr_19 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_19,
}

alias Arr_20 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_20,
}

var<private> gl_FragCoord : vec4f;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(0) var<uniform> x_72 : PGlobals;

@group(1) @binding(5) var<uniform> x_84 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BumpMap : sampler;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_PointRepeat : sampler;

@group(1) @binding(4) var<uniform> x_181 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec4f;

@group(1) @binding(6) var<uniform> x_353 : LightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2f;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(7) var<uniform> x_2061 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2449 : AdditionalLights;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(1) @binding(2) var<uniform> x_4518 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_4604 : urp_TileBuffer;

var<private> SV_Target0 : vec4f;

fn int_bitfieldExtract_i1_i1_i1_(value : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var x_22 : i32;
  let x_14 = *(value);
  let x_15 = *(offset_1);
  if (((*(offset_1) + *(bits)) < 32i)) {
    x_22 = *(bits);
  } else {
    x_22 = (32i - *(offset_1));
  }
  let x_29 = x_22;
  return extractBits(x_14, u32(x_15), u32(x_29));
}

const x_115 = vec2f(2.0f);

const x_557 = vec2f(1.0f);

const x_831 = vec4f(0.25f);

const x_849 = vec2f(0.5f);

const x_867 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_879 = vec2f(0.07999999821186065674f);

const x_935 = vec2f(0.15999999642372131348f);

const x_1007 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1326 = vec2f(0.04081600159406661987f);

const x_1376 = vec4f(2.0f);

const x_1385 = vec2f(0.08163200318813323975f);

const x_1402 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1405 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1412 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1450 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2139 = vec4f(0.0f, 1.0f, 0.0f, 0.0f);

const x_4108 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat99 : f32;
  var u_xlat68 : vec2f;
  var u_xlatb101 : bool;
  var x_187 : f32;
  var u_xlatb68 : bool;
  var u_xlat3 : vec4f;
  var u_xlat101 : f32;
  var u_xlat4 : vec3f;
  var x_266 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec3f;
  var u_xlat8 : vec4f;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu99 : u32;
  var u_xlati99 : i32;
  var u_xlat102 : f32;
  var u_xlat103 : f32;
  var u_xlat104 : f32;
  var u_xlat39 : vec2f;
  var u_xlat105 : f32;
  var u_xlat106 : f32;
  var u_xlatb107 : bool;
  var u_xlatb9 : bool;
  var u_xlat9 : vec4f;
  var txVec0 : vec3f;
  var u_xlat10 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb42 : bool;
  var u_xlat42 : vec2f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat76 : vec2f;
  var u_xlat78 : vec2f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat18 : vec4f;
  var txVec4 : vec3f;
  var u_xlat75 : f32;
  var txVec5 : vec3f;
  var u_xlat108 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat82 : vec2f;
  var u_xlat19 : vec4f;
  var u_xlat44 : vec3f;
  var u_xlat20 : vec4f;
  var u_xlat79 : vec2f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
  var u_xlat23 : vec4f;
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
  var u_xlatb75 : bool;
  var u_xlatb108 : bool;
  var x_2011 : f32;
  var u_xlat109 : f32;
  var u_xlatb11 : bool;
  var u_xlatb44 : vec2<bool>;
  var u_xlat77 : f32;
  var x_2145 : f32;
  var x_2156 : vec3f;
  var u_xlat45 : f32;
  var u_xlati102 : i32;
  var u_xlat111 : f32;
  var x_2388 : vec3f;
  var u_xlatu102 : u32;
  var u_xlatu9 : u32;
  var u_xlatb14 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlat112 : f32;
  var u_xlat80 : vec2f;
  var u_xlat113 : f32;
  var u_xlatb113 : bool;
  var u_xlati114 : i32;
  var u_xlati113 : i32;
  var u_xlatb114 : bool;
  var u_xlatb18 : vec4<bool>;
  var u_xlat115 : f32;
  var x_2603 : f32;
  var u_xlat114 : f32;
  var x_2613 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var u_xlat85 : vec2f;
  var u_xlat87 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec4f;
  var u_xlat27 : vec4f;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat116 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat53 : vec3f;
  var u_xlat28 : vec4f;
  var u_xlat29 : vec4f;
  var u_xlat54 : vec2f;
  var u_xlat93 : vec2f;
  var u_xlat88 : vec2f;
  var u_xlat30 : vec4f;
  var u_xlat31 : vec4f;
  var u_xlat32 : vec4f;
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
  var u_xlatb115 : bool;
  var u_xlati115 : i32;
  var u_xlati116 : i32;
  var u_xlat84 : vec2f;
  var u_xlatb84 : vec2<bool>;
  var x_4137 : f32;
  var x_4150 : f32;
  var x_4199 : f32;
  var x_4210 : vec3f;
  var x_4369 : vec3f;
  var u_xlatu6 : vec3u;
  var u_xlatu111 : u32;
  var u_xlati6 : vec3i;
  var u_xlat37 : f32;
  var x_4441 : f32;
  var u_xlatu68 : u32;
  var u_xlatu4 : u32;
  var u_xlati37 : vec2i;
  var u_xlatu37 : u32;
  var u_xlati4 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati10 : vec2i;
  var u_xlati80 : vec2i;
  var param_6 : i32;
  var param_7 : i32;
  var param_8 : i32;
  var param_9 : i32;
  var param_10 : i32;
  var param_11 : i32;
  var u_xlati70 : i32;
  var u_xlatu70 : u32;
  var param_12 : i32;
  var param_13 : i32;
  var param_14 : i32;
  var param_15 : i32;
  var param_16 : i32;
  var param_17 : i32;
  var u_xlati16 : vec2i;
  var u_xlati68 : i32;
  var u_xlati72 : i32;
  var u_xlatu72 : u32;
  var u_xlat72 : f32;
  var u_xlati9 : i32;
  var u_xlatb112 : bool;
  var u_xlati112 : i32;
  var x_4924 : i32;
  var u_xlatb80 : bool;
  var u_xlatb17 : vec4<bool>;
  var x_4982 : f32;
  var x_4991 : f32;
  var txVec60 : vec3f;
  var txVec61 : vec3f;
  var txVec62 : vec3f;
  var txVec63 : vec3f;
  var u_xlat86 : vec2f;
  var txVec64 : vec3f;
  var txVec65 : vec3f;
  var txVec66 : vec3f;
  var txVec67 : vec3f;
  var txVec68 : vec3f;
  var txVec69 : vec3f;
  var txVec70 : vec3f;
  var txVec71 : vec3f;
  var txVec72 : vec3f;
  var u_xlat90 : vec2f;
  var u_xlat52 : vec2f;
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
  var u_xlatb83 : vec2<bool>;
  var u_xlat83 : vec2f;
  var x_6510 : f32;
  var x_6523 : f32;
  var x_6569 : f32;
  var x_6581 : vec3f;
  var x_6763 : vec3f;
  var u_xlatb2 : bool;
  var txVec90 : vec3f;
  var txVec91 : vec3f;
  var txVec92 : vec3f;
  var txVec93 : vec3f;
  var u_xlatb35 : vec2<bool>;
  var u_xlat35 : vec3f;
  var u_xlat69 : vec2f;
  var txVec94 : vec3f;
  var txVec95 : vec3f;
  var txVec96 : vec3f;
  var txVec97 : vec3f;
  var txVec98 : vec3f;
  var txVec99 : vec3f;
  var txVec100 : vec3f;
  var txVec101 : vec3f;
  var txVec102 : vec3f;
  var txVec103 : vec3f;
  var txVec104 : vec3f;
  var u_xlat70 : f32;
  var txVec105 : vec3f;
  var txVec106 : vec3f;
  var txVec107 : vec3f;
  var txVec108 : vec3f;
  var txVec109 : vec3f;
  var txVec110 : vec3f;
  var txVec111 : vec3f;
  var txVec112 : vec3f;
  var txVec113 : vec3f;
  var txVec114 : vec3f;
  var txVec115 : vec3f;
  var txVec116 : vec3f;
  var txVec117 : vec3f;
  var txVec118 : vec3f;
  var txVec119 : vec3f;
  var x_8040 : f32;
  var x_8134 : f32;
  var x_8146 : vec3f;
  var u_xlat36 : vec3f;
  var u_xlat34 : vec3f;
  var u_xlatb0 : bool;
  var x_8290 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_41 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_41.x, x_41.y, x_41.z, (1.0f / gl_FragCoord.w));
  let x_67 = vs_TEXCOORD0;
  let x_77 = x_72.x_GlobalMipBias.x;
  let x_78 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_67, x_77);
  u_xlat0 = x_78;
  u_xlat1 = (u_xlat0.wxyz * x_84.x_BaseColor.wxyz);
  let x_97 = vs_TEXCOORD0;
  let x_99 = x_72.x_GlobalMipBias.x;
  let x_100 = textureSampleBias(x_BumpMap, sampler_BumpMap, x_97, x_99);
  u_xlat2 = vec4f(x_100.xyw.xyz, u_xlat2.w);
  u_xlat2.x = (u_xlat2.x * u_xlat2.z);
  u_xlat2 = vec4f((((u_xlat2.xy * x_115) + vec2f(-1.0f))).xy, u_xlat2.zw);
  u_xlat99 = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat99 = min(u_xlat99, 1.0f);
  u_xlat99 = (-(u_xlat99) + 1.0f);
  u_xlat99 = sqrt(u_xlat99);
  u_xlat99 = max(u_xlat99, 0.0000000000000001f);
  let x_145 = vec2f(x_84.x_BumpScale, x_84.x_BumpScale);
  u_xlat2 = vec4f(((u_xlat2.xy * vec2f(x_145.x, x_145.y))).xy, u_xlat2.zw);
  u_xlat68 = (hlslcc_FragCoord.xy * vec2f(x_72.x_DitheringTextureInvSize));
  let x_166 = u_xlat68;
  let x_168 = x_72.x_GlobalMipBias.x;
  let x_169 = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, x_166, x_168);
  u_xlat68.x = x_169.w;
  u_xlatb101 = (x_181.unity_LODFade.x >= 0.0f);
  if (u_xlatb101) {
    x_187 = abs(u_xlat68.x);
  } else {
    x_187 = -(abs(u_xlat68.x));
  }
  u_xlat68.x = x_187;
  u_xlat68.x = (-(u_xlat68.x) + x_181.unity_LODFade.x);
  u_xlatb68 = (u_xlat68.x < 0.0f);
  if (((select(0i, 1i, u_xlatb68) * -1i) != 0i)) {
    discard;
  }
  u_xlatb68 = (x_72.unity_OrthoParams.w == 0.0f);
  u_xlat3 = vec4f(((-(vs_TEXCOORD1) + x_72.x_WorldSpaceCameraPos)).xyz, u_xlat3.w);
  u_xlat101 = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat101 = inverseSqrt(u_xlat101);
  u_xlat3 = vec4f(((vec3f(u_xlat101) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat4.x = x_72.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat4.y = x_72.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat4.z = x_72.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb68) {
    x_266 = u_xlat3.xyz;
  } else {
    x_266 = u_xlat4;
  }
  u_xlat3 = vec4f(x_266.xyz, u_xlat3.w);
  u_xlat5 = vec4f(((vs_TEXCOORD2.zxy * vs_TEXCOORD3.yzx)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((vs_TEXCOORD2.yzx * vs_TEXCOORD3.zxy) + -(u_xlat5.xyz))).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz * vs_TEXCOORD3.www)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat2.yyy * u_xlat5.xyz)).xyz, u_xlat5.w);
  let x_318 = ((u_xlat2.xxx * vs_TEXCOORD3.xyz) + u_xlat5.xyz);
  u_xlat2 = vec4f(x_318.xy, u_xlat2.z, x_318.z);
  let x_327 = ((vec3f(u_xlat99) * vs_TEXCOORD2) + u_xlat2.xyw);
  u_xlat2 = vec4f(x_327.xy, u_xlat2.z, x_327.z);
  u_xlat99 = dot(u_xlat2.xyw, u_xlat2.xyw);
  u_xlat99 = inverseSqrt(u_xlat99);
  let x_341 = (vec3f(u_xlat99) * u_xlat2.xyw);
  u_xlat2 = vec4f(x_341.xy, u_xlat2.z, x_341.z);
  u_xlat5 = vec4f(((vs_TEXCOORD1 + -(x_353.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD1 + -(x_353.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat6.w);
  u_xlat7 = (vs_TEXCOORD1 + -(x_353.x_CascadeShadowSplitSpheres2.xyz));
  u_xlat8 = vec4f(((vs_TEXCOORD1 + -(x_353.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat8.w);
  u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat5.z = dot(u_xlat7, u_xlat7);
  u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlatb5 = (u_xlat5 < x_353.x_CascadeShadowSplitSphereRadii);
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb5.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb5.y);
  u_xlat6.z = select(0.0f, 1.0f, u_xlatb5.z);
  u_xlat6.w = select(0.0f, 1.0f, u_xlatb5.w);
  u_xlat5.x = select(-0.0f, -1.0f, u_xlatb5.x);
  u_xlat5.y = select(-0.0f, -1.0f, u_xlatb5.y);
  u_xlat5.z = select(-0.0f, -1.0f, u_xlatb5.z);
  u_xlat5 = vec4f(((u_xlat5.xyz + u_xlat6.yzw)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(u_xlat6.x, max(u_xlat5.xyz, vec3f()).xyz);
  u_xlat99 = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat99 = (-(u_xlat99) + 4.0f);
  u_xlatu99 = u32(u_xlat99);
  u_xlati99 = (bitcast<i32>(u_xlatu99) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD1.yyy * x_353.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati99 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_353.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati99].xyz * vs_TEXCOORD1.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_353.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati99 + 2i)].xyz * vs_TEXCOORD1.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_353.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati99 + 3i)].xyz)).xyz, u_xlat5.w);
  u_xlat99 = (vs_TEXCOORD1.y * x_72.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat99 = ((x_72.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD1.x) + u_xlat99);
  u_xlat99 = ((x_72.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD1.z) + u_xlat99);
  u_xlat99 = (u_xlat99 + x_72.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat99 = (-(u_xlat99) + -(x_72.x_ProjectionParams.y));
  u_xlat99 = max(u_xlat99, 0.0f);
  u_xlat99 = (u_xlat99 * x_72.unity_FogParams.x);
  let x_560 = x_72.x_ScaledScreenParams.xy;
  u_xlat6 = vec4f(((x_557 / vec2f(x_560.x, x_560.y))).xy, u_xlat6.zw);
  u_xlat6 = vec4f(((u_xlat6.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat102 = ((u_xlat6.y * x_72.x_ScaleBiasRt.x) + x_72.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat102) + 1.0f);
  let x_594 = vs_TEXCOORD8;
  let x_596 = x_72.x_GlobalMipBias.x;
  let x_597 = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_594, x_596);
  u_xlat7 = x_597.xyz;
  let x_603 = vs_TEXCOORD8;
  let x_605 = x_72.x_GlobalMipBias.x;
  let x_606 = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_603, x_605);
  u_xlat8 = x_606;
  u_xlat8 = vec4f(((u_xlat8.xyz + vec3f(-0.5f))).xyz, u_xlat8.w);
  u_xlat102 = dot(u_xlat2.xyw, u_xlat8.xyz);
  u_xlat102 = (u_xlat102 + 0.5f);
  u_xlat7 = (vec3f(u_xlat102) * u_xlat7);
  u_xlat102 = max(u_xlat8.w, 0.00009999999747378752f);
  u_xlat7 = (u_xlat7 / vec3f(u_xlat102));
  u_xlat102 = ((-(x_84.x_Metallic) * 0.95999997854232788086f) + 0.95999997854232788086f);
  u_xlat103 = (-(u_xlat102) + x_84.x_Smoothness);
  u_xlat8 = vec4f(((u_xlat1.yzw * vec3f(u_xlat102))).xyz, u_xlat8.w);
  u_xlat0 = vec4f((((u_xlat0.xyz * x_84.x_BaseColor.xyz) + vec3f(-0.03999999910593032837f))).xyz, u_xlat0.w);
  let x_672 = vec3f(x_84.x_Metallic, x_84.x_Metallic, x_84.x_Metallic);
  u_xlat0 = vec4f((((vec3f(x_672.x, x_672.y, x_672.z) * u_xlat0.xyz) + vec3f(0.03999999910593032837f))).xyz, u_xlat0.w);
  u_xlat102 = (-(x_84.x_Smoothness) + 1.0f);
  u_xlat102 = (u_xlat102 * u_xlat102);
  u_xlat102 = max(u_xlat102, 0.0078125f);
  u_xlat104 = (u_xlat102 * u_xlat102);
  u_xlat103 = (u_xlat103 + 1.0f);
  u_xlat103 = clamp(u_xlat103, 0.0f, 1.0f);
  u_xlat39.x = ((u_xlat102 * 4.0f) + 2.0f);
  let x_714 = u_xlat6;
  let x_717 = x_72.x_GlobalMipBias.x;
  let x_718 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_714.xz, x_717);
  u_xlat105 = x_718.x;
  u_xlat105 = (u_xlat105 + -(x_72.x_AmbientOcclusionParam.x));
  u_xlat105 = (u_xlat105 + 1.0f);
  u_xlat105 = clamp(u_xlat105, 0.0f, 1.0f);
  u_xlat106 = (u_xlat105 + -1.0f);
  u_xlat106 = ((x_72.x_AmbientOcclusionParam.w * u_xlat106) + 1.0f);
  u_xlatb107 = (0.0f < x_353.x_MainLightShadowParams.y);
  if (u_xlatb107) {
    u_xlatb9 = (x_353.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb9) {
      u_xlat9 = (u_xlat5.xyxy + x_353.x_MainLightShadowOffset0);
      let x_760 = u_xlat9.xy;
      txVec0 = vec3f(x_760.x, x_760.y, u_xlat5.z);
      u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_781 = u_xlat9.zw;
      txVec1 = vec3f(x_781.x, x_781.y, u_xlat5.z);
      u_xlat10.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat9 = (u_xlat5.xyxy + x_353.x_MainLightShadowOffset1);
      let x_801 = u_xlat9.xy;
      txVec2 = vec3f(x_801.x, x_801.y, u_xlat5.z);
      u_xlat10.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_816 = u_xlat9.zw;
      txVec3 = vec3f(x_816.x, x_816.y, u_xlat5.z);
      u_xlat10.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat9.x = dot(u_xlat10, x_831);
    } else {
      u_xlatb42 = (x_353.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb42) {
        u_xlat42 = ((u_xlat5.xy * x_353.x_MainLightShadowmapSize.zw) + x_849);
        u_xlat42 = floor(u_xlat42);
        u_xlat10 = vec4f((((u_xlat5.xy * x_353.x_MainLightShadowmapSize.zw) + -(u_xlat42))).xy, u_xlat10.zw);
        u_xlat11 = (u_xlat10.xxyy + x_867);
        u_xlat12 = (u_xlat11.xxzz * u_xlat11.xxzz);
        u_xlat76 = (u_xlat12.yw * x_879);
        let x_887 = ((u_xlat12.xz * x_849) + -(u_xlat10.xy));
        u_xlat11 = vec4f(x_887.x, u_xlat11.y, x_887.y, u_xlat11.w);
        u_xlat12 = vec4f(((-(u_xlat10.xy) + x_557)).xy, u_xlat12.zw);
        u_xlat78 = min(u_xlat10.xy, vec2f());
        u_xlat78 = ((-(u_xlat78) * u_xlat78) + u_xlat12.xy);
        u_xlat10 = vec4f(max(u_xlat10.xy, vec2f()).xy, u_xlat10.zw);
        u_xlat10 = vec4f((((-(u_xlat10.xy) * u_xlat10.xy) + u_xlat11.yw)).xy, u_xlat10.zw);
        u_xlat78 = (u_xlat78 + x_557);
        u_xlat10 = vec4f(((u_xlat10.xy + x_557)).xy, u_xlat10.zw);
        u_xlat13 = vec4f(((u_xlat11.xz * x_935)).xy, u_xlat13.zw);
        u_xlat14 = vec4f(((u_xlat12.xy * x_935)).xy, u_xlat14.zw);
        u_xlat12 = vec4f(((u_xlat78 * x_935)).xy, u_xlat12.zw);
        u_xlat15 = vec4f(((u_xlat10.xy * x_935)).xy, u_xlat15.zw);
        u_xlat10 = vec4f(((u_xlat11.yw * x_935)).xy, u_xlat10.zw);
        u_xlat13.z = u_xlat12.x;
        u_xlat13.w = u_xlat10.x;
        u_xlat14.z = u_xlat15.x;
        u_xlat14.w = u_xlat76.x;
        u_xlat11 = (u_xlat13.zwxz + u_xlat14.zwxz);
        u_xlat12.z = u_xlat13.y;
        u_xlat12.w = u_xlat10.y;
        u_xlat15.z = u_xlat14.y;
        u_xlat15.w = u_xlat76.y;
        u_xlat10 = vec4f(((u_xlat12.zyw + u_xlat15.zyw)).xyz, u_xlat10.w);
        u_xlat12 = vec4f(((u_xlat14.xzw / u_xlat11.zwy)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_1007)).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat15.zyw / u_xlat10.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_1007)).xyz, u_xlat13.w);
        u_xlat12 = vec4f(((u_xlat12.yxz * x_353.x_MainLightShadowmapSize.xxx)).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat13.xyz * x_353.x_MainLightShadowmapSize.yyy)).xyz, u_xlat13.w);
        u_xlat12.w = u_xlat13.x;
        u_xlat14 = ((u_xlat42.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat12.ywxw);
        u_xlat15 = vec4f((((u_xlat42 * x_353.x_MainLightShadowmapSize.xy) + u_xlat12.zw)).xy, u_xlat15.zw);
        u_xlat13.w = u_xlat12.y;
        let x_1065 = u_xlat13.yz;
        u_xlat12 = vec4f(u_xlat12.x, x_1065.x, u_xlat12.z, x_1065.y);
        u_xlat16 = ((u_xlat42.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat13 = ((u_xlat42.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat13.wywz);
        u_xlat12 = ((u_xlat42.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat12.xwzw);
        u_xlat17 = (u_xlat10.xxxy * u_xlat11.zwyz);
        u_xlat18 = (u_xlat10.yyzz * u_xlat11);
        u_xlat42.x = (u_xlat10.z * u_xlat11.y);
        let x_1115 = u_xlat14.xy;
        txVec4 = vec3f(x_1115.x, x_1115.y, u_xlat5.z);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1130 = u_xlat14.zw;
        txVec5 = vec3f(x_1130.x, x_1130.y, u_xlat5.z);
        u_xlat108 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat108 = (u_xlat108 * u_xlat17.y);
        u_xlat75 = ((u_xlat17.x * u_xlat75) + u_xlat108);
        let x_1155 = u_xlat15.xy;
        txVec6 = vec3f(x_1155.x, x_1155.y, u_xlat5.z);
        u_xlat108 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat75 = ((u_xlat17.z * u_xlat108) + u_xlat75);
        let x_1175 = u_xlat13.xy;
        txVec7 = vec3f(x_1175.x, x_1175.y, u_xlat5.z);
        u_xlat108 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat75 = ((u_xlat17.w * u_xlat108) + u_xlat75);
        let x_1195 = u_xlat16.xy;
        txVec8 = vec3f(x_1195.x, x_1195.y, u_xlat5.z);
        u_xlat108 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat75 = ((u_xlat18.x * u_xlat108) + u_xlat75);
        let x_1215 = u_xlat16.zw;
        txVec9 = vec3f(x_1215.x, x_1215.y, u_xlat5.z);
        u_xlat108 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat75 = ((u_xlat18.y * u_xlat108) + u_xlat75);
        let x_1235 = u_xlat13.zw;
        txVec10 = vec3f(x_1235.x, x_1235.y, u_xlat5.z);
        u_xlat108 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat75 = ((u_xlat18.z * u_xlat108) + u_xlat75);
        let x_1255 = u_xlat12.xy;
        txVec11 = vec3f(x_1255.x, x_1255.y, u_xlat5.z);
        u_xlat108 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat75 = ((u_xlat18.w * u_xlat108) + u_xlat75);
        let x_1275 = u_xlat12.zw;
        txVec12 = vec3f(x_1275.x, x_1275.y, u_xlat5.z);
        u_xlat108 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat9.x = ((u_xlat42.x * u_xlat108) + u_xlat75);
      } else {
        u_xlat42 = ((u_xlat5.xy * x_353.x_MainLightShadowmapSize.zw) + x_849);
        u_xlat42 = floor(u_xlat42);
        u_xlat10 = vec4f((((u_xlat5.xy * x_353.x_MainLightShadowmapSize.zw) + -(u_xlat42))).xy, u_xlat10.zw);
        u_xlat11 = (u_xlat10.xxyy + x_867);
        u_xlat12 = (u_xlat11.xxzz * u_xlat11.xxzz);
        let x_1327 = (u_xlat12.yw * x_1326);
        u_xlat13 = vec4f(u_xlat13.x, x_1327.x, u_xlat13.z, x_1327.y);
        u_xlat76 = ((u_xlat12.xz * x_849) + -(u_xlat10.xy));
        let x_1340 = (-(u_xlat10.xy) + x_557);
        u_xlat11 = vec4f(x_1340.x, u_xlat11.y, x_1340.y, u_xlat11.w);
        u_xlat12 = vec4f(min(u_xlat10.xy, vec2f()).xy, u_xlat12.zw);
        let x_1356 = ((-(u_xlat12.xy) * u_xlat12.xy) + u_xlat11.xz);
        u_xlat11 = vec4f(x_1356.x, u_xlat11.y, x_1356.y, u_xlat11.w);
        u_xlat12 = vec4f(max(u_xlat10.xy, vec2f()).xy, u_xlat12.zw);
        let x_1372 = ((-(u_xlat12.xy) * u_xlat12.xy) + u_xlat11.yw);
        u_xlat11 = vec4f(u_xlat11.x, x_1372.x, u_xlat11.z, x_1372.y);
        u_xlat11 = (u_xlat11 + x_1376);
        u_xlat12.z = (u_xlat11.y * 0.08163200318813323975f);
        u_xlat14 = vec4f(((u_xlat76.yx * x_1385)).xy, u_xlat14.zw);
        u_xlat76 = (u_xlat11.xz * x_1385);
        u_xlat14.z = (u_xlat11.w * 0.08163200318813323975f);
        u_xlat12.x = u_xlat14.y;
        let x_1406 = ((u_xlat10.xx * x_1402) + x_1405);
        u_xlat12 = vec4f(u_xlat12.x, x_1406.x, u_xlat12.z, x_1406.y);
        let x_1413 = ((u_xlat10.xx * x_1402) + x_1412);
        u_xlat11 = vec4f(x_1413.x, u_xlat11.y, x_1413.y, u_xlat11.w);
        u_xlat11.y = u_xlat76.x;
        u_xlat11.w = u_xlat13.y;
        u_xlat12 = (u_xlat11 + u_xlat12);
        let x_1428 = ((u_xlat10.yy * x_1402) + x_1405);
        u_xlat14 = vec4f(u_xlat14.x, x_1428.x, u_xlat14.z, x_1428.y);
        let x_1434 = ((u_xlat10.yy * x_1402) + x_1412);
        u_xlat13 = vec4f(x_1434.x, u_xlat13.y, x_1434.y, u_xlat13.w);
        u_xlat13.y = u_xlat76.y;
        u_xlat10 = (u_xlat13 + u_xlat14);
        u_xlat11 = (u_xlat11 / u_xlat12);
        u_xlat11 = (u_xlat11 + x_1450);
        u_xlat13 = (u_xlat13 / u_xlat10);
        u_xlat13 = (u_xlat13 + x_1450);
        u_xlat11 = (u_xlat11.wxyz * x_353.x_MainLightShadowmapSize.xxxx);
        u_xlat13 = (u_xlat13.xwyz * x_353.x_MainLightShadowmapSize.yyyy);
        let x_1470 = u_xlat11.yzw;
        u_xlat14 = vec4f(x_1470.x, u_xlat14.y, x_1470.yz);
        u_xlat14.y = u_xlat13.x;
        u_xlat15 = ((u_xlat42.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat16 = vec4f((((u_xlat42 * x_353.x_MainLightShadowmapSize.xy) + u_xlat14.wy)).xy, u_xlat16.zw);
        u_xlat11.y = u_xlat14.y;
        u_xlat14.y = u_xlat13.z;
        u_xlat17 = ((u_xlat42.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat82 = ((u_xlat42 * x_353.x_MainLightShadowmapSize.xy) + u_xlat14.wy);
        u_xlat11.z = u_xlat14.y;
        u_xlat18 = ((u_xlat42.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyxz);
        u_xlat14.y = u_xlat13.w;
        u_xlat19 = ((u_xlat42.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat44 = vec3f((((u_xlat42 * x_353.x_MainLightShadowmapSize.xy) + u_xlat14.wy)).xy, u_xlat44.z);
        u_xlat11.w = u_xlat14.y;
        u_xlat20 = vec4f((((u_xlat42 * x_353.x_MainLightShadowmapSize.xy) + u_xlat11.xw)).xy, u_xlat20.zw);
        let x_1570 = u_xlat14.xzw;
        u_xlat13 = vec4f(x_1570.x, u_xlat13.y, x_1570.yz);
        u_xlat14 = ((u_xlat42.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat79 = ((u_xlat42 * x_353.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat13.x = u_xlat11.x;
        u_xlat42 = ((u_xlat42 * x_353.x_MainLightShadowmapSize.xy) + u_xlat13.xy);
        u_xlat21 = (u_xlat10.xxxx * u_xlat12);
        u_xlat22 = (u_xlat10.yyyy * u_xlat12);
        u_xlat23 = (u_xlat10.zzzz * u_xlat12);
        u_xlat10 = (u_xlat10.wwww * u_xlat12);
        let x_1623 = u_xlat15.xy;
        txVec13 = vec3f(x_1623.x, x_1623.y, u_xlat5.z);
        u_xlat108 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1637 = u_xlat15.zw;
        txVec14 = vec3f(x_1637.x, x_1637.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat11.x = (u_xlat11.x * u_xlat21.y);
        u_xlat108 = ((u_xlat21.x * u_xlat108) + u_xlat11.x);
        let x_1665 = u_xlat16.xy;
        txVec15 = vec3f(x_1665.x, x_1665.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat108 = ((u_xlat21.z * u_xlat11.x) + u_xlat108);
        let x_1687 = u_xlat18.xy;
        txVec16 = vec3f(x_1687.x, x_1687.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat108 = ((u_xlat21.w * u_xlat11.x) + u_xlat108);
        let x_1709 = u_xlat17.xy;
        txVec17 = vec3f(x_1709.x, x_1709.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat108 = ((u_xlat22.x * u_xlat11.x) + u_xlat108);
        let x_1731 = u_xlat17.zw;
        txVec18 = vec3f(x_1731.x, x_1731.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat108 = ((u_xlat22.y * u_xlat11.x) + u_xlat108);
        txVec19 = vec3f(u_xlat82.x, u_xlat82.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat108 = ((u_xlat22.z * u_xlat11.x) + u_xlat108);
        let x_1774 = u_xlat18.zw;
        txVec20 = vec3f(x_1774.x, x_1774.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat108 = ((u_xlat22.w * u_xlat11.x) + u_xlat108);
        let x_1796 = u_xlat19.xy;
        txVec21 = vec3f(x_1796.x, x_1796.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat108 = ((u_xlat23.x * u_xlat11.x) + u_xlat108);
        let x_1818 = u_xlat19.zw;
        txVec22 = vec3f(x_1818.x, x_1818.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat108 = ((u_xlat23.y * u_xlat11.x) + u_xlat108);
        let x_1840 = u_xlat44.xy;
        txVec23 = vec3f(x_1840.x, x_1840.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat108 = ((u_xlat23.z * u_xlat11.x) + u_xlat108);
        let x_1862 = u_xlat20.xy;
        txVec24 = vec3f(x_1862.x, x_1862.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat108 = ((u_xlat23.w * u_xlat11.x) + u_xlat108);
        let x_1884 = u_xlat14.xy;
        txVec25 = vec3f(x_1884.x, x_1884.y, u_xlat5.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat108 = ((u_xlat10.x * u_xlat11.x) + u_xlat108);
        let x_1906 = u_xlat14.zw;
        txVec26 = vec3f(x_1906.x, x_1906.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat108 = ((u_xlat10.y * u_xlat10.x) + u_xlat108);
        txVec27 = vec3f(u_xlat79.x, u_xlat79.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat108 = ((u_xlat10.z * u_xlat10.x) + u_xlat108);
        txVec28 = vec3f(u_xlat42.x, u_xlat42.y, u_xlat5.z);
        u_xlat42.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat9.x = ((u_xlat10.w * u_xlat42.x) + u_xlat108);
      }
    }
  } else {
    let x_1972 = u_xlat5.xy;
    txVec29 = vec3f(x_1972.x, x_1972.y, u_xlat5.z);
    u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat42.x = (-(x_353.x_MainLightShadowParams.x) + 1.0f);
  u_xlat9.x = ((u_xlat9.x * x_353.x_MainLightShadowParams.x) + u_xlat42.x);
  u_xlatb75 = (0.0f >= u_xlat5.z);
  u_xlatb108 = (u_xlat5.z >= 1.0f);
  u_xlatb75 = (u_xlatb108 | u_xlatb75);
  if (u_xlatb75) {
    x_2011 = 1.0f;
  } else {
    x_2011 = u_xlat9.x;
  }
  u_xlat9.x = x_2011;
  u_xlat10 = vec4f(((vs_TEXCOORD1 + -(x_72.x_WorldSpaceCameraPos))).xyz, u_xlat10.w);
  u_xlat108 = dot(u_xlat10.xyz, u_xlat10.xyz);
  u_xlat109 = ((u_xlat108 * x_353.x_MainLightShadowParams.z) + x_353.x_MainLightShadowParams.w);
  u_xlat109 = clamp(u_xlat109, 0.0f, 1.0f);
  u_xlat11.x = (-(u_xlat9.x) + 1.0f);
  u_xlat9.x = ((u_xlat109 * u_xlat11.x) + u_xlat9.x);
  u_xlatb11 = !((x_2061.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb11) {
    u_xlat44 = vec3f(((vs_TEXCOORD1.yy * x_2061.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy)).xy, u_xlat44.z);
    u_xlat44 = vec3f((((x_2061.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD1.xx) + u_xlat44.xy)).xy, u_xlat44.z);
    u_xlat44 = vec3f((((x_2061.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD1.zz) + u_xlat44.xy)).xy, u_xlat44.z);
    u_xlat44 = vec3f(((u_xlat44.xy + x_2061.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy)).xy, u_xlat44.z);
    u_xlat44 = vec3f((((u_xlat44.xy * x_849) + x_849)).xy, u_xlat44.z);
    let x_2117 = u_xlat44;
    let x_2120 = x_72.x_GlobalMipBias.x;
    let x_2121 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2117.xy, x_2120);
    u_xlat12 = x_2121;
    let x_2133 = vec4f(x_2061.x_MainLightCookieTextureFormat, x_2061.x_MainLightCookieTextureFormat, x_2061.x_MainLightCookieTextureFormat, x_2061.x_MainLightCookieTextureFormat);
    u_xlatb44 = ((vec4f(x_2133.x, x_2133.y, x_2133.z, x_2133.w) == x_2139)).xy;
    if (u_xlatb44.y) {
      x_2145 = u_xlat12.w;
    } else {
      x_2145 = u_xlat12.x;
    }
    u_xlat77 = x_2145;
    if (u_xlatb44.x) {
      x_2156 = u_xlat12.xyz;
    } else {
      x_2156 = vec3f(u_xlat77);
    }
    u_xlat44 = x_2156;
  } else {
    u_xlat44.x = 1.0f;
    u_xlat44.y = 1.0f;
    u_xlat44.z = 1.0f;
  }
  u_xlat44 = (u_xlat44 * x_72.x_MainLightColor.xyz);
  u_xlat44 = (vec3f(u_xlat106) * u_xlat44);
  u_xlat12.x = dot(u_xlat2.xyw, u_xlat3.xyz);
  u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
  u_xlat12.x = (-(u_xlat12.x) + 1.0f);
  u_xlat45 = (u_xlat12.x * u_xlat12.x);
  u_xlat45 = (u_xlat45 * u_xlat45);
  u_xlat78 = ((vec2f(u_xlat102) * vec2f(u_xlat102)) + vec2f(-1.0f, 1.0f));
  u_xlat102 = (1.0f / u_xlat78.y);
  u_xlat13 = vec4f(((-(u_xlat0.xyz) + vec3f(u_xlat103))).xyz, u_xlat13.w);
  u_xlat13 = vec4f((((vec3f(u_xlat45) * u_xlat13.xyz) + u_xlat0.xyz)).xyz, u_xlat13.w);
  u_xlat13 = vec4f(((vec3f(u_xlat102) * u_xlat13.xyz)).xyz, u_xlat13.w);
  u_xlat13 = vec4f(((u_xlat13.xyz * x_72.x_GlossyEnvironmentColor.xyz)).xyz, u_xlat13.w);
  u_xlat13 = vec4f((((u_xlat7 * u_xlat8.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
  u_xlati102 = bitcast<i32>((x_72.x_MainLightLayerMask & bitcast<u32>(x_181.unity_RenderingLayer.x)));
  u_xlat103 = dot(u_xlat2.xyw, x_72.x_MainLightPosition.xyz);
  u_xlat45 = u_xlat103;
  u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat45);
  u_xlat44 = (u_xlat9.xxx * u_xlat44);
  u_xlat14 = vec4f(((u_xlat3.xyz + x_72.x_MainLightPosition.xyz)).xyz, u_xlat14.w);
  u_xlat9.x = dot(u_xlat14.xyz, u_xlat14.xyz);
  u_xlat9.x = max(u_xlat9.x, 1.17549435e-38f);
  u_xlat9.x = inverseSqrt(u_xlat9.x);
  u_xlat14 = vec4f(((u_xlat9.xxx * u_xlat14.xyz)).xyz, u_xlat14.w);
  u_xlat9.x = dot(u_xlat2.xyw, u_xlat14.xyz);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat111 = dot(x_72.x_MainLightPosition.xyz, u_xlat14.xyz);
  u_xlat111 = clamp(u_xlat111, 0.0f, 1.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * u_xlat78.x) + 1.00001001358032226562f);
  u_xlat111 = (u_xlat111 * u_xlat111);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat111 = max(u_xlat111, 0.10000000149011611938f);
  u_xlat9.x = (u_xlat9.x * u_xlat111);
  u_xlat9.x = (u_xlat39.x * u_xlat9.x);
  u_xlat9.x = (u_xlat104 / u_xlat9.x);
  u_xlat14 = vec4f((((u_xlat0.xyz * u_xlat9.xxx) + u_xlat8.xyz)).xyz, u_xlat14.w);
  u_xlat44 = (u_xlat44 * u_xlat14.xyz);
  if ((u_xlati102 != 0i)) {
    x_2388 = u_xlat44;
  } else {
    x_2388 = vec3f();
  }
  u_xlat44 = x_2388;
  u_xlatu102 = u32(x_72.x_FPParams0.w);
  u_xlatu9 = min(u_xlatu102, 32u);
  u_xlat108 = ((u_xlat108 * x_353.x_AdditionalShadowFadeParams.x) + x_353.x_AdditionalShadowFadeParams.y);
  u_xlat108 = clamp(u_xlat108, 0.0f, 1.0f);
  let x_2419 = vec4f(x_2061.x_AdditionalLightsCookieAtlasTextureFormat, x_2061.x_AdditionalLightsCookieAtlasTextureFormat, x_2061.x_AdditionalLightsCookieAtlasTextureFormat, x_2061.x_AdditionalLightsCookieAtlasTextureFormat);
  u_xlatb14 = ((vec4f(x_2419.x, x_2419.y, x_2419.z, x_2419.w) == x_2139)).xy;
  u_xlat15.x = 0.0f;
  u_xlat15.y = 0.0f;
  u_xlat15.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu9)) {
    } else {
      break;
    }
    u_xlat16 = vec4f((((-(vs_TEXCOORD1) * x_2449.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_2449.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat16.w);
    u_xlat112 = dot(u_xlat16.xyz, u_xlat16.xyz);
    u_xlat112 = max(u_xlat112, 0.00006103515625f);
    u_xlat80.x = inverseSqrt(u_xlat112);
    u_xlat17 = vec4f(((u_xlat80.xxx * u_xlat16.xyz)).xyz, u_xlat17.w);
    u_xlat113 = (1.0f / u_xlat112);
    u_xlat112 = (u_xlat112 * x_2449.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat112 = ((-(u_xlat112) * u_xlat112) + 1.0f);
    u_xlat112 = max(u_xlat112, 0.0f);
    u_xlat112 = (u_xlat112 * u_xlat112);
    u_xlat112 = (u_xlat112 * u_xlat113);
    u_xlat113 = dot(x_2449.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat17.xyz);
    u_xlat113 = ((u_xlat113 * x_2449.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_2449.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat113 = clamp(u_xlat113, 0.0f, 1.0f);
    u_xlat113 = (u_xlat113 * u_xlat113);
    u_xlat112 = (u_xlat112 * u_xlat113);
    u_xlatb113 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati114 = i32(x_353.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati113 = select(u_xlati114, -1i, u_xlatb113);
    u_xlatb114 = (u_xlati113 >= 0i);
    if (u_xlatb114) {
      u_xlatb114 = any(!((vec4f() == vec4f(x_353.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb114) {
        u_xlatb18 = vec4<bool>(((abs(u_xlat17.zzyz) >= abs(u_xlat17.xyxx))).xyz.xyz, u_xlatb18.w);
        u_xlatb114 = (u_xlatb18.y & u_xlatb18.x);
        let x_2585 = ((-(u_xlat17.zyzx) < vec4f())).xyw;
        u_xlatb18 = vec4<bool>(x_2585.xy, u_xlatb18.z, x_2585.z);
        u_xlat18.x = select(4.0f, 5.0f, u_xlatb18.x);
        u_xlat18.y = select(2.0f, 3.0f, u_xlatb18.y);
        u_xlat115 = select(0.0f, 1.0f, u_xlatb18.w);
        if (u_xlatb18.z) {
          x_2603 = u_xlat18.y;
        } else {
          x_2603 = u_xlat115;
        }
        u_xlat115 = x_2603;
        if (u_xlatb114) {
          x_2613 = u_xlat18.x;
        } else {
          x_2613 = u_xlat115;
        }
        u_xlat114 = x_2613;
        u_xlati114 = i32(u_xlat114);
        u_xlati113 = (u_xlati113 + u_xlati114);
      }
      u_xlati113 = (u_xlati113 << bitcast<u32>(2i));
      u_xlat18 = (vs_TEXCOORD1.yyyy * x_353.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati113 + 1i)]);
      u_xlat18 = ((x_353.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati113] * vs_TEXCOORD1.xxxx) + u_xlat18);
      u_xlat18 = ((x_353.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati113 + 2i)] * vs_TEXCOORD1.zzzz) + u_xlat18);
      u_xlat18 = (u_xlat18 + x_353.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati113 + 3i)]);
      u_xlat18 = vec4f(((u_xlat18.xyz / u_xlat18.www)).xyz, u_xlat18.w);
      u_xlatb113 = (0.0f < x_353.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb113) {
        u_xlatb113 = (1.0f == x_353.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb113) {
          u_xlat19 = (u_xlat18.xyxy + x_353.x_AdditionalShadowOffset0);
          let x_2689 = u_xlat19.xy;
          txVec30 = vec3f(x_2689.x, x_2689.y, u_xlat18.z);
          u_xlat20.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_2705 = u_xlat19.zw;
          txVec31 = vec3f(x_2705.x, x_2705.y, u_xlat18.z);
          u_xlat20.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat19 = (u_xlat18.xyxy + x_353.x_AdditionalShadowOffset1);
          let x_2725 = u_xlat19.xy;
          txVec32 = vec3f(x_2725.x, x_2725.y, u_xlat18.z);
          u_xlat20.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_2740 = u_xlat19.zw;
          txVec33 = vec3f(x_2740.x, x_2740.y, u_xlat18.z);
          u_xlat20.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat113 = dot(u_xlat20, x_831);
        } else {
          u_xlatb114 = (2.0f == x_353.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb114) {
            u_xlat19 = vec4f((((u_xlat18.xy * x_353.x_AdditionalShadowmapSize.zw) + x_849)).xy, u_xlat19.zw);
            u_xlat19 = vec4f(floor(u_xlat19.xy).xy, u_xlat19.zw);
            u_xlat85 = ((u_xlat18.xy * x_353.x_AdditionalShadowmapSize.zw) + -(u_xlat19.xy));
            u_xlat20 = (u_xlat85.xxyy + x_867);
            u_xlat21 = (u_xlat20.xxzz * u_xlat20.xxzz);
            let x_2799 = (u_xlat21.yw * x_879);
            u_xlat20 = vec4f(x_2799.x, u_xlat20.y, x_2799.y, u_xlat20.w);
            u_xlat21 = vec4f((((u_xlat21.xz * x_849) + -(u_xlat85))).xy, u_xlat21.zw);
            u_xlat87 = (-(u_xlat85) + x_557);
            u_xlat22 = vec4f(min(u_xlat85, vec2f()).xy, u_xlat22.zw);
            u_xlat22 = vec4f((((-(u_xlat22.xy) * u_xlat22.xy) + u_xlat87)).xy, u_xlat22.zw);
            u_xlat85 = max(u_xlat85, vec2f());
            u_xlat85 = ((-(u_xlat85) * u_xlat85) + u_xlat20.yw);
            u_xlat22 = vec4f(((u_xlat22.xy + x_557)).xy, u_xlat22.zw);
            u_xlat85 = (u_xlat85 + x_557);
            u_xlat23 = vec4f(((u_xlat21.xy * x_935)).xy, u_xlat23.zw);
            u_xlat21 = vec4f(((u_xlat87 * x_935)).xy, u_xlat21.zw);
            u_xlat22 = vec4f(((u_xlat22.xy * x_935)).xy, u_xlat22.zw);
            u_xlat24 = vec4f(((u_xlat85 * x_935)).xy, u_xlat24.zw);
            u_xlat85 = (u_xlat20.yw * x_935);
            u_xlat23.z = u_xlat22.x;
            u_xlat23.w = u_xlat85.x;
            u_xlat21.z = u_xlat24.x;
            u_xlat21.w = u_xlat20.x;
            u_xlat25 = (u_xlat21.zwxz + u_xlat23.zwxz);
            u_xlat22.z = u_xlat23.y;
            u_xlat22.w = u_xlat85.y;
            u_xlat24.z = u_xlat21.y;
            u_xlat24.w = u_xlat20.z;
            u_xlat20 = vec4f(((u_xlat22.zyw + u_xlat24.zyw)).xyz, u_xlat20.w);
            u_xlat21 = vec4f(((u_xlat21.xzw / u_xlat25.zwy)).xyz, u_xlat21.w);
            u_xlat21 = vec4f(((u_xlat21.xyz + x_1007)).xyz, u_xlat21.w);
            u_xlat22 = vec4f(((u_xlat24.zyw / u_xlat20.xyz)).xyz, u_xlat22.w);
            u_xlat22 = vec4f(((u_xlat22.xyz + x_1007)).xyz, u_xlat22.w);
            u_xlat21 = vec4f(((u_xlat21.yxz * x_353.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat21.w);
            u_xlat22 = vec4f(((u_xlat22.xyz * x_353.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat22.w);
            u_xlat21.w = u_xlat22.x;
            u_xlat23 = ((u_xlat19.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat21.ywxw);
            u_xlat85 = ((u_xlat19.xy * x_353.x_AdditionalShadowmapSize.xy) + u_xlat21.zw);
            u_xlat22.w = u_xlat21.y;
            let x_2968 = u_xlat22.yz;
            u_xlat21 = vec4f(u_xlat21.x, x_2968.x, u_xlat21.z, x_2968.y);
            u_xlat24 = ((u_xlat19.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat21.xyzy);
            u_xlat22 = ((u_xlat19.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat22.wywz);
            u_xlat21 = ((u_xlat19.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat21.xwzw);
            u_xlat26 = (u_xlat20.xxxy * u_xlat25.zwyz);
            u_xlat27 = (u_xlat20.yyzz * u_xlat25);
            u_xlat114 = (u_xlat20.z * u_xlat25.y);
            let x_3016 = u_xlat23.xy;
            txVec34 = vec3f(x_3016.x, x_3016.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_3030 = u_xlat23.zw;
            txVec35 = vec3f(x_3030.x, x_3030.y, u_xlat18.z);
            u_xlat116 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat116 = (u_xlat116 * u_xlat26.y);
            u_xlat115 = ((u_xlat26.x * u_xlat115) + u_xlat116);
            txVec36 = vec3f(u_xlat85.x, u_xlat85.y, u_xlat18.z);
            u_xlat116 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat115 = ((u_xlat26.z * u_xlat116) + u_xlat115);
            let x_3074 = u_xlat22.xy;
            txVec37 = vec3f(x_3074.x, x_3074.y, u_xlat18.z);
            u_xlat116 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat115 = ((u_xlat26.w * u_xlat116) + u_xlat115);
            let x_3094 = u_xlat24.xy;
            txVec38 = vec3f(x_3094.x, x_3094.y, u_xlat18.z);
            u_xlat116 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat115 = ((u_xlat27.x * u_xlat116) + u_xlat115);
            let x_3114 = u_xlat24.zw;
            txVec39 = vec3f(x_3114.x, x_3114.y, u_xlat18.z);
            u_xlat116 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat115 = ((u_xlat27.y * u_xlat116) + u_xlat115);
            let x_3134 = u_xlat22.zw;
            txVec40 = vec3f(x_3134.x, x_3134.y, u_xlat18.z);
            u_xlat116 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat115 = ((u_xlat27.z * u_xlat116) + u_xlat115);
            let x_3154 = u_xlat21.xy;
            txVec41 = vec3f(x_3154.x, x_3154.y, u_xlat18.z);
            u_xlat116 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat115 = ((u_xlat27.w * u_xlat116) + u_xlat115);
            let x_3174 = u_xlat21.zw;
            txVec42 = vec3f(x_3174.x, x_3174.y, u_xlat18.z);
            u_xlat116 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat113 = ((u_xlat114 * u_xlat116) + u_xlat115);
          } else {
            u_xlat19 = vec4f((((u_xlat18.xy * x_353.x_AdditionalShadowmapSize.zw) + x_849)).xy, u_xlat19.zw);
            u_xlat19 = vec4f(floor(u_xlat19.xy).xy, u_xlat19.zw);
            u_xlat85 = ((u_xlat18.xy * x_353.x_AdditionalShadowmapSize.zw) + -(u_xlat19.xy));
            u_xlat20 = (u_xlat85.xxyy + x_867);
            u_xlat21 = (u_xlat20.xxzz * u_xlat20.xxzz);
            let x_3226 = (u_xlat21.yw * x_1326);
            u_xlat22 = vec4f(u_xlat22.x, x_3226.x, u_xlat22.z, x_3226.y);
            let x_3234 = ((u_xlat21.xz * x_849) + -(u_xlat85));
            u_xlat20 = vec4f(x_3234.x, u_xlat20.y, x_3234.y, u_xlat20.w);
            u_xlat21 = vec4f(((-(u_xlat85) + x_557)).xy, u_xlat21.zw);
            u_xlat87 = min(u_xlat85, vec2f());
            u_xlat21 = vec4f((((-(u_xlat87) * u_xlat87) + u_xlat21.xy)).xy, u_xlat21.zw);
            u_xlat87 = max(u_xlat85, vec2f());
            let x_3262 = ((-(u_xlat87) * u_xlat87) + u_xlat20.yw);
            u_xlat53 = vec3f(x_3262.x, u_xlat53.y, x_3262.y);
            u_xlat21 = vec4f(((u_xlat21.xy + x_115)).xy, u_xlat21.zw);
            let x_3272 = (u_xlat53.xz + x_115);
            u_xlat20 = vec4f(u_xlat20.x, x_3272.x, u_xlat20.z, x_3272.y);
            u_xlat23.z = (u_xlat20.y * 0.08163200318813323975f);
            u_xlat24 = vec4f(((u_xlat20.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat24.w);
            u_xlat20 = vec4f(((u_xlat21.xy * x_1385)).xy, u_xlat20.zw);
            u_xlat23.x = u_xlat24.y;
            let x_3296 = ((u_xlat85.xx * x_1402) + x_1405);
            u_xlat23 = vec4f(u_xlat23.x, x_3296.x, u_xlat23.z, x_3296.y);
            let x_3302 = ((u_xlat85.xx * x_1402) + x_1412);
            u_xlat21 = vec4f(x_3302.x, u_xlat21.y, x_3302.y, u_xlat21.w);
            u_xlat21.y = u_xlat20.x;
            u_xlat21.w = u_xlat22.y;
            u_xlat23 = (u_xlat21 + u_xlat23);
            let x_3317 = ((u_xlat85.yy * x_1402) + x_1405);
            u_xlat24 = vec4f(u_xlat24.x, x_3317.x, u_xlat24.z, x_3317.y);
            let x_3323 = ((u_xlat85.yy * x_1402) + x_1412);
            u_xlat22 = vec4f(x_3323.x, u_xlat22.y, x_3323.y, u_xlat22.w);
            u_xlat22.y = u_xlat20.y;
            u_xlat20 = (u_xlat22 + u_xlat24);
            u_xlat21 = (u_xlat21 / u_xlat23);
            u_xlat21 = (u_xlat21 + x_1450);
            u_xlat22 = (u_xlat22 / u_xlat20);
            u_xlat22 = (u_xlat22 + x_1450);
            u_xlat21 = (u_xlat21.wxyz * x_353.x_AdditionalShadowmapSize.xxxx);
            u_xlat22 = (u_xlat22.xwyz * x_353.x_AdditionalShadowmapSize.yyyy);
            let x_3355 = u_xlat21.yzw;
            u_xlat24 = vec4f(x_3355.x, u_xlat24.y, x_3355.yz);
            u_xlat24.y = u_xlat22.x;
            u_xlat25 = ((u_xlat19.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat24.xyzy);
            u_xlat85 = ((u_xlat19.xy * x_353.x_AdditionalShadowmapSize.xy) + u_xlat24.wy);
            u_xlat21.y = u_xlat24.y;
            u_xlat24.y = u_xlat22.z;
            u_xlat26 = ((u_xlat19.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat24.xyzy);
            u_xlat27 = vec4f((((u_xlat19.xy * x_353.x_AdditionalShadowmapSize.xy) + u_xlat24.wy)).xy, u_xlat27.zw);
            u_xlat21.z = u_xlat24.y;
            u_xlat28 = ((u_xlat19.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat21.xyxz);
            u_xlat24.y = u_xlat22.w;
            u_xlat29 = ((u_xlat19.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat24.xyzy);
            u_xlat54 = ((u_xlat19.xy * x_353.x_AdditionalShadowmapSize.xy) + u_xlat24.wy);
            u_xlat21.w = u_xlat24.y;
            u_xlat93 = ((u_xlat19.xy * x_353.x_AdditionalShadowmapSize.xy) + u_xlat21.xw);
            let x_3455 = u_xlat24.xzw;
            u_xlat22 = vec4f(x_3455.x, u_xlat22.y, x_3455.yz);
            u_xlat24 = ((u_xlat19.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat22.xyzy);
            u_xlat88 = ((u_xlat19.xy * x_353.x_AdditionalShadowmapSize.xy) + u_xlat22.wy);
            u_xlat22.x = u_xlat21.x;
            u_xlat19 = vec4f((((u_xlat19.xy * x_353.x_AdditionalShadowmapSize.xy) + u_xlat22.xy)).xy, u_xlat19.zw);
            u_xlat30 = (u_xlat20.xxxx * u_xlat23);
            u_xlat31 = (u_xlat20.yyyy * u_xlat23);
            u_xlat32 = (u_xlat20.zzzz * u_xlat23);
            u_xlat20 = (u_xlat20.wwww * u_xlat23);
            let x_3512 = u_xlat25.xy;
            txVec43 = vec3f(x_3512.x, x_3512.y, u_xlat18.z);
            u_xlat114 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_3526 = u_xlat25.zw;
            txVec44 = vec3f(x_3526.x, x_3526.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat115 = (u_xlat115 * u_xlat30.y);
            u_xlat114 = ((u_xlat30.x * u_xlat114) + u_xlat115);
            txVec45 = vec3f(u_xlat85.x, u_xlat85.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat114 = ((u_xlat30.z * u_xlat115) + u_xlat114);
            let x_3569 = u_xlat28.xy;
            txVec46 = vec3f(x_3569.x, x_3569.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat114 = ((u_xlat30.w * u_xlat115) + u_xlat114);
            let x_3589 = u_xlat26.xy;
            txVec47 = vec3f(x_3589.x, x_3589.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat114 = ((u_xlat31.x * u_xlat115) + u_xlat114);
            let x_3609 = u_xlat26.zw;
            txVec48 = vec3f(x_3609.x, x_3609.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat114 = ((u_xlat31.y * u_xlat115) + u_xlat114);
            let x_3629 = u_xlat27.xy;
            txVec49 = vec3f(x_3629.x, x_3629.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat114 = ((u_xlat31.z * u_xlat115) + u_xlat114);
            let x_3649 = u_xlat28.zw;
            txVec50 = vec3f(x_3649.x, x_3649.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat114 = ((u_xlat31.w * u_xlat115) + u_xlat114);
            let x_3669 = u_xlat29.xy;
            txVec51 = vec3f(x_3669.x, x_3669.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat114 = ((u_xlat32.x * u_xlat115) + u_xlat114);
            let x_3689 = u_xlat29.zw;
            txVec52 = vec3f(x_3689.x, x_3689.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat114 = ((u_xlat32.y * u_xlat115) + u_xlat114);
            txVec53 = vec3f(u_xlat54.x, u_xlat54.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat114 = ((u_xlat32.z * u_xlat115) + u_xlat114);
            txVec54 = vec3f(u_xlat93.x, u_xlat93.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat114 = ((u_xlat32.w * u_xlat115) + u_xlat114);
            let x_3747 = u_xlat24.xy;
            txVec55 = vec3f(x_3747.x, x_3747.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat114 = ((u_xlat20.x * u_xlat115) + u_xlat114);
            let x_3767 = u_xlat24.zw;
            txVec56 = vec3f(x_3767.x, x_3767.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat114 = ((u_xlat20.y * u_xlat115) + u_xlat114);
            txVec57 = vec3f(u_xlat88.x, u_xlat88.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat114 = ((u_xlat20.z * u_xlat115) + u_xlat114);
            let x_3806 = u_xlat19.xy;
            txVec58 = vec3f(x_3806.x, x_3806.y, u_xlat18.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat113 = ((u_xlat20.w * u_xlat115) + u_xlat114);
          }
        }
      } else {
        let x_3827 = u_xlat18.xy;
        txVec59 = vec3f(x_3827.x, x_3827.y, u_xlat18.z);
        u_xlat113 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat114 = (1.0f + -(x_353.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat113 = ((u_xlat113 * x_353.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat114);
      u_xlatb114 = (0.0f >= u_xlat18.z);
      u_xlatb115 = (u_xlat18.z >= 1.0f);
      u_xlatb114 = (u_xlatb114 | u_xlatb115);
      u_xlat113 = select(u_xlat113, 1.0f, u_xlatb114);
    } else {
      u_xlat113 = 1.0f;
    }
    u_xlat114 = (-(u_xlat113) + 1.0f);
    u_xlat113 = ((u_xlat108 * u_xlat114) + u_xlat113);
    u_xlati114 = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati114 = bitcast<i32>((bitcast<u32>(u_xlati114) & bitcast<u32>(x_2061.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati114 != 0i)) {
      u_xlati114 = i32(x_2061.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati115 = select(1i, 0i, (u_xlati114 != 0i));
      u_xlati116 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati115 != 0i)) {
        u_xlat18 = vec4f(((vs_TEXCOORD1.yyy * x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati116 + 1i)].xyw)).xyz, u_xlat18.w);
        u_xlat18 = vec4f((((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati116].xyw * vs_TEXCOORD1.xxx) + u_xlat18.xyz)).xyz, u_xlat18.w);
        u_xlat18 = vec4f((((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati116 + 2i)].xyw * vs_TEXCOORD1.zzz) + u_xlat18.xyz)).xyz, u_xlat18.w);
        u_xlat18 = vec4f(((u_xlat18.xyz + x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati116 + 3i)].xyw)).xyz, u_xlat18.w);
        u_xlat18 = vec4f(((u_xlat18.xy / u_xlat18.zz)).xy, u_xlat18.zw);
        u_xlat18 = vec4f((((u_xlat18.xy * x_849) + x_849)).xy, u_xlat18.zw);
        u_xlat18 = vec4f(clamp(u_xlat18.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat18.zw);
        u_xlat18 = vec4f((((x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat18.xy) + x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat18.zw);
      } else {
        u_xlatb114 = (u_xlati114 == 1i);
        u_xlati114 = select(0i, 1i, u_xlatb114);
        if ((u_xlati114 != 0i)) {
          u_xlat84 = (vs_TEXCOORD1.yy * x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati116 + 1i)].xy);
          u_xlat84 = ((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati116].xy * vs_TEXCOORD1.xx) + u_xlat84);
          u_xlat84 = ((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati116 + 2i)].xy * vs_TEXCOORD1.zz) + u_xlat84);
          u_xlat84 = (u_xlat84 + x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati116 + 3i)].xy);
          u_xlat84 = ((u_xlat84 * x_849) + x_849);
          u_xlat84 = fract(u_xlat84);
          u_xlat18 = vec4f((((x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat84) + x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat18.zw);
        } else {
          u_xlat19 = (vs_TEXCOORD1.yyyy * x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati116 + 1i)]);
          u_xlat19 = ((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati116] * vs_TEXCOORD1.xxxx) + u_xlat19);
          u_xlat19 = ((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati116 + 2i)] * vs_TEXCOORD1.zzzz) + u_xlat19);
          u_xlat19 = (u_xlat19 + x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati116 + 3i)]);
          u_xlat19 = vec4f(((u_xlat19.xyz / u_xlat19.www)).xyz, u_xlat19.w);
          u_xlat114 = dot(u_xlat19.xyz, u_xlat19.xyz);
          u_xlat114 = inverseSqrt(u_xlat114);
          u_xlat19 = vec4f(((vec3f(u_xlat114) * u_xlat19.xyz)).xyz, u_xlat19.w);
          u_xlat114 = dot(abs(u_xlat19.xyz), x_4108);
          u_xlat114 = max(u_xlat114, 0.00000099999999747524f);
          u_xlat114 = (1.0f / u_xlat114);
          u_xlat20 = vec4f(((vec3f(u_xlat114) * u_xlat19.zxy)).xyz, u_xlat20.w);
          u_xlat20.x = -(u_xlat20.x);
          u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
          u_xlatb84 = ((u_xlat20.yzyz >= vec4f())).xy;
          if (u_xlatb84.x) {
            x_4137 = u_xlat20.x;
          } else {
            x_4137 = -(u_xlat20.x);
          }
          u_xlat84.x = x_4137;
          if (u_xlatb84.y) {
            x_4150 = u_xlat20.x;
          } else {
            x_4150 = -(u_xlat20.x);
          }
          u_xlat84.y = x_4150;
          u_xlat84 = ((u_xlat19.xy * vec2f(u_xlat114)) + u_xlat84);
          u_xlat84 = ((u_xlat84 * x_849) + x_849);
          u_xlat84 = clamp(u_xlat84, vec2f(0.0f), vec2f(1.0f));
          u_xlat18 = vec4f((((x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat84) + x_2061.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat18.zw);
        }
      }
      u_xlat18 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat18.xy, 0.0f);
      if (u_xlatb14.y) {
        x_4199 = u_xlat18.w;
      } else {
        x_4199 = u_xlat18.x;
      }
      u_xlat114 = x_4199;
      if (u_xlatb14.x) {
        x_4210 = u_xlat18.xyz;
      } else {
        x_4210 = vec3f(u_xlat114);
      }
      u_xlat18 = vec4f(x_4210.xyz, u_xlat18.w);
    } else {
      u_xlat18.x = 1.0f;
      u_xlat18.y = 1.0f;
      u_xlat18.z = 1.0f;
    }
    u_xlat18 = vec4f(((u_xlat18.xyz * x_2449.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat18.w);
    u_xlat18 = vec4f(((vec3f(u_xlat106) * u_xlat18.xyz)).xyz, u_xlat18.w);
    u_xlati114 = bitcast<i32>((bitcast<u32>(x_181.unity_RenderingLayer.x) & bitcast<u32>(x_2449.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat112 = (u_xlat112 * u_xlat113);
    u_xlat113 = dot(u_xlat2.xyw, u_xlat17.xyz);
    u_xlat113 = clamp(u_xlat113, 0.0f, 1.0f);
    u_xlat112 = (u_xlat112 * u_xlat113);
    u_xlat18 = vec4f(((vec3f(u_xlat112) * u_xlat18.xyz)).xyz, u_xlat18.w);
    u_xlat16 = vec4f((((u_xlat16.xyz * u_xlat80.xxx) + u_xlat3.xyz)).xyz, u_xlat16.w);
    u_xlat112 = dot(u_xlat16.xyz, u_xlat16.xyz);
    u_xlat112 = max(u_xlat112, 1.17549435e-38f);
    u_xlat112 = inverseSqrt(u_xlat112);
    u_xlat16 = vec4f(((vec3f(u_xlat112) * u_xlat16.xyz)).xyz, u_xlat16.w);
    u_xlat112 = dot(u_xlat2.xyw, u_xlat16.xyz);
    u_xlat112 = clamp(u_xlat112, 0.0f, 1.0f);
    u_xlat80.x = dot(u_xlat17.xyz, u_xlat16.xyz);
    u_xlat80.x = clamp(u_xlat80.x, 0.0f, 1.0f);
    u_xlat112 = (u_xlat112 * u_xlat112);
    u_xlat112 = ((u_xlat112 * u_xlat78.x) + 1.00001001358032226562f);
    u_xlat80.x = (u_xlat80.x * u_xlat80.x);
    u_xlat112 = (u_xlat112 * u_xlat112);
    u_xlat80.x = max(u_xlat80.x, 0.10000000149011611938f);
    u_xlat112 = (u_xlat112 * u_xlat80.x);
    u_xlat112 = (u_xlat39.x * u_xlat112);
    u_xlat112 = (u_xlat104 / u_xlat112);
    u_xlat16 = vec4f((((u_xlat0.xyz * vec3f(u_xlat112)) + u_xlat8.xyz)).xyz, u_xlat16.w);
    u_xlat16 = vec4f((((u_xlat16.xyz * u_xlat18.xyz) + u_xlat15.xyz)).xyz, u_xlat16.w);
    if ((u_xlati114 != 0i)) {
      x_4369 = u_xlat16.xyz;
    } else {
      x_4369 = u_xlat15.xyz;
    }
    u_xlat15 = vec4f(x_4369.xyz, u_xlat15.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu9 = u32(x_72.x_FPParams1.w);
  if ((u_xlatu9 != 0u)) {
    let x_4394 = (u_xlat6.xz * x_72.x_FPParams1.xy);
    u_xlat6 = vec4f(x_4394.x, u_xlat6.y, x_4394.y, u_xlat6.w);
    let x_4403 = vec2u(u_xlat6.xz);
    u_xlatu6 = vec3u(x_4403.x, u_xlatu6.y, x_4403.y);
    u_xlatu111 = u32(x_72.x_FPParams1.z);
    u_xlati6.x = ((bitcast<i32>(u_xlatu6.z) * bitcast<i32>(u_xlatu111)) + bitcast<i32>(u_xlatu6.x));
    u_xlatu6.x = (u_xlatu9 * bitcast<u32>(u_xlati6.x));
    u_xlat4.x = dot(-(u_xlat4), u_xlat10.xyz);
    u_xlat37 = log2(u_xlat4.x);
    if (u_xlatb68) {
      x_4441 = u_xlat37;
    } else {
      x_4441 = u_xlat4.x;
    }
    u_xlat68.x = x_4441;
    u_xlat68.x = ((u_xlat68.x * x_72.x_FPParams0.x) + x_72.x_FPParams0.y);
    u_xlatu68 = u32(u_xlat68.x);
    u_xlatu4 = u32(x_72.x_FPParams2.x);
    u_xlatu4 = (u_xlatu4 + 4294967295u);
    u_xlati37.x = (bitcast<i32>(u_xlatu9) + 2i);
    u_xlatu68 = min(u_xlatu68, u_xlatu4);
    u_xlatu4 = (bitcast<u32>(u_xlati37.x) * u_xlatu68);
    u_xlatu68 = ((u_xlatu68 * bitcast<u32>(u_xlati37.x)) + 2u);
    u_xlatu37 = (u_xlatu4 >> 2u);
    param = bitcast<i32>(u_xlatu4);
    param_1 = 0i;
    param_2 = 1i;
    let x_4500 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
    param_3 = bitcast<i32>(u_xlatu4);
    param_4 = 1i;
    param_5 = 1i;
    let x_4506 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
    let x_4507 = vec2i(x_4500, x_4506);
    u_xlati4 = vec3i(x_4507.x, u_xlati4.y, x_4507.y);
    u_xlati10 = bitcast<vec2i>((bitcast<vec2u>(u_xlati4.xx) & bitcast<vec2u>(x_4518.urp_ZBins[bitcast<i32>(u_xlatu37)].wy)));
    u_xlati80 = ~(u_xlati4.xz);
    u_xlati4 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati80.xx) & bitcast<vec2u>(x_4518.urp_ZBins[bitcast<i32>(u_xlatu37)].zx))).xy, u_xlati4.z);
    u_xlati4 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati4.xy) | bitcast<vec2u>(u_xlati10))).xy, u_xlati4.z);
    u_xlati4.x = bitcast<i32>((bitcast<u32>(u_xlati4.z) & bitcast<u32>(u_xlati4.x)));
    u_xlati37.x = bitcast<i32>((bitcast<u32>(u_xlati80.y) & bitcast<u32>(u_xlati4.y)));
    u_xlatu4 = (bitcast<u32>(u_xlati37.x) | bitcast<u32>(u_xlati4.x));
    u_xlatu37 = (u_xlatu6.x >> 2u);
    param_6 = bitcast<i32>(u_xlatu6.x);
    param_7 = 0i;
    param_8 = 1i;
    let x_4587 = int_bitfieldExtract_i1_i1_i1_(&(param_6), &(param_7), &(param_8));
    param_9 = bitcast<i32>(u_xlatu6.x);
    param_10 = 1i;
    param_11 = 1i;
    let x_4594 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
    let x_4595 = vec2i(x_4587, x_4594);
    u_xlati6 = vec3i(x_4595.x, u_xlati6.y, x_4595.y);
    u_xlati10 = bitcast<vec2i>((bitcast<vec2u>(u_xlati6.xx) & bitcast<vec2u>(x_4604.urp_Tiles[bitcast<i32>(u_xlatu37)].wy)));
    u_xlati80 = ~(u_xlati6.xz);
    u_xlati37 = bitcast<vec2i>((bitcast<vec2u>(u_xlati80.xx) & bitcast<vec2u>(x_4604.urp_Tiles[bitcast<i32>(u_xlatu37)].zx)));
    u_xlati37 = bitcast<vec2i>((bitcast<vec2u>(u_xlati37) | bitcast<vec2u>(u_xlati10)));
    u_xlati37.x = bitcast<i32>((bitcast<u32>(u_xlati6.z) & bitcast<u32>(u_xlati37.x)));
    u_xlati70 = bitcast<i32>((bitcast<u32>(u_xlati80.y) & bitcast<u32>(u_xlati37.y)));
    u_xlati37.x = bitcast<i32>((bitcast<u32>(u_xlati70) | bitcast<u32>(u_xlati37.x)));
    u_xlatu70 = (u_xlatu68 >> 2u);
    param_12 = bitcast<i32>(u_xlatu68);
    param_13 = 0i;
    param_14 = 1i;
    let x_4667 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
    param_15 = bitcast<i32>(u_xlatu68);
    param_16 = 1i;
    param_17 = 1i;
    let x_4673 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
    let x_4674 = vec2i(x_4667, x_4673);
    u_xlati6 = vec3i(x_4674.x, u_xlati6.y, x_4674.y);
    u_xlati10 = bitcast<vec2i>((bitcast<vec2u>(u_xlati6.xx) & bitcast<vec2u>(x_4518.urp_ZBins[bitcast<i32>(u_xlatu70)].wy)));
    u_xlati80 = ~(u_xlati6.xz);
    u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati80.xx) & bitcast<vec2u>(x_4518.urp_ZBins[bitcast<i32>(u_xlatu70)].zx)));
    u_xlati10 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10) | bitcast<vec2u>(u_xlati16)));
    u_xlati68 = bitcast<i32>((bitcast<u32>(u_xlati6.z) & bitcast<u32>(u_xlati10.x)));
    u_xlati70 = bitcast<i32>((bitcast<u32>(u_xlati80.y) & bitcast<u32>(u_xlati10.y)));
    u_xlati68 = bitcast<i32>((bitcast<u32>(u_xlati68) | bitcast<u32>(u_xlati70)));
    u_xlati68 = bitcast<i32>((bitcast<u32>(u_xlati68) & bitcast<u32>(u_xlati37.x)));
    u_xlati37.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu4) & 31i)));
    u_xlati68 = bitcast<i32>((bitcast<u32>(u_xlati68) & bitcast<u32>(u_xlati37.x)));
    u_xlatu4 = (u_xlatu4 >> 16u);
    u_xlatu4 = (bitcast<u32>(-(bitcast<i32>(u_xlatu4))) + 31u);
    u_xlatu4 = (4294967295u >> (u_xlatu4 & 31u));
    u_xlati68 = bitcast<i32>((bitcast<u32>(u_xlati68) & u_xlatu4));
  } else {
    u_xlati68 = 0i;
  }
  u_xlat4 = u_xlat15.xyz;
  u_xlati6.x = u_xlati68;
  loop {
    if (true) {
    } else {
      break;
    }
    if ((u_xlati6.x == 0i)) {
      break;
    }
    u_xlati72 = (0i - u_xlati6.x);
    u_xlatu72 = (bitcast<u32>(u_xlati72) & bitcast<u32>(u_xlati6.x));
    u_xlat72 = f32(u_xlatu72);
    u_xlatu72 = (bitcast<u32>(u_xlat72) >> 23u);
    u_xlati72 = (bitcast<i32>(u_xlatu72) + -127i);
    u_xlati9 = (1i << bitcast<u32>((u_xlati72 & 31i)));
    u_xlati6.x = bitcast<i32>((bitcast<u32>(u_xlati6.x) ^ bitcast<u32>(u_xlati9)));
    u_xlati72 = (bitcast<i32>(u_xlatu102) + u_xlati72);
    u_xlat10 = vec4f((((-(vs_TEXCOORD1) * x_2449.x_AdditionalLightsPosition[u_xlati72].www) + x_2449.x_AdditionalLightsPosition[u_xlati72].xyz)).xyz, u_xlat10.w);
    u_xlat9.x = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat9.x = max(u_xlat9.x, 0.00006103515625f);
    u_xlat111 = inverseSqrt(u_xlat9.x);
    u_xlat16 = vec4f(((u_xlat10.xyz * vec3f(u_xlat111))).xyz, u_xlat16.w);
    u_xlat112 = (1.0f / u_xlat9.x);
    u_xlat9.x = (u_xlat9.x * x_2449.x_AdditionalLightsAttenuation[u_xlati72].x);
    u_xlat9.x = ((-(u_xlat9.x) * u_xlat9.x) + 1.0f);
    u_xlat9.x = max(u_xlat9.x, 0.0f);
    u_xlat9.x = (u_xlat9.x * u_xlat9.x);
    u_xlat9.x = (u_xlat9.x * u_xlat112);
    u_xlat112 = dot(x_2449.x_AdditionalLightsSpotDir[u_xlati72].xyz, u_xlat16.xyz);
    u_xlat112 = ((u_xlat112 * x_2449.x_AdditionalLightsAttenuation[u_xlati72].z) + x_2449.x_AdditionalLightsAttenuation[u_xlati72].w);
    u_xlat112 = clamp(u_xlat112, 0.0f, 1.0f);
    u_xlat112 = (u_xlat112 * u_xlat112);
    u_xlat9.x = (u_xlat9.x * u_xlat112);
    u_xlatb112 = (u_xlati72 < 0i);
    u_xlati80.x = i32(x_353.x_AdditionalShadowParams[u_xlati72].w);
    if (u_xlatb112) {
      x_4924 = -1i;
    } else {
      x_4924 = u_xlati80.x;
    }
    u_xlati112 = x_4924;
    u_xlatb80 = (u_xlati112 >= 0i);
    if (u_xlatb80) {
      u_xlatb80 = any(!((vec4f() == vec4f(x_353.x_AdditionalShadowParams[u_xlati72].z))));
      if (u_xlatb80) {
        u_xlatb17 = vec4<bool>(((abs(u_xlat16.zzyz) >= abs(u_xlat16.xyxx))).xyz.xyz, u_xlatb17.w);
        u_xlatb80 = (u_xlatb17.y & u_xlatb17.x);
        let x_4966 = ((-(u_xlat16.zyzx) < vec4f())).xyw;
        u_xlatb17 = vec4<bool>(x_4966.xy, u_xlatb17.z, x_4966.z);
        u_xlat17.x = select(4.0f, 5.0f, u_xlatb17.x);
        u_xlat17.y = select(2.0f, 3.0f, u_xlatb17.y);
        u_xlat113 = select(0.0f, 1.0f, u_xlatb17.w);
        if (u_xlatb17.z) {
          x_4982 = u_xlat17.y;
        } else {
          x_4982 = u_xlat113;
        }
        u_xlat113 = x_4982;
        if (u_xlatb80) {
          x_4991 = u_xlat17.x;
        } else {
          x_4991 = u_xlat113;
        }
        u_xlat80.x = x_4991;
        u_xlati80.x = i32(u_xlat80.x);
        u_xlati112 = (u_xlati112 + u_xlati80.x);
      }
      u_xlati112 = (u_xlati112 << bitcast<u32>(2i));
      u_xlat17 = (vs_TEXCOORD1.yyyy * x_353.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati112 + 1i)]);
      u_xlat17 = ((x_353.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati112] * vs_TEXCOORD1.xxxx) + u_xlat17);
      u_xlat17 = ((x_353.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati112 + 2i)] * vs_TEXCOORD1.zzzz) + u_xlat17);
      u_xlat17 = (u_xlat17 + x_353.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati112 + 3i)]);
      u_xlat17 = vec4f(((u_xlat17.xyz / u_xlat17.www)).xyz, u_xlat17.w);
      u_xlatb112 = (0.0f < x_353.x_AdditionalShadowParams[u_xlati72].y);
      if (u_xlatb112) {
        u_xlatb112 = (1.0f == x_353.x_AdditionalShadowParams[u_xlati72].y);
        if (u_xlatb112) {
          u_xlat18 = (u_xlat17.xyxy + x_353.x_AdditionalShadowOffset0);
          let x_5068 = u_xlat18.xy;
          txVec60 = vec3f(x_5068.x, x_5068.y, u_xlat17.z);
          u_xlat19.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_5083 = u_xlat18.zw;
          txVec61 = vec3f(x_5083.x, x_5083.y, u_xlat17.z);
          u_xlat19.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat18 = (u_xlat17.xyxy + x_353.x_AdditionalShadowOffset1);
          let x_5103 = u_xlat18.xy;
          txVec62 = vec3f(x_5103.x, x_5103.y, u_xlat17.z);
          u_xlat19.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_5118 = u_xlat18.zw;
          txVec63 = vec3f(x_5118.x, x_5118.y, u_xlat17.z);
          u_xlat19.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat112 = dot(u_xlat19, x_831);
        } else {
          u_xlatb80 = (2.0f == x_353.x_AdditionalShadowParams[u_xlati72].y);
          if (u_xlatb80) {
            u_xlat80 = ((u_xlat17.xy * x_353.x_AdditionalShadowmapSize.zw) + x_849);
            u_xlat80 = floor(u_xlat80);
            u_xlat18 = vec4f((((u_xlat17.xy * x_353.x_AdditionalShadowmapSize.zw) + -(u_xlat80))).xy, u_xlat18.zw);
            u_xlat19 = (u_xlat18.xxyy + x_867);
            u_xlat20 = (u_xlat19.xxzz * u_xlat19.xxzz);
            u_xlat84 = (u_xlat20.yw * x_879);
            let x_5178 = ((u_xlat20.xz * x_849) + -(u_xlat18.xy));
            u_xlat19 = vec4f(x_5178.x, u_xlat19.y, x_5178.y, u_xlat19.w);
            u_xlat20 = vec4f(((-(u_xlat18.xy) + x_557)).xy, u_xlat20.zw);
            u_xlat86 = min(u_xlat18.xy, vec2f());
            u_xlat86 = ((-(u_xlat86) * u_xlat86) + u_xlat20.xy);
            u_xlat18 = vec4f(max(u_xlat18.xy, vec2f()).xy, u_xlat18.zw);
            u_xlat18 = vec4f((((-(u_xlat18.xy) * u_xlat18.xy) + u_xlat19.yw)).xy, u_xlat18.zw);
            u_xlat86 = (u_xlat86 + x_557);
            u_xlat18 = vec4f(((u_xlat18.xy + x_557)).xy, u_xlat18.zw);
            u_xlat21 = vec4f(((u_xlat19.xz * x_935)).xy, u_xlat21.zw);
            u_xlat22 = vec4f(((u_xlat20.xy * x_935)).xy, u_xlat22.zw);
            u_xlat20 = vec4f(((u_xlat86 * x_935)).xy, u_xlat20.zw);
            u_xlat23 = vec4f(((u_xlat18.xy * x_935)).xy, u_xlat23.zw);
            u_xlat18 = vec4f(((u_xlat19.yw * x_935)).xy, u_xlat18.zw);
            u_xlat21.z = u_xlat20.x;
            u_xlat21.w = u_xlat18.x;
            u_xlat22.z = u_xlat23.x;
            u_xlat22.w = u_xlat84.x;
            u_xlat19 = (u_xlat21.zwxz + u_xlat22.zwxz);
            u_xlat20.z = u_xlat21.y;
            u_xlat20.w = u_xlat18.y;
            u_xlat23.z = u_xlat22.y;
            u_xlat23.w = u_xlat84.y;
            u_xlat18 = vec4f(((u_xlat20.zyw + u_xlat23.zyw)).xyz, u_xlat18.w);
            u_xlat20 = vec4f(((u_xlat22.xzw / u_xlat19.zwy)).xyz, u_xlat20.w);
            u_xlat20 = vec4f(((u_xlat20.xyz + x_1007)).xyz, u_xlat20.w);
            u_xlat21 = vec4f(((u_xlat23.zyw / u_xlat18.xyz)).xyz, u_xlat21.w);
            u_xlat21 = vec4f(((u_xlat21.xyz + x_1007)).xyz, u_xlat21.w);
            u_xlat20 = vec4f(((u_xlat20.yxz * x_353.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat20.w);
            u_xlat21 = vec4f(((u_xlat21.xyz * x_353.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat21.w);
            u_xlat20.w = u_xlat21.x;
            u_xlat22 = ((u_xlat80.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat20.ywxw);
            u_xlat23 = vec4f((((u_xlat80 * x_353.x_AdditionalShadowmapSize.xy) + u_xlat20.zw)).xy, u_xlat23.zw);
            u_xlat21.w = u_xlat20.y;
            let x_5347 = u_xlat21.yz;
            u_xlat20 = vec4f(u_xlat20.x, x_5347.x, u_xlat20.z, x_5347.y);
            u_xlat24 = ((u_xlat80.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat20.xyzy);
            u_xlat21 = ((u_xlat80.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat21.wywz);
            u_xlat20 = ((u_xlat80.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat20.xwzw);
            u_xlat25 = (u_xlat18.xxxy * u_xlat19.zwyz);
            u_xlat26 = (u_xlat18.yyzz * u_xlat19);
            u_xlat80.x = (u_xlat18.z * u_xlat19.y);
            let x_5394 = u_xlat22.xy;
            txVec64 = vec3f(x_5394.x, x_5394.y, u_xlat17.z);
            u_xlat113 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_5408 = u_xlat22.zw;
            txVec65 = vec3f(x_5408.x, x_5408.y, u_xlat17.z);
            u_xlat114 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat114 = (u_xlat114 * u_xlat25.y);
            u_xlat113 = ((u_xlat25.x * u_xlat113) + u_xlat114);
            let x_5432 = u_xlat23.xy;
            txVec66 = vec3f(x_5432.x, x_5432.y, u_xlat17.z);
            u_xlat114 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat113 = ((u_xlat25.z * u_xlat114) + u_xlat113);
            let x_5452 = u_xlat21.xy;
            txVec67 = vec3f(x_5452.x, x_5452.y, u_xlat17.z);
            u_xlat114 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat113 = ((u_xlat25.w * u_xlat114) + u_xlat113);
            let x_5472 = u_xlat24.xy;
            txVec68 = vec3f(x_5472.x, x_5472.y, u_xlat17.z);
            u_xlat114 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat113 = ((u_xlat26.x * u_xlat114) + u_xlat113);
            let x_5492 = u_xlat24.zw;
            txVec69 = vec3f(x_5492.x, x_5492.y, u_xlat17.z);
            u_xlat114 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat113 = ((u_xlat26.y * u_xlat114) + u_xlat113);
            let x_5512 = u_xlat21.zw;
            txVec70 = vec3f(x_5512.x, x_5512.y, u_xlat17.z);
            u_xlat114 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat113 = ((u_xlat26.z * u_xlat114) + u_xlat113);
            let x_5532 = u_xlat20.xy;
            txVec71 = vec3f(x_5532.x, x_5532.y, u_xlat17.z);
            u_xlat114 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat113 = ((u_xlat26.w * u_xlat114) + u_xlat113);
            let x_5552 = u_xlat20.zw;
            txVec72 = vec3f(x_5552.x, x_5552.y, u_xlat17.z);
            u_xlat114 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat112 = ((u_xlat80.x * u_xlat114) + u_xlat113);
          } else {
            u_xlat80 = ((u_xlat17.xy * x_353.x_AdditionalShadowmapSize.zw) + x_849);
            u_xlat80 = floor(u_xlat80);
            u_xlat18 = vec4f((((u_xlat17.xy * x_353.x_AdditionalShadowmapSize.zw) + -(u_xlat80))).xy, u_xlat18.zw);
            u_xlat19 = (u_xlat18.xxyy + x_867);
            u_xlat20 = (u_xlat19.xxzz * u_xlat19.xxzz);
            let x_5601 = (u_xlat20.yw * x_1326);
            u_xlat21 = vec4f(u_xlat21.x, x_5601.x, u_xlat21.z, x_5601.y);
            u_xlat84 = ((u_xlat20.xz * x_849) + -(u_xlat18.xy));
            let x_5614 = (-(u_xlat18.xy) + x_557);
            u_xlat19 = vec4f(x_5614.x, u_xlat19.y, x_5614.y, u_xlat19.w);
            u_xlat20 = vec4f(min(u_xlat18.xy, vec2f()).xy, u_xlat20.zw);
            let x_5630 = ((-(u_xlat20.xy) * u_xlat20.xy) + u_xlat19.xz);
            u_xlat19 = vec4f(x_5630.x, u_xlat19.y, x_5630.y, u_xlat19.w);
            u_xlat20 = vec4f(max(u_xlat18.xy, vec2f()).xy, u_xlat20.zw);
            let x_5646 = ((-(u_xlat20.xy) * u_xlat20.xy) + u_xlat19.yw);
            u_xlat19 = vec4f(u_xlat19.x, x_5646.x, u_xlat19.z, x_5646.y);
            u_xlat19 = (u_xlat19 + x_1376);
            u_xlat20.z = (u_xlat19.y * 0.08163200318813323975f);
            u_xlat22 = vec4f(((u_xlat84.yx * x_1385)).xy, u_xlat22.zw);
            u_xlat84 = (u_xlat19.xz * x_1385);
            u_xlat22.z = (u_xlat19.w * 0.08163200318813323975f);
            u_xlat20.x = u_xlat22.y;
            let x_5673 = ((u_xlat18.xx * x_1402) + x_1405);
            u_xlat20 = vec4f(u_xlat20.x, x_5673.x, u_xlat20.z, x_5673.y);
            let x_5679 = ((u_xlat18.xx * x_1402) + x_1412);
            u_xlat19 = vec4f(x_5679.x, u_xlat19.y, x_5679.y, u_xlat19.w);
            u_xlat19.y = u_xlat84.x;
            u_xlat19.w = u_xlat21.y;
            u_xlat20 = (u_xlat19 + u_xlat20);
            let x_5694 = ((u_xlat18.yy * x_1402) + x_1405);
            u_xlat22 = vec4f(u_xlat22.x, x_5694.x, u_xlat22.z, x_5694.y);
            let x_5700 = ((u_xlat18.yy * x_1402) + x_1412);
            u_xlat21 = vec4f(x_5700.x, u_xlat21.y, x_5700.y, u_xlat21.w);
            u_xlat21.y = u_xlat84.y;
            u_xlat18 = (u_xlat21 + u_xlat22);
            u_xlat19 = (u_xlat19 / u_xlat20);
            u_xlat19 = (u_xlat19 + x_1450);
            u_xlat21 = (u_xlat21 / u_xlat18);
            u_xlat21 = (u_xlat21 + x_1450);
            u_xlat19 = (u_xlat19.wxyz * x_353.x_AdditionalShadowmapSize.xxxx);
            u_xlat21 = (u_xlat21.xwyz * x_353.x_AdditionalShadowmapSize.yyyy);
            let x_5732 = u_xlat19.yzw;
            u_xlat22 = vec4f(x_5732.x, u_xlat22.y, x_5732.yz);
            u_xlat22.y = u_xlat21.x;
            u_xlat23 = ((u_xlat80.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat22.xyzy);
            u_xlat24 = vec4f((((u_xlat80 * x_353.x_AdditionalShadowmapSize.xy) + u_xlat22.wy)).xy, u_xlat24.zw);
            u_xlat19.y = u_xlat22.y;
            u_xlat22.y = u_xlat21.z;
            u_xlat25 = ((u_xlat80.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat22.xyzy);
            u_xlat90 = ((u_xlat80 * x_353.x_AdditionalShadowmapSize.xy) + u_xlat22.wy);
            u_xlat19.z = u_xlat22.y;
            u_xlat26 = ((u_xlat80.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyxz);
            u_xlat22.y = u_xlat21.w;
            u_xlat27 = ((u_xlat80.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat22.xyzy);
            u_xlat52 = ((u_xlat80 * x_353.x_AdditionalShadowmapSize.xy) + u_xlat22.wy);
            u_xlat19.w = u_xlat22.y;
            u_xlat28 = vec4f((((u_xlat80 * x_353.x_AdditionalShadowmapSize.xy) + u_xlat19.xw)).xy, u_xlat28.zw);
            let x_5828 = u_xlat22.xzw;
            u_xlat21 = vec4f(x_5828.x, u_xlat21.y, x_5828.yz);
            u_xlat22 = ((u_xlat80.xyxy * x_353.x_AdditionalShadowmapSize.xyxy) + u_xlat21.xyzy);
            u_xlat87 = ((u_xlat80 * x_353.x_AdditionalShadowmapSize.xy) + u_xlat21.wy);
            u_xlat21.x = u_xlat19.x;
            u_xlat80 = ((u_xlat80 * x_353.x_AdditionalShadowmapSize.xy) + u_xlat21.xy);
            u_xlat29 = (u_xlat18.xxxx * u_xlat20);
            u_xlat30 = (u_xlat18.yyyy * u_xlat20);
            u_xlat31 = (u_xlat18.zzzz * u_xlat20);
            u_xlat18 = (u_xlat18.wwww * u_xlat20);
            let x_5877 = u_xlat23.xy;
            txVec73 = vec3f(x_5877.x, x_5877.y, u_xlat17.z);
            u_xlat114 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_5891 = u_xlat23.zw;
            txVec74 = vec3f(x_5891.x, x_5891.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat115 = (u_xlat115 * u_xlat29.y);
            u_xlat114 = ((u_xlat29.x * u_xlat114) + u_xlat115);
            let x_5915 = u_xlat24.xy;
            txVec75 = vec3f(x_5915.x, x_5915.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat114 = ((u_xlat29.z * u_xlat115) + u_xlat114);
            let x_5935 = u_xlat26.xy;
            txVec76 = vec3f(x_5935.x, x_5935.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat114 = ((u_xlat29.w * u_xlat115) + u_xlat114);
            let x_5955 = u_xlat25.xy;
            txVec77 = vec3f(x_5955.x, x_5955.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat114 = ((u_xlat30.x * u_xlat115) + u_xlat114);
            let x_5975 = u_xlat25.zw;
            txVec78 = vec3f(x_5975.x, x_5975.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat114 = ((u_xlat30.y * u_xlat115) + u_xlat114);
            txVec79 = vec3f(u_xlat90.x, u_xlat90.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat114 = ((u_xlat30.z * u_xlat115) + u_xlat114);
            let x_6014 = u_xlat26.zw;
            txVec80 = vec3f(x_6014.x, x_6014.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat114 = ((u_xlat30.w * u_xlat115) + u_xlat114);
            let x_6034 = u_xlat27.xy;
            txVec81 = vec3f(x_6034.x, x_6034.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat114 = ((u_xlat31.x * u_xlat115) + u_xlat114);
            let x_6054 = u_xlat27.zw;
            txVec82 = vec3f(x_6054.x, x_6054.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat114 = ((u_xlat31.y * u_xlat115) + u_xlat114);
            txVec83 = vec3f(u_xlat52.x, u_xlat52.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat114 = ((u_xlat31.z * u_xlat115) + u_xlat114);
            let x_6093 = u_xlat28.xy;
            txVec84 = vec3f(x_6093.x, x_6093.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat114 = ((u_xlat31.w * u_xlat115) + u_xlat114);
            let x_6113 = u_xlat22.xy;
            txVec85 = vec3f(x_6113.x, x_6113.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat114 = ((u_xlat18.x * u_xlat115) + u_xlat114);
            let x_6133 = u_xlat22.zw;
            txVec86 = vec3f(x_6133.x, x_6133.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat114 = ((u_xlat18.y * u_xlat115) + u_xlat114);
            txVec87 = vec3f(u_xlat87.x, u_xlat87.y, u_xlat17.z);
            u_xlat115 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat114 = ((u_xlat18.z * u_xlat115) + u_xlat114);
            txVec88 = vec3f(u_xlat80.x, u_xlat80.y, u_xlat17.z);
            u_xlat80.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat112 = ((u_xlat18.w * u_xlat80.x) + u_xlat114);
          }
        }
      } else {
        let x_6194 = u_xlat17.xy;
        txVec89 = vec3f(x_6194.x, x_6194.y, u_xlat17.z);
        u_xlat112 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat80.x = (1.0f + -(x_353.x_AdditionalShadowParams[u_xlati72].x));
      u_xlat112 = ((u_xlat112 * x_353.x_AdditionalShadowParams[u_xlati72].x) + u_xlat80.x);
      u_xlatb80 = (0.0f >= u_xlat17.z);
      u_xlatb113 = (u_xlat17.z >= 1.0f);
      u_xlatb80 = (u_xlatb113 | u_xlatb80);
      u_xlat112 = select(u_xlat112, 1.0f, u_xlatb80);
    } else {
      u_xlat112 = 1.0f;
    }
    u_xlat80.x = (-(u_xlat112) + 1.0f);
    u_xlat112 = ((u_xlat108 * u_xlat80.x) + u_xlat112);
    u_xlati80.x = (1i << bitcast<u32>((u_xlati72 & 31i)));
    u_xlati80.x = bitcast<i32>((bitcast<u32>(u_xlati80.x) & bitcast<u32>(x_2061.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati80.x != 0i)) {
      u_xlati80.x = i32(x_2061.x_AdditionalLightsLightTypes[u_xlati72].el);
      u_xlati113 = select(1i, 0i, (u_xlati80.x != 0i));
      u_xlati114 = (u_xlati72 << bitcast<u32>(2i));
      if ((u_xlati113 != 0i)) {
        u_xlat17 = vec4f(((vs_TEXCOORD1.yyy * x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati114 + 1i)].xyw)).xyz, u_xlat17.w);
        u_xlat17 = vec4f((((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati114].xyw * vs_TEXCOORD1.xxx) + u_xlat17.xyz)).xyz, u_xlat17.w);
        u_xlat17 = vec4f((((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati114 + 2i)].xyw * vs_TEXCOORD1.zzz) + u_xlat17.xyz)).xyz, u_xlat17.w);
        u_xlat17 = vec4f(((u_xlat17.xyz + x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati114 + 3i)].xyw)).xyz, u_xlat17.w);
        u_xlat17 = vec4f(((u_xlat17.xy / u_xlat17.zz)).xy, u_xlat17.zw);
        u_xlat17 = vec4f((((u_xlat17.xy * x_849) + x_849)).xy, u_xlat17.zw);
        u_xlat17 = vec4f(clamp(u_xlat17.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat17.zw);
        u_xlat17 = vec4f((((x_2061.x_AdditionalLightsCookieAtlasUVRects[u_xlati72].xy * u_xlat17.xy) + x_2061.x_AdditionalLightsCookieAtlasUVRects[u_xlati72].zw)).xy, u_xlat17.zw);
      } else {
        u_xlatb80 = (u_xlati80.x == 1i);
        u_xlati80.x = select(0i, 1i, u_xlatb80);
        if ((u_xlati80.x != 0i)) {
          u_xlat80 = (vs_TEXCOORD1.yy * x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati114 + 1i)].xy);
          u_xlat80 = ((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati114].xy * vs_TEXCOORD1.xx) + u_xlat80);
          u_xlat80 = ((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati114 + 2i)].xy * vs_TEXCOORD1.zz) + u_xlat80);
          u_xlat80 = (u_xlat80 + x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati114 + 3i)].xy);
          u_xlat80 = ((u_xlat80 * x_849) + x_849);
          u_xlat80 = fract(u_xlat80);
          u_xlat17 = vec4f((((x_2061.x_AdditionalLightsCookieAtlasUVRects[u_xlati72].xy * u_xlat80) + x_2061.x_AdditionalLightsCookieAtlasUVRects[u_xlati72].zw)).xy, u_xlat17.zw);
        } else {
          u_xlat18 = (vs_TEXCOORD1.yyyy * x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati114 + 1i)]);
          u_xlat18 = ((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati114] * vs_TEXCOORD1.xxxx) + u_xlat18);
          u_xlat18 = ((x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati114 + 2i)] * vs_TEXCOORD1.zzzz) + u_xlat18);
          u_xlat18 = (u_xlat18 + x_2061.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati114 + 3i)]);
          u_xlat18 = vec4f(((u_xlat18.xyz / u_xlat18.www)).xyz, u_xlat18.w);
          u_xlat80.x = dot(u_xlat18.xyz, u_xlat18.xyz);
          u_xlat80.x = inverseSqrt(u_xlat80.x);
          u_xlat18 = vec4f(((u_xlat80.xxx * u_xlat18.xyz)).xyz, u_xlat18.w);
          u_xlat80.x = dot(abs(u_xlat18.xyz), x_4108);
          u_xlat80.x = max(u_xlat80.x, 0.00000099999999747524f);
          u_xlat80.x = (1.0f / u_xlat80.x);
          u_xlat19 = vec4f(((u_xlat80.xxx * u_xlat18.zxy)).xyz, u_xlat19.w);
          u_xlat19.x = -(u_xlat19.x);
          u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
          u_xlatb83 = ((u_xlat19.yzyz >= vec4f())).xy;
          if (u_xlatb83.x) {
            x_6510 = u_xlat19.x;
          } else {
            x_6510 = -(u_xlat19.x);
          }
          u_xlat83.x = x_6510;
          if (u_xlatb83.y) {
            x_6523 = u_xlat19.x;
          } else {
            x_6523 = -(u_xlat19.x);
          }
          u_xlat83.y = x_6523;
          u_xlat80 = ((u_xlat18.xy * u_xlat80.xx) + u_xlat83);
          u_xlat80 = ((u_xlat80 * x_849) + x_849);
          u_xlat80 = clamp(u_xlat80, vec2f(0.0f), vec2f(1.0f));
          u_xlat17 = vec4f((((x_2061.x_AdditionalLightsCookieAtlasUVRects[u_xlati72].xy * u_xlat80) + x_2061.x_AdditionalLightsCookieAtlasUVRects[u_xlati72].zw)).xy, u_xlat17.zw);
        }
      }
      u_xlat17 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat17.xy, 0.0f);
      if (u_xlatb14.y) {
        x_6569 = u_xlat17.w;
      } else {
        x_6569 = u_xlat17.x;
      }
      u_xlat80.x = x_6569;
      if (u_xlatb14.x) {
        x_6581 = u_xlat17.xyz;
      } else {
        x_6581 = u_xlat80.xxx;
      }
      u_xlat17 = vec4f(x_6581.xyz, u_xlat17.w);
    } else {
      u_xlat17.x = 1.0f;
      u_xlat17.y = 1.0f;
      u_xlat17.z = 1.0f;
    }
    u_xlat17 = vec4f(((u_xlat17.xyz * x_2449.x_AdditionalLightsColor[u_xlati72].xyz)).xyz, u_xlat17.w);
    u_xlat17 = vec4f(((vec3f(u_xlat106) * u_xlat17.xyz)).xyz, u_xlat17.w);
    u_xlati72 = bitcast<i32>((bitcast<u32>(x_181.unity_RenderingLayer.x) & bitcast<u32>(x_2449.x_AdditionalLightsLayerMasks[u_xlati72].el)));
    u_xlat9.x = (u_xlat9.x * u_xlat112);
    u_xlat112 = dot(u_xlat2.xyw, u_xlat16.xyz);
    u_xlat112 = clamp(u_xlat112, 0.0f, 1.0f);
    u_xlat9.x = (u_xlat9.x * u_xlat112);
    u_xlat17 = vec4f(((u_xlat9.xxx * u_xlat17.xyz)).xyz, u_xlat17.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat111)) + u_xlat3.xyz)).xyz, u_xlat10.w);
    u_xlat9.x = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat9.x = max(u_xlat9.x, 1.17549435e-38f);
    u_xlat9.x = inverseSqrt(u_xlat9.x);
    u_xlat10 = vec4f(((u_xlat9.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat9.x = dot(u_xlat2.xyw, u_xlat10.xyz);
    u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
    u_xlat10.x = dot(u_xlat16.xyz, u_xlat10.xyz);
    u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
    u_xlat9.x = (u_xlat9.x * u_xlat9.x);
    u_xlat9.x = ((u_xlat9.x * u_xlat78.x) + 1.00001001358032226562f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat9.x = (u_xlat9.x * u_xlat9.x);
    u_xlat10.x = max(u_xlat10.x, 0.10000000149011611938f);
    u_xlat9.x = (u_xlat9.x * u_xlat10.x);
    u_xlat9.x = (u_xlat39.x * u_xlat9.x);
    u_xlat9.x = (u_xlat104 / u_xlat9.x);
    u_xlat10 = vec4f((((u_xlat0.xyz * u_xlat9.xxx) + u_xlat8.xyz)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat17.xyz) + u_xlat4)).xyz, u_xlat10.w);
    if ((u_xlati72 != 0i)) {
      x_6763 = u_xlat10.xyz;
    } else {
      x_6763 = u_xlat4;
    }
    u_xlat4 = x_6763;
  }
  u_xlat0 = vec4f((((u_xlat13.xyz * vec3f(u_xlat105)) + u_xlat44)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat4 + u_xlat0.xyz)).xyz, u_xlat0.w);
  if (u_xlatb107) {
    u_xlatb2 = (x_353.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb2) {
      u_xlat2 = (u_xlat5.xyxy + x_353.x_MainLightShadowOffset0);
      let x_6803 = u_xlat2.xy;
      txVec90 = vec3f(x_6803.x, x_6803.y, u_xlat5.z);
      u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec90.xy, txVec90.z);
      let x_6818 = u_xlat2.zw;
      txVec91 = vec3f(x_6818.x, x_6818.y, u_xlat5.z);
      u_xlat3.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec91.xy, txVec91.z);
      u_xlat2 = (u_xlat5.xyxy + x_353.x_MainLightShadowOffset1);
      let x_6838 = u_xlat2.xy;
      txVec92 = vec3f(x_6838.x, x_6838.y, u_xlat5.z);
      u_xlat3.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec92.xy, txVec92.z);
      let x_6853 = u_xlat2.zw;
      txVec93 = vec3f(x_6853.x, x_6853.y, u_xlat5.z);
      u_xlat3.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec93.xy, txVec93.z);
      u_xlat2.x = dot(u_xlat3, x_831);
    } else {
      u_xlatb35.x = (x_353.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb35.x) {
        u_xlat35 = vec3f((((u_xlat5.xy * x_353.x_MainLightShadowmapSize.zw) + x_849)).xy, u_xlat35.z);
        u_xlat35 = vec3f(floor(u_xlat35.xy).xy, u_xlat35.z);
        u_xlat3 = vec4f((((u_xlat5.xy * x_353.x_MainLightShadowmapSize.zw) + -(u_xlat35.xy))).xy, u_xlat3.zw);
        u_xlat6 = (u_xlat3.xxyy + x_867);
        u_xlat8 = (u_xlat6.xxzz * u_xlat6.xxzz);
        u_xlat69 = (u_xlat8.yw * x_879);
        u_xlat4 = vec3f((((u_xlat8.xz * x_849) + -(u_xlat3.xy))).xy, u_xlat4.z);
        let x_6930 = (-(u_xlat3.xy) + x_557);
        u_xlat6 = vec4f(x_6930.x, u_xlat6.y, x_6930.y, u_xlat6.w);
        u_xlat8 = vec4f(min(u_xlat3.xy, vec2f()).xy, u_xlat8.zw);
        u_xlat8 = vec4f((((-(u_xlat8.xy) * u_xlat8.xy) + u_xlat6.xz)).xy, u_xlat8.zw);
        u_xlat3 = vec4f(max(u_xlat3.xy, vec2f()).xy, u_xlat3.zw);
        u_xlat3 = vec4f((((-(u_xlat3.xy) * u_xlat3.xy) + u_xlat6.yw)).xy, u_xlat3.zw);
        u_xlat8 = vec4f(((u_xlat8.xy + x_557)).xy, u_xlat8.zw);
        u_xlat3 = vec4f(((u_xlat3.xy + x_557)).xy, u_xlat3.zw);
        u_xlat13 = vec4f(((u_xlat4.xy * x_935)).xy, u_xlat13.zw);
        u_xlat14 = vec4f(((u_xlat6.xz * x_935)).xy, u_xlat14.zw);
        u_xlat8 = vec4f(((u_xlat8.xy * x_935)).xy, u_xlat8.zw);
        u_xlat15 = vec4f(((u_xlat3.xy * x_935)).xy, u_xlat15.zw);
        u_xlat3 = vec4f(((u_xlat6.yw * x_935)).xy, u_xlat3.zw);
        u_xlat13.z = u_xlat8.x;
        u_xlat13.w = u_xlat3.x;
        u_xlat14.z = u_xlat15.x;
        u_xlat14.w = u_xlat69.x;
        u_xlat6 = (u_xlat13.zwxz + u_xlat14.zwxz);
        u_xlat8.z = u_xlat13.y;
        u_xlat8.w = u_xlat3.y;
        u_xlat15.z = u_xlat14.y;
        u_xlat15.w = u_xlat69.y;
        u_xlat3 = vec4f(((u_xlat8.zyw + u_xlat15.zyw)).xyz, u_xlat3.w);
        u_xlat4 = (u_xlat14.xzw / u_xlat6.zwy);
        u_xlat4 = (u_xlat4 + x_1007);
        u_xlat8 = vec4f(((u_xlat15.zyw / u_xlat3.xyz)).xyz, u_xlat8.w);
        u_xlat8 = vec4f(((u_xlat8.xyz + x_1007)).xyz, u_xlat8.w);
        u_xlat13 = vec4f(((u_xlat4.yxz * x_353.x_MainLightShadowmapSize.xxx)).xyz, u_xlat13.w);
        u_xlat8 = vec4f(((u_xlat8.xyz * x_353.x_MainLightShadowmapSize.yyy)).xyz, u_xlat8.w);
        u_xlat13.w = u_xlat8.x;
        u_xlat14 = ((u_xlat35.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat13.ywxw);
        u_xlat4 = vec3f((((u_xlat35.xy * x_353.x_MainLightShadowmapSize.xy) + u_xlat13.zw)).xy, u_xlat4.z);
        u_xlat8.w = u_xlat13.y;
        let x_7098 = u_xlat8.yz;
        u_xlat13 = vec4f(u_xlat13.x, x_7098.x, u_xlat13.z, x_7098.y);
        u_xlat15 = ((u_xlat35.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat8 = ((u_xlat35.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat8.wywz);
        u_xlat13 = ((u_xlat35.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat13.xwzw);
        u_xlat16 = (u_xlat3.xxxy * u_xlat6.zwyz);
        u_xlat17 = (u_xlat3.yyzz * u_xlat6);
        u_xlat35.x = (u_xlat3.z * u_xlat6.y);
        let x_7145 = u_xlat14.xy;
        txVec94 = vec3f(x_7145.x, x_7145.y, u_xlat5.z);
        u_xlat68.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec94.xy, txVec94.z);
        let x_7160 = u_xlat14.zw;
        txVec95 = vec3f(x_7160.x, x_7160.y, u_xlat5.z);
        u_xlat101 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec95.xy, txVec95.z);
        u_xlat101 = (u_xlat101 * u_xlat16.y);
        u_xlat68.x = ((u_xlat16.x * u_xlat68.x) + u_xlat101);
        let x_7186 = u_xlat4.xy;
        txVec96 = vec3f(x_7186.x, x_7186.y, u_xlat5.z);
        u_xlat101 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec96.xy, txVec96.z);
        u_xlat68.x = ((u_xlat16.z * u_xlat101) + u_xlat68.x);
        let x_7208 = u_xlat8.xy;
        txVec97 = vec3f(x_7208.x, x_7208.y, u_xlat5.z);
        u_xlat101 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec97.xy, txVec97.z);
        u_xlat68.x = ((u_xlat16.w * u_xlat101) + u_xlat68.x);
        let x_7230 = u_xlat15.xy;
        txVec98 = vec3f(x_7230.x, x_7230.y, u_xlat5.z);
        u_xlat101 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec98.xy, txVec98.z);
        u_xlat68.x = ((u_xlat17.x * u_xlat101) + u_xlat68.x);
        let x_7252 = u_xlat15.zw;
        txVec99 = vec3f(x_7252.x, x_7252.y, u_xlat5.z);
        u_xlat101 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec99.xy, txVec99.z);
        u_xlat68.x = ((u_xlat17.y * u_xlat101) + u_xlat68.x);
        let x_7274 = u_xlat8.zw;
        txVec100 = vec3f(x_7274.x, x_7274.y, u_xlat5.z);
        u_xlat101 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec100.xy, txVec100.z);
        u_xlat68.x = ((u_xlat17.z * u_xlat101) + u_xlat68.x);
        let x_7296 = u_xlat13.xy;
        txVec101 = vec3f(x_7296.x, x_7296.y, u_xlat5.z);
        u_xlat101 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec101.xy, txVec101.z);
        u_xlat68.x = ((u_xlat17.w * u_xlat101) + u_xlat68.x);
        let x_7318 = u_xlat13.zw;
        txVec102 = vec3f(x_7318.x, x_7318.y, u_xlat5.z);
        u_xlat101 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec102.xy, txVec102.z);
        u_xlat2.x = ((u_xlat35.x * u_xlat101) + u_xlat68.x);
      } else {
        u_xlat35 = vec3f((((u_xlat5.xy * x_353.x_MainLightShadowmapSize.zw) + x_849)).xy, u_xlat35.z);
        u_xlat35 = vec3f(floor(u_xlat35.xy).xy, u_xlat35.z);
        u_xlat3 = vec4f((((u_xlat5.xy * x_353.x_MainLightShadowmapSize.zw) + -(u_xlat35.xy))).xy, u_xlat3.zw);
        u_xlat6 = (u_xlat3.xxyy + x_867);
        u_xlat8 = (u_xlat6.xxzz * u_xlat6.xxzz);
        let x_7375 = (u_xlat8.yw * x_1326);
        u_xlat13 = vec4f(u_xlat13.x, x_7375.x, u_xlat13.z, x_7375.y);
        u_xlat69 = ((u_xlat8.xz * x_849) + -(u_xlat3.xy));
        u_xlat4 = vec3f(((-(u_xlat3.xy) + x_557)).xy, u_xlat4.z);
        let x_7393 = min(u_xlat3.xy, vec2f());
        u_xlat6 = vec4f(x_7393.x, u_xlat6.y, x_7393.y, u_xlat6.w);
        u_xlat4 = vec3f((((-(u_xlat6.xz) * u_xlat6.xz) + u_xlat4.xy)).xy, u_xlat4.z);
        let x_7409 = max(u_xlat3.xy, vec2f());
        u_xlat6 = vec4f(x_7409.x, u_xlat6.y, x_7409.y, u_xlat6.w);
        u_xlat6 = vec4f((((-(u_xlat6.xz) * u_xlat6.xz) + u_xlat6.yw)).xy, u_xlat6.zw);
        u_xlat4 = vec3f(((u_xlat4.xy + x_115)).xy, u_xlat4.z);
        u_xlat6 = vec4f(((u_xlat6.xy + x_115)).xy, u_xlat6.zw);
        u_xlat8.z = (u_xlat6.x * 0.08163200318813323975f);
        u_xlat14 = vec4f(((u_xlat69.yx * x_1385)).xy, u_xlat14.zw);
        u_xlat69 = (u_xlat4.xy * x_1385);
        u_xlat14.z = (u_xlat6.y * 0.08163200318813323975f);
        u_xlat8.x = u_xlat14.y;
        let x_7455 = ((u_xlat3.xx * x_1402) + x_1405);
        u_xlat8 = vec4f(u_xlat8.x, x_7455.x, u_xlat8.z, x_7455.y);
        let x_7461 = ((u_xlat3.xx * x_1402) + x_1412);
        u_xlat6 = vec4f(x_7461.x, u_xlat6.y, x_7461.y, u_xlat6.w);
        u_xlat6.y = u_xlat69.x;
        u_xlat6.w = u_xlat13.y;
        u_xlat8 = (u_xlat6 + u_xlat8);
        let x_7476 = ((u_xlat3.yy * x_1402) + x_1405);
        u_xlat14 = vec4f(u_xlat14.x, x_7476.x, u_xlat14.z, x_7476.y);
        let x_7482 = ((u_xlat3.yy * x_1402) + x_1412);
        u_xlat13 = vec4f(x_7482.x, u_xlat13.y, x_7482.y, u_xlat13.w);
        u_xlat13.y = u_xlat69.y;
        u_xlat3 = (u_xlat13 + u_xlat14);
        u_xlat6 = (u_xlat6 / u_xlat8);
        u_xlat6 = (u_xlat6 + x_1450);
        u_xlat13 = (u_xlat13 / u_xlat3);
        u_xlat13 = (u_xlat13 + x_1450);
        u_xlat6 = (u_xlat6.wxyz * x_353.x_MainLightShadowmapSize.xxxx);
        u_xlat13 = (u_xlat13.xwyz * x_353.x_MainLightShadowmapSize.yyyy);
        let x_7514 = u_xlat6.yzw;
        u_xlat14 = vec4f(x_7514.x, u_xlat14.y, x_7514.yz);
        u_xlat14.y = u_xlat13.x;
        u_xlat15 = ((u_xlat35.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat4 = vec3f((((u_xlat35.xy * x_353.x_MainLightShadowmapSize.xy) + u_xlat14.wy)).xy, u_xlat4.z);
        u_xlat6.y = u_xlat14.y;
        u_xlat14.y = u_xlat13.z;
        u_xlat16 = ((u_xlat35.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        let x_7563 = ((u_xlat35.xy * x_353.x_MainLightShadowmapSize.xy) + u_xlat14.wy);
        u_xlat9 = vec4f(x_7563.x, u_xlat9.yz, x_7563.y);
        u_xlat6.z = u_xlat14.y;
        u_xlat17 = ((u_xlat35.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat6.xyxz);
        u_xlat14.y = u_xlat13.w;
        u_xlat18 = ((u_xlat35.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat39 = ((u_xlat35.xy * x_353.x_MainLightShadowmapSize.xy) + u_xlat14.wy);
        u_xlat6.w = u_xlat14.y;
        u_xlat10 = vec4f((((u_xlat35.xy * x_353.x_MainLightShadowmapSize.xy) + u_xlat6.xw)).xy, u_xlat10.zw);
        let x_7614 = u_xlat14.xzw;
        u_xlat13 = vec4f(x_7614.x, u_xlat13.y, x_7614.yz);
        u_xlat14 = ((u_xlat35.xyxy * x_353.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat44 = vec3f((((u_xlat35.xy * x_353.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat44.z);
        u_xlat13.x = u_xlat6.x;
        u_xlat35 = vec3f((((u_xlat35.xy * x_353.x_MainLightShadowmapSize.xy) + u_xlat13.xy)).xy, u_xlat35.z);
        u_xlat13 = (u_xlat3.xxxx * u_xlat8);
        u_xlat19 = (u_xlat3.yyyy * u_xlat8);
        u_xlat20 = (u_xlat3.zzzz * u_xlat8);
        u_xlat3 = (u_xlat3.wwww * u_xlat8);
        let x_7669 = u_xlat15.xy;
        txVec103 = vec3f(x_7669.x, x_7669.y, u_xlat5.z);
        u_xlat101 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec103.xy, txVec103.z);
        let x_7683 = u_xlat15.zw;
        txVec104 = vec3f(x_7683.x, x_7683.y, u_xlat5.z);
        u_xlat70 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec104.xy, txVec104.z);
        u_xlat70 = (u_xlat70 * u_xlat13.y);
        u_xlat101 = ((u_xlat13.x * u_xlat101) + u_xlat70);
        let x_7708 = u_xlat4.xy;
        txVec105 = vec3f(x_7708.x, x_7708.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec105.xy, txVec105.z);
        u_xlat101 = ((u_xlat13.z * u_xlat4.x) + u_xlat101);
        let x_7730 = u_xlat17.xy;
        txVec106 = vec3f(x_7730.x, x_7730.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec106.xy, txVec106.z);
        u_xlat101 = ((u_xlat13.w * u_xlat4.x) + u_xlat101);
        let x_7752 = u_xlat16.xy;
        txVec107 = vec3f(x_7752.x, x_7752.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec107.xy, txVec107.z);
        u_xlat101 = ((u_xlat19.x * u_xlat4.x) + u_xlat101);
        let x_7774 = u_xlat16.zw;
        txVec108 = vec3f(x_7774.x, x_7774.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec108.xy, txVec108.z);
        u_xlat101 = ((u_xlat19.y * u_xlat4.x) + u_xlat101);
        let x_7796 = u_xlat9.xw;
        txVec109 = vec3f(x_7796.x, x_7796.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec109.xy, txVec109.z);
        u_xlat101 = ((u_xlat19.z * u_xlat4.x) + u_xlat101);
        let x_7818 = u_xlat17.zw;
        txVec110 = vec3f(x_7818.x, x_7818.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec110.xy, txVec110.z);
        u_xlat101 = ((u_xlat19.w * u_xlat4.x) + u_xlat101);
        let x_7840 = u_xlat18.xy;
        txVec111 = vec3f(x_7840.x, x_7840.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec111.xy, txVec111.z);
        u_xlat101 = ((u_xlat20.x * u_xlat4.x) + u_xlat101);
        let x_7862 = u_xlat18.zw;
        txVec112 = vec3f(x_7862.x, x_7862.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec112.xy, txVec112.z);
        u_xlat101 = ((u_xlat20.y * u_xlat4.x) + u_xlat101);
        txVec113 = vec3f(u_xlat39.x, u_xlat39.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec113.xy, txVec113.z);
        u_xlat101 = ((u_xlat20.z * u_xlat4.x) + u_xlat101);
        let x_7905 = u_xlat10.xy;
        txVec114 = vec3f(x_7905.x, x_7905.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec114.xy, txVec114.z);
        u_xlat101 = ((u_xlat20.w * u_xlat4.x) + u_xlat101);
        let x_7927 = u_xlat14.xy;
        txVec115 = vec3f(x_7927.x, x_7927.y, u_xlat5.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec115.xy, txVec115.z);
        u_xlat101 = ((u_xlat3.x * u_xlat4.x) + u_xlat101);
        let x_7949 = u_xlat14.zw;
        txVec116 = vec3f(x_7949.x, x_7949.y, u_xlat5.z);
        u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec116.xy, txVec116.z);
        u_xlat101 = ((u_xlat3.y * u_xlat3.x) + u_xlat101);
        let x_7971 = u_xlat44.xy;
        txVec117 = vec3f(x_7971.x, x_7971.y, u_xlat5.z);
        u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec117.xy, txVec117.z);
        u_xlat101 = ((u_xlat3.z * u_xlat3.x) + u_xlat101);
        let x_7993 = u_xlat35.xy;
        txVec118 = vec3f(x_7993.x, x_7993.y, u_xlat5.z);
        u_xlat35.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec118.xy, txVec118.z);
        u_xlat2.x = ((u_xlat3.w * u_xlat35.x) + u_xlat101);
      }
    }
  } else {
    let x_8017 = u_xlat5.xy;
    txVec119 = vec3f(x_8017.x, x_8017.y, u_xlat5.z);
    u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec119.xy, txVec119.z);
  }
  u_xlat2.x = ((u_xlat2.x * x_353.x_MainLightShadowParams.x) + u_xlat42.x);
  if (u_xlatb75) {
    x_8040 = 1.0f;
  } else {
    x_8040 = u_xlat2.x;
  }
  u_xlat2.x = x_8040;
  u_xlat35.x = (-(u_xlat2.x) + 1.0f);
  u_xlat2.x = ((u_xlat109 * u_xlat35.x) + u_xlat2.x);
  if (u_xlatb11) {
    u_xlat35 = vec3f(((vs_TEXCOORD1.yy * x_2061.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy)).xy, u_xlat35.z);
    u_xlat35 = vec3f((((x_2061.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD1.xx) + u_xlat35.xy)).xy, u_xlat35.z);
    u_xlat35 = vec3f((((x_2061.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD1.zz) + u_xlat35.xy)).xy, u_xlat35.z);
    u_xlat35 = vec3f(((u_xlat35.xy + x_2061.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy)).xy, u_xlat35.z);
    u_xlat35 = vec3f((((u_xlat35.xy * x_849) + x_849)).xy, u_xlat35.z);
    let x_8111 = u_xlat35;
    let x_8114 = x_72.x_GlobalMipBias.x;
    let x_8115 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_8111.xy, x_8114);
    u_xlat3 = x_8115;
    let x_8124 = vec4f(x_2061.x_MainLightCookieTextureFormat, x_2061.x_MainLightCookieTextureFormat, x_2061.x_MainLightCookieTextureFormat, x_2061.x_MainLightCookieTextureFormat);
    u_xlatb35 = ((vec4f(x_8124.x, x_8124.y, x_8124.z, x_8124.w) == x_2139)).xy;
    if (u_xlatb35.y) {
      x_8134 = u_xlat3.w;
    } else {
      x_8134 = u_xlat3.x;
    }
    u_xlat68.x = x_8134;
    if (u_xlatb35.x) {
      x_8146 = u_xlat3.xyz;
    } else {
      x_8146 = u_xlat68.xxx;
    }
    u_xlat35 = x_8146;
  } else {
    u_xlat35.x = 1.0f;
    u_xlat35.y = 1.0f;
    u_xlat35.z = 1.0f;
  }
  u_xlat35 = (u_xlat35 * x_72.x_MainLightColor.xyz);
  u_xlat3.x = log2(u_xlat12.x);
  u_xlat3.x = (u_xlat3.x * x_72.x_SheenPower);
  u_xlat3.x = exp2(u_xlat3.x);
  u_xlat36 = (u_xlat2.xxx * u_xlat35);
  u_xlat4.x = ((u_xlat103 * 0.5f) + 0.5f);
  u_xlat4.x = clamp(u_xlat4.x, 0.0f, 1.0f);
  u_xlat36 = ((u_xlat36 * u_xlat4.xxx) + u_xlat7);
  u_xlat4 = (u_xlat1.yzw * x_72.x_SheenColor.xyz);
  u_xlat4 = (u_xlat3.xxx * u_xlat4);
  u_xlat3 = vec4f(((u_xlat36 * u_xlat4)).xyz, u_xlat3.w);
  u_xlat0 = vec4f((((u_xlat3.xyz * vec3f(x_72.x_SheenStrength)) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat34 = (u_xlat1.yzw * x_72.x_ShadowWarmth.xyz);
  u_xlat2.x = ((-(u_xlat45) * u_xlat2.x) + 1.0f);
  u_xlat34 = (u_xlat34 * u_xlat2.xxx);
  u_xlat34 = (u_xlat35 * u_xlat34);
  u_xlat0 = vec4f((((u_xlat34 * x_72.x_ShadowWarmth.www) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat99 = (u_xlat99 * -(u_xlat99));
  u_xlat99 = exp2(u_xlat99);
  u_xlat34.x = (-(u_xlat99) + 1.0f);
  u_xlat34 = (u_xlat34.xxx * x_72.unity_FogColor.xyz);
  SV_Target0 = vec4f((((u_xlat0.xyz * vec3f(u_xlat99)) + u_xlat34)).xyz, SV_Target0.w);
  u_xlatb0 = (x_84.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_8290 = u_xlat1.x;
  } else {
    x_8290 = 1.0f;
  }
  SV_Target0.w = x_8290;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_TEXCOORD1_param : vec3f, @location(2) vs_TEXCOORD2_param : vec3f, @location(3) vs_TEXCOORD3_param : vec4f, @location(4) vs_TEXCOORD8_param : vec2f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

7

/* ================= variant ================= */

