//Assets/Shared/Rendering/Shaders/B612_Steam.shader
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

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(3) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD2 : f32;

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
  vs_TEXCOORD1 = u_xlat0;
  gl_Position = (u_xlat1 + x_64.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_COLOR0 = in_COLOR0;
  vs_TEXCOORD0 = in_TEXCOORD0;
  vs_TEXCOORD2 = 0.0f;
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD1_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_COLOR0_1 : vec4f,
  @location(1)
  vs_TEXCOORD0_1 : vec2f,
  @location(2)
  vs_TEXCOORD2_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_COLOR0_param : vec4f, @location(2) in_TEXCOORD0_param : vec2f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD2);
}

//Assets/Shared/Rendering/Shaders/B612_Steam.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_MainLightPosition : vec4f,
  /* @offset(48) */
  x_MainLightColor : vec4f,
  /* @offset(64) */
  x_ProjectionParams : vec4f,
  /* @offset(80) */
  x_ZBufferParams : vec4f,
  /* @offset(96) */
  x_ScaleBiasRt : vec4f,
  /* @offset(112) */
  x_RTHandleScale : vec4f,
  /* @offset(128) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(192) */
  x_ScreenSize : vec4f,
  /* @offset(208) */
  x_CameraDepthTexture_TexelSize : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_Tint : vec4f,
  /* @offset(16) */
  x_Opacity : f32,
  /* @offset(20) */
  x_SunStrength : f32,
  /* @offset(24) */
  x_AmbientStrength : f32,
  /* @offset(28) */
  x_Transmission : f32,
  /* @offset(32) */
  x_Contrast : f32,
  /* @offset(36) */
  x_SoftDistance : f32,
  /* @offset(40) */
  x_NearFade : f32,
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
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
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

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(2) var x_SixWayNeg : texture_2d<f32>;

@group(0) @binding(3) var sampler_SixWayPos : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(0) @binding(1) var x_SixWayPos : texture_2d<f32>;

@group(1) @binding(2) var<uniform> x_176 : UnityPerMaterial;

@group(1) @binding(1) var<uniform> x_236 : UnityPerDraw;

var<private> vs_COLOR0 : vec4f;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4f;

const x_241 = vec2f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat1 : vec3f;
  var u_xlatb0 : vec3<bool>;
  var u_xlat2 : vec3f;
  var u_xlat3 : vec4f;
  var x_138 : f32;
  var x_150 : f32;
  var u_xlat4 : f32;
  var x_187 : f32;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlatu2 : vec4u;
  var u_xlat5 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = x_33.hlslcc_mtx4x4unity_MatrixV[0i].x;
  u_xlat0.y = x_33.hlslcc_mtx4x4unity_MatrixV[1i].x;
  u_xlat0.z = x_33.hlslcc_mtx4x4unity_MatrixV[2i].x;
  u_xlat0.x = dot(x_33.x_MainLightPosition.xyz, u_xlat0);
  u_xlat1.x = x_33.hlslcc_mtx4x4unity_MatrixV[0i].y;
  u_xlat1.y = x_33.hlslcc_mtx4x4unity_MatrixV[1i].y;
  u_xlat1.z = x_33.hlslcc_mtx4x4unity_MatrixV[2i].y;
  u_xlat0.y = dot(x_33.x_MainLightPosition.xyz, u_xlat1);
  u_xlat1.x = -(x_33.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat1.y = -(x_33.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat1.z = -(x_33.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat0.z = dot(x_33.x_MainLightPosition.xyz, u_xlat1);
  u_xlat1 = (u_xlat0 * u_xlat0);
  u_xlatb0 = ((vec4f() < u_xlat0.xyzx)).xyz;
  let x_121 = vs_TEXCOORD0;
  let x_123 = x_33.x_GlobalMipBias.x;
  let x_124 = textureSampleBias(x_SixWayNeg, sampler_SixWayPos, x_121, x_123);
  u_xlat2 = x_124.xyz;
  let x_131 = vs_TEXCOORD0;
  let x_133 = x_33.x_GlobalMipBias.x;
  let x_134 = textureSampleBias(x_SixWayPos, sampler_SixWayPos, x_131, x_133);
  u_xlat3 = x_134;
  if (u_xlatb0.x) {
    x_138 = u_xlat3.x;
  } else {
    x_138 = u_xlat2.x;
  }
  u_xlat0.x = x_138;
  if (u_xlatb0.y) {
    x_150 = u_xlat3.y;
  } else {
    x_150 = u_xlat2.y;
  }
  u_xlat0.y = x_150;
  u_xlat0 = vec3f(((u_xlat1.xy * u_xlat0.xy)).xy, u_xlat0.z);
  u_xlat0.x = (u_xlat0.y + u_xlat0.x);
  u_xlat4 = (x_176.x_Transmission + 1.0f);
  u_xlat4 = (u_xlat4 * u_xlat3.z);
  if (u_xlatb0.z) {
    x_187 = u_xlat4;
  } else {
    x_187 = u_xlat2.z;
  }
  u_xlat4 = x_187;
  u_xlat0.x = ((u_xlat4 * u_xlat1.z) + u_xlat0.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * x_176.x_Contrast);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat0 = (u_xlat0.xxx * x_33.x_MainLightColor.xyz);
  u_xlat1.x = dot(x_236.unity_SHAr.yw, x_241);
  u_xlat1.y = dot(x_236.unity_SHAg.yw, x_241);
  u_xlat1.z = dot(x_236.unity_SHAb.yw, x_241);
  u_xlat1 = (u_xlat1 + -(x_236.unity_SHC.xyz));
  u_xlat12 = ((u_xlat3.y * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat13 = (u_xlat3.w * x_176.x_Opacity);
  u_xlat13 = (u_xlat13 * x_176.x_Tint.w);
  u_xlat13 = (u_xlat13 * vs_COLOR0.w);
  u_xlat1 = (vec3f(u_xlat12) * u_xlat1);
  let x_296 = vec3f(x_176.x_AmbientStrength, x_176.x_AmbientStrength, x_176.x_AmbientStrength);
  u_xlat1 = (u_xlat1 * vec3f(x_296.x, x_296.y, x_296.z));
  let x_309 = vec3f(x_176.x_SunStrength, x_176.x_SunStrength, x_176.x_SunStrength);
  u_xlat0 = ((u_xlat0 * vec3f(x_309.x, x_309.y, x_309.z)) + u_xlat1);
  u_xlat0 = (u_xlat0 * x_176.x_Tint.xyz);
  u_xlat0 = (u_xlat0 * vs_COLOR0.xyz);
  let x_328 = x_33.x_ScaledScreenParams.xy;
  u_xlat1 = vec3f(((x_241 / vec2f(x_328.x, x_328.y))).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * hlslcc_FragCoord.xy)).xy, u_xlat1.z);
  u_xlat12 = ((u_xlat1.y * x_33.x_ScaleBiasRt.x) + x_33.x_ScaleBiasRt.y);
  u_xlat1.z = (-(u_xlat12) + 1.0f);
  u_xlat2 = vec3f((((-(x_33.x_CameraDepthTexture_TexelSize.xy) * vec2f(0.5f)) + x_241)).xy, u_xlat2.z);
  u_xlat1 = vec3f(min(u_xlat1.xz, u_xlat2.xy).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * x_33.x_RTHandleScale.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * x_33.x_ScreenSize.xy)).xy, u_xlat1.z);
  u_xlatu2 = vec4u(vec2u(u_xlat1.xy).xy, u_xlatu2.zw);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  u_xlat12 = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu2.xy), bitcast<i32>(u_xlatu2.w)).x;
  u_xlat12 = ((x_33.x_ZBufferParams.z * u_xlat12) + x_33.x_ZBufferParams.w);
  u_xlat12 = (1.0f / u_xlat12);
  u_xlat1.x = ((x_33.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_33.x_ZBufferParams.w);
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat12 = (u_xlat12 + -(u_xlat1.x));
  u_xlat1.x = (u_xlat1.x + -(x_33.x_ProjectionParams.y));
  u_xlat12 = (u_xlat12 / x_176.x_SoftDistance);
  u_xlat12 = clamp(u_xlat12, 0.0f, 1.0f);
  u_xlat12 = (u_xlat12 * u_xlat13);
  u_xlat5 = max(x_176.x_NearFade, 0.00100000004749745131f);
  u_xlat1.x = (u_xlat1.x / u_xlat5);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat12 = (u_xlat12 * u_xlat1.x);
  u_xlat12 = clamp(u_xlat12, 0.0f, 1.0f);
  SV_Target0 = vec4f(((vec3f(u_xlat12) * u_xlat0)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat12;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(1) vs_TEXCOORD0_param : vec2f, @location(0) vs_COLOR0_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

