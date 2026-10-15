//Assets/Levels/Desert/Shaders/Desert_Particle.shader
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(80) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_65 : VGlobals;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD0 : vec4f;

var<private> in_TEXCOORD0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> vs_TEXCOORD2 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat9 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1 = (u_xlat0.yyyy * x_65.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  u_xlat1 = (u_xlat1 + x_65.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat1;
  vs_COLOR0 = in_COLOR0;
  vs_TEXCOORD0 = in_TEXCOORD0;
  u_xlat9 = (u_xlat1.y * x_65.x_ProjectionParams.x);
  u_xlat2.w = (u_xlat9 * 0.5f);
  let x_120 = (u_xlat1.xw * vec2f(0.5f));
  u_xlat2 = vec4f(x_120.x, u_xlat2.y, x_120.y, u_xlat2.w);
  vs_TEXCOORD1 = vec4f(vs_TEXCOORD1.xy, u_xlat1.zw.xy);
  vs_TEXCOORD1 = vec4f(((u_xlat2.zz + u_xlat2.xw)).xy, vs_TEXCOORD1.zw);
  u_xlat3 = (u_xlat0.y * x_65.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat0.x = ((x_65.hlslcc_mtx4x4unity_MatrixV[0i].z * u_xlat0.x) + u_xlat3);
  u_xlat0.x = ((x_65.hlslcc_mtx4x4unity_MatrixV[2i].z * u_xlat0.z) + u_xlat0.x);
  u_xlat0.x = (u_xlat0.x + x_65.hlslcc_mtx4x4unity_MatrixV[3i].z);
  vs_TEXCOORD2 = -(u_xlat0.x);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_COLOR0_1 : vec4f,
  @location(1)
  vs_TEXCOORD0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_COLOR0_param : vec4f, @location(2) in_TEXCOORD0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2);
}

//Assets/Levels/Desert/Shaders/Desert_Particle.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Color : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_NoiseTex_ST : vec4f,
  /* @offset(32) */
  x_Intensity : f32,
  /* @offset(36) */
  x_Softness : f32,
  /* @offset(40) */
  x_Flame : f32,
  /* @offset(44) */
  x_NoiseAmount : f32,
  /* @offset(48) */
  x_NoiseScale : f32,
  /* @offset(52) */
  x_SoftDistance : f32,
  /* @offset(56) */
  x_NearFade : f32,
  /* @offset(60) */
  Xhlslcc_UnusedX_Billboard : f32,
  /* @offset(64) */
  Xhlslcc_UnusedX_SrcBlend : f32,
  /* @offset(68) */
  Xhlslcc_UnusedX_DstBlend : f32,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(16) */
  x_Time : vec4f,
  /* @offset(32) */
  x_ZBufferParams : vec4f,
  /* @offset(48) */
  x_RTHandleScale : vec4f,
  /* @offset(64) */
  x_ScreenSize : vec4f,
  /* @offset(80) */
  x_CameraDepthTexture_TexelSize : vec4f,
}

var<private> vs_TEXCOORD0 : vec4f;

@group(1) @binding(1) var<uniform> x_29 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_151 : PGlobals;

@group(0) @binding(1) var x_NoiseTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_NoiseTex : sampler;

var<private> vs_TEXCOORD1 : vec4f;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

var<private> vs_TEXCOORD2 : f32;

var<private> vs_COLOR0 : vec4f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec2f;
  var u_xlatb4 : vec2<bool>;
  var u_xlat1 : vec4f;
  var x_90 : vec2f;
  var u_xlat2 : vec3f;
  var u_xlatu1 : vec4u;
  var u_xlat4 : vec2f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = ((vs_TEXCOORD0.xy * vec2f(2.0f)) + vec2f(-1.0f));
  u_xlatb4 = ((vec4f() < vec4f(x_29.x_Flame, x_29.x_NoiseAmount, x_29.x_Flame, x_29.x_NoiseAmount))).xy;
  u_xlat1.x = (-(vs_TEXCOORD0.y) + 1.0f);
  u_xlat1.x = max(u_xlat1.x, 0.05000000074505805969f);
  u_xlat1.x = (u_xlat1.x + -1.0f);
  u_xlat1.x = ((x_29.x_Flame * u_xlat1.x) + 1.0f);
  u_xlat1.x = (u_xlat0.x / u_xlat1.x);
  u_xlat1.y = ((vs_TEXCOORD0.y * 2.0f) + -0.69999998807907104492f);
  if (u_xlatb4.x) {
    x_90 = u_xlat1.xy;
  } else {
    x_90 = u_xlat0;
  }
  u_xlat0 = x_90;
  u_xlat0.x = dot(u_xlat0, u_xlat0);
  u_xlat0.x = sqrt(u_xlat0.x);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * x_29.x_Softness);
  u_xlat0.x = exp2(u_xlat0.x);
  if (u_xlatb4.y) {
    u_xlat2 = vec3f((((vs_TEXCOORD0.xy * vec2f(x_29.x_NoiseScale)) + vs_TEXCOORD0.zw)).xy, u_xlat2.z);
    u_xlat2 = vec3f((((x_151.x_Time.yy * vec2f(0.01999999955296516418f, 0.05000000074505805969f)) + u_xlat2.xy)).xy, u_xlat2.z);
    let x_175 = u_xlat2;
    let x_179 = x_151.x_GlobalMipBias.x;
    let x_180 = textureSampleBias(x_NoiseTex, sampler_NoiseTex, x_175.xy, x_179);
    u_xlat2.x = x_180.x;
    u_xlat2.x = ((u_xlat2.x * 2.0f) + -1.0f);
    u_xlat2.x = ((x_29.x_NoiseAmount * u_xlat2.x) + 1.0f);
    u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
    u_xlat0.x = (u_xlat2.x * u_xlat0.x);
  }
  u_xlat2 = vec3f(((vs_TEXCOORD1.xy / vs_TEXCOORD1.ww)).xy, u_xlat2.z);
  u_xlat1 = vec4f((((-(x_151.x_CameraDepthTexture_TexelSize.xy) * vec2f(0.5f)) + vec2f(1.0f))).xy, u_xlat1.zw);
  u_xlat2 = vec3f(min(u_xlat2.xy, u_xlat1.xy).xy, u_xlat2.z);
  u_xlat2 = vec3f(((u_xlat2.xy * x_151.x_RTHandleScale.xy)).xy, u_xlat2.z);
  u_xlat2 = vec3f(((u_xlat2.xy * x_151.x_ScreenSize.xy)).xy, u_xlat2.z);
  u_xlatu1 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu1.zw);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  u_xlat2.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu1.xy), bitcast<i32>(u_xlatu1.w)).x;
  u_xlat2.x = ((x_151.x_ZBufferParams.z * u_xlat2.x) + x_151.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlat2.x = (u_xlat2.x + -(vs_TEXCOORD2));
  u_xlat4 = max(vec2f(x_29.x_SoftDistance, x_29.x_NearFade), vec2f(0.00100000004749745131f));
  u_xlat2.x = (u_xlat2.x / u_xlat4.x);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat2.x * u_xlat0.x);
  u_xlat2.x = ((-(x_29.x_NearFade) * 0.30000001192092895508f) + vs_TEXCOORD2);
  u_xlat2.x = (u_xlat2.x / u_xlat4.y);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat2.x * u_xlat0.x);
  u_xlat1 = (vs_COLOR0 * x_29.x_Color);
  u_xlat0.x = (u_xlat0.x * u_xlat1.w);
  u_xlat2 = (u_xlat1.xyz * vec3f(x_29.x_Intensity));
  SV_Target0 = vec4f(((u_xlat0.xxx * u_xlat2)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat0.x;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec4f, @location(2) vs_TEXCOORD1_param : vec4f, @location(3) vs_TEXCOORD2_param : f32, @location(0) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

