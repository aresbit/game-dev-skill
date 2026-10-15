//Assets/Shared/Rendering/Shaders/B612_Glow.shader
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

alias Arr_6 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(64) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
}

@group(1) @binding(3) var<uniform> x_20 : UnityPerDraw;

var<private> in_TEXCOORD0 : vec2f;

@group(1) @binding(2) var<uniform> x_66 : VGlobals;

var<private> vs_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat6 : vec2f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(x_20.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz, x_20.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0.y = dot(x_20.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz, x_20.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz);
  u_xlat0 = vec4f(sqrt(u_xlat0.xy).xy, u_xlat0.zw);
  u_xlat6 = (in_TEXCOORD0 + vec2f(-0.5f));
  u_xlat1.x = (u_xlat6.x * x_66.hlslcc_mtx4x4unity_MatrixV[0i].x);
  u_xlat1.y = (u_xlat6.x * x_66.hlslcc_mtx4x4unity_MatrixV[1i].x);
  u_xlat1.z = (u_xlat6.x * x_66.hlslcc_mtx4x4unity_MatrixV[2i].x);
  u_xlat1 = vec4f((((u_xlat1.xyz * u_xlat0.yyy) + x_20.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat1.w);
  u_xlat2.x = (u_xlat6.y * x_66.hlslcc_mtx4x4unity_MatrixV[0i].y);
  u_xlat2.y = (u_xlat6.y * x_66.hlslcc_mtx4x4unity_MatrixV[1i].y);
  u_xlat2.z = (u_xlat6.y * x_66.hlslcc_mtx4x4unity_MatrixV[2i].y);
  u_xlat0 = vec4f((((u_xlat2 * u_xlat0.xxx) + u_xlat1.xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_66.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_66.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat0 = ((x_66.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat0 + x_66.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD0 = in_TEXCOORD0;
  vs_TEXCOORD1 = 0.0f;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_TEXCOORD0_param : vec2f) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1);
}

//Assets/Shared/Rendering/Shaders/B612_Glow.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_GlowColor : vec4f,
  /* @offset(16) */
  x_Falloff : f32,
  /* @offset(20) */
  x_FlickerAmount : f32,
  /* @offset(24) */
  x_FlickerSpeed : f32,
  /* @offset(28) */
  x_FlickerSeed : f32,
  /* @offset(32) */
  x_SoftDistance : f32,
}

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
  /* @offset(16) */
  x_Time : vec4f,
  /* @offset(32) */
  x_ZBufferParams : vec4f,
  /* @offset(48) */
  x_ScaleBiasRt : vec4f,
  /* @offset(64) */
  x_RTHandleScale : vec4f,
  /* @offset(80) */
  x_ScreenSize : vec4f,
  /* @offset(96) */
  x_CameraDepthTexture_TexelSize : vec4f,
}

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_69 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_92 : PGlobals;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4f;

const x_151 = vec2f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat6 : f32;
  var u_xlat1 : vec3f;
  var u_xlat3 : vec3f;
  var u_xlatu1 : vec4u;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec3f(((vs_TEXCOORD0 + vec2f(-0.5f))).xy, u_xlat0.z);
  u_xlat0.x = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat0.x = sqrt(u_xlat0.x);
  u_xlat0.x = ((-(u_xlat0.x) * 2.0f) + 1.0f);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * x_69.x_Falloff);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat0 = (u_xlat0.xxx * x_69.x_GlowColor.xyz);
  u_xlat6 = ((x_92.x_Time.y * x_69.x_FlickerSpeed) + x_69.x_FlickerSeed);
  u_xlat1 = vec3f((((vec2f(u_xlat6) * vec2f(2.36999988555908203125f, 5.09999990463256835938f)) + vec2f(1.29999995231628417969f, 0.69999998807907104492f))).xy, u_xlat1.z);
  u_xlat6 = sin(u_xlat6);
  u_xlat1 = vec3f(sin(u_xlat1.xy).xy, u_xlat1.z);
  u_xlat1.x = (u_xlat1.x * 0.30000001192092895508f);
  u_xlat6 = ((u_xlat6 * 0.55000001192092895508f) + u_xlat1.x);
  u_xlat6 = ((u_xlat1.y * 0.15000000596046447754f) + u_xlat6);
  u_xlat6 = ((x_69.x_FlickerAmount * u_xlat6) + 1.0f);
  u_xlat0 = (vec3f(u_xlat6) * u_xlat0);
  let x_154 = x_92.x_ScaledScreenParams.xy;
  u_xlat1 = vec3f(((x_151 / vec2f(x_154.x, x_154.y))).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * hlslcc_FragCoord.xy)).xy, u_xlat1.z);
  u_xlat6 = ((u_xlat1.y * x_92.x_ScaleBiasRt.x) + x_92.x_ScaleBiasRt.y);
  u_xlat1.z = (-(u_xlat6) + 1.0f);
  let x_190 = ((-(x_92.x_CameraDepthTexture_TexelSize.xy) * vec2f(0.5f)) + x_151);
  u_xlat3 = vec3f(x_190.x, u_xlat3.y, x_190.y);
  u_xlat1 = vec3f(min(u_xlat3.xz, u_xlat1.xz).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * x_92.x_RTHandleScale.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * x_92.x_ScreenSize.xy)).xy, u_xlat1.z);
  u_xlatu1 = vec4u(vec2u(u_xlat1.xy).xy, u_xlatu1.zw);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  u_xlat6 = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu1.xy), bitcast<i32>(u_xlatu1.w)).x;
  u_xlat6 = ((x_92.x_ZBufferParams.z * u_xlat6) + x_92.x_ZBufferParams.w);
  u_xlat6 = (1.0f / u_xlat6);
  u_xlat1.x = ((x_92.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_92.x_ZBufferParams.w);
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat6 = (u_xlat6 + -(u_xlat1.x));
  u_xlat6 = (u_xlat6 / x_69.x_SoftDistance);
  u_xlat6 = clamp(u_xlat6, 0.0f, 1.0f);
  SV_Target0 = vec4f(((vec3f(u_xlat6) * u_xlat0)).xyz, SV_Target0.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

