//Assets/Levels/Geography/Materials/Shaders/GeoCloudSprite.shader
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
  x_MainLightPosition : vec4f,
  /* @offset(16) */
  x_Time : vec4f,
  /* @offset(32) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(48) */
  x_ProjectionParams : vec4f,
  /* @offset(64) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(128) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
  /* @offset(192) */
  x_GeoCloudWind : vec4f,
  /* @offset(208) */
  x_GeoCloudShadow : vec4f,
  /* @offset(224) */
  x_GeoCloudCentre : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_Tint : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_HazeColor : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_HorizonColor : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_SunHorizonColor : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_BelowColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_SoftTone : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_ShadeTint : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Exposure : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_BackExposure : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_SoftDepth : f32,
  /* @offset(124) */
  Xhlslcc_UnusedX_HazeDistance : f32,
  /* @offset(128) */
  Xhlslcc_UnusedX_HazeMax : f32,
  /* @offset(132) */
  Xhlslcc_UnusedX_HorizonWarmth : f32,
  /* @offset(136) */
  Xhlslcc_UnusedX_FarDistance : f32,
  /* @offset(140) */
  Xhlslcc_UnusedX_Soften : f32,
  /* @offset(144) */
  Xhlslcc_UnusedX_Distort : f32,
  /* @offset(148) */
  Xhlslcc_UnusedX_Erode : f32,
  /* @offset(152) */
  x_FadeSeconds : f32,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_63 : VGlobals;

var<private> in_TEXCOORD4 : vec4f;

var<private> in_TEXCOORD3 : vec4f;

@group(1) @binding(1) var<uniform> x_318 : UnityPerMaterial;

var<private> vs_TEXCOORD6 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

var<private> in_TEXCOORD0 : vec4f;

var<private> vs_TEXCOORD5 : vec4f;

@group(0) @binding(1) var x_GeoCloudNoise : texture_2d<f32>;

@group(0) @binding(5) var sampler_GeoCloudNoise : sampler;

var<private> vs_TEXCOORD4 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD7 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_TEXCOORD1 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> in_TEXCOORD2 : vec4f;

var<private> phase0_Output0_1 : vec4f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD8 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat8 : f32;
  var u_xlat15 : vec2f;
  var u_xlat2 : vec3f;
  var x_100 : vec2f;
  var u_xlat1 : vec4f;
  var u_xlat22 : f32;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec3f;
  var u_xlat23 : f32;
  var u_xlat24 : f32;
  var u_xlat14 : vec2f;
  var u_xlat7 : vec3f;
  var u_xlatb22 : bool;
  var x_569 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat17 : vec2f;
  var u_xlatb21 : bool;
  var u_xlatb7 : bool;
  var x_856 : f32;
  var u_xlat9 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat21 = dot(x_63.x_GeoCloudWind.xy, x_63.x_GeoCloudWind.xy);
  u_xlat21 = sqrt(u_xlat21);
  u_xlatb1 = (u_xlat21 >= 0.00009999999747378752f);
  u_xlat8 = select(0.0f, 1.0f, u_xlatb1);
  u_xlat15.x = max(u_xlat21, 0.00009999999747378752f);
  u_xlat15 = (x_63.x_GeoCloudWind.xy / u_xlat15.xx);
  if (u_xlatb1) {
    x_100 = u_xlat15;
  } else {
    x_100 = vec2f(1.0f, 0.0f);
  }
  u_xlat2 = vec3f(x_100.xy, u_xlat2.z);
  u_xlat1.x = max(in_TEXCOORD4.x, 1.0f);
  u_xlat15.x = (x_63.x_Time.y + x_63.x_GeoCloudCentre.w);
  u_xlat22 = (u_xlat21 * u_xlat15.x);
  u_xlat22 = (u_xlat22 * in_TEXCOORD4.w);
  u_xlat22 = (u_xlat22 / u_xlat1.x);
  u_xlat22 = (u_xlat22 + in_TEXCOORD4.y);
  u_xlat3.z = floor(u_xlat22);
  u_xlat22 = (u_xlat22 + -(u_xlat3.z));
  u_xlat4 = vec3f(((vec2f(u_xlat22) + vec2f(-0.5f, -0.15000000596046447754f))).xy, u_xlat4.z);
  u_xlat23 = (u_xlat1.x * u_xlat4.x);
  u_xlat23 = (u_xlat8 * u_xlat23);
  let x_178 = (in_TEXCOORD3.zzz * vec3f(3.70000004768371582031f, 1.89999997615814208984f, 97.0f));
  u_xlat3 = vec4f(x_178.xy, u_xlat3.z, x_178.z);
  u_xlat24 = dot(u_xlat3.zw, vec2f(12.98980045318603515625f, 78.233001708984375f));
  u_xlat24 = sin(u_xlat24);
  u_xlat24 = (u_xlat24 * 43758.546875f);
  u_xlat24 = fract(u_xlat24);
  u_xlat24 = (u_xlat24 + -0.5f);
  u_xlat24 = (u_xlat1.x * u_xlat24);
  u_xlat24 = (u_xlat24 * in_TEXCOORD4.z);
  u_xlat24 = (u_xlat8 * u_xlat24);
  u_xlat2.z = -(u_xlat2.y);
  let x_216 = (u_xlat2.zx * vec2f(u_xlat24));
  u_xlat4 = vec3f(x_216.x, u_xlat4.y, x_216.y);
  u_xlat2 = vec3f((((u_xlat2.xy * vec2f(u_xlat23)) + u_xlat4.xz)).xy, u_xlat2.z);
  let x_233 = (u_xlat0.xz + u_xlat2.xy);
  u_xlat2 = vec3f(x_233.x, u_xlat2.y, x_233.y);
  u_xlat0.x = (u_xlat15.x * x_63.x_GeoCloudWind.z);
  u_xlat14.x = dot(u_xlat2.xz, vec2f(0.0043000001460313797f, 0.002099999925121665f));
  u_xlat14.x = ((u_xlat0.x * 0.08900000154972076416f) + u_xlat14.x);
  u_xlat14.x = sin(u_xlat14.x);
  u_xlat24 = dot(u_xlat2.xz, vec2f(-0.00170000002253800631f, 0.00350000010803341866f));
  u_xlat24 = ((-(u_xlat0.x) * 0.05700000002980232239f) + u_xlat24);
  u_xlat24 = (u_xlat24 + 1.29999995231628417969f);
  u_xlat24 = sin(u_xlat24);
  u_xlat24 = (u_xlat14.x * u_xlat24);
  u_xlat24 = (u_xlat24 * 0.40000000596046447754f);
  u_xlat14.x = ((u_xlat14.x * 0.60000002384185791016f) + u_xlat24);
  u_xlat14.x = (u_xlat14.x * x_63.x_GeoCloudWind.w);
  u_xlat14.x = ((u_xlat23 * in_TEXCOORD3.w) + u_xlat14.x);
  u_xlat2.y = (u_xlat14.x + u_xlat0.y);
  u_xlat7.x = (u_xlat21 * x_318.x_FadeSeconds);
  u_xlat7.x = (u_xlat7.x * in_TEXCOORD4.w);
  u_xlat7.x = (u_xlat7.x / u_xlat1.x);
  u_xlat7.x = max(u_xlat7.x, 0.05999999865889549255f);
  u_xlat7.x = min(u_xlat7.x, 0.40000000596046447754f);
  u_xlat14.x = (1.0f / u_xlat7.x);
  u_xlat14.x = (u_xlat14.x * u_xlat22);
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat21 = ((u_xlat14.x * -2.0f) + 3.0f);
  u_xlat14.x = (u_xlat14.x * u_xlat14.x);
  u_xlat14.x = (u_xlat14.x * u_xlat21);
  u_xlat21 = (-(u_xlat7.x) + 1.0f);
  u_xlat1.x = (-(u_xlat21) + 1.0f);
  u_xlat21 = (-(u_xlat21) + u_xlat22);
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat21 = (u_xlat21 * u_xlat1.x);
  u_xlat21 = clamp(u_xlat21, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat21 * -2.0f) + 3.0f);
  u_xlat21 = (u_xlat21 * u_xlat21);
  u_xlat21 = ((-(u_xlat1.x) * u_xlat21) + 1.0f);
  u_xlat14.x = ((u_xlat14.x * u_xlat21) + -1.0f);
  vs_TEXCOORD6.w = ((u_xlat8 * u_xlat14.x) + 1.0f);
  u_xlat14.x = (u_xlat7.x * 1.5f);
  u_xlat14.x = (1.0f / u_xlat14.x);
  u_xlat14.x = (u_xlat14.x * u_xlat22);
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat21 = ((u_xlat14.x * -2.0f) + 3.0f);
  u_xlat14.x = (u_xlat14.x * u_xlat14.x);
  u_xlat14.x = (u_xlat14.x * u_xlat21);
  u_xlat14.x = ((u_xlat14.x * 0.14999997615814208984f) + 0.85000002384185791016f);
  u_xlat7.x = ((-(u_xlat7.x) * 1.5f) + 1.0f);
  u_xlat21 = (-(u_xlat7.x) + 1.0f);
  u_xlat7.x = (-(u_xlat7.x) + u_xlat22);
  u_xlat21 = (1.0f / u_xlat21);
  u_xlat7.x = (u_xlat21 * u_xlat7.x);
  u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
  u_xlat21 = ((u_xlat7.x * -2.0f) + 3.0f);
  u_xlat7.x = (u_xlat7.x * u_xlat7.x);
  u_xlat7.x = (u_xlat7.x * u_xlat21);
  u_xlat7.x = ((u_xlat7.x * 0.05999994277954101562f) + 1.0f);
  u_xlat7.x = ((u_xlat14.x * u_xlat7.x) + -1.0f);
  u_xlat7.x = ((u_xlat8 * u_xlat7.x) + 1.0f);
  u_xlat14.x = (u_xlat4.y * 1.42857134342193603516f);
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat21 = ((u_xlat14.x * -2.0f) + 3.0f);
  u_xlat14.x = (u_xlat14.x * u_xlat14.x);
  u_xlat1.x = (u_xlat14.x * u_xlat21);
  u_xlat22 = (u_xlat3.z * 0.5f);
  u_xlat22 = fract(u_xlat22);
  u_xlatb22 = (u_xlat22 < 0.25f);
  u_xlat14.x = ((-(u_xlat21) * u_xlat14.x) + 1.0f);
  if (u_xlatb22) {
    x_569 = u_xlat1.x;
  } else {
    x_569 = u_xlat14.x;
  }
  u_xlat14.x = x_569;
  vs_TEXCOORD3.w = (u_xlat14.x * u_xlat8);
  let x_590 = (-(u_xlat2) + x_63.x_WorldSpaceCameraPos);
  u_xlat1 = vec4f(x_590.xy, u_xlat1.z, x_590.z);
  u_xlat14 = (u_xlat1.xw + vec2f(0.00000999999974737875f, 0.0f));
  u_xlat23 = dot(u_xlat14, u_xlat14);
  u_xlat23 = inverseSqrt(u_xlat23);
  u_xlat4 = vec3f(((u_xlat14 * vec2f(u_xlat23))).xy, u_xlat4.z);
  u_xlat7 = vec3f(((u_xlat7.xx * in_TEXCOORD0.xy)).xy, u_xlat7.z);
  u_xlat5.x = (u_xlat7.x * x_63.hlslcc_mtx4x4unity_MatrixV[0i].x);
  u_xlat5.y = (u_xlat7.x * x_63.hlslcc_mtx4x4unity_MatrixV[1i].x);
  u_xlat5.z = (u_xlat7.x * x_63.hlslcc_mtx4x4unity_MatrixV[2i].x);
  u_xlat5 = vec4f(((u_xlat2 + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat6.x = (u_xlat7.y * x_63.hlslcc_mtx4x4unity_MatrixV[0i].y);
  u_xlat6.y = (u_xlat7.y * x_63.hlslcc_mtx4x4unity_MatrixV[1i].y);
  u_xlat6.z = (u_xlat7.y * x_63.hlslcc_mtx4x4unity_MatrixV[2i].y);
  u_xlat7 = (u_xlat5.xyz + u_xlat6.xyz);
  u_xlat5 = (u_xlat7.yyyy * x_63.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat5 = ((x_63.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat7.xxxx) + u_xlat5);
  u_xlat5 = ((x_63.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat7.zzzz) + u_xlat5);
  u_xlat5 = (u_xlat5 + x_63.hlslcc_mtx4x4unity_MatrixVP[3i]);
  let x_694 = (u_xlat5.xw * vec2f(0.5f));
  u_xlat6 = vec4f(x_694.x, u_xlat6.y, x_694.y, u_xlat6.w);
  u_xlat7.x = (u_xlat5.y * x_63.x_ProjectionParams.x);
  u_xlat6.w = (u_xlat7.x * 0.5f);
  vs_TEXCOORD5 = vec4f(((u_xlat6.zz + u_xlat6.xw)).xy, vs_TEXCOORD5.zw);
  u_xlat7 = vec3f(((x_63.x_MainLightPosition.xz + vec2f(0.00000999999974737875f))).xy, u_xlat7.z);
  u_xlat21 = dot(u_xlat7.xy, u_xlat7.xy);
  u_xlat21 = inverseSqrt(u_xlat21);
  u_xlat7 = vec3f(((vec2f(u_xlat21) * u_xlat7.xy)).xy, u_xlat7.z);
  u_xlat21 = dot(-(u_xlat4.xy), -(u_xlat7.xy));
  u_xlat21 = max(u_xlat21, -1.0f);
  u_xlat21 = min(u_xlat21, 1.0f);
  u_xlat23 = (-(abs(u_xlat21)) + 1.0f);
  u_xlat23 = sqrt(u_xlat23);
  u_xlat17.x = ((abs(u_xlat21) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat17.x = ((u_xlat17.x * abs(u_xlat21)) + -0.21211439371109008789f);
  u_xlat17.x = ((u_xlat17.x * abs(u_xlat21)) + 1.57072877883911132812f);
  u_xlat24 = (u_xlat23 * u_xlat17.x);
  u_xlat24 = ((u_xlat24 * -2.0f) + 3.14159274101257324219f);
  u_xlatb21 = (u_xlat21 < -(u_xlat21));
  u_xlat21 = select(0.0f, u_xlat24, u_xlatb21);
  u_xlat21 = ((u_xlat17.x * u_xlat23) + u_xlat21);
  u_xlat4.z = -(u_xlat4.y);
  u_xlat7.x = dot(u_xlat7.yx, u_xlat4.xz);
  u_xlatb7 = (0.0f < u_xlat7.x);
  u_xlat14.x = ((-(u_xlat21) * 0.63661980628967285156f) + 1.0f);
  u_xlat4.x = max(u_xlat14.x, 0.0f);
  u_xlat14.x = ((u_xlat21 * 57.295780181884765625f) + -90.0f);
  u_xlat4.z = (u_xlat14.x * 0.01111111138015985489f);
  u_xlat4.z = clamp(u_xlat4.z, 0.0f, 1.0f);
  u_xlat14.x = (-(u_xlat4.x) + 1.0f);
  vs_TEXCOORD3.y = (-(u_xlat4.z) + u_xlat14.x);
  u_xlat14.x = (-(in_TEXCOORD0.z) + 1.0f);
  if (u_xlatb7) {
    x_856 = u_xlat14.x;
  } else {
    x_856 = in_TEXCOORD0.z;
  }
  u_xlat6.x = x_856;
  u_xlat7.x = dot(u_xlat1.xyw, u_xlat1.xyw);
  u_xlat7.x = sqrt(u_xlat7.x);
  u_xlat14.x = (u_xlat7.x + -8.0f);
  u_xlat14.x = (u_xlat14.x * 0.03999999910593032837f);
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlatb21 = (0.0f < x_63.x_GeoCloudShadow.x);
  if (u_xlatb21) {
    u_xlat21 = max(x_63.x_MainLightPosition.y, 0.20000000298023223877f);
    u_xlat17 = (x_63.x_MainLightPosition.xz / vec2f(u_xlat21));
    u_xlat21 = (-(u_xlat2.y) + 450.0f);
    let x_919 = ((u_xlat17 * vec2f(u_xlat21)) + u_xlat2.xz);
    u_xlat9 = vec3f(x_919.x, u_xlat9.y, x_919.y);
    u_xlat17 = (u_xlat15.xx * x_63.x_GeoCloudWind.xy);
    let x_934 = ((-(u_xlat17) * vec2f(1.29999995231628417969f)) + u_xlat9.xz);
    u_xlat9 = vec3f(x_934.x, u_xlat9.y, x_934.y);
    let x_942 = (u_xlat9.xz / x_63.x_GeoCloudShadow.yy);
    u_xlat9 = vec3f(x_942.x, u_xlat9.y, x_942.y);
    u_xlat21 = textureSampleLevel(x_GeoCloudNoise, sampler_GeoCloudNoise, u_xlat9.xz, 0.0f).x;
    u_xlat15.x = (-(x_63.x_GeoCloudShadow.z) + 1.0f);
    u_xlat21 = (u_xlat21 + -(u_xlat15.x));
    u_xlat21 = (u_xlat21 * 6.25f);
    u_xlat21 = clamp(u_xlat21, 0.0f, 1.0f);
    u_xlat15.x = ((u_xlat21 * -2.0f) + 3.0f);
    u_xlat21 = (u_xlat21 * u_xlat21);
    u_xlat21 = (u_xlat21 * u_xlat15.x);
    u_xlat2 = vec3f(((u_xlat2.xz + -(x_63.x_GeoCloudCentre.xy))).xy, u_xlat2.z);
    u_xlat15.x = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat15.x = sqrt(u_xlat15.x);
    u_xlat2.x = (x_63.x_GeoCloudShadow.w * 0.79999995231628417969f);
    u_xlat15.x = (u_xlat15.x + -(x_63.x_GeoCloudShadow.w));
    u_xlat2.x = (1.0f / u_xlat2.x);
    u_xlat15.x = (u_xlat15.x * u_xlat2.x);
    u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
    u_xlat2.x = ((u_xlat15.x * -2.0f) + 3.0f);
    u_xlat15.x = (u_xlat15.x * u_xlat15.x);
    u_xlat15.x = (u_xlat15.x * u_xlat2.x);
    u_xlat21 = (u_xlat21 * x_63.x_GeoCloudShadow.x);
    u_xlat6.y = ((-(u_xlat21) * u_xlat15.x) + 1.0f);
  } else {
    u_xlat6.y = 1.0f;
  }
  u_xlat21 = max(in_TEXCOORD3.x, 0.00100000004749745131f);
  vs_TEXCOORD4.x = (in_TEXCOORD0.y / u_xlat21);
  vs_TEXCOORD4.y = (u_xlat14.x * in_COLOR0.w);
  u_xlat14.x = max(u_xlat7.x, 0.00100000004749745131f);
  vs_TEXCOORD6 = vec4f(((-(u_xlat1.xyw) / u_xlat14.xxx)).xyz, vs_TEXCOORD6.w);
  u_xlat14 = (in_TEXCOORD0.xy * vec2f(0.00714285718277096748f));
  u_xlat1 = vec4f((((in_TEXCOORD0.xy * vec2f(0.00263157906010746956f)) + u_xlat3.xy)).xy, u_xlat1.zw);
  vs_TEXCOORD7 = vec4f((((u_xlat0.xx * vec2f(0.00310000008903443813f, 0.00190000003203749657f)) + u_xlat1.xy)).xy, vs_TEXCOORD7.zw);
  u_xlat14 = ((in_TEXCOORD3.zz * vec2f(5.30000019073486328125f, 7.09999990463256835938f)) + u_xlat14);
  vs_TEXCOORD7 = vec4f(vs_TEXCOORD7.xy, (((-(u_xlat0.xx) * vec2f(0.0043000001460313797f, 0.0057000000961124897f)) + u_xlat14)).xy);
  gl_Position = u_xlat5;
  vs_TEXCOORD1 = in_TEXCOORD1;
  vs_TEXCOORD2 = in_TEXCOORD2;
  let x_1147 = u_xlat4.xz;
  vs_TEXCOORD3 = vec4f(x_1147.x, vs_TEXCOORD3.y, x_1147.y, vs_TEXCOORD3.w);
  vs_TEXCOORD4.w = in_TEXCOORD3.y;
  vs_TEXCOORD4.z = u_xlat7.x;
  vs_TEXCOORD5 = vec4f(vs_TEXCOORD5.xy, u_xlat5.zw.xy);
  u_xlat6.z = in_TEXCOORD0.w;
  phase0_Output0_1 = vec4f(u_xlat6.xzy.xyz, phase0_Output0_1.w);
  vs_TEXCOORD0 = phase0_Output0_1.xy;
  vs_TEXCOORD8 = phase0_Output0_1.z;
  return;
}

struct main_out {
  @location(7)
  vs_TEXCOORD6_1 : vec4f,
  @location(4)
  vs_TEXCOORD3_1 : vec4f,
  @location(6)
  vs_TEXCOORD5_1 : vec4f,
  @location(5)
  vs_TEXCOORD4_1 : vec4f,
  @location(8)
  vs_TEXCOORD7_1 : vec4f,
  @builtin(position)
  gl_Position : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_TEXCOORD8_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(5) in_TEXCOORD4_param : vec4f, @location(4) in_TEXCOORD3_param : vec4f, @location(1) in_TEXCOORD0_param : vec4f, @location(6) in_COLOR0_param : vec4f, @location(2) in_TEXCOORD1_param : vec4f, @location(3) in_TEXCOORD2_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD4 = in_TEXCOORD4_param;
  in_TEXCOORD3 = in_TEXCOORD3_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  main_1();
  return main_out(vs_TEXCOORD6, vs_TEXCOORD3, vs_TEXCOORD5, vs_TEXCOORD4, vs_TEXCOORD7, gl_Position, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD0, vs_TEXCOORD8);
}

//Assets/Levels/Geography/Materials/Shaders/GeoCloudSprite.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(16) */
  x_MainLightPosition : vec4f,
  /* @offset(32) */
  x_MainLightColor : vec4f,
  /* @offset(48) */
  x_ZBufferParams : vec4f,
  /* @offset(64) */
  x_RTHandleScale : vec4f,
  /* @offset(80) */
  x_ScreenSize : vec4f,
  /* @offset(96) */
  x_CameraDepthTexture_TexelSize : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_Tint : vec4f,
  /* @offset(16) */
  x_HazeColor : vec4f,
  /* @offset(32) */
  x_HorizonColor : vec4f,
  /* @offset(48) */
  x_SunHorizonColor : vec4f,
  /* @offset(64) */
  x_BelowColor : vec4f,
  /* @offset(80) */
  x_SoftTone : vec4f,
  /* @offset(96) */
  x_ShadeTint : vec4f,
  /* @offset(112) */
  x_Exposure : f32,
  /* @offset(116) */
  x_BackExposure : f32,
  /* @offset(120) */
  x_SoftDepth : f32,
  /* @offset(124) */
  x_HazeDistance : f32,
  /* @offset(128) */
  x_HazeMax : f32,
  /* @offset(132) */
  x_HorizonWarmth : f32,
  /* @offset(136) */
  x_FarDistance : f32,
  /* @offset(140) */
  x_Soften : f32,
  /* @offset(144) */
  x_Distort : f32,
  /* @offset(148) */
  x_Erode : f32,
  /* @offset(152) */
  Xhlslcc_UnusedX_FadeSeconds : f32,
}

@group(0) @binding(1) var x_GeoCloudNoise : texture_2d<f32>;

@group(0) @binding(5) var sampler_GeoCloudNoise : sampler;

var<private> vs_TEXCOORD7 : vec4f;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_89 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

@group(0) @binding(2) var x_FrontTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_FrontTex : sampler;

@group(0) @binding(3) var x_SideTex : texture_2d<f32>;

@group(0) @binding(4) var x_BackTex : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4f;

var<private> vs_TEXCOORD6 : vec4f;

var<private> vs_TEXCOORD4 : vec4f;

var<private> vs_TEXCOORD5 : vec4f;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_59 = vec2f(1.0f);

const x_257 = vec4f(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.0f);

const x_1065 = vec3f(1.0f);

const x_1154 = vec2f(0.00000999999974737875f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat14 : vec2f;
  var u_xlat1 : vec4f;
  var u_xlat21 : f32;
  var u_xlat2 : vec4f;
  var u_xlatb2 : bool;
  var u_xlat16 : vec2f;
  var u_xlat3 : vec4f;
  var u_xlatb4 : vec3<bool>;
  var u_xlat17 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlatb3 : vec3<bool>;
  var u_xlat7 : vec3f;
  var u_xlatu1 : vec4u;
  var u_xlatb14 : bool;
  var u_xlat8 : vec3f;
  var u_xlat15 : vec2f;
  var u_xlat22 : f32;
  var u_xlat9 : f32;
  var u_xlatb22 : bool;
  var x_1290 : f32;
  var u_xlat23 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_23 = vs_TEXCOORD7;
  let x_34 = x_27.x_GlobalMipBias.x;
  let x_35 = textureSampleBias(x_GeoCloudNoise, sampler_GeoCloudNoise, x_23.xy, x_34);
  u_xlat0 = vec4f(x_35.zw.xy, u_xlat0.zw);
  let x_44 = vs_TEXCOORD7;
  let x_47 = x_27.x_GlobalMipBias.x;
  let x_48 = textureSampleBias(x_GeoCloudNoise, sampler_GeoCloudNoise, x_44.zw, x_47);
  u_xlat14.x = x_48.w;
  u_xlat1 = vec4f(((-(vs_TEXCOORD0) + x_59)).xy, u_xlat1.zw);
  u_xlat21 = min(u_xlat1.x, vs_TEXCOORD0.x);
  u_xlat0.w = min(u_xlat1.y, u_xlat21);
  let x_82 = (u_xlat0.yxw + vec3f(-0.5f, -0.5f, -0.01999999955296516418f));
  u_xlat0 = vec4f(x_82.xy, u_xlat0.z, x_82.z);
  u_xlat0 = vec4f(((u_xlat0.xy * vec2f(x_89.x_Distort))).xy, u_xlat0.zw);
  u_xlat21 = (u_xlat0.w * 7.69230699539184570312f);
  u_xlat21 = clamp(u_xlat21, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat21 * -2.0f) + 3.0f);
  u_xlat21 = (u_xlat21 * u_xlat21);
  u_xlat21 = (u_xlat21 * u_xlat1.x);
  u_xlat0 = vec4f((((u_xlat0.xy * vec2f(u_xlat21)) + vs_TEXCOORD0)).xy, u_xlat0.zw);
  u_xlat0 = vec4f(max(u_xlat0.xy, vec2f(0.00999999977648258209f)).xy, u_xlat0.zw);
  u_xlat0 = vec4f(min(u_xlat0.xy, vec2f(0.99000000953674316406f)).xy, u_xlat0.zw);
  u_xlat1 = vec4f(((-(u_xlat0.xy) + x_59)).xy, u_xlat1.zw);
  u_xlat21 = min(u_xlat0.x, u_xlat1.x);
  u_xlat21 = min(u_xlat1.y, u_xlat21);
  u_xlat21 = (u_xlat21 * 20.0f);
  u_xlat21 = min(u_xlat21, 1.0f);
  u_xlat1.x = ((u_xlat21 * -2.0f) + 3.0f);
  u_xlat21 = (u_xlat21 * u_xlat21);
  u_xlat21 = (u_xlat21 * u_xlat1.x);
  let x_171 = vs_TEXCOORD0;
  let x_172 = dpdxCoarse(x_171);
  u_xlat1 = vec4f(x_172.xy, u_xlat1.zw);
  let x_175 = vs_TEXCOORD0;
  let x_176 = dpdyCoarse(x_175);
  u_xlat1 = vec4f(u_xlat1.xy, x_176.xy);
  u_xlat2 = (u_xlat1 * vs_TEXCOORD1.zwzw);
  u_xlat2 = vec4f(max(abs(u_xlat2.zw), abs(u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2.x = max(u_xlat2.y, u_xlat2.x);
  u_xlat2.x = max(u_xlat2.x, 0.00000010000000116861f);
  u_xlat2.x = (0.0078125f / u_xlat2.x);
  u_xlat2.x = min(u_xlat2.x, 1.0f);
  u_xlat1 = (u_xlat1 * u_xlat2.xxxx);
  u_xlatb2 = (vs_TEXCOORD3.w < 0.99800002574920654297f);
  if (u_xlatb2) {
    u_xlat2 = vec4f((((u_xlat0.xy * vs_TEXCOORD1.zw) + vs_TEXCOORD1.xy)).xy, u_xlat2.zw);
    u_xlat16 = (u_xlat1.xy * vs_TEXCOORD1.zw);
    u_xlat3 = vec4f(((u_xlat1.zw * vs_TEXCOORD1.zw)).xy, u_xlat3.zw);
    u_xlatb4 = ((x_257 < vs_TEXCOORD3.xyzx)).xyz;
    if (u_xlatb4.x) {
      u_xlat17 = (u_xlat16 * x_27.x_GlobalMipBias.yy);
      let x_280 = (u_xlat3.xy * x_27.x_GlobalMipBias.yy);
      u_xlat4 = vec4f(x_280.x, u_xlat4.yz, x_280.y);
      let x_292 = u_xlat17.xyxx;
      let x_300 = u_xlat4.xwxx;
      u_xlat5 = textureSampleGrad(x_FrontTex, sampler_FrontTex, u_xlat2.xy, vec4f(x_292.x, x_292.y, x_292.z, x_292.w).xy, vec4f(x_300.x, x_300.y, x_300.z, x_300.w).xy);
      u_xlat5 = vec4f(((u_xlat5.www * u_xlat5.xyz)).xyz, u_xlat5.w);
      u_xlat5 = (u_xlat5 * vs_TEXCOORD3.xxxx);
    } else {
      u_xlat5.x = 0.0f;
      u_xlat5.y = 0.0f;
      u_xlat5.z = 0.0f;
      u_xlat5.w = 0.0f;
    }
    if (u_xlatb4.y) {
      u_xlat17 = (u_xlat16 * x_27.x_GlobalMipBias.yy);
      u_xlat4 = vec4f(((u_xlat3.xy * x_27.x_GlobalMipBias.yy)).xy, u_xlat4.zw);
      let x_350 = u_xlat17.xyxx;
      let x_358 = u_xlat4.xyxx;
      u_xlat6 = textureSampleGrad(x_SideTex, sampler_FrontTex, u_xlat2.xy, vec4f(x_350.x, x_350.y, x_350.z, x_350.w).xy, vec4f(x_358.x, x_358.y, x_358.z, x_358.w).xy);
      u_xlat6 = vec4f(((u_xlat6.www * u_xlat6.xyz)).xyz, u_xlat6.w);
      u_xlat5 = ((u_xlat6 * vs_TEXCOORD3.yyyy) + u_xlat5);
    }
    if (u_xlatb4.z) {
      u_xlat16 = (u_xlat16 * x_27.x_GlobalMipBias.yy);
      u_xlat3 = vec4f(((u_xlat3.xy * x_27.x_GlobalMipBias.yy)).xy, u_xlat3.zw);
      let x_403 = u_xlat16.xyxx;
      let x_411 = u_xlat3.xyxx;
      u_xlat2 = textureSampleGrad(x_BackTex, sampler_FrontTex, u_xlat2.xy, vec4f(x_403.x, x_403.y, x_403.z, x_403.w).xy, vec4f(x_411.x, x_411.y, x_411.z, x_411.w).xy);
      u_xlat2 = vec4f(((u_xlat2.www * u_xlat2.xyz)).xyz, u_xlat2.w);
      u_xlat5 = ((u_xlat2 * vs_TEXCOORD3.zzzz) + u_xlat5);
    }
    u_xlat2.x = (-(vs_TEXCOORD3.w) + 1.0f);
    u_xlat2 = (u_xlat2.xxxx * u_xlat5);
  } else {
    u_xlat2.x = 0.0f;
    u_xlat2.y = 0.0f;
    u_xlat2.z = 0.0f;
    u_xlat2.w = 0.0f;
  }
  u_xlatb3.x = (0.00200000009499490261f < vs_TEXCOORD3.w);
  if (u_xlatb3.x) {
    u_xlat0 = vec4f((((u_xlat0.xy * vs_TEXCOORD2.zw) + vs_TEXCOORD2.xy)).xy, u_xlat0.zw);
    u_xlat1 = (u_xlat1 * vs_TEXCOORD2.zwzw);
    u_xlatb3 = ((x_257 < vs_TEXCOORD3.xyzx)).xyz;
    if (u_xlatb3.x) {
      let x_484 = (u_xlat1.xy * x_27.x_GlobalMipBias.yy);
      u_xlat3 = vec4f(x_484.x, u_xlat3.yz, x_484.y);
      u_xlat4 = vec4f(((u_xlat1.zw * x_27.x_GlobalMipBias.yy)).xy, u_xlat4.zw);
      let x_501 = u_xlat3.xwxx;
      let x_509 = u_xlat4.xyxx;
      u_xlat4 = textureSampleGrad(x_FrontTex, sampler_FrontTex, u_xlat0.xy, vec4f(x_501.x, x_501.y, x_501.z, x_501.w).xy, vec4f(x_509.x, x_509.y, x_509.z, x_509.w).xy);
      u_xlat4 = vec4f(((u_xlat4.www * u_xlat4.xyz)).xyz, u_xlat4.w);
      u_xlat4 = (u_xlat4 * vs_TEXCOORD3.xxxx);
    } else {
      u_xlat4.x = 0.0f;
      u_xlat4.y = 0.0f;
      u_xlat4.z = 0.0f;
      u_xlat4.w = 0.0f;
    }
    if (u_xlatb3.y) {
      u_xlat3 = vec4f(((u_xlat1.xy * x_27.x_GlobalMipBias.yy)).xy, u_xlat3.zw);
      u_xlat5 = vec4f(((u_xlat1.zw * x_27.x_GlobalMipBias.yy)).xy, u_xlat5.zw);
      let x_559 = u_xlat3.xyxx;
      let x_567 = u_xlat5.xyxx;
      u_xlat5 = textureSampleGrad(x_SideTex, sampler_FrontTex, u_xlat0.xy, vec4f(x_559.x, x_559.y, x_559.z, x_559.w).xy, vec4f(x_567.x, x_567.y, x_567.z, x_567.w).xy);
      u_xlat5 = vec4f(((u_xlat5.www * u_xlat5.xyz)).xyz, u_xlat5.w);
      u_xlat4 = ((u_xlat5 * vs_TEXCOORD3.yyyy) + u_xlat4);
    }
    if (u_xlatb3.z) {
      u_xlat1 = (u_xlat1 * x_27.x_GlobalMipBias.yyyy);
      let x_603 = u_xlat1.xyxx;
      let x_611 = u_xlat1.zwzz;
      u_xlat1 = textureSampleGrad(x_BackTex, sampler_FrontTex, u_xlat0.xy, vec4f(x_603.x, x_603.y, x_603.z, x_603.w).xy, vec4f(x_611.x, x_611.y, x_611.z, x_611.w).xy);
      u_xlat1 = vec4f(((u_xlat1.www * u_xlat1.xyz)).xyz, u_xlat1.w);
      u_xlat4 = ((u_xlat1 * vs_TEXCOORD3.zzzz) + u_xlat4);
    }
    u_xlat2 = ((u_xlat4 * vs_TEXCOORD3.wwww) + u_xlat2);
  }
  u_xlat0.x = (u_xlat14.x + -0.30000001192092895508f);
  u_xlat0.x = (u_xlat0.x + u_xlat0.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat7.x = (-(vs_TEXCOORD6.w) + 1.0f);
  u_xlat14.x = ((u_xlat14.x * 0.40000000596046447754f) + 0.72000002861022949219f);
  u_xlat14.x = (u_xlat14.x * u_xlat7.x);
  u_xlat0.x = ((x_89.x_Erode * u_xlat0.x) + u_xlat14.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat14.x = ((u_xlat2.w * u_xlat21) + -(u_xlat0.x));
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = max(u_xlat0.x, 0.20000000298023223877f);
  u_xlat0.x = (u_xlat14.x / u_xlat0.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat14.x = (vs_TEXCOORD6.w * 16.666667938232421875f);
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat21 = ((u_xlat14.x * -2.0f) + 3.0f);
  u_xlat14.x = (u_xlat14.x * u_xlat14.x);
  u_xlat14.x = (u_xlat14.x * u_xlat21);
  u_xlat0.x = (u_xlat14.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * vs_TEXCOORD4.y);
  u_xlat14.x = vs_TEXCOORD4.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat21 = ((u_xlat14.x * -2.0f) + 3.0f);
  u_xlat14.x = (u_xlat14.x * u_xlat14.x);
  u_xlat14.x = (u_xlat14.x * u_xlat21);
  u_xlat0.x = (u_xlat14.x * u_xlat0.x);
  u_xlat14 = (vs_TEXCOORD5.xy / vs_TEXCOORD5.ww);
  u_xlat1 = vec4f((((-(x_27.x_CameraDepthTexture_TexelSize.xy) * vec2f(0.5f)) + x_59)).xy, u_xlat1.zw);
  u_xlat14 = min(u_xlat14, u_xlat1.xy);
  u_xlat14 = (u_xlat14 * x_27.x_RTHandleScale.xy);
  u_xlat14 = (u_xlat14 * x_27.x_ScreenSize.xy);
  u_xlatu1 = vec4u(vec2u(u_xlat14).xy, u_xlatu1.zw);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  u_xlat14.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu1.xy), bitcast<i32>(u_xlatu1.w)).x;
  u_xlat14.x = ((x_27.x_ZBufferParams.z * u_xlat14.x) + x_27.x_ZBufferParams.w);
  u_xlat14.x = (1.0f / u_xlat14.x);
  u_xlat14.x = (u_xlat14.x + -(vs_TEXCOORD5.w));
  u_xlat14.x = (u_xlat14.x / x_89.x_SoftDepth);
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat14.x * u_xlat0.x);
  u_xlatb14 = (u_xlat0.x < 0.00200000009499490261f);
  if (((select(0i, 1i, u_xlatb14) * -1i) != 0i)) {
    discard;
  }
  u_xlat14.x = max(u_xlat2.w, 0.00009999999747378752f);
  u_xlat1 = vec4f(((u_xlat2.xyz / u_xlat14.xxx)).xyz, u_xlat1.w);
  u_xlat14.x = (x_89.x_BackExposure + -1.0f);
  u_xlat14.x = ((vs_TEXCOORD3.z * u_xlat14.x) + 1.0f);
  u_xlat1 = vec4f(((u_xlat14.xxx * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz * x_89.x_Tint.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz * vec3f(x_89.x_Exposure))).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz * vs_TEXCOORD4.www)).xyz, u_xlat1.w);
  u_xlat2 = vec4f((((x_27.x_MainLightColor.xyz * vec3f(0.34999999403953552246f)) + vec3f(0.69999998807907104492f))).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((u_xlat2.xyz * x_89.x_SoftTone.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f((((x_89.x_SoftTone.xyz * u_xlat2.xyz) + -(u_xlat1.xyz))).xyz, u_xlat2.w);
  let x_985 = vec3f(x_89.x_Soften, x_89.x_Soften, x_89.x_Soften);
  u_xlat1 = vec4f((((vec3f(x_985.x, x_985.y, x_985.z) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat7.x = (u_xlat7.x * 0.34999999403953552246f);
  u_xlat2 = vec4f((((u_xlat3.xyz * vec3f(1.04999995231628417969f)) + -(u_xlat1.xyz))).xyz, u_xlat2.w);
  u_xlat7 = ((u_xlat7.xxx * u_xlat2.xyz) + u_xlat1.xyz);
  u_xlat1.x = dot(u_xlat7, vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
  u_xlat1.x = (u_xlat1.x + -0.44999998807907104492f);
  u_xlat1.x = (u_xlat1.x + u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat8.x = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat8.x);
  u_xlat8 = (-(x_89.x_ShadeTint.xyz) + x_1065);
  u_xlat1 = vec4f((((u_xlat1.xxx * u_xlat8) + x_89.x_ShadeTint.xyz)).xyz, u_xlat1.w);
  u_xlat7 = (u_xlat7 * u_xlat1.xyz);
  u_xlat1.x = (-(vs_TEXCOORD8) + 1.0f);
  u_xlat1 = vec4f((((-(u_xlat1.xxx) * vec3f(1.0f, 0.81999999284744262695f, 0.55000001192092895508f)) + x_1065)).xyz, u_xlat1.w);
  u_xlat7 = (u_xlat7 * u_xlat1.xyz);
  u_xlat1.x = (-(vs_TEXCOORD4.z) / x_89.x_HazeDistance);
  u_xlat1.x = (u_xlat1.x * 1.44269502162933349609f);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat1.x = (-(u_xlat1.x) + 1.0f);
  u_xlat1.x = (u_xlat1.x * x_89.x_HazeMax);
  u_xlat8 = ((x_27.x_MainLightColor.xyz * vec3f(0.40000000596046447754f)) + vec3f(0.60000002384185791016f));
  u_xlat8 = ((x_89.x_HazeColor.xyz * u_xlat8) + -(u_xlat7));
  u_xlat7 = ((u_xlat1.xxx * u_xlat8) + u_xlat7);
  u_xlat1 = vec4f(((vs_TEXCOORD6.xz + x_1154)).xy, u_xlat1.zw);
  u_xlat15.x = dot(u_xlat1.xy, u_xlat1.xy);
  u_xlat15.x = inverseSqrt(u_xlat15.x);
  u_xlat1 = vec4f(((u_xlat15.xx * u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat15 = (x_27.x_MainLightPosition.xz + x_1154);
  u_xlat2.x = dot(u_xlat15, u_xlat15);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  u_xlat15 = (u_xlat15 * u_xlat2.xx);
  u_xlat1.x = dot(u_xlat1.xy, u_xlat15);
  u_xlat1.x = ((u_xlat1.x * 0.5f) + 0.5f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * x_89.x_HorizonWarmth);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat8 = (-(x_89.x_HorizonColor.xyz) + x_89.x_SunHorizonColor.xyz);
  u_xlat1 = vec4f((((u_xlat1.xxx * u_xlat8) + x_89.x_HorizonColor.xyz)).xyz, u_xlat1.w);
  u_xlat22 = max(vs_TEXCOORD6.y, -1.0f);
  u_xlat22 = min(u_xlat22, 1.0f);
  u_xlat2.x = (-(abs(u_xlat22)) + 1.0f);
  u_xlat2.x = sqrt(u_xlat2.x);
  u_xlat9 = ((abs(u_xlat22) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat9 = ((u_xlat9 * abs(u_xlat22)) + -0.21211439371109008789f);
  u_xlat9 = ((u_xlat9 * abs(u_xlat22)) + 1.57072877883911132812f);
  u_xlat16.x = (u_xlat2.x * u_xlat9);
  u_xlat16.x = ((u_xlat16.x * -2.0f) + 3.14159274101257324219f);
  u_xlatb22 = (u_xlat22 < -(u_xlat22));
  if (u_xlatb22) {
    x_1290 = u_xlat16.x;
  } else {
    x_1290 = 0.0f;
  }
  u_xlat22 = x_1290;
  u_xlat22 = ((u_xlat9 * u_xlat2.x) + u_xlat22);
  u_xlat22 = (-(u_xlat22) + 1.57079637050628662109f);
  u_xlat2 = vec4f(((-(u_xlat1.xyz) + x_89.x_BelowColor.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * vec3f(0.64999997615814208984f))).xyz, u_xlat2.w);
  u_xlat22 = ((u_xlat22 * 57.295780181884765625f) + -0.20000000298023223877f);
  u_xlat22 = (u_xlat22 * -0.37037035822868347168f);
  u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
  u_xlat23 = ((u_xlat22 * -2.0f) + 3.0f);
  u_xlat22 = (u_xlat22 * u_xlat22);
  u_xlat22 = (u_xlat22 * u_xlat23);
  u_xlat1 = vec4f((((vec3f(u_xlat22) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat22 = (vs_TEXCOORD4.z / x_89.x_FarDistance);
  u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
  u_xlat22 = (u_xlat22 * 0.55000001192092895508f);
  u_xlat1 = vec4f(((-(u_xlat7) + u_xlat1.xyz)).xyz, u_xlat1.w);
  SV_Target0 = vec4f((((vec3f(u_xlat22) * u_xlat1.xyz) + u_xlat7)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat0.x;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(8) vs_TEXCOORD7_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(2) vs_TEXCOORD1_param : vec4f, @location(4) vs_TEXCOORD3_param : vec4f, @location(3) vs_TEXCOORD2_param : vec4f, @location(7) vs_TEXCOORD6_param : vec4f, @location(5) vs_TEXCOORD4_param : vec4f, @location(6) vs_TEXCOORD5_param : vec4f, @location(1) vs_TEXCOORD8_param : f32, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

