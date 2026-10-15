//Assets/Shared/Rendering/Shaders/B612_SteamPlume.shader
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

var<private> vs_TEXCOORD0 : vec3f;

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
  vs_TEXCOORD0 = u_xlat0;
  gl_Position = (u_xlat1 + x_64.hlslcc_mtx4x4unity_MatrixVP[3i]);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position);
}

//Assets/Shared/Rendering/Shaders/B612_SteamPlume.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
  /* @offset(16) */
  x_MainLightPosition : vec4f,
  /* @offset(32) */
  x_MainLightColor : vec4f,
  /* @offset(48) */
  x_Time : vec4f,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3f,
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

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 2u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_1,
  /* @offset(64) */
  hlslcc_mtx4x4unity_WorldToObject : Arr_2,
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

struct UnityPerMaterial {
  /* @offset(0) */
  x_PlumeShape : vec4f,
  /* @offset(16) */
  x_PlumeFlow : vec4f,
  /* @offset(32) */
  x_NoiseScale : vec4f,
  /* @offset(48) */
  x_Albedo : vec4f,
  /* @offset(64) */
  x_Lighting : vec4f,
  /* @offset(80) */
  x_ErosionTop : f32,
  /* @offset(84) */
  x_Density : f32,
  /* @offset(88) */
  x_Steps : f32,
  /* @offset(96) */
  x_VentPos : vec4f,
  /* @offset(112) */
  x_PlumeWind : vec4f,
  /* @offset(128) */
  x_PlumeGlow : vec4f,
  /* @offset(144) */
  x_PlumeBreak : vec4f,
}

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

@group(1) @binding(1) var<uniform> x_66 : UnityPerDraw;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(1) @binding(2) var<uniform> x_356 : UnityPerMaterial;

@group(0) @binding(1) var x_Noise3D : texture_3d<f32>;

@group(0) @binding(2) var sampler_Noise3D : sampler;

var<private> SV_Target0 : vec4f;

const x_206 = vec2f(1.0f);

const x_724 = vec2f(-1.0f, 1.0f);

const x_975 = vec3f(0.76999998092651367188f, 0.52999997138977050781f, 0.28999999165534973145f);

const x_978 = vec3f(1.29999995231628417969f, 2.0f, 0.40000000596046447754f);

const x_989 = vec2f(0.40000000596046447754f, 0.5f);

const x_1068 = vec2f(0.93000000715255737305f, 0.70999997854232788086f);

const x_1072 = vec2f(1.10000002384185791016f, 4.0f);

const x_1308 = vec3f(13.1000003814697265625f, 7.30000019073486328125f, 5.90000009536743164062f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat48 : f32;
  var u_xlat1 : vec3f;
  var u_xlat2 : vec3f;
  var u_xlatb3 : vec3<bool>;
  var u_xlat3 : vec3f;
  var u_xlat17 : vec2f;
  var u_xlatu2 : vec4u;
  var u_xlat33 : f32;
  var u_xlatb17 : bool;
  var u_xlat49 : f32;
  var u_xlat18 : f32;
  var u_xlat34 : f32;
  var u_xlati_loop_1 : i32;
  var u_xlat35 : f32;
  var u_xlat4 : vec3f;
  var u_xlatb51 : bool;
  var u_xlatb52 : bool;
  var u_xlat20 : f32;
  var u_xlat52 : f32;
  var u_xlat5 : vec3f;
  var u_xlati4 : i32;
  var u_xlati51 : i32;
  var x_550 : vec2f;
  var u_xlatb33 : bool;
  var u_xlat50 : f32;
  var u_xlati50 : i32;
  var u_xlat6 : vec3f;
  var u_xlat51 : f32;
  var u_xlat53 : f32;
  var u_xlat54 : f32;
  var u_xlat7 : f32;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlati_loop_2 : i32;
  var u_xlat39 : f32;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec3f;
  var u_xlatb39 : bool;
  var u_xlatb55 : bool;
  var u_xlat55 : f32;
  var u_xlat59 : f32;
  var u_xlat13 : vec4f;
  var u_xlat60 : f32;
  var u_xlat29 : vec2f;
  var u_xlat45 : f32;
  var u_xlat61 : f32;
  var u_xlat14 : vec4f;
  var u_xlat46 : f32;
  var u_xlat44 : f32;
  var u_xlatb44 : bool;
  var u_xlat15 : vec4f;
  var u_xlat28 : f32;
  var u_xlatb12 : bool;
  var u_xlatb59 : bool;
  var u_xlat62 : f32;
  var u_xlatb14 : bool;
  var u_xlat30 : vec3f;
  var u_xlatb60 : bool;
  var u_xlatb30 : bool;
  var u_xlatb28 : bool;
  var u_xlat43 : f32;
  var u_xlat27 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = (vs_TEXCOORD0 + -(x_35.x_WorldSpaceCameraPos));
  u_xlat48 = dot(u_xlat0, u_xlat0);
  u_xlat48 = inverseSqrt(u_xlat48);
  u_xlat0 = (vec3f(u_xlat48) * u_xlat0);
  u_xlat1 = (x_35.x_WorldSpaceCameraPos.yyy * x_66.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1 = ((x_66.hlslcc_mtx4x4unity_WorldToObject[0i].xyz * x_35.x_WorldSpaceCameraPos.xxx) + u_xlat1);
  u_xlat1 = ((x_66.hlslcc_mtx4x4unity_WorldToObject[2i].xyz * x_35.x_WorldSpaceCameraPos.zzz) + u_xlat1);
  u_xlat1 = (u_xlat1 + x_66.hlslcc_mtx4x4unity_WorldToObject[3i].xyz);
  u_xlat2 = (u_xlat0.yyy * x_66.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat2 = ((x_66.hlslcc_mtx4x4unity_WorldToObject[0i].xyz * u_xlat0.xxx) + u_xlat2);
  u_xlat2 = ((x_66.hlslcc_mtx4x4unity_WorldToObject[2i].xyz * u_xlat0.zzz) + u_xlat2);
  u_xlatb3 = ((u_xlat2.xyzx >= vec4f())).xyz;
  u_xlat3.x = select(-1.0f, 1.0f, u_xlatb3.x);
  u_xlat3.y = select(-1.0f, 1.0f, u_xlatb3.y);
  u_xlat3.z = select(-1.0f, 1.0f, u_xlatb3.z);
  u_xlat2 = max(abs(u_xlat2), vec3f(0.00000099999999747524f));
  u_xlat2 = (u_xlat3 / u_xlat2);
  u_xlat3 = (-(u_xlat1) + vec3f(-0.5f));
  u_xlat3 = (u_xlat2 * u_xlat3);
  u_xlat1 = (-(u_xlat1) + vec3f(0.5f));
  u_xlat1 = (u_xlat2 * u_xlat1);
  u_xlat2 = min(u_xlat1, u_xlat3);
  u_xlat1 = max(u_xlat1, u_xlat3);
  u_xlat48 = max(u_xlat2.y, u_xlat2.x);
  u_xlat48 = max(u_xlat2.z, u_xlat48);
  u_xlat48 = max(u_xlat48, 0.0f);
  u_xlat1.x = min(u_xlat1.y, u_xlat1.x);
  u_xlat1.x = min(u_xlat1.z, u_xlat1.x);
  let x_209 = x_35.x_ScaledScreenParams.xy;
  u_xlat17 = (x_206 / vec2f(x_209.x, x_209.y));
  u_xlat2 = vec3f(((u_xlat17 * hlslcc_FragCoord.xy)).xy, u_xlat2.z);
  u_xlat17.x = ((u_xlat2.y * x_35.x_ScaleBiasRt.x) + x_35.x_ScaleBiasRt.y);
  u_xlat2.z = (-(u_xlat17.x) + 1.0f);
  u_xlat17 = ((-(x_35.x_CameraDepthTexture_TexelSize.xy) * vec2f(0.5f)) + x_206);
  u_xlat17 = min(u_xlat17, u_xlat2.xz);
  u_xlat17 = (u_xlat17 * x_35.x_RTHandleScale.xy);
  u_xlat17 = (u_xlat17 * x_35.x_ScreenSize.xy);
  u_xlatu2 = vec4u(vec2u(u_xlat17).xy, u_xlatu2.zw);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  u_xlat17.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu2.xy), bitcast<i32>(u_xlatu2.w)).x;
  u_xlat17.x = ((x_35.x_ZBufferParams.z * u_xlat17.x) + x_35.x_ZBufferParams.w);
  u_xlat17.x = (1.0f / u_xlat17.x);
  u_xlat2.x = -(x_35.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat2.y = -(x_35.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat2.z = -(x_35.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat33 = dot(u_xlat0, u_xlat2);
  u_xlat33 = max(u_xlat33, 0.00009999999747378752f);
  u_xlat17.x = (u_xlat17.x / u_xlat33);
  u_xlat1.x = min(u_xlat17.x, u_xlat1.x);
  u_xlatb17 = (u_xlat48 >= u_xlat1.x);
  if (((select(0i, 1i, u_xlatb17) * -1i) != 0i)) {
    discard;
  }
  u_xlat17.x = (-(u_xlat48) + u_xlat1.x);
  u_xlat33 = (u_xlat17.x * 0.04166666790843009949f);
  u_xlat49 = max(x_356.x_PlumeFlow.x, 0.10000000149011611938f);
  u_xlat2.x = (x_356.x_PlumeFlow.y * x_356.x_PlumeWind.z);
  u_xlat18 = x_356.x_PlumeBreak.w;
  u_xlat18 = clamp(u_xlat18, 0.0f, 1.0f);
  u_xlat34 = ((u_xlat18 * 0.40000000596046447754f) + 1.0f);
  u_xlat3.x = 1000000000.0f;
  u_xlat3.y = -1000000000.0f;
  u_xlati_loop_1 = 0i;
  loop {
    if ((u_xlati_loop_1 < 24i)) {
    } else {
      break;
    }
    u_xlat35 = f32(u_xlati_loop_1);
    u_xlat35 = (u_xlat35 + 0.5f);
    u_xlat35 = ((u_xlat35 * u_xlat33) + u_xlat48);
    u_xlat4 = ((u_xlat0 * vec3f(u_xlat35)) + x_35.x_WorldSpaceCameraPos);
    u_xlat4 = (u_xlat4 + -(x_356.x_VentPos.xyz));
    u_xlatb51 = (u_xlat4.y < -0.60000002384185791016f);
    u_xlatb52 = (x_356.x_PlumeShape.z < u_xlat4.y);
    u_xlatb51 = (u_xlatb51 | u_xlatb52);
    u_xlat20 = max(u_xlat4.y, 0.0f);
    u_xlat52 = (u_xlat20 / u_xlat49);
    u_xlat52 = (-(u_xlat52) + x_35.x_Time.y);
    u_xlat52 = ((x_356.x_VentPos.w * 37.0f) + u_xlat52);
    u_xlat5.x = (u_xlat52 * 0.31000000238418579102f);
    u_xlat5.x = sin(u_xlat5.x);
    u_xlat52 = ((u_xlat52 * 0.76999998092651367188f) + 1.29999995231628417969f);
    u_xlat52 = sin(u_xlat52);
    u_xlat52 = (u_xlat52 * 0.40000000596046447754f);
    u_xlat52 = ((u_xlat5.x * 0.60000002384185791016f) + u_xlat52);
    u_xlat52 = ((x_356.x_PlumeFlow.w * u_xlat52) + 1.0f);
    u_xlat52 = (u_xlat2.x * u_xlat52);
    u_xlat52 = (u_xlat20 * u_xlat52);
    u_xlat5.x = sqrt(u_xlat20);
    u_xlat52 = (u_xlat52 * u_xlat5.x);
    let x_501 = ((-(x_356.x_PlumeWind.xy) * vec2f(u_xlat52)) + u_xlat4.xz);
    u_xlat4 = vec3f(x_501.x, u_xlat4.y, x_501.y);
    u_xlat20 = ((x_356.x_PlumeShape.y * u_xlat20) + x_356.x_PlumeShape.x);
    u_xlat20 = (u_xlat34 * u_xlat20);
    u_xlat20 = (u_xlat20 * u_xlat20);
    u_xlat4.x = dot(u_xlat4.xz, u_xlat4.xz);
    u_xlat20 = (u_xlat20 * 7.1875f);
    u_xlati4 = bitcast<i32>(select(0u, 4294967295u, (u_xlat4.x < u_xlat20)));
    u_xlati51 = select(u_xlati4, 0i, u_xlatb51);
    u_xlat4.x = min(u_xlat35, u_xlat3.x);
    u_xlat4.y = max(u_xlat35, u_xlat3.y);
    if ((u_xlati51 != 0i)) {
      x_550 = u_xlat4.xy;
    } else {
      x_550 = u_xlat3.xy;
    }
    u_xlat3 = vec3f(x_550.xy, u_xlat3.z);

    continuing {
      u_xlati_loop_1 = (u_xlati_loop_1 + 1i);
    }
  }
  u_xlatb33 = (u_xlat3.y < u_xlat3.x);
  if (((select(0i, 1i, u_xlatb33) * -1i) != 0i)) {
    discard;
  }
  u_xlat33 = ((-(u_xlat17.x) * 0.04166666790843009949f) + u_xlat3.x);
  u_xlat48 = max(u_xlat48, u_xlat33);
  u_xlat17.x = ((u_xlat17.x * 0.04166666790843009949f) + u_xlat3.y);
  u_xlat1.x = min(u_xlat17.x, u_xlat1.x);
  u_xlat3 = (x_35.x_MainLightColor.xyz * x_356.x_Lighting.xxx);
  u_xlat17.x = dot(u_xlat0, x_35.x_MainLightPosition.xyz);
  u_xlat33 = ((-(u_xlat17.x) * -0.40000000596046447754f) + 1.03999996185302734375f);
  u_xlat33 = max(u_xlat33, 0.00100000004749745131f);
  u_xlat33 = log2(u_xlat33);
  u_xlat33 = (u_xlat33 * 1.5f);
  u_xlat33 = exp2(u_xlat33);
  u_xlat33 = (0.95999997854232788086f / u_xlat33);
  u_xlat34 = ((-(x_356.x_Lighting.z) * x_356.x_Lighting.z) + 1.0f);
  u_xlat50 = ((x_356.x_Lighting.z * x_356.x_Lighting.z) + 1.0f);
  u_xlat17.x = dot(u_xlat17.xx, x_356.x_Lighting.zz);
  u_xlat17.x = (-(u_xlat17.x) + u_xlat50);
  u_xlat17.x = max(u_xlat17.x, 0.00100000004749745131f);
  u_xlat17.x = log2(u_xlat17.x);
  u_xlat17.x = (u_xlat17.x * 1.5f);
  u_xlat17.x = exp2(u_xlat17.x);
  u_xlat17.x = (u_xlat34 / u_xlat17.x);
  u_xlat17.x = (-(u_xlat33) + u_xlat17.x);
  u_xlat17.x = ((u_xlat17.x * 0.69999998807907104492f) + u_xlat33);
  u_xlat4.x = dot(x_66.unity_SHAr.yw, x_206);
  u_xlat4.y = dot(x_66.unity_SHAg.yw, x_206);
  u_xlat4.z = dot(x_66.unity_SHAb.yw, x_206);
  u_xlat4 = (u_xlat4 + -(x_66.unity_SHC.xyz));
  u_xlat4 = max(u_xlat4, vec3f());
  u_xlat5.x = dot(x_66.unity_SHAr.yw, x_724);
  u_xlat5.y = dot(x_66.unity_SHAg.yw, x_724);
  u_xlat5.z = dot(x_66.unity_SHAb.yw, x_724);
  u_xlat5 = (u_xlat5 + -(x_66.unity_SHC.xyz));
  u_xlat5 = max(u_xlat5, vec3f());
  u_xlat5 = (u_xlat5 * x_356.x_Lighting.yyy);
  u_xlat33 = dot(hlslcc_FragCoord.xy, vec2f(0.0671105608344078064f, 0.00583714991807937622f));
  u_xlat33 = fract(u_xlat33);
  u_xlat33 = (u_xlat33 * 52.98291778564453125f);
  u_xlat33 = fract(u_xlat33);
  u_xlat34 = max(x_356.x_Steps, 8.0f);
  u_xlat34 = min(u_xlat34, 64.0f);
  u_xlati50 = i32(u_xlat34);
  u_xlat1.x = (-(u_xlat48) + u_xlat1.x);
  u_xlat34 = trunc(u_xlat34);
  u_xlat1.x = (u_xlat1.x / u_xlat34);
  u_xlat34 = (u_xlat18 * 0.30000001192092895508f);
  u_xlat6 = ((-(vec3f(u_xlat18)) * vec3f(0.44999998807907104492f, 0.55000001192092895508f, 0.25f)) + vec3f(1.0f, 1.25f, 1.0f));
  u_xlat18 = (3.20000004768371582031f / u_xlat6.x);
  u_xlat51 = (x_356.x_PlumeShape.z * 0.64999997615814208984f);
  u_xlat51 = (1.0f / u_xlat51);
  u_xlat52 = (x_35.x_Time.y * x_356.x_PlumeFlow.z);
  u_xlat53 = (-(x_356.x_NoiseScale.z) + x_356.x_ErosionTop);
  u_xlat6.x = (x_356.x_PlumeShape.z * x_356.x_PlumeBreak.x);
  u_xlat54 = (-(x_356.x_PlumeBreak.x) + 1.0f);
  u_xlat54 = ((u_xlat54 * 0.55000001192092895508f) + x_356.x_PlumeBreak.x);
  u_xlat6.x = ((u_xlat54 * x_356.x_PlumeShape.z) + -(u_xlat6.x));
  u_xlat6.x = (1.0f / u_xlat6.x);
  u_xlat54 = max(x_356.x_PlumeBreak.y, 0.10000000149011611938f);
  u_xlat4 = ((u_xlat4 * x_356.x_Lighting.yyy) + -(u_xlat5));
  u_xlat7 = max(x_356.x_PlumeGlow.w, 0.10000000149011611938f);
  u_xlat3 = (u_xlat17.xxx * u_xlat3);
  u_xlat8 = (x_356.x_PlumeWind.xyyx * vec4f(0.60000002384185791016f, 0.60000002384185791016f, -1.0f, 1.0f));
  u_xlat9.y = 0.0f;
  u_xlat9.w = 0.0f;
  let x_884 = -(x_356.x_VentPos.yy);
  u_xlat9 = vec4f(x_884.x, u_xlat9.y, x_884.y, u_xlat9.w);
  u_xlat10.x = 0.0f;
  u_xlat10.y = 0.0f;
  u_xlat10.z = 0.0f;
  u_xlat17.x = 1.0f;
  u_xlati_loop_2 = 0i;
  loop {
    if ((u_xlati_loop_2 < u_xlati50)) {
    } else {
      break;
    }
    u_xlat39 = f32(u_xlati_loop_2);
    u_xlat39 = (u_xlat33 + u_xlat39);
    u_xlat39 = ((u_xlat39 * u_xlat1.x) + u_xlat48);
    u_xlat11 = vec4f((((u_xlat0 * vec3f(u_xlat39)) + x_35.x_WorldSpaceCameraPos)).xyz, u_xlat11.w);
    u_xlat12 = (u_xlat11.xyz + -(x_356.x_VentPos.xyz));
    u_xlatb39 = (u_xlat12.y < -0.60000002384185791016f);
    u_xlatb55 = (x_356.x_PlumeShape.z < u_xlat12.y);
    u_xlatb39 = (u_xlatb55 | u_xlatb39);
    if (!(u_xlatb39)) {
      u_xlat39 = max(u_xlat12.y, 0.0f);
      u_xlat55 = (u_xlat39 / u_xlat49);
      u_xlat55 = (-(u_xlat55) + x_35.x_Time.y);
      u_xlat55 = ((x_356.x_VentPos.w * 37.0f) + u_xlat55);
      u_xlat59 = (u_xlat55 * 0.31000000238418579102f);
      u_xlat59 = sin(u_xlat59);
      u_xlat13 = vec4f((((vec3f(u_xlat55) * x_975) + x_978)).xyz, u_xlat13.w);
      u_xlat13 = vec4f(sin(u_xlat13.xyz).xyz, u_xlat13.w);
      u_xlat13 = vec4f(((u_xlat13.xy * x_989)).xy, u_xlat13.zw);
      u_xlat59 = ((u_xlat59 * 0.60000002384185791016f) + u_xlat13.x);
      u_xlat59 = ((x_356.x_PlumeFlow.w * u_xlat59) + 1.0f);
      u_xlat59 = (u_xlat2.x * u_xlat59);
      u_xlat60 = (u_xlat39 * u_xlat59);
      u_xlat13.x = sqrt(u_xlat39);
      u_xlat60 = (u_xlat60 * u_xlat13.x);
      u_xlat13.x = (u_xlat59 * u_xlat13.x);
      u_xlat13.x = (u_xlat13.x * 1.5f);
      u_xlat13.x = ((u_xlat13.x * u_xlat13.x) + 1.0f);
      u_xlat13.x = inverseSqrt(u_xlat13.x);
      u_xlat29.x = ((u_xlat13.y * u_xlat13.z) + 0.5f);
      u_xlat45 = ((x_356.x_PlumeShape.y * u_xlat39) + x_356.x_PlumeShape.x);
      u_xlat61 = ((u_xlat29.x * 0.40000000596046447754f) + 0.80000001192092895508f);
      u_xlat45 = (u_xlat61 * u_xlat45);
      u_xlat14 = vec4f((((vec2f(u_xlat55) * x_1068) + x_1072)).xy, u_xlat14.zw);
      u_xlat14 = vec4f(sin(u_xlat14.xy).xy, u_xlat14.zw);
      u_xlat14 = (u_xlat8.zwxy * u_xlat14.xxyy);
      u_xlat14 = vec4f(((u_xlat14.zw + u_xlat14.xy)).xy, u_xlat14.zw);
      u_xlat61 = (u_xlat45 * 0.34999999403953552246f);
      u_xlat46 = (u_xlat39 * 0.40000000596046447754f);
      u_xlat46 = min(u_xlat46, 1.0f);
      u_xlat61 = (u_xlat61 * u_xlat46);
      let x_1113 = ((-(x_356.x_PlumeWind.xy) * vec2f(u_xlat60)) + u_xlat12.xz);
      u_xlat12 = vec3f(x_1113.x, u_xlat12.y, x_1113.y);
      let x_1124 = ((-(u_xlat14.xy) * vec2f(u_xlat61)) + u_xlat12.xz);
      u_xlat12 = vec3f(x_1124.x, u_xlat12.y, x_1124.y);
      u_xlat60 = dot(u_xlat12.xz, x_356.x_PlumeWind.xy);
      u_xlat14.y = (u_xlat13.x * u_xlat60);
      u_xlat14.x = dot(u_xlat12.xz, u_xlat8.zw);
      u_xlat12.x = dot(u_xlat14.xy, u_xlat14.xy);
      u_xlat44 = (u_xlat45 * u_xlat45);
      u_xlat12.x = (u_xlat12.x / u_xlat44);
      u_xlatb44 = (u_xlat18 >= u_xlat12.x);
      if (u_xlatb44) {
        u_xlat12.x = (-(u_xlat6.y) * u_xlat12.x);
        u_xlat12.x = (u_xlat12.x * 1.44269502162933349609f);
        u_xlat12.x = exp2(u_xlat12.x);
        u_xlat44 = (u_xlat12.y / x_356.x_PlumeShape.z);
        u_xlat44 = clamp(u_xlat44, 0.0f, 1.0f);
        u_xlat61 = (u_xlat12.y + 0.5f);
        u_xlat61 = (u_xlat61 * 1.11111116409301757812f);
        u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
        u_xlat15.x = ((u_xlat61 * -2.0f) + 3.0f);
        u_xlat61 = (u_xlat61 * u_xlat61);
        u_xlat61 = (u_xlat61 * u_xlat15.x);
        u_xlat28 = ((-(x_356.x_PlumeShape.z) * 0.34999999403953552246f) + u_xlat12.y);
        u_xlat28 = (u_xlat51 * u_xlat28);
        u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
        u_xlat15.x = ((u_xlat28 * -2.0f) + 3.0f);
        u_xlat28 = (u_xlat28 * u_xlat28);
        u_xlat28 = ((-(u_xlat15.x) * u_xlat28) + 1.0f);
        u_xlat28 = (u_xlat28 * u_xlat61);
        u_xlat45 = (x_356.x_PlumeShape.x / u_xlat45);
        u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
        u_xlat45 = log2(u_xlat45);
        u_xlat45 = (u_xlat45 * x_356.x_PlumeShape.w);
        u_xlat45 = exp2(u_xlat45);
        u_xlat59 = (u_xlat59 * u_xlat59);
        u_xlat61 = (u_xlat39 * u_xlat39);
        u_xlat59 = (u_xlat59 * u_xlat61);
        u_xlat59 = ((u_xlat59 * 0.5625f) + u_xlat39);
        u_xlat15.x = ((x_35.x_Time.y * x_356.x_PlumeFlow.z) + u_xlat14.x);
        u_xlat15.y = ((-(u_xlat49) * x_35.x_Time.y) + u_xlat59);
        u_xlat15.z = ((u_xlat60 * u_xlat13.x) + -(u_xlat52));
        let x_1299 = (u_xlat15.xyz / x_356.x_NoiseScale.xxx);
        u_xlat15 = vec4f(x_1299.x, u_xlat15.y, x_1299.yz);
        let x_1312 = ((x_356.x_VentPos.www * x_1308) + u_xlat15.xzw);
        u_xlat15 = vec4f(x_1312.x, u_xlat15.y, x_1312.yz);
        u_xlat59 = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat15.xzw, 0.0f).x;
        u_xlat59 = (-(u_xlat59) + 1.0f);
        u_xlat60 = ((u_xlat44 * u_xlat53) + x_356.x_NoiseScale.z);
        u_xlat59 = (u_xlat59 * u_xlat60);
        u_xlat59 = ((u_xlat12.x * u_xlat6.z) + -(u_xlat59));
        u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
        u_xlat12.x = ((u_xlat44 * 0.39999997615814208984f) + u_xlat34);
        u_xlat12.x = (u_xlat12.x + 0.5f);
        u_xlat12.x = (1.0f / u_xlat12.x);
        u_xlat59 = (u_xlat59 * u_xlat12.x);
        u_xlat59 = min(u_xlat59, 1.0f);
        u_xlat12.x = ((u_xlat59 * -2.0f) + 3.0f);
        u_xlat59 = (u_xlat59 * u_xlat59);
        u_xlat59 = (u_xlat59 * u_xlat12.x);
        u_xlat39 = ((-(x_356.x_PlumeBreak.x) * x_356.x_PlumeShape.z) + u_xlat39);
        u_xlat39 = (u_xlat6.x * u_xlat39);
        u_xlat39 = clamp(u_xlat39, 0.0f, 1.0f);
        u_xlat12.x = ((u_xlat39 * -2.0f) + 3.0f);
        u_xlat39 = (u_xlat39 * u_xlat39);
        u_xlat39 = (u_xlat39 * u_xlat12.x);
        u_xlat39 = (u_xlat39 * x_356.x_PlumeBreak.z);
        u_xlatb12 = (0.0f < u_xlat39);
        if (u_xlatb12) {
          u_xlat12.x = ((u_xlat55 * 1.89999997615814208984f) + 0.80000001192092895508f);
          u_xlat12.x = sin(u_xlat12.x);
          u_xlat12.x = (u_xlat12.x * 0.5f);
          u_xlat55 = ((u_xlat55 * 0.67000001668930053711f) + x_356.x_VentPos.w);
          u_xlat55 = (u_xlat55 + 2.09999990463256835938f);
          u_xlat55 = sin(u_xlat55);
          u_xlat55 = ((u_xlat12.x * u_xlat55) + 0.5f);
          u_xlat14.z = u_xlat15.y;
          let x_1453 = (u_xlat14.xzy / vec3f(u_xlat54));
          u_xlat15 = vec4f(x_1453.x, u_xlat15.y, x_1453.yz);
          let x_1466 = ((x_356.x_VentPos.www * vec3f(4.8470001220703125f, 2.701000213623046875f, 2.18300008773803710938f)) + u_xlat15.xzw);
          u_xlat15 = vec4f(x_1466.x, u_xlat15.y, x_1466.yz);
          let x_1473 = (u_xlat15.xzw + vec3f(5.30000019073486328125f));
          u_xlat15 = vec4f(x_1473.x, u_xlat15.y, x_1473.yz);
          u_xlat12.x = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat15.xzw, 0.0f).x;
          u_xlat55 = (u_xlat55 * 0.55000001192092895508f);
          u_xlat55 = ((u_xlat12.x * 0.75f) + u_xlat55);
          u_xlat12.x = ((u_xlat39 * 0.40000003576278686523f) + 0.44999998807907104492f);
          u_xlat55 = (u_xlat55 + -(u_xlat12.x));
          u_xlat55 = (u_xlat55 * 4.54545450210571289062f);
          u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
          u_xlat55 = (u_xlat55 + -1.0f);
          u_xlat39 = ((u_xlat39 * u_xlat55) + 1.0f);
          u_xlat59 = (u_xlat39 * u_xlat59);
        }
        u_xlatb39 = (0.0f < u_xlat59);
        if (u_xlatb39) {
          u_xlat14.w = ((-(u_xlat52) * 3.0f) + u_xlat15.y);
          u_xlat14 = vec4f(((u_xlat14.xwy / x_356.x_NoiseScale.yyy)).xyz, u_xlat14.w);
          u_xlat14 = vec4f((((x_356.x_VentPos.www * vec3f(22.270000457763671875f, 12.41000080108642578125f, 10.0300006866455078125f)) + u_xlat14.xyz)).xyz, u_xlat14.w);
          u_xlat39 = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat14.xyz, 0.0f).y;
          u_xlat39 = (-(u_xlat39) + 1.0f);
          u_xlat39 = (u_xlat39 * x_356.x_NoiseScale.w);
          u_xlat55 = (-(u_xlat59) + 1.0f);
          u_xlat39 = (u_xlat55 * u_xlat39);
          u_xlat55 = (u_xlat44 + 0.5f);
          u_xlat59 = ((-(u_xlat39) * u_xlat55) + u_xlat59);
          u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
        }
        u_xlat39 = (u_xlat45 * u_xlat59);
        u_xlat39 = (u_xlat28 * u_xlat39);
        u_xlat55 = ((u_xlat29.x * 0.30000001192092895508f) + 0.80000001192092895508f);
        u_xlat39 = (u_xlat55 * u_xlat39);
      } else {
        u_xlat39 = 0.0f;
      }
    } else {
      u_xlat39 = 0.0f;
    }
    u_xlatb55 = (0.00200000009499490261f < u_xlat39);
    if (u_xlatb55) {
      u_xlat12 = ((x_35.x_MainLightPosition.xyz * vec3f(0.34999999403953552246f)) + u_xlat11.xyz);
      u_xlat12 = (u_xlat12 + -(x_356.x_VentPos.xyz));
      u_xlatb55 = (u_xlat12.y < -0.60000002384185791016f);
      u_xlatb59 = (x_356.x_PlumeShape.z < u_xlat12.y);
      u_xlatb55 = (u_xlatb55 | u_xlatb59);
      if (!(u_xlatb55)) {
        u_xlat55 = max(u_xlat12.y, 0.0f);
        u_xlat59 = (u_xlat55 / u_xlat49);
        u_xlat59 = (-(u_xlat59) + x_35.x_Time.y);
        u_xlat59 = ((x_356.x_VentPos.w * 37.0f) + u_xlat59);
        u_xlat60 = (u_xlat59 * 0.31000000238418579102f);
        u_xlat60 = sin(u_xlat60);
        u_xlat13 = vec4f((((vec3f(u_xlat59) * x_975) + x_978)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(sin(u_xlat13.xyz).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xy * x_989)).xy, u_xlat13.zw);
        u_xlat60 = ((u_xlat60 * 0.60000002384185791016f) + u_xlat13.x);
        u_xlat60 = ((x_356.x_PlumeFlow.w * u_xlat60) + 1.0f);
        u_xlat60 = (u_xlat2.x * u_xlat60);
        u_xlat13.x = (u_xlat55 * u_xlat60);
        u_xlat61 = sqrt(u_xlat55);
        u_xlat13.x = (u_xlat61 * u_xlat13.x);
        u_xlat61 = (u_xlat60 * u_xlat61);
        u_xlat61 = (u_xlat61 * 1.5f);
        u_xlat61 = ((u_xlat61 * u_xlat61) + 1.0f);
        u_xlat61 = inverseSqrt(u_xlat61);
        u_xlat29.x = ((u_xlat13.y * u_xlat13.z) + 0.5f);
        u_xlat45 = ((x_356.x_PlumeShape.y * u_xlat55) + x_356.x_PlumeShape.x);
        u_xlat14.x = ((u_xlat29.x * 0.40000000596046447754f) + 0.80000001192092895508f);
        u_xlat45 = (u_xlat45 * u_xlat14.x);
        u_xlat14 = vec4f((((vec2f(u_xlat59) * x_1068) + x_1072)).xy, u_xlat14.zw);
        u_xlat14 = vec4f(sin(u_xlat14.xy).xy, u_xlat14.zw);
        u_xlat14 = (u_xlat8.zwxy * u_xlat14.xxyy);
        u_xlat14 = vec4f(((u_xlat14.zw + u_xlat14.xy)).xy, u_xlat14.zw);
        u_xlat46 = (u_xlat45 * 0.34999999403953552246f);
        u_xlat62 = (u_xlat55 * 0.40000000596046447754f);
        u_xlat62 = min(u_xlat62, 1.0f);
        u_xlat46 = (u_xlat62 * u_xlat46);
        let x_1767 = ((-(x_356.x_PlumeWind.xy) * u_xlat13.xx) + u_xlat12.xz);
        u_xlat12 = vec3f(x_1767.x, u_xlat12.y, x_1767.y);
        let x_1778 = ((-(u_xlat14.xy) * vec2f(u_xlat46)) + u_xlat12.xz);
        u_xlat12 = vec3f(x_1778.x, u_xlat12.y, x_1778.y);
        u_xlat13.x = dot(u_xlat12.xz, x_356.x_PlumeWind.xy);
        u_xlat14.x = (u_xlat61 * u_xlat13.x);
        u_xlat12.x = dot(u_xlat12.xz, u_xlat8.zw);
        u_xlat44 = (u_xlat12.x * u_xlat12.x);
        u_xlat44 = ((u_xlat14.x * u_xlat14.x) + u_xlat44);
        u_xlat14.x = (u_xlat45 * u_xlat45);
        u_xlat44 = (u_xlat44 / u_xlat14.x);
        u_xlatb14 = (u_xlat18 >= u_xlat44);
        if (u_xlatb14) {
          u_xlat44 = (-(u_xlat6.y) * u_xlat44);
          u_xlat44 = (u_xlat44 * 1.44269502162933349609f);
          u_xlat44 = exp2(u_xlat44);
          u_xlat14.x = (u_xlat12.y / x_356.x_PlumeShape.z);
          u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
          u_xlat30.x = (u_xlat12.y + 0.5f);
          u_xlat30.x = (u_xlat30.x * 1.11111116409301757812f);
          u_xlat30.x = clamp(u_xlat30.x, 0.0f, 1.0f);
          u_xlat46 = ((u_xlat30.x * -2.0f) + 3.0f);
          u_xlat30.x = (u_xlat30.x * u_xlat30.x);
          u_xlat30.x = (u_xlat30.x * u_xlat46);
          u_xlat28 = ((-(x_356.x_PlumeShape.z) * 0.34999999403953552246f) + u_xlat12.y);
          u_xlat28 = (u_xlat51 * u_xlat28);
          u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
          u_xlat46 = ((u_xlat28 * -2.0f) + 3.0f);
          u_xlat28 = (u_xlat28 * u_xlat28);
          u_xlat28 = ((-(u_xlat46) * u_xlat28) + 1.0f);
          u_xlat28 = (u_xlat28 * u_xlat30.x);
          u_xlat45 = (x_356.x_PlumeShape.x / u_xlat45);
          u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
          u_xlat45 = log2(u_xlat45);
          u_xlat45 = (u_xlat45 * x_356.x_PlumeShape.w);
          u_xlat45 = exp2(u_xlat45);
          u_xlat60 = (u_xlat60 * u_xlat60);
          u_xlat30.x = (u_xlat55 * u_xlat55);
          u_xlat60 = (u_xlat60 * u_xlat30.x);
          u_xlat60 = ((u_xlat60 * 0.5625f) + u_xlat55);
          u_xlat15.x = ((x_35.x_Time.y * x_356.x_PlumeFlow.z) + u_xlat12.x);
          u_xlat15.y = ((-(u_xlat49) * x_35.x_Time.y) + u_xlat60);
          u_xlat15.z = ((u_xlat13.x * u_xlat61) + -(u_xlat52));
          u_xlat30 = (u_xlat15.xyz / x_356.x_NoiseScale.xxx);
          u_xlat30 = ((x_356.x_VentPos.www * x_1308) + u_xlat30);
          u_xlat12.x = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat30, 0.0f).x;
          u_xlat12.x = (-(u_xlat12.x) + 1.0f);
          u_xlat60 = ((u_xlat14.x * u_xlat53) + x_356.x_NoiseScale.z);
          u_xlat12.x = (u_xlat60 * u_xlat12.x);
          u_xlat12.x = ((u_xlat44 * u_xlat6.z) + -(u_xlat12.x));
          u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
          u_xlat44 = ((u_xlat14.x * 0.39999997615814208984f) + u_xlat34);
          u_xlat44 = (u_xlat44 + 0.5f);
          u_xlat44 = (1.0f / u_xlat44);
          u_xlat12.x = (u_xlat44 * u_xlat12.x);
          u_xlat12.x = min(u_xlat12.x, 1.0f);
          u_xlat44 = ((u_xlat12.x * -2.0f) + 3.0f);
          u_xlat12.x = (u_xlat12.x * u_xlat12.x);
          u_xlat12.x = (u_xlat12.x * u_xlat44);
          u_xlat55 = ((-(x_356.x_PlumeBreak.x) * x_356.x_PlumeShape.z) + u_xlat55);
          u_xlat55 = (u_xlat6.x * u_xlat55);
          u_xlat55 = clamp(u_xlat55, 0.0f, 1.0f);
          u_xlat44 = ((u_xlat55 * -2.0f) + 3.0f);
          u_xlat55 = (u_xlat55 * u_xlat55);
          u_xlat55 = (u_xlat55 * u_xlat44);
          u_xlat55 = (u_xlat55 * x_356.x_PlumeBreak.z);
          u_xlatb44 = (0.0f < u_xlat55);
          if (u_xlatb44) {
            u_xlat44 = ((u_xlat59 * 1.89999997615814208984f) + 0.80000001192092895508f);
            u_xlat44 = sin(u_xlat44);
            u_xlat44 = (u_xlat44 * 0.5f);
            u_xlat59 = ((u_xlat59 * 0.67000001668930053711f) + x_356.x_VentPos.w);
            u_xlat59 = (u_xlat59 + 2.09999990463256835938f);
            u_xlat59 = sin(u_xlat59);
            u_xlat59 = ((u_xlat44 * u_xlat59) + 0.5f);
            u_xlat59 = ((u_xlat59 * 0.55000001192092895508f) + 0.45000001788139343262f);
            u_xlat44 = ((u_xlat55 * 0.40000003576278686523f) + 0.44999998807907104492f);
            u_xlat59 = (u_xlat59 + -(u_xlat44));
            u_xlat59 = (u_xlat59 * 4.54545450210571289062f);
            u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
            u_xlat59 = (u_xlat59 + -1.0f);
            u_xlat55 = ((u_xlat55 * u_xlat59) + 1.0f);
            u_xlat12.x = (u_xlat55 * u_xlat12.x);
          }
          u_xlat55 = (u_xlat45 * u_xlat12.x);
          u_xlat55 = (u_xlat28 * u_xlat55);
          u_xlat59 = ((u_xlat29.x * 0.30000001192092895508f) + 0.80000001192092895508f);
          u_xlat55 = (u_xlat55 * u_xlat59);
        } else {
          u_xlat55 = 0.0f;
        }
      } else {
        u_xlat55 = 0.0f;
      }
      u_xlat12 = ((x_35.x_MainLightPosition.xyz * vec3f(0.94999998807907104492f)) + u_xlat11.xyz);
      u_xlat12 = (u_xlat12 + -(x_356.x_VentPos.xyz));
      u_xlatb59 = (u_xlat12.y < -0.60000002384185791016f);
      u_xlatb60 = (x_356.x_PlumeShape.z < u_xlat12.y);
      u_xlatb59 = (u_xlatb59 | u_xlatb60);
      if (!(u_xlatb59)) {
        u_xlat59 = max(u_xlat12.y, 0.0f);
        u_xlat60 = (u_xlat59 / u_xlat49);
        u_xlat60 = (-(u_xlat60) + x_35.x_Time.y);
        u_xlat60 = ((x_356.x_VentPos.w * 37.0f) + u_xlat60);
        u_xlat13.x = (u_xlat60 * 0.31000000238418579102f);
        u_xlat13 = vec4f(u_xlat13.x, (((vec3f(u_xlat60) * x_975) + x_978)).xyz);
        u_xlat13 = sin(u_xlat13);
        u_xlat29 = (u_xlat13.yz * x_989);
        u_xlat13.x = ((u_xlat13.x * 0.60000002384185791016f) + u_xlat29.x);
        u_xlat13.x = ((x_356.x_PlumeFlow.w * u_xlat13.x) + 1.0f);
        u_xlat13.x = (u_xlat2.x * u_xlat13.x);
        u_xlat29.x = (u_xlat59 * u_xlat13.x);
        u_xlat14.x = sqrt(u_xlat59);
        u_xlat29.x = (u_xlat29.x * u_xlat14.x);
        u_xlat14.x = (u_xlat13.x * u_xlat14.x);
        u_xlat14.x = (u_xlat14.x * 1.5f);
        u_xlat14.x = ((u_xlat14.x * u_xlat14.x) + 1.0f);
        u_xlat14.x = inverseSqrt(u_xlat14.x);
        u_xlat45 = ((u_xlat29.y * u_xlat13.w) + 0.5f);
        u_xlat61 = ((x_356.x_PlumeShape.y * u_xlat59) + x_356.x_PlumeShape.x);
        u_xlat30.x = ((u_xlat45 * 0.40000000596046447754f) + 0.80000001192092895508f);
        u_xlat61 = (u_xlat61 * u_xlat30.x);
        u_xlat30 = vec3f((((vec2f(u_xlat60) * x_1068) + x_1072)).xy, u_xlat30.z);
        u_xlat30 = vec3f(sin(u_xlat30.xy).xy, u_xlat30.z);
        u_xlat15 = (u_xlat8.zwxy * u_xlat30.xxyy);
        u_xlat30 = vec3f(((u_xlat15.zw + u_xlat15.xy)).xy, u_xlat30.z);
        u_xlat62 = (u_xlat61 * 0.34999999403953552246f);
        u_xlat15.x = (u_xlat59 * 0.40000000596046447754f);
        u_xlat15.x = min(u_xlat15.x, 1.0f);
        u_xlat62 = (u_xlat62 * u_xlat15.x);
        let x_2312 = ((-(x_356.x_PlumeWind.xy) * u_xlat29.xx) + u_xlat12.xz);
        u_xlat12 = vec3f(x_2312.x, u_xlat12.y, x_2312.y);
        let x_2323 = ((-(u_xlat30.xy) * vec2f(u_xlat62)) + u_xlat12.xz);
        u_xlat12 = vec3f(x_2323.x, u_xlat12.y, x_2323.y);
        u_xlat29.x = dot(u_xlat12.xz, x_356.x_PlumeWind.xy);
        u_xlat30.x = (u_xlat14.x * u_xlat29.x);
        u_xlat12.x = dot(u_xlat12.xz, u_xlat8.zw);
        u_xlat44 = (u_xlat12.x * u_xlat12.x);
        u_xlat44 = ((u_xlat30.x * u_xlat30.x) + u_xlat44);
        u_xlat30.x = (u_xlat61 * u_xlat61);
        u_xlat44 = (u_xlat44 / u_xlat30.x);
        u_xlatb30 = (u_xlat18 >= u_xlat44);
        if (u_xlatb30) {
          u_xlat44 = (-(u_xlat6.y) * u_xlat44);
          u_xlat44 = (u_xlat44 * 1.44269502162933349609f);
          u_xlat44 = exp2(u_xlat44);
          u_xlat30.x = (u_xlat12.y / x_356.x_PlumeShape.z);
          u_xlat30.x = clamp(u_xlat30.x, 0.0f, 1.0f);
          u_xlat46 = (u_xlat12.y + 0.5f);
          u_xlat46 = (u_xlat46 * 1.11111116409301757812f);
          u_xlat46 = clamp(u_xlat46, 0.0f, 1.0f);
          u_xlat62 = ((u_xlat46 * -2.0f) + 3.0f);
          u_xlat46 = (u_xlat46 * u_xlat46);
          u_xlat46 = (u_xlat46 * u_xlat62);
          u_xlat28 = ((-(x_356.x_PlumeShape.z) * 0.34999999403953552246f) + u_xlat12.y);
          u_xlat28 = (u_xlat51 * u_xlat28);
          u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
          u_xlat62 = ((u_xlat28 * -2.0f) + 3.0f);
          u_xlat28 = (u_xlat28 * u_xlat28);
          u_xlat28 = ((-(u_xlat62) * u_xlat28) + 1.0f);
          u_xlat28 = (u_xlat28 * u_xlat46);
          u_xlat61 = (x_356.x_PlumeShape.x / u_xlat61);
          u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
          u_xlat61 = log2(u_xlat61);
          u_xlat61 = (u_xlat61 * x_356.x_PlumeShape.w);
          u_xlat61 = exp2(u_xlat61);
          u_xlat13.x = (u_xlat13.x * u_xlat13.x);
          u_xlat46 = (u_xlat59 * u_xlat59);
          u_xlat13.x = (u_xlat13.x * u_xlat46);
          u_xlat13.x = ((u_xlat13.x * 0.5625f) + u_xlat59);
          u_xlat15.x = ((x_35.x_Time.y * x_356.x_PlumeFlow.z) + u_xlat12.x);
          u_xlat15.y = ((-(u_xlat49) * x_35.x_Time.y) + u_xlat13.x);
          u_xlat15.z = ((u_xlat29.x * u_xlat14.x) + -(u_xlat52));
          let x_2499 = (u_xlat15.xyz / x_356.x_NoiseScale.xxx);
          u_xlat14 = vec4f(x_2499.x, u_xlat14.y, x_2499.yz);
          let x_2508 = ((x_356.x_VentPos.www * x_1308) + u_xlat14.xzw);
          u_xlat14 = vec4f(x_2508.x, u_xlat14.y, x_2508.yz);
          u_xlat12.x = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat14.xzw, 0.0f).x;
          u_xlat12.x = (-(u_xlat12.x) + 1.0f);
          u_xlat13.x = ((u_xlat30.x * u_xlat53) + x_356.x_NoiseScale.z);
          u_xlat12.x = (u_xlat12.x * u_xlat13.x);
          u_xlat12.x = ((u_xlat44 * u_xlat6.z) + -(u_xlat12.x));
          u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
          u_xlat44 = ((u_xlat30.x * 0.39999997615814208984f) + u_xlat34);
          u_xlat44 = (u_xlat44 + 0.5f);
          u_xlat44 = (1.0f / u_xlat44);
          u_xlat12.x = (u_xlat44 * u_xlat12.x);
          u_xlat12.x = min(u_xlat12.x, 1.0f);
          u_xlat44 = ((u_xlat12.x * -2.0f) + 3.0f);
          u_xlat12.x = (u_xlat12.x * u_xlat12.x);
          u_xlat12.x = (u_xlat12.x * u_xlat44);
          u_xlat59 = ((-(x_356.x_PlumeBreak.x) * x_356.x_PlumeShape.z) + u_xlat59);
          u_xlat59 = (u_xlat6.x * u_xlat59);
          u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
          u_xlat44 = ((u_xlat59 * -2.0f) + 3.0f);
          u_xlat59 = (u_xlat59 * u_xlat59);
          u_xlat59 = (u_xlat59 * u_xlat44);
          u_xlat59 = (u_xlat59 * x_356.x_PlumeBreak.z);
          u_xlatb44 = (0.0f < u_xlat59);
          if (u_xlatb44) {
            u_xlat44 = ((u_xlat60 * 1.89999997615814208984f) + 0.80000001192092895508f);
            u_xlat44 = sin(u_xlat44);
            u_xlat44 = (u_xlat44 * 0.5f);
            u_xlat60 = ((u_xlat60 * 0.67000001668930053711f) + x_356.x_VentPos.w);
            u_xlat60 = (u_xlat60 + 2.09999990463256835938f);
            u_xlat60 = sin(u_xlat60);
            u_xlat44 = ((u_xlat44 * u_xlat60) + 0.5f);
            u_xlat44 = ((u_xlat44 * 0.55000001192092895508f) + 0.45000001788139343262f);
            u_xlat60 = ((u_xlat59 * 0.40000003576278686523f) + 0.44999998807907104492f);
            u_xlat44 = (-(u_xlat60) + u_xlat44);
            u_xlat44 = (u_xlat44 * 4.54545450210571289062f);
            u_xlat44 = clamp(u_xlat44, 0.0f, 1.0f);
            u_xlat44 = (u_xlat44 + -1.0f);
            u_xlat59 = ((u_xlat59 * u_xlat44) + 1.0f);
            u_xlat12.x = (u_xlat59 * u_xlat12.x);
          }
          u_xlat59 = (u_xlat61 * u_xlat12.x);
          u_xlat59 = (u_xlat28 * u_xlat59);
          u_xlat12.x = ((u_xlat45 * 0.30000001192092895508f) + 0.80000001192092895508f);
          u_xlat59 = (u_xlat59 * u_xlat12.x);
        } else {
          u_xlat59 = 0.0f;
        }
      } else {
        u_xlat59 = 0.0f;
      }
      u_xlat59 = (u_xlat59 * 0.60000002384185791016f);
      u_xlat55 = ((u_xlat55 * 0.34999999403953552246f) + u_xlat59);
      u_xlat12 = ((x_35.x_MainLightPosition.xyz * vec3f(1.89999997615814208984f)) + u_xlat11.xyz);
      u_xlat12 = (u_xlat12 + -(x_356.x_VentPos.xyz));
      u_xlatb59 = (u_xlat12.y < -0.60000002384185791016f);
      u_xlatb60 = (x_356.x_PlumeShape.z < u_xlat12.y);
      u_xlatb59 = (u_xlatb59 | u_xlatb60);
      if (!(u_xlatb59)) {
        u_xlat59 = max(u_xlat12.y, 0.0f);
        u_xlat60 = (u_xlat59 / u_xlat49);
        u_xlat60 = (-(u_xlat60) + x_35.x_Time.y);
        u_xlat60 = ((x_356.x_VentPos.w * 37.0f) + u_xlat60);
        u_xlat13.x = (u_xlat60 * 0.31000000238418579102f);
        u_xlat13 = vec4f(u_xlat13.x, (((vec3f(u_xlat60) * x_975) + x_978)).xyz);
        u_xlat13 = sin(u_xlat13);
        u_xlat29 = (u_xlat13.yz * x_989);
        u_xlat13.x = ((u_xlat13.x * 0.60000002384185791016f) + u_xlat29.x);
        u_xlat13.x = ((x_356.x_PlumeFlow.w * u_xlat13.x) + 1.0f);
        u_xlat13.x = (u_xlat2.x * u_xlat13.x);
        u_xlat29.x = (u_xlat59 * u_xlat13.x);
        u_xlat14.x = sqrt(u_xlat59);
        u_xlat29.x = (u_xlat29.x * u_xlat14.x);
        u_xlat14.x = (u_xlat13.x * u_xlat14.x);
        u_xlat14.x = (u_xlat14.x * 1.5f);
        u_xlat14.x = ((u_xlat14.x * u_xlat14.x) + 1.0f);
        u_xlat14.x = inverseSqrt(u_xlat14.x);
        u_xlat45 = ((u_xlat29.y * u_xlat13.w) + 0.5f);
        u_xlat61 = ((x_356.x_PlumeShape.y * u_xlat59) + x_356.x_PlumeShape.x);
        u_xlat30.x = ((u_xlat45 * 0.40000000596046447754f) + 0.80000001192092895508f);
        u_xlat61 = (u_xlat61 * u_xlat30.x);
        u_xlat30 = vec3f((((vec2f(u_xlat60) * x_1068) + x_1072)).xy, u_xlat30.z);
        u_xlat30 = vec3f(sin(u_xlat30.xy).xy, u_xlat30.z);
        u_xlat15 = (u_xlat8.zwxy * u_xlat30.xxyy);
        u_xlat30 = vec3f(((u_xlat15.zw + u_xlat15.xy)).xy, u_xlat30.z);
        u_xlat62 = (u_xlat61 * 0.34999999403953552246f);
        u_xlat15.x = (u_xlat59 * 0.40000000596046447754f);
        u_xlat15.x = min(u_xlat15.x, 1.0f);
        u_xlat62 = (u_xlat62 * u_xlat15.x);
        let x_2864 = ((-(x_356.x_PlumeWind.xy) * u_xlat29.xx) + u_xlat12.xz);
        u_xlat12 = vec3f(x_2864.x, u_xlat12.y, x_2864.y);
        let x_2875 = ((-(u_xlat30.xy) * vec2f(u_xlat62)) + u_xlat12.xz);
        u_xlat12 = vec3f(x_2875.x, u_xlat12.y, x_2875.y);
        u_xlat29.x = dot(u_xlat12.xz, x_356.x_PlumeWind.xy);
        u_xlat30.x = (u_xlat14.x * u_xlat29.x);
        u_xlat12.x = dot(u_xlat12.xz, u_xlat8.zw);
        u_xlat44 = (u_xlat12.x * u_xlat12.x);
        u_xlat44 = ((u_xlat30.x * u_xlat30.x) + u_xlat44);
        u_xlat30.x = (u_xlat61 * u_xlat61);
        u_xlat44 = (u_xlat44 / u_xlat30.x);
        u_xlatb30 = (u_xlat18 >= u_xlat44);
        if (u_xlatb30) {
          u_xlat44 = (-(u_xlat6.y) * u_xlat44);
          u_xlat44 = (u_xlat44 * 1.44269502162933349609f);
          u_xlat44 = exp2(u_xlat44);
          u_xlat30.x = (u_xlat12.y / x_356.x_PlumeShape.z);
          u_xlat30.x = clamp(u_xlat30.x, 0.0f, 1.0f);
          u_xlat46 = (u_xlat12.y + 0.5f);
          u_xlat46 = (u_xlat46 * 1.11111116409301757812f);
          u_xlat46 = clamp(u_xlat46, 0.0f, 1.0f);
          u_xlat62 = ((u_xlat46 * -2.0f) + 3.0f);
          u_xlat46 = (u_xlat46 * u_xlat46);
          u_xlat46 = (u_xlat46 * u_xlat62);
          u_xlat28 = ((-(x_356.x_PlumeShape.z) * 0.34999999403953552246f) + u_xlat12.y);
          u_xlat28 = (u_xlat51 * u_xlat28);
          u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
          u_xlat62 = ((u_xlat28 * -2.0f) + 3.0f);
          u_xlat28 = (u_xlat28 * u_xlat28);
          u_xlat28 = ((-(u_xlat62) * u_xlat28) + 1.0f);
          u_xlat28 = (u_xlat28 * u_xlat46);
          u_xlat61 = (x_356.x_PlumeShape.x / u_xlat61);
          u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
          u_xlat61 = log2(u_xlat61);
          u_xlat61 = (u_xlat61 * x_356.x_PlumeShape.w);
          u_xlat61 = exp2(u_xlat61);
          u_xlat13.x = (u_xlat13.x * u_xlat13.x);
          u_xlat46 = (u_xlat59 * u_xlat59);
          u_xlat13.x = (u_xlat13.x * u_xlat46);
          u_xlat13.x = ((u_xlat13.x * 0.5625f) + u_xlat59);
          u_xlat15.x = ((x_35.x_Time.y * x_356.x_PlumeFlow.z) + u_xlat12.x);
          u_xlat15.y = ((-(u_xlat49) * x_35.x_Time.y) + u_xlat13.x);
          u_xlat15.z = ((u_xlat29.x * u_xlat14.x) + -(u_xlat52));
          let x_3050 = (u_xlat15.xyz / x_356.x_NoiseScale.xxx);
          u_xlat14 = vec4f(x_3050.x, u_xlat14.y, x_3050.yz);
          let x_3059 = ((x_356.x_VentPos.www * x_1308) + u_xlat14.xzw);
          u_xlat14 = vec4f(x_3059.x, u_xlat14.y, x_3059.yz);
          u_xlat12.x = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat14.xzw, 0.0f).x;
          u_xlat12.x = (-(u_xlat12.x) + 1.0f);
          u_xlat13.x = ((u_xlat30.x * u_xlat53) + x_356.x_NoiseScale.z);
          u_xlat12.x = (u_xlat12.x * u_xlat13.x);
          u_xlat12.x = ((u_xlat44 * u_xlat6.z) + -(u_xlat12.x));
          u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
          u_xlat44 = ((u_xlat30.x * 0.39999997615814208984f) + u_xlat34);
          u_xlat44 = (u_xlat44 + 0.5f);
          u_xlat44 = (1.0f / u_xlat44);
          u_xlat12.x = (u_xlat44 * u_xlat12.x);
          u_xlat12.x = min(u_xlat12.x, 1.0f);
          u_xlat44 = ((u_xlat12.x * -2.0f) + 3.0f);
          u_xlat12.x = (u_xlat12.x * u_xlat12.x);
          u_xlat12.x = (u_xlat12.x * u_xlat44);
          u_xlat59 = ((-(x_356.x_PlumeBreak.x) * x_356.x_PlumeShape.z) + u_xlat59);
          u_xlat59 = (u_xlat6.x * u_xlat59);
          u_xlat59 = clamp(u_xlat59, 0.0f, 1.0f);
          u_xlat44 = ((u_xlat59 * -2.0f) + 3.0f);
          u_xlat59 = (u_xlat59 * u_xlat59);
          u_xlat59 = (u_xlat59 * u_xlat44);
          u_xlat59 = (u_xlat59 * x_356.x_PlumeBreak.z);
          u_xlatb44 = (0.0f < u_xlat59);
          if (u_xlatb44) {
            u_xlat44 = ((u_xlat60 * 1.89999997615814208984f) + 0.80000001192092895508f);
            u_xlat44 = sin(u_xlat44);
            u_xlat44 = (u_xlat44 * 0.5f);
            u_xlat60 = ((u_xlat60 * 0.67000001668930053711f) + x_356.x_VentPos.w);
            u_xlat60 = (u_xlat60 + 2.09999990463256835938f);
            u_xlat60 = sin(u_xlat60);
            u_xlat44 = ((u_xlat44 * u_xlat60) + 0.5f);
            u_xlat44 = ((u_xlat44 * 0.55000001192092895508f) + 0.45000001788139343262f);
            u_xlat60 = ((u_xlat59 * 0.40000003576278686523f) + 0.44999998807907104492f);
            u_xlat44 = (-(u_xlat60) + u_xlat44);
            u_xlat44 = (u_xlat44 * 4.54545450210571289062f);
            u_xlat44 = clamp(u_xlat44, 0.0f, 1.0f);
            u_xlat44 = (u_xlat44 + -1.0f);
            u_xlat59 = ((u_xlat59 * u_xlat44) + 1.0f);
            u_xlat12.x = (u_xlat59 * u_xlat12.x);
          }
          u_xlat59 = (u_xlat61 * u_xlat12.x);
          u_xlat59 = (u_xlat28 * u_xlat59);
          u_xlat12.x = ((u_xlat45 * 0.30000001192092895508f) + 0.80000001192092895508f);
          u_xlat59 = (u_xlat59 * u_xlat12.x);
        } else {
          u_xlat59 = 0.0f;
        }
      } else {
        u_xlat59 = 0.0f;
      }
      u_xlat55 = ((u_xlat59 * 0.94999998807907104492f) + u_xlat55);
      u_xlat55 = (u_xlat55 * x_356.x_Density);
      u_xlat12 = vec3f(((vec2f(u_xlat55) * vec2f(-1.44269502162933349609f, -0.36067375540733337402f))).xy, u_xlat12.z);
      u_xlat12 = vec3f(exp2(u_xlat12.xy).xy, u_xlat12.z);
      u_xlat55 = (u_xlat12.y * x_356.x_Lighting.w);
      u_xlat55 = ((u_xlat12.x * 0.75f) + u_xlat55);
      u_xlat11 = (u_xlat9.yzwx + u_xlat11.xyzy);
      let x_3271 = (u_xlat11.xz + -(x_356.x_VentPos.xz));
      u_xlat11 = vec4f(x_3271.x, u_xlat11.y, x_3271.y, u_xlat11.w);
      u_xlat12.x = (u_xlat11.y + 0.80000001192092895508f);
      u_xlatb28 = (u_xlat12.x < -0.60000002384185791016f);
      u_xlatb44 = (x_356.x_PlumeShape.z < u_xlat12.x);
      u_xlatb28 = (u_xlatb44 | u_xlatb28);
      if (!(u_xlatb28)) {
        u_xlat28 = max(u_xlat12.x, 0.0f);
        u_xlat44 = (u_xlat28 / u_xlat49);
        u_xlat44 = (-(u_xlat44) + x_35.x_Time.y);
        u_xlat44 = ((x_356.x_VentPos.w * 37.0f) + u_xlat44);
        u_xlat60 = (u_xlat44 * 0.31000000238418579102f);
        u_xlat60 = sin(u_xlat60);
        u_xlat13 = vec4f((((vec3f(u_xlat44) * x_975) + x_978)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(sin(u_xlat13.xyz).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xy * x_989)).xy, u_xlat13.zw);
        u_xlat60 = ((u_xlat60 * 0.60000002384185791016f) + u_xlat13.x);
        u_xlat60 = ((x_356.x_PlumeFlow.w * u_xlat60) + 1.0f);
        u_xlat60 = (u_xlat2.x * u_xlat60);
        u_xlat13.x = (u_xlat28 * u_xlat60);
        u_xlat61 = sqrt(u_xlat28);
        u_xlat13.x = (u_xlat61 * u_xlat13.x);
        u_xlat61 = (u_xlat60 * u_xlat61);
        u_xlat61 = (u_xlat61 * 1.5f);
        u_xlat61 = ((u_xlat61 * u_xlat61) + 1.0f);
        u_xlat61 = inverseSqrt(u_xlat61);
        u_xlat29.x = ((u_xlat13.y * u_xlat13.z) + 0.5f);
        u_xlat45 = ((x_356.x_PlumeShape.y * u_xlat28) + x_356.x_PlumeShape.x);
        u_xlat14.x = ((u_xlat29.x * 0.40000000596046447754f) + 0.80000001192092895508f);
        u_xlat45 = (u_xlat45 * u_xlat14.x);
        u_xlat14 = vec4f((((vec2f(u_xlat44) * x_1068) + x_1072)).xy, u_xlat14.zw);
        u_xlat14 = vec4f(sin(u_xlat14.xy).xy, u_xlat14.zw);
        u_xlat14 = (u_xlat8.zwxy * u_xlat14.xxyy);
        u_xlat14 = vec4f(((u_xlat14.zw + u_xlat14.xy)).xy, u_xlat14.zw);
        u_xlat46 = (u_xlat45 * 0.34999999403953552246f);
        u_xlat62 = (u_xlat28 * 0.40000000596046447754f);
        u_xlat62 = min(u_xlat62, 1.0f);
        u_xlat46 = (u_xlat62 * u_xlat46);
        let x_3430 = ((-(x_356.x_PlumeWind.xy) * u_xlat13.xx) + u_xlat11.xz);
        u_xlat11 = vec4f(x_3430.x, u_xlat11.y, x_3430.y, u_xlat11.w);
        let x_3441 = ((-(u_xlat14.xy) * vec2f(u_xlat46)) + u_xlat11.xz);
        u_xlat11 = vec4f(x_3441.x, u_xlat11.y, x_3441.y, u_xlat11.w);
        u_xlat13.x = dot(u_xlat11.xz, x_356.x_PlumeWind.xy);
        u_xlat14.x = (u_xlat61 * u_xlat13.x);
        u_xlat11.x = dot(u_xlat11.xz, u_xlat8.zw);
        u_xlat43 = (u_xlat11.x * u_xlat11.x);
        u_xlat43 = ((u_xlat14.x * u_xlat14.x) + u_xlat43);
        u_xlat14.x = (u_xlat45 * u_xlat45);
        u_xlat43 = (u_xlat43 / u_xlat14.x);
        u_xlatb14 = (u_xlat18 >= u_xlat43);
        if (u_xlatb14) {
          u_xlat43 = (-(u_xlat6.y) * u_xlat43);
          u_xlat43 = (u_xlat43 * 1.44269502162933349609f);
          u_xlat43 = exp2(u_xlat43);
          u_xlat14.x = (u_xlat12.x / x_356.x_PlumeShape.z);
          u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
          u_xlat27 = (u_xlat11.y + 1.29999995231628417969f);
          u_xlat27 = (u_xlat27 * 1.11111116409301757812f);
          u_xlat27 = clamp(u_xlat27, 0.0f, 1.0f);
          u_xlat30.x = ((u_xlat27 * -2.0f) + 3.0f);
          u_xlat27 = (u_xlat27 * u_xlat27);
          u_xlat27 = (u_xlat27 * u_xlat30.x);
          u_xlat12.x = ((-(x_356.x_PlumeShape.z) * 0.34999999403953552246f) + u_xlat12.x);
          u_xlat12.x = (u_xlat51 * u_xlat12.x);
          u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
          u_xlat30.x = ((u_xlat12.x * -2.0f) + 3.0f);
          u_xlat12.x = (u_xlat12.x * u_xlat12.x);
          u_xlat12.x = ((-(u_xlat30.x) * u_xlat12.x) + 1.0f);
          u_xlat27 = (u_xlat27 * u_xlat12.x);
          u_xlat12.x = (x_356.x_PlumeShape.x / u_xlat45);
          u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
          u_xlat12.x = log2(u_xlat12.x);
          u_xlat12.x = (u_xlat12.x * x_356.x_PlumeShape.w);
          u_xlat12.x = exp2(u_xlat12.x);
          u_xlat60 = (u_xlat60 * u_xlat60);
          u_xlat45 = (u_xlat28 * u_xlat28);
          u_xlat60 = (u_xlat60 * u_xlat45);
          u_xlat60 = ((u_xlat60 * 0.5625f) + u_xlat28);
          u_xlat15.x = ((x_35.x_Time.y * x_356.x_PlumeFlow.z) + u_xlat11.x);
          u_xlat15.y = ((-(u_xlat49) * x_35.x_Time.y) + u_xlat60);
          u_xlat15.z = ((u_xlat13.x * u_xlat61) + -(u_xlat52));
          let x_3633 = (u_xlat15.xyz / x_356.x_NoiseScale.xxx);
          u_xlat13 = vec4f(x_3633.x, u_xlat13.y, x_3633.yz);
          let x_3642 = ((x_356.x_VentPos.www * x_1308) + u_xlat13.xzw);
          u_xlat13 = vec4f(x_3642.x, u_xlat13.y, x_3642.yz);
          u_xlat11.x = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat13.xzw, 0.0f).x;
          u_xlat11.x = (-(u_xlat11.x) + 1.0f);
          u_xlat60 = ((u_xlat14.x * u_xlat53) + x_356.x_NoiseScale.z);
          u_xlat11.x = (u_xlat11.x * u_xlat60);
          u_xlat11.x = ((u_xlat43 * u_xlat6.z) + -(u_xlat11.x));
          u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
          u_xlat43 = ((u_xlat14.x * 0.39999997615814208984f) + u_xlat34);
          u_xlat43 = (u_xlat43 + 0.5f);
          u_xlat43 = (1.0f / u_xlat43);
          u_xlat11.x = (u_xlat43 * u_xlat11.x);
          u_xlat11.x = min(u_xlat11.x, 1.0f);
          u_xlat43 = ((u_xlat11.x * -2.0f) + 3.0f);
          u_xlat11.x = (u_xlat11.x * u_xlat11.x);
          u_xlat11.x = (u_xlat11.x * u_xlat43);
          u_xlat43 = ((-(x_356.x_PlumeBreak.x) * x_356.x_PlumeShape.z) + u_xlat28);
          u_xlat43 = (u_xlat6.x * u_xlat43);
          u_xlat43 = clamp(u_xlat43, 0.0f, 1.0f);
          u_xlat28 = ((u_xlat43 * -2.0f) + 3.0f);
          u_xlat43 = (u_xlat43 * u_xlat43);
          u_xlat43 = (u_xlat43 * u_xlat28);
          u_xlat43 = (u_xlat43 * x_356.x_PlumeBreak.z);
          u_xlatb28 = (0.0f < u_xlat43);
          if (u_xlatb28) {
            u_xlat28 = ((u_xlat44 * 1.89999997615814208984f) + 0.80000001192092895508f);
            u_xlat28 = sin(u_xlat28);
            u_xlat28 = (u_xlat28 * 0.5f);
            u_xlat44 = ((u_xlat44 * 0.67000001668930053711f) + x_356.x_VentPos.w);
            u_xlat44 = (u_xlat44 + 2.09999990463256835938f);
            u_xlat44 = sin(u_xlat44);
            u_xlat28 = ((u_xlat28 * u_xlat44) + 0.5f);
            u_xlat28 = ((u_xlat28 * 0.55000001192092895508f) + 0.45000001788139343262f);
            u_xlat44 = ((u_xlat43 * 0.40000003576278686523f) + 0.44999998807907104492f);
            u_xlat28 = (-(u_xlat44) + u_xlat28);
            u_xlat28 = (u_xlat28 * 4.54545450210571289062f);
            u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
            u_xlat28 = (u_xlat28 + -1.0f);
            u_xlat43 = ((u_xlat43 * u_xlat28) + 1.0f);
            u_xlat11.x = (u_xlat43 * u_xlat11.x);
          }
          u_xlat11.x = (u_xlat12.x * u_xlat11.x);
          u_xlat11.x = (u_xlat27 * u_xlat11.x);
          u_xlat27 = ((u_xlat29.x * 0.30000001192092895508f) + 0.80000001192092895508f);
          u_xlat11.x = (u_xlat27 * u_xlat11.x);
        } else {
          u_xlat11.x = 0.0f;
        }
      } else {
        u_xlat11.x = 0.0f;
      }
      u_xlat11.x = (u_xlat11.x * x_356.x_Density);
      u_xlat11.x = (u_xlat11.x * -0.92332488298416137695f);
      u_xlat11.x = exp2(u_xlat11.x);
      u_xlat11 = vec4f((((u_xlat11.xx * vec2f(0.55000001192092895508f, 0.44999998807907104492f)) + vec2f(0.44999998807907104492f, 0.55000001192092895508f))).xy, u_xlat11.zw);
      u_xlat12 = ((u_xlat11.xxx * u_xlat4) + u_xlat5);
      u_xlat11 = vec4f(((u_xlat11.yyy * u_xlat12)).xyz, u_xlat11.w);
      u_xlat59 = max(u_xlat11.w, 0.0f);
      u_xlat59 = (-(u_xlat59) / u_xlat7);
      u_xlat59 = (u_xlat59 * 1.44269502162933349609f);
      u_xlat59 = exp2(u_xlat59);
      u_xlat11 = vec4f((((u_xlat3 * vec3f(u_xlat55)) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat11 = vec4f((((x_356.x_PlumeGlow.xyz * vec3f(u_xlat59)) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_356.x_Albedo.xyz)).xyz, u_xlat11.w);
      u_xlat39 = (-(u_xlat39) * x_356.x_Density);
      u_xlat39 = (u_xlat1.x * u_xlat39);
      u_xlat39 = (u_xlat39 * 1.44269502162933349609f);
      u_xlat39 = exp2(u_xlat39);
      u_xlat11 = vec4f(((u_xlat17.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat55 = (-(u_xlat39) + 1.0f);
      u_xlat11 = vec4f((((u_xlat11.xyz * vec3f(u_xlat55)) + u_xlat10.xyz)).xyz, u_xlat11.w);
      u_xlat39 = (u_xlat17.x * u_xlat39);
      u_xlatb55 = (u_xlat39 < 0.01499999966472387314f);
      if (u_xlatb55) {
        u_xlat10 = vec4f(u_xlat11.xyz.xyz, u_xlat10.w);
        u_xlat17.x = u_xlat39;
        break;
      }
      u_xlat10 = vec4f(u_xlat11.xyz.xyz, u_xlat10.w);
      u_xlat17.x = u_xlat39;
    }

    continuing {
      u_xlati_loop_2 = (u_xlati_loop_2 + 1i);
    }
  }
  u_xlat10.w = (-(u_xlat17.x) + 1.0f);
  u_xlatb0 = (u_xlat10.w < 0.00200000009499490261f);
  if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
    discard;
  }
  SV_Target0 = u_xlat10;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

