//Assets/Shared/Rendering/Shaders/B612_Foliage.shader
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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_BaseColor : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_AlphaToMask : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_BumpScale : f32,
  /* @offset(44) */
  Xhlslcc_UnusedX_ShellBlend : f32,
  /* @offset(48) */
  Xhlslcc_UnusedX_OcclusionStrength : f32,
  /* @offset(52) */
  Xhlslcc_UnusedX_CrownOcclusion : f32,
  /* @offset(64) */
  Xhlslcc_UnusedX_BackfaceTint : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_Wrap : f32,
  /* @offset(84) */
  Xhlslcc_UnusedX_Terminator : f32,
  /* @offset(88) */
  Xhlslcc_UnusedX_InnerLight : f32,
  /* @offset(92) */
  Xhlslcc_UnusedX_EdgeGlow : f32,
  /* @offset(96) */
  Xhlslcc_UnusedX_ShadowStrength : f32,
  /* @offset(112) */
  Xhlslcc_UnusedX_TransColor : vec4f,
  /* @offset(128) */
  Xhlslcc_UnusedX_TransStrength : f32,
  /* @offset(132) */
  Xhlslcc_UnusedX_TransPower : f32,
  /* @offset(136) */
  Xhlslcc_UnusedX_SpecStrength : f32,
  /* @offset(140) */
  Xhlslcc_UnusedX_AmbientBoost : f32,
  /* @offset(144) */
  x_HueVariation : f32,
  /* @offset(148) */
  x_BrightnessVariation : f32,
  /* @offset(152) */
  Xhlslcc_UnusedX_ClusterVariation : f32,
  /* @offset(156) */
  Xhlslcc_UnusedX_EdgeOnFade : f32,
  /* @offset(160) */
  Xhlslcc_UnusedX_Saturation : f32,
  /* @offset(164) */
  x_WindMode : f32,
  /* @offset(168) */
  x_WindBend : f32,
  /* @offset(172) */
  x_WindBranch : f32,
  /* @offset(176) */
  x_WindFlutter : f32,
  /* @offset(180) */
  x_WindFrequency : f32,
  /* @offset(184) */
  x_PlantWind : f32,
  /* @offset(188) */
  x_InteractionStrength : f32,
  /* @offset(192) */
  Xhlslcc_UnusedX_AlphaClip : f32,
  /* @offset(196) */
  Xhlslcc_UnusedX_Cull : f32,
  /* @offset(200) */
  Xhlslcc_UnusedX_DebugView : f32,
  /* @offset(204) */
  Xhlslcc_UnusedX_HazeDensity : f32,
  /* @offset(208) */
  Xhlslcc_UnusedX_HazeStart : f32,
  /* @offset(212) */
  Xhlslcc_UnusedX_HazeFalloff : f32,
  /* @offset(216) */
  Xhlslcc_UnusedX_MistHeight : f32,
  /* @offset(220) */
  Xhlslcc_UnusedX_MistDensity : f32,
}

alias Arr_5 = array<vec4f, 4u>;

alias Arr_6 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
  /* @offset(64) */
  x_B612WindDirection : vec4f,
  /* @offset(80) */
  x_B612WindGust : vec4f,
  /* @offset(96) */
  x_B612WindTime : vec4f,
  /* @offset(112) */
  x_B612Interactor : vec4f,
  /* @offset(128) */
  x_B612InteractorTrail : Arr_6,
}

@group(1) @binding(4) var<uniform> x_21 : UnityPerDraw;

var<private> in_POSITION0 : vec4f;

var<private> in_NORMAL0 : vec3f;

@group(1) @binding(6) var<uniform> x_160 : UnityPerMaterial;

@group(1) @binding(7) var<uniform> x_174 : VGlobals;

@group(0) @binding(14) var x_B612WindNoise : texture_2d<f32>;

@group(0) @binding(15) var sampler_B612WindNoise : sampler;

var<private> in_COLOR0 : vec4f;

var<private> in_TANGENT0 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> vs_TEXCOORD3 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD5 : vec3f;

var<private> vs_TEXCOORD4 : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

const x_201 = vec2f(-1.0f, 1.0f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec3f;
  var u_xlat14 : f32;
  var u_xlat7 : vec3f;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlat2 : vec4f;
  var u_xlat16 : vec2f;
  var u_xlat3 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat24 : f32;
  var u_xlat23 : f32;
  var u_xlat5 : vec3f;
  var u_xlat6 : vec3f;
  var u_xlat9 : vec3f;
  var u_xlat10 : vec2f;
  var u_xlat17 : f32;
  var u_xlat11 : vec3f;
  var u_xlat25 : f32;
  var u_xlat18 : vec2f;
  var u_xlat12 : vec3f;
  var u_xlatb23 : bool;
  var u_xlat19 : f32;
  var x_932 : vec3f;
  var u_xlat13 : f32;
  var u_xlat26 : f32;
  var x_1033 : vec3f;
  var x_1132 : vec3f;
  var x_1235 : vec3f;
  var x_1289 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy * vec3f(1.37000000476837158203f, 1.37000000476837158203f, 0.70999997854232788086f));
  u_xlat0 = vec3f(((u_xlat0.zz + u_xlat0.xy)).xy, u_xlat0.z);
  u_xlat0 = vec3f(((u_xlat0.xy * vec2f(0.10310000181198120117f))).xy, u_xlat0.z);
  u_xlat0 = vec3f(fract(u_xlat0.xy).xy, u_xlat0.z);
  u_xlat1 = (u_xlat0.yxx + vec3f(33.3300018310546875f));
  u_xlat14 = dot(u_xlat0.xyx, u_xlat1);
  u_xlat0 = vec3f(((vec2f(u_xlat14) + u_xlat0.xy)).xy, u_xlat0.z);
  u_xlat7.x = (u_xlat0.y + u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat7.x);
  u_xlat0.x = fract(u_xlat0.x);
  u_xlat7 = (in_POSITION0.yyy * x_21.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat7 = ((x_21.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat7);
  u_xlat7 = ((x_21.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat7);
  u_xlat7 = (u_xlat7 + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1.x = dot(in_NORMAL0, x_21.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_21.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_21.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat22 = dot(u_xlat1, u_xlat1);
  u_xlat22 = max(u_xlat22, 1.17549435e-38f);
  u_xlat22 = inverseSqrt(u_xlat22);
  u_xlat1 = (vec3f(u_xlat22) * u_xlat1);
  u_xlatb22 = (x_160.x_WindMode < 0.5f);
  if (u_xlatb22) {
    u_xlat22 = (x_174.x_B612WindDirection.w * x_174.x_B612WindTime.z);
    u_xlat2 = vec4f((((u_xlat7.xz * vec2f(0.05000000074505805969f)) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz)).xy, u_xlat2.zw);
    u_xlat16 = (x_174.x_B612WindDirection.zx * x_201);
    u_xlat3.x = dot(u_xlat2.xy, u_xlat16);
    u_xlat2.x = dot(u_xlat2.xy, x_174.x_B612WindDirection.xz);
    u_xlat3.y = (u_xlat2.x + -(x_174.x_B612WindTime.x));
    u_xlat2 = vec4f(((u_xlat3.xy * x_174.x_B612WindGust.yy)).xy, u_xlat2.zw);
    u_xlat2 = vec4f(textureSampleLevel(x_B612WindNoise, sampler_B612WindNoise, u_xlat2.xy, 0.0f).xy.xy, u_xlat2.zw);
    u_xlat2 = vec4f(((u_xlat2.xy + vec2f(-0.5f))).xy, u_xlat2.zw);
    u_xlat16.x = ((x_174.x_B612WindGust.x * 1.20000004768371582031f) + 0.60000002384185791016f);
    u_xlat2.x = ((u_xlat2.x * u_xlat16.x) + 0.5f);
    u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
    u_xlat16 = (vec2f(u_xlat22) * vec2f(x_160.x_WindBend, x_160.x_WindBranch));
    u_xlat3 = vec3f((((u_xlat2.xx * vec2f(0.89999997615814208984f, 0.80000001192092895508f)) + vec2f(0.25f, 0.34999999403953552246f))).xy, u_xlat3.z);
    u_xlat16 = (u_xlat16 * u_xlat3.xy);
    u_xlat3.x = in_COLOR0.x;
    u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
    u_xlat3.x = log2(u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * 1.5f);
    u_xlat3.x = exp2(u_xlat3.x);
    u_xlat16.x = (u_xlat16.x * u_xlat3.x);
    let x_329 = x_174.x_B612WindDirection.xz;
    u_xlat3 = vec3f(x_329.x, u_xlat3.y, x_329.y);
    u_xlat3.y = 0.0f;
    u_xlat4 = (in_COLOR0.yyyy * vec4f(6.28318548202514648438f, 8.60796451568603515625f, 31.415927886962890625f, 18.84955596923828125f));
    u_xlat24 = (x_174.x_B612WindTime.y * x_160.x_WindFrequency);
    u_xlat4.x = ((x_174.x_B612WindTime.y * x_160.x_WindFrequency) + u_xlat4.x);
    u_xlat4.x = sin(u_xlat4.x);
    u_xlat24 = ((u_xlat24 * 1.71000003814697265625f) + u_xlat4.y);
    u_xlat24 = (u_xlat24 + 1.29999995231628417969f);
    u_xlat24 = sin(u_xlat24);
    u_xlat23 = (u_xlat16.y * in_COLOR0.x);
    u_xlat5 = (vec3f(u_xlat23) * u_xlat3);
    u_xlat4.x = ((u_xlat4.x * 0.44999998807907104492f) + 0.55000001192092895508f);
    let x_395 = (x_174.x_B612WindDirection.zx * x_201);
    u_xlat6 = vec3f(x_395.x, u_xlat6.y, x_395.y);
    u_xlat6.y = 0.0f;
    u_xlat6 = (vec3f(u_xlat23) * u_xlat6);
    u_xlat9.x = (u_xlat2.y * x_174.x_B612WindGust.z);
    u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
    u_xlat9.x = ((u_xlat24 * 0.34999999403953552246f) + u_xlat9.x);
    u_xlat6 = (u_xlat9.xxx * u_xlat6);
    u_xlat5 = ((u_xlat5 * u_xlat4.xxx) + u_xlat6);
    u_xlat9.x = (u_xlat23 * u_xlat24);
    u_xlat6.y = (u_xlat9.x * 0.21999999880790710449f);
    u_xlat6.x = 0.0f;
    u_xlat6.z = 0.0f;
    u_xlat5 = (u_xlat5 + u_xlat6);
    u_xlat9 = ((u_xlat3 * u_xlat16.xxx) + u_xlat5);
    u_xlat3.x = (x_174.x_B612WindTime.y * 8.5f);
    u_xlat10.x = max(x_174.x_B612WindGust.w, 0.10000000149011611938f);
    u_xlat3.x = ((u_xlat3.x * u_xlat10.x) + u_xlat4.z);
    u_xlat17 = dot(u_xlat7, vec3f(3.09999990463256835938f, 2.29999995231628417969f, 2.70000004768371582031f));
    u_xlat3.x = (u_xlat17 + u_xlat3.x);
    u_xlat10.x = (u_xlat10.x * x_174.x_B612WindTime.y);
    u_xlat10.x = ((u_xlat10.x * 13.69999980926513671875f) + u_xlat4.w);
    u_xlat17 = dot(u_xlat7, vec3f(-1.89999997615814208984f, 3.29999995231628417969f, 1.10000002384185791016f));
    u_xlat3.y = (u_xlat17 + u_xlat10.x);
    u_xlat3 = vec3f(sin(u_xlat3.xy).xy, u_xlat3.z);
    u_xlat3.x = ((u_xlat3.y * 0.5f) + u_xlat3.x);
    u_xlat22 = (u_xlat22 * x_160.x_WindFlutter);
    u_xlat2.x = (u_xlat2.x + 0.30000001192092895508f);
    u_xlat22 = (u_xlat22 * u_xlat2.x);
    u_xlat22 = (u_xlat22 * in_COLOR0.w);
    u_xlat22 = (u_xlat3.x * u_xlat22);
    u_xlat2 = vec4f((((u_xlat1 * vec3f(u_xlat22)) + u_xlat9)).xyz, u_xlat2.w);
  } else {
    u_xlatb22 = (x_160.x_WindMode < 1.5f);
    if (u_xlatb22) {
      u_xlat22 = dot(x_21.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz, x_21.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
      u_xlat22 = sqrt(u_xlat22);
      u_xlat22 = max(u_xlat22, 0.00100000004749745131f);
      u_xlat23 = sqrt(u_xlat22);
      u_xlat23 = (u_xlat23 * x_160.x_PlantWind);
      u_xlat3.x = (x_174.x_B612WindDirection.w * x_174.x_B612WindTime.z);
      u_xlat10 = (x_174.x_B612WindDirection.zx * x_201);
      u_xlat4.x = dot(x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz, u_xlat10);
      u_xlat24 = dot(x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz, x_174.x_B612WindDirection.xz);
      u_xlat4.y = (u_xlat24 + -(x_174.x_B612WindTime.x));
      u_xlat4 = vec4f(((u_xlat4.xy * x_174.x_B612WindGust.yy)).xy, u_xlat4.zw);
      u_xlat24 = textureSampleLevel(x_B612WindNoise, sampler_B612WindNoise, u_xlat4.xy, 0.0f).x;
      u_xlat24 = (u_xlat24 + -0.5f);
      u_xlat4.x = ((x_174.x_B612WindGust.x * 1.20000004768371582031f) + 0.60000002384185791016f);
      u_xlat24 = ((u_xlat24 * u_xlat4.x) + 0.5f);
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat4.x = in_COLOR0.x;
      u_xlat4.x = clamp(u_xlat4.x, 0.0f, 1.0f);
      u_xlat11 = vec3f(((in_COLOR0.yy * vec2f(6.28318548202514648438f, 18.84955596923828125f))).xy, u_xlat11.z);
      u_xlat23 = (u_xlat23 * u_xlat3.x);
      u_xlat24 = ((u_xlat24 * 1.04999995231628417969f) + 0.25f);
      u_xlat23 = (u_xlat23 * u_xlat24);
      u_xlat24 = (x_174.x_B612WindTime.y * 7.0f);
      u_xlat11.x = ((x_174.x_B612WindTime.y * 1.89999997615814208984f) + u_xlat11.x);
      u_xlat25 = dot(x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz, vec2f(0.40999999642372131348f, 0.28999999165534973145f));
      u_xlat11.x = (u_xlat25 + u_xlat11.x);
      u_xlat11.x = sin(u_xlat11.x);
      u_xlat25 = max(x_174.x_B612WindGust.w, 0.10000000149011611938f);
      u_xlat24 = ((u_xlat24 * u_xlat25) + u_xlat11.y);
      u_xlat24 = ((u_xlat7.y * 9.0f) + u_xlat24);
      u_xlat24 = sin(u_xlat24);
      u_xlat18 = (vec2f(u_xlat23) * x_174.x_B612WindDirection.xz);
      u_xlat5.x = ((u_xlat11.x * 0.20000000298023223877f) + 0.85000002384185791016f);
      u_xlat12 = vec3f(((vec2f(u_xlat23) * u_xlat10)).xy, u_xlat12.z);
      u_xlat12 = vec3f(((u_xlat11.xx * u_xlat12.xy)).xy, u_xlat12.z);
      u_xlat12 = vec3f(((u_xlat12.xy * vec2f(0.25f))).xy, u_xlat12.z);
      u_xlat11 = vec3f((((u_xlat18 * u_xlat5.xx) + u_xlat12.xy)).xy, u_xlat11.z);
      u_xlat10 = (u_xlat10 * vec2f(x_160.x_WindFlutter));
      u_xlat3 = vec3f(((u_xlat3.xx * u_xlat10)).xy, u_xlat3.z);
      u_xlat3 = vec3f((((u_xlat3.xy * vec2f(u_xlat24)) + u_xlat11.xy)).xy, u_xlat3.z);
      u_xlat23 = (u_xlat4.x * u_xlat4.x);
      let x_778 = (vec2f(u_xlat23) * u_xlat3.xy);
      u_xlat3 = vec3f(x_778.x, u_xlat3.y, x_778.y);
      u_xlat23 = dot(u_xlat3.xz, u_xlat3.xz);
      u_xlat3.y = (u_xlat23 * -0.80000001192092895508f);
      u_xlatb23 = (0.0f < x_174.x_B612Interactor.w);
      if (u_xlatb23) {
        u_xlat11 = vec3f(((-(x_174.x_B612Interactor.xz) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz)).xy, u_xlat11.z);
        u_xlat23 = dot(u_xlat11.xy, u_xlat11.xy);
        u_xlat24 = (x_174.x_B612Interactor.w + 3.0f);
        u_xlat24 = (u_xlat24 * u_xlat24);
        u_xlatb23 = (u_xlat24 >= u_xlat23);
        if (u_xlatb23) {
          u_xlat22 = (u_xlat22 * in_POSITION0.y);
          u_xlat22 = max(u_xlat22, 0.05000000074505805969f);
          u_xlatb23 = (0.0f < x_174.x_B612InteractorTrail[0i].w);
          u_xlat11 = (-(x_174.x_B612InteractorTrail[0i].xzy) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy);
          u_xlat24 = dot(u_xlat11.xy, u_xlat11.xy);
          u_xlat24 = sqrt(u_xlat24);
          u_xlat5.x = (x_174.x_B612Interactor.w * -0.75f);
          u_xlat12.x = (u_xlat24 + -(x_174.x_B612Interactor.w));
          u_xlat5.x = (1.0f / u_xlat5.x);
          u_xlat12.x = (u_xlat5.x * u_xlat12.x);
          u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
          u_xlat19 = ((u_xlat12.x * -2.0f) + 3.0f);
          u_xlat12.x = (u_xlat12.x * u_xlat12.x);
          u_xlat12.x = (u_xlat12.x * u_xlat19);
          u_xlat12.x = (u_xlat12.x * x_174.x_B612InteractorTrail[0i].w);
          u_xlat25 = ((-(abs(u_xlat11.z)) * 0.69999998807907104492f) + 1.0f);
          u_xlat25 = max(u_xlat25, 0.0f);
          u_xlat25 = (u_xlat25 * u_xlat12.x);
          u_xlat24 = max(u_xlat24, 0.00100000004749745131f);
          u_xlat11 = vec3f(((u_xlat11.xy / vec2f(u_xlat24))).xy, u_xlat11.z);
          u_xlat6 = vec3f(u_xlat6.x, ((vec2f(u_xlat25) * u_xlat11.xy)).xy);
          u_xlat6.x = max(u_xlat25, 0.0f);
          if (u_xlatb23) {
            x_932 = u_xlat6;
          } else {
            x_932 = vec3f();
          }
          u_xlat11 = x_932;
          u_xlatb23 = (0.0f < x_174.x_B612InteractorTrail[1i].w);
          u_xlat12 = (-(x_174.x_B612InteractorTrail[1i].xzy) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy);
          u_xlat24 = dot(u_xlat12.xy, u_xlat12.xy);
          u_xlat24 = sqrt(u_xlat24);
          u_xlat6.x = (u_xlat24 + -(x_174.x_B612Interactor.w));
          u_xlat6.x = (u_xlat5.x * u_xlat6.x);
          u_xlat6.x = clamp(u_xlat6.x, 0.0f, 1.0f);
          u_xlat13 = ((u_xlat6.x * -2.0f) + 3.0f);
          u_xlat6.x = (u_xlat6.x * u_xlat6.x);
          u_xlat6.x = (u_xlat6.x * u_xlat13);
          u_xlat6.x = (u_xlat6.x * x_174.x_B612InteractorTrail[1i].w);
          u_xlat26 = ((-(abs(u_xlat12.z)) * 0.69999998807907104492f) + 1.0f);
          u_xlat26 = max(u_xlat26, 0.0f);
          u_xlat26 = (u_xlat26 * u_xlat6.x);
          u_xlat24 = max(u_xlat24, 0.00100000004749745131f);
          u_xlat12 = vec3f(((u_xlat12.xy / vec2f(u_xlat24))).xy, u_xlat12.z);
          u_xlat6 = vec3f(u_xlat6.x, (((u_xlat12.xy * vec2f(u_xlat26)) + u_xlat11.yz)).xy);
          u_xlat6.x = max(u_xlat11.x, u_xlat26);
          if (u_xlatb23) {
            x_1033 = u_xlat6;
          } else {
            x_1033 = u_xlat11;
          }
          u_xlat11 = x_1033;
          u_xlatb23 = (0.0f < x_174.x_B612InteractorTrail[2i].w);
          u_xlat12 = (-(x_174.x_B612InteractorTrail[2i].xzy) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy);
          u_xlat24 = dot(u_xlat12.xy, u_xlat12.xy);
          u_xlat24 = sqrt(u_xlat24);
          u_xlat6.x = (u_xlat24 + -(x_174.x_B612Interactor.w));
          u_xlat6.x = (u_xlat5.x * u_xlat6.x);
          u_xlat6.x = clamp(u_xlat6.x, 0.0f, 1.0f);
          u_xlat13 = ((u_xlat6.x * -2.0f) + 3.0f);
          u_xlat6.x = (u_xlat6.x * u_xlat6.x);
          u_xlat6.x = (u_xlat6.x * u_xlat13);
          u_xlat6.x = (u_xlat6.x * x_174.x_B612InteractorTrail[2i].w);
          u_xlat26 = ((-(abs(u_xlat12.z)) * 0.69999998807907104492f) + 1.0f);
          u_xlat26 = max(u_xlat26, 0.0f);
          u_xlat26 = (u_xlat26 * u_xlat6.x);
          u_xlat24 = max(u_xlat24, 0.00100000004749745131f);
          u_xlat12 = vec3f(((u_xlat12.xy / vec2f(u_xlat24))).xy, u_xlat12.z);
          u_xlat6 = vec3f(u_xlat6.x, (((u_xlat12.xy * vec2f(u_xlat26)) + u_xlat11.yz)).xy);
          u_xlat6.x = max(u_xlat11.x, u_xlat26);
          if (u_xlatb23) {
            x_1132 = u_xlat6;
          } else {
            x_1132 = u_xlat11;
          }
          u_xlat11 = x_1132;
          u_xlatb23 = (0.0f < x_174.x_B612InteractorTrail[3i].w);
          u_xlat12 = (-(x_174.x_B612InteractorTrail[3i].xzy) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy);
          u_xlat24 = dot(u_xlat12.xy, u_xlat12.xy);
          u_xlat24 = sqrt(u_xlat24);
          u_xlat6.x = (u_xlat24 + -(x_174.x_B612Interactor.w));
          u_xlat5.x = (u_xlat5.x * u_xlat6.x);
          u_xlat5.x = clamp(u_xlat5.x, 0.0f, 1.0f);
          u_xlat6.x = ((u_xlat5.x * -2.0f) + 3.0f);
          u_xlat5.x = (u_xlat5.x * u_xlat5.x);
          u_xlat5.x = (u_xlat5.x * u_xlat6.x);
          u_xlat5.x = (u_xlat5.x * x_174.x_B612InteractorTrail[3i].w);
          u_xlat26 = ((-(abs(u_xlat12.z)) * 0.69999998807907104492f) + 1.0f);
          u_xlat26 = max(u_xlat26, 0.0f);
          u_xlat5.x = (u_xlat26 * u_xlat5.x);
          u_xlat24 = max(u_xlat24, 0.00100000004749745131f);
          u_xlat12 = vec3f(((u_xlat12.xy / vec2f(u_xlat24))).xy, u_xlat12.z);
          u_xlat6 = vec3f(u_xlat6.x, (((u_xlat12.xy * u_xlat5.xx) + u_xlat11.yz)).xy);
          u_xlat6.x = max(u_xlat11.x, u_xlat5.x);
          if (u_xlatb23) {
            x_1235 = u_xlat6;
          } else {
            x_1235 = u_xlat11;
          }
          u_xlat11 = x_1235;
          u_xlatb23 = (0.0f < u_xlat11.x);
          u_xlat24 = dot(u_xlat11.yz, u_xlat11.yz);
          u_xlat24 = sqrt(u_xlat24);
          u_xlat24 = max(u_xlat24, 0.00009999999747378752f);
          u_xlat18 = (u_xlat11.yz / vec2f(u_xlat24));
          u_xlat24 = (u_xlat22 * u_xlat11.x);
          u_xlat24 = (u_xlat4.x * u_xlat24);
          u_xlat24 = (u_xlat24 * 0.85000002384185791016f);
          u_xlat22 = (u_xlat22 * -(u_xlat11.x));
          u_xlat22 = (u_xlat4.x * u_xlat22);
          u_xlat5.y = (u_xlat22 * 0.60000002384185791016f);
          let x_1285 = (vec2f(u_xlat24) * u_xlat18);
          u_xlat5 = vec3f(x_1285.x, u_xlat5.y, x_1285.y);
          if (u_xlatb23) {
            x_1289 = u_xlat5;
          } else {
            x_1289 = vec3f();
          }
          u_xlat4 = vec4f(x_1289.xyz, u_xlat4.w);
        } else {
          u_xlat4.x = 0.0f;
          u_xlat4.y = 0.0f;
          u_xlat4.z = 0.0f;
        }
      } else {
        u_xlat4.x = 0.0f;
        u_xlat4.y = 0.0f;
        u_xlat4.z = 0.0f;
      }
      let x_1314 = vec3f(x_160.x_InteractionStrength, x_160.x_InteractionStrength, x_160.x_InteractionStrength);
      u_xlat2 = vec4f((((u_xlat4.xyz * vec3f(x_1314.x, x_1314.y, x_1314.z)) + u_xlat3)).xyz, u_xlat2.w);
    } else {
      u_xlat2.x = 0.0f;
      u_xlat2.y = 0.0f;
      u_xlat2.z = 0.0f;
    }
  }
  u_xlat7 = (u_xlat7 + u_xlat2.xyz);
  u_xlat2 = vec4f(((in_TANGENT0.yyy * x_21.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_21.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_TANGENT0.xxx) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_21.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_TANGENT0.zzz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat22 = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat22 = max(u_xlat22, 1.17549435e-38f);
  u_xlat22 = inverseSqrt(u_xlat22);
  vs_TEXCOORD2 = vec4f(((vec3f(u_xlat22) * u_xlat2.xyz)).xyz, vs_TEXCOORD2.w);
  u_xlatb22 = (x_21.unity_WorldTransformParams.w >= 0.0f);
  u_xlat22 = select(-1.0f, 1.0f, u_xlatb22);
  vs_TEXCOORD2.w = (u_xlat22 * in_TANGENT0.w);
  u_xlat2 = (u_xlat7.yyyy * x_174.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat2 = ((x_174.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat7.xxxx) + u_xlat2);
  u_xlat2 = ((x_174.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat7.zzzz) + u_xlat2);
  gl_Position = (u_xlat2 + x_174.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD3 = ((in_TEXCOORD0 * x_160.x_BaseMap_ST.xy) + x_160.x_BaseMap_ST.zw);
  u_xlat22 = (u_xlat0.x + -0.5f);
  u_xlat22 = (u_xlat22 + u_xlat22);
  vs_TEXCOORD5.x = (u_xlat22 * x_160.x_HueVariation);
  u_xlat0.x = (u_xlat0.x * 13.36999988555908203125f);
  u_xlat0.x = fract(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x + -0.5f);
  u_xlat0.x = (u_xlat0.x + u_xlat0.x);
  vs_TEXCOORD5.y = ((u_xlat0.x * x_160.x_BrightnessVariation) + 1.0f);
  vs_TEXCOORD4 = in_COLOR0;
  vs_TEXCOORD0 = u_xlat7;
  vs_TEXCOORD1 = u_xlat1;
  vs_TEXCOORD5.z = 0.0f;
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD2_1 : vec4f,
  @builtin(position)
  gl_Position : vec4f,
  @location(3)
  vs_TEXCOORD3_1 : vec2f,
  @location(5)
  vs_TEXCOORD5_1 : vec3f,
  @location(4)
  vs_TEXCOORD4_1 : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(3) in_COLOR0_param : vec4f, @location(2) in_TANGENT0_param : vec4f, @location(4) in_TEXCOORD0_param : vec2f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD3, vs_TEXCOORD5, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1);
}

//Assets/Shared/Rendering/Shaders/B612_Foliage.shader
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
  x_AmbientOcclusionParam : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  unity_OrthoParams : vec4f,
  /* @offset(176) */
  x_ScaleBiasRt : vec4f,
  /* @offset(192) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(256) */
  x_B612SunDirection : vec4f,
  /* @offset(272) */
  x_B612VegTint : vec4f,
  /* @offset(288) */
  x_B612VegParams : vec4f,
  /* @offset(304) */
  x_B612TimeParams : vec4f,
  /* @offset(320) */
  x_B612SkyZenith : vec4f,
  /* @offset(336) */
  x_B612SkyHorizon : vec4f,
  /* @offset(352) */
  x_B612SkyHorizonSun : vec4f,
  /* @offset(368) */
  x_B612SkyParams : vec4f,
  /* @offset(384) */
  x_B612HazeColor : vec4f,
  /* @offset(400) */
  x_B612HazeParams : vec4f,
  /* @offset(416) */
  x_B612SkyGlow : vec4f,
  /* @offset(432) */
  x_B612SkyAnti : vec4f,
  /* @offset(448) */
  x_B612SkyParams2 : vec4f,
  /* @offset(464) */
  x_B612CloudParams : vec4f,
  /* @offset(480) */
  x_B612SunGlow : vec4f,
  /* @offset(496) */
  x_B612HdriParams : vec4f,
  /* @offset(512) */
  x_B612HdriDay0 : vec4f,
  /* @offset(528) */
  x_B612HdriDay1 : vec4f,
  /* @offset(544) */
  x_B612HdriDay2 : vec4f,
  /* @offset(560) */
  x_B612HdriDay3 : vec4f,
  /* @offset(576) */
  x_B612HdriDusk0 : vec4f,
  /* @offset(592) */
  x_B612HdriDusk1 : vec4f,
  /* @offset(608) */
  x_B612HdriDusk2 : vec4f,
  /* @offset(624) */
  x_B612HdriDusk3 : vec4f,
  /* @offset(640) */
  x_B612SkyCloud : vec4f,
  /* @offset(656) */
  x_B612SkyCloud2 : vec4f,
  /* @offset(672) */
  x_B612SkyCloudWarm : vec4f,
  /* @offset(688) */
  x_B612SkyNight : vec4f,
  /* @offset(704) */
  x_B612SkyCloudNight : vec4f,
  /* @offset(720) */
  x_B612SkyCloudCut : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(16) */
  x_BaseColor : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_AlphaToMask : f32,
  /* @offset(40) */
  x_BumpScale : f32,
  /* @offset(44) */
  x_ShellBlend : f32,
  /* @offset(48) */
  x_OcclusionStrength : f32,
  /* @offset(52) */
  x_CrownOcclusion : f32,
  /* @offset(64) */
  x_BackfaceTint : vec4f,
  /* @offset(80) */
  x_Wrap : f32,
  /* @offset(84) */
  x_Terminator : f32,
  /* @offset(88) */
  x_InnerLight : f32,
  /* @offset(92) */
  x_EdgeGlow : f32,
  /* @offset(96) */
  x_ShadowStrength : f32,
  /* @offset(112) */
  x_TransColor : vec4f,
  /* @offset(128) */
  x_TransStrength : f32,
  /* @offset(132) */
  x_TransPower : f32,
  /* @offset(136) */
  x_SpecStrength : f32,
  /* @offset(140) */
  x_AmbientBoost : f32,
  /* @offset(144) */
  Xhlslcc_UnusedX_HueVariation : f32,
  /* @offset(148) */
  Xhlslcc_UnusedX_BrightnessVariation : f32,
  /* @offset(152) */
  x_ClusterVariation : f32,
  /* @offset(156) */
  x_EdgeOnFade : f32,
  /* @offset(160) */
  x_Saturation : f32,
  /* @offset(164) */
  Xhlslcc_UnusedX_WindMode : f32,
  /* @offset(168) */
  Xhlslcc_UnusedX_WindBend : f32,
  /* @offset(172) */
  Xhlslcc_UnusedX_WindBranch : f32,
  /* @offset(176) */
  Xhlslcc_UnusedX_WindFlutter : f32,
  /* @offset(180) */
  Xhlslcc_UnusedX_WindFrequency : f32,
  /* @offset(184) */
  Xhlslcc_UnusedX_PlantWind : f32,
  /* @offset(188) */
  Xhlslcc_UnusedX_InteractionStrength : f32,
  /* @offset(192) */
  Xhlslcc_UnusedX_AlphaClip : f32,
  /* @offset(196) */
  Xhlslcc_UnusedX_Cull : f32,
  /* @offset(200) */
  x_DebugView : f32,
  /* @offset(204) */
  x_HazeDensity : f32,
  /* @offset(208) */
  x_HazeStart : f32,
  /* @offset(212) */
  x_HazeFalloff : f32,
  /* @offset(216) */
  x_MistHeight : f32,
  /* @offset(220) */
  x_MistDensity : f32,
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
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
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

alias Arr_9 = array<vec4f, 32u>;

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_14 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_9,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_10,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_11,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_12,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_13,
  /* @offset(2560) */
  Xhlslcc_UnusedX_AdditionalLightsLayerMasks : Arr_14,
}

alias Arr_15 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_15,
}

alias Arr_16 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_16,
}

var<private> gl_FragCoord : vec4f;

@group(0) @binding(5) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD3 : vec2f;

@group(1) @binding(0) var<uniform> x_92 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_231 : UnityPerMaterial;

@group(0) @binding(7) var x_MaskMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MaskMap : sampler;

var<private> vs_TEXCOORD4 : vec4f;

var<private> vs_TEXCOORD5 : vec3f;

var<private> gl_FrontFacing : bool;

var<private> vs_TEXCOORD1 : vec3f;

@group(0) @binding(6) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD2 : vec4f;

@group(1) @binding(5) var<uniform> x_616 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

@group(0) @binding(0) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

@group(1) @binding(4) var<uniform> x_1177 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1311 : AdditionalLights;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(1) @binding(2) var<uniform> x_1768 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_1921 : urp_TileBuffer;

var<private> SV_Target0 : vec4f;

@group(0) @binding(3) var x_B612HdriRingDay : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearRepeat : sampler;

@group(0) @binding(4) var x_B612HdriRingDusk : texture_2d<f32>;

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

const x_295 = vec3f(0.57735002040863037109f);

const x_359 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_484 = vec2f(-1.0f);

const x_576 = vec2f(1.0f);

const x_900 = vec4f(1.0f);

const x_2448 = vec3f(0.5f);

const x_2675 = vec2f(0.00000999999974737875f, 0.0f);

const x_2829 = vec2f(0.00999999977648258209f, 0.0f);

const x_2902 = vec3f(0.34999999403953552246f);

const x_2969 = vec3f(0.00999999977648258209f, 0.10000000149011611938f, 0.00999999977648258209f);

const x_3360 = vec3f(-1.0f);

const x_3366 = vec3f(1.0f);

const x_3379 = vec2f(1.5f, 90.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat15 : vec3f;
  var u_xlat2 : vec4f;
  var x_146 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec3f;
  var u_xlat20 : vec3f;
  var u_xlat14 : vec3f;
  var u_xlat28 : f32;
  var x_396 : vec3f;
  var u_xlat42 : f32;
  var u_xlatb44 : bool;
  var u_xlat8 : vec3f;
  var u_xlat9 : vec3f;
  var u_xlat21 : vec3f;
  var txVec0 : vec3f;
  var u_xlatb48 : bool;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat23 : f32;
  var u_xlat37 : f32;
  var u_xlat51 : f32;
  var u_xlat10 : vec3f;
  var u_xlat52 : f32;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec3f;
  var u_xlatu42 : u32;
  var u_xlatu45 : u32;
  var u_xlat47 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatb49 : bool;
  var u_xlati50 : i32;
  var u_xlati49 : i32;
  var u_xlatb50 : bool;
  var u_xlatb12 : vec4<bool>;
  var x_1482 : f32;
  var x_1491 : f32;
  var txVec1 : vec3f;
  var u_xlatb51 : bool;
  var u_xlatu15 : vec2u;
  var u_xlatu7 : vec4u;
  var u_xlati15 : i32;
  var u_xlatu1 : vec3u;
  var u_xlat29 : f32;
  var u_xlat43 : f32;
  var u_xlat1 : vec4f;
  var u_xlatu29 : u32;
  var u_xlati43 : i32;
  var u_xlatu43 : u32;
  var u_xlati2 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati7 : vec2i;
  var u_xlati29 : vec2i;
  var u_xlatu2 : vec2u;
  var u_xlatb30 : bool;
  var u_xlatb45 : bool;
  var u_xlatu30 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu11 : vec4u;
  var u_xlatu22 : vec3u;
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
  var u_xlati12 : vec2i;
  var u_xlati13 : vec4i;
  var u_xlati40 : vec2i;
  var u_xlati45 : i32;
  var u_xlati48 : i32;
  var u_xlati22 : vec3i;
  var u_xlati30 : i32;
  var u_xlat30 : vec2f;
  var u_xlat22 : vec3f;
  var x_2282 : f32;
  var x_2291 : f32;
  var txVec2 : vec3f;
  var u_xlatb22 : bool;
  var u_xlatb0 : bool;
  var u_xlatb3 : vec4<bool>;
  var x_2486 : vec3f;
  var x_2499 : vec3f;
  var x_2512 : vec3f;
  var x_2527 : vec3f;
  var u_xlatb14 : bool;
  var u_xlat17 : vec3f;
  var u_xlat19 : vec3f;
  var u_xlat16 : vec2f;
  var u_xlatb17 : bool;
  var x_3188 : f32;
  var x_3251 : f32;
  var u_xlatb29 : bool;
  var u_xlatb31 : bool;
  var x_3963 : f32;
  var x_4029 : f32;
  var u_xlat31 : vec2f;
  var u_xlat33 : f32;
  var x_4156 : vec3f;
  var x_4342 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  let x_87 = vs_TEXCOORD3;
  let x_97 = x_92.x_GlobalMipBias.x;
  let x_98 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_87, x_97);
  u_xlat0 = x_98;
  u_xlatb1 = (x_92.unity_OrthoParams.w == 0.0f);
  u_xlat15 = (-(vs_TEXCOORD0) + x_92.x_WorldSpaceCameraPos);
  u_xlat2.x = dot(u_xlat15, u_xlat15);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  u_xlat15 = (u_xlat15 * u_xlat2.xxx);
  u_xlat2.x = x_92.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat2.y = x_92.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat2.z = x_92.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb1) {
    x_146 = u_xlat15;
  } else {
    x_146 = u_xlat2.xyz;
  }
  u_xlat15 = x_146;
  let x_155 = vs_TEXCOORD0;
  let x_157 = dpdyCoarse(x_155.zxy);
  u_xlat3 = vec4f(x_157.xyz, u_xlat3.w);
  let x_161 = vs_TEXCOORD0;
  let x_163 = dpdxCoarse(x_161.yzx);
  u_xlat4 = vec4f(x_163.xyz, u_xlat4.w);
  u_xlat5 = vec4f(((u_xlat3.xyz * u_xlat4.xyz)).xyz, u_xlat5.w);
  u_xlat3 = vec4f((((u_xlat3.zxy * u_xlat4.yzx) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  u_xlat44 = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat44 = inverseSqrt(u_xlat44);
  u_xlat3 = vec4f(((vec3f(u_xlat44) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat44 = dot(u_xlat3.xyz, u_xlat15);
  u_xlat45 = (abs(u_xlat44) + -0.07999999821186065674f);
  u_xlat45 = (u_xlat45 * 4.16666698455810546875f);
  u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
  u_xlat4.x = ((u_xlat45 * -2.0f) + 3.0f);
  u_xlat45 = (u_xlat45 * u_xlat45);
  u_xlat45 = ((u_xlat4.x * u_xlat45) + -1.0f);
  u_xlat45 = ((x_231.x_EdgeOnFade * u_xlat45) + 1.0f);
  u_xlat0 = (u_xlat0.wxyz * x_231.x_BaseColor.wxyz);
  u_xlat4.w = (u_xlat45 * u_xlat0.x);
  let x_255 = vs_TEXCOORD3;
  let x_257 = x_92.x_GlobalMipBias.x;
  let x_258 = textureSampleBias(x_MaskMap, sampler_MaskMap, x_255, x_257);
  u_xlat5 = x_258;
  u_xlat0.x = (vs_TEXCOORD4.y + -0.5f);
  u_xlat0.x = (u_xlat0.x * x_231.x_ClusterVariation);
  u_xlat45 = ((u_xlat0.x * 0.05999999865889549255f) + vs_TEXCOORD5.x);
  u_xlat45 = (u_xlat45 * 6.28318548202514648438f);
  u_xlat6.x = sin(u_xlat45);
  u_xlat7.x = cos(u_xlat45);
  u_xlat20 = (u_xlat0.wyz * x_295);
  u_xlat20 = ((u_xlat0.wyz * x_295) + -(u_xlat20.zxy));
  u_xlat6 = (u_xlat6.xxx * u_xlat20);
  u_xlat6 = ((u_xlat0.yzw * u_xlat7.xxx) + u_xlat6);
  u_xlat14.x = dot(x_295, u_xlat0.yzw);
  u_xlat14.x = (u_xlat14.x * 0.57735002040863037109f);
  u_xlat28 = (-(u_xlat7.x) + 1.0f);
  u_xlat14 = ((u_xlat14.xxx * vec3f(u_xlat28)) + u_xlat6);
  u_xlat14 = max(u_xlat14, vec3f());
  u_xlat0.x = ((u_xlat0.x * 0.34999999403953552246f) + 1.0f);
  u_xlat0.x = (u_xlat0.x * vs_TEXCOORD5.y);
  u_xlat6 = (u_xlat0.xxx * u_xlat14);
  u_xlat45 = dot(u_xlat6, x_359);
  u_xlat0 = vec4f((((u_xlat14 * u_xlat0.xxx) + -(vec3f(u_xlat45)))).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((vec3f(x_231.x_Saturation) * u_xlat0.xyz) + vec3f(u_xlat45))).xyz, u_xlat0.w);
  u_xlat6 = (u_xlat0.xyz * x_231.x_BackfaceTint.xyz);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_396 = u_xlat0.xyz;
  } else {
    x_396 = u_xlat6;
  }
  u_xlat0 = vec4f(x_396.xyz, u_xlat0.w);
  u_xlat42 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat42 = inverseSqrt(u_xlat42);
  u_xlat6 = (vec3f(u_xlat42) * vs_TEXCOORD1);
  u_xlatb44 = (u_xlat44 < 0.0f);
  u_xlat44 = select(1.0f, -1.0f, u_xlatb44);
  u_xlat3 = vec4f(((vec3f(u_xlat44) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat7 = ((vs_TEXCOORD1 * vec3f(u_xlat42)) + -(u_xlat3.xyz));
  let x_444 = vec3f(x_231.x_ShellBlend, x_231.x_ShellBlend, x_231.x_ShellBlend);
  u_xlat3 = vec4f((((vec3f(x_444.x, x_444.y, x_444.z) * u_xlat7) + u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat42 = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat42 = inverseSqrt(u_xlat42);
  let x_468 = vs_TEXCOORD3;
  let x_470 = x_92.x_GlobalMipBias.x;
  let x_471 = textureSampleBias(x_BumpMap, sampler_BumpMap, x_468, x_470);
  u_xlat7 = x_471.xyw;
  u_xlat7.x = (u_xlat7.x * u_xlat7.z);
  u_xlat7 = vec3f((((u_xlat7.xy * vec2f(2.0f)) + x_484)).xy, u_xlat7.z);
  let x_495 = vec2f(x_231.x_BumpScale, x_231.x_BumpScale);
  u_xlat7 = vec3f(((u_xlat7.xy * vec2f(x_495.x, x_495.y))).xy, u_xlat7.z);
  u_xlat44 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
  u_xlat44 = inverseSqrt(u_xlat44);
  u_xlat8 = (vec3f(u_xlat44) * vs_TEXCOORD2.xyz);
  u_xlat9 = (u_xlat6.zxy * u_xlat8.yzx);
  u_xlat9 = ((u_xlat6.yzx * u_xlat8.zxy) + -(u_xlat9));
  u_xlat9 = (u_xlat9 * vs_TEXCOORD2.www);
  u_xlat44 = select(-1.0f, 1.0f, (select(0u, 4294967295u, gl_FrontFacing) != 0u));
  u_xlat21 = (u_xlat7.yyy * u_xlat9);
  u_xlat7 = ((u_xlat8 * u_xlat7.xxx) + u_xlat21);
  u_xlat7 = (vec3f(u_xlat44) * u_xlat7);
  u_xlat3 = vec4f((((u_xlat3.xyz * vec3f(u_xlat42)) + u_xlat7)).xyz, u_xlat3.w);
  u_xlat42 = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat42 = inverseSqrt(u_xlat42);
  u_xlat3 = vec4f(((vec3f(u_xlat42) * u_xlat3.xyz)).xyz, u_xlat3.w);
  let x_579 = x_92.x_ScaledScreenParams.xy;
  u_xlat7 = vec3f(((x_576 / vec2f(x_579.x, x_579.y))).xy, u_xlat7.z);
  u_xlat7 = vec3f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.z);
  u_xlat42 = ((u_xlat7.y * x_92.x_ScaleBiasRt.x) + x_92.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat42) + 1.0f);
  u_xlat8 = (vs_TEXCOORD0.yyy * x_616.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz);
  u_xlat8 = ((x_616.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat8);
  u_xlat8 = ((x_616.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat8);
  u_xlat8 = (u_xlat8 + x_616.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz);
  let x_645 = u_xlat8.xy;
  txVec0 = vec3f(x_645.x, x_645.y, u_xlat8.z);
  u_xlat42 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat44 = (-(x_616.x_MainLightShadowParams.x) + 1.0f);
  u_xlat42 = ((u_xlat42 * x_616.x_MainLightShadowParams.x) + u_xlat44);
  u_xlatb44 = (0.0f >= u_xlat8.z);
  u_xlatb48 = (u_xlat8.z >= 1.0f);
  u_xlatb44 = (u_xlatb44 | u_xlatb48);
  u_xlat42 = select(u_xlat42, 1.0f, u_xlatb44);
  u_xlat8 = (vs_TEXCOORD0 + -(x_92.x_WorldSpaceCameraPos));
  u_xlat44 = dot(u_xlat8, u_xlat8);
  u_xlat48 = ((u_xlat44 * x_616.x_MainLightShadowParams.z) + x_616.x_MainLightShadowParams.w);
  u_xlat48 = clamp(u_xlat48, 0.0f, 1.0f);
  u_xlat21.x = (-(u_xlat42) + 1.0f);
  u_xlat42 = ((u_xlat48 * u_xlat21.x) + u_xlat42);
  u_xlat42 = (u_xlat42 + -1.0f);
  u_xlat42 = ((x_231.x_ShadowStrength * u_xlat42) + 1.0f);
  let x_726 = u_xlat7;
  let x_729 = x_92.x_GlobalMipBias.x;
  let x_730 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_726.xz, x_729);
  u_xlat48 = x_730.x;
  u_xlat48 = (u_xlat48 + -(x_92.x_AmbientOcclusionParam.x));
  u_xlat48 = (u_xlat48 + 1.0f);
  u_xlat48 = clamp(u_xlat48, 0.0f, 1.0f);
  u_xlat21.x = (u_xlat48 + -1.0f);
  u_xlat21.x = ((x_92.x_AmbientOcclusionParam.w * u_xlat21.x) + 1.0f);
  u_xlat49 = vs_TEXCOORD4.z;
  u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
  u_xlat50 = (u_xlat5.y + -1.0f);
  u_xlat50 = ((x_231.x_OcclusionStrength * u_xlat50) + 1.0f);
  u_xlat9.x = (-(x_231.x_CrownOcclusion) + 1.0f);
  u_xlat23 = (-(u_xlat9.x) + 1.0f);
  u_xlat9.x = ((u_xlat49 * u_xlat23) + u_xlat9.x);
  u_xlat50 = (u_xlat50 * u_xlat9.x);
  u_xlat9.x = dot(u_xlat3.xyz, x_92.x_MainLightPosition.xyz);
  u_xlat9.x = (u_xlat9.x + x_231.x_Wrap);
  u_xlat23 = (x_231.x_Wrap + 1.0f);
  u_xlat9.x = (u_xlat9.x / u_xlat23);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat37 = (u_xlat9.x * u_xlat9.x);
  u_xlat51 = ((-(u_xlat9.x) * 2.0f) + 3.0f);
  u_xlat37 = ((u_xlat37 * u_xlat51) + -(u_xlat9.x));
  u_xlat9.x = ((x_231.x_Terminator * u_xlat37) + u_xlat9.x);
  u_xlat37 = (-(x_231.x_InnerLight) + 1.0f);
  u_xlat37 = ((u_xlat49 * u_xlat37) + x_231.x_InnerLight);
  u_xlat10 = (u_xlat0.xyz * x_92.x_MainLightColor.xyz);
  u_xlat9.x = (u_xlat42 * u_xlat9.x);
  u_xlat21.x = (u_xlat21.x * u_xlat9.x);
  u_xlat21.x = (u_xlat37 * u_xlat21.x);
  u_xlat51 = dot(u_xlat15, -(x_92.x_MainLightPosition.xyz));
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat52 = (u_xlat5.z * x_231.x_TransStrength);
  u_xlat11 = (x_92.x_B612VegTint.wxyz + vec4f(-1.0f));
  u_xlat11 = ((x_92.x_B612SunDirection.wwww * u_xlat11) + x_900);
  u_xlat52 = (u_xlat52 * u_xlat11.x);
  u_xlat11.x = log2(u_xlat51);
  u_xlat11.x = (u_xlat11.x * x_231.x_TransPower);
  u_xlat11.x = exp2(u_xlat11.x);
  u_xlat12.x = dot(u_xlat6, x_92.x_MainLightPosition.xyz);
  u_xlat12.x = -(u_xlat12.x);
  u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
  u_xlat11.x = ((u_xlat12.x * 0.05999999865889549255f) + u_xlat11.x);
  u_xlat52 = (u_xlat52 * u_xlat11.x);
  u_xlat12 = vec4f(((u_xlat0.xyz * x_231.x_TransColor.xyz)).xyz, u_xlat12.w);
  u_xlat11 = vec4f(((u_xlat11.yzw * u_xlat12.xyz)).xyz, u_xlat11.w);
  u_xlat11 = vec4f(((u_xlat11.xyz * x_92.x_MainLightColor.xyz)).xyz, u_xlat11.w);
  u_xlat12 = vec4f((((vec2f(u_xlat42) * vec2f(0.75f, 0.60000002384185791016f)) + vec2f(0.25f, 0.40000000596046447754f))).xy, u_xlat12.zw);
  u_xlat52 = (u_xlat52 * u_xlat12.x);
  let x_989 = (vec3f(u_xlat52) * u_xlat11.xyz);
  u_xlat12 = vec4f(x_989.x, u_xlat12.y, x_989.yz);
  u_xlat10 = ((u_xlat10 * u_xlat21.xxx) + u_xlat12.xzw);
  u_xlat21.x = dot(u_xlat6, u_xlat15);
  u_xlat21.x = min(abs(u_xlat21.x), 1.0f);
  u_xlat21.x = (-(u_xlat21.x) + 1.0f);
  u_xlat52 = (u_xlat21.x * u_xlat21.x);
  u_xlat21.x = (u_xlat21.x * u_xlat52);
  u_xlat51 = ((u_xlat51 * 0.5f) + 0.5f);
  u_xlat21.x = (u_xlat21.x * x_231.x_EdgeGlow);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((u_xlat51 * 0.80000001192092895508f) + 0.20000000298023223877f);
  u_xlat21.x = (u_xlat21.x * u_xlat51);
  u_xlat21.x = (u_xlat5.z * u_xlat21.x);
  u_xlat21.x = (u_xlat12.y * u_xlat21.x);
  u_xlat21.x = (u_xlat49 * u_xlat21.x);
  u_xlat10 = ((u_xlat11.xyz * u_xlat21.xxx) + u_xlat10);
  u_xlat15 = (u_xlat15 + x_92.x_MainLightPosition.xyz);
  u_xlat21.x = dot(u_xlat15, u_xlat15);
  u_xlat21.x = max(u_xlat21.x, 1.17549435e-38f);
  u_xlat21.x = inverseSqrt(u_xlat21.x);
  u_xlat15 = (u_xlat15 * u_xlat21.xxx);
  u_xlat21.x = ((u_xlat5.w * 10.0f) + 1.0f);
  u_xlat21.x = exp2(u_xlat21.x);
  u_xlat15.x = dot(u_xlat3.xyz, u_xlat15);
  u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
  u_xlat15.x = log2(u_xlat15.x);
  u_xlat15.x = (u_xlat15.x * u_xlat21.x);
  u_xlat15.x = exp2(u_xlat15.x);
  u_xlat15.x = (u_xlat15.x * x_231.x_SpecStrength);
  u_xlat15.x = (u_xlat5.w * u_xlat15.x);
  u_xlat42 = (u_xlat42 * u_xlat15.x);
  u_xlat15 = vec3f(((x_92.x_B612VegParams.yx + x_484)).xy, u_xlat15.z);
  u_xlat15 = vec3f((((x_92.x_B612SunDirection.ww * u_xlat15.xy) + x_576)).xy, u_xlat15.z);
  u_xlat42 = (u_xlat42 * u_xlat15.x);
  u_xlat10 = ((x_92.x_MainLightColor.xyz * vec3f(u_xlat42)) + u_xlat10);
  u_xlat3.w = 1.0f;
  u_xlat11.x = dot(x_1177.unity_SHAr, u_xlat3);
  u_xlat11.y = dot(x_1177.unity_SHAg, u_xlat3);
  u_xlat11.z = dot(x_1177.unity_SHAb, u_xlat3);
  u_xlat12 = (u_xlat3.yzzx * u_xlat3.xyzz);
  u_xlat13.x = dot(x_1177.unity_SHBr, u_xlat12);
  u_xlat13.y = dot(x_1177.unity_SHBg, u_xlat12);
  u_xlat13.z = dot(x_1177.unity_SHBb, u_xlat12);
  u_xlat42 = (u_xlat3.y * u_xlat3.y);
  u_xlat42 = ((u_xlat3.x * u_xlat3.x) + -(u_xlat42));
  u_xlat12 = vec4f((((x_1177.unity_SHC.xyz * vec3f(u_xlat42)) + u_xlat13)).xyz, u_xlat12.w);
  u_xlat11 = vec4f(((u_xlat11.xyz + u_xlat12.xyz)).xyz, u_xlat11.w);
  u_xlat11 = vec4f(((u_xlat0.xyz * u_xlat11.xyz)).xyz, u_xlat11.w);
  u_xlat42 = (u_xlat48 * u_xlat50);
  u_xlat42 = (u_xlat42 * x_231.x_AmbientBoost);
  u_xlat42 = (u_xlat15.y * u_xlat42);
  u_xlat15 = ((u_xlat11.xyz * vec3f(u_xlat42)) + u_xlat10);
  u_xlatu42 = u32(x_92.x_FPParams0.w);
  u_xlatu45 = min(u_xlatu42, 32u);
  u_xlat47 = ((u_xlat44 * x_616.x_AdditionalShadowFadeParams.x) + x_616.x_AdditionalShadowFadeParams.y);
  u_xlat47 = clamp(u_xlat47, 0.0f, 1.0f);
  u_xlat10 = u_xlat15;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu45)) {
    } else {
      break;
    }
    u_xlat11 = vec4f((((-(vs_TEXCOORD0) * x_1311.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_1311.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat11.w);
    u_xlat21.x = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat21.x = max(u_xlat21.x, 0.00006103515625f);
    u_xlat49 = inverseSqrt(u_xlat21.x);
    u_xlat11 = vec4f(((vec3f(u_xlat49) * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat49 = (1.0f / u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * x_1311.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat21.x = ((-(u_xlat21.x) * u_xlat21.x) + 1.0f);
    u_xlat21.x = max(u_xlat21.x, 0.0f);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * u_xlat49);
    u_xlat49 = dot(x_1311.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat11.xyz);
    u_xlat49 = ((u_xlat49 * x_1311.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_1311.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
    u_xlat49 = (u_xlat49 * u_xlat49);
    u_xlat21.x = (u_xlat49 * u_xlat21.x);
    u_xlatb49 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati50 = i32(x_616.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati49 = select(u_xlati50, -1i, u_xlatb49);
    u_xlatb50 = (u_xlati49 >= 0i);
    if (u_xlatb50) {
      u_xlatb50 = any(!((vec4f() == vec4f(x_616.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb50) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb50 = (u_xlatb12.y & u_xlatb12.x);
        let x_1464 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_1464.xy, u_xlatb12.z, x_1464.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat51 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_1482 = u_xlat12.y;
        } else {
          x_1482 = u_xlat51;
        }
        u_xlat51 = x_1482;
        if (u_xlatb50) {
          x_1491 = u_xlat12.x;
        } else {
          x_1491 = u_xlat51;
        }
        u_xlat50 = x_1491;
        u_xlati50 = i32(u_xlat50);
        u_xlati49 = (u_xlati49 + u_xlati50);
      }
      u_xlati49 = (u_xlati49 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_616.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati49 + 1i)]);
      u_xlat12 = ((x_616.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati49] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_616.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati49 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_616.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati49 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      let x_1545 = u_xlat12.xy;
      txVec1 = vec3f(x_1545.x, x_1545.y, u_xlat12.z);
      u_xlat49 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat50 = (1.0f + -(x_616.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat49 = ((u_xlat49 * x_616.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat50);
      u_xlatb50 = (0.0f >= u_xlat12.z);
      u_xlatb51 = (u_xlat12.z >= 1.0f);
      u_xlatb50 = (u_xlatb50 | u_xlatb51);
      u_xlat49 = select(u_xlat49, 1.0f, u_xlatb50);
    } else {
      u_xlat49 = 1.0f;
    }
    u_xlat50 = (-(u_xlat49) + 1.0f);
    u_xlat49 = ((u_xlat47 * u_xlat50) + u_xlat49);
    u_xlat12 = vec4f(((u_xlat0.xyz * x_1311.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat12.w);
    u_xlat21.x = (u_xlat49 * u_xlat21.x);
    u_xlat49 = dot(u_xlat3.xyz, u_xlat11.xyz);
    u_xlat49 = (u_xlat49 + x_231.x_Wrap);
    u_xlat49 = (u_xlat49 / u_xlat23);
    u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
    u_xlat21.x = (u_xlat49 * u_xlat21.x);
    u_xlat10 = ((u_xlat12.xyz * u_xlat21.xxx) + u_xlat10);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlat15 = vec3f(((u_xlat7.xz * x_92.x_FPParams1.xy)).xy, u_xlat15.z);
  u_xlatu15 = vec2u(u_xlat15.xy);
  u_xlatu7 = vec4u(vec2u(x_92.x_FPParams1.zw).xy, u_xlatu7.zw);
  u_xlati15 = ((bitcast<i32>(u_xlatu15.y) * bitcast<i32>(u_xlatu7.x)) + bitcast<i32>(u_xlatu15.x));
  u_xlatu1.y = (u_xlatu7.y * bitcast<u32>(u_xlati15));
  u_xlat29 = dot(-(u_xlat2.xyz), u_xlat8);
  u_xlat43 = log2(u_xlat29);
  u_xlat1.x = select(u_xlat29, u_xlat43, u_xlatb1);
  u_xlat1.x = ((u_xlat1.x * x_92.x_FPParams0.x) + x_92.x_FPParams0.y);
  u_xlatu1.x = u32(u_xlat1.x);
  u_xlatu29 = u32(x_92.x_FPParams2.x);
  u_xlatu29 = (u_xlatu29 + 4294967295u);
  u_xlati43 = (bitcast<i32>(u_xlatu7.y) + 2i);
  u_xlatu1.x = min(u_xlatu29, u_xlatu1.x);
  u_xlatu29 = (bitcast<u32>(u_xlati43) * u_xlatu1.x);
  u_xlatu1.x = ((u_xlatu1.x * bitcast<u32>(u_xlati43)) + 2u);
  u_xlatu43 = (u_xlatu29 >> 2u);
  param = bitcast<i32>(u_xlatu29);
  param_1 = 0i;
  param_2 = 1i;
  let x_1748 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu29);
  param_4 = 1i;
  param_5 = 1i;
  let x_1754 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati2 = vec3i(vec2i(x_1748, x_1754).xy, u_xlati2.z);
  u_xlati7 = bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_1768.urp_ZBins[bitcast<i32>(u_xlatu43)].wy)));
  let x_1779 = ~(u_xlati2.xy);
  u_xlati2 = vec3i(x_1779.x, u_xlati2.y, x_1779.y);
  u_xlati29 = bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_1768.urp_ZBins[bitcast<i32>(u_xlatu43)].zx)));
  u_xlati29 = bitcast<vec2i>((bitcast<vec2u>(u_xlati29) | bitcast<vec2u>(u_xlati7)));
  u_xlati29 = bitcast<vec2i>((bitcast<vec2u>(u_xlati2.yz) & bitcast<vec2u>(u_xlati29)));
  u_xlatu1.z = (bitcast<u32>(u_xlati29.y) | bitcast<u32>(u_xlati29.x));
  u_xlatu7.z = 0u;
  let x_1817 = u_xlatu1.yxz;
  u_xlatu7 = vec4u(x_1817.xy, u_xlatu7.z, x_1817.z);
  u_xlat4 = vec4f(u_xlat10.xyz, u_xlat4.w);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu43 = (u_xlatu7.w >> 16u);
    u_xlatu2 = u_xlatu7.zw;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb30 = (bitcast<i32>(u_xlatu2.x) == 0i);
      u_xlatu45 = (u_xlatu2.y & 65535u);
      u_xlatb45 = (u_xlatu43 >= u_xlatu45);
      u_xlatb30 = (u_xlatb30 & u_xlatb45);
      if (!(u_xlatb30)) {
        break;
      }
      param_6 = u_xlatu2.y;
      param_7 = 5i;
      param_8 = 11i;
      let x_1868 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu30 = x_1868;
      u_xlatu11 = (vec4u(u_xlatu30) + u_xlatu7.xxyy);
      let x_1879 = (u_xlatu11.yw >> vec2u(2u));
      u_xlatu22 = vec3u(x_1879.x, u_xlatu22.y, x_1879.y);
      param_9 = bitcast<i32>(u_xlatu11.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_1891 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu11.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_1898 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu11.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_1905 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu11.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_1912 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati11 = vec4i(x_1891, x_1898, x_1905, x_1912);
      u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_1921.urp_Tiles[bitcast<i32>(u_xlatu22.x)].wy)));
      u_xlati13 = ~(u_xlati11);
      u_xlati40 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_1921.urp_Tiles[bitcast<i32>(u_xlatu22.x)].zx)));
      u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati40) | bitcast<vec2u>(u_xlati12)));
      u_xlati45 = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati12.x)));
      u_xlati48 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati12.y)));
      u_xlati45 = bitcast<i32>((bitcast<u32>(u_xlati45) | bitcast<u32>(u_xlati48)));
      u_xlati11 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_1768.urp_ZBins[bitcast<i32>(u_xlatu22.z)].wy))).xy, u_xlati11.zw);
      let x_2003 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_1768.urp_ZBins[bitcast<i32>(u_xlatu22.z)].zx)));
      u_xlati22 = vec3i(x_2003.x, u_xlati22.y, x_2003.y);
      let x_2013 = bitcast<vec2i>((bitcast<vec2u>(u_xlati22.xz) | bitcast<vec2u>(u_xlati11.xy)));
      u_xlati22 = vec3i(x_2013.x, u_xlati22.y, x_2013.y);
      u_xlati48 = bitcast<i32>((bitcast<u32>(u_xlati11.w) & bitcast<u32>(u_xlati22.x)));
      u_xlati22.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati22.z)));
      u_xlati48 = bitcast<i32>((bitcast<u32>(u_xlati48) | bitcast<u32>(u_xlati22.x)));
      u_xlati45 = bitcast<i32>((bitcast<u32>(u_xlati45) & bitcast<u32>(u_xlati48)));
      u_xlati48 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu2.y) & 31i)));
      u_xlati45 = bitcast<i32>((bitcast<u32>(u_xlati45) & bitcast<u32>(u_xlati48)));
      u_xlati30 = (bitcast<i32>(u_xlatu30) << bitcast<u32>(5i));
      u_xlatu30 = (u_xlatu43 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati30)))));
      u_xlatu30 = min(u_xlatu30, 31u);
      u_xlatu30 = (bitcast<u32>(-(bitcast<i32>(u_xlatu30))) + 31u);
      u_xlatu30 = (4294967295u >> (u_xlatu30 & 31u));
      u_xlatu2.x = (u_xlatu30 & bitcast<u32>(u_xlati45));
      u_xlati30 = (bitcast<i32>(u_xlatu2.y) + 32i);
      u_xlatu2.y = (bitcast<u32>(u_xlati30) & 4294967264u);
    }
    u_xlatu7.w = u_xlatu2.y;
    if ((u_xlatu2.x == 0u)) {
      break;
    }
    u_xlati43 = bitcast<i32>(firstTrailingBit(u_xlatu2.x));
    u_xlati30 = (1i << bitcast<u32>((u_xlati43 & 31i)));
    u_xlatu7.z = (bitcast<u32>(u_xlati30) ^ u_xlatu2.x);
    u_xlati30 = (bitcast<i32>(u_xlatu7.w) + -32i);
    u_xlati30 = bitcast<i32>((bitcast<u32>(u_xlati30) & 65504u));
    u_xlati43 = (u_xlati43 + u_xlati30);
    u_xlati43 = (bitcast<i32>(u_xlatu42) + u_xlati43);
    u_xlat11 = vec4f((((-(vs_TEXCOORD0) * x_1311.x_AdditionalLightsPosition[u_xlati43].www) + x_1311.x_AdditionalLightsPosition[u_xlati43].xyz)).xyz, u_xlat11.w);
    u_xlat30.x = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat30.x = max(u_xlat30.x, 0.00006103515625f);
    u_xlat45 = inverseSqrt(u_xlat30.x);
    u_xlat11 = vec4f(((vec3f(u_xlat45) * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat45 = (1.0f / u_xlat30.x);
    u_xlat30.x = (u_xlat30.x * x_1311.x_AdditionalLightsAttenuation[u_xlati43].x);
    u_xlat30.x = ((-(u_xlat30.x) * u_xlat30.x) + 1.0f);
    u_xlat30.x = max(u_xlat30.x, 0.0f);
    u_xlat30.x = (u_xlat30.x * u_xlat30.x);
    u_xlat30.x = (u_xlat30.x * u_xlat45);
    u_xlat45 = dot(x_1311.x_AdditionalLightsSpotDir[u_xlati43].xyz, u_xlat11.xyz);
    u_xlat45 = ((u_xlat45 * x_1311.x_AdditionalLightsAttenuation[u_xlati43].z) + x_1311.x_AdditionalLightsAttenuation[u_xlati43].w);
    u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
    u_xlat45 = (u_xlat45 * u_xlat45);
    u_xlat30.x = (u_xlat30.x * u_xlat45);
    u_xlatb45 = (u_xlati43 < 0i);
    u_xlati48 = i32(x_616.x_AdditionalShadowParams[u_xlati43].w);
    u_xlati45 = select(u_xlati48, -1i, u_xlatb45);
    u_xlatb48 = (u_xlati45 >= 0i);
    if (u_xlatb48) {
      u_xlatb48 = any(!((vec4f() == vec4f(x_616.x_AdditionalShadowParams[u_xlati43].z))));
      if (u_xlatb48) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb48 = (u_xlatb12.y & u_xlatb12.x);
        let x_2265 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_2265.xy, u_xlatb12.z, x_2265.z);
        u_xlat22.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat22.z = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat51 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_2282 = u_xlat22.z;
        } else {
          x_2282 = u_xlat51;
        }
        u_xlat50 = x_2282;
        if (u_xlatb48) {
          x_2291 = u_xlat22.x;
        } else {
          x_2291 = u_xlat50;
        }
        u_xlat48 = x_2291;
        u_xlati48 = i32(u_xlat48);
        u_xlati45 = (u_xlati45 + u_xlati48);
      }
      u_xlati45 = (u_xlati45 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_616.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati45 + 1i)]);
      u_xlat12 = ((x_616.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati45] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_616.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati45 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_616.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati45 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      let x_2345 = u_xlat12.xy;
      txVec2 = vec3f(x_2345.x, x_2345.y, u_xlat12.z);
      u_xlat45 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat48 = (1.0f + -(x_616.x_AdditionalShadowParams[u_xlati43].x));
      u_xlat45 = ((u_xlat45 * x_616.x_AdditionalShadowParams[u_xlati43].x) + u_xlat48);
      u_xlatb48 = (0.0f >= u_xlat12.z);
      u_xlatb22 = (u_xlat12.z >= 1.0f);
      u_xlatb48 = (u_xlatb48 | u_xlatb22);
      u_xlat45 = select(u_xlat45, 1.0f, u_xlatb48);
    } else {
      u_xlat45 = 1.0f;
    }
    u_xlat48 = (-(u_xlat45) + 1.0f);
    u_xlat45 = ((u_xlat47 * u_xlat48) + u_xlat45);
    u_xlat12 = vec4f(((u_xlat0.xyz * x_1311.x_AdditionalLightsColor[u_xlati43].xyz)).xyz, u_xlat12.w);
    u_xlat43 = (u_xlat30.x * u_xlat45);
    u_xlat30.x = dot(u_xlat3.xyz, u_xlat11.xyz);
    u_xlat30.x = (u_xlat30.x + x_231.x_Wrap);
    u_xlat30.x = (u_xlat30.x / u_xlat23);
    u_xlat30.x = clamp(u_xlat30.x, 0.0f, 1.0f);
    u_xlat43 = (u_xlat43 * u_xlat30.x);
    u_xlat4 = vec4f((((u_xlat12.xyz * vec3f(u_xlat43)) + u_xlat4.xyz)).xyz, u_xlat4.w);
  }
  u_xlatb0 = (0.5f < x_231.x_DebugView);
  if (u_xlatb0) {
    u_xlat0 = vec4f((((u_xlat6 * x_2448) + x_2448)).xyz, u_xlat0.w);
    u_xlat1 = vec4f((((u_xlat3.xyz * x_2448) + x_2448)).xyz, u_xlat1.w);
    let x_2468 = vec4f(x_231.x_DebugView, x_231.x_DebugView, x_231.x_DebugView, x_231.x_DebugView);
    u_xlatb3 = (vec4f(x_2468.x, x_2468.y, x_2468.z, x_2468.w) < vec4f(1.5f, 2.5f, 3.5f, 4.5f));
    u_xlat42 = (u_xlat37 * u_xlat9.x);
    if (u_xlatb3.w) {
      x_2486 = u_xlat5.xyz;
    } else {
      x_2486 = vec3f(u_xlat42);
    }
    u_xlat2 = vec4f(x_2486.xyz, u_xlat2.w);
    if (u_xlatb3.z) {
      x_2499 = vs_TEXCOORD4.xyz;
    } else {
      x_2499 = u_xlat2.xyz;
    }
    u_xlat2 = vec4f(x_2499.xyz, u_xlat2.w);
    if (u_xlatb3.y) {
      x_2512 = u_xlat1.xyz;
    } else {
      x_2512 = u_xlat2.xyz;
    }
    u_xlat1 = vec4f(x_2512.xyz, u_xlat1.w);
    if (u_xlatb3.x) {
      x_2527 = u_xlat0.xyz;
    } else {
      x_2527 = u_xlat1.xyz;
    }
    SV_Target0 = vec4f(x_2527.xyz, SV_Target0.w);
    SV_Target0.w = u_xlat4.w;
    return;
  }
  u_xlatb0 = (x_92.x_B612SunDirection.w < 0.5f);
  u_xlatb14 = (0.0f >= x_231.x_HazeDensity);
  u_xlatb0 = (u_xlatb14 | u_xlatb0);
  if (!(u_xlatb0)) {
    u_xlat0.x = sqrt(u_xlat44);
    u_xlat14.x = (u_xlat0.x + -(x_231.x_HazeStart));
    u_xlat14.x = max(u_xlat14.x, 0.0f);
    u_xlat28 = (u_xlat14.x * x_231.x_HazeDensity);
    u_xlat28 = max(u_xlat28, 0.00000099999999747524f);
    u_xlat42 = max(x_231.x_HazeFalloff, 0.5f);
    u_xlat28 = log2(u_xlat28);
    u_xlat28 = (u_xlat28 * u_xlat42);
    u_xlat28 = exp2(u_xlat28);
    u_xlat28 = (u_xlat28 * -1.44269502162933349609f);
    u_xlat14.y = exp2(u_xlat28);
    u_xlat42 = (-(vs_TEXCOORD0.y) + x_231.x_MistHeight);
    u_xlat1.x = (abs(x_231.x_MistHeight) + 5.0f);
    u_xlat42 = (u_xlat42 / u_xlat1.x);
    u_xlat42 = clamp(u_xlat42, 0.0f, 1.0f);
    u_xlat14.x = (-(u_xlat14.x) * x_231.x_MistDensity);
    u_xlat14.x = (u_xlat42 * u_xlat14.x);
    u_xlat14.x = (u_xlat14.x * 1.44269502162933349609f);
    u_xlat14.x = exp2(u_xlat14.x);
    u_xlat14 = vec3f(((-(u_xlat14.xy) + x_576)).xy, u_xlat14.z);
    u_xlat14 = vec3f(((-(u_xlat14.xy) + x_576)).xy, u_xlat14.z);
    u_xlat0.y = ((-(u_xlat14.y) * u_xlat14.x) + 1.0f);
    u_xlat0 = vec4f(max(u_xlat0.xy, vec2f(0.00100000004749745131f, 0.0f)).xy, u_xlat0.zw);
    let x_2669 = (u_xlat8.xz / u_xlat0.xx);
    u_xlat0 = vec4f(x_2669.x, u_xlat0.y, x_2669.y, u_xlat0.w);
    let x_2676 = (u_xlat0.xz + x_2675);
    u_xlat0 = vec4f(x_2676.x, u_xlat0.y, x_2676.y, u_xlat0.w);
    u_xlat42 = dot(u_xlat0.xz, u_xlat0.xz);
    u_xlat42 = inverseSqrt(u_xlat42);
    u_xlat1 = vec4f(((vec2f(u_xlat42) * u_xlat0.xz)).xy, u_xlat1.zw);
    u_xlatb0 = (1.5f < x_92.x_B612HdriParams.x);
    if (u_xlatb0) {
      u_xlat1.z = 0.02600000053644180298f;
      u_xlat0.x = dot(u_xlat1.xyz, u_xlat1.xyz);
      u_xlat0.x = inverseSqrt(u_xlat0.x);
      u_xlat2 = vec4f(((u_xlat0.xxx * u_xlat1.xzy)).xyz, u_xlat2.w);
      u_xlat28 = dot(u_xlat2.xyz, x_92.x_B612SunDirection.xyz);
      u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
      u_xlat42 = ((-(u_xlat1.z) * u_xlat0.x) + 1.0f);
      u_xlat29 = sqrt(u_xlat42);
      u_xlat2.x = ((u_xlat0.x * -0.00048696179874241352f) + 0.07426100224256515503f);
      u_xlat2.x = ((u_xlat2.x * u_xlat2.y) + -0.21211439371109008789f);
      u_xlat2.x = ((u_xlat2.x * u_xlat2.y) + 1.57072877883911132812f);
      u_xlat29 = ((-(u_xlat2.x) * u_xlat29) + 1.57079637050628662109f);
      u_xlat2.x = (u_xlat29 * 57.295780181884765625f);
      u_xlat30 = ((u_xlat1.xy * u_xlat0.xx) + x_2675);
      u_xlat0.x = dot(u_xlat30, u_xlat30);
      u_xlat0.x = inverseSqrt(u_xlat0.x);
      u_xlat30 = (u_xlat0.xx * u_xlat30);
      u_xlat3 = vec4f(((x_92.x_B612SunDirection.xz + x_2675)).xy, u_xlat3.zw);
      u_xlat0.x = dot(u_xlat3.xy, u_xlat3.xy);
      u_xlat0.x = inverseSqrt(u_xlat0.x);
      u_xlat3 = vec4f(((u_xlat0.xx * u_xlat3.xy)).xy, u_xlat3.zw);
      u_xlat0.x = dot(u_xlat30, u_xlat3.xy);
      u_xlat0.x = ((u_xlat0.x * 0.5f) + 0.5f);
      u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
      u_xlat30 = max(x_92.x_B612SkyParams.yw, x_2829);
      u_xlat3.x = log2(u_xlat0.x);
      u_xlat30.x = (u_xlat30.x * u_xlat3.x);
      u_xlat30.x = exp2(u_xlat30.x);
      u_xlat17 = (-(x_92.x_B612SkyHorizon.xyz) + x_92.x_B612SkyHorizonSun.xyz);
      u_xlat17 = ((u_xlat30.xxx * u_xlat17) + x_92.x_B612SkyHorizon.xyz);
      u_xlat5.x = (x_92.x_B612SkyParams.x * 0.44999998807907104492f);
      u_xlat5.x = max(u_xlat5.x, 0.00999999977648258209f);
      u_xlat5.x = (-(u_xlat2.y) / u_xlat5.x);
      u_xlat5.x = (u_xlat5.x * 1.44269502162933349609f);
      u_xlat5.x = exp2(u_xlat5.x);
      u_xlat5.x = (-(u_xlat5.x) + 1.0f);
      u_xlat19 = (-(x_92.x_B612SkyZenith.xyz) + x_92.x_B612SkyHorizonSun.xyz);
      u_xlat19 = (u_xlat19 * x_2902);
      u_xlat30.x = (u_xlat30.x * x_92.x_B612SkyParams.z);
      u_xlat42 = (u_xlat42 * u_xlat30.x);
      u_xlat19 = ((vec3f(u_xlat42) * u_xlat19) + x_92.x_B612SkyZenith.xyz);
      u_xlat19 = (-(u_xlat17) + u_xlat19);
      u_xlat17 = ((u_xlat5.xxx * u_xlat19) + u_xlat17);
      u_xlat42 = max(x_92.x_B612HazeParams.x, 0.10000000149011611938f);
      u_xlat42 = (u_xlat42 * -(u_xlat2.y));
      u_xlat42 = (u_xlat42 * 1.44269502162933349609f);
      u_xlat42 = exp2(u_xlat42);
      u_xlat42 = (u_xlat42 * x_92.x_B612HazeColor.w);
      u_xlat42 = clamp(u_xlat42, 0.0f, 1.0f);
      u_xlat5 = vec4f(((-(u_xlat17) + x_92.x_B612HazeColor.xyz)).xyz, u_xlat5.w);
      u_xlat17 = ((vec3f(u_xlat42) * u_xlat5.xyz) + u_xlat17);
      u_xlat5 = vec4f(max(x_92.x_B612SkyParams2.xyz, x_2969).xyz, u_xlat5.w);
      u_xlat42 = (u_xlat3.x * u_xlat5.x);
      u_xlat42 = exp2(u_xlat42);
      u_xlat6 = (vec3f(u_xlat42) * x_92.x_B612SkyGlow.xyz);
      u_xlat42 = max(x_92.x_B612SkyGlow.w, 0.10000000149011611938f);
      u_xlat42 = (-(u_xlat2.x) / u_xlat42);
      u_xlat42 = (u_xlat42 * 1.44269502162933349609f);
      u_xlat42 = exp2(u_xlat42);
      u_xlat2 = vec4f((((u_xlat6 * vec3f(u_xlat42)) + u_xlat17)).xyz, u_xlat2.w);
      u_xlat42 = ((u_xlat29 * 57.295780181884765625f) + -(x_92.x_B612SkyAnti.w));
      u_xlat42 = (u_xlat42 / u_xlat5.y);
      u_xlat0.x = (-(u_xlat0.x) + 1.0f);
      u_xlat0.x = log2(u_xlat0.x);
      u_xlat0.x = (u_xlat0.x * u_xlat5.z);
      u_xlat0.x = exp2(u_xlat0.x);
      u_xlat3 = vec4f(((u_xlat0.xxx * x_92.x_B612SkyAnti.xyz)).xyz, u_xlat3.w);
      u_xlat0.x = (u_xlat42 * -(u_xlat42));
      u_xlat0.x = (u_xlat0.x * 1.44269502162933349609f);
      u_xlat0.x = exp2(u_xlat0.x);
      u_xlat2 = vec4f((((u_xlat3.xyz * u_xlat0.xxx) + u_xlat2.xyz)).xyz, u_xlat2.w);
      u_xlat0.x = max(x_92.x_B612SunGlow.w, 1.0f);
      u_xlat28 = log2(u_xlat28);
      u_xlat0.x = (u_xlat28 * u_xlat0.x);
      u_xlat0.x = exp2(u_xlat0.x);
      let x_3090 = ((x_92.x_B612SunGlow.xyz * u_xlat0.xxx) + u_xlat2.xyz);
      u_xlat0 = vec4f(x_3090.x, u_xlat0.y, x_3090.yz);
      u_xlat29 = x_92.x_B612TimeParams.x;
      u_xlat29 = clamp(u_xlat29, 0.0f, 1.0f);
      u_xlat2.x = x_92.x_B612SkyCloud.z;
      u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
      u_xlat16.x = min(abs(u_xlat1.y), abs(u_xlat1.x));
      u_xlat30.x = max(abs(u_xlat1.y), abs(u_xlat1.x));
      u_xlat30.x = (1.0f / u_xlat30.x);
      u_xlat16.x = (u_xlat30.x * u_xlat16.x);
      u_xlat30.x = (u_xlat16.x * u_xlat16.x);
      u_xlat3.x = ((u_xlat30.x * 0.02083509974181652069f) + -0.08513300120830535889f);
      u_xlat3.x = ((u_xlat30.x * u_xlat3.x) + 0.18014100193977355957f);
      u_xlat3.x = ((u_xlat30.x * u_xlat3.x) + -0.33029949665069580078f);
      u_xlat30.x = ((u_xlat30.x * u_xlat3.x) + 0.99986600875854492188f);
      u_xlat3.x = (u_xlat30.x * u_xlat16.x);
      u_xlatb17 = (abs(u_xlat1.y) < abs(u_xlat1.x));
      u_xlat3.x = ((u_xlat3.x * -2.0f) + 1.57079637050628662109f);
      if (u_xlatb17) {
        x_3188 = u_xlat3.x;
      } else {
        x_3188 = 0.0f;
      }
      u_xlat3.x = x_3188;
      u_xlat16.x = ((u_xlat16.x * u_xlat30.x) + u_xlat3.x);
      u_xlatb30 = (u_xlat1.y < -(u_xlat1.y));
      u_xlat30.x = select(0.0f, -3.14159274101257324219f, u_xlatb30);
      u_xlat16.x = (u_xlat30.x + u_xlat16.x);
      u_xlat30.x = min(u_xlat1.y, u_xlat1.x);
      u_xlat3.x = max(u_xlat1.y, u_xlat1.x);
      u_xlatb30 = (u_xlat30.x < -(u_xlat30.x));
      u_xlatb3.x = (u_xlat3.x >= -(u_xlat3.x));
      u_xlatb30 = (u_xlatb30 & u_xlatb3.x);
      if (u_xlatb30) {
        x_3251 = -(u_xlat16.x);
      } else {
        x_3251 = u_xlat16.x;
      }
      u_xlat16.x = x_3251;
      u_xlat16 = ((u_xlat16.xx * vec2f(57.295780181884765625f)) + -(x_92.x_B612SkyCloud.xy));
      u_xlat3 = vec4f((((u_xlat16 * vec2f(0.00277777784503996372f)) + vec2f(0.5f))).xy, u_xlat3.zw);
      u_xlat3.z = 0.5f;
      u_xlat5 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat3.xz, 0.0f);
      u_xlat3 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat3.yz, 0.0f);
      u_xlat6 = (u_xlat5.xyz * x_92.x_B612HdriDay0.xyz);
      u_xlat16.x = dot(u_xlat6, x_359);
      u_xlat5 = vec4f((((u_xlat5.xyz * x_92.x_B612HdriDay0.xyz) + -(u_xlat16.xxx))).xyz, u_xlat5.w);
      u_xlat5 = vec4f((((x_92.x_B612HdriDay0.www * u_xlat5.xyz) + u_xlat16.xxx)).xyz, u_xlat5.w);
      u_xlat5 = vec4f(max(u_xlat5.xyz, vec3f()).xyz, u_xlat5.w);
      u_xlat16.x = max(x_92.x_B612HdriDay1.w, 0.10000000149011611938f);
      u_xlat16.x = (1.5f / u_xlat16.x);
      u_xlat16.x = (-(u_xlat16.x) + 1.0f);
      u_xlat16.x = max(u_xlat16.x, 0.0f);
      u_xlat16.x = (u_xlat16.x * u_xlat16.x);
      u_xlat6 = (x_92.x_B612HdriDay1.xyz + x_3360);
      u_xlat6 = ((u_xlat16.xxx * u_xlat6) + x_3366);
      u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6)).xyz, u_xlat5.w);
      u_xlat16 = (-(x_92.x_B612HdriDay2.ww) + x_3379);
      u_xlat30.x = max(u_xlat16.y, 1.0f);
      u_xlat16.x = (u_xlat16.x / u_xlat30.x);
      u_xlat16.x = clamp(u_xlat16.x, 0.0f, 1.0f);
      u_xlat6 = (x_92.x_B612HdriDay2.xyz + x_3360);
      u_xlat6 = ((u_xlat16.xxx * u_xlat6) + x_3366);
      u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6)).xyz, u_xlat5.w);
      u_xlat6 = max(x_92.x_B612SkyCloudWarm.xyz, vec3f(0.00100000004749745131f));
      u_xlat6 = log2(u_xlat6);
      u_xlat6 = (vec3f(u_xlat29) * u_xlat6);
      u_xlat6 = exp2(u_xlat6);
      u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6)).xyz, u_xlat5.w);
      u_xlat16.x = (x_92.x_B612SkyCloudWarm.w + -1.0f);
      u_xlat29 = ((u_xlat29 * u_xlat16.x) + 1.0f);
      u_xlat5 = vec4f(((vec3f(u_xlat29) * u_xlat5.xyz)).xyz, u_xlat5.w);
      u_xlat6 = (u_xlat3.xyz * x_92.x_B612HdriDusk0.xyz);
      u_xlat29 = dot(u_xlat6, x_359);
      u_xlat3 = vec4f((((u_xlat3.xyz * x_92.x_B612HdriDusk0.xyz) + -(vec3f(u_xlat29)))).xyz, u_xlat3.w);
      u_xlat3 = vec4f((((x_92.x_B612HdriDusk0.www * u_xlat3.xyz) + vec3f(u_xlat29))).xyz, u_xlat3.w);
      u_xlat3 = vec4f(max(u_xlat3.xyz, vec3f()).xyz, u_xlat3.w);
      u_xlat29 = max(x_92.x_B612HdriDusk1.w, 0.10000000149011611938f);
      u_xlat29 = (1.5f / u_xlat29);
      u_xlat29 = (-(u_xlat29) + 1.0f);
      u_xlat29 = max(u_xlat29, 0.0f);
      u_xlat29 = (u_xlat29 * u_xlat29);
      u_xlat6 = (x_92.x_B612HdriDusk1.xyz + x_3360);
      u_xlat6 = ((vec3f(u_xlat29) * u_xlat6) + x_3366);
      u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat6)).xyz, u_xlat3.w);
      u_xlat16 = (-(x_92.x_B612HdriDusk2.ww) + x_3379);
      u_xlat29 = max(u_xlat16.y, 1.0f);
      u_xlat29 = (u_xlat16.x / u_xlat29);
      u_xlat29 = clamp(u_xlat29, 0.0f, 1.0f);
      u_xlat6 = (x_92.x_B612HdriDusk2.xyz + x_3360);
      u_xlat6 = ((vec3f(u_xlat29) * u_xlat6) + x_3366);
      u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat6)).xyz, u_xlat3.w);
      u_xlat29 = (-(x_92.x_B612SkyCloud2.x) + x_92.x_B612SkyCloud2.y);
      u_xlat16.x = (-(x_92.x_B612SkyCloud2.x) + 1.5f);
      u_xlat29 = (1.0f / u_xlat29);
      u_xlat29 = (u_xlat29 * u_xlat16.x);
      u_xlat29 = clamp(u_xlat29, 0.0f, 1.0f);
      u_xlat16.x = ((u_xlat29 * -2.0f) + 3.0f);
      u_xlat29 = (u_xlat29 * u_xlat29);
      u_xlat29 = (u_xlat29 * u_xlat16.x);
      u_xlat6 = x_92.x_B612SkyCloudCut.xyz;
      u_xlat6 = clamp(u_xlat6, vec3f(0.0f), vec3f(1.0f));
      u_xlat16 = (-(u_xlat6.xy) + x_576);
      u_xlat6.x = max(x_92.x_B612SkyCloudCut.w, 0.10000000149011611938f);
      u_xlat6.x = (1.0f / u_xlat6.x);
      u_xlat6.x = (u_xlat6.x * 1.5f);
      u_xlat6.x = min(u_xlat6.x, 1.0f);
      u_xlat20.x = ((u_xlat6.x * -2.0f) + 3.0f);
      u_xlat6.x = (u_xlat6.x * u_xlat6.x);
      u_xlat6.x = ((-(u_xlat20.x) * u_xlat6.x) + 1.0f);
      u_xlat6.x = ((-(u_xlat6.z) * u_xlat6.x) + 1.0f);
      u_xlat30.x = (u_xlat16.y * u_xlat6.x);
      u_xlat5 = (u_xlat16.xxxx * u_xlat5);
      u_xlat45 = ((u_xlat3.w * u_xlat30.x) + -(u_xlat5.w));
      u_xlat45 = ((u_xlat2.x * u_xlat45) + u_xlat5.w);
      u_xlat45 = (u_xlat29 * u_xlat45);
      u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat30.xxx) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
      u_xlat2 = vec4f((((u_xlat2.xxx * u_xlat3.xyz) + u_xlat5.xyz)).xyz, u_xlat2.w);
      u_xlat3 = vec4f(((vec3f(u_xlat29) * u_xlat2.xyz)).xyz, u_xlat3.w);
      u_xlat5.x = x_92.x_B612SkyNight.w;
      u_xlat5.x = clamp(u_xlat5.x, 0.0f, 1.0f);
      u_xlat19.x = dot(u_xlat3.xyz, x_359);
      u_xlat2 = vec4f((((-(u_xlat2.xyz) * vec3f(u_xlat29)) + u_xlat19.xxx)).xyz, u_xlat2.w);
      u_xlat2 = vec4f((((u_xlat5.xxx * u_xlat2.xyz) + u_xlat3.xyz)).xyz, u_xlat2.w);
      u_xlat29 = ((u_xlat19.x * 1.5f) + 1.0f);
      u_xlat29 = (1.0f / u_xlat29);
      u_xlat29 = (u_xlat29 + -1.0f);
      u_xlat29 = ((u_xlat5.x * u_xlat29) + 1.0f);
      u_xlat2 = vec4f(((vec3f(u_xlat29) * u_xlat2.xyz)).xyz, u_xlat2.w);
      u_xlat5 = (-(x_92.x_B612SkyCloudNight.wxyz) + x_900);
      u_xlat3 = vec4f(((u_xlat5.xxx * u_xlat5.yzw)).xyz, u_xlat3.w);
      u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat3.xyz)).xyz, u_xlat2.w);
      u_xlat29 = (u_xlat45 * u_xlat5.x);
      u_xlat3.x = x_92.x_B612SkyCloud2.z;
      u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
      u_xlat19 = ((u_xlat0.xzw * vec3f(u_xlat29)) + -(u_xlat2.xyz));
      u_xlat2 = vec4f((((u_xlat3.xxx * u_xlat19) + u_xlat2.xyz)).xyz, u_xlat2.w);
      u_xlat29 = ((-(u_xlat45) * u_xlat5.x) + 1.0f);
      let x_3796 = ((u_xlat0.xzw * vec3f(u_xlat29)) + u_xlat2.xyz);
      u_xlat0 = vec4f(x_3796.x, u_xlat0.y, x_3796.yz);
      let x_3803 = (u_xlat30.yyy * u_xlat0.xzw);
      u_xlat0 = vec4f(x_3803.x, u_xlat0.y, x_3803.yz);
    } else {
      u_xlatb29 = (0.5f < x_92.x_B612HdriParams.x);
      if (u_xlatb29) {
        u_xlat29 = x_92.x_B612TimeParams.x;
        u_xlat29 = clamp(u_xlat29, 0.0f, 1.0f);
        u_xlat2 = vec4f(max(x_92.x_B612HdriParams.zw, vec2f(10.0f, 0.0f)).xy, u_xlat2.zw);
        u_xlat30.x = (u_xlat2.x * x_92.x_B612CloudParams.x);
        u_xlat30.x = (u_xlat30.x * 0.15915493667125701904f);
        u_xlat44 = (x_92.x_Time.y * 6.28318548202514648438f);
        u_xlat2.x = (u_xlat44 / u_xlat2.x);
        u_xlat2.x = sin(u_xlat2.x);
        u_xlat44 = ((u_xlat30.x * u_xlat2.x) + x_92.x_B612HdriDay3.x);
        u_xlat44 = ((-(u_xlat29) * x_92.x_B612HdriParams.y) + u_xlat44);
        u_xlat2.x = ((u_xlat30.x * u_xlat2.x) + x_92.x_B612HdriDusk3.x);
        u_xlat30.x = (-(u_xlat29) + 1.0f);
        u_xlat2.x = ((u_xlat30.x * x_92.x_B612HdriParams.y) + u_xlat2.x);
        u_xlat30.x = min(abs(u_xlat1.y), abs(u_xlat1.x));
        u_xlat3.x = max(abs(u_xlat1.y), abs(u_xlat1.x));
        u_xlat3.x = (1.0f / u_xlat3.x);
        u_xlat30.x = (u_xlat30.x * u_xlat3.x);
        u_xlat3.x = (u_xlat30.x * u_xlat30.x);
        u_xlat17.x = ((u_xlat3.x * 0.02083509974181652069f) + -0.08513300120830535889f);
        u_xlat17.x = ((u_xlat3.x * u_xlat17.x) + 0.18014100193977355957f);
        u_xlat17.x = ((u_xlat3.x * u_xlat17.x) + -0.33029949665069580078f);
        u_xlat3.x = ((u_xlat3.x * u_xlat17.x) + 0.99986600875854492188f);
        u_xlat17.x = (u_xlat30.x * u_xlat3.x);
        u_xlatb31 = (abs(u_xlat1.y) < abs(u_xlat1.x));
        u_xlat17.x = ((u_xlat17.x * -2.0f) + 1.57079637050628662109f);
        if (u_xlatb31) {
          x_3963 = u_xlat17.x;
        } else {
          x_3963 = 0.0f;
        }
        u_xlat17.x = x_3963;
        u_xlat30.x = ((u_xlat30.x * u_xlat3.x) + u_xlat17.x);
        u_xlatb3.x = (u_xlat1.y < -(u_xlat1.y));
        u_xlat3.x = select(0.0f, -3.14159274101257324219f, u_xlatb3.x);
        u_xlat30.x = (u_xlat30.x + u_xlat3.x);
        u_xlat3.x = min(u_xlat1.y, u_xlat1.x);
        u_xlat17.x = max(u_xlat1.y, u_xlat1.x);
        u_xlatb3.x = (u_xlat3.x < -(u_xlat3.x));
        u_xlatb17 = (u_xlat17.x >= -(u_xlat17.x));
        u_xlatb3.x = (u_xlatb17 & u_xlatb3.x);
        if (u_xlatb3.x) {
          x_4029 = -(u_xlat30.x);
        } else {
          x_4029 = u_xlat30.x;
        }
        u_xlat30.x = x_4029;
        u_xlat44 = ((u_xlat30.x * 57.295780181884765625f) + -(u_xlat44));
        u_xlat3.x = ((u_xlat44 * 0.00277777784503996372f) + 0.5f);
        u_xlat3.y = 0.5f;
        u_xlat31.y = 0.5f;
        u_xlat5 = vec4f(textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat3.xy, 0.0f).xyz.xyz, u_xlat5.w);
        u_xlat2.x = ((u_xlat30.x * 57.295780181884765625f) + -(u_xlat2.x));
        u_xlat31.x = ((u_xlat2.x * 0.00277777784503996372f) + 0.5f);
        let x_4080 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat31, 0.0f).xyz;
        u_xlat2 = vec4f(x_4080.x, u_xlat2.y, x_4080.yz);
        u_xlat3 = vec4f(((u_xlat5.xyz * x_92.x_B612HdriDay0.xyz)).xyz, u_xlat3.w);
        u_xlatb45 = (0.0f < x_92.x_B612HdriDay3.z);
        u_xlat5.x = max(u_xlat3.y, u_xlat3.x);
        u_xlat5.x = max(u_xlat3.z, u_xlat5.x);
        u_xlat19.x = (u_xlat5.x + -(x_92.x_B612HdriDay3.y));
        u_xlat19.x = max(u_xlat19.x, 0.0f);
        u_xlat33 = (u_xlat19.x / x_92.x_B612HdriDay3.z);
        u_xlat33 = (u_xlat33 + 1.0f);
        u_xlat19.x = (u_xlat19.x / u_xlat33);
        u_xlat19.x = (u_xlat19.x + x_92.x_B612HdriDay3.y);
        u_xlat5.x = max(u_xlat5.x, x_92.x_B612HdriDay3.y);
        u_xlat5.x = (u_xlat19.x / u_xlat5.x);
        u_xlat5 = vec4f(((u_xlat3.xyz * u_xlat5.xxx)).xyz, u_xlat5.w);
        if (u_xlatb45) {
          x_4156 = u_xlat5.xyz;
        } else {
          x_4156 = u_xlat3.xyz;
        }
        u_xlat3 = vec4f(x_4156.xyz, u_xlat3.w);
        u_xlat45 = dot(u_xlat3.xyz, x_359);
        u_xlat3 = vec4f(((-(vec3f(u_xlat45)) + u_xlat3.xyz)).xyz, u_xlat3.w);
        u_xlat3 = vec4f((((x_92.x_B612HdriDay0.www * u_xlat3.xyz) + vec3f(u_xlat45))).xyz, u_xlat3.w);
        u_xlat45 = max(x_92.x_B612HdriDay1.w, 0.10000000149011611938f);
        u_xlat45 = (u_xlat2.y / u_xlat45);
        u_xlat3.w = (-(u_xlat45) + 1.0f);
        u_xlat3 = max(u_xlat3, vec4f());
        u_xlat45 = (u_xlat3.w * u_xlat3.w);
        u_xlat5 = vec4f(((x_92.x_B612HdriDay1.xyz + x_3360)).xyz, u_xlat5.w);
        u_xlat5 = vec4f((((vec3f(u_xlat45) * u_xlat5.xyz) + x_3366)).xyz, u_xlat5.w);
        u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat5.xyz)).xyz, u_xlat3.w);
        u_xlat45 = (x_92.x_B612HdriParams.w + -(x_92.x_B612HdriDay2.w));
        u_xlat5.x = (-(x_92.x_B612HdriDay2.w) + 90.0f);
        u_xlat5.x = max(u_xlat5.x, 1.0f);
        u_xlat45 = (u_xlat45 / u_xlat5.x);
        u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
        u_xlat5 = vec4f(((x_92.x_B612HdriDay2.xyz + x_3360)).xyz, u_xlat5.w);
        u_xlat5 = vec4f((((vec3f(u_xlat45) * u_xlat5.xyz) + x_3366)).xyz, u_xlat5.w);
        u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat5.xyz)).xyz, u_xlat3.w);
        let x_4275 = (u_xlat2.xzw * x_92.x_B612HdriDusk0.xyz);
        u_xlat2 = vec4f(x_4275.x, u_xlat2.y, x_4275.yz);
        u_xlatb45 = (0.0f < x_92.x_B612HdriDusk3.z);
        u_xlat5.x = max(u_xlat2.z, u_xlat2.x);
        u_xlat5.x = max(u_xlat2.w, u_xlat5.x);
        u_xlat19.x = (u_xlat5.x + -(x_92.x_B612HdriDusk3.y));
        u_xlat19.x = max(u_xlat19.x, 0.0f);
        u_xlat33 = (u_xlat19.x / x_92.x_B612HdriDusk3.z);
        u_xlat33 = (u_xlat33 + 1.0f);
        u_xlat19.x = (u_xlat19.x / u_xlat33);
        u_xlat19.x = (u_xlat19.x + x_92.x_B612HdriDusk3.y);
        u_xlat5.x = max(u_xlat5.x, x_92.x_B612HdriDusk3.y);
        u_xlat5.x = (u_xlat19.x / u_xlat5.x);
        u_xlat5 = vec4f(((u_xlat2.xzw * u_xlat5.xxx)).xyz, u_xlat5.w);
        if (u_xlatb45) {
          x_4342 = u_xlat5.xyz;
        } else {
          x_4342 = u_xlat2.xzw;
        }
        u_xlat2 = vec4f(x_4342.x, u_xlat2.y, x_4342.yz);
        u_xlat45 = dot(u_xlat2.xzw, x_359);
        let x_4361 = (u_xlat2.xzw + -(vec3f(u_xlat45)));
        u_xlat2 = vec4f(x_4361.x, u_xlat2.y, x_4361.yz);
        let x_4372 = ((x_92.x_B612HdriDusk0.www * u_xlat2.xzw) + vec3f(u_xlat45));
        u_xlat2 = vec4f(x_4372.x, u_xlat2.y, x_4372.yz);
        u_xlat45 = max(x_92.x_B612HdriDusk1.w, 0.10000000149011611938f);
        u_xlat16.x = (u_xlat2.y / u_xlat45);
        u_xlat2.y = (-(u_xlat16.x) + 1.0f);
        u_xlat2 = max(u_xlat2, vec4f());
        u_xlat16.x = (u_xlat2.y * u_xlat2.y);
        u_xlat5 = vec4f(((x_92.x_B612HdriDusk1.xyz + x_3360)).xyz, u_xlat5.w);
        u_xlat5 = vec4f((((u_xlat16.xxx * u_xlat5.xyz) + x_3366)).xyz, u_xlat5.w);
        u_xlat2 = vec4f(((u_xlat2.xzw * u_xlat5.xyz)).xyz, u_xlat2.w);
        u_xlat44 = (x_92.x_B612HdriParams.w + -(x_92.x_B612HdriDusk2.w));
        u_xlat45 = (-(x_92.x_B612HdriDusk2.w) + 90.0f);
        u_xlat45 = max(u_xlat45, 1.0f);
        u_xlat44 = (u_xlat44 / u_xlat45);
        u_xlat44 = clamp(u_xlat44, 0.0f, 1.0f);
        u_xlat5 = vec4f(((x_92.x_B612HdriDusk2.xyz + x_3360)).xyz, u_xlat5.w);
        u_xlat5 = vec4f((((vec3f(u_xlat44) * u_xlat5.xyz) + x_3366)).xyz, u_xlat5.w);
        u_xlat2 = vec4f((((u_xlat2.xyz * u_xlat5.xyz) + -(u_xlat3.xyz))).xyz, u_xlat2.w);
        let x_4466 = ((vec3f(u_xlat29) * u_xlat2.xyz) + u_xlat3.xyz);
        u_xlat0 = vec4f(x_4466.x, u_xlat0.y, x_4466.yz);
      } else {
        u_xlat1.w = 0.02600000053644180298f;
        u_xlat29 = dot(u_xlat1.xyw, u_xlat1.xyw);
        u_xlat29 = inverseSqrt(u_xlat29);
        u_xlat2.x = (u_xlat29 * u_xlat1.w);
        u_xlat43 = ((-(u_xlat1.w) * u_xlat29) + 1.0f);
        u_xlat16.x = sqrt(u_xlat43);
        u_xlat30.x = ((u_xlat29 * -0.00048696179874241352f) + 0.07426100224256515503f);
        u_xlat30.x = ((u_xlat30.x * u_xlat2.x) + -0.21211439371109008789f);
        u_xlat30.x = ((u_xlat30.x * u_xlat2.x) + 1.57072877883911132812f);
        u_xlat16.x = ((-(u_xlat30.x) * u_xlat16.x) + 1.57079637050628662109f);
        u_xlat30.x = (u_xlat16.x * 57.295780181884765625f);
        u_xlat1 = vec4f((((u_xlat1.xy * vec2f(u_xlat29)) + x_2675)).xy, u_xlat1.zw);
        u_xlat29 = dot(u_xlat1.xy, u_xlat1.xy);
        u_xlat29 = inverseSqrt(u_xlat29);
        u_xlat1 = vec4f(((vec2f(u_xlat29) * u_xlat1.xy)).xy, u_xlat1.zw);
        u_xlat3 = vec4f(((x_92.x_B612SunDirection.xz + x_2675)).xy, u_xlat3.zw);
        u_xlat29 = dot(u_xlat3.xy, u_xlat3.xy);
        u_xlat29 = inverseSqrt(u_xlat29);
        u_xlat3 = vec4f(((vec2f(u_xlat29) * u_xlat3.xy)).xy, u_xlat3.zw);
        u_xlat1.x = dot(u_xlat1.xy, u_xlat3.xy);
        u_xlat1.x = ((u_xlat1.x * 0.5f) + 0.5f);
        u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
        u_xlat15 = vec3f(max(x_92.x_B612SkyParams.yw, x_2829).xy, u_xlat15.z);
        u_xlat44 = log2(u_xlat1.x);
        u_xlat15.x = (u_xlat15.x * u_xlat44);
        u_xlat15.x = exp2(u_xlat15.x);
        u_xlat3 = vec4f(((-(x_92.x_B612SkyHorizon.xyz) + x_92.x_B612SkyHorizonSun.xyz)).xyz, u_xlat3.w);
        u_xlat3 = vec4f((((u_xlat15.xxx * u_xlat3.xyz) + x_92.x_B612SkyHorizon.xyz)).xyz, u_xlat3.w);
        u_xlat45 = (x_92.x_B612SkyParams.x * 0.44999998807907104492f);
        u_xlat45 = max(u_xlat45, 0.00999999977648258209f);
        u_xlat45 = (-(u_xlat2.x) / u_xlat45);
        u_xlat45 = (u_xlat45 * 1.44269502162933349609f);
        u_xlat45 = exp2(u_xlat45);
        u_xlat45 = (-(u_xlat45) + 1.0f);
        u_xlat5 = vec4f(((-(x_92.x_B612SkyZenith.xyz) + x_92.x_B612SkyHorizonSun.xyz)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat5.xyz * x_2902)).xyz, u_xlat5.w);
        u_xlat15.x = (u_xlat15.x * x_92.x_B612SkyParams.z);
        u_xlat15.x = (u_xlat43 * u_xlat15.x);
        u_xlat5 = vec4f((((u_xlat15.xxx * u_xlat5.xyz) + x_92.x_B612SkyZenith.xyz)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((-(u_xlat3.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
        u_xlat3 = vec4f((((vec3f(u_xlat45) * u_xlat5.xyz) + u_xlat3.xyz)).xyz, u_xlat3.w);
        u_xlat15.x = max(x_92.x_B612HazeParams.x, 0.10000000149011611938f);
        u_xlat15.x = (u_xlat15.x * -(u_xlat2.x));
        u_xlat15.x = (u_xlat15.x * 1.44269502162933349609f);
        u_xlat15.x = exp2(u_xlat15.x);
        u_xlat15.x = (u_xlat15.x * x_92.x_B612HazeColor.w);
        u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
        u_xlat5 = vec4f(((-(u_xlat3.xyz) + x_92.x_B612HazeColor.xyz)).xyz, u_xlat5.w);
        u_xlat3 = vec4f((((u_xlat15.xxx * u_xlat5.xyz) + u_xlat3.xyz)).xyz, u_xlat3.w);
        u_xlat5 = vec4f(max(x_92.x_B612SkyParams2.xyz, x_2969).xyz, u_xlat5.w);
        u_xlat15.x = (u_xlat44 * u_xlat5.x);
        u_xlat15.x = exp2(u_xlat15.x);
        u_xlat6 = (u_xlat15.xxx * x_92.x_B612SkyGlow.xyz);
        u_xlat15.x = max(x_92.x_B612SkyGlow.w, 0.10000000149011611938f);
        u_xlat15.x = (-(u_xlat30.x) / u_xlat15.x);
        u_xlat15.x = (u_xlat15.x * 1.44269502162933349609f);
        u_xlat15.x = exp2(u_xlat15.x);
        let x_4784 = ((u_xlat6 * u_xlat15.xxx) + u_xlat3.xyz);
        u_xlat2 = vec4f(x_4784.x, u_xlat2.y, x_4784.yz);
        u_xlat15.x = ((u_xlat16.x * 57.295780181884765625f) + -(x_92.x_B612SkyAnti.w));
        u_xlat15.x = (u_xlat15.x / u_xlat5.y);
        u_xlat1.x = (-(u_xlat1.x) + 1.0f);
        u_xlat1.x = log2(u_xlat1.x);
        u_xlat1.x = (u_xlat1.x * u_xlat5.z);
        u_xlat1.x = exp2(u_xlat1.x);
        u_xlat3 = vec4f(((u_xlat1.xxx * x_92.x_B612SkyAnti.xyz)).xyz, u_xlat3.w);
        u_xlat1.x = (u_xlat15.x * -(u_xlat15.x));
        u_xlat1.x = (u_xlat1.x * 1.44269502162933349609f);
        u_xlat1.x = exp2(u_xlat1.x);
        let x_4850 = ((u_xlat3.xyz * u_xlat1.xxx) + u_xlat2.xzw);
        u_xlat1 = vec4f(x_4850.xy, u_xlat1.z, x_4850.z);
        let x_4857 = (u_xlat15.yyy * u_xlat1.xyw);
        u_xlat0 = vec4f(x_4857.x, u_xlat0.y, x_4857.yz);
      }
    }
    let x_4865 = (-(u_xlat4.xyz) + u_xlat0.xzw);
    u_xlat0 = vec4f(x_4865.x, u_xlat0.y, x_4865.yz);
    u_xlat4 = vec4f((((u_xlat0.yyy * u_xlat0.xzw) + u_xlat4.xyz)).xyz, u_xlat4.w);
  }
  SV_Target0 = u_xlat4;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(3) vs_TEXCOORD3_param : vec2f, @location(0) vs_TEXCOORD0_param : vec3f, @location(4) vs_TEXCOORD4_param : vec4f, @location(5) vs_TEXCOORD5_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(1) vs_TEXCOORD1_param : vec3f, @location(2) vs_TEXCOORD2_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

