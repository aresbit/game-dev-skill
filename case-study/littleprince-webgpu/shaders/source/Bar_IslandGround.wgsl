//Assets/Levels/Bar/Shaders/Bar_IslandGround.shader
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

alias Arr_6 = array<vec4f, 20u>;

alias Arr_7 = array<vec4f, 32u>;

alias Arr_8 = array<vec4f, 128u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_6,
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
  Xhlslcc_UnusedX_MainLightShadowParams : vec4f,
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
  /* @offset(528) */
  Xhlslcc_UnusedX_AdditionalShadowParams : Arr_7,
  /* @offset(1040) */
  Xhlslcc_UnusedXhlslcc_mtx4x4_AdditionalLightsWorldToShadow : Arr_8,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(5) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(8) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec4f;

var<private> in_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD1 : vec2f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_TEXCOORD2 : vec2f;

var<private> vs_TEXCOORD9 : vec2f;

var<private> in_TEXCOORD3 : vec2f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD4 : vec3f;

var<private> in_TANGENT0 : vec4f;

var<private> vs_TEXCOORD5 : vec4f;

@group(1) @binding(7) var<uniform> x_250 : LightShadows;

var<private> vs_TEXCOORD7 : vec4f;

var<private> vs_TEXCOORD8 : vec3f;

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
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_74.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD0 = vec4f(in_TEXCOORD0.xy, vs_TEXCOORD0.zw);
  vs_TEXCOORD0 = vec4f(vs_TEXCOORD0.xy, in_TEXCOORD1.xy);
  vs_TEXCOORD1 = vec4f(in_TEXCOORD2.xy, vs_TEXCOORD1.zw);
  vs_TEXCOORD1 = vec4f(vs_TEXCOORD1.xy, vec2f().xy);
  vs_TEXCOORD9 = in_TEXCOORD3;
  vs_TEXCOORD2 = in_COLOR0;
  vs_TEXCOORD3 = u_xlat0.xyz;
  u_xlat1.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD4 = (vec3f(u_xlat6) * u_xlat1.xyz);
  u_xlat1 = vec4f(((in_TANGENT0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_TANGENT0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_TANGENT0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD5 = vec4f(((vec3f(u_xlat6) * u_xlat1.xyz)).xyz, vs_TEXCOORD5.w);
  u_xlatb6 = (x_25.unity_WorldTransformParams.w >= 0.0f);
  u_xlat6 = select(-1.0f, 1.0f, u_xlatb6);
  vs_TEXCOORD5.w = (u_xlat6 * in_TANGENT0.w);
  u_xlat1 = vec4f(((u_xlat0.yyy * x_250.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat1.w);
  let x_265 = ((x_250.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * u_xlat0.xxx) + u_xlat1.xyz);
  u_xlat0 = vec4f(x_265.xy, u_xlat0.z, x_265.z);
  u_xlat0 = vec4f((((x_250.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * u_xlat0.zzz) + u_xlat0.xyw)).xyz, u_xlat0.w);
  vs_TEXCOORD7 = vec4f(((u_xlat0.xyz + x_250.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, vs_TEXCOORD7.w);
  vs_TEXCOORD7.w = 0.0f;
  vs_TEXCOORD8 = vec3f();
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(4)
  vs_TEXCOORD0_1 : vec4f,
  @location(5)
  vs_TEXCOORD1_1 : vec4f,
  @location(6)
  vs_TEXCOORD9_1 : vec2f,
  @location(7)
  vs_TEXCOORD2_1 : vec4f,
  @location(0)
  vs_TEXCOORD3_1 : vec3f,
  @location(1)
  vs_TEXCOORD4_1 : vec3f,
  @location(2)
  vs_TEXCOORD5_1 : vec4f,
  @location(3)
  vs_TEXCOORD7_1 : vec4f,
  @location(8)
  vs_TEXCOORD8_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(3) in_TEXCOORD0_param : vec2f, @location(4) in_TEXCOORD1_param : vec2f, @location(5) in_TEXCOORD2_param : vec2f, @location(6) in_TEXCOORD3_param : vec2f, @location(7) in_COLOR0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(2) in_TANGENT0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD3 = in_TEXCOORD3_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD9, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, vs_TEXCOORD8);
}

//Assets/Levels/Bar/Shaders/Bar_IslandGround.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_ZoneRect : vec4f,
  /* @offset(16) */
  x_PavingRect : vec4f,
  /* @offset(32) */
  x_DirtTile : f32,
  /* @offset(36) */
  x_DirtGravelTile : f32,
  /* @offset(40) */
  x_GrassTile : f32,
  /* @offset(44) */
  x_MossTile : f32,
  /* @offset(48) */
  x_SandTile : f32,
  /* @offset(52) */
  x_GravelTile : f32,
  /* @offset(56) */
  x_FarTile : f32,
  /* @offset(60) */
  x_ZoneMossStrength : f32,
  /* @offset(64) */
  x_BedGravelThreshold : f32,
  /* @offset(68) */
  x_GravelSoftness : f32,
  /* @offset(72) */
  x_ShadeFloor : f32,
  /* @offset(76) */
  x_EdgeSharpness : f32,
  /* @offset(80) */
  x_EdgeNoise : f32,
  /* @offset(84) */
  x_EdgeNoiseScale : f32,
  /* @offset(88) */
  x_FarStart : f32,
  /* @offset(92) */
  x_FarEnd : f32,
  /* @offset(96) */
  x_FarStrength : f32,
  /* @offset(100) */
  x_SmoothMoss : f32,
  /* @offset(104) */
  x_SmoothBed : f32,
  /* @offset(108) */
  x_NormalStrength : f32,
  /* @offset(112) */
  x_OcclusionStrength : f32,
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
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
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
  Xhlslcc_UnusedXunity_LODFade : vec4f,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4_MainLightWorldToShadow : Arr_6,
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
  x_AdditionalShadowParams : Arr_7,
  /* @offset(1040) */
  hlslcc_mtx4x4_AdditionalLightsWorldToShadow : Arr_8,
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

var<private> vs_TEXCOORD3 : vec3f;

@group(1) @binding(6) var<uniform> x_81 : UnityPerMaterial;

@group(0) @binding(20) var x_ZonesMap : texture_2d<f32>;

@group(0) @binding(28) var sampler_linear_clamp : sampler;

@group(1) @binding(0) var<uniform> x_123 : PGlobals;

@group(0) @binding(21) var x_PavingMap : texture_2d<f32>;

@group(0) @binding(15) var x_GravelMap : texture_2d<f32>;

@group(0) @binding(27) var sampler_trilinear_repeat_aniso8 : sampler;

@group(0) @binding(2) var x_DirtMap : texture_2d<f32>;

@group(0) @binding(4) var x_DirtMask : texture_2d<f32>;

@group(0) @binding(5) var x_DirtGravelMap : texture_2d<f32>;

@group(0) @binding(7) var x_DirtGravelMask : texture_2d<f32>;

@group(0) @binding(8) var x_GrassMap : texture_2d<f32>;

@group(0) @binding(10) var x_GrassMask : texture_2d<f32>;

@group(0) @binding(11) var x_MossMap : texture_2d<f32>;

@group(0) @binding(13) var x_SandMap : texture_2d<f32>;

@group(0) @binding(17) var x_FarCobbleMap : texture_2d<f32>;

@group(0) @binding(19) var x_FarCobbleMask : texture_2d<f32>;

@group(0) @binding(3) var x_DirtNormal : texture_2d<f32>;

@group(0) @binding(6) var x_DirtGravelNormal : texture_2d<f32>;

@group(0) @binding(9) var x_GrassNormal : texture_2d<f32>;

@group(0) @binding(12) var x_MossNormal : texture_2d<f32>;

@group(0) @binding(14) var x_SandNormal : texture_2d<f32>;

@group(0) @binding(16) var x_GravelNormal : texture_2d<f32>;

@group(0) @binding(18) var x_FarCobbleNormal : texture_2d<f32>;

var<private> vs_TEXCOORD4 : vec3f;

var<private> vs_TEXCOORD5 : vec4f;

@group(1) @binding(5) var<uniform> x_1802 : UnityPerDraw;

@group(0) @binding(22) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(25) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD7 : vec4f;

@group(0) @binding(23) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(29) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(7) var<uniform> x_1972 : LightShadows;

@group(1) @binding(2) var<uniform> x_2237 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2420 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2669 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(26) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3265 : AdditionalLights;

@group(0) @binding(24) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

const x_295 = vec2f(2.0f);

const x_298 = vec2f(3.0f);

const x_310 = vec2f(0.10310000181198120117f);

const x_318 = vec3f(33.3300018310546875f);

const x_345 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_348 = vec4f(0.10310000181198120117f);

const x_354 = vec4f(33.3300018310546875f);

const x_403 = vec2f(1.0f);

const x_1215 = vec2f(-1.0f);

const x_2381 = vec2u(2u);

const x_2877 = vec2f(0.5f);

const x_3205 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat34 : vec2f;
  var u_xlat1 : vec4f;
  var u_xlat35 : vec2f;
  var u_xlatb35 : vec2<bool>;
  var u_xlatb2 : vec2<bool>;
  var u_xlatb52 : bool;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat52 : f32;
  var u_xlat4 : vec3f;
  var u_xlat38 : vec2f;
  var u_xlat5 : vec4f;
  var u_xlat39 : vec2f;
  var u_xlat6 : vec4f;
  var u_xlat54 : f32;
  var u_xlat7 : vec4f;
  var u_xlat56 : f32;
  var u_xlat55 : f32;
  var u_xlat22 : vec2f;
  var u_xlat51 : f32;
  var u_xlat8 : vec4f;
  var u_xlat41 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat44 : vec2f;
  var u_xlat11 : vec3f;
  var u_xlat18 : f32;
  var u_xlat17 : vec3f;
  var u_xlat53 : f32;
  var u_xlatb0 : bool;
  var x_1753 : vec3f;
  var u_xlat23 : vec3f;
  var txVec0 : vec3f;
  var u_xlat24 : vec3f;
  var u_xlatb24 : bool;
  var u_xlatb58 : bool;
  var u_xlat58 : f32;
  var u_xlatu7 : vec3u;
  var u_xlatu10 : vec4u;
  var u_xlati7 : i32;
  var u_xlat21 : f32;
  var x_2153 : f32;
  var u_xlatu0 : u32;
  var u_xlatu4 : u32;
  var u_xlati21 : i32;
  var u_xlatu21 : vec2u;
  var u_xlati5 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati41 : vec2i;
  var u_xlati10 : vec4i;
  var u_xlati0 : i32;
  var u_xlatu5 : vec2u;
  var u_xlatb10 : vec4<bool>;
  var u_xlatu11 : vec2u;
  var u_xlatu45 : vec2u;
  var u_xlat12 : vec4f;
  var u_xlatu39 : u32;
  var u_xlatu41 : vec2u;
  var u_xlatb59 : bool;
  var u_xlatu60 : u32;
  var u_xlatb60 : bool;
  var u_xlatu59 : u32;
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
  var u_xlati60 : i32;
  var u_xlati61 : i32;
  var u_xlati63 : i32;
  var u_xlati59 : i32;
  var u_xlatb39 : bool;
  var u_xlati39 : i32;
  var u_xlat13 : vec3f;
  var u_xlat14 : vec3f;
  var u_xlat59 : f32;
  var u_xlat60 : f32;
  var x_2718 : f32;
  var x_2732 : f32;
  var x_2746 : f32;
  var u_xlat61 : f32;
  var x_2791 : vec3f;
  var u_xlatb47 : vec2<bool>;
  var u_xlat47 : vec2f;
  var x_2842 : f32;
  var x_2855 : f32;
  var u_xlat63 : f32;
  var u_xlatu61 : u32;
  var u_xlatu63 : u32;
  var u_xlati17 : i32;
  var x_3217 : vec3f;
  var u_xlatu17 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlat27 : f32;
  var x_3408 : f32;
  var x_3417 : f32;
  var txVec1 : vec3f;
  var x_3645 : vec3f;
  var u_xlati4 : vec2i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati8 : vec2i;
  var u_xlati42 : vec2i;
  var u_xlati9 : vec2i;
  var u_xlati52 : i32;
  var u_xlatu8 : vec2u;
  var u_xlatu52 : u32;
  var u_xlati54 : i32;
  var u_xlatb21 : bool;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
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
  var u_xlati45 : vec2i;
  var u_xlati12 : vec4i;
  var u_xlati11 : vec3i;
  var u_xlati27 : i32;
  var u_xlatb61 : bool;
  var u_xlati62 : i32;
  var u_xlatb62 : bool;
  var u_xlatb12 : vec4<bool>;
  var u_xlat29 : f32;
  var x_4177 : f32;
  var u_xlat62 : f32;
  var x_4187 : f32;
  var txVec2 : vec3f;
  var x_4409 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec4f(((vs_TEXCOORD3.xz + -(x_81.x_ZoneRect.xz))).xy, u_xlat0.zw);
  u_xlat34 = (-(x_81.x_ZoneRect.xz) + x_81.x_ZoneRect.yw);
  u_xlat0 = vec4f(((u_xlat0.xy / u_xlat34)).xy, u_xlat0.zw);
  let x_117 = u_xlat0;
  let x_128 = x_123.x_GlobalMipBias.x;
  let x_129 = textureSampleBias(x_ZonesMap, sampler_linear_clamp, x_117.xy, x_128);
  u_xlat0 = x_129;
  u_xlat1 = vec4f(((vs_TEXCOORD3.xz + -(x_81.x_PavingRect.xz))).xy, u_xlat1.zw);
  u_xlat35 = (-(x_81.x_PavingRect.xz) + x_81.x_PavingRect.yw);
  u_xlat1 = vec4f(((u_xlat1.xy / u_xlat35)).xy, u_xlat1.zw);
  u_xlatb35 = ((u_xlat1.xyxy >= vec4f())).xy;
  u_xlatb35.x = (u_xlatb35.y & u_xlatb35.x);
  u_xlatb2 = ((vec4f(1.0f, 1.0f, 0.0f, 0.0f) >= u_xlat1.xyxx)).xy;
  u_xlatb52 = (u_xlatb2.y & u_xlatb2.x);
  u_xlatb35.x = (u_xlatb52 & u_xlatb35.x);
  u_xlat35.x = select(0.0f, 1.0f, u_xlatb35.x);
  let x_200 = u_xlat1;
  let x_203 = x_123.x_GlobalMipBias.x;
  let x_204 = textureSampleBias(x_PavingMap, sampler_linear_clamp, x_200.xy, x_203);
  let x_205 = x_204.xyz;
  u_xlat1 = vec4f(x_205.xy, u_xlat1.z, x_205.z);
  let x_213 = (u_xlat1.xyw + vec3f(-0.0f, -1.0f, -0.0f));
  u_xlat1 = vec4f(x_213.xy, u_xlat1.z, x_213.z);
  u_xlat1 = vec4f((((u_xlat35.xxx * u_xlat1.xyw) + vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat1.w);
  u_xlat2 = (vs_TEXCOORD3.xzxz / vec4f(x_81.x_GravelTile, x_81.x_GravelTile, x_81.x_SandTile, x_81.x_SandTile));
  let x_247 = u_xlat2;
  let x_250 = x_123.x_GlobalMipBias.x;
  let x_251 = textureSampleBias(x_GravelMap, sampler_trilinear_repeat_aniso8, x_247.xy, x_250);
  u_xlat3 = x_251.xyz;
  u_xlat52 = dot(u_xlat3, vec3f(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_268 = vec2f(x_81.x_EdgeNoiseScale, x_81.x_EdgeNoiseScale);
  u_xlat4 = vec3f(((vs_TEXCOORD3.xz * vec2f(x_268.x, x_268.y))).xy, u_xlat4.z);
  u_xlat38 = floor(u_xlat4.xy);
  u_xlat5 = vec4f(fract(u_xlat4.xy).xy, u_xlat5.zw);
  u_xlat39 = (u_xlat5.xy * u_xlat5.xy);
  u_xlat5 = vec4f((((-(u_xlat5.xy) * x_295) + x_298)).xy, u_xlat5.zw);
  u_xlat5 = vec4f(((u_xlat5.xy * u_xlat39)).xy, u_xlat5.zw);
  u_xlat39 = (u_xlat38 * x_310);
  u_xlat39 = fract(u_xlat39);
  u_xlat6 = vec4f(((u_xlat39.yxx + x_318)).xyz, u_xlat6.w);
  u_xlat54 = dot(u_xlat39.xyx, u_xlat6.xyz);
  u_xlat39 = (vec2f(u_xlat54) + u_xlat39);
  u_xlat54 = (u_xlat39.y + u_xlat39.x);
  u_xlat54 = (u_xlat39.x * u_xlat54);
  u_xlat54 = fract(u_xlat54);
  u_xlat6 = (u_xlat38.yxyx + x_345);
  u_xlat6 = (u_xlat6 * x_348);
  u_xlat6 = fract(u_xlat6);
  u_xlat7 = (u_xlat6 + x_354);
  u_xlat39.x = dot(u_xlat6.yxy, u_xlat7.xyy);
  u_xlat39 = (u_xlat39.xx + u_xlat6.yx);
  u_xlat56 = (u_xlat39.y + u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * u_xlat56);
  u_xlat56 = dot(u_xlat6.wzw, u_xlat7.zww);
  u_xlat6 = vec4f(((vec2f(u_xlat56) + u_xlat6.wz)).xy, u_xlat6.zw);
  u_xlat56 = (u_xlat6.y + u_xlat6.x);
  u_xlat39.y = (u_xlat6.x * u_xlat56);
  u_xlat39 = fract(u_xlat39);
  u_xlat38 = (u_xlat38 + x_403);
  u_xlat38 = (u_xlat38 * x_310);
  u_xlat38 = fract(u_xlat38);
  u_xlat6 = vec4f(((u_xlat38.yxx + x_318)).xyz, u_xlat6.w);
  u_xlat6.x = dot(u_xlat38.xyx, u_xlat6.xyz);
  u_xlat38 = (u_xlat38 + u_xlat6.xx);
  u_xlat55 = (u_xlat38.y + u_xlat38.x);
  u_xlat38.x = (u_xlat38.x * u_xlat55);
  u_xlat38.x = fract(u_xlat38.x);
  u_xlat55 = (-(u_xlat54) + u_xlat39.x);
  u_xlat54 = ((u_xlat5.x * u_xlat55) + u_xlat54);
  u_xlat38.x = (-(u_xlat39.y) + u_xlat38.x);
  u_xlat38.x = ((u_xlat5.x * u_xlat38.x) + u_xlat39.y);
  u_xlat38.x = (-(u_xlat54) + u_xlat38.x);
  u_xlat54 = ((u_xlat5.y * u_xlat38.x) + u_xlat54);
  u_xlat4 = vec3f((((u_xlat4.xy * vec2f(3.09999990463256835938f)) + vec2f(7.69999980926513671875f))).xy, u_xlat4.z);
  u_xlat38 = floor(u_xlat4.xy);
  u_xlat4 = vec3f(fract(u_xlat4.xy).xy, u_xlat4.z);
  u_xlat5 = vec4f(((u_xlat4.xy * u_xlat4.xy)).xy, u_xlat5.zw);
  u_xlat4 = vec3f((((-(u_xlat4.xy) * x_295) + x_298)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy * u_xlat5.xy)).xy, u_xlat4.z);
  u_xlat5 = vec4f(((u_xlat38 * x_310)).xy, u_xlat5.zw);
  u_xlat5 = vec4f(fract(u_xlat5.xy).xy, u_xlat5.zw);
  u_xlat6 = vec4f(((u_xlat5.yxx + x_318)).xyz, u_xlat6.w);
  u_xlat39.x = dot(u_xlat5.xyx, u_xlat6.xyz);
  u_xlat5 = vec4f(((u_xlat39.xx + u_xlat5.xy)).xy, u_xlat5.zw);
  u_xlat22.x = (u_xlat5.y + u_xlat5.x);
  u_xlat5.x = (u_xlat5.x * u_xlat22.x);
  u_xlat6 = (u_xlat38.yxyx + x_345);
  u_xlat6 = (u_xlat6 * x_348);
  u_xlat6 = fract(u_xlat6);
  u_xlat7 = (u_xlat6 + x_354);
  u_xlat22.x = dot(u_xlat6.yxy, u_xlat7.xyy);
  u_xlat22 = (u_xlat22.xx + u_xlat6.yx);
  u_xlat39.x = (u_xlat22.y + u_xlat22.x);
  u_xlat5.y = (u_xlat22.x * u_xlat39.x);
  u_xlat39.x = dot(u_xlat6.wzw, u_xlat7.zww);
  u_xlat39 = (u_xlat39.xx + u_xlat6.wz);
  u_xlat56 = (u_xlat39.y + u_xlat39.x);
  u_xlat5.z = (u_xlat39.x * u_xlat56);
  u_xlat5 = vec4f(fract(u_xlat5.xyz).xyz, u_xlat5.w);
  u_xlat38 = (u_xlat38 + x_403);
  u_xlat38 = (u_xlat38 * x_310);
  u_xlat38 = fract(u_xlat38);
  u_xlat6 = vec4f(((u_xlat38.yxx + x_318)).xyz, u_xlat6.w);
  u_xlat56 = dot(u_xlat38.xyx, u_xlat6.xyz);
  u_xlat38 = (u_xlat38 + vec2f(u_xlat56));
  u_xlat55 = (u_xlat38.y + u_xlat38.x);
  u_xlat38.x = (u_xlat38.x * u_xlat55);
  u_xlat38.x = fract(u_xlat38.x);
  u_xlat55 = (-(u_xlat5.x) + u_xlat5.y);
  u_xlat55 = ((u_xlat4.x * u_xlat55) + u_xlat5.x);
  u_xlat38.x = (-(u_xlat5.z) + u_xlat38.x);
  u_xlat4.x = ((u_xlat4.x * u_xlat38.x) + u_xlat5.z);
  u_xlat4.x = (-(u_xlat55) + u_xlat4.x);
  u_xlat4.x = ((u_xlat4.y * u_xlat4.x) + u_xlat55);
  u_xlat4.x = (u_xlat4.x * 0.40000000596046447754f);
  u_xlat54 = ((u_xlat54 * 0.60000002384185791016f) + u_xlat4.x);
  u_xlat54 = (u_xlat54 + -0.5f);
  u_xlat0.x = (u_xlat0.x + -0.5f);
  u_xlat0.x = ((u_xlat0.x * x_81.x_EdgeSharpness) + 0.5f);
  u_xlat0.x = ((u_xlat54 * x_81.x_EdgeNoise) + u_xlat0.x);
  u_xlat54 = (u_xlat52 + -0.25f);
  u_xlat54 = (u_xlat54 * x_81.x_EdgeNoise);
  u_xlat0.x = ((u_xlat54 * 0.40000000596046447754f) + u_xlat0.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat35.x = (u_xlat1.z + u_xlat52);
  u_xlat35.x = (u_xlat35.x + -(x_81.x_BedGravelThreshold));
  u_xlat52 = max(x_81.x_GravelSoftness, 0.00100000004749745131f);
  u_xlat35.x = (u_xlat35.x / u_xlat52);
  u_xlat35.x = clamp(u_xlat35.x, 0.0f, 1.0f);
  u_xlat51 = (u_xlat0.w * x_81.x_ZoneMossStrength);
  u_xlat4 = (vs_TEXCOORD3 + -(x_123.x_WorldSpaceCameraPos));
  u_xlat52 = dot(u_xlat4, u_xlat4);
  u_xlat54 = sqrt(u_xlat52);
  u_xlat54 = (u_xlat54 + -(x_81.x_FarStart));
  u_xlat55 = (-(x_81.x_FarStart) + x_81.x_FarEnd);
  u_xlat55 = max(u_xlat55, 0.00100000004749745131f);
  u_xlat54 = (u_xlat54 / u_xlat55);
  u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
  u_xlat54 = (u_xlat54 * x_81.x_FarStrength);
  u_xlat5 = (vs_TEXCOORD3.xzxz / vec4f(x_81.x_DirtTile, x_81.x_DirtTile, x_81.x_DirtGravelTile, x_81.x_DirtGravelTile));
  let x_834 = u_xlat5;
  let x_837 = x_123.x_GlobalMipBias.x;
  let x_838 = textureSampleBias(x_DirtMap, sampler_trilinear_repeat_aniso8, x_834.xy, x_837);
  u_xlat6 = vec4f(x_838.xyz.xyz, u_xlat6.w);
  let x_846 = u_xlat5;
  let x_849 = x_123.x_GlobalMipBias.x;
  let x_850 = textureSampleBias(x_DirtMask, sampler_trilinear_repeat_aniso8, x_846.xy, x_849);
  u_xlat7 = vec4f(x_850.yw.xy, u_xlat7.zw);
  let x_859 = u_xlat5;
  let x_862 = x_123.x_GlobalMipBias.x;
  let x_863 = textureSampleBias(x_DirtGravelMap, sampler_trilinear_repeat_aniso8, x_859.zw, x_862);
  u_xlat8 = vec4f(x_863.xyz.xyz, u_xlat8.w);
  u_xlat8 = vec4f(((-(u_xlat6.xyz) + u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat0.zzz * u_xlat8.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_890 = u_xlat5;
  let x_893 = x_123.x_GlobalMipBias.x;
  let x_894 = textureSampleBias(x_DirtGravelMask, sampler_trilinear_repeat_aniso8, x_890.zw, x_893);
  u_xlat41 = x_894.yw;
  u_xlat41 = (-(u_xlat7.xy) + u_xlat41);
  u_xlat7 = vec4f((((u_xlat0.zz * u_xlat41) + u_xlat7.xy)).xy, u_xlat7.zw);
  u_xlat8 = (vs_TEXCOORD3.xzxz / vec4f(x_81.x_GrassTile, x_81.x_GrassTile, x_81.x_MossTile, x_81.x_MossTile));
  let x_929 = u_xlat8;
  let x_932 = x_123.x_GlobalMipBias.x;
  let x_933 = textureSampleBias(x_GrassMap, sampler_trilinear_repeat_aniso8, x_929.xy, x_932);
  u_xlat9 = vec4f(x_933.xyz.xyz, u_xlat9.w);
  u_xlat9 = vec4f(((-(u_xlat6.xyz) + u_xlat9.xyz)).xyz, u_xlat9.w);
  u_xlat6 = vec4f((((u_xlat0.yyy * u_xlat9.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_959 = u_xlat8;
  let x_962 = x_123.x_GlobalMipBias.x;
  let x_963 = textureSampleBias(x_GrassMask, sampler_trilinear_repeat_aniso8, x_959.xy, x_962);
  u_xlat41 = x_963.yw;
  u_xlat41 = (-(u_xlat7.xy) + u_xlat41);
  u_xlat7 = vec4f((((u_xlat0.yy * u_xlat41) + u_xlat7.xy)).xy, u_xlat7.zw);
  let x_983 = u_xlat8;
  let x_986 = x_123.x_GlobalMipBias.x;
  let x_987 = textureSampleBias(x_MossMap, sampler_trilinear_repeat_aniso8, x_983.zw, x_986);
  u_xlat9 = vec4f(x_987.xyz.xyz, u_xlat9.w);
  u_xlat10 = vec4f(((-(u_xlat6.xyz) + u_xlat9.xyz)).xyz, u_xlat10.w);
  u_xlat6 = vec4f((((vec3f(u_xlat51) * u_xlat10.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat10.x = 1.0f;
  u_xlat44.x = 1.0f;
  u_xlat10.y = x_81.x_SmoothMoss;
  u_xlat41 = (-(u_xlat7.xy) + u_xlat10.xy);
  u_xlat7 = vec4f((((vec2f(u_xlat51) * u_xlat41) + u_xlat7.xy)).xy, u_xlat7.zw);
  let x_1037 = u_xlat2;
  let x_1040 = x_123.x_GlobalMipBias.x;
  let x_1041 = textureSampleBias(x_SandMap, sampler_trilinear_repeat_aniso8, x_1037.zw, x_1040);
  u_xlat11 = x_1041.xyz;
  u_xlat3 = (u_xlat3 + -(u_xlat11));
  u_xlat3 = ((u_xlat35.xxx * u_xlat3) + u_xlat11);
  u_xlat9 = vec4f(((-(u_xlat3) + u_xlat9.xyz)).xyz, u_xlat9.w);
  u_xlat3 = ((u_xlat1.xxx * u_xlat9.xyz) + u_xlat3);
  u_xlat18 = max(u_xlat1.y, x_81.x_ShadeFloor);
  u_xlat9 = vec4f(((vec3f(u_xlat18) * u_xlat3)).xyz, u_xlat9.w);
  u_xlat55 = (-(x_81.x_SmoothBed) + x_81.x_SmoothMoss);
  u_xlat44.y = ((u_xlat1.x * u_xlat55) + x_81.x_SmoothBed);
  let x_1102 = vec2f(x_81.x_FarTile, x_81.x_FarTile);
  u_xlat41 = (vs_TEXCOORD3.xz / vec2f(x_1102.x, x_1102.y));
  let x_1111 = u_xlat41;
  let x_1113 = x_123.x_GlobalMipBias.x;
  let x_1114 = textureSampleBias(x_FarCobbleMap, sampler_trilinear_repeat_aniso8, x_1111, x_1113);
  u_xlat11 = x_1114.xyz;
  u_xlat3 = ((-(u_xlat3) * vec3f(u_xlat18)) + u_xlat11);
  u_xlat3 = ((vec3f(u_xlat54) * u_xlat3) + u_xlat9.xyz);
  let x_1134 = u_xlat41;
  let x_1136 = x_123.x_GlobalMipBias.x;
  let x_1137 = textureSampleBias(x_FarCobbleMask, sampler_trilinear_repeat_aniso8, x_1134, x_1136);
  u_xlat9 = vec4f(x_1137.yw.xy, u_xlat9.zw);
  u_xlat9 = vec4f(((-(u_xlat44) + u_xlat9.xy)).xy, u_xlat9.zw);
  u_xlat9 = vec4f((((vec2f(u_xlat54) * u_xlat9.xy) + u_xlat44)).xy, u_xlat9.zw);
  u_xlat3 = (-(u_xlat6.xyz) + u_xlat3);
  u_xlat3 = ((u_xlat0.xxx * u_xlat3) + u_xlat6.xyz);
  u_xlat6 = vec4f(((-(u_xlat7.xy) + u_xlat9.xy)).xy, u_xlat6.zw);
  u_xlat6 = vec4f((((u_xlat0.xx * u_xlat6.yx) + u_xlat7.yx)).xy, u_xlat6.zw);
  u_xlat6.x = u_xlat6.x;
  u_xlat6.x = clamp(u_xlat6.x, 0.0f, 1.0f);
  let x_1198 = u_xlat5;
  let x_1201 = x_123.x_GlobalMipBias.x;
  let x_1202 = textureSampleBias(x_DirtNormal, sampler_trilinear_repeat_aniso8, x_1198.xy, x_1201);
  u_xlat9 = vec4f(x_1202.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_295) + x_1215)).xy, u_xlat9.zw);
  u_xlat18 = dot(u_xlat9.xy, u_xlat9.xy);
  u_xlat18 = min(u_xlat18, 1.0f);
  u_xlat18 = (-(u_xlat18) + 1.0f);
  u_xlat18 = sqrt(u_xlat18);
  u_xlat9.z = max(u_xlat18, 0.0000000000000001f);
  let x_1239 = u_xlat5;
  let x_1242 = x_123.x_GlobalMipBias.x;
  let x_1243 = textureSampleBias(x_DirtGravelNormal, sampler_trilinear_repeat_aniso8, x_1239.zw, x_1242);
  u_xlat5 = vec4f(x_1243.xyw.xyz, u_xlat5.w);
  u_xlat5.x = (u_xlat5.x * u_xlat5.z);
  u_xlat5 = vec4f((((u_xlat5.xy * x_295) + x_1215)).xy, u_xlat5.zw);
  u_xlat18 = dot(u_xlat5.xy, u_xlat5.xy);
  u_xlat18 = min(u_xlat18, 1.0f);
  u_xlat18 = (-(u_xlat18) + 1.0f);
  u_xlat18 = sqrt(u_xlat18);
  u_xlat5.z = max(u_xlat18, 0.0000000000000001f);
  u_xlat5 = vec4f(((-(u_xlat9.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat0.zzz * u_xlat5.xyz) + u_xlat9.xyz)).xyz, u_xlat5.w);
  let x_1296 = u_xlat8;
  let x_1299 = x_123.x_GlobalMipBias.x;
  let x_1300 = textureSampleBias(x_GrassNormal, sampler_trilinear_repeat_aniso8, x_1296.xy, x_1299);
  u_xlat9 = vec4f(x_1300.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_295) + x_1215)).xy, u_xlat9.zw);
  u_xlat34.x = dot(u_xlat9.xy, u_xlat9.xy);
  u_xlat34.x = min(u_xlat34.x, 1.0f);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat34.x = sqrt(u_xlat34.x);
  u_xlat9.z = max(u_xlat34.x, 0.0000000000000001f);
  u_xlat9 = vec4f(((-(u_xlat5.xyz) + u_xlat9.xyz)).xyz, u_xlat9.w);
  u_xlat5 = vec4f((((u_xlat0.yyy * u_xlat9.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  let x_1361 = u_xlat8;
  let x_1364 = x_123.x_GlobalMipBias.x;
  let x_1365 = textureSampleBias(x_MossNormal, sampler_trilinear_repeat_aniso8, x_1361.zw, x_1364);
  u_xlat8 = vec4f(x_1365.xyw.xyz, u_xlat8.w);
  u_xlat8.x = (u_xlat8.x * u_xlat8.z);
  u_xlat8 = vec4f((((u_xlat8.xy * x_295) + x_1215)).xy, u_xlat8.zw);
  u_xlat17.x = dot(u_xlat8.xy, u_xlat8.xy);
  u_xlat17.x = min(u_xlat17.x, 1.0f);
  u_xlat17.x = (-(u_xlat17.x) + 1.0f);
  u_xlat17.x = sqrt(u_xlat17.x);
  u_xlat8.z = max(u_xlat17.x, 0.0000000000000001f);
  u_xlat9 = vec4f(((-(u_xlat5.xyz) + u_xlat8.xyz)).xyz, u_xlat9.w);
  u_xlat17 = ((vec3f(u_xlat51) * u_xlat9.xyz) + u_xlat5.xyz);
  let x_1425 = u_xlat2;
  let x_1428 = x_123.x_GlobalMipBias.x;
  let x_1429 = textureSampleBias(x_SandNormal, sampler_trilinear_repeat_aniso8, x_1425.zw, x_1428);
  u_xlat5 = vec4f(x_1429.xyw.xyz, u_xlat5.w);
  u_xlat5.x = (u_xlat5.x * u_xlat5.z);
  u_xlat5 = vec4f((((u_xlat5.xy * x_295) + x_1215)).xy, u_xlat5.zw);
  u_xlat18 = dot(u_xlat5.xy, u_xlat5.xy);
  u_xlat18 = min(u_xlat18, 1.0f);
  u_xlat18 = (-(u_xlat18) + 1.0f);
  u_xlat18 = sqrt(u_xlat18);
  u_xlat5.z = max(u_xlat18, 0.0000000000000001f);
  let x_1464 = u_xlat2;
  let x_1467 = x_123.x_GlobalMipBias.x;
  let x_1468 = textureSampleBias(x_GravelNormal, sampler_trilinear_repeat_aniso8, x_1464.xy, x_1467);
  u_xlat2 = vec4f(x_1468.xyw.xyz, u_xlat2.w);
  u_xlat2.x = (u_xlat2.x * u_xlat2.z);
  u_xlat2 = vec4f((((u_xlat2.xy * x_295) + x_1215)).xy, u_xlat2.zw);
  u_xlat18 = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat18 = min(u_xlat18, 1.0f);
  u_xlat18 = (-(u_xlat18) + 1.0f);
  u_xlat18 = sqrt(u_xlat18);
  u_xlat2.z = max(u_xlat18, 0.0000000000000001f);
  u_xlat2 = vec4f(((-(u_xlat5.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat35.xxx * u_xlat2.xyz) + u_xlat5.xyz)).xyz, u_xlat2.w);
  u_xlat5 = vec4f(((-(u_xlat2.xyz) + u_xlat8.xyz)).xyz, u_xlat5.w);
  u_xlat1 = vec4f((((u_xlat1.xxx * u_xlat5.xyz) + u_xlat2.xyz)).xyz, u_xlat1.w);
  let x_1539 = u_xlat41;
  let x_1541 = x_123.x_GlobalMipBias.x;
  let x_1542 = textureSampleBias(x_FarCobbleNormal, sampler_trilinear_repeat_aniso8, x_1539, x_1541);
  u_xlat2 = vec4f(x_1542.xyw.xyz, u_xlat2.w);
  u_xlat2.x = (u_xlat2.x * u_xlat2.z);
  u_xlat2 = vec4f((((u_xlat2.xy * x_295) + x_1215)).xy, u_xlat2.zw);
  u_xlat53 = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat53 = min(u_xlat53, 1.0f);
  u_xlat53 = (-(u_xlat53) + 1.0f);
  u_xlat53 = sqrt(u_xlat53);
  u_xlat2.z = max(u_xlat53, 0.0000000000000001f);
  u_xlat2 = vec4f(((-(u_xlat1.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((vec3f(u_xlat54) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((-(u_xlat17) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f((((u_xlat0.xxx * u_xlat1.xyz) + u_xlat17)).xyz, u_xlat0.w);
  let x_1615 = vec2f(x_81.x_NormalStrength, x_81.x_NormalStrength);
  u_xlat0 = vec4f(((u_xlat0.xy * vec2f(x_1615.x, x_1615.y))).xy, u_xlat0.zw);
  u_xlat51 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat51 = inverseSqrt(u_xlat51);
  u_xlat0 = vec4f(((vec3f(u_xlat51) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat51 = (u_xlat6.y + -1.0f);
  u_xlat51 = ((x_81.x_OcclusionStrength * u_xlat51) + 1.0f);
  u_xlat1 = vec4f(((vs_TEXCOORD4.zxy * vs_TEXCOORD5.yzx)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((vs_TEXCOORD4.yzx * vs_TEXCOORD5.zxy) + -(u_xlat1.xyz))).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz * vs_TEXCOORD5.www)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat0.yyy * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat0.xxx * vs_TEXCOORD5.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f((((u_xlat0.zzz * vs_TEXCOORD4) + u_xlat1.xyz)).xyz, u_xlat0.w);
  u_xlat1.x = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat2 = vec4f(((u_xlat0.xyz * u_xlat1.xxx)).xyz, u_xlat2.w);
  u_xlatb0 = (x_123.unity_OrthoParams.w == 0.0f);
  u_xlat1 = vec4f(((-(vs_TEXCOORD3) + x_123.x_WorldSpaceCameraPos)).xyz, u_xlat1.w);
  u_xlat17.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat17.x = inverseSqrt(u_xlat17.x);
  u_xlat1 = vec4f(((u_xlat17.xxx * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat5.x = x_123.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat5.y = x_123.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat5.z = x_123.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_1753 = u_xlat1.xyz;
  } else {
    x_1753 = u_xlat5.xyz;
  }
  u_xlat1 = vec4f(x_1753.xyz, u_xlat1.w);
  let x_1766 = x_123.x_ScaledScreenParams.xy;
  u_xlat17 = vec3f(((x_403 / vec2f(x_1766.x, x_1766.y))).xy, u_xlat17.z);
  u_xlat7 = vec4f(((u_xlat17.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat17.x = ((u_xlat7.y * x_123.x_ScaleBiasRt.x) + x_123.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat17.x) + 1.0f);
  u_xlat2.w = 1.0f;
  u_xlat8.x = dot(x_1802.unity_SHAr, u_xlat2);
  u_xlat8.y = dot(x_1802.unity_SHAg, u_xlat2);
  u_xlat8.z = dot(x_1802.unity_SHAb, u_xlat2);
  u_xlat9 = (u_xlat2.yzzx * u_xlat2.xyzz);
  u_xlat10.x = dot(x_1802.unity_SHBr, u_xlat9);
  u_xlat10.y = dot(x_1802.unity_SHBg, u_xlat9);
  u_xlat10.z = dot(x_1802.unity_SHBb, u_xlat9);
  u_xlat17.x = (u_xlat2.y * u_xlat2.y);
  u_xlat17.x = ((u_xlat2.x * u_xlat2.x) + -(u_xlat17.x));
  u_xlat23 = ((x_1802.unity_SHC.xyz * u_xlat17.xxx) + u_xlat10.xyz);
  u_xlat23 = (u_xlat23 + u_xlat8.xyz);
  u_xlat3 = (u_xlat3 * vec3f(0.95999997854232788086f));
  u_xlat17.x = (-(u_xlat6.x) + 1.0f);
  u_xlat34.x = (u_xlat17.x * u_xlat17.x);
  u_xlat34.x = max(u_xlat34.x, 0.0078125f);
  u_xlat53 = (u_xlat34.x * u_xlat34.x);
  u_xlat54 = (u_xlat6.x + 0.04000002145767211914f);
  u_xlat54 = min(u_xlat54, 1.0f);
  u_xlat55 = ((u_xlat34.x * 4.0f) + 2.0f);
  let x_1913 = u_xlat7;
  let x_1916 = x_123.x_GlobalMipBias.x;
  let x_1917 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_1913.xz, x_1916);
  u_xlat56 = x_1917.x;
  u_xlat6.x = (-(x_123.x_AmbientOcclusionParam.x) + 1.0f);
  u_xlat56 = (u_xlat56 + u_xlat6.x);
  u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
  u_xlat6.x = (u_xlat56 + -1.0f);
  u_xlat6.x = ((x_123.x_AmbientOcclusionParam.w * u_xlat6.x) + 1.0f);
  u_xlat51 = min(u_xlat51, u_xlat56);
  let x_1946 = vs_TEXCOORD7.xy;
  txVec0 = vec3f(x_1946.x, x_1946.y, vs_TEXCOORD7.z);
  u_xlat56 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat24.x = (-(x_1972.x_MainLightShadowParams.x) + 1.0f);
  u_xlat56 = ((u_xlat56 * x_1972.x_MainLightShadowParams.x) + u_xlat24.x);
  u_xlatb24 = (0.0f >= vs_TEXCOORD7.z);
  u_xlatb58 = (vs_TEXCOORD7.z >= 1.0f);
  u_xlatb24 = (u_xlatb58 | u_xlatb24);
  u_xlat56 = select(u_xlat56, 1.0f, u_xlatb24);
  u_xlat24.x = ((u_xlat52 * x_1972.x_MainLightShadowParams.z) + x_1972.x_MainLightShadowParams.w);
  u_xlat24.x = clamp(u_xlat24.x, 0.0f, 1.0f);
  u_xlat58 = (-(u_xlat56) + 1.0f);
  u_xlat56 = ((u_xlat24.x * u_xlat58) + u_xlat56);
  u_xlat8 = vec4f(((u_xlat6.xxx * x_123.x_MainLightColor.xyz)).xyz, u_xlat8.w);
  u_xlat24.x = dot(-(u_xlat1.xyz), u_xlat2.xyz);
  u_xlat24.x = (u_xlat24.x + u_xlat24.x);
  u_xlat9 = vec4f((((u_xlat2.xyz * -(u_xlat24.xxx)) + -(u_xlat1.xyz))).xyz, u_xlat9.w);
  u_xlat24.x = dot(u_xlat2.xyz, u_xlat1.xyz);
  u_xlat24.x = clamp(u_xlat24.x, 0.0f, 1.0f);
  u_xlat24.x = (-(u_xlat24.x) + 1.0f);
  u_xlat24.x = (u_xlat24.x * u_xlat24.x);
  u_xlat24.x = (u_xlat24.x * u_xlat24.x);
  u_xlat58 = ((-(u_xlat17.x) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat17.x = (u_xlat17.x * u_xlat58);
  u_xlat17.x = (u_xlat17.x * 6.0f);
  let x_2103 = (u_xlat7.xz * x_123.x_FPParams1.xy);
  u_xlat7 = vec4f(x_2103.x, u_xlat7.y, x_2103.y, u_xlat7.w);
  let x_2112 = vec2u(u_xlat7.xz);
  u_xlatu7 = vec3u(x_2112.x, u_xlatu7.y, x_2112.y);
  u_xlatu10 = vec4u(vec2u(x_123.x_FPParams1.zw).xy, u_xlatu10.zw);
  u_xlati7 = ((bitcast<i32>(u_xlatu7.z) * bitcast<i32>(u_xlatu10.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu7.x = (u_xlatu10.y * bitcast<u32>(u_xlati7));
  u_xlat4.x = dot(-(u_xlat5.xyz), u_xlat4);
  u_xlat21 = log2(u_xlat4.x);
  if (u_xlatb0) {
    x_2153 = u_xlat21;
  } else {
    x_2153 = u_xlat4.x;
  }
  u_xlat0.x = x_2153;
  u_xlat0.x = ((u_xlat0.x * x_123.x_FPParams0.x) + x_123.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu4 = u32(x_123.x_FPParams2.x);
  u_xlatu4 = (u_xlatu4 + 4294967295u);
  u_xlati21 = (bitcast<i32>(u_xlatu10.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu4);
  u_xlatu4 = (bitcast<u32>(u_xlati21) * u_xlatu0);
  u_xlatu21 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati21))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu21.x >> 2u);
  param = bitcast<i32>(u_xlatu21.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2216 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu21.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2223 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati5 = vec3i(vec2i(x_2216, x_2223).xy, u_xlati5.z);
  u_xlati41 = bitcast<vec2i>((bitcast<vec2u>(u_xlati5.xx) & bitcast<vec2u>(x_2237.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_2248 = ~(u_xlati5.xy);
  u_xlati5 = vec3i(x_2248.x, u_xlati5.y, x_2248.y);
  u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati5.xx) & bitcast<vec2u>(x_2237.urp_ZBins[bitcast<i32>(u_xlatu0)].zx))).xy, u_xlati10.zw);
  u_xlati41 = bitcast<vec2i>((bitcast<vec2u>(u_xlati41) | bitcast<vec2u>(u_xlati10.xy)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati5.y) & bitcast<u32>(u_xlati41.x)));
  u_xlati21 = bitcast<i32>((bitcast<u32>(u_xlati5.z) & bitcast<u32>(u_xlati41.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati21));
  u_xlatu5 = vec2u(x_123.x_FPParams0.zw);
  u_xlatb10 = vec4<bool>(((vec4f() < u_xlat9.xyzx)).xyz.xyz, u_xlatb10.w);
  u_xlatu11.x = u_xlatu7.x;
  u_xlatu11.y = u_xlatu21.y;
  u_xlatu45.x = 0u;
  u_xlatu45.y = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat21 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu39 = (u_xlatu45.y >> 16u);
    u_xlatu41 = u_xlatu45;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb59 = (bitcast<i32>(u_xlatu41.x) == 0i);
      u_xlatu60 = (u_xlatu41.y & 65535u);
      u_xlatb60 = (u_xlatu39 >= u_xlatu60);
      u_xlatb59 = (u_xlatb59 & u_xlatb60);
      if (!(u_xlatb59)) {
        break;
      }
      param_6 = u_xlatu41.y;
      param_7 = 5i;
      param_8 = 11i;
      let x_2371 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu59 = x_2371;
      u_xlatu13 = (vec4u(u_xlatu59) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> x_2381);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2390 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2397 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2404 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2411 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_2390, x_2397, x_2404, x_2411);
      u_xlati48 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2420.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2420.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_2452 = bitcast<vec2i>((bitcast<vec2u>(u_xlati48) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_2452.x, u_xlati14.y, x_2452.y);
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati61 = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati60) | bitcast<u32>(u_xlati61)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2237.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_2237.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati61 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati61 = bitcast<i32>((bitcast<u32>(u_xlati61) | bitcast<u32>(u_xlati63)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati60) & bitcast<u32>(u_xlati61)));
      u_xlati61 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu41.y) & 31i)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati60) & bitcast<u32>(u_xlati61)));
      u_xlati59 = (bitcast<i32>(u_xlatu59) << bitcast<u32>(5i));
      u_xlatu59 = (u_xlatu39 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati59)))));
      u_xlatu59 = min(u_xlatu59, 31u);
      u_xlatu59 = (bitcast<u32>(-(bitcast<i32>(u_xlatu59))) + 31u);
      u_xlatu59 = (4294967295u >> (u_xlatu59 & 31u));
      u_xlatu41.x = (u_xlatu59 & bitcast<u32>(u_xlati60));
      u_xlati59 = (bitcast<i32>(u_xlatu41.y) + 32i);
      u_xlatu41.y = (bitcast<u32>(u_xlati59) & 4294967264u);
    }
    u_xlatu45.y = u_xlatu41.y;
    u_xlatb39 = (bitcast<i32>(u_xlatu41.x) != 0i);
    u_xlatb59 = (u_xlat21 < 0.99000000953674316406f);
    u_xlatb39 = (u_xlatb39 & u_xlatb59);
    if (!(u_xlatb39)) {
      break;
    }
    u_xlati39 = (0i - bitcast<i32>(u_xlatu41.x));
    u_xlatu39 = (bitcast<u32>(u_xlati39) & u_xlatu41.x);
    u_xlat39.x = f32(u_xlatu39);
    u_xlatu39 = (bitcast<u32>(u_xlat39.x) >> 23u);
    u_xlati39 = (bitcast<i32>(u_xlatu39) + -127i);
    u_xlati59 = (1i << bitcast<u32>((u_xlati39 & 31i)));
    u_xlatu45.x = (u_xlatu41.x ^ bitcast<u32>(u_xlati59));
    u_xlati59 = (bitcast<i32>(u_xlatu45.y) + -32i);
    u_xlati59 = bitcast<i32>((bitcast<u32>(u_xlati59) & 65504u));
    u_xlati39 = (u_xlati39 + u_xlati59);
    u_xlati39 = (-(bitcast<i32>(u_xlatu5.x)) + u_xlati39);
    u_xlat13 = (vs_TEXCOORD3 + -(x_2669.urp_ReflProbes_BoxMin[u_xlati39].xyz));
    u_xlat14 = (-(vs_TEXCOORD3) + x_2669.urp_ReflProbes_BoxMax[u_xlati39].xyz);
    u_xlat13 = min(u_xlat13, u_xlat14);
    u_xlat13 = (u_xlat13 / x_2669.urp_ReflProbes_BoxMax[u_xlati39].www);
    u_xlat59 = min(u_xlat13.z, u_xlat13.y);
    u_xlat59 = min(u_xlat59, u_xlat13.x);
    u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
    u_xlat60 = (-(u_xlat21) + 1.0f);
    u_xlat59 = min(u_xlat59, u_xlat60);
    u_xlatb60 = (0.0f < x_2669.urp_ReflProbes_ProbePosition[u_xlati39].w);
    if (u_xlatb10.x) {
      x_2718 = x_2669.urp_ReflProbes_BoxMax[u_xlati39].x;
    } else {
      x_2718 = x_2669.urp_ReflProbes_BoxMin[u_xlati39].x;
    }
    u_xlat13.x = x_2718;
    if (u_xlatb10.y) {
      x_2732 = x_2669.urp_ReflProbes_BoxMax[u_xlati39].y;
    } else {
      x_2732 = x_2669.urp_ReflProbes_BoxMin[u_xlati39].y;
    }
    u_xlat13.y = x_2732;
    if (u_xlatb10.z) {
      x_2746 = x_2669.urp_ReflProbes_BoxMax[u_xlati39].z;
    } else {
      x_2746 = x_2669.urp_ReflProbes_BoxMin[u_xlati39].z;
    }
    u_xlat13.z = x_2746;
    u_xlat13 = (u_xlat13 + -(vs_TEXCOORD3));
    u_xlat13 = (u_xlat13 / u_xlat9.xyz);
    u_xlat61 = min(u_xlat13.y, u_xlat13.x);
    u_xlat61 = min(u_xlat13.z, u_xlat61);
    u_xlat13 = (vs_TEXCOORD3 + -(x_2669.urp_ReflProbes_ProbePosition[u_xlati39].xyz));
    u_xlat13 = ((u_xlat9.xyz * vec3f(u_xlat61)) + u_xlat13);
    if (u_xlatb60) {
      x_2791 = u_xlat13;
    } else {
      x_2791 = u_xlat9.xyz;
    }
    u_xlat13 = x_2791;
    u_xlatu60 = u32(abs(x_2669.urp_ReflProbes_ProbePosition[u_xlati39].w));
    u_xlatu60 = (u_xlatu60 + 4294967295u);
    u_xlat60 = f32(u_xlatu60);
    u_xlat60 = min(u_xlat17.x, u_xlat60);
    u_xlat61 = dot(abs(u_xlat13), vec3f(1.0f));
    u_xlat61 = max(u_xlat61, 0.00000099999999747524f);
    u_xlat61 = (1.0f / u_xlat61);
    u_xlat14 = (vec3f(u_xlat61) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb47 = ((u_xlat14.yzyz >= vec4f())).xy;
    if (u_xlatb47.x) {
      x_2842 = u_xlat14.x;
    } else {
      x_2842 = -(u_xlat14.x);
    }
    u_xlat47.x = x_2842;
    if (u_xlatb47.y) {
      x_2855 = u_xlat14.x;
    } else {
      x_2855 = -(u_xlat14.x);
    }
    u_xlat47.y = x_2855;
    u_xlat13 = vec3f((((u_xlat13.xy * vec2f(u_xlat61)) + u_xlat47)).xy, u_xlat13.z);
    u_xlat13 = vec3f((((u_xlat13.xy * x_2877) + x_2877)).xy, u_xlat13.z);
    u_xlat13 = vec3f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.z);
    u_xlat61 = floor(u_xlat60);
    u_xlat63 = (u_xlat61 + 1.0f);
    u_xlat60 = (u_xlat60 + -(u_xlat61));
    u_xlatu61 = u32(u_xlat61);
    u_xlati61 = ((u_xlati39 * 7i) + bitcast<i32>(u_xlatu61));
    u_xlatu63 = u32(u_xlat63);
    u_xlati39 = ((u_xlati39 * 7i) + bitcast<i32>(u_xlatu63));
    u_xlat47 = ((u_xlat13.xy * x_2669.urp_ReflProbes_MipScaleOffset[u_xlati61].xy) + x_2669.urp_ReflProbes_MipScaleOffset[u_xlati61].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat47, 0.0f).xyz;
    u_xlat13 = vec3f((((u_xlat13.xy * x_2669.urp_ReflProbes_MipScaleOffset[u_xlati39].xy) + x_2669.urp_ReflProbes_MipScaleOffset[u_xlati39].zw)).xy, u_xlat13.z);
    u_xlat13 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz;
    u_xlat13 = (-(u_xlat14) + u_xlat13);
    u_xlat13 = ((vec3f(u_xlat60) * u_xlat13) + u_xlat14);
    u_xlat12 = vec4f((((vec3f(u_xlat59) * u_xlat13) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat21 = (u_xlat21 + u_xlat59);
  }
  u_xlatb0 = (u_xlat21 < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat9 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xyz, u_xlat17.x);
    u_xlat0.x = (-(u_xlat21) + 1.0f);
    u_xlat17.x = (u_xlat9.w + -1.0f);
    u_xlat17.x = ((x_123.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat17.x) + 1.0f);
    u_xlat17.x = max(u_xlat17.x, 0.0f);
    u_xlat17.x = log2(u_xlat17.x);
    u_xlat17.x = (u_xlat17.x * x_123.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat17.x = exp2(u_xlat17.x);
    u_xlat17.x = (u_xlat17.x * x_123.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat9 = vec4f(((u_xlat9.xyz * u_xlat17.xxx)).xyz, u_xlat9.w);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat9.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0 = vec4f((((u_xlat34.xx * u_xlat34.xx) + vec2f(-1.0f, 1.0f))).xy, u_xlat0.zw);
  u_xlat17.x = (1.0f / u_xlat0.y);
  u_xlat34.x = (u_xlat54 + -0.03999999910593032837f);
  u_xlat34.x = ((u_xlat24.x * u_xlat34.x) + 0.03999999910593032837f);
  u_xlat17.x = (u_xlat34.x * u_xlat17.x);
  u_xlat24 = (u_xlat17.xxx * u_xlat12.xyz);
  u_xlat23 = ((u_xlat23 * u_xlat3) + u_xlat24);
  u_xlati17 = bitcast<i32>((x_123.x_MainLightLayerMask & bitcast<u32>(x_1802.unity_RenderingLayer.x)));
  u_xlat34.x = dot(u_xlat2.xyz, x_123.x_MainLightPosition.xyz);
  u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
  u_xlat34.x = (u_xlat34.x * u_xlat56);
  let x_3120 = (u_xlat34.xxx * u_xlat8.xyz);
  u_xlat5 = vec4f(x_3120.x, u_xlat5.y, x_3120.yz);
  u_xlat24 = (u_xlat1.xyz + x_123.x_MainLightPosition.xyz);
  u_xlat34.x = dot(u_xlat24, u_xlat24);
  u_xlat34.x = max(u_xlat34.x, 1.17549435e-38f);
  u_xlat34.x = inverseSqrt(u_xlat34.x);
  u_xlat24 = (u_xlat34.xxx * u_xlat24);
  u_xlat34.x = dot(u_xlat2.xyz, u_xlat24);
  u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
  u_xlat54 = dot(x_123.x_MainLightPosition.xyz, u_xlat24);
  u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
  u_xlat34.x = (u_xlat34.x * u_xlat34.x);
  u_xlat34.x = ((u_xlat34.x * u_xlat0.x) + 1.00001001358032226562f);
  u_xlat54 = (u_xlat54 * u_xlat54);
  u_xlat34.x = (u_xlat34.x * u_xlat34.x);
  u_xlat54 = max(u_xlat54, 0.10000000149011611938f);
  u_xlat34.x = (u_xlat34.x * u_xlat54);
  u_xlat34.x = (u_xlat55 * u_xlat34.x);
  u_xlat34.x = (u_xlat53 / u_xlat34.x);
  u_xlat24 = ((u_xlat34.xxx * x_3205) + u_xlat3);
  let x_3212 = (u_xlat5.xzw * u_xlat24);
  u_xlat5 = vec4f(x_3212.x, u_xlat5.y, x_3212.yz);
  if ((u_xlati17 != 0i)) {
    x_3217 = u_xlat5.xzw;
  } else {
    x_3217 = vec3f();
  }
  u_xlat5 = vec4f(x_3217.x, u_xlat5.y, x_3217.yz);
  u_xlatu17 = min(u_xlatu5.y, 32u);
  u_xlat34.x = ((u_xlat52 * x_1972.x_AdditionalShadowFadeParams.x) + x_1972.x_AdditionalShadowFadeParams.y);
  u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu17)) {
    } else {
      break;
    }
    u_xlat8 = vec4f((((-(vs_TEXCOORD3) * x_3265.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3265.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat8.w);
    u_xlat54 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat54 = max(u_xlat54, 0.00006103515625f);
    u_xlat21 = inverseSqrt(u_xlat54);
    u_xlat9 = vec4f(((vec3f(u_xlat21) * u_xlat8.xyz)).xyz, u_xlat9.w);
    u_xlat59 = (1.0f / u_xlat54);
    u_xlat54 = (u_xlat54 * x_3265.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat54 = ((-(u_xlat54) * u_xlat54) + 1.0f);
    u_xlat54 = max(u_xlat54, 0.0f);
    u_xlat54 = (u_xlat54 * u_xlat54);
    u_xlat54 = (u_xlat54 * u_xlat59);
    u_xlat59 = dot(x_3265.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9.xyz);
    u_xlat59 = ((u_xlat59 * x_3265.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3265.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
    u_xlat59 = (u_xlat59 * u_xlat59);
    u_xlat54 = (u_xlat54 * u_xlat59);
    u_xlatb59 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati60 = i32(x_1972.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati59 = select(u_xlati60, -1i, u_xlatb59);
    u_xlatb60 = (u_xlati59 >= 0i);
    if (u_xlatb60) {
      u_xlatb60 = any(!((vec4f() == vec4f(x_1972.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb60) {
        u_xlatb10 = vec4<bool>(((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz.xyz, u_xlatb10.w);
        u_xlatb60 = (u_xlatb10.y & u_xlatb10.x);
        let x_3390 = ((-(u_xlat9.zyzx) < vec4f())).xyw;
        u_xlatb10 = vec4<bool>(x_3390.xy, u_xlatb10.z, x_3390.z);
        u_xlat10.x = select(4.0f, 5.0f, u_xlatb10.x);
        u_xlat10.y = select(2.0f, 3.0f, u_xlatb10.y);
        u_xlat61 = select(0.0f, 1.0f, u_xlatb10.w);
        if (u_xlatb10.z) {
          x_3408 = u_xlat10.y;
        } else {
          x_3408 = u_xlat61;
        }
        u_xlat27 = x_3408;
        if (u_xlatb60) {
          x_3417 = u_xlat10.x;
        } else {
          x_3417 = u_xlat27;
        }
        u_xlat60 = x_3417;
        u_xlati60 = i32(u_xlat60);
        u_xlati59 = (u_xlati59 + u_xlati60);
      }
      u_xlati59 = (u_xlati59 << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD3.yyyy * x_1972.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati59 + 1i)]);
      u_xlat10 = ((x_1972.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati59] * vs_TEXCOORD3.xxxx) + u_xlat10);
      u_xlat10 = ((x_1972.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati59 + 2i)] * vs_TEXCOORD3.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_1972.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati59 + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      let x_3471 = u_xlat10.xy;
      txVec1 = vec3f(x_3471.x, x_3471.y, u_xlat10.z);
      u_xlat59 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat60 = (1.0f + -(x_1972.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat59 = ((u_xlat59 * x_1972.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat60);
      u_xlatb60 = (0.0f >= u_xlat10.z);
      u_xlatb10.x = (u_xlat10.z >= 1.0f);
      u_xlatb60 = (u_xlatb60 | u_xlatb10.x);
      u_xlat59 = select(u_xlat59, 1.0f, u_xlatb60);
    } else {
      u_xlat59 = 1.0f;
    }
    u_xlat60 = (-(u_xlat59) + 1.0f);
    u_xlat59 = ((u_xlat34.x * u_xlat60) + u_xlat59);
    u_xlat10 = vec4f(((u_xlat6.xxx * x_3265.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlati60 = bitcast<i32>((bitcast<u32>(x_1802.unity_RenderingLayer.x) & bitcast<u32>(x_3265.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat54 = (u_xlat54 * u_xlat59);
    u_xlat59 = dot(u_xlat2.xyz, u_xlat9.xyz);
    u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
    u_xlat54 = (u_xlat54 * u_xlat59);
    u_xlat10 = vec4f(((vec3f(u_xlat54) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat8 = vec4f((((u_xlat8.xyz * vec3f(u_xlat21)) + u_xlat1.xyz)).xyz, u_xlat8.w);
    u_xlat54 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat54 = max(u_xlat54, 1.17549435e-38f);
    u_xlat54 = inverseSqrt(u_xlat54);
    u_xlat8 = vec4f(((vec3f(u_xlat54) * u_xlat8.xyz)).xyz, u_xlat8.w);
    u_xlat54 = dot(u_xlat2.xyz, u_xlat8.xyz);
    u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
    u_xlat21 = dot(u_xlat9.xyz, u_xlat8.xyz);
    u_xlat21 = clamp(u_xlat21, 0.0f, 1.0f);
    u_xlat54 = (u_xlat54 * u_xlat54);
    u_xlat54 = ((u_xlat54 * u_xlat0.x) + 1.00001001358032226562f);
    u_xlat21 = (u_xlat21 * u_xlat21);
    u_xlat54 = (u_xlat54 * u_xlat54);
    u_xlat21 = max(u_xlat21, 0.10000000149011611938f);
    u_xlat54 = (u_xlat54 * u_xlat21);
    u_xlat54 = (u_xlat55 * u_xlat54);
    u_xlat54 = (u_xlat53 / u_xlat54);
    u_xlat8 = vec4f((((vec3f(u_xlat54) * x_3205) + u_xlat3)).xyz, u_xlat8.w);
    u_xlat8 = vec4f((((u_xlat8.xyz * u_xlat10.xyz) + u_xlat24)).xyz, u_xlat8.w);
    if ((u_xlati60 != 0i)) {
      x_3645 = u_xlat8.xyz;
    } else {
      x_3645 = u_xlat24;
    }
    u_xlat24 = x_3645;

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu17 = (u_xlatu4 >> 2u);
  param_21 = bitcast<i32>(u_xlatu4);
  param_22 = 0i;
  param_23 = 1i;
  let x_3663 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu4);
  param_25 = 1i;
  param_26 = 1i;
  let x_3669 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati4 = vec2i(x_3663, x_3669);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati4.xx) & bitcast<vec2u>(x_2237.urp_ZBins[bitcast<i32>(u_xlatu17)].wy)));
  u_xlati42 = ~(u_xlati4);
  u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati42.xx) & bitcast<vec2u>(x_2237.urp_ZBins[bitcast<i32>(u_xlatu17)].zx)));
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8) | bitcast<vec2u>(u_xlati9)));
  u_xlati17 = bitcast<i32>((bitcast<u32>(u_xlati4.y) & bitcast<u32>(u_xlati8.x)));
  u_xlati52 = bitcast<i32>((bitcast<u32>(u_xlati42.y) & bitcast<u32>(u_xlati8.y)));
  u_xlatu17 = (bitcast<u32>(u_xlati17) | bitcast<u32>(u_xlati52));
  u_xlatu8.x = u_xlatu7.x;
  u_xlatu8.y = u_xlatu21.y;
  u_xlati42.x = 0i;
  u_xlatu59 = u_xlatu17;
  u_xlat9 = vec4f(u_xlat24.xyz, u_xlat9.w);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu52 = (u_xlatu59 >> 16u);
    u_xlati54 = u_xlati42.x;
    u_xlatu4 = u_xlatu59;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb21 = (u_xlati54 == 0i);
      u_xlatu60 = (u_xlatu4 & 65535u);
      u_xlatb60 = (u_xlatu52 >= u_xlatu60);
      u_xlatb21 = (u_xlatb21 & u_xlatb60);
      if (!(u_xlatb21)) {
        break;
      }
      param_27 = u_xlatu4;
      param_28 = 5i;
      param_29 = 11i;
      let x_3775 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu21.x = x_3775;
      u_xlatu10 = (u_xlatu21.xxxx + u_xlatu8.xxyy);
      u_xlatu11 = (u_xlatu10.yw >> x_2381);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_3791 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_3798 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_3805 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_3812 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_3791, x_3798, x_3805, x_3812);
      u_xlati45 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_2420.urp_Tiles[bitcast<i32>(u_xlatu11.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2420.urp_Tiles[bitcast<i32>(u_xlatu11.x)].zx))).xy, u_xlati13.zw);
      let x_3851 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati11 = vec3i(x_3851.x, u_xlati11.y, x_3851.y);
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.z)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati60) | bitcast<u32>(u_xlati10.x)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_2237.urp_ZBins[bitcast<i32>(u_xlatu11.y)].wy))).xy, u_xlati10.zw);
      u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_2237.urp_ZBins[bitcast<i32>(u_xlatu11.y)].zx))).xy, u_xlati11.z);
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xy) | bitcast<vec2u>(u_xlati11.xy))).xy, u_xlati10.zw);
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati10.x)));
      u_xlati27 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati10.y)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati27) | bitcast<u32>(u_xlati10.x)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati60) & bitcast<u32>(u_xlati10.x)));
      u_xlati10.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu4) & 31i)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati60) & bitcast<u32>(u_xlati10.x)));
      u_xlati21 = (bitcast<i32>(u_xlatu21.x) << bitcast<u32>(5i));
      u_xlatu21.x = (u_xlatu52 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati21)))));
      u_xlatu21.x = min(u_xlatu21.x, 31u);
      u_xlatu21.x = (bitcast<u32>(-(bitcast<i32>(u_xlatu21.x))) + 31u);
      u_xlatu21.x = (4294967295u >> (u_xlatu21.x & 31u));
      u_xlati54 = bitcast<i32>((u_xlatu21.x & bitcast<u32>(u_xlati60)));
      u_xlati21 = (bitcast<i32>(u_xlatu4) + 32i);
      u_xlatu4 = (bitcast<u32>(u_xlati21) & 4294967264u);
    }
    u_xlatu59 = u_xlatu4;
    if ((u_xlati54 == 0i)) {
      break;
    }
    u_xlati52 = (0i - u_xlati54);
    u_xlatu52 = (bitcast<u32>(u_xlati52) & bitcast<u32>(u_xlati54));
    u_xlat52 = f32(u_xlatu52);
    u_xlatu52 = (bitcast<u32>(u_xlat52) >> 23u);
    u_xlati52 = (bitcast<i32>(u_xlatu52) + -127i);
    u_xlati21 = (1i << bitcast<u32>((u_xlati52 & 31i)));
    u_xlati42.x = bitcast<i32>((bitcast<u32>(u_xlati54) ^ bitcast<u32>(u_xlati21)));
    u_xlati21 = (bitcast<i32>(u_xlatu59) + -32i);
    u_xlati21 = bitcast<i32>((bitcast<u32>(u_xlati21) & 65504u));
    u_xlati52 = (u_xlati52 + u_xlati21);
    u_xlati52 = (bitcast<i32>(u_xlatu5.y) + u_xlati52);
    u_xlat10 = vec4f((((-(vs_TEXCOORD3) * x_3265.x_AdditionalLightsPosition[u_xlati52].www) + x_3265.x_AdditionalLightsPosition[u_xlati52].xyz)).xyz, u_xlat10.w);
    u_xlat21 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat21 = max(u_xlat21, 0.00006103515625f);
    u_xlat60 = inverseSqrt(u_xlat21);
    u_xlat11 = (vec3f(u_xlat60) * u_xlat10.xyz);
    u_xlat61 = (1.0f / u_xlat21);
    u_xlat21 = (u_xlat21 * x_3265.x_AdditionalLightsAttenuation[u_xlati52].x);
    u_xlat21 = ((-(u_xlat21) * u_xlat21) + 1.0f);
    u_xlat21 = max(u_xlat21, 0.0f);
    u_xlat21 = (u_xlat21 * u_xlat21);
    u_xlat21 = (u_xlat21 * u_xlat61);
    u_xlat61 = dot(x_3265.x_AdditionalLightsSpotDir[u_xlati52].xyz, u_xlat11);
    u_xlat61 = ((u_xlat61 * x_3265.x_AdditionalLightsAttenuation[u_xlati52].z) + x_3265.x_AdditionalLightsAttenuation[u_xlati52].w);
    u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
    u_xlat61 = (u_xlat61 * u_xlat61);
    u_xlat21 = (u_xlat21 * u_xlat61);
    u_xlatb61 = (u_xlati52 < 0i);
    u_xlati62 = i32(x_1972.x_AdditionalShadowParams[u_xlati52].w);
    u_xlati61 = select(u_xlati62, -1i, u_xlatb61);
    u_xlatb62 = (u_xlati61 >= 0i);
    if (u_xlatb62) {
      u_xlatb62 = any(!((vec4f() == vec4f(x_1972.x_AdditionalShadowParams[u_xlati52].z))));
      if (u_xlatb62) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb62 = (u_xlatb12.y & u_xlatb12.x);
        let x_4160 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_4160.xy, u_xlatb12.z, x_4160.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat63 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_4177 = u_xlat12.y;
        } else {
          x_4177 = u_xlat63;
        }
        u_xlat29 = x_4177;
        if (u_xlatb62) {
          x_4187 = u_xlat12.x;
        } else {
          x_4187 = u_xlat29;
        }
        u_xlat62 = x_4187;
        u_xlati62 = i32(u_xlat62);
        u_xlati61 = (u_xlati61 + u_xlati62);
      }
      u_xlati61 = (u_xlati61 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD3.yyyy * x_1972.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati61 + 1i)]);
      u_xlat12 = ((x_1972.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati61] * vs_TEXCOORD3.xxxx) + u_xlat12);
      u_xlat12 = ((x_1972.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati61 + 2i)] * vs_TEXCOORD3.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_1972.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati61 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      let x_4241 = u_xlat12.xy;
      txVec2 = vec3f(x_4241.x, x_4241.y, u_xlat12.z);
      u_xlat61 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat62 = (1.0f + -(x_1972.x_AdditionalShadowParams[u_xlati52].x));
      u_xlat61 = ((u_xlat61 * x_1972.x_AdditionalShadowParams[u_xlati52].x) + u_xlat62);
      u_xlatb62 = (0.0f >= u_xlat12.z);
      u_xlatb12.x = (u_xlat12.z >= 1.0f);
      u_xlatb62 = (u_xlatb62 | u_xlatb12.x);
      u_xlat61 = select(u_xlat61, 1.0f, u_xlatb62);
    } else {
      u_xlat61 = 1.0f;
    }
    u_xlat62 = (-(u_xlat61) + 1.0f);
    u_xlat61 = ((u_xlat34.x * u_xlat62) + u_xlat61);
    u_xlat12 = vec4f(((u_xlat6.xxx * x_3265.x_AdditionalLightsColor[u_xlati52].xyz)).xyz, u_xlat12.w);
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1802.unity_RenderingLayer.x) & bitcast<u32>(x_3265.x_AdditionalLightsLayerMasks[u_xlati52].el)));
    u_xlat21 = (u_xlat21 * u_xlat61);
    u_xlat61 = dot(u_xlat2.xyz, u_xlat11);
    u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
    u_xlat21 = (u_xlat21 * u_xlat61);
    u_xlat12 = vec4f(((vec3f(u_xlat21) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat60)) + u_xlat1.xyz)).xyz, u_xlat10.w);
    u_xlat21 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat21 = max(u_xlat21, 1.17549435e-38f);
    u_xlat21 = inverseSqrt(u_xlat21);
    u_xlat10 = vec4f(((vec3f(u_xlat21) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat21 = dot(u_xlat2.xyz, u_xlat10.xyz);
    u_xlat21 = clamp(u_xlat21, 0.0f, 1.0f);
    u_xlat60 = dot(u_xlat11, u_xlat10.xyz);
    u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
    u_xlat21 = (u_xlat21 * u_xlat21);
    u_xlat21 = ((u_xlat21 * u_xlat0.x) + 1.00001001358032226562f);
    u_xlat60 = (u_xlat60 * u_xlat60);
    u_xlat21 = (u_xlat21 * u_xlat21);
    u_xlat60 = max(u_xlat60, 0.10000000149011611938f);
    u_xlat21 = (u_xlat21 * u_xlat60);
    u_xlat21 = (u_xlat55 * u_xlat21);
    u_xlat21 = (u_xlat53 / u_xlat21);
    u_xlat10 = vec4f((((vec3f(u_xlat21) * x_3205) + u_xlat3)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat9.xyz)).xyz, u_xlat10.w);
    if ((u_xlati52 != 0i)) {
      x_4409 = u_xlat10.xyz;
    } else {
      x_4409 = u_xlat9.xyz;
    }
    u_xlat9 = vec4f(x_4409.xyz, u_xlat9.w);
  }
  u_xlat0 = vec4f((((u_xlat23 * vec3f(u_xlat51)) + u_xlat5.xzw)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat9.xyz + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD3_param : vec3f, @location(1) vs_TEXCOORD4_param : vec3f, @location(2) vs_TEXCOORD5_param : vec4f, @location(3) vs_TEXCOORD7_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

