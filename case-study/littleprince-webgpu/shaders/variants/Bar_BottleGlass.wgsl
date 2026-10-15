//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
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

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

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
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_AlphaCenter : f32,
  /* @offset(20) */
  Xhlslcc_UnusedX_AlphaEdge : f32,
  /* @offset(24) */
  x_FresnelPower : f32,
  /* @offset(28) */
  Xhlslcc_UnusedX_EdgeDarken : f32,
  /* @offset(32) */
  Xhlslcc_UnusedX_Smoothness : f32,
  /* @offset(36) */
  x_Absorb : f32,
  /* @offset(40) */
  x_Transmit : f32,
}

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(1) var<uniform> x_123 : UnityPerMaterial;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat2 : vec3f;
  var u_xlat1 : vec3f;
  var x_40 : f32;
  var x_54 : f32;
  var x_66 : f32;
  var u_xlat0 : vec3f;
  var u_xlat6 : f32;
  var u_xlat4 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlatb0 = (x_17.unity_OrthoParams.w == 0.0f);
  u_xlat2 = (-(vs_TEXCOORD0) + x_17.x_WorldSpaceCameraPos);
  if (u_xlatb0) {
    x_40 = u_xlat2.x;
  } else {
    x_40 = x_17.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  u_xlat1.x = x_40;
  if (u_xlatb0) {
    x_54 = u_xlat2.y;
  } else {
    x_54 = x_17.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  u_xlat1.y = x_54;
  if (u_xlatb0) {
    x_66 = u_xlat2.z;
  } else {
    x_66 = x_17.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  u_xlat1.z = x_66;
  u_xlat0.x = dot(u_xlat1, u_xlat1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = (u_xlat0.xxx * u_xlat1);
  u_xlat6 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat6 = inverseSqrt(u_xlat6);
  u_xlat1 = (vec3f(u_xlat6) * vs_TEXCOORD1);
  u_xlat0.x = dot(u_xlat1, u_xlat0);
  u_xlat0.x = min(abs(u_xlat0.x), 1.0f);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * x_123.x_FresnelPower);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat0.x = ((u_xlat0.x * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat0.x = (u_xlat0.x * x_123.x_Absorb);
  u_xlat2.x = max(x_123.x_BaseColor.y, x_123.x_BaseColor.x);
  u_xlat4 = max(x_123.x_BaseColor.z, 0.00100000004749745131f);
  u_xlat2.x = max(u_xlat4, u_xlat2.x);
  u_xlat2 = (x_123.x_BaseColor.xyz / u_xlat2.xxx);
  let x_178 = vec3f(x_123.x_Transmit, x_123.x_Transmit, x_123.x_Transmit);
  u_xlat2 = ((u_xlat2 * vec3f(x_178.x, x_178.y, x_178.z)) + vec3f(-1.0f));
  SV_Target0 = vec4f((((u_xlat0.xxx * u_xlat2) + vec3f(1.0f))).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
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
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
diagnostic(off, derivative_uniformity);

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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_AlphaCenter : f32,
  /* @offset(20) */
  x_AlphaEdge : f32,
  /* @offset(24) */
  x_FresnelPower : f32,
  /* @offset(28) */
  x_EdgeDarken : f32,
  /* @offset(32) */
  x_Smoothness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_Absorb : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_Transmit : f32,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(0) var<uniform> x_99 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_174 : UnityPerMaterial;

@group(1) @binding(7) var<uniform> x_208 : LightShadows;

@group(1) @binding(5) var<uniform> x_395 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(8) var<uniform> x_1906 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_2206 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2385 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2632 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(7) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3311 : AdditionalLights;

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

const x_470 = vec2f(1.0f);

const x_654 = vec4f(0.25f);

const x_673 = vec2f(0.5f);

const x_697 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_709 = vec2f(0.07999999821186065674f);

const x_765 = vec2f(0.15999999642372131348f);

const x_838 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1164 = vec2f(0.04081600159406661987f);

const x_1223 = vec2f(0.08163200318813323975f);

const x_1240 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1243 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1250 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1288 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2344 = vec2u(2u);

const x_2800 = vec3f(1.0f);

const x_3232 = vec3f(0.03999999910593032837f);

const x_4163 = vec2f(2.0f);

const x_4178 = vec3f(0.08163200318813323975f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat28 : vec3f;
  var u_xlat2 : vec3f;
  var x_133 : vec3f;
  var u_xlat83 : f32;
  var u_xlat3 : vec3f;
  var u_xlat84 : f32;
  var u_xlat4 : vec4f;
  var u_xlat31 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlatb5 : vec4<bool>;
  var u_xlat58 : vec2f;
  var u_xlatu58 : u32;
  var u_xlati58 : i32;
  var u_xlat81 : f32;
  var u_xlat86 : f32;
  var u_xlat87 : f32;
  var u_xlat34 : f32;
  var u_xlat88 : f32;
  var u_xlatb8 : vec3<bool>;
  var txVec0 : vec3f;
  var u_xlat9 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb35 : bool;
  var u_xlat35 : vec3f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat63 : vec2f;
  var u_xlat65 : vec2f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var txVec4 : vec3f;
  var u_xlat62 : f32;
  var txVec5 : vec3f;
  var u_xlat89 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat69 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat37 : vec3f;
  var u_xlat19 : vec4f;
  var u_xlat66 : vec2f;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
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
  var x_1858 : f32;
  var u_xlat32 : f32;
  var u_xlat59 : f32;
  var u_xlatb10 : vec3<bool>;
  var x_1993 : f32;
  var x_2004 : vec3f;
  var u_xlatu7 : vec3u;
  var u_xlatu11 : vec2u;
  var u_xlati59 : i32;
  var u_xlatu59 : u32;
  var u_xlat29 : f32;
  var u_xlat1 : vec4f;
  var x_2123 : f32;
  var u_xlatu1 : u32;
  var u_xlatu2 : u32;
  var u_xlati29 : i32;
  var u_xlatu29 : vec2u;
  var u_xlati7 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati62 : vec2i;
  var u_xlati11 : vec3i;
  var u_xlati1 : i32;
  var u_xlati65 : vec2i;
  var u_xlatu92 : u32;
  var u_xlatu89 : u32;
  var u_xlati90 : i32;
  var u_xlatu91 : u32;
  var u_xlatb93 : bool;
  var u_xlatu13 : vec4u;
  var u_xlatb13 : vec3<bool>;
  var u_xlatu93 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
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
  var u_xlati68 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati40 : vec2i;
  var u_xlati67 : i32;
  var u_xlati93 : i32;
  var u_xlatb89 : bool;
  var u_xlati89 : i32;
  var u_xlat93 : f32;
  var u_xlat40 : vec3f;
  var x_2694 : f32;
  var x_2708 : f32;
  var x_2722 : f32;
  var x_2773 : vec3f;
  var u_xlatu94 : u32;
  var u_xlat94 : f32;
  var u_xlat41 : vec3f;
  var u_xlatb68 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_2836 : f32;
  var x_2849 : f32;
  var u_xlat67 : vec2f;
  var u_xlatu67 : u32;
  var u_xlati81 : i32;
  var u_xlat82 : f32;
  var x_3247 : vec3f;
  var u_xlatu81 : u32;
  var u_xlatb29 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlat90 : f32;
  var u_xlatb90 : bool;
  var u_xlati10 : vec4i;
  var x_3419 : i32;
  var u_xlatb11 : vec3<bool>;
  var u_xlat64 : f32;
  var x_3481 : f32;
  var x_3492 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var u_xlatb91 : bool;
  var u_xlat91 : f32;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat38 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat39 : vec3f;
  var u_xlat73 : vec2f;
  var u_xlat68 : vec2f;
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
  var u_xlatb37 : bool;
  var u_xlati37 : vec2i;
  var u_xlati64 : i32;
  var u_xlatb65 : vec2<bool>;
  var x_5108 : f32;
  var x_5121 : f32;
  var x_5179 : f32;
  var x_5190 : vec3f;
  var u_xlati91 : i32;
  var x_5343 : vec3f;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati35 : vec2i;
  var u_xlati9 : vec3i;
  var u_xlati2 : i32;
  var u_xlatu9 : vec2u;
  var u_xlati63 : i32;
  var u_xlatu90 : u32;
  var u_xlati84 : i32;
  var u_xlatb34 : bool;
  var u_xlatu10 : vec4u;
  var u_xlatu34 : u32;
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
  var u_xlati12 : vec4i;
  var u_xlati34 : i32;
  var u_xlat92 : f32;
  var u_xlatb92 : bool;
  var u_xlati92 : i32;
  var x_5836 : i32;
  var u_xlatb12 : vec3<bool>;
  var x_5895 : f32;
  var x_5907 : f32;
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
  var u_xlat42 : vec2f;
  var u_xlat75 : vec2f;
  var u_xlat70 : vec2f;
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
  var u_xlatb39 : bool;
  var u_xlati39 : i32;
  var u_xlati66 : i32;
  var u_xlatb67 : vec2<bool>;
  var x_7517 : f32;
  var x_7530 : f32;
  var x_7585 : f32;
  var x_7596 : vec3f;
  var x_7741 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, u_xlat0.w);
  u_xlatb1 = (x_99.unity_OrthoParams.w == 0.0f);
  u_xlat28 = (-(vs_TEXCOORD0) + x_99.x_WorldSpaceCameraPos);
  u_xlat2.x = x_99.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat2.y = x_99.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat2.z = x_99.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb1) {
    x_133 = u_xlat28;
  } else {
    x_133 = u_xlat2;
  }
  u_xlat28 = x_133;
  u_xlat83 = dot(u_xlat28, u_xlat28);
  u_xlat83 = inverseSqrt(u_xlat83);
  u_xlat3 = (u_xlat28 * vec3f(u_xlat83));
  u_xlat84 = dot(u_xlat0.xyz, u_xlat3);
  u_xlat4.x = min(abs(u_xlat84), 1.0f);
  u_xlat4.x = (-(u_xlat4.x) + 1.0f);
  u_xlat4.x = log2(u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * x_174.x_FresnelPower);
  u_xlat4.x = exp2(u_xlat4.x);
  u_xlat31 = (-(x_174.x_AlphaCenter) + x_174.x_AlphaEdge);
  u_xlat31 = ((u_xlat4.x * u_xlat31) + x_174.x_AlphaCenter);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat8.w);
  u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlatb5 = (u_xlat5 < x_208.x_CascadeShadowSplitSphereRadii);
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb5.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb5.y);
  u_xlat6.z = select(0.0f, 1.0f, u_xlatb5.z);
  u_xlat6.w = select(0.0f, 1.0f, u_xlatb5.w);
  u_xlat5.x = select(-0.0f, -1.0f, u_xlatb5.x);
  u_xlat5.y = select(-0.0f, -1.0f, u_xlatb5.y);
  u_xlat5.z = select(-0.0f, -1.0f, u_xlatb5.z);
  u_xlat5 = vec4f(((u_xlat5.xyz + u_xlat6.yzw)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(u_xlat6.x, max(u_xlat5.xyz, vec3f()).xyz);
  u_xlat58.x = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat58.x = (-(u_xlat58.x) + 4.0f);
  u_xlatu58 = u32(u_xlat58.x);
  u_xlati58 = (bitcast<i32>(u_xlatu58) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati58 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_208.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati58].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati58 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati58 + 3i)].xyz)).xyz, u_xlat5.w);
  u_xlat0.w = 1.0f;
  u_xlat6.x = dot(x_395.unity_SHAr, u_xlat0);
  u_xlat6.y = dot(x_395.unity_SHAg, u_xlat0);
  u_xlat6.z = dot(x_395.unity_SHAb, u_xlat0);
  u_xlat7 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat8.x = dot(x_395.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_395.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_395.unity_SHBb, u_xlat7);
  u_xlat81 = (u_xlat0.y * u_xlat0.y);
  u_xlat81 = ((u_xlat0.x * u_xlat0.x) + -(u_xlat81));
  u_xlat7 = vec4f((((x_395.unity_SHC.xyz * vec3f(u_xlat81)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_473 = x_99.x_ScaledScreenParams.xy;
  u_xlat58 = (x_470 / vec2f(x_473.x, x_473.y));
  u_xlat7 = vec4f(((u_xlat58 * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat81 = ((u_xlat7.y * x_99.x_ScaleBiasRt.x) + x_99.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat81) + 1.0f);
  u_xlat81 = ((-(x_174.x_EdgeDarken) * u_xlat4.x) + 1.0f);
  let x_509 = (vec3f(u_xlat81) * x_174.x_BaseColor.xyz);
  u_xlat4 = vec4f(x_509.x, u_xlat4.y, x_509.yz);
  let x_516 = (vec3f(u_xlat31) * u_xlat4.xzw);
  u_xlat4 = vec4f(x_516.x, u_xlat4.y, x_516.yz);
  u_xlat81 = (-(x_174.x_Smoothness) + 1.0f);
  u_xlat86 = (u_xlat81 * u_xlat81);
  u_xlat86 = max(u_xlat86, 0.0078125f);
  u_xlat87 = (u_xlat86 * u_xlat86);
  u_xlat34 = (x_174.x_Smoothness + 0.04000002145767211914f);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat88 = ((u_xlat86 * 4.0f) + 2.0f);
  let x_549 = (u_xlat4.xzw * vec3f(0.95999997854232788086f));
  u_xlat4 = vec4f(x_549.x, u_xlat4.y, x_549.yz);
  u_xlatb8.x = (0.0f < x_208.x_MainLightShadowParams.y);
  if (u_xlatb8.x) {
    u_xlatb8.x = (x_208.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb8.x) {
      u_xlat8 = (u_xlat5.xyxy + x_208.x_MainLightShadowOffset0);
      let x_580 = u_xlat8.xy;
      txVec0 = vec3f(x_580.x, x_580.y, u_xlat5.z);
      u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_603 = u_xlat8.zw;
      txVec1 = vec3f(x_603.x, x_603.y, u_xlat5.z);
      u_xlat9.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat8 = (u_xlat5.xyxy + x_208.x_MainLightShadowOffset1);
      let x_624 = u_xlat8.xy;
      txVec2 = vec3f(x_624.x, x_624.y, u_xlat5.z);
      u_xlat9.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_639 = u_xlat8.zw;
      txVec3 = vec3f(x_639.x, x_639.y, u_xlat5.z);
      u_xlat9.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat8.x = dot(u_xlat9, x_654);
    } else {
      u_xlatb35 = (x_208.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb35) {
        u_xlat35 = vec3f((((u_xlat5.xy * x_208.x_MainLightShadowmapSize.zw) + x_673)).xy, u_xlat35.z);
        u_xlat35 = vec3f(floor(u_xlat35.xy).xy, u_xlat35.z);
        u_xlat9 = vec4f((((u_xlat5.xy * x_208.x_MainLightShadowmapSize.zw) + -(u_xlat35.xy))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_697);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        u_xlat63 = (u_xlat11.yw * x_709);
        let x_717 = ((u_xlat11.xz * x_673) + -(u_xlat9.xy));
        u_xlat10 = vec4f(x_717.x, u_xlat10.y, x_717.y, u_xlat10.w);
        u_xlat11 = vec4f(((-(u_xlat9.xy) + x_470)).xy, u_xlat11.zw);
        u_xlat65 = min(u_xlat9.xy, vec2f());
        u_xlat65 = ((-(u_xlat65) * u_xlat65) + u_xlat11.xy);
        u_xlat9 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat9.zw);
        u_xlat9 = vec4f((((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat10.yw)).xy, u_xlat9.zw);
        u_xlat65 = (u_xlat65 + x_470);
        u_xlat9 = vec4f(((u_xlat9.xy + x_470)).xy, u_xlat9.zw);
        u_xlat12 = vec4f(((u_xlat10.xz * x_765)).xy, u_xlat12.zw);
        u_xlat13 = vec4f(((u_xlat11.xy * x_765)).xy, u_xlat13.zw);
        u_xlat11 = vec4f(((u_xlat65 * x_765)).xy, u_xlat11.zw);
        u_xlat14 = vec4f(((u_xlat9.xy * x_765)).xy, u_xlat14.zw);
        u_xlat9 = vec4f(((u_xlat10.yw * x_765)).xy, u_xlat9.zw);
        u_xlat12.z = u_xlat11.x;
        u_xlat12.w = u_xlat9.x;
        u_xlat13.z = u_xlat14.x;
        u_xlat13.w = u_xlat63.x;
        u_xlat10 = (u_xlat12.zwxz + u_xlat13.zwxz);
        u_xlat11.z = u_xlat12.y;
        u_xlat11.w = u_xlat9.y;
        u_xlat14.z = u_xlat13.y;
        u_xlat14.w = u_xlat63.y;
        u_xlat9 = vec4f(((u_xlat11.zyw + u_xlat14.zyw)).xyz, u_xlat9.w);
        u_xlat11 = vec4f(((u_xlat13.xzw / u_xlat10.zwy)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_838)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat14.zyw / u_xlat9.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_838)).xyz, u_xlat12.w);
        u_xlat11 = vec4f(((u_xlat11.yxz * x_208.x_MainLightShadowmapSize.xxx)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_208.x_MainLightShadowmapSize.yyy)).xyz, u_xlat12.w);
        u_xlat11.w = u_xlat12.x;
        u_xlat13 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat11.ywxw);
        u_xlat14 = vec4f((((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat11.zw)).xy, u_xlat14.zw);
        u_xlat12.w = u_xlat11.y;
        let x_897 = u_xlat12.yz;
        u_xlat11 = vec4f(u_xlat11.x, x_897.x, u_xlat11.z, x_897.y);
        u_xlat15 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat12 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat12.wywz);
        u_xlat11 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat11.xwzw);
        u_xlat16 = (u_xlat9.xxxy * u_xlat10.zwyz);
        u_xlat17 = (u_xlat9.yyzz * u_xlat10);
        u_xlat35.x = (u_xlat9.z * u_xlat10.y);
        let x_947 = u_xlat13.xy;
        txVec4 = vec3f(x_947.x, x_947.y, u_xlat5.z);
        u_xlat62 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_962 = u_xlat13.zw;
        txVec5 = vec3f(x_962.x, x_962.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat89 = (u_xlat89 * u_xlat16.y);
        u_xlat62 = ((u_xlat16.x * u_xlat62) + u_xlat89);
        let x_987 = u_xlat14.xy;
        txVec6 = vec3f(x_987.x, x_987.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat62 = ((u_xlat16.z * u_xlat89) + u_xlat62);
        let x_1007 = u_xlat12.xy;
        txVec7 = vec3f(x_1007.x, x_1007.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat62 = ((u_xlat16.w * u_xlat89) + u_xlat62);
        let x_1027 = u_xlat15.xy;
        txVec8 = vec3f(x_1027.x, x_1027.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat62 = ((u_xlat17.x * u_xlat89) + u_xlat62);
        let x_1047 = u_xlat15.zw;
        txVec9 = vec3f(x_1047.x, x_1047.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat62 = ((u_xlat17.y * u_xlat89) + u_xlat62);
        let x_1067 = u_xlat12.zw;
        txVec10 = vec3f(x_1067.x, x_1067.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat62 = ((u_xlat17.z * u_xlat89) + u_xlat62);
        let x_1087 = u_xlat11.xy;
        txVec11 = vec3f(x_1087.x, x_1087.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat62 = ((u_xlat17.w * u_xlat89) + u_xlat62);
        let x_1107 = u_xlat11.zw;
        txVec12 = vec3f(x_1107.x, x_1107.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat8.x = ((u_xlat35.x * u_xlat89) + u_xlat62);
      } else {
        u_xlat35 = vec3f((((u_xlat5.xy * x_208.x_MainLightShadowmapSize.zw) + x_673)).xy, u_xlat35.z);
        u_xlat35 = vec3f(floor(u_xlat35.xy).xy, u_xlat35.z);
        u_xlat9 = vec4f((((u_xlat5.xy * x_208.x_MainLightShadowmapSize.zw) + -(u_xlat35.xy))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_697);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        let x_1165 = (u_xlat11.yw * x_1164);
        u_xlat12 = vec4f(u_xlat12.x, x_1165.x, u_xlat12.z, x_1165.y);
        u_xlat63 = ((u_xlat11.xz * x_673) + -(u_xlat9.xy));
        let x_1178 = (-(u_xlat9.xy) + x_470);
        u_xlat10 = vec4f(x_1178.x, u_xlat10.y, x_1178.y, u_xlat10.w);
        u_xlat11 = vec4f(min(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_1194 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.xz);
        u_xlat10 = vec4f(x_1194.x, u_xlat10.y, x_1194.y, u_xlat10.w);
        u_xlat11 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_1210 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.yw);
        u_xlat10 = vec4f(u_xlat10.x, x_1210.x, u_xlat10.z, x_1210.y);
        u_xlat10 = (u_xlat10 + vec4f(2.0f));
        u_xlat11.z = (u_xlat10.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat63.yx * x_1223)).xy, u_xlat13.zw);
        u_xlat63 = (u_xlat10.xz * x_1223);
        u_xlat13.z = (u_xlat10.w * 0.08163200318813323975f);
        u_xlat11.x = u_xlat13.y;
        let x_1244 = ((u_xlat9.xx * x_1240) + x_1243);
        u_xlat11 = vec4f(u_xlat11.x, x_1244.x, u_xlat11.z, x_1244.y);
        let x_1251 = ((u_xlat9.xx * x_1240) + x_1250);
        u_xlat10 = vec4f(x_1251.x, u_xlat10.y, x_1251.y, u_xlat10.w);
        u_xlat10.y = u_xlat63.x;
        u_xlat10.w = u_xlat12.y;
        u_xlat11 = (u_xlat10 + u_xlat11);
        let x_1266 = ((u_xlat9.yy * x_1240) + x_1243);
        u_xlat13 = vec4f(u_xlat13.x, x_1266.x, u_xlat13.z, x_1266.y);
        let x_1272 = ((u_xlat9.yy * x_1240) + x_1250);
        u_xlat12 = vec4f(x_1272.x, u_xlat12.y, x_1272.y, u_xlat12.w);
        u_xlat12.y = u_xlat63.y;
        u_xlat9 = (u_xlat12 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat11);
        u_xlat10 = (u_xlat10 + x_1288);
        u_xlat12 = (u_xlat12 / u_xlat9);
        u_xlat12 = (u_xlat12 + x_1288);
        u_xlat10 = (u_xlat10.wxyz * x_208.x_MainLightShadowmapSize.xxxx);
        u_xlat12 = (u_xlat12.xwyz * x_208.x_MainLightShadowmapSize.yyyy);
        let x_1308 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_1308.x, u_xlat13.y, x_1308.yz);
        u_xlat13.y = u_xlat12.x;
        u_xlat14 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat15 = vec4f((((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat15.zw);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat12.z;
        u_xlat16 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat69 = ((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat12.w;
        u_xlat18 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat37 = vec3f((((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat37.z);
        u_xlat10.w = u_xlat13.y;
        u_xlat19 = vec4f((((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat10.xw)).xy, u_xlat19.zw);
        let x_1412 = u_xlat13.xzw;
        u_xlat12 = vec4f(x_1412.x, u_xlat12.y, x_1412.yz);
        u_xlat13 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat66 = ((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat12.x = u_xlat10.x;
        u_xlat35 = vec3f((((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat12.xy)).xy, u_xlat35.z);
        u_xlat20 = (u_xlat9.xxxx * u_xlat11);
        u_xlat21 = (u_xlat9.yyyy * u_xlat11);
        u_xlat22 = (u_xlat9.zzzz * u_xlat11);
        u_xlat9 = (u_xlat9.wwww * u_xlat11);
        let x_1469 = u_xlat14.xy;
        txVec13 = vec3f(x_1469.x, x_1469.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1483 = u_xlat14.zw;
        txVec14 = vec3f(x_1483.x, x_1483.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat10.x = (u_xlat10.x * u_xlat20.y);
        u_xlat89 = ((u_xlat20.x * u_xlat89) + u_xlat10.x);
        let x_1511 = u_xlat15.xy;
        txVec15 = vec3f(x_1511.x, x_1511.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat89 = ((u_xlat20.z * u_xlat10.x) + u_xlat89);
        let x_1533 = u_xlat17.xy;
        txVec16 = vec3f(x_1533.x, x_1533.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat89 = ((u_xlat20.w * u_xlat10.x) + u_xlat89);
        let x_1555 = u_xlat16.xy;
        txVec17 = vec3f(x_1555.x, x_1555.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat89 = ((u_xlat21.x * u_xlat10.x) + u_xlat89);
        let x_1577 = u_xlat16.zw;
        txVec18 = vec3f(x_1577.x, x_1577.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat89 = ((u_xlat21.y * u_xlat10.x) + u_xlat89);
        txVec19 = vec3f(u_xlat69.x, u_xlat69.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat89 = ((u_xlat21.z * u_xlat10.x) + u_xlat89);
        let x_1620 = u_xlat17.zw;
        txVec20 = vec3f(x_1620.x, x_1620.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat89 = ((u_xlat21.w * u_xlat10.x) + u_xlat89);
        let x_1642 = u_xlat18.xy;
        txVec21 = vec3f(x_1642.x, x_1642.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat89 = ((u_xlat22.x * u_xlat10.x) + u_xlat89);
        let x_1664 = u_xlat18.zw;
        txVec22 = vec3f(x_1664.x, x_1664.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat89 = ((u_xlat22.y * u_xlat10.x) + u_xlat89);
        let x_1686 = u_xlat37.xy;
        txVec23 = vec3f(x_1686.x, x_1686.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat89 = ((u_xlat22.z * u_xlat10.x) + u_xlat89);
        let x_1708 = u_xlat19.xy;
        txVec24 = vec3f(x_1708.x, x_1708.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat89 = ((u_xlat22.w * u_xlat10.x) + u_xlat89);
        let x_1730 = u_xlat13.xy;
        txVec25 = vec3f(x_1730.x, x_1730.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat89 = ((u_xlat9.x * u_xlat10.x) + u_xlat89);
        let x_1752 = u_xlat13.zw;
        txVec26 = vec3f(x_1752.x, x_1752.y, u_xlat5.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat89 = ((u_xlat9.y * u_xlat9.x) + u_xlat89);
        txVec27 = vec3f(u_xlat66.x, u_xlat66.y, u_xlat5.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat89 = ((u_xlat9.z * u_xlat9.x) + u_xlat89);
        let x_1795 = u_xlat35.xy;
        txVec28 = vec3f(x_1795.x, x_1795.y, u_xlat5.z);
        u_xlat35.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat8.x = ((u_xlat9.w * u_xlat35.x) + u_xlat89);
      }
    }
  } else {
    let x_1819 = u_xlat5.xy;
    txVec29 = vec3f(x_1819.x, x_1819.y, u_xlat5.z);
    u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat5.x = (-(x_208.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat8.x * x_208.x_MainLightShadowParams.x) + u_xlat5.x);
  u_xlatb32 = (0.0f >= u_xlat5.z);
  u_xlatb59 = (u_xlat5.z >= 1.0f);
  u_xlatb32 = (u_xlatb59 | u_xlatb32);
  if (u_xlatb32) {
    x_1858 = 1.0f;
  } else {
    x_1858 = u_xlat5.x;
  }
  u_xlat5.x = x_1858;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_99.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat32 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat59 = ((u_xlat32 * x_208.x_MainLightShadowParams.z) + x_208.x_MainLightShadowParams.w);
  u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
  u_xlat89 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat59 * u_xlat89) + u_xlat5.x);
  u_xlatb59 = !((x_1906.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb59) {
    u_xlat9 = vec4f(((vs_TEXCOORD0.yy * x_1906.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((x_1906.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD0.xx) + u_xlat9.xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((x_1906.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD0.zz) + u_xlat9.xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f(((u_xlat9.xy + x_1906.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((u_xlat9.xy * x_673) + x_673)).xy, u_xlat9.zw);
    let x_1965 = u_xlat9;
    let x_1968 = x_99.x_GlobalMipBias.x;
    let x_1969 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1965.xy, x_1968);
    u_xlat9 = x_1969;
    let x_1979 = vec4f(x_1906.x_MainLightCookieTextureFormat, x_1906.x_MainLightCookieTextureFormat, x_1906.x_MainLightCookieTextureFormat, x_1906.x_MainLightCookieTextureFormat);
    u_xlatb10 = vec3<bool>(((vec4f(x_1979.x, x_1979.y, x_1979.z, x_1979.w) == vec4f(0.0f, 1.0f, 0.0f, 0.0f))).xy.xy, u_xlatb10.z);
    if (u_xlatb10.y) {
      x_1993 = u_xlat9.w;
    } else {
      x_1993 = u_xlat9.x;
    }
    u_xlat59 = x_1993;
    if (u_xlatb10.x) {
      x_2004 = u_xlat9.xyz;
    } else {
      x_2004 = vec3f(u_xlat59);
    }
    u_xlat9 = vec4f(x_2004.xyz, u_xlat9.w);
  } else {
    u_xlat9.x = 1.0f;
    u_xlat9.y = 1.0f;
    u_xlat9.z = 1.0f;
  }
  u_xlat9 = vec4f(((u_xlat9.xyz * x_99.x_MainLightColor.xyz)).xyz, u_xlat9.w);
  u_xlat59 = dot(-(u_xlat3), u_xlat0.xyz);
  u_xlat59 = (u_xlat59 + u_xlat59);
  u_xlat10 = vec4f((((u_xlat0.xyz * -(vec3f(u_xlat59))) + -(u_xlat3))).xyz, u_xlat10.w);
  u_xlat84 = u_xlat84;
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat84 = (-(u_xlat84) + 1.0f);
  u_xlat84 = (u_xlat84 * u_xlat84);
  u_xlat84 = (u_xlat84 * u_xlat84);
  u_xlat59 = ((-(u_xlat81) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat81 = (u_xlat81 * u_xlat59);
  u_xlat81 = (u_xlat81 * 6.0f);
  let x_2075 = (u_xlat7.xz * x_99.x_FPParams1.xy);
  u_xlat7 = vec4f(x_2075.x, u_xlat7.y, x_2075.y, u_xlat7.w);
  let x_2084 = vec2u(u_xlat7.xz);
  u_xlatu7 = vec3u(x_2084.x, u_xlatu7.y, x_2084.y);
  u_xlatu11 = vec2u(x_99.x_FPParams1.zw);
  u_xlati59 = ((bitcast<i32>(u_xlatu7.z) * bitcast<i32>(u_xlatu11.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu59 = (u_xlatu11.y * bitcast<u32>(u_xlati59));
  u_xlat2.x = dot(-(u_xlat2), u_xlat8.xyz);
  u_xlat29 = log2(u_xlat2.x);
  if (u_xlatb1) {
    x_2123 = u_xlat29;
  } else {
    x_2123 = u_xlat2.x;
  }
  u_xlat1.x = x_2123;
  u_xlat1.x = ((u_xlat1.x * x_99.x_FPParams0.x) + x_99.x_FPParams0.y);
  u_xlatu1 = u32(u_xlat1.x);
  u_xlatu2 = u32(x_99.x_FPParams2.x);
  u_xlatu2 = (u_xlatu2 + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu11.y) + 2i);
  u_xlatu1 = min(u_xlatu1, u_xlatu2);
  u_xlatu2 = (bitcast<u32>(u_xlati29) * u_xlatu1);
  u_xlatu29 = ((vec2u(u_xlatu1) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu1 = (u_xlatu29.x >> 2u);
  param = bitcast<i32>(u_xlatu29.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2185 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu29.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2192 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_2194 = vec2i(x_2185, x_2192);
  u_xlati7 = vec3i(x_2194.x, u_xlati7.y, x_2194.y);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2206.urp_ZBins[bitcast<i32>(u_xlatu1)].wy)));
  u_xlati62 = ~(u_xlati7.xz);
  u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati62.xx) & bitcast<vec2u>(x_2206.urp_ZBins[bitcast<i32>(u_xlatu1)].zx))).xy, u_xlati11.z);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8) | bitcast<vec2u>(u_xlati11.xy)));
  u_xlati1 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati29 = bitcast<i32>((bitcast<u32>(u_xlati62.y) & bitcast<u32>(u_xlati8.y)));
  u_xlatu1 = (bitcast<u32>(u_xlati1) | bitcast<u32>(u_xlati29));
  let x_2265 = vec2u(x_99.x_FPParams0.zw);
  u_xlatu7 = vec3u(x_2265.x, u_xlatu7.y, x_2265.y);
  u_xlatb8 = ((vec4f() < u_xlat10.xyzx)).xyz;
  u_xlatu11.x = u_xlatu59;
  u_xlatu11.y = u_xlatu29.y;
  u_xlati65.x = 0i;
  u_xlatu92 = u_xlatu1;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat29 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu89 = (u_xlatu92 >> 16u);
    u_xlati90 = u_xlati65.x;
    u_xlatu91 = u_xlatu92;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb93 = (u_xlati90 == 0i);
      u_xlatu13.x = (u_xlatu91 & 65535u);
      u_xlatb13.x = (u_xlatu89 >= u_xlatu13.x);
      u_xlatb93 = (u_xlatb93 & u_xlatb13.x);
      if (!(u_xlatb93)) {
        break;
      }
      param_6 = u_xlatu91;
      param_7 = 5i;
      param_8 = 11i;
      let x_2335 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu93 = x_2335;
      u_xlatu13 = (u_xlatu11.xxyy + vec4u(u_xlatu93));
      u_xlatu14 = (u_xlatu13.yw >> x_2344);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2355 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2362 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2369 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2376 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_2355, x_2362, x_2369, x_2376);
      u_xlati68 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2385.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2385.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_2417 = bitcast<vec2i>((bitcast<vec2u>(u_xlati68) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_2417.x, u_xlati14.y, x_2417.y);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati40.x) | bitcast<u32>(u_xlati13.x)));
      u_xlati40 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2206.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy)));
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_2206.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati40 = bitcast<vec2i>((bitcast<vec2u>(u_xlati40) | bitcast<vec2u>(u_xlati14.xy)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati40.x)));
      u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati40.y)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati67) | bitcast<u32>(u_xlati40.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati40.x) & bitcast<u32>(u_xlati13.x)));
      u_xlati40.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu91) & 31i)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati40.x) & bitcast<u32>(u_xlati13.x)));
      u_xlati93 = (bitcast<i32>(u_xlatu93) << bitcast<u32>(5i));
      u_xlatu93 = (u_xlatu89 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati93)))));
      u_xlatu93 = min(u_xlatu93, 31u);
      u_xlatu93 = (bitcast<u32>(-(bitcast<i32>(u_xlatu93))) + 31u);
      u_xlatu93 = (4294967295u >> (u_xlatu93 & 31u));
      u_xlati90 = bitcast<i32>((u_xlatu93 & bitcast<u32>(u_xlati13.x)));
      u_xlati93 = (bitcast<i32>(u_xlatu91) + 32i);
      u_xlatu91 = (bitcast<u32>(u_xlati93) & 4294967264u);
    }
    u_xlatu92 = u_xlatu91;
    u_xlatb89 = (u_xlati90 != 0i);
    u_xlatb93 = (u_xlat29 < 0.99000000953674316406f);
    u_xlatb89 = (u_xlatb89 & u_xlatb93);
    if (!(u_xlatb89)) {
      break;
    }
    u_xlati89 = (0i - u_xlati90);
    u_xlatu89 = (bitcast<u32>(u_xlati89) & bitcast<u32>(u_xlati90));
    u_xlat89 = f32(u_xlatu89);
    u_xlatu89 = (bitcast<u32>(u_xlat89) >> 23u);
    u_xlati89 = (bitcast<i32>(u_xlatu89) + -127i);
    u_xlati93 = (1i << bitcast<u32>((u_xlati89 & 31i)));
    u_xlati65.x = bitcast<i32>((bitcast<u32>(u_xlati90) ^ bitcast<u32>(u_xlati93)));
    u_xlati93 = (bitcast<i32>(u_xlatu92) + -32i);
    u_xlati93 = bitcast<i32>((bitcast<u32>(u_xlati93) & 65504u));
    u_xlati89 = (u_xlati89 + u_xlati93);
    u_xlati89 = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati89);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_2632.urp_ReflProbes_BoxMin[u_xlati89].xyz))).xyz, u_xlat13.w);
    u_xlat14 = vec4f(((-(vs_TEXCOORD0) + x_2632.urp_ReflProbes_BoxMax[u_xlati89].xyz)).xyz, u_xlat14.w);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14.xyz).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_2632.urp_ReflProbes_BoxMax[u_xlati89].www)).xyz, u_xlat13.w);
    u_xlat93 = min(u_xlat13.z, u_xlat13.y);
    u_xlat93 = min(u_xlat93, u_xlat13.x);
    u_xlat93 = clamp(u_xlat93, 0.0f, 1.0f);
    u_xlat13.x = (-(u_xlat29) + 1.0f);
    u_xlat93 = min(u_xlat93, u_xlat13.x);
    u_xlatb13.x = (0.0f < x_2632.urp_ReflProbes_ProbePosition[u_xlati89].w);
    if (u_xlatb8.x) {
      x_2694 = x_2632.urp_ReflProbes_BoxMax[u_xlati89].x;
    } else {
      x_2694 = x_2632.urp_ReflProbes_BoxMin[u_xlati89].x;
    }
    u_xlat40.x = x_2694;
    if (u_xlatb8.y) {
      x_2708 = x_2632.urp_ReflProbes_BoxMax[u_xlati89].y;
    } else {
      x_2708 = x_2632.urp_ReflProbes_BoxMin[u_xlati89].y;
    }
    u_xlat40.y = x_2708;
    if (u_xlatb8.z) {
      x_2722 = x_2632.urp_ReflProbes_BoxMax[u_xlati89].z;
    } else {
      x_2722 = x_2632.urp_ReflProbes_BoxMin[u_xlati89].z;
    }
    u_xlat40.z = x_2722;
    u_xlat40 = (u_xlat40 + -(vs_TEXCOORD0));
    u_xlat40 = (u_xlat40 / u_xlat10.xyz);
    u_xlat40.x = min(u_xlat40.y, u_xlat40.x);
    u_xlat40.x = min(u_xlat40.z, u_xlat40.x);
    u_xlat14 = vec4f(((vs_TEXCOORD0 + -(x_2632.urp_ReflProbes_ProbePosition[u_xlati89].xyz))).xyz, u_xlat14.w);
    u_xlat40 = ((u_xlat10.xyz * u_xlat40.xxx) + u_xlat14.xyz);
    if (u_xlatb13.x) {
      x_2773 = u_xlat40;
    } else {
      x_2773 = u_xlat10.xyz;
    }
    u_xlat13 = vec4f(x_2773.xyz, u_xlat13.w);
    u_xlatu94 = u32(abs(x_2632.urp_ReflProbes_ProbePosition[u_xlati89].w));
    u_xlatu94 = (u_xlatu94 + 4294967295u);
    u_xlat94 = f32(u_xlatu94);
    u_xlat94 = min(u_xlat81, u_xlat94);
    u_xlat14.x = dot(abs(u_xlat13.xyz), x_2800);
    u_xlat14.x = max(u_xlat14.x, 0.00000099999999747524f);
    u_xlat14.x = (1.0f / u_xlat14.x);
    u_xlat41 = (u_xlat13.zxy * u_xlat14.xxx);
    u_xlat41.x = -(u_xlat41.x);
    u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
    u_xlatb68 = ((u_xlat41.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat41;
    if (u_xlatb68.x) {
      x_2836 = u_xlat41.x;
    } else {
      x_2836 = -(u_xlat41.x);
    }
    hlslcc_movcTemp.x = x_2836;
    if (u_xlatb68.y) {
      x_2849 = u_xlat41.x;
    } else {
      x_2849 = -(u_xlat41.x);
    }
    hlslcc_movcTemp.y = x_2849;
    u_xlat41 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * u_xlat14.xx) + u_xlat41.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_673) + x_673)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat67.x = floor(u_xlat94);
    u_xlat14.x = (u_xlat67.x + 1.0f);
    u_xlat94 = (-(u_xlat67.x) + u_xlat94);
    u_xlatu67 = u32(u_xlat67.x);
    u_xlati67 = ((u_xlati89 * 7i) + bitcast<i32>(u_xlatu67));
    u_xlatu14.x = u32(u_xlat14.x);
    u_xlati89 = ((u_xlati89 * 7i) + bitcast<i32>(u_xlatu14.x));
    u_xlat14 = vec4f((((u_xlat13.xy * x_2632.urp_ReflProbes_MipScaleOffset[u_xlati67].xy) + x_2632.urp_ReflProbes_MipScaleOffset[u_xlati67].zw)).xy, u_xlat14.zw);
    u_xlat14 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat14.xy, 0.0f).xyz.xyz, u_xlat14.w);
    u_xlat13 = vec4f((((u_xlat13.xy * x_2632.urp_ReflProbes_MipScaleOffset[u_xlati89].xy) + x_2632.urp_ReflProbes_MipScaleOffset[u_xlati89].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat94) * u_xlat13.xyz) + u_xlat14.xyz)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((vec3f(u_xlat93) * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat29 = (u_xlat29 + u_xlat93);
  }
  u_xlatb1 = (u_xlat29 < 0.99000000953674316406f);
  if (u_xlatb1) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xyz, u_xlat81);
    u_xlat81 = (-(u_xlat29) + 1.0f);
    u_xlat1.x = (u_xlat8.w + -1.0f);
    u_xlat1.x = ((x_99.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_99.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_99.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat1.xxx)).xyz, u_xlat8.w);
    u_xlat12 = vec4f((((vec3f(u_xlat81) * u_xlat8.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat8 = vec4f((((vec2f(u_xlat86) * vec2f(u_xlat86)) + vec2f(-1.0f, 1.0f))).xy, u_xlat8.zw);
  u_xlat81 = (1.0f / u_xlat8.y);
  u_xlat1.x = (u_xlat34 + -0.03999999910593032837f);
  u_xlat1.x = ((u_xlat84 * u_xlat1.x) + 0.03999999910593032837f);
  u_xlat81 = (u_xlat81 * u_xlat1.x);
  u_xlat35 = (vec3f(u_xlat81) * u_xlat12.xyz);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat4.xzw) + u_xlat35)).xyz, u_xlat6.w);
  u_xlati81 = bitcast<i32>((x_99.x_MainLightLayerMask & bitcast<u32>(x_395.unity_RenderingLayer.x)));
  u_xlat1.x = dot(u_xlat0.xyz, x_99.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat5.x);
  u_xlat35 = (u_xlat1.xxx * u_xlat9.xyz);
  u_xlat1 = vec4f((((u_xlat28 * vec3f(u_xlat83)) + x_99.x_MainLightPosition.xyz)).xyz, u_xlat1.w);
  u_xlat82 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat82 = max(u_xlat82, 1.17549435e-38f);
  u_xlat82 = inverseSqrt(u_xlat82);
  u_xlat1 = vec4f(((vec3f(u_xlat82) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.w = dot(u_xlat0.xyz, u_xlat1.xyz);
  u_xlat1.w = clamp(u_xlat1.w, 0.0f, 1.0f);
  u_xlat1.x = dot(x_99.x_MainLightPosition.xyz, u_xlat1.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xw * u_xlat1.xw)).xy, u_xlat1.zw);
  u_xlat28.x = ((u_xlat1.y * u_xlat8.x) + 1.00001001358032226562f);
  u_xlat28.x = (u_xlat28.x * u_xlat28.x);
  u_xlat1.x = max(u_xlat1.x, 0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * u_xlat28.x);
  u_xlat1.x = (u_xlat88 * u_xlat1.x);
  u_xlat1.x = (u_xlat87 / u_xlat1.x);
  u_xlat1 = vec4f((((u_xlat1.xxx * x_3232) + u_xlat4.xzw)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat35 * u_xlat1.xyz)).xyz, u_xlat1.w);
  if ((u_xlati81 != 0i)) {
    x_3247 = u_xlat1.xyz;
  } else {
    x_3247 = vec3f();
  }
  u_xlat1 = vec4f(x_3247.xyz, u_xlat1.w);
  u_xlatu81 = min(u_xlatu7.z, 32u);
  u_xlat82 = ((u_xlat32 * x_208.x_AdditionalShadowFadeParams.x) + x_208.x_AdditionalShadowFadeParams.y);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  let x_3278 = vec4f(x_1906.x_AdditionalLightsCookieAtlasTextureFormat, x_1906.x_AdditionalLightsCookieAtlasTextureFormat, x_1906.x_AdditionalLightsCookieAtlasTextureFormat, x_1906.x_AdditionalLightsCookieAtlasTextureFormat);
  let x_3286 = ((vec4f(x_3278.x, x_3278.y, x_3278.z, x_3278.w) == vec4f(0.0f, 0.0f, 1.0f, 1.0f))).xz;
  u_xlatb29 = vec3<bool>(x_3286.x, u_xlatb29.y, x_3286.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu81)) {
    } else {
      break;
    }
    u_xlat35 = ((-(vs_TEXCOORD0) * x_3311.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3311.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat7.x = dot(u_xlat35, u_xlat35);
    u_xlat7.x = max(u_xlat7.x, 0.00006103515625f);
    u_xlat34 = inverseSqrt(u_xlat7.x);
    u_xlat9 = vec4f(((vec3f(u_xlat34) * u_xlat35)).xyz, u_xlat9.w);
    u_xlat90 = (1.0f / u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_3311.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat7.x = ((-(u_xlat7.x) * u_xlat7.x) + 1.0f);
    u_xlat7.x = max(u_xlat7.x, 0.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat90);
    u_xlat90 = dot(x_3311.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9.xyz);
    u_xlat90 = ((u_xlat90 * x_3311.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3311.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat90 = clamp(u_xlat90, 0.0f, 1.0f);
    u_xlat90 = (u_xlat90 * u_xlat90);
    u_xlat7.x = (u_xlat7.x * u_xlat90);
    u_xlatb90 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati10.x = i32(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    if (u_xlatb90) {
      x_3419 = -1i;
    } else {
      x_3419 = u_xlati10.x;
    }
    u_xlati90 = x_3419;
    u_xlatb10.x = (u_xlati90 >= 0i);
    if (u_xlatb10.x) {
      u_xlatb10.x = any(!((vec4f() == vec4f(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb10.x) {
        u_xlatb10 = ((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz;
        u_xlatb10.x = (u_xlatb10.y & u_xlatb10.x);
        u_xlatb11 = ((-(u_xlat9.zyxz) < vec4f())).xyz;
        u_xlat37.x = select(4.0f, 5.0f, u_xlatb11.x);
        u_xlat37.z = select(2.0f, 3.0f, u_xlatb11.y);
        u_xlat11.x = select(0.0f, 1.0f, u_xlatb11.z);
        if (u_xlatb10.z) {
          x_3481 = u_xlat37.z;
        } else {
          x_3481 = u_xlat11.x;
        }
        u_xlat64 = x_3481;
        if (u_xlatb10.x) {
          x_3492 = u_xlat37.x;
        } else {
          x_3492 = u_xlat64;
        }
        u_xlat10.x = x_3492;
        u_xlati10.x = i32(u_xlat10.x);
        u_xlati90 = (u_xlati90 + u_xlati10.x);
      }
      u_xlati90 = (u_xlati90 << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati90 + 1i)]);
      u_xlat10 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati90] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati90 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati90 + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      u_xlatb90 = (0.0f < x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb90) {
        u_xlatb90 = (1.0f == x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb90) {
          u_xlat11 = (u_xlat10.xyxy + x_208.x_AdditionalShadowOffset0);
          let x_3572 = u_xlat11.xy;
          txVec30 = vec3f(x_3572.x, x_3572.y, u_xlat10.z);
          u_xlat12.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_3588 = u_xlat11.zw;
          txVec31 = vec3f(x_3588.x, x_3588.y, u_xlat10.z);
          u_xlat12.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat11 = (u_xlat10.xyxy + x_208.x_AdditionalShadowOffset1);
          let x_3608 = u_xlat11.xy;
          txVec32 = vec3f(x_3608.x, x_3608.y, u_xlat10.z);
          u_xlat12.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_3623 = u_xlat11.zw;
          txVec33 = vec3f(x_3623.x, x_3623.y, u_xlat10.z);
          u_xlat12.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat90 = dot(u_xlat12, x_654);
        } else {
          u_xlatb91 = (2.0f == x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb91) {
            u_xlat11 = vec4f((((u_xlat10.xy * x_208.x_AdditionalShadowmapSize.zw) + x_673)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_208.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_697);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_3683 = (u_xlat13.yw * x_709);
            u_xlat12 = vec4f(x_3683.x, u_xlat12.y, x_3683.y, u_xlat12.w);
            u_xlat13 = vec4f((((u_xlat13.xz * x_673) + -(u_xlat65))).xy, u_xlat13.zw);
            u_xlat67 = (-(u_xlat65) + x_470);
            u_xlat14 = vec4f(min(u_xlat65, vec2f()).xy, u_xlat14.zw);
            u_xlat14 = vec4f((((-(u_xlat14.xy) * u_xlat14.xy) + u_xlat67)).xy, u_xlat14.zw);
            u_xlat65 = max(u_xlat65, vec2f());
            u_xlat65 = ((-(u_xlat65) * u_xlat65) + u_xlat12.yw);
            u_xlat14 = vec4f(((u_xlat14.xy + x_470)).xy, u_xlat14.zw);
            u_xlat65 = (u_xlat65 + x_470);
            u_xlat15 = vec4f(((u_xlat13.xy * x_765)).xy, u_xlat15.zw);
            u_xlat13 = vec4f(((u_xlat67 * x_765)).xy, u_xlat13.zw);
            u_xlat14 = vec4f(((u_xlat14.xy * x_765)).xy, u_xlat14.zw);
            u_xlat16 = vec4f(((u_xlat65 * x_765)).xy, u_xlat16.zw);
            u_xlat65 = (u_xlat12.yw * x_765);
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
            u_xlat13 = vec4f(((u_xlat13.xyz + x_838)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat16.zyw / u_xlat12.xyz)).xyz, u_xlat14.w);
            u_xlat14 = vec4f(((u_xlat14.xyz + x_838)).xyz, u_xlat14.w);
            u_xlat13 = vec4f(((u_xlat13.yxz * x_208.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat14.xyz * x_208.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat14.w);
            u_xlat13.w = u_xlat14.x;
            u_xlat15 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat13.ywxw);
            u_xlat65 = ((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat13.zw);
            u_xlat14.w = u_xlat13.y;
            let x_3849 = u_xlat14.yz;
            u_xlat13 = vec4f(u_xlat13.x, x_3849.x, u_xlat13.z, x_3849.y);
            u_xlat16 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyzy);
            u_xlat14 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat14.wywz);
            u_xlat13 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xwzw);
            u_xlat18 = (u_xlat12.xxxy * u_xlat17.zwyz);
            u_xlat19 = (u_xlat12.yyzz * u_xlat17);
            u_xlat91 = (u_xlat12.z * u_xlat17.y);
            let x_3896 = u_xlat15.xy;
            txVec34 = vec3f(x_3896.x, x_3896.y, u_xlat10.z);
            u_xlat11.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_3911 = u_xlat15.zw;
            txVec35 = vec3f(x_3911.x, x_3911.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat38 = (u_xlat38 * u_xlat18.y);
            u_xlat11.x = ((u_xlat18.x * u_xlat11.x) + u_xlat38);
            txVec36 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat11.x = ((u_xlat18.z * u_xlat38) + u_xlat11.x);
            let x_3959 = u_xlat14.xy;
            txVec37 = vec3f(x_3959.x, x_3959.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat11.x = ((u_xlat18.w * u_xlat38) + u_xlat11.x);
            let x_3981 = u_xlat16.xy;
            txVec38 = vec3f(x_3981.x, x_3981.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat11.x = ((u_xlat19.x * u_xlat38) + u_xlat11.x);
            let x_4003 = u_xlat16.zw;
            txVec39 = vec3f(x_4003.x, x_4003.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat11.x = ((u_xlat19.y * u_xlat38) + u_xlat11.x);
            let x_4025 = u_xlat14.zw;
            txVec40 = vec3f(x_4025.x, x_4025.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat11.x = ((u_xlat19.z * u_xlat38) + u_xlat11.x);
            let x_4047 = u_xlat13.xy;
            txVec41 = vec3f(x_4047.x, x_4047.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat11.x = ((u_xlat19.w * u_xlat38) + u_xlat11.x);
            let x_4069 = u_xlat13.zw;
            txVec42 = vec3f(x_4069.x, x_4069.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat90 = ((u_xlat91 * u_xlat38) + u_xlat11.x);
          } else {
            u_xlat11 = vec4f((((u_xlat10.xy * x_208.x_AdditionalShadowmapSize.zw) + x_673)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_208.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_697);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_4122 = (u_xlat13.yw * x_1164);
            u_xlat14 = vec4f(u_xlat14.x, x_4122.x, u_xlat14.z, x_4122.y);
            let x_4130 = ((u_xlat13.xz * x_673) + -(u_xlat65));
            u_xlat12 = vec4f(x_4130.x, u_xlat12.y, x_4130.y, u_xlat12.w);
            u_xlat13 = vec4f(((-(u_xlat65) + x_470)).xy, u_xlat13.zw);
            u_xlat67 = min(u_xlat65, vec2f());
            u_xlat13 = vec4f((((-(u_xlat67) * u_xlat67) + u_xlat13.xy)).xy, u_xlat13.zw);
            u_xlat67 = max(u_xlat65, vec2f());
            let x_4158 = ((-(u_xlat67) * u_xlat67) + u_xlat12.yw);
            u_xlat39 = vec3f(x_4158.x, u_xlat39.y, x_4158.y);
            u_xlat13 = vec4f(((u_xlat13.xy + x_4163)).xy, u_xlat13.zw);
            let x_4169 = (u_xlat39.xz + x_4163);
            u_xlat12 = vec4f(u_xlat12.x, x_4169.x, u_xlat12.z, x_4169.y);
            u_xlat15.z = (u_xlat12.y * 0.08163200318813323975f);
            u_xlat16 = vec4f(((u_xlat12.zxw * x_4178)).xyz, u_xlat16.w);
            u_xlat12 = vec4f(((u_xlat13.xy * x_1223)).xy, u_xlat12.zw);
            u_xlat15.x = u_xlat16.y;
            let x_4193 = ((u_xlat65.xx * x_1240) + x_1243);
            u_xlat15 = vec4f(u_xlat15.x, x_4193.x, u_xlat15.z, x_4193.y);
            let x_4199 = ((u_xlat65.xx * x_1240) + x_1250);
            u_xlat13 = vec4f(x_4199.x, u_xlat13.y, x_4199.y, u_xlat13.w);
            u_xlat13.y = u_xlat12.x;
            u_xlat13.w = u_xlat14.y;
            u_xlat15 = (u_xlat13 + u_xlat15);
            let x_4214 = ((u_xlat65.yy * x_1240) + x_1243);
            u_xlat16 = vec4f(u_xlat16.x, x_4214.x, u_xlat16.z, x_4214.y);
            let x_4220 = ((u_xlat65.yy * x_1240) + x_1250);
            u_xlat14 = vec4f(x_4220.x, u_xlat14.y, x_4220.y, u_xlat14.w);
            u_xlat14.y = u_xlat12.y;
            u_xlat12 = (u_xlat14 + u_xlat16);
            u_xlat13 = (u_xlat13 / u_xlat15);
            u_xlat13 = (u_xlat13 + x_1288);
            u_xlat14 = (u_xlat14 / u_xlat12);
            u_xlat14 = (u_xlat14 + x_1288);
            u_xlat13 = (u_xlat13.wxyz * x_208.x_AdditionalShadowmapSize.xxxx);
            u_xlat14 = (u_xlat14.xwyz * x_208.x_AdditionalShadowmapSize.yyyy);
            let x_4252 = u_xlat13.yzw;
            u_xlat16 = vec4f(x_4252.x, u_xlat16.y, x_4252.yz);
            u_xlat16.y = u_xlat14.x;
            u_xlat17 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat65 = ((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat13.y = u_xlat16.y;
            u_xlat16.y = u_xlat14.z;
            u_xlat18 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat19 = vec4f((((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat19.zw);
            u_xlat13.z = u_xlat16.y;
            u_xlat20 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyxz);
            u_xlat16.y = u_xlat14.w;
            u_xlat21 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat40 = vec3f((((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat40.z);
            u_xlat13.w = u_xlat16.y;
            u_xlat73 = ((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat13.xw);
            let x_4351 = u_xlat16.xzw;
            u_xlat14 = vec4f(x_4351.x, u_xlat14.y, x_4351.yz);
            u_xlat16 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xyzy);
            u_xlat68 = ((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat14.wy);
            u_xlat14.x = u_xlat13.x;
            u_xlat11 = vec4f((((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat14.xy)).xy, u_xlat11.zw);
            u_xlat22 = (u_xlat12.xxxx * u_xlat15);
            u_xlat23 = (u_xlat12.yyyy * u_xlat15);
            u_xlat24 = (u_xlat12.zzzz * u_xlat15);
            u_xlat12 = (u_xlat12.wwww * u_xlat15);
            let x_4407 = u_xlat17.xy;
            txVec43 = vec3f(x_4407.x, x_4407.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_4421 = u_xlat17.zw;
            txVec44 = vec3f(x_4421.x, x_4421.y, u_xlat10.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat13.x = (u_xlat13.x * u_xlat22.y);
            u_xlat91 = ((u_xlat22.x * u_xlat91) + u_xlat13.x);
            txVec45 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat91 = ((u_xlat22.z * u_xlat65.x) + u_xlat91);
            let x_4470 = u_xlat20.xy;
            txVec46 = vec3f(x_4470.x, x_4470.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat91 = ((u_xlat22.w * u_xlat65.x) + u_xlat91);
            let x_4492 = u_xlat18.xy;
            txVec47 = vec3f(x_4492.x, x_4492.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat91 = ((u_xlat23.x * u_xlat65.x) + u_xlat91);
            let x_4514 = u_xlat18.zw;
            txVec48 = vec3f(x_4514.x, x_4514.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat91 = ((u_xlat23.y * u_xlat65.x) + u_xlat91);
            let x_4536 = u_xlat19.xy;
            txVec49 = vec3f(x_4536.x, x_4536.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat91 = ((u_xlat23.z * u_xlat65.x) + u_xlat91);
            let x_4558 = u_xlat20.zw;
            txVec50 = vec3f(x_4558.x, x_4558.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat91 = ((u_xlat23.w * u_xlat65.x) + u_xlat91);
            let x_4580 = u_xlat21.xy;
            txVec51 = vec3f(x_4580.x, x_4580.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat91 = ((u_xlat24.x * u_xlat65.x) + u_xlat91);
            let x_4602 = u_xlat21.zw;
            txVec52 = vec3f(x_4602.x, x_4602.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat91 = ((u_xlat24.y * u_xlat65.x) + u_xlat91);
            let x_4624 = u_xlat40.xy;
            txVec53 = vec3f(x_4624.x, x_4624.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat91 = ((u_xlat24.z * u_xlat65.x) + u_xlat91);
            txVec54 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat91 = ((u_xlat24.w * u_xlat65.x) + u_xlat91);
            let x_4667 = u_xlat16.xy;
            txVec55 = vec3f(x_4667.x, x_4667.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat91 = ((u_xlat12.x * u_xlat65.x) + u_xlat91);
            let x_4689 = u_xlat16.zw;
            txVec56 = vec3f(x_4689.x, x_4689.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat91 = ((u_xlat12.y * u_xlat65.x) + u_xlat91);
            txVec57 = vec3f(u_xlat68.x, u_xlat68.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat91 = ((u_xlat12.z * u_xlat65.x) + u_xlat91);
            let x_4732 = u_xlat11.xy;
            txVec58 = vec3f(x_4732.x, x_4732.y, u_xlat10.z);
            u_xlat11.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat90 = ((u_xlat12.w * u_xlat11.x) + u_xlat91);
          }
        }
      } else {
        let x_4755 = u_xlat10.xy;
        txVec59 = vec3f(x_4755.x, x_4755.y, u_xlat10.z);
        u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat10.x = (1.0f + -(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat90 = ((u_xlat90 * x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat10.x);
      u_xlatb10.x = (0.0f >= u_xlat10.z);
      u_xlatb37 = (u_xlat10.z >= 1.0f);
      u_xlatb10.x = (u_xlatb37 | u_xlatb10.x);
      u_xlat90 = select(u_xlat90, 1.0f, u_xlatb10.x);
    } else {
      u_xlat90 = 1.0f;
    }
    u_xlat10.x = (-(u_xlat90) + 1.0f);
    u_xlat90 = ((u_xlat82 * u_xlat10.x) + u_xlat90);
    u_xlati10.x = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati10.x) & bitcast<u32>(x_1906.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati10.x != 0i)) {
      u_xlati10.x = i32(x_1906.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati37.x = select(1i, 0i, (u_xlati10.x != 0i));
      u_xlati64 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati37.x != 0i)) {
        u_xlat11 = vec4f(((vs_TEXCOORD0.yyy * x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 1i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati64].xyw * vs_TEXCOORD0.xxx) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 3i)].xyw)).xyz, u_xlat11.w);
        let x_4900 = (u_xlat11.xy / u_xlat11.zz);
        u_xlat37 = vec3f(x_4900.x, u_xlat37.y, x_4900.y);
        let x_4906 = ((u_xlat37.xz * x_673) + x_673);
        u_xlat37 = vec3f(x_4906.x, u_xlat37.y, x_4906.y);
        let x_4913 = clamp(u_xlat37.xz, vec2f(0.0f), vec2f(1.0f));
        u_xlat37 = vec3f(x_4913.x, u_xlat37.y, x_4913.y);
        let x_4929 = ((x_1906.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat37.xz) + x_1906.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
        u_xlat37 = vec3f(x_4929.x, u_xlat37.y, x_4929.y);
      } else {
        u_xlatb10.x = (u_xlati10.x == 1i);
        u_xlati10.x = select(0i, 1i, u_xlatb10.x);
        if ((u_xlati10.x != 0i)) {
          u_xlat11 = vec4f(((vs_TEXCOORD0.yy * x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 1i)].xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati64].xy * vs_TEXCOORD0.xx) + u_xlat11.xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat11.xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f(((u_xlat11.xy + x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 3i)].xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((u_xlat11.xy * x_673) + x_673)).xy, u_xlat11.zw);
          u_xlat11 = vec4f(fract(u_xlat11.xy).xy, u_xlat11.zw);
          let x_5015 = ((x_1906.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat11.xy) + x_1906.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
          u_xlat37 = vec3f(x_5015.x, u_xlat37.y, x_5015.y);
        } else {
          u_xlat11 = (vs_TEXCOORD0.yyyy * x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 1i)]);
          u_xlat11 = ((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati64] * vs_TEXCOORD0.xxxx) + u_xlat11);
          u_xlat11 = ((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat11);
          u_xlat11 = (u_xlat11 + x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 3i)]);
          u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat11.www)).xyz, u_xlat11.w);
          u_xlat10.x = dot(u_xlat11.xyz, u_xlat11.xyz);
          u_xlat10.x = inverseSqrt(u_xlat10.x);
          u_xlat11 = vec4f(((u_xlat10.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
          u_xlat10.x = dot(abs(u_xlat11.xyz), x_2800);
          u_xlat10.x = max(u_xlat10.x, 0.00000099999999747524f);
          u_xlat10.x = (1.0f / u_xlat10.x);
          u_xlat12 = vec4f(((u_xlat10.xxx * u_xlat11.zxy)).xyz, u_xlat12.w);
          u_xlat12.x = -(u_xlat12.x);
          u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
          u_xlatb65 = ((u_xlat12.yzyz >= vec4f())).xy;
          if (u_xlatb65.x) {
            x_5108 = u_xlat12.x;
          } else {
            x_5108 = -(u_xlat12.x);
          }
          u_xlat65.x = x_5108;
          if (u_xlatb65.y) {
            x_5121 = u_xlat12.x;
          } else {
            x_5121 = -(u_xlat12.x);
          }
          u_xlat65.y = x_5121;
          let x_5138 = ((u_xlat11.xy * u_xlat10.xx) + u_xlat65);
          u_xlat10 = vec4f(x_5138.x, u_xlat10.y, x_5138.y, u_xlat10.w);
          let x_5144 = ((u_xlat10.xz * x_673) + x_673);
          u_xlat10 = vec4f(x_5144.x, u_xlat10.y, x_5144.y, u_xlat10.w);
          let x_5151 = clamp(u_xlat10.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat10 = vec4f(x_5151.x, u_xlat10.y, x_5151.y, u_xlat10.w);
          let x_5167 = ((x_1906.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat10.xz) + x_1906.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
          u_xlat37 = vec3f(x_5167.x, u_xlat37.y, x_5167.y);
        }
      }
      u_xlat10 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat37.xz, 0.0f);
      if (u_xlatb29.z) {
        x_5179 = u_xlat10.w;
      } else {
        x_5179 = u_xlat10.x;
      }
      u_xlat91 = x_5179;
      if (u_xlatb29.x) {
        x_5190 = u_xlat10.xyz;
      } else {
        x_5190 = vec3f(u_xlat91);
      }
      u_xlat10 = vec4f(x_5190.xyz, u_xlat10.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    u_xlat10 = vec4f(((u_xlat10.xyz * x_3311.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlati91 = bitcast<i32>((bitcast<u32>(x_395.unity_RenderingLayer.x) & bitcast<u32>(x_3311.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat7.x = (u_xlat7.x * u_xlat90);
    u_xlat90 = dot(u_xlat0.xyz, u_xlat9.xyz);
    u_xlat90 = clamp(u_xlat90, 0.0f, 1.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat90);
    u_xlat10 = vec4f(((u_xlat7.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat35 = ((u_xlat35 * vec3f(u_xlat34)) + u_xlat3);
    u_xlat7.x = dot(u_xlat35, u_xlat35);
    u_xlat7.x = max(u_xlat7.x, 1.17549435e-38f);
    u_xlat7.x = inverseSqrt(u_xlat7.x);
    u_xlat35 = (u_xlat7.xxx * u_xlat35);
    u_xlat7.x = dot(u_xlat0.xyz, u_xlat35);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.y = dot(u_xlat9.xyz, u_xlat35);
    u_xlat7.y = clamp(u_xlat7.y, 0.0f, 1.0f);
    u_xlat7 = vec4f(((u_xlat7.xy * u_xlat7.xy)).xy, u_xlat7.zw);
    u_xlat7.x = ((u_xlat7.x * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat34 = max(u_xlat7.y, 0.10000000149011611938f);
    u_xlat7.x = (u_xlat34 * u_xlat7.x);
    u_xlat7.x = (u_xlat88 * u_xlat7.x);
    u_xlat7.x = (u_xlat87 / u_xlat7.x);
    u_xlat35 = ((u_xlat7.xxx * x_3232) + u_xlat4.xzw);
    u_xlat35 = ((u_xlat35 * u_xlat10.xyz) + u_xlat5.xyw);
    if ((u_xlati91 != 0i)) {
      x_5343 = u_xlat35;
    } else {
      x_5343 = u_xlat5.xyw;
    }
    u_xlat5 = vec4f(x_5343.xy, u_xlat5.z, x_5343.z);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu81 = (u_xlatu2 >> 2u);
  param_21 = bitcast<i32>(u_xlatu2);
  param_22 = 0i;
  param_23 = 1i;
  let x_5362 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu2);
  param_25 = 1i;
  param_26 = 1i;
  let x_5368 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati7 = vec3i(vec2i(x_5362, x_5368).xy, u_xlati7.z);
  u_xlati35 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2206.urp_ZBins[bitcast<i32>(u_xlatu81)].wy)));
  u_xlati9 = vec3i((~(u_xlati7.xy)).xy, u_xlati9.z);
  let x_5400 = bitcast<vec2i>((bitcast<vec2u>(u_xlati9.xx) & bitcast<vec2u>(x_2206.urp_ZBins[bitcast<i32>(u_xlatu81)].zx)));
  u_xlati9 = vec3i(x_5400.x, u_xlati9.y, x_5400.y);
  u_xlati35 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35) | bitcast<vec2u>(u_xlati9.xz)));
  u_xlati81 = bitcast<i32>((bitcast<u32>(u_xlati7.y) & bitcast<u32>(u_xlati35.x)));
  u_xlati2 = bitcast<i32>((bitcast<u32>(u_xlati9.y) & bitcast<u32>(u_xlati35.y)));
  u_xlatu81 = (bitcast<u32>(u_xlati81) | bitcast<u32>(u_xlati2));
  u_xlatu9.x = u_xlatu59;
  u_xlatu9.y = u_xlatu29.y;
  u_xlati63 = 0i;
  u_xlatu90 = u_xlatu81;
  u_xlat35 = u_xlat5.xyw;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu2 = (u_xlatu90 >> 16u);
    u_xlati84 = u_xlati63;
    u_xlatu7.x = u_xlatu90;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb34 = (u_xlati84 == 0i);
      u_xlatu10.x = (u_xlatu7.x & 65535u);
      u_xlatb10.x = (u_xlatu2 >= u_xlatu10.x);
      u_xlatb34 = (u_xlatb34 & u_xlatb10.x);
      if (!(u_xlatb34)) {
        break;
      }
      param_27 = u_xlatu7.x;
      param_28 = 5i;
      param_29 = 11i;
      let x_5487 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu34 = x_5487;
      u_xlatu10 = (vec4u(u_xlatu34) + u_xlatu9.xxyy);
      u_xlatu11 = (u_xlatu10.yw >> x_2344);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_5502 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_5509 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_5516 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_5523 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_5502, x_5509, x_5516, x_5523);
      u_xlati65 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_2385.urp_Tiles[bitcast<i32>(u_xlatu11.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2385.urp_Tiles[bitcast<i32>(u_xlatu11.x)].zx))).xy, u_xlati13.zw);
      let x_5560 = bitcast<vec2i>((bitcast<vec2u>(u_xlati65) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati11 = vec3i(x_5560.x, u_xlati11.y, x_5560.y);
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati37.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.z)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati37.x) | bitcast<u32>(u_xlati10.x)));
      u_xlati37 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_2206.urp_ZBins[bitcast<i32>(u_xlatu11.y)].wy)));
      u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_2206.urp_ZBins[bitcast<i32>(u_xlatu11.y)].zx))).xy, u_xlati11.z);
      u_xlati37 = bitcast<vec2i>((bitcast<vec2u>(u_xlati37) | bitcast<vec2u>(u_xlati11.xy)));
      u_xlati37.x = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati37.x)));
      u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati37.y)));
      u_xlati37.x = bitcast<i32>((bitcast<u32>(u_xlati64) | bitcast<u32>(u_xlati37.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati37.x) & bitcast<u32>(u_xlati10.x)));
      u_xlati37.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu7.x) & 31i)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati37.x) & bitcast<u32>(u_xlati10.x)));
      u_xlati34 = (bitcast<i32>(u_xlatu34) << bitcast<u32>(5i));
      u_xlatu34 = (u_xlatu2 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati34)))));
      u_xlatu34 = min(u_xlatu34, 31u);
      u_xlatu34 = (bitcast<u32>(-(bitcast<i32>(u_xlatu34))) + 31u);
      u_xlatu34 = (4294967295u >> (u_xlatu34 & 31u));
      u_xlati84 = bitcast<i32>((u_xlatu34 & bitcast<u32>(u_xlati10.x)));
      u_xlati34 = (bitcast<i32>(u_xlatu7.x) + 32i);
      u_xlatu7.x = (bitcast<u32>(u_xlati34) & 4294967264u);
    }
    u_xlatu90 = u_xlatu7.x;
    if ((u_xlati84 == 0i)) {
      break;
    }
    u_xlati2 = (0i - u_xlati84);
    u_xlatu2 = (bitcast<u32>(u_xlati2) & bitcast<u32>(u_xlati84));
    u_xlat2.x = f32(u_xlatu2);
    u_xlatu2 = (bitcast<u32>(u_xlat2.x) >> 23u);
    u_xlati2 = (bitcast<i32>(u_xlatu2) + -127i);
    u_xlati34 = (1i << bitcast<u32>((u_xlati2 & 31i)));
    u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati84) ^ bitcast<u32>(u_xlati34)));
    u_xlati34 = (bitcast<i32>(u_xlatu90) + -32i);
    u_xlati34 = bitcast<i32>((bitcast<u32>(u_xlati34) & 65504u));
    u_xlati2 = (u_xlati2 + u_xlati34);
    u_xlati2 = (bitcast<i32>(u_xlatu7.z) + u_xlati2);
    u_xlat10 = vec4f((((-(vs_TEXCOORD0) * x_3311.x_AdditionalLightsPosition[u_xlati2].www) + x_3311.x_AdditionalLightsPosition[u_xlati2].xyz)).xyz, u_xlat10.w);
    u_xlat34 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat34 = max(u_xlat34, 0.00006103515625f);
    u_xlat91 = inverseSqrt(u_xlat34);
    u_xlat11 = vec4f(((vec3f(u_xlat91) * u_xlat10.xyz)).xyz, u_xlat11.w);
    u_xlat92 = (1.0f / u_xlat34);
    u_xlat34 = (u_xlat34 * x_3311.x_AdditionalLightsAttenuation[u_xlati2].x);
    u_xlat34 = ((-(u_xlat34) * u_xlat34) + 1.0f);
    u_xlat34 = max(u_xlat34, 0.0f);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat34 = (u_xlat34 * u_xlat92);
    u_xlat92 = dot(x_3311.x_AdditionalLightsSpotDir[u_xlati2].xyz, u_xlat11.xyz);
    u_xlat92 = ((u_xlat92 * x_3311.x_AdditionalLightsAttenuation[u_xlati2].z) + x_3311.x_AdditionalLightsAttenuation[u_xlati2].w);
    u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
    u_xlat92 = (u_xlat92 * u_xlat92);
    u_xlat34 = (u_xlat34 * u_xlat92);
    u_xlatb92 = (u_xlati2 < 0i);
    u_xlati12.x = i32(x_208.x_AdditionalShadowParams[u_xlati2].w);
    if (u_xlatb92) {
      x_5836 = -1i;
    } else {
      x_5836 = u_xlati12.x;
    }
    u_xlati92 = x_5836;
    u_xlatb12.x = (u_xlati92 >= 0i);
    if (u_xlatb12.x) {
      u_xlatb12.x = any(!((vec4f() == vec4f(x_208.x_AdditionalShadowParams[u_xlati2].z))));
      if (u_xlatb12.x) {
        u_xlatb12 = ((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz;
        u_xlatb12.x = (u_xlatb12.y & u_xlatb12.x);
        u_xlatb13 = ((-(u_xlat11.zyxz) < vec4f())).xyz;
        u_xlat39.x = select(4.0f, 5.0f, u_xlatb13.x);
        u_xlat39.z = select(2.0f, 3.0f, u_xlatb13.y);
        u_xlat13.x = select(0.0f, 1.0f, u_xlatb13.z);
        if (u_xlatb12.z) {
          x_5895 = u_xlat39.z;
        } else {
          x_5895 = u_xlat13.x;
        }
        u_xlat66.x = x_5895;
        if (u_xlatb12.x) {
          x_5907 = u_xlat39.x;
        } else {
          x_5907 = u_xlat66.x;
        }
        u_xlat12.x = x_5907;
        u_xlati12.x = i32(u_xlat12.x);
        u_xlati92 = (u_xlati92 + u_xlati12.x);
      }
      u_xlati92 = (u_xlati92 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati92 + 1i)]);
      u_xlat12 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati92] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati92 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati92 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      u_xlatb92 = (0.0f < x_208.x_AdditionalShadowParams[u_xlati2].y);
      if (u_xlatb92) {
        u_xlatb92 = (1.0f == x_208.x_AdditionalShadowParams[u_xlati2].y);
        if (u_xlatb92) {
          u_xlat13 = (u_xlat12.xyxy + x_208.x_AdditionalShadowOffset0);
          let x_5985 = u_xlat13.xy;
          txVec60 = vec3f(x_5985.x, x_5985.y, u_xlat12.z);
          u_xlat14.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_6000 = u_xlat13.zw;
          txVec61 = vec3f(x_6000.x, x_6000.y, u_xlat12.z);
          u_xlat14.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat13 = (u_xlat12.xyxy + x_208.x_AdditionalShadowOffset1);
          let x_6020 = u_xlat13.xy;
          txVec62 = vec3f(x_6020.x, x_6020.y, u_xlat12.z);
          u_xlat14.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_6035 = u_xlat13.zw;
          txVec63 = vec3f(x_6035.x, x_6035.y, u_xlat12.z);
          u_xlat14.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat92 = dot(u_xlat14, x_654);
        } else {
          u_xlatb93 = (2.0f == x_208.x_AdditionalShadowParams[u_xlati2].y);
          if (u_xlatb93) {
            u_xlat13 = vec4f((((u_xlat12.xy * x_208.x_AdditionalShadowmapSize.zw) + x_673)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_208.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_697);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_6092 = (u_xlat15.yw * x_709);
            u_xlat14 = vec4f(x_6092.x, u_xlat14.y, x_6092.y, u_xlat14.w);
            u_xlat15 = vec4f((((u_xlat15.xz * x_673) + -(u_xlat67))).xy, u_xlat15.zw);
            u_xlat69 = (-(u_xlat67) + x_470);
            u_xlat16 = vec4f(min(u_xlat67, vec2f()).xy, u_xlat16.zw);
            u_xlat16 = vec4f((((-(u_xlat16.xy) * u_xlat16.xy) + u_xlat69)).xy, u_xlat16.zw);
            u_xlat67 = max(u_xlat67, vec2f());
            u_xlat67 = ((-(u_xlat67) * u_xlat67) + u_xlat14.yw);
            u_xlat16 = vec4f(((u_xlat16.xy + x_470)).xy, u_xlat16.zw);
            u_xlat67 = (u_xlat67 + x_470);
            u_xlat17 = vec4f(((u_xlat15.xy * x_765)).xy, u_xlat17.zw);
            u_xlat15 = vec4f(((u_xlat69 * x_765)).xy, u_xlat15.zw);
            u_xlat16 = vec4f(((u_xlat16.xy * x_765)).xy, u_xlat16.zw);
            u_xlat18 = vec4f(((u_xlat67 * x_765)).xy, u_xlat18.zw);
            u_xlat67 = (u_xlat14.yw * x_765);
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
            u_xlat15 = vec4f(((u_xlat15.xyz + x_838)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat18.zyw / u_xlat14.xyz)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_838)).xyz, u_xlat16.w);
            u_xlat15 = vec4f(((u_xlat15.yxz * x_208.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xyz * x_208.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat16.w);
            u_xlat15.w = u_xlat16.x;
            u_xlat17 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat15.ywxw);
            u_xlat67 = ((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat15.zw);
            u_xlat16.w = u_xlat15.y;
            let x_6258 = u_xlat16.yz;
            u_xlat15 = vec4f(u_xlat15.x, x_6258.x, u_xlat15.z, x_6258.y);
            u_xlat18 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat16 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat16.wywz);
            u_xlat15 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xwzw);
            u_xlat20 = (u_xlat14.xxxy * u_xlat19.zwyz);
            u_xlat21 = (u_xlat14.yyzz * u_xlat19);
            u_xlat93 = (u_xlat14.z * u_xlat19.y);
            let x_6304 = u_xlat17.xy;
            txVec64 = vec3f(x_6304.x, x_6304.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_6319 = u_xlat17.zw;
            txVec65 = vec3f(x_6319.x, x_6319.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat40.x = (u_xlat40.x * u_xlat20.y);
            u_xlat13.x = ((u_xlat20.x * u_xlat13.x) + u_xlat40.x);
            txVec66 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat13.x = ((u_xlat20.z * u_xlat40.x) + u_xlat13.x);
            let x_6372 = u_xlat16.xy;
            txVec67 = vec3f(x_6372.x, x_6372.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat13.x = ((u_xlat20.w * u_xlat40.x) + u_xlat13.x);
            let x_6396 = u_xlat18.xy;
            txVec68 = vec3f(x_6396.x, x_6396.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat13.x = ((u_xlat21.x * u_xlat40.x) + u_xlat13.x);
            let x_6420 = u_xlat18.zw;
            txVec69 = vec3f(x_6420.x, x_6420.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat13.x = ((u_xlat21.y * u_xlat40.x) + u_xlat13.x);
            let x_6444 = u_xlat16.zw;
            txVec70 = vec3f(x_6444.x, x_6444.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat13.x = ((u_xlat21.z * u_xlat40.x) + u_xlat13.x);
            let x_6468 = u_xlat15.xy;
            txVec71 = vec3f(x_6468.x, x_6468.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat13.x = ((u_xlat21.w * u_xlat40.x) + u_xlat13.x);
            let x_6492 = u_xlat15.zw;
            txVec72 = vec3f(x_6492.x, x_6492.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat92 = ((u_xlat93 * u_xlat40.x) + u_xlat13.x);
          } else {
            u_xlat13 = vec4f((((u_xlat12.xy * x_208.x_AdditionalShadowmapSize.zw) + x_673)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_208.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_697);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_6547 = (u_xlat15.yw * x_1164);
            u_xlat16 = vec4f(u_xlat16.x, x_6547.x, u_xlat16.z, x_6547.y);
            let x_6555 = ((u_xlat15.xz * x_673) + -(u_xlat67));
            u_xlat14 = vec4f(x_6555.x, u_xlat14.y, x_6555.y, u_xlat14.w);
            u_xlat15 = vec4f(((-(u_xlat67) + x_470)).xy, u_xlat15.zw);
            u_xlat69 = min(u_xlat67, vec2f());
            u_xlat15 = vec4f((((-(u_xlat69) * u_xlat69) + u_xlat15.xy)).xy, u_xlat15.zw);
            u_xlat69 = max(u_xlat67, vec2f());
            let x_6582 = ((-(u_xlat69) * u_xlat69) + u_xlat14.yw);
            u_xlat41 = vec3f(x_6582.x, u_xlat41.y, x_6582.y);
            u_xlat15 = vec4f(((u_xlat15.xy + x_4163)).xy, u_xlat15.zw);
            let x_6592 = (u_xlat41.xz + x_4163);
            u_xlat14 = vec4f(u_xlat14.x, x_6592.x, u_xlat14.z, x_6592.y);
            u_xlat17.z = (u_xlat14.y * 0.08163200318813323975f);
            u_xlat18 = vec4f(((u_xlat14.zxw * x_4178)).xyz, u_xlat18.w);
            u_xlat14 = vec4f(((u_xlat15.xy * x_1223)).xy, u_xlat14.zw);
            u_xlat17.x = u_xlat18.y;
            let x_6615 = ((u_xlat67.xx * x_1240) + x_1243);
            u_xlat17 = vec4f(u_xlat17.x, x_6615.x, u_xlat17.z, x_6615.y);
            let x_6621 = ((u_xlat67.xx * x_1240) + x_1250);
            u_xlat15 = vec4f(x_6621.x, u_xlat15.y, x_6621.y, u_xlat15.w);
            u_xlat15.y = u_xlat14.x;
            u_xlat15.w = u_xlat16.y;
            u_xlat17 = (u_xlat15 + u_xlat17);
            let x_6636 = ((u_xlat67.yy * x_1240) + x_1243);
            u_xlat18 = vec4f(u_xlat18.x, x_6636.x, u_xlat18.z, x_6636.y);
            let x_6642 = ((u_xlat67.yy * x_1240) + x_1250);
            u_xlat16 = vec4f(x_6642.x, u_xlat16.y, x_6642.y, u_xlat16.w);
            u_xlat16.y = u_xlat14.y;
            u_xlat14 = (u_xlat16 + u_xlat18);
            u_xlat15 = (u_xlat15 / u_xlat17);
            u_xlat15 = (u_xlat15 + x_1288);
            u_xlat16 = (u_xlat16 / u_xlat14);
            u_xlat16 = (u_xlat16 + x_1288);
            u_xlat15 = (u_xlat15.wxyz * x_208.x_AdditionalShadowmapSize.xxxx);
            u_xlat16 = (u_xlat16.xwyz * x_208.x_AdditionalShadowmapSize.yyyy);
            let x_6674 = u_xlat15.yzw;
            u_xlat18 = vec4f(x_6674.x, u_xlat18.y, x_6674.yz);
            u_xlat18.y = u_xlat16.x;
            u_xlat19 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat67 = ((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.y = u_xlat18.y;
            u_xlat18.y = u_xlat16.z;
            u_xlat20 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat21 = vec4f((((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat18.wy)).xy, u_xlat21.zw);
            u_xlat15.z = u_xlat18.y;
            u_xlat22 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyxz);
            u_xlat18.y = u_xlat16.w;
            u_xlat23 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat42 = ((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.w = u_xlat18.y;
            u_xlat75 = ((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat15.xw);
            let x_6772 = u_xlat18.xzw;
            u_xlat16 = vec4f(x_6772.x, u_xlat16.y, x_6772.yz);
            u_xlat18 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat70 = ((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat16.x = u_xlat15.x;
            u_xlat13 = vec4f((((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat16.xy)).xy, u_xlat13.zw);
            u_xlat24 = (u_xlat14.xxxx * u_xlat17);
            u_xlat25 = (u_xlat14.yyyy * u_xlat17);
            u_xlat26 = (u_xlat14.zzzz * u_xlat17);
            u_xlat14 = (u_xlat14.wwww * u_xlat17);
            let x_6828 = u_xlat19.xy;
            txVec73 = vec3f(x_6828.x, x_6828.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_6842 = u_xlat19.zw;
            txVec74 = vec3f(x_6842.x, x_6842.y, u_xlat12.z);
            u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat15.x = (u_xlat15.x * u_xlat24.y);
            u_xlat93 = ((u_xlat24.x * u_xlat93) + u_xlat15.x);
            txVec75 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat93 = ((u_xlat24.z * u_xlat67.x) + u_xlat93);
            let x_6891 = u_xlat22.xy;
            txVec76 = vec3f(x_6891.x, x_6891.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat93 = ((u_xlat24.w * u_xlat67.x) + u_xlat93);
            let x_6913 = u_xlat20.xy;
            txVec77 = vec3f(x_6913.x, x_6913.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat93 = ((u_xlat25.x * u_xlat67.x) + u_xlat93);
            let x_6935 = u_xlat20.zw;
            txVec78 = vec3f(x_6935.x, x_6935.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat93 = ((u_xlat25.y * u_xlat67.x) + u_xlat93);
            let x_6957 = u_xlat21.xy;
            txVec79 = vec3f(x_6957.x, x_6957.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat93 = ((u_xlat25.z * u_xlat67.x) + u_xlat93);
            let x_6979 = u_xlat22.zw;
            txVec80 = vec3f(x_6979.x, x_6979.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat93 = ((u_xlat25.w * u_xlat67.x) + u_xlat93);
            let x_7001 = u_xlat23.xy;
            txVec81 = vec3f(x_7001.x, x_7001.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat93 = ((u_xlat26.x * u_xlat67.x) + u_xlat93);
            let x_7023 = u_xlat23.zw;
            txVec82 = vec3f(x_7023.x, x_7023.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat93 = ((u_xlat26.y * u_xlat67.x) + u_xlat93);
            txVec83 = vec3f(u_xlat42.x, u_xlat42.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat93 = ((u_xlat26.z * u_xlat67.x) + u_xlat93);
            txVec84 = vec3f(u_xlat75.x, u_xlat75.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat93 = ((u_xlat26.w * u_xlat67.x) + u_xlat93);
            let x_7087 = u_xlat18.xy;
            txVec85 = vec3f(x_7087.x, x_7087.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat93 = ((u_xlat14.x * u_xlat67.x) + u_xlat93);
            let x_7109 = u_xlat18.zw;
            txVec86 = vec3f(x_7109.x, x_7109.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat93 = ((u_xlat14.y * u_xlat67.x) + u_xlat93);
            txVec87 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat93 = ((u_xlat14.z * u_xlat67.x) + u_xlat93);
            let x_7152 = u_xlat13.xy;
            txVec88 = vec3f(x_7152.x, x_7152.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat92 = ((u_xlat14.w * u_xlat13.x) + u_xlat93);
          }
        }
      } else {
        let x_7175 = u_xlat12.xy;
        txVec89 = vec3f(x_7175.x, x_7175.y, u_xlat12.z);
        u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat12.x = (1.0f + -(x_208.x_AdditionalShadowParams[u_xlati2].x));
      u_xlat92 = ((u_xlat92 * x_208.x_AdditionalShadowParams[u_xlati2].x) + u_xlat12.x);
      u_xlatb12.x = (0.0f >= u_xlat12.z);
      u_xlatb39 = (u_xlat12.z >= 1.0f);
      u_xlatb12.x = (u_xlatb39 | u_xlatb12.x);
      u_xlat92 = select(u_xlat92, 1.0f, u_xlatb12.x);
    } else {
      u_xlat92 = 1.0f;
    }
    u_xlat12.x = (-(u_xlat92) + 1.0f);
    u_xlat92 = ((u_xlat82 * u_xlat12.x) + u_xlat92);
    u_xlati12.x = (1i << bitcast<u32>((u_xlati2 & 31i)));
    u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.x) & bitcast<u32>(x_1906.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati12.x != 0i)) {
      u_xlati12.x = i32(x_1906.x_AdditionalLightsLightTypes[u_xlati2].el);
      u_xlati39 = select(1i, 0i, (u_xlati12.x != 0i));
      u_xlati66 = (u_xlati2 << bitcast<u32>(2i));
      if ((u_xlati39 != 0i)) {
        u_xlat13 = vec4f(((vs_TEXCOORD0.yyy * x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 1i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati66].xyw * vs_TEXCOORD0.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 3i)].xyw)).xyz, u_xlat13.w);
        let x_7313 = (u_xlat13.xy / u_xlat13.zz);
        u_xlat39 = vec3f(x_7313.x, u_xlat39.y, x_7313.y);
        let x_7319 = ((u_xlat39.xz * x_673) + x_673);
        u_xlat39 = vec3f(x_7319.x, u_xlat39.y, x_7319.y);
        let x_7326 = clamp(u_xlat39.xz, vec2f(0.0f), vec2f(1.0f));
        u_xlat39 = vec3f(x_7326.x, u_xlat39.y, x_7326.y);
        let x_7340 = ((x_1906.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat39.xz) + x_1906.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
        u_xlat39 = vec3f(x_7340.x, u_xlat39.y, x_7340.y);
      } else {
        u_xlatb12.x = (u_xlati12.x == 1i);
        u_xlati12.x = select(0i, 1i, u_xlatb12.x);
        if ((u_xlati12.x != 0i)) {
          u_xlat13 = vec4f(((vs_TEXCOORD0.yy * x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 1i)].xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati66].xy * vs_TEXCOORD0.xx) + u_xlat13.xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat13.xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f(((u_xlat13.xy + x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 3i)].xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((u_xlat13.xy * x_673) + x_673)).xy, u_xlat13.zw);
          u_xlat13 = vec4f(fract(u_xlat13.xy).xy, u_xlat13.zw);
          let x_7424 = ((x_1906.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat13.xy) + x_1906.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
          u_xlat39 = vec3f(x_7424.x, u_xlat39.y, x_7424.y);
        } else {
          u_xlat13 = (vs_TEXCOORD0.yyyy * x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 1i)]);
          u_xlat13 = ((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati66] * vs_TEXCOORD0.xxxx) + u_xlat13);
          u_xlat13 = ((x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat13);
          u_xlat13 = (u_xlat13 + x_1906.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 3i)]);
          u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
          u_xlat12.x = dot(u_xlat13.xyz, u_xlat13.xyz);
          u_xlat12.x = inverseSqrt(u_xlat12.x);
          u_xlat13 = vec4f(((u_xlat12.xxx * u_xlat13.xyz)).xyz, u_xlat13.w);
          u_xlat12.x = dot(abs(u_xlat13.xyz), x_2800);
          u_xlat12.x = max(u_xlat12.x, 0.00000099999999747524f);
          u_xlat12.x = (1.0f / u_xlat12.x);
          u_xlat14 = vec4f(((u_xlat12.xxx * u_xlat13.zxy)).xyz, u_xlat14.w);
          u_xlat14.x = -(u_xlat14.x);
          u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
          u_xlatb67 = ((u_xlat14.yzyz >= vec4f())).xy;
          if (u_xlatb67.x) {
            x_7517 = u_xlat14.x;
          } else {
            x_7517 = -(u_xlat14.x);
          }
          u_xlat67.x = x_7517;
          if (u_xlatb67.y) {
            x_7530 = u_xlat14.x;
          } else {
            x_7530 = -(u_xlat14.x);
          }
          u_xlat67.y = x_7530;
          let x_7547 = ((u_xlat13.xy * u_xlat12.xx) + u_xlat67);
          u_xlat12 = vec4f(x_7547.x, u_xlat12.y, x_7547.y, u_xlat12.w);
          let x_7553 = ((u_xlat12.xz * x_673) + x_673);
          u_xlat12 = vec4f(x_7553.x, u_xlat12.y, x_7553.y, u_xlat12.w);
          let x_7560 = clamp(u_xlat12.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat12 = vec4f(x_7560.x, u_xlat12.y, x_7560.y, u_xlat12.w);
          let x_7574 = ((x_1906.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat12.xz) + x_1906.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
          u_xlat39 = vec3f(x_7574.x, u_xlat39.y, x_7574.y);
        }
      }
      u_xlat12 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat39.xz, 0.0f);
      if (u_xlatb29.z) {
        x_7585 = u_xlat12.w;
      } else {
        x_7585 = u_xlat12.x;
      }
      u_xlat93 = x_7585;
      if (u_xlatb29.x) {
        x_7596 = u_xlat12.xyz;
      } else {
        x_7596 = vec3f(u_xlat93);
      }
      u_xlat12 = vec4f(x_7596.xyz, u_xlat12.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    u_xlat12 = vec4f(((u_xlat12.xyz * x_3311.x_AdditionalLightsColor[u_xlati2].xyz)).xyz, u_xlat12.w);
    u_xlati2 = bitcast<i32>((bitcast<u32>(x_395.unity_RenderingLayer.x) & bitcast<u32>(x_3311.x_AdditionalLightsLayerMasks[u_xlati2].el)));
    u_xlat34 = (u_xlat34 * u_xlat92);
    u_xlat92 = dot(u_xlat0.xyz, u_xlat11.xyz);
    u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
    u_xlat34 = (u_xlat34 * u_xlat92);
    u_xlat12 = vec4f(((vec3f(u_xlat34) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat91)) + u_xlat3)).xyz, u_xlat10.w);
    u_xlat34 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat34 = max(u_xlat34, 1.17549435e-38f);
    u_xlat34 = inverseSqrt(u_xlat34);
    u_xlat10 = vec4f(((vec3f(u_xlat34) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat34 = dot(u_xlat0.xyz, u_xlat10.xyz);
    u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
    u_xlat10.x = dot(u_xlat11.xyz, u_xlat10.xyz);
    u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat34 = ((u_xlat34 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat10.x = max(u_xlat10.x, 0.10000000149011611938f);
    u_xlat34 = (u_xlat34 * u_xlat10.x);
    u_xlat34 = (u_xlat88 * u_xlat34);
    u_xlat34 = (u_xlat87 / u_xlat34);
    u_xlat10 = vec4f((((vec3f(u_xlat34) * x_3232) + u_xlat4.xzw)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat35)).xyz, u_xlat10.w);
    if ((u_xlati2 != 0i)) {
      x_7741 = u_xlat10.xyz;
    } else {
      x_7741 = u_xlat35;
    }
    u_xlat35 = x_7741;
  }
  u_xlat0 = vec4f(((u_xlat1.xyz + u_xlat6.xyz)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat35 + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat31;
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

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
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
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
diagnostic(off, derivative_uniformity);

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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_AlphaCenter : f32,
  /* @offset(20) */
  x_AlphaEdge : f32,
  /* @offset(24) */
  x_FresnelPower : f32,
  /* @offset(28) */
  x_EdgeDarken : f32,
  /* @offset(32) */
  x_Smoothness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_Absorb : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_Transmit : f32,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(0) var<uniform> x_98 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_174 : UnityPerMaterial;

@group(1) @binding(7) var<uniform> x_208 : LightShadows;

@group(1) @binding(5) var<uniform> x_396 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_2081 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2258 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2516 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(5) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3181 : AdditionalLights;

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

const x_471 = vec2f(1.0f);

const x_654 = vec4f(0.25f);

const x_673 = vec2f(0.5f);

const x_697 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_709 = vec2f(0.07999999821186065674f);

const x_765 = vec2f(0.15999999642372131348f);

const x_838 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1164 = vec2f(0.04081600159406661987f);

const x_1223 = vec2f(0.08163200318813323975f);

const x_1240 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1243 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1250 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1288 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2219 = vec2u(2u);

const x_3121 = vec3f(0.03999999910593032837f);

const x_4004 = vec2f(2.0f);

const x_4019 = vec3f(0.08163200318813323975f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat28 : vec3f;
  var u_xlat2 : vec4f;
  var x_132 : vec3f;
  var u_xlat83 : f32;
  var u_xlat3 : vec3f;
  var u_xlat84 : f32;
  var u_xlat4 : vec4f;
  var u_xlat31 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlatb5 : vec4<bool>;
  var u_xlat58 : vec2f;
  var u_xlatu58 : u32;
  var u_xlati58 : i32;
  var u_xlat81 : f32;
  var u_xlat86 : f32;
  var u_xlat87 : f32;
  var u_xlat34 : f32;
  var u_xlat88 : f32;
  var u_xlatb8 : vec3<bool>;
  var txVec0 : vec3f;
  var u_xlat9 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb35 : bool;
  var u_xlat35 : vec3f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat63 : vec2f;
  var u_xlat65 : vec2f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var txVec4 : vec3f;
  var u_xlat62 : f32;
  var txVec5 : vec3f;
  var u_xlat89 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat69 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat37 : vec2f;
  var u_xlat19 : vec4f;
  var u_xlat66 : vec2f;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
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
  var x_1855 : f32;
  var u_xlat32 : f32;
  var u_xlat59 : f32;
  var u_xlatu7 : vec3u;
  var u_xlatu10 : vec4u;
  var u_xlati59 : i32;
  var u_xlatu59 : u32;
  var u_xlat29 : f32;
  var u_xlat1 : vec4f;
  var x_1997 : f32;
  var u_xlatu1 : u32;
  var u_xlatu2 : u32;
  var u_xlati29 : i32;
  var u_xlatu29 : vec2u;
  var u_xlati7 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati62 : vec2i;
  var u_xlati10 : vec4i;
  var u_xlati1 : i32;
  var u_xlati64 : i32;
  var u_xlatu91 : u32;
  var u_xlatu89 : u32;
  var u_xlati90 : i32;
  var u_xlatu92 : u32;
  var u_xlatb12 : vec4<bool>;
  var u_xlatu39 : vec2u;
  var u_xlatb39 : bool;
  var u_xlatu12 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
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
  var u_xlati14 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati39 : vec3i;
  var u_xlati93 : i32;
  var u_xlati66 : vec2i;
  var u_xlati12 : vec4i;
  var u_xlatb89 : bool;
  var u_xlati89 : i32;
  var u_xlat39 : vec3f;
  var x_2583 : f32;
  var x_2597 : f32;
  var x_2611 : f32;
  var x_2669 : vec3f;
  var u_xlat40 : vec3f;
  var u_xlatb67 : vec2<bool>;
  var u_xlat67 : vec2f;
  var x_2737 : f32;
  var x_2750 : f32;
  var u_xlat93 : f32;
  var u_xlatu93 : u32;
  var u_xlatu40 : u32;
  var u_xlati81 : i32;
  var u_xlat82 : f32;
  var x_3136 : vec3f;
  var u_xlatu81 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatb7 : bool;
  var u_xlati34 : i32;
  var u_xlatb34 : bool;
  var u_xlatb10 : vec4<bool>;
  var u_xlat90 : f32;
  var x_3337 : f32;
  var x_3346 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat91 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat73 : vec2f;
  var u_xlat68 : vec2f;
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
  var u_xlatb90 : bool;
  var x_4605 : f32;
  var x_4733 : vec3f;
  var u_xlati2 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati35 : vec2i;
  var u_xlatu9 : vec2u;
  var u_xlatu63 : vec2u;
  var u_xlatu84 : u32;
  var u_xlatu62 : vec2u;
  var u_xlatb62 : bool;
  var u_xlatu35 : u32;
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
  var u_xlati11 : vec2i;
  var u_xlati65 : vec2i;
  var u_xlati84 : i32;
  var u_xlat64 : f32;
  var u_xlatb64 : bool;
  var u_xlati91 : i32;
  var u_xlatb91 : bool;
  var u_xlat92 : f32;
  var x_5307 : f32;
  var x_5316 : f32;
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
  var u_xlat41 : vec3f;
  var u_xlat42 : vec2f;
  var u_xlat75 : vec2f;
  var u_xlat70 : vec2f;
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
  var u_xlatb92 : bool;
  var x_6673 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, u_xlat0.w);
  u_xlatb1 = (x_98.unity_OrthoParams.w == 0.0f);
  u_xlat28 = (-(vs_TEXCOORD0) + x_98.x_WorldSpaceCameraPos);
  u_xlat2.x = x_98.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat2.y = x_98.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat2.z = x_98.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb1) {
    x_132 = u_xlat28;
  } else {
    x_132 = u_xlat2.xyz;
  }
  u_xlat28 = x_132;
  u_xlat83 = dot(u_xlat28, u_xlat28);
  u_xlat83 = inverseSqrt(u_xlat83);
  u_xlat3 = (u_xlat28 * vec3f(u_xlat83));
  u_xlat84 = dot(u_xlat0.xyz, u_xlat3);
  u_xlat4.x = min(abs(u_xlat84), 1.0f);
  u_xlat4.x = (-(u_xlat4.x) + 1.0f);
  u_xlat4.x = log2(u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * x_174.x_FresnelPower);
  u_xlat4.x = exp2(u_xlat4.x);
  u_xlat31 = (-(x_174.x_AlphaCenter) + x_174.x_AlphaEdge);
  u_xlat31 = ((u_xlat4.x * u_xlat31) + x_174.x_AlphaCenter);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat8.w);
  u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlatb5 = (u_xlat5 < x_208.x_CascadeShadowSplitSphereRadii);
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb5.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb5.y);
  u_xlat6.z = select(0.0f, 1.0f, u_xlatb5.z);
  u_xlat6.w = select(0.0f, 1.0f, u_xlatb5.w);
  u_xlat5.x = select(-0.0f, -1.0f, u_xlatb5.x);
  u_xlat5.y = select(-0.0f, -1.0f, u_xlatb5.y);
  u_xlat5.z = select(-0.0f, -1.0f, u_xlatb5.z);
  u_xlat5 = vec4f(((u_xlat5.xyz + u_xlat6.yzw)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(u_xlat6.x, max(u_xlat5.xyz, vec3f()).xyz);
  u_xlat58.x = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat58.x = (-(u_xlat58.x) + 4.0f);
  u_xlatu58 = u32(u_xlat58.x);
  u_xlati58 = (bitcast<i32>(u_xlatu58) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati58 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_208.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati58].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati58 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati58 + 3i)].xyz)).xyz, u_xlat5.w);
  u_xlat0.w = 1.0f;
  u_xlat6.x = dot(x_396.unity_SHAr, u_xlat0);
  u_xlat6.y = dot(x_396.unity_SHAg, u_xlat0);
  u_xlat6.z = dot(x_396.unity_SHAb, u_xlat0);
  u_xlat7 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat8.x = dot(x_396.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_396.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_396.unity_SHBb, u_xlat7);
  u_xlat81 = (u_xlat0.y * u_xlat0.y);
  u_xlat81 = ((u_xlat0.x * u_xlat0.x) + -(u_xlat81));
  u_xlat7 = vec4f((((x_396.unity_SHC.xyz * vec3f(u_xlat81)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_474 = x_98.x_ScaledScreenParams.xy;
  u_xlat58 = (x_471 / vec2f(x_474.x, x_474.y));
  u_xlat7 = vec4f(((u_xlat58 * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat81 = ((u_xlat7.y * x_98.x_ScaleBiasRt.x) + x_98.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat81) + 1.0f);
  u_xlat81 = ((-(x_174.x_EdgeDarken) * u_xlat4.x) + 1.0f);
  let x_510 = (vec3f(u_xlat81) * x_174.x_BaseColor.xyz);
  u_xlat4 = vec4f(x_510.x, u_xlat4.y, x_510.yz);
  let x_517 = (vec3f(u_xlat31) * u_xlat4.xzw);
  u_xlat4 = vec4f(x_517.x, u_xlat4.y, x_517.yz);
  u_xlat81 = (-(x_174.x_Smoothness) + 1.0f);
  u_xlat86 = (u_xlat81 * u_xlat81);
  u_xlat86 = max(u_xlat86, 0.0078125f);
  u_xlat87 = (u_xlat86 * u_xlat86);
  u_xlat34 = (x_174.x_Smoothness + 0.04000002145767211914f);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat88 = ((u_xlat86 * 4.0f) + 2.0f);
  let x_550 = (u_xlat4.xzw * vec3f(0.95999997854232788086f));
  u_xlat4 = vec4f(x_550.x, u_xlat4.y, x_550.yz);
  u_xlatb8.x = (0.0f < x_208.x_MainLightShadowParams.y);
  if (u_xlatb8.x) {
    u_xlatb8.x = (x_208.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb8.x) {
      u_xlat8 = (u_xlat5.xyxy + x_208.x_MainLightShadowOffset0);
      let x_580 = u_xlat8.xy;
      txVec0 = vec3f(x_580.x, x_580.y, u_xlat5.z);
      u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_603 = u_xlat8.zw;
      txVec1 = vec3f(x_603.x, x_603.y, u_xlat5.z);
      u_xlat9.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat8 = (u_xlat5.xyxy + x_208.x_MainLightShadowOffset1);
      let x_624 = u_xlat8.xy;
      txVec2 = vec3f(x_624.x, x_624.y, u_xlat5.z);
      u_xlat9.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_639 = u_xlat8.zw;
      txVec3 = vec3f(x_639.x, x_639.y, u_xlat5.z);
      u_xlat9.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat8.x = dot(u_xlat9, x_654);
    } else {
      u_xlatb35 = (x_208.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb35) {
        u_xlat35 = vec3f((((u_xlat5.xy * x_208.x_MainLightShadowmapSize.zw) + x_673)).xy, u_xlat35.z);
        u_xlat35 = vec3f(floor(u_xlat35.xy).xy, u_xlat35.z);
        u_xlat9 = vec4f((((u_xlat5.xy * x_208.x_MainLightShadowmapSize.zw) + -(u_xlat35.xy))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_697);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        u_xlat63 = (u_xlat11.yw * x_709);
        let x_717 = ((u_xlat11.xz * x_673) + -(u_xlat9.xy));
        u_xlat10 = vec4f(x_717.x, u_xlat10.y, x_717.y, u_xlat10.w);
        u_xlat11 = vec4f(((-(u_xlat9.xy) + x_471)).xy, u_xlat11.zw);
        u_xlat65 = min(u_xlat9.xy, vec2f());
        u_xlat65 = ((-(u_xlat65) * u_xlat65) + u_xlat11.xy);
        u_xlat9 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat9.zw);
        u_xlat9 = vec4f((((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat10.yw)).xy, u_xlat9.zw);
        u_xlat65 = (u_xlat65 + x_471);
        u_xlat9 = vec4f(((u_xlat9.xy + x_471)).xy, u_xlat9.zw);
        u_xlat12 = vec4f(((u_xlat10.xz * x_765)).xy, u_xlat12.zw);
        u_xlat13 = vec4f(((u_xlat11.xy * x_765)).xy, u_xlat13.zw);
        u_xlat11 = vec4f(((u_xlat65 * x_765)).xy, u_xlat11.zw);
        u_xlat14 = vec4f(((u_xlat9.xy * x_765)).xy, u_xlat14.zw);
        u_xlat9 = vec4f(((u_xlat10.yw * x_765)).xy, u_xlat9.zw);
        u_xlat12.z = u_xlat11.x;
        u_xlat12.w = u_xlat9.x;
        u_xlat13.z = u_xlat14.x;
        u_xlat13.w = u_xlat63.x;
        u_xlat10 = (u_xlat12.zwxz + u_xlat13.zwxz);
        u_xlat11.z = u_xlat12.y;
        u_xlat11.w = u_xlat9.y;
        u_xlat14.z = u_xlat13.y;
        u_xlat14.w = u_xlat63.y;
        u_xlat9 = vec4f(((u_xlat11.zyw + u_xlat14.zyw)).xyz, u_xlat9.w);
        u_xlat11 = vec4f(((u_xlat13.xzw / u_xlat10.zwy)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_838)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat14.zyw / u_xlat9.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_838)).xyz, u_xlat12.w);
        u_xlat11 = vec4f(((u_xlat11.yxz * x_208.x_MainLightShadowmapSize.xxx)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_208.x_MainLightShadowmapSize.yyy)).xyz, u_xlat12.w);
        u_xlat11.w = u_xlat12.x;
        u_xlat13 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat11.ywxw);
        u_xlat14 = vec4f((((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat11.zw)).xy, u_xlat14.zw);
        u_xlat12.w = u_xlat11.y;
        let x_897 = u_xlat12.yz;
        u_xlat11 = vec4f(u_xlat11.x, x_897.x, u_xlat11.z, x_897.y);
        u_xlat15 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat12 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat12.wywz);
        u_xlat11 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat11.xwzw);
        u_xlat16 = (u_xlat9.xxxy * u_xlat10.zwyz);
        u_xlat17 = (u_xlat9.yyzz * u_xlat10);
        u_xlat35.x = (u_xlat9.z * u_xlat10.y);
        let x_947 = u_xlat13.xy;
        txVec4 = vec3f(x_947.x, x_947.y, u_xlat5.z);
        u_xlat62 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_962 = u_xlat13.zw;
        txVec5 = vec3f(x_962.x, x_962.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat89 = (u_xlat89 * u_xlat16.y);
        u_xlat62 = ((u_xlat16.x * u_xlat62) + u_xlat89);
        let x_987 = u_xlat14.xy;
        txVec6 = vec3f(x_987.x, x_987.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat62 = ((u_xlat16.z * u_xlat89) + u_xlat62);
        let x_1007 = u_xlat12.xy;
        txVec7 = vec3f(x_1007.x, x_1007.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat62 = ((u_xlat16.w * u_xlat89) + u_xlat62);
        let x_1027 = u_xlat15.xy;
        txVec8 = vec3f(x_1027.x, x_1027.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat62 = ((u_xlat17.x * u_xlat89) + u_xlat62);
        let x_1047 = u_xlat15.zw;
        txVec9 = vec3f(x_1047.x, x_1047.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat62 = ((u_xlat17.y * u_xlat89) + u_xlat62);
        let x_1067 = u_xlat12.zw;
        txVec10 = vec3f(x_1067.x, x_1067.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat62 = ((u_xlat17.z * u_xlat89) + u_xlat62);
        let x_1087 = u_xlat11.xy;
        txVec11 = vec3f(x_1087.x, x_1087.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat62 = ((u_xlat17.w * u_xlat89) + u_xlat62);
        let x_1107 = u_xlat11.zw;
        txVec12 = vec3f(x_1107.x, x_1107.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat8.x = ((u_xlat35.x * u_xlat89) + u_xlat62);
      } else {
        u_xlat35 = vec3f((((u_xlat5.xy * x_208.x_MainLightShadowmapSize.zw) + x_673)).xy, u_xlat35.z);
        u_xlat35 = vec3f(floor(u_xlat35.xy).xy, u_xlat35.z);
        u_xlat9 = vec4f((((u_xlat5.xy * x_208.x_MainLightShadowmapSize.zw) + -(u_xlat35.xy))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_697);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        let x_1165 = (u_xlat11.yw * x_1164);
        u_xlat12 = vec4f(u_xlat12.x, x_1165.x, u_xlat12.z, x_1165.y);
        u_xlat63 = ((u_xlat11.xz * x_673) + -(u_xlat9.xy));
        let x_1178 = (-(u_xlat9.xy) + x_471);
        u_xlat10 = vec4f(x_1178.x, u_xlat10.y, x_1178.y, u_xlat10.w);
        u_xlat11 = vec4f(min(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_1194 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.xz);
        u_xlat10 = vec4f(x_1194.x, u_xlat10.y, x_1194.y, u_xlat10.w);
        u_xlat11 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_1210 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.yw);
        u_xlat10 = vec4f(u_xlat10.x, x_1210.x, u_xlat10.z, x_1210.y);
        u_xlat10 = (u_xlat10 + vec4f(2.0f));
        u_xlat11.z = (u_xlat10.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat63.yx * x_1223)).xy, u_xlat13.zw);
        u_xlat63 = (u_xlat10.xz * x_1223);
        u_xlat13.z = (u_xlat10.w * 0.08163200318813323975f);
        u_xlat11.x = u_xlat13.y;
        let x_1244 = ((u_xlat9.xx * x_1240) + x_1243);
        u_xlat11 = vec4f(u_xlat11.x, x_1244.x, u_xlat11.z, x_1244.y);
        let x_1251 = ((u_xlat9.xx * x_1240) + x_1250);
        u_xlat10 = vec4f(x_1251.x, u_xlat10.y, x_1251.y, u_xlat10.w);
        u_xlat10.y = u_xlat63.x;
        u_xlat10.w = u_xlat12.y;
        u_xlat11 = (u_xlat10 + u_xlat11);
        let x_1266 = ((u_xlat9.yy * x_1240) + x_1243);
        u_xlat13 = vec4f(u_xlat13.x, x_1266.x, u_xlat13.z, x_1266.y);
        let x_1272 = ((u_xlat9.yy * x_1240) + x_1250);
        u_xlat12 = vec4f(x_1272.x, u_xlat12.y, x_1272.y, u_xlat12.w);
        u_xlat12.y = u_xlat63.y;
        u_xlat9 = (u_xlat12 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat11);
        u_xlat10 = (u_xlat10 + x_1288);
        u_xlat12 = (u_xlat12 / u_xlat9);
        u_xlat12 = (u_xlat12 + x_1288);
        u_xlat10 = (u_xlat10.wxyz * x_208.x_MainLightShadowmapSize.xxxx);
        u_xlat12 = (u_xlat12.xwyz * x_208.x_MainLightShadowmapSize.yyyy);
        let x_1308 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_1308.x, u_xlat13.y, x_1308.yz);
        u_xlat13.y = u_xlat12.x;
        u_xlat14 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat15 = vec4f((((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat15.zw);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat12.z;
        u_xlat16 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat69 = ((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat12.w;
        u_xlat18 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat37 = ((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.w = u_xlat13.y;
        u_xlat19 = vec4f((((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat10.xw)).xy, u_xlat19.zw);
        let x_1410 = u_xlat13.xzw;
        u_xlat12 = vec4f(x_1410.x, u_xlat12.y, x_1410.yz);
        u_xlat13 = ((u_xlat35.xyxy * x_208.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat66 = ((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat12.x = u_xlat10.x;
        u_xlat35 = vec3f((((u_xlat35.xy * x_208.x_MainLightShadowmapSize.xy) + u_xlat12.xy)).xy, u_xlat35.z);
        u_xlat20 = (u_xlat9.xxxx * u_xlat11);
        u_xlat21 = (u_xlat9.yyyy * u_xlat11);
        u_xlat22 = (u_xlat9.zzzz * u_xlat11);
        u_xlat9 = (u_xlat9.wwww * u_xlat11);
        let x_1467 = u_xlat14.xy;
        txVec13 = vec3f(x_1467.x, x_1467.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1481 = u_xlat14.zw;
        txVec14 = vec3f(x_1481.x, x_1481.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat10.x = (u_xlat10.x * u_xlat20.y);
        u_xlat89 = ((u_xlat20.x * u_xlat89) + u_xlat10.x);
        let x_1509 = u_xlat15.xy;
        txVec15 = vec3f(x_1509.x, x_1509.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat89 = ((u_xlat20.z * u_xlat10.x) + u_xlat89);
        let x_1531 = u_xlat17.xy;
        txVec16 = vec3f(x_1531.x, x_1531.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat89 = ((u_xlat20.w * u_xlat10.x) + u_xlat89);
        let x_1553 = u_xlat16.xy;
        txVec17 = vec3f(x_1553.x, x_1553.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat89 = ((u_xlat21.x * u_xlat10.x) + u_xlat89);
        let x_1575 = u_xlat16.zw;
        txVec18 = vec3f(x_1575.x, x_1575.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat89 = ((u_xlat21.y * u_xlat10.x) + u_xlat89);
        txVec19 = vec3f(u_xlat69.x, u_xlat69.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat89 = ((u_xlat21.z * u_xlat10.x) + u_xlat89);
        let x_1618 = u_xlat17.zw;
        txVec20 = vec3f(x_1618.x, x_1618.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat89 = ((u_xlat21.w * u_xlat10.x) + u_xlat89);
        let x_1640 = u_xlat18.xy;
        txVec21 = vec3f(x_1640.x, x_1640.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat89 = ((u_xlat22.x * u_xlat10.x) + u_xlat89);
        let x_1662 = u_xlat18.zw;
        txVec22 = vec3f(x_1662.x, x_1662.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat89 = ((u_xlat22.y * u_xlat10.x) + u_xlat89);
        txVec23 = vec3f(u_xlat37.x, u_xlat37.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat89 = ((u_xlat22.z * u_xlat10.x) + u_xlat89);
        let x_1705 = u_xlat19.xy;
        txVec24 = vec3f(x_1705.x, x_1705.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat89 = ((u_xlat22.w * u_xlat10.x) + u_xlat89);
        let x_1727 = u_xlat13.xy;
        txVec25 = vec3f(x_1727.x, x_1727.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat89 = ((u_xlat9.x * u_xlat10.x) + u_xlat89);
        let x_1749 = u_xlat13.zw;
        txVec26 = vec3f(x_1749.x, x_1749.y, u_xlat5.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat89 = ((u_xlat9.y * u_xlat9.x) + u_xlat89);
        txVec27 = vec3f(u_xlat66.x, u_xlat66.y, u_xlat5.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat89 = ((u_xlat9.z * u_xlat9.x) + u_xlat89);
        let x_1792 = u_xlat35.xy;
        txVec28 = vec3f(x_1792.x, x_1792.y, u_xlat5.z);
        u_xlat35.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat8.x = ((u_xlat9.w * u_xlat35.x) + u_xlat89);
      }
    }
  } else {
    let x_1816 = u_xlat5.xy;
    txVec29 = vec3f(x_1816.x, x_1816.y, u_xlat5.z);
    u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat5.x = (-(x_208.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat8.x * x_208.x_MainLightShadowParams.x) + u_xlat5.x);
  u_xlatb32 = (0.0f >= u_xlat5.z);
  u_xlatb59 = (u_xlat5.z >= 1.0f);
  u_xlatb32 = (u_xlatb59 | u_xlatb32);
  if (u_xlatb32) {
    x_1855 = 1.0f;
  } else {
    x_1855 = u_xlat5.x;
  }
  u_xlat5.x = x_1855;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_98.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat32 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat59 = ((u_xlat32 * x_208.x_MainLightShadowParams.z) + x_208.x_MainLightShadowParams.w);
  u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
  u_xlat89 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat59 * u_xlat89) + u_xlat5.x);
  u_xlat59 = dot(-(u_xlat3), u_xlat0.xyz);
  u_xlat59 = (u_xlat59 + u_xlat59);
  u_xlat9 = vec4f((((u_xlat0.xyz * -(vec3f(u_xlat59))) + -(u_xlat3))).xyz, u_xlat9.w);
  u_xlat84 = u_xlat84;
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat84 = (-(u_xlat84) + 1.0f);
  u_xlat84 = (u_xlat84 * u_xlat84);
  u_xlat84 = (u_xlat84 * u_xlat84);
  u_xlat59 = ((-(u_xlat81) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat81 = (u_xlat81 * u_xlat59);
  u_xlat81 = (u_xlat81 * 6.0f);
  let x_1945 = (u_xlat7.xz * x_98.x_FPParams1.xy);
  u_xlat7 = vec4f(x_1945.x, u_xlat7.y, x_1945.y, u_xlat7.w);
  let x_1954 = vec2u(u_xlat7.xz);
  u_xlatu7 = vec3u(x_1954.x, u_xlatu7.y, x_1954.y);
  u_xlatu10 = vec4u(vec2u(x_98.x_FPParams1.zw).xy, u_xlatu10.zw);
  u_xlati59 = ((bitcast<i32>(u_xlatu7.z) * bitcast<i32>(u_xlatu10.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu59 = (u_xlatu10.y * bitcast<u32>(u_xlati59));
  u_xlat2.x = dot(-(u_xlat2.xyz), u_xlat8.xyz);
  u_xlat29 = log2(u_xlat2.x);
  if (u_xlatb1) {
    x_1997 = u_xlat29;
  } else {
    x_1997 = u_xlat2.x;
  }
  u_xlat1.x = x_1997;
  u_xlat1.x = ((u_xlat1.x * x_98.x_FPParams0.x) + x_98.x_FPParams0.y);
  u_xlatu1 = u32(u_xlat1.x);
  u_xlatu2 = u32(x_98.x_FPParams2.x);
  u_xlatu2 = (u_xlatu2 + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu10.y) + 2i);
  u_xlatu1 = min(u_xlatu1, u_xlatu2);
  u_xlatu2 = (bitcast<u32>(u_xlati29) * u_xlatu1);
  u_xlatu29 = ((vec2u(u_xlatu1) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu1 = (u_xlatu29.x >> 2u);
  param = bitcast<i32>(u_xlatu29.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2060 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu29.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2067 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_2069 = vec2i(x_2060, x_2067);
  u_xlati7 = vec3i(x_2069.x, u_xlati7.y, x_2069.y);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2081.urp_ZBins[bitcast<i32>(u_xlatu1)].wy)));
  u_xlati62 = ~(u_xlati7.xz);
  u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati62.xx) & bitcast<vec2u>(x_2081.urp_ZBins[bitcast<i32>(u_xlatu1)].zx))).xy, u_xlati10.zw);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8) | bitcast<vec2u>(u_xlati10.xy)));
  u_xlati1 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati29 = bitcast<i32>((bitcast<u32>(u_xlati62.y) & bitcast<u32>(u_xlati8.y)));
  u_xlatu1 = (bitcast<u32>(u_xlati1) | bitcast<u32>(u_xlati29));
  let x_2142 = vec2u(x_98.x_FPParams0.zw);
  u_xlatu7 = vec3u(x_2142.x, u_xlatu7.y, x_2142.y);
  u_xlatb8 = ((vec4f() < u_xlat9.xyzx)).xyz;
  u_xlatu10.x = u_xlatu59;
  u_xlatu10.y = u_xlatu29.y;
  u_xlati64 = 0i;
  u_xlatu91 = u_xlatu1;
  u_xlat11.x = 0.0f;
  u_xlat11.y = 0.0f;
  u_xlat11.z = 0.0f;
  u_xlat29 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu89 = (u_xlatu91 >> 16u);
    u_xlati90 = u_xlati64;
    u_xlatu92 = u_xlatu91;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb12.x = (u_xlati90 == 0i);
      u_xlatu39.x = (u_xlatu92 & 65535u);
      u_xlatb39 = (u_xlatu89 >= u_xlatu39.x);
      u_xlatb12.x = (u_xlatb39 & u_xlatb12.x);
      if (!(u_xlatb12.x)) {
        break;
      }
      param_6 = u_xlatu92;
      param_7 = 5i;
      param_8 = 11i;
      let x_2210 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu12 = x_2210;
      u_xlatu13 = (u_xlatu10.xxyy + vec4u(u_xlatu12));
      u_xlatu39 = (u_xlatu13.yw >> x_2219);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2228 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2235 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2242 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2249 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_2228, x_2235, x_2242, x_2249);
      u_xlati14 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2258.urp_Tiles[bitcast<i32>(u_xlatu39.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      let x_2283 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2258.urp_Tiles[bitcast<i32>(u_xlatu39.x)].zx)));
      u_xlati39 = vec3i(x_2283.x, u_xlati39.y, x_2283.y);
      let x_2292 = bitcast<vec2i>((bitcast<vec2u>(u_xlati39.xz) | bitcast<vec2u>(u_xlati14)));
      u_xlati39 = vec3i(x_2292.x, u_xlati39.y, x_2292.y);
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati39.x)));
      u_xlati93 = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati39.z)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati93) | bitcast<u32>(u_xlati39.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2081.urp_ZBins[bitcast<i32>(u_xlatu39.y)].wy))).xy, u_xlati13.zw);
      u_xlati66 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_2081.urp_ZBins[bitcast<i32>(u_xlatu39.y)].zx)));
      u_xlati66 = bitcast<vec2i>((bitcast<vec2u>(u_xlati66) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati66.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati66.x)));
      u_xlati93 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati66.y)));
      u_xlati66.x = bitcast<i32>((bitcast<u32>(u_xlati93) | bitcast<u32>(u_xlati66.x)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati66.x) & bitcast<u32>(u_xlati39.x)));
      u_xlati66.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu92) & 31i)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati66.x) & bitcast<u32>(u_xlati39.x)));
      u_xlati12.x = (bitcast<i32>(u_xlatu12) << bitcast<u32>(5i));
      u_xlatu12 = (u_xlatu89 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati12.x)))));
      u_xlatu12 = min(u_xlatu12, 31u);
      u_xlatu12 = (bitcast<u32>(-(bitcast<i32>(u_xlatu12))) + 31u);
      u_xlatu12 = (4294967295u >> (u_xlatu12 & 31u));
      u_xlati90 = bitcast<i32>((u_xlatu12 & bitcast<u32>(u_xlati39.x)));
      u_xlati12.x = (bitcast<i32>(u_xlatu92) + 32i);
      u_xlatu92 = (bitcast<u32>(u_xlati12.x) & 4294967264u);
    }
    u_xlatu91 = u_xlatu92;
    u_xlatb89 = (u_xlati90 != 0i);
    u_xlatb12.x = (u_xlat29 < 0.99000000953674316406f);
    u_xlatb89 = (u_xlatb89 & u_xlatb12.x);
    if (!(u_xlatb89)) {
      break;
    }
    u_xlati89 = (0i - u_xlati90);
    u_xlatu89 = (bitcast<u32>(u_xlati89) & bitcast<u32>(u_xlati90));
    u_xlat89 = f32(u_xlatu89);
    u_xlatu89 = (bitcast<u32>(u_xlat89) >> 23u);
    u_xlati89 = (bitcast<i32>(u_xlatu89) + -127i);
    u_xlati12.x = (1i << bitcast<u32>((u_xlati89 & 31i)));
    u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati90) ^ bitcast<u32>(u_xlati12.x)));
    u_xlati12.x = (bitcast<i32>(u_xlatu91) + -32i);
    u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.x) & 65504u));
    u_xlati89 = (u_xlati89 + u_xlati12.x);
    u_xlati89 = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati89);
    u_xlat12 = vec4f(((vs_TEXCOORD0 + -(x_2516.urp_ReflProbes_BoxMin[u_xlati89].xyz))).xyz, u_xlat12.w);
    u_xlat13 = vec4f(((-(vs_TEXCOORD0) + x_2516.urp_ReflProbes_BoxMax[u_xlati89].xyz)).xyz, u_xlat13.w);
    u_xlat12 = vec4f(min(u_xlat12.xyz, u_xlat13.xyz).xyz, u_xlat12.w);
    u_xlat12 = vec4f(((u_xlat12.xyz / x_2516.urp_ReflProbes_BoxMax[u_xlati89].www)).xyz, u_xlat12.w);
    u_xlat39.x = min(u_xlat12.z, u_xlat12.y);
    u_xlat12.x = min(u_xlat39.x, u_xlat12.x);
    u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
    u_xlat39.x = (-(u_xlat29) + 1.0f);
    u_xlat12.x = min(u_xlat39.x, u_xlat12.x);
    u_xlatb39 = (0.0f < x_2516.urp_ReflProbes_ProbePosition[u_xlati89].w);
    if (u_xlatb8.x) {
      x_2583 = x_2516.urp_ReflProbes_BoxMax[u_xlati89].x;
    } else {
      x_2583 = x_2516.urp_ReflProbes_BoxMin[u_xlati89].x;
    }
    u_xlat13.x = x_2583;
    if (u_xlatb8.y) {
      x_2597 = x_2516.urp_ReflProbes_BoxMax[u_xlati89].y;
    } else {
      x_2597 = x_2516.urp_ReflProbes_BoxMin[u_xlati89].y;
    }
    u_xlat13.y = x_2597;
    if (u_xlatb8.z) {
      x_2611 = x_2516.urp_ReflProbes_BoxMax[u_xlati89].z;
    } else {
      x_2611 = x_2516.urp_ReflProbes_BoxMin[u_xlati89].z;
    }
    u_xlat13.z = x_2611;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xyz)).xyz, u_xlat13.w);
    u_xlat66.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat66.x = min(u_xlat13.z, u_xlat66.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_2516.urp_ReflProbes_ProbePosition[u_xlati89].xyz))).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((u_xlat9.xyz * u_xlat66.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
    if (u_xlatb39) {
      x_2669 = u_xlat13.xyz;
    } else {
      x_2669 = u_xlat9.xyz;
    }
    u_xlat39 = x_2669;
    u_xlatu13.x = u32(abs(x_2516.urp_ReflProbes_ProbePosition[u_xlati89].w));
    u_xlatu13.x = (u_xlatu13.x + 4294967295u);
    u_xlat13.x = f32(u_xlatu13.x);
    u_xlat13.x = min(u_xlat81, u_xlat13.x);
    u_xlat40.x = dot(abs(u_xlat39), vec3f(1.0f));
    u_xlat40.x = max(u_xlat40.x, 0.00000099999999747524f);
    u_xlat40.x = (1.0f / u_xlat40.x);
    u_xlat14 = vec4f(((u_xlat39.zxy * u_xlat40.xxx)).xyz, u_xlat14.w);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb67 = ((u_xlat14.yzyz >= vec4f())).xy;
    if (u_xlatb67.x) {
      x_2737 = u_xlat14.x;
    } else {
      x_2737 = -(u_xlat14.x);
    }
    u_xlat67.x = x_2737;
    if (u_xlatb67.y) {
      x_2750 = u_xlat14.x;
    } else {
      x_2750 = -(u_xlat14.x);
    }
    u_xlat67.y = x_2750;
    u_xlat39 = vec3f((((u_xlat39.xy * u_xlat40.xx) + u_xlat67)).xy, u_xlat39.z);
    u_xlat39 = vec3f((((u_xlat39.xy * x_673) + x_673)).xy, u_xlat39.z);
    u_xlat39 = vec3f(clamp(u_xlat39.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat39.z);
    u_xlat93 = floor(u_xlat13.x);
    u_xlat40.x = (u_xlat93 + 1.0f);
    u_xlat13.x = (-(u_xlat93) + u_xlat13.x);
    u_xlatu93 = u32(u_xlat93);
    u_xlati93 = ((u_xlati89 * 7i) + bitcast<i32>(u_xlatu93));
    u_xlatu40 = u32(u_xlat40.x);
    u_xlati89 = ((u_xlati89 * 7i) + bitcast<i32>(u_xlatu40));
    u_xlat40 = vec3f((((u_xlat39.xy * x_2516.urp_ReflProbes_MipScaleOffset[u_xlati93].xy) + x_2516.urp_ReflProbes_MipScaleOffset[u_xlati93].zw)).xy, u_xlat40.z);
    u_xlat40 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat40.xy, 0.0f).xyz;
    u_xlat39 = vec3f((((u_xlat39.xy * x_2516.urp_ReflProbes_MipScaleOffset[u_xlati89].xy) + x_2516.urp_ReflProbes_MipScaleOffset[u_xlati89].zw)).xy, u_xlat39.z);
    u_xlat39 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat39.xy, 0.0f).xyz;
    u_xlat39 = (-(u_xlat40) + u_xlat39);
    u_xlat39 = ((u_xlat13.xxx * u_xlat39) + u_xlat40);
    u_xlat11 = vec4f((((u_xlat12.xxx * u_xlat39) + u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat29 = (u_xlat29 + u_xlat12.x);
  }
  u_xlatb1 = (u_xlat29 < 0.99000000953674316406f);
  if (u_xlatb1) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xyz, u_xlat81);
    u_xlat81 = (-(u_xlat29) + 1.0f);
    u_xlat1.x = (u_xlat8.w + -1.0f);
    u_xlat1.x = ((x_98.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_98.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_98.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat1.xxx)).xyz, u_xlat8.w);
    u_xlat11 = vec4f((((vec3f(u_xlat81) * u_xlat8.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
  }
  u_xlat8 = vec4f((((vec2f(u_xlat86) * vec2f(u_xlat86)) + vec2f(-1.0f, 1.0f))).xy, u_xlat8.zw);
  u_xlat81 = (1.0f / u_xlat8.y);
  u_xlat1.x = (u_xlat34 + -0.03999999910593032837f);
  u_xlat1.x = ((u_xlat84 * u_xlat1.x) + 0.03999999910593032837f);
  u_xlat81 = (u_xlat81 * u_xlat1.x);
  u_xlat35 = (vec3f(u_xlat81) * u_xlat11.xyz);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat4.xzw) + u_xlat35)).xyz, u_xlat6.w);
  u_xlati81 = bitcast<i32>((x_98.x_MainLightLayerMask & bitcast<u32>(x_396.unity_RenderingLayer.x)));
  u_xlat1.x = dot(u_xlat0.xyz, x_98.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat5.x);
  u_xlat35 = (u_xlat1.xxx * x_98.x_MainLightColor.xyz);
  u_xlat1 = vec4f((((u_xlat28 * vec3f(u_xlat83)) + x_98.x_MainLightPosition.xyz)).xyz, u_xlat1.w);
  u_xlat82 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat82 = max(u_xlat82, 1.17549435e-38f);
  u_xlat82 = inverseSqrt(u_xlat82);
  u_xlat1 = vec4f(((vec3f(u_xlat82) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.w = dot(u_xlat0.xyz, u_xlat1.xyz);
  u_xlat1.w = clamp(u_xlat1.w, 0.0f, 1.0f);
  u_xlat1.x = dot(x_98.x_MainLightPosition.xyz, u_xlat1.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xw * u_xlat1.xw)).xy, u_xlat1.zw);
  u_xlat28.x = ((u_xlat1.y * u_xlat8.x) + 1.00001001358032226562f);
  u_xlat28.x = (u_xlat28.x * u_xlat28.x);
  u_xlat1.x = max(u_xlat1.x, 0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * u_xlat28.x);
  u_xlat1.x = (u_xlat88 * u_xlat1.x);
  u_xlat1.x = (u_xlat87 / u_xlat1.x);
  u_xlat1 = vec4f((((u_xlat1.xxx * x_3121) + u_xlat4.xzw)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat35 * u_xlat1.xyz)).xyz, u_xlat1.w);
  if ((u_xlati81 != 0i)) {
    x_3136 = u_xlat1.xyz;
  } else {
    x_3136 = vec3f();
  }
  u_xlat1 = vec4f(x_3136.xyz, u_xlat1.w);
  u_xlatu81 = min(u_xlatu7.z, 32u);
  u_xlat82 = ((u_xlat32 * x_208.x_AdditionalShadowFadeParams.x) + x_208.x_AdditionalShadowFadeParams.y);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu81)) {
    } else {
      break;
    }
    u_xlat35 = ((-(vs_TEXCOORD0) * x_3181.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3181.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat83 = dot(u_xlat35, u_xlat35);
    u_xlat83 = max(u_xlat83, 0.00006103515625f);
    u_xlat84 = inverseSqrt(u_xlat83);
    u_xlat9 = vec4f(((vec3f(u_xlat84) * u_xlat35)).xyz, u_xlat9.w);
    u_xlat7.x = (1.0f / u_xlat83);
    u_xlat83 = (u_xlat83 * x_3181.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat83 = ((-(u_xlat83) * u_xlat83) + 1.0f);
    u_xlat83 = max(u_xlat83, 0.0f);
    u_xlat83 = (u_xlat83 * u_xlat83);
    u_xlat83 = (u_xlat83 * u_xlat7.x);
    u_xlat7.x = dot(x_3181.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9.xyz);
    u_xlat7.x = ((u_xlat7.x * x_3181.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3181.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat83 = (u_xlat83 * u_xlat7.x);
    u_xlatb7 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati34 = i32(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati7.x = select(u_xlati34, -1i, u_xlatb7);
    u_xlatb34 = (u_xlati7.x >= 0i);
    if (u_xlatb34) {
      u_xlatb34 = any(!((vec4f() == vec4f(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb34) {
        u_xlatb10 = vec4<bool>(((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz.xyz, u_xlatb10.w);
        u_xlatb34 = (u_xlatb10.y & u_xlatb10.x);
        let x_3319 = ((-(u_xlat9.zyzx) < vec4f())).xyw;
        u_xlatb10 = vec4<bool>(x_3319.xy, u_xlatb10.z, x_3319.z);
        u_xlat10.x = select(4.0f, 5.0f, u_xlatb10.x);
        u_xlat10.y = select(2.0f, 3.0f, u_xlatb10.y);
        u_xlat90 = select(0.0f, 1.0f, u_xlatb10.w);
        if (u_xlatb10.z) {
          x_3337 = u_xlat10.y;
        } else {
          x_3337 = u_xlat90;
        }
        u_xlat90 = x_3337;
        if (u_xlatb34) {
          x_3346 = u_xlat10.x;
        } else {
          x_3346 = u_xlat90;
        }
        u_xlat34 = x_3346;
        u_xlati34 = i32(u_xlat34);
        u_xlati7.x = (u_xlati34 + u_xlati7.x);
      }
      u_xlati7.x = (u_xlati7.x << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 1i)]);
      u_xlat10 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati7.x] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      u_xlatb7 = (0.0f < x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb7) {
        u_xlatb7 = (1.0f == x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb7) {
          u_xlat11 = (u_xlat10.xyxy + x_208.x_AdditionalShadowOffset0);
          let x_3430 = u_xlat11.xy;
          txVec30 = vec3f(x_3430.x, x_3430.y, u_xlat10.z);
          u_xlat12.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_3446 = u_xlat11.zw;
          txVec31 = vec3f(x_3446.x, x_3446.y, u_xlat10.z);
          u_xlat12.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat11 = (u_xlat10.xyxy + x_208.x_AdditionalShadowOffset1);
          let x_3466 = u_xlat11.xy;
          txVec32 = vec3f(x_3466.x, x_3466.y, u_xlat10.z);
          u_xlat12.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_3481 = u_xlat11.zw;
          txVec33 = vec3f(x_3481.x, x_3481.y, u_xlat10.z);
          u_xlat12.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat7.x = dot(u_xlat12, x_654);
        } else {
          u_xlatb34 = (2.0f == x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb34) {
            u_xlat11 = vec4f((((u_xlat10.xy * x_208.x_AdditionalShadowmapSize.zw) + x_673)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_208.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_697);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_3541 = (u_xlat13.yw * x_709);
            u_xlat12 = vec4f(x_3541.x, u_xlat12.y, x_3541.y, u_xlat12.w);
            u_xlat13 = vec4f((((u_xlat13.xz * x_673) + -(u_xlat65))).xy, u_xlat13.zw);
            u_xlat67 = (-(u_xlat65) + x_471);
            u_xlat14 = vec4f(min(u_xlat65, vec2f()).xy, u_xlat14.zw);
            u_xlat14 = vec4f((((-(u_xlat14.xy) * u_xlat14.xy) + u_xlat67)).xy, u_xlat14.zw);
            u_xlat65 = max(u_xlat65, vec2f());
            u_xlat65 = ((-(u_xlat65) * u_xlat65) + u_xlat12.yw);
            u_xlat14 = vec4f(((u_xlat14.xy + x_471)).xy, u_xlat14.zw);
            u_xlat65 = (u_xlat65 + x_471);
            u_xlat15 = vec4f(((u_xlat13.xy * x_765)).xy, u_xlat15.zw);
            u_xlat13 = vec4f(((u_xlat67 * x_765)).xy, u_xlat13.zw);
            u_xlat14 = vec4f(((u_xlat14.xy * x_765)).xy, u_xlat14.zw);
            u_xlat16 = vec4f(((u_xlat65 * x_765)).xy, u_xlat16.zw);
            u_xlat65 = (u_xlat12.yw * x_765);
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
            u_xlat13 = vec4f(((u_xlat13.xyz + x_838)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat16.zyw / u_xlat12.xyz)).xyz, u_xlat14.w);
            u_xlat14 = vec4f(((u_xlat14.xyz + x_838)).xyz, u_xlat14.w);
            u_xlat13 = vec4f(((u_xlat13.yxz * x_208.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat14.xyz * x_208.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat14.w);
            u_xlat13.w = u_xlat14.x;
            u_xlat15 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat13.ywxw);
            u_xlat65 = ((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat13.zw);
            u_xlat14.w = u_xlat13.y;
            let x_3707 = u_xlat14.yz;
            u_xlat13 = vec4f(u_xlat13.x, x_3707.x, u_xlat13.z, x_3707.y);
            u_xlat16 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyzy);
            u_xlat14 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat14.wywz);
            u_xlat13 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xwzw);
            u_xlat18 = (u_xlat12.xxxy * u_xlat17.zwyz);
            u_xlat19 = (u_xlat12.yyzz * u_xlat17);
            u_xlat34 = (u_xlat12.z * u_xlat17.y);
            let x_3753 = u_xlat15.xy;
            txVec34 = vec3f(x_3753.x, x_3753.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_3767 = u_xlat15.zw;
            txVec35 = vec3f(x_3767.x, x_3767.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat91 = (u_xlat91 * u_xlat18.y);
            u_xlat90 = ((u_xlat18.x * u_xlat90) + u_xlat91);
            txVec36 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat90 = ((u_xlat18.z * u_xlat91) + u_xlat90);
            let x_3811 = u_xlat14.xy;
            txVec37 = vec3f(x_3811.x, x_3811.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat90 = ((u_xlat18.w * u_xlat91) + u_xlat90);
            let x_3831 = u_xlat16.xy;
            txVec38 = vec3f(x_3831.x, x_3831.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat90 = ((u_xlat19.x * u_xlat91) + u_xlat90);
            let x_3851 = u_xlat16.zw;
            txVec39 = vec3f(x_3851.x, x_3851.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat90 = ((u_xlat19.y * u_xlat91) + u_xlat90);
            let x_3871 = u_xlat14.zw;
            txVec40 = vec3f(x_3871.x, x_3871.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat90 = ((u_xlat19.z * u_xlat91) + u_xlat90);
            let x_3891 = u_xlat13.xy;
            txVec41 = vec3f(x_3891.x, x_3891.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat90 = ((u_xlat19.w * u_xlat91) + u_xlat90);
            let x_3911 = u_xlat13.zw;
            txVec42 = vec3f(x_3911.x, x_3911.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat7.x = ((u_xlat34 * u_xlat91) + u_xlat90);
          } else {
            u_xlat11 = vec4f((((u_xlat10.xy * x_208.x_AdditionalShadowmapSize.zw) + x_673)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_208.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_697);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_3964 = (u_xlat13.yw * x_1164);
            u_xlat14 = vec4f(u_xlat14.x, x_3964.x, u_xlat14.z, x_3964.y);
            let x_3972 = ((u_xlat13.xz * x_673) + -(u_xlat65));
            u_xlat12 = vec4f(x_3972.x, u_xlat12.y, x_3972.y, u_xlat12.w);
            u_xlat13 = vec4f(((-(u_xlat65) + x_471)).xy, u_xlat13.zw);
            u_xlat67 = min(u_xlat65, vec2f());
            u_xlat13 = vec4f((((-(u_xlat67) * u_xlat67) + u_xlat13.xy)).xy, u_xlat13.zw);
            u_xlat67 = max(u_xlat65, vec2f());
            let x_3999 = ((-(u_xlat67) * u_xlat67) + u_xlat12.yw);
            u_xlat39 = vec3f(x_3999.x, u_xlat39.y, x_3999.y);
            u_xlat13 = vec4f(((u_xlat13.xy + x_4004)).xy, u_xlat13.zw);
            let x_4010 = (u_xlat39.xz + x_4004);
            u_xlat12 = vec4f(u_xlat12.x, x_4010.x, u_xlat12.z, x_4010.y);
            u_xlat15.z = (u_xlat12.y * 0.08163200318813323975f);
            u_xlat16 = vec4f(((u_xlat12.zxw * x_4019)).xyz, u_xlat16.w);
            u_xlat12 = vec4f(((u_xlat13.xy * x_1223)).xy, u_xlat12.zw);
            u_xlat15.x = u_xlat16.y;
            let x_4034 = ((u_xlat65.xx * x_1240) + x_1243);
            u_xlat15 = vec4f(u_xlat15.x, x_4034.x, u_xlat15.z, x_4034.y);
            let x_4040 = ((u_xlat65.xx * x_1240) + x_1250);
            u_xlat13 = vec4f(x_4040.x, u_xlat13.y, x_4040.y, u_xlat13.w);
            u_xlat13.y = u_xlat12.x;
            u_xlat13.w = u_xlat14.y;
            u_xlat15 = (u_xlat13 + u_xlat15);
            let x_4055 = ((u_xlat65.yy * x_1240) + x_1243);
            u_xlat16 = vec4f(u_xlat16.x, x_4055.x, u_xlat16.z, x_4055.y);
            let x_4061 = ((u_xlat65.yy * x_1240) + x_1250);
            u_xlat14 = vec4f(x_4061.x, u_xlat14.y, x_4061.y, u_xlat14.w);
            u_xlat14.y = u_xlat12.y;
            u_xlat12 = (u_xlat14 + u_xlat16);
            u_xlat13 = (u_xlat13 / u_xlat15);
            u_xlat13 = (u_xlat13 + x_1288);
            u_xlat14 = (u_xlat14 / u_xlat12);
            u_xlat14 = (u_xlat14 + x_1288);
            u_xlat13 = (u_xlat13.wxyz * x_208.x_AdditionalShadowmapSize.xxxx);
            u_xlat14 = (u_xlat14.xwyz * x_208.x_AdditionalShadowmapSize.yyyy);
            let x_4093 = u_xlat13.yzw;
            u_xlat16 = vec4f(x_4093.x, u_xlat16.y, x_4093.yz);
            u_xlat16.y = u_xlat14.x;
            u_xlat17 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat65 = ((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat13.y = u_xlat16.y;
            u_xlat16.y = u_xlat14.z;
            u_xlat18 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat19 = vec4f((((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat19.zw);
            u_xlat13.z = u_xlat16.y;
            u_xlat20 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyxz);
            u_xlat16.y = u_xlat14.w;
            u_xlat21 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat40 = vec3f((((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat40.z);
            u_xlat13.w = u_xlat16.y;
            u_xlat73 = ((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat13.xw);
            let x_4192 = u_xlat16.xzw;
            u_xlat14 = vec4f(x_4192.x, u_xlat14.y, x_4192.yz);
            u_xlat16 = ((u_xlat11.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xyzy);
            u_xlat68 = ((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat14.wy);
            u_xlat14.x = u_xlat13.x;
            u_xlat11 = vec4f((((u_xlat11.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat14.xy)).xy, u_xlat11.zw);
            u_xlat22 = (u_xlat12.xxxx * u_xlat15);
            u_xlat23 = (u_xlat12.yyyy * u_xlat15);
            u_xlat24 = (u_xlat12.zzzz * u_xlat15);
            u_xlat12 = (u_xlat12.wwww * u_xlat15);
            let x_4248 = u_xlat17.xy;
            txVec43 = vec3f(x_4248.x, x_4248.y, u_xlat10.z);
            u_xlat34 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_4262 = u_xlat17.zw;
            txVec44 = vec3f(x_4262.x, x_4262.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat90 = (u_xlat90 * u_xlat22.y);
            u_xlat34 = ((u_xlat22.x * u_xlat34) + u_xlat90);
            txVec45 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat34 = ((u_xlat22.z * u_xlat90) + u_xlat34);
            let x_4305 = u_xlat20.xy;
            txVec46 = vec3f(x_4305.x, x_4305.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat34 = ((u_xlat22.w * u_xlat90) + u_xlat34);
            let x_4325 = u_xlat18.xy;
            txVec47 = vec3f(x_4325.x, x_4325.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat34 = ((u_xlat23.x * u_xlat90) + u_xlat34);
            let x_4345 = u_xlat18.zw;
            txVec48 = vec3f(x_4345.x, x_4345.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat34 = ((u_xlat23.y * u_xlat90) + u_xlat34);
            let x_4365 = u_xlat19.xy;
            txVec49 = vec3f(x_4365.x, x_4365.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat34 = ((u_xlat23.z * u_xlat90) + u_xlat34);
            let x_4385 = u_xlat20.zw;
            txVec50 = vec3f(x_4385.x, x_4385.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat34 = ((u_xlat23.w * u_xlat90) + u_xlat34);
            let x_4405 = u_xlat21.xy;
            txVec51 = vec3f(x_4405.x, x_4405.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat34 = ((u_xlat24.x * u_xlat90) + u_xlat34);
            let x_4425 = u_xlat21.zw;
            txVec52 = vec3f(x_4425.x, x_4425.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat34 = ((u_xlat24.y * u_xlat90) + u_xlat34);
            let x_4445 = u_xlat40.xy;
            txVec53 = vec3f(x_4445.x, x_4445.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat34 = ((u_xlat24.z * u_xlat90) + u_xlat34);
            txVec54 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat34 = ((u_xlat24.w * u_xlat90) + u_xlat34);
            let x_4484 = u_xlat16.xy;
            txVec55 = vec3f(x_4484.x, x_4484.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat34 = ((u_xlat12.x * u_xlat90) + u_xlat34);
            let x_4504 = u_xlat16.zw;
            txVec56 = vec3f(x_4504.x, x_4504.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat34 = ((u_xlat12.y * u_xlat90) + u_xlat34);
            txVec57 = vec3f(u_xlat68.x, u_xlat68.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat34 = ((u_xlat12.z * u_xlat90) + u_xlat34);
            let x_4543 = u_xlat11.xy;
            txVec58 = vec3f(x_4543.x, x_4543.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat7.x = ((u_xlat12.w * u_xlat90) + u_xlat34);
          }
        }
      } else {
        let x_4565 = u_xlat10.xy;
        txVec59 = vec3f(x_4565.x, x_4565.y, u_xlat10.z);
        u_xlat7.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat34 = (1.0f + -(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat7.x = ((u_xlat7.x * x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat34);
      u_xlatb34 = (0.0f >= u_xlat10.z);
      u_xlatb90 = (u_xlat10.z >= 1.0f);
      u_xlatb34 = (u_xlatb34 | u_xlatb90);
      if (u_xlatb34) {
        x_4605 = 1.0f;
      } else {
        x_4605 = u_xlat7.x;
      }
      u_xlat7.x = x_4605;
    } else {
      u_xlat7.x = 1.0f;
    }
    u_xlat34 = (-(u_xlat7.x) + 1.0f);
    u_xlat7.x = ((u_xlat82 * u_xlat34) + u_xlat7.x);
    u_xlati34 = bitcast<i32>((bitcast<u32>(x_396.unity_RenderingLayer.x) & bitcast<u32>(x_3181.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat83 = (u_xlat83 * u_xlat7.x);
    u_xlat7.x = dot(u_xlat0.xyz, u_xlat9.xyz);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat83 = (u_xlat83 * u_xlat7.x);
    u_xlat10 = vec4f(((vec3f(u_xlat83) * x_3181.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlat35 = ((u_xlat35 * vec3f(u_xlat84)) + u_xlat3);
    u_xlat83 = dot(u_xlat35, u_xlat35);
    u_xlat83 = max(u_xlat83, 1.17549435e-38f);
    u_xlat83 = inverseSqrt(u_xlat83);
    u_xlat35 = (vec3f(u_xlat83) * u_xlat35);
    u_xlat83 = dot(u_xlat0.xyz, u_xlat35);
    u_xlat83 = clamp(u_xlat83, 0.0f, 1.0f);
    u_xlat84 = dot(u_xlat9.xyz, u_xlat35);
    u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
    u_xlat83 = (u_xlat83 * u_xlat83);
    u_xlat83 = ((u_xlat83 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat83 = (u_xlat83 * u_xlat83);
    u_xlat84 = max(u_xlat84, 0.10000000149011611938f);
    u_xlat83 = (u_xlat83 * u_xlat84);
    u_xlat83 = (u_xlat88 * u_xlat83);
    u_xlat83 = (u_xlat87 / u_xlat83);
    u_xlat35 = ((vec3f(u_xlat83) * x_3121) + u_xlat4.xzw);
    u_xlat35 = ((u_xlat35 * u_xlat10.xyz) + u_xlat5.xyw);
    if ((u_xlati34 != 0i)) {
      x_4733 = u_xlat35;
    } else {
      x_4733 = u_xlat5.xyw;
    }
    u_xlat5 = vec4f(x_4733.xy, u_xlat5.z, x_4733.z);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu81 = (u_xlatu2 >> 2u);
  param_21 = bitcast<i32>(u_xlatu2);
  param_22 = 0i;
  param_23 = 1i;
  let x_4753 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu2);
  param_25 = 1i;
  param_26 = 1i;
  let x_4759 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati2 = vec4i(vec2i(x_4753, x_4759).xy, u_xlati2.zw);
  u_xlati7 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_2081.urp_ZBins[bitcast<i32>(u_xlatu81)].wy))).xy, u_xlati7.z);
  let x_4778 = ~(u_xlati2.xy);
  u_xlati2 = vec4i(x_4778.x, u_xlati2.yz, x_4778.y);
  u_xlati35 = bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_2081.urp_ZBins[bitcast<i32>(u_xlatu81)].zx)));
  u_xlati7 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xy) | bitcast<vec2u>(u_xlati35))).xy, u_xlati7.z);
  u_xlati81 = bitcast<i32>((bitcast<u32>(u_xlati2.y) & bitcast<u32>(u_xlati7.x)));
  u_xlati2.x = bitcast<i32>((bitcast<u32>(u_xlati2.w) & bitcast<u32>(u_xlati7.y)));
  u_xlatu81 = (bitcast<u32>(u_xlati81) | bitcast<u32>(u_xlati2.x));
  u_xlatu9.x = u_xlatu59;
  u_xlatu9.y = u_xlatu29.y;
  u_xlatu63.x = 0u;
  u_xlatu63.y = u_xlatu81;
  let x_4836 = u_xlat5.xyw;
  u_xlat2 = vec4f(x_4836.xy, u_xlat2.z, x_4836.z);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu84 = (u_xlatu63.y >> 16u);
    u_xlatu7 = vec3u(u_xlatu63.xy, u_xlatu7.z);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb35 = (bitcast<i32>(u_xlatu7.x) == 0i);
      u_xlatu62.x = (u_xlatu7.y & 65535u);
      u_xlatb62 = (u_xlatu84 >= u_xlatu62.x);
      u_xlatb35 = (u_xlatb62 & u_xlatb35);
      if (!(u_xlatb35)) {
        break;
      }
      param_27 = u_xlatu7.y;
      param_28 = 5i;
      param_29 = 11i;
      let x_4884 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu35 = x_4884;
      u_xlatu10 = (vec4u(u_xlatu35) + u_xlatu9.xxyy);
      u_xlatu62 = (u_xlatu10.yw >> x_2219);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_4899 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_4906 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_4913 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_4920 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_4899, x_4906, x_4913, x_4920);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_2258.urp_Tiles[bitcast<i32>(u_xlatu62.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati65 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2258.urp_Tiles[bitcast<i32>(u_xlatu62.x)].zx)));
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati65) | bitcast<vec2u>(u_xlati11)));
      u_xlati62.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.y)));
      u_xlati62.x = bitcast<i32>((bitcast<u32>(u_xlati62.x) | bitcast<u32>(u_xlati10.x)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_2081.urp_ZBins[bitcast<i32>(u_xlatu62.y)].wy))).xy, u_xlati10.zw);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_2081.urp_ZBins[bitcast<i32>(u_xlatu62.y)].zx)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xy) | bitcast<vec2u>(u_xlati11))).xy, u_xlati10.zw);
      u_xlati89 = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati10.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati10.y)));
      u_xlati89 = bitcast<i32>((bitcast<u32>(u_xlati89) | bitcast<u32>(u_xlati10.x)));
      u_xlati62.x = bitcast<i32>((bitcast<u32>(u_xlati89) & bitcast<u32>(u_xlati62.x)));
      u_xlati89 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu7.y) & 31i)));
      u_xlati62.x = bitcast<i32>((bitcast<u32>(u_xlati89) & bitcast<u32>(u_xlati62.x)));
      u_xlati35.x = (bitcast<i32>(u_xlatu35) << bitcast<u32>(5i));
      u_xlatu35 = (u_xlatu84 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati35.x)))));
      u_xlatu35 = min(u_xlatu35, 31u);
      u_xlatu35 = (bitcast<u32>(-(bitcast<i32>(u_xlatu35))) + 31u);
      u_xlatu35 = (4294967295u >> (u_xlatu35 & 31u));
      u_xlatu7.x = (u_xlatu35 & bitcast<u32>(u_xlati62.x));
      u_xlati35.x = (bitcast<i32>(u_xlatu7.y) + 32i);
      u_xlatu7.y = (bitcast<u32>(u_xlati35.x) & 4294967264u);
    }
    u_xlatu63.y = u_xlatu7.y;
    if ((u_xlatu7.x == 0u)) {
      break;
    }
    u_xlati84 = (0i - bitcast<i32>(u_xlatu7.x));
    u_xlatu84 = (bitcast<u32>(u_xlati84) & u_xlatu7.x);
    u_xlat84 = f32(u_xlatu84);
    u_xlatu84 = (bitcast<u32>(u_xlat84) >> 23u);
    u_xlati84 = (bitcast<i32>(u_xlatu84) + -127i);
    u_xlati35.x = (1i << bitcast<u32>((u_xlati84 & 31i)));
    u_xlatu63.x = (u_xlatu7.x ^ bitcast<u32>(u_xlati35.x));
    u_xlati35.x = (bitcast<i32>(u_xlatu63.y) + -32i);
    u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati35.x) & 65504u));
    u_xlati84 = (u_xlati84 + u_xlati35.x);
    u_xlati84 = (bitcast<i32>(u_xlatu7.z) + u_xlati84);
    u_xlat35 = ((-(vs_TEXCOORD0) * x_3181.x_AdditionalLightsPosition[u_xlati84].www) + x_3181.x_AdditionalLightsPosition[u_xlati84].xyz);
    u_xlat10.x = dot(u_xlat35, u_xlat35);
    u_xlat10.x = max(u_xlat10.x, 0.00006103515625f);
    u_xlat37.x = inverseSqrt(u_xlat10.x);
    u_xlat11 = vec4f(((u_xlat35 * u_xlat37.xxx)).xyz, u_xlat11.w);
    u_xlat64 = (1.0f / u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * x_3181.x_AdditionalLightsAttenuation[u_xlati84].x);
    u_xlat10.x = ((-(u_xlat10.x) * u_xlat10.x) + 1.0f);
    u_xlat10.x = max(u_xlat10.x, 0.0f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * u_xlat64);
    u_xlat64 = dot(x_3181.x_AdditionalLightsSpotDir[u_xlati84].xyz, u_xlat11.xyz);
    u_xlat64 = ((u_xlat64 * x_3181.x_AdditionalLightsAttenuation[u_xlati84].z) + x_3181.x_AdditionalLightsAttenuation[u_xlati84].w);
    u_xlat64 = clamp(u_xlat64, 0.0f, 1.0f);
    u_xlat64 = (u_xlat64 * u_xlat64);
    u_xlat10.x = (u_xlat64 * u_xlat10.x);
    u_xlatb64 = (u_xlati84 < 0i);
    u_xlati91 = i32(x_208.x_AdditionalShadowParams[u_xlati84].w);
    u_xlati64 = select(u_xlati91, -1i, u_xlatb64);
    u_xlatb91 = (u_xlati64 >= 0i);
    if (u_xlatb91) {
      u_xlatb91 = any(!((vec4f() == vec4f(x_208.x_AdditionalShadowParams[u_xlati84].z))));
      if (u_xlatb91) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb91 = (u_xlatb12.y & u_xlatb12.x);
        let x_5290 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_5290.xy, u_xlatb12.z, x_5290.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat92 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_5307 = u_xlat12.y;
        } else {
          x_5307 = u_xlat92;
        }
        u_xlat92 = x_5307;
        if (u_xlatb91) {
          x_5316 = u_xlat12.x;
        } else {
          x_5316 = u_xlat92;
        }
        u_xlat91 = x_5316;
        u_xlati91 = i32(u_xlat91);
        u_xlati64 = (u_xlati91 + u_xlati64);
      }
      u_xlati64 = (u_xlati64 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati64 + 1i)]);
      u_xlat12 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati64] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati64 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati64 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      u_xlatb64 = (0.0f < x_208.x_AdditionalShadowParams[u_xlati84].y);
      if (u_xlatb64) {
        u_xlatb64 = (1.0f == x_208.x_AdditionalShadowParams[u_xlati84].y);
        if (u_xlatb64) {
          u_xlat13 = (u_xlat12.xyxy + x_208.x_AdditionalShadowOffset0);
          let x_5389 = u_xlat13.xy;
          txVec60 = vec3f(x_5389.x, x_5389.y, u_xlat12.z);
          u_xlat14.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_5404 = u_xlat13.zw;
          txVec61 = vec3f(x_5404.x, x_5404.y, u_xlat12.z);
          u_xlat14.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat13 = (u_xlat12.xyxy + x_208.x_AdditionalShadowOffset1);
          let x_5424 = u_xlat13.xy;
          txVec62 = vec3f(x_5424.x, x_5424.y, u_xlat12.z);
          u_xlat14.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_5439 = u_xlat13.zw;
          txVec63 = vec3f(x_5439.x, x_5439.y, u_xlat12.z);
          u_xlat14.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat64 = dot(u_xlat14, x_654);
        } else {
          u_xlatb91 = (2.0f == x_208.x_AdditionalShadowParams[u_xlati84].y);
          if (u_xlatb91) {
            u_xlat13 = vec4f((((u_xlat12.xy * x_208.x_AdditionalShadowmapSize.zw) + x_673)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_208.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_697);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_5496 = (u_xlat15.yw * x_709);
            u_xlat14 = vec4f(x_5496.x, u_xlat14.y, x_5496.y, u_xlat14.w);
            u_xlat15 = vec4f((((u_xlat15.xz * x_673) + -(u_xlat67))).xy, u_xlat15.zw);
            u_xlat69 = (-(u_xlat67) + x_471);
            u_xlat16 = vec4f(min(u_xlat67, vec2f()).xy, u_xlat16.zw);
            u_xlat16 = vec4f((((-(u_xlat16.xy) * u_xlat16.xy) + u_xlat69)).xy, u_xlat16.zw);
            u_xlat67 = max(u_xlat67, vec2f());
            u_xlat67 = ((-(u_xlat67) * u_xlat67) + u_xlat14.yw);
            u_xlat16 = vec4f(((u_xlat16.xy + x_471)).xy, u_xlat16.zw);
            u_xlat67 = (u_xlat67 + x_471);
            u_xlat17 = vec4f(((u_xlat15.xy * x_765)).xy, u_xlat17.zw);
            u_xlat15 = vec4f(((u_xlat69 * x_765)).xy, u_xlat15.zw);
            u_xlat16 = vec4f(((u_xlat16.xy * x_765)).xy, u_xlat16.zw);
            u_xlat18 = vec4f(((u_xlat67 * x_765)).xy, u_xlat18.zw);
            u_xlat67 = (u_xlat14.yw * x_765);
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
            u_xlat15 = vec4f(((u_xlat15.xyz + x_838)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat18.zyw / u_xlat14.xyz)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_838)).xyz, u_xlat16.w);
            u_xlat15 = vec4f(((u_xlat15.yxz * x_208.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xyz * x_208.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat16.w);
            u_xlat15.w = u_xlat16.x;
            u_xlat17 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat15.ywxw);
            u_xlat67 = ((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat15.zw);
            u_xlat16.w = u_xlat15.y;
            let x_5662 = u_xlat16.yz;
            u_xlat15 = vec4f(u_xlat15.x, x_5662.x, u_xlat15.z, x_5662.y);
            u_xlat18 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat16 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat16.wywz);
            u_xlat15 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xwzw);
            u_xlat20 = (u_xlat14.xxxy * u_xlat19.zwyz);
            u_xlat21 = (u_xlat14.yyzz * u_xlat19);
            u_xlat91 = (u_xlat14.z * u_xlat19.y);
            let x_5708 = u_xlat17.xy;
            txVec64 = vec3f(x_5708.x, x_5708.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_5722 = u_xlat17.zw;
            txVec65 = vec3f(x_5722.x, x_5722.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat93 = (u_xlat93 * u_xlat20.y);
            u_xlat92 = ((u_xlat20.x * u_xlat92) + u_xlat93);
            txVec66 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat92 = ((u_xlat20.z * u_xlat93) + u_xlat92);
            let x_5765 = u_xlat16.xy;
            txVec67 = vec3f(x_5765.x, x_5765.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat92 = ((u_xlat20.w * u_xlat93) + u_xlat92);
            let x_5785 = u_xlat18.xy;
            txVec68 = vec3f(x_5785.x, x_5785.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat92 = ((u_xlat21.x * u_xlat93) + u_xlat92);
            let x_5805 = u_xlat18.zw;
            txVec69 = vec3f(x_5805.x, x_5805.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat92 = ((u_xlat21.y * u_xlat93) + u_xlat92);
            let x_5825 = u_xlat16.zw;
            txVec70 = vec3f(x_5825.x, x_5825.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat92 = ((u_xlat21.z * u_xlat93) + u_xlat92);
            let x_5845 = u_xlat15.xy;
            txVec71 = vec3f(x_5845.x, x_5845.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat92 = ((u_xlat21.w * u_xlat93) + u_xlat92);
            let x_5865 = u_xlat15.zw;
            txVec72 = vec3f(x_5865.x, x_5865.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat64 = ((u_xlat91 * u_xlat93) + u_xlat92);
          } else {
            u_xlat13 = vec4f((((u_xlat12.xy * x_208.x_AdditionalShadowmapSize.zw) + x_673)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_208.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_697);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_5917 = (u_xlat15.yw * x_1164);
            u_xlat16 = vec4f(u_xlat16.x, x_5917.x, u_xlat16.z, x_5917.y);
            let x_5925 = ((u_xlat15.xz * x_673) + -(u_xlat67));
            u_xlat14 = vec4f(x_5925.x, u_xlat14.y, x_5925.y, u_xlat14.w);
            u_xlat15 = vec4f(((-(u_xlat67) + x_471)).xy, u_xlat15.zw);
            u_xlat69 = min(u_xlat67, vec2f());
            u_xlat15 = vec4f((((-(u_xlat69) * u_xlat69) + u_xlat15.xy)).xy, u_xlat15.zw);
            u_xlat69 = max(u_xlat67, vec2f());
            let x_5953 = ((-(u_xlat69) * u_xlat69) + u_xlat14.yw);
            u_xlat41 = vec3f(x_5953.x, u_xlat41.y, x_5953.y);
            u_xlat15 = vec4f(((u_xlat15.xy + x_4004)).xy, u_xlat15.zw);
            let x_5963 = (u_xlat41.xz + x_4004);
            u_xlat14 = vec4f(u_xlat14.x, x_5963.x, u_xlat14.z, x_5963.y);
            u_xlat17.z = (u_xlat14.y * 0.08163200318813323975f);
            u_xlat18 = vec4f(((u_xlat14.zxw * x_4019)).xyz, u_xlat18.w);
            u_xlat14 = vec4f(((u_xlat15.xy * x_1223)).xy, u_xlat14.zw);
            u_xlat17.x = u_xlat18.y;
            let x_5986 = ((u_xlat67.xx * x_1240) + x_1243);
            u_xlat17 = vec4f(u_xlat17.x, x_5986.x, u_xlat17.z, x_5986.y);
            let x_5992 = ((u_xlat67.xx * x_1240) + x_1250);
            u_xlat15 = vec4f(x_5992.x, u_xlat15.y, x_5992.y, u_xlat15.w);
            u_xlat15.y = u_xlat14.x;
            u_xlat15.w = u_xlat16.y;
            u_xlat17 = (u_xlat15 + u_xlat17);
            let x_6007 = ((u_xlat67.yy * x_1240) + x_1243);
            u_xlat18 = vec4f(u_xlat18.x, x_6007.x, u_xlat18.z, x_6007.y);
            let x_6013 = ((u_xlat67.yy * x_1240) + x_1250);
            u_xlat16 = vec4f(x_6013.x, u_xlat16.y, x_6013.y, u_xlat16.w);
            u_xlat16.y = u_xlat14.y;
            u_xlat14 = (u_xlat16 + u_xlat18);
            u_xlat15 = (u_xlat15 / u_xlat17);
            u_xlat15 = (u_xlat15 + x_1288);
            u_xlat16 = (u_xlat16 / u_xlat14);
            u_xlat16 = (u_xlat16 + x_1288);
            u_xlat15 = (u_xlat15.wxyz * x_208.x_AdditionalShadowmapSize.xxxx);
            u_xlat16 = (u_xlat16.xwyz * x_208.x_AdditionalShadowmapSize.yyyy);
            let x_6045 = u_xlat15.yzw;
            u_xlat18 = vec4f(x_6045.x, u_xlat18.y, x_6045.yz);
            u_xlat18.y = u_xlat16.x;
            u_xlat19 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat67 = ((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.y = u_xlat18.y;
            u_xlat18.y = u_xlat16.z;
            u_xlat20 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat21 = vec4f((((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat18.wy)).xy, u_xlat21.zw);
            u_xlat15.z = u_xlat18.y;
            u_xlat22 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyxz);
            u_xlat18.y = u_xlat16.w;
            u_xlat23 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat42 = ((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.w = u_xlat18.y;
            u_xlat75 = ((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat15.xw);
            let x_6143 = u_xlat18.xzw;
            u_xlat16 = vec4f(x_6143.x, u_xlat16.y, x_6143.yz);
            u_xlat18 = ((u_xlat13.xyxy * x_208.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat70 = ((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat16.x = u_xlat15.x;
            u_xlat13 = vec4f((((u_xlat13.xy * x_208.x_AdditionalShadowmapSize.xy) + u_xlat16.xy)).xy, u_xlat13.zw);
            u_xlat24 = (u_xlat14.xxxx * u_xlat17);
            u_xlat25 = (u_xlat14.yyyy * u_xlat17);
            u_xlat26 = (u_xlat14.zzzz * u_xlat17);
            u_xlat14 = (u_xlat14.wwww * u_xlat17);
            let x_6199 = u_xlat19.xy;
            txVec73 = vec3f(x_6199.x, x_6199.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_6213 = u_xlat19.zw;
            txVec74 = vec3f(x_6213.x, x_6213.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat92 = (u_xlat92 * u_xlat24.y);
            u_xlat91 = ((u_xlat24.x * u_xlat91) + u_xlat92);
            txVec75 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat91 = ((u_xlat24.z * u_xlat92) + u_xlat91);
            let x_6256 = u_xlat22.xy;
            txVec76 = vec3f(x_6256.x, x_6256.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat91 = ((u_xlat24.w * u_xlat92) + u_xlat91);
            let x_6276 = u_xlat20.xy;
            txVec77 = vec3f(x_6276.x, x_6276.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat91 = ((u_xlat25.x * u_xlat92) + u_xlat91);
            let x_6296 = u_xlat20.zw;
            txVec78 = vec3f(x_6296.x, x_6296.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat91 = ((u_xlat25.y * u_xlat92) + u_xlat91);
            let x_6316 = u_xlat21.xy;
            txVec79 = vec3f(x_6316.x, x_6316.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat91 = ((u_xlat25.z * u_xlat92) + u_xlat91);
            let x_6336 = u_xlat22.zw;
            txVec80 = vec3f(x_6336.x, x_6336.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat91 = ((u_xlat25.w * u_xlat92) + u_xlat91);
            let x_6356 = u_xlat23.xy;
            txVec81 = vec3f(x_6356.x, x_6356.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat91 = ((u_xlat26.x * u_xlat92) + u_xlat91);
            let x_6376 = u_xlat23.zw;
            txVec82 = vec3f(x_6376.x, x_6376.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat91 = ((u_xlat26.y * u_xlat92) + u_xlat91);
            txVec83 = vec3f(u_xlat42.x, u_xlat42.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat91 = ((u_xlat26.z * u_xlat92) + u_xlat91);
            txVec84 = vec3f(u_xlat75.x, u_xlat75.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat91 = ((u_xlat26.w * u_xlat92) + u_xlat91);
            let x_6434 = u_xlat18.xy;
            txVec85 = vec3f(x_6434.x, x_6434.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat91 = ((u_xlat14.x * u_xlat92) + u_xlat91);
            let x_6454 = u_xlat18.zw;
            txVec86 = vec3f(x_6454.x, x_6454.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat91 = ((u_xlat14.y * u_xlat92) + u_xlat91);
            txVec87 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat91 = ((u_xlat14.z * u_xlat92) + u_xlat91);
            let x_6493 = u_xlat13.xy;
            txVec88 = vec3f(x_6493.x, x_6493.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat64 = ((u_xlat14.w * u_xlat92) + u_xlat91);
          }
        }
      } else {
        let x_6514 = u_xlat12.xy;
        txVec89 = vec3f(x_6514.x, x_6514.y, u_xlat12.z);
        u_xlat64 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat91 = (1.0f + -(x_208.x_AdditionalShadowParams[u_xlati84].x));
      u_xlat64 = ((u_xlat64 * x_208.x_AdditionalShadowParams[u_xlati84].x) + u_xlat91);
      u_xlatb91 = (0.0f >= u_xlat12.z);
      u_xlatb92 = (u_xlat12.z >= 1.0f);
      u_xlatb91 = (u_xlatb91 | u_xlatb92);
      u_xlat64 = select(u_xlat64, 1.0f, u_xlatb91);
    } else {
      u_xlat64 = 1.0f;
    }
    u_xlat91 = (-(u_xlat64) + 1.0f);
    u_xlat64 = ((u_xlat82 * u_xlat91) + u_xlat64);
    u_xlati91 = bitcast<i32>((bitcast<u32>(x_396.unity_RenderingLayer.x) & bitcast<u32>(x_3181.x_AdditionalLightsLayerMasks[u_xlati84].el)));
    u_xlat10.x = (u_xlat64 * u_xlat10.x);
    u_xlat64 = dot(u_xlat0.xyz, u_xlat11.xyz);
    u_xlat64 = clamp(u_xlat64, 0.0f, 1.0f);
    u_xlat10.x = (u_xlat64 * u_xlat10.x);
    u_xlat12 = vec4f(((u_xlat10.xxx * x_3181.x_AdditionalLightsColor[u_xlati84].xyz)).xyz, u_xlat12.w);
    u_xlat35 = ((u_xlat35 * u_xlat37.xxx) + u_xlat3);
    u_xlat84 = dot(u_xlat35, u_xlat35);
    u_xlat84 = max(u_xlat84, 1.17549435e-38f);
    u_xlat84 = inverseSqrt(u_xlat84);
    u_xlat35 = (vec3f(u_xlat84) * u_xlat35);
    u_xlat84 = dot(u_xlat0.xyz, u_xlat35);
    u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
    u_xlat35.x = dot(u_xlat11.xyz, u_xlat35);
    u_xlat35.x = clamp(u_xlat35.x, 0.0f, 1.0f);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat84 = ((u_xlat84 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat35.x = (u_xlat35.x * u_xlat35.x);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat35.x = max(u_xlat35.x, 0.10000000149011611938f);
    u_xlat84 = (u_xlat84 * u_xlat35.x);
    u_xlat84 = (u_xlat88 * u_xlat84);
    u_xlat84 = (u_xlat87 / u_xlat84);
    u_xlat35 = ((vec3f(u_xlat84) * x_3121) + u_xlat4.xzw);
    u_xlat35 = ((u_xlat35 * u_xlat12.xyz) + u_xlat2.xyw);
    if ((u_xlati91 != 0i)) {
      x_6673 = u_xlat35;
    } else {
      x_6673 = u_xlat2.xyw;
    }
    u_xlat2 = vec4f(x_6673.xy, u_xlat2.z, x_6673.z);
  }
  u_xlat0 = vec4f(((u_xlat1.xyz + u_xlat6.xyz)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat2.xyw + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat31;
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

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
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
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
diagnostic(off, derivative_uniformity);

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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_AlphaCenter : f32,
  /* @offset(20) */
  x_AlphaEdge : f32,
  /* @offset(24) */
  x_FresnelPower : f32,
  /* @offset(28) */
  x_EdgeDarken : f32,
  /* @offset(32) */
  x_Smoothness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_Absorb : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_Transmit : f32,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(0) var<uniform> x_99 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_174 : UnityPerMaterial;

@group(1) @binding(7) var<uniform> x_208 : LightShadows;

@group(1) @binding(5) var<uniform> x_395 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(8) var<uniform> x_648 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_956 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_1137 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_1385 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(7) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_2056 : AdditionalLights;

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

const x_697 = vec2f(0.5f);

const x_1096 = vec2u(2u);

const x_1548 = vec3f(1.0f);

const x_1977 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat18 : vec3f;
  var u_xlat2 : vec3f;
  var x_133 : vec3f;
  var u_xlat53 : f32;
  var u_xlat3 : vec3f;
  var u_xlat54 : f32;
  var u_xlat4 : vec4f;
  var u_xlat21 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlatb5 : vec4<bool>;
  var u_xlat38 : vec2f;
  var u_xlatu38 : u32;
  var u_xlati38 : i32;
  var u_xlat51 : f32;
  var u_xlat56 : f32;
  var u_xlat57 : f32;
  var u_xlat24 : f32;
  var u_xlat58 : f32;
  var txVec0 : vec3f;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlatb39 : bool;
  var x_600 : f32;
  var u_xlat39 : f32;
  var u_xlat59 : f32;
  var u_xlat9 : vec4f;
  var u_xlatb10 : vec3<bool>;
  var x_740 : f32;
  var x_751 : vec3f;
  var u_xlat10 : vec4f;
  var u_xlatu7 : vec3u;
  var u_xlatu11 : vec2u;
  var u_xlati39 : i32;
  var u_xlatu39 : u32;
  var u_xlat19 : f32;
  var u_xlat1 : vec4f;
  var x_872 : f32;
  var u_xlatu1 : u32;
  var u_xlatu2 : u32;
  var u_xlati19 : i32;
  var u_xlatu19 : vec2u;
  var u_xlati7 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati42 : vec2i;
  var u_xlati11 : vec3i;
  var u_xlati1 : i32;
  var u_xlatb8 : vec3<bool>;
  var u_xlati45 : vec2i;
  var u_xlatu62 : u32;
  var u_xlat12 : vec4f;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var u_xlatu61 : u32;
  var u_xlatb63 : bool;
  var u_xlatu13 : vec4u;
  var u_xlatb13 : vec3<bool>;
  var u_xlatu63 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
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
  var u_xlati30 : vec2i;
  var u_xlati47 : i32;
  var u_xlati63 : i32;
  var u_xlatb59 : bool;
  var u_xlati59 : i32;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec3f;
  var u_xlat63 : f32;
  var u_xlat30 : vec3f;
  var x_1445 : f32;
  var x_1459 : f32;
  var x_1473 : f32;
  var x_1521 : vec3f;
  var u_xlatu64 : u32;
  var u_xlat64 : f32;
  var u_xlat31 : vec3f;
  var u_xlatb48 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_1584 : f32;
  var x_1597 : f32;
  var u_xlat47 : vec2f;
  var u_xlatu47 : u32;
  var u_xlat25 : vec3f;
  var u_xlati51 : i32;
  var u_xlat52 : f32;
  var x_1992 : vec3f;
  var u_xlatu51 : u32;
  var u_xlatb19 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlat60 : f32;
  var u_xlatb60 : bool;
  var u_xlati10 : vec4i;
  var x_2164 : i32;
  var u_xlatb11 : vec3<bool>;
  var u_xlat27 : vec3f;
  var u_xlat11 : vec4f;
  var u_xlat44 : f32;
  var x_2228 : f32;
  var x_2239 : f32;
  var txVec1 : vec3f;
  var u_xlatb27 : bool;
  var u_xlati27 : vec2i;
  var u_xlati44 : i32;
  var u_xlatb45 : vec2<bool>;
  var u_xlat45 : vec2f;
  var x_2653 : f32;
  var x_2666 : f32;
  var u_xlat61 : f32;
  var x_2725 : f32;
  var x_2736 : vec3f;
  var u_xlati61 : i32;
  var x_2889 : vec3f;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati25 : vec2i;
  var u_xlati9 : vec3i;
  var u_xlati2 : i32;
  var u_xlatu9 : vec2u;
  var u_xlati43 : i32;
  var u_xlatu60 : u32;
  var u_xlati54 : i32;
  var u_xlatb24 : bool;
  var u_xlatu10 : vec4u;
  var u_xlatu24 : u32;
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
  var u_xlati12 : vec4i;
  var u_xlati24 : i32;
  var u_xlat62 : f32;
  var u_xlatb62 : bool;
  var u_xlati62 : i32;
  var x_3382 : i32;
  var u_xlatb12 : vec3<bool>;
  var u_xlat29 : vec3f;
  var u_xlat46 : f32;
  var x_3443 : f32;
  var x_3454 : f32;
  var txVec2 : vec3f;
  var u_xlatb29 : bool;
  var u_xlati29 : i32;
  var u_xlati46 : i32;
  var u_xlatb47 : vec2<bool>;
  var x_3852 : f32;
  var x_3865 : f32;
  var x_3920 : f32;
  var x_3931 : vec3f;
  var x_4076 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, u_xlat0.w);
  u_xlatb1 = (x_99.unity_OrthoParams.w == 0.0f);
  u_xlat18 = (-(vs_TEXCOORD0) + x_99.x_WorldSpaceCameraPos);
  u_xlat2.x = x_99.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat2.y = x_99.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat2.z = x_99.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb1) {
    x_133 = u_xlat18;
  } else {
    x_133 = u_xlat2;
  }
  u_xlat18 = x_133;
  u_xlat53 = dot(u_xlat18, u_xlat18);
  u_xlat53 = inverseSqrt(u_xlat53);
  u_xlat3 = (u_xlat18 * vec3f(u_xlat53));
  u_xlat54 = dot(u_xlat0.xyz, u_xlat3);
  u_xlat4.x = min(abs(u_xlat54), 1.0f);
  u_xlat4.x = (-(u_xlat4.x) + 1.0f);
  u_xlat4.x = log2(u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * x_174.x_FresnelPower);
  u_xlat4.x = exp2(u_xlat4.x);
  u_xlat21 = (-(x_174.x_AlphaCenter) + x_174.x_AlphaEdge);
  u_xlat21 = ((u_xlat4.x * u_xlat21) + x_174.x_AlphaCenter);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat8.w);
  u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlatb5 = (u_xlat5 < x_208.x_CascadeShadowSplitSphereRadii);
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb5.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb5.y);
  u_xlat6.z = select(0.0f, 1.0f, u_xlatb5.z);
  u_xlat6.w = select(0.0f, 1.0f, u_xlatb5.w);
  u_xlat5.x = select(-0.0f, -1.0f, u_xlatb5.x);
  u_xlat5.y = select(-0.0f, -1.0f, u_xlatb5.y);
  u_xlat5.z = select(-0.0f, -1.0f, u_xlatb5.z);
  u_xlat5 = vec4f(((u_xlat5.xyz + u_xlat6.yzw)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(u_xlat6.x, max(u_xlat5.xyz, vec3f()).xyz);
  u_xlat38.x = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat38.x = (-(u_xlat38.x) + 4.0f);
  u_xlatu38 = u32(u_xlat38.x);
  u_xlati38 = (bitcast<i32>(u_xlatu38) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati38 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_208.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati38].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati38 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati38 + 3i)].xyz)).xyz, u_xlat5.w);
  u_xlat0.w = 1.0f;
  u_xlat6.x = dot(x_395.unity_SHAr, u_xlat0);
  u_xlat6.y = dot(x_395.unity_SHAg, u_xlat0);
  u_xlat6.z = dot(x_395.unity_SHAb, u_xlat0);
  u_xlat7 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat8.x = dot(x_395.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_395.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_395.unity_SHBb, u_xlat7);
  u_xlat51 = (u_xlat0.y * u_xlat0.y);
  u_xlat51 = ((u_xlat0.x * u_xlat0.x) + -(u_xlat51));
  u_xlat7 = vec4f((((x_395.unity_SHC.xyz * vec3f(u_xlat51)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_473 = x_99.x_ScaledScreenParams.xy;
  u_xlat38 = (vec2f(1.0f) / vec2f(x_473.x, x_473.y));
  u_xlat7 = vec4f(((u_xlat38 * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat51 = ((u_xlat7.y * x_99.x_ScaleBiasRt.x) + x_99.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat51) + 1.0f);
  u_xlat51 = ((-(x_174.x_EdgeDarken) * u_xlat4.x) + 1.0f);
  let x_509 = (vec3f(u_xlat51) * x_174.x_BaseColor.xyz);
  u_xlat4 = vec4f(x_509.x, u_xlat4.y, x_509.yz);
  let x_516 = (vec3f(u_xlat21) * u_xlat4.xzw);
  u_xlat4 = vec4f(x_516.x, u_xlat4.y, x_516.yz);
  u_xlat51 = (-(x_174.x_Smoothness) + 1.0f);
  u_xlat56 = (u_xlat51 * u_xlat51);
  u_xlat56 = max(u_xlat56, 0.0078125f);
  u_xlat57 = (u_xlat56 * u_xlat56);
  u_xlat24 = (x_174.x_Smoothness + 0.04000002145767211914f);
  u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
  u_xlat58 = ((u_xlat56 * 4.0f) + 2.0f);
  let x_549 = (u_xlat4.xzw * vec3f(0.95999997854232788086f));
  u_xlat4 = vec4f(x_549.x, u_xlat4.y, x_549.yz);
  let x_554 = u_xlat5.xy;
  txVec0 = vec3f(x_554.x, x_554.y, u_xlat5.z);
  u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat22 = (-(x_208.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat5.x * x_208.x_MainLightShadowParams.x) + u_xlat22);
  u_xlatb22 = (0.0f >= u_xlat5.z);
  u_xlatb39 = (u_xlat5.z >= 1.0f);
  u_xlatb22 = (u_xlatb39 | u_xlatb22);
  if (u_xlatb22) {
    x_600 = 1.0f;
  } else {
    x_600 = u_xlat5.x;
  }
  u_xlat5.x = x_600;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_99.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat22 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat39 = ((u_xlat22 * x_208.x_MainLightShadowParams.z) + x_208.x_MainLightShadowParams.w);
  u_xlat39 = clamp(u_xlat39, 0.0f, 1.0f);
  u_xlat59 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat39 * u_xlat59) + u_xlat5.x);
  u_xlatb39 = !((x_648.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb39) {
    u_xlat9 = vec4f(((vs_TEXCOORD0.yy * x_648.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((x_648.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD0.xx) + u_xlat9.xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((x_648.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD0.zz) + u_xlat9.xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f(((u_xlat9.xy + x_648.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((u_xlat9.xy * x_697) + x_697)).xy, u_xlat9.zw);
    let x_710 = u_xlat9;
    let x_713 = x_99.x_GlobalMipBias.x;
    let x_714 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_710.xy, x_713);
    u_xlat9 = x_714;
    let x_726 = vec4f(x_648.x_MainLightCookieTextureFormat, x_648.x_MainLightCookieTextureFormat, x_648.x_MainLightCookieTextureFormat, x_648.x_MainLightCookieTextureFormat);
    u_xlatb10 = vec3<bool>(((vec4f(x_726.x, x_726.y, x_726.z, x_726.w) == vec4f(0.0f, 1.0f, 0.0f, 0.0f))).xy.xy, u_xlatb10.z);
    if (u_xlatb10.y) {
      x_740 = u_xlat9.w;
    } else {
      x_740 = u_xlat9.x;
    }
    u_xlat39 = x_740;
    if (u_xlatb10.x) {
      x_751 = u_xlat9.xyz;
    } else {
      x_751 = vec3f(u_xlat39);
    }
    u_xlat9 = vec4f(x_751.xyz, u_xlat9.w);
  } else {
    u_xlat9.x = 1.0f;
    u_xlat9.y = 1.0f;
    u_xlat9.z = 1.0f;
  }
  u_xlat9 = vec4f(((u_xlat9.xyz * x_99.x_MainLightColor.xyz)).xyz, u_xlat9.w);
  u_xlat39 = dot(-(u_xlat3), u_xlat0.xyz);
  u_xlat39 = (u_xlat39 + u_xlat39);
  u_xlat10 = vec4f((((u_xlat0.xyz * -(vec3f(u_xlat39))) + -(u_xlat3))).xyz, u_xlat10.w);
  u_xlat54 = u_xlat54;
  u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
  u_xlat54 = (-(u_xlat54) + 1.0f);
  u_xlat54 = (u_xlat54 * u_xlat54);
  u_xlat54 = (u_xlat54 * u_xlat54);
  u_xlat39 = ((-(u_xlat51) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat51 = (u_xlat51 * u_xlat39);
  u_xlat51 = (u_xlat51 * 6.0f);
  let x_824 = (u_xlat7.xz * x_99.x_FPParams1.xy);
  u_xlat7 = vec4f(x_824.x, u_xlat7.y, x_824.y, u_xlat7.w);
  let x_833 = vec2u(u_xlat7.xz);
  u_xlatu7 = vec3u(x_833.x, u_xlatu7.y, x_833.y);
  u_xlatu11 = vec2u(x_99.x_FPParams1.zw);
  u_xlati39 = ((bitcast<i32>(u_xlatu7.z) * bitcast<i32>(u_xlatu11.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu39 = (u_xlatu11.y * bitcast<u32>(u_xlati39));
  u_xlat2.x = dot(-(u_xlat2), u_xlat8.xyz);
  u_xlat19 = log2(u_xlat2.x);
  if (u_xlatb1) {
    x_872 = u_xlat19;
  } else {
    x_872 = u_xlat2.x;
  }
  u_xlat1.x = x_872;
  u_xlat1.x = ((u_xlat1.x * x_99.x_FPParams0.x) + x_99.x_FPParams0.y);
  u_xlatu1 = u32(u_xlat1.x);
  u_xlatu2 = u32(x_99.x_FPParams2.x);
  u_xlatu2 = (u_xlatu2 + 4294967295u);
  u_xlati19 = (bitcast<i32>(u_xlatu11.y) + 2i);
  u_xlatu1 = min(u_xlatu1, u_xlatu2);
  u_xlatu2 = (bitcast<u32>(u_xlati19) * u_xlatu1);
  u_xlatu19 = ((vec2u(u_xlatu1) * vec2u(bitcast<u32>(u_xlati19))) + vec2u(1u, 2u));
  u_xlatu1 = (u_xlatu19.x >> 2u);
  param = bitcast<i32>(u_xlatu19.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_935 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu19.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_942 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_944 = vec2i(x_935, x_942);
  u_xlati7 = vec3i(x_944.x, u_xlati7.y, x_944.y);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_956.urp_ZBins[bitcast<i32>(u_xlatu1)].wy)));
  u_xlati42 = ~(u_xlati7.xz);
  u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati42.xx) & bitcast<vec2u>(x_956.urp_ZBins[bitcast<i32>(u_xlatu1)].zx))).xy, u_xlati11.z);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8) | bitcast<vec2u>(u_xlati11.xy)));
  u_xlati1 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati19 = bitcast<i32>((bitcast<u32>(u_xlati42.y) & bitcast<u32>(u_xlati8.y)));
  u_xlatu1 = (bitcast<u32>(u_xlati1) | bitcast<u32>(u_xlati19));
  let x_1015 = vec2u(x_99.x_FPParams0.zw);
  u_xlatu7 = vec3u(x_1015.x, u_xlatu7.y, x_1015.y);
  u_xlatb8 = ((vec4f() < u_xlat10.xyzx)).xyz;
  u_xlatu11.x = u_xlatu39;
  u_xlatu11.y = u_xlatu19.y;
  u_xlati45.x = 0i;
  u_xlatu62 = u_xlatu1;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat19 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu59 = (u_xlatu62 >> 16u);
    u_xlati60 = u_xlati45.x;
    u_xlatu61 = u_xlatu62;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb63 = (u_xlati60 == 0i);
      u_xlatu13.x = (u_xlatu61 & 65535u);
      u_xlatb13.x = (u_xlatu59 >= u_xlatu13.x);
      u_xlatb63 = (u_xlatb63 & u_xlatb13.x);
      if (!(u_xlatb63)) {
        break;
      }
      param_6 = u_xlatu61;
      param_7 = 5i;
      param_8 = 11i;
      let x_1087 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu63 = x_1087;
      u_xlatu13 = (u_xlatu11.xxyy + vec4u(u_xlatu63));
      u_xlatu14 = (u_xlatu13.yw >> x_1096);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_1107 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_1114 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_1121 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_1128 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_1107, x_1114, x_1121, x_1128);
      u_xlati48 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_1137.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_1137.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_1169 = bitcast<vec2i>((bitcast<vec2u>(u_xlati48) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_1169.x, u_xlati14.y, x_1169.y);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati30.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati30.x) | bitcast<u32>(u_xlati13.x)));
      u_xlati30 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_956.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy)));
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_956.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati30 = bitcast<vec2i>((bitcast<vec2u>(u_xlati30) | bitcast<vec2u>(u_xlati14.xy)));
      u_xlati30.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati30.x)));
      u_xlati47 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati30.y)));
      u_xlati30.x = bitcast<i32>((bitcast<u32>(u_xlati47) | bitcast<u32>(u_xlati30.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati30.x) & bitcast<u32>(u_xlati13.x)));
      u_xlati30.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu61) & 31i)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati30.x) & bitcast<u32>(u_xlati13.x)));
      u_xlati63 = (bitcast<i32>(u_xlatu63) << bitcast<u32>(5i));
      u_xlatu63 = (u_xlatu59 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati63)))));
      u_xlatu63 = min(u_xlatu63, 31u);
      u_xlatu63 = (bitcast<u32>(-(bitcast<i32>(u_xlatu63))) + 31u);
      u_xlatu63 = (4294967295u >> (u_xlatu63 & 31u));
      u_xlati60 = bitcast<i32>((u_xlatu63 & bitcast<u32>(u_xlati13.x)));
      u_xlati63 = (bitcast<i32>(u_xlatu61) + 32i);
      u_xlatu61 = (bitcast<u32>(u_xlati63) & 4294967264u);
    }
    u_xlatu62 = u_xlatu61;
    u_xlatb59 = (u_xlati60 != 0i);
    u_xlatb63 = (u_xlat19 < 0.99000000953674316406f);
    u_xlatb59 = (u_xlatb59 & u_xlatb63);
    if (!(u_xlatb59)) {
      break;
    }
    u_xlati59 = (0i - u_xlati60);
    u_xlatu59 = (bitcast<u32>(u_xlati59) & bitcast<u32>(u_xlati60));
    u_xlat59 = f32(u_xlatu59);
    u_xlatu59 = (bitcast<u32>(u_xlat59) >> 23u);
    u_xlati59 = (bitcast<i32>(u_xlatu59) + -127i);
    u_xlati63 = (1i << bitcast<u32>((u_xlati59 & 31i)));
    u_xlati45.x = bitcast<i32>((bitcast<u32>(u_xlati60) ^ bitcast<u32>(u_xlati63)));
    u_xlati63 = (bitcast<i32>(u_xlatu62) + -32i);
    u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati63) & 65504u));
    u_xlati59 = (u_xlati59 + u_xlati63);
    u_xlati59 = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati59);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_1385.urp_ReflProbes_BoxMin[u_xlati59].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_1385.urp_ReflProbes_BoxMax[u_xlati59].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_1385.urp_ReflProbes_BoxMax[u_xlati59].www)).xyz, u_xlat13.w);
    u_xlat63 = min(u_xlat13.z, u_xlat13.y);
    u_xlat63 = min(u_xlat63, u_xlat13.x);
    u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
    u_xlat13.x = (-(u_xlat19) + 1.0f);
    u_xlat63 = min(u_xlat63, u_xlat13.x);
    u_xlatb13.x = (0.0f < x_1385.urp_ReflProbes_ProbePosition[u_xlati59].w);
    if (u_xlatb8.x) {
      x_1445 = x_1385.urp_ReflProbes_BoxMax[u_xlati59].x;
    } else {
      x_1445 = x_1385.urp_ReflProbes_BoxMin[u_xlati59].x;
    }
    u_xlat30.x = x_1445;
    if (u_xlatb8.y) {
      x_1459 = x_1385.urp_ReflProbes_BoxMax[u_xlati59].y;
    } else {
      x_1459 = x_1385.urp_ReflProbes_BoxMin[u_xlati59].y;
    }
    u_xlat30.y = x_1459;
    if (u_xlatb8.z) {
      x_1473 = x_1385.urp_ReflProbes_BoxMax[u_xlati59].z;
    } else {
      x_1473 = x_1385.urp_ReflProbes_BoxMin[u_xlati59].z;
    }
    u_xlat30.z = x_1473;
    u_xlat30 = (u_xlat30 + -(vs_TEXCOORD0));
    u_xlat30 = (u_xlat30 / u_xlat10.xyz);
    u_xlat30.x = min(u_xlat30.y, u_xlat30.x);
    u_xlat30.x = min(u_xlat30.z, u_xlat30.x);
    u_xlat14 = (vs_TEXCOORD0 + -(x_1385.urp_ReflProbes_ProbePosition[u_xlati59].xyz));
    u_xlat30 = ((u_xlat10.xyz * u_xlat30.xxx) + u_xlat14);
    if (u_xlatb13.x) {
      x_1521 = u_xlat30;
    } else {
      x_1521 = u_xlat10.xyz;
    }
    u_xlat13 = vec4f(x_1521.xyz, u_xlat13.w);
    u_xlatu64 = u32(abs(x_1385.urp_ReflProbes_ProbePosition[u_xlati59].w));
    u_xlatu64 = (u_xlatu64 + 4294967295u);
    u_xlat64 = f32(u_xlatu64);
    u_xlat64 = min(u_xlat51, u_xlat64);
    u_xlat14.x = dot(abs(u_xlat13.xyz), x_1548);
    u_xlat14.x = max(u_xlat14.x, 0.00000099999999747524f);
    u_xlat14.x = (1.0f / u_xlat14.x);
    u_xlat31 = (u_xlat13.zxy * u_xlat14.xxx);
    u_xlat31.x = -(u_xlat31.x);
    u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
    u_xlatb48 = ((u_xlat31.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat31;
    if (u_xlatb48.x) {
      x_1584 = u_xlat31.x;
    } else {
      x_1584 = -(u_xlat31.x);
    }
    hlslcc_movcTemp.x = x_1584;
    if (u_xlatb48.y) {
      x_1597 = u_xlat31.x;
    } else {
      x_1597 = -(u_xlat31.x);
    }
    hlslcc_movcTemp.y = x_1597;
    u_xlat31 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * u_xlat14.xx) + u_xlat31.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_697) + x_697)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat47.x = floor(u_xlat64);
    u_xlat14.x = (u_xlat47.x + 1.0f);
    u_xlat64 = (-(u_xlat47.x) + u_xlat64);
    u_xlatu47 = u32(u_xlat47.x);
    u_xlati47 = ((u_xlati59 * 7i) + bitcast<i32>(u_xlatu47));
    u_xlatu14.x = u32(u_xlat14.x);
    u_xlati59 = ((u_xlati59 * 7i) + bitcast<i32>(u_xlatu14.x));
    u_xlat14 = vec3f((((u_xlat13.xy * x_1385.urp_ReflProbes_MipScaleOffset[u_xlati47].xy) + x_1385.urp_ReflProbes_MipScaleOffset[u_xlati47].zw)).xy, u_xlat14.z);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat14.xy, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_1385.urp_ReflProbes_MipScaleOffset[u_xlati59].xy) + x_1385.urp_ReflProbes_MipScaleOffset[u_xlati59].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat64) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((vec3f(u_xlat63) * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat19 = (u_xlat19 + u_xlat63);
  }
  u_xlatb1 = (u_xlat19 < 0.99000000953674316406f);
  if (u_xlatb1) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xyz, u_xlat51);
    u_xlat51 = (-(u_xlat19) + 1.0f);
    u_xlat1.x = (u_xlat8.w + -1.0f);
    u_xlat1.x = ((x_99.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_99.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_99.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat1.xxx)).xyz, u_xlat8.w);
    u_xlat12 = vec4f((((vec3f(u_xlat51) * u_xlat8.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat8 = vec4f((((vec2f(u_xlat56) * vec2f(u_xlat56)) + vec2f(-1.0f, 1.0f))).xy, u_xlat8.zw);
  u_xlat51 = (1.0f / u_xlat8.y);
  u_xlat1.x = (u_xlat24 + -0.03999999910593032837f);
  u_xlat1.x = ((u_xlat54 * u_xlat1.x) + 0.03999999910593032837f);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat25 = (vec3f(u_xlat51) * u_xlat12.xyz);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat4.xzw) + u_xlat25)).xyz, u_xlat6.w);
  u_xlati51 = bitcast<i32>((x_99.x_MainLightLayerMask & bitcast<u32>(x_395.unity_RenderingLayer.x)));
  u_xlat1.x = dot(u_xlat0.xyz, x_99.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat5.x);
  u_xlat25 = (u_xlat1.xxx * u_xlat9.xyz);
  u_xlat1 = vec4f((((u_xlat18 * vec3f(u_xlat53)) + x_99.x_MainLightPosition.xyz)).xyz, u_xlat1.w);
  u_xlat52 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat52 = max(u_xlat52, 1.17549435e-38f);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat1 = vec4f(((vec3f(u_xlat52) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.w = dot(u_xlat0.xyz, u_xlat1.xyz);
  u_xlat1.w = clamp(u_xlat1.w, 0.0f, 1.0f);
  u_xlat1.x = dot(x_99.x_MainLightPosition.xyz, u_xlat1.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xw * u_xlat1.xw)).xy, u_xlat1.zw);
  u_xlat18.x = ((u_xlat1.y * u_xlat8.x) + 1.00001001358032226562f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat1.x = max(u_xlat1.x, 0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * u_xlat18.x);
  u_xlat1.x = (u_xlat58 * u_xlat1.x);
  u_xlat1.x = (u_xlat57 / u_xlat1.x);
  u_xlat1 = vec4f((((u_xlat1.xxx * x_1977) + u_xlat4.xzw)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat25 * u_xlat1.xyz)).xyz, u_xlat1.w);
  if ((u_xlati51 != 0i)) {
    x_1992 = u_xlat1.xyz;
  } else {
    x_1992 = vec3f();
  }
  u_xlat1 = vec4f(x_1992.xyz, u_xlat1.w);
  u_xlatu51 = min(u_xlatu7.z, 32u);
  u_xlat52 = ((u_xlat22 * x_208.x_AdditionalShadowFadeParams.x) + x_208.x_AdditionalShadowFadeParams.y);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  let x_2023 = vec4f(x_648.x_AdditionalLightsCookieAtlasTextureFormat, x_648.x_AdditionalLightsCookieAtlasTextureFormat, x_648.x_AdditionalLightsCookieAtlasTextureFormat, x_648.x_AdditionalLightsCookieAtlasTextureFormat);
  let x_2031 = ((vec4f(x_2023.x, x_2023.y, x_2023.z, x_2023.w) == vec4f(0.0f, 0.0f, 1.0f, 1.0f))).xz;
  u_xlatb19 = vec3<bool>(x_2031.x, u_xlatb19.y, x_2031.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu51)) {
    } else {
      break;
    }
    u_xlat25 = ((-(vs_TEXCOORD0) * x_2056.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_2056.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat7.x = dot(u_xlat25, u_xlat25);
    u_xlat7.x = max(u_xlat7.x, 0.00006103515625f);
    u_xlat24 = inverseSqrt(u_xlat7.x);
    u_xlat9 = vec4f(((vec3f(u_xlat24) * u_xlat25)).xyz, u_xlat9.w);
    u_xlat60 = (1.0f / u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_2056.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat7.x = ((-(u_xlat7.x) * u_xlat7.x) + 1.0f);
    u_xlat7.x = max(u_xlat7.x, 0.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat60);
    u_xlat60 = dot(x_2056.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9.xyz);
    u_xlat60 = ((u_xlat60 * x_2056.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_2056.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
    u_xlat60 = (u_xlat60 * u_xlat60);
    u_xlat7.x = (u_xlat7.x * u_xlat60);
    u_xlatb60 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati10.x = i32(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    if (u_xlatb60) {
      x_2164 = -1i;
    } else {
      x_2164 = u_xlati10.x;
    }
    u_xlati60 = x_2164;
    u_xlatb10.x = (u_xlati60 >= 0i);
    if (u_xlatb10.x) {
      u_xlatb10.x = any(!((vec4f() == vec4f(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb10.x) {
        u_xlatb10 = ((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz;
        u_xlatb10.x = (u_xlatb10.y & u_xlatb10.x);
        u_xlatb11 = ((-(u_xlat9.zyxz) < vec4f())).xyz;
        u_xlat27.x = select(4.0f, 5.0f, u_xlatb11.x);
        u_xlat27.z = select(2.0f, 3.0f, u_xlatb11.y);
        u_xlat11.x = select(0.0f, 1.0f, u_xlatb11.z);
        if (u_xlatb10.z) {
          x_2228 = u_xlat27.z;
        } else {
          x_2228 = u_xlat11.x;
        }
        u_xlat44 = x_2228;
        if (u_xlatb10.x) {
          x_2239 = u_xlat27.x;
        } else {
          x_2239 = u_xlat44;
        }
        u_xlat10.x = x_2239;
        u_xlati10.x = i32(u_xlat10.x);
        u_xlati60 = (u_xlati60 + u_xlati10.x);
      }
      u_xlati60 = (u_xlati60 << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati60 + 1i)]);
      u_xlat10 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati60] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati60 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati60 + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      let x_2298 = u_xlat10.xy;
      txVec1 = vec3f(x_2298.x, x_2298.y, u_xlat10.z);
      u_xlat60 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat10.x = (1.0f + -(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat60 = ((u_xlat60 * x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat10.x);
      u_xlatb10.x = (0.0f >= u_xlat10.z);
      u_xlatb27 = (u_xlat10.z >= 1.0f);
      u_xlatb10.x = (u_xlatb27 | u_xlatb10.x);
      u_xlat60 = select(u_xlat60, 1.0f, u_xlatb10.x);
    } else {
      u_xlat60 = 1.0f;
    }
    u_xlat10.x = (-(u_xlat60) + 1.0f);
    u_xlat60 = ((u_xlat52 * u_xlat10.x) + u_xlat60);
    u_xlati10.x = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati10.x) & bitcast<u32>(x_648.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati10.x != 0i)) {
      u_xlati10.x = i32(x_648.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati27.x = select(1i, 0i, (u_xlati10.x != 0i));
      u_xlati44 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati27.x != 0i)) {
        u_xlat11 = vec4f(((vs_TEXCOORD0.yyy * x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 1i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati44].xyw * vs_TEXCOORD0.xxx) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 3i)].xyw)).xyz, u_xlat11.w);
        let x_2444 = (u_xlat11.xy / u_xlat11.zz);
        u_xlat27 = vec3f(x_2444.x, u_xlat27.y, x_2444.y);
        let x_2450 = ((u_xlat27.xz * x_697) + x_697);
        u_xlat27 = vec3f(x_2450.x, u_xlat27.y, x_2450.y);
        let x_2457 = clamp(u_xlat27.xz, vec2f(0.0f), vec2f(1.0f));
        u_xlat27 = vec3f(x_2457.x, u_xlat27.y, x_2457.y);
        let x_2473 = ((x_648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat27.xz) + x_648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
        u_xlat27 = vec3f(x_2473.x, u_xlat27.y, x_2473.y);
      } else {
        u_xlatb10.x = (u_xlati10.x == 1i);
        u_xlati10.x = select(0i, 1i, u_xlatb10.x);
        if ((u_xlati10.x != 0i)) {
          u_xlat11 = vec4f(((vs_TEXCOORD0.yy * x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 1i)].xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati44].xy * vs_TEXCOORD0.xx) + u_xlat11.xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat11.xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f(((u_xlat11.xy + x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 3i)].xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((u_xlat11.xy * x_697) + x_697)).xy, u_xlat11.zw);
          u_xlat11 = vec4f(fract(u_xlat11.xy).xy, u_xlat11.zw);
          let x_2559 = ((x_648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat11.xy) + x_648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
          u_xlat27 = vec3f(x_2559.x, u_xlat27.y, x_2559.y);
        } else {
          u_xlat11 = (vs_TEXCOORD0.yyyy * x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 1i)]);
          u_xlat11 = ((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati44] * vs_TEXCOORD0.xxxx) + u_xlat11);
          u_xlat11 = ((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat11);
          u_xlat11 = (u_xlat11 + x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 3i)]);
          u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat11.www)).xyz, u_xlat11.w);
          u_xlat10.x = dot(u_xlat11.xyz, u_xlat11.xyz);
          u_xlat10.x = inverseSqrt(u_xlat10.x);
          u_xlat11 = vec4f(((u_xlat10.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
          u_xlat10.x = dot(abs(u_xlat11.xyz), x_1548);
          u_xlat10.x = max(u_xlat10.x, 0.00000099999999747524f);
          u_xlat10.x = (1.0f / u_xlat10.x);
          u_xlat12 = vec4f(((u_xlat10.xxx * u_xlat11.zxy)).xyz, u_xlat12.w);
          u_xlat12.x = -(u_xlat12.x);
          u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
          u_xlatb45 = ((u_xlat12.yzyz >= vec4f())).xy;
          if (u_xlatb45.x) {
            x_2653 = u_xlat12.x;
          } else {
            x_2653 = -(u_xlat12.x);
          }
          u_xlat45.x = x_2653;
          if (u_xlatb45.y) {
            x_2666 = u_xlat12.x;
          } else {
            x_2666 = -(u_xlat12.x);
          }
          u_xlat45.y = x_2666;
          let x_2683 = ((u_xlat11.xy * u_xlat10.xx) + u_xlat45);
          u_xlat10 = vec4f(x_2683.x, u_xlat10.y, x_2683.y, u_xlat10.w);
          let x_2689 = ((u_xlat10.xz * x_697) + x_697);
          u_xlat10 = vec4f(x_2689.x, u_xlat10.y, x_2689.y, u_xlat10.w);
          let x_2696 = clamp(u_xlat10.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat10 = vec4f(x_2696.x, u_xlat10.y, x_2696.y, u_xlat10.w);
          let x_2712 = ((x_648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat10.xz) + x_648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
          u_xlat27 = vec3f(x_2712.x, u_xlat27.y, x_2712.y);
        }
      }
      u_xlat10 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat27.xz, 0.0f);
      if (u_xlatb19.z) {
        x_2725 = u_xlat10.w;
      } else {
        x_2725 = u_xlat10.x;
      }
      u_xlat61 = x_2725;
      if (u_xlatb19.x) {
        x_2736 = u_xlat10.xyz;
      } else {
        x_2736 = vec3f(u_xlat61);
      }
      u_xlat10 = vec4f(x_2736.xyz, u_xlat10.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    u_xlat10 = vec4f(((u_xlat10.xyz * x_2056.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlati61 = bitcast<i32>((bitcast<u32>(x_395.unity_RenderingLayer.x) & bitcast<u32>(x_2056.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat7.x = (u_xlat7.x * u_xlat60);
    u_xlat60 = dot(u_xlat0.xyz, u_xlat9.xyz);
    u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat60);
    u_xlat10 = vec4f(((u_xlat7.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat25 = ((u_xlat25 * vec3f(u_xlat24)) + u_xlat3);
    u_xlat7.x = dot(u_xlat25, u_xlat25);
    u_xlat7.x = max(u_xlat7.x, 1.17549435e-38f);
    u_xlat7.x = inverseSqrt(u_xlat7.x);
    u_xlat25 = (u_xlat7.xxx * u_xlat25);
    u_xlat7.x = dot(u_xlat0.xyz, u_xlat25);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.y = dot(u_xlat9.xyz, u_xlat25);
    u_xlat7.y = clamp(u_xlat7.y, 0.0f, 1.0f);
    u_xlat7 = vec4f(((u_xlat7.xy * u_xlat7.xy)).xy, u_xlat7.zw);
    u_xlat7.x = ((u_xlat7.x * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat24 = max(u_xlat7.y, 0.10000000149011611938f);
    u_xlat7.x = (u_xlat24 * u_xlat7.x);
    u_xlat7.x = (u_xlat58 * u_xlat7.x);
    u_xlat7.x = (u_xlat57 / u_xlat7.x);
    u_xlat25 = ((u_xlat7.xxx * x_1977) + u_xlat4.xzw);
    u_xlat25 = ((u_xlat25 * u_xlat10.xyz) + u_xlat5.xyw);
    if ((u_xlati61 != 0i)) {
      x_2889 = u_xlat25;
    } else {
      x_2889 = u_xlat5.xyw;
    }
    u_xlat5 = vec4f(x_2889.xy, u_xlat5.z, x_2889.z);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu51 = (u_xlatu2 >> 2u);
  param_21 = bitcast<i32>(u_xlatu2);
  param_22 = 0i;
  param_23 = 1i;
  let x_2908 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu2);
  param_25 = 1i;
  param_26 = 1i;
  let x_2914 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati7 = vec3i(vec2i(x_2908, x_2914).xy, u_xlati7.z);
  u_xlati25 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_956.urp_ZBins[bitcast<i32>(u_xlatu51)].wy)));
  u_xlati9 = vec3i((~(u_xlati7.xy)).xy, u_xlati9.z);
  let x_2946 = bitcast<vec2i>((bitcast<vec2u>(u_xlati9.xx) & bitcast<vec2u>(x_956.urp_ZBins[bitcast<i32>(u_xlatu51)].zx)));
  u_xlati9 = vec3i(x_2946.x, u_xlati9.y, x_2946.y);
  u_xlati25 = bitcast<vec2i>((bitcast<vec2u>(u_xlati25) | bitcast<vec2u>(u_xlati9.xz)));
  u_xlati51 = bitcast<i32>((bitcast<u32>(u_xlati7.y) & bitcast<u32>(u_xlati25.x)));
  u_xlati2 = bitcast<i32>((bitcast<u32>(u_xlati9.y) & bitcast<u32>(u_xlati25.y)));
  u_xlatu51 = (bitcast<u32>(u_xlati51) | bitcast<u32>(u_xlati2));
  u_xlatu9.x = u_xlatu39;
  u_xlatu9.y = u_xlatu19.y;
  u_xlati43 = 0i;
  u_xlatu60 = u_xlatu51;
  u_xlat25 = u_xlat5.xyw;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu2 = (u_xlatu60 >> 16u);
    u_xlati54 = u_xlati43;
    u_xlatu7.x = u_xlatu60;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb24 = (u_xlati54 == 0i);
      u_xlatu10.x = (u_xlatu7.x & 65535u);
      u_xlatb10.x = (u_xlatu2 >= u_xlatu10.x);
      u_xlatb24 = (u_xlatb24 & u_xlatb10.x);
      if (!(u_xlatb24)) {
        break;
      }
      param_27 = u_xlatu7.x;
      param_28 = 5i;
      param_29 = 11i;
      let x_3033 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu24 = x_3033;
      u_xlatu10 = (vec4u(u_xlatu24) + u_xlatu9.xxyy);
      u_xlatu11 = (u_xlatu10.yw >> x_1096);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_3048 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_3055 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_3062 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_3069 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_3048, x_3055, x_3062, x_3069);
      u_xlati45 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_1137.urp_Tiles[bitcast<i32>(u_xlatu11.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_1137.urp_Tiles[bitcast<i32>(u_xlatu11.x)].zx))).xy, u_xlati13.zw);
      let x_3106 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati11 = vec3i(x_3106.x, u_xlati11.y, x_3106.y);
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati27.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.z)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati27.x) | bitcast<u32>(u_xlati10.x)));
      u_xlati27 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_956.urp_ZBins[bitcast<i32>(u_xlatu11.y)].wy)));
      u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_956.urp_ZBins[bitcast<i32>(u_xlatu11.y)].zx))).xy, u_xlati11.z);
      u_xlati27 = bitcast<vec2i>((bitcast<vec2u>(u_xlati27) | bitcast<vec2u>(u_xlati11.xy)));
      u_xlati27.x = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati27.x)));
      u_xlati44 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati27.y)));
      u_xlati27.x = bitcast<i32>((bitcast<u32>(u_xlati44) | bitcast<u32>(u_xlati27.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati27.x) & bitcast<u32>(u_xlati10.x)));
      u_xlati27.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu7.x) & 31i)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati27.x) & bitcast<u32>(u_xlati10.x)));
      u_xlati24 = (bitcast<i32>(u_xlatu24) << bitcast<u32>(5i));
      u_xlatu24 = (u_xlatu2 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati24)))));
      u_xlatu24 = min(u_xlatu24, 31u);
      u_xlatu24 = (bitcast<u32>(-(bitcast<i32>(u_xlatu24))) + 31u);
      u_xlatu24 = (4294967295u >> (u_xlatu24 & 31u));
      u_xlati54 = bitcast<i32>((u_xlatu24 & bitcast<u32>(u_xlati10.x)));
      u_xlati24 = (bitcast<i32>(u_xlatu7.x) + 32i);
      u_xlatu7.x = (bitcast<u32>(u_xlati24) & 4294967264u);
    }
    u_xlatu60 = u_xlatu7.x;
    if ((u_xlati54 == 0i)) {
      break;
    }
    u_xlati2 = (0i - u_xlati54);
    u_xlatu2 = (bitcast<u32>(u_xlati2) & bitcast<u32>(u_xlati54));
    u_xlat2.x = f32(u_xlatu2);
    u_xlatu2 = (bitcast<u32>(u_xlat2.x) >> 23u);
    u_xlati2 = (bitcast<i32>(u_xlatu2) + -127i);
    u_xlati24 = (1i << bitcast<u32>((u_xlati2 & 31i)));
    u_xlati43 = bitcast<i32>((bitcast<u32>(u_xlati54) ^ bitcast<u32>(u_xlati24)));
    u_xlati24 = (bitcast<i32>(u_xlatu60) + -32i);
    u_xlati24 = bitcast<i32>((bitcast<u32>(u_xlati24) & 65504u));
    u_xlati2 = (u_xlati2 + u_xlati24);
    u_xlati2 = (bitcast<i32>(u_xlatu7.z) + u_xlati2);
    u_xlat10 = vec4f((((-(vs_TEXCOORD0) * x_2056.x_AdditionalLightsPosition[u_xlati2].www) + x_2056.x_AdditionalLightsPosition[u_xlati2].xyz)).xyz, u_xlat10.w);
    u_xlat24 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat24 = max(u_xlat24, 0.00006103515625f);
    u_xlat61 = inverseSqrt(u_xlat24);
    u_xlat11 = vec4f(((vec3f(u_xlat61) * u_xlat10.xyz)).xyz, u_xlat11.w);
    u_xlat62 = (1.0f / u_xlat24);
    u_xlat24 = (u_xlat24 * x_2056.x_AdditionalLightsAttenuation[u_xlati2].x);
    u_xlat24 = ((-(u_xlat24) * u_xlat24) + 1.0f);
    u_xlat24 = max(u_xlat24, 0.0f);
    u_xlat24 = (u_xlat24 * u_xlat24);
    u_xlat24 = (u_xlat24 * u_xlat62);
    u_xlat62 = dot(x_2056.x_AdditionalLightsSpotDir[u_xlati2].xyz, u_xlat11.xyz);
    u_xlat62 = ((u_xlat62 * x_2056.x_AdditionalLightsAttenuation[u_xlati2].z) + x_2056.x_AdditionalLightsAttenuation[u_xlati2].w);
    u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
    u_xlat62 = (u_xlat62 * u_xlat62);
    u_xlat24 = (u_xlat24 * u_xlat62);
    u_xlatb62 = (u_xlati2 < 0i);
    u_xlati12.x = i32(x_208.x_AdditionalShadowParams[u_xlati2].w);
    if (u_xlatb62) {
      x_3382 = -1i;
    } else {
      x_3382 = u_xlati12.x;
    }
    u_xlati62 = x_3382;
    u_xlatb12.x = (u_xlati62 >= 0i);
    if (u_xlatb12.x) {
      u_xlatb12.x = any(!((vec4f() == vec4f(x_208.x_AdditionalShadowParams[u_xlati2].z))));
      if (u_xlatb12.x) {
        u_xlatb12 = ((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz;
        u_xlatb12.x = (u_xlatb12.y & u_xlatb12.x);
        u_xlatb13 = ((-(u_xlat11.zyxz) < vec4f())).xyz;
        u_xlat29.x = select(4.0f, 5.0f, u_xlatb13.x);
        u_xlat29.z = select(2.0f, 3.0f, u_xlatb13.y);
        u_xlat13.x = select(0.0f, 1.0f, u_xlatb13.z);
        if (u_xlatb12.z) {
          x_3443 = u_xlat29.z;
        } else {
          x_3443 = u_xlat13.x;
        }
        u_xlat46 = x_3443;
        if (u_xlatb12.x) {
          x_3454 = u_xlat29.x;
        } else {
          x_3454 = u_xlat46;
        }
        u_xlat12.x = x_3454;
        u_xlati12.x = i32(u_xlat12.x);
        u_xlati62 = (u_xlati62 + u_xlati12.x);
      }
      u_xlati62 = (u_xlati62 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati62 + 1i)]);
      u_xlat12 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati62] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati62 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati62 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      let x_3512 = u_xlat12.xy;
      txVec2 = vec3f(x_3512.x, x_3512.y, u_xlat12.z);
      u_xlat62 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat12.x = (1.0f + -(x_208.x_AdditionalShadowParams[u_xlati2].x));
      u_xlat62 = ((u_xlat62 * x_208.x_AdditionalShadowParams[u_xlati2].x) + u_xlat12.x);
      u_xlatb12.x = (0.0f >= u_xlat12.z);
      u_xlatb29 = (u_xlat12.z >= 1.0f);
      u_xlatb12.x = (u_xlatb29 | u_xlatb12.x);
      u_xlat62 = select(u_xlat62, 1.0f, u_xlatb12.x);
    } else {
      u_xlat62 = 1.0f;
    }
    u_xlat12.x = (-(u_xlat62) + 1.0f);
    u_xlat62 = ((u_xlat52 * u_xlat12.x) + u_xlat62);
    u_xlati12.x = (1i << bitcast<u32>((u_xlati2 & 31i)));
    u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.x) & bitcast<u32>(x_648.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati12.x != 0i)) {
      u_xlati12.x = i32(x_648.x_AdditionalLightsLightTypes[u_xlati2].el);
      u_xlati29 = select(1i, 0i, (u_xlati12.x != 0i));
      u_xlati46 = (u_xlati2 << bitcast<u32>(2i));
      if ((u_xlati29 != 0i)) {
        u_xlat13 = vec4f(((vs_TEXCOORD0.yyy * x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 1i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati46].xyw * vs_TEXCOORD0.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 3i)].xyw)).xyz, u_xlat13.w);
        let x_3650 = (u_xlat13.xy / u_xlat13.zz);
        u_xlat29 = vec3f(x_3650.x, u_xlat29.y, x_3650.y);
        let x_3656 = ((u_xlat29.xz * x_697) + x_697);
        u_xlat29 = vec3f(x_3656.x, u_xlat29.y, x_3656.y);
        let x_3663 = clamp(u_xlat29.xz, vec2f(0.0f), vec2f(1.0f));
        u_xlat29 = vec3f(x_3663.x, u_xlat29.y, x_3663.y);
        let x_3677 = ((x_648.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat29.xz) + x_648.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
        u_xlat29 = vec3f(x_3677.x, u_xlat29.y, x_3677.y);
      } else {
        u_xlatb12.x = (u_xlati12.x == 1i);
        u_xlati12.x = select(0i, 1i, u_xlatb12.x);
        if ((u_xlati12.x != 0i)) {
          u_xlat13 = vec4f(((vs_TEXCOORD0.yy * x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 1i)].xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati46].xy * vs_TEXCOORD0.xx) + u_xlat13.xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat13.xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f(((u_xlat13.xy + x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 3i)].xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((u_xlat13.xy * x_697) + x_697)).xy, u_xlat13.zw);
          u_xlat13 = vec4f(fract(u_xlat13.xy).xy, u_xlat13.zw);
          let x_3761 = ((x_648.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat13.xy) + x_648.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
          u_xlat29 = vec3f(x_3761.x, u_xlat29.y, x_3761.y);
        } else {
          u_xlat13 = (vs_TEXCOORD0.yyyy * x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 1i)]);
          u_xlat13 = ((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati46] * vs_TEXCOORD0.xxxx) + u_xlat13);
          u_xlat13 = ((x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat13);
          u_xlat13 = (u_xlat13 + x_648.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 3i)]);
          u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
          u_xlat12.x = dot(u_xlat13.xyz, u_xlat13.xyz);
          u_xlat12.x = inverseSqrt(u_xlat12.x);
          u_xlat13 = vec4f(((u_xlat12.xxx * u_xlat13.xyz)).xyz, u_xlat13.w);
          u_xlat12.x = dot(abs(u_xlat13.xyz), x_1548);
          u_xlat12.x = max(u_xlat12.x, 0.00000099999999747524f);
          u_xlat12.x = (1.0f / u_xlat12.x);
          u_xlat14 = (u_xlat12.xxx * u_xlat13.zxy);
          u_xlat14.x = -(u_xlat14.x);
          u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
          u_xlatb47 = ((u_xlat14.yzyz >= vec4f())).xy;
          if (u_xlatb47.x) {
            x_3852 = u_xlat14.x;
          } else {
            x_3852 = -(u_xlat14.x);
          }
          u_xlat47.x = x_3852;
          if (u_xlatb47.y) {
            x_3865 = u_xlat14.x;
          } else {
            x_3865 = -(u_xlat14.x);
          }
          u_xlat47.y = x_3865;
          let x_3882 = ((u_xlat13.xy * u_xlat12.xx) + u_xlat47);
          u_xlat12 = vec4f(x_3882.x, u_xlat12.y, x_3882.y, u_xlat12.w);
          let x_3888 = ((u_xlat12.xz * x_697) + x_697);
          u_xlat12 = vec4f(x_3888.x, u_xlat12.y, x_3888.y, u_xlat12.w);
          let x_3895 = clamp(u_xlat12.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat12 = vec4f(x_3895.x, u_xlat12.y, x_3895.y, u_xlat12.w);
          let x_3909 = ((x_648.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat12.xz) + x_648.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
          u_xlat29 = vec3f(x_3909.x, u_xlat29.y, x_3909.y);
        }
      }
      u_xlat12 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat29.xz, 0.0f);
      if (u_xlatb19.z) {
        x_3920 = u_xlat12.w;
      } else {
        x_3920 = u_xlat12.x;
      }
      u_xlat63 = x_3920;
      if (u_xlatb19.x) {
        x_3931 = u_xlat12.xyz;
      } else {
        x_3931 = vec3f(u_xlat63);
      }
      u_xlat12 = vec4f(x_3931.xyz, u_xlat12.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    u_xlat12 = vec4f(((u_xlat12.xyz * x_2056.x_AdditionalLightsColor[u_xlati2].xyz)).xyz, u_xlat12.w);
    u_xlati2 = bitcast<i32>((bitcast<u32>(x_395.unity_RenderingLayer.x) & bitcast<u32>(x_2056.x_AdditionalLightsLayerMasks[u_xlati2].el)));
    u_xlat24 = (u_xlat24 * u_xlat62);
    u_xlat62 = dot(u_xlat0.xyz, u_xlat11.xyz);
    u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
    u_xlat24 = (u_xlat24 * u_xlat62);
    u_xlat12 = vec4f(((vec3f(u_xlat24) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat61)) + u_xlat3)).xyz, u_xlat10.w);
    u_xlat24 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat24 = max(u_xlat24, 1.17549435e-38f);
    u_xlat24 = inverseSqrt(u_xlat24);
    u_xlat10 = vec4f(((vec3f(u_xlat24) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat24 = dot(u_xlat0.xyz, u_xlat10.xyz);
    u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
    u_xlat10.x = dot(u_xlat11.xyz, u_xlat10.xyz);
    u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
    u_xlat24 = (u_xlat24 * u_xlat24);
    u_xlat24 = ((u_xlat24 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat24 = (u_xlat24 * u_xlat24);
    u_xlat10.x = max(u_xlat10.x, 0.10000000149011611938f);
    u_xlat24 = (u_xlat24 * u_xlat10.x);
    u_xlat24 = (u_xlat58 * u_xlat24);
    u_xlat24 = (u_xlat57 / u_xlat24);
    u_xlat10 = vec4f((((vec3f(u_xlat24) * x_1977) + u_xlat4.xzw)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat25)).xyz, u_xlat10.w);
    if ((u_xlati2 != 0i)) {
      x_4076 = u_xlat10.xyz;
    } else {
      x_4076 = u_xlat25;
    }
    u_xlat25 = x_4076;
  }
  u_xlat0 = vec4f(((u_xlat1.xyz + u_xlat6.xyz)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat25 + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat21;
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

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
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
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
diagnostic(off, derivative_uniformity);

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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_AlphaCenter : f32,
  /* @offset(20) */
  x_AlphaEdge : f32,
  /* @offset(24) */
  x_FresnelPower : f32,
  /* @offset(28) */
  x_EdgeDarken : f32,
  /* @offset(32) */
  x_Smoothness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_Absorb : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_Transmit : f32,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(0) var<uniform> x_98 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_174 : UnityPerMaterial;

@group(1) @binding(7) var<uniform> x_208 : LightShadows;

@group(1) @binding(5) var<uniform> x_396 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_827 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_1008 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_1267 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(5) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_1907 : AdditionalLights;

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

const x_969 = vec2u(2u);

const x_1504 = vec2f(0.5f);

const x_1847 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat17 : vec3f;
  var u_xlat2 : vec4f;
  var x_132 : vec3f;
  var u_xlat50 : f32;
  var u_xlat3 : vec3f;
  var u_xlat51 : f32;
  var u_xlat4 : vec4f;
  var u_xlat20 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlatb5 : vec4<bool>;
  var u_xlat36 : vec2f;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat48 : f32;
  var u_xlat53 : f32;
  var u_xlat54 : f32;
  var u_xlat23 : f32;
  var u_xlat55 : f32;
  var txVec0 : vec3f;
  var u_xlat21 : f32;
  var u_xlatb21 : bool;
  var u_xlatb37 : bool;
  var x_600 : f32;
  var u_xlat37 : f32;
  var u_xlat56 : f32;
  var u_xlat9 : vec3f;
  var u_xlatu7 : vec3u;
  var u_xlatu10 : vec4u;
  var u_xlati37 : i32;
  var u_xlatu37 : u32;
  var u_xlat18 : f32;
  var u_xlat1 : vec4f;
  var x_742 : f32;
  var u_xlatu1 : u32;
  var u_xlatu2 : u32;
  var u_xlati18 : i32;
  var u_xlatu18 : vec2u;
  var u_xlati7 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati40 : vec2i;
  var u_xlati10 : vec4i;
  var u_xlati1 : i32;
  var u_xlatb8 : vec3<bool>;
  var u_xlati42 : i32;
  var u_xlatu58 : u32;
  var u_xlat11 : vec3f;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var u_xlatu59 : u32;
  var u_xlatb12 : vec4<bool>;
  var u_xlatu28 : vec2u;
  var u_xlatb28 : bool;
  var u_xlatu12 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
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
  var u_xlati14 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati28 : vec3i;
  var u_xlati60 : i32;
  var u_xlati44 : vec2i;
  var u_xlati12 : vec4i;
  var u_xlatb56 : bool;
  var u_xlati56 : i32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec3f;
  var u_xlat28 : vec3f;
  var x_1332 : f32;
  var x_1346 : f32;
  var x_1360 : f32;
  var u_xlat44 : f32;
  var x_1403 : vec3f;
  var u_xlat29 : vec3f;
  var u_xlat14 : vec3f;
  var u_xlatb45 : vec2<bool>;
  var u_xlat45 : vec2f;
  var x_1468 : f32;
  var x_1481 : f32;
  var u_xlat60 : f32;
  var u_xlatu60 : u32;
  var u_xlatu29 : u32;
  var u_xlat24 : vec3f;
  var u_xlati48 : i32;
  var u_xlat49 : f32;
  var x_1862 : vec3f;
  var u_xlatu48 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatb7 : bool;
  var u_xlati23 : i32;
  var u_xlatb23 : bool;
  var u_xlatb10 : vec4<bool>;
  var u_xlat10 : vec4f;
  var u_xlat57 : f32;
  var x_2061 : f32;
  var x_2070 : f32;
  var txVec1 : vec3f;
  var u_xlatb57 : bool;
  var x_2174 : f32;
  var x_2300 : vec3f;
  var u_xlati2 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati24 : vec2i;
  var u_xlatu9 : vec2u;
  var u_xlatu41 : vec2u;
  var u_xlatu51 : u32;
  var u_xlatb24 : bool;
  var u_xlatu40 : vec2u;
  var u_xlatb40 : bool;
  var u_xlatu24 : u32;
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
  var u_xlati11 : vec2i;
  var u_xlati43 : vec2i;
  var u_xlati51 : i32;
  var u_xlat26 : f32;
  var u_xlat42 : f32;
  var u_xlatb42 : bool;
  var u_xlati58 : i32;
  var u_xlatb58 : bool;
  var u_xlat59 : f32;
  var x_2872 : f32;
  var u_xlat58 : f32;
  var x_2882 : f32;
  var txVec2 : vec3f;
  var u_xlatb59 : bool;
  var x_3093 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, u_xlat0.w);
  u_xlatb1 = (x_98.unity_OrthoParams.w == 0.0f);
  u_xlat17 = (-(vs_TEXCOORD0) + x_98.x_WorldSpaceCameraPos);
  u_xlat2.x = x_98.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat2.y = x_98.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat2.z = x_98.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb1) {
    x_132 = u_xlat17;
  } else {
    x_132 = u_xlat2.xyz;
  }
  u_xlat17 = x_132;
  u_xlat50 = dot(u_xlat17, u_xlat17);
  u_xlat50 = inverseSqrt(u_xlat50);
  u_xlat3 = (u_xlat17 * vec3f(u_xlat50));
  u_xlat51 = dot(u_xlat0.xyz, u_xlat3);
  u_xlat4.x = min(abs(u_xlat51), 1.0f);
  u_xlat4.x = (-(u_xlat4.x) + 1.0f);
  u_xlat4.x = log2(u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * x_174.x_FresnelPower);
  u_xlat4.x = exp2(u_xlat4.x);
  u_xlat20 = (-(x_174.x_AlphaCenter) + x_174.x_AlphaEdge);
  u_xlat20 = ((u_xlat4.x * u_xlat20) + x_174.x_AlphaCenter);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_208.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat8.w);
  u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlatb5 = (u_xlat5 < x_208.x_CascadeShadowSplitSphereRadii);
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb5.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb5.y);
  u_xlat6.z = select(0.0f, 1.0f, u_xlatb5.z);
  u_xlat6.w = select(0.0f, 1.0f, u_xlatb5.w);
  u_xlat5.x = select(-0.0f, -1.0f, u_xlatb5.x);
  u_xlat5.y = select(-0.0f, -1.0f, u_xlatb5.y);
  u_xlat5.z = select(-0.0f, -1.0f, u_xlatb5.z);
  u_xlat5 = vec4f(((u_xlat5.xyz + u_xlat6.yzw)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(u_xlat6.x, max(u_xlat5.xyz, vec3f()).xyz);
  u_xlat36.x = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat36.x = (-(u_xlat36.x) + 4.0f);
  u_xlatu36 = u32(u_xlat36.x);
  u_xlati36 = (bitcast<i32>(u_xlatu36) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati36 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_208.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati36].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati36 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_208.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati36 + 3i)].xyz)).xyz, u_xlat5.w);
  u_xlat0.w = 1.0f;
  u_xlat6.x = dot(x_396.unity_SHAr, u_xlat0);
  u_xlat6.y = dot(x_396.unity_SHAg, u_xlat0);
  u_xlat6.z = dot(x_396.unity_SHAb, u_xlat0);
  u_xlat7 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat8.x = dot(x_396.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_396.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_396.unity_SHBb, u_xlat7);
  u_xlat48 = (u_xlat0.y * u_xlat0.y);
  u_xlat48 = ((u_xlat0.x * u_xlat0.x) + -(u_xlat48));
  u_xlat7 = vec4f((((x_396.unity_SHC.xyz * vec3f(u_xlat48)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  let x_474 = x_98.x_ScaledScreenParams.xy;
  u_xlat36 = (vec2f(1.0f) / vec2f(x_474.x, x_474.y));
  u_xlat7 = vec4f(((u_xlat36 * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat48 = ((u_xlat7.y * x_98.x_ScaleBiasRt.x) + x_98.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat48) + 1.0f);
  u_xlat48 = ((-(x_174.x_EdgeDarken) * u_xlat4.x) + 1.0f);
  let x_510 = (vec3f(u_xlat48) * x_174.x_BaseColor.xyz);
  u_xlat4 = vec4f(x_510.x, u_xlat4.y, x_510.yz);
  let x_517 = (vec3f(u_xlat20) * u_xlat4.xzw);
  u_xlat4 = vec4f(x_517.x, u_xlat4.y, x_517.yz);
  u_xlat48 = (-(x_174.x_Smoothness) + 1.0f);
  u_xlat53 = (u_xlat48 * u_xlat48);
  u_xlat53 = max(u_xlat53, 0.0078125f);
  u_xlat54 = (u_xlat53 * u_xlat53);
  u_xlat23 = (x_174.x_Smoothness + 0.04000002145767211914f);
  u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
  u_xlat55 = ((u_xlat53 * 4.0f) + 2.0f);
  let x_550 = (u_xlat4.xzw * vec3f(0.95999997854232788086f));
  u_xlat4 = vec4f(x_550.x, u_xlat4.y, x_550.yz);
  let x_555 = u_xlat5.xy;
  txVec0 = vec3f(x_555.x, x_555.y, u_xlat5.z);
  u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat21 = (-(x_208.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat5.x * x_208.x_MainLightShadowParams.x) + u_xlat21);
  u_xlatb21 = (0.0f >= u_xlat5.z);
  u_xlatb37 = (u_xlat5.z >= 1.0f);
  u_xlatb21 = (u_xlatb37 | u_xlatb21);
  if (u_xlatb21) {
    x_600 = 1.0f;
  } else {
    x_600 = u_xlat5.x;
  }
  u_xlat5.x = x_600;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_98.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat21 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat37 = ((u_xlat21 * x_208.x_MainLightShadowParams.z) + x_208.x_MainLightShadowParams.w);
  u_xlat37 = clamp(u_xlat37, 0.0f, 1.0f);
  u_xlat56 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat37 * u_xlat56) + u_xlat5.x);
  u_xlat37 = dot(-(u_xlat3), u_xlat0.xyz);
  u_xlat37 = (u_xlat37 + u_xlat37);
  u_xlat9 = ((u_xlat0.xyz * -(vec3f(u_xlat37))) + -(u_xlat3));
  u_xlat51 = u_xlat51;
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat51 = (-(u_xlat51) + 1.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat37 = ((-(u_xlat48) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat48 = (u_xlat48 * u_xlat37);
  u_xlat48 = (u_xlat48 * 6.0f);
  let x_690 = (u_xlat7.xz * x_98.x_FPParams1.xy);
  u_xlat7 = vec4f(x_690.x, u_xlat7.y, x_690.y, u_xlat7.w);
  let x_699 = vec2u(u_xlat7.xz);
  u_xlatu7 = vec3u(x_699.x, u_xlatu7.y, x_699.y);
  u_xlatu10 = vec4u(vec2u(x_98.x_FPParams1.zw).xy, u_xlatu10.zw);
  u_xlati37 = ((bitcast<i32>(u_xlatu7.z) * bitcast<i32>(u_xlatu10.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu37 = (u_xlatu10.y * bitcast<u32>(u_xlati37));
  u_xlat2.x = dot(-(u_xlat2.xyz), u_xlat8.xyz);
  u_xlat18 = log2(u_xlat2.x);
  if (u_xlatb1) {
    x_742 = u_xlat18;
  } else {
    x_742 = u_xlat2.x;
  }
  u_xlat1.x = x_742;
  u_xlat1.x = ((u_xlat1.x * x_98.x_FPParams0.x) + x_98.x_FPParams0.y);
  u_xlatu1 = u32(u_xlat1.x);
  u_xlatu2 = u32(x_98.x_FPParams2.x);
  u_xlatu2 = (u_xlatu2 + 4294967295u);
  u_xlati18 = (bitcast<i32>(u_xlatu10.y) + 2i);
  u_xlatu1 = min(u_xlatu1, u_xlatu2);
  u_xlatu2 = (bitcast<u32>(u_xlati18) * u_xlatu1);
  u_xlatu18 = ((vec2u(u_xlatu1) * vec2u(bitcast<u32>(u_xlati18))) + vec2u(1u, 2u));
  u_xlatu1 = (u_xlatu18.x >> 2u);
  param = bitcast<i32>(u_xlatu18.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_806 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu18.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_813 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_815 = vec2i(x_806, x_813);
  u_xlati7 = vec3i(x_815.x, u_xlati7.y, x_815.y);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_827.urp_ZBins[bitcast<i32>(u_xlatu1)].wy)));
  u_xlati40 = ~(u_xlati7.xz);
  u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati40.xx) & bitcast<vec2u>(x_827.urp_ZBins[bitcast<i32>(u_xlatu1)].zx))).xy, u_xlati10.zw);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8) | bitcast<vec2u>(u_xlati10.xy)));
  u_xlati1 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati18 = bitcast<i32>((bitcast<u32>(u_xlati40.y) & bitcast<u32>(u_xlati8.y)));
  u_xlatu1 = (bitcast<u32>(u_xlati1) | bitcast<u32>(u_xlati18));
  let x_888 = vec2u(x_98.x_FPParams0.zw);
  u_xlatu7 = vec3u(x_888.x, u_xlatu7.y, x_888.y);
  u_xlatb8 = ((vec4f() < u_xlat9.xyzx)).xyz;
  u_xlatu10.x = u_xlatu37;
  u_xlatu10.y = u_xlatu18.y;
  u_xlati42 = 0i;
  u_xlatu58 = u_xlatu1;
  u_xlat11.x = 0.0f;
  u_xlat11.y = 0.0f;
  u_xlat11.z = 0.0f;
  u_xlat18 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu56 = (u_xlatu58 >> 16u);
    u_xlati57 = u_xlati42;
    u_xlatu59 = u_xlatu58;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb12.x = (u_xlati57 == 0i);
      u_xlatu28.x = (u_xlatu59 & 65535u);
      u_xlatb28 = (u_xlatu56 >= u_xlatu28.x);
      u_xlatb12.x = (u_xlatb28 & u_xlatb12.x);
      if (!(u_xlatb12.x)) {
        break;
      }
      param_6 = u_xlatu59;
      param_7 = 5i;
      param_8 = 11i;
      let x_960 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu12 = x_960;
      u_xlatu13 = (u_xlatu10.xxyy + vec4u(u_xlatu12));
      u_xlatu28 = (u_xlatu13.yw >> x_969);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_978 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_985 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_992 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_999 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_978, x_985, x_992, x_999);
      u_xlati14 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_1008.urp_Tiles[bitcast<i32>(u_xlatu28.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      let x_1033 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_1008.urp_Tiles[bitcast<i32>(u_xlatu28.x)].zx)));
      u_xlati28 = vec3i(x_1033.x, u_xlati28.y, x_1033.y);
      let x_1042 = bitcast<vec2i>((bitcast<vec2u>(u_xlati28.xz) | bitcast<vec2u>(u_xlati14)));
      u_xlati28 = vec3i(x_1042.x, u_xlati28.y, x_1042.y);
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati28.x)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati28.z)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati60) | bitcast<u32>(u_xlati28.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_827.urp_ZBins[bitcast<i32>(u_xlatu28.y)].wy))).xy, u_xlati13.zw);
      u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_827.urp_ZBins[bitcast<i32>(u_xlatu28.y)].zx)));
      u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati44) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati44.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati44.x)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati44.y)));
      u_xlati44.x = bitcast<i32>((bitcast<u32>(u_xlati60) | bitcast<u32>(u_xlati44.x)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati44.x) & bitcast<u32>(u_xlati28.x)));
      u_xlati44.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu59) & 31i)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati44.x) & bitcast<u32>(u_xlati28.x)));
      u_xlati12.x = (bitcast<i32>(u_xlatu12) << bitcast<u32>(5i));
      u_xlatu12 = (u_xlatu56 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati12.x)))));
      u_xlatu12 = min(u_xlatu12, 31u);
      u_xlatu12 = (bitcast<u32>(-(bitcast<i32>(u_xlatu12))) + 31u);
      u_xlatu12 = (4294967295u >> (u_xlatu12 & 31u));
      u_xlati57 = bitcast<i32>((u_xlatu12 & bitcast<u32>(u_xlati28.x)));
      u_xlati12.x = (bitcast<i32>(u_xlatu59) + 32i);
      u_xlatu59 = (bitcast<u32>(u_xlati12.x) & 4294967264u);
    }
    u_xlatu58 = u_xlatu59;
    u_xlatb56 = (u_xlati57 != 0i);
    u_xlatb12.x = (u_xlat18 < 0.99000000953674316406f);
    u_xlatb56 = (u_xlatb56 & u_xlatb12.x);
    if (!(u_xlatb56)) {
      break;
    }
    u_xlati56 = (0i - u_xlati57);
    u_xlatu56 = (bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati57));
    u_xlat56 = f32(u_xlatu56);
    u_xlatu56 = (bitcast<u32>(u_xlat56) >> 23u);
    u_xlati56 = (bitcast<i32>(u_xlatu56) + -127i);
    u_xlati12.x = (1i << bitcast<u32>((u_xlati56 & 31i)));
    u_xlati42 = bitcast<i32>((bitcast<u32>(u_xlati57) ^ bitcast<u32>(u_xlati12.x)));
    u_xlati12.x = (bitcast<i32>(u_xlatu58) + -32i);
    u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.x) & 65504u));
    u_xlati56 = (u_xlati56 + u_xlati12.x);
    u_xlati56 = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati56);
    u_xlat12 = vec4f(((vs_TEXCOORD0 + -(x_1267.urp_ReflProbes_BoxMin[u_xlati56].xyz))).xyz, u_xlat12.w);
    u_xlat13 = (-(vs_TEXCOORD0) + x_1267.urp_ReflProbes_BoxMax[u_xlati56].xyz);
    u_xlat12 = vec4f(min(u_xlat12.xyz, u_xlat13).xyz, u_xlat12.w);
    u_xlat12 = vec4f(((u_xlat12.xyz / x_1267.urp_ReflProbes_BoxMax[u_xlati56].www)).xyz, u_xlat12.w);
    u_xlat28.x = min(u_xlat12.z, u_xlat12.y);
    u_xlat12.x = min(u_xlat28.x, u_xlat12.x);
    u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
    u_xlat28.x = (-(u_xlat18) + 1.0f);
    u_xlat12.x = min(u_xlat28.x, u_xlat12.x);
    u_xlatb28 = (0.0f < x_1267.urp_ReflProbes_ProbePosition[u_xlati56].w);
    if (u_xlatb8.x) {
      x_1332 = x_1267.urp_ReflProbes_BoxMax[u_xlati56].x;
    } else {
      x_1332 = x_1267.urp_ReflProbes_BoxMin[u_xlati56].x;
    }
    u_xlat13.x = x_1332;
    if (u_xlatb8.y) {
      x_1346 = x_1267.urp_ReflProbes_BoxMax[u_xlati56].y;
    } else {
      x_1346 = x_1267.urp_ReflProbes_BoxMin[u_xlati56].y;
    }
    u_xlat13.y = x_1346;
    if (u_xlatb8.z) {
      x_1360 = x_1267.urp_ReflProbes_BoxMax[u_xlati56].z;
    } else {
      x_1360 = x_1267.urp_ReflProbes_BoxMin[u_xlati56].z;
    }
    u_xlat13.z = x_1360;
    u_xlat13 = (u_xlat13 + -(vs_TEXCOORD0));
    u_xlat13 = (u_xlat13 / u_xlat9);
    u_xlat44 = min(u_xlat13.y, u_xlat13.x);
    u_xlat44 = min(u_xlat13.z, u_xlat44);
    u_xlat13 = (vs_TEXCOORD0 + -(x_1267.urp_ReflProbes_ProbePosition[u_xlati56].xyz));
    u_xlat13 = ((u_xlat9 * vec3f(u_xlat44)) + u_xlat13);
    if (u_xlatb28) {
      x_1403 = u_xlat13;
    } else {
      x_1403 = u_xlat9;
    }
    u_xlat28 = x_1403;
    u_xlatu13.x = u32(abs(x_1267.urp_ReflProbes_ProbePosition[u_xlati56].w));
    u_xlatu13.x = (u_xlatu13.x + 4294967295u);
    u_xlat13.x = f32(u_xlatu13.x);
    u_xlat13.x = min(u_xlat48, u_xlat13.x);
    u_xlat29.x = dot(abs(u_xlat28), vec3f(1.0f));
    u_xlat29.x = max(u_xlat29.x, 0.00000099999999747524f);
    u_xlat29.x = (1.0f / u_xlat29.x);
    u_xlat14 = (u_xlat28.zxy * u_xlat29.xxx);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb45 = ((u_xlat14.yzyz >= vec4f())).xy;
    if (u_xlatb45.x) {
      x_1468 = u_xlat14.x;
    } else {
      x_1468 = -(u_xlat14.x);
    }
    u_xlat45.x = x_1468;
    if (u_xlatb45.y) {
      x_1481 = u_xlat14.x;
    } else {
      x_1481 = -(u_xlat14.x);
    }
    u_xlat45.y = x_1481;
    u_xlat28 = vec3f((((u_xlat28.xy * u_xlat29.xx) + u_xlat45)).xy, u_xlat28.z);
    u_xlat28 = vec3f((((u_xlat28.xy * x_1504) + x_1504)).xy, u_xlat28.z);
    u_xlat28 = vec3f(clamp(u_xlat28.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat28.z);
    u_xlat60 = floor(u_xlat13.x);
    u_xlat29.x = (u_xlat60 + 1.0f);
    u_xlat13.x = (-(u_xlat60) + u_xlat13.x);
    u_xlatu60 = u32(u_xlat60);
    u_xlati60 = ((u_xlati56 * 7i) + bitcast<i32>(u_xlatu60));
    u_xlatu29 = u32(u_xlat29.x);
    u_xlati56 = ((u_xlati56 * 7i) + bitcast<i32>(u_xlatu29));
    u_xlat29 = vec3f((((u_xlat28.xy * x_1267.urp_ReflProbes_MipScaleOffset[u_xlati60].xy) + x_1267.urp_ReflProbes_MipScaleOffset[u_xlati60].zw)).xy, u_xlat29.z);
    u_xlat29 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat29.xy, 0.0f).xyz;
    u_xlat28 = vec3f((((u_xlat28.xy * x_1267.urp_ReflProbes_MipScaleOffset[u_xlati56].xy) + x_1267.urp_ReflProbes_MipScaleOffset[u_xlati56].zw)).xy, u_xlat28.z);
    u_xlat28 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat28.xy, 0.0f).xyz;
    u_xlat28 = (-(u_xlat29) + u_xlat28);
    u_xlat28 = ((u_xlat13.xxx * u_xlat28) + u_xlat29);
    u_xlat11 = ((u_xlat12.xxx * u_xlat28) + u_xlat11);
    u_xlat18 = (u_xlat18 + u_xlat12.x);
  }
  u_xlatb1 = (u_xlat18 < 0.99000000953674316406f);
  if (u_xlatb1) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9, u_xlat48);
    u_xlat48 = (-(u_xlat18) + 1.0f);
    u_xlat1.x = (u_xlat8.w + -1.0f);
    u_xlat1.x = ((x_98.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_98.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_98.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat1.xxx)).xyz, u_xlat8.w);
    u_xlat11 = ((vec3f(u_xlat48) * u_xlat8.xyz) + u_xlat11);
  }
  u_xlat8 = vec4f((((vec2f(u_xlat53) * vec2f(u_xlat53)) + vec2f(-1.0f, 1.0f))).xy, u_xlat8.zw);
  u_xlat48 = (1.0f / u_xlat8.y);
  u_xlat1.x = (u_xlat23 + -0.03999999910593032837f);
  u_xlat1.x = ((u_xlat51 * u_xlat1.x) + 0.03999999910593032837f);
  u_xlat48 = (u_xlat48 * u_xlat1.x);
  u_xlat24 = (vec3f(u_xlat48) * u_xlat11);
  u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat4.xzw) + u_xlat24)).xyz, u_xlat6.w);
  u_xlati48 = bitcast<i32>((x_98.x_MainLightLayerMask & bitcast<u32>(x_396.unity_RenderingLayer.x)));
  u_xlat1.x = dot(u_xlat0.xyz, x_98.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat5.x);
  u_xlat24 = (u_xlat1.xxx * x_98.x_MainLightColor.xyz);
  u_xlat1 = vec4f((((u_xlat17 * vec3f(u_xlat50)) + x_98.x_MainLightPosition.xyz)).xyz, u_xlat1.w);
  u_xlat49 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat49 = max(u_xlat49, 1.17549435e-38f);
  u_xlat49 = inverseSqrt(u_xlat49);
  u_xlat1 = vec4f(((vec3f(u_xlat49) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.w = dot(u_xlat0.xyz, u_xlat1.xyz);
  u_xlat1.w = clamp(u_xlat1.w, 0.0f, 1.0f);
  u_xlat1.x = dot(x_98.x_MainLightPosition.xyz, u_xlat1.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xw * u_xlat1.xw)).xy, u_xlat1.zw);
  u_xlat17.x = ((u_xlat1.y * u_xlat8.x) + 1.00001001358032226562f);
  u_xlat17.x = (u_xlat17.x * u_xlat17.x);
  u_xlat1.x = max(u_xlat1.x, 0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * u_xlat17.x);
  u_xlat1.x = (u_xlat55 * u_xlat1.x);
  u_xlat1.x = (u_xlat54 / u_xlat1.x);
  u_xlat1 = vec4f((((u_xlat1.xxx * x_1847) + u_xlat4.xzw)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat24 * u_xlat1.xyz)).xyz, u_xlat1.w);
  if ((u_xlati48 != 0i)) {
    x_1862 = u_xlat1.xyz;
  } else {
    x_1862 = vec3f();
  }
  u_xlat1 = vec4f(x_1862.xyz, u_xlat1.w);
  u_xlatu48 = min(u_xlatu7.z, 32u);
  u_xlat49 = ((u_xlat21 * x_208.x_AdditionalShadowFadeParams.x) + x_208.x_AdditionalShadowFadeParams.y);
  u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu48)) {
    } else {
      break;
    }
    u_xlat24 = ((-(vs_TEXCOORD0) * x_1907.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_1907.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat50 = dot(u_xlat24, u_xlat24);
    u_xlat50 = max(u_xlat50, 0.00006103515625f);
    u_xlat51 = inverseSqrt(u_xlat50);
    u_xlat9 = (vec3f(u_xlat51) * u_xlat24);
    u_xlat7.x = (1.0f / u_xlat50);
    u_xlat50 = (u_xlat50 * x_1907.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat50 = ((-(u_xlat50) * u_xlat50) + 1.0f);
    u_xlat50 = max(u_xlat50, 0.0f);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat50 = (u_xlat50 * u_xlat7.x);
    u_xlat7.x = dot(x_1907.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9);
    u_xlat7.x = ((u_xlat7.x * x_1907.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_1907.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat50 = (u_xlat50 * u_xlat7.x);
    u_xlatb7 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati23 = i32(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati7.x = select(u_xlati23, -1i, u_xlatb7);
    u_xlatb23 = (u_xlati7.x >= 0i);
    if (u_xlatb23) {
      u_xlatb23 = any(!((vec4f() == vec4f(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb23) {
        u_xlatb10 = vec4<bool>(((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz.xyz, u_xlatb10.w);
        u_xlatb23 = (u_xlatb10.y & u_xlatb10.x);
        let x_2042 = ((-(u_xlat9.zyzx) < vec4f())).xyw;
        u_xlatb10 = vec4<bool>(x_2042.xy, u_xlatb10.z, x_2042.z);
        u_xlat10.x = select(4.0f, 5.0f, u_xlatb10.x);
        u_xlat10.y = select(2.0f, 3.0f, u_xlatb10.y);
        u_xlat57 = select(0.0f, 1.0f, u_xlatb10.w);
        if (u_xlatb10.z) {
          x_2061 = u_xlat10.y;
        } else {
          x_2061 = u_xlat57;
        }
        u_xlat57 = x_2061;
        if (u_xlatb23) {
          x_2070 = u_xlat10.x;
        } else {
          x_2070 = u_xlat57;
        }
        u_xlat23 = x_2070;
        u_xlati23 = i32(u_xlat23);
        u_xlati7.x = (u_xlati23 + u_xlati7.x);
      }
      u_xlati7.x = (u_xlati7.x << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 1i)]);
      u_xlat10 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati7.x] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      let x_2133 = u_xlat10.xy;
      txVec1 = vec3f(x_2133.x, x_2133.y, u_xlat10.z);
      u_xlat7.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat23 = (1.0f + -(x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat7.x = ((u_xlat7.x * x_208.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat23);
      u_xlatb23 = (0.0f >= u_xlat10.z);
      u_xlatb57 = (u_xlat10.z >= 1.0f);
      u_xlatb23 = (u_xlatb23 | u_xlatb57);
      if (u_xlatb23) {
        x_2174 = 1.0f;
      } else {
        x_2174 = u_xlat7.x;
      }
      u_xlat7.x = x_2174;
    } else {
      u_xlat7.x = 1.0f;
    }
    u_xlat23 = (-(u_xlat7.x) + 1.0f);
    u_xlat7.x = ((u_xlat49 * u_xlat23) + u_xlat7.x);
    u_xlati23 = bitcast<i32>((bitcast<u32>(x_396.unity_RenderingLayer.x) & bitcast<u32>(x_1907.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat50 = (u_xlat50 * u_xlat7.x);
    u_xlat7.x = dot(u_xlat0.xyz, u_xlat9);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat50 = (u_xlat50 * u_xlat7.x);
    u_xlat10 = vec4f(((vec3f(u_xlat50) * x_1907.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlat24 = ((u_xlat24 * vec3f(u_xlat51)) + u_xlat3);
    u_xlat50 = dot(u_xlat24, u_xlat24);
    u_xlat50 = max(u_xlat50, 1.17549435e-38f);
    u_xlat50 = inverseSqrt(u_xlat50);
    u_xlat24 = (vec3f(u_xlat50) * u_xlat24);
    u_xlat50 = dot(u_xlat0.xyz, u_xlat24);
    u_xlat50 = clamp(u_xlat50, 0.0f, 1.0f);
    u_xlat51 = dot(u_xlat9, u_xlat24);
    u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat50 = ((u_xlat50 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat51 = max(u_xlat51, 0.10000000149011611938f);
    u_xlat50 = (u_xlat50 * u_xlat51);
    u_xlat50 = (u_xlat55 * u_xlat50);
    u_xlat50 = (u_xlat54 / u_xlat50);
    u_xlat24 = ((vec3f(u_xlat50) * x_1847) + u_xlat4.xzw);
    u_xlat24 = ((u_xlat24 * u_xlat10.xyz) + u_xlat5.xyw);
    if ((u_xlati23 != 0i)) {
      x_2300 = u_xlat24;
    } else {
      x_2300 = u_xlat5.xyw;
    }
    u_xlat5 = vec4f(x_2300.xy, u_xlat5.z, x_2300.z);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu48 = (u_xlatu2 >> 2u);
  param_21 = bitcast<i32>(u_xlatu2);
  param_22 = 0i;
  param_23 = 1i;
  let x_2320 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu2);
  param_25 = 1i;
  param_26 = 1i;
  let x_2326 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati2 = vec4i(vec2i(x_2320, x_2326).xy, u_xlati2.zw);
  u_xlati7 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_827.urp_ZBins[bitcast<i32>(u_xlatu48)].wy))).xy, u_xlati7.z);
  let x_2345 = ~(u_xlati2.xy);
  u_xlati2 = vec4i(x_2345.x, u_xlati2.yz, x_2345.y);
  u_xlati24 = bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_827.urp_ZBins[bitcast<i32>(u_xlatu48)].zx)));
  u_xlati7 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xy) | bitcast<vec2u>(u_xlati24))).xy, u_xlati7.z);
  u_xlati48 = bitcast<i32>((bitcast<u32>(u_xlati2.y) & bitcast<u32>(u_xlati7.x)));
  u_xlati2.x = bitcast<i32>((bitcast<u32>(u_xlati2.w) & bitcast<u32>(u_xlati7.y)));
  u_xlatu48 = (bitcast<u32>(u_xlati48) | bitcast<u32>(u_xlati2.x));
  u_xlatu9.x = u_xlatu37;
  u_xlatu9.y = u_xlatu18.y;
  u_xlatu41.x = 0u;
  u_xlatu41.y = u_xlatu48;
  let x_2403 = u_xlat5.xyw;
  u_xlat2 = vec4f(x_2403.xy, u_xlat2.z, x_2403.z);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu51 = (u_xlatu41.y >> 16u);
    u_xlatu7 = vec3u(u_xlatu41.xy, u_xlatu7.z);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb24 = (bitcast<i32>(u_xlatu7.x) == 0i);
      u_xlatu40.x = (u_xlatu7.y & 65535u);
      u_xlatb40 = (u_xlatu51 >= u_xlatu40.x);
      u_xlatb24 = (u_xlatb40 & u_xlatb24);
      if (!(u_xlatb24)) {
        break;
      }
      param_27 = u_xlatu7.y;
      param_28 = 5i;
      param_29 = 11i;
      let x_2452 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu24 = x_2452;
      u_xlatu10 = (vec4u(u_xlatu24) + u_xlatu9.xxyy);
      u_xlatu40 = (u_xlatu10.yw >> x_969);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_2467 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_2474 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_2481 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_2488 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_2467, x_2474, x_2481, x_2488);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_1008.urp_Tiles[bitcast<i32>(u_xlatu40.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati43 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_1008.urp_Tiles[bitcast<i32>(u_xlatu40.x)].zx)));
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati43) | bitcast<vec2u>(u_xlati11)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.y)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati40.x) | bitcast<u32>(u_xlati10.x)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_827.urp_ZBins[bitcast<i32>(u_xlatu40.y)].wy))).xy, u_xlati10.zw);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_827.urp_ZBins[bitcast<i32>(u_xlatu40.y)].zx)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xy) | bitcast<vec2u>(u_xlati11))).xy, u_xlati10.zw);
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati10.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati10.y)));
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati56) | bitcast<u32>(u_xlati10.x)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati40.x)));
      u_xlati56 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu7.y) & 31i)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati40.x)));
      u_xlati24.x = (bitcast<i32>(u_xlatu24) << bitcast<u32>(5i));
      u_xlatu24 = (u_xlatu51 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati24.x)))));
      u_xlatu24 = min(u_xlatu24, 31u);
      u_xlatu24 = (bitcast<u32>(-(bitcast<i32>(u_xlatu24))) + 31u);
      u_xlatu24 = (4294967295u >> (u_xlatu24 & 31u));
      u_xlatu7.x = (u_xlatu24 & bitcast<u32>(u_xlati40.x));
      u_xlati24.x = (bitcast<i32>(u_xlatu7.y) + 32i);
      u_xlatu7.y = (bitcast<u32>(u_xlati24.x) & 4294967264u);
    }
    u_xlatu41.y = u_xlatu7.y;
    if ((u_xlatu7.x == 0u)) {
      break;
    }
    u_xlati51 = (0i - bitcast<i32>(u_xlatu7.x));
    u_xlatu51 = (bitcast<u32>(u_xlati51) & u_xlatu7.x);
    u_xlat51 = f32(u_xlatu51);
    u_xlatu51 = (bitcast<u32>(u_xlat51) >> 23u);
    u_xlati51 = (bitcast<i32>(u_xlatu51) + -127i);
    u_xlati24.x = (1i << bitcast<u32>((u_xlati51 & 31i)));
    u_xlatu41.x = (u_xlatu7.x ^ bitcast<u32>(u_xlati24.x));
    u_xlati24.x = (bitcast<i32>(u_xlatu41.y) + -32i);
    u_xlati24.x = bitcast<i32>((bitcast<u32>(u_xlati24.x) & 65504u));
    u_xlati51 = (u_xlati51 + u_xlati24.x);
    u_xlati51 = (bitcast<i32>(u_xlatu7.z) + u_xlati51);
    u_xlat24 = ((-(vs_TEXCOORD0) * x_1907.x_AdditionalLightsPosition[u_xlati51].www) + x_1907.x_AdditionalLightsPosition[u_xlati51].xyz);
    u_xlat10.x = dot(u_xlat24, u_xlat24);
    u_xlat10.x = max(u_xlat10.x, 0.00006103515625f);
    u_xlat26 = inverseSqrt(u_xlat10.x);
    u_xlat11 = (u_xlat24 * vec3f(u_xlat26));
    u_xlat42 = (1.0f / u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * x_1907.x_AdditionalLightsAttenuation[u_xlati51].x);
    u_xlat10.x = ((-(u_xlat10.x) * u_xlat10.x) + 1.0f);
    u_xlat10.x = max(u_xlat10.x, 0.0f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * u_xlat42);
    u_xlat42 = dot(x_1907.x_AdditionalLightsSpotDir[u_xlati51].xyz, u_xlat11);
    u_xlat42 = ((u_xlat42 * x_1907.x_AdditionalLightsAttenuation[u_xlati51].z) + x_1907.x_AdditionalLightsAttenuation[u_xlati51].w);
    u_xlat42 = clamp(u_xlat42, 0.0f, 1.0f);
    u_xlat42 = (u_xlat42 * u_xlat42);
    u_xlat10.x = (u_xlat42 * u_xlat10.x);
    u_xlatb42 = (u_xlati51 < 0i);
    u_xlati58 = i32(x_208.x_AdditionalShadowParams[u_xlati51].w);
    u_xlati42 = select(u_xlati58, -1i, u_xlatb42);
    u_xlatb58 = (u_xlati42 >= 0i);
    if (u_xlatb58) {
      u_xlatb58 = any(!((vec4f() == vec4f(x_208.x_AdditionalShadowParams[u_xlati51].z))));
      if (u_xlatb58) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb58 = (u_xlatb12.y & u_xlatb12.x);
        let x_2855 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_2855.xy, u_xlatb12.z, x_2855.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat59 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_2872 = u_xlat12.y;
        } else {
          x_2872 = u_xlat59;
        }
        u_xlat59 = x_2872;
        if (u_xlatb58) {
          x_2882 = u_xlat12.x;
        } else {
          x_2882 = u_xlat59;
        }
        u_xlat58 = x_2882;
        u_xlati58 = i32(u_xlat58);
        u_xlati42 = (u_xlati58 + u_xlati42);
      }
      u_xlati42 = (u_xlati42 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati42 + 1i)]);
      u_xlat12 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati42] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati42 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_208.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati42 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      let x_2936 = u_xlat12.xy;
      txVec2 = vec3f(x_2936.x, x_2936.y, u_xlat12.z);
      u_xlat42 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat58 = (1.0f + -(x_208.x_AdditionalShadowParams[u_xlati51].x));
      u_xlat42 = ((u_xlat42 * x_208.x_AdditionalShadowParams[u_xlati51].x) + u_xlat58);
      u_xlatb58 = (0.0f >= u_xlat12.z);
      u_xlatb59 = (u_xlat12.z >= 1.0f);
      u_xlatb58 = (u_xlatb58 | u_xlatb59);
      u_xlat42 = select(u_xlat42, 1.0f, u_xlatb58);
    } else {
      u_xlat42 = 1.0f;
    }
    u_xlat58 = (-(u_xlat42) + 1.0f);
    u_xlat42 = ((u_xlat49 * u_xlat58) + u_xlat42);
    u_xlati58 = bitcast<i32>((bitcast<u32>(x_396.unity_RenderingLayer.x) & bitcast<u32>(x_1907.x_AdditionalLightsLayerMasks[u_xlati51].el)));
    u_xlat10.x = (u_xlat42 * u_xlat10.x);
    u_xlat42 = dot(u_xlat0.xyz, u_xlat11);
    u_xlat42 = clamp(u_xlat42, 0.0f, 1.0f);
    u_xlat10.x = (u_xlat42 * u_xlat10.x);
    u_xlat12 = vec4f(((u_xlat10.xxx * x_1907.x_AdditionalLightsColor[u_xlati51].xyz)).xyz, u_xlat12.w);
    u_xlat24 = ((u_xlat24 * vec3f(u_xlat26)) + u_xlat3);
    u_xlat51 = dot(u_xlat24, u_xlat24);
    u_xlat51 = max(u_xlat51, 1.17549435e-38f);
    u_xlat51 = inverseSqrt(u_xlat51);
    u_xlat24 = (vec3f(u_xlat51) * u_xlat24);
    u_xlat51 = dot(u_xlat0.xyz, u_xlat24);
    u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
    u_xlat24.x = dot(u_xlat11, u_xlat24);
    u_xlat24.x = clamp(u_xlat24.x, 0.0f, 1.0f);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat51 = ((u_xlat51 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat24.x = (u_xlat24.x * u_xlat24.x);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat24.x = max(u_xlat24.x, 0.10000000149011611938f);
    u_xlat51 = (u_xlat51 * u_xlat24.x);
    u_xlat51 = (u_xlat55 * u_xlat51);
    u_xlat51 = (u_xlat54 / u_xlat51);
    u_xlat24 = ((vec3f(u_xlat51) * x_1847) + u_xlat4.xzw);
    u_xlat24 = ((u_xlat24 * u_xlat12.xyz) + u_xlat2.xyw);
    if ((u_xlati58 != 0i)) {
      x_3093 = u_xlat24;
    } else {
      x_3093 = u_xlat2.xyw;
    }
    u_xlat2 = vec4f(x_3093.xy, u_xlat2.z, x_3093.z);
  }
  u_xlat0 = vec4f(((u_xlat1.xyz + u_xlat6.xyz)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat2.xyw + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat20;
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

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
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
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
diagnostic(off, derivative_uniformity);

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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_AlphaCenter : f32,
  /* @offset(20) */
  x_AlphaEdge : f32,
  /* @offset(24) */
  x_FresnelPower : f32,
  /* @offset(28) */
  x_EdgeDarken : f32,
  /* @offset(32) */
  x_Smoothness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_Absorb : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_Transmit : f32,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(0) var<uniform> x_98 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_174 : UnityPerMaterial;

@group(1) @binding(7) var<uniform> x_209 : LightShadows;

@group(1) @binding(5) var<uniform> x_256 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_693 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_876 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_1135 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(5) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_1774 : AdditionalLights;

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

const x_837 = vec2u(2u);

const x_1372 = vec2f(0.5f);

const x_1713 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat17 : vec3f;
  var u_xlat2 : vec4f;
  var x_132 : vec3f;
  var u_xlat50 : f32;
  var u_xlat3 : vec3f;
  var u_xlat51 : f32;
  var u_xlat4 : vec4f;
  var u_xlat20 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat48 : f32;
  var u_xlat36 : vec2f;
  var u_xlat53 : f32;
  var u_xlat54 : f32;
  var u_xlat23 : f32;
  var u_xlat55 : f32;
  var txVec0 : vec3f;
  var u_xlat21 : f32;
  var u_xlatb21 : bool;
  var u_xlatb37 : bool;
  var x_466 : f32;
  var u_xlat37 : f32;
  var u_xlat56 : f32;
  var u_xlat9 : vec3f;
  var u_xlatu7 : vec3u;
  var u_xlatu10 : vec4u;
  var u_xlati37 : i32;
  var u_xlatu37 : u32;
  var u_xlat18 : f32;
  var u_xlat1 : vec4f;
  var x_608 : f32;
  var u_xlatu1 : u32;
  var u_xlatu2 : u32;
  var u_xlati18 : i32;
  var u_xlatu18 : vec2u;
  var u_xlati7 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati40 : vec2i;
  var u_xlati10 : vec4i;
  var u_xlati1 : i32;
  var u_xlatb8 : vec3<bool>;
  var u_xlati42 : i32;
  var u_xlatu58 : u32;
  var u_xlat11 : vec3f;
  var u_xlatu56 : u32;
  var u_xlati57 : i32;
  var u_xlatu59 : u32;
  var u_xlatb12 : vec4<bool>;
  var u_xlatu28 : vec2u;
  var u_xlatb28 : bool;
  var u_xlatu12 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
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
  var u_xlati14 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati28 : vec3i;
  var u_xlati60 : i32;
  var u_xlati44 : vec2i;
  var u_xlati12 : vec4i;
  var u_xlatb56 : bool;
  var u_xlati56 : i32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec3f;
  var u_xlat28 : vec3f;
  var x_1200 : f32;
  var x_1214 : f32;
  var x_1228 : f32;
  var u_xlat44 : f32;
  var x_1271 : vec3f;
  var u_xlat29 : vec3f;
  var u_xlat14 : vec3f;
  var u_xlatb45 : vec2<bool>;
  var u_xlat45 : vec2f;
  var x_1336 : f32;
  var x_1349 : f32;
  var u_xlat60 : f32;
  var u_xlatu60 : u32;
  var u_xlatu29 : u32;
  var u_xlat24 : vec3f;
  var u_xlati48 : i32;
  var u_xlat49 : f32;
  var x_1728 : vec3f;
  var u_xlatu48 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatb7 : bool;
  var u_xlati23 : i32;
  var u_xlatb23 : bool;
  var u_xlatb10 : vec4<bool>;
  var u_xlat10 : vec4f;
  var u_xlat57 : f32;
  var x_1929 : f32;
  var x_1938 : f32;
  var txVec1 : vec3f;
  var u_xlatb57 : bool;
  var x_2042 : f32;
  var x_2168 : vec3f;
  var u_xlati2 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati24 : vec2i;
  var u_xlatu9 : vec2u;
  var u_xlatu41 : vec2u;
  var u_xlatu51 : u32;
  var u_xlatb24 : bool;
  var u_xlatu40 : vec2u;
  var u_xlatb40 : bool;
  var u_xlatu24 : u32;
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
  var u_xlati11 : vec2i;
  var u_xlati43 : vec2i;
  var u_xlati51 : i32;
  var u_xlat26 : f32;
  var u_xlat42 : f32;
  var u_xlatb42 : bool;
  var u_xlati58 : i32;
  var u_xlatb58 : bool;
  var u_xlat59 : f32;
  var x_2740 : f32;
  var u_xlat58 : f32;
  var x_2750 : f32;
  var txVec2 : vec3f;
  var u_xlatb59 : bool;
  var x_2961 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, u_xlat0.w);
  u_xlatb1 = (x_98.unity_OrthoParams.w == 0.0f);
  u_xlat17 = (-(vs_TEXCOORD0) + x_98.x_WorldSpaceCameraPos);
  u_xlat2.x = x_98.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat2.y = x_98.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat2.z = x_98.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb1) {
    x_132 = u_xlat17;
  } else {
    x_132 = u_xlat2.xyz;
  }
  u_xlat17 = x_132;
  u_xlat50 = dot(u_xlat17, u_xlat17);
  u_xlat50 = inverseSqrt(u_xlat50);
  u_xlat3 = (u_xlat17 * vec3f(u_xlat50));
  u_xlat51 = dot(u_xlat0.xyz, u_xlat3);
  u_xlat4.x = min(abs(u_xlat51), 1.0f);
  u_xlat4.x = (-(u_xlat4.x) + 1.0f);
  u_xlat4.x = log2(u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * x_174.x_FresnelPower);
  u_xlat4.x = exp2(u_xlat4.x);
  u_xlat20 = (-(x_174.x_AlphaCenter) + x_174.x_AlphaEdge);
  u_xlat20 = ((u_xlat4.x * u_xlat20) + x_174.x_AlphaCenter);
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_209.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_209.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_209.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_209.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat5.w);
  u_xlat0.w = 1.0f;
  u_xlat6.x = dot(x_256.unity_SHAr, u_xlat0);
  u_xlat6.y = dot(x_256.unity_SHAg, u_xlat0);
  u_xlat6.z = dot(x_256.unity_SHAb, u_xlat0);
  u_xlat7 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat8.x = dot(x_256.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_256.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_256.unity_SHBb, u_xlat7);
  u_xlat48 = (u_xlat0.y * u_xlat0.y);
  u_xlat48 = ((u_xlat0.x * u_xlat0.x) + -(u_xlat48));
  u_xlat7 = vec4f((((x_256.unity_SHC.xyz * vec3f(u_xlat48)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = (u_xlat6 + u_xlat7.xyz);
  let x_336 = x_98.x_ScaledScreenParams.xy;
  u_xlat36 = (vec2f(1.0f) / vec2f(x_336.x, x_336.y));
  u_xlat7 = vec4f(((u_xlat36 * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat48 = ((u_xlat7.y * x_98.x_ScaleBiasRt.x) + x_98.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat48) + 1.0f);
  u_xlat48 = ((-(x_174.x_EdgeDarken) * u_xlat4.x) + 1.0f);
  let x_373 = (vec3f(u_xlat48) * x_174.x_BaseColor.xyz);
  u_xlat4 = vec4f(x_373.x, u_xlat4.y, x_373.yz);
  let x_380 = (vec3f(u_xlat20) * u_xlat4.xzw);
  u_xlat4 = vec4f(x_380.x, u_xlat4.y, x_380.yz);
  u_xlat48 = (-(x_174.x_Smoothness) + 1.0f);
  u_xlat53 = (u_xlat48 * u_xlat48);
  u_xlat53 = max(u_xlat53, 0.0078125f);
  u_xlat54 = (u_xlat53 * u_xlat53);
  u_xlat23 = (x_174.x_Smoothness + 0.04000002145767211914f);
  u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
  u_xlat55 = ((u_xlat53 * 4.0f) + 2.0f);
  let x_416 = (u_xlat4.xzw * vec3f(0.95999997854232788086f));
  u_xlat4 = vec4f(x_416.x, u_xlat4.y, x_416.yz);
  let x_421 = u_xlat5.xy;
  txVec0 = vec3f(x_421.x, x_421.y, u_xlat5.z);
  u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat21 = (-(x_209.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat5.x * x_209.x_MainLightShadowParams.x) + u_xlat21);
  u_xlatb21 = (0.0f >= u_xlat5.z);
  u_xlatb37 = (u_xlat5.z >= 1.0f);
  u_xlatb21 = (u_xlatb37 | u_xlatb21);
  if (u_xlatb21) {
    x_466 = 1.0f;
  } else {
    x_466 = u_xlat5.x;
  }
  u_xlat5.x = x_466;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_98.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat21 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat37 = ((u_xlat21 * x_209.x_MainLightShadowParams.z) + x_209.x_MainLightShadowParams.w);
  u_xlat37 = clamp(u_xlat37, 0.0f, 1.0f);
  u_xlat56 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat37 * u_xlat56) + u_xlat5.x);
  u_xlat37 = dot(-(u_xlat3), u_xlat0.xyz);
  u_xlat37 = (u_xlat37 + u_xlat37);
  u_xlat9 = ((u_xlat0.xyz * -(vec3f(u_xlat37))) + -(u_xlat3));
  u_xlat51 = u_xlat51;
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat51 = (-(u_xlat51) + 1.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat37 = ((-(u_xlat48) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat48 = (u_xlat48 * u_xlat37);
  u_xlat48 = (u_xlat48 * 6.0f);
  let x_556 = (u_xlat7.xz * x_98.x_FPParams1.xy);
  u_xlat7 = vec4f(x_556.x, u_xlat7.y, x_556.y, u_xlat7.w);
  let x_565 = vec2u(u_xlat7.xz);
  u_xlatu7 = vec3u(x_565.x, u_xlatu7.y, x_565.y);
  u_xlatu10 = vec4u(vec2u(x_98.x_FPParams1.zw).xy, u_xlatu10.zw);
  u_xlati37 = ((bitcast<i32>(u_xlatu7.z) * bitcast<i32>(u_xlatu10.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu37 = (u_xlatu10.y * bitcast<u32>(u_xlati37));
  u_xlat2.x = dot(-(u_xlat2.xyz), u_xlat8.xyz);
  u_xlat18 = log2(u_xlat2.x);
  if (u_xlatb1) {
    x_608 = u_xlat18;
  } else {
    x_608 = u_xlat2.x;
  }
  u_xlat1.x = x_608;
  u_xlat1.x = ((u_xlat1.x * x_98.x_FPParams0.x) + x_98.x_FPParams0.y);
  u_xlatu1 = u32(u_xlat1.x);
  u_xlatu2 = u32(x_98.x_FPParams2.x);
  u_xlatu2 = (u_xlatu2 + 4294967295u);
  u_xlati18 = (bitcast<i32>(u_xlatu10.y) + 2i);
  u_xlatu1 = min(u_xlatu1, u_xlatu2);
  u_xlatu2 = (bitcast<u32>(u_xlati18) * u_xlatu1);
  u_xlatu18 = ((vec2u(u_xlatu1) * vec2u(bitcast<u32>(u_xlati18))) + vec2u(1u, 2u));
  u_xlatu1 = (u_xlatu18.x >> 2u);
  param = bitcast<i32>(u_xlatu18.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_672 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu18.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_679 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_681 = vec2i(x_672, x_679);
  u_xlati7 = vec3i(x_681.x, u_xlati7.y, x_681.y);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_693.urp_ZBins[bitcast<i32>(u_xlatu1)].wy)));
  u_xlati40 = ~(u_xlati7.xz);
  u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati40.xx) & bitcast<vec2u>(x_693.urp_ZBins[bitcast<i32>(u_xlatu1)].zx))).xy, u_xlati10.zw);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8) | bitcast<vec2u>(u_xlati10.xy)));
  u_xlati1 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati18 = bitcast<i32>((bitcast<u32>(u_xlati40.y) & bitcast<u32>(u_xlati8.y)));
  u_xlatu1 = (bitcast<u32>(u_xlati1) | bitcast<u32>(u_xlati18));
  let x_754 = vec2u(x_98.x_FPParams0.zw);
  u_xlatu7 = vec3u(x_754.x, u_xlatu7.y, x_754.y);
  u_xlatb8 = ((vec4f() < u_xlat9.xyzx)).xyz;
  u_xlatu10.x = u_xlatu37;
  u_xlatu10.y = u_xlatu18.y;
  u_xlati42 = 0i;
  u_xlatu58 = u_xlatu1;
  u_xlat11.x = 0.0f;
  u_xlat11.y = 0.0f;
  u_xlat11.z = 0.0f;
  u_xlat18 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu56 = (u_xlatu58 >> 16u);
    u_xlati57 = u_xlati42;
    u_xlatu59 = u_xlatu58;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb12.x = (u_xlati57 == 0i);
      u_xlatu28.x = (u_xlatu59 & 65535u);
      u_xlatb28 = (u_xlatu56 >= u_xlatu28.x);
      u_xlatb12.x = (u_xlatb28 & u_xlatb12.x);
      if (!(u_xlatb12.x)) {
        break;
      }
      param_6 = u_xlatu59;
      param_7 = 5i;
      param_8 = 11i;
      let x_828 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu12 = x_828;
      u_xlatu13 = (u_xlatu10.xxyy + vec4u(u_xlatu12));
      u_xlatu28 = (u_xlatu13.yw >> x_837);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_846 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_853 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_860 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_867 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_846, x_853, x_860, x_867);
      u_xlati14 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_876.urp_Tiles[bitcast<i32>(u_xlatu28.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      let x_901 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_876.urp_Tiles[bitcast<i32>(u_xlatu28.x)].zx)));
      u_xlati28 = vec3i(x_901.x, u_xlati28.y, x_901.y);
      let x_910 = bitcast<vec2i>((bitcast<vec2u>(u_xlati28.xz) | bitcast<vec2u>(u_xlati14)));
      u_xlati28 = vec3i(x_910.x, u_xlati28.y, x_910.y);
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati28.x)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati28.z)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati60) | bitcast<u32>(u_xlati28.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_693.urp_ZBins[bitcast<i32>(u_xlatu28.y)].wy))).xy, u_xlati13.zw);
      u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_693.urp_ZBins[bitcast<i32>(u_xlatu28.y)].zx)));
      u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati44) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati44.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati44.x)));
      u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati44.y)));
      u_xlati44.x = bitcast<i32>((bitcast<u32>(u_xlati60) | bitcast<u32>(u_xlati44.x)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati44.x) & bitcast<u32>(u_xlati28.x)));
      u_xlati44.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu59) & 31i)));
      u_xlati28.x = bitcast<i32>((bitcast<u32>(u_xlati44.x) & bitcast<u32>(u_xlati28.x)));
      u_xlati12.x = (bitcast<i32>(u_xlatu12) << bitcast<u32>(5i));
      u_xlatu12 = (u_xlatu56 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati12.x)))));
      u_xlatu12 = min(u_xlatu12, 31u);
      u_xlatu12 = (bitcast<u32>(-(bitcast<i32>(u_xlatu12))) + 31u);
      u_xlatu12 = (4294967295u >> (u_xlatu12 & 31u));
      u_xlati57 = bitcast<i32>((u_xlatu12 & bitcast<u32>(u_xlati28.x)));
      u_xlati12.x = (bitcast<i32>(u_xlatu59) + 32i);
      u_xlatu59 = (bitcast<u32>(u_xlati12.x) & 4294967264u);
    }
    u_xlatu58 = u_xlatu59;
    u_xlatb56 = (u_xlati57 != 0i);
    u_xlatb12.x = (u_xlat18 < 0.99000000953674316406f);
    u_xlatb56 = (u_xlatb56 & u_xlatb12.x);
    if (!(u_xlatb56)) {
      break;
    }
    u_xlati56 = (0i - u_xlati57);
    u_xlatu56 = (bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati57));
    u_xlat56 = f32(u_xlatu56);
    u_xlatu56 = (bitcast<u32>(u_xlat56) >> 23u);
    u_xlati56 = (bitcast<i32>(u_xlatu56) + -127i);
    u_xlati12.x = (1i << bitcast<u32>((u_xlati56 & 31i)));
    u_xlati42 = bitcast<i32>((bitcast<u32>(u_xlati57) ^ bitcast<u32>(u_xlati12.x)));
    u_xlati12.x = (bitcast<i32>(u_xlatu58) + -32i);
    u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.x) & 65504u));
    u_xlati56 = (u_xlati56 + u_xlati12.x);
    u_xlati56 = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati56);
    u_xlat12 = vec4f(((vs_TEXCOORD0 + -(x_1135.urp_ReflProbes_BoxMin[u_xlati56].xyz))).xyz, u_xlat12.w);
    u_xlat13 = (-(vs_TEXCOORD0) + x_1135.urp_ReflProbes_BoxMax[u_xlati56].xyz);
    u_xlat12 = vec4f(min(u_xlat12.xyz, u_xlat13).xyz, u_xlat12.w);
    u_xlat12 = vec4f(((u_xlat12.xyz / x_1135.urp_ReflProbes_BoxMax[u_xlati56].www)).xyz, u_xlat12.w);
    u_xlat28.x = min(u_xlat12.z, u_xlat12.y);
    u_xlat12.x = min(u_xlat28.x, u_xlat12.x);
    u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
    u_xlat28.x = (-(u_xlat18) + 1.0f);
    u_xlat12.x = min(u_xlat28.x, u_xlat12.x);
    u_xlatb28 = (0.0f < x_1135.urp_ReflProbes_ProbePosition[u_xlati56].w);
    if (u_xlatb8.x) {
      x_1200 = x_1135.urp_ReflProbes_BoxMax[u_xlati56].x;
    } else {
      x_1200 = x_1135.urp_ReflProbes_BoxMin[u_xlati56].x;
    }
    u_xlat13.x = x_1200;
    if (u_xlatb8.y) {
      x_1214 = x_1135.urp_ReflProbes_BoxMax[u_xlati56].y;
    } else {
      x_1214 = x_1135.urp_ReflProbes_BoxMin[u_xlati56].y;
    }
    u_xlat13.y = x_1214;
    if (u_xlatb8.z) {
      x_1228 = x_1135.urp_ReflProbes_BoxMax[u_xlati56].z;
    } else {
      x_1228 = x_1135.urp_ReflProbes_BoxMin[u_xlati56].z;
    }
    u_xlat13.z = x_1228;
    u_xlat13 = (u_xlat13 + -(vs_TEXCOORD0));
    u_xlat13 = (u_xlat13 / u_xlat9);
    u_xlat44 = min(u_xlat13.y, u_xlat13.x);
    u_xlat44 = min(u_xlat13.z, u_xlat44);
    u_xlat13 = (vs_TEXCOORD0 + -(x_1135.urp_ReflProbes_ProbePosition[u_xlati56].xyz));
    u_xlat13 = ((u_xlat9 * vec3f(u_xlat44)) + u_xlat13);
    if (u_xlatb28) {
      x_1271 = u_xlat13;
    } else {
      x_1271 = u_xlat9;
    }
    u_xlat28 = x_1271;
    u_xlatu13.x = u32(abs(x_1135.urp_ReflProbes_ProbePosition[u_xlati56].w));
    u_xlatu13.x = (u_xlatu13.x + 4294967295u);
    u_xlat13.x = f32(u_xlatu13.x);
    u_xlat13.x = min(u_xlat48, u_xlat13.x);
    u_xlat29.x = dot(abs(u_xlat28), vec3f(1.0f));
    u_xlat29.x = max(u_xlat29.x, 0.00000099999999747524f);
    u_xlat29.x = (1.0f / u_xlat29.x);
    u_xlat14 = (u_xlat28.zxy * u_xlat29.xxx);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb45 = ((u_xlat14.yzyz >= vec4f())).xy;
    if (u_xlatb45.x) {
      x_1336 = u_xlat14.x;
    } else {
      x_1336 = -(u_xlat14.x);
    }
    u_xlat45.x = x_1336;
    if (u_xlatb45.y) {
      x_1349 = u_xlat14.x;
    } else {
      x_1349 = -(u_xlat14.x);
    }
    u_xlat45.y = x_1349;
    u_xlat28 = vec3f((((u_xlat28.xy * u_xlat29.xx) + u_xlat45)).xy, u_xlat28.z);
    u_xlat28 = vec3f((((u_xlat28.xy * x_1372) + x_1372)).xy, u_xlat28.z);
    u_xlat28 = vec3f(clamp(u_xlat28.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat28.z);
    u_xlat60 = floor(u_xlat13.x);
    u_xlat29.x = (u_xlat60 + 1.0f);
    u_xlat13.x = (-(u_xlat60) + u_xlat13.x);
    u_xlatu60 = u32(u_xlat60);
    u_xlati60 = ((u_xlati56 * 7i) + bitcast<i32>(u_xlatu60));
    u_xlatu29 = u32(u_xlat29.x);
    u_xlati56 = ((u_xlati56 * 7i) + bitcast<i32>(u_xlatu29));
    u_xlat29 = vec3f((((u_xlat28.xy * x_1135.urp_ReflProbes_MipScaleOffset[u_xlati60].xy) + x_1135.urp_ReflProbes_MipScaleOffset[u_xlati60].zw)).xy, u_xlat29.z);
    u_xlat29 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat29.xy, 0.0f).xyz;
    u_xlat28 = vec3f((((u_xlat28.xy * x_1135.urp_ReflProbes_MipScaleOffset[u_xlati56].xy) + x_1135.urp_ReflProbes_MipScaleOffset[u_xlati56].zw)).xy, u_xlat28.z);
    u_xlat28 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat28.xy, 0.0f).xyz;
    u_xlat28 = (-(u_xlat29) + u_xlat28);
    u_xlat28 = ((u_xlat13.xxx * u_xlat28) + u_xlat29);
    u_xlat11 = ((u_xlat12.xxx * u_xlat28) + u_xlat11);
    u_xlat18 = (u_xlat18 + u_xlat12.x);
  }
  u_xlatb1 = (u_xlat18 < 0.99000000953674316406f);
  if (u_xlatb1) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9, u_xlat48);
    u_xlat48 = (-(u_xlat18) + 1.0f);
    u_xlat1.x = (u_xlat8.w + -1.0f);
    u_xlat1.x = ((x_98.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_98.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_98.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat1.xxx)).xyz, u_xlat8.w);
    u_xlat11 = ((vec3f(u_xlat48) * u_xlat8.xyz) + u_xlat11);
  }
  u_xlat8 = vec4f((((vec2f(u_xlat53) * vec2f(u_xlat53)) + vec2f(-1.0f, 1.0f))).xy, u_xlat8.zw);
  u_xlat48 = (1.0f / u_xlat8.y);
  u_xlat1.x = (u_xlat23 + -0.03999999910593032837f);
  u_xlat1.x = ((u_xlat51 * u_xlat1.x) + 0.03999999910593032837f);
  u_xlat48 = (u_xlat48 * u_xlat1.x);
  u_xlat24 = (vec3f(u_xlat48) * u_xlat11);
  u_xlat6 = ((u_xlat6 * u_xlat4.xzw) + u_xlat24);
  u_xlati48 = bitcast<i32>((x_98.x_MainLightLayerMask & bitcast<u32>(x_256.unity_RenderingLayer.x)));
  u_xlat1.x = dot(u_xlat0.xyz, x_98.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat5.x);
  u_xlat24 = (u_xlat1.xxx * x_98.x_MainLightColor.xyz);
  u_xlat1 = vec4f((((u_xlat17 * vec3f(u_xlat50)) + x_98.x_MainLightPosition.xyz)).xyz, u_xlat1.w);
  u_xlat49 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat49 = max(u_xlat49, 1.17549435e-38f);
  u_xlat49 = inverseSqrt(u_xlat49);
  u_xlat1 = vec4f(((vec3f(u_xlat49) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.w = dot(u_xlat0.xyz, u_xlat1.xyz);
  u_xlat1.w = clamp(u_xlat1.w, 0.0f, 1.0f);
  u_xlat1.x = dot(x_98.x_MainLightPosition.xyz, u_xlat1.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xw * u_xlat1.xw)).xy, u_xlat1.zw);
  u_xlat17.x = ((u_xlat1.y * u_xlat8.x) + 1.00001001358032226562f);
  u_xlat17.x = (u_xlat17.x * u_xlat17.x);
  u_xlat1.x = max(u_xlat1.x, 0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * u_xlat17.x);
  u_xlat1.x = (u_xlat55 * u_xlat1.x);
  u_xlat1.x = (u_xlat54 / u_xlat1.x);
  u_xlat1 = vec4f((((u_xlat1.xxx * x_1713) + u_xlat4.xzw)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat24 * u_xlat1.xyz)).xyz, u_xlat1.w);
  if ((u_xlati48 != 0i)) {
    x_1728 = u_xlat1.xyz;
  } else {
    x_1728 = vec3f();
  }
  u_xlat1 = vec4f(x_1728.xyz, u_xlat1.w);
  u_xlatu48 = min(u_xlatu7.z, 32u);
  u_xlat49 = ((u_xlat21 * x_209.x_AdditionalShadowFadeParams.x) + x_209.x_AdditionalShadowFadeParams.y);
  u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu48)) {
    } else {
      break;
    }
    u_xlat24 = ((-(vs_TEXCOORD0) * x_1774.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_1774.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat50 = dot(u_xlat24, u_xlat24);
    u_xlat50 = max(u_xlat50, 0.00006103515625f);
    u_xlat51 = inverseSqrt(u_xlat50);
    u_xlat9 = (vec3f(u_xlat51) * u_xlat24);
    u_xlat7.x = (1.0f / u_xlat50);
    u_xlat50 = (u_xlat50 * x_1774.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat50 = ((-(u_xlat50) * u_xlat50) + 1.0f);
    u_xlat50 = max(u_xlat50, 0.0f);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat50 = (u_xlat50 * u_xlat7.x);
    u_xlat7.x = dot(x_1774.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9);
    u_xlat7.x = ((u_xlat7.x * x_1774.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_1774.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat50 = (u_xlat50 * u_xlat7.x);
    u_xlatb7 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati23 = i32(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati7.x = select(u_xlati23, -1i, u_xlatb7);
    u_xlatb23 = (u_xlati7.x >= 0i);
    if (u_xlatb23) {
      u_xlatb23 = any(!((vec4f() == vec4f(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb23) {
        u_xlatb10 = vec4<bool>(((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz.xyz, u_xlatb10.w);
        u_xlatb23 = (u_xlatb10.y & u_xlatb10.x);
        let x_1909 = ((-(u_xlat9.zyzx) < vec4f())).xyw;
        u_xlatb10 = vec4<bool>(x_1909.xy, u_xlatb10.z, x_1909.z);
        u_xlat10.x = select(4.0f, 5.0f, u_xlatb10.x);
        u_xlat10.y = select(2.0f, 3.0f, u_xlatb10.y);
        u_xlat57 = select(0.0f, 1.0f, u_xlatb10.w);
        if (u_xlatb10.z) {
          x_1929 = u_xlat10.y;
        } else {
          x_1929 = u_xlat57;
        }
        u_xlat57 = x_1929;
        if (u_xlatb23) {
          x_1938 = u_xlat10.x;
        } else {
          x_1938 = u_xlat57;
        }
        u_xlat23 = x_1938;
        u_xlati23 = i32(u_xlat23);
        u_xlati7.x = (u_xlati23 + u_xlati7.x);
      }
      u_xlati7.x = (u_xlati7.x << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 1i)]);
      u_xlat10 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati7.x] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      let x_2001 = u_xlat10.xy;
      txVec1 = vec3f(x_2001.x, x_2001.y, u_xlat10.z);
      u_xlat7.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat23 = (1.0f + -(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat7.x = ((u_xlat7.x * x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat23);
      u_xlatb23 = (0.0f >= u_xlat10.z);
      u_xlatb57 = (u_xlat10.z >= 1.0f);
      u_xlatb23 = (u_xlatb23 | u_xlatb57);
      if (u_xlatb23) {
        x_2042 = 1.0f;
      } else {
        x_2042 = u_xlat7.x;
      }
      u_xlat7.x = x_2042;
    } else {
      u_xlat7.x = 1.0f;
    }
    u_xlat23 = (-(u_xlat7.x) + 1.0f);
    u_xlat7.x = ((u_xlat49 * u_xlat23) + u_xlat7.x);
    u_xlati23 = bitcast<i32>((bitcast<u32>(x_256.unity_RenderingLayer.x) & bitcast<u32>(x_1774.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat50 = (u_xlat50 * u_xlat7.x);
    u_xlat7.x = dot(u_xlat0.xyz, u_xlat9);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat50 = (u_xlat50 * u_xlat7.x);
    u_xlat10 = vec4f(((vec3f(u_xlat50) * x_1774.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlat24 = ((u_xlat24 * vec3f(u_xlat51)) + u_xlat3);
    u_xlat50 = dot(u_xlat24, u_xlat24);
    u_xlat50 = max(u_xlat50, 1.17549435e-38f);
    u_xlat50 = inverseSqrt(u_xlat50);
    u_xlat24 = (vec3f(u_xlat50) * u_xlat24);
    u_xlat50 = dot(u_xlat0.xyz, u_xlat24);
    u_xlat50 = clamp(u_xlat50, 0.0f, 1.0f);
    u_xlat51 = dot(u_xlat9, u_xlat24);
    u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat50 = ((u_xlat50 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat51 = max(u_xlat51, 0.10000000149011611938f);
    u_xlat50 = (u_xlat50 * u_xlat51);
    u_xlat50 = (u_xlat55 * u_xlat50);
    u_xlat50 = (u_xlat54 / u_xlat50);
    u_xlat24 = ((vec3f(u_xlat50) * x_1713) + u_xlat4.xzw);
    u_xlat24 = ((u_xlat24 * u_xlat10.xyz) + u_xlat5.xyw);
    if ((u_xlati23 != 0i)) {
      x_2168 = u_xlat24;
    } else {
      x_2168 = u_xlat5.xyw;
    }
    u_xlat5 = vec4f(x_2168.xy, u_xlat5.z, x_2168.z);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu48 = (u_xlatu2 >> 2u);
  param_21 = bitcast<i32>(u_xlatu2);
  param_22 = 0i;
  param_23 = 1i;
  let x_2188 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu2);
  param_25 = 1i;
  param_26 = 1i;
  let x_2194 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati2 = vec4i(vec2i(x_2188, x_2194).xy, u_xlati2.zw);
  u_xlati7 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_693.urp_ZBins[bitcast<i32>(u_xlatu48)].wy))).xy, u_xlati7.z);
  let x_2213 = ~(u_xlati2.xy);
  u_xlati2 = vec4i(x_2213.x, u_xlati2.yz, x_2213.y);
  u_xlati24 = bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_693.urp_ZBins[bitcast<i32>(u_xlatu48)].zx)));
  u_xlati7 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xy) | bitcast<vec2u>(u_xlati24))).xy, u_xlati7.z);
  u_xlati48 = bitcast<i32>((bitcast<u32>(u_xlati2.y) & bitcast<u32>(u_xlati7.x)));
  u_xlati2.x = bitcast<i32>((bitcast<u32>(u_xlati2.w) & bitcast<u32>(u_xlati7.y)));
  u_xlatu48 = (bitcast<u32>(u_xlati48) | bitcast<u32>(u_xlati2.x));
  u_xlatu9.x = u_xlatu37;
  u_xlatu9.y = u_xlatu18.y;
  u_xlatu41.x = 0u;
  u_xlatu41.y = u_xlatu48;
  let x_2271 = u_xlat5.xyw;
  u_xlat2 = vec4f(x_2271.xy, u_xlat2.z, x_2271.z);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu51 = (u_xlatu41.y >> 16u);
    u_xlatu7 = vec3u(u_xlatu41.xy, u_xlatu7.z);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb24 = (bitcast<i32>(u_xlatu7.x) == 0i);
      u_xlatu40.x = (u_xlatu7.y & 65535u);
      u_xlatb40 = (u_xlatu51 >= u_xlatu40.x);
      u_xlatb24 = (u_xlatb40 & u_xlatb24);
      if (!(u_xlatb24)) {
        break;
      }
      param_27 = u_xlatu7.y;
      param_28 = 5i;
      param_29 = 11i;
      let x_2320 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu24 = x_2320;
      u_xlatu10 = (vec4u(u_xlatu24) + u_xlatu9.xxyy);
      u_xlatu40 = (u_xlatu10.yw >> x_837);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_2335 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_2342 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_2349 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_2356 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_2335, x_2342, x_2349, x_2356);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_876.urp_Tiles[bitcast<i32>(u_xlatu40.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati43 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_876.urp_Tiles[bitcast<i32>(u_xlatu40.x)].zx)));
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati43) | bitcast<vec2u>(u_xlati11)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.y)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati40.x) | bitcast<u32>(u_xlati10.x)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_693.urp_ZBins[bitcast<i32>(u_xlatu40.y)].wy))).xy, u_xlati10.zw);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_693.urp_ZBins[bitcast<i32>(u_xlatu40.y)].zx)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xy) | bitcast<vec2u>(u_xlati11))).xy, u_xlati10.zw);
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati10.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati10.y)));
      u_xlati56 = bitcast<i32>((bitcast<u32>(u_xlati56) | bitcast<u32>(u_xlati10.x)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati40.x)));
      u_xlati56 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu7.y) & 31i)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati56) & bitcast<u32>(u_xlati40.x)));
      u_xlati24.x = (bitcast<i32>(u_xlatu24) << bitcast<u32>(5i));
      u_xlatu24 = (u_xlatu51 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati24.x)))));
      u_xlatu24 = min(u_xlatu24, 31u);
      u_xlatu24 = (bitcast<u32>(-(bitcast<i32>(u_xlatu24))) + 31u);
      u_xlatu24 = (4294967295u >> (u_xlatu24 & 31u));
      u_xlatu7.x = (u_xlatu24 & bitcast<u32>(u_xlati40.x));
      u_xlati24.x = (bitcast<i32>(u_xlatu7.y) + 32i);
      u_xlatu7.y = (bitcast<u32>(u_xlati24.x) & 4294967264u);
    }
    u_xlatu41.y = u_xlatu7.y;
    if ((u_xlatu7.x == 0u)) {
      break;
    }
    u_xlati51 = (0i - bitcast<i32>(u_xlatu7.x));
    u_xlatu51 = (bitcast<u32>(u_xlati51) & u_xlatu7.x);
    u_xlat51 = f32(u_xlatu51);
    u_xlatu51 = (bitcast<u32>(u_xlat51) >> 23u);
    u_xlati51 = (bitcast<i32>(u_xlatu51) + -127i);
    u_xlati24.x = (1i << bitcast<u32>((u_xlati51 & 31i)));
    u_xlatu41.x = (u_xlatu7.x ^ bitcast<u32>(u_xlati24.x));
    u_xlati24.x = (bitcast<i32>(u_xlatu41.y) + -32i);
    u_xlati24.x = bitcast<i32>((bitcast<u32>(u_xlati24.x) & 65504u));
    u_xlati51 = (u_xlati51 + u_xlati24.x);
    u_xlati51 = (bitcast<i32>(u_xlatu7.z) + u_xlati51);
    u_xlat24 = ((-(vs_TEXCOORD0) * x_1774.x_AdditionalLightsPosition[u_xlati51].www) + x_1774.x_AdditionalLightsPosition[u_xlati51].xyz);
    u_xlat10.x = dot(u_xlat24, u_xlat24);
    u_xlat10.x = max(u_xlat10.x, 0.00006103515625f);
    u_xlat26 = inverseSqrt(u_xlat10.x);
    u_xlat11 = (u_xlat24 * vec3f(u_xlat26));
    u_xlat42 = (1.0f / u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * x_1774.x_AdditionalLightsAttenuation[u_xlati51].x);
    u_xlat10.x = ((-(u_xlat10.x) * u_xlat10.x) + 1.0f);
    u_xlat10.x = max(u_xlat10.x, 0.0f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * u_xlat42);
    u_xlat42 = dot(x_1774.x_AdditionalLightsSpotDir[u_xlati51].xyz, u_xlat11);
    u_xlat42 = ((u_xlat42 * x_1774.x_AdditionalLightsAttenuation[u_xlati51].z) + x_1774.x_AdditionalLightsAttenuation[u_xlati51].w);
    u_xlat42 = clamp(u_xlat42, 0.0f, 1.0f);
    u_xlat42 = (u_xlat42 * u_xlat42);
    u_xlat10.x = (u_xlat42 * u_xlat10.x);
    u_xlatb42 = (u_xlati51 < 0i);
    u_xlati58 = i32(x_209.x_AdditionalShadowParams[u_xlati51].w);
    u_xlati42 = select(u_xlati58, -1i, u_xlatb42);
    u_xlatb58 = (u_xlati42 >= 0i);
    if (u_xlatb58) {
      u_xlatb58 = any(!((vec4f() == vec4f(x_209.x_AdditionalShadowParams[u_xlati51].z))));
      if (u_xlatb58) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb58 = (u_xlatb12.y & u_xlatb12.x);
        let x_2723 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_2723.xy, u_xlatb12.z, x_2723.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat59 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_2740 = u_xlat12.y;
        } else {
          x_2740 = u_xlat59;
        }
        u_xlat59 = x_2740;
        if (u_xlatb58) {
          x_2750 = u_xlat12.x;
        } else {
          x_2750 = u_xlat59;
        }
        u_xlat58 = x_2750;
        u_xlati58 = i32(u_xlat58);
        u_xlati42 = (u_xlati58 + u_xlati42);
      }
      u_xlati42 = (u_xlati42 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati42 + 1i)]);
      u_xlat12 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati42] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati42 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati42 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      let x_2804 = u_xlat12.xy;
      txVec2 = vec3f(x_2804.x, x_2804.y, u_xlat12.z);
      u_xlat42 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat58 = (1.0f + -(x_209.x_AdditionalShadowParams[u_xlati51].x));
      u_xlat42 = ((u_xlat42 * x_209.x_AdditionalShadowParams[u_xlati51].x) + u_xlat58);
      u_xlatb58 = (0.0f >= u_xlat12.z);
      u_xlatb59 = (u_xlat12.z >= 1.0f);
      u_xlatb58 = (u_xlatb58 | u_xlatb59);
      u_xlat42 = select(u_xlat42, 1.0f, u_xlatb58);
    } else {
      u_xlat42 = 1.0f;
    }
    u_xlat58 = (-(u_xlat42) + 1.0f);
    u_xlat42 = ((u_xlat49 * u_xlat58) + u_xlat42);
    u_xlati58 = bitcast<i32>((bitcast<u32>(x_256.unity_RenderingLayer.x) & bitcast<u32>(x_1774.x_AdditionalLightsLayerMasks[u_xlati51].el)));
    u_xlat10.x = (u_xlat42 * u_xlat10.x);
    u_xlat42 = dot(u_xlat0.xyz, u_xlat11);
    u_xlat42 = clamp(u_xlat42, 0.0f, 1.0f);
    u_xlat10.x = (u_xlat42 * u_xlat10.x);
    u_xlat12 = vec4f(((u_xlat10.xxx * x_1774.x_AdditionalLightsColor[u_xlati51].xyz)).xyz, u_xlat12.w);
    u_xlat24 = ((u_xlat24 * vec3f(u_xlat26)) + u_xlat3);
    u_xlat51 = dot(u_xlat24, u_xlat24);
    u_xlat51 = max(u_xlat51, 1.17549435e-38f);
    u_xlat51 = inverseSqrt(u_xlat51);
    u_xlat24 = (vec3f(u_xlat51) * u_xlat24);
    u_xlat51 = dot(u_xlat0.xyz, u_xlat24);
    u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
    u_xlat24.x = dot(u_xlat11, u_xlat24);
    u_xlat24.x = clamp(u_xlat24.x, 0.0f, 1.0f);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat51 = ((u_xlat51 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat24.x = (u_xlat24.x * u_xlat24.x);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat24.x = max(u_xlat24.x, 0.10000000149011611938f);
    u_xlat51 = (u_xlat51 * u_xlat24.x);
    u_xlat51 = (u_xlat55 * u_xlat51);
    u_xlat51 = (u_xlat54 / u_xlat51);
    u_xlat24 = ((vec3f(u_xlat51) * x_1713) + u_xlat4.xzw);
    u_xlat24 = ((u_xlat24 * u_xlat12.xyz) + u_xlat2.xyw);
    if ((u_xlati58 != 0i)) {
      x_2961 = u_xlat24;
    } else {
      x_2961 = u_xlat2.xyw;
    }
    u_xlat2 = vec4f(x_2961.xy, u_xlat2.z, x_2961.z);
  }
  u_xlat0 = vec4f(((u_xlat1.xyz + u_xlat6)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat2.xyw + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat20;
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

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
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
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
diagnostic(off, derivative_uniformity);

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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_AlphaCenter : f32,
  /* @offset(20) */
  x_AlphaEdge : f32,
  /* @offset(24) */
  x_FresnelPower : f32,
  /* @offset(28) */
  x_EdgeDarken : f32,
  /* @offset(32) */
  x_Smoothness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_Absorb : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_Transmit : f32,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(0) var<uniform> x_99 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_174 : UnityPerMaterial;

@group(1) @binding(7) var<uniform> x_209 : LightShadows;

@group(1) @binding(5) var<uniform> x_256 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(8) var<uniform> x_514 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_824 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_1005 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_1253 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(7) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_1922 : AdditionalLights;

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

const x_564 = vec2f(0.5f);

const x_964 = vec2u(2u);

const x_1416 = vec3f(1.0f);

const x_1842 = vec3f(0.03999999910593032837f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat18 : vec3f;
  var u_xlat2 : vec3f;
  var x_133 : vec3f;
  var u_xlat53 : f32;
  var u_xlat3 : vec3f;
  var u_xlat54 : f32;
  var u_xlat4 : vec4f;
  var u_xlat21 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat51 : f32;
  var u_xlat38 : vec2f;
  var u_xlat56 : f32;
  var u_xlat57 : f32;
  var u_xlat24 : f32;
  var u_xlat58 : f32;
  var txVec0 : vec3f;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlatb39 : bool;
  var x_466 : f32;
  var u_xlat39 : f32;
  var u_xlat59 : f32;
  var u_xlat9 : vec4f;
  var u_xlatb10 : vec3<bool>;
  var x_608 : f32;
  var x_619 : vec3f;
  var u_xlat10 : vec4f;
  var u_xlatu7 : vec3u;
  var u_xlatu11 : vec2u;
  var u_xlati39 : i32;
  var u_xlatu39 : u32;
  var u_xlat19 : f32;
  var u_xlat1 : vec4f;
  var x_740 : f32;
  var u_xlatu1 : u32;
  var u_xlatu2 : u32;
  var u_xlati19 : i32;
  var u_xlatu19 : vec2u;
  var u_xlati7 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati42 : vec2i;
  var u_xlati11 : vec3i;
  var u_xlati1 : i32;
  var u_xlatb8 : vec3<bool>;
  var u_xlati45 : vec2i;
  var u_xlatu62 : u32;
  var u_xlat12 : vec4f;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var u_xlatu61 : u32;
  var u_xlatb63 : bool;
  var u_xlatu13 : vec4u;
  var u_xlatb13 : vec3<bool>;
  var u_xlatu63 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
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
  var u_xlati30 : vec2i;
  var u_xlati47 : i32;
  var u_xlati63 : i32;
  var u_xlatb59 : bool;
  var u_xlati59 : i32;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec3f;
  var u_xlat63 : f32;
  var u_xlat30 : vec3f;
  var x_1313 : f32;
  var x_1327 : f32;
  var x_1341 : f32;
  var x_1389 : vec3f;
  var u_xlatu64 : u32;
  var u_xlat64 : f32;
  var u_xlat31 : vec3f;
  var u_xlatb48 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_1452 : f32;
  var x_1465 : f32;
  var u_xlat47 : vec2f;
  var u_xlatu47 : u32;
  var u_xlat25 : vec3f;
  var u_xlati51 : i32;
  var u_xlat52 : f32;
  var x_1857 : vec3f;
  var u_xlatu51 : u32;
  var u_xlatb19 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlat60 : f32;
  var u_xlatb60 : bool;
  var u_xlati10 : vec4i;
  var x_2030 : i32;
  var u_xlatb11 : vec3<bool>;
  var u_xlat27 : vec3f;
  var u_xlat11 : vec4f;
  var u_xlat44 : f32;
  var x_2095 : f32;
  var x_2106 : f32;
  var txVec1 : vec3f;
  var u_xlatb27 : bool;
  var u_xlati27 : vec2i;
  var u_xlati44 : i32;
  var u_xlatb45 : vec2<bool>;
  var u_xlat45 : vec2f;
  var x_2520 : f32;
  var x_2533 : f32;
  var u_xlat61 : f32;
  var x_2592 : f32;
  var x_2603 : vec3f;
  var u_xlati61 : i32;
  var x_2756 : vec3f;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati25 : vec2i;
  var u_xlati9 : vec3i;
  var u_xlati2 : i32;
  var u_xlatu9 : vec2u;
  var u_xlati43 : i32;
  var u_xlatu60 : u32;
  var u_xlati54 : i32;
  var u_xlatb24 : bool;
  var u_xlatu10 : vec4u;
  var u_xlatu24 : u32;
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
  var u_xlati12 : vec4i;
  var u_xlati24 : i32;
  var u_xlat62 : f32;
  var u_xlatb62 : bool;
  var u_xlati62 : i32;
  var x_3249 : i32;
  var u_xlatb12 : vec3<bool>;
  var u_xlat29 : vec3f;
  var u_xlat46 : f32;
  var x_3310 : f32;
  var x_3321 : f32;
  var txVec2 : vec3f;
  var u_xlatb29 : bool;
  var u_xlati29 : i32;
  var u_xlati46 : i32;
  var u_xlatb47 : vec2<bool>;
  var x_3719 : f32;
  var x_3732 : f32;
  var x_3787 : f32;
  var x_3798 : vec3f;
  var x_3943 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, u_xlat0.w);
  u_xlatb1 = (x_99.unity_OrthoParams.w == 0.0f);
  u_xlat18 = (-(vs_TEXCOORD0) + x_99.x_WorldSpaceCameraPos);
  u_xlat2.x = x_99.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat2.y = x_99.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat2.z = x_99.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb1) {
    x_133 = u_xlat18;
  } else {
    x_133 = u_xlat2;
  }
  u_xlat18 = x_133;
  u_xlat53 = dot(u_xlat18, u_xlat18);
  u_xlat53 = inverseSqrt(u_xlat53);
  u_xlat3 = (u_xlat18 * vec3f(u_xlat53));
  u_xlat54 = dot(u_xlat0.xyz, u_xlat3);
  u_xlat4.x = min(abs(u_xlat54), 1.0f);
  u_xlat4.x = (-(u_xlat4.x) + 1.0f);
  u_xlat4.x = log2(u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * x_174.x_FresnelPower);
  u_xlat4.x = exp2(u_xlat4.x);
  u_xlat21 = (-(x_174.x_AlphaCenter) + x_174.x_AlphaEdge);
  u_xlat21 = ((u_xlat4.x * u_xlat21) + x_174.x_AlphaCenter);
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_209.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_209.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_209.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_209.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat5.w);
  u_xlat0.w = 1.0f;
  u_xlat6.x = dot(x_256.unity_SHAr, u_xlat0);
  u_xlat6.y = dot(x_256.unity_SHAg, u_xlat0);
  u_xlat6.z = dot(x_256.unity_SHAb, u_xlat0);
  u_xlat7 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat8.x = dot(x_256.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_256.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_256.unity_SHBb, u_xlat7);
  u_xlat51 = (u_xlat0.y * u_xlat0.y);
  u_xlat51 = ((u_xlat0.x * u_xlat0.x) + -(u_xlat51));
  u_xlat7 = vec4f((((x_256.unity_SHC.xyz * vec3f(u_xlat51)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = (u_xlat6 + u_xlat7.xyz);
  let x_335 = x_99.x_ScaledScreenParams.xy;
  u_xlat38 = (vec2f(1.0f) / vec2f(x_335.x, x_335.y));
  u_xlat7 = vec4f(((u_xlat38 * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat51 = ((u_xlat7.y * x_99.x_ScaleBiasRt.x) + x_99.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat51) + 1.0f);
  u_xlat51 = ((-(x_174.x_EdgeDarken) * u_xlat4.x) + 1.0f);
  let x_372 = (vec3f(u_xlat51) * x_174.x_BaseColor.xyz);
  u_xlat4 = vec4f(x_372.x, u_xlat4.y, x_372.yz);
  let x_379 = (vec3f(u_xlat21) * u_xlat4.xzw);
  u_xlat4 = vec4f(x_379.x, u_xlat4.y, x_379.yz);
  u_xlat51 = (-(x_174.x_Smoothness) + 1.0f);
  u_xlat56 = (u_xlat51 * u_xlat51);
  u_xlat56 = max(u_xlat56, 0.0078125f);
  u_xlat57 = (u_xlat56 * u_xlat56);
  u_xlat24 = (x_174.x_Smoothness + 0.04000002145767211914f);
  u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
  u_xlat58 = ((u_xlat56 * 4.0f) + 2.0f);
  let x_415 = (u_xlat4.xzw * vec3f(0.95999997854232788086f));
  u_xlat4 = vec4f(x_415.x, u_xlat4.y, x_415.yz);
  let x_420 = u_xlat5.xy;
  txVec0 = vec3f(x_420.x, x_420.y, u_xlat5.z);
  u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat22 = (-(x_209.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat5.x * x_209.x_MainLightShadowParams.x) + u_xlat22);
  u_xlatb22 = (0.0f >= u_xlat5.z);
  u_xlatb39 = (u_xlat5.z >= 1.0f);
  u_xlatb22 = (u_xlatb39 | u_xlatb22);
  if (u_xlatb22) {
    x_466 = 1.0f;
  } else {
    x_466 = u_xlat5.x;
  }
  u_xlat5.x = x_466;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_99.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat22 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat39 = ((u_xlat22 * x_209.x_MainLightShadowParams.z) + x_209.x_MainLightShadowParams.w);
  u_xlat39 = clamp(u_xlat39, 0.0f, 1.0f);
  u_xlat59 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat39 * u_xlat59) + u_xlat5.x);
  u_xlatb39 = !((x_514.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb39) {
    u_xlat9 = vec4f(((vs_TEXCOORD0.yy * x_514.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((x_514.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD0.xx) + u_xlat9.xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((x_514.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD0.zz) + u_xlat9.xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f(((u_xlat9.xy + x_514.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((u_xlat9.xy * x_564) + x_564)).xy, u_xlat9.zw);
    let x_577 = u_xlat9;
    let x_580 = x_99.x_GlobalMipBias.x;
    let x_581 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_577.xy, x_580);
    u_xlat9 = x_581;
    let x_593 = vec4f(x_514.x_MainLightCookieTextureFormat, x_514.x_MainLightCookieTextureFormat, x_514.x_MainLightCookieTextureFormat, x_514.x_MainLightCookieTextureFormat);
    u_xlatb10 = vec3<bool>(((vec4f(x_593.x, x_593.y, x_593.z, x_593.w) == vec4f(0.0f, 1.0f, 0.0f, 0.0f))).xy.xy, u_xlatb10.z);
    if (u_xlatb10.y) {
      x_608 = u_xlat9.w;
    } else {
      x_608 = u_xlat9.x;
    }
    u_xlat39 = x_608;
    if (u_xlatb10.x) {
      x_619 = u_xlat9.xyz;
    } else {
      x_619 = vec3f(u_xlat39);
    }
    u_xlat9 = vec4f(x_619.xyz, u_xlat9.w);
  } else {
    u_xlat9.x = 1.0f;
    u_xlat9.y = 1.0f;
    u_xlat9.z = 1.0f;
  }
  u_xlat9 = vec4f(((u_xlat9.xyz * x_99.x_MainLightColor.xyz)).xyz, u_xlat9.w);
  u_xlat39 = dot(-(u_xlat3), u_xlat0.xyz);
  u_xlat39 = (u_xlat39 + u_xlat39);
  u_xlat10 = vec4f((((u_xlat0.xyz * -(vec3f(u_xlat39))) + -(u_xlat3))).xyz, u_xlat10.w);
  u_xlat54 = u_xlat54;
  u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
  u_xlat54 = (-(u_xlat54) + 1.0f);
  u_xlat54 = (u_xlat54 * u_xlat54);
  u_xlat54 = (u_xlat54 * u_xlat54);
  u_xlat39 = ((-(u_xlat51) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat51 = (u_xlat51 * u_xlat39);
  u_xlat51 = (u_xlat51 * 6.0f);
  let x_692 = (u_xlat7.xz * x_99.x_FPParams1.xy);
  u_xlat7 = vec4f(x_692.x, u_xlat7.y, x_692.y, u_xlat7.w);
  let x_701 = vec2u(u_xlat7.xz);
  u_xlatu7 = vec3u(x_701.x, u_xlatu7.y, x_701.y);
  u_xlatu11 = vec2u(x_99.x_FPParams1.zw);
  u_xlati39 = ((bitcast<i32>(u_xlatu7.z) * bitcast<i32>(u_xlatu11.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu39 = (u_xlatu11.y * bitcast<u32>(u_xlati39));
  u_xlat2.x = dot(-(u_xlat2), u_xlat8.xyz);
  u_xlat19 = log2(u_xlat2.x);
  if (u_xlatb1) {
    x_740 = u_xlat19;
  } else {
    x_740 = u_xlat2.x;
  }
  u_xlat1.x = x_740;
  u_xlat1.x = ((u_xlat1.x * x_99.x_FPParams0.x) + x_99.x_FPParams0.y);
  u_xlatu1 = u32(u_xlat1.x);
  u_xlatu2 = u32(x_99.x_FPParams2.x);
  u_xlatu2 = (u_xlatu2 + 4294967295u);
  u_xlati19 = (bitcast<i32>(u_xlatu11.y) + 2i);
  u_xlatu1 = min(u_xlatu1, u_xlatu2);
  u_xlatu2 = (bitcast<u32>(u_xlati19) * u_xlatu1);
  u_xlatu19 = ((vec2u(u_xlatu1) * vec2u(bitcast<u32>(u_xlati19))) + vec2u(1u, 2u));
  u_xlatu1 = (u_xlatu19.x >> 2u);
  param = bitcast<i32>(u_xlatu19.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_803 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu19.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_810 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_812 = vec2i(x_803, x_810);
  u_xlati7 = vec3i(x_812.x, u_xlati7.y, x_812.y);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_824.urp_ZBins[bitcast<i32>(u_xlatu1)].wy)));
  u_xlati42 = ~(u_xlati7.xz);
  u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati42.xx) & bitcast<vec2u>(x_824.urp_ZBins[bitcast<i32>(u_xlatu1)].zx))).xy, u_xlati11.z);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8) | bitcast<vec2u>(u_xlati11.xy)));
  u_xlati1 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati19 = bitcast<i32>((bitcast<u32>(u_xlati42.y) & bitcast<u32>(u_xlati8.y)));
  u_xlatu1 = (bitcast<u32>(u_xlati1) | bitcast<u32>(u_xlati19));
  let x_883 = vec2u(x_99.x_FPParams0.zw);
  u_xlatu7 = vec3u(x_883.x, u_xlatu7.y, x_883.y);
  u_xlatb8 = ((vec4f() < u_xlat10.xyzx)).xyz;
  u_xlatu11.x = u_xlatu39;
  u_xlatu11.y = u_xlatu19.y;
  u_xlati45.x = 0i;
  u_xlatu62 = u_xlatu1;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat19 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu59 = (u_xlatu62 >> 16u);
    u_xlati60 = u_xlati45.x;
    u_xlatu61 = u_xlatu62;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb63 = (u_xlati60 == 0i);
      u_xlatu13.x = (u_xlatu61 & 65535u);
      u_xlatb13.x = (u_xlatu59 >= u_xlatu13.x);
      u_xlatb63 = (u_xlatb63 & u_xlatb13.x);
      if (!(u_xlatb63)) {
        break;
      }
      param_6 = u_xlatu61;
      param_7 = 5i;
      param_8 = 11i;
      let x_955 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu63 = x_955;
      u_xlatu13 = (u_xlatu11.xxyy + vec4u(u_xlatu63));
      u_xlatu14 = (u_xlatu13.yw >> x_964);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_975 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_982 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_989 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_996 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_975, x_982, x_989, x_996);
      u_xlati48 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_1005.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_1005.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_1037 = bitcast<vec2i>((bitcast<vec2u>(u_xlati48) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_1037.x, u_xlati14.y, x_1037.y);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati30.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati30.x) | bitcast<u32>(u_xlati13.x)));
      u_xlati30 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_824.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy)));
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_824.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati30 = bitcast<vec2i>((bitcast<vec2u>(u_xlati30) | bitcast<vec2u>(u_xlati14.xy)));
      u_xlati30.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati30.x)));
      u_xlati47 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati30.y)));
      u_xlati30.x = bitcast<i32>((bitcast<u32>(u_xlati47) | bitcast<u32>(u_xlati30.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati30.x) & bitcast<u32>(u_xlati13.x)));
      u_xlati30.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu61) & 31i)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati30.x) & bitcast<u32>(u_xlati13.x)));
      u_xlati63 = (bitcast<i32>(u_xlatu63) << bitcast<u32>(5i));
      u_xlatu63 = (u_xlatu59 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati63)))));
      u_xlatu63 = min(u_xlatu63, 31u);
      u_xlatu63 = (bitcast<u32>(-(bitcast<i32>(u_xlatu63))) + 31u);
      u_xlatu63 = (4294967295u >> (u_xlatu63 & 31u));
      u_xlati60 = bitcast<i32>((u_xlatu63 & bitcast<u32>(u_xlati13.x)));
      u_xlati63 = (bitcast<i32>(u_xlatu61) + 32i);
      u_xlatu61 = (bitcast<u32>(u_xlati63) & 4294967264u);
    }
    u_xlatu62 = u_xlatu61;
    u_xlatb59 = (u_xlati60 != 0i);
    u_xlatb63 = (u_xlat19 < 0.99000000953674316406f);
    u_xlatb59 = (u_xlatb59 & u_xlatb63);
    if (!(u_xlatb59)) {
      break;
    }
    u_xlati59 = (0i - u_xlati60);
    u_xlatu59 = (bitcast<u32>(u_xlati59) & bitcast<u32>(u_xlati60));
    u_xlat59 = f32(u_xlatu59);
    u_xlatu59 = (bitcast<u32>(u_xlat59) >> 23u);
    u_xlati59 = (bitcast<i32>(u_xlatu59) + -127i);
    u_xlati63 = (1i << bitcast<u32>((u_xlati59 & 31i)));
    u_xlati45.x = bitcast<i32>((bitcast<u32>(u_xlati60) ^ bitcast<u32>(u_xlati63)));
    u_xlati63 = (bitcast<i32>(u_xlatu62) + -32i);
    u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati63) & 65504u));
    u_xlati59 = (u_xlati59 + u_xlati63);
    u_xlati59 = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati59);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_1253.urp_ReflProbes_BoxMin[u_xlati59].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_1253.urp_ReflProbes_BoxMax[u_xlati59].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_1253.urp_ReflProbes_BoxMax[u_xlati59].www)).xyz, u_xlat13.w);
    u_xlat63 = min(u_xlat13.z, u_xlat13.y);
    u_xlat63 = min(u_xlat63, u_xlat13.x);
    u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
    u_xlat13.x = (-(u_xlat19) + 1.0f);
    u_xlat63 = min(u_xlat63, u_xlat13.x);
    u_xlatb13.x = (0.0f < x_1253.urp_ReflProbes_ProbePosition[u_xlati59].w);
    if (u_xlatb8.x) {
      x_1313 = x_1253.urp_ReflProbes_BoxMax[u_xlati59].x;
    } else {
      x_1313 = x_1253.urp_ReflProbes_BoxMin[u_xlati59].x;
    }
    u_xlat30.x = x_1313;
    if (u_xlatb8.y) {
      x_1327 = x_1253.urp_ReflProbes_BoxMax[u_xlati59].y;
    } else {
      x_1327 = x_1253.urp_ReflProbes_BoxMin[u_xlati59].y;
    }
    u_xlat30.y = x_1327;
    if (u_xlatb8.z) {
      x_1341 = x_1253.urp_ReflProbes_BoxMax[u_xlati59].z;
    } else {
      x_1341 = x_1253.urp_ReflProbes_BoxMin[u_xlati59].z;
    }
    u_xlat30.z = x_1341;
    u_xlat30 = (u_xlat30 + -(vs_TEXCOORD0));
    u_xlat30 = (u_xlat30 / u_xlat10.xyz);
    u_xlat30.x = min(u_xlat30.y, u_xlat30.x);
    u_xlat30.x = min(u_xlat30.z, u_xlat30.x);
    u_xlat14 = (vs_TEXCOORD0 + -(x_1253.urp_ReflProbes_ProbePosition[u_xlati59].xyz));
    u_xlat30 = ((u_xlat10.xyz * u_xlat30.xxx) + u_xlat14);
    if (u_xlatb13.x) {
      x_1389 = u_xlat30;
    } else {
      x_1389 = u_xlat10.xyz;
    }
    u_xlat13 = vec4f(x_1389.xyz, u_xlat13.w);
    u_xlatu64 = u32(abs(x_1253.urp_ReflProbes_ProbePosition[u_xlati59].w));
    u_xlatu64 = (u_xlatu64 + 4294967295u);
    u_xlat64 = f32(u_xlatu64);
    u_xlat64 = min(u_xlat51, u_xlat64);
    u_xlat14.x = dot(abs(u_xlat13.xyz), x_1416);
    u_xlat14.x = max(u_xlat14.x, 0.00000099999999747524f);
    u_xlat14.x = (1.0f / u_xlat14.x);
    u_xlat31 = (u_xlat13.zxy * u_xlat14.xxx);
    u_xlat31.x = -(u_xlat31.x);
    u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
    u_xlatb48 = ((u_xlat31.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat31;
    if (u_xlatb48.x) {
      x_1452 = u_xlat31.x;
    } else {
      x_1452 = -(u_xlat31.x);
    }
    hlslcc_movcTemp.x = x_1452;
    if (u_xlatb48.y) {
      x_1465 = u_xlat31.x;
    } else {
      x_1465 = -(u_xlat31.x);
    }
    hlslcc_movcTemp.y = x_1465;
    u_xlat31 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * u_xlat14.xx) + u_xlat31.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_564) + x_564)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat47.x = floor(u_xlat64);
    u_xlat14.x = (u_xlat47.x + 1.0f);
    u_xlat64 = (-(u_xlat47.x) + u_xlat64);
    u_xlatu47 = u32(u_xlat47.x);
    u_xlati47 = ((u_xlati59 * 7i) + bitcast<i32>(u_xlatu47));
    u_xlatu14.x = u32(u_xlat14.x);
    u_xlati59 = ((u_xlati59 * 7i) + bitcast<i32>(u_xlatu14.x));
    u_xlat14 = vec3f((((u_xlat13.xy * x_1253.urp_ReflProbes_MipScaleOffset[u_xlati47].xy) + x_1253.urp_ReflProbes_MipScaleOffset[u_xlati47].zw)).xy, u_xlat14.z);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat14.xy, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_1253.urp_ReflProbes_MipScaleOffset[u_xlati59].xy) + x_1253.urp_ReflProbes_MipScaleOffset[u_xlati59].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat64) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((vec3f(u_xlat63) * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat19 = (u_xlat19 + u_xlat63);
  }
  u_xlatb1 = (u_xlat19 < 0.99000000953674316406f);
  if (u_xlatb1) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xyz, u_xlat51);
    u_xlat51 = (-(u_xlat19) + 1.0f);
    u_xlat1.x = (u_xlat8.w + -1.0f);
    u_xlat1.x = ((x_99.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_99.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_99.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat1.xxx)).xyz, u_xlat8.w);
    u_xlat12 = vec4f((((vec3f(u_xlat51) * u_xlat8.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat8 = vec4f((((vec2f(u_xlat56) * vec2f(u_xlat56)) + vec2f(-1.0f, 1.0f))).xy, u_xlat8.zw);
  u_xlat51 = (1.0f / u_xlat8.y);
  u_xlat1.x = (u_xlat24 + -0.03999999910593032837f);
  u_xlat1.x = ((u_xlat54 * u_xlat1.x) + 0.03999999910593032837f);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat25 = (vec3f(u_xlat51) * u_xlat12.xyz);
  u_xlat6 = ((u_xlat6 * u_xlat4.xzw) + u_xlat25);
  u_xlati51 = bitcast<i32>((x_99.x_MainLightLayerMask & bitcast<u32>(x_256.unity_RenderingLayer.x)));
  u_xlat1.x = dot(u_xlat0.xyz, x_99.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat5.x);
  u_xlat25 = (u_xlat1.xxx * u_xlat9.xyz);
  u_xlat1 = vec4f((((u_xlat18 * vec3f(u_xlat53)) + x_99.x_MainLightPosition.xyz)).xyz, u_xlat1.w);
  u_xlat52 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat52 = max(u_xlat52, 1.17549435e-38f);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat1 = vec4f(((vec3f(u_xlat52) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.w = dot(u_xlat0.xyz, u_xlat1.xyz);
  u_xlat1.w = clamp(u_xlat1.w, 0.0f, 1.0f);
  u_xlat1.x = dot(x_99.x_MainLightPosition.xyz, u_xlat1.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xw * u_xlat1.xw)).xy, u_xlat1.zw);
  u_xlat18.x = ((u_xlat1.y * u_xlat8.x) + 1.00001001358032226562f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat1.x = max(u_xlat1.x, 0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * u_xlat18.x);
  u_xlat1.x = (u_xlat58 * u_xlat1.x);
  u_xlat1.x = (u_xlat57 / u_xlat1.x);
  u_xlat1 = vec4f((((u_xlat1.xxx * x_1842) + u_xlat4.xzw)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat25 * u_xlat1.xyz)).xyz, u_xlat1.w);
  if ((u_xlati51 != 0i)) {
    x_1857 = u_xlat1.xyz;
  } else {
    x_1857 = vec3f();
  }
  u_xlat1 = vec4f(x_1857.xyz, u_xlat1.w);
  u_xlatu51 = min(u_xlatu7.z, 32u);
  u_xlat52 = ((u_xlat22 * x_209.x_AdditionalShadowFadeParams.x) + x_209.x_AdditionalShadowFadeParams.y);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  let x_1889 = vec4f(x_514.x_AdditionalLightsCookieAtlasTextureFormat, x_514.x_AdditionalLightsCookieAtlasTextureFormat, x_514.x_AdditionalLightsCookieAtlasTextureFormat, x_514.x_AdditionalLightsCookieAtlasTextureFormat);
  let x_1897 = ((vec4f(x_1889.x, x_1889.y, x_1889.z, x_1889.w) == vec4f(0.0f, 0.0f, 1.0f, 1.0f))).xz;
  u_xlatb19 = vec3<bool>(x_1897.x, u_xlatb19.y, x_1897.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu51)) {
    } else {
      break;
    }
    u_xlat25 = ((-(vs_TEXCOORD0) * x_1922.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_1922.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat7.x = dot(u_xlat25, u_xlat25);
    u_xlat7.x = max(u_xlat7.x, 0.00006103515625f);
    u_xlat24 = inverseSqrt(u_xlat7.x);
    u_xlat9 = vec4f(((vec3f(u_xlat24) * u_xlat25)).xyz, u_xlat9.w);
    u_xlat60 = (1.0f / u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_1922.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat7.x = ((-(u_xlat7.x) * u_xlat7.x) + 1.0f);
    u_xlat7.x = max(u_xlat7.x, 0.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat60);
    u_xlat60 = dot(x_1922.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9.xyz);
    u_xlat60 = ((u_xlat60 * x_1922.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_1922.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
    u_xlat60 = (u_xlat60 * u_xlat60);
    u_xlat7.x = (u_xlat7.x * u_xlat60);
    u_xlatb60 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati10.x = i32(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    if (u_xlatb60) {
      x_2030 = -1i;
    } else {
      x_2030 = u_xlati10.x;
    }
    u_xlati60 = x_2030;
    u_xlatb10.x = (u_xlati60 >= 0i);
    if (u_xlatb10.x) {
      u_xlatb10.x = any(!((vec4f() == vec4f(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb10.x) {
        u_xlatb10 = ((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz;
        u_xlatb10.x = (u_xlatb10.y & u_xlatb10.x);
        u_xlatb11 = ((-(u_xlat9.zyxz) < vec4f())).xyz;
        u_xlat27.x = select(4.0f, 5.0f, u_xlatb11.x);
        u_xlat27.z = select(2.0f, 3.0f, u_xlatb11.y);
        u_xlat11.x = select(0.0f, 1.0f, u_xlatb11.z);
        if (u_xlatb10.z) {
          x_2095 = u_xlat27.z;
        } else {
          x_2095 = u_xlat11.x;
        }
        u_xlat44 = x_2095;
        if (u_xlatb10.x) {
          x_2106 = u_xlat27.x;
        } else {
          x_2106 = u_xlat44;
        }
        u_xlat10.x = x_2106;
        u_xlati10.x = i32(u_xlat10.x);
        u_xlati60 = (u_xlati60 + u_xlati10.x);
      }
      u_xlati60 = (u_xlati60 << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati60 + 1i)]);
      u_xlat10 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati60] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati60 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati60 + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      let x_2165 = u_xlat10.xy;
      txVec1 = vec3f(x_2165.x, x_2165.y, u_xlat10.z);
      u_xlat60 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat10.x = (1.0f + -(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat60 = ((u_xlat60 * x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat10.x);
      u_xlatb10.x = (0.0f >= u_xlat10.z);
      u_xlatb27 = (u_xlat10.z >= 1.0f);
      u_xlatb10.x = (u_xlatb27 | u_xlatb10.x);
      u_xlat60 = select(u_xlat60, 1.0f, u_xlatb10.x);
    } else {
      u_xlat60 = 1.0f;
    }
    u_xlat10.x = (-(u_xlat60) + 1.0f);
    u_xlat60 = ((u_xlat52 * u_xlat10.x) + u_xlat60);
    u_xlati10.x = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati10.x) & bitcast<u32>(x_514.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati10.x != 0i)) {
      u_xlati10.x = i32(x_514.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati27.x = select(1i, 0i, (u_xlati10.x != 0i));
      u_xlati44 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati27.x != 0i)) {
        u_xlat11 = vec4f(((vs_TEXCOORD0.yyy * x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 1i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati44].xyw * vs_TEXCOORD0.xxx) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 3i)].xyw)).xyz, u_xlat11.w);
        let x_2311 = (u_xlat11.xy / u_xlat11.zz);
        u_xlat27 = vec3f(x_2311.x, u_xlat27.y, x_2311.y);
        let x_2317 = ((u_xlat27.xz * x_564) + x_564);
        u_xlat27 = vec3f(x_2317.x, u_xlat27.y, x_2317.y);
        let x_2324 = clamp(u_xlat27.xz, vec2f(0.0f), vec2f(1.0f));
        u_xlat27 = vec3f(x_2324.x, u_xlat27.y, x_2324.y);
        let x_2340 = ((x_514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat27.xz) + x_514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
        u_xlat27 = vec3f(x_2340.x, u_xlat27.y, x_2340.y);
      } else {
        u_xlatb10.x = (u_xlati10.x == 1i);
        u_xlati10.x = select(0i, 1i, u_xlatb10.x);
        if ((u_xlati10.x != 0i)) {
          u_xlat11 = vec4f(((vs_TEXCOORD0.yy * x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 1i)].xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati44].xy * vs_TEXCOORD0.xx) + u_xlat11.xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat11.xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f(((u_xlat11.xy + x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 3i)].xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((u_xlat11.xy * x_564) + x_564)).xy, u_xlat11.zw);
          u_xlat11 = vec4f(fract(u_xlat11.xy).xy, u_xlat11.zw);
          let x_2426 = ((x_514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat11.xy) + x_514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
          u_xlat27 = vec3f(x_2426.x, u_xlat27.y, x_2426.y);
        } else {
          u_xlat11 = (vs_TEXCOORD0.yyyy * x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 1i)]);
          u_xlat11 = ((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati44] * vs_TEXCOORD0.xxxx) + u_xlat11);
          u_xlat11 = ((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat11);
          u_xlat11 = (u_xlat11 + x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati44 + 3i)]);
          u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat11.www)).xyz, u_xlat11.w);
          u_xlat10.x = dot(u_xlat11.xyz, u_xlat11.xyz);
          u_xlat10.x = inverseSqrt(u_xlat10.x);
          u_xlat11 = vec4f(((u_xlat10.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
          u_xlat10.x = dot(abs(u_xlat11.xyz), x_1416);
          u_xlat10.x = max(u_xlat10.x, 0.00000099999999747524f);
          u_xlat10.x = (1.0f / u_xlat10.x);
          u_xlat12 = vec4f(((u_xlat10.xxx * u_xlat11.zxy)).xyz, u_xlat12.w);
          u_xlat12.x = -(u_xlat12.x);
          u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
          u_xlatb45 = ((u_xlat12.yzyz >= vec4f())).xy;
          if (u_xlatb45.x) {
            x_2520 = u_xlat12.x;
          } else {
            x_2520 = -(u_xlat12.x);
          }
          u_xlat45.x = x_2520;
          if (u_xlatb45.y) {
            x_2533 = u_xlat12.x;
          } else {
            x_2533 = -(u_xlat12.x);
          }
          u_xlat45.y = x_2533;
          let x_2550 = ((u_xlat11.xy * u_xlat10.xx) + u_xlat45);
          u_xlat10 = vec4f(x_2550.x, u_xlat10.y, x_2550.y, u_xlat10.w);
          let x_2556 = ((u_xlat10.xz * x_564) + x_564);
          u_xlat10 = vec4f(x_2556.x, u_xlat10.y, x_2556.y, u_xlat10.w);
          let x_2563 = clamp(u_xlat10.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat10 = vec4f(x_2563.x, u_xlat10.y, x_2563.y, u_xlat10.w);
          let x_2579 = ((x_514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat10.xz) + x_514.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
          u_xlat27 = vec3f(x_2579.x, u_xlat27.y, x_2579.y);
        }
      }
      u_xlat10 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat27.xz, 0.0f);
      if (u_xlatb19.z) {
        x_2592 = u_xlat10.w;
      } else {
        x_2592 = u_xlat10.x;
      }
      u_xlat61 = x_2592;
      if (u_xlatb19.x) {
        x_2603 = u_xlat10.xyz;
      } else {
        x_2603 = vec3f(u_xlat61);
      }
      u_xlat10 = vec4f(x_2603.xyz, u_xlat10.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    u_xlat10 = vec4f(((u_xlat10.xyz * x_1922.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlati61 = bitcast<i32>((bitcast<u32>(x_256.unity_RenderingLayer.x) & bitcast<u32>(x_1922.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat7.x = (u_xlat7.x * u_xlat60);
    u_xlat60 = dot(u_xlat0.xyz, u_xlat9.xyz);
    u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat60);
    u_xlat10 = vec4f(((u_xlat7.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat25 = ((u_xlat25 * vec3f(u_xlat24)) + u_xlat3);
    u_xlat7.x = dot(u_xlat25, u_xlat25);
    u_xlat7.x = max(u_xlat7.x, 1.17549435e-38f);
    u_xlat7.x = inverseSqrt(u_xlat7.x);
    u_xlat25 = (u_xlat7.xxx * u_xlat25);
    u_xlat7.x = dot(u_xlat0.xyz, u_xlat25);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.y = dot(u_xlat9.xyz, u_xlat25);
    u_xlat7.y = clamp(u_xlat7.y, 0.0f, 1.0f);
    u_xlat7 = vec4f(((u_xlat7.xy * u_xlat7.xy)).xy, u_xlat7.zw);
    u_xlat7.x = ((u_xlat7.x * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat24 = max(u_xlat7.y, 0.10000000149011611938f);
    u_xlat7.x = (u_xlat24 * u_xlat7.x);
    u_xlat7.x = (u_xlat58 * u_xlat7.x);
    u_xlat7.x = (u_xlat57 / u_xlat7.x);
    u_xlat25 = ((u_xlat7.xxx * x_1842) + u_xlat4.xzw);
    u_xlat25 = ((u_xlat25 * u_xlat10.xyz) + u_xlat5.xyw);
    if ((u_xlati61 != 0i)) {
      x_2756 = u_xlat25;
    } else {
      x_2756 = u_xlat5.xyw;
    }
    u_xlat5 = vec4f(x_2756.xy, u_xlat5.z, x_2756.z);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu51 = (u_xlatu2 >> 2u);
  param_21 = bitcast<i32>(u_xlatu2);
  param_22 = 0i;
  param_23 = 1i;
  let x_2775 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu2);
  param_25 = 1i;
  param_26 = 1i;
  let x_2781 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati7 = vec3i(vec2i(x_2775, x_2781).xy, u_xlati7.z);
  u_xlati25 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_824.urp_ZBins[bitcast<i32>(u_xlatu51)].wy)));
  u_xlati9 = vec3i((~(u_xlati7.xy)).xy, u_xlati9.z);
  let x_2813 = bitcast<vec2i>((bitcast<vec2u>(u_xlati9.xx) & bitcast<vec2u>(x_824.urp_ZBins[bitcast<i32>(u_xlatu51)].zx)));
  u_xlati9 = vec3i(x_2813.x, u_xlati9.y, x_2813.y);
  u_xlati25 = bitcast<vec2i>((bitcast<vec2u>(u_xlati25) | bitcast<vec2u>(u_xlati9.xz)));
  u_xlati51 = bitcast<i32>((bitcast<u32>(u_xlati7.y) & bitcast<u32>(u_xlati25.x)));
  u_xlati2 = bitcast<i32>((bitcast<u32>(u_xlati9.y) & bitcast<u32>(u_xlati25.y)));
  u_xlatu51 = (bitcast<u32>(u_xlati51) | bitcast<u32>(u_xlati2));
  u_xlatu9.x = u_xlatu39;
  u_xlatu9.y = u_xlatu19.y;
  u_xlati43 = 0i;
  u_xlatu60 = u_xlatu51;
  u_xlat25 = u_xlat5.xyw;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu2 = (u_xlatu60 >> 16u);
    u_xlati54 = u_xlati43;
    u_xlatu7.x = u_xlatu60;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb24 = (u_xlati54 == 0i);
      u_xlatu10.x = (u_xlatu7.x & 65535u);
      u_xlatb10.x = (u_xlatu2 >= u_xlatu10.x);
      u_xlatb24 = (u_xlatb24 & u_xlatb10.x);
      if (!(u_xlatb24)) {
        break;
      }
      param_27 = u_xlatu7.x;
      param_28 = 5i;
      param_29 = 11i;
      let x_2900 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu24 = x_2900;
      u_xlatu10 = (vec4u(u_xlatu24) + u_xlatu9.xxyy);
      u_xlatu11 = (u_xlatu10.yw >> x_964);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_2915 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_2922 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_2929 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_2936 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_2915, x_2922, x_2929, x_2936);
      u_xlati45 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_1005.urp_Tiles[bitcast<i32>(u_xlatu11.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_1005.urp_Tiles[bitcast<i32>(u_xlatu11.x)].zx))).xy, u_xlati13.zw);
      let x_2973 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati11 = vec3i(x_2973.x, u_xlati11.y, x_2973.y);
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati27.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.z)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati27.x) | bitcast<u32>(u_xlati10.x)));
      u_xlati27 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_824.urp_ZBins[bitcast<i32>(u_xlatu11.y)].wy)));
      u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_824.urp_ZBins[bitcast<i32>(u_xlatu11.y)].zx))).xy, u_xlati11.z);
      u_xlati27 = bitcast<vec2i>((bitcast<vec2u>(u_xlati27) | bitcast<vec2u>(u_xlati11.xy)));
      u_xlati27.x = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati27.x)));
      u_xlati44 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati27.y)));
      u_xlati27.x = bitcast<i32>((bitcast<u32>(u_xlati44) | bitcast<u32>(u_xlati27.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati27.x) & bitcast<u32>(u_xlati10.x)));
      u_xlati27.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu7.x) & 31i)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati27.x) & bitcast<u32>(u_xlati10.x)));
      u_xlati24 = (bitcast<i32>(u_xlatu24) << bitcast<u32>(5i));
      u_xlatu24 = (u_xlatu2 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati24)))));
      u_xlatu24 = min(u_xlatu24, 31u);
      u_xlatu24 = (bitcast<u32>(-(bitcast<i32>(u_xlatu24))) + 31u);
      u_xlatu24 = (4294967295u >> (u_xlatu24 & 31u));
      u_xlati54 = bitcast<i32>((u_xlatu24 & bitcast<u32>(u_xlati10.x)));
      u_xlati24 = (bitcast<i32>(u_xlatu7.x) + 32i);
      u_xlatu7.x = (bitcast<u32>(u_xlati24) & 4294967264u);
    }
    u_xlatu60 = u_xlatu7.x;
    if ((u_xlati54 == 0i)) {
      break;
    }
    u_xlati2 = (0i - u_xlati54);
    u_xlatu2 = (bitcast<u32>(u_xlati2) & bitcast<u32>(u_xlati54));
    u_xlat2.x = f32(u_xlatu2);
    u_xlatu2 = (bitcast<u32>(u_xlat2.x) >> 23u);
    u_xlati2 = (bitcast<i32>(u_xlatu2) + -127i);
    u_xlati24 = (1i << bitcast<u32>((u_xlati2 & 31i)));
    u_xlati43 = bitcast<i32>((bitcast<u32>(u_xlati54) ^ bitcast<u32>(u_xlati24)));
    u_xlati24 = (bitcast<i32>(u_xlatu60) + -32i);
    u_xlati24 = bitcast<i32>((bitcast<u32>(u_xlati24) & 65504u));
    u_xlati2 = (u_xlati2 + u_xlati24);
    u_xlati2 = (bitcast<i32>(u_xlatu7.z) + u_xlati2);
    u_xlat10 = vec4f((((-(vs_TEXCOORD0) * x_1922.x_AdditionalLightsPosition[u_xlati2].www) + x_1922.x_AdditionalLightsPosition[u_xlati2].xyz)).xyz, u_xlat10.w);
    u_xlat24 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat24 = max(u_xlat24, 0.00006103515625f);
    u_xlat61 = inverseSqrt(u_xlat24);
    u_xlat11 = vec4f(((vec3f(u_xlat61) * u_xlat10.xyz)).xyz, u_xlat11.w);
    u_xlat62 = (1.0f / u_xlat24);
    u_xlat24 = (u_xlat24 * x_1922.x_AdditionalLightsAttenuation[u_xlati2].x);
    u_xlat24 = ((-(u_xlat24) * u_xlat24) + 1.0f);
    u_xlat24 = max(u_xlat24, 0.0f);
    u_xlat24 = (u_xlat24 * u_xlat24);
    u_xlat24 = (u_xlat24 * u_xlat62);
    u_xlat62 = dot(x_1922.x_AdditionalLightsSpotDir[u_xlati2].xyz, u_xlat11.xyz);
    u_xlat62 = ((u_xlat62 * x_1922.x_AdditionalLightsAttenuation[u_xlati2].z) + x_1922.x_AdditionalLightsAttenuation[u_xlati2].w);
    u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
    u_xlat62 = (u_xlat62 * u_xlat62);
    u_xlat24 = (u_xlat24 * u_xlat62);
    u_xlatb62 = (u_xlati2 < 0i);
    u_xlati12.x = i32(x_209.x_AdditionalShadowParams[u_xlati2].w);
    if (u_xlatb62) {
      x_3249 = -1i;
    } else {
      x_3249 = u_xlati12.x;
    }
    u_xlati62 = x_3249;
    u_xlatb12.x = (u_xlati62 >= 0i);
    if (u_xlatb12.x) {
      u_xlatb12.x = any(!((vec4f() == vec4f(x_209.x_AdditionalShadowParams[u_xlati2].z))));
      if (u_xlatb12.x) {
        u_xlatb12 = ((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz;
        u_xlatb12.x = (u_xlatb12.y & u_xlatb12.x);
        u_xlatb13 = ((-(u_xlat11.zyxz) < vec4f())).xyz;
        u_xlat29.x = select(4.0f, 5.0f, u_xlatb13.x);
        u_xlat29.z = select(2.0f, 3.0f, u_xlatb13.y);
        u_xlat13.x = select(0.0f, 1.0f, u_xlatb13.z);
        if (u_xlatb12.z) {
          x_3310 = u_xlat29.z;
        } else {
          x_3310 = u_xlat13.x;
        }
        u_xlat46 = x_3310;
        if (u_xlatb12.x) {
          x_3321 = u_xlat29.x;
        } else {
          x_3321 = u_xlat46;
        }
        u_xlat12.x = x_3321;
        u_xlati12.x = i32(u_xlat12.x);
        u_xlati62 = (u_xlati62 + u_xlati12.x);
      }
      u_xlati62 = (u_xlati62 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati62 + 1i)]);
      u_xlat12 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati62] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati62 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati62 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      let x_3379 = u_xlat12.xy;
      txVec2 = vec3f(x_3379.x, x_3379.y, u_xlat12.z);
      u_xlat62 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat12.x = (1.0f + -(x_209.x_AdditionalShadowParams[u_xlati2].x));
      u_xlat62 = ((u_xlat62 * x_209.x_AdditionalShadowParams[u_xlati2].x) + u_xlat12.x);
      u_xlatb12.x = (0.0f >= u_xlat12.z);
      u_xlatb29 = (u_xlat12.z >= 1.0f);
      u_xlatb12.x = (u_xlatb29 | u_xlatb12.x);
      u_xlat62 = select(u_xlat62, 1.0f, u_xlatb12.x);
    } else {
      u_xlat62 = 1.0f;
    }
    u_xlat12.x = (-(u_xlat62) + 1.0f);
    u_xlat62 = ((u_xlat52 * u_xlat12.x) + u_xlat62);
    u_xlati12.x = (1i << bitcast<u32>((u_xlati2 & 31i)));
    u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.x) & bitcast<u32>(x_514.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati12.x != 0i)) {
      u_xlati12.x = i32(x_514.x_AdditionalLightsLightTypes[u_xlati2].el);
      u_xlati29 = select(1i, 0i, (u_xlati12.x != 0i));
      u_xlati46 = (u_xlati2 << bitcast<u32>(2i));
      if ((u_xlati29 != 0i)) {
        u_xlat13 = vec4f(((vs_TEXCOORD0.yyy * x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 1i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati46].xyw * vs_TEXCOORD0.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 3i)].xyw)).xyz, u_xlat13.w);
        let x_3517 = (u_xlat13.xy / u_xlat13.zz);
        u_xlat29 = vec3f(x_3517.x, u_xlat29.y, x_3517.y);
        let x_3523 = ((u_xlat29.xz * x_564) + x_564);
        u_xlat29 = vec3f(x_3523.x, u_xlat29.y, x_3523.y);
        let x_3530 = clamp(u_xlat29.xz, vec2f(0.0f), vec2f(1.0f));
        u_xlat29 = vec3f(x_3530.x, u_xlat29.y, x_3530.y);
        let x_3544 = ((x_514.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat29.xz) + x_514.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
        u_xlat29 = vec3f(x_3544.x, u_xlat29.y, x_3544.y);
      } else {
        u_xlatb12.x = (u_xlati12.x == 1i);
        u_xlati12.x = select(0i, 1i, u_xlatb12.x);
        if ((u_xlati12.x != 0i)) {
          u_xlat13 = vec4f(((vs_TEXCOORD0.yy * x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 1i)].xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati46].xy * vs_TEXCOORD0.xx) + u_xlat13.xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat13.xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f(((u_xlat13.xy + x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 3i)].xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((u_xlat13.xy * x_564) + x_564)).xy, u_xlat13.zw);
          u_xlat13 = vec4f(fract(u_xlat13.xy).xy, u_xlat13.zw);
          let x_3628 = ((x_514.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat13.xy) + x_514.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
          u_xlat29 = vec3f(x_3628.x, u_xlat29.y, x_3628.y);
        } else {
          u_xlat13 = (vs_TEXCOORD0.yyyy * x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 1i)]);
          u_xlat13 = ((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati46] * vs_TEXCOORD0.xxxx) + u_xlat13);
          u_xlat13 = ((x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat13);
          u_xlat13 = (u_xlat13 + x_514.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati46 + 3i)]);
          u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
          u_xlat12.x = dot(u_xlat13.xyz, u_xlat13.xyz);
          u_xlat12.x = inverseSqrt(u_xlat12.x);
          u_xlat13 = vec4f(((u_xlat12.xxx * u_xlat13.xyz)).xyz, u_xlat13.w);
          u_xlat12.x = dot(abs(u_xlat13.xyz), x_1416);
          u_xlat12.x = max(u_xlat12.x, 0.00000099999999747524f);
          u_xlat12.x = (1.0f / u_xlat12.x);
          u_xlat14 = (u_xlat12.xxx * u_xlat13.zxy);
          u_xlat14.x = -(u_xlat14.x);
          u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
          u_xlatb47 = ((u_xlat14.yzyz >= vec4f())).xy;
          if (u_xlatb47.x) {
            x_3719 = u_xlat14.x;
          } else {
            x_3719 = -(u_xlat14.x);
          }
          u_xlat47.x = x_3719;
          if (u_xlatb47.y) {
            x_3732 = u_xlat14.x;
          } else {
            x_3732 = -(u_xlat14.x);
          }
          u_xlat47.y = x_3732;
          let x_3749 = ((u_xlat13.xy * u_xlat12.xx) + u_xlat47);
          u_xlat12 = vec4f(x_3749.x, u_xlat12.y, x_3749.y, u_xlat12.w);
          let x_3755 = ((u_xlat12.xz * x_564) + x_564);
          u_xlat12 = vec4f(x_3755.x, u_xlat12.y, x_3755.y, u_xlat12.w);
          let x_3762 = clamp(u_xlat12.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat12 = vec4f(x_3762.x, u_xlat12.y, x_3762.y, u_xlat12.w);
          let x_3776 = ((x_514.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat12.xz) + x_514.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
          u_xlat29 = vec3f(x_3776.x, u_xlat29.y, x_3776.y);
        }
      }
      u_xlat12 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat29.xz, 0.0f);
      if (u_xlatb19.z) {
        x_3787 = u_xlat12.w;
      } else {
        x_3787 = u_xlat12.x;
      }
      u_xlat63 = x_3787;
      if (u_xlatb19.x) {
        x_3798 = u_xlat12.xyz;
      } else {
        x_3798 = vec3f(u_xlat63);
      }
      u_xlat12 = vec4f(x_3798.xyz, u_xlat12.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    u_xlat12 = vec4f(((u_xlat12.xyz * x_1922.x_AdditionalLightsColor[u_xlati2].xyz)).xyz, u_xlat12.w);
    u_xlati2 = bitcast<i32>((bitcast<u32>(x_256.unity_RenderingLayer.x) & bitcast<u32>(x_1922.x_AdditionalLightsLayerMasks[u_xlati2].el)));
    u_xlat24 = (u_xlat24 * u_xlat62);
    u_xlat62 = dot(u_xlat0.xyz, u_xlat11.xyz);
    u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
    u_xlat24 = (u_xlat24 * u_xlat62);
    u_xlat12 = vec4f(((vec3f(u_xlat24) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat61)) + u_xlat3)).xyz, u_xlat10.w);
    u_xlat24 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat24 = max(u_xlat24, 1.17549435e-38f);
    u_xlat24 = inverseSqrt(u_xlat24);
    u_xlat10 = vec4f(((vec3f(u_xlat24) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat24 = dot(u_xlat0.xyz, u_xlat10.xyz);
    u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
    u_xlat10.x = dot(u_xlat11.xyz, u_xlat10.xyz);
    u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
    u_xlat24 = (u_xlat24 * u_xlat24);
    u_xlat24 = ((u_xlat24 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat24 = (u_xlat24 * u_xlat24);
    u_xlat10.x = max(u_xlat10.x, 0.10000000149011611938f);
    u_xlat24 = (u_xlat24 * u_xlat10.x);
    u_xlat24 = (u_xlat58 * u_xlat24);
    u_xlat24 = (u_xlat57 / u_xlat24);
    u_xlat10 = vec4f((((vec3f(u_xlat24) * x_1842) + u_xlat4.xzw)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat25)).xyz, u_xlat10.w);
    if ((u_xlati2 != 0i)) {
      x_3943 = u_xlat10.xyz;
    } else {
      x_3943 = u_xlat25;
    }
    u_xlat25 = x_3943;
  }
  u_xlat0 = vec4f(((u_xlat1.xyz + u_xlat6)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat25 + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat21;
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

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
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
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
diagnostic(off, derivative_uniformity);

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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_AlphaCenter : f32,
  /* @offset(20) */
  x_AlphaEdge : f32,
  /* @offset(24) */
  x_FresnelPower : f32,
  /* @offset(28) */
  x_EdgeDarken : f32,
  /* @offset(32) */
  x_Smoothness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_Absorb : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_Transmit : f32,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(0) var<uniform> x_98 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_174 : UnityPerMaterial;

@group(1) @binding(7) var<uniform> x_209 : LightShadows;

@group(1) @binding(5) var<uniform> x_256 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_1947 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2126 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2384 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(5) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3048 : AdditionalLights;

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

const x_333 = vec2f(1.0f);

const x_520 = vec4f(0.25f);

const x_539 = vec2f(0.5f);

const x_563 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_575 = vec2f(0.07999999821186065674f);

const x_631 = vec2f(0.15999999642372131348f);

const x_704 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1030 = vec2f(0.04081600159406661987f);

const x_1089 = vec2f(0.08163200318813323975f);

const x_1106 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1109 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1116 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1154 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2087 = vec2u(2u);

const x_2987 = vec3f(0.03999999910593032837f);

const x_3872 = vec2f(2.0f);

const x_3887 = vec3f(0.08163200318813323975f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat28 : vec3f;
  var u_xlat2 : vec4f;
  var x_132 : vec3f;
  var u_xlat83 : f32;
  var u_xlat3 : vec3f;
  var u_xlat84 : f32;
  var u_xlat4 : vec4f;
  var u_xlat31 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat81 : f32;
  var u_xlat58 : vec2f;
  var u_xlat86 : f32;
  var u_xlat87 : f32;
  var u_xlat34 : f32;
  var u_xlat88 : f32;
  var u_xlatb8 : vec3<bool>;
  var txVec0 : vec3f;
  var u_xlat9 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb35 : bool;
  var u_xlat35 : vec3f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat63 : vec2f;
  var u_xlat65 : vec2f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var txVec4 : vec3f;
  var u_xlat62 : f32;
  var txVec5 : vec3f;
  var u_xlat89 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat69 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat37 : vec2f;
  var u_xlat19 : vec4f;
  var u_xlat66 : vec2f;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
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
  var x_1721 : f32;
  var u_xlat32 : f32;
  var u_xlat59 : f32;
  var u_xlatu7 : vec3u;
  var u_xlatu10 : vec4u;
  var u_xlati59 : i32;
  var u_xlatu59 : u32;
  var u_xlat29 : f32;
  var u_xlat1 : vec4f;
  var x_1863 : f32;
  var u_xlatu1 : u32;
  var u_xlatu2 : u32;
  var u_xlati29 : i32;
  var u_xlatu29 : vec2u;
  var u_xlati7 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati62 : vec2i;
  var u_xlati10 : vec4i;
  var u_xlati1 : i32;
  var u_xlati64 : i32;
  var u_xlatu91 : u32;
  var u_xlatu89 : u32;
  var u_xlati90 : i32;
  var u_xlatu92 : u32;
  var u_xlatb12 : vec4<bool>;
  var u_xlatu39 : vec2u;
  var u_xlatb39 : bool;
  var u_xlatu12 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
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
  var u_xlati14 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati39 : vec3i;
  var u_xlati93 : i32;
  var u_xlati66 : vec2i;
  var u_xlati12 : vec4i;
  var u_xlatb89 : bool;
  var u_xlati89 : i32;
  var u_xlat39 : vec3f;
  var x_2451 : f32;
  var x_2465 : f32;
  var x_2479 : f32;
  var x_2537 : vec3f;
  var u_xlat40 : vec3f;
  var u_xlatb67 : vec2<bool>;
  var u_xlat67 : vec2f;
  var x_2605 : f32;
  var x_2618 : f32;
  var u_xlat93 : f32;
  var u_xlatu93 : u32;
  var u_xlatu40 : u32;
  var u_xlati81 : i32;
  var u_xlat82 : f32;
  var x_3002 : vec3f;
  var u_xlatu81 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatb7 : bool;
  var u_xlati34 : i32;
  var u_xlatb34 : bool;
  var u_xlatb10 : vec4<bool>;
  var u_xlat90 : f32;
  var x_3205 : f32;
  var x_3214 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat91 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat73 : vec2f;
  var u_xlat68 : vec2f;
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
  var u_xlatb90 : bool;
  var x_4473 : f32;
  var x_4601 : vec3f;
  var u_xlati2 : vec4i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati35 : vec2i;
  var u_xlatu9 : vec2u;
  var u_xlatu63 : vec2u;
  var u_xlatu84 : u32;
  var u_xlatu62 : vec2u;
  var u_xlatb62 : bool;
  var u_xlatu35 : u32;
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
  var u_xlati11 : vec2i;
  var u_xlati65 : vec2i;
  var u_xlati84 : i32;
  var u_xlat64 : f32;
  var u_xlatb64 : bool;
  var u_xlati91 : i32;
  var u_xlatb91 : bool;
  var u_xlat92 : f32;
  var x_5175 : f32;
  var x_5184 : f32;
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
  var u_xlat41 : vec3f;
  var u_xlat42 : vec2f;
  var u_xlat75 : vec2f;
  var u_xlat70 : vec2f;
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
  var u_xlatb92 : bool;
  var x_6541 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, u_xlat0.w);
  u_xlatb1 = (x_98.unity_OrthoParams.w == 0.0f);
  u_xlat28 = (-(vs_TEXCOORD0) + x_98.x_WorldSpaceCameraPos);
  u_xlat2.x = x_98.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat2.y = x_98.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat2.z = x_98.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb1) {
    x_132 = u_xlat28;
  } else {
    x_132 = u_xlat2.xyz;
  }
  u_xlat28 = x_132;
  u_xlat83 = dot(u_xlat28, u_xlat28);
  u_xlat83 = inverseSqrt(u_xlat83);
  u_xlat3 = (u_xlat28 * vec3f(u_xlat83));
  u_xlat84 = dot(u_xlat0.xyz, u_xlat3);
  u_xlat4.x = min(abs(u_xlat84), 1.0f);
  u_xlat4.x = (-(u_xlat4.x) + 1.0f);
  u_xlat4.x = log2(u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * x_174.x_FresnelPower);
  u_xlat4.x = exp2(u_xlat4.x);
  u_xlat31 = (-(x_174.x_AlphaCenter) + x_174.x_AlphaEdge);
  u_xlat31 = ((u_xlat4.x * u_xlat31) + x_174.x_AlphaCenter);
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_209.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_209.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_209.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_209.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat5.w);
  u_xlat0.w = 1.0f;
  u_xlat6.x = dot(x_256.unity_SHAr, u_xlat0);
  u_xlat6.y = dot(x_256.unity_SHAg, u_xlat0);
  u_xlat6.z = dot(x_256.unity_SHAb, u_xlat0);
  u_xlat7 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat8.x = dot(x_256.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_256.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_256.unity_SHBb, u_xlat7);
  u_xlat81 = (u_xlat0.y * u_xlat0.y);
  u_xlat81 = ((u_xlat0.x * u_xlat0.x) + -(u_xlat81));
  u_xlat7 = vec4f((((x_256.unity_SHC.xyz * vec3f(u_xlat81)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = (u_xlat6 + u_xlat7.xyz);
  let x_336 = x_98.x_ScaledScreenParams.xy;
  u_xlat58 = (x_333 / vec2f(x_336.x, x_336.y));
  u_xlat7 = vec4f(((u_xlat58 * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat81 = ((u_xlat7.y * x_98.x_ScaleBiasRt.x) + x_98.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat81) + 1.0f);
  u_xlat81 = ((-(x_174.x_EdgeDarken) * u_xlat4.x) + 1.0f);
  let x_373 = (vec3f(u_xlat81) * x_174.x_BaseColor.xyz);
  u_xlat4 = vec4f(x_373.x, u_xlat4.y, x_373.yz);
  let x_380 = (vec3f(u_xlat31) * u_xlat4.xzw);
  u_xlat4 = vec4f(x_380.x, u_xlat4.y, x_380.yz);
  u_xlat81 = (-(x_174.x_Smoothness) + 1.0f);
  u_xlat86 = (u_xlat81 * u_xlat81);
  u_xlat86 = max(u_xlat86, 0.0078125f);
  u_xlat87 = (u_xlat86 * u_xlat86);
  u_xlat34 = (x_174.x_Smoothness + 0.04000002145767211914f);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat88 = ((u_xlat86 * 4.0f) + 2.0f);
  let x_416 = (u_xlat4.xzw * vec3f(0.95999997854232788086f));
  u_xlat4 = vec4f(x_416.x, u_xlat4.y, x_416.yz);
  u_xlatb8.x = (0.0f < x_209.x_MainLightShadowParams.y);
  if (u_xlatb8.x) {
    u_xlatb8.x = (x_209.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb8.x) {
      u_xlat8 = (u_xlat5.xyxy + x_209.x_MainLightShadowOffset0);
      let x_446 = u_xlat8.xy;
      txVec0 = vec3f(x_446.x, x_446.y, u_xlat5.z);
      u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_469 = u_xlat8.zw;
      txVec1 = vec3f(x_469.x, x_469.y, u_xlat5.z);
      u_xlat9.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat8 = (u_xlat5.xyxy + x_209.x_MainLightShadowOffset1);
      let x_490 = u_xlat8.xy;
      txVec2 = vec3f(x_490.x, x_490.y, u_xlat5.z);
      u_xlat9.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_505 = u_xlat8.zw;
      txVec3 = vec3f(x_505.x, x_505.y, u_xlat5.z);
      u_xlat9.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat8.x = dot(u_xlat9, x_520);
    } else {
      u_xlatb35 = (x_209.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb35) {
        u_xlat35 = vec3f((((u_xlat5.xy * x_209.x_MainLightShadowmapSize.zw) + x_539)).xy, u_xlat35.z);
        u_xlat35 = vec3f(floor(u_xlat35.xy).xy, u_xlat35.z);
        u_xlat9 = vec4f((((u_xlat5.xy * x_209.x_MainLightShadowmapSize.zw) + -(u_xlat35.xy))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_563);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        u_xlat63 = (u_xlat11.yw * x_575);
        let x_583 = ((u_xlat11.xz * x_539) + -(u_xlat9.xy));
        u_xlat10 = vec4f(x_583.x, u_xlat10.y, x_583.y, u_xlat10.w);
        u_xlat11 = vec4f(((-(u_xlat9.xy) + x_333)).xy, u_xlat11.zw);
        u_xlat65 = min(u_xlat9.xy, vec2f());
        u_xlat65 = ((-(u_xlat65) * u_xlat65) + u_xlat11.xy);
        u_xlat9 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat9.zw);
        u_xlat9 = vec4f((((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat10.yw)).xy, u_xlat9.zw);
        u_xlat65 = (u_xlat65 + x_333);
        u_xlat9 = vec4f(((u_xlat9.xy + x_333)).xy, u_xlat9.zw);
        u_xlat12 = vec4f(((u_xlat10.xz * x_631)).xy, u_xlat12.zw);
        u_xlat13 = vec4f(((u_xlat11.xy * x_631)).xy, u_xlat13.zw);
        u_xlat11 = vec4f(((u_xlat65 * x_631)).xy, u_xlat11.zw);
        u_xlat14 = vec4f(((u_xlat9.xy * x_631)).xy, u_xlat14.zw);
        u_xlat9 = vec4f(((u_xlat10.yw * x_631)).xy, u_xlat9.zw);
        u_xlat12.z = u_xlat11.x;
        u_xlat12.w = u_xlat9.x;
        u_xlat13.z = u_xlat14.x;
        u_xlat13.w = u_xlat63.x;
        u_xlat10 = (u_xlat12.zwxz + u_xlat13.zwxz);
        u_xlat11.z = u_xlat12.y;
        u_xlat11.w = u_xlat9.y;
        u_xlat14.z = u_xlat13.y;
        u_xlat14.w = u_xlat63.y;
        u_xlat9 = vec4f(((u_xlat11.zyw + u_xlat14.zyw)).xyz, u_xlat9.w);
        u_xlat11 = vec4f(((u_xlat13.xzw / u_xlat10.zwy)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_704)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat14.zyw / u_xlat9.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_704)).xyz, u_xlat12.w);
        u_xlat11 = vec4f(((u_xlat11.yxz * x_209.x_MainLightShadowmapSize.xxx)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_209.x_MainLightShadowmapSize.yyy)).xyz, u_xlat12.w);
        u_xlat11.w = u_xlat12.x;
        u_xlat13 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat11.ywxw);
        u_xlat14 = vec4f((((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat11.zw)).xy, u_xlat14.zw);
        u_xlat12.w = u_xlat11.y;
        let x_763 = u_xlat12.yz;
        u_xlat11 = vec4f(u_xlat11.x, x_763.x, u_xlat11.z, x_763.y);
        u_xlat15 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat12 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat12.wywz);
        u_xlat11 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat11.xwzw);
        u_xlat16 = (u_xlat9.xxxy * u_xlat10.zwyz);
        u_xlat17 = (u_xlat9.yyzz * u_xlat10);
        u_xlat35.x = (u_xlat9.z * u_xlat10.y);
        let x_813 = u_xlat13.xy;
        txVec4 = vec3f(x_813.x, x_813.y, u_xlat5.z);
        u_xlat62 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_828 = u_xlat13.zw;
        txVec5 = vec3f(x_828.x, x_828.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat89 = (u_xlat89 * u_xlat16.y);
        u_xlat62 = ((u_xlat16.x * u_xlat62) + u_xlat89);
        let x_853 = u_xlat14.xy;
        txVec6 = vec3f(x_853.x, x_853.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat62 = ((u_xlat16.z * u_xlat89) + u_xlat62);
        let x_873 = u_xlat12.xy;
        txVec7 = vec3f(x_873.x, x_873.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat62 = ((u_xlat16.w * u_xlat89) + u_xlat62);
        let x_893 = u_xlat15.xy;
        txVec8 = vec3f(x_893.x, x_893.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat62 = ((u_xlat17.x * u_xlat89) + u_xlat62);
        let x_913 = u_xlat15.zw;
        txVec9 = vec3f(x_913.x, x_913.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat62 = ((u_xlat17.y * u_xlat89) + u_xlat62);
        let x_933 = u_xlat12.zw;
        txVec10 = vec3f(x_933.x, x_933.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat62 = ((u_xlat17.z * u_xlat89) + u_xlat62);
        let x_953 = u_xlat11.xy;
        txVec11 = vec3f(x_953.x, x_953.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat62 = ((u_xlat17.w * u_xlat89) + u_xlat62);
        let x_973 = u_xlat11.zw;
        txVec12 = vec3f(x_973.x, x_973.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat8.x = ((u_xlat35.x * u_xlat89) + u_xlat62);
      } else {
        u_xlat35 = vec3f((((u_xlat5.xy * x_209.x_MainLightShadowmapSize.zw) + x_539)).xy, u_xlat35.z);
        u_xlat35 = vec3f(floor(u_xlat35.xy).xy, u_xlat35.z);
        u_xlat9 = vec4f((((u_xlat5.xy * x_209.x_MainLightShadowmapSize.zw) + -(u_xlat35.xy))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_563);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        let x_1031 = (u_xlat11.yw * x_1030);
        u_xlat12 = vec4f(u_xlat12.x, x_1031.x, u_xlat12.z, x_1031.y);
        u_xlat63 = ((u_xlat11.xz * x_539) + -(u_xlat9.xy));
        let x_1044 = (-(u_xlat9.xy) + x_333);
        u_xlat10 = vec4f(x_1044.x, u_xlat10.y, x_1044.y, u_xlat10.w);
        u_xlat11 = vec4f(min(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_1060 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.xz);
        u_xlat10 = vec4f(x_1060.x, u_xlat10.y, x_1060.y, u_xlat10.w);
        u_xlat11 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_1076 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.yw);
        u_xlat10 = vec4f(u_xlat10.x, x_1076.x, u_xlat10.z, x_1076.y);
        u_xlat10 = (u_xlat10 + vec4f(2.0f));
        u_xlat11.z = (u_xlat10.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat63.yx * x_1089)).xy, u_xlat13.zw);
        u_xlat63 = (u_xlat10.xz * x_1089);
        u_xlat13.z = (u_xlat10.w * 0.08163200318813323975f);
        u_xlat11.x = u_xlat13.y;
        let x_1110 = ((u_xlat9.xx * x_1106) + x_1109);
        u_xlat11 = vec4f(u_xlat11.x, x_1110.x, u_xlat11.z, x_1110.y);
        let x_1117 = ((u_xlat9.xx * x_1106) + x_1116);
        u_xlat10 = vec4f(x_1117.x, u_xlat10.y, x_1117.y, u_xlat10.w);
        u_xlat10.y = u_xlat63.x;
        u_xlat10.w = u_xlat12.y;
        u_xlat11 = (u_xlat10 + u_xlat11);
        let x_1132 = ((u_xlat9.yy * x_1106) + x_1109);
        u_xlat13 = vec4f(u_xlat13.x, x_1132.x, u_xlat13.z, x_1132.y);
        let x_1138 = ((u_xlat9.yy * x_1106) + x_1116);
        u_xlat12 = vec4f(x_1138.x, u_xlat12.y, x_1138.y, u_xlat12.w);
        u_xlat12.y = u_xlat63.y;
        u_xlat9 = (u_xlat12 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat11);
        u_xlat10 = (u_xlat10 + x_1154);
        u_xlat12 = (u_xlat12 / u_xlat9);
        u_xlat12 = (u_xlat12 + x_1154);
        u_xlat10 = (u_xlat10.wxyz * x_209.x_MainLightShadowmapSize.xxxx);
        u_xlat12 = (u_xlat12.xwyz * x_209.x_MainLightShadowmapSize.yyyy);
        let x_1174 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_1174.x, u_xlat13.y, x_1174.yz);
        u_xlat13.y = u_xlat12.x;
        u_xlat14 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat15 = vec4f((((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat15.zw);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat12.z;
        u_xlat16 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat69 = ((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat12.w;
        u_xlat18 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat37 = ((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.w = u_xlat13.y;
        u_xlat19 = vec4f((((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat10.xw)).xy, u_xlat19.zw);
        let x_1276 = u_xlat13.xzw;
        u_xlat12 = vec4f(x_1276.x, u_xlat12.y, x_1276.yz);
        u_xlat13 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat66 = ((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat12.x = u_xlat10.x;
        u_xlat35 = vec3f((((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat12.xy)).xy, u_xlat35.z);
        u_xlat20 = (u_xlat9.xxxx * u_xlat11);
        u_xlat21 = (u_xlat9.yyyy * u_xlat11);
        u_xlat22 = (u_xlat9.zzzz * u_xlat11);
        u_xlat9 = (u_xlat9.wwww * u_xlat11);
        let x_1333 = u_xlat14.xy;
        txVec13 = vec3f(x_1333.x, x_1333.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1347 = u_xlat14.zw;
        txVec14 = vec3f(x_1347.x, x_1347.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat10.x = (u_xlat10.x * u_xlat20.y);
        u_xlat89 = ((u_xlat20.x * u_xlat89) + u_xlat10.x);
        let x_1375 = u_xlat15.xy;
        txVec15 = vec3f(x_1375.x, x_1375.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat89 = ((u_xlat20.z * u_xlat10.x) + u_xlat89);
        let x_1397 = u_xlat17.xy;
        txVec16 = vec3f(x_1397.x, x_1397.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat89 = ((u_xlat20.w * u_xlat10.x) + u_xlat89);
        let x_1419 = u_xlat16.xy;
        txVec17 = vec3f(x_1419.x, x_1419.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat89 = ((u_xlat21.x * u_xlat10.x) + u_xlat89);
        let x_1441 = u_xlat16.zw;
        txVec18 = vec3f(x_1441.x, x_1441.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat89 = ((u_xlat21.y * u_xlat10.x) + u_xlat89);
        txVec19 = vec3f(u_xlat69.x, u_xlat69.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat89 = ((u_xlat21.z * u_xlat10.x) + u_xlat89);
        let x_1484 = u_xlat17.zw;
        txVec20 = vec3f(x_1484.x, x_1484.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat89 = ((u_xlat21.w * u_xlat10.x) + u_xlat89);
        let x_1506 = u_xlat18.xy;
        txVec21 = vec3f(x_1506.x, x_1506.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat89 = ((u_xlat22.x * u_xlat10.x) + u_xlat89);
        let x_1528 = u_xlat18.zw;
        txVec22 = vec3f(x_1528.x, x_1528.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat89 = ((u_xlat22.y * u_xlat10.x) + u_xlat89);
        txVec23 = vec3f(u_xlat37.x, u_xlat37.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat89 = ((u_xlat22.z * u_xlat10.x) + u_xlat89);
        let x_1571 = u_xlat19.xy;
        txVec24 = vec3f(x_1571.x, x_1571.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat89 = ((u_xlat22.w * u_xlat10.x) + u_xlat89);
        let x_1593 = u_xlat13.xy;
        txVec25 = vec3f(x_1593.x, x_1593.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat89 = ((u_xlat9.x * u_xlat10.x) + u_xlat89);
        let x_1615 = u_xlat13.zw;
        txVec26 = vec3f(x_1615.x, x_1615.y, u_xlat5.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat89 = ((u_xlat9.y * u_xlat9.x) + u_xlat89);
        txVec27 = vec3f(u_xlat66.x, u_xlat66.y, u_xlat5.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat89 = ((u_xlat9.z * u_xlat9.x) + u_xlat89);
        let x_1658 = u_xlat35.xy;
        txVec28 = vec3f(x_1658.x, x_1658.y, u_xlat5.z);
        u_xlat35.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat8.x = ((u_xlat9.w * u_xlat35.x) + u_xlat89);
      }
    }
  } else {
    let x_1682 = u_xlat5.xy;
    txVec29 = vec3f(x_1682.x, x_1682.y, u_xlat5.z);
    u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat5.x = (-(x_209.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat8.x * x_209.x_MainLightShadowParams.x) + u_xlat5.x);
  u_xlatb32 = (0.0f >= u_xlat5.z);
  u_xlatb59 = (u_xlat5.z >= 1.0f);
  u_xlatb32 = (u_xlatb59 | u_xlatb32);
  if (u_xlatb32) {
    x_1721 = 1.0f;
  } else {
    x_1721 = u_xlat5.x;
  }
  u_xlat5.x = x_1721;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_98.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat32 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat59 = ((u_xlat32 * x_209.x_MainLightShadowParams.z) + x_209.x_MainLightShadowParams.w);
  u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
  u_xlat89 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat59 * u_xlat89) + u_xlat5.x);
  u_xlat59 = dot(-(u_xlat3), u_xlat0.xyz);
  u_xlat59 = (u_xlat59 + u_xlat59);
  u_xlat9 = vec4f((((u_xlat0.xyz * -(vec3f(u_xlat59))) + -(u_xlat3))).xyz, u_xlat9.w);
  u_xlat84 = u_xlat84;
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat84 = (-(u_xlat84) + 1.0f);
  u_xlat84 = (u_xlat84 * u_xlat84);
  u_xlat84 = (u_xlat84 * u_xlat84);
  u_xlat59 = ((-(u_xlat81) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat81 = (u_xlat81 * u_xlat59);
  u_xlat81 = (u_xlat81 * 6.0f);
  let x_1811 = (u_xlat7.xz * x_98.x_FPParams1.xy);
  u_xlat7 = vec4f(x_1811.x, u_xlat7.y, x_1811.y, u_xlat7.w);
  let x_1820 = vec2u(u_xlat7.xz);
  u_xlatu7 = vec3u(x_1820.x, u_xlatu7.y, x_1820.y);
  u_xlatu10 = vec4u(vec2u(x_98.x_FPParams1.zw).xy, u_xlatu10.zw);
  u_xlati59 = ((bitcast<i32>(u_xlatu7.z) * bitcast<i32>(u_xlatu10.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu59 = (u_xlatu10.y * bitcast<u32>(u_xlati59));
  u_xlat2.x = dot(-(u_xlat2.xyz), u_xlat8.xyz);
  u_xlat29 = log2(u_xlat2.x);
  if (u_xlatb1) {
    x_1863 = u_xlat29;
  } else {
    x_1863 = u_xlat2.x;
  }
  u_xlat1.x = x_1863;
  u_xlat1.x = ((u_xlat1.x * x_98.x_FPParams0.x) + x_98.x_FPParams0.y);
  u_xlatu1 = u32(u_xlat1.x);
  u_xlatu2 = u32(x_98.x_FPParams2.x);
  u_xlatu2 = (u_xlatu2 + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu10.y) + 2i);
  u_xlatu1 = min(u_xlatu1, u_xlatu2);
  u_xlatu2 = (bitcast<u32>(u_xlati29) * u_xlatu1);
  u_xlatu29 = ((vec2u(u_xlatu1) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu1 = (u_xlatu29.x >> 2u);
  param = bitcast<i32>(u_xlatu29.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_1926 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu29.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_1933 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_1935 = vec2i(x_1926, x_1933);
  u_xlati7 = vec3i(x_1935.x, u_xlati7.y, x_1935.y);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_1947.urp_ZBins[bitcast<i32>(u_xlatu1)].wy)));
  u_xlati62 = ~(u_xlati7.xz);
  u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati62.xx) & bitcast<vec2u>(x_1947.urp_ZBins[bitcast<i32>(u_xlatu1)].zx))).xy, u_xlati10.zw);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8) | bitcast<vec2u>(u_xlati10.xy)));
  u_xlati1 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati29 = bitcast<i32>((bitcast<u32>(u_xlati62.y) & bitcast<u32>(u_xlati8.y)));
  u_xlatu1 = (bitcast<u32>(u_xlati1) | bitcast<u32>(u_xlati29));
  let x_2008 = vec2u(x_98.x_FPParams0.zw);
  u_xlatu7 = vec3u(x_2008.x, u_xlatu7.y, x_2008.y);
  u_xlatb8 = ((vec4f() < u_xlat9.xyzx)).xyz;
  u_xlatu10.x = u_xlatu59;
  u_xlatu10.y = u_xlatu29.y;
  u_xlati64 = 0i;
  u_xlatu91 = u_xlatu1;
  u_xlat11.x = 0.0f;
  u_xlat11.y = 0.0f;
  u_xlat11.z = 0.0f;
  u_xlat29 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu89 = (u_xlatu91 >> 16u);
    u_xlati90 = u_xlati64;
    u_xlatu92 = u_xlatu91;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb12.x = (u_xlati90 == 0i);
      u_xlatu39.x = (u_xlatu92 & 65535u);
      u_xlatb39 = (u_xlatu89 >= u_xlatu39.x);
      u_xlatb12.x = (u_xlatb39 & u_xlatb12.x);
      if (!(u_xlatb12.x)) {
        break;
      }
      param_6 = u_xlatu92;
      param_7 = 5i;
      param_8 = 11i;
      let x_2078 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu12 = x_2078;
      u_xlatu13 = (u_xlatu10.xxyy + vec4u(u_xlatu12));
      u_xlatu39 = (u_xlatu13.yw >> x_2087);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2096 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2103 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2110 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2117 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_2096, x_2103, x_2110, x_2117);
      u_xlati14 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2126.urp_Tiles[bitcast<i32>(u_xlatu39.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      let x_2151 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2126.urp_Tiles[bitcast<i32>(u_xlatu39.x)].zx)));
      u_xlati39 = vec3i(x_2151.x, u_xlati39.y, x_2151.y);
      let x_2160 = bitcast<vec2i>((bitcast<vec2u>(u_xlati39.xz) | bitcast<vec2u>(u_xlati14)));
      u_xlati39 = vec3i(x_2160.x, u_xlati39.y, x_2160.y);
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati39.x)));
      u_xlati93 = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati39.z)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati93) | bitcast<u32>(u_xlati39.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_1947.urp_ZBins[bitcast<i32>(u_xlatu39.y)].wy))).xy, u_xlati13.zw);
      u_xlati66 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_1947.urp_ZBins[bitcast<i32>(u_xlatu39.y)].zx)));
      u_xlati66 = bitcast<vec2i>((bitcast<vec2u>(u_xlati66) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati66.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati66.x)));
      u_xlati93 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati66.y)));
      u_xlati66.x = bitcast<i32>((bitcast<u32>(u_xlati93) | bitcast<u32>(u_xlati66.x)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati66.x) & bitcast<u32>(u_xlati39.x)));
      u_xlati66.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu92) & 31i)));
      u_xlati39.x = bitcast<i32>((bitcast<u32>(u_xlati66.x) & bitcast<u32>(u_xlati39.x)));
      u_xlati12.x = (bitcast<i32>(u_xlatu12) << bitcast<u32>(5i));
      u_xlatu12 = (u_xlatu89 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati12.x)))));
      u_xlatu12 = min(u_xlatu12, 31u);
      u_xlatu12 = (bitcast<u32>(-(bitcast<i32>(u_xlatu12))) + 31u);
      u_xlatu12 = (4294967295u >> (u_xlatu12 & 31u));
      u_xlati90 = bitcast<i32>((u_xlatu12 & bitcast<u32>(u_xlati39.x)));
      u_xlati12.x = (bitcast<i32>(u_xlatu92) + 32i);
      u_xlatu92 = (bitcast<u32>(u_xlati12.x) & 4294967264u);
    }
    u_xlatu91 = u_xlatu92;
    u_xlatb89 = (u_xlati90 != 0i);
    u_xlatb12.x = (u_xlat29 < 0.99000000953674316406f);
    u_xlatb89 = (u_xlatb89 & u_xlatb12.x);
    if (!(u_xlatb89)) {
      break;
    }
    u_xlati89 = (0i - u_xlati90);
    u_xlatu89 = (bitcast<u32>(u_xlati89) & bitcast<u32>(u_xlati90));
    u_xlat89 = f32(u_xlatu89);
    u_xlatu89 = (bitcast<u32>(u_xlat89) >> 23u);
    u_xlati89 = (bitcast<i32>(u_xlatu89) + -127i);
    u_xlati12.x = (1i << bitcast<u32>((u_xlati89 & 31i)));
    u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati90) ^ bitcast<u32>(u_xlati12.x)));
    u_xlati12.x = (bitcast<i32>(u_xlatu91) + -32i);
    u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.x) & 65504u));
    u_xlati89 = (u_xlati89 + u_xlati12.x);
    u_xlati89 = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati89);
    u_xlat12 = vec4f(((vs_TEXCOORD0 + -(x_2384.urp_ReflProbes_BoxMin[u_xlati89].xyz))).xyz, u_xlat12.w);
    u_xlat13 = vec4f(((-(vs_TEXCOORD0) + x_2384.urp_ReflProbes_BoxMax[u_xlati89].xyz)).xyz, u_xlat13.w);
    u_xlat12 = vec4f(min(u_xlat12.xyz, u_xlat13.xyz).xyz, u_xlat12.w);
    u_xlat12 = vec4f(((u_xlat12.xyz / x_2384.urp_ReflProbes_BoxMax[u_xlati89].www)).xyz, u_xlat12.w);
    u_xlat39.x = min(u_xlat12.z, u_xlat12.y);
    u_xlat12.x = min(u_xlat39.x, u_xlat12.x);
    u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
    u_xlat39.x = (-(u_xlat29) + 1.0f);
    u_xlat12.x = min(u_xlat39.x, u_xlat12.x);
    u_xlatb39 = (0.0f < x_2384.urp_ReflProbes_ProbePosition[u_xlati89].w);
    if (u_xlatb8.x) {
      x_2451 = x_2384.urp_ReflProbes_BoxMax[u_xlati89].x;
    } else {
      x_2451 = x_2384.urp_ReflProbes_BoxMin[u_xlati89].x;
    }
    u_xlat13.x = x_2451;
    if (u_xlatb8.y) {
      x_2465 = x_2384.urp_ReflProbes_BoxMax[u_xlati89].y;
    } else {
      x_2465 = x_2384.urp_ReflProbes_BoxMin[u_xlati89].y;
    }
    u_xlat13.y = x_2465;
    if (u_xlatb8.z) {
      x_2479 = x_2384.urp_ReflProbes_BoxMax[u_xlati89].z;
    } else {
      x_2479 = x_2384.urp_ReflProbes_BoxMin[u_xlati89].z;
    }
    u_xlat13.z = x_2479;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xyz)).xyz, u_xlat13.w);
    u_xlat66.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat66.x = min(u_xlat13.z, u_xlat66.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_2384.urp_ReflProbes_ProbePosition[u_xlati89].xyz))).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((u_xlat9.xyz * u_xlat66.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
    if (u_xlatb39) {
      x_2537 = u_xlat13.xyz;
    } else {
      x_2537 = u_xlat9.xyz;
    }
    u_xlat39 = x_2537;
    u_xlatu13.x = u32(abs(x_2384.urp_ReflProbes_ProbePosition[u_xlati89].w));
    u_xlatu13.x = (u_xlatu13.x + 4294967295u);
    u_xlat13.x = f32(u_xlatu13.x);
    u_xlat13.x = min(u_xlat81, u_xlat13.x);
    u_xlat40.x = dot(abs(u_xlat39), vec3f(1.0f));
    u_xlat40.x = max(u_xlat40.x, 0.00000099999999747524f);
    u_xlat40.x = (1.0f / u_xlat40.x);
    u_xlat14 = vec4f(((u_xlat39.zxy * u_xlat40.xxx)).xyz, u_xlat14.w);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb67 = ((u_xlat14.yzyz >= vec4f())).xy;
    if (u_xlatb67.x) {
      x_2605 = u_xlat14.x;
    } else {
      x_2605 = -(u_xlat14.x);
    }
    u_xlat67.x = x_2605;
    if (u_xlatb67.y) {
      x_2618 = u_xlat14.x;
    } else {
      x_2618 = -(u_xlat14.x);
    }
    u_xlat67.y = x_2618;
    u_xlat39 = vec3f((((u_xlat39.xy * u_xlat40.xx) + u_xlat67)).xy, u_xlat39.z);
    u_xlat39 = vec3f((((u_xlat39.xy * x_539) + x_539)).xy, u_xlat39.z);
    u_xlat39 = vec3f(clamp(u_xlat39.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat39.z);
    u_xlat93 = floor(u_xlat13.x);
    u_xlat40.x = (u_xlat93 + 1.0f);
    u_xlat13.x = (-(u_xlat93) + u_xlat13.x);
    u_xlatu93 = u32(u_xlat93);
    u_xlati93 = ((u_xlati89 * 7i) + bitcast<i32>(u_xlatu93));
    u_xlatu40 = u32(u_xlat40.x);
    u_xlati89 = ((u_xlati89 * 7i) + bitcast<i32>(u_xlatu40));
    u_xlat40 = vec3f((((u_xlat39.xy * x_2384.urp_ReflProbes_MipScaleOffset[u_xlati93].xy) + x_2384.urp_ReflProbes_MipScaleOffset[u_xlati93].zw)).xy, u_xlat40.z);
    u_xlat40 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat40.xy, 0.0f).xyz;
    u_xlat39 = vec3f((((u_xlat39.xy * x_2384.urp_ReflProbes_MipScaleOffset[u_xlati89].xy) + x_2384.urp_ReflProbes_MipScaleOffset[u_xlati89].zw)).xy, u_xlat39.z);
    u_xlat39 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat39.xy, 0.0f).xyz;
    u_xlat39 = (-(u_xlat40) + u_xlat39);
    u_xlat39 = ((u_xlat13.xxx * u_xlat39) + u_xlat40);
    u_xlat11 = vec4f((((u_xlat12.xxx * u_xlat39) + u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat29 = (u_xlat29 + u_xlat12.x);
  }
  u_xlatb1 = (u_xlat29 < 0.99000000953674316406f);
  if (u_xlatb1) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xyz, u_xlat81);
    u_xlat81 = (-(u_xlat29) + 1.0f);
    u_xlat1.x = (u_xlat8.w + -1.0f);
    u_xlat1.x = ((x_98.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_98.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_98.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat1.xxx)).xyz, u_xlat8.w);
    u_xlat11 = vec4f((((vec3f(u_xlat81) * u_xlat8.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
  }
  u_xlat8 = vec4f((((vec2f(u_xlat86) * vec2f(u_xlat86)) + vec2f(-1.0f, 1.0f))).xy, u_xlat8.zw);
  u_xlat81 = (1.0f / u_xlat8.y);
  u_xlat1.x = (u_xlat34 + -0.03999999910593032837f);
  u_xlat1.x = ((u_xlat84 * u_xlat1.x) + 0.03999999910593032837f);
  u_xlat81 = (u_xlat81 * u_xlat1.x);
  u_xlat35 = (vec3f(u_xlat81) * u_xlat11.xyz);
  u_xlat6 = ((u_xlat6 * u_xlat4.xzw) + u_xlat35);
  u_xlati81 = bitcast<i32>((x_98.x_MainLightLayerMask & bitcast<u32>(x_256.unity_RenderingLayer.x)));
  u_xlat1.x = dot(u_xlat0.xyz, x_98.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat5.x);
  u_xlat35 = (u_xlat1.xxx * x_98.x_MainLightColor.xyz);
  u_xlat1 = vec4f((((u_xlat28 * vec3f(u_xlat83)) + x_98.x_MainLightPosition.xyz)).xyz, u_xlat1.w);
  u_xlat82 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat82 = max(u_xlat82, 1.17549435e-38f);
  u_xlat82 = inverseSqrt(u_xlat82);
  u_xlat1 = vec4f(((vec3f(u_xlat82) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.w = dot(u_xlat0.xyz, u_xlat1.xyz);
  u_xlat1.w = clamp(u_xlat1.w, 0.0f, 1.0f);
  u_xlat1.x = dot(x_98.x_MainLightPosition.xyz, u_xlat1.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xw * u_xlat1.xw)).xy, u_xlat1.zw);
  u_xlat28.x = ((u_xlat1.y * u_xlat8.x) + 1.00001001358032226562f);
  u_xlat28.x = (u_xlat28.x * u_xlat28.x);
  u_xlat1.x = max(u_xlat1.x, 0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * u_xlat28.x);
  u_xlat1.x = (u_xlat88 * u_xlat1.x);
  u_xlat1.x = (u_xlat87 / u_xlat1.x);
  u_xlat1 = vec4f((((u_xlat1.xxx * x_2987) + u_xlat4.xzw)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat35 * u_xlat1.xyz)).xyz, u_xlat1.w);
  if ((u_xlati81 != 0i)) {
    x_3002 = u_xlat1.xyz;
  } else {
    x_3002 = vec3f();
  }
  u_xlat1 = vec4f(x_3002.xyz, u_xlat1.w);
  u_xlatu81 = min(u_xlatu7.z, 32u);
  u_xlat82 = ((u_xlat32 * x_209.x_AdditionalShadowFadeParams.x) + x_209.x_AdditionalShadowFadeParams.y);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu81)) {
    } else {
      break;
    }
    u_xlat35 = ((-(vs_TEXCOORD0) * x_3048.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3048.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat83 = dot(u_xlat35, u_xlat35);
    u_xlat83 = max(u_xlat83, 0.00006103515625f);
    u_xlat84 = inverseSqrt(u_xlat83);
    u_xlat9 = vec4f(((vec3f(u_xlat84) * u_xlat35)).xyz, u_xlat9.w);
    u_xlat7.x = (1.0f / u_xlat83);
    u_xlat83 = (u_xlat83 * x_3048.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat83 = ((-(u_xlat83) * u_xlat83) + 1.0f);
    u_xlat83 = max(u_xlat83, 0.0f);
    u_xlat83 = (u_xlat83 * u_xlat83);
    u_xlat83 = (u_xlat83 * u_xlat7.x);
    u_xlat7.x = dot(x_3048.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9.xyz);
    u_xlat7.x = ((u_xlat7.x * x_3048.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3048.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat83 = (u_xlat83 * u_xlat7.x);
    u_xlatb7 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati34 = i32(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati7.x = select(u_xlati34, -1i, u_xlatb7);
    u_xlatb34 = (u_xlati7.x >= 0i);
    if (u_xlatb34) {
      u_xlatb34 = any(!((vec4f() == vec4f(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb34) {
        u_xlatb10 = vec4<bool>(((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz.xyz, u_xlatb10.w);
        u_xlatb34 = (u_xlatb10.y & u_xlatb10.x);
        let x_3186 = ((-(u_xlat9.zyzx) < vec4f())).xyw;
        u_xlatb10 = vec4<bool>(x_3186.xy, u_xlatb10.z, x_3186.z);
        u_xlat10.x = select(4.0f, 5.0f, u_xlatb10.x);
        u_xlat10.y = select(2.0f, 3.0f, u_xlatb10.y);
        u_xlat90 = select(0.0f, 1.0f, u_xlatb10.w);
        if (u_xlatb10.z) {
          x_3205 = u_xlat10.y;
        } else {
          x_3205 = u_xlat90;
        }
        u_xlat90 = x_3205;
        if (u_xlatb34) {
          x_3214 = u_xlat10.x;
        } else {
          x_3214 = u_xlat90;
        }
        u_xlat34 = x_3214;
        u_xlati34 = i32(u_xlat34);
        u_xlati7.x = (u_xlati34 + u_xlati7.x);
      }
      u_xlati7.x = (u_xlati7.x << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 1i)]);
      u_xlat10 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati7.x] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      u_xlatb7 = (0.0f < x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb7) {
        u_xlatb7 = (1.0f == x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb7) {
          u_xlat11 = (u_xlat10.xyxy + x_209.x_AdditionalShadowOffset0);
          let x_3298 = u_xlat11.xy;
          txVec30 = vec3f(x_3298.x, x_3298.y, u_xlat10.z);
          u_xlat12.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_3314 = u_xlat11.zw;
          txVec31 = vec3f(x_3314.x, x_3314.y, u_xlat10.z);
          u_xlat12.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat11 = (u_xlat10.xyxy + x_209.x_AdditionalShadowOffset1);
          let x_3334 = u_xlat11.xy;
          txVec32 = vec3f(x_3334.x, x_3334.y, u_xlat10.z);
          u_xlat12.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_3349 = u_xlat11.zw;
          txVec33 = vec3f(x_3349.x, x_3349.y, u_xlat10.z);
          u_xlat12.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat7.x = dot(u_xlat12, x_520);
        } else {
          u_xlatb34 = (2.0f == x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb34) {
            u_xlat11 = vec4f((((u_xlat10.xy * x_209.x_AdditionalShadowmapSize.zw) + x_539)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_209.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_563);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_3409 = (u_xlat13.yw * x_575);
            u_xlat12 = vec4f(x_3409.x, u_xlat12.y, x_3409.y, u_xlat12.w);
            u_xlat13 = vec4f((((u_xlat13.xz * x_539) + -(u_xlat65))).xy, u_xlat13.zw);
            u_xlat67 = (-(u_xlat65) + x_333);
            u_xlat14 = vec4f(min(u_xlat65, vec2f()).xy, u_xlat14.zw);
            u_xlat14 = vec4f((((-(u_xlat14.xy) * u_xlat14.xy) + u_xlat67)).xy, u_xlat14.zw);
            u_xlat65 = max(u_xlat65, vec2f());
            u_xlat65 = ((-(u_xlat65) * u_xlat65) + u_xlat12.yw);
            u_xlat14 = vec4f(((u_xlat14.xy + x_333)).xy, u_xlat14.zw);
            u_xlat65 = (u_xlat65 + x_333);
            u_xlat15 = vec4f(((u_xlat13.xy * x_631)).xy, u_xlat15.zw);
            u_xlat13 = vec4f(((u_xlat67 * x_631)).xy, u_xlat13.zw);
            u_xlat14 = vec4f(((u_xlat14.xy * x_631)).xy, u_xlat14.zw);
            u_xlat16 = vec4f(((u_xlat65 * x_631)).xy, u_xlat16.zw);
            u_xlat65 = (u_xlat12.yw * x_631);
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
            u_xlat13 = vec4f(((u_xlat13.xyz + x_704)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat16.zyw / u_xlat12.xyz)).xyz, u_xlat14.w);
            u_xlat14 = vec4f(((u_xlat14.xyz + x_704)).xyz, u_xlat14.w);
            u_xlat13 = vec4f(((u_xlat13.yxz * x_209.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat14.xyz * x_209.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat14.w);
            u_xlat13.w = u_xlat14.x;
            u_xlat15 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat13.ywxw);
            u_xlat65 = ((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat13.zw);
            u_xlat14.w = u_xlat13.y;
            let x_3575 = u_xlat14.yz;
            u_xlat13 = vec4f(u_xlat13.x, x_3575.x, u_xlat13.z, x_3575.y);
            u_xlat16 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyzy);
            u_xlat14 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat14.wywz);
            u_xlat13 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xwzw);
            u_xlat18 = (u_xlat12.xxxy * u_xlat17.zwyz);
            u_xlat19 = (u_xlat12.yyzz * u_xlat17);
            u_xlat34 = (u_xlat12.z * u_xlat17.y);
            let x_3621 = u_xlat15.xy;
            txVec34 = vec3f(x_3621.x, x_3621.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_3635 = u_xlat15.zw;
            txVec35 = vec3f(x_3635.x, x_3635.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat91 = (u_xlat91 * u_xlat18.y);
            u_xlat90 = ((u_xlat18.x * u_xlat90) + u_xlat91);
            txVec36 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat90 = ((u_xlat18.z * u_xlat91) + u_xlat90);
            let x_3679 = u_xlat14.xy;
            txVec37 = vec3f(x_3679.x, x_3679.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat90 = ((u_xlat18.w * u_xlat91) + u_xlat90);
            let x_3699 = u_xlat16.xy;
            txVec38 = vec3f(x_3699.x, x_3699.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat90 = ((u_xlat19.x * u_xlat91) + u_xlat90);
            let x_3719 = u_xlat16.zw;
            txVec39 = vec3f(x_3719.x, x_3719.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat90 = ((u_xlat19.y * u_xlat91) + u_xlat90);
            let x_3739 = u_xlat14.zw;
            txVec40 = vec3f(x_3739.x, x_3739.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat90 = ((u_xlat19.z * u_xlat91) + u_xlat90);
            let x_3759 = u_xlat13.xy;
            txVec41 = vec3f(x_3759.x, x_3759.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat90 = ((u_xlat19.w * u_xlat91) + u_xlat90);
            let x_3779 = u_xlat13.zw;
            txVec42 = vec3f(x_3779.x, x_3779.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat7.x = ((u_xlat34 * u_xlat91) + u_xlat90);
          } else {
            u_xlat11 = vec4f((((u_xlat10.xy * x_209.x_AdditionalShadowmapSize.zw) + x_539)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_209.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_563);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_3832 = (u_xlat13.yw * x_1030);
            u_xlat14 = vec4f(u_xlat14.x, x_3832.x, u_xlat14.z, x_3832.y);
            let x_3840 = ((u_xlat13.xz * x_539) + -(u_xlat65));
            u_xlat12 = vec4f(x_3840.x, u_xlat12.y, x_3840.y, u_xlat12.w);
            u_xlat13 = vec4f(((-(u_xlat65) + x_333)).xy, u_xlat13.zw);
            u_xlat67 = min(u_xlat65, vec2f());
            u_xlat13 = vec4f((((-(u_xlat67) * u_xlat67) + u_xlat13.xy)).xy, u_xlat13.zw);
            u_xlat67 = max(u_xlat65, vec2f());
            let x_3867 = ((-(u_xlat67) * u_xlat67) + u_xlat12.yw);
            u_xlat39 = vec3f(x_3867.x, u_xlat39.y, x_3867.y);
            u_xlat13 = vec4f(((u_xlat13.xy + x_3872)).xy, u_xlat13.zw);
            let x_3878 = (u_xlat39.xz + x_3872);
            u_xlat12 = vec4f(u_xlat12.x, x_3878.x, u_xlat12.z, x_3878.y);
            u_xlat15.z = (u_xlat12.y * 0.08163200318813323975f);
            u_xlat16 = vec4f(((u_xlat12.zxw * x_3887)).xyz, u_xlat16.w);
            u_xlat12 = vec4f(((u_xlat13.xy * x_1089)).xy, u_xlat12.zw);
            u_xlat15.x = u_xlat16.y;
            let x_3902 = ((u_xlat65.xx * x_1106) + x_1109);
            u_xlat15 = vec4f(u_xlat15.x, x_3902.x, u_xlat15.z, x_3902.y);
            let x_3908 = ((u_xlat65.xx * x_1106) + x_1116);
            u_xlat13 = vec4f(x_3908.x, u_xlat13.y, x_3908.y, u_xlat13.w);
            u_xlat13.y = u_xlat12.x;
            u_xlat13.w = u_xlat14.y;
            u_xlat15 = (u_xlat13 + u_xlat15);
            let x_3923 = ((u_xlat65.yy * x_1106) + x_1109);
            u_xlat16 = vec4f(u_xlat16.x, x_3923.x, u_xlat16.z, x_3923.y);
            let x_3929 = ((u_xlat65.yy * x_1106) + x_1116);
            u_xlat14 = vec4f(x_3929.x, u_xlat14.y, x_3929.y, u_xlat14.w);
            u_xlat14.y = u_xlat12.y;
            u_xlat12 = (u_xlat14 + u_xlat16);
            u_xlat13 = (u_xlat13 / u_xlat15);
            u_xlat13 = (u_xlat13 + x_1154);
            u_xlat14 = (u_xlat14 / u_xlat12);
            u_xlat14 = (u_xlat14 + x_1154);
            u_xlat13 = (u_xlat13.wxyz * x_209.x_AdditionalShadowmapSize.xxxx);
            u_xlat14 = (u_xlat14.xwyz * x_209.x_AdditionalShadowmapSize.yyyy);
            let x_3961 = u_xlat13.yzw;
            u_xlat16 = vec4f(x_3961.x, u_xlat16.y, x_3961.yz);
            u_xlat16.y = u_xlat14.x;
            u_xlat17 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat65 = ((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat13.y = u_xlat16.y;
            u_xlat16.y = u_xlat14.z;
            u_xlat18 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat19 = vec4f((((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat19.zw);
            u_xlat13.z = u_xlat16.y;
            u_xlat20 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyxz);
            u_xlat16.y = u_xlat14.w;
            u_xlat21 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat40 = vec3f((((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat40.z);
            u_xlat13.w = u_xlat16.y;
            u_xlat73 = ((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat13.xw);
            let x_4060 = u_xlat16.xzw;
            u_xlat14 = vec4f(x_4060.x, u_xlat14.y, x_4060.yz);
            u_xlat16 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xyzy);
            u_xlat68 = ((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat14.wy);
            u_xlat14.x = u_xlat13.x;
            u_xlat11 = vec4f((((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat14.xy)).xy, u_xlat11.zw);
            u_xlat22 = (u_xlat12.xxxx * u_xlat15);
            u_xlat23 = (u_xlat12.yyyy * u_xlat15);
            u_xlat24 = (u_xlat12.zzzz * u_xlat15);
            u_xlat12 = (u_xlat12.wwww * u_xlat15);
            let x_4116 = u_xlat17.xy;
            txVec43 = vec3f(x_4116.x, x_4116.y, u_xlat10.z);
            u_xlat34 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_4130 = u_xlat17.zw;
            txVec44 = vec3f(x_4130.x, x_4130.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat90 = (u_xlat90 * u_xlat22.y);
            u_xlat34 = ((u_xlat22.x * u_xlat34) + u_xlat90);
            txVec45 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat34 = ((u_xlat22.z * u_xlat90) + u_xlat34);
            let x_4173 = u_xlat20.xy;
            txVec46 = vec3f(x_4173.x, x_4173.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat34 = ((u_xlat22.w * u_xlat90) + u_xlat34);
            let x_4193 = u_xlat18.xy;
            txVec47 = vec3f(x_4193.x, x_4193.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat34 = ((u_xlat23.x * u_xlat90) + u_xlat34);
            let x_4213 = u_xlat18.zw;
            txVec48 = vec3f(x_4213.x, x_4213.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat34 = ((u_xlat23.y * u_xlat90) + u_xlat34);
            let x_4233 = u_xlat19.xy;
            txVec49 = vec3f(x_4233.x, x_4233.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat34 = ((u_xlat23.z * u_xlat90) + u_xlat34);
            let x_4253 = u_xlat20.zw;
            txVec50 = vec3f(x_4253.x, x_4253.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat34 = ((u_xlat23.w * u_xlat90) + u_xlat34);
            let x_4273 = u_xlat21.xy;
            txVec51 = vec3f(x_4273.x, x_4273.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat34 = ((u_xlat24.x * u_xlat90) + u_xlat34);
            let x_4293 = u_xlat21.zw;
            txVec52 = vec3f(x_4293.x, x_4293.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat34 = ((u_xlat24.y * u_xlat90) + u_xlat34);
            let x_4313 = u_xlat40.xy;
            txVec53 = vec3f(x_4313.x, x_4313.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat34 = ((u_xlat24.z * u_xlat90) + u_xlat34);
            txVec54 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat34 = ((u_xlat24.w * u_xlat90) + u_xlat34);
            let x_4352 = u_xlat16.xy;
            txVec55 = vec3f(x_4352.x, x_4352.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat34 = ((u_xlat12.x * u_xlat90) + u_xlat34);
            let x_4372 = u_xlat16.zw;
            txVec56 = vec3f(x_4372.x, x_4372.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat34 = ((u_xlat12.y * u_xlat90) + u_xlat34);
            txVec57 = vec3f(u_xlat68.x, u_xlat68.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat34 = ((u_xlat12.z * u_xlat90) + u_xlat34);
            let x_4411 = u_xlat11.xy;
            txVec58 = vec3f(x_4411.x, x_4411.y, u_xlat10.z);
            u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat7.x = ((u_xlat12.w * u_xlat90) + u_xlat34);
          }
        }
      } else {
        let x_4433 = u_xlat10.xy;
        txVec59 = vec3f(x_4433.x, x_4433.y, u_xlat10.z);
        u_xlat7.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat34 = (1.0f + -(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat7.x = ((u_xlat7.x * x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat34);
      u_xlatb34 = (0.0f >= u_xlat10.z);
      u_xlatb90 = (u_xlat10.z >= 1.0f);
      u_xlatb34 = (u_xlatb34 | u_xlatb90);
      if (u_xlatb34) {
        x_4473 = 1.0f;
      } else {
        x_4473 = u_xlat7.x;
      }
      u_xlat7.x = x_4473;
    } else {
      u_xlat7.x = 1.0f;
    }
    u_xlat34 = (-(u_xlat7.x) + 1.0f);
    u_xlat7.x = ((u_xlat82 * u_xlat34) + u_xlat7.x);
    u_xlati34 = bitcast<i32>((bitcast<u32>(x_256.unity_RenderingLayer.x) & bitcast<u32>(x_3048.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat83 = (u_xlat83 * u_xlat7.x);
    u_xlat7.x = dot(u_xlat0.xyz, u_xlat9.xyz);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat83 = (u_xlat83 * u_xlat7.x);
    u_xlat10 = vec4f(((vec3f(u_xlat83) * x_3048.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlat35 = ((u_xlat35 * vec3f(u_xlat84)) + u_xlat3);
    u_xlat83 = dot(u_xlat35, u_xlat35);
    u_xlat83 = max(u_xlat83, 1.17549435e-38f);
    u_xlat83 = inverseSqrt(u_xlat83);
    u_xlat35 = (vec3f(u_xlat83) * u_xlat35);
    u_xlat83 = dot(u_xlat0.xyz, u_xlat35);
    u_xlat83 = clamp(u_xlat83, 0.0f, 1.0f);
    u_xlat84 = dot(u_xlat9.xyz, u_xlat35);
    u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
    u_xlat83 = (u_xlat83 * u_xlat83);
    u_xlat83 = ((u_xlat83 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat83 = (u_xlat83 * u_xlat83);
    u_xlat84 = max(u_xlat84, 0.10000000149011611938f);
    u_xlat83 = (u_xlat83 * u_xlat84);
    u_xlat83 = (u_xlat88 * u_xlat83);
    u_xlat83 = (u_xlat87 / u_xlat83);
    u_xlat35 = ((vec3f(u_xlat83) * x_2987) + u_xlat4.xzw);
    u_xlat35 = ((u_xlat35 * u_xlat10.xyz) + u_xlat5.xyw);
    if ((u_xlati34 != 0i)) {
      x_4601 = u_xlat35;
    } else {
      x_4601 = u_xlat5.xyw;
    }
    u_xlat5 = vec4f(x_4601.xy, u_xlat5.z, x_4601.z);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu81 = (u_xlatu2 >> 2u);
  param_21 = bitcast<i32>(u_xlatu2);
  param_22 = 0i;
  param_23 = 1i;
  let x_4621 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu2);
  param_25 = 1i;
  param_26 = 1i;
  let x_4627 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati2 = vec4i(vec2i(x_4621, x_4627).xy, u_xlati2.zw);
  u_xlati7 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_1947.urp_ZBins[bitcast<i32>(u_xlatu81)].wy))).xy, u_xlati7.z);
  let x_4646 = ~(u_xlati2.xy);
  u_xlati2 = vec4i(x_4646.x, u_xlati2.yz, x_4646.y);
  u_xlati35 = bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_1947.urp_ZBins[bitcast<i32>(u_xlatu81)].zx)));
  u_xlati7 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xy) | bitcast<vec2u>(u_xlati35))).xy, u_xlati7.z);
  u_xlati81 = bitcast<i32>((bitcast<u32>(u_xlati2.y) & bitcast<u32>(u_xlati7.x)));
  u_xlati2.x = bitcast<i32>((bitcast<u32>(u_xlati2.w) & bitcast<u32>(u_xlati7.y)));
  u_xlatu81 = (bitcast<u32>(u_xlati81) | bitcast<u32>(u_xlati2.x));
  u_xlatu9.x = u_xlatu59;
  u_xlatu9.y = u_xlatu29.y;
  u_xlatu63.x = 0u;
  u_xlatu63.y = u_xlatu81;
  let x_4704 = u_xlat5.xyw;
  u_xlat2 = vec4f(x_4704.xy, u_xlat2.z, x_4704.z);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu84 = (u_xlatu63.y >> 16u);
    u_xlatu7 = vec3u(u_xlatu63.xy, u_xlatu7.z);
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb35 = (bitcast<i32>(u_xlatu7.x) == 0i);
      u_xlatu62.x = (u_xlatu7.y & 65535u);
      u_xlatb62 = (u_xlatu84 >= u_xlatu62.x);
      u_xlatb35 = (u_xlatb62 & u_xlatb35);
      if (!(u_xlatb35)) {
        break;
      }
      param_27 = u_xlatu7.y;
      param_28 = 5i;
      param_29 = 11i;
      let x_4752 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu35 = x_4752;
      u_xlatu10 = (vec4u(u_xlatu35) + u_xlatu9.xxyy);
      u_xlatu62 = (u_xlatu10.yw >> x_2087);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_4767 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_4774 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_4781 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_4788 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_4767, x_4774, x_4781, x_4788);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_2126.urp_Tiles[bitcast<i32>(u_xlatu62.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati65 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2126.urp_Tiles[bitcast<i32>(u_xlatu62.x)].zx)));
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati65) | bitcast<vec2u>(u_xlati11)));
      u_xlati62.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.y)));
      u_xlati62.x = bitcast<i32>((bitcast<u32>(u_xlati62.x) | bitcast<u32>(u_xlati10.x)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_1947.urp_ZBins[bitcast<i32>(u_xlatu62.y)].wy))).xy, u_xlati10.zw);
      u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_1947.urp_ZBins[bitcast<i32>(u_xlatu62.y)].zx)));
      u_xlati10 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xy) | bitcast<vec2u>(u_xlati11))).xy, u_xlati10.zw);
      u_xlati89 = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati10.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati10.y)));
      u_xlati89 = bitcast<i32>((bitcast<u32>(u_xlati89) | bitcast<u32>(u_xlati10.x)));
      u_xlati62.x = bitcast<i32>((bitcast<u32>(u_xlati89) & bitcast<u32>(u_xlati62.x)));
      u_xlati89 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu7.y) & 31i)));
      u_xlati62.x = bitcast<i32>((bitcast<u32>(u_xlati89) & bitcast<u32>(u_xlati62.x)));
      u_xlati35.x = (bitcast<i32>(u_xlatu35) << bitcast<u32>(5i));
      u_xlatu35 = (u_xlatu84 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati35.x)))));
      u_xlatu35 = min(u_xlatu35, 31u);
      u_xlatu35 = (bitcast<u32>(-(bitcast<i32>(u_xlatu35))) + 31u);
      u_xlatu35 = (4294967295u >> (u_xlatu35 & 31u));
      u_xlatu7.x = (u_xlatu35 & bitcast<u32>(u_xlati62.x));
      u_xlati35.x = (bitcast<i32>(u_xlatu7.y) + 32i);
      u_xlatu7.y = (bitcast<u32>(u_xlati35.x) & 4294967264u);
    }
    u_xlatu63.y = u_xlatu7.y;
    if ((u_xlatu7.x == 0u)) {
      break;
    }
    u_xlati84 = (0i - bitcast<i32>(u_xlatu7.x));
    u_xlatu84 = (bitcast<u32>(u_xlati84) & u_xlatu7.x);
    u_xlat84 = f32(u_xlatu84);
    u_xlatu84 = (bitcast<u32>(u_xlat84) >> 23u);
    u_xlati84 = (bitcast<i32>(u_xlatu84) + -127i);
    u_xlati35.x = (1i << bitcast<u32>((u_xlati84 & 31i)));
    u_xlatu63.x = (u_xlatu7.x ^ bitcast<u32>(u_xlati35.x));
    u_xlati35.x = (bitcast<i32>(u_xlatu63.y) + -32i);
    u_xlati35.x = bitcast<i32>((bitcast<u32>(u_xlati35.x) & 65504u));
    u_xlati84 = (u_xlati84 + u_xlati35.x);
    u_xlati84 = (bitcast<i32>(u_xlatu7.z) + u_xlati84);
    u_xlat35 = ((-(vs_TEXCOORD0) * x_3048.x_AdditionalLightsPosition[u_xlati84].www) + x_3048.x_AdditionalLightsPosition[u_xlati84].xyz);
    u_xlat10.x = dot(u_xlat35, u_xlat35);
    u_xlat10.x = max(u_xlat10.x, 0.00006103515625f);
    u_xlat37.x = inverseSqrt(u_xlat10.x);
    u_xlat11 = vec4f(((u_xlat35 * u_xlat37.xxx)).xyz, u_xlat11.w);
    u_xlat64 = (1.0f / u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * x_3048.x_AdditionalLightsAttenuation[u_xlati84].x);
    u_xlat10.x = ((-(u_xlat10.x) * u_xlat10.x) + 1.0f);
    u_xlat10.x = max(u_xlat10.x, 0.0f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * u_xlat64);
    u_xlat64 = dot(x_3048.x_AdditionalLightsSpotDir[u_xlati84].xyz, u_xlat11.xyz);
    u_xlat64 = ((u_xlat64 * x_3048.x_AdditionalLightsAttenuation[u_xlati84].z) + x_3048.x_AdditionalLightsAttenuation[u_xlati84].w);
    u_xlat64 = clamp(u_xlat64, 0.0f, 1.0f);
    u_xlat64 = (u_xlat64 * u_xlat64);
    u_xlat10.x = (u_xlat64 * u_xlat10.x);
    u_xlatb64 = (u_xlati84 < 0i);
    u_xlati91 = i32(x_209.x_AdditionalShadowParams[u_xlati84].w);
    u_xlati64 = select(u_xlati91, -1i, u_xlatb64);
    u_xlatb91 = (u_xlati64 >= 0i);
    if (u_xlatb91) {
      u_xlatb91 = any(!((vec4f() == vec4f(x_209.x_AdditionalShadowParams[u_xlati84].z))));
      if (u_xlatb91) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb91 = (u_xlatb12.y & u_xlatb12.x);
        let x_5158 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_5158.xy, u_xlatb12.z, x_5158.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat92 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_5175 = u_xlat12.y;
        } else {
          x_5175 = u_xlat92;
        }
        u_xlat92 = x_5175;
        if (u_xlatb91) {
          x_5184 = u_xlat12.x;
        } else {
          x_5184 = u_xlat92;
        }
        u_xlat91 = x_5184;
        u_xlati91 = i32(u_xlat91);
        u_xlati64 = (u_xlati91 + u_xlati64);
      }
      u_xlati64 = (u_xlati64 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati64 + 1i)]);
      u_xlat12 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati64] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati64 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati64 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      u_xlatb64 = (0.0f < x_209.x_AdditionalShadowParams[u_xlati84].y);
      if (u_xlatb64) {
        u_xlatb64 = (1.0f == x_209.x_AdditionalShadowParams[u_xlati84].y);
        if (u_xlatb64) {
          u_xlat13 = (u_xlat12.xyxy + x_209.x_AdditionalShadowOffset0);
          let x_5257 = u_xlat13.xy;
          txVec60 = vec3f(x_5257.x, x_5257.y, u_xlat12.z);
          u_xlat14.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_5272 = u_xlat13.zw;
          txVec61 = vec3f(x_5272.x, x_5272.y, u_xlat12.z);
          u_xlat14.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat13 = (u_xlat12.xyxy + x_209.x_AdditionalShadowOffset1);
          let x_5292 = u_xlat13.xy;
          txVec62 = vec3f(x_5292.x, x_5292.y, u_xlat12.z);
          u_xlat14.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_5307 = u_xlat13.zw;
          txVec63 = vec3f(x_5307.x, x_5307.y, u_xlat12.z);
          u_xlat14.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat64 = dot(u_xlat14, x_520);
        } else {
          u_xlatb91 = (2.0f == x_209.x_AdditionalShadowParams[u_xlati84].y);
          if (u_xlatb91) {
            u_xlat13 = vec4f((((u_xlat12.xy * x_209.x_AdditionalShadowmapSize.zw) + x_539)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_209.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_563);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_5364 = (u_xlat15.yw * x_575);
            u_xlat14 = vec4f(x_5364.x, u_xlat14.y, x_5364.y, u_xlat14.w);
            u_xlat15 = vec4f((((u_xlat15.xz * x_539) + -(u_xlat67))).xy, u_xlat15.zw);
            u_xlat69 = (-(u_xlat67) + x_333);
            u_xlat16 = vec4f(min(u_xlat67, vec2f()).xy, u_xlat16.zw);
            u_xlat16 = vec4f((((-(u_xlat16.xy) * u_xlat16.xy) + u_xlat69)).xy, u_xlat16.zw);
            u_xlat67 = max(u_xlat67, vec2f());
            u_xlat67 = ((-(u_xlat67) * u_xlat67) + u_xlat14.yw);
            u_xlat16 = vec4f(((u_xlat16.xy + x_333)).xy, u_xlat16.zw);
            u_xlat67 = (u_xlat67 + x_333);
            u_xlat17 = vec4f(((u_xlat15.xy * x_631)).xy, u_xlat17.zw);
            u_xlat15 = vec4f(((u_xlat69 * x_631)).xy, u_xlat15.zw);
            u_xlat16 = vec4f(((u_xlat16.xy * x_631)).xy, u_xlat16.zw);
            u_xlat18 = vec4f(((u_xlat67 * x_631)).xy, u_xlat18.zw);
            u_xlat67 = (u_xlat14.yw * x_631);
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
            u_xlat15 = vec4f(((u_xlat15.xyz + x_704)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat18.zyw / u_xlat14.xyz)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_704)).xyz, u_xlat16.w);
            u_xlat15 = vec4f(((u_xlat15.yxz * x_209.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xyz * x_209.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat16.w);
            u_xlat15.w = u_xlat16.x;
            u_xlat17 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat15.ywxw);
            u_xlat67 = ((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat15.zw);
            u_xlat16.w = u_xlat15.y;
            let x_5530 = u_xlat16.yz;
            u_xlat15 = vec4f(u_xlat15.x, x_5530.x, u_xlat15.z, x_5530.y);
            u_xlat18 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat16 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat16.wywz);
            u_xlat15 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xwzw);
            u_xlat20 = (u_xlat14.xxxy * u_xlat19.zwyz);
            u_xlat21 = (u_xlat14.yyzz * u_xlat19);
            u_xlat91 = (u_xlat14.z * u_xlat19.y);
            let x_5576 = u_xlat17.xy;
            txVec64 = vec3f(x_5576.x, x_5576.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_5590 = u_xlat17.zw;
            txVec65 = vec3f(x_5590.x, x_5590.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat93 = (u_xlat93 * u_xlat20.y);
            u_xlat92 = ((u_xlat20.x * u_xlat92) + u_xlat93);
            txVec66 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat92 = ((u_xlat20.z * u_xlat93) + u_xlat92);
            let x_5633 = u_xlat16.xy;
            txVec67 = vec3f(x_5633.x, x_5633.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat92 = ((u_xlat20.w * u_xlat93) + u_xlat92);
            let x_5653 = u_xlat18.xy;
            txVec68 = vec3f(x_5653.x, x_5653.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat92 = ((u_xlat21.x * u_xlat93) + u_xlat92);
            let x_5673 = u_xlat18.zw;
            txVec69 = vec3f(x_5673.x, x_5673.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat92 = ((u_xlat21.y * u_xlat93) + u_xlat92);
            let x_5693 = u_xlat16.zw;
            txVec70 = vec3f(x_5693.x, x_5693.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat92 = ((u_xlat21.z * u_xlat93) + u_xlat92);
            let x_5713 = u_xlat15.xy;
            txVec71 = vec3f(x_5713.x, x_5713.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat92 = ((u_xlat21.w * u_xlat93) + u_xlat92);
            let x_5733 = u_xlat15.zw;
            txVec72 = vec3f(x_5733.x, x_5733.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat64 = ((u_xlat91 * u_xlat93) + u_xlat92);
          } else {
            u_xlat13 = vec4f((((u_xlat12.xy * x_209.x_AdditionalShadowmapSize.zw) + x_539)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_209.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_563);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_5785 = (u_xlat15.yw * x_1030);
            u_xlat16 = vec4f(u_xlat16.x, x_5785.x, u_xlat16.z, x_5785.y);
            let x_5793 = ((u_xlat15.xz * x_539) + -(u_xlat67));
            u_xlat14 = vec4f(x_5793.x, u_xlat14.y, x_5793.y, u_xlat14.w);
            u_xlat15 = vec4f(((-(u_xlat67) + x_333)).xy, u_xlat15.zw);
            u_xlat69 = min(u_xlat67, vec2f());
            u_xlat15 = vec4f((((-(u_xlat69) * u_xlat69) + u_xlat15.xy)).xy, u_xlat15.zw);
            u_xlat69 = max(u_xlat67, vec2f());
            let x_5821 = ((-(u_xlat69) * u_xlat69) + u_xlat14.yw);
            u_xlat41 = vec3f(x_5821.x, u_xlat41.y, x_5821.y);
            u_xlat15 = vec4f(((u_xlat15.xy + x_3872)).xy, u_xlat15.zw);
            let x_5831 = (u_xlat41.xz + x_3872);
            u_xlat14 = vec4f(u_xlat14.x, x_5831.x, u_xlat14.z, x_5831.y);
            u_xlat17.z = (u_xlat14.y * 0.08163200318813323975f);
            u_xlat18 = vec4f(((u_xlat14.zxw * x_3887)).xyz, u_xlat18.w);
            u_xlat14 = vec4f(((u_xlat15.xy * x_1089)).xy, u_xlat14.zw);
            u_xlat17.x = u_xlat18.y;
            let x_5854 = ((u_xlat67.xx * x_1106) + x_1109);
            u_xlat17 = vec4f(u_xlat17.x, x_5854.x, u_xlat17.z, x_5854.y);
            let x_5860 = ((u_xlat67.xx * x_1106) + x_1116);
            u_xlat15 = vec4f(x_5860.x, u_xlat15.y, x_5860.y, u_xlat15.w);
            u_xlat15.y = u_xlat14.x;
            u_xlat15.w = u_xlat16.y;
            u_xlat17 = (u_xlat15 + u_xlat17);
            let x_5875 = ((u_xlat67.yy * x_1106) + x_1109);
            u_xlat18 = vec4f(u_xlat18.x, x_5875.x, u_xlat18.z, x_5875.y);
            let x_5881 = ((u_xlat67.yy * x_1106) + x_1116);
            u_xlat16 = vec4f(x_5881.x, u_xlat16.y, x_5881.y, u_xlat16.w);
            u_xlat16.y = u_xlat14.y;
            u_xlat14 = (u_xlat16 + u_xlat18);
            u_xlat15 = (u_xlat15 / u_xlat17);
            u_xlat15 = (u_xlat15 + x_1154);
            u_xlat16 = (u_xlat16 / u_xlat14);
            u_xlat16 = (u_xlat16 + x_1154);
            u_xlat15 = (u_xlat15.wxyz * x_209.x_AdditionalShadowmapSize.xxxx);
            u_xlat16 = (u_xlat16.xwyz * x_209.x_AdditionalShadowmapSize.yyyy);
            let x_5913 = u_xlat15.yzw;
            u_xlat18 = vec4f(x_5913.x, u_xlat18.y, x_5913.yz);
            u_xlat18.y = u_xlat16.x;
            u_xlat19 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat67 = ((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.y = u_xlat18.y;
            u_xlat18.y = u_xlat16.z;
            u_xlat20 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat21 = vec4f((((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat18.wy)).xy, u_xlat21.zw);
            u_xlat15.z = u_xlat18.y;
            u_xlat22 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyxz);
            u_xlat18.y = u_xlat16.w;
            u_xlat23 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat42 = ((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.w = u_xlat18.y;
            u_xlat75 = ((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat15.xw);
            let x_6011 = u_xlat18.xzw;
            u_xlat16 = vec4f(x_6011.x, u_xlat16.y, x_6011.yz);
            u_xlat18 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat70 = ((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat16.x = u_xlat15.x;
            u_xlat13 = vec4f((((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat16.xy)).xy, u_xlat13.zw);
            u_xlat24 = (u_xlat14.xxxx * u_xlat17);
            u_xlat25 = (u_xlat14.yyyy * u_xlat17);
            u_xlat26 = (u_xlat14.zzzz * u_xlat17);
            u_xlat14 = (u_xlat14.wwww * u_xlat17);
            let x_6067 = u_xlat19.xy;
            txVec73 = vec3f(x_6067.x, x_6067.y, u_xlat12.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_6081 = u_xlat19.zw;
            txVec74 = vec3f(x_6081.x, x_6081.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat92 = (u_xlat92 * u_xlat24.y);
            u_xlat91 = ((u_xlat24.x * u_xlat91) + u_xlat92);
            txVec75 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat91 = ((u_xlat24.z * u_xlat92) + u_xlat91);
            let x_6124 = u_xlat22.xy;
            txVec76 = vec3f(x_6124.x, x_6124.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat91 = ((u_xlat24.w * u_xlat92) + u_xlat91);
            let x_6144 = u_xlat20.xy;
            txVec77 = vec3f(x_6144.x, x_6144.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat91 = ((u_xlat25.x * u_xlat92) + u_xlat91);
            let x_6164 = u_xlat20.zw;
            txVec78 = vec3f(x_6164.x, x_6164.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat91 = ((u_xlat25.y * u_xlat92) + u_xlat91);
            let x_6184 = u_xlat21.xy;
            txVec79 = vec3f(x_6184.x, x_6184.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat91 = ((u_xlat25.z * u_xlat92) + u_xlat91);
            let x_6204 = u_xlat22.zw;
            txVec80 = vec3f(x_6204.x, x_6204.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat91 = ((u_xlat25.w * u_xlat92) + u_xlat91);
            let x_6224 = u_xlat23.xy;
            txVec81 = vec3f(x_6224.x, x_6224.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat91 = ((u_xlat26.x * u_xlat92) + u_xlat91);
            let x_6244 = u_xlat23.zw;
            txVec82 = vec3f(x_6244.x, x_6244.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat91 = ((u_xlat26.y * u_xlat92) + u_xlat91);
            txVec83 = vec3f(u_xlat42.x, u_xlat42.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat91 = ((u_xlat26.z * u_xlat92) + u_xlat91);
            txVec84 = vec3f(u_xlat75.x, u_xlat75.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat91 = ((u_xlat26.w * u_xlat92) + u_xlat91);
            let x_6302 = u_xlat18.xy;
            txVec85 = vec3f(x_6302.x, x_6302.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat91 = ((u_xlat14.x * u_xlat92) + u_xlat91);
            let x_6322 = u_xlat18.zw;
            txVec86 = vec3f(x_6322.x, x_6322.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat91 = ((u_xlat14.y * u_xlat92) + u_xlat91);
            txVec87 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat91 = ((u_xlat14.z * u_xlat92) + u_xlat91);
            let x_6361 = u_xlat13.xy;
            txVec88 = vec3f(x_6361.x, x_6361.y, u_xlat12.z);
            u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat64 = ((u_xlat14.w * u_xlat92) + u_xlat91);
          }
        }
      } else {
        let x_6382 = u_xlat12.xy;
        txVec89 = vec3f(x_6382.x, x_6382.y, u_xlat12.z);
        u_xlat64 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat91 = (1.0f + -(x_209.x_AdditionalShadowParams[u_xlati84].x));
      u_xlat64 = ((u_xlat64 * x_209.x_AdditionalShadowParams[u_xlati84].x) + u_xlat91);
      u_xlatb91 = (0.0f >= u_xlat12.z);
      u_xlatb92 = (u_xlat12.z >= 1.0f);
      u_xlatb91 = (u_xlatb91 | u_xlatb92);
      u_xlat64 = select(u_xlat64, 1.0f, u_xlatb91);
    } else {
      u_xlat64 = 1.0f;
    }
    u_xlat91 = (-(u_xlat64) + 1.0f);
    u_xlat64 = ((u_xlat82 * u_xlat91) + u_xlat64);
    u_xlati91 = bitcast<i32>((bitcast<u32>(x_256.unity_RenderingLayer.x) & bitcast<u32>(x_3048.x_AdditionalLightsLayerMasks[u_xlati84].el)));
    u_xlat10.x = (u_xlat64 * u_xlat10.x);
    u_xlat64 = dot(u_xlat0.xyz, u_xlat11.xyz);
    u_xlat64 = clamp(u_xlat64, 0.0f, 1.0f);
    u_xlat10.x = (u_xlat64 * u_xlat10.x);
    u_xlat12 = vec4f(((u_xlat10.xxx * x_3048.x_AdditionalLightsColor[u_xlati84].xyz)).xyz, u_xlat12.w);
    u_xlat35 = ((u_xlat35 * u_xlat37.xxx) + u_xlat3);
    u_xlat84 = dot(u_xlat35, u_xlat35);
    u_xlat84 = max(u_xlat84, 1.17549435e-38f);
    u_xlat84 = inverseSqrt(u_xlat84);
    u_xlat35 = (vec3f(u_xlat84) * u_xlat35);
    u_xlat84 = dot(u_xlat0.xyz, u_xlat35);
    u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
    u_xlat35.x = dot(u_xlat11.xyz, u_xlat35);
    u_xlat35.x = clamp(u_xlat35.x, 0.0f, 1.0f);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat84 = ((u_xlat84 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat35.x = (u_xlat35.x * u_xlat35.x);
    u_xlat84 = (u_xlat84 * u_xlat84);
    u_xlat35.x = max(u_xlat35.x, 0.10000000149011611938f);
    u_xlat84 = (u_xlat84 * u_xlat35.x);
    u_xlat84 = (u_xlat88 * u_xlat84);
    u_xlat84 = (u_xlat87 / u_xlat84);
    u_xlat35 = ((vec3f(u_xlat84) * x_2987) + u_xlat4.xzw);
    u_xlat35 = ((u_xlat35 * u_xlat12.xyz) + u_xlat2.xyw);
    if ((u_xlati91 != 0i)) {
      x_6541 = u_xlat35;
    } else {
      x_6541 = u_xlat2.xyw;
    }
    u_xlat2 = vec4f(x_6541.xy, u_xlat2.z, x_6541.z);
  }
  u_xlat0 = vec4f(((u_xlat1.xyz + u_xlat6)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat2.xyw + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat31;
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

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
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
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/Bar/Shaders/Bar_BottleGlass.shader
diagnostic(off, derivative_uniformity);

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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_AlphaCenter : f32,
  /* @offset(20) */
  x_AlphaEdge : f32,
  /* @offset(24) */
  x_FresnelPower : f32,
  /* @offset(28) */
  x_EdgeDarken : f32,
  /* @offset(32) */
  x_Smoothness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_Absorb : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_Transmit : f32,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(0) var<uniform> x_99 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_174 : UnityPerMaterial;

@group(1) @binding(7) var<uniform> x_209 : LightShadows;

@group(1) @binding(5) var<uniform> x_256 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(8) var<uniform> x_1772 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_2074 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2253 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2500 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(7) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3177 : AdditionalLights;

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

const x_332 = vec2f(1.0f);

const x_520 = vec4f(0.25f);

const x_539 = vec2f(0.5f);

const x_563 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_575 = vec2f(0.07999999821186065674f);

const x_631 = vec2f(0.15999999642372131348f);

const x_704 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1030 = vec2f(0.04081600159406661987f);

const x_1089 = vec2f(0.08163200318813323975f);

const x_1106 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1109 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1116 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1154 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2212 = vec2u(2u);

const x_2668 = vec3f(1.0f);

const x_3097 = vec3f(0.03999999910593032837f);

const x_4030 = vec2f(2.0f);

const x_4045 = vec3f(0.08163200318813323975f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat28 : vec3f;
  var u_xlat2 : vec3f;
  var x_133 : vec3f;
  var u_xlat83 : f32;
  var u_xlat3 : vec3f;
  var u_xlat84 : f32;
  var u_xlat4 : vec4f;
  var u_xlat31 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat81 : f32;
  var u_xlat58 : vec2f;
  var u_xlat86 : f32;
  var u_xlat87 : f32;
  var u_xlat34 : f32;
  var u_xlat88 : f32;
  var u_xlatb8 : vec3<bool>;
  var txVec0 : vec3f;
  var u_xlat9 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb35 : bool;
  var u_xlat35 : vec3f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat63 : vec2f;
  var u_xlat65 : vec2f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var txVec4 : vec3f;
  var u_xlat62 : f32;
  var txVec5 : vec3f;
  var u_xlat89 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat69 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat37 : vec3f;
  var u_xlat19 : vec4f;
  var u_xlat66 : vec2f;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
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
  var x_1724 : f32;
  var u_xlat32 : f32;
  var u_xlat59 : f32;
  var u_xlatb10 : vec3<bool>;
  var x_1861 : f32;
  var x_1872 : vec3f;
  var u_xlatu7 : vec3u;
  var u_xlatu11 : vec2u;
  var u_xlati59 : i32;
  var u_xlatu59 : u32;
  var u_xlat29 : f32;
  var u_xlat1 : vec4f;
  var x_1991 : f32;
  var u_xlatu1 : u32;
  var u_xlatu2 : u32;
  var u_xlati29 : i32;
  var u_xlatu29 : vec2u;
  var u_xlati7 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati8 : vec2i;
  var u_xlati62 : vec2i;
  var u_xlati11 : vec3i;
  var u_xlati1 : i32;
  var u_xlati65 : vec2i;
  var u_xlatu92 : u32;
  var u_xlatu89 : u32;
  var u_xlati90 : i32;
  var u_xlatu91 : u32;
  var u_xlatb93 : bool;
  var u_xlatu13 : vec4u;
  var u_xlatb13 : vec3<bool>;
  var u_xlatu93 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
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
  var u_xlati68 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati40 : vec2i;
  var u_xlati67 : i32;
  var u_xlati93 : i32;
  var u_xlatb89 : bool;
  var u_xlati89 : i32;
  var u_xlat93 : f32;
  var u_xlat40 : vec3f;
  var x_2562 : f32;
  var x_2576 : f32;
  var x_2590 : f32;
  var x_2641 : vec3f;
  var u_xlatu94 : u32;
  var u_xlat94 : f32;
  var u_xlat41 : vec3f;
  var u_xlatb68 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_2704 : f32;
  var x_2717 : f32;
  var u_xlat67 : vec2f;
  var u_xlatu67 : u32;
  var u_xlati81 : i32;
  var u_xlat82 : f32;
  var x_3112 : vec3f;
  var u_xlatu81 : u32;
  var u_xlatb29 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlat90 : f32;
  var u_xlatb90 : bool;
  var u_xlati10 : vec4i;
  var x_3285 : i32;
  var u_xlatb11 : vec3<bool>;
  var u_xlat64 : f32;
  var x_3348 : f32;
  var x_3359 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var u_xlatb91 : bool;
  var u_xlat91 : f32;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat38 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat39 : vec3f;
  var u_xlat73 : vec2f;
  var u_xlat68 : vec2f;
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
  var u_xlatb37 : bool;
  var u_xlati37 : vec2i;
  var u_xlati64 : i32;
  var u_xlatb65 : vec2<bool>;
  var x_4975 : f32;
  var x_4988 : f32;
  var x_5046 : f32;
  var x_5057 : vec3f;
  var u_xlati91 : i32;
  var x_5210 : vec3f;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati35 : vec2i;
  var u_xlati9 : vec3i;
  var u_xlati2 : i32;
  var u_xlatu9 : vec2u;
  var u_xlati63 : i32;
  var u_xlatu90 : u32;
  var u_xlati84 : i32;
  var u_xlatb34 : bool;
  var u_xlatu10 : vec4u;
  var u_xlatu34 : u32;
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
  var u_xlati12 : vec4i;
  var u_xlati34 : i32;
  var u_xlat92 : f32;
  var u_xlatb92 : bool;
  var u_xlati92 : i32;
  var x_5703 : i32;
  var u_xlatb12 : vec3<bool>;
  var x_5762 : f32;
  var x_5774 : f32;
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
  var u_xlat42 : vec2f;
  var u_xlat75 : vec2f;
  var u_xlat70 : vec2f;
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
  var u_xlatb39 : bool;
  var u_xlati39 : i32;
  var u_xlati66 : i32;
  var u_xlatb67 : vec2<bool>;
  var x_7384 : f32;
  var x_7397 : f32;
  var x_7452 : f32;
  var x_7463 : vec3f;
  var x_7608 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, u_xlat0.w);
  u_xlatb1 = (x_99.unity_OrthoParams.w == 0.0f);
  u_xlat28 = (-(vs_TEXCOORD0) + x_99.x_WorldSpaceCameraPos);
  u_xlat2.x = x_99.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat2.y = x_99.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat2.z = x_99.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb1) {
    x_133 = u_xlat28;
  } else {
    x_133 = u_xlat2;
  }
  u_xlat28 = x_133;
  u_xlat83 = dot(u_xlat28, u_xlat28);
  u_xlat83 = inverseSqrt(u_xlat83);
  u_xlat3 = (u_xlat28 * vec3f(u_xlat83));
  u_xlat84 = dot(u_xlat0.xyz, u_xlat3);
  u_xlat4.x = min(abs(u_xlat84), 1.0f);
  u_xlat4.x = (-(u_xlat4.x) + 1.0f);
  u_xlat4.x = log2(u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * x_174.x_FresnelPower);
  u_xlat4.x = exp2(u_xlat4.x);
  u_xlat31 = (-(x_174.x_AlphaCenter) + x_174.x_AlphaEdge);
  u_xlat31 = ((u_xlat4.x * u_xlat31) + x_174.x_AlphaCenter);
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_209.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_209.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_209.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_209.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat5.w);
  u_xlat0.w = 1.0f;
  u_xlat6.x = dot(x_256.unity_SHAr, u_xlat0);
  u_xlat6.y = dot(x_256.unity_SHAg, u_xlat0);
  u_xlat6.z = dot(x_256.unity_SHAb, u_xlat0);
  u_xlat7 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat8.x = dot(x_256.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_256.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_256.unity_SHBb, u_xlat7);
  u_xlat81 = (u_xlat0.y * u_xlat0.y);
  u_xlat81 = ((u_xlat0.x * u_xlat0.x) + -(u_xlat81));
  u_xlat7 = vec4f((((x_256.unity_SHC.xyz * vec3f(u_xlat81)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = (u_xlat6 + u_xlat7.xyz);
  let x_335 = x_99.x_ScaledScreenParams.xy;
  u_xlat58 = (x_332 / vec2f(x_335.x, x_335.y));
  u_xlat7 = vec4f(((u_xlat58 * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat81 = ((u_xlat7.y * x_99.x_ScaleBiasRt.x) + x_99.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat81) + 1.0f);
  u_xlat81 = ((-(x_174.x_EdgeDarken) * u_xlat4.x) + 1.0f);
  let x_372 = (vec3f(u_xlat81) * x_174.x_BaseColor.xyz);
  u_xlat4 = vec4f(x_372.x, u_xlat4.y, x_372.yz);
  let x_379 = (vec3f(u_xlat31) * u_xlat4.xzw);
  u_xlat4 = vec4f(x_379.x, u_xlat4.y, x_379.yz);
  u_xlat81 = (-(x_174.x_Smoothness) + 1.0f);
  u_xlat86 = (u_xlat81 * u_xlat81);
  u_xlat86 = max(u_xlat86, 0.0078125f);
  u_xlat87 = (u_xlat86 * u_xlat86);
  u_xlat34 = (x_174.x_Smoothness + 0.04000002145767211914f);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat88 = ((u_xlat86 * 4.0f) + 2.0f);
  let x_415 = (u_xlat4.xzw * vec3f(0.95999997854232788086f));
  u_xlat4 = vec4f(x_415.x, u_xlat4.y, x_415.yz);
  u_xlatb8.x = (0.0f < x_209.x_MainLightShadowParams.y);
  if (u_xlatb8.x) {
    u_xlatb8.x = (x_209.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb8.x) {
      u_xlat8 = (u_xlat5.xyxy + x_209.x_MainLightShadowOffset0);
      let x_446 = u_xlat8.xy;
      txVec0 = vec3f(x_446.x, x_446.y, u_xlat5.z);
      u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_469 = u_xlat8.zw;
      txVec1 = vec3f(x_469.x, x_469.y, u_xlat5.z);
      u_xlat9.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat8 = (u_xlat5.xyxy + x_209.x_MainLightShadowOffset1);
      let x_490 = u_xlat8.xy;
      txVec2 = vec3f(x_490.x, x_490.y, u_xlat5.z);
      u_xlat9.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_505 = u_xlat8.zw;
      txVec3 = vec3f(x_505.x, x_505.y, u_xlat5.z);
      u_xlat9.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat8.x = dot(u_xlat9, x_520);
    } else {
      u_xlatb35 = (x_209.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb35) {
        u_xlat35 = vec3f((((u_xlat5.xy * x_209.x_MainLightShadowmapSize.zw) + x_539)).xy, u_xlat35.z);
        u_xlat35 = vec3f(floor(u_xlat35.xy).xy, u_xlat35.z);
        u_xlat9 = vec4f((((u_xlat5.xy * x_209.x_MainLightShadowmapSize.zw) + -(u_xlat35.xy))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_563);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        u_xlat63 = (u_xlat11.yw * x_575);
        let x_583 = ((u_xlat11.xz * x_539) + -(u_xlat9.xy));
        u_xlat10 = vec4f(x_583.x, u_xlat10.y, x_583.y, u_xlat10.w);
        u_xlat11 = vec4f(((-(u_xlat9.xy) + x_332)).xy, u_xlat11.zw);
        u_xlat65 = min(u_xlat9.xy, vec2f());
        u_xlat65 = ((-(u_xlat65) * u_xlat65) + u_xlat11.xy);
        u_xlat9 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat9.zw);
        u_xlat9 = vec4f((((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat10.yw)).xy, u_xlat9.zw);
        u_xlat65 = (u_xlat65 + x_332);
        u_xlat9 = vec4f(((u_xlat9.xy + x_332)).xy, u_xlat9.zw);
        u_xlat12 = vec4f(((u_xlat10.xz * x_631)).xy, u_xlat12.zw);
        u_xlat13 = vec4f(((u_xlat11.xy * x_631)).xy, u_xlat13.zw);
        u_xlat11 = vec4f(((u_xlat65 * x_631)).xy, u_xlat11.zw);
        u_xlat14 = vec4f(((u_xlat9.xy * x_631)).xy, u_xlat14.zw);
        u_xlat9 = vec4f(((u_xlat10.yw * x_631)).xy, u_xlat9.zw);
        u_xlat12.z = u_xlat11.x;
        u_xlat12.w = u_xlat9.x;
        u_xlat13.z = u_xlat14.x;
        u_xlat13.w = u_xlat63.x;
        u_xlat10 = (u_xlat12.zwxz + u_xlat13.zwxz);
        u_xlat11.z = u_xlat12.y;
        u_xlat11.w = u_xlat9.y;
        u_xlat14.z = u_xlat13.y;
        u_xlat14.w = u_xlat63.y;
        u_xlat9 = vec4f(((u_xlat11.zyw + u_xlat14.zyw)).xyz, u_xlat9.w);
        u_xlat11 = vec4f(((u_xlat13.xzw / u_xlat10.zwy)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_704)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat14.zyw / u_xlat9.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_704)).xyz, u_xlat12.w);
        u_xlat11 = vec4f(((u_xlat11.yxz * x_209.x_MainLightShadowmapSize.xxx)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_209.x_MainLightShadowmapSize.yyy)).xyz, u_xlat12.w);
        u_xlat11.w = u_xlat12.x;
        u_xlat13 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat11.ywxw);
        u_xlat14 = vec4f((((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat11.zw)).xy, u_xlat14.zw);
        u_xlat12.w = u_xlat11.y;
        let x_763 = u_xlat12.yz;
        u_xlat11 = vec4f(u_xlat11.x, x_763.x, u_xlat11.z, x_763.y);
        u_xlat15 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat12 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat12.wywz);
        u_xlat11 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat11.xwzw);
        u_xlat16 = (u_xlat9.xxxy * u_xlat10.zwyz);
        u_xlat17 = (u_xlat9.yyzz * u_xlat10);
        u_xlat35.x = (u_xlat9.z * u_xlat10.y);
        let x_813 = u_xlat13.xy;
        txVec4 = vec3f(x_813.x, x_813.y, u_xlat5.z);
        u_xlat62 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_828 = u_xlat13.zw;
        txVec5 = vec3f(x_828.x, x_828.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat89 = (u_xlat89 * u_xlat16.y);
        u_xlat62 = ((u_xlat16.x * u_xlat62) + u_xlat89);
        let x_853 = u_xlat14.xy;
        txVec6 = vec3f(x_853.x, x_853.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat62 = ((u_xlat16.z * u_xlat89) + u_xlat62);
        let x_873 = u_xlat12.xy;
        txVec7 = vec3f(x_873.x, x_873.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat62 = ((u_xlat16.w * u_xlat89) + u_xlat62);
        let x_893 = u_xlat15.xy;
        txVec8 = vec3f(x_893.x, x_893.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat62 = ((u_xlat17.x * u_xlat89) + u_xlat62);
        let x_913 = u_xlat15.zw;
        txVec9 = vec3f(x_913.x, x_913.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat62 = ((u_xlat17.y * u_xlat89) + u_xlat62);
        let x_933 = u_xlat12.zw;
        txVec10 = vec3f(x_933.x, x_933.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat62 = ((u_xlat17.z * u_xlat89) + u_xlat62);
        let x_953 = u_xlat11.xy;
        txVec11 = vec3f(x_953.x, x_953.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat62 = ((u_xlat17.w * u_xlat89) + u_xlat62);
        let x_973 = u_xlat11.zw;
        txVec12 = vec3f(x_973.x, x_973.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat8.x = ((u_xlat35.x * u_xlat89) + u_xlat62);
      } else {
        u_xlat35 = vec3f((((u_xlat5.xy * x_209.x_MainLightShadowmapSize.zw) + x_539)).xy, u_xlat35.z);
        u_xlat35 = vec3f(floor(u_xlat35.xy).xy, u_xlat35.z);
        u_xlat9 = vec4f((((u_xlat5.xy * x_209.x_MainLightShadowmapSize.zw) + -(u_xlat35.xy))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_563);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        let x_1031 = (u_xlat11.yw * x_1030);
        u_xlat12 = vec4f(u_xlat12.x, x_1031.x, u_xlat12.z, x_1031.y);
        u_xlat63 = ((u_xlat11.xz * x_539) + -(u_xlat9.xy));
        let x_1044 = (-(u_xlat9.xy) + x_332);
        u_xlat10 = vec4f(x_1044.x, u_xlat10.y, x_1044.y, u_xlat10.w);
        u_xlat11 = vec4f(min(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_1060 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.xz);
        u_xlat10 = vec4f(x_1060.x, u_xlat10.y, x_1060.y, u_xlat10.w);
        u_xlat11 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_1076 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.yw);
        u_xlat10 = vec4f(u_xlat10.x, x_1076.x, u_xlat10.z, x_1076.y);
        u_xlat10 = (u_xlat10 + vec4f(2.0f));
        u_xlat11.z = (u_xlat10.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat63.yx * x_1089)).xy, u_xlat13.zw);
        u_xlat63 = (u_xlat10.xz * x_1089);
        u_xlat13.z = (u_xlat10.w * 0.08163200318813323975f);
        u_xlat11.x = u_xlat13.y;
        let x_1110 = ((u_xlat9.xx * x_1106) + x_1109);
        u_xlat11 = vec4f(u_xlat11.x, x_1110.x, u_xlat11.z, x_1110.y);
        let x_1117 = ((u_xlat9.xx * x_1106) + x_1116);
        u_xlat10 = vec4f(x_1117.x, u_xlat10.y, x_1117.y, u_xlat10.w);
        u_xlat10.y = u_xlat63.x;
        u_xlat10.w = u_xlat12.y;
        u_xlat11 = (u_xlat10 + u_xlat11);
        let x_1132 = ((u_xlat9.yy * x_1106) + x_1109);
        u_xlat13 = vec4f(u_xlat13.x, x_1132.x, u_xlat13.z, x_1132.y);
        let x_1138 = ((u_xlat9.yy * x_1106) + x_1116);
        u_xlat12 = vec4f(x_1138.x, u_xlat12.y, x_1138.y, u_xlat12.w);
        u_xlat12.y = u_xlat63.y;
        u_xlat9 = (u_xlat12 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat11);
        u_xlat10 = (u_xlat10 + x_1154);
        u_xlat12 = (u_xlat12 / u_xlat9);
        u_xlat12 = (u_xlat12 + x_1154);
        u_xlat10 = (u_xlat10.wxyz * x_209.x_MainLightShadowmapSize.xxxx);
        u_xlat12 = (u_xlat12.xwyz * x_209.x_MainLightShadowmapSize.yyyy);
        let x_1174 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_1174.x, u_xlat13.y, x_1174.yz);
        u_xlat13.y = u_xlat12.x;
        u_xlat14 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat15 = vec4f((((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat15.zw);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat12.z;
        u_xlat16 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat69 = ((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat12.w;
        u_xlat18 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat37 = vec3f((((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat37.z);
        u_xlat10.w = u_xlat13.y;
        u_xlat19 = vec4f((((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat10.xw)).xy, u_xlat19.zw);
        let x_1278 = u_xlat13.xzw;
        u_xlat12 = vec4f(x_1278.x, u_xlat12.y, x_1278.yz);
        u_xlat13 = ((u_xlat35.xyxy * x_209.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat66 = ((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat12.x = u_xlat10.x;
        u_xlat35 = vec3f((((u_xlat35.xy * x_209.x_MainLightShadowmapSize.xy) + u_xlat12.xy)).xy, u_xlat35.z);
        u_xlat20 = (u_xlat9.xxxx * u_xlat11);
        u_xlat21 = (u_xlat9.yyyy * u_xlat11);
        u_xlat22 = (u_xlat9.zzzz * u_xlat11);
        u_xlat9 = (u_xlat9.wwww * u_xlat11);
        let x_1335 = u_xlat14.xy;
        txVec13 = vec3f(x_1335.x, x_1335.y, u_xlat5.z);
        u_xlat89 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1349 = u_xlat14.zw;
        txVec14 = vec3f(x_1349.x, x_1349.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat10.x = (u_xlat10.x * u_xlat20.y);
        u_xlat89 = ((u_xlat20.x * u_xlat89) + u_xlat10.x);
        let x_1377 = u_xlat15.xy;
        txVec15 = vec3f(x_1377.x, x_1377.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat89 = ((u_xlat20.z * u_xlat10.x) + u_xlat89);
        let x_1399 = u_xlat17.xy;
        txVec16 = vec3f(x_1399.x, x_1399.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat89 = ((u_xlat20.w * u_xlat10.x) + u_xlat89);
        let x_1421 = u_xlat16.xy;
        txVec17 = vec3f(x_1421.x, x_1421.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat89 = ((u_xlat21.x * u_xlat10.x) + u_xlat89);
        let x_1443 = u_xlat16.zw;
        txVec18 = vec3f(x_1443.x, x_1443.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat89 = ((u_xlat21.y * u_xlat10.x) + u_xlat89);
        txVec19 = vec3f(u_xlat69.x, u_xlat69.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat89 = ((u_xlat21.z * u_xlat10.x) + u_xlat89);
        let x_1486 = u_xlat17.zw;
        txVec20 = vec3f(x_1486.x, x_1486.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat89 = ((u_xlat21.w * u_xlat10.x) + u_xlat89);
        let x_1508 = u_xlat18.xy;
        txVec21 = vec3f(x_1508.x, x_1508.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat89 = ((u_xlat22.x * u_xlat10.x) + u_xlat89);
        let x_1530 = u_xlat18.zw;
        txVec22 = vec3f(x_1530.x, x_1530.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat89 = ((u_xlat22.y * u_xlat10.x) + u_xlat89);
        let x_1552 = u_xlat37.xy;
        txVec23 = vec3f(x_1552.x, x_1552.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat89 = ((u_xlat22.z * u_xlat10.x) + u_xlat89);
        let x_1574 = u_xlat19.xy;
        txVec24 = vec3f(x_1574.x, x_1574.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat89 = ((u_xlat22.w * u_xlat10.x) + u_xlat89);
        let x_1596 = u_xlat13.xy;
        txVec25 = vec3f(x_1596.x, x_1596.y, u_xlat5.z);
        u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat89 = ((u_xlat9.x * u_xlat10.x) + u_xlat89);
        let x_1618 = u_xlat13.zw;
        txVec26 = vec3f(x_1618.x, x_1618.y, u_xlat5.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat89 = ((u_xlat9.y * u_xlat9.x) + u_xlat89);
        txVec27 = vec3f(u_xlat66.x, u_xlat66.y, u_xlat5.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat89 = ((u_xlat9.z * u_xlat9.x) + u_xlat89);
        let x_1661 = u_xlat35.xy;
        txVec28 = vec3f(x_1661.x, x_1661.y, u_xlat5.z);
        u_xlat35.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat8.x = ((u_xlat9.w * u_xlat35.x) + u_xlat89);
      }
    }
  } else {
    let x_1685 = u_xlat5.xy;
    txVec29 = vec3f(x_1685.x, x_1685.y, u_xlat5.z);
    u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat5.x = (-(x_209.x_MainLightShadowParams.x) + 1.0f);
  u_xlat5.x = ((u_xlat8.x * x_209.x_MainLightShadowParams.x) + u_xlat5.x);
  u_xlatb32 = (0.0f >= u_xlat5.z);
  u_xlatb59 = (u_xlat5.z >= 1.0f);
  u_xlatb32 = (u_xlatb59 | u_xlatb32);
  if (u_xlatb32) {
    x_1724 = 1.0f;
  } else {
    x_1724 = u_xlat5.x;
  }
  u_xlat5.x = x_1724;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_99.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat32 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat59 = ((u_xlat32 * x_209.x_MainLightShadowParams.z) + x_209.x_MainLightShadowParams.w);
  u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
  u_xlat89 = (-(u_xlat5.x) + 1.0f);
  u_xlat5.x = ((u_xlat59 * u_xlat89) + u_xlat5.x);
  u_xlatb59 = !((x_1772.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb59) {
    u_xlat9 = vec4f(((vs_TEXCOORD0.yy * x_1772.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((x_1772.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD0.xx) + u_xlat9.xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((x_1772.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD0.zz) + u_xlat9.xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f(((u_xlat9.xy + x_1772.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy)).xy, u_xlat9.zw);
    u_xlat9 = vec4f((((u_xlat9.xy * x_539) + x_539)).xy, u_xlat9.zw);
    let x_1832 = u_xlat9;
    let x_1835 = x_99.x_GlobalMipBias.x;
    let x_1836 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1832.xy, x_1835);
    u_xlat9 = x_1836;
    let x_1846 = vec4f(x_1772.x_MainLightCookieTextureFormat, x_1772.x_MainLightCookieTextureFormat, x_1772.x_MainLightCookieTextureFormat, x_1772.x_MainLightCookieTextureFormat);
    u_xlatb10 = vec3<bool>(((vec4f(x_1846.x, x_1846.y, x_1846.z, x_1846.w) == vec4f(0.0f, 1.0f, 0.0f, 0.0f))).xy.xy, u_xlatb10.z);
    if (u_xlatb10.y) {
      x_1861 = u_xlat9.w;
    } else {
      x_1861 = u_xlat9.x;
    }
    u_xlat59 = x_1861;
    if (u_xlatb10.x) {
      x_1872 = u_xlat9.xyz;
    } else {
      x_1872 = vec3f(u_xlat59);
    }
    u_xlat9 = vec4f(x_1872.xyz, u_xlat9.w);
  } else {
    u_xlat9.x = 1.0f;
    u_xlat9.y = 1.0f;
    u_xlat9.z = 1.0f;
  }
  u_xlat9 = vec4f(((u_xlat9.xyz * x_99.x_MainLightColor.xyz)).xyz, u_xlat9.w);
  u_xlat59 = dot(-(u_xlat3), u_xlat0.xyz);
  u_xlat59 = (u_xlat59 + u_xlat59);
  u_xlat10 = vec4f((((u_xlat0.xyz * -(vec3f(u_xlat59))) + -(u_xlat3))).xyz, u_xlat10.w);
  u_xlat84 = u_xlat84;
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat84 = (-(u_xlat84) + 1.0f);
  u_xlat84 = (u_xlat84 * u_xlat84);
  u_xlat84 = (u_xlat84 * u_xlat84);
  u_xlat59 = ((-(u_xlat81) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat81 = (u_xlat81 * u_xlat59);
  u_xlat81 = (u_xlat81 * 6.0f);
  let x_1943 = (u_xlat7.xz * x_99.x_FPParams1.xy);
  u_xlat7 = vec4f(x_1943.x, u_xlat7.y, x_1943.y, u_xlat7.w);
  let x_1952 = vec2u(u_xlat7.xz);
  u_xlatu7 = vec3u(x_1952.x, u_xlatu7.y, x_1952.y);
  u_xlatu11 = vec2u(x_99.x_FPParams1.zw);
  u_xlati59 = ((bitcast<i32>(u_xlatu7.z) * bitcast<i32>(u_xlatu11.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu59 = (u_xlatu11.y * bitcast<u32>(u_xlati59));
  u_xlat2.x = dot(-(u_xlat2), u_xlat8.xyz);
  u_xlat29 = log2(u_xlat2.x);
  if (u_xlatb1) {
    x_1991 = u_xlat29;
  } else {
    x_1991 = u_xlat2.x;
  }
  u_xlat1.x = x_1991;
  u_xlat1.x = ((u_xlat1.x * x_99.x_FPParams0.x) + x_99.x_FPParams0.y);
  u_xlatu1 = u32(u_xlat1.x);
  u_xlatu2 = u32(x_99.x_FPParams2.x);
  u_xlatu2 = (u_xlatu2 + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu11.y) + 2i);
  u_xlatu1 = min(u_xlatu1, u_xlatu2);
  u_xlatu2 = (bitcast<u32>(u_xlati29) * u_xlatu1);
  u_xlatu29 = ((vec2u(u_xlatu1) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu1 = (u_xlatu29.x >> 2u);
  param = bitcast<i32>(u_xlatu29.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2053 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu29.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2060 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_2062 = vec2i(x_2053, x_2060);
  u_xlati7 = vec3i(x_2062.x, u_xlati7.y, x_2062.y);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2074.urp_ZBins[bitcast<i32>(u_xlatu1)].wy)));
  u_xlati62 = ~(u_xlati7.xz);
  u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati62.xx) & bitcast<vec2u>(x_2074.urp_ZBins[bitcast<i32>(u_xlatu1)].zx))).xy, u_xlati11.z);
  u_xlati8 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8) | bitcast<vec2u>(u_xlati11.xy)));
  u_xlati1 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati8.x)));
  u_xlati29 = bitcast<i32>((bitcast<u32>(u_xlati62.y) & bitcast<u32>(u_xlati8.y)));
  u_xlatu1 = (bitcast<u32>(u_xlati1) | bitcast<u32>(u_xlati29));
  let x_2133 = vec2u(x_99.x_FPParams0.zw);
  u_xlatu7 = vec3u(x_2133.x, u_xlatu7.y, x_2133.y);
  u_xlatb8 = ((vec4f() < u_xlat10.xyzx)).xyz;
  u_xlatu11.x = u_xlatu59;
  u_xlatu11.y = u_xlatu29.y;
  u_xlati65.x = 0i;
  u_xlatu92 = u_xlatu1;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat29 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu89 = (u_xlatu92 >> 16u);
    u_xlati90 = u_xlati65.x;
    u_xlatu91 = u_xlatu92;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb93 = (u_xlati90 == 0i);
      u_xlatu13.x = (u_xlatu91 & 65535u);
      u_xlatb13.x = (u_xlatu89 >= u_xlatu13.x);
      u_xlatb93 = (u_xlatb93 & u_xlatb13.x);
      if (!(u_xlatb93)) {
        break;
      }
      param_6 = u_xlatu91;
      param_7 = 5i;
      param_8 = 11i;
      let x_2203 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu93 = x_2203;
      u_xlatu13 = (u_xlatu11.xxyy + vec4u(u_xlatu93));
      u_xlatu14 = (u_xlatu13.yw >> x_2212);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2223 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2230 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2237 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2244 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_2223, x_2230, x_2237, x_2244);
      u_xlati68 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2253.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2253.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_2285 = bitcast<vec2i>((bitcast<vec2u>(u_xlati68) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_2285.x, u_xlati14.y, x_2285.y);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati40.x) | bitcast<u32>(u_xlati13.x)));
      u_xlati40 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2074.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy)));
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_2074.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati40 = bitcast<vec2i>((bitcast<vec2u>(u_xlati40) | bitcast<vec2u>(u_xlati14.xy)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati40.x)));
      u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati40.y)));
      u_xlati40.x = bitcast<i32>((bitcast<u32>(u_xlati67) | bitcast<u32>(u_xlati40.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati40.x) & bitcast<u32>(u_xlati13.x)));
      u_xlati40.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu91) & 31i)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati40.x) & bitcast<u32>(u_xlati13.x)));
      u_xlati93 = (bitcast<i32>(u_xlatu93) << bitcast<u32>(5i));
      u_xlatu93 = (u_xlatu89 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati93)))));
      u_xlatu93 = min(u_xlatu93, 31u);
      u_xlatu93 = (bitcast<u32>(-(bitcast<i32>(u_xlatu93))) + 31u);
      u_xlatu93 = (4294967295u >> (u_xlatu93 & 31u));
      u_xlati90 = bitcast<i32>((u_xlatu93 & bitcast<u32>(u_xlati13.x)));
      u_xlati93 = (bitcast<i32>(u_xlatu91) + 32i);
      u_xlatu91 = (bitcast<u32>(u_xlati93) & 4294967264u);
    }
    u_xlatu92 = u_xlatu91;
    u_xlatb89 = (u_xlati90 != 0i);
    u_xlatb93 = (u_xlat29 < 0.99000000953674316406f);
    u_xlatb89 = (u_xlatb89 & u_xlatb93);
    if (!(u_xlatb89)) {
      break;
    }
    u_xlati89 = (0i - u_xlati90);
    u_xlatu89 = (bitcast<u32>(u_xlati89) & bitcast<u32>(u_xlati90));
    u_xlat89 = f32(u_xlatu89);
    u_xlatu89 = (bitcast<u32>(u_xlat89) >> 23u);
    u_xlati89 = (bitcast<i32>(u_xlatu89) + -127i);
    u_xlati93 = (1i << bitcast<u32>((u_xlati89 & 31i)));
    u_xlati65.x = bitcast<i32>((bitcast<u32>(u_xlati90) ^ bitcast<u32>(u_xlati93)));
    u_xlati93 = (bitcast<i32>(u_xlatu92) + -32i);
    u_xlati93 = bitcast<i32>((bitcast<u32>(u_xlati93) & 65504u));
    u_xlati89 = (u_xlati89 + u_xlati93);
    u_xlati89 = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati89);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_2500.urp_ReflProbes_BoxMin[u_xlati89].xyz))).xyz, u_xlat13.w);
    u_xlat14 = vec4f(((-(vs_TEXCOORD0) + x_2500.urp_ReflProbes_BoxMax[u_xlati89].xyz)).xyz, u_xlat14.w);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14.xyz).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_2500.urp_ReflProbes_BoxMax[u_xlati89].www)).xyz, u_xlat13.w);
    u_xlat93 = min(u_xlat13.z, u_xlat13.y);
    u_xlat93 = min(u_xlat93, u_xlat13.x);
    u_xlat93 = clamp(u_xlat93, 0.0f, 1.0f);
    u_xlat13.x = (-(u_xlat29) + 1.0f);
    u_xlat93 = min(u_xlat93, u_xlat13.x);
    u_xlatb13.x = (0.0f < x_2500.urp_ReflProbes_ProbePosition[u_xlati89].w);
    if (u_xlatb8.x) {
      x_2562 = x_2500.urp_ReflProbes_BoxMax[u_xlati89].x;
    } else {
      x_2562 = x_2500.urp_ReflProbes_BoxMin[u_xlati89].x;
    }
    u_xlat40.x = x_2562;
    if (u_xlatb8.y) {
      x_2576 = x_2500.urp_ReflProbes_BoxMax[u_xlati89].y;
    } else {
      x_2576 = x_2500.urp_ReflProbes_BoxMin[u_xlati89].y;
    }
    u_xlat40.y = x_2576;
    if (u_xlatb8.z) {
      x_2590 = x_2500.urp_ReflProbes_BoxMax[u_xlati89].z;
    } else {
      x_2590 = x_2500.urp_ReflProbes_BoxMin[u_xlati89].z;
    }
    u_xlat40.z = x_2590;
    u_xlat40 = (u_xlat40 + -(vs_TEXCOORD0));
    u_xlat40 = (u_xlat40 / u_xlat10.xyz);
    u_xlat40.x = min(u_xlat40.y, u_xlat40.x);
    u_xlat40.x = min(u_xlat40.z, u_xlat40.x);
    u_xlat14 = vec4f(((vs_TEXCOORD0 + -(x_2500.urp_ReflProbes_ProbePosition[u_xlati89].xyz))).xyz, u_xlat14.w);
    u_xlat40 = ((u_xlat10.xyz * u_xlat40.xxx) + u_xlat14.xyz);
    if (u_xlatb13.x) {
      x_2641 = u_xlat40;
    } else {
      x_2641 = u_xlat10.xyz;
    }
    u_xlat13 = vec4f(x_2641.xyz, u_xlat13.w);
    u_xlatu94 = u32(abs(x_2500.urp_ReflProbes_ProbePosition[u_xlati89].w));
    u_xlatu94 = (u_xlatu94 + 4294967295u);
    u_xlat94 = f32(u_xlatu94);
    u_xlat94 = min(u_xlat81, u_xlat94);
    u_xlat14.x = dot(abs(u_xlat13.xyz), x_2668);
    u_xlat14.x = max(u_xlat14.x, 0.00000099999999747524f);
    u_xlat14.x = (1.0f / u_xlat14.x);
    u_xlat41 = (u_xlat13.zxy * u_xlat14.xxx);
    u_xlat41.x = -(u_xlat41.x);
    u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
    u_xlatb68 = ((u_xlat41.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat41;
    if (u_xlatb68.x) {
      x_2704 = u_xlat41.x;
    } else {
      x_2704 = -(u_xlat41.x);
    }
    hlslcc_movcTemp.x = x_2704;
    if (u_xlatb68.y) {
      x_2717 = u_xlat41.x;
    } else {
      x_2717 = -(u_xlat41.x);
    }
    hlslcc_movcTemp.y = x_2717;
    u_xlat41 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * u_xlat14.xx) + u_xlat41.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_539) + x_539)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat67.x = floor(u_xlat94);
    u_xlat14.x = (u_xlat67.x + 1.0f);
    u_xlat94 = (-(u_xlat67.x) + u_xlat94);
    u_xlatu67 = u32(u_xlat67.x);
    u_xlati67 = ((u_xlati89 * 7i) + bitcast<i32>(u_xlatu67));
    u_xlatu14.x = u32(u_xlat14.x);
    u_xlati89 = ((u_xlati89 * 7i) + bitcast<i32>(u_xlatu14.x));
    u_xlat14 = vec4f((((u_xlat13.xy * x_2500.urp_ReflProbes_MipScaleOffset[u_xlati67].xy) + x_2500.urp_ReflProbes_MipScaleOffset[u_xlati67].zw)).xy, u_xlat14.zw);
    u_xlat14 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat14.xy, 0.0f).xyz.xyz, u_xlat14.w);
    u_xlat13 = vec4f((((u_xlat13.xy * x_2500.urp_ReflProbes_MipScaleOffset[u_xlati89].xy) + x_2500.urp_ReflProbes_MipScaleOffset[u_xlati89].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat94) * u_xlat13.xyz) + u_xlat14.xyz)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((vec3f(u_xlat93) * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat29 = (u_xlat29 + u_xlat93);
  }
  u_xlatb1 = (u_xlat29 < 0.99000000953674316406f);
  if (u_xlatb1) {
    u_xlat8 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xyz, u_xlat81);
    u_xlat81 = (-(u_xlat29) + 1.0f);
    u_xlat1.x = (u_xlat8.w + -1.0f);
    u_xlat1.x = ((x_99.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_99.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_99.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat1.xxx)).xyz, u_xlat8.w);
    u_xlat12 = vec4f((((vec3f(u_xlat81) * u_xlat8.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat8 = vec4f((((vec2f(u_xlat86) * vec2f(u_xlat86)) + vec2f(-1.0f, 1.0f))).xy, u_xlat8.zw);
  u_xlat81 = (1.0f / u_xlat8.y);
  u_xlat1.x = (u_xlat34 + -0.03999999910593032837f);
  u_xlat1.x = ((u_xlat84 * u_xlat1.x) + 0.03999999910593032837f);
  u_xlat81 = (u_xlat81 * u_xlat1.x);
  u_xlat35 = (vec3f(u_xlat81) * u_xlat12.xyz);
  u_xlat6 = ((u_xlat6 * u_xlat4.xzw) + u_xlat35);
  u_xlati81 = bitcast<i32>((x_99.x_MainLightLayerMask & bitcast<u32>(x_256.unity_RenderingLayer.x)));
  u_xlat1.x = dot(u_xlat0.xyz, x_99.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat5.x);
  u_xlat35 = (u_xlat1.xxx * u_xlat9.xyz);
  u_xlat1 = vec4f((((u_xlat28 * vec3f(u_xlat83)) + x_99.x_MainLightPosition.xyz)).xyz, u_xlat1.w);
  u_xlat82 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat82 = max(u_xlat82, 1.17549435e-38f);
  u_xlat82 = inverseSqrt(u_xlat82);
  u_xlat1 = vec4f(((vec3f(u_xlat82) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.w = dot(u_xlat0.xyz, u_xlat1.xyz);
  u_xlat1.w = clamp(u_xlat1.w, 0.0f, 1.0f);
  u_xlat1.x = dot(x_99.x_MainLightPosition.xyz, u_xlat1.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xw * u_xlat1.xw)).xy, u_xlat1.zw);
  u_xlat28.x = ((u_xlat1.y * u_xlat8.x) + 1.00001001358032226562f);
  u_xlat28.x = (u_xlat28.x * u_xlat28.x);
  u_xlat1.x = max(u_xlat1.x, 0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * u_xlat28.x);
  u_xlat1.x = (u_xlat88 * u_xlat1.x);
  u_xlat1.x = (u_xlat87 / u_xlat1.x);
  u_xlat1 = vec4f((((u_xlat1.xxx * x_3097) + u_xlat4.xzw)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat35 * u_xlat1.xyz)).xyz, u_xlat1.w);
  if ((u_xlati81 != 0i)) {
    x_3112 = u_xlat1.xyz;
  } else {
    x_3112 = vec3f();
  }
  u_xlat1 = vec4f(x_3112.xyz, u_xlat1.w);
  u_xlatu81 = min(u_xlatu7.z, 32u);
  u_xlat82 = ((u_xlat32 * x_209.x_AdditionalShadowFadeParams.x) + x_209.x_AdditionalShadowFadeParams.y);
  u_xlat82 = clamp(u_xlat82, 0.0f, 1.0f);
  let x_3144 = vec4f(x_1772.x_AdditionalLightsCookieAtlasTextureFormat, x_1772.x_AdditionalLightsCookieAtlasTextureFormat, x_1772.x_AdditionalLightsCookieAtlasTextureFormat, x_1772.x_AdditionalLightsCookieAtlasTextureFormat);
  let x_3152 = ((vec4f(x_3144.x, x_3144.y, x_3144.z, x_3144.w) == vec4f(0.0f, 0.0f, 1.0f, 1.0f))).xz;
  u_xlatb29 = vec3<bool>(x_3152.x, u_xlatb29.y, x_3152.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu81)) {
    } else {
      break;
    }
    u_xlat35 = ((-(vs_TEXCOORD0) * x_3177.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3177.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat7.x = dot(u_xlat35, u_xlat35);
    u_xlat7.x = max(u_xlat7.x, 0.00006103515625f);
    u_xlat34 = inverseSqrt(u_xlat7.x);
    u_xlat9 = vec4f(((vec3f(u_xlat34) * u_xlat35)).xyz, u_xlat9.w);
    u_xlat90 = (1.0f / u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_3177.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat7.x = ((-(u_xlat7.x) * u_xlat7.x) + 1.0f);
    u_xlat7.x = max(u_xlat7.x, 0.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat90);
    u_xlat90 = dot(x_3177.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat9.xyz);
    u_xlat90 = ((u_xlat90 * x_3177.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3177.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat90 = clamp(u_xlat90, 0.0f, 1.0f);
    u_xlat90 = (u_xlat90 * u_xlat90);
    u_xlat7.x = (u_xlat7.x * u_xlat90);
    u_xlatb90 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati10.x = i32(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    if (u_xlatb90) {
      x_3285 = -1i;
    } else {
      x_3285 = u_xlati10.x;
    }
    u_xlati90 = x_3285;
    u_xlatb10.x = (u_xlati90 >= 0i);
    if (u_xlatb10.x) {
      u_xlatb10.x = any(!((vec4f() == vec4f(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb10.x) {
        u_xlatb10 = ((abs(u_xlat9.zzyz) >= abs(u_xlat9.xyxx))).xyz;
        u_xlatb10.x = (u_xlatb10.y & u_xlatb10.x);
        u_xlatb11 = ((-(u_xlat9.zyxz) < vec4f())).xyz;
        u_xlat37.x = select(4.0f, 5.0f, u_xlatb11.x);
        u_xlat37.z = select(2.0f, 3.0f, u_xlatb11.y);
        u_xlat11.x = select(0.0f, 1.0f, u_xlatb11.z);
        if (u_xlatb10.z) {
          x_3348 = u_xlat37.z;
        } else {
          x_3348 = u_xlat11.x;
        }
        u_xlat64 = x_3348;
        if (u_xlatb10.x) {
          x_3359 = u_xlat37.x;
        } else {
          x_3359 = u_xlat64;
        }
        u_xlat10.x = x_3359;
        u_xlati10.x = i32(u_xlat10.x);
        u_xlati90 = (u_xlati90 + u_xlati10.x);
      }
      u_xlati90 = (u_xlati90 << bitcast<u32>(2i));
      u_xlat10 = (vs_TEXCOORD0.yyyy * x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati90 + 1i)]);
      u_xlat10 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati90] * vs_TEXCOORD0.xxxx) + u_xlat10);
      u_xlat10 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati90 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat10);
      u_xlat10 = (u_xlat10 + x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati90 + 3i)]);
      u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
      u_xlatb90 = (0.0f < x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb90) {
        u_xlatb90 = (1.0f == x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb90) {
          u_xlat11 = (u_xlat10.xyxy + x_209.x_AdditionalShadowOffset0);
          let x_3439 = u_xlat11.xy;
          txVec30 = vec3f(x_3439.x, x_3439.y, u_xlat10.z);
          u_xlat12.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_3455 = u_xlat11.zw;
          txVec31 = vec3f(x_3455.x, x_3455.y, u_xlat10.z);
          u_xlat12.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat11 = (u_xlat10.xyxy + x_209.x_AdditionalShadowOffset1);
          let x_3475 = u_xlat11.xy;
          txVec32 = vec3f(x_3475.x, x_3475.y, u_xlat10.z);
          u_xlat12.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_3490 = u_xlat11.zw;
          txVec33 = vec3f(x_3490.x, x_3490.y, u_xlat10.z);
          u_xlat12.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat90 = dot(u_xlat12, x_520);
        } else {
          u_xlatb91 = (2.0f == x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb91) {
            u_xlat11 = vec4f((((u_xlat10.xy * x_209.x_AdditionalShadowmapSize.zw) + x_539)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_209.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_563);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_3550 = (u_xlat13.yw * x_575);
            u_xlat12 = vec4f(x_3550.x, u_xlat12.y, x_3550.y, u_xlat12.w);
            u_xlat13 = vec4f((((u_xlat13.xz * x_539) + -(u_xlat65))).xy, u_xlat13.zw);
            u_xlat67 = (-(u_xlat65) + x_332);
            u_xlat14 = vec4f(min(u_xlat65, vec2f()).xy, u_xlat14.zw);
            u_xlat14 = vec4f((((-(u_xlat14.xy) * u_xlat14.xy) + u_xlat67)).xy, u_xlat14.zw);
            u_xlat65 = max(u_xlat65, vec2f());
            u_xlat65 = ((-(u_xlat65) * u_xlat65) + u_xlat12.yw);
            u_xlat14 = vec4f(((u_xlat14.xy + x_332)).xy, u_xlat14.zw);
            u_xlat65 = (u_xlat65 + x_332);
            u_xlat15 = vec4f(((u_xlat13.xy * x_631)).xy, u_xlat15.zw);
            u_xlat13 = vec4f(((u_xlat67 * x_631)).xy, u_xlat13.zw);
            u_xlat14 = vec4f(((u_xlat14.xy * x_631)).xy, u_xlat14.zw);
            u_xlat16 = vec4f(((u_xlat65 * x_631)).xy, u_xlat16.zw);
            u_xlat65 = (u_xlat12.yw * x_631);
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
            u_xlat13 = vec4f(((u_xlat13.xyz + x_704)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat16.zyw / u_xlat12.xyz)).xyz, u_xlat14.w);
            u_xlat14 = vec4f(((u_xlat14.xyz + x_704)).xyz, u_xlat14.w);
            u_xlat13 = vec4f(((u_xlat13.yxz * x_209.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat13.w);
            u_xlat14 = vec4f(((u_xlat14.xyz * x_209.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat14.w);
            u_xlat13.w = u_xlat14.x;
            u_xlat15 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat13.ywxw);
            u_xlat65 = ((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat13.zw);
            u_xlat14.w = u_xlat13.y;
            let x_3716 = u_xlat14.yz;
            u_xlat13 = vec4f(u_xlat13.x, x_3716.x, u_xlat13.z, x_3716.y);
            u_xlat16 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyzy);
            u_xlat14 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat14.wywz);
            u_xlat13 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xwzw);
            u_xlat18 = (u_xlat12.xxxy * u_xlat17.zwyz);
            u_xlat19 = (u_xlat12.yyzz * u_xlat17);
            u_xlat91 = (u_xlat12.z * u_xlat17.y);
            let x_3763 = u_xlat15.xy;
            txVec34 = vec3f(x_3763.x, x_3763.y, u_xlat10.z);
            u_xlat11.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_3778 = u_xlat15.zw;
            txVec35 = vec3f(x_3778.x, x_3778.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat38 = (u_xlat38 * u_xlat18.y);
            u_xlat11.x = ((u_xlat18.x * u_xlat11.x) + u_xlat38);
            txVec36 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat11.x = ((u_xlat18.z * u_xlat38) + u_xlat11.x);
            let x_3826 = u_xlat14.xy;
            txVec37 = vec3f(x_3826.x, x_3826.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat11.x = ((u_xlat18.w * u_xlat38) + u_xlat11.x);
            let x_3848 = u_xlat16.xy;
            txVec38 = vec3f(x_3848.x, x_3848.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat11.x = ((u_xlat19.x * u_xlat38) + u_xlat11.x);
            let x_3870 = u_xlat16.zw;
            txVec39 = vec3f(x_3870.x, x_3870.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat11.x = ((u_xlat19.y * u_xlat38) + u_xlat11.x);
            let x_3892 = u_xlat14.zw;
            txVec40 = vec3f(x_3892.x, x_3892.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat11.x = ((u_xlat19.z * u_xlat38) + u_xlat11.x);
            let x_3914 = u_xlat13.xy;
            txVec41 = vec3f(x_3914.x, x_3914.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat11.x = ((u_xlat19.w * u_xlat38) + u_xlat11.x);
            let x_3936 = u_xlat13.zw;
            txVec42 = vec3f(x_3936.x, x_3936.y, u_xlat10.z);
            u_xlat38 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat90 = ((u_xlat91 * u_xlat38) + u_xlat11.x);
          } else {
            u_xlat11 = vec4f((((u_xlat10.xy * x_209.x_AdditionalShadowmapSize.zw) + x_539)).xy, u_xlat11.zw);
            u_xlat11 = vec4f(floor(u_xlat11.xy).xy, u_xlat11.zw);
            u_xlat65 = ((u_xlat10.xy * x_209.x_AdditionalShadowmapSize.zw) + -(u_xlat11.xy));
            u_xlat12 = (u_xlat65.xxyy + x_563);
            u_xlat13 = (u_xlat12.xxzz * u_xlat12.xxzz);
            let x_3989 = (u_xlat13.yw * x_1030);
            u_xlat14 = vec4f(u_xlat14.x, x_3989.x, u_xlat14.z, x_3989.y);
            let x_3997 = ((u_xlat13.xz * x_539) + -(u_xlat65));
            u_xlat12 = vec4f(x_3997.x, u_xlat12.y, x_3997.y, u_xlat12.w);
            u_xlat13 = vec4f(((-(u_xlat65) + x_332)).xy, u_xlat13.zw);
            u_xlat67 = min(u_xlat65, vec2f());
            u_xlat13 = vec4f((((-(u_xlat67) * u_xlat67) + u_xlat13.xy)).xy, u_xlat13.zw);
            u_xlat67 = max(u_xlat65, vec2f());
            let x_4025 = ((-(u_xlat67) * u_xlat67) + u_xlat12.yw);
            u_xlat39 = vec3f(x_4025.x, u_xlat39.y, x_4025.y);
            u_xlat13 = vec4f(((u_xlat13.xy + x_4030)).xy, u_xlat13.zw);
            let x_4036 = (u_xlat39.xz + x_4030);
            u_xlat12 = vec4f(u_xlat12.x, x_4036.x, u_xlat12.z, x_4036.y);
            u_xlat15.z = (u_xlat12.y * 0.08163200318813323975f);
            u_xlat16 = vec4f(((u_xlat12.zxw * x_4045)).xyz, u_xlat16.w);
            u_xlat12 = vec4f(((u_xlat13.xy * x_1089)).xy, u_xlat12.zw);
            u_xlat15.x = u_xlat16.y;
            let x_4060 = ((u_xlat65.xx * x_1106) + x_1109);
            u_xlat15 = vec4f(u_xlat15.x, x_4060.x, u_xlat15.z, x_4060.y);
            let x_4066 = ((u_xlat65.xx * x_1106) + x_1116);
            u_xlat13 = vec4f(x_4066.x, u_xlat13.y, x_4066.y, u_xlat13.w);
            u_xlat13.y = u_xlat12.x;
            u_xlat13.w = u_xlat14.y;
            u_xlat15 = (u_xlat13 + u_xlat15);
            let x_4081 = ((u_xlat65.yy * x_1106) + x_1109);
            u_xlat16 = vec4f(u_xlat16.x, x_4081.x, u_xlat16.z, x_4081.y);
            let x_4087 = ((u_xlat65.yy * x_1106) + x_1116);
            u_xlat14 = vec4f(x_4087.x, u_xlat14.y, x_4087.y, u_xlat14.w);
            u_xlat14.y = u_xlat12.y;
            u_xlat12 = (u_xlat14 + u_xlat16);
            u_xlat13 = (u_xlat13 / u_xlat15);
            u_xlat13 = (u_xlat13 + x_1154);
            u_xlat14 = (u_xlat14 / u_xlat12);
            u_xlat14 = (u_xlat14 + x_1154);
            u_xlat13 = (u_xlat13.wxyz * x_209.x_AdditionalShadowmapSize.xxxx);
            u_xlat14 = (u_xlat14.xwyz * x_209.x_AdditionalShadowmapSize.yyyy);
            let x_4119 = u_xlat13.yzw;
            u_xlat16 = vec4f(x_4119.x, u_xlat16.y, x_4119.yz);
            u_xlat16.y = u_xlat14.x;
            u_xlat17 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat65 = ((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat13.y = u_xlat16.y;
            u_xlat16.y = u_xlat14.z;
            u_xlat18 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat19 = vec4f((((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat19.zw);
            u_xlat13.z = u_xlat16.y;
            u_xlat20 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat13.xyxz);
            u_xlat16.y = u_xlat14.w;
            u_xlat21 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat40 = vec3f((((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat16.wy)).xy, u_xlat40.z);
            u_xlat13.w = u_xlat16.y;
            u_xlat73 = ((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat13.xw);
            let x_4218 = u_xlat16.xzw;
            u_xlat14 = vec4f(x_4218.x, u_xlat14.y, x_4218.yz);
            u_xlat16 = ((u_xlat11.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat14.xyzy);
            u_xlat68 = ((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat14.wy);
            u_xlat14.x = u_xlat13.x;
            u_xlat11 = vec4f((((u_xlat11.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat14.xy)).xy, u_xlat11.zw);
            u_xlat22 = (u_xlat12.xxxx * u_xlat15);
            u_xlat23 = (u_xlat12.yyyy * u_xlat15);
            u_xlat24 = (u_xlat12.zzzz * u_xlat15);
            u_xlat12 = (u_xlat12.wwww * u_xlat15);
            let x_4274 = u_xlat17.xy;
            txVec43 = vec3f(x_4274.x, x_4274.y, u_xlat10.z);
            u_xlat91 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_4288 = u_xlat17.zw;
            txVec44 = vec3f(x_4288.x, x_4288.y, u_xlat10.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat13.x = (u_xlat13.x * u_xlat22.y);
            u_xlat91 = ((u_xlat22.x * u_xlat91) + u_xlat13.x);
            txVec45 = vec3f(u_xlat65.x, u_xlat65.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat91 = ((u_xlat22.z * u_xlat65.x) + u_xlat91);
            let x_4337 = u_xlat20.xy;
            txVec46 = vec3f(x_4337.x, x_4337.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat91 = ((u_xlat22.w * u_xlat65.x) + u_xlat91);
            let x_4359 = u_xlat18.xy;
            txVec47 = vec3f(x_4359.x, x_4359.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat91 = ((u_xlat23.x * u_xlat65.x) + u_xlat91);
            let x_4381 = u_xlat18.zw;
            txVec48 = vec3f(x_4381.x, x_4381.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat91 = ((u_xlat23.y * u_xlat65.x) + u_xlat91);
            let x_4403 = u_xlat19.xy;
            txVec49 = vec3f(x_4403.x, x_4403.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat91 = ((u_xlat23.z * u_xlat65.x) + u_xlat91);
            let x_4425 = u_xlat20.zw;
            txVec50 = vec3f(x_4425.x, x_4425.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat91 = ((u_xlat23.w * u_xlat65.x) + u_xlat91);
            let x_4447 = u_xlat21.xy;
            txVec51 = vec3f(x_4447.x, x_4447.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat91 = ((u_xlat24.x * u_xlat65.x) + u_xlat91);
            let x_4469 = u_xlat21.zw;
            txVec52 = vec3f(x_4469.x, x_4469.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat91 = ((u_xlat24.y * u_xlat65.x) + u_xlat91);
            let x_4491 = u_xlat40.xy;
            txVec53 = vec3f(x_4491.x, x_4491.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat91 = ((u_xlat24.z * u_xlat65.x) + u_xlat91);
            txVec54 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat91 = ((u_xlat24.w * u_xlat65.x) + u_xlat91);
            let x_4534 = u_xlat16.xy;
            txVec55 = vec3f(x_4534.x, x_4534.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat91 = ((u_xlat12.x * u_xlat65.x) + u_xlat91);
            let x_4556 = u_xlat16.zw;
            txVec56 = vec3f(x_4556.x, x_4556.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat91 = ((u_xlat12.y * u_xlat65.x) + u_xlat91);
            txVec57 = vec3f(u_xlat68.x, u_xlat68.y, u_xlat10.z);
            u_xlat65.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat91 = ((u_xlat12.z * u_xlat65.x) + u_xlat91);
            let x_4599 = u_xlat11.xy;
            txVec58 = vec3f(x_4599.x, x_4599.y, u_xlat10.z);
            u_xlat11.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat90 = ((u_xlat12.w * u_xlat11.x) + u_xlat91);
          }
        }
      } else {
        let x_4622 = u_xlat10.xy;
        txVec59 = vec3f(x_4622.x, x_4622.y, u_xlat10.z);
        u_xlat90 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat10.x = (1.0f + -(x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat90 = ((u_xlat90 * x_209.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat10.x);
      u_xlatb10.x = (0.0f >= u_xlat10.z);
      u_xlatb37 = (u_xlat10.z >= 1.0f);
      u_xlatb10.x = (u_xlatb37 | u_xlatb10.x);
      u_xlat90 = select(u_xlat90, 1.0f, u_xlatb10.x);
    } else {
      u_xlat90 = 1.0f;
    }
    u_xlat10.x = (-(u_xlat90) + 1.0f);
    u_xlat90 = ((u_xlat82 * u_xlat10.x) + u_xlat90);
    u_xlati10.x = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati10.x) & bitcast<u32>(x_1772.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati10.x != 0i)) {
      u_xlati10.x = i32(x_1772.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati37.x = select(1i, 0i, (u_xlati10.x != 0i));
      u_xlati64 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati37.x != 0i)) {
        u_xlat11 = vec4f(((vs_TEXCOORD0.yyy * x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 1i)].xyw)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati64].xyw * vs_TEXCOORD0.xxx) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 3i)].xyw)).xyz, u_xlat11.w);
        let x_4767 = (u_xlat11.xy / u_xlat11.zz);
        u_xlat37 = vec3f(x_4767.x, u_xlat37.y, x_4767.y);
        let x_4773 = ((u_xlat37.xz * x_539) + x_539);
        u_xlat37 = vec3f(x_4773.x, u_xlat37.y, x_4773.y);
        let x_4780 = clamp(u_xlat37.xz, vec2f(0.0f), vec2f(1.0f));
        u_xlat37 = vec3f(x_4780.x, u_xlat37.y, x_4780.y);
        let x_4796 = ((x_1772.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat37.xz) + x_1772.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
        u_xlat37 = vec3f(x_4796.x, u_xlat37.y, x_4796.y);
      } else {
        u_xlatb10.x = (u_xlati10.x == 1i);
        u_xlati10.x = select(0i, 1i, u_xlatb10.x);
        if ((u_xlati10.x != 0i)) {
          u_xlat11 = vec4f(((vs_TEXCOORD0.yy * x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 1i)].xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati64].xy * vs_TEXCOORD0.xx) + u_xlat11.xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat11.xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f(((u_xlat11.xy + x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 3i)].xy)).xy, u_xlat11.zw);
          u_xlat11 = vec4f((((u_xlat11.xy * x_539) + x_539)).xy, u_xlat11.zw);
          u_xlat11 = vec4f(fract(u_xlat11.xy).xy, u_xlat11.zw);
          let x_4882 = ((x_1772.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat11.xy) + x_1772.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
          u_xlat37 = vec3f(x_4882.x, u_xlat37.y, x_4882.y);
        } else {
          u_xlat11 = (vs_TEXCOORD0.yyyy * x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 1i)]);
          u_xlat11 = ((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati64] * vs_TEXCOORD0.xxxx) + u_xlat11);
          u_xlat11 = ((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat11);
          u_xlat11 = (u_xlat11 + x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati64 + 3i)]);
          u_xlat11 = vec4f(((u_xlat11.xyz / u_xlat11.www)).xyz, u_xlat11.w);
          u_xlat10.x = dot(u_xlat11.xyz, u_xlat11.xyz);
          u_xlat10.x = inverseSqrt(u_xlat10.x);
          u_xlat11 = vec4f(((u_xlat10.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
          u_xlat10.x = dot(abs(u_xlat11.xyz), x_2668);
          u_xlat10.x = max(u_xlat10.x, 0.00000099999999747524f);
          u_xlat10.x = (1.0f / u_xlat10.x);
          u_xlat12 = vec4f(((u_xlat10.xxx * u_xlat11.zxy)).xyz, u_xlat12.w);
          u_xlat12.x = -(u_xlat12.x);
          u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
          u_xlatb65 = ((u_xlat12.yzyz >= vec4f())).xy;
          if (u_xlatb65.x) {
            x_4975 = u_xlat12.x;
          } else {
            x_4975 = -(u_xlat12.x);
          }
          u_xlat65.x = x_4975;
          if (u_xlatb65.y) {
            x_4988 = u_xlat12.x;
          } else {
            x_4988 = -(u_xlat12.x);
          }
          u_xlat65.y = x_4988;
          let x_5005 = ((u_xlat11.xy * u_xlat10.xx) + u_xlat65);
          u_xlat10 = vec4f(x_5005.x, u_xlat10.y, x_5005.y, u_xlat10.w);
          let x_5011 = ((u_xlat10.xz * x_539) + x_539);
          u_xlat10 = vec4f(x_5011.x, u_xlat10.y, x_5011.y, u_xlat10.w);
          let x_5018 = clamp(u_xlat10.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat10 = vec4f(x_5018.x, u_xlat10.y, x_5018.y, u_xlat10.w);
          let x_5034 = ((x_1772.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat10.xz) + x_1772.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
          u_xlat37 = vec3f(x_5034.x, u_xlat37.y, x_5034.y);
        }
      }
      u_xlat10 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat37.xz, 0.0f);
      if (u_xlatb29.z) {
        x_5046 = u_xlat10.w;
      } else {
        x_5046 = u_xlat10.x;
      }
      u_xlat91 = x_5046;
      if (u_xlatb29.x) {
        x_5057 = u_xlat10.xyz;
      } else {
        x_5057 = vec3f(u_xlat91);
      }
      u_xlat10 = vec4f(x_5057.xyz, u_xlat10.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    u_xlat10 = vec4f(((u_xlat10.xyz * x_3177.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlati91 = bitcast<i32>((bitcast<u32>(x_256.unity_RenderingLayer.x) & bitcast<u32>(x_3177.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat7.x = (u_xlat7.x * u_xlat90);
    u_xlat90 = dot(u_xlat0.xyz, u_xlat9.xyz);
    u_xlat90 = clamp(u_xlat90, 0.0f, 1.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat90);
    u_xlat10 = vec4f(((u_xlat7.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat35 = ((u_xlat35 * vec3f(u_xlat34)) + u_xlat3);
    u_xlat7.x = dot(u_xlat35, u_xlat35);
    u_xlat7.x = max(u_xlat7.x, 1.17549435e-38f);
    u_xlat7.x = inverseSqrt(u_xlat7.x);
    u_xlat35 = (u_xlat7.xxx * u_xlat35);
    u_xlat7.x = dot(u_xlat0.xyz, u_xlat35);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.y = dot(u_xlat9.xyz, u_xlat35);
    u_xlat7.y = clamp(u_xlat7.y, 0.0f, 1.0f);
    u_xlat7 = vec4f(((u_xlat7.xy * u_xlat7.xy)).xy, u_xlat7.zw);
    u_xlat7.x = ((u_xlat7.x * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat34 = max(u_xlat7.y, 0.10000000149011611938f);
    u_xlat7.x = (u_xlat34 * u_xlat7.x);
    u_xlat7.x = (u_xlat88 * u_xlat7.x);
    u_xlat7.x = (u_xlat87 / u_xlat7.x);
    u_xlat35 = ((u_xlat7.xxx * x_3097) + u_xlat4.xzw);
    u_xlat35 = ((u_xlat35 * u_xlat10.xyz) + u_xlat5.xyw);
    if ((u_xlati91 != 0i)) {
      x_5210 = u_xlat35;
    } else {
      x_5210 = u_xlat5.xyw;
    }
    u_xlat5 = vec4f(x_5210.xy, u_xlat5.z, x_5210.z);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu81 = (u_xlatu2 >> 2u);
  param_21 = bitcast<i32>(u_xlatu2);
  param_22 = 0i;
  param_23 = 1i;
  let x_5229 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu2);
  param_25 = 1i;
  param_26 = 1i;
  let x_5235 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati7 = vec3i(vec2i(x_5229, x_5235).xy, u_xlati7.z);
  u_xlati35 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2074.urp_ZBins[bitcast<i32>(u_xlatu81)].wy)));
  u_xlati9 = vec3i((~(u_xlati7.xy)).xy, u_xlati9.z);
  let x_5267 = bitcast<vec2i>((bitcast<vec2u>(u_xlati9.xx) & bitcast<vec2u>(x_2074.urp_ZBins[bitcast<i32>(u_xlatu81)].zx)));
  u_xlati9 = vec3i(x_5267.x, u_xlati9.y, x_5267.y);
  u_xlati35 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35) | bitcast<vec2u>(u_xlati9.xz)));
  u_xlati81 = bitcast<i32>((bitcast<u32>(u_xlati7.y) & bitcast<u32>(u_xlati35.x)));
  u_xlati2 = bitcast<i32>((bitcast<u32>(u_xlati9.y) & bitcast<u32>(u_xlati35.y)));
  u_xlatu81 = (bitcast<u32>(u_xlati81) | bitcast<u32>(u_xlati2));
  u_xlatu9.x = u_xlatu59;
  u_xlatu9.y = u_xlatu29.y;
  u_xlati63 = 0i;
  u_xlatu90 = u_xlatu81;
  u_xlat35 = u_xlat5.xyw;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu2 = (u_xlatu90 >> 16u);
    u_xlati84 = u_xlati63;
    u_xlatu7.x = u_xlatu90;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb34 = (u_xlati84 == 0i);
      u_xlatu10.x = (u_xlatu7.x & 65535u);
      u_xlatb10.x = (u_xlatu2 >= u_xlatu10.x);
      u_xlatb34 = (u_xlatb34 & u_xlatb10.x);
      if (!(u_xlatb34)) {
        break;
      }
      param_27 = u_xlatu7.x;
      param_28 = 5i;
      param_29 = 11i;
      let x_5354 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu34 = x_5354;
      u_xlatu10 = (vec4u(u_xlatu34) + u_xlatu9.xxyy);
      u_xlatu11 = (u_xlatu10.yw >> x_2212);
      param_30 = bitcast<i32>(u_xlatu10.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_5369 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu10.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_5376 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu10.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_5383 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu10.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_5390 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati10 = vec4i(x_5369, x_5376, x_5383, x_5390);
      u_xlati65 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_2253.urp_Tiles[bitcast<i32>(u_xlatu11.x)].wy)));
      u_xlati12 = ~(u_xlati10);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2253.urp_Tiles[bitcast<i32>(u_xlatu11.x)].zx))).xy, u_xlati13.zw);
      let x_5427 = bitcast<vec2i>((bitcast<vec2u>(u_xlati65) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati11 = vec3i(x_5427.x, u_xlati11.y, x_5427.y);
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati11.x)));
      u_xlati37.x = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati11.z)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati37.x) | bitcast<u32>(u_xlati10.x)));
      u_xlati37 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_2074.urp_ZBins[bitcast<i32>(u_xlatu11.y)].wy)));
      u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_2074.urp_ZBins[bitcast<i32>(u_xlatu11.y)].zx))).xy, u_xlati11.z);
      u_xlati37 = bitcast<vec2i>((bitcast<vec2u>(u_xlati37) | bitcast<vec2u>(u_xlati11.xy)));
      u_xlati37.x = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati37.x)));
      u_xlati64 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati37.y)));
      u_xlati37.x = bitcast<i32>((bitcast<u32>(u_xlati64) | bitcast<u32>(u_xlati37.x)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati37.x) & bitcast<u32>(u_xlati10.x)));
      u_xlati37.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu7.x) & 31i)));
      u_xlati10.x = bitcast<i32>((bitcast<u32>(u_xlati37.x) & bitcast<u32>(u_xlati10.x)));
      u_xlati34 = (bitcast<i32>(u_xlatu34) << bitcast<u32>(5i));
      u_xlatu34 = (u_xlatu2 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati34)))));
      u_xlatu34 = min(u_xlatu34, 31u);
      u_xlatu34 = (bitcast<u32>(-(bitcast<i32>(u_xlatu34))) + 31u);
      u_xlatu34 = (4294967295u >> (u_xlatu34 & 31u));
      u_xlati84 = bitcast<i32>((u_xlatu34 & bitcast<u32>(u_xlati10.x)));
      u_xlati34 = (bitcast<i32>(u_xlatu7.x) + 32i);
      u_xlatu7.x = (bitcast<u32>(u_xlati34) & 4294967264u);
    }
    u_xlatu90 = u_xlatu7.x;
    if ((u_xlati84 == 0i)) {
      break;
    }
    u_xlati2 = (0i - u_xlati84);
    u_xlatu2 = (bitcast<u32>(u_xlati2) & bitcast<u32>(u_xlati84));
    u_xlat2.x = f32(u_xlatu2);
    u_xlatu2 = (bitcast<u32>(u_xlat2.x) >> 23u);
    u_xlati2 = (bitcast<i32>(u_xlatu2) + -127i);
    u_xlati34 = (1i << bitcast<u32>((u_xlati2 & 31i)));
    u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati84) ^ bitcast<u32>(u_xlati34)));
    u_xlati34 = (bitcast<i32>(u_xlatu90) + -32i);
    u_xlati34 = bitcast<i32>((bitcast<u32>(u_xlati34) & 65504u));
    u_xlati2 = (u_xlati2 + u_xlati34);
    u_xlati2 = (bitcast<i32>(u_xlatu7.z) + u_xlati2);
    u_xlat10 = vec4f((((-(vs_TEXCOORD0) * x_3177.x_AdditionalLightsPosition[u_xlati2].www) + x_3177.x_AdditionalLightsPosition[u_xlati2].xyz)).xyz, u_xlat10.w);
    u_xlat34 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat34 = max(u_xlat34, 0.00006103515625f);
    u_xlat91 = inverseSqrt(u_xlat34);
    u_xlat11 = vec4f(((vec3f(u_xlat91) * u_xlat10.xyz)).xyz, u_xlat11.w);
    u_xlat92 = (1.0f / u_xlat34);
    u_xlat34 = (u_xlat34 * x_3177.x_AdditionalLightsAttenuation[u_xlati2].x);
    u_xlat34 = ((-(u_xlat34) * u_xlat34) + 1.0f);
    u_xlat34 = max(u_xlat34, 0.0f);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat34 = (u_xlat34 * u_xlat92);
    u_xlat92 = dot(x_3177.x_AdditionalLightsSpotDir[u_xlati2].xyz, u_xlat11.xyz);
    u_xlat92 = ((u_xlat92 * x_3177.x_AdditionalLightsAttenuation[u_xlati2].z) + x_3177.x_AdditionalLightsAttenuation[u_xlati2].w);
    u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
    u_xlat92 = (u_xlat92 * u_xlat92);
    u_xlat34 = (u_xlat34 * u_xlat92);
    u_xlatb92 = (u_xlati2 < 0i);
    u_xlati12.x = i32(x_209.x_AdditionalShadowParams[u_xlati2].w);
    if (u_xlatb92) {
      x_5703 = -1i;
    } else {
      x_5703 = u_xlati12.x;
    }
    u_xlati92 = x_5703;
    u_xlatb12.x = (u_xlati92 >= 0i);
    if (u_xlatb12.x) {
      u_xlatb12.x = any(!((vec4f() == vec4f(x_209.x_AdditionalShadowParams[u_xlati2].z))));
      if (u_xlatb12.x) {
        u_xlatb12 = ((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz;
        u_xlatb12.x = (u_xlatb12.y & u_xlatb12.x);
        u_xlatb13 = ((-(u_xlat11.zyxz) < vec4f())).xyz;
        u_xlat39.x = select(4.0f, 5.0f, u_xlatb13.x);
        u_xlat39.z = select(2.0f, 3.0f, u_xlatb13.y);
        u_xlat13.x = select(0.0f, 1.0f, u_xlatb13.z);
        if (u_xlatb12.z) {
          x_5762 = u_xlat39.z;
        } else {
          x_5762 = u_xlat13.x;
        }
        u_xlat66.x = x_5762;
        if (u_xlatb12.x) {
          x_5774 = u_xlat39.x;
        } else {
          x_5774 = u_xlat66.x;
        }
        u_xlat12.x = x_5774;
        u_xlati12.x = i32(u_xlat12.x);
        u_xlati92 = (u_xlati92 + u_xlati12.x);
      }
      u_xlati92 = (u_xlati92 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati92 + 1i)]);
      u_xlat12 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati92] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati92 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_209.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati92 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      u_xlatb92 = (0.0f < x_209.x_AdditionalShadowParams[u_xlati2].y);
      if (u_xlatb92) {
        u_xlatb92 = (1.0f == x_209.x_AdditionalShadowParams[u_xlati2].y);
        if (u_xlatb92) {
          u_xlat13 = (u_xlat12.xyxy + x_209.x_AdditionalShadowOffset0);
          let x_5852 = u_xlat13.xy;
          txVec60 = vec3f(x_5852.x, x_5852.y, u_xlat12.z);
          u_xlat14.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_5867 = u_xlat13.zw;
          txVec61 = vec3f(x_5867.x, x_5867.y, u_xlat12.z);
          u_xlat14.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat13 = (u_xlat12.xyxy + x_209.x_AdditionalShadowOffset1);
          let x_5887 = u_xlat13.xy;
          txVec62 = vec3f(x_5887.x, x_5887.y, u_xlat12.z);
          u_xlat14.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_5902 = u_xlat13.zw;
          txVec63 = vec3f(x_5902.x, x_5902.y, u_xlat12.z);
          u_xlat14.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat92 = dot(u_xlat14, x_520);
        } else {
          u_xlatb93 = (2.0f == x_209.x_AdditionalShadowParams[u_xlati2].y);
          if (u_xlatb93) {
            u_xlat13 = vec4f((((u_xlat12.xy * x_209.x_AdditionalShadowmapSize.zw) + x_539)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_209.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_563);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_5959 = (u_xlat15.yw * x_575);
            u_xlat14 = vec4f(x_5959.x, u_xlat14.y, x_5959.y, u_xlat14.w);
            u_xlat15 = vec4f((((u_xlat15.xz * x_539) + -(u_xlat67))).xy, u_xlat15.zw);
            u_xlat69 = (-(u_xlat67) + x_332);
            u_xlat16 = vec4f(min(u_xlat67, vec2f()).xy, u_xlat16.zw);
            u_xlat16 = vec4f((((-(u_xlat16.xy) * u_xlat16.xy) + u_xlat69)).xy, u_xlat16.zw);
            u_xlat67 = max(u_xlat67, vec2f());
            u_xlat67 = ((-(u_xlat67) * u_xlat67) + u_xlat14.yw);
            u_xlat16 = vec4f(((u_xlat16.xy + x_332)).xy, u_xlat16.zw);
            u_xlat67 = (u_xlat67 + x_332);
            u_xlat17 = vec4f(((u_xlat15.xy * x_631)).xy, u_xlat17.zw);
            u_xlat15 = vec4f(((u_xlat69 * x_631)).xy, u_xlat15.zw);
            u_xlat16 = vec4f(((u_xlat16.xy * x_631)).xy, u_xlat16.zw);
            u_xlat18 = vec4f(((u_xlat67 * x_631)).xy, u_xlat18.zw);
            u_xlat67 = (u_xlat14.yw * x_631);
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
            u_xlat15 = vec4f(((u_xlat15.xyz + x_704)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat18.zyw / u_xlat14.xyz)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_704)).xyz, u_xlat16.w);
            u_xlat15 = vec4f(((u_xlat15.yxz * x_209.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xyz * x_209.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat16.w);
            u_xlat15.w = u_xlat16.x;
            u_xlat17 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat15.ywxw);
            u_xlat67 = ((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat15.zw);
            u_xlat16.w = u_xlat15.y;
            let x_6125 = u_xlat16.yz;
            u_xlat15 = vec4f(u_xlat15.x, x_6125.x, u_xlat15.z, x_6125.y);
            u_xlat18 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat16 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat16.wywz);
            u_xlat15 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xwzw);
            u_xlat20 = (u_xlat14.xxxy * u_xlat19.zwyz);
            u_xlat21 = (u_xlat14.yyzz * u_xlat19);
            u_xlat93 = (u_xlat14.z * u_xlat19.y);
            let x_6171 = u_xlat17.xy;
            txVec64 = vec3f(x_6171.x, x_6171.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_6186 = u_xlat17.zw;
            txVec65 = vec3f(x_6186.x, x_6186.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat40.x = (u_xlat40.x * u_xlat20.y);
            u_xlat13.x = ((u_xlat20.x * u_xlat13.x) + u_xlat40.x);
            txVec66 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat13.x = ((u_xlat20.z * u_xlat40.x) + u_xlat13.x);
            let x_6239 = u_xlat16.xy;
            txVec67 = vec3f(x_6239.x, x_6239.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat13.x = ((u_xlat20.w * u_xlat40.x) + u_xlat13.x);
            let x_6263 = u_xlat18.xy;
            txVec68 = vec3f(x_6263.x, x_6263.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat13.x = ((u_xlat21.x * u_xlat40.x) + u_xlat13.x);
            let x_6287 = u_xlat18.zw;
            txVec69 = vec3f(x_6287.x, x_6287.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat13.x = ((u_xlat21.y * u_xlat40.x) + u_xlat13.x);
            let x_6311 = u_xlat16.zw;
            txVec70 = vec3f(x_6311.x, x_6311.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat13.x = ((u_xlat21.z * u_xlat40.x) + u_xlat13.x);
            let x_6335 = u_xlat15.xy;
            txVec71 = vec3f(x_6335.x, x_6335.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat13.x = ((u_xlat21.w * u_xlat40.x) + u_xlat13.x);
            let x_6359 = u_xlat15.zw;
            txVec72 = vec3f(x_6359.x, x_6359.y, u_xlat12.z);
            u_xlat40.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat92 = ((u_xlat93 * u_xlat40.x) + u_xlat13.x);
          } else {
            u_xlat13 = vec4f((((u_xlat12.xy * x_209.x_AdditionalShadowmapSize.zw) + x_539)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat67 = ((u_xlat12.xy * x_209.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat67.xxyy + x_563);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_6414 = (u_xlat15.yw * x_1030);
            u_xlat16 = vec4f(u_xlat16.x, x_6414.x, u_xlat16.z, x_6414.y);
            let x_6422 = ((u_xlat15.xz * x_539) + -(u_xlat67));
            u_xlat14 = vec4f(x_6422.x, u_xlat14.y, x_6422.y, u_xlat14.w);
            u_xlat15 = vec4f(((-(u_xlat67) + x_332)).xy, u_xlat15.zw);
            u_xlat69 = min(u_xlat67, vec2f());
            u_xlat15 = vec4f((((-(u_xlat69) * u_xlat69) + u_xlat15.xy)).xy, u_xlat15.zw);
            u_xlat69 = max(u_xlat67, vec2f());
            let x_6449 = ((-(u_xlat69) * u_xlat69) + u_xlat14.yw);
            u_xlat41 = vec3f(x_6449.x, u_xlat41.y, x_6449.y);
            u_xlat15 = vec4f(((u_xlat15.xy + x_4030)).xy, u_xlat15.zw);
            let x_6459 = (u_xlat41.xz + x_4030);
            u_xlat14 = vec4f(u_xlat14.x, x_6459.x, u_xlat14.z, x_6459.y);
            u_xlat17.z = (u_xlat14.y * 0.08163200318813323975f);
            u_xlat18 = vec4f(((u_xlat14.zxw * x_4045)).xyz, u_xlat18.w);
            u_xlat14 = vec4f(((u_xlat15.xy * x_1089)).xy, u_xlat14.zw);
            u_xlat17.x = u_xlat18.y;
            let x_6482 = ((u_xlat67.xx * x_1106) + x_1109);
            u_xlat17 = vec4f(u_xlat17.x, x_6482.x, u_xlat17.z, x_6482.y);
            let x_6488 = ((u_xlat67.xx * x_1106) + x_1116);
            u_xlat15 = vec4f(x_6488.x, u_xlat15.y, x_6488.y, u_xlat15.w);
            u_xlat15.y = u_xlat14.x;
            u_xlat15.w = u_xlat16.y;
            u_xlat17 = (u_xlat15 + u_xlat17);
            let x_6503 = ((u_xlat67.yy * x_1106) + x_1109);
            u_xlat18 = vec4f(u_xlat18.x, x_6503.x, u_xlat18.z, x_6503.y);
            let x_6509 = ((u_xlat67.yy * x_1106) + x_1116);
            u_xlat16 = vec4f(x_6509.x, u_xlat16.y, x_6509.y, u_xlat16.w);
            u_xlat16.y = u_xlat14.y;
            u_xlat14 = (u_xlat16 + u_xlat18);
            u_xlat15 = (u_xlat15 / u_xlat17);
            u_xlat15 = (u_xlat15 + x_1154);
            u_xlat16 = (u_xlat16 / u_xlat14);
            u_xlat16 = (u_xlat16 + x_1154);
            u_xlat15 = (u_xlat15.wxyz * x_209.x_AdditionalShadowmapSize.xxxx);
            u_xlat16 = (u_xlat16.xwyz * x_209.x_AdditionalShadowmapSize.yyyy);
            let x_6541 = u_xlat15.yzw;
            u_xlat18 = vec4f(x_6541.x, u_xlat18.y, x_6541.yz);
            u_xlat18.y = u_xlat16.x;
            u_xlat19 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat67 = ((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.y = u_xlat18.y;
            u_xlat18.y = u_xlat16.z;
            u_xlat20 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat21 = vec4f((((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat18.wy)).xy, u_xlat21.zw);
            u_xlat15.z = u_xlat18.y;
            u_xlat22 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyxz);
            u_xlat18.y = u_xlat16.w;
            u_xlat23 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat42 = ((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.w = u_xlat18.y;
            u_xlat75 = ((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat15.xw);
            let x_6639 = u_xlat18.xzw;
            u_xlat16 = vec4f(x_6639.x, u_xlat16.y, x_6639.yz);
            u_xlat18 = ((u_xlat13.xyxy * x_209.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat70 = ((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat16.x = u_xlat15.x;
            u_xlat13 = vec4f((((u_xlat13.xy * x_209.x_AdditionalShadowmapSize.xy) + u_xlat16.xy)).xy, u_xlat13.zw);
            u_xlat24 = (u_xlat14.xxxx * u_xlat17);
            u_xlat25 = (u_xlat14.yyyy * u_xlat17);
            u_xlat26 = (u_xlat14.zzzz * u_xlat17);
            u_xlat14 = (u_xlat14.wwww * u_xlat17);
            let x_6695 = u_xlat19.xy;
            txVec73 = vec3f(x_6695.x, x_6695.y, u_xlat12.z);
            u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_6709 = u_xlat19.zw;
            txVec74 = vec3f(x_6709.x, x_6709.y, u_xlat12.z);
            u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat15.x = (u_xlat15.x * u_xlat24.y);
            u_xlat93 = ((u_xlat24.x * u_xlat93) + u_xlat15.x);
            txVec75 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat93 = ((u_xlat24.z * u_xlat67.x) + u_xlat93);
            let x_6758 = u_xlat22.xy;
            txVec76 = vec3f(x_6758.x, x_6758.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat93 = ((u_xlat24.w * u_xlat67.x) + u_xlat93);
            let x_6780 = u_xlat20.xy;
            txVec77 = vec3f(x_6780.x, x_6780.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat93 = ((u_xlat25.x * u_xlat67.x) + u_xlat93);
            let x_6802 = u_xlat20.zw;
            txVec78 = vec3f(x_6802.x, x_6802.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat93 = ((u_xlat25.y * u_xlat67.x) + u_xlat93);
            let x_6824 = u_xlat21.xy;
            txVec79 = vec3f(x_6824.x, x_6824.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat93 = ((u_xlat25.z * u_xlat67.x) + u_xlat93);
            let x_6846 = u_xlat22.zw;
            txVec80 = vec3f(x_6846.x, x_6846.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat93 = ((u_xlat25.w * u_xlat67.x) + u_xlat93);
            let x_6868 = u_xlat23.xy;
            txVec81 = vec3f(x_6868.x, x_6868.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat93 = ((u_xlat26.x * u_xlat67.x) + u_xlat93);
            let x_6890 = u_xlat23.zw;
            txVec82 = vec3f(x_6890.x, x_6890.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat93 = ((u_xlat26.y * u_xlat67.x) + u_xlat93);
            txVec83 = vec3f(u_xlat42.x, u_xlat42.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat93 = ((u_xlat26.z * u_xlat67.x) + u_xlat93);
            txVec84 = vec3f(u_xlat75.x, u_xlat75.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat93 = ((u_xlat26.w * u_xlat67.x) + u_xlat93);
            let x_6954 = u_xlat18.xy;
            txVec85 = vec3f(x_6954.x, x_6954.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat93 = ((u_xlat14.x * u_xlat67.x) + u_xlat93);
            let x_6976 = u_xlat18.zw;
            txVec86 = vec3f(x_6976.x, x_6976.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat93 = ((u_xlat14.y * u_xlat67.x) + u_xlat93);
            txVec87 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat12.z);
            u_xlat67.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat93 = ((u_xlat14.z * u_xlat67.x) + u_xlat93);
            let x_7019 = u_xlat13.xy;
            txVec88 = vec3f(x_7019.x, x_7019.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat92 = ((u_xlat14.w * u_xlat13.x) + u_xlat93);
          }
        }
      } else {
        let x_7042 = u_xlat12.xy;
        txVec89 = vec3f(x_7042.x, x_7042.y, u_xlat12.z);
        u_xlat92 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat12.x = (1.0f + -(x_209.x_AdditionalShadowParams[u_xlati2].x));
      u_xlat92 = ((u_xlat92 * x_209.x_AdditionalShadowParams[u_xlati2].x) + u_xlat12.x);
      u_xlatb12.x = (0.0f >= u_xlat12.z);
      u_xlatb39 = (u_xlat12.z >= 1.0f);
      u_xlatb12.x = (u_xlatb39 | u_xlatb12.x);
      u_xlat92 = select(u_xlat92, 1.0f, u_xlatb12.x);
    } else {
      u_xlat92 = 1.0f;
    }
    u_xlat12.x = (-(u_xlat92) + 1.0f);
    u_xlat92 = ((u_xlat82 * u_xlat12.x) + u_xlat92);
    u_xlati12.x = (1i << bitcast<u32>((u_xlati2 & 31i)));
    u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.x) & bitcast<u32>(x_1772.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati12.x != 0i)) {
      u_xlati12.x = i32(x_1772.x_AdditionalLightsLightTypes[u_xlati2].el);
      u_xlati39 = select(1i, 0i, (u_xlati12.x != 0i));
      u_xlati66 = (u_xlati2 << bitcast<u32>(2i));
      if ((u_xlati39 != 0i)) {
        u_xlat13 = vec4f(((vs_TEXCOORD0.yyy * x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 1i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati66].xyw * vs_TEXCOORD0.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 3i)].xyw)).xyz, u_xlat13.w);
        let x_7180 = (u_xlat13.xy / u_xlat13.zz);
        u_xlat39 = vec3f(x_7180.x, u_xlat39.y, x_7180.y);
        let x_7186 = ((u_xlat39.xz * x_539) + x_539);
        u_xlat39 = vec3f(x_7186.x, u_xlat39.y, x_7186.y);
        let x_7193 = clamp(u_xlat39.xz, vec2f(0.0f), vec2f(1.0f));
        u_xlat39 = vec3f(x_7193.x, u_xlat39.y, x_7193.y);
        let x_7207 = ((x_1772.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat39.xz) + x_1772.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
        u_xlat39 = vec3f(x_7207.x, u_xlat39.y, x_7207.y);
      } else {
        u_xlatb12.x = (u_xlati12.x == 1i);
        u_xlati12.x = select(0i, 1i, u_xlatb12.x);
        if ((u_xlati12.x != 0i)) {
          u_xlat13 = vec4f(((vs_TEXCOORD0.yy * x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 1i)].xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati66].xy * vs_TEXCOORD0.xx) + u_xlat13.xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat13.xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f(((u_xlat13.xy + x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 3i)].xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((u_xlat13.xy * x_539) + x_539)).xy, u_xlat13.zw);
          u_xlat13 = vec4f(fract(u_xlat13.xy).xy, u_xlat13.zw);
          let x_7291 = ((x_1772.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat13.xy) + x_1772.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
          u_xlat39 = vec3f(x_7291.x, u_xlat39.y, x_7291.y);
        } else {
          u_xlat13 = (vs_TEXCOORD0.yyyy * x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 1i)]);
          u_xlat13 = ((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati66] * vs_TEXCOORD0.xxxx) + u_xlat13);
          u_xlat13 = ((x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat13);
          u_xlat13 = (u_xlat13 + x_1772.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati66 + 3i)]);
          u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
          u_xlat12.x = dot(u_xlat13.xyz, u_xlat13.xyz);
          u_xlat12.x = inverseSqrt(u_xlat12.x);
          u_xlat13 = vec4f(((u_xlat12.xxx * u_xlat13.xyz)).xyz, u_xlat13.w);
          u_xlat12.x = dot(abs(u_xlat13.xyz), x_2668);
          u_xlat12.x = max(u_xlat12.x, 0.00000099999999747524f);
          u_xlat12.x = (1.0f / u_xlat12.x);
          u_xlat14 = vec4f(((u_xlat12.xxx * u_xlat13.zxy)).xyz, u_xlat14.w);
          u_xlat14.x = -(u_xlat14.x);
          u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
          u_xlatb67 = ((u_xlat14.yzyz >= vec4f())).xy;
          if (u_xlatb67.x) {
            x_7384 = u_xlat14.x;
          } else {
            x_7384 = -(u_xlat14.x);
          }
          u_xlat67.x = x_7384;
          if (u_xlatb67.y) {
            x_7397 = u_xlat14.x;
          } else {
            x_7397 = -(u_xlat14.x);
          }
          u_xlat67.y = x_7397;
          let x_7414 = ((u_xlat13.xy * u_xlat12.xx) + u_xlat67);
          u_xlat12 = vec4f(x_7414.x, u_xlat12.y, x_7414.y, u_xlat12.w);
          let x_7420 = ((u_xlat12.xz * x_539) + x_539);
          u_xlat12 = vec4f(x_7420.x, u_xlat12.y, x_7420.y, u_xlat12.w);
          let x_7427 = clamp(u_xlat12.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat12 = vec4f(x_7427.x, u_xlat12.y, x_7427.y, u_xlat12.w);
          let x_7441 = ((x_1772.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].xy * u_xlat12.xz) + x_1772.x_AdditionalLightsCookieAtlasUVRects[u_xlati2].zw);
          u_xlat39 = vec3f(x_7441.x, u_xlat39.y, x_7441.y);
        }
      }
      u_xlat12 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat39.xz, 0.0f);
      if (u_xlatb29.z) {
        x_7452 = u_xlat12.w;
      } else {
        x_7452 = u_xlat12.x;
      }
      u_xlat93 = x_7452;
      if (u_xlatb29.x) {
        x_7463 = u_xlat12.xyz;
      } else {
        x_7463 = vec3f(u_xlat93);
      }
      u_xlat12 = vec4f(x_7463.xyz, u_xlat12.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    u_xlat12 = vec4f(((u_xlat12.xyz * x_3177.x_AdditionalLightsColor[u_xlati2].xyz)).xyz, u_xlat12.w);
    u_xlati2 = bitcast<i32>((bitcast<u32>(x_256.unity_RenderingLayer.x) & bitcast<u32>(x_3177.x_AdditionalLightsLayerMasks[u_xlati2].el)));
    u_xlat34 = (u_xlat34 * u_xlat92);
    u_xlat92 = dot(u_xlat0.xyz, u_xlat11.xyz);
    u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
    u_xlat34 = (u_xlat34 * u_xlat92);
    u_xlat12 = vec4f(((vec3f(u_xlat34) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat91)) + u_xlat3)).xyz, u_xlat10.w);
    u_xlat34 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat34 = max(u_xlat34, 1.17549435e-38f);
    u_xlat34 = inverseSqrt(u_xlat34);
    u_xlat10 = vec4f(((vec3f(u_xlat34) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat34 = dot(u_xlat0.xyz, u_xlat10.xyz);
    u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
    u_xlat10.x = dot(u_xlat11.xyz, u_xlat10.xyz);
    u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat34 = ((u_xlat34 * u_xlat8.x) + 1.00001001358032226562f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat10.x = max(u_xlat10.x, 0.10000000149011611938f);
    u_xlat34 = (u_xlat34 * u_xlat10.x);
    u_xlat34 = (u_xlat88 * u_xlat34);
    u_xlat34 = (u_xlat87 / u_xlat34);
    u_xlat10 = vec4f((((vec3f(u_xlat34) * x_3097) + u_xlat4.xzw)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat35)).xyz, u_xlat10.w);
    if ((u_xlati2 != 0i)) {
      x_7608 = u_xlat10.xyz;
    } else {
      x_7608 = u_xlat35;
    }
    u_xlat35 = x_7608;
  }
  u_xlat0 = vec4f(((u_xlat1.xyz + u_xlat6)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat35 + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat31;
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

