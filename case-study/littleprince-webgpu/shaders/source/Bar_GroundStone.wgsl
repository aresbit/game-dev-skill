//Assets/Levels/Bar/Shaders/Bar_GroundStone.shader
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
  @location(0)
  vs_TEXCOORD0_1 : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec4f,
  @location(7)
  vs_TEXCOORD9_1 : vec2f,
  @location(2)
  vs_TEXCOORD2_1 : vec4f,
  @location(3)
  vs_TEXCOORD3_1 : vec3f,
  @location(4)
  vs_TEXCOORD4_1 : vec3f,
  @location(5)
  vs_TEXCOORD5_1 : vec4f,
  @location(6)
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

//Assets/Levels/Bar/Shaders/Bar_GroundStone.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4f,
  /* @offset(16) */
  x_BaseColor : vec4f,
  /* @offset(32) */
  x_VertexTint : f32,
  /* @offset(36) */
  x_VertexColorSRGB : f32,
  /* @offset(40) */
  x_Saturation : f32,
  /* @offset(44) */
  x_Contrast : f32,
  /* @offset(48) */
  x_WarmTint : vec4f,
  /* @offset(64) */
  x_Brightness : f32,
  /* @offset(68) */
  x_NormalStrength : f32,
  /* @offset(72) */
  x_Smoothness : f32,
  /* @offset(76) */
  x_VertexSmoothness : f32,
  /* @offset(80) */
  x_OcclusionStrength : f32,
  /* @offset(96) */
  x_GritTint : vec4f,
  /* @offset(112) */
  x_GritTiling : f32,
  /* @offset(116) */
  x_GritStrength : f32,
  /* @offset(120) */
  x_GritFootScale : f32,
  /* @offset(124) */
  x_GritFootOffset : f32,
  /* @offset(128) */
  x_GritSoftness : f32,
  /* @offset(132) */
  x_GritSmoothnessCut : f32,
  /* @offset(136) */
  x_GritNormalFlatten : f32,
  /* @offset(140) */
  x_DampStart : f32,
  /* @offset(144) */
  x_DampEnd : f32,
  /* @offset(148) */
  x_DampDarken : f32,
  /* @offset(152) */
  x_DampStrength : f32,
  /* @offset(156) */
  x_DampNoiseScale : f32,
  /* @offset(160) */
  x_DampBreakup : f32,
  /* @offset(164) */
  x_DampBreakupScale : f32,
  /* @offset(168) */
  x_DampBreakupSoftness : f32,
  /* @offset(172) */
  x_DampSmoothnessCut : f32,
  /* @offset(176) */
  x_DampNoiseAmount : f32,
  /* @offset(180) */
  x_SmoothnessMax : f32,
  /* @offset(184) */
  x_MaskTintWeight : f32,
  /* @offset(188) */
  x_VertexAlphaSmoothness : f32,
  /* @offset(192) */
  Xhlslcc_UnusedX_Cull : f32,
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

var<private> vs_TEXCOORD0 : vec4f;

@group(1) @binding(6) var<uniform> x_81 : UnityPerMaterial;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

@group(1) @binding(0) var<uniform> x_111 : PGlobals;

@group(0) @binding(4) var x_MaskMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MaskMap : sampler;

var<private> vs_TEXCOORD2 : vec4f;

@group(0) @binding(5) var x_GritMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_GritMap : sampler;

var<private> vs_TEXCOORD1 : vec4f;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec3f;

var<private> vs_TEXCOORD5 : vec4f;

var<private> vs_TEXCOORD3 : vec3f;

@group(1) @binding(5) var<uniform> x_1435 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD7 : vec4f;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(7) var<uniform> x_1595 : LightShadows;

@group(1) @binding(2) var<uniform> x_1845 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2033 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2293 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_2866 : AdditionalLights;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

const x_176 = vec3f(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f);

const x_183 = vec2f(-1.0f);

const x_215 = vec3f(1.0f);

const x_339 = vec2f(2.0f);

const x_342 = vec2f(3.0f);

const x_351 = vec2f(0.10310000181198120117f);

const x_364 = vec3f(33.3300018310546875f);

const x_394 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_397 = vec4f(0.10310000181198120117f);

const x_402 = vec4f(33.3300018310546875f);

const x_460 = vec2f(1.0f);

const x_1994 = vec2u(2u);

const x_2514 = vec2f(0.5f);

const x_2810 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat1 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlatb34 : bool;
  var u_xlat3 : vec3f;
  var x_162 : vec3f;
  var u_xlat34 : vec2f;
  var u_xlat51 : f32;
  var u_xlat52 : f32;
  var u_xlat4 : vec4f;
  var u_xlat38 : vec2f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat54 : f32;
  var u_xlat22 : vec3f;
  var u_xlat21 : vec3f;
  var u_xlat55 : f32;
  var u_xlat53 : f32;
  var u_xlat39 : f32;
  var u_xlat17 : f32;
  var x_1391 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec3f;
  var txVec0 : vec3f;
  var u_xlat56 : f32;
  var u_xlatb56 : bool;
  var u_xlatb57 : bool;
  var u_xlat57 : f32;
  var u_xlat58 : f32;
  var u_xlat9 : vec4f;
  var u_xlatu5 : vec3u;
  var u_xlatu10 : vec4u;
  var u_xlati5 : i32;
  var x_1760 : f32;
  var u_xlatu34 : u32;
  var u_xlatu4 : u32;
  var u_xlati21 : i32;
  var u_xlatu21 : vec2u;
  var u_xlati7 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati41 : vec2i;
  var u_xlati10 : vec4i;
  var u_xlati34 : i32;
  var u_xlatu7 : vec2u;
  var u_xlatb10 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlatu45 : vec2u;
  var u_xlat12 : vec4f;
  var u_xlatu39 : vec2u;
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
  var u_xlati39 : vec2i;
  var u_xlat13 : vec3f;
  var u_xlat14 : vec3f;
  var u_xlat59 : f32;
  var u_xlat60 : f32;
  var x_2347 : f32;
  var x_2363 : f32;
  var x_2379 : f32;
  var u_xlat61 : f32;
  var x_2427 : vec3f;
  var u_xlatb47 : vec2<bool>;
  var u_xlat47 : vec2f;
  var x_2479 : f32;
  var x_2492 : f32;
  var u_xlat63 : f32;
  var u_xlatu61 : u32;
  var u_xlatu63 : u32;
  var u_xlati0 : i32;
  var x_2822 : vec3f;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlat10 : vec3f;
  var u_xlati56 : i32;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4f;
  var x_3031 : f32;
  var x_3040 : f32;
  var txVec1 : vec3f;
  var x_3298 : vec3f;
  var u_xlati4 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati9 : vec2i;
  var u_xlati52 : i32;
  var u_xlatu9 : vec2u;
  var u_xlatu43 : vec2u;
  var u_xlatu52 : u32;
  var u_xlatu57 : u32;
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
  var u_xlati57 : i32;
  var u_xlatb61 : bool;
  var u_xlati62 : i32;
  var u_xlatb62 : bool;
  var u_xlatb12 : vec4<bool>;
  var u_xlat29 : f32;
  var x_3834 : f32;
  var u_xlat62 : f32;
  var x_3844 : f32;
  var txVec2 : vec3f;
  var x_4051 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec3f((((vs_TEXCOORD0.xy * x_81.x_BaseMap_ST.xy) + x_81.x_BaseMap_ST.zw)).xy, u_xlat0.z);
  let x_105 = u_xlat0;
  let x_116 = x_111.x_GlobalMipBias.x;
  let x_117 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_105.xy, x_116);
  u_xlat1 = x_117.xyz;
  let x_125 = u_xlat0;
  let x_128 = x_111.x_GlobalMipBias.x;
  let x_129 = textureSampleBias(x_MaskMap, sampler_MaskMap, x_125.xy, x_128);
  u_xlat2 = vec4f(x_129.yzw.xyz, u_xlat2.w);
  u_xlatb34 = (0.5f < x_81.x_VertexColorSRGB);
  u_xlat3 = ((vs_TEXCOORD2.xyz * vec3f(0.30530601739883422852f)) + vec3f(0.68217110633850097656f));
  u_xlat3 = ((vs_TEXCOORD2.xyz * u_xlat3) + vec3f(0.01252287812530994415f));
  u_xlat3 = (u_xlat3 * vs_TEXCOORD2.xyz);
  if (u_xlatb34) {
    x_162 = u_xlat3;
  } else {
    x_162 = vs_TEXCOORD2.xyz;
  }
  u_xlat3 = x_162;
  u_xlat34.x = dot(u_xlat3, x_176);
  u_xlat2 = vec4f(((u_xlat2.yx + x_183)).xy, u_xlat2.zw);
  u_xlat51 = ((x_81.x_MaskTintWeight * u_xlat2.x) + 1.0f);
  u_xlat3 = (-(u_xlat34.xxx) + u_xlat3);
  u_xlat3 = ((vec3f(u_xlat51) * u_xlat3) + u_xlat34.xxx);
  u_xlat3 = (u_xlat3 + vec3f(-1.0f));
  u_xlat3 = ((vec3f(x_81.x_VertexTint) * u_xlat3) + x_215);
  u_xlat1 = (u_xlat1 * u_xlat3);
  u_xlat1 = (u_xlat1 * x_81.x_BaseColor.xyz);
  u_xlat34 = (vs_TEXCOORD0.zw * vec2f(x_81.x_GritTiling));
  let x_238 = u_xlat34;
  let x_240 = x_111.x_GlobalMipBias.x;
  let x_241 = textureSampleBias(x_GritMap, sampler_GritMap, x_238, x_240);
  u_xlat3 = x_241.xyz;
  u_xlat34.x = dot(u_xlat3, x_176);
  u_xlat51 = ((vs_TEXCOORD1.x * x_81.x_GritFootScale) + x_81.x_GritFootOffset);
  u_xlat34.x = (u_xlat34.x + u_xlat51);
  u_xlat51 = max(x_81.x_GritSoftness, 0.00100000004749745131f);
  u_xlat34.x = (u_xlat34.x / u_xlat51);
  u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
  u_xlat34.x = (u_xlat34.x * x_81.x_GritStrength);
  u_xlat51 = (vs_TEXCOORD1.x + -(x_81.x_DampStart));
  u_xlat52 = (-(x_81.x_DampStart) + x_81.x_DampEnd);
  u_xlat52 = max(u_xlat52, 0.00100000004749745131f);
  u_xlat51 = (u_xlat51 / u_xlat52);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  let x_313 = vec2f(x_81.x_DampNoiseScale, x_81.x_DampNoiseScale);
  let x_317 = (vs_TEXCOORD0.zw * vec2f(x_313.x, x_313.y));
  u_xlat2 = vec4f(x_317.x, u_xlat2.yz, x_317.y);
  u_xlat4 = vec4f(floor(u_xlat2.xw).xy, u_xlat4.zw);
  u_xlat38 = fract(u_xlat2.xw);
  u_xlat5 = vec4f(((u_xlat38 * u_xlat38)).xy, u_xlat5.zw);
  u_xlat38 = ((-(u_xlat38) * x_339) + x_342);
  u_xlat38 = (u_xlat38 * u_xlat5.xy);
  u_xlat5 = vec4f(((u_xlat4.xy * x_351)).xy, u_xlat5.zw);
  u_xlat5 = vec4f(fract(u_xlat5.xy).xy, u_xlat5.zw);
  u_xlat6 = vec4f(((u_xlat5.yxx + x_364)).xyz, u_xlat6.w);
  u_xlat52 = dot(u_xlat5.xyx, u_xlat6.xyz);
  u_xlat5 = vec4f(((vec2f(u_xlat52) + u_xlat5.xy)).xy, u_xlat5.zw);
  u_xlat52 = (u_xlat5.y + u_xlat5.x);
  u_xlat52 = (u_xlat5.x * u_xlat52);
  u_xlat52 = fract(u_xlat52);
  u_xlat5 = (u_xlat4.yxyx + x_394);
  u_xlat5 = (u_xlat5 * x_397);
  u_xlat5 = fract(u_xlat5);
  u_xlat6 = (u_xlat5 + x_402);
  u_xlat54 = dot(u_xlat5.yxy, u_xlat6.xyy);
  u_xlat5 = vec4f(((vec2f(u_xlat54) + u_xlat5.yx)).xy, u_xlat5.zw);
  u_xlat54 = (u_xlat5.y + u_xlat5.x);
  u_xlat54 = (u_xlat5.x * u_xlat54);
  u_xlat54 = fract(u_xlat54);
  u_xlat5.x = dot(u_xlat5.wzw, u_xlat6.zww);
  u_xlat5 = vec4f(((u_xlat5.xx + u_xlat5.wz)).xy, u_xlat5.zw);
  u_xlat22.x = (u_xlat5.y + u_xlat5.x);
  u_xlat5.x = (u_xlat5.x * u_xlat22.x);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat4 = vec4f(((u_xlat4.xy + x_460)).xy, u_xlat4.zw);
  u_xlat4 = vec4f(((u_xlat4.xy * x_351)).xy, u_xlat4.zw);
  u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
  u_xlat22 = (u_xlat4.yxx + x_364);
  u_xlat22.x = dot(u_xlat4.xyx, u_xlat22);
  u_xlat4 = vec4f(((u_xlat4.xy + u_xlat22.xx)).xy, u_xlat4.zw);
  u_xlat21.x = (u_xlat4.y + u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * u_xlat21.x);
  u_xlat4.x = fract(u_xlat4.x);
  u_xlat54 = (-(u_xlat52) + u_xlat54);
  u_xlat52 = ((u_xlat38.x * u_xlat54) + u_xlat52);
  u_xlat54 = (-(u_xlat5.x) + u_xlat4.x);
  u_xlat54 = ((u_xlat38.x * u_xlat54) + u_xlat5.x);
  u_xlat54 = (-(u_xlat52) + u_xlat54);
  u_xlat52 = ((u_xlat38.y * u_xlat54) + u_xlat52);
  let x_546 = ((u_xlat2.xw * vec2f(2.02999997138977050781f)) + vec2f(17.1299991607666015625f));
  u_xlat2 = vec4f(x_546.x, u_xlat2.yz, x_546.y);
  u_xlat4 = vec4f(floor(u_xlat2.xw).xy, u_xlat4.zw);
  let x_556 = fract(u_xlat2.xw);
  u_xlat2 = vec4f(x_556.x, u_xlat2.yz, x_556.y);
  u_xlat38 = (u_xlat2.xw * u_xlat2.xw);
  let x_568 = ((-(u_xlat2.xw) * x_339) + x_342);
  u_xlat2 = vec4f(x_568.x, u_xlat2.yz, x_568.y);
  let x_574 = (u_xlat2.xw * u_xlat38);
  u_xlat2 = vec4f(x_574.x, u_xlat2.yz, x_574.y);
  u_xlat38 = (u_xlat4.xy * x_351);
  u_xlat38 = fract(u_xlat38);
  u_xlat5 = vec4f(((u_xlat38.yxx + x_364)).xyz, u_xlat5.w);
  u_xlat54 = dot(u_xlat38.xyx, u_xlat5.xyz);
  u_xlat38 = (vec2f(u_xlat54) + u_xlat38);
  u_xlat54 = (u_xlat38.y + u_xlat38.x);
  u_xlat54 = (u_xlat38.x * u_xlat54);
  u_xlat54 = fract(u_xlat54);
  u_xlat5 = (u_xlat4.yxyx + x_394);
  u_xlat5 = (u_xlat5 * x_397);
  u_xlat5 = fract(u_xlat5);
  u_xlat6 = (u_xlat5 + x_402);
  u_xlat38.x = dot(u_xlat5.yxy, u_xlat6.xyy);
  u_xlat38 = (u_xlat38.xx + u_xlat5.yx);
  u_xlat55 = (u_xlat38.y + u_xlat38.x);
  u_xlat4.z = (u_xlat38.x * u_xlat55);
  u_xlat55 = dot(u_xlat5.wzw, u_xlat6.zww);
  u_xlat5 = vec4f(((vec2f(u_xlat55) + u_xlat5.wz)).xy, u_xlat5.zw);
  u_xlat55 = (u_xlat5.y + u_xlat5.x);
  u_xlat4.w = (u_xlat5.x * u_xlat55);
  u_xlat4 = vec4f(((u_xlat4.xy + x_460)).xy, u_xlat4.zw);
  u_xlat4 = vec4f(((u_xlat4.xy * x_351)).xy, u_xlat4.zw);
  u_xlat4 = fract(u_xlat4);
  u_xlat5 = vec4f(((u_xlat4.yxx + x_364)).xyz, u_xlat5.w);
  u_xlat5.x = dot(u_xlat4.xyx, u_xlat5.xyz);
  u_xlat4 = vec4f(((u_xlat4.xy + u_xlat5.xx)).xy, u_xlat4.zw);
  u_xlat21.x = (u_xlat4.y + u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * u_xlat21.x);
  u_xlat4.x = fract(u_xlat4.x);
  u_xlat21.x = (-(u_xlat54) + u_xlat4.z);
  u_xlat54 = ((u_xlat2.x * u_xlat21.x) + u_xlat54);
  u_xlat4.x = (-(u_xlat4.w) + u_xlat4.x);
  u_xlat2.x = ((u_xlat2.x * u_xlat4.x) + u_xlat4.w);
  u_xlat2.x = (-(u_xlat54) + u_xlat2.x);
  u_xlat2.x = ((u_xlat2.w * u_xlat2.x) + u_xlat54);
  u_xlat2.x = (u_xlat2.x * 0.33300000429153442383f);
  u_xlat52 = ((u_xlat52 * 0.66699999570846557617f) + u_xlat2.x);
  u_xlat52 = (u_xlat52 + -1.0f);
  u_xlat52 = ((x_81.x_DampNoiseAmount * u_xlat52) + 1.0f);
  u_xlat2.x = ((x_81.x_DampBreakup * 0.89999997615814208984f) + -0.15000000596046447754f);
  u_xlat53 = max(x_81.x_DampBreakupSoftness, 0.00100000004749745131f);
  let x_789 = vec2f(x_81.x_DampBreakupScale, x_81.x_DampBreakupScale);
  u_xlat4 = vec4f((((vs_TEXCOORD0.zw * vec2f(x_789.x, x_789.y)) + vec2f(31.700000762939453125f))).xy, u_xlat4.zw);
  u_xlat38 = floor(u_xlat4.xy);
  u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
  u_xlat5 = vec4f(((u_xlat4.xy * u_xlat4.xy)).xy, u_xlat5.zw);
  u_xlat4 = vec4f((((-(u_xlat4.xy) * x_339) + x_342)).xy, u_xlat4.zw);
  u_xlat4 = vec4f(((u_xlat4.xy * u_xlat5.xy)).xy, u_xlat4.zw);
  u_xlat5 = vec4f(((u_xlat38 * x_351)).xy, u_xlat5.zw);
  u_xlat5 = vec4f(fract(u_xlat5.xy).xy, u_xlat5.zw);
  u_xlat6 = vec4f(((u_xlat5.yxx + x_364)).xyz, u_xlat6.w);
  u_xlat54 = dot(u_xlat5.xyx, u_xlat6.xyz);
  u_xlat5 = vec4f(((vec2f(u_xlat54) + u_xlat5.xy)).xy, u_xlat5.zw);
  u_xlat54 = (u_xlat5.y + u_xlat5.x);
  u_xlat54 = (u_xlat5.x * u_xlat54);
  u_xlat54 = fract(u_xlat54);
  u_xlat5 = (u_xlat38.yxyx + x_394);
  u_xlat5 = (u_xlat5 * x_397);
  u_xlat5 = fract(u_xlat5);
  u_xlat6 = (u_xlat5 + x_402);
  u_xlat6.x = dot(u_xlat5.yxy, u_xlat6.xyy);
  u_xlat5 = vec4f(((u_xlat5.yx + u_xlat6.xx)).xy, u_xlat5.zw);
  u_xlat22.x = (u_xlat5.y + u_xlat5.x);
  u_xlat5.x = (u_xlat5.x * u_xlat22.x);
  u_xlat22.x = dot(u_xlat5.wzw, u_xlat6.zww);
  u_xlat22 = vec3f(((u_xlat22.xx + u_xlat5.wz)).xy, u_xlat22.z);
  u_xlat39 = (u_xlat22.y + u_xlat22.x);
  u_xlat5.y = (u_xlat22.x * u_xlat39);
  u_xlat5 = vec4f(fract(u_xlat5.xy).xy, u_xlat5.zw);
  u_xlat38 = (u_xlat38 + x_460);
  u_xlat38 = (u_xlat38 * x_351);
  u_xlat38 = fract(u_xlat38);
  u_xlat6 = vec4f(((u_xlat38.yxx + x_364)).xyz, u_xlat6.w);
  u_xlat39 = dot(u_xlat38.xyx, u_xlat6.xyz);
  u_xlat38 = (u_xlat38 + vec2f(u_xlat39));
  u_xlat55 = (u_xlat38.y + u_xlat38.x);
  u_xlat38.x = (u_xlat38.x * u_xlat55);
  u_xlat38.x = fract(u_xlat38.x);
  u_xlat55 = (-(u_xlat54) + u_xlat5.x);
  u_xlat54 = ((u_xlat4.x * u_xlat55) + u_xlat54);
  u_xlat38.x = (-(u_xlat5.y) + u_xlat38.x);
  u_xlat4.x = ((u_xlat4.x * u_xlat38.x) + u_xlat5.y);
  u_xlat4.x = (-(u_xlat54) + u_xlat4.x);
  u_xlat54 = ((u_xlat4.y * u_xlat4.x) + u_xlat54);
  u_xlat2.x = (-(u_xlat2.x) + u_xlat54);
  u_xlat53 = (1.0f / u_xlat53);
  u_xlat2.x = (u_xlat53 * u_xlat2.x);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat53 = ((u_xlat2.x * -2.0f) + 3.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat53);
  u_xlat51 = (u_xlat51 * u_xlat52);
  u_xlat51 = (u_xlat2.x * u_xlat51);
  u_xlat51 = (u_xlat51 * x_81.x_DampStrength);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat52 = (x_81.x_DampDarken + -1.0f);
  u_xlat52 = ((u_xlat51 * u_xlat52) + 1.0f);
  u_xlat1 = (vec3f(u_xlat52) * u_xlat1);
  u_xlat3 = ((u_xlat3 * x_81.x_GritTint.xyz) + -(u_xlat1));
  u_xlat1 = ((u_xlat34.xxx * u_xlat3) + u_xlat1);
  u_xlat52 = dot(u_xlat1, x_176);
  u_xlat1 = (-(vec3f(u_xlat52)) + u_xlat1);
  let x_1090 = vec3f(x_81.x_Saturation, x_81.x_Saturation, x_81.x_Saturation);
  u_xlat1 = ((vec3f(x_1090.x, x_1090.y, x_1090.z) * u_xlat1) + vec3f(u_xlat52));
  u_xlat1 = (u_xlat1 + vec3f(-0.18000000715255737305f));
  u_xlat52 = (x_81.x_Contrast + 1.0f);
  u_xlat1 = ((u_xlat1 * vec3f(u_xlat52)) + vec3f(0.18000000715255737305f));
  u_xlat1 = (u_xlat1 * x_81.x_WarmTint.xyz);
  u_xlat1 = (u_xlat1 * vec3f(x_81.x_Brightness));
  u_xlat1 = max(u_xlat1, vec3f());
  let x_1135 = u_xlat0;
  let x_1138 = x_111.x_GlobalMipBias.x;
  let x_1139 = textureSampleBias(x_BumpMap, sampler_BumpMap, x_1135.xy, x_1138);
  u_xlat3 = x_1139.xyw;
  u_xlat3.x = (u_xlat3.x * u_xlat3.z);
  u_xlat0 = vec3f((((u_xlat3.xy * x_339) + x_183)).xy, u_xlat0.z);
  u_xlat52 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat52 = min(u_xlat52, 1.0f);
  u_xlat52 = (-(u_xlat52) + 1.0f);
  u_xlat52 = sqrt(u_xlat52);
  u_xlat3.z = max(u_xlat52, 0.0000000000000001f);
  let x_1176 = vec2f(x_81.x_NormalStrength, x_81.x_NormalStrength);
  u_xlat3 = vec3f(((u_xlat0.xy * vec2f(x_1176.x, x_1176.y))).xy, u_xlat3.z);
  u_xlat0.x = (u_xlat34.x * x_81.x_GritNormalFlatten);
  u_xlat4 = vec4f(((-(u_xlat3) + vec3f(0.0f, 0.0f, 1.0f))).xyz, u_xlat4.w);
  u_xlat3 = ((u_xlat0.xxx * u_xlat4.xyz) + u_xlat3);
  u_xlat0.x = dot(u_xlat3, u_xlat3);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat3 = (u_xlat0.xxx * u_xlat3);
  u_xlat0.x = ((vs_TEXCOORD2.w * x_81.x_VertexSmoothness) + -1.0f);
  u_xlat0.x = ((x_81.x_VertexAlphaSmoothness * u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat2.z);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x * x_81.x_Smoothness);
  u_xlat0.x = min(u_xlat0.x, x_81.x_SmoothnessMax);
  u_xlat17 = ((-(u_xlat34.x) * x_81.x_GritSmoothnessCut) + 1.0f);
  u_xlat34.x = ((-(x_81.x_DampSmoothnessCut) * u_xlat51) + 1.0f);
  u_xlat17 = (u_xlat34.x * u_xlat17);
  u_xlat0.x = (u_xlat17 * u_xlat0.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat17 = ((x_81.x_OcclusionStrength * u_xlat2.y) + 1.0f);
  u_xlat2 = vec4f(((vs_TEXCOORD4.zxy * vs_TEXCOORD5.yzx)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((vs_TEXCOORD4.yzx * vs_TEXCOORD5.zxy) + -(u_xlat2.xyz))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * vs_TEXCOORD5.www)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat3.yyy)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat3.xxx * vs_TEXCOORD5.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat3.zzz * vs_TEXCOORD4) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat34.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat34.x = inverseSqrt(u_xlat34.x);
  u_xlat2 = vec4f(((u_xlat34.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlatb34 = (x_111.unity_OrthoParams.w == 0.0f);
  u_xlat3 = (-(vs_TEXCOORD3) + x_111.x_WorldSpaceCameraPos);
  u_xlat51 = dot(u_xlat3, u_xlat3);
  u_xlat51 = inverseSqrt(u_xlat51);
  u_xlat3 = (vec3f(u_xlat51) * u_xlat3);
  u_xlat4.x = x_111.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat4.y = x_111.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat4.z = x_111.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb34) {
    x_1391 = u_xlat3;
  } else {
    x_1391 = u_xlat4.xyz;
  }
  u_xlat3 = x_1391;
  let x_1401 = x_111.x_ScaledScreenParams.xy;
  u_xlat5 = vec4f(((x_460 / vec2f(x_1401.x, x_1401.y))).xy, u_xlat5.zw);
  u_xlat5 = vec4f(((u_xlat5.xy * hlslcc_FragCoord.xy)).xy, u_xlat5.zw);
  u_xlat51 = ((u_xlat5.y * x_111.x_ScaleBiasRt.x) + x_111.x_ScaleBiasRt.y);
  u_xlat5.z = (-(u_xlat51) + 1.0f);
  u_xlat2.w = 1.0f;
  u_xlat6.x = dot(x_1435.unity_SHAr, u_xlat2);
  u_xlat6.y = dot(x_1435.unity_SHAg, u_xlat2);
  u_xlat6.z = dot(x_1435.unity_SHAb, u_xlat2);
  u_xlat7 = (u_xlat2.yzzx * u_xlat2.xyzz);
  u_xlat8.x = dot(x_1435.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_1435.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_1435.unity_SHBb, u_xlat7);
  u_xlat51 = (u_xlat2.y * u_xlat2.y);
  u_xlat51 = ((u_xlat2.x * u_xlat2.x) + -(u_xlat51));
  u_xlat7 = vec4f((((x_1435.unity_SHC.xyz * vec3f(u_xlat51)) + u_xlat8)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  u_xlat1 = (u_xlat1 * vec3f(0.95999997854232788086f));
  u_xlat51 = (-(u_xlat0.x) + 1.0f);
  u_xlat52 = (u_xlat51 * u_xlat51);
  u_xlat52 = max(u_xlat52, 0.0078125f);
  u_xlat53 = (u_xlat52 * u_xlat52);
  u_xlat0.x = (u_xlat0.x + 0.04000002145767211914f);
  u_xlat0.x = min(u_xlat0.x, 1.0f);
  u_xlat54 = ((u_xlat52 * 4.0f) + 2.0f);
  let x_1538 = u_xlat5;
  let x_1541 = x_111.x_GlobalMipBias.x;
  let x_1542 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_1538.xz, x_1541);
  u_xlat55 = x_1542.x;
  u_xlat55 = (u_xlat55 + -(x_111.x_AmbientOcclusionParam.x));
  u_xlat55 = (u_xlat55 + 1.0f);
  u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
  u_xlat22.x = (u_xlat55 + -1.0f);
  u_xlat22.x = ((x_111.x_AmbientOcclusionParam.w * u_xlat22.x) + 1.0f);
  u_xlat17 = min(u_xlat17, u_xlat55);
  let x_1569 = vs_TEXCOORD7.xy;
  txVec0 = vec3f(x_1569.x, x_1569.y, vs_TEXCOORD7.z);
  u_xlat55 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat56 = (-(x_1595.x_MainLightShadowParams.x) + 1.0f);
  u_xlat55 = ((u_xlat55 * x_1595.x_MainLightShadowParams.x) + u_xlat56);
  u_xlatb56 = (0.0f >= vs_TEXCOORD7.z);
  u_xlatb57 = (vs_TEXCOORD7.z >= 1.0f);
  u_xlatb56 = (u_xlatb56 | u_xlatb57);
  u_xlat55 = select(u_xlat55, 1.0f, u_xlatb56);
  u_xlat7 = vec4f(((vs_TEXCOORD3 + -(x_111.x_WorldSpaceCameraPos))).xyz, u_xlat7.w);
  u_xlat56 = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat57 = ((u_xlat56 * x_1595.x_MainLightShadowParams.z) + x_1595.x_MainLightShadowParams.w);
  u_xlat57 = clamp(u_xlat57, 0.0f, 1.0f);
  u_xlat58 = (-(u_xlat55) + 1.0f);
  u_xlat55 = ((u_xlat57 * u_xlat58) + u_xlat55);
  u_xlat8 = (u_xlat22.xxx * x_111.x_MainLightColor.xyz);
  u_xlat57 = dot(-(u_xlat3), u_xlat2.xyz);
  u_xlat57 = (u_xlat57 + u_xlat57);
  u_xlat9 = vec4f((((u_xlat2.xyz * -(vec3f(u_xlat57))) + -(u_xlat3))).xyz, u_xlat9.w);
  u_xlat57 = dot(u_xlat2.xyz, u_xlat3);
  u_xlat57 = clamp(u_xlat57, 0.0f, 1.0f);
  u_xlat57 = (-(u_xlat57) + 1.0f);
  u_xlat57 = (u_xlat57 * u_xlat57);
  u_xlat57 = (u_xlat57 * u_xlat57);
  u_xlat58 = ((-(u_xlat51) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat51 = (u_xlat51 * u_xlat58);
  u_xlat51 = (u_xlat51 * 6.0f);
  let x_1709 = (u_xlat5.xz * x_111.x_FPParams1.xy);
  u_xlat5 = vec4f(x_1709.x, u_xlat5.y, x_1709.y, u_xlat5.w);
  let x_1718 = vec2u(u_xlat5.xz);
  u_xlatu5 = vec3u(x_1718.x, u_xlatu5.y, x_1718.y);
  u_xlatu10 = vec4u(vec2u(x_111.x_FPParams1.zw).xy, u_xlatu10.zw);
  u_xlati5 = ((bitcast<i32>(u_xlatu5.z) * bitcast<i32>(u_xlatu10.x)) + bitcast<i32>(u_xlatu5.x));
  u_xlatu5.x = (u_xlatu10.y * bitcast<u32>(u_xlati5));
  u_xlat4.x = dot(-(u_xlat4.xyz), u_xlat7.xyz);
  u_xlat21.x = log2(u_xlat4.x);
  if (u_xlatb34) {
    x_1760 = u_xlat21.x;
  } else {
    x_1760 = u_xlat4.x;
  }
  u_xlat34.x = x_1760;
  u_xlat34.x = ((u_xlat34.x * x_111.x_FPParams0.x) + x_111.x_FPParams0.y);
  u_xlatu34 = u32(u_xlat34.x);
  u_xlatu4 = u32(x_111.x_FPParams2.x);
  u_xlatu4 = (u_xlatu4 + 4294967295u);
  u_xlati21 = (bitcast<i32>(u_xlatu10.y) + 2i);
  u_xlatu34 = min(u_xlatu34, u_xlatu4);
  u_xlatu4 = (bitcast<u32>(u_xlati21) * u_xlatu34);
  u_xlatu21 = ((vec2u(u_xlatu34) * vec2u(bitcast<u32>(u_xlati21))) + vec2u(1u, 2u));
  u_xlatu34 = (u_xlatu21.x >> 2u);
  param = bitcast<i32>(u_xlatu21.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_1824 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu21.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_1831 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati7 = vec3i(vec2i(x_1824, x_1831).xy, u_xlati7.z);
  u_xlati41 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_1845.urp_ZBins[bitcast<i32>(u_xlatu34)].wy)));
  u_xlati10 = vec4i((~(u_xlati7.xy)).xy, u_xlati10.zw);
  let x_1872 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_1845.urp_ZBins[bitcast<i32>(u_xlatu34)].zx)));
  u_xlati10 = vec4i(x_1872.x, u_xlati10.y, x_1872.y, u_xlati10.w);
  let x_1881 = bitcast<vec2i>((bitcast<vec2u>(u_xlati41) | bitcast<vec2u>(u_xlati10.xz)));
  u_xlati7 = vec3i(x_1881.x, u_xlati7.y, x_1881.y);
  u_xlati34 = bitcast<i32>((bitcast<u32>(u_xlati7.y) & bitcast<u32>(u_xlati7.x)));
  u_xlati21 = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati7.z)));
  u_xlatu34 = (bitcast<u32>(u_xlati34) | bitcast<u32>(u_xlati21));
  u_xlatu7 = vec2u(x_111.x_FPParams0.zw);
  u_xlatb10 = ((vec4f() < u_xlat9.xyzx)).xyz;
  u_xlatu11.x = u_xlatu5.x;
  u_xlatu11.y = u_xlatu21.y;
  u_xlatu45.x = 0u;
  u_xlatu45.y = u_xlatu34;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat21.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu39.x = (u_xlatu45.y >> 16u);
    u_xlatu41 = u_xlatu45;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb59 = (bitcast<i32>(u_xlatu41.x) == 0i);
      u_xlatu60 = (u_xlatu41.y & 65535u);
      u_xlatb60 = (u_xlatu39.x >= u_xlatu60);
      u_xlatb59 = (u_xlatb59 & u_xlatb60);
      if (!(u_xlatb59)) {
        break;
      }
      param_6 = u_xlatu41.y;
      param_7 = 5i;
      param_8 = 11i;
      let x_1984 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu59 = x_1984;
      u_xlatu13 = (vec4u(u_xlatu59) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> x_1994);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2003 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2010 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2017 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2024 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_2003, x_2010, x_2017, x_2024);
      u_xlati48 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2033.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2033.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_2065 = bitcast<vec2i>((bitcast<vec2u>(u_xlati48) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_2065.x, u_xlati14.y, x_2065.y);
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati61 = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati60) | bitcast<u32>(u_xlati61)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_1845.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_1845.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati61 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati61 = bitcast<i32>((bitcast<u32>(u_xlati61) | bitcast<u32>(u_xlati63)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati60) & bitcast<u32>(u_xlati61)));
      u_xlati61 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu41.y) & 31i)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati60) & bitcast<u32>(u_xlati61)));
      u_xlati59 = (bitcast<i32>(u_xlatu59) << bitcast<u32>(5i));
      u_xlatu59 = (u_xlatu39.x + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati59)))));
      u_xlatu59 = min(u_xlatu59, 31u);
      u_xlatu59 = (bitcast<u32>(-(bitcast<i32>(u_xlatu59))) + 31u);
      u_xlatu59 = (4294967295u >> (u_xlatu59 & 31u));
      u_xlatu41.x = (u_xlatu59 & bitcast<u32>(u_xlati60));
      u_xlati59 = (bitcast<i32>(u_xlatu41.y) + 32i);
      u_xlatu41.y = (bitcast<u32>(u_xlati59) & 4294967264u);
    }
    u_xlatu45.y = u_xlatu41.y;
    u_xlatb39 = (bitcast<i32>(u_xlatu41.x) != 0i);
    u_xlatb59 = (u_xlat21.x < 0.99000000953674316406f);
    u_xlatb39 = (u_xlatb39 & u_xlatb59);
    if (!(u_xlatb39)) {
      break;
    }
    u_xlati39.x = (0i - bitcast<i32>(u_xlatu41.x));
    u_xlatu39.x = (bitcast<u32>(u_xlati39.x) & u_xlatu41.x);
    u_xlat39 = f32(u_xlatu39.x);
    u_xlatu39.x = (bitcast<u32>(u_xlat39) >> 23u);
    u_xlati39.x = (bitcast<i32>(u_xlatu39.x) + -127i);
    u_xlati59 = (1i << bitcast<u32>((u_xlati39.x & 31i)));
    u_xlatu45.x = (u_xlatu41.x ^ bitcast<u32>(u_xlati59));
    u_xlati59 = (bitcast<i32>(u_xlatu45.y) + -32i);
    u_xlati59 = bitcast<i32>((bitcast<u32>(u_xlati59) & 65504u));
    u_xlati39.x = (u_xlati39.x + u_xlati59);
    u_xlati39.x = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati39.x);
    u_xlat13 = (vs_TEXCOORD3 + -(x_2293.urp_ReflProbes_BoxMin[u_xlati39.x].xyz));
    u_xlat14 = (-(vs_TEXCOORD3) + x_2293.urp_ReflProbes_BoxMax[u_xlati39.x].xyz);
    u_xlat13 = min(u_xlat13, u_xlat14);
    u_xlat13 = (u_xlat13 / x_2293.urp_ReflProbes_BoxMax[u_xlati39.x].www);
    u_xlat59 = min(u_xlat13.z, u_xlat13.y);
    u_xlat59 = min(u_xlat59, u_xlat13.x);
    u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
    u_xlat60 = (-(u_xlat21.x) + 1.0f);
    u_xlat59 = min(u_xlat59, u_xlat60);
    u_xlatb60 = (0.0f < x_2293.urp_ReflProbes_ProbePosition[u_xlati39.x].w);
    if (u_xlatb10.x) {
      x_2347 = x_2293.urp_ReflProbes_BoxMax[u_xlati39.x].x;
    } else {
      x_2347 = x_2293.urp_ReflProbes_BoxMin[u_xlati39.x].x;
    }
    u_xlat13.x = x_2347;
    if (u_xlatb10.y) {
      x_2363 = x_2293.urp_ReflProbes_BoxMax[u_xlati39.x].y;
    } else {
      x_2363 = x_2293.urp_ReflProbes_BoxMin[u_xlati39.x].y;
    }
    u_xlat13.y = x_2363;
    if (u_xlatb10.z) {
      x_2379 = x_2293.urp_ReflProbes_BoxMax[u_xlati39.x].z;
    } else {
      x_2379 = x_2293.urp_ReflProbes_BoxMin[u_xlati39.x].z;
    }
    u_xlat13.z = x_2379;
    u_xlat13 = (u_xlat13 + -(vs_TEXCOORD3));
    u_xlat13 = (u_xlat13 / u_xlat9.xyz);
    u_xlat61 = min(u_xlat13.y, u_xlat13.x);
    u_xlat61 = min(u_xlat13.z, u_xlat61);
    u_xlat13 = (vs_TEXCOORD3 + -(x_2293.urp_ReflProbes_ProbePosition[u_xlati39.x].xyz));
    u_xlat13 = ((u_xlat9.xyz * vec3f(u_xlat61)) + u_xlat13);
    if (u_xlatb60) {
      x_2427 = u_xlat13;
    } else {
      x_2427 = u_xlat9.xyz;
    }
    u_xlat13 = x_2427;
    u_xlatu60 = u32(abs(x_2293.urp_ReflProbes_ProbePosition[u_xlati39.x].w));
    u_xlatu60 = (u_xlatu60 + 4294967295u);
    u_xlat60 = f32(u_xlatu60);
    u_xlat60 = min(u_xlat51, u_xlat60);
    u_xlat61 = dot(abs(u_xlat13), x_215);
    u_xlat61 = max(u_xlat61, 0.00000099999999747524f);
    u_xlat61 = (1.0f / u_xlat61);
    u_xlat14 = (vec3f(u_xlat61) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb47 = ((u_xlat14.yzyz >= vec4f())).xy;
    if (u_xlatb47.x) {
      x_2479 = u_xlat14.x;
    } else {
      x_2479 = -(u_xlat14.x);
    }
    u_xlat47.x = x_2479;
    if (u_xlatb47.y) {
      x_2492 = u_xlat14.x;
    } else {
      x_2492 = -(u_xlat14.x);
    }
    u_xlat47.y = x_2492;
    u_xlat13 = vec3f((((u_xlat13.xy * vec2f(u_xlat61)) + u_xlat47)).xy, u_xlat13.z);
    u_xlat13 = vec3f((((u_xlat13.xy * x_2514) + x_2514)).xy, u_xlat13.z);
    u_xlat13 = vec3f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.z);
    u_xlat61 = floor(u_xlat60);
    u_xlat63 = (u_xlat61 + 1.0f);
    u_xlat60 = (u_xlat60 + -(u_xlat61));
    u_xlatu61 = u32(u_xlat61);
    u_xlati61 = ((u_xlati39.x * 7i) + bitcast<i32>(u_xlatu61));
    u_xlatu63 = u32(u_xlat63);
    u_xlati39.x = ((u_xlati39.x * 7i) + bitcast<i32>(u_xlatu63));
    u_xlat47 = ((u_xlat13.xy * x_2293.urp_ReflProbes_MipScaleOffset[u_xlati61].xy) + x_2293.urp_ReflProbes_MipScaleOffset[u_xlati61].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat47, 0.0f).xyz;
    u_xlat13 = vec3f((((u_xlat13.xy * x_2293.urp_ReflProbes_MipScaleOffset[u_xlati39.x].xy) + x_2293.urp_ReflProbes_MipScaleOffset[u_xlati39.x].zw)).xy, u_xlat13.z);
    u_xlat13 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz;
    u_xlat13 = (-(u_xlat14) + u_xlat13);
    u_xlat13 = ((vec3f(u_xlat60) * u_xlat13) + u_xlat14);
    u_xlat12 = vec4f((((vec3f(u_xlat59) * u_xlat13) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat21.x = (u_xlat21.x + u_xlat59);
  }
  u_xlatb34 = (u_xlat21.x < 0.99000000953674316406f);
  if (u_xlatb34) {
    u_xlat9 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xyz, u_xlat51);
    u_xlat34.x = (-(u_xlat21.x) + 1.0f);
    u_xlat51 = (u_xlat9.w + -1.0f);
    u_xlat51 = ((x_111.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat51) + 1.0f);
    u_xlat51 = max(u_xlat51, 0.0f);
    u_xlat51 = log2(u_xlat51);
    u_xlat51 = (u_xlat51 * x_111.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat51 = exp2(u_xlat51);
    u_xlat51 = (u_xlat51 * x_111.x_GlossyEnvironmentCubeMap_HDR.x);
    let x_2669 = (u_xlat9.xyz * vec3f(u_xlat51));
    u_xlat7 = vec4f(x_2669.x, u_xlat7.y, x_2669.yz);
    u_xlat12 = vec4f((((u_xlat34.xxx * u_xlat7.xzw) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat34 = ((vec2f(u_xlat52) * vec2f(u_xlat52)) + vec2f(-1.0f, 1.0f));
  u_xlat51 = (1.0f / u_xlat34.y);
  u_xlat0.x = (u_xlat0.x + -0.03999999910593032837f);
  u_xlat0.x = ((u_xlat57 * u_xlat0.x) + 0.03999999910593032837f);
  u_xlat0.x = (u_xlat0.x * u_xlat51);
  let x_2713 = (u_xlat0.xxx * u_xlat12.xyz);
  u_xlat7 = vec4f(x_2713.x, u_xlat7.y, x_2713.yz);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat1) + u_xlat7.xzw)).xyz, u_xlat6.w);
  u_xlati0 = bitcast<i32>((x_111.x_MainLightLayerMask & bitcast<u32>(x_1435.unity_RenderingLayer.x)));
  u_xlat51 = dot(u_xlat2.xyz, x_111.x_MainLightPosition.xyz);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat51 = (u_xlat51 * u_xlat55);
  let x_2748 = (vec3f(u_xlat51) * u_xlat8);
  u_xlat7 = vec4f(x_2748.x, u_xlat7.y, x_2748.yz);
  u_xlat8 = (u_xlat3 + x_111.x_MainLightPosition.xyz);
  u_xlat51 = dot(u_xlat8, u_xlat8);
  u_xlat51 = max(u_xlat51, 1.17549435e-38f);
  u_xlat51 = inverseSqrt(u_xlat51);
  u_xlat8 = (vec3f(u_xlat51) * u_xlat8);
  u_xlat51 = dot(u_xlat2.xyz, u_xlat8);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat52 = dot(x_111.x_MainLightPosition.xyz, u_xlat8);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((u_xlat51 * u_xlat34.x) + 1.00001001358032226562f);
  u_xlat52 = (u_xlat52 * u_xlat52);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat52 = max(u_xlat52, 0.10000000149011611938f);
  u_xlat51 = (u_xlat51 * u_xlat52);
  u_xlat51 = (u_xlat54 * u_xlat51);
  u_xlat51 = (u_xlat53 / u_xlat51);
  u_xlat8 = ((vec3f(u_xlat51) * x_2810) + u_xlat1);
  let x_2817 = (u_xlat7.xzw * u_xlat8);
  u_xlat7 = vec4f(x_2817.x, u_xlat7.y, x_2817.yz);
  if ((u_xlati0 != 0i)) {
    x_2822 = u_xlat7.xzw;
  } else {
    x_2822 = vec3f();
  }
  u_xlat7 = vec4f(x_2822.x, u_xlat7.y, x_2822.yz);
  u_xlatu0 = min(u_xlatu7.y, 32u);
  u_xlat51 = ((u_xlat56 * x_1595.x_AdditionalShadowFadeParams.x) + x_1595.x_AdditionalShadowFadeParams.y);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu0)) {
    } else {
      break;
    }
    u_xlat9 = vec4f((((-(vs_TEXCOORD3) * x_2866.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_2866.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat9.w);
    u_xlat21.x = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat21.x = max(u_xlat21.x, 0.00006103515625f);
    u_xlat55 = inverseSqrt(u_xlat21.x);
    u_xlat10 = (vec3f(u_xlat55) * u_xlat9.xyz);
    u_xlat39 = (1.0f / u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * x_2866.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat21.x = ((-(u_xlat21.x) * u_xlat21.x) + 1.0f);
    u_xlat21.x = max(u_xlat21.x, 0.0f);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * u_xlat39);
    u_xlat39 = dot(x_2866.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat10);
    u_xlat39 = ((u_xlat39 * x_2866.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_2866.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat39 = clamp(u_xlat39, 0.0f, 1.0f);
    u_xlat39 = (u_xlat39 * u_xlat39);
    u_xlat21.x = (u_xlat21.x * u_xlat39);
    u_xlatb39 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati56 = i32(x_1595.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati39.x = select(u_xlati56, -1i, u_xlatb39);
    u_xlatb56 = (u_xlati39.x >= 0i);
    if (u_xlatb56) {
      u_xlatb56 = any(!((vec4f() == vec4f(x_1595.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb56) {
        u_xlatb11 = vec4<bool>(((abs(u_xlat10.zzyz) >= abs(u_xlat10.xyxx))).xyz.xyz, u_xlatb11.w);
        u_xlatb56 = (u_xlatb11.y & u_xlatb11.x);
        let x_3013 = ((-(u_xlat10.zyzx) < vec4f())).xyw;
        u_xlatb11 = vec4<bool>(x_3013.xy, u_xlatb11.z, x_3013.z);
        u_xlat11.x = select(4.0f, 5.0f, u_xlatb11.x);
        u_xlat11.y = select(2.0f, 3.0f, u_xlatb11.y);
        u_xlat57 = select(0.0f, 1.0f, u_xlatb11.w);
        if (u_xlatb11.z) {
          x_3031 = u_xlat11.y;
        } else {
          x_3031 = u_xlat57;
        }
        u_xlat57 = x_3031;
        if (u_xlatb56) {
          x_3040 = u_xlat11.x;
        } else {
          x_3040 = u_xlat57;
        }
        u_xlat56 = x_3040;
        u_xlati56 = i32(u_xlat56);
        u_xlati39.x = (u_xlati56 + u_xlati39.x);
      }
      u_xlati39.x = (u_xlati39.x << bitcast<u32>(2i));
      u_xlat11 = (vs_TEXCOORD3.yyyy * x_1595.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati39.x + 1i)]);
      u_xlat11 = ((x_1595.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati39.x] * vs_TEXCOORD3.xxxx) + u_xlat11);
      u_xlat11 = ((x_1595.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati39.x + 2i)] * vs_TEXCOORD3.zzzz) + u_xlat11);
      u_xlat11 = (u_xlat11 + x_1595.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati39.x + 3i)]);
      u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat11.www)).xyz, u_xlat11.w);
      let x_3102 = u_xlat11.xy;
      txVec1 = vec3f(x_3102.x, x_3102.y, u_xlat11.z);
      u_xlat39 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat56 = (1.0f + -(x_1595.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat39 = ((u_xlat39 * x_1595.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat56);
      u_xlatb56 = (0.0f >= u_xlat11.z);
      u_xlatb57 = (u_xlat11.z >= 1.0f);
      u_xlatb56 = (u_xlatb56 | u_xlatb57);
      u_xlat39 = select(u_xlat39, 1.0f, u_xlatb56);
    } else {
      u_xlat39 = 1.0f;
    }
    u_xlat56 = (-(u_xlat39) + 1.0f);
    u_xlat39 = ((u_xlat51 * u_xlat56) + u_xlat39);
    u_xlat11 = vec4f(((u_xlat22.xxx * x_2866.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat11.w);
    u_xlati56 = bitcast<i32>((bitcast<u32>(x_1435.unity_RenderingLayer.x) & bitcast<u32>(x_2866.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat21.x = (u_xlat21.x * u_xlat39);
    u_xlat39 = dot(u_xlat2.xyz, u_xlat10);
    u_xlat39 = clamp(u_xlat39, 0.0f, 1.0f);
    u_xlat21.x = (u_xlat21.x * u_xlat39);
    u_xlat11 = vec4f(((u_xlat21.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * vec3f(u_xlat55)) + u_xlat3)).xyz, u_xlat9.w);
    u_xlat21.x = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat21.x = max(u_xlat21.x, 1.17549435e-38f);
    u_xlat21.x = inverseSqrt(u_xlat21.x);
    u_xlat9 = vec4f(((u_xlat21.xxx * u_xlat9.xyz)).xyz, u_xlat9.w);
    u_xlat21.x = dot(u_xlat2.xyz, u_xlat9.xyz);
    u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
    u_xlat21.z = dot(u_xlat10, u_xlat9.xyz);
    u_xlat21.z = clamp(u_xlat21.z, 0.0f, 1.0f);
    let x_3246 = (u_xlat21.xz * u_xlat21.xz);
    u_xlat21 = vec3f(x_3246.x, u_xlat21.y, x_3246.y);
    u_xlat21.x = ((u_xlat21.x * u_xlat34.x) + 1.00001001358032226562f);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat55 = max(u_xlat21.z, 0.10000000149011611938f);
    u_xlat21.x = (u_xlat55 * u_xlat21.x);
    u_xlat21.x = (u_xlat54 * u_xlat21.x);
    u_xlat21.x = (u_xlat53 / u_xlat21.x);
    u_xlat9 = vec4f((((u_xlat21.xxx * x_2810) + u_xlat1)).xyz, u_xlat9.w);
    u_xlat9 = vec4f((((u_xlat9.xyz * u_xlat11.xyz) + u_xlat8)).xyz, u_xlat9.w);
    if ((u_xlati56 != 0i)) {
      x_3298 = u_xlat9.xyz;
    } else {
      x_3298 = u_xlat8;
    }
    u_xlat8 = x_3298;

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu0 = (u_xlatu4 >> 2u);
  param_21 = bitcast<i32>(u_xlatu4);
  param_22 = 0i;
  param_23 = 1i;
  let x_3316 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu4);
  param_25 = 1i;
  param_26 = 1i;
  let x_3322 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati4 = vec4i(vec2i(x_3316, x_3322).xy, u_xlati4.zw);
  u_xlati39 = bitcast<vec2i>((bitcast<vec2u>(u_xlati4.xx) & bitcast<vec2u>(x_1845.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_3339 = ~(u_xlati4.xy);
  u_xlati4 = vec4i(x_3339.x, u_xlati4.yz, x_3339.y);
  u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati4.xx) & bitcast<vec2u>(x_1845.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati39 = bitcast<vec2i>((bitcast<vec2u>(u_xlati39) | bitcast<vec2u>(u_xlati9)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati4.y) & bitcast<u32>(u_xlati39.x)));
  u_xlati52 = bitcast<i32>((bitcast<u32>(u_xlati4.w) & bitcast<u32>(u_xlati39.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati52));
  u_xlatu9.x = u_xlatu5.x;
  u_xlatu9.y = u_xlatu21.y;
  u_xlatu43.x = 0u;
  u_xlatu43.y = u_xlatu0;
  u_xlat4 = vec4f(u_xlat8.xy, u_xlat4.z, u_xlat8.z);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu52 = (u_xlatu43.y >> 16u);
    u_xlatu39 = u_xlatu43;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb57 = (bitcast<i32>(u_xlatu39.x) == 0i);
      u_xlatu59 = (u_xlatu39.y & 65535u);
      u_xlatb59 = (u_xlatu52 >= u_xlatu59);
      u_xlatb57 = (u_xlatb57 & u_xlatb59);
      if (!(u_xlatb57)) {
        break;
      }
      param_27 = u_xlatu39.y;
      param_28 = 5i;
      param_29 = 11i;
      let x_3435 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu57 = x_3435;
      u_xlatu10 = (vec4u(u_xlatu57) + u_xlatu9.xxyy);
      u_xlatu11 = (u_xlatu10.yw >> x_1994);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_3450 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_3457 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_3464 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_3471 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_3450, x_3457, x_3464, x_3471);
      u_xlati45 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_2033.urp_Tiles[bitcast<i32>(u_xlatu11.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2033.urp_Tiles[bitcast<i32>(u_xlatu11.x)].zx))).xy, u_xlati13.zw);
      let x_3510 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati11 = vec3i(x_3510.x, u_xlati11.y, x_3510.y);
      u_xlati59 = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.z)));
      u_xlati59 = bitcast<i32>((bitcast<u32>(u_xlati59) | bitcast<u32>(u_xlati10.x)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_1845.urp_ZBins[bitcast<i32>(u_xlatu11.y)].wy))).xy, u_xlati10.zw);
      u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_1845.urp_ZBins[bitcast<i32>(u_xlatu11.y)].zx))).xy, u_xlati11.z);
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xy) | bitcast<vec2u>(u_xlati11.xy))).xy, u_xlati10.zw);
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati10.x)));
      u_xlati27 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati10.y)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati27) | bitcast<u32>(u_xlati10.x)));
      u_xlati59 = bitcast<i32>((bitcast<u32>(u_xlati59) & bitcast<u32>(u_xlati10.x)));
      u_xlati10.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu39.y) & 31i)));
      u_xlati59 = bitcast<i32>((bitcast<u32>(u_xlati59) & bitcast<u32>(u_xlati10.x)));
      u_xlati57 = (bitcast<i32>(u_xlatu57) << bitcast<u32>(5i));
      u_xlatu57 = (u_xlatu52 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati57)))));
      u_xlatu57 = min(u_xlatu57, 31u);
      u_xlatu57 = (bitcast<u32>(-(bitcast<i32>(u_xlatu57))) + 31u);
      u_xlatu57 = (4294967295u >> (u_xlatu57 & 31u));
      u_xlatu39.x = (u_xlatu57 & bitcast<u32>(u_xlati59));
      u_xlati57 = (bitcast<i32>(u_xlatu39.y) + 32i);
      u_xlatu39.y = (bitcast<u32>(u_xlati57) & 4294967264u);
    }
    u_xlatu43.y = u_xlatu39.y;
    if ((u_xlatu39.x == 0u)) {
      break;
    }
    u_xlati52 = (0i - bitcast<i32>(u_xlatu39.x));
    u_xlatu52 = (bitcast<u32>(u_xlati52) & u_xlatu39.x);
    u_xlat52 = f32(u_xlatu52);
    u_xlatu52 = (bitcast<u32>(u_xlat52) >> 23u);
    u_xlati52 = (bitcast<i32>(u_xlatu52) + -127i);
    u_xlati57 = (1i << bitcast<u32>((u_xlati52 & 31i)));
    u_xlatu43.x = (u_xlatu39.x ^ bitcast<u32>(u_xlati57));
    u_xlati57 = (bitcast<i32>(u_xlatu43.y) + -32i);
    u_xlati57 = bitcast<i32>((bitcast<u32>(u_xlati57) & 65504u));
    u_xlati52 = (u_xlati52 + u_xlati57);
    u_xlati52 = (bitcast<i32>(u_xlatu7.y) + u_xlati52);
    u_xlat10 = ((-(vs_TEXCOORD3) * x_2866.x_AdditionalLightsPosition[u_xlati52].www) + x_2866.x_AdditionalLightsPosition[u_xlati52].xyz);
    u_xlat57 = dot(u_xlat10, u_xlat10);
    u_xlat57 = max(u_xlat57, 0.00006103515625f);
    u_xlat59 = inverseSqrt(u_xlat57);
    u_xlat11 = vec4f(((vec3f(u_xlat59) * u_xlat10)).xyz, u_xlat11.w);
    u_xlat61 = (1.0f / u_xlat57);
    u_xlat57 = (u_xlat57 * x_2866.x_AdditionalLightsAttenuation[u_xlati52].x);
    u_xlat57 = ((-(u_xlat57) * u_xlat57) + 1.0f);
    u_xlat57 = max(u_xlat57, 0.0f);
    u_xlat57 = (u_xlat57 * u_xlat57);
    u_xlat57 = (u_xlat57 * u_xlat61);
    u_xlat61 = dot(x_2866.x_AdditionalLightsSpotDir[u_xlati52].xyz, u_xlat11.xyz);
    u_xlat61 = ((u_xlat61 * x_2866.x_AdditionalLightsAttenuation[u_xlati52].z) + x_2866.x_AdditionalLightsAttenuation[u_xlati52].w);
    u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
    u_xlat61 = (u_xlat61 * u_xlat61);
    u_xlat57 = (u_xlat57 * u_xlat61);
    u_xlatb61 = (u_xlati52 < 0i);
    u_xlati62 = i32(x_1595.x_AdditionalShadowParams[u_xlati52].w);
    u_xlati61 = select(u_xlati62, -1i, u_xlatb61);
    u_xlatb62 = (u_xlati61 >= 0i);
    if (u_xlatb62) {
      u_xlatb62 = any(!((vec4f() == vec4f(x_1595.x_AdditionalShadowParams[u_xlati52].z))));
      if (u_xlatb62) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb62 = (u_xlatb12.y & u_xlatb12.x);
        let x_3817 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_3817.xy, u_xlatb12.z, x_3817.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat63 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_3834 = u_xlat12.y;
        } else {
          x_3834 = u_xlat63;
        }
        u_xlat29 = x_3834;
        if (u_xlatb62) {
          x_3844 = u_xlat12.x;
        } else {
          x_3844 = u_xlat29;
        }
        u_xlat62 = x_3844;
        u_xlati62 = i32(u_xlat62);
        u_xlati61 = (u_xlati61 + u_xlati62);
      }
      u_xlati61 = (u_xlati61 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD3.yyyy * x_1595.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati61 + 1i)]);
      u_xlat12 = ((x_1595.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati61] * vs_TEXCOORD3.xxxx) + u_xlat12);
      u_xlat12 = ((x_1595.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati61 + 2i)] * vs_TEXCOORD3.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_1595.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati61 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      let x_3898 = u_xlat12.xy;
      txVec2 = vec3f(x_3898.x, x_3898.y, u_xlat12.z);
      u_xlat61 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat62 = (1.0f + -(x_1595.x_AdditionalShadowParams[u_xlati52].x));
      u_xlat61 = ((u_xlat61 * x_1595.x_AdditionalShadowParams[u_xlati52].x) + u_xlat62);
      u_xlatb62 = (0.0f >= u_xlat12.z);
      u_xlatb12.x = (u_xlat12.z >= 1.0f);
      u_xlatb62 = (u_xlatb62 | u_xlatb12.x);
      u_xlat61 = select(u_xlat61, 1.0f, u_xlatb62);
    } else {
      u_xlat61 = 1.0f;
    }
    u_xlat62 = (-(u_xlat61) + 1.0f);
    u_xlat61 = ((u_xlat51 * u_xlat62) + u_xlat61);
    u_xlat12 = vec4f(((u_xlat22.xxx * x_2866.x_AdditionalLightsColor[u_xlati52].xyz)).xyz, u_xlat12.w);
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_1435.unity_RenderingLayer.x) & bitcast<u32>(x_2866.x_AdditionalLightsLayerMasks[u_xlati52].el)));
    u_xlat57 = (u_xlat57 * u_xlat61);
    u_xlat61 = dot(u_xlat2.xyz, u_xlat11.xyz);
    u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
    u_xlat57 = (u_xlat57 * u_xlat61);
    u_xlat12 = vec4f(((vec3f(u_xlat57) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat10 = ((u_xlat10 * vec3f(u_xlat59)) + u_xlat3);
    u_xlat57 = dot(u_xlat10, u_xlat10);
    u_xlat57 = max(u_xlat57, 1.17549435e-38f);
    u_xlat57 = inverseSqrt(u_xlat57);
    u_xlat10 = (vec3f(u_xlat57) * u_xlat10);
    u_xlat57 = dot(u_xlat2.xyz, u_xlat10);
    u_xlat57 = clamp(u_xlat57, 0.0f, 1.0f);
    u_xlat59 = dot(u_xlat11.xyz, u_xlat10);
    u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
    u_xlat57 = (u_xlat57 * u_xlat57);
    u_xlat57 = ((u_xlat57 * u_xlat34.x) + 1.00001001358032226562f);
    u_xlat59 = (u_xlat59 * u_xlat59);
    u_xlat57 = (u_xlat57 * u_xlat57);
    u_xlat59 = max(u_xlat59, 0.10000000149011611938f);
    u_xlat57 = (u_xlat57 * u_xlat59);
    u_xlat57 = (u_xlat54 * u_xlat57);
    u_xlat57 = (u_xlat53 / u_xlat57);
    u_xlat10 = ((vec3f(u_xlat57) * x_2810) + u_xlat1);
    u_xlat10 = ((u_xlat10 * u_xlat12.xyz) + u_xlat4.xyw);
    if ((u_xlati52 != 0i)) {
      x_4051 = u_xlat10;
    } else {
      x_4051 = u_xlat4.xyw;
    }
    u_xlat4 = vec4f(x_4051.xy, u_xlat4.z, x_4051.z);
  }
  u_xlat0 = ((u_xlat6.xyz * vec3f(u_xlat17)) + u_xlat7.xzw);
  SV_Target0 = vec4f(((u_xlat4.xyw + u_xlat0)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec4f, @location(2) vs_TEXCOORD2_param : vec4f, @location(1) vs_TEXCOORD1_param : vec4f, @location(4) vs_TEXCOORD4_param : vec3f, @location(5) vs_TEXCOORD5_param : vec4f, @location(3) vs_TEXCOORD3_param : vec3f, @location(6) vs_TEXCOORD7_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

