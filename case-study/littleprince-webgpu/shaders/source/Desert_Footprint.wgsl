//Assets/Levels/Desert/Materials/Shaders/Desert_Footprint.shader
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
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_NORMAL0 : vec3f;

@group(1) @binding(4) var<uniform> x_24 : UnityPerDraw;

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_121 : VGlobals;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> in_TANGENT0 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat9 : f32;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(in_NORMAL0, x_24.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_24.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_24.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat9 = dot(u_xlat0, u_xlat0);
  u_xlat9 = max(u_xlat9, 1.17549435e-38f);
  u_xlat9 = inverseSqrt(u_xlat9);
  u_xlat0 = (vec3f(u_xlat9) * u_xlat0);
  u_xlat9 = dot(u_xlat0, u_xlat0);
  u_xlat9 = inverseSqrt(u_xlat9);
  u_xlat0 = (vec3f(u_xlat9) * u_xlat0);
  u_xlat1 = vec4f(((in_POSITION0.yyy * x_24.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_24.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_24.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_24.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat1.w);
  u_xlat2 = (u_xlat1.xyz + -(x_121.x_WorldSpaceCameraPos));
  u_xlat9 = dot(u_xlat2, u_xlat2);
  u_xlat9 = sqrt(u_xlat9);
  u_xlat9 = (u_xlat9 * 0.01666666753590106964f);
  u_xlat9 = min(u_xlat9, 1.0f);
  u_xlat2 = (vec3f(u_xlat9) * u_xlat0);
  vs_TEXCOORD2 = u_xlat0;
  u_xlat0 = ((u_xlat2 * vec3f(0.07999999821186065674f)) + u_xlat1.xyz);
  u_xlat1 = (u_xlat0.yyyy * x_121.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_121.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_121.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD1 = u_xlat0;
  gl_Position = (u_xlat1 + x_121.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD0 = in_TEXCOORD0;
  u_xlat0 = (in_TANGENT0.yyy * x_24.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_TANGENT0.xxx) + u_xlat0);
  u_xlat0 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_TANGENT0.zzz) + u_xlat0);
  u_xlat9 = dot(u_xlat0, u_xlat0);
  u_xlat9 = max(u_xlat9, 1.17549435e-38f);
  u_xlat9 = inverseSqrt(u_xlat9);
  u_xlat0 = (vec3f(u_xlat9) * u_xlat0);
  u_xlat9 = dot(u_xlat0, u_xlat0);
  u_xlat9 = inverseSqrt(u_xlat9);
  vs_TEXCOORD3 = vec4f(((vec3f(u_xlat9) * u_xlat0)).xyz, vs_TEXCOORD3.w);
  vs_TEXCOORD3.w = in_TANGENT0.w;
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD2_1 : vec3f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(3)
  vs_TEXCOORD3_1 : vec4f,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3f, @location(0) in_POSITION0_param : vec4f, @location(3) in_TEXCOORD0_param : vec2f, @location(2) in_TANGENT0_param : vec4f) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(vs_TEXCOORD2, vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_TEXCOORD3);
}

//Assets/Levels/Desert/Materials/Shaders/Desert_Footprint.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Depth : f32,
  /* @offset(4) */
  x_Relief : f32,
  /* @offset(8) */
  x_Darken : f32,
  /* @offset(12) */
  x_Rim : f32,
  /* @offset(16) */
  x_Ambient : f32,
  /* @offset(20) */
  x_ShadeDarken : f32,
  /* @offset(24) */
  x_ShadeRim : f32,
  /* @offset(32) */
  x_PrintSize : vec4f,
  /* @offset(48) */
  x_Fade : vec4f,
}

alias Arr = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr,
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
  Xhlslcc_UnusedX_AdditionalShadowFadeParams : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedX_AdditionalShadowmapSize : vec4f,
}

struct PGlobals {
  /* @offset(0) */
  x_MainLightPosition : vec4f,
  /* @offset(16) */
  x_WorldSpaceCameraPos : vec3f,
}

var<private> vs_TEXCOORD3 : vec4f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> SV_Target0 : vec4f;

@group(1) @binding(2) var<uniform> x_447 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(1) var<uniform> x_1198 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(1) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(0) var<uniform> x_1297 : PGlobals;

var<private> gl_FragCoord : vec4f;

const x_65 = vec4f(2.12765955924987792969f, 3.33333325386047363281f, 2.5f, 5.0f);

const x_245 = vec4f(2.77777767181396484375f, 3.33333325386047363281f, 2.12765955924987792969f, 3.33333325386047363281f);

const x_342 = vec2f(-0.77999997138977050781f, -1.15999996662139892578f);

const x_478 = vec4f(2.5f, 5.0f, 2.77777767181396484375f, 3.33333325386047363281f);

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat5 : vec3f;
  var u_xlat1 : vec4f;
  var x_37 : f32;
  var u_xlat2 : vec4f;
  var u_xlat11 : vec2f;
  var u_xlat10 : vec2f;
  var u_xlat15 : f32;
  var u_xlatb10 : bool;
  var u_xlat3 : vec4f;
  var u_xlat16 : f32;
  var u_xlat4 : vec4f;
  var u_xlat17 : f32;
  var u_xlat6 : f32;
  var u_xlat0 : vec4f;
  var x_1048 : f32;
  var txVec0 : vec3f;
  var u_xlat7 : vec3f;
  var u_xlatb7 : bool;
  var u_xlatb12 : bool;
  var x_1286 : f32;
  var u_xlat12 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlatb0 = (0.0f < vs_TEXCOORD3.w);
  u_xlat5.x = (-(vs_TEXCOORD0.x) + 1.0f);
  if (u_xlatb0) {
    x_37 = u_xlat5.x;
  } else {
    x_37 = vs_TEXCOORD0.x;
  }
  u_xlat1.x = x_37;
  u_xlat1.y = vs_TEXCOORD0.y;
  u_xlat2 = (u_xlat1.xyxy + vec4f(-0.51999998092651367188f, -0.68999999761581420898f, -0.47999998927116394043f, -0.20000000298023223877f));
  u_xlat2 = (u_xlat2 * x_65);
  u_xlat5.x = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat5.y = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat11 = (u_xlat1.xy + vec2f(-0.41999998688697814941f, -0.44999998807907104492f));
  u_xlat11 = (u_xlat11 * vec2f(2.77777767181396484375f, 3.33333325386047363281f));
  u_xlat5.z = dot(u_xlat11, u_xlat11);
  u_xlat5 = sqrt(u_xlat5);
  u_xlat11.x = (-(u_xlat5.x) + u_xlat5.y);
  u_xlat11.x = ((u_xlat11.x * 2.0f) + 0.5f);
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat5.x = (-(u_xlat5.y) + u_xlat5.x);
  u_xlat5.x = ((u_xlat11.x * u_xlat5.x) + u_xlat5.y);
  u_xlat10.x = (u_xlat11.x * 0.25f);
  u_xlat11.x = (-(u_xlat11.x) + 1.0f);
  u_xlat5.x = ((-(u_xlat10.x) * u_xlat11.x) + u_xlat5.x);
  u_xlat10.x = (-(u_xlat5.x) + u_xlat5.z);
  u_xlat10.x = ((u_xlat10.x * 2.0f) + 0.5f);
  u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
  u_xlat5.x = (-(u_xlat5.z) + u_xlat5.x);
  u_xlat5.x = ((u_xlat10.x * u_xlat5.x) + u_xlat5.z);
  u_xlat15 = (u_xlat10.x * 0.25f);
  u_xlat10.x = (-(u_xlat10.x) + 1.0f);
  u_xlat5.x = ((-(u_xlat15) * u_xlat10.x) + u_xlat5.x);
  u_xlatb10 = (1.45000004768371582031f < u_xlat5.x);
  if (u_xlatb10) {
    SV_Target0 = vec4f(0.5f, 0.5f, 0.5f, 1.0f);
    return;
  }
  u_xlat2 = (u_xlat1.xyxy + vec4f(-0.50799995660781860352f, -0.68999999761581420898f, -0.46799999475479125977f, -0.20000000298023223877f));
  u_xlat3 = (u_xlat2 * x_65);
  u_xlat10.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat10.y = dot(u_xlat3.zw, u_xlat3.zw);
  u_xlat10 = sqrt(u_xlat10);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.40799999237060546875f, -0.44999998807907104492f, -0.53200000524520874023f, -0.68999999761581420898f));
  u_xlat3 = (u_xlat3 * x_245);
  u_xlat11.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat11.x = sqrt(u_xlat11.x);
  u_xlat16 = (-(u_xlat10.x) + u_xlat10.y);
  u_xlat16 = ((u_xlat16 * 2.0f) + 0.5f);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat10.x = (-(u_xlat10.y) + u_xlat10.x);
  u_xlat10.x = ((u_xlat16 * u_xlat10.x) + u_xlat10.y);
  u_xlat15 = (u_xlat16 * 0.25f);
  u_xlat16 = (-(u_xlat16) + 1.0f);
  u_xlat10.x = ((-(u_xlat15) * u_xlat16) + u_xlat10.x);
  u_xlat15 = (-(u_xlat10.x) + u_xlat11.x);
  u_xlat15 = ((u_xlat15 * 2.0f) + 0.5f);
  u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
  u_xlat10.x = (-(u_xlat11.x) + u_xlat10.x);
  u_xlat10.x = ((u_xlat15 * u_xlat10.x) + u_xlat11.x);
  u_xlat11.x = (u_xlat15 * 0.25f);
  u_xlat15 = (-(u_xlat15) + 1.0f);
  u_xlat10.x = ((-(u_xlat11.x) * u_xlat15) + u_xlat10.x);
  u_xlat10 = (u_xlat10.xx + x_342);
  u_xlat10.x = (u_xlat10.x * 4.16666650772094726562f);
  u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
  u_xlat11.x = ((u_xlat10.x * -2.0f) + 3.0f);
  u_xlat10.x = (u_xlat10.x * u_xlat10.x);
  u_xlat10.x = ((-(u_xlat11.x) * u_xlat10.x) + 1.0f);
  u_xlat15 = (u_xlat10.y * u_xlat10.y);
  u_xlat15 = (u_xlat15 * -120.2245941162109375f);
  u_xlat15 = exp2(u_xlat15);
  u_xlat11.x = (u_xlat2.w * u_xlat2.w);
  u_xlat11.x = (u_xlat11.x * -144.269500732421875f);
  u_xlat11.x = exp2(u_xlat11.x);
  u_xlat11.x = ((u_xlat11.x * 0.25f) + 0.85000002384185791016f);
  u_xlat2 = vec4f(((vs_TEXCOORD0.yyy + vec3f(-0.72000002861022949219f, -0.70800000429153442383f, -0.73200005292892456055f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * vec3f(-72.1347503662109375f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(exp2(u_xlat2.xyz).xyz, u_xlat2.w);
  u_xlat16 = (u_xlat2.x * 0.15000000596046447754f);
  u_xlat11.x = ((u_xlat2.x * 0.15000000596046447754f) + u_xlat11.x);
  u_xlat15 = (u_xlat15 * x_447.x_Rim);
  u_xlat10.x = ((-(u_xlat10.x) * u_xlat11.x) + u_xlat15);
  u_xlat15 = dot(u_xlat3.zw, u_xlat3.zw);
  u_xlat15 = sqrt(u_xlat15);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.49199998378753662109f, -0.20000000298023223877f, -0.43199998140335083008f, -0.44999998807907104492f));
  u_xlat4 = (u_xlat3 * x_478);
  u_xlat2.x = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat2.w = dot(u_xlat4.zw, u_xlat4.zw);
  let x_494 = sqrt(u_xlat2.xw);
  u_xlat2 = vec4f(x_494.x, u_xlat2.yz, x_494.y);
  u_xlat3.x = (-(u_xlat15) + u_xlat2.x);
  u_xlat3.x = ((u_xlat3.x * 2.0f) + 0.5f);
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat15 = (u_xlat15 + -(u_xlat2.x));
  u_xlat15 = ((u_xlat3.x * u_xlat15) + u_xlat2.x);
  u_xlat2.x = (u_xlat3.x * 0.25f);
  u_xlat3.x = (-(u_xlat3.x) + 1.0f);
  u_xlat15 = ((-(u_xlat2.x) * u_xlat3.x) + u_xlat15);
  u_xlat2.x = (-(u_xlat15) + u_xlat2.w);
  u_xlat2.x = ((u_xlat2.x * 2.0f) + 0.5f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat15 = (-(u_xlat2.w) + u_xlat15);
  u_xlat15 = ((u_xlat2.x * u_xlat15) + u_xlat2.w);
  u_xlat17 = (u_xlat2.x * 0.25f);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat15 = ((-(u_xlat17) * u_xlat2.x) + u_xlat15);
  let x_586 = (vec2f(u_xlat15) + x_342);
  u_xlat2 = vec4f(x_586.x, u_xlat2.yz, x_586.y);
  u_xlat15 = (u_xlat2.x * 4.16666650772094726562f);
  u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat15 * -2.0f) + 3.0f);
  u_xlat15 = (u_xlat15 * u_xlat15);
  u_xlat15 = ((-(u_xlat2.x) * u_xlat15) + 1.0f);
  u_xlat2.x = (u_xlat2.w * u_xlat2.w);
  u_xlat2.x = (u_xlat2.x * -120.2245941162109375f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat17 = (u_xlat3.y * u_xlat3.y);
  u_xlat17 = (u_xlat17 * -144.269500732421875f);
  u_xlat17 = exp2(u_xlat17);
  u_xlat16 = ((u_xlat17 * 0.25f) + u_xlat16);
  u_xlat16 = (u_xlat16 + 0.85000002384185791016f);
  u_xlat2.x = (u_xlat2.x * x_447.x_Rim);
  u_xlat15 = ((-(u_xlat15) * u_xlat16) + u_xlat2.x);
  u_xlat10.x = (-(u_xlat15) + u_xlat10.x);
  let x_662 = (x_447.x_PrintSize.xy * vec2f(0.02400000020861625671f));
  u_xlat2 = vec4f(x_662.x, u_xlat2.yz, x_662.y);
  u_xlat10.x = (u_xlat10.x / u_xlat2.x);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.51999998092651367188f, -0.67799997329711914062f, -0.47999998927116394043f, -0.18800000846385955811f));
  u_xlat4 = (u_xlat3 * x_65);
  u_xlat15 = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat15 = sqrt(u_xlat15);
  u_xlat16 = dot(u_xlat4.zw, u_xlat4.zw);
  u_xlat16 = sqrt(u_xlat16);
  u_xlat4 = (u_xlat1.xyxy + vec4f(-0.41999998688697814941f, -0.43799999356269836426f, -0.51999998092651367188f, -0.70200002193450927734f));
  u_xlat4 = (u_xlat4 * x_245);
  u_xlat2.x = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat2.x = sqrt(u_xlat2.x);
  u_xlat3.x = (-(u_xlat15) + u_xlat16);
  u_xlat3.x = ((u_xlat3.x * 2.0f) + 0.5f);
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat15 = (u_xlat15 + -(u_xlat16));
  u_xlat15 = ((u_xlat3.x * u_xlat15) + u_xlat16);
  u_xlat16 = (u_xlat3.x * 0.25f);
  u_xlat3.x = (-(u_xlat3.x) + 1.0f);
  u_xlat15 = ((-(u_xlat16) * u_xlat3.x) + u_xlat15);
  u_xlat16 = (-(u_xlat15) + u_xlat2.x);
  u_xlat16 = ((u_xlat16 * 2.0f) + 0.5f);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat15 = (-(u_xlat2.x) + u_xlat15);
  u_xlat15 = ((u_xlat16 * u_xlat15) + u_xlat2.x);
  u_xlat2.x = (u_xlat16 * 0.25f);
  u_xlat16 = (-(u_xlat16) + 1.0f);
  u_xlat15 = ((-(u_xlat2.x) * u_xlat16) + u_xlat15);
  u_xlat3 = vec4f(((vec2f(u_xlat15) + x_342)).xy, u_xlat3.zw);
  u_xlat15 = (u_xlat3.x * 4.16666650772094726562f);
  u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
  u_xlat16 = ((u_xlat15 * -2.0f) + 3.0f);
  u_xlat15 = (u_xlat15 * u_xlat15);
  u_xlat15 = ((-(u_xlat16) * u_xlat15) + 1.0f);
  u_xlat16 = (u_xlat3.y * u_xlat3.y);
  u_xlat16 = (u_xlat16 * -120.2245941162109375f);
  u_xlat16 = exp2(u_xlat16);
  u_xlat2.x = (u_xlat3.w * u_xlat3.w);
  u_xlat2.x = (u_xlat2.x * -144.269500732421875f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = ((u_xlat2.x * 0.25f) + 0.85000002384185791016f);
  u_xlat2.x = ((u_xlat2.y * 0.15000000596046447754f) + u_xlat2.x);
  u_xlat16 = (u_xlat16 * x_447.x_Rim);
  u_xlat15 = ((-(u_xlat15) * u_xlat2.x) + u_xlat16);
  u_xlat1.w = dot(u_xlat4.zw, u_xlat4.zw);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.47999998927116394043f, -0.21199999749660491943f, -0.41999998688697814941f, -0.46199998259544372559f));
  u_xlat4 = (u_xlat3 * x_478);
  u_xlat1.x = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat1.y = dot(u_xlat4.zw, u_xlat4.zw);
  let x_879 = sqrt(u_xlat1.xyw);
  u_xlat1 = vec4f(x_879.xy, u_xlat1.z, x_879.z);
  u_xlat2.x = (-(u_xlat1.w) + u_xlat1.x);
  u_xlat2.x = ((u_xlat2.x * 2.0f) + 0.5f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat16 = (-(u_xlat1.x) + u_xlat1.w);
  u_xlat1.x = ((u_xlat2.x * u_xlat16) + u_xlat1.x);
  u_xlat16 = (u_xlat2.x * 0.25f);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat1.x = ((-(u_xlat16) * u_xlat2.x) + u_xlat1.x);
  u_xlat16 = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat16 = ((u_xlat16 * 2.0f) + 0.5f);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat1.x = (-(u_xlat1.y) + u_xlat1.x);
  u_xlat1.x = ((u_xlat16 * u_xlat1.x) + u_xlat1.y);
  u_xlat6 = (u_xlat16 * 0.25f);
  u_xlat16 = (-(u_xlat16) + 1.0f);
  u_xlat1.x = ((-(u_xlat6) * u_xlat16) + u_xlat1.x);
  u_xlat1 = vec4f(((u_xlat1.xx + x_342)).xy, u_xlat1.zw);
  u_xlat1.x = (u_xlat1.x * 4.16666650772094726562f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat16 = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat16) * u_xlat1.x) + 1.0f);
  u_xlat6 = (u_xlat1.y * u_xlat1.y);
  u_xlat6 = (u_xlat6 * -120.2245941162109375f);
  u_xlat6 = exp2(u_xlat6);
  u_xlat16 = (u_xlat3.y * u_xlat3.y);
  u_xlat16 = (u_xlat16 * -144.269500732421875f);
  u_xlat16 = exp2(u_xlat16);
  u_xlat16 = ((u_xlat16 * 0.25f) + 0.85000002384185791016f);
  u_xlat16 = ((u_xlat2.z * 0.15000000596046447754f) + u_xlat16);
  u_xlat6 = (u_xlat6 * x_447.x_Rim);
  u_xlat1.x = ((-(u_xlat1.x) * u_xlat16) + u_xlat6);
  u_xlat15 = (u_xlat15 + -(u_xlat1.x));
  u_xlat15 = (u_xlat15 / u_xlat2.w);
  if (u_xlatb0) {
    x_1048 = -(u_xlat10.x);
  } else {
    x_1048 = u_xlat10.x;
  }
  u_xlat0.x = x_1048;
  u_xlat10.x = dot(vs_TEXCOORD2, vs_TEXCOORD2);
  u_xlat10.x = inverseSqrt(u_xlat10.x);
  let x_1072 = (u_xlat10.xxx * vs_TEXCOORD2);
  u_xlat1 = vec4f(x_1072.xy, u_xlat1.z, x_1072.z);
  u_xlat10.x = dot(vs_TEXCOORD3.xyz, u_xlat1.xyw);
  u_xlat2 = vec4f((((-(u_xlat1.xyw) * u_xlat10.xxx) + vs_TEXCOORD3.xyz)).xyz, u_xlat2.w);
  u_xlat10.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat10.x = inverseSqrt(u_xlat10.x);
  u_xlat2 = vec4f(((u_xlat10.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((u_xlat1.wxy * u_xlat2.yzx)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((u_xlat1.ywx * u_xlat2.zxy) + -(u_xlat3.xyz))).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((vec3f(u_xlat15) * u_xlat2.xyz)).xyz, u_xlat2.w);
  let x_1141 = ((u_xlat3.xyz * u_xlat0.xxx) + u_xlat2.xyz);
  u_xlat0 = vec4f(x_1141.x, u_xlat0.y, x_1141.yz);
  let x_1150 = (u_xlat0.xzw * vec3f(x_447.x_Depth));
  u_xlat0 = vec4f(x_1150.x, u_xlat0.y, x_1150.yz);
  let x_1163 = vec3f(x_447.x_Relief, x_447.x_Relief, x_447.x_Relief);
  let x_1171 = ((-(u_xlat0.xzw) * vec3f(x_1163.x, x_1163.y, x_1163.z)) + u_xlat1.xyw);
  u_xlat0 = vec4f(x_1171.x, u_xlat0.y, x_1171.yz);
  u_xlat2.x = dot(u_xlat0.xzw, u_xlat0.xzw);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  let x_1188 = (u_xlat0.xzw * u_xlat2.xxx);
  u_xlat0 = vec4f(x_1188.x, u_xlat0.y, x_1188.yz);
  u_xlat2 = vec4f(((vs_TEXCOORD1.yyy * x_1198.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_1198.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD1.xxx) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_1198.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD1.zzz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + x_1198.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat2.w);
  let x_1238 = u_xlat2.xy;
  txVec0 = vec3f(x_1238.x, x_1238.y, u_xlat2.z);
  u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat7.x = (-(x_1198.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat2.x * x_1198.x_MainLightShadowParams.x) + u_xlat7.x);
  u_xlatb7 = (0.0f >= u_xlat2.z);
  u_xlatb12 = (u_xlat2.z >= 1.0f);
  u_xlatb7 = (u_xlatb12 | u_xlatb7);
  if (u_xlatb7) {
    x_1286 = 1.0f;
  } else {
    x_1286 = u_xlat2.x;
  }
  u_xlat2.x = x_1286;
  u_xlat7 = (vs_TEXCOORD1 + -(x_1297.x_WorldSpaceCameraPos));
  u_xlat7.x = dot(u_xlat7, u_xlat7);
  u_xlat12 = ((u_xlat7.x * x_1198.x_MainLightShadowParams.z) + x_1198.x_MainLightShadowParams.w);
  u_xlat12 = clamp(u_xlat12, 0.0f, 1.0f);
  u_xlat17 = (-(u_xlat2.x) + 1.0f);
  u_xlat2.x = ((u_xlat12 * u_xlat17) + u_xlat2.x);
  u_xlat12 = dot(u_xlat1.xyw, x_1297.x_MainLightPosition.xyz);
  u_xlat12 = clamp(u_xlat12, 0.0f, 1.0f);
  u_xlat17 = dot(u_xlat0.xzw, x_1297.x_MainLightPosition.xyz);
  u_xlat17 = clamp(u_xlat17, 0.0f, 1.0f);
  u_xlat0.x = dot(u_xlat0.xzw, u_xlat1.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = ((u_xlat0.x * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat10.x = (u_xlat2.x * u_xlat17);
  u_xlat0.x = ((x_447.x_Ambient * u_xlat0.x) + u_xlat10.x);
  u_xlat10.x = (u_xlat2.x * u_xlat12);
  u_xlat15 = ((u_xlat12 * u_xlat2.x) + x_447.x_Ambient);
  u_xlat0.x = (u_xlat0.x / u_xlat15);
  let x_1397 = (u_xlat5.xxx + vec3f(-0.77999997138977050781f, -1.15999996662139892578f, -0.44999998807907104492f));
  u_xlat1 = vec4f(x_1397.xy, u_xlat1.z, x_1397.z);
  u_xlat5.x = (u_xlat1.x * 4.16666650772094726562f);
  u_xlat5.x = clamp(u_xlat5.x, 0.0f, 1.0f);
  u_xlat15 = ((u_xlat5.x * -2.0f) + 3.0f);
  u_xlat5.x = (u_xlat5.x * u_xlat5.x);
  u_xlat5.x = ((-(u_xlat15) * u_xlat5.x) + 1.0f);
  u_xlat15 = (u_xlat5.x * x_447.x_Darken);
  u_xlat1.x = (u_xlat1.y * u_xlat1.y);
  u_xlat1.x = (u_xlat1.x * -120.2245941162109375f);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat6 = (u_xlat1.x * x_447.x_Rim);
  u_xlat6 = ((-(u_xlat5.x) * u_xlat11.x) + u_xlat6);
  u_xlat6 = -(u_xlat6);
  u_xlat6 = clamp(u_xlat6, 0.0f, 1.0f);
  u_xlat6 = ((u_xlat6 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat15 = ((-(u_xlat15) * u_xlat6) + 1.0f);
  u_xlat0.x = (u_xlat15 * u_xlat0.x);
  u_xlat10.x = (u_xlat10.x * 3.0f);
  u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
  u_xlat10.x = (-(u_xlat10.x) + 1.0f);
  u_xlat15 = (u_xlat1.w + u_xlat1.w);
  u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
  u_xlat6 = ((u_xlat15 * -2.0f) + 3.0f);
  u_xlat15 = (u_xlat15 * u_xlat15);
  u_xlat15 = (u_xlat15 * u_xlat6);
  u_xlat15 = ((u_xlat15 * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat5.x = (u_xlat15 * u_xlat5.x);
  u_xlat10 = (u_xlat10.xx * vec2f(x_447.x_ShadeDarken, x_447.x_ShadeRim));
  u_xlat5.x = ((-(u_xlat10.x) * u_xlat5.x) + 1.0f);
  u_xlat10.x = ((u_xlat10.y * u_xlat1.x) + 1.0f);
  u_xlat5.x = (u_xlat10.x * u_xlat5.x);
  u_xlat10.x = (u_xlat5.x * u_xlat0.x);
  u_xlat15 = sqrt(u_xlat7.x);
  u_xlat1.x = (-(x_447.x_Fade.x) + x_447.x_Fade.y);
  u_xlat15 = (u_xlat15 + -(x_447.x_Fade.x));
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat15 = (u_xlat15 * u_xlat1.x);
  u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat15 * -2.0f) + 3.0f);
  u_xlat15 = (u_xlat15 * u_xlat15);
  u_xlat15 = (u_xlat15 * u_xlat1.x);
  u_xlat0.x = ((-(u_xlat0.x) * u_xlat5.x) + 1.0f);
  u_xlat0.x = ((u_xlat15 * u_xlat0.x) + u_xlat10.x);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  u_xlat0.x = min(u_xlat0.x, 1.95000004768371582031f);
  SV_Target0 = vec4f(((u_xlat0.xxx * vec3f(0.5f))).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(3) vs_TEXCOORD3_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(2) vs_TEXCOORD2_param : vec3f, @location(1) vs_TEXCOORD1_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

