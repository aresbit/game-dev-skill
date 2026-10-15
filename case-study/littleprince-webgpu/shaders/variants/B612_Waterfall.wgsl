//Assets/Levels/B612/Shaders/B612_Waterfall.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_Color : vec4f,
  /* @offset(16) */
  x_Speed : f32,
  /* @offset(20) */
  Xhlslcc_UnusedX_Opacity : f32,
  /* @offset(24) */
  Xhlslcc_UnusedX_Length : f32,
  /* @offset(28) */
  Xhlslcc_UnusedX_BottomFade : f32,
  /* @offset(32) */
  Xhlslcc_UnusedX_SheetThickness : f32,
  /* @offset(36) */
  x_WindDrift : f32,
  /* @offset(48) */
  Xhlslcc_UnusedX_Tile : vec4f,
  /* @offset(64) */
  x_Zones : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_Reflection : f32,
}

alias Arr = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr,
  /* @offset(96) */
  x_B612WindDirection : vec4f,
  /* @offset(112) */
  x_B612WindTime : vec4f,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 2u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr_1,
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

@group(1) @binding(2) var<uniform> x_12 : UnityPerMaterial;

var<private> in_TEXCOORD0 : vec2f;

@group(1) @binding(3) var<uniform> x_84 : VGlobals;

var<private> in_TEXCOORD1 : vec2f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_183 : UnityPerDraw;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD3 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat3 : vec2f;
  var u_xlatb3 : bool;
  var x_90 : f32;
  var u_xlat9 : f32;
  var u_xlatb1 : vec2<bool>;
  var x_129 : f32;
  var x_141 : f32;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = (-(x_12.x_Zones.y) + x_12.x_Zones.z);
  u_xlat0.x = (1.0f / u_xlat0.x);
  u_xlat3.x = (in_TEXCOORD0.y + -(x_12.x_Zones.y));
  u_xlat0.x = (u_xlat0.x * u_xlat3.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat3.x = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat3.x);
  u_xlatb3 = (0.5f < x_84.x_B612WindTime.z);
  if (u_xlatb3) {
    x_90 = x_84.x_B612WindDirection.w;
  } else {
    x_90 = 1.0f;
  }
  u_xlat3.x = x_90;
  u_xlat3 = (u_xlat3.xx * x_84.x_B612WindDirection.xz);
  u_xlat9 = max(x_12.x_Speed, 0.10000000149011611938f);
  u_xlat9 = (in_TEXCOORD0.y / u_xlat9);
  u_xlatb1 = ((vec4f() < in_TEXCOORD1.xyxx)).xy;
  if (u_xlatb1.x) {
    x_129 = in_TEXCOORD1.x;
  } else {
    x_129 = u_xlat9;
  }
  u_xlat9 = x_129;
  if (u_xlatb1.y) {
    x_141 = in_TEXCOORD1.y;
  } else {
    x_141 = x_12.x_Speed;
  }
  vs_TEXCOORD2.w = x_141;
  u_xlat1.x = (u_xlat9 * u_xlat9);
  vs_TEXCOORD2.z = u_xlat9;
  u_xlat9 = (u_xlat1.x * x_12.x_WindDrift);
  u_xlat9 = (u_xlat9 * 0.5f);
  u_xlat3 = (vec2f(u_xlat9) * u_xlat3);
  u_xlat1 = vec4f(((in_POSITION0.yyy * x_183.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_183.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_183.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_183.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f((((u_xlat3 * u_xlat0.xx) + u_xlat1.xz)).xy, u_xlat0.zw);
  u_xlat2 = (u_xlat1.yyyy * x_84.hlslcc_mtx4x4unity_MatrixVP[1i]);
  vs_TEXCOORD0.y = u_xlat1.y;
  u_xlat1 = ((x_84.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat2);
  u_xlat1 = ((x_84.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.yyyy) + u_xlat1);
  let x_257 = u_xlat0.xy;
  vs_TEXCOORD0 = vec3f(x_257.x, vs_TEXCOORD0.y, x_257.y);
  u_xlat0 = (u_xlat1 + x_84.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.x = (u_xlat0.z / x_84.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_84.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  vs_TEXCOORD3 = (u_xlat0.x * x_84.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_183.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_183.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_183.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat9 = max(u_xlat9, 1.17549435e-38f);
  u_xlat9 = inverseSqrt(u_xlat9);
  vs_TEXCOORD1 = (vec3f(u_xlat9) * u_xlat0.xyz);
  vs_TEXCOORD2 = vec4f(in_TEXCOORD0.xy, vs_TEXCOORD2.zw);
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD2_1 : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(2)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2f, @location(3) in_TEXCOORD1_param : vec2f, @location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, vs_TEXCOORD0, gl_Position, vs_TEXCOORD3, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Waterfall.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Color : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_Speed : f32,
  /* @offset(20) */
  x_Opacity : f32,
  /* @offset(24) */
  x_Length : f32,
  /* @offset(28) */
  x_BottomFade : f32,
  /* @offset(32) */
  x_SheetThickness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_WindDrift : f32,
  /* @offset(48) */
  x_Tile : vec4f,
  /* @offset(64) */
  x_Zones : vec4f,
  /* @offset(80) */
  x_Reflection : f32,
}

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_MainLightPosition : vec4f,
  /* @offset(48) */
  x_MainLightColor : vec4f,
  /* @offset(64) */
  x_Time : vec4f,
  /* @offset(80) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(96) */
  unity_OrthoParams : vec4f,
  /* @offset(112) */
  unity_FogColor : vec4f,
  /* @offset(128) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
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
  unity_SpecCube0_HDR : vec4f,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4f,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4f,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4f,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4f,
  /* @offset(320) */
  Xhlslcc_UnusedXunity_SpecCube0_Rotation : vec4f,
  /* @offset(336) */
  unity_SpecCube1_BoxMax : vec4f,
  /* @offset(352) */
  unity_SpecCube1_BoxMin : vec4f,
  /* @offset(368) */
  unity_SpecCube1_ProbePosition : vec4f,
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

var<private> vs_TEXCOORD2 : vec4f;

@group(1) @binding(2) var<uniform> x_28 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_47 : PGlobals;

@group(0) @binding(3) var x_StreakTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_StreakTex : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(1) var<uniform> x_765 : UnityPerDraw;

@group(0) @binding(1) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_SpecCube1 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube1 : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(4) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> vs_TEXCOORD3 : f32;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat8 : vec3f;
  var u_xlat2 : vec2f;
  var u_xlat16 : f32;
  var u_xlat3 : vec4f;
  var u_xlat18 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlat26 : f32;
  var u_xlat11 : vec3f;
  var u_xlat19 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat25 : f32;
  var u_xlat17 : f32;
  var u_xlat24 : f32;
  var u_xlatb0 : bool;
  var u_xlat5 : vec4f;
  var x_645 : f32;
  var x_657 : f32;
  var x_668 : f32;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec3f;
  var u_xlatb18 : bool;
  var u_xlatb26 : bool;
  var u_xlatb11 : bool;
  var u_xlatb10 : bool;
  var x_1077 : f32;
  var x_1094 : f32;
  var u_xlatb4 : vec3<bool>;
  var x_1140 : f32;
  var x_1152 : f32;
  var x_1164 : f32;
  var u_xlat12 : vec3f;
  var x_1217 : vec3f;
  var u_xlatb5 : vec3<bool>;
  var x_1310 : f32;
  var x_1322 : f32;
  var x_1334 : f32;
  var x_1389 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = ((vs_TEXCOORD2.x * 2.0f) + -1.0f);
  u_xlat1.x = (vs_TEXCOORD2.x * x_28.x_Tile.x);
  u_xlat8.x = (vs_TEXCOORD2.z + -(x_47.x_Time.y));
  u_xlat1.y = (u_xlat8.x / x_28.x_Tile.y);
  u_xlat2.x = ((u_xlat1.x * 1.89999997615814208984f) + 0.31000000238418579102f);
  u_xlat8.x = ((-(x_47.x_Time.y) * 1.07000005245208740234f) + vs_TEXCOORD2.z);
  u_xlat16 = (x_28.x_Tile.y * 0.55000001192092895508f);
  u_xlat2.y = (u_xlat8.x / u_xlat16);
  let x_99 = u_xlat1;
  let x_103 = x_47.x_GlobalMipBias.x;
  let x_104 = textureSampleBias(x_StreakTex, sampler_StreakTex, x_99.xy, x_103);
  u_xlat8 = x_104.xyw;
  let x_109 = u_xlat2;
  let x_111 = x_47.x_GlobalMipBias.x;
  let x_112 = textureSampleBias(x_StreakTex, sampler_StreakTex, x_109, x_111);
  u_xlat1 = x_112;
  u_xlat2 = (x_28.x_Zones.xy * vec2f(0.5f, 0.49999994039535522461f));
  u_xlat3 = vec4f((((-(x_28.x_Zones.xyz) * vec3f(0.5f, 0.80000001192092895508f, 0.85000002384185791016f)) + vs_TEXCOORD2.yyy)).xyz, u_xlat3.w);
  u_xlat2 = (vec2f(1.0f) / u_xlat2);
  u_xlat2 = (u_xlat2 * u_xlat3.xy);
  u_xlat2 = clamp(u_xlat2, vec2f(0.0f), vec2f(1.0f));
  u_xlat18 = ((u_xlat2 * vec2f(-2.0f)) + vec2f(3.0f));
  u_xlat2 = (u_xlat2 * u_xlat2);
  u_xlat10.x = (u_xlat2.y * u_xlat18.y);
  u_xlat2.x = ((-(u_xlat18.x) * u_xlat2.x) + 1.0f);
  u_xlat18.x = (x_28.x_Zones.z * 0.39999997615814208984f);
  u_xlat18.x = (1.0f / u_xlat18.x);
  u_xlat18.x = (u_xlat18.x * u_xlat3.z);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat26 = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat3.x = (u_xlat18.x * u_xlat26);
  u_xlat11.x = (x_28.x_SheetThickness * 181.81817626953125f);
  u_xlat19.x = max(vs_TEXCOORD2.w, 0.5f);
  u_xlat19.x = (3.0f / u_xlat19.x);
  u_xlat11.x = (u_xlat19.x * u_xlat11.x);
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat4 = vec4f(((u_xlat1.xyw * vec3f(0.5f, 0.40000000596046447754f, 0.40000000596046447754f))).xyz, u_xlat4.w);
  u_xlat8 = ((u_xlat8 * vec3f(0.69999998807907104492f, 0.60000002384185791016f, 0.60000002384185791016f)) + u_xlat4.xyz);
  u_xlat8.x = u_xlat8.x;
  u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
  u_xlat9.x = ((-(x_28.x_Zones.x) * 0.60000002384185791016f) + x_28.x_Zones.y);
  u_xlat25 = ((-(x_28.x_Zones.x) * 0.60000002384185791016f) + vs_TEXCOORD2.y);
  u_xlat9.x = (1.0f / u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat25);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat25 = ((u_xlat9.x * -2.0f) + 3.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat25);
  u_xlat19 = (u_xlat8.xx * vec2f(0.11999999731779098511f, 0.87999999523162841797f));
  u_xlat8.x = ((u_xlat9.x * u_xlat19.y) + u_xlat19.x);
  u_xlat16 = (u_xlat8.y + -0.21999999880790710449f);
  u_xlat16 = (u_xlat16 * 2.77777767181396484375f);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat16 = (u_xlat16 + -1.0f);
  u_xlat16 = ((u_xlat10.x * u_xlat16) + 1.0f);
  u_xlat9.x = (u_xlat1.z * u_xlat10.x);
  u_xlat17 = ((-(u_xlat3.x) * 0.5f) + 1.0f);
  u_xlat25 = (u_xlat17 * u_xlat9.x);
  u_xlat19 = (vs_TEXCOORD2.yy / x_28.x_Zones.yx);
  u_xlat19 = clamp(u_xlat19, vec2f(0.0f), vec2f(1.0f));
  u_xlat10.x = ((-(u_xlat19.x) * 0.30000001192092895508f) + 0.62000000476837158203f);
  u_xlat1.x = ((-(u_xlat1.x) * 0.18000000715255737305f) + u_xlat10.x);
  u_xlat10.x = (-(u_xlat1.x) + 1.0f);
  u_xlat0.x = (abs(u_xlat0.x) + -(u_xlat1.x));
  u_xlat1.x = (1.0f / u_xlat10.x);
  u_xlat0.x = (u_xlat0.x * u_xlat1.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat1.x) * u_xlat0.x) + 1.0f);
  u_xlat1.x = ((u_xlat11.x * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat11 = vec3f((((u_xlat8.xx * vec2f(-0.19999998807907104492f, 0.55000001192092895508f)) + vec2f(1.0f, 0.44999998807907104492f))).xy, u_xlat11.z);
  u_xlat10.x = (u_xlat1.x * u_xlat11.x);
  u_xlat1.x = ((-(u_xlat1.x) * u_xlat11.x) + u_xlat11.y);
  u_xlat1.x = ((u_xlat19.y * u_xlat1.x) + u_xlat10.x);
  u_xlat16 = (u_xlat16 * u_xlat1.x);
  u_xlat1.x = (u_xlat25 * 0.80000001192092895508f);
  u_xlat16 = max(u_xlat16, u_xlat1.x);
  u_xlat24 = ((u_xlat8.z * 0.44999998807907104492f) + -(u_xlat16));
  u_xlat16 = ((u_xlat3.x * u_xlat24) + u_xlat16);
  u_xlat24 = (vs_TEXCOORD2.y * 12.5f);
  u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat24 * -2.0f) + 3.0f);
  u_xlat24 = (u_xlat24 * u_xlat24);
  u_xlat24 = (u_xlat24 * u_xlat1.x);
  u_xlat1.x = (-(x_28.x_BottomFade) + 1.0f);
  u_xlat25 = ((-(x_28.x_Length) * u_xlat1.x) + x_28.x_Length);
  u_xlat1.x = ((-(x_28.x_Length) * u_xlat1.x) + vs_TEXCOORD2.y);
  u_xlat25 = (1.0f / u_xlat25);
  u_xlat1.x = (u_xlat25 * u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat25 = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat25) * u_xlat1.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat16);
  u_xlat0.x = (u_xlat24 * u_xlat0.x);
  u_xlat0.x = (u_xlat1.x * u_xlat0.x);
  SV_Target0.w = (u_xlat0.x * x_28.x_Opacity);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_602 = (u_xlat0.xxx * vs_TEXCOORD1);
  u_xlat0 = vec4f(x_602.x, u_xlat0.y, x_602.yz);
  u_xlat1.x = select(-1.0f, 1.0f, (select(0u, 4294967295u, gl_FrontFacing) != 0u));
  u_xlat4 = vec4f(((u_xlat0.xzw * u_xlat1.xxx)).xyz, u_xlat4.w);
  u_xlatb0 = (x_47.unity_OrthoParams.w == 0.0f);
  u_xlat11 = (-(vs_TEXCOORD0) + x_47.x_WorldSpaceCameraPos);
  u_xlat16 = dot(u_xlat11, u_xlat11);
  u_xlat16 = inverseSqrt(u_xlat16);
  u_xlat11 = (vec3f(u_xlat16) * u_xlat11);
  if (u_xlatb0) {
    x_645 = u_xlat11.x;
  } else {
    x_645 = x_47.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  u_xlat5.x = x_645;
  if (u_xlatb0) {
    x_657 = u_xlat11.y;
  } else {
    x_657 = x_47.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  u_xlat5.y = x_657;
  if (u_xlatb0) {
    x_668 = u_xlat11.z;
  } else {
    x_668 = x_47.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  u_xlat5.z = x_668;
  u_xlat0.x = dot(u_xlat4.xyz, x_47.x_MainLightPosition.xyz);
  u_xlat0.x = (u_xlat0.x + 0.60000002384185791016f);
  u_xlat0.x = (u_xlat0.x * 0.625f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat16 = dot(-(u_xlat5.xyz), x_47.x_MainLightPosition.xyz);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat16 = (u_xlat16 * u_xlat16);
  u_xlat16 = (u_xlat16 * u_xlat16);
  u_xlat24 = ((u_xlat3.x * 0.80000001192092895508f) + 0.60000002384185791016f);
  u_xlat1.x = ((u_xlat9.x * u_xlat17) + u_xlat8.x);
  u_xlat1.x = ((u_xlat26 * u_xlat18.x) + u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat0.x = ((u_xlat16 * u_xlat24) + u_xlat0.x);
  let x_749 = (u_xlat0.xxx * x_47.x_MainLightColor.xyz);
  u_xlat0 = vec4f(x_749.x, u_xlat0.y, x_749.yz);
  u_xlat1.x = ((u_xlat1.x * 0.5f) + 0.5f);
  u_xlat4.w = 1.0f;
  u_xlat3.x = dot(x_765.unity_SHAr, u_xlat4);
  u_xlat3.y = dot(x_765.unity_SHAg, u_xlat4);
  u_xlat3.z = dot(x_765.unity_SHAb, u_xlat4);
  u_xlat6 = (u_xlat4.yzzx * u_xlat4.xyzz);
  u_xlat7.x = dot(x_765.unity_SHBr, u_xlat6);
  u_xlat7.y = dot(x_765.unity_SHBg, u_xlat6);
  u_xlat7.z = dot(x_765.unity_SHBb, u_xlat6);
  u_xlat9.x = (u_xlat4.y * u_xlat4.y);
  u_xlat9.x = ((u_xlat4.x * u_xlat4.x) + -(u_xlat9.x));
  u_xlat9 = ((x_765.unity_SHC.xyz * u_xlat9.xxx) + u_xlat7);
  u_xlat9 = (u_xlat9 + u_xlat3.xyz);
  u_xlat9 = (u_xlat9 * vec3f(1.10000002384185791016f));
  let x_848 = ((u_xlat0.xzw * u_xlat1.xxx) + u_xlat9);
  u_xlat0 = vec4f(x_848.x, u_xlat0.y, x_848.yz);
  u_xlat1 = vec4f(((u_xlat0.xzw * x_28.x_Color.xyz)).xyz, u_xlat1.w);
  u_xlat25 = dot(u_xlat4.xyz, u_xlat5.xyz);
  u_xlat25 = min(abs(u_xlat25), 1.0f);
  u_xlat25 = (-(u_xlat25) + 1.0f);
  u_xlat25 = (u_xlat25 * u_xlat25);
  u_xlat25 = (u_xlat25 * u_xlat25);
  u_xlat10.x = dot(-(u_xlat5.xyz), u_xlat4.xyz);
  u_xlat10.x = (u_xlat10.x + u_xlat10.x);
  u_xlat3 = vec4f((((u_xlat4.xyz * -(u_xlat10.xxx)) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  u_xlat3.w = abs(u_xlat3.y);
  u_xlat10 = (x_765.unity_SpecCube0_BoxMax.xyz + -(x_765.unity_SpecCube0_BoxMin.xyz));
  u_xlat10.x = dot(u_xlat10, u_xlat10);
  u_xlat4 = vec4f(((x_765.unity_SpecCube1_BoxMax.xyz + -(x_765.unity_SpecCube1_BoxMin.xyz))).xyz, u_xlat4.w);
  u_xlat18.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat10.x = (-(u_xlat18.x) + u_xlat10.x);
  u_xlatb18 = (0.0f < x_765.unity_SpecCube1_BoxMin.w);
  u_xlatb26 = (x_765.unity_SpecCube1_BoxMin.w == 0.0f);
  u_xlatb11 = (u_xlat10.x < -0.00009999999747378752f);
  u_xlatb11 = (u_xlatb26 & u_xlatb11);
  u_xlatb18 = (u_xlatb18 | u_xlatb11);
  u_xlatb11 = (x_765.unity_SpecCube1_BoxMin.w < 0.0f);
  u_xlatb10 = (0.00009999999747378752f < u_xlat10.x);
  u_xlatb10 = (u_xlatb10 & u_xlatb26);
  u_xlatb10 = (u_xlatb10 | u_xlatb11);
  u_xlat4 = vec4f(((vs_TEXCOORD0 + -(x_765.unity_SpecCube0_BoxMin.xyz))).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((-(vs_TEXCOORD0) + x_765.unity_SpecCube0_BoxMax.xyz)).xyz, u_xlat5.w);
  u_xlat4 = vec4f(min(u_xlat4.xyz, u_xlat5.xyz).xyz, u_xlat4.w);
  u_xlat4 = vec4f(((u_xlat4.xyz / x_765.unity_SpecCube0_BoxMax.www)).xyz, u_xlat4.w);
  u_xlat26 = min(u_xlat4.z, u_xlat4.y);
  u_xlat26 = min(u_xlat26, u_xlat4.x);
  u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
  u_xlat4 = vec4f(((vs_TEXCOORD0 + -(x_765.unity_SpecCube1_BoxMin.xyz))).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((-(vs_TEXCOORD0) + x_765.unity_SpecCube1_BoxMax.xyz)).xyz, u_xlat5.w);
  u_xlat4 = vec4f(min(u_xlat4.xyz, u_xlat5.xyz).xyz, u_xlat4.w);
  u_xlat4 = vec4f(((u_xlat4.xyz / x_765.unity_SpecCube1_BoxMax.www)).xyz, u_xlat4.w);
  u_xlat11.x = min(u_xlat4.z, u_xlat4.y);
  u_xlat11.x = min(u_xlat11.x, u_xlat4.x);
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat4.x = (-(u_xlat11.x) + 1.0f);
  u_xlat4.x = min(u_xlat26, u_xlat4.x);
  if (u_xlatb10) {
    x_1077 = u_xlat4.x;
  } else {
    x_1077 = u_xlat26;
  }
  u_xlat10.x = x_1077;
  u_xlat26 = (-(u_xlat26) + 1.0f);
  u_xlat26 = min(u_xlat26, u_xlat11.x);
  if (u_xlatb18) {
    x_1094 = u_xlat26;
  } else {
    x_1094 = u_xlat11.x;
  }
  u_xlat10.y = x_1094;
  u_xlat26 = (u_xlat10.y + u_xlat10.x);
  u_xlat11.x = max(u_xlat26, 1.0f);
  u_xlat10 = vec3f(((u_xlat10.xy / u_xlat11.xx)).xy, u_xlat10.z);
  u_xlatb11 = (0.00999999977648258209f < u_xlat10.x);
  if (u_xlatb11) {
    u_xlatb11 = (0.0f < x_765.unity_SpecCube0_ProbePosition.w);
    u_xlatb4 = ((vec4f() < u_xlat3.xwzx)).xyz;
    if (u_xlatb4.x) {
      x_1140 = x_765.unity_SpecCube0_BoxMax.x;
    } else {
      x_1140 = x_765.unity_SpecCube0_BoxMin.x;
    }
    u_xlat4.x = x_1140;
    if (u_xlatb4.y) {
      x_1152 = x_765.unity_SpecCube0_BoxMax.y;
    } else {
      x_1152 = x_765.unity_SpecCube0_BoxMin.y;
    }
    u_xlat4.y = x_1152;
    if (u_xlatb4.z) {
      x_1164 = x_765.unity_SpecCube0_BoxMax.z;
    } else {
      x_1164 = x_765.unity_SpecCube0_BoxMin.z;
    }
    u_xlat4.z = x_1164;
    u_xlat4 = vec4f(((u_xlat4.xyz + -(vs_TEXCOORD0))).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((u_xlat4.xyz / u_xlat3.xwz)).xyz, u_xlat4.w);
    u_xlat4.x = min(u_xlat4.y, u_xlat4.x);
    u_xlat4.x = min(u_xlat4.z, u_xlat4.x);
    u_xlat12 = (vs_TEXCOORD0 + -(x_765.unity_SpecCube0_ProbePosition.xyz));
    u_xlat4 = vec4f((((u_xlat3.xwz * u_xlat4.xxx) + u_xlat12)).xyz, u_xlat4.w);
    if (u_xlatb11) {
      x_1217 = u_xlat4.xyz;
    } else {
      x_1217 = u_xlat3.xwz;
    }
    u_xlat4 = vec4f(x_1217.xyz, u_xlat4.w);
    u_xlat4 = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, u_xlat4.xyz, 0.49950003623962402344f);
    u_xlat11.x = (u_xlat4.w + -1.0f);
    u_xlat11.x = ((x_765.unity_SpecCube0_HDR.w * u_xlat11.x) + 1.0f);
    u_xlat11.x = max(u_xlat11.x, 0.0f);
    u_xlat11.x = log2(u_xlat11.x);
    u_xlat11.x = (u_xlat11.x * x_765.unity_SpecCube0_HDR.y);
    u_xlat11.x = exp2(u_xlat11.x);
    u_xlat11.x = (u_xlat11.x * x_765.unity_SpecCube0_HDR.x);
    u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat11.xxx)).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((u_xlat10.xxx * u_xlat4.xyz)).xyz, u_xlat4.w);
  } else {
    u_xlat4.x = 0.0f;
    u_xlat4.y = 0.0f;
    u_xlat4.z = 0.0f;
  }
  u_xlatb10 = (0.00999999977648258209f < u_xlat10.y);
  if (u_xlatb10) {
    u_xlatb10 = (0.0f < x_765.unity_SpecCube1_ProbePosition.w);
    u_xlatb5 = ((vec4f() < u_xlat3.xwzx)).xyz;
    if (u_xlatb5.x) {
      x_1310 = x_765.unity_SpecCube1_BoxMax.x;
    } else {
      x_1310 = x_765.unity_SpecCube1_BoxMin.x;
    }
    u_xlat5.x = x_1310;
    if (u_xlatb5.y) {
      x_1322 = x_765.unity_SpecCube1_BoxMax.y;
    } else {
      x_1322 = x_765.unity_SpecCube1_BoxMin.y;
    }
    u_xlat5.y = x_1322;
    if (u_xlatb5.z) {
      x_1334 = x_765.unity_SpecCube1_BoxMax.z;
    } else {
      x_1334 = x_765.unity_SpecCube1_BoxMin.z;
    }
    u_xlat5.z = x_1334;
    u_xlat5 = vec4f(((u_xlat5.xyz + -(vs_TEXCOORD0))).xyz, u_xlat5.w);
    u_xlat5 = vec4f(((u_xlat5.xyz / u_xlat3.xwz)).xyz, u_xlat5.w);
    u_xlat11.x = min(u_xlat5.y, u_xlat5.x);
    u_xlat11.x = min(u_xlat5.z, u_xlat11.x);
    u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_765.unity_SpecCube1_ProbePosition.xyz))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((u_xlat3.xwz * u_xlat11.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
    if (u_xlatb10) {
      x_1389 = u_xlat5.xyz;
    } else {
      x_1389 = u_xlat3.xwz;
    }
    u_xlat5 = vec4f(x_1389.xyz, u_xlat5.w);
    u_xlat5 = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube1, u_xlat5.xyz, 0.49950003623962402344f);
    u_xlat10.x = (u_xlat5.w + -1.0f);
    u_xlat10.x = ((x_765.unity_SpecCube1_HDR.w * u_xlat10.x) + 1.0f);
    u_xlat10.x = max(u_xlat10.x, 0.0f);
    u_xlat10.x = log2(u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * x_765.unity_SpecCube1_HDR.y);
    u_xlat10.x = exp2(u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * x_765.unity_SpecCube1_HDR.x);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat10.xxx)).xyz, u_xlat5.w);
    u_xlat4 = vec4f((((u_xlat10.yyy * u_xlat5.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  }
  u_xlatb10 = (u_xlat26 < 0.99000000953674316406f);
  if (u_xlatb10) {
    u_xlat3 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat3.xwz, 0.49950003623962402344f);
    u_xlat10.x = (-(u_xlat26) + 1.0f);
    u_xlat18.x = (u_xlat3.w + -1.0f);
    u_xlat18.x = ((x_47.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat18.x) + 1.0f);
    u_xlat18.x = max(u_xlat18.x, 0.0f);
    u_xlat18.x = log2(u_xlat18.x);
    u_xlat18.x = (u_xlat18.x * x_47.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat18.x = exp2(u_xlat18.x);
    u_xlat18.x = (u_xlat18.x * x_47.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat18.xxx)).xyz, u_xlat3.w);
    u_xlat4 = vec4f((((u_xlat10.xxx * u_xlat3.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  }
  u_xlat2.x = (u_xlat2.x * x_28.x_Reflection);
  u_xlat25 = ((u_xlat25 * 0.75f) + 0.25f);
  u_xlat25 = (u_xlat25 * u_xlat2.x);
  u_xlat8.x = (-(u_xlat8.x) + 1.0f);
  u_xlat8.x = (u_xlat8.x * u_xlat25);
  let x_1565 = ((-(x_28.x_Color.xyz) * u_xlat0.xzw) + u_xlat4.xyz);
  u_xlat0 = vec4f(x_1565.x, u_xlat0.y, x_1565.yz);
  u_xlat0 = vec4f((((u_xlat8.xxx * u_xlat0.xzw) + u_xlat1.xyz)).xyz, u_xlat0.w);
  u_xlat24 = (vs_TEXCOORD3 * -(vs_TEXCOORD3));
  u_xlat24 = exp2(u_xlat24);
  u_xlat0 = vec4f(((u_xlat0.xyz + -(x_47.unity_FogColor.xyz))).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((vec3f(u_xlat24) * u_xlat0.xyz) + x_47.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4f, @location(2) vs_TEXCOORD1_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD3_param : f32, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Waterfall.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_Color : vec4f,
  /* @offset(16) */
  x_Speed : f32,
  /* @offset(20) */
  Xhlslcc_UnusedX_Opacity : f32,
  /* @offset(24) */
  Xhlslcc_UnusedX_Length : f32,
  /* @offset(28) */
  Xhlslcc_UnusedX_BottomFade : f32,
  /* @offset(32) */
  Xhlslcc_UnusedX_SheetThickness : f32,
  /* @offset(36) */
  x_WindDrift : f32,
  /* @offset(48) */
  Xhlslcc_UnusedX_Tile : vec4f,
  /* @offset(64) */
  x_Zones : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_Reflection : f32,
}

alias Arr = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  hlslcc_mtx4x4unity_MatrixVP : Arr,
  /* @offset(64) */
  x_B612WindDirection : vec4f,
  /* @offset(80) */
  x_B612WindTime : vec4f,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 2u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr_1,
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

@group(1) @binding(2) var<uniform> x_13 : UnityPerMaterial;

var<private> in_TEXCOORD0 : vec2f;

@group(1) @binding(3) var<uniform> x_85 : VGlobals;

var<private> in_TEXCOORD1 : vec2f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_183 : UnityPerDraw;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD3 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat3 : vec2f;
  var u_xlatb3 : bool;
  var x_91 : f32;
  var u_xlat9 : f32;
  var u_xlatb1 : vec2<bool>;
  var x_129 : f32;
  var x_141 : f32;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = (-(x_13.x_Zones.y) + x_13.x_Zones.z);
  u_xlat0.x = (1.0f / u_xlat0.x);
  u_xlat3.x = (in_TEXCOORD0.y + -(x_13.x_Zones.y));
  u_xlat0.x = (u_xlat0.x * u_xlat3.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat3.x = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat3.x);
  u_xlatb3 = (0.5f < x_85.x_B612WindTime.z);
  if (u_xlatb3) {
    x_91 = x_85.x_B612WindDirection.w;
  } else {
    x_91 = 1.0f;
  }
  u_xlat3.x = x_91;
  u_xlat3 = (u_xlat3.xx * x_85.x_B612WindDirection.xz);
  u_xlat9 = max(x_13.x_Speed, 0.10000000149011611938f);
  u_xlat9 = (in_TEXCOORD0.y / u_xlat9);
  u_xlatb1 = ((vec4f() < in_TEXCOORD1.xyxx)).xy;
  if (u_xlatb1.x) {
    x_129 = in_TEXCOORD1.x;
  } else {
    x_129 = u_xlat9;
  }
  u_xlat9 = x_129;
  if (u_xlatb1.y) {
    x_141 = in_TEXCOORD1.y;
  } else {
    x_141 = x_13.x_Speed;
  }
  vs_TEXCOORD2.w = x_141;
  u_xlat1.x = (u_xlat9 * u_xlat9);
  vs_TEXCOORD2.z = u_xlat9;
  u_xlat9 = (u_xlat1.x * x_13.x_WindDrift);
  u_xlat9 = (u_xlat9 * 0.5f);
  u_xlat3 = (vec2f(u_xlat9) * u_xlat3);
  u_xlat1 = vec4f(((in_POSITION0.yyy * x_183.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_183.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_183.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_183.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec3f((((u_xlat3 * u_xlat0.xx) + u_xlat1.xz)).xy, u_xlat0.z);
  u_xlat2 = (u_xlat1.yyyy * x_85.hlslcc_mtx4x4unity_MatrixVP[1i]);
  vs_TEXCOORD0.y = u_xlat1.y;
  u_xlat1 = ((x_85.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat2);
  u_xlat1 = ((x_85.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.yyyy) + u_xlat1);
  let x_257 = u_xlat0.xy;
  vs_TEXCOORD0 = vec3f(x_257.x, vs_TEXCOORD0.y, x_257.y);
  gl_Position = (u_xlat1 + x_85.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD3 = 0.0f;
  u_xlat0.x = dot(in_NORMAL0, x_183.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_183.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_183.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat9 = dot(u_xlat0, u_xlat0);
  u_xlat9 = max(u_xlat9, 1.17549435e-38f);
  u_xlat9 = inverseSqrt(u_xlat9);
  vs_TEXCOORD1 = (vec3f(u_xlat9) * u_xlat0);
  vs_TEXCOORD2 = vec4f(in_TEXCOORD0.xy, vs_TEXCOORD2.zw);
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD2_1 : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(3)
  vs_TEXCOORD3_1 : f32,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2f, @location(3) in_TEXCOORD1_param : vec2f, @location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, vs_TEXCOORD0, gl_Position, vs_TEXCOORD3, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Waterfall.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Color : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_Speed : f32,
  /* @offset(20) */
  x_Opacity : f32,
  /* @offset(24) */
  x_Length : f32,
  /* @offset(28) */
  x_BottomFade : f32,
  /* @offset(32) */
  x_SheetThickness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_WindDrift : f32,
  /* @offset(48) */
  x_Tile : vec4f,
  /* @offset(64) */
  x_Zones : vec4f,
  /* @offset(80) */
  x_Reflection : f32,
}

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_MainLightPosition : vec4f,
  /* @offset(48) */
  x_MainLightColor : vec4f,
  /* @offset(64) */
  x_Time : vec4f,
  /* @offset(80) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(96) */
  unity_OrthoParams : vec4f,
  /* @offset(112) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
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
  unity_SpecCube0_HDR : vec4f,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4f,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4f,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4f,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4f,
  /* @offset(320) */
  Xhlslcc_UnusedXunity_SpecCube0_Rotation : vec4f,
  /* @offset(336) */
  unity_SpecCube1_BoxMax : vec4f,
  /* @offset(352) */
  unity_SpecCube1_BoxMin : vec4f,
  /* @offset(368) */
  unity_SpecCube1_ProbePosition : vec4f,
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

var<private> vs_TEXCOORD2 : vec4f;

@group(1) @binding(2) var<uniform> x_28 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_47 : PGlobals;

@group(0) @binding(3) var x_StreakTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_StreakTex : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(1) var<uniform> x_765 : UnityPerDraw;

@group(0) @binding(1) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_SpecCube1 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube1 : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(4) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat8 : vec3f;
  var u_xlat2 : vec2f;
  var u_xlat16 : f32;
  var u_xlat3 : vec4f;
  var u_xlat18 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlat26 : f32;
  var u_xlat11 : vec3f;
  var u_xlat19 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat25 : f32;
  var u_xlat17 : f32;
  var u_xlat24 : f32;
  var u_xlatb0 : bool;
  var u_xlat5 : vec4f;
  var x_645 : f32;
  var x_657 : f32;
  var x_668 : f32;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec3f;
  var u_xlatb18 : bool;
  var u_xlatb26 : bool;
  var u_xlatb11 : bool;
  var u_xlatb10 : bool;
  var x_1077 : f32;
  var x_1094 : f32;
  var u_xlatb4 : vec3<bool>;
  var x_1140 : f32;
  var x_1152 : f32;
  var x_1164 : f32;
  var u_xlat12 : vec3f;
  var x_1217 : vec3f;
  var u_xlatb5 : vec3<bool>;
  var x_1310 : f32;
  var x_1322 : f32;
  var x_1334 : f32;
  var x_1389 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = ((vs_TEXCOORD2.x * 2.0f) + -1.0f);
  u_xlat1.x = (vs_TEXCOORD2.x * x_28.x_Tile.x);
  u_xlat8.x = (vs_TEXCOORD2.z + -(x_47.x_Time.y));
  u_xlat1.y = (u_xlat8.x / x_28.x_Tile.y);
  u_xlat2.x = ((u_xlat1.x * 1.89999997615814208984f) + 0.31000000238418579102f);
  u_xlat8.x = ((-(x_47.x_Time.y) * 1.07000005245208740234f) + vs_TEXCOORD2.z);
  u_xlat16 = (x_28.x_Tile.y * 0.55000001192092895508f);
  u_xlat2.y = (u_xlat8.x / u_xlat16);
  let x_99 = u_xlat1;
  let x_103 = x_47.x_GlobalMipBias.x;
  let x_104 = textureSampleBias(x_StreakTex, sampler_StreakTex, x_99.xy, x_103);
  u_xlat8 = x_104.xyw;
  let x_109 = u_xlat2;
  let x_111 = x_47.x_GlobalMipBias.x;
  let x_112 = textureSampleBias(x_StreakTex, sampler_StreakTex, x_109, x_111);
  u_xlat1 = x_112;
  u_xlat2 = (x_28.x_Zones.xy * vec2f(0.5f, 0.49999994039535522461f));
  u_xlat3 = vec4f((((-(x_28.x_Zones.xyz) * vec3f(0.5f, 0.80000001192092895508f, 0.85000002384185791016f)) + vs_TEXCOORD2.yyy)).xyz, u_xlat3.w);
  u_xlat2 = (vec2f(1.0f) / u_xlat2);
  u_xlat2 = (u_xlat2 * u_xlat3.xy);
  u_xlat2 = clamp(u_xlat2, vec2f(0.0f), vec2f(1.0f));
  u_xlat18 = ((u_xlat2 * vec2f(-2.0f)) + vec2f(3.0f));
  u_xlat2 = (u_xlat2 * u_xlat2);
  u_xlat10.x = (u_xlat2.y * u_xlat18.y);
  u_xlat2.x = ((-(u_xlat18.x) * u_xlat2.x) + 1.0f);
  u_xlat18.x = (x_28.x_Zones.z * 0.39999997615814208984f);
  u_xlat18.x = (1.0f / u_xlat18.x);
  u_xlat18.x = (u_xlat18.x * u_xlat3.z);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat26 = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat3.x = (u_xlat18.x * u_xlat26);
  u_xlat11.x = (x_28.x_SheetThickness * 181.81817626953125f);
  u_xlat19.x = max(vs_TEXCOORD2.w, 0.5f);
  u_xlat19.x = (3.0f / u_xlat19.x);
  u_xlat11.x = (u_xlat19.x * u_xlat11.x);
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat4 = vec4f(((u_xlat1.xyw * vec3f(0.5f, 0.40000000596046447754f, 0.40000000596046447754f))).xyz, u_xlat4.w);
  u_xlat8 = ((u_xlat8 * vec3f(0.69999998807907104492f, 0.60000002384185791016f, 0.60000002384185791016f)) + u_xlat4.xyz);
  u_xlat8.x = u_xlat8.x;
  u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
  u_xlat9.x = ((-(x_28.x_Zones.x) * 0.60000002384185791016f) + x_28.x_Zones.y);
  u_xlat25 = ((-(x_28.x_Zones.x) * 0.60000002384185791016f) + vs_TEXCOORD2.y);
  u_xlat9.x = (1.0f / u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat25);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat25 = ((u_xlat9.x * -2.0f) + 3.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat25);
  u_xlat19 = (u_xlat8.xx * vec2f(0.11999999731779098511f, 0.87999999523162841797f));
  u_xlat8.x = ((u_xlat9.x * u_xlat19.y) + u_xlat19.x);
  u_xlat16 = (u_xlat8.y + -0.21999999880790710449f);
  u_xlat16 = (u_xlat16 * 2.77777767181396484375f);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat16 = (u_xlat16 + -1.0f);
  u_xlat16 = ((u_xlat10.x * u_xlat16) + 1.0f);
  u_xlat9.x = (u_xlat1.z * u_xlat10.x);
  u_xlat17 = ((-(u_xlat3.x) * 0.5f) + 1.0f);
  u_xlat25 = (u_xlat17 * u_xlat9.x);
  u_xlat19 = (vs_TEXCOORD2.yy / x_28.x_Zones.yx);
  u_xlat19 = clamp(u_xlat19, vec2f(0.0f), vec2f(1.0f));
  u_xlat10.x = ((-(u_xlat19.x) * 0.30000001192092895508f) + 0.62000000476837158203f);
  u_xlat1.x = ((-(u_xlat1.x) * 0.18000000715255737305f) + u_xlat10.x);
  u_xlat10.x = (-(u_xlat1.x) + 1.0f);
  u_xlat0.x = (abs(u_xlat0.x) + -(u_xlat1.x));
  u_xlat1.x = (1.0f / u_xlat10.x);
  u_xlat0.x = (u_xlat0.x * u_xlat1.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat1.x) * u_xlat0.x) + 1.0f);
  u_xlat1.x = ((u_xlat11.x * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat11 = vec3f((((u_xlat8.xx * vec2f(-0.19999998807907104492f, 0.55000001192092895508f)) + vec2f(1.0f, 0.44999998807907104492f))).xy, u_xlat11.z);
  u_xlat10.x = (u_xlat1.x * u_xlat11.x);
  u_xlat1.x = ((-(u_xlat1.x) * u_xlat11.x) + u_xlat11.y);
  u_xlat1.x = ((u_xlat19.y * u_xlat1.x) + u_xlat10.x);
  u_xlat16 = (u_xlat16 * u_xlat1.x);
  u_xlat1.x = (u_xlat25 * 0.80000001192092895508f);
  u_xlat16 = max(u_xlat16, u_xlat1.x);
  u_xlat24 = ((u_xlat8.z * 0.44999998807907104492f) + -(u_xlat16));
  u_xlat16 = ((u_xlat3.x * u_xlat24) + u_xlat16);
  u_xlat24 = (vs_TEXCOORD2.y * 12.5f);
  u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat24 * -2.0f) + 3.0f);
  u_xlat24 = (u_xlat24 * u_xlat24);
  u_xlat24 = (u_xlat24 * u_xlat1.x);
  u_xlat1.x = (-(x_28.x_BottomFade) + 1.0f);
  u_xlat25 = ((-(x_28.x_Length) * u_xlat1.x) + x_28.x_Length);
  u_xlat1.x = ((-(x_28.x_Length) * u_xlat1.x) + vs_TEXCOORD2.y);
  u_xlat25 = (1.0f / u_xlat25);
  u_xlat1.x = (u_xlat25 * u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat25 = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat25) * u_xlat1.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat16);
  u_xlat0.x = (u_xlat24 * u_xlat0.x);
  u_xlat0.x = (u_xlat1.x * u_xlat0.x);
  SV_Target0.w = (u_xlat0.x * x_28.x_Opacity);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_602 = (u_xlat0.xxx * vs_TEXCOORD1);
  u_xlat0 = vec4f(x_602.x, u_xlat0.y, x_602.yz);
  u_xlat1.x = select(-1.0f, 1.0f, (select(0u, 4294967295u, gl_FrontFacing) != 0u));
  u_xlat4 = vec4f(((u_xlat0.xzw * u_xlat1.xxx)).xyz, u_xlat4.w);
  u_xlatb0 = (x_47.unity_OrthoParams.w == 0.0f);
  u_xlat11 = (-(vs_TEXCOORD0) + x_47.x_WorldSpaceCameraPos);
  u_xlat16 = dot(u_xlat11, u_xlat11);
  u_xlat16 = inverseSqrt(u_xlat16);
  u_xlat11 = (vec3f(u_xlat16) * u_xlat11);
  if (u_xlatb0) {
    x_645 = u_xlat11.x;
  } else {
    x_645 = x_47.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  u_xlat5.x = x_645;
  if (u_xlatb0) {
    x_657 = u_xlat11.y;
  } else {
    x_657 = x_47.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  u_xlat5.y = x_657;
  if (u_xlatb0) {
    x_668 = u_xlat11.z;
  } else {
    x_668 = x_47.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  u_xlat5.z = x_668;
  u_xlat0.x = dot(u_xlat4.xyz, x_47.x_MainLightPosition.xyz);
  u_xlat0.x = (u_xlat0.x + 0.60000002384185791016f);
  u_xlat0.x = (u_xlat0.x * 0.625f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat16 = dot(-(u_xlat5.xyz), x_47.x_MainLightPosition.xyz);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat16 = (u_xlat16 * u_xlat16);
  u_xlat16 = (u_xlat16 * u_xlat16);
  u_xlat24 = ((u_xlat3.x * 0.80000001192092895508f) + 0.60000002384185791016f);
  u_xlat1.x = ((u_xlat9.x * u_xlat17) + u_xlat8.x);
  u_xlat1.x = ((u_xlat26 * u_xlat18.x) + u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat0.x = ((u_xlat16 * u_xlat24) + u_xlat0.x);
  let x_749 = (u_xlat0.xxx * x_47.x_MainLightColor.xyz);
  u_xlat0 = vec4f(x_749.x, u_xlat0.y, x_749.yz);
  u_xlat1.x = ((u_xlat1.x * 0.5f) + 0.5f);
  u_xlat4.w = 1.0f;
  u_xlat3.x = dot(x_765.unity_SHAr, u_xlat4);
  u_xlat3.y = dot(x_765.unity_SHAg, u_xlat4);
  u_xlat3.z = dot(x_765.unity_SHAb, u_xlat4);
  u_xlat6 = (u_xlat4.yzzx * u_xlat4.xyzz);
  u_xlat7.x = dot(x_765.unity_SHBr, u_xlat6);
  u_xlat7.y = dot(x_765.unity_SHBg, u_xlat6);
  u_xlat7.z = dot(x_765.unity_SHBb, u_xlat6);
  u_xlat9.x = (u_xlat4.y * u_xlat4.y);
  u_xlat9.x = ((u_xlat4.x * u_xlat4.x) + -(u_xlat9.x));
  u_xlat9 = ((x_765.unity_SHC.xyz * u_xlat9.xxx) + u_xlat7);
  u_xlat9 = (u_xlat9 + u_xlat3.xyz);
  u_xlat9 = (u_xlat9 * vec3f(1.10000002384185791016f));
  let x_848 = ((u_xlat0.xzw * u_xlat1.xxx) + u_xlat9);
  u_xlat0 = vec4f(x_848.x, u_xlat0.y, x_848.yz);
  u_xlat1 = vec4f(((u_xlat0.xzw * x_28.x_Color.xyz)).xyz, u_xlat1.w);
  u_xlat25 = dot(u_xlat4.xyz, u_xlat5.xyz);
  u_xlat25 = min(abs(u_xlat25), 1.0f);
  u_xlat25 = (-(u_xlat25) + 1.0f);
  u_xlat25 = (u_xlat25 * u_xlat25);
  u_xlat25 = (u_xlat25 * u_xlat25);
  u_xlat10.x = dot(-(u_xlat5.xyz), u_xlat4.xyz);
  u_xlat10.x = (u_xlat10.x + u_xlat10.x);
  u_xlat3 = vec4f((((u_xlat4.xyz * -(u_xlat10.xxx)) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  u_xlat3.w = abs(u_xlat3.y);
  u_xlat10 = (x_765.unity_SpecCube0_BoxMax.xyz + -(x_765.unity_SpecCube0_BoxMin.xyz));
  u_xlat10.x = dot(u_xlat10, u_xlat10);
  u_xlat4 = vec4f(((x_765.unity_SpecCube1_BoxMax.xyz + -(x_765.unity_SpecCube1_BoxMin.xyz))).xyz, u_xlat4.w);
  u_xlat18.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat10.x = (-(u_xlat18.x) + u_xlat10.x);
  u_xlatb18 = (0.0f < x_765.unity_SpecCube1_BoxMin.w);
  u_xlatb26 = (x_765.unity_SpecCube1_BoxMin.w == 0.0f);
  u_xlatb11 = (u_xlat10.x < -0.00009999999747378752f);
  u_xlatb11 = (u_xlatb26 & u_xlatb11);
  u_xlatb18 = (u_xlatb18 | u_xlatb11);
  u_xlatb11 = (x_765.unity_SpecCube1_BoxMin.w < 0.0f);
  u_xlatb10 = (0.00009999999747378752f < u_xlat10.x);
  u_xlatb10 = (u_xlatb10 & u_xlatb26);
  u_xlatb10 = (u_xlatb10 | u_xlatb11);
  u_xlat4 = vec4f(((vs_TEXCOORD0 + -(x_765.unity_SpecCube0_BoxMin.xyz))).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((-(vs_TEXCOORD0) + x_765.unity_SpecCube0_BoxMax.xyz)).xyz, u_xlat5.w);
  u_xlat4 = vec4f(min(u_xlat4.xyz, u_xlat5.xyz).xyz, u_xlat4.w);
  u_xlat4 = vec4f(((u_xlat4.xyz / x_765.unity_SpecCube0_BoxMax.www)).xyz, u_xlat4.w);
  u_xlat26 = min(u_xlat4.z, u_xlat4.y);
  u_xlat26 = min(u_xlat26, u_xlat4.x);
  u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
  u_xlat4 = vec4f(((vs_TEXCOORD0 + -(x_765.unity_SpecCube1_BoxMin.xyz))).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((-(vs_TEXCOORD0) + x_765.unity_SpecCube1_BoxMax.xyz)).xyz, u_xlat5.w);
  u_xlat4 = vec4f(min(u_xlat4.xyz, u_xlat5.xyz).xyz, u_xlat4.w);
  u_xlat4 = vec4f(((u_xlat4.xyz / x_765.unity_SpecCube1_BoxMax.www)).xyz, u_xlat4.w);
  u_xlat11.x = min(u_xlat4.z, u_xlat4.y);
  u_xlat11.x = min(u_xlat11.x, u_xlat4.x);
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat4.x = (-(u_xlat11.x) + 1.0f);
  u_xlat4.x = min(u_xlat26, u_xlat4.x);
  if (u_xlatb10) {
    x_1077 = u_xlat4.x;
  } else {
    x_1077 = u_xlat26;
  }
  u_xlat10.x = x_1077;
  u_xlat26 = (-(u_xlat26) + 1.0f);
  u_xlat26 = min(u_xlat26, u_xlat11.x);
  if (u_xlatb18) {
    x_1094 = u_xlat26;
  } else {
    x_1094 = u_xlat11.x;
  }
  u_xlat10.y = x_1094;
  u_xlat26 = (u_xlat10.y + u_xlat10.x);
  u_xlat11.x = max(u_xlat26, 1.0f);
  u_xlat10 = vec3f(((u_xlat10.xy / u_xlat11.xx)).xy, u_xlat10.z);
  u_xlatb11 = (0.00999999977648258209f < u_xlat10.x);
  if (u_xlatb11) {
    u_xlatb11 = (0.0f < x_765.unity_SpecCube0_ProbePosition.w);
    u_xlatb4 = ((vec4f() < u_xlat3.xwzx)).xyz;
    if (u_xlatb4.x) {
      x_1140 = x_765.unity_SpecCube0_BoxMax.x;
    } else {
      x_1140 = x_765.unity_SpecCube0_BoxMin.x;
    }
    u_xlat4.x = x_1140;
    if (u_xlatb4.y) {
      x_1152 = x_765.unity_SpecCube0_BoxMax.y;
    } else {
      x_1152 = x_765.unity_SpecCube0_BoxMin.y;
    }
    u_xlat4.y = x_1152;
    if (u_xlatb4.z) {
      x_1164 = x_765.unity_SpecCube0_BoxMax.z;
    } else {
      x_1164 = x_765.unity_SpecCube0_BoxMin.z;
    }
    u_xlat4.z = x_1164;
    u_xlat4 = vec4f(((u_xlat4.xyz + -(vs_TEXCOORD0))).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((u_xlat4.xyz / u_xlat3.xwz)).xyz, u_xlat4.w);
    u_xlat4.x = min(u_xlat4.y, u_xlat4.x);
    u_xlat4.x = min(u_xlat4.z, u_xlat4.x);
    u_xlat12 = (vs_TEXCOORD0 + -(x_765.unity_SpecCube0_ProbePosition.xyz));
    u_xlat4 = vec4f((((u_xlat3.xwz * u_xlat4.xxx) + u_xlat12)).xyz, u_xlat4.w);
    if (u_xlatb11) {
      x_1217 = u_xlat4.xyz;
    } else {
      x_1217 = u_xlat3.xwz;
    }
    u_xlat4 = vec4f(x_1217.xyz, u_xlat4.w);
    u_xlat4 = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, u_xlat4.xyz, 0.49950003623962402344f);
    u_xlat11.x = (u_xlat4.w + -1.0f);
    u_xlat11.x = ((x_765.unity_SpecCube0_HDR.w * u_xlat11.x) + 1.0f);
    u_xlat11.x = max(u_xlat11.x, 0.0f);
    u_xlat11.x = log2(u_xlat11.x);
    u_xlat11.x = (u_xlat11.x * x_765.unity_SpecCube0_HDR.y);
    u_xlat11.x = exp2(u_xlat11.x);
    u_xlat11.x = (u_xlat11.x * x_765.unity_SpecCube0_HDR.x);
    u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat11.xxx)).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((u_xlat10.xxx * u_xlat4.xyz)).xyz, u_xlat4.w);
  } else {
    u_xlat4.x = 0.0f;
    u_xlat4.y = 0.0f;
    u_xlat4.z = 0.0f;
  }
  u_xlatb10 = (0.00999999977648258209f < u_xlat10.y);
  if (u_xlatb10) {
    u_xlatb10 = (0.0f < x_765.unity_SpecCube1_ProbePosition.w);
    u_xlatb5 = ((vec4f() < u_xlat3.xwzx)).xyz;
    if (u_xlatb5.x) {
      x_1310 = x_765.unity_SpecCube1_BoxMax.x;
    } else {
      x_1310 = x_765.unity_SpecCube1_BoxMin.x;
    }
    u_xlat5.x = x_1310;
    if (u_xlatb5.y) {
      x_1322 = x_765.unity_SpecCube1_BoxMax.y;
    } else {
      x_1322 = x_765.unity_SpecCube1_BoxMin.y;
    }
    u_xlat5.y = x_1322;
    if (u_xlatb5.z) {
      x_1334 = x_765.unity_SpecCube1_BoxMax.z;
    } else {
      x_1334 = x_765.unity_SpecCube1_BoxMin.z;
    }
    u_xlat5.z = x_1334;
    u_xlat5 = vec4f(((u_xlat5.xyz + -(vs_TEXCOORD0))).xyz, u_xlat5.w);
    u_xlat5 = vec4f(((u_xlat5.xyz / u_xlat3.xwz)).xyz, u_xlat5.w);
    u_xlat11.x = min(u_xlat5.y, u_xlat5.x);
    u_xlat11.x = min(u_xlat5.z, u_xlat11.x);
    u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_765.unity_SpecCube1_ProbePosition.xyz))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((u_xlat3.xwz * u_xlat11.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
    if (u_xlatb10) {
      x_1389 = u_xlat5.xyz;
    } else {
      x_1389 = u_xlat3.xwz;
    }
    u_xlat5 = vec4f(x_1389.xyz, u_xlat5.w);
    u_xlat5 = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube1, u_xlat5.xyz, 0.49950003623962402344f);
    u_xlat10.x = (u_xlat5.w + -1.0f);
    u_xlat10.x = ((x_765.unity_SpecCube1_HDR.w * u_xlat10.x) + 1.0f);
    u_xlat10.x = max(u_xlat10.x, 0.0f);
    u_xlat10.x = log2(u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * x_765.unity_SpecCube1_HDR.y);
    u_xlat10.x = exp2(u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * x_765.unity_SpecCube1_HDR.x);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat10.xxx)).xyz, u_xlat5.w);
    u_xlat4 = vec4f((((u_xlat10.yyy * u_xlat5.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  }
  u_xlatb10 = (u_xlat26 < 0.99000000953674316406f);
  if (u_xlatb10) {
    u_xlat3 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat3.xwz, 0.49950003623962402344f);
    u_xlat10.x = (-(u_xlat26) + 1.0f);
    u_xlat18.x = (u_xlat3.w + -1.0f);
    u_xlat18.x = ((x_47.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat18.x) + 1.0f);
    u_xlat18.x = max(u_xlat18.x, 0.0f);
    u_xlat18.x = log2(u_xlat18.x);
    u_xlat18.x = (u_xlat18.x * x_47.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat18.x = exp2(u_xlat18.x);
    u_xlat18.x = (u_xlat18.x * x_47.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat18.xxx)).xyz, u_xlat3.w);
    u_xlat4 = vec4f((((u_xlat10.xxx * u_xlat3.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  }
  u_xlat2.x = (u_xlat2.x * x_28.x_Reflection);
  u_xlat25 = ((u_xlat25 * 0.75f) + 0.25f);
  u_xlat25 = (u_xlat25 * u_xlat2.x);
  u_xlat8.x = (-(u_xlat8.x) + 1.0f);
  u_xlat8.x = (u_xlat8.x * u_xlat25);
  let x_1565 = ((-(x_28.x_Color.xyz) * u_xlat0.xzw) + u_xlat4.xyz);
  u_xlat0 = vec4f(x_1565.x, u_xlat0.y, x_1565.yz);
  SV_Target0 = vec4f((((u_xlat8.xxx * u_xlat0.xzw) + u_xlat1.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec4f, @location(1) vs_TEXCOORD1_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(0) vs_TEXCOORD0_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Waterfall.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_Color : vec4f,
  /* @offset(16) */
  x_Speed : f32,
  /* @offset(20) */
  Xhlslcc_UnusedX_Opacity : f32,
  /* @offset(24) */
  Xhlslcc_UnusedX_Length : f32,
  /* @offset(28) */
  Xhlslcc_UnusedX_BottomFade : f32,
  /* @offset(32) */
  Xhlslcc_UnusedX_SheetThickness : f32,
  /* @offset(36) */
  x_WindDrift : f32,
  /* @offset(48) */
  Xhlslcc_UnusedX_Tile : vec4f,
  /* @offset(64) */
  x_Zones : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_Reflection : f32,
}

alias Arr = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr,
  /* @offset(96) */
  x_B612WindDirection : vec4f,
  /* @offset(112) */
  x_B612WindTime : vec4f,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 2u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr_1,
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

@group(1) @binding(2) var<uniform> x_12 : UnityPerMaterial;

var<private> in_TEXCOORD0 : vec2f;

@group(1) @binding(3) var<uniform> x_84 : VGlobals;

var<private> in_TEXCOORD1 : vec2f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_183 : UnityPerDraw;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD3 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat3 : vec2f;
  var u_xlatb3 : bool;
  var x_90 : f32;
  var u_xlat9 : f32;
  var u_xlatb1 : vec2<bool>;
  var x_129 : f32;
  var x_141 : f32;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = (-(x_12.x_Zones.y) + x_12.x_Zones.z);
  u_xlat0.x = (1.0f / u_xlat0.x);
  u_xlat3.x = (in_TEXCOORD0.y + -(x_12.x_Zones.y));
  u_xlat0.x = (u_xlat0.x * u_xlat3.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat3.x = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat3.x);
  u_xlatb3 = (0.5f < x_84.x_B612WindTime.z);
  if (u_xlatb3) {
    x_90 = x_84.x_B612WindDirection.w;
  } else {
    x_90 = 1.0f;
  }
  u_xlat3.x = x_90;
  u_xlat3 = (u_xlat3.xx * x_84.x_B612WindDirection.xz);
  u_xlat9 = max(x_12.x_Speed, 0.10000000149011611938f);
  u_xlat9 = (in_TEXCOORD0.y / u_xlat9);
  u_xlatb1 = ((vec4f() < in_TEXCOORD1.xyxx)).xy;
  if (u_xlatb1.x) {
    x_129 = in_TEXCOORD1.x;
  } else {
    x_129 = u_xlat9;
  }
  u_xlat9 = x_129;
  if (u_xlatb1.y) {
    x_141 = in_TEXCOORD1.y;
  } else {
    x_141 = x_12.x_Speed;
  }
  vs_TEXCOORD2.w = x_141;
  u_xlat1.x = (u_xlat9 * u_xlat9);
  vs_TEXCOORD2.z = u_xlat9;
  u_xlat9 = (u_xlat1.x * x_12.x_WindDrift);
  u_xlat9 = (u_xlat9 * 0.5f);
  u_xlat3 = (vec2f(u_xlat9) * u_xlat3);
  u_xlat1 = vec4f(((in_POSITION0.yyy * x_183.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_183.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_183.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_183.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f((((u_xlat3 * u_xlat0.xx) + u_xlat1.xz)).xy, u_xlat0.zw);
  u_xlat2 = (u_xlat1.yyyy * x_84.hlslcc_mtx4x4unity_MatrixVP[1i]);
  vs_TEXCOORD0.y = u_xlat1.y;
  u_xlat1 = ((x_84.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat2);
  u_xlat1 = ((x_84.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.yyyy) + u_xlat1);
  let x_257 = u_xlat0.xy;
  vs_TEXCOORD0 = vec3f(x_257.x, vs_TEXCOORD0.y, x_257.y);
  u_xlat0 = (u_xlat1 + x_84.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.x = (u_xlat0.z / x_84.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_84.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  vs_TEXCOORD3 = (u_xlat0.x * x_84.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_183.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_183.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_183.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat9 = max(u_xlat9, 1.17549435e-38f);
  u_xlat9 = inverseSqrt(u_xlat9);
  vs_TEXCOORD1 = (vec3f(u_xlat9) * u_xlat0.xyz);
  vs_TEXCOORD2 = vec4f(in_TEXCOORD0.xy, vs_TEXCOORD2.zw);
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD2_1 : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(2)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2f, @location(3) in_TEXCOORD1_param : vec2f, @location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, vs_TEXCOORD0, gl_Position, vs_TEXCOORD3, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Waterfall.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Color : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_Speed : f32,
  /* @offset(20) */
  x_Opacity : f32,
  /* @offset(24) */
  x_Length : f32,
  /* @offset(28) */
  x_BottomFade : f32,
  /* @offset(32) */
  x_SheetThickness : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_WindDrift : f32,
  /* @offset(48) */
  x_Tile : vec4f,
  /* @offset(64) */
  x_Zones : vec4f,
  /* @offset(80) */
  x_Reflection : f32,
}

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_MainLightPosition : vec4f,
  /* @offset(48) */
  x_MainLightColor : vec4f,
  /* @offset(64) */
  x_Time : vec4f,
  /* @offset(80) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(96) */
  unity_OrthoParams : vec4f,
  /* @offset(112) */
  unity_FogColor : vec4f,
  /* @offset(128) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
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
  unity_SpecCube0_HDR : vec4f,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4f,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4f,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4f,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4f,
  /* @offset(320) */
  Xhlslcc_UnusedXunity_SpecCube0_Rotation : vec4f,
  /* @offset(336) */
  unity_SpecCube1_BoxMax : vec4f,
  /* @offset(352) */
  unity_SpecCube1_BoxMin : vec4f,
  /* @offset(368) */
  unity_SpecCube1_ProbePosition : vec4f,
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

var<private> vs_TEXCOORD2 : vec4f;

@group(1) @binding(2) var<uniform> x_28 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_47 : PGlobals;

@group(0) @binding(3) var x_StreakTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_StreakTex : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(1) var<uniform> x_765 : UnityPerDraw;

@group(0) @binding(1) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_SpecCube1 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube1 : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(4) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> vs_TEXCOORD3 : f32;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat8 : vec3f;
  var u_xlat2 : vec2f;
  var u_xlat16 : f32;
  var u_xlat3 : vec4f;
  var u_xlat18 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlat26 : f32;
  var u_xlat11 : vec3f;
  var u_xlat19 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat25 : f32;
  var u_xlat17 : f32;
  var u_xlat24 : f32;
  var u_xlatb0 : bool;
  var u_xlat5 : vec4f;
  var x_645 : f32;
  var x_657 : f32;
  var x_668 : f32;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec3f;
  var u_xlatb18 : bool;
  var u_xlatb26 : bool;
  var u_xlatb11 : bool;
  var u_xlatb10 : bool;
  var x_1077 : f32;
  var x_1094 : f32;
  var u_xlatb4 : vec3<bool>;
  var x_1140 : f32;
  var x_1152 : f32;
  var x_1164 : f32;
  var u_xlat12 : vec3f;
  var x_1217 : vec3f;
  var u_xlatb5 : vec3<bool>;
  var x_1310 : f32;
  var x_1322 : f32;
  var x_1334 : f32;
  var x_1389 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = ((vs_TEXCOORD2.x * 2.0f) + -1.0f);
  u_xlat1.x = (vs_TEXCOORD2.x * x_28.x_Tile.x);
  u_xlat8.x = (vs_TEXCOORD2.z + -(x_47.x_Time.y));
  u_xlat1.y = (u_xlat8.x / x_28.x_Tile.y);
  u_xlat2.x = ((u_xlat1.x * 1.89999997615814208984f) + 0.31000000238418579102f);
  u_xlat8.x = ((-(x_47.x_Time.y) * 1.07000005245208740234f) + vs_TEXCOORD2.z);
  u_xlat16 = (x_28.x_Tile.y * 0.55000001192092895508f);
  u_xlat2.y = (u_xlat8.x / u_xlat16);
  let x_99 = u_xlat1;
  let x_103 = x_47.x_GlobalMipBias.x;
  let x_104 = textureSampleBias(x_StreakTex, sampler_StreakTex, x_99.xy, x_103);
  u_xlat8 = x_104.xyw;
  let x_109 = u_xlat2;
  let x_111 = x_47.x_GlobalMipBias.x;
  let x_112 = textureSampleBias(x_StreakTex, sampler_StreakTex, x_109, x_111);
  u_xlat1 = x_112;
  u_xlat2 = (x_28.x_Zones.xy * vec2f(0.5f, 0.49999994039535522461f));
  u_xlat3 = vec4f((((-(x_28.x_Zones.xyz) * vec3f(0.5f, 0.80000001192092895508f, 0.85000002384185791016f)) + vs_TEXCOORD2.yyy)).xyz, u_xlat3.w);
  u_xlat2 = (vec2f(1.0f) / u_xlat2);
  u_xlat2 = (u_xlat2 * u_xlat3.xy);
  u_xlat2 = clamp(u_xlat2, vec2f(0.0f), vec2f(1.0f));
  u_xlat18 = ((u_xlat2 * vec2f(-2.0f)) + vec2f(3.0f));
  u_xlat2 = (u_xlat2 * u_xlat2);
  u_xlat10.x = (u_xlat2.y * u_xlat18.y);
  u_xlat2.x = ((-(u_xlat18.x) * u_xlat2.x) + 1.0f);
  u_xlat18.x = (x_28.x_Zones.z * 0.39999997615814208984f);
  u_xlat18.x = (1.0f / u_xlat18.x);
  u_xlat18.x = (u_xlat18.x * u_xlat3.z);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat26 = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat3.x = (u_xlat18.x * u_xlat26);
  u_xlat11.x = (x_28.x_SheetThickness * 181.81817626953125f);
  u_xlat19.x = max(vs_TEXCOORD2.w, 0.5f);
  u_xlat19.x = (3.0f / u_xlat19.x);
  u_xlat11.x = (u_xlat19.x * u_xlat11.x);
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat4 = vec4f(((u_xlat1.xyw * vec3f(0.5f, 0.40000000596046447754f, 0.40000000596046447754f))).xyz, u_xlat4.w);
  u_xlat8 = ((u_xlat8 * vec3f(0.69999998807907104492f, 0.60000002384185791016f, 0.60000002384185791016f)) + u_xlat4.xyz);
  u_xlat8.x = u_xlat8.x;
  u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
  u_xlat9.x = ((-(x_28.x_Zones.x) * 0.60000002384185791016f) + x_28.x_Zones.y);
  u_xlat25 = ((-(x_28.x_Zones.x) * 0.60000002384185791016f) + vs_TEXCOORD2.y);
  u_xlat9.x = (1.0f / u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat25);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat25 = ((u_xlat9.x * -2.0f) + 3.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat25);
  u_xlat19 = (u_xlat8.xx * vec2f(0.11999999731779098511f, 0.87999999523162841797f));
  u_xlat8.x = ((u_xlat9.x * u_xlat19.y) + u_xlat19.x);
  u_xlat16 = (u_xlat8.y + -0.21999999880790710449f);
  u_xlat16 = (u_xlat16 * 2.77777767181396484375f);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat16 = (u_xlat16 + -1.0f);
  u_xlat16 = ((u_xlat10.x * u_xlat16) + 1.0f);
  u_xlat9.x = (u_xlat1.z * u_xlat10.x);
  u_xlat17 = ((-(u_xlat3.x) * 0.5f) + 1.0f);
  u_xlat25 = (u_xlat17 * u_xlat9.x);
  u_xlat19 = (vs_TEXCOORD2.yy / x_28.x_Zones.yx);
  u_xlat19 = clamp(u_xlat19, vec2f(0.0f), vec2f(1.0f));
  u_xlat10.x = ((-(u_xlat19.x) * 0.30000001192092895508f) + 0.62000000476837158203f);
  u_xlat1.x = ((-(u_xlat1.x) * 0.18000000715255737305f) + u_xlat10.x);
  u_xlat10.x = (-(u_xlat1.x) + 1.0f);
  u_xlat0.x = (abs(u_xlat0.x) + -(u_xlat1.x));
  u_xlat1.x = (1.0f / u_xlat10.x);
  u_xlat0.x = (u_xlat0.x * u_xlat1.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat1.x) * u_xlat0.x) + 1.0f);
  u_xlat1.x = ((u_xlat11.x * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat11 = vec3f((((u_xlat8.xx * vec2f(-0.19999998807907104492f, 0.55000001192092895508f)) + vec2f(1.0f, 0.44999998807907104492f))).xy, u_xlat11.z);
  u_xlat10.x = (u_xlat1.x * u_xlat11.x);
  u_xlat1.x = ((-(u_xlat1.x) * u_xlat11.x) + u_xlat11.y);
  u_xlat1.x = ((u_xlat19.y * u_xlat1.x) + u_xlat10.x);
  u_xlat16 = (u_xlat16 * u_xlat1.x);
  u_xlat1.x = (u_xlat25 * 0.80000001192092895508f);
  u_xlat16 = max(u_xlat16, u_xlat1.x);
  u_xlat24 = ((u_xlat8.z * 0.44999998807907104492f) + -(u_xlat16));
  u_xlat16 = ((u_xlat3.x * u_xlat24) + u_xlat16);
  u_xlat24 = (vs_TEXCOORD2.y * 12.5f);
  u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat24 * -2.0f) + 3.0f);
  u_xlat24 = (u_xlat24 * u_xlat24);
  u_xlat24 = (u_xlat24 * u_xlat1.x);
  u_xlat1.x = (-(x_28.x_BottomFade) + 1.0f);
  u_xlat25 = ((-(x_28.x_Length) * u_xlat1.x) + x_28.x_Length);
  u_xlat1.x = ((-(x_28.x_Length) * u_xlat1.x) + vs_TEXCOORD2.y);
  u_xlat25 = (1.0f / u_xlat25);
  u_xlat1.x = (u_xlat25 * u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat25 = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat25) * u_xlat1.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat16);
  u_xlat0.x = (u_xlat24 * u_xlat0.x);
  u_xlat0.x = (u_xlat1.x * u_xlat0.x);
  SV_Target0.w = (u_xlat0.x * x_28.x_Opacity);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_602 = (u_xlat0.xxx * vs_TEXCOORD1);
  u_xlat0 = vec4f(x_602.x, u_xlat0.y, x_602.yz);
  u_xlat1.x = select(-1.0f, 1.0f, (select(0u, 4294967295u, gl_FrontFacing) != 0u));
  u_xlat4 = vec4f(((u_xlat0.xzw * u_xlat1.xxx)).xyz, u_xlat4.w);
  u_xlatb0 = (x_47.unity_OrthoParams.w == 0.0f);
  u_xlat11 = (-(vs_TEXCOORD0) + x_47.x_WorldSpaceCameraPos);
  u_xlat16 = dot(u_xlat11, u_xlat11);
  u_xlat16 = inverseSqrt(u_xlat16);
  u_xlat11 = (vec3f(u_xlat16) * u_xlat11);
  if (u_xlatb0) {
    x_645 = u_xlat11.x;
  } else {
    x_645 = x_47.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  u_xlat5.x = x_645;
  if (u_xlatb0) {
    x_657 = u_xlat11.y;
  } else {
    x_657 = x_47.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  u_xlat5.y = x_657;
  if (u_xlatb0) {
    x_668 = u_xlat11.z;
  } else {
    x_668 = x_47.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  u_xlat5.z = x_668;
  u_xlat0.x = dot(u_xlat4.xyz, x_47.x_MainLightPosition.xyz);
  u_xlat0.x = (u_xlat0.x + 0.60000002384185791016f);
  u_xlat0.x = (u_xlat0.x * 0.625f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat16 = dot(-(u_xlat5.xyz), x_47.x_MainLightPosition.xyz);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat16 = (u_xlat16 * u_xlat16);
  u_xlat16 = (u_xlat16 * u_xlat16);
  u_xlat24 = ((u_xlat3.x * 0.80000001192092895508f) + 0.60000002384185791016f);
  u_xlat1.x = ((u_xlat9.x * u_xlat17) + u_xlat8.x);
  u_xlat1.x = ((u_xlat26 * u_xlat18.x) + u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat0.x = ((u_xlat16 * u_xlat24) + u_xlat0.x);
  let x_749 = (u_xlat0.xxx * x_47.x_MainLightColor.xyz);
  u_xlat0 = vec4f(x_749.x, u_xlat0.y, x_749.yz);
  u_xlat1.x = ((u_xlat1.x * 0.5f) + 0.5f);
  u_xlat4.w = 1.0f;
  u_xlat3.x = dot(x_765.unity_SHAr, u_xlat4);
  u_xlat3.y = dot(x_765.unity_SHAg, u_xlat4);
  u_xlat3.z = dot(x_765.unity_SHAb, u_xlat4);
  u_xlat6 = (u_xlat4.yzzx * u_xlat4.xyzz);
  u_xlat7.x = dot(x_765.unity_SHBr, u_xlat6);
  u_xlat7.y = dot(x_765.unity_SHBg, u_xlat6);
  u_xlat7.z = dot(x_765.unity_SHBb, u_xlat6);
  u_xlat9.x = (u_xlat4.y * u_xlat4.y);
  u_xlat9.x = ((u_xlat4.x * u_xlat4.x) + -(u_xlat9.x));
  u_xlat9 = ((x_765.unity_SHC.xyz * u_xlat9.xxx) + u_xlat7);
  u_xlat9 = (u_xlat9 + u_xlat3.xyz);
  u_xlat9 = (u_xlat9 * vec3f(1.10000002384185791016f));
  let x_848 = ((u_xlat0.xzw * u_xlat1.xxx) + u_xlat9);
  u_xlat0 = vec4f(x_848.x, u_xlat0.y, x_848.yz);
  u_xlat1 = vec4f(((u_xlat0.xzw * x_28.x_Color.xyz)).xyz, u_xlat1.w);
  u_xlat25 = dot(u_xlat4.xyz, u_xlat5.xyz);
  u_xlat25 = min(abs(u_xlat25), 1.0f);
  u_xlat25 = (-(u_xlat25) + 1.0f);
  u_xlat25 = (u_xlat25 * u_xlat25);
  u_xlat25 = (u_xlat25 * u_xlat25);
  u_xlat10.x = dot(-(u_xlat5.xyz), u_xlat4.xyz);
  u_xlat10.x = (u_xlat10.x + u_xlat10.x);
  u_xlat3 = vec4f((((u_xlat4.xyz * -(u_xlat10.xxx)) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  u_xlat3.w = abs(u_xlat3.y);
  u_xlat10 = (x_765.unity_SpecCube0_BoxMax.xyz + -(x_765.unity_SpecCube0_BoxMin.xyz));
  u_xlat10.x = dot(u_xlat10, u_xlat10);
  u_xlat4 = vec4f(((x_765.unity_SpecCube1_BoxMax.xyz + -(x_765.unity_SpecCube1_BoxMin.xyz))).xyz, u_xlat4.w);
  u_xlat18.x = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat10.x = (-(u_xlat18.x) + u_xlat10.x);
  u_xlatb18 = (0.0f < x_765.unity_SpecCube1_BoxMin.w);
  u_xlatb26 = (x_765.unity_SpecCube1_BoxMin.w == 0.0f);
  u_xlatb11 = (u_xlat10.x < -0.00009999999747378752f);
  u_xlatb11 = (u_xlatb26 & u_xlatb11);
  u_xlatb18 = (u_xlatb18 | u_xlatb11);
  u_xlatb11 = (x_765.unity_SpecCube1_BoxMin.w < 0.0f);
  u_xlatb10 = (0.00009999999747378752f < u_xlat10.x);
  u_xlatb10 = (u_xlatb10 & u_xlatb26);
  u_xlatb10 = (u_xlatb10 | u_xlatb11);
  u_xlat4 = vec4f(((vs_TEXCOORD0 + -(x_765.unity_SpecCube0_BoxMin.xyz))).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((-(vs_TEXCOORD0) + x_765.unity_SpecCube0_BoxMax.xyz)).xyz, u_xlat5.w);
  u_xlat4 = vec4f(min(u_xlat4.xyz, u_xlat5.xyz).xyz, u_xlat4.w);
  u_xlat4 = vec4f(((u_xlat4.xyz / x_765.unity_SpecCube0_BoxMax.www)).xyz, u_xlat4.w);
  u_xlat26 = min(u_xlat4.z, u_xlat4.y);
  u_xlat26 = min(u_xlat26, u_xlat4.x);
  u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
  u_xlat4 = vec4f(((vs_TEXCOORD0 + -(x_765.unity_SpecCube1_BoxMin.xyz))).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((-(vs_TEXCOORD0) + x_765.unity_SpecCube1_BoxMax.xyz)).xyz, u_xlat5.w);
  u_xlat4 = vec4f(min(u_xlat4.xyz, u_xlat5.xyz).xyz, u_xlat4.w);
  u_xlat4 = vec4f(((u_xlat4.xyz / x_765.unity_SpecCube1_BoxMax.www)).xyz, u_xlat4.w);
  u_xlat11.x = min(u_xlat4.z, u_xlat4.y);
  u_xlat11.x = min(u_xlat11.x, u_xlat4.x);
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat4.x = (-(u_xlat11.x) + 1.0f);
  u_xlat4.x = min(u_xlat26, u_xlat4.x);
  if (u_xlatb10) {
    x_1077 = u_xlat4.x;
  } else {
    x_1077 = u_xlat26;
  }
  u_xlat10.x = x_1077;
  u_xlat26 = (-(u_xlat26) + 1.0f);
  u_xlat26 = min(u_xlat26, u_xlat11.x);
  if (u_xlatb18) {
    x_1094 = u_xlat26;
  } else {
    x_1094 = u_xlat11.x;
  }
  u_xlat10.y = x_1094;
  u_xlat26 = (u_xlat10.y + u_xlat10.x);
  u_xlat11.x = max(u_xlat26, 1.0f);
  u_xlat10 = vec3f(((u_xlat10.xy / u_xlat11.xx)).xy, u_xlat10.z);
  u_xlatb11 = (0.00999999977648258209f < u_xlat10.x);
  if (u_xlatb11) {
    u_xlatb11 = (0.0f < x_765.unity_SpecCube0_ProbePosition.w);
    u_xlatb4 = ((vec4f() < u_xlat3.xwzx)).xyz;
    if (u_xlatb4.x) {
      x_1140 = x_765.unity_SpecCube0_BoxMax.x;
    } else {
      x_1140 = x_765.unity_SpecCube0_BoxMin.x;
    }
    u_xlat4.x = x_1140;
    if (u_xlatb4.y) {
      x_1152 = x_765.unity_SpecCube0_BoxMax.y;
    } else {
      x_1152 = x_765.unity_SpecCube0_BoxMin.y;
    }
    u_xlat4.y = x_1152;
    if (u_xlatb4.z) {
      x_1164 = x_765.unity_SpecCube0_BoxMax.z;
    } else {
      x_1164 = x_765.unity_SpecCube0_BoxMin.z;
    }
    u_xlat4.z = x_1164;
    u_xlat4 = vec4f(((u_xlat4.xyz + -(vs_TEXCOORD0))).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((u_xlat4.xyz / u_xlat3.xwz)).xyz, u_xlat4.w);
    u_xlat4.x = min(u_xlat4.y, u_xlat4.x);
    u_xlat4.x = min(u_xlat4.z, u_xlat4.x);
    u_xlat12 = (vs_TEXCOORD0 + -(x_765.unity_SpecCube0_ProbePosition.xyz));
    u_xlat4 = vec4f((((u_xlat3.xwz * u_xlat4.xxx) + u_xlat12)).xyz, u_xlat4.w);
    if (u_xlatb11) {
      x_1217 = u_xlat4.xyz;
    } else {
      x_1217 = u_xlat3.xwz;
    }
    u_xlat4 = vec4f(x_1217.xyz, u_xlat4.w);
    u_xlat4 = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, u_xlat4.xyz, 0.49950003623962402344f);
    u_xlat11.x = (u_xlat4.w + -1.0f);
    u_xlat11.x = ((x_765.unity_SpecCube0_HDR.w * u_xlat11.x) + 1.0f);
    u_xlat11.x = max(u_xlat11.x, 0.0f);
    u_xlat11.x = log2(u_xlat11.x);
    u_xlat11.x = (u_xlat11.x * x_765.unity_SpecCube0_HDR.y);
    u_xlat11.x = exp2(u_xlat11.x);
    u_xlat11.x = (u_xlat11.x * x_765.unity_SpecCube0_HDR.x);
    u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat11.xxx)).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((u_xlat10.xxx * u_xlat4.xyz)).xyz, u_xlat4.w);
  } else {
    u_xlat4.x = 0.0f;
    u_xlat4.y = 0.0f;
    u_xlat4.z = 0.0f;
  }
  u_xlatb10 = (0.00999999977648258209f < u_xlat10.y);
  if (u_xlatb10) {
    u_xlatb10 = (0.0f < x_765.unity_SpecCube1_ProbePosition.w);
    u_xlatb5 = ((vec4f() < u_xlat3.xwzx)).xyz;
    if (u_xlatb5.x) {
      x_1310 = x_765.unity_SpecCube1_BoxMax.x;
    } else {
      x_1310 = x_765.unity_SpecCube1_BoxMin.x;
    }
    u_xlat5.x = x_1310;
    if (u_xlatb5.y) {
      x_1322 = x_765.unity_SpecCube1_BoxMax.y;
    } else {
      x_1322 = x_765.unity_SpecCube1_BoxMin.y;
    }
    u_xlat5.y = x_1322;
    if (u_xlatb5.z) {
      x_1334 = x_765.unity_SpecCube1_BoxMax.z;
    } else {
      x_1334 = x_765.unity_SpecCube1_BoxMin.z;
    }
    u_xlat5.z = x_1334;
    u_xlat5 = vec4f(((u_xlat5.xyz + -(vs_TEXCOORD0))).xyz, u_xlat5.w);
    u_xlat5 = vec4f(((u_xlat5.xyz / u_xlat3.xwz)).xyz, u_xlat5.w);
    u_xlat11.x = min(u_xlat5.y, u_xlat5.x);
    u_xlat11.x = min(u_xlat5.z, u_xlat11.x);
    u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_765.unity_SpecCube1_ProbePosition.xyz))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((u_xlat3.xwz * u_xlat11.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
    if (u_xlatb10) {
      x_1389 = u_xlat5.xyz;
    } else {
      x_1389 = u_xlat3.xwz;
    }
    u_xlat5 = vec4f(x_1389.xyz, u_xlat5.w);
    u_xlat5 = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube1, u_xlat5.xyz, 0.49950003623962402344f);
    u_xlat10.x = (u_xlat5.w + -1.0f);
    u_xlat10.x = ((x_765.unity_SpecCube1_HDR.w * u_xlat10.x) + 1.0f);
    u_xlat10.x = max(u_xlat10.x, 0.0f);
    u_xlat10.x = log2(u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * x_765.unity_SpecCube1_HDR.y);
    u_xlat10.x = exp2(u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * x_765.unity_SpecCube1_HDR.x);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat10.xxx)).xyz, u_xlat5.w);
    u_xlat4 = vec4f((((u_xlat10.yyy * u_xlat5.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  }
  u_xlatb10 = (u_xlat26 < 0.99000000953674316406f);
  if (u_xlatb10) {
    u_xlat3 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat3.xwz, 0.49950003623962402344f);
    u_xlat10.x = (-(u_xlat26) + 1.0f);
    u_xlat18.x = (u_xlat3.w + -1.0f);
    u_xlat18.x = ((x_47.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat18.x) + 1.0f);
    u_xlat18.x = max(u_xlat18.x, 0.0f);
    u_xlat18.x = log2(u_xlat18.x);
    u_xlat18.x = (u_xlat18.x * x_47.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat18.x = exp2(u_xlat18.x);
    u_xlat18.x = (u_xlat18.x * x_47.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat18.xxx)).xyz, u_xlat3.w);
    u_xlat4 = vec4f((((u_xlat10.xxx * u_xlat3.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  }
  u_xlat2.x = (u_xlat2.x * x_28.x_Reflection);
  u_xlat25 = ((u_xlat25 * 0.75f) + 0.25f);
  u_xlat25 = (u_xlat25 * u_xlat2.x);
  u_xlat8.x = (-(u_xlat8.x) + 1.0f);
  u_xlat8.x = (u_xlat8.x * u_xlat25);
  let x_1565 = ((-(x_28.x_Color.xyz) * u_xlat0.xzw) + u_xlat4.xyz);
  u_xlat0 = vec4f(x_1565.x, u_xlat0.y, x_1565.yz);
  u_xlat0 = vec4f((((u_xlat8.xxx * u_xlat0.xzw) + u_xlat1.xyz)).xyz, u_xlat0.w);
  u_xlat24 = exp2(-(vs_TEXCOORD3));
  u_xlat24 = min(u_xlat24, 1.0f);
  u_xlat0 = vec4f(((u_xlat0.xyz + -(x_47.unity_FogColor.xyz))).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((vec3f(u_xlat24) * u_xlat0.xyz) + x_47.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4f, @location(2) vs_TEXCOORD1_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD3_param : f32, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

3