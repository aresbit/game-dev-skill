//Assets/Levels/Bar/Shaders/Bar_ChimneySmoke.shader
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

//Assets/Levels/Bar/Shaders/Bar_ChimneySmoke.shader
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

const x_735 = vec2f(-1.0f, 1.0f);

const x_936 = vec3f(0.76999998092651367188f, 0.52999997138977050781f, 0.28999999165534973145f);

const x_939 = vec3f(1.29999995231628417969f, 2.0f, 0.40000000596046447754f);

const x_948 = vec2f(0.40000000596046447754f, 0.5f);

const x_1037 = vec2f(0.93000000715255737305f, 0.70999997854232788086f);

const x_1041 = vec2f(1.10000002384185791016f, 4.0f);

const x_1302 = vec3f(13.1000003814697265625f, 7.30000019073486328125f, 5.90000009536743164062f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat45 : f32;
  var u_xlat1 : vec3f;
  var u_xlat2 : vec3f;
  var u_xlatb3 : vec3<bool>;
  var u_xlat3 : vec3f;
  var u_xlat16 : vec2f;
  var u_xlatu2 : vec4u;
  var u_xlat31 : f32;
  var u_xlatb16 : bool;
  var u_xlat46 : f32;
  var u_xlat17 : vec3f;
  var u_xlati_loop_1 : i32;
  var u_xlat18 : vec3f;
  var u_xlatb4 : bool;
  var u_xlatb19 : bool;
  var u_xlat33 : f32;
  var u_xlat19 : vec2f;
  var u_xlat34 : f32;
  var u_xlati18 : i32;
  var u_xlat4 : vec3f;
  var x_558 : vec2f;
  var u_xlatb31 : bool;
  var u_xlat48 : f32;
  var u_xlati49 : i32;
  var u_xlat5 : f32;
  var u_xlat20 : f32;
  var u_xlat35 : f32;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlati_loop_2 : i32;
  var u_xlat9 : vec3f;
  var u_xlat10 : vec3f;
  var u_xlatb54 : bool;
  var u_xlatb55 : bool;
  var u_xlat54 : f32;
  var u_xlat55 : f32;
  var u_xlat11 : vec4f;
  var u_xlat26 : vec2f;
  var u_xlat12 : vec4f;
  var u_xlat41 : vec2f;
  var u_xlat56 : f32;
  var u_xlat27 : vec2f;
  var u_xlat13 : vec4f;
  var u_xlat57 : f32;
  var u_xlat40 : f32;
  var u_xlatb40 : bool;
  var u_xlat25 : vec3f;
  var u_xlat14 : vec3f;
  var u_xlatb11 : bool;
  var u_xlatb10 : bool;
  var u_xlat42 : vec2f;
  var u_xlatb41 : bool;
  var u_xlatb26 : bool;
  var u_xlatb56 : bool;
  var u_xlat39 : f32;
  var u_xlatb25 : bool;
  var u_xlat24 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = (vs_TEXCOORD0 + -(x_35.x_WorldSpaceCameraPos));
  u_xlat45 = dot(u_xlat0, u_xlat0);
  u_xlat45 = inverseSqrt(u_xlat45);
  u_xlat0 = (vec3f(u_xlat45) * u_xlat0);
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
  u_xlat45 = max(u_xlat2.y, u_xlat2.x);
  u_xlat45 = max(u_xlat2.z, u_xlat45);
  u_xlat45 = max(u_xlat45, 0.0f);
  u_xlat1.x = min(u_xlat1.y, u_xlat1.x);
  u_xlat1.x = min(u_xlat1.z, u_xlat1.x);
  let x_209 = x_35.x_ScaledScreenParams.xy;
  u_xlat16 = (x_206 / vec2f(x_209.x, x_209.y));
  u_xlat2 = vec3f(((u_xlat16 * hlslcc_FragCoord.xy)).xy, u_xlat2.z);
  u_xlat16.x = ((u_xlat2.y * x_35.x_ScaleBiasRt.x) + x_35.x_ScaleBiasRt.y);
  u_xlat2.z = (-(u_xlat16.x) + 1.0f);
  u_xlat16 = ((-(x_35.x_CameraDepthTexture_TexelSize.xy) * vec2f(0.5f)) + x_206);
  u_xlat16 = min(u_xlat16, u_xlat2.xz);
  u_xlat16 = (u_xlat16 * x_35.x_RTHandleScale.xy);
  u_xlat16 = (u_xlat16 * x_35.x_ScreenSize.xy);
  u_xlatu2 = vec4u(vec2u(u_xlat16).xy, u_xlatu2.zw);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  u_xlat16.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu2.xy), bitcast<i32>(u_xlatu2.w)).x;
  u_xlat16.x = ((x_35.x_ZBufferParams.z * u_xlat16.x) + x_35.x_ZBufferParams.w);
  u_xlat16.x = (1.0f / u_xlat16.x);
  u_xlat2.x = -(x_35.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat2.y = -(x_35.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat2.z = -(x_35.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat31 = dot(u_xlat0, u_xlat2);
  u_xlat31 = max(u_xlat31, 0.00009999999747378752f);
  u_xlat16.x = (u_xlat16.x / u_xlat31);
  u_xlat1.x = min(u_xlat16.x, u_xlat1.x);
  u_xlatb16 = (u_xlat45 >= u_xlat1.x);
  if (((select(0i, 1i, u_xlatb16) * -1i) != 0i)) {
    discard;
  }
  u_xlat16.x = (-(u_xlat45) + u_xlat1.x);
  u_xlat31 = (u_xlat16.x * 0.04166666790843009949f);
  u_xlat46 = max(x_356.x_PlumeFlow.x, 0.10000000149011611938f);
  u_xlat2.x = (x_356.x_PlumeFlow.y * x_356.x_PlumeWind.z);
  u_xlat17.x = 1000000000.0f;
  u_xlat17.y = -1000000000.0f;
  u_xlati_loop_1 = 0i;
  loop {
    if ((u_xlati_loop_1 < 24i)) {
    } else {
      break;
    }
    u_xlat3.x = f32(u_xlati_loop_1);
    u_xlat3.x = (u_xlat3.x + 0.5f);
    u_xlat3.x = ((u_xlat3.x * u_xlat31) + u_xlat45);
    u_xlat18 = ((u_xlat0 * u_xlat3.xxx) + x_35.x_WorldSpaceCameraPos);
    u_xlat18 = (u_xlat18 + -(x_356.x_VentPos.xyz));
    u_xlatb4 = (u_xlat18.y < -0.60000002384185791016f);
    u_xlatb19 = (x_356.x_PlumeShape.z < u_xlat18.y);
    u_xlatb4 = (u_xlatb19 | u_xlatb4);
    u_xlat33 = max(u_xlat18.y, 0.0f);
    u_xlat19.x = (u_xlat33 / u_xlat46);
    u_xlat19.x = (-(u_xlat19.x) + x_35.x_Time.y);
    u_xlat19.x = ((x_356.x_VentPos.w * 37.0f) + u_xlat19.x);
    u_xlat19.y = (u_xlat19.x * 0.31000000238418579102f);
    u_xlat19.x = ((u_xlat19.x * 0.76999998092651367188f) + 1.29999995231628417969f);
    u_xlat19 = sin(u_xlat19);
    u_xlat19.x = (u_xlat19.x * 0.40000000596046447754f);
    u_xlat19.x = ((u_xlat19.y * 0.60000002384185791016f) + u_xlat19.x);
    u_xlat19.x = ((x_356.x_PlumeFlow.w * u_xlat19.x) + 1.0f);
    u_xlat19.x = (u_xlat2.x * u_xlat19.x);
    u_xlat19.x = (u_xlat33 * u_xlat19.x);
    u_xlat34 = sqrt(u_xlat33);
    u_xlat19.x = (u_xlat34 * u_xlat19.x);
    let x_510 = ((-(x_356.x_PlumeWind.xy) * u_xlat19.xx) + u_xlat18.xz);
    u_xlat18 = vec3f(x_510.x, u_xlat18.y, x_510.y);
    u_xlat33 = ((x_356.x_PlumeShape.y * u_xlat33) + x_356.x_PlumeShape.x);
    u_xlat33 = (u_xlat33 * u_xlat33);
    u_xlat18.x = dot(u_xlat18.xz, u_xlat18.xz);
    u_xlat33 = (u_xlat33 * 7.1875f);
    u_xlati18 = bitcast<i32>(select(0u, 4294967295u, (u_xlat18.x < u_xlat33)));
    u_xlati18 = select(u_xlati18, 0i, u_xlatb4);
    u_xlat4.x = min(u_xlat17.x, u_xlat3.x);
    u_xlat4.y = max(u_xlat17.y, u_xlat3.x);
    if ((u_xlati18 != 0i)) {
      x_558 = u_xlat4.xy;
    } else {
      x_558 = u_xlat17.xy;
    }
    u_xlat17 = vec3f(x_558.xy, u_xlat17.z);

    continuing {
      u_xlati_loop_1 = (u_xlati_loop_1 + 1i);
    }
  }
  u_xlatb31 = (u_xlat17.y < u_xlat17.x);
  if (((select(0i, 1i, u_xlatb31) * -1i) != 0i)) {
    discard;
  }
  u_xlat31 = ((-(u_xlat16.x) * 0.04166666790843009949f) + u_xlat17.x);
  u_xlat45 = max(u_xlat45, u_xlat31);
  u_xlat16.x = ((u_xlat16.x * 0.04166666790843009949f) + u_xlat17.y);
  u_xlat1.x = min(u_xlat16.x, u_xlat1.x);
  u_xlat17 = (x_35.x_MainLightColor.xyz * x_356.x_Lighting.xxx);
  u_xlat16.x = dot(u_xlat0, x_35.x_MainLightPosition.xyz);
  u_xlat31 = ((-(u_xlat16.x) * -0.40000000596046447754f) + 1.03999996185302734375f);
  u_xlat31 = max(u_xlat31, 0.00100000004749745131f);
  u_xlat31 = log2(u_xlat31);
  u_xlat31 = (u_xlat31 * 1.5f);
  u_xlat31 = exp2(u_xlat31);
  u_xlat31 = (0.95999997854232788086f / u_xlat31);
  u_xlat3.x = ((-(x_356.x_Lighting.z) * x_356.x_Lighting.z) + 1.0f);
  u_xlat18.x = ((x_356.x_Lighting.z * x_356.x_Lighting.z) + 1.0f);
  u_xlat16.x = dot(u_xlat16.xx, x_356.x_Lighting.zz);
  u_xlat16.x = (-(u_xlat16.x) + u_xlat18.x);
  u_xlat16.x = max(u_xlat16.x, 0.00100000004749745131f);
  u_xlat16.x = log2(u_xlat16.x);
  u_xlat16.x = (u_xlat16.x * 1.5f);
  u_xlat16.x = exp2(u_xlat16.x);
  u_xlat16.x = (u_xlat3.x / u_xlat16.x);
  u_xlat16.x = (-(u_xlat31) + u_xlat16.x);
  u_xlat16.x = ((u_xlat16.x * 0.69999998807907104492f) + u_xlat31);
  u_xlat3.x = dot(x_66.unity_SHAr.yw, x_206);
  u_xlat3.y = dot(x_66.unity_SHAg.yw, x_206);
  u_xlat3.z = dot(x_66.unity_SHAb.yw, x_206);
  u_xlat3 = (u_xlat3 + -(x_66.unity_SHC.xyz));
  u_xlat3 = max(u_xlat3, vec3f());
  u_xlat4.x = dot(x_66.unity_SHAr.yw, x_735);
  u_xlat4.y = dot(x_66.unity_SHAg.yw, x_735);
  u_xlat4.z = dot(x_66.unity_SHAb.yw, x_735);
  u_xlat4 = (u_xlat4 + -(x_66.unity_SHC.xyz));
  u_xlat4 = max(u_xlat4, vec3f());
  u_xlat4 = (u_xlat4 * x_356.x_Lighting.yyy);
  u_xlat31 = dot(hlslcc_FragCoord.xy, vec2f(0.0671105608344078064f, 0.00583714991807937622f));
  u_xlat31 = fract(u_xlat31);
  u_xlat31 = (u_xlat31 * 52.98291778564453125f);
  u_xlat31 = fract(u_xlat31);
  u_xlat48 = max(x_356.x_Steps, 8.0f);
  u_xlat48 = min(u_xlat48, 64.0f);
  u_xlati49 = i32(u_xlat48);
  u_xlat1.x = (-(u_xlat45) + u_xlat1.x);
  u_xlat48 = trunc(u_xlat48);
  u_xlat1.x = (u_xlat1.x / u_xlat48);
  u_xlat48 = (x_356.x_PlumeShape.z * 0.64999997615814208984f);
  u_xlat48 = (1.0f / u_xlat48);
  u_xlat5 = (x_35.x_Time.y * x_356.x_PlumeFlow.z);
  u_xlat20 = (-(x_356.x_NoiseScale.z) + x_356.x_ErosionTop);
  u_xlat3 = ((u_xlat3 * x_356.x_Lighting.yyy) + -(u_xlat4));
  u_xlat35 = max(x_356.x_PlumeGlow.w, 0.10000000149011611938f);
  u_xlat17 = (u_xlat16.xxx * u_xlat17);
  u_xlat6 = (x_356.x_PlumeWind.xyyx * vec4f(0.60000002384185791016f, 0.60000002384185791016f, -1.0f, 1.0f));
  u_xlat7.y = 0.0f;
  u_xlat7.w = 0.0f;
  let x_845 = -(x_356.x_VentPos.yy);
  u_xlat7 = vec4f(x_845.x, u_xlat7.y, x_845.y, u_xlat7.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlat16.x = 1.0f;
  u_xlati_loop_2 = 0i;
  loop {
    if ((u_xlati_loop_2 < u_xlati49)) {
    } else {
      break;
    }
    u_xlat9.x = f32(u_xlati_loop_2);
    u_xlat9.x = (u_xlat31 + u_xlat9.x);
    u_xlat9.x = ((u_xlat9.x * u_xlat1.x) + u_xlat45);
    u_xlat9 = ((u_xlat0 * u_xlat9.xxx) + x_35.x_WorldSpaceCameraPos);
    u_xlat10 = (u_xlat9 + -(x_356.x_VentPos.xyz));
    u_xlatb54 = (u_xlat10.y < -0.60000002384185791016f);
    u_xlatb55 = (x_356.x_PlumeShape.z < u_xlat10.y);
    u_xlatb54 = (u_xlatb54 | u_xlatb55);
    if (!(u_xlatb54)) {
      u_xlat54 = max(u_xlat10.y, 0.0f);
      u_xlat55 = (u_xlat54 / u_xlat46);
      u_xlat55 = (-(u_xlat55) + x_35.x_Time.y);
      u_xlat55 = ((x_356.x_VentPos.w * 37.0f) + u_xlat55);
      u_xlat11.x = (u_xlat55 * 0.31000000238418579102f);
      u_xlat11 = vec4f(u_xlat11.x, (((vec3f(u_xlat55) * x_936) + x_939)).xyz);
      u_xlat11 = sin(u_xlat11);
      u_xlat26 = (u_xlat11.yz * x_948);
      u_xlat11.x = ((u_xlat11.x * 0.60000002384185791016f) + u_xlat26.x);
      u_xlat11.x = ((x_356.x_PlumeFlow.w * u_xlat11.x) + 1.0f);
      u_xlat11.x = (u_xlat2.x * u_xlat11.x);
      u_xlat26.x = (u_xlat54 * u_xlat11.x);
      u_xlat12.x = sqrt(u_xlat54);
      u_xlat26.x = (u_xlat26.x * u_xlat12.x);
      u_xlat12.x = (u_xlat11.x * u_xlat12.x);
      u_xlat12.x = (u_xlat12.x * 1.5f);
      u_xlat12.x = ((u_xlat12.x * u_xlat12.x) + 1.0f);
      u_xlat12.x = inverseSqrt(u_xlat12.x);
      u_xlat41.x = ((u_xlat26.y * u_xlat11.w) + 0.5f);
      u_xlat56 = ((x_356.x_PlumeShape.y * u_xlat54) + x_356.x_PlumeShape.x);
      u_xlat27.x = ((u_xlat41.x * 0.40000000596046447754f) + 0.80000001192092895508f);
      u_xlat56 = (u_xlat56 * u_xlat27.x);
      u_xlat27 = ((vec2f(u_xlat55) * x_1037) + x_1041);
      u_xlat27 = sin(u_xlat27);
      u_xlat13 = (u_xlat6.zwxy * u_xlat27.xxyy);
      u_xlat27 = (u_xlat13.zw + u_xlat13.xy);
      u_xlat55 = (u_xlat56 * 0.34999999403953552246f);
      u_xlat57 = (u_xlat54 * 0.40000000596046447754f);
      u_xlat57 = min(u_xlat57, 1.0f);
      u_xlat55 = (u_xlat55 * u_xlat57);
      let x_1076 = ((-(x_356.x_PlumeWind.xy) * u_xlat26.xx) + u_xlat10.xz);
      u_xlat10 = vec3f(x_1076.x, u_xlat10.y, x_1076.y);
      let x_1086 = ((-(u_xlat27) * vec2f(u_xlat55)) + u_xlat10.xz);
      u_xlat10 = vec3f(x_1086.x, u_xlat10.y, x_1086.y);
      u_xlat55 = dot(u_xlat10.xz, x_356.x_PlumeWind.xy);
      u_xlat13.z = (u_xlat12.x * u_xlat55);
      u_xlat13.x = dot(u_xlat10.xz, u_xlat6.zw);
      u_xlat10.x = dot(u_xlat13.xz, u_xlat13.xz);
      u_xlat40 = (u_xlat56 * u_xlat56);
      u_xlat10.x = (u_xlat10.x / u_xlat40);
      u_xlatb40 = (3.20000004768371582031f >= u_xlat10.x);
      if (u_xlatb40) {
        u_xlat10.x = (u_xlat10.x * -1.80336880683898925781f);
        u_xlat10.x = exp2(u_xlat10.x);
        u_xlat40 = (u_xlat10.y / x_356.x_PlumeShape.z);
        u_xlat40 = clamp(u_xlat40, 0.0f, 1.0f);
        u_xlat26.x = (u_xlat10.y + 0.5f);
        u_xlat26.x = (u_xlat26.x * 1.11111116409301757812f);
        u_xlat26.x = clamp(u_xlat26.x, 0.0f, 1.0f);
        u_xlat27.x = ((u_xlat26.x * -2.0f) + 3.0f);
        u_xlat26.x = (u_xlat26.x * u_xlat26.x);
        u_xlat26.x = (u_xlat26.x * u_xlat27.x);
        u_xlat25.x = ((-(x_356.x_PlumeShape.z) * 0.34999999403953552246f) + u_xlat10.y);
        u_xlat25.x = (u_xlat48 * u_xlat25.x);
        u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
        u_xlat27.x = ((u_xlat25.x * -2.0f) + 3.0f);
        u_xlat25.x = (u_xlat25.x * u_xlat25.x);
        u_xlat25.x = ((-(u_xlat27.x) * u_xlat25.x) + 1.0f);
        u_xlat25.x = (u_xlat25.x * u_xlat26.x);
        u_xlat26.x = (x_356.x_PlumeShape.x / u_xlat56);
        u_xlat26.x = clamp(u_xlat26.x, 0.0f, 1.0f);
        u_xlat26.x = log2(u_xlat26.x);
        u_xlat26.x = (u_xlat26.x * x_356.x_PlumeShape.w);
        u_xlat26.x = exp2(u_xlat26.x);
        u_xlat11.x = (u_xlat11.x * u_xlat11.x);
        u_xlat56 = (u_xlat54 * u_xlat54);
        u_xlat11.x = (u_xlat11.x * u_xlat56);
        u_xlat54 = ((u_xlat11.x * 0.5625f) + u_xlat54);
        u_xlat14.x = ((x_35.x_Time.y * x_356.x_PlumeFlow.z) + u_xlat13.x);
        u_xlat14.y = ((-(u_xlat46) * x_35.x_Time.y) + u_xlat54);
        u_xlat14.z = ((u_xlat55 * u_xlat12.x) + -(u_xlat5));
        u_xlat12 = vec4f(((u_xlat14 / x_356.x_NoiseScale.xxx)).xyz, u_xlat12.w);
        u_xlat12 = vec4f((((x_356.x_VentPos.www * x_1302) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat54 = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat12.xyz, 0.0f).x;
        u_xlat54 = (-(u_xlat54) + 1.0f);
        u_xlat55 = ((u_xlat40 * u_xlat20) + x_356.x_NoiseScale.z);
        u_xlat54 = ((-(u_xlat54) * u_xlat55) + u_xlat10.x);
        u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
        u_xlat10.x = ((u_xlat40 * 0.39999997615814208984f) + 0.5f);
        u_xlat10.x = (1.0f / u_xlat10.x);
        u_xlat54 = (u_xlat54 * u_xlat10.x);
        u_xlat54 = min(u_xlat54, 1.0f);
        u_xlat10.x = ((u_xlat54 * -2.0f) + 3.0f);
        u_xlat54 = (u_xlat54 * u_xlat54);
        u_xlat55 = (u_xlat54 * u_xlat10.x);
        u_xlatb11 = (0.0f < u_xlat55);
        if (u_xlatb11) {
          u_xlat13.y = ((-(u_xlat5) * 3.0f) + u_xlat14.y);
          u_xlat12 = vec4f(((u_xlat13.xyz / x_356.x_NoiseScale.yyy)).xyz, u_xlat12.w);
          u_xlat12 = vec4f((((x_356.x_VentPos.www * vec3f(22.270000457763671875f, 12.41000080108642578125f, 10.0300006866455078125f)) + u_xlat12.xyz)).xyz, u_xlat12.w);
          u_xlat11.x = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat12.xyz, 0.0f).y;
          u_xlat11.x = (-(u_xlat11.x) + 1.0f);
          u_xlat11.x = (u_xlat11.x * x_356.x_NoiseScale.w);
          u_xlat54 = ((-(u_xlat10.x) * u_xlat54) + 1.0f);
          u_xlat54 = (u_xlat54 * u_xlat11.x);
          u_xlat10.x = (u_xlat40 + 0.5f);
          u_xlat54 = ((-(u_xlat54) * u_xlat10.x) + u_xlat55);
          u_xlat54 = clamp(u_xlat54, 0.0f, 1.0f);
        } else {
          u_xlat54 = 0.0f;
        }
        u_xlat54 = (u_xlat26.x * u_xlat54);
        u_xlat54 = (u_xlat25.x * u_xlat54);
        u_xlat10.x = ((u_xlat41.x * 0.30000001192092895508f) + 0.80000001192092895508f);
        u_xlat54 = (u_xlat54 * u_xlat10.x);
      } else {
        u_xlat54 = 0.0f;
      }
    } else {
      u_xlat54 = 0.0f;
    }
    u_xlatb10 = (0.00200000009499490261f < u_xlat54);
    if (u_xlatb10) {
      u_xlat10 = ((x_35.x_MainLightPosition.xyz * vec3f(0.34999999403953552246f)) + u_xlat9);
      u_xlat10 = (u_xlat10 + -(x_356.x_VentPos.xyz));
      u_xlatb55 = (u_xlat10.y < -0.60000002384185791016f);
      u_xlatb11 = (x_356.x_PlumeShape.z < u_xlat10.y);
      u_xlatb55 = (u_xlatb55 | u_xlatb11);
      if (!(u_xlatb55)) {
        u_xlat55 = max(u_xlat10.y, 0.0f);
        u_xlat11.x = (u_xlat55 / u_xlat46);
        u_xlat11.x = (-(u_xlat11.x) + x_35.x_Time.y);
        u_xlat11.x = ((x_356.x_VentPos.w * 37.0f) + u_xlat11.x);
        u_xlat26.x = (u_xlat11.x * 0.31000000238418579102f);
        u_xlat26.x = sin(u_xlat26.x);
        u_xlat12 = vec4f((((u_xlat11.xxx * x_936) + x_939)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(sin(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat41 = (u_xlat12.xy * x_948);
        u_xlat26.x = ((u_xlat26.x * 0.60000002384185791016f) + u_xlat41.x);
        u_xlat26.x = ((x_356.x_PlumeFlow.w * u_xlat26.x) + 1.0f);
        u_xlat26.x = (u_xlat2.x * u_xlat26.x);
        u_xlat41.x = (u_xlat55 * u_xlat26.x);
        u_xlat12.x = sqrt(u_xlat55);
        u_xlat41.x = (u_xlat41.x * u_xlat12.x);
        u_xlat12.x = (u_xlat26.x * u_xlat12.x);
        u_xlat12.x = (u_xlat12.x * 1.5f);
        u_xlat12.x = ((u_xlat12.x * u_xlat12.x) + 1.0f);
        u_xlat12.x = inverseSqrt(u_xlat12.x);
        u_xlat56 = ((u_xlat41.y * u_xlat12.z) + 0.5f);
        u_xlat27.x = ((x_356.x_PlumeShape.y * u_xlat55) + x_356.x_PlumeShape.x);
        u_xlat42.x = ((u_xlat56 * 0.40000000596046447754f) + 0.80000001192092895508f);
        u_xlat27.x = (u_xlat42.x * u_xlat27.x);
        u_xlat42 = ((u_xlat11.xx * x_1037) + x_1041);
        u_xlat42 = sin(u_xlat42);
        u_xlat13 = (u_xlat6.zwxy * u_xlat42.xxyy);
        u_xlat42 = (u_xlat13.zw + u_xlat13.xy);
        u_xlat11.x = (u_xlat27.x * 0.34999999403953552246f);
        u_xlat13.x = (u_xlat55 * 0.40000000596046447754f);
        u_xlat13.x = min(u_xlat13.x, 1.0f);
        u_xlat11.x = (u_xlat11.x * u_xlat13.x);
        let x_1663 = ((-(x_356.x_PlumeWind.xy) * u_xlat41.xx) + u_xlat10.xz);
        u_xlat10 = vec3f(x_1663.x, u_xlat10.y, x_1663.y);
        let x_1673 = ((-(u_xlat42) * u_xlat11.xx) + u_xlat10.xz);
        u_xlat10 = vec3f(x_1673.x, u_xlat10.y, x_1673.y);
        u_xlat11.x = dot(u_xlat10.xz, x_356.x_PlumeWind.xy);
        u_xlat41.x = (u_xlat12.x * u_xlat11.x);
        u_xlat10.x = dot(u_xlat10.xz, u_xlat6.zw);
        u_xlat40 = (u_xlat10.x * u_xlat10.x);
        u_xlat40 = ((u_xlat41.x * u_xlat41.x) + u_xlat40);
        u_xlat41.x = (u_xlat27.x * u_xlat27.x);
        u_xlat40 = (u_xlat40 / u_xlat41.x);
        u_xlatb41 = (3.20000004768371582031f >= u_xlat40);
        if (u_xlatb41) {
          u_xlat40 = (u_xlat40 * -1.80336880683898925781f);
          u_xlat40 = exp2(u_xlat40);
          u_xlat41.x = (u_xlat10.y / x_356.x_PlumeShape.z);
          u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
          u_xlat42.x = (u_xlat10.y + 0.5f);
          u_xlat42.x = (u_xlat42.x * 1.11111116409301757812f);
          u_xlat42.x = clamp(u_xlat42.x, 0.0f, 1.0f);
          u_xlat57 = ((u_xlat42.x * -2.0f) + 3.0f);
          u_xlat42.x = (u_xlat42.x * u_xlat42.x);
          u_xlat42.x = (u_xlat42.x * u_xlat57);
          u_xlat25.x = ((-(x_356.x_PlumeShape.z) * 0.34999999403953552246f) + u_xlat10.y);
          u_xlat25.x = (u_xlat48 * u_xlat25.x);
          u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
          u_xlat57 = ((u_xlat25.x * -2.0f) + 3.0f);
          u_xlat25.x = (u_xlat25.x * u_xlat25.x);
          u_xlat25.x = ((-(u_xlat57) * u_xlat25.x) + 1.0f);
          u_xlat25.x = (u_xlat25.x * u_xlat42.x);
          u_xlat27.x = (x_356.x_PlumeShape.x / u_xlat27.x);
          u_xlat27.x = clamp(u_xlat27.x, 0.0f, 1.0f);
          u_xlat27.x = log2(u_xlat27.x);
          u_xlat27.x = (u_xlat27.x * x_356.x_PlumeShape.w);
          u_xlat27.x = exp2(u_xlat27.x);
          u_xlat26.x = (u_xlat26.x * u_xlat26.x);
          u_xlat42.x = (u_xlat55 * u_xlat55);
          u_xlat26.x = (u_xlat26.x * u_xlat42.x);
          u_xlat55 = ((u_xlat26.x * 0.5625f) + u_xlat55);
          u_xlat13.x = ((x_35.x_Time.y * x_356.x_PlumeFlow.z) + u_xlat10.x);
          u_xlat13.y = ((-(u_xlat46) * x_35.x_Time.y) + u_xlat55);
          u_xlat13.z = ((u_xlat11.x * u_xlat12.x) + -(u_xlat5));
          let x_1880 = (u_xlat13.xyz / x_356.x_NoiseScale.xxx);
          u_xlat12 = vec4f(x_1880.x, u_xlat12.y, x_1880.yz);
          let x_1889 = ((x_356.x_VentPos.www * x_1302) + u_xlat12.xzw);
          u_xlat12 = vec4f(x_1889.x, u_xlat12.y, x_1889.yz);
          u_xlat10.x = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat12.xzw, 0.0f).x;
          u_xlat10.x = (-(u_xlat10.x) + 1.0f);
          u_xlat55 = ((u_xlat41.x * u_xlat20) + x_356.x_NoiseScale.z);
          u_xlat10.x = ((-(u_xlat10.x) * u_xlat55) + u_xlat40);
          u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
          u_xlat40 = ((u_xlat41.x * 0.39999997615814208984f) + 0.5f);
          u_xlat40 = (1.0f / u_xlat40);
          u_xlat10.x = (u_xlat40 * u_xlat10.x);
          u_xlat10.x = min(u_xlat10.x, 1.0f);
          u_xlat40 = ((u_xlat10.x * -2.0f) + 3.0f);
          u_xlat10.x = (u_xlat10.x * u_xlat10.x);
          u_xlat10.x = (u_xlat10.x * u_xlat40);
          u_xlat10.x = (u_xlat27.x * u_xlat10.x);
          u_xlat10.x = (u_xlat25.x * u_xlat10.x);
          u_xlat25.x = ((u_xlat56 * 0.30000001192092895508f) + 0.80000001192092895508f);
          u_xlat10.x = (u_xlat25.x * u_xlat10.x);
        } else {
          u_xlat10.x = 0.0f;
        }
      } else {
        u_xlat10.x = 0.0f;
      }
      u_xlat25 = ((x_35.x_MainLightPosition.xyz * vec3f(0.94999998807907104492f)) + u_xlat9);
      u_xlat25 = (u_xlat25 + -(x_356.x_VentPos.xyz));
      u_xlatb11 = (u_xlat25.y < -0.60000002384185791016f);
      u_xlatb26 = (x_356.x_PlumeShape.z < u_xlat25.y);
      u_xlatb11 = (u_xlatb26 | u_xlatb11);
      if (!(u_xlatb11)) {
        u_xlat11.x = max(u_xlat25.y, 0.0f);
        u_xlat26.x = (u_xlat11.x / u_xlat46);
        u_xlat26.x = (-(u_xlat26.x) + x_35.x_Time.y);
        u_xlat26.x = ((x_356.x_VentPos.w * 37.0f) + u_xlat26.x);
        u_xlat41.x = (u_xlat26.x * 0.31000000238418579102f);
        u_xlat41.x = sin(u_xlat41.x);
        u_xlat12 = vec4f((((u_xlat26.xxx * x_936) + x_939)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(sin(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xy * x_948)).xy, u_xlat12.zw);
        u_xlat41.x = ((u_xlat41.x * 0.60000002384185791016f) + u_xlat12.x);
        u_xlat41.x = ((x_356.x_PlumeFlow.w * u_xlat41.x) + 1.0f);
        u_xlat41.x = (u_xlat2.x * u_xlat41.x);
        u_xlat56 = (u_xlat11.x * u_xlat41.x);
        u_xlat12.x = sqrt(u_xlat11.x);
        u_xlat56 = (u_xlat56 * u_xlat12.x);
        u_xlat12.x = (u_xlat41.x * u_xlat12.x);
        u_xlat12.x = (u_xlat12.x * 1.5f);
        u_xlat12.x = ((u_xlat12.x * u_xlat12.x) + 1.0f);
        u_xlat12.x = inverseSqrt(u_xlat12.x);
        u_xlat27.x = ((u_xlat12.y * u_xlat12.z) + 0.5f);
        u_xlat42.x = ((x_356.x_PlumeShape.y * u_xlat11.x) + x_356.x_PlumeShape.x);
        u_xlat57 = ((u_xlat27.x * 0.40000000596046447754f) + 0.80000001192092895508f);
        u_xlat42.x = (u_xlat57 * u_xlat42.x);
        u_xlat13 = vec4f((((u_xlat26.xx * x_1037) + x_1041)).xy, u_xlat13.zw);
        u_xlat13 = vec4f(sin(u_xlat13.xy).xy, u_xlat13.zw);
        u_xlat13 = (u_xlat6.zwxy * u_xlat13.xxyy);
        u_xlat13 = vec4f(((u_xlat13.zw + u_xlat13.xy)).xy, u_xlat13.zw);
        u_xlat26.x = (u_xlat42.x * 0.34999999403953552246f);
        u_xlat57 = (u_xlat11.x * 0.40000000596046447754f);
        u_xlat57 = min(u_xlat57, 1.0f);
        u_xlat26.x = (u_xlat26.x * u_xlat57);
        let x_2182 = ((-(x_356.x_PlumeWind.xy) * vec2f(u_xlat56)) + u_xlat25.xz);
        u_xlat25 = vec3f(x_2182.x, u_xlat25.y, x_2182.y);
        let x_2193 = ((-(u_xlat13.xy) * u_xlat26.xx) + u_xlat25.xz);
        u_xlat25 = vec3f(x_2193.x, u_xlat25.y, x_2193.y);
        u_xlat26.x = dot(u_xlat25.xz, x_356.x_PlumeWind.xy);
        u_xlat56 = (u_xlat12.x * u_xlat26.x);
        u_xlat25.x = dot(u_xlat25.xz, u_xlat6.zw);
        u_xlat55 = (u_xlat25.x * u_xlat25.x);
        u_xlat55 = ((u_xlat56 * u_xlat56) + u_xlat55);
        u_xlat56 = (u_xlat42.x * u_xlat42.x);
        u_xlat55 = (u_xlat55 / u_xlat56);
        u_xlatb56 = (3.20000004768371582031f >= u_xlat55);
        if (u_xlatb56) {
          u_xlat55 = (u_xlat55 * -1.80336880683898925781f);
          u_xlat55 = exp2(u_xlat55);
          u_xlat56 = (u_xlat25.y / x_356.x_PlumeShape.z);
          u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
          u_xlat57 = (u_xlat25.y + 0.5f);
          u_xlat57 = (u_xlat57 * 1.11111116409301757812f);
          u_xlat57 = clamp(u_xlat57, 0.0f, 1.0f);
          u_xlat13.x = ((u_xlat57 * -2.0f) + 3.0f);
          u_xlat57 = (u_xlat57 * u_xlat57);
          u_xlat57 = (u_xlat57 * u_xlat13.x);
          u_xlat40 = ((-(x_356.x_PlumeShape.z) * 0.34999999403953552246f) + u_xlat25.y);
          u_xlat40 = (u_xlat48 * u_xlat40);
          u_xlat40 = clamp(u_xlat40, 0.0f, 1.0f);
          u_xlat13.x = ((u_xlat40 * -2.0f) + 3.0f);
          u_xlat40 = (u_xlat40 * u_xlat40);
          u_xlat40 = ((-(u_xlat13.x) * u_xlat40) + 1.0f);
          u_xlat40 = (u_xlat40 * u_xlat57);
          u_xlat42.x = (x_356.x_PlumeShape.x / u_xlat42.x);
          u_xlat42.x = clamp(u_xlat42.x, 0.0f, 1.0f);
          u_xlat42.x = log2(u_xlat42.x);
          u_xlat42.x = (u_xlat42.x * x_356.x_PlumeShape.w);
          u_xlat42.x = exp2(u_xlat42.x);
          u_xlat41.x = (u_xlat41.x * u_xlat41.x);
          u_xlat57 = (u_xlat11.x * u_xlat11.x);
          u_xlat41.x = (u_xlat41.x * u_xlat57);
          u_xlat11.x = ((u_xlat41.x * 0.5625f) + u_xlat11.x);
          u_xlat13.x = ((x_35.x_Time.y * x_356.x_PlumeFlow.z) + u_xlat25.x);
          u_xlat13.y = ((-(u_xlat46) * x_35.x_Time.y) + u_xlat11.x);
          u_xlat13.z = ((u_xlat26.x * u_xlat12.x) + -(u_xlat5));
          u_xlat11 = vec4f(((u_xlat13.xyz / x_356.x_NoiseScale.xxx)).xyz, u_xlat11.w);
          u_xlat11 = vec4f((((x_356.x_VentPos.www * x_1302) + u_xlat11.xyz)).xyz, u_xlat11.w);
          u_xlat25.x = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat11.xyz, 0.0f).x;
          u_xlat25.x = (-(u_xlat25.x) + 1.0f);
          u_xlat11.x = ((u_xlat56 * u_xlat20) + x_356.x_NoiseScale.z);
          u_xlat25.x = ((-(u_xlat25.x) * u_xlat11.x) + u_xlat55);
          u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
          u_xlat55 = ((u_xlat56 * 0.39999997615814208984f) + 0.5f);
          u_xlat55 = (1.0f / u_xlat55);
          u_xlat25.x = (u_xlat55 * u_xlat25.x);
          u_xlat25.x = min(u_xlat25.x, 1.0f);
          u_xlat55 = ((u_xlat25.x * -2.0f) + 3.0f);
          u_xlat25.x = (u_xlat25.x * u_xlat25.x);
          u_xlat25.x = (u_xlat25.x * u_xlat55);
          u_xlat25.x = (u_xlat42.x * u_xlat25.x);
          u_xlat25.x = (u_xlat40 * u_xlat25.x);
          u_xlat40 = ((u_xlat27.x * 0.30000001192092895508f) + 0.80000001192092895508f);
          u_xlat25.x = (u_xlat40 * u_xlat25.x);
        } else {
          u_xlat25.x = 0.0f;
        }
      } else {
        u_xlat25.x = 0.0f;
      }
      u_xlat25.x = (u_xlat25.x * 0.60000002384185791016f);
      u_xlat10.x = ((u_xlat10.x * 0.34999999403953552246f) + u_xlat25.x);
      u_xlat25 = ((x_35.x_MainLightPosition.xyz * vec3f(1.89999997615814208984f)) + u_xlat9);
      u_xlat25 = (u_xlat25 + -(x_356.x_VentPos.xyz));
      u_xlatb11 = (u_xlat25.y < -0.60000002384185791016f);
      u_xlatb26 = (x_356.x_PlumeShape.z < u_xlat25.y);
      u_xlatb11 = (u_xlatb26 | u_xlatb11);
      if (!(u_xlatb11)) {
        u_xlat11.x = max(u_xlat25.y, 0.0f);
        u_xlat26.x = (u_xlat11.x / u_xlat46);
        u_xlat26.x = (-(u_xlat26.x) + x_35.x_Time.y);
        u_xlat26.x = ((x_356.x_VentPos.w * 37.0f) + u_xlat26.x);
        u_xlat41.x = (u_xlat26.x * 0.31000000238418579102f);
        u_xlat41.x = sin(u_xlat41.x);
        u_xlat12 = vec4f((((u_xlat26.xxx * x_936) + x_939)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(sin(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xy * x_948)).xy, u_xlat12.zw);
        u_xlat41.x = ((u_xlat41.x * 0.60000002384185791016f) + u_xlat12.x);
        u_xlat41.x = ((x_356.x_PlumeFlow.w * u_xlat41.x) + 1.0f);
        u_xlat41.x = (u_xlat2.x * u_xlat41.x);
        u_xlat56 = (u_xlat11.x * u_xlat41.x);
        u_xlat12.x = sqrt(u_xlat11.x);
        u_xlat56 = (u_xlat56 * u_xlat12.x);
        u_xlat12.x = (u_xlat41.x * u_xlat12.x);
        u_xlat12.x = (u_xlat12.x * 1.5f);
        u_xlat12.x = ((u_xlat12.x * u_xlat12.x) + 1.0f);
        u_xlat12.x = inverseSqrt(u_xlat12.x);
        u_xlat27.x = ((u_xlat12.y * u_xlat12.z) + 0.5f);
        u_xlat42.x = ((x_356.x_PlumeShape.y * u_xlat11.x) + x_356.x_PlumeShape.x);
        u_xlat57 = ((u_xlat27.x * 0.40000000596046447754f) + 0.80000001192092895508f);
        u_xlat42.x = (u_xlat57 * u_xlat42.x);
        u_xlat13 = vec4f((((u_xlat26.xx * x_1037) + x_1041)).xy, u_xlat13.zw);
        u_xlat13 = vec4f(sin(u_xlat13.xy).xy, u_xlat13.zw);
        u_xlat13 = (u_xlat6.zwxy * u_xlat13.xxyy);
        u_xlat13 = vec4f(((u_xlat13.zw + u_xlat13.xy)).xy, u_xlat13.zw);
        u_xlat26.x = (u_xlat42.x * 0.34999999403953552246f);
        u_xlat57 = (u_xlat11.x * 0.40000000596046447754f);
        u_xlat57 = min(u_xlat57, 1.0f);
        u_xlat26.x = (u_xlat26.x * u_xlat57);
        let x_2684 = ((-(x_356.x_PlumeWind.xy) * vec2f(u_xlat56)) + u_xlat25.xz);
        u_xlat25 = vec3f(x_2684.x, u_xlat25.y, x_2684.y);
        let x_2695 = ((-(u_xlat13.xy) * u_xlat26.xx) + u_xlat25.xz);
        u_xlat25 = vec3f(x_2695.x, u_xlat25.y, x_2695.y);
        u_xlat26.x = dot(u_xlat25.xz, x_356.x_PlumeWind.xy);
        u_xlat56 = (u_xlat12.x * u_xlat26.x);
        u_xlat25.x = dot(u_xlat25.xz, u_xlat6.zw);
        u_xlat55 = (u_xlat25.x * u_xlat25.x);
        u_xlat55 = ((u_xlat56 * u_xlat56) + u_xlat55);
        u_xlat56 = (u_xlat42.x * u_xlat42.x);
        u_xlat55 = (u_xlat55 / u_xlat56);
        u_xlatb56 = (3.20000004768371582031f >= u_xlat55);
        if (u_xlatb56) {
          u_xlat55 = (u_xlat55 * -1.80336880683898925781f);
          u_xlat55 = exp2(u_xlat55);
          u_xlat56 = (u_xlat25.y / x_356.x_PlumeShape.z);
          u_xlat56 = clamp(u_xlat56, 0.0f, 1.0f);
          u_xlat57 = (u_xlat25.y + 0.5f);
          u_xlat57 = (u_xlat57 * 1.11111116409301757812f);
          u_xlat57 = clamp(u_xlat57, 0.0f, 1.0f);
          u_xlat13.x = ((u_xlat57 * -2.0f) + 3.0f);
          u_xlat57 = (u_xlat57 * u_xlat57);
          u_xlat57 = (u_xlat57 * u_xlat13.x);
          u_xlat40 = ((-(x_356.x_PlumeShape.z) * 0.34999999403953552246f) + u_xlat25.y);
          u_xlat40 = (u_xlat48 * u_xlat40);
          u_xlat40 = clamp(u_xlat40, 0.0f, 1.0f);
          u_xlat13.x = ((u_xlat40 * -2.0f) + 3.0f);
          u_xlat40 = (u_xlat40 * u_xlat40);
          u_xlat40 = ((-(u_xlat13.x) * u_xlat40) + 1.0f);
          u_xlat40 = (u_xlat40 * u_xlat57);
          u_xlat42.x = (x_356.x_PlumeShape.x / u_xlat42.x);
          u_xlat42.x = clamp(u_xlat42.x, 0.0f, 1.0f);
          u_xlat42.x = log2(u_xlat42.x);
          u_xlat42.x = (u_xlat42.x * x_356.x_PlumeShape.w);
          u_xlat42.x = exp2(u_xlat42.x);
          u_xlat41.x = (u_xlat41.x * u_xlat41.x);
          u_xlat57 = (u_xlat11.x * u_xlat11.x);
          u_xlat41.x = (u_xlat41.x * u_xlat57);
          u_xlat11.x = ((u_xlat41.x * 0.5625f) + u_xlat11.x);
          u_xlat13.x = ((x_35.x_Time.y * x_356.x_PlumeFlow.z) + u_xlat25.x);
          u_xlat13.y = ((-(u_xlat46) * x_35.x_Time.y) + u_xlat11.x);
          u_xlat13.z = ((u_xlat26.x * u_xlat12.x) + -(u_xlat5));
          u_xlat11 = vec4f(((u_xlat13.xyz / x_356.x_NoiseScale.xxx)).xyz, u_xlat11.w);
          u_xlat11 = vec4f((((x_356.x_VentPos.www * x_1302) + u_xlat11.xyz)).xyz, u_xlat11.w);
          u_xlat25.x = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat11.xyz, 0.0f).x;
          u_xlat25.x = (-(u_xlat25.x) + 1.0f);
          u_xlat11.x = ((u_xlat56 * u_xlat20) + x_356.x_NoiseScale.z);
          u_xlat25.x = ((-(u_xlat25.x) * u_xlat11.x) + u_xlat55);
          u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
          u_xlat55 = ((u_xlat56 * 0.39999997615814208984f) + 0.5f);
          u_xlat55 = (1.0f / u_xlat55);
          u_xlat25.x = (u_xlat55 * u_xlat25.x);
          u_xlat25.x = min(u_xlat25.x, 1.0f);
          u_xlat55 = ((u_xlat25.x * -2.0f) + 3.0f);
          u_xlat25.x = (u_xlat25.x * u_xlat25.x);
          u_xlat25.x = (u_xlat25.x * u_xlat55);
          u_xlat25.x = (u_xlat42.x * u_xlat25.x);
          u_xlat25.x = (u_xlat40 * u_xlat25.x);
          u_xlat40 = ((u_xlat27.x * 0.30000001192092895508f) + 0.80000001192092895508f);
          u_xlat25.x = (u_xlat40 * u_xlat25.x);
        } else {
          u_xlat25.x = 0.0f;
        }
      } else {
        u_xlat25.x = 0.0f;
      }
      u_xlat10.x = ((u_xlat25.x * 0.94999998807907104492f) + u_xlat10.x);
      u_xlat10.x = (u_xlat10.x * x_356.x_Density);
      u_xlat10 = vec3f(((u_xlat10.xx * vec2f(-1.44269502162933349609f, -0.36067375540733337402f))).xy, u_xlat10.z);
      u_xlat10 = vec3f(exp2(u_xlat10.xy).xy, u_xlat10.z);
      u_xlat25.x = (u_xlat10.y * x_356.x_Lighting.w);
      u_xlat10.x = ((u_xlat10.x * 0.75f) + u_xlat25.x);
      u_xlat11 = (u_xlat7.yzwx + u_xlat9.xyzy);
      u_xlat9 = vec3f(((u_xlat11.xz + -(x_356.x_VentPos.xz))).xy, u_xlat9.z);
      u_xlat39 = (u_xlat11.y + 0.80000001192092895508f);
      u_xlatb25 = (u_xlat39 < -0.60000002384185791016f);
      u_xlatb40 = (x_356.x_PlumeShape.z < u_xlat39);
      u_xlatb25 = (u_xlatb40 | u_xlatb25);
      if (!(u_xlatb25)) {
        u_xlat25.x = max(u_xlat39, 0.0f);
        u_xlat40 = (u_xlat25.x / u_xlat46);
        u_xlat40 = (-(u_xlat40) + x_35.x_Time.y);
        u_xlat40 = ((x_356.x_VentPos.w * 37.0f) + u_xlat40);
        u_xlat55 = (u_xlat40 * 0.31000000238418579102f);
        u_xlat55 = sin(u_xlat55);
        u_xlat12 = vec4f((((vec3f(u_xlat40) * x_936) + x_939)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(sin(u_xlat12.xyz).xyz, u_xlat12.w);
        let x_3079 = (u_xlat12.xy * x_948);
        u_xlat11 = vec4f(x_3079.x, u_xlat11.y, x_3079.y, u_xlat11.w);
        u_xlat55 = ((u_xlat55 * 0.60000002384185791016f) + u_xlat11.x);
        u_xlat55 = ((x_356.x_PlumeFlow.w * u_xlat55) + 1.0f);
        u_xlat55 = (u_xlat2.x * u_xlat55);
        u_xlat11.x = (u_xlat25.x * u_xlat55);
        u_xlat12.x = sqrt(u_xlat25.x);
        u_xlat11.x = (u_xlat11.x * u_xlat12.x);
        u_xlat12.x = (u_xlat55 * u_xlat12.x);
        u_xlat12.x = (u_xlat12.x * 1.5f);
        u_xlat12.x = ((u_xlat12.x * u_xlat12.x) + 1.0f);
        u_xlat12.x = inverseSqrt(u_xlat12.x);
        u_xlat41.x = ((u_xlat11.z * u_xlat12.z) + 0.5f);
        u_xlat27.x = ((x_356.x_PlumeShape.y * u_xlat25.x) + x_356.x_PlumeShape.x);
        u_xlat42.x = ((u_xlat41.x * 0.40000000596046447754f) + 0.80000001192092895508f);
        u_xlat27.x = (u_xlat42.x * u_xlat27.x);
        u_xlat42 = ((vec2f(u_xlat40) * x_1037) + x_1041);
        u_xlat42 = sin(u_xlat42);
        u_xlat13 = (u_xlat6.zwxy * u_xlat42.xxyy);
        u_xlat42 = (u_xlat13.zw + u_xlat13.xy);
        u_xlat40 = (u_xlat27.x * 0.34999999403953552246f);
        u_xlat13.x = (u_xlat25.x * 0.40000000596046447754f);
        u_xlat13.x = min(u_xlat13.x, 1.0f);
        u_xlat40 = (u_xlat40 * u_xlat13.x);
        u_xlat9 = vec3f((((-(x_356.x_PlumeWind.xy) * u_xlat11.xx) + u_xlat9.xy)).xy, u_xlat9.z);
        u_xlat9 = vec3f((((-(u_xlat42) * vec2f(u_xlat40)) + u_xlat9.xy)).xy, u_xlat9.z);
        u_xlat40 = dot(u_xlat9.xy, x_356.x_PlumeWind.xy);
        u_xlat11.x = (u_xlat12.x * u_xlat40);
        u_xlat9.x = dot(u_xlat9.xy, u_xlat6.zw);
        u_xlat24 = (u_xlat9.x * u_xlat9.x);
        u_xlat24 = ((u_xlat11.x * u_xlat11.x) + u_xlat24);
        u_xlat11.x = (u_xlat27.x * u_xlat27.x);
        u_xlat24 = (u_xlat24 / u_xlat11.x);
        u_xlatb11 = (3.20000004768371582031f >= u_xlat24);
        if (u_xlatb11) {
          u_xlat24 = (u_xlat24 * -1.80336880683898925781f);
          u_xlat24 = exp2(u_xlat24);
          u_xlat11.x = (u_xlat39 / x_356.x_PlumeShape.z);
          u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
          u_xlat26.x = (u_xlat11.y + 1.29999995231628417969f);
          u_xlat26.x = (u_xlat26.x * 1.11111116409301757812f);
          u_xlat26.x = clamp(u_xlat26.x, 0.0f, 1.0f);
          u_xlat42.x = ((u_xlat26.x * -2.0f) + 3.0f);
          u_xlat26.x = (u_xlat26.x * u_xlat26.x);
          u_xlat26.x = (u_xlat26.x * u_xlat42.x);
          u_xlat39 = ((-(x_356.x_PlumeShape.z) * 0.34999999403953552246f) + u_xlat39);
          u_xlat39 = (u_xlat48 * u_xlat39);
          u_xlat39 = clamp(u_xlat39, 0.0f, 1.0f);
          u_xlat42.x = ((u_xlat39 * -2.0f) + 3.0f);
          u_xlat39 = (u_xlat39 * u_xlat39);
          u_xlat39 = ((-(u_xlat42.x) * u_xlat39) + 1.0f);
          u_xlat39 = (u_xlat39 * u_xlat26.x);
          u_xlat26.x = (x_356.x_PlumeShape.x / u_xlat27.x);
          u_xlat26.x = clamp(u_xlat26.x, 0.0f, 1.0f);
          u_xlat26.x = log2(u_xlat26.x);
          u_xlat26.x = (u_xlat26.x * x_356.x_PlumeShape.w);
          u_xlat26.x = exp2(u_xlat26.x);
          u_xlat55 = (u_xlat55 * u_xlat55);
          u_xlat27.x = (u_xlat25.x * u_xlat25.x);
          u_xlat55 = (u_xlat55 * u_xlat27.x);
          u_xlat25.x = ((u_xlat55 * 0.5625f) + u_xlat25.x);
          u_xlat13.x = ((x_35.x_Time.y * x_356.x_PlumeFlow.z) + u_xlat9.x);
          u_xlat13.y = ((-(u_xlat46) * x_35.x_Time.y) + u_xlat25.x);
          u_xlat13.z = ((u_xlat40 * u_xlat12.x) + -(u_xlat5));
          u_xlat25 = (u_xlat13.xyz / x_356.x_NoiseScale.xxx);
          u_xlat25 = ((x_356.x_VentPos.www * x_1302) + u_xlat25);
          u_xlat9.x = textureSampleLevel(x_Noise3D, sampler_Noise3D, u_xlat25, 0.0f).x;
          u_xlat9.x = (-(u_xlat9.x) + 1.0f);
          u_xlat25.x = ((u_xlat11.x * u_xlat20) + x_356.x_NoiseScale.z);
          u_xlat9.x = ((-(u_xlat9.x) * u_xlat25.x) + u_xlat24);
          u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
          u_xlat24 = ((u_xlat11.x * 0.39999997615814208984f) + 0.5f);
          u_xlat24 = (1.0f / u_xlat24);
          u_xlat9.x = (u_xlat24 * u_xlat9.x);
          u_xlat9.x = min(u_xlat9.x, 1.0f);
          u_xlat24 = ((u_xlat9.x * -2.0f) + 3.0f);
          u_xlat9.x = (u_xlat9.x * u_xlat9.x);
          u_xlat9.x = (u_xlat9.x * u_xlat24);
          u_xlat9.x = (u_xlat26.x * u_xlat9.x);
          u_xlat9.x = (u_xlat39 * u_xlat9.x);
          u_xlat24 = ((u_xlat41.x * 0.30000001192092895508f) + 0.80000001192092895508f);
          u_xlat9.x = (u_xlat24 * u_xlat9.x);
        } else {
          u_xlat9.x = 0.0f;
        }
      } else {
        u_xlat9.x = 0.0f;
      }
      u_xlat9.x = (u_xlat9.x * x_356.x_Density);
      u_xlat9.x = (u_xlat9.x * -0.92332488298416137695f);
      u_xlat9.x = exp2(u_xlat9.x);
      u_xlat9 = vec3f((((u_xlat9.xx * vec2f(0.55000001192092895508f, 0.44999998807907104492f)) + vec2f(0.44999998807907104492f, 0.55000001192092895508f))).xy, u_xlat9.z);
      u_xlat25 = ((u_xlat9.xxx * u_xlat3) + u_xlat4);
      u_xlat9 = (u_xlat9.yyy * u_xlat25);
      u_xlat25.x = max(u_xlat11.w, 0.0f);
      u_xlat25.x = (-(u_xlat25.x) / u_xlat35);
      u_xlat25.x = (u_xlat25.x * 1.44269502162933349609f);
      u_xlat25.x = exp2(u_xlat25.x);
      u_xlat9 = ((u_xlat17 * u_xlat10.xxx) + u_xlat9);
      u_xlat9 = ((x_356.x_PlumeGlow.xyz * u_xlat25.xxx) + u_xlat9);
      u_xlat9 = (u_xlat9 * x_356.x_Albedo.xyz);
      u_xlat54 = (-(u_xlat54) * x_356.x_Density);
      u_xlat54 = (u_xlat1.x * u_xlat54);
      u_xlat54 = (u_xlat54 * 1.44269502162933349609f);
      u_xlat54 = exp2(u_xlat54);
      u_xlat9 = (u_xlat16.xxx * u_xlat9);
      u_xlat10.x = (-(u_xlat54) + 1.0f);
      u_xlat9 = ((u_xlat9 * u_xlat10.xxx) + u_xlat8.xyz);
      u_xlat54 = (u_xlat16.x * u_xlat54);
      u_xlatb10 = (u_xlat54 < 0.01499999966472387314f);
      if (u_xlatb10) {
        u_xlat8 = vec4f(u_xlat9.xyz, u_xlat8.w);
        u_xlat16.x = u_xlat54;
        break;
      }
      u_xlat8 = vec4f(u_xlat9.xyz, u_xlat8.w);
      u_xlat16.x = u_xlat54;
    }

    continuing {
      u_xlati_loop_2 = (u_xlati_loop_2 + 1i);
    }
  }
  u_xlat8.w = (-(u_xlat16.x) + 1.0f);
  u_xlatb0 = (u_xlat8.w < 0.00200000009499490261f);
  if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
    discard;
  }
  SV_Target0 = u_xlat8;
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

