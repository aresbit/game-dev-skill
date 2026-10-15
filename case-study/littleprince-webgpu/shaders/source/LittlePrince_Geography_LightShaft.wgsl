//Assets/Levels/Geography/Materials/Shaders/GeoLightShaft.shader
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD3 : vec4f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat7 : f32;
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
  vs_TEXCOORD2 = u_xlat0.xyz;
  u_xlat0 = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  vs_TEXCOORD0 = in_TEXCOORD0;
  u_xlat1.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat7 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat7 = max(u_xlat7, 1.17549435e-38f);
  u_xlat7 = inverseSqrt(u_xlat7);
  vs_TEXCOORD1 = (vec3f(u_xlat7) * u_xlat1.xyz);
  u_xlat0.y = (u_xlat0.y * x_74.x_ProjectionParams.x);
  let x_164 = (u_xlat0.xwy * vec3f(0.5f));
  u_xlat1 = vec4f(x_164.x, u_xlat1.y, x_164.yz);
  vs_TEXCOORD3 = vec4f(vs_TEXCOORD3.xy, u_xlat0.zw.xy);
  vs_TEXCOORD3 = vec4f(((u_xlat1.zz + u_xlat1.xw)).xy, vs_TEXCOORD3.zw);
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD2_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(3)
  vs_TEXCOORD3_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD3);
}

//Assets/Levels/Geography/Materials/Shaders/GeoLightShaft.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Color : vec4f,
  /* @offset(16) */
  x_Intensity : f32,
  /* @offset(20) */
  x_FadeIn : f32,
  /* @offset(24) */
  x_Falloff : f32,
  /* @offset(28) */
  x_EdgePower : f32,
  /* @offset(32) */
  x_SoftDepth : f32,
  /* @offset(36) */
  x_NearFade : f32,
  /* @offset(40) */
  x_Streaks : f32,
}

struct PGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  x_ZBufferParams : vec4f,
  /* @offset(32) */
  x_RTHandleScale : vec4f,
  /* @offset(48) */
  x_ScreenSize : vec4f,
  /* @offset(64) */
  x_CameraDepthTexture_TexelSize : vec4f,
}

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_162 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

@group(1) @binding(0) var<uniform> x_256 : PGlobals;

var<private> vs_TEXCOORD3 : vec4f;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat6 : vec2f;
  var u_xlat9 : f32;
  var u_xlat1 : vec3f;
  var u_xlat2 : vec3f;
  var u_xlatu1 : vec4u;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = ((vs_TEXCOORD0.x * 97.0f) + 3.09999990463256835938f);
  u_xlat3.x = floor(u_xlat0.x);
  u_xlat3.y = (u_xlat3.x + 1.0f);
  u_xlat3 = vec3f(sin(u_xlat3.xy).xy, u_xlat3.z);
  u_xlat0 = vec4f(u_xlat0.x, ((u_xlat3.xy * vec2f(43758.546875f))).xy, u_xlat0.w);
  u_xlat0 = vec4f(fract(u_xlat0.xyz).xyz, u_xlat0.w);
  u_xlat6.x = (-(u_xlat0.y) + u_xlat0.z);
  u_xlat9 = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat0.x) * 2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat9);
  u_xlat0.x = ((u_xlat0.x * u_xlat6.x) + u_xlat0.y);
  u_xlat0.y = (vs_TEXCOORD0.x * 38.0f);
  u_xlat6.x = floor(u_xlat0.y);
  u_xlat6.y = (u_xlat6.x + 1.0f);
  u_xlat0 = vec4f(u_xlat0.xy, sin(u_xlat6).xy);
  let x_113 = (u_xlat0.xzw * vec3f(0.34999999403953552246f, 43758.546875f, 43758.546875f));
  u_xlat0 = vec4f(x_113.x, u_xlat0.y, x_113.yz);
  u_xlat3 = fract(u_xlat0.yzw);
  u_xlat9 = (-(u_xlat3.y) + u_xlat3.z);
  u_xlat1.x = (u_xlat3.x * u_xlat3.x);
  u_xlat3.x = ((-(u_xlat3.x) * 2.0f) + 3.0f);
  u_xlat3.x = (u_xlat3.x * u_xlat1.x);
  u_xlat3.x = ((u_xlat3.x * u_xlat9) + u_xlat3.y);
  u_xlat0.x = ((u_xlat3.x * 0.64999997615814208984f) + u_xlat0.x);
  u_xlat0.x = ((-(x_162.x_Streaks) * u_xlat0.x) + 1.0f);
  u_xlat3.x = (1.0f / x_162.x_FadeIn);
  u_xlat3.x = (u_xlat3.x * vs_TEXCOORD0.y);
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat6.x = ((u_xlat3.x * -2.0f) + 3.0f);
  u_xlat3.x = (u_xlat3.x * u_xlat3.x);
  u_xlat3.x = (u_xlat3.x * u_xlat6.x);
  u_xlat6.x = max(x_162.x_Falloff, 0.00999999977648258209f);
  u_xlat6.x = (-(vs_TEXCOORD0.y) / u_xlat6.x);
  u_xlat6.x = (u_xlat6.x * 1.44269502162933349609f);
  u_xlat6.x = exp2(u_xlat6.x);
  u_xlat3.x = (u_xlat6.x * u_xlat3.x);
  u_xlat6.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat6.x = inverseSqrt(u_xlat6.x);
  u_xlat1 = (u_xlat6.xxx * vs_TEXCOORD1);
  u_xlat2 = (-(vs_TEXCOORD2) + x_256.x_WorldSpaceCameraPos);
  u_xlat6.x = dot(u_xlat2, u_xlat2);
  u_xlat6.x = sqrt(u_xlat6.x);
  u_xlat9 = max(u_xlat6.x, 0.00009999999747378752f);
  u_xlat3.y = (u_xlat6.x + -0.20000000298023223877f);
  u_xlat2 = (u_xlat2 / vec3f(u_xlat9));
  u_xlat9 = dot(u_xlat1, u_xlat2);
  u_xlat9 = min(abs(u_xlat9), 1.0f);
  u_xlat9 = log2(u_xlat9);
  u_xlat9 = (u_xlat9 * x_162.x_EdgePower);
  u_xlat9 = exp2(u_xlat9);
  u_xlat9 = (u_xlat9 * x_162.x_Intensity);
  u_xlat3.x = (u_xlat3.x * u_xlat9);
  u_xlat0.x = (u_xlat0.x * u_xlat3.x);
  let x_320 = (vs_TEXCOORD3.xy / vs_TEXCOORD3.ww);
  u_xlat3 = vec3f(x_320.x, u_xlat3.y, x_320.y);
  u_xlat1 = vec3f((((-(x_256.x_CameraDepthTexture_TexelSize.xy) * vec2f(0.5f)) + vec2f(1.0f))).xy, u_xlat1.z);
  let x_339 = min(u_xlat3.xz, u_xlat1.xy);
  u_xlat3 = vec3f(x_339.x, u_xlat3.y, x_339.y);
  let x_347 = (u_xlat3.xz * x_256.x_RTHandleScale.xy);
  u_xlat3 = vec3f(x_347.x, u_xlat3.y, x_347.y);
  let x_355 = (u_xlat3.xz * x_256.x_ScreenSize.xy);
  u_xlat3 = vec3f(x_355.x, u_xlat3.y, x_355.y);
  u_xlatu1 = vec4u(vec2u(u_xlat3.xz).xy, u_xlatu1.zw);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  u_xlat3.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu1.xy), bitcast<i32>(u_xlatu1.w)).x;
  u_xlat3.x = ((x_256.x_ZBufferParams.z * u_xlat3.x) + x_256.x_ZBufferParams.w);
  u_xlat3.x = (1.0f / u_xlat3.x);
  u_xlat3.x = (u_xlat3.x + -(vs_TEXCOORD3.w));
  u_xlat1 = vec3f(max(vec2f(x_162.x_SoftDepth, x_162.x_NearFade), vec2f(0.00100000004749745131f)).xy, u_xlat1.z);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat1.xy)).xy, u_xlat3.z);
  u_xlat3 = vec3f(clamp(u_xlat3.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat3.z);
  u_xlat0.x = (u_xlat3.x * u_xlat0.x);
  u_xlat0.x = (u_xlat3.y * u_xlat0.x);
  SV_Target0 = vec4f(((u_xlat0.xxx * x_162.x_Color.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_TEXCOORD1_param : vec3f, @location(2) vs_TEXCOORD2_param : vec3f, @location(3) vs_TEXCOORD3_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

