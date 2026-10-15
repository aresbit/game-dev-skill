//Assets/Levels/Geography/Materials/Shaders/GeoFlame.shader
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
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  x_ProjectionParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_CoreColor : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_EdgeColor : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseColor : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_Intensity : f32,
  /* @offset(52) */
  x_Mode : f32,
  /* @offset(56) */
  x_RefHeight : f32,
  /* @offset(60) */
  Xhlslcc_UnusedX_SoftDepth : f32,
  /* @offset(64) */
  Xhlslcc_UnusedX_Sway : f32,
}

@group(1) @binding(3) var<uniform> x_20 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_58 : VGlobals;

@group(1) @binding(1) var<uniform> x_169 : UnityPerMaterial;

var<private> in_POSITION0 : vec4f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> gl_Position : vec4f;

const x_122 = vec3f(1.0f, 0.0f, 0.0f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat19 : f32;
  var u_xlat20 : f32;
  var u_xlatb19 : bool;
  var x_114 : vec3f;
  var u_xlat3 : vec3f;
  var x_176 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec3f;
  var u_xlat6 : vec3f;
  var u_xlat12 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(x_20.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz, x_20.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0.x = sqrt(u_xlat0.x);
  u_xlat1.x = max(u_xlat0.x, 0.00000999999974737875f);
  u_xlat0 = vec4f(u_xlat0.x, ((x_20.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz / u_xlat1.xxx)).xyz);
  u_xlat1 = vec4f(((x_58.x_WorldSpaceCameraPos.yzx + -(x_20.hlslcc_mtx4x4unity_ObjectToWorld[3i].yzx))).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((u_xlat0.wyz * u_xlat1.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat0.zwy * u_xlat1.yzx) + -(u_xlat2.xyz))).xyz, u_xlat2.w);
  u_xlat19 = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat20 = inverseSqrt(u_xlat19);
  u_xlatb19 = (0.00000000999999993923f < u_xlat19);
  u_xlat2 = vec4f(((vec3f(u_xlat20) * u_xlat2.xyz)).xyz, u_xlat2.w);
  if (u_xlatb19) {
    x_114 = u_xlat2.xyz;
  } else {
    x_114 = x_122;
  }
  u_xlat2 = vec4f(x_114.xyz, u_xlat2.w);
  u_xlat19 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat19 = inverseSqrt(u_xlat19);
  u_xlat1 = vec4f(((vec3f(u_xlat19) * u_xlat1.yzx)).xyz, u_xlat1.w);
  u_xlat3 = (u_xlat1.zxy * vec3f(0.0f, 0.0f, 1.0f));
  u_xlat3 = ((u_xlat1.xyz * x_122) + -(u_xlat3));
  u_xlat3 = (u_xlat3 + vec3f(0.00000999999974737875f, 0.0f, 0.0f));
  u_xlat19 = dot(u_xlat3.xz, u_xlat3.xz);
  u_xlat19 = inverseSqrt(u_xlat19);
  u_xlat3 = (vec3f(u_xlat19) * u_xlat3);
  u_xlatb19 = (0.5f < x_169.x_Mode);
  if (u_xlatb19) {
    x_176 = u_xlat3;
  } else {
    x_176 = u_xlat2.xyz;
  }
  u_xlat2 = vec4f(x_176.xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * in_POSITION0.xxx)).xyz, u_xlat2.w);
  u_xlat20 = dot(x_20.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz, x_20.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz);
  u_xlat4.x = sqrt(u_xlat20);
  u_xlat2 = vec4f((((u_xlat2.xyz * u_xlat4.xxx) + x_20.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat2.w);
  u_xlat5 = (u_xlat1.xyz * u_xlat3.yzx);
  u_xlat4 = vec4f(u_xlat4.x, (((u_xlat1.zxy * u_xlat3.zxy) + -(u_xlat5))).xyz);
  u_xlat0 = select(u_xlat0, u_xlat4, vec4<bool>(u_xlatb19));
  u_xlat1.x = select(1.0f, 2.0f, u_xlatb19);
  vs_TEXCOORD0.y = (u_xlat1.x * in_POSITION0.y);
  u_xlat6 = (u_xlat0.yzw * in_POSITION0.yyy);
  u_xlat6 = ((u_xlat6 * u_xlat0.xxx) + u_xlat2.xyz);
  u_xlat1 = (u_xlat6.yyyy * x_58.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_58.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat6.xxxx) + u_xlat1);
  u_xlat1 = ((x_58.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat6.zzzz) + u_xlat1);
  u_xlat1 = (u_xlat1 + x_58.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat1;
  vs_TEXCOORD0.x = (in_POSITION0.x + in_POSITION0.x);
  u_xlat1.y = (u_xlat1.y * x_58.x_ProjectionParams.x);
  let x_313 = (u_xlat1.xwy * vec3f(0.5f));
  u_xlat2 = vec4f(x_313.x, u_xlat2.y, x_313.yz);
  vs_TEXCOORD1 = vec4f(vs_TEXCOORD1.xy, u_xlat1.zw.xy);
  vs_TEXCOORD1 = vec4f(((u_xlat2.zz + u_xlat2.xw)).xy, vs_TEXCOORD1.zw);
  u_xlat12 = (u_xlat6.y * x_58.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat6.x = ((x_58.hlslcc_mtx4x4unity_MatrixV[0i].z * u_xlat6.x) + u_xlat12);
  u_xlat6.x = ((x_58.hlslcc_mtx4x4unity_MatrixV[2i].z * u_xlat6.z) + u_xlat6.x);
  u_xlat6.x = (u_xlat6.x + x_58.hlslcc_mtx4x4unity_MatrixV[3i].z);
  vs_TEXCOORD2.x = -(u_xlat6.x);
  u_xlat6.x = max(x_169.x_RefHeight, 0.00009999999747378752f);
  u_xlat0.x = (u_xlat0.x / u_xlat6.x);
  u_xlat0.x = min(u_xlat0.x, 1.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 1.5f);
  vs_TEXCOORD2.y = exp2(u_xlat0.x);
  u_xlat0.x = dot(x_20.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz, vec3f(12.98980045318603515625f, 78.233001708984375f, 37.71900177001953125f));
  u_xlat0.x = sin(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 43758.546875f);
  u_xlat0.x = fract(u_xlat0.x);
  vs_TEXCOORD2.z = (u_xlat0.x * 6.283100128173828125f);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec4f,
  @location(2)
  vs_TEXCOORD2_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1, vs_TEXCOORD2);
}

//Assets/Levels/Geography/Materials/Shaders/GeoFlame.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_Time : vec4f,
  /* @offset(16) */
  x_ZBufferParams : vec4f,
  /* @offset(32) */
  x_RTHandleScale : vec4f,
  /* @offset(48) */
  x_ScreenSize : vec4f,
  /* @offset(64) */
  x_CameraDepthTexture_TexelSize : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_CoreColor : vec4f,
  /* @offset(16) */
  x_EdgeColor : vec4f,
  /* @offset(32) */
  x_BaseColor : vec4f,
  /* @offset(48) */
  x_Intensity : f32,
  /* @offset(52) */
  x_Mode : f32,
  /* @offset(56) */
  Xhlslcc_UnusedX_RefHeight : f32,
  /* @offset(60) */
  x_SoftDepth : f32,
  /* @offset(64) */
  x_Sway : f32,
}

var<private> vs_TEXCOORD1 : vec4f;

@group(1) @binding(0) var<uniform> x_21 : PGlobals;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec3f;

@group(1) @binding(1) var<uniform> x_110 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec2f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_395 = vec3f(0.34999999403953552246f);

fn main_1() {
  var u_xlat0 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlatu0 : vec4u;
  var u_xlat4 : vec3f;
  var u_xlatb4 : bool;
  var u_xlat1 : vec3f;
  var u_xlat5 : vec2f;
  var u_xlat9 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (vs_TEXCOORD1.xy / vs_TEXCOORD1.ww);
  u_xlat8 = ((-(x_21.x_CameraDepthTexture_TexelSize.xy) * vec2f(0.5f)) + vec2f(1.0f));
  u_xlat0 = min(u_xlat8, u_xlat0);
  u_xlat0 = (u_xlat0 * x_21.x_RTHandleScale.xy);
  u_xlat0 = (u_xlat0 * x_21.x_ScreenSize.xy);
  u_xlatu0 = vec4u(vec2u(u_xlat0).xy, u_xlatu0.zw);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  u_xlat0.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu0.xy), bitcast<i32>(u_xlatu0.w)).x;
  u_xlat0.x = ((x_21.x_ZBufferParams.z * u_xlat0.x) + x_21.x_ZBufferParams.w);
  u_xlat0.x = (1.0f / u_xlat0.x);
  u_xlat0.x = (u_xlat0.x + -(vs_TEXCOORD2.x));
  u_xlat4.x = max(x_110.x_SoftDepth, 0.00009999999747378752f);
  u_xlat0.x = (u_xlat0.x / u_xlat4.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlatb4 = (0.5f < x_110.x_Mode);
  if (u_xlatb4) {
    u_xlat4.x = dot(vs_TEXCOORD0, vs_TEXCOORD0);
    u_xlat4 = (u_xlat4.xxx * vec3f(-7.93482255935668945312f, -31.7392902374267578125f, -20.19773101806640625f));
    u_xlat4 = exp2(u_xlat4);
    u_xlat4.x = (u_xlat4.x + -0.00400000018998980522f);
    u_xlat4.x = max(u_xlat4.x, 0.0f);
    u_xlat4.x = ((u_xlat4.y * 0.34999999403953552246f) + u_xlat4.x);
    u_xlat1 = (x_110.x_CoreColor.xyz + -(x_110.x_EdgeColor.xyz));
    u_xlat1 = ((u_xlat4.zzz * u_xlat1) + x_110.x_EdgeColor.xyz);
    u_xlat4 = (u_xlat4.xxx * u_xlat1);
  } else {
    u_xlat1.x = vs_TEXCOORD0.y;
    u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
    u_xlat5.x = (x_21.x_Time.y * 5.09999990463256835938f);
    u_xlat5.y = ((x_21.x_Time.y * 2.29999995231628417969f) + vs_TEXCOORD2.z);
    u_xlat5.x = ((vs_TEXCOORD2.z * 1.70000004768371582031f) + u_xlat5.x);
    u_xlat5 = sin(u_xlat5);
    u_xlat5.x = (u_xlat5.x * 0.40000000596046447754f);
    u_xlat5.x = ((u_xlat5.y * 0.60000002384185791016f) + u_xlat5.x);
    u_xlat5.x = (u_xlat5.x * x_110.x_Sway);
    u_xlat9 = (u_xlat1.x * u_xlat1.x);
    u_xlat5.x = ((-(u_xlat9) * u_xlat5.x) + vs_TEXCOORD0.x);
    u_xlat9 = log2(u_xlat1.x);
    u_xlat9 = (u_xlat9 * 0.60000002384185791016f);
    u_xlat9 = exp2(u_xlat9);
    u_xlat9 = (u_xlat9 * 3.141590118408203125f);
    u_xlat9 = sin(u_xlat9);
    u_xlat9 = ((u_xlat9 * 0.89999997615814208984f) + 0.00100000004749745131f);
    u_xlat5.x = (abs(u_xlat5.x) / u_xlat9);
    u_xlat5 = (u_xlat5.xx + vec2f(-1.0f, -0.85000002384185791016f));
    u_xlat5 = (u_xlat5 * vec2f(-1.81818175315856933594f, -1.25f));
    u_xlat5 = clamp(u_xlat5, vec2f(0.0f), vec2f(1.0f));
    u_xlat2 = vec4f((((u_xlat5 * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat2.zw);
    u_xlat5 = (u_xlat5 * u_xlat5);
    u_xlat5 = (u_xlat5 * u_xlat2.xy);
    u_xlat2 = vec4f(((u_xlat1.xxx + vec3f(-0.05000000074505805969f, -0.92000001668930053711f, -0.01999999955296516418f))).xyz, u_xlat2.w);
    u_xlat2 = vec4f(((u_xlat2.xyz * vec3f(4.3478260040283203125f, -2.0f, 5.5555553436279296875f))).xyz, u_xlat2.w);
    u_xlat2 = vec4f(clamp(u_xlat2.xyz, vec3f(0.0f), vec3f(1.0f)).xyz, u_xlat2.w);
    u_xlat3 = ((u_xlat2.xyz * vec3f(-2.0f)) + vec3f(3.0f));
    u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat2.xyz)).xyz, u_xlat2.w);
    u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat3)).xyz, u_xlat2.w);
    u_xlat1.x = (u_xlat5.y * u_xlat2.x);
    u_xlat1.x = (u_xlat2.y * u_xlat1.x);
    let x_378 = (x_110.x_CoreColor.xyz + -(x_110.x_EdgeColor.xyz));
    u_xlat2 = vec4f(x_378.xy, u_xlat2.z, x_378.z);
    let x_389 = ((u_xlat1.xxx * u_xlat2.xyw) + x_110.x_EdgeColor.xyz);
    u_xlat2 = vec4f(x_389.xy, u_xlat2.z, x_389.z);
    u_xlat3 = (x_110.x_BaseColor.xyz * x_395);
    let x_404 = ((-(x_110.x_BaseColor.xyz) * x_395) + u_xlat2.xyw);
    u_xlat2 = vec4f(x_404.xy, u_xlat2.z, x_404.z);
    let x_413 = ((u_xlat2.zzz * u_xlat2.xyw) + u_xlat3);
    u_xlat2 = vec4f(x_413.xy, u_xlat2.z, x_413.z);
    u_xlat9 = ((u_xlat2.z * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat5.x = (u_xlat9 * u_xlat5.x);
    u_xlat1.x = ((u_xlat1.x * 1.60000002384185791016f) + 1.0f);
    u_xlat1.x = (u_xlat1.x * u_xlat5.x);
    u_xlat4 = (u_xlat1.xxx * u_xlat2.xyw);
  }
  u_xlat1.x = (vs_TEXCOORD2.y * x_110.x_Intensity);
  u_xlat0.x = (u_xlat0.x * u_xlat1.x);
  SV_Target0 = vec4f(((u_xlat0.xxx * u_xlat4)).xyz, SV_Target0.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4f, @location(2) vs_TEXCOORD2_param : vec3f, @location(0) vs_TEXCOORD0_param : vec2f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

