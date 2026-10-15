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
  x_MainLightShadowOffset0 : vec4f,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4f,
  /* @offset(432) */
  x_MainLightShadowParams : vec4f,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4f,
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

@group(1) @binding(0) var<uniform> x_2536 : PGlobals;

var<private> gl_FragCoord : vec4f;

const x_65 = vec4f(2.12765955924987792969f, 3.33333325386047363281f, 2.5f, 5.0f);

const x_245 = vec4f(2.77777767181396484375f, 3.33333325386047363281f, 2.12765955924987792969f, 3.33333325386047363281f);

const x_342 = vec2f(-0.77999997138977050781f, -1.15999996662139892578f);

const x_478 = vec4f(2.5f, 5.0f, 2.77777767181396484375f, 3.33333325386047363281f);

const x_1346 = vec2f(0.5f);

const x_1368 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1394 = vec2f(1.0f);

const x_1432 = vec2f(0.15999999642372131348f);

const x_1502 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1880 = vec2f(2.0f);

const x_1912 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1915 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1922 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1959 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat17 : vec3f;
  var u_xlat1 : vec4f;
  var x_37 : f32;
  var u_xlat2 : vec4f;
  var u_xlat35 : vec2f;
  var u_xlat34 : vec2f;
  var u_xlat51 : f32;
  var u_xlatb34 : bool;
  var u_xlat3 : vec4f;
  var u_xlat52 : f32;
  var u_xlat4 : vec4f;
  var u_xlat53 : f32;
  var u_xlat18 : f32;
  var u_xlat0 : vec4f;
  var x_1048 : f32;
  var u_xlatb53 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb3 : bool;
  var u_xlat37 : vec2f;
  var u_xlat5 : vec4f;
  var u_xlat39 : vec2f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var txVec4 : vec3f;
  var u_xlat20 : f32;
  var txVec5 : vec3f;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat21 : vec3f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat22 : vec2f;
  var u_xlat45 : vec2f;
  var u_xlat40 : vec2f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var txVec13 : vec3f;
  var txVec14 : vec3f;
  var u_xlat56 : f32;
  var txVec15 : vec3f;
  var txVec16 : vec3f;
  var u_xlat54 : f32;
  var txVec17 : vec3f;
  var txVec18 : vec3f;
  var txVec19 : vec3f;
  var txVec20 : vec3f;
  var txVec21 : vec3f;
  var txVec22 : vec3f;
  var txVec23 : vec3f;
  var txVec24 : vec3f;
  var txVec25 : vec3f;
  var txVec26 : vec3f;
  var txVec27 : vec3f;
  var txVec28 : vec3f;
  var txVec29 : vec3f;
  var u_xlatb19 : bool;
  var u_xlatb36 : bool;
  var x_2524 : f32;
  var u_xlat19 : vec3f;
  var u_xlat36 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlatb0 = (0.0f < vs_TEXCOORD3.w);
  u_xlat17.x = (-(vs_TEXCOORD0.x) + 1.0f);
  if (u_xlatb0) {
    x_37 = u_xlat17.x;
  } else {
    x_37 = vs_TEXCOORD0.x;
  }
  u_xlat1.x = x_37;
  u_xlat1.y = vs_TEXCOORD0.y;
  u_xlat2 = (u_xlat1.xyxy + vec4f(-0.51999998092651367188f, -0.68999999761581420898f, -0.47999998927116394043f, -0.20000000298023223877f));
  u_xlat2 = (u_xlat2 * x_65);
  u_xlat17.x = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat17.y = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat35 = (u_xlat1.xy + vec2f(-0.41999998688697814941f, -0.44999998807907104492f));
  u_xlat35 = (u_xlat35 * vec2f(2.77777767181396484375f, 3.33333325386047363281f));
  u_xlat17.z = dot(u_xlat35, u_xlat35);
  u_xlat17 = sqrt(u_xlat17);
  u_xlat35.x = (-(u_xlat17.x) + u_xlat17.y);
  u_xlat35.x = ((u_xlat35.x * 2.0f) + 0.5f);
  u_xlat35.x = clamp(u_xlat35.x, 0.0f, 1.0f);
  u_xlat17.x = (-(u_xlat17.y) + u_xlat17.x);
  u_xlat17.x = ((u_xlat35.x * u_xlat17.x) + u_xlat17.y);
  u_xlat34.x = (u_xlat35.x * 0.25f);
  u_xlat35.x = (-(u_xlat35.x) + 1.0f);
  u_xlat17.x = ((-(u_xlat34.x) * u_xlat35.x) + u_xlat17.x);
  u_xlat34.x = (-(u_xlat17.x) + u_xlat17.z);
  u_xlat34.x = ((u_xlat34.x * 2.0f) + 0.5f);
  u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
  u_xlat17.x = (-(u_xlat17.z) + u_xlat17.x);
  u_xlat17.x = ((u_xlat34.x * u_xlat17.x) + u_xlat17.z);
  u_xlat51 = (u_xlat34.x * 0.25f);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat17.x = ((-(u_xlat51) * u_xlat34.x) + u_xlat17.x);
  u_xlatb34 = (1.45000004768371582031f < u_xlat17.x);
  if (u_xlatb34) {
    SV_Target0 = vec4f(0.5f, 0.5f, 0.5f, 1.0f);
    return;
  }
  u_xlat2 = (u_xlat1.xyxy + vec4f(-0.50799995660781860352f, -0.68999999761581420898f, -0.46799999475479125977f, -0.20000000298023223877f));
  u_xlat3 = (u_xlat2 * x_65);
  u_xlat34.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat34.y = dot(u_xlat3.zw, u_xlat3.zw);
  u_xlat34 = sqrt(u_xlat34);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.40799999237060546875f, -0.44999998807907104492f, -0.53200000524520874023f, -0.68999999761581420898f));
  u_xlat3 = (u_xlat3 * x_245);
  u_xlat35.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat35.x = sqrt(u_xlat35.x);
  u_xlat52 = (-(u_xlat34.x) + u_xlat34.y);
  u_xlat52 = ((u_xlat52 * 2.0f) + 0.5f);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat34.x = (-(u_xlat34.y) + u_xlat34.x);
  u_xlat34.x = ((u_xlat52 * u_xlat34.x) + u_xlat34.y);
  u_xlat51 = (u_xlat52 * 0.25f);
  u_xlat52 = (-(u_xlat52) + 1.0f);
  u_xlat34.x = ((-(u_xlat51) * u_xlat52) + u_xlat34.x);
  u_xlat51 = (-(u_xlat34.x) + u_xlat35.x);
  u_xlat51 = ((u_xlat51 * 2.0f) + 0.5f);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat34.x = (-(u_xlat35.x) + u_xlat34.x);
  u_xlat34.x = ((u_xlat51 * u_xlat34.x) + u_xlat35.x);
  u_xlat35.x = (u_xlat51 * 0.25f);
  u_xlat51 = (-(u_xlat51) + 1.0f);
  u_xlat34.x = ((-(u_xlat35.x) * u_xlat51) + u_xlat34.x);
  u_xlat34 = (u_xlat34.xx + x_342);
  u_xlat34.x = (u_xlat34.x * 4.16666650772094726562f);
  u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
  u_xlat35.x = ((u_xlat34.x * -2.0f) + 3.0f);
  u_xlat34.x = (u_xlat34.x * u_xlat34.x);
  u_xlat34.x = ((-(u_xlat35.x) * u_xlat34.x) + 1.0f);
  u_xlat51 = (u_xlat34.y * u_xlat34.y);
  u_xlat51 = (u_xlat51 * -120.2245941162109375f);
  u_xlat51 = exp2(u_xlat51);
  u_xlat35.x = (u_xlat2.w * u_xlat2.w);
  u_xlat35.x = (u_xlat35.x * -144.269500732421875f);
  u_xlat35.x = exp2(u_xlat35.x);
  u_xlat35.x = ((u_xlat35.x * 0.25f) + 0.85000002384185791016f);
  u_xlat2 = vec4f(((vs_TEXCOORD0.yyy + vec3f(-0.72000002861022949219f, -0.70800000429153442383f, -0.73200005292892456055f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * vec3f(-72.1347503662109375f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(exp2(u_xlat2.xyz).xyz, u_xlat2.w);
  u_xlat52 = (u_xlat2.x * 0.15000000596046447754f);
  u_xlat35.x = ((u_xlat2.x * 0.15000000596046447754f) + u_xlat35.x);
  u_xlat51 = (u_xlat51 * x_447.x_Rim);
  u_xlat34.x = ((-(u_xlat34.x) * u_xlat35.x) + u_xlat51);
  u_xlat51 = dot(u_xlat3.zw, u_xlat3.zw);
  u_xlat51 = sqrt(u_xlat51);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.49199998378753662109f, -0.20000000298023223877f, -0.43199998140335083008f, -0.44999998807907104492f));
  u_xlat4 = (u_xlat3 * x_478);
  u_xlat2.x = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat2.w = dot(u_xlat4.zw, u_xlat4.zw);
  let x_494 = sqrt(u_xlat2.xw);
  u_xlat2 = vec4f(x_494.x, u_xlat2.yz, x_494.y);
  u_xlat3.x = (-(u_xlat51) + u_xlat2.x);
  u_xlat3.x = ((u_xlat3.x * 2.0f) + 0.5f);
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat51 = (u_xlat51 + -(u_xlat2.x));
  u_xlat51 = ((u_xlat3.x * u_xlat51) + u_xlat2.x);
  u_xlat2.x = (u_xlat3.x * 0.25f);
  u_xlat3.x = (-(u_xlat3.x) + 1.0f);
  u_xlat51 = ((-(u_xlat2.x) * u_xlat3.x) + u_xlat51);
  u_xlat2.x = (-(u_xlat51) + u_xlat2.w);
  u_xlat2.x = ((u_xlat2.x * 2.0f) + 0.5f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat51 = (-(u_xlat2.w) + u_xlat51);
  u_xlat51 = ((u_xlat2.x * u_xlat51) + u_xlat2.w);
  u_xlat53 = (u_xlat2.x * 0.25f);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat51 = ((-(u_xlat53) * u_xlat2.x) + u_xlat51);
  let x_586 = (vec2f(u_xlat51) + x_342);
  u_xlat2 = vec4f(x_586.x, u_xlat2.yz, x_586.y);
  u_xlat51 = (u_xlat2.x * 4.16666650772094726562f);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((-(u_xlat2.x) * u_xlat51) + 1.0f);
  u_xlat2.x = (u_xlat2.w * u_xlat2.w);
  u_xlat2.x = (u_xlat2.x * -120.2245941162109375f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat53 = (u_xlat3.y * u_xlat3.y);
  u_xlat53 = (u_xlat53 * -144.269500732421875f);
  u_xlat53 = exp2(u_xlat53);
  u_xlat52 = ((u_xlat53 * 0.25f) + u_xlat52);
  u_xlat52 = (u_xlat52 + 0.85000002384185791016f);
  u_xlat2.x = (u_xlat2.x * x_447.x_Rim);
  u_xlat51 = ((-(u_xlat51) * u_xlat52) + u_xlat2.x);
  u_xlat34.x = (-(u_xlat51) + u_xlat34.x);
  let x_662 = (x_447.x_PrintSize.xy * vec2f(0.02400000020861625671f));
  u_xlat2 = vec4f(x_662.x, u_xlat2.yz, x_662.y);
  u_xlat34.x = (u_xlat34.x / u_xlat2.x);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.51999998092651367188f, -0.67799997329711914062f, -0.47999998927116394043f, -0.18800000846385955811f));
  u_xlat4 = (u_xlat3 * x_65);
  u_xlat51 = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat51 = sqrt(u_xlat51);
  u_xlat52 = dot(u_xlat4.zw, u_xlat4.zw);
  u_xlat52 = sqrt(u_xlat52);
  u_xlat4 = (u_xlat1.xyxy + vec4f(-0.41999998688697814941f, -0.43799999356269836426f, -0.51999998092651367188f, -0.70200002193450927734f));
  u_xlat4 = (u_xlat4 * x_245);
  u_xlat2.x = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat2.x = sqrt(u_xlat2.x);
  u_xlat3.x = (-(u_xlat51) + u_xlat52);
  u_xlat3.x = ((u_xlat3.x * 2.0f) + 0.5f);
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat51 = (u_xlat51 + -(u_xlat52));
  u_xlat51 = ((u_xlat3.x * u_xlat51) + u_xlat52);
  u_xlat52 = (u_xlat3.x * 0.25f);
  u_xlat3.x = (-(u_xlat3.x) + 1.0f);
  u_xlat51 = ((-(u_xlat52) * u_xlat3.x) + u_xlat51);
  u_xlat52 = (-(u_xlat51) + u_xlat2.x);
  u_xlat52 = ((u_xlat52 * 2.0f) + 0.5f);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat51 = (-(u_xlat2.x) + u_xlat51);
  u_xlat51 = ((u_xlat52 * u_xlat51) + u_xlat2.x);
  u_xlat2.x = (u_xlat52 * 0.25f);
  u_xlat52 = (-(u_xlat52) + 1.0f);
  u_xlat51 = ((-(u_xlat2.x) * u_xlat52) + u_xlat51);
  u_xlat3 = vec4f(((vec2f(u_xlat51) + x_342)).xy, u_xlat3.zw);
  u_xlat51 = (u_xlat3.x * 4.16666650772094726562f);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat52 = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((-(u_xlat52) * u_xlat51) + 1.0f);
  u_xlat52 = (u_xlat3.y * u_xlat3.y);
  u_xlat52 = (u_xlat52 * -120.2245941162109375f);
  u_xlat52 = exp2(u_xlat52);
  u_xlat2.x = (u_xlat3.w * u_xlat3.w);
  u_xlat2.x = (u_xlat2.x * -144.269500732421875f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = ((u_xlat2.x * 0.25f) + 0.85000002384185791016f);
  u_xlat2.x = ((u_xlat2.y * 0.15000000596046447754f) + u_xlat2.x);
  u_xlat52 = (u_xlat52 * x_447.x_Rim);
  u_xlat51 = ((-(u_xlat51) * u_xlat2.x) + u_xlat52);
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
  u_xlat52 = (-(u_xlat1.x) + u_xlat1.w);
  u_xlat1.x = ((u_xlat2.x * u_xlat52) + u_xlat1.x);
  u_xlat52 = (u_xlat2.x * 0.25f);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat1.x = ((-(u_xlat52) * u_xlat2.x) + u_xlat1.x);
  u_xlat52 = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat52 = ((u_xlat52 * 2.0f) + 0.5f);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat1.x = (-(u_xlat1.y) + u_xlat1.x);
  u_xlat1.x = ((u_xlat52 * u_xlat1.x) + u_xlat1.y);
  u_xlat18 = (u_xlat52 * 0.25f);
  u_xlat52 = (-(u_xlat52) + 1.0f);
  u_xlat1.x = ((-(u_xlat18) * u_xlat52) + u_xlat1.x);
  u_xlat1 = vec4f(((u_xlat1.xx + x_342)).xy, u_xlat1.zw);
  u_xlat1.x = (u_xlat1.x * 4.16666650772094726562f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat52 = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat52) * u_xlat1.x) + 1.0f);
  u_xlat18 = (u_xlat1.y * u_xlat1.y);
  u_xlat18 = (u_xlat18 * -120.2245941162109375f);
  u_xlat18 = exp2(u_xlat18);
  u_xlat52 = (u_xlat3.y * u_xlat3.y);
  u_xlat52 = (u_xlat52 * -144.269500732421875f);
  u_xlat52 = exp2(u_xlat52);
  u_xlat52 = ((u_xlat52 * 0.25f) + 0.85000002384185791016f);
  u_xlat52 = ((u_xlat2.z * 0.15000000596046447754f) + u_xlat52);
  u_xlat18 = (u_xlat18 * x_447.x_Rim);
  u_xlat1.x = ((-(u_xlat1.x) * u_xlat52) + u_xlat18);
  u_xlat51 = (u_xlat51 + -(u_xlat1.x));
  u_xlat51 = (u_xlat51 / u_xlat2.w);
  if (u_xlatb0) {
    x_1048 = -(u_xlat34.x);
  } else {
    x_1048 = u_xlat34.x;
  }
  u_xlat0.x = x_1048;
  u_xlat34.x = dot(vs_TEXCOORD2, vs_TEXCOORD2);
  u_xlat34.x = inverseSqrt(u_xlat34.x);
  let x_1072 = (u_xlat34.xxx * vs_TEXCOORD2);
  u_xlat1 = vec4f(x_1072.xy, u_xlat1.z, x_1072.z);
  u_xlat34.x = dot(vs_TEXCOORD3.xyz, u_xlat1.xyw);
  u_xlat2 = vec4f((((-(u_xlat1.xyw) * u_xlat34.xxx) + vs_TEXCOORD3.xyz)).xyz, u_xlat2.w);
  u_xlat34.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat34.x = inverseSqrt(u_xlat34.x);
  u_xlat2 = vec4f(((u_xlat34.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((u_xlat1.wxy * u_xlat2.yzx)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((u_xlat1.ywx * u_xlat2.zxy) + -(u_xlat3.xyz))).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((vec3f(u_xlat51) * u_xlat2.xyz)).xyz, u_xlat2.w);
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
  u_xlatb53 = (0.0f < x_1198.x_MainLightShadowParams.y);
  if (u_xlatb53) {
    u_xlatb53 = (x_1198.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb53) {
      u_xlat3 = (u_xlat2.xyxy + x_1198.x_MainLightShadowOffset0);
      let x_1258 = u_xlat3.xy;
      txVec0 = vec3f(x_1258.x, x_1258.y, u_xlat2.z);
      u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1280 = u_xlat3.zw;
      txVec1 = vec3f(x_1280.x, x_1280.y, u_xlat2.z);
      u_xlat4.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat3 = (u_xlat2.xyxy + x_1198.x_MainLightShadowOffset1);
      let x_1300 = u_xlat3.xy;
      txVec2 = vec3f(x_1300.x, x_1300.y, u_xlat2.z);
      u_xlat4.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1315 = u_xlat3.zw;
      txVec3 = vec3f(x_1315.x, x_1315.y, u_xlat2.z);
      u_xlat4.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat53 = dot(u_xlat4, vec4f(0.25f));
    } else {
      u_xlatb3 = (x_1198.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb3) {
        u_xlat3 = vec4f((((u_xlat2.xy * x_1198.x_MainLightShadowmapSize.zw) + x_1346)).xy, u_xlat3.zw);
        u_xlat3 = vec4f(floor(u_xlat3.xy).xy, u_xlat3.zw);
        u_xlat37 = ((u_xlat2.xy * x_1198.x_MainLightShadowmapSize.zw) + -(u_xlat3.xy));
        u_xlat4 = (u_xlat37.xxyy + x_1368);
        u_xlat5 = (u_xlat4.xxzz * u_xlat4.xxzz);
        let x_1380 = (u_xlat5.yw * vec2f(0.07999999821186065674f));
        u_xlat4 = vec4f(x_1380.x, u_xlat4.y, x_1380.y, u_xlat4.w);
        u_xlat5 = vec4f((((u_xlat5.xz * x_1346) + -(u_xlat37))).xy, u_xlat5.zw);
        u_xlat39 = (-(u_xlat37) + x_1394);
        u_xlat6 = vec4f(min(u_xlat37, vec2f()).xy, u_xlat6.zw);
        u_xlat6 = vec4f((((-(u_xlat6.xy) * u_xlat6.xy) + u_xlat39)).xy, u_xlat6.zw);
        u_xlat37 = max(u_xlat37, vec2f());
        u_xlat37 = ((-(u_xlat37) * u_xlat37) + u_xlat4.yw);
        u_xlat6 = vec4f(((u_xlat6.xy + x_1394)).xy, u_xlat6.zw);
        u_xlat37 = (u_xlat37 + x_1394);
        u_xlat7 = vec4f(((u_xlat5.xy * x_1432)).xy, u_xlat7.zw);
        u_xlat5 = vec4f(((u_xlat39 * x_1432)).xy, u_xlat5.zw);
        u_xlat6 = vec4f(((u_xlat6.xy * x_1432)).xy, u_xlat6.zw);
        u_xlat8 = vec4f(((u_xlat37 * x_1432)).xy, u_xlat8.zw);
        u_xlat37 = (u_xlat4.yw * x_1432);
        u_xlat7.z = u_xlat6.x;
        u_xlat7.w = u_xlat37.x;
        u_xlat5.z = u_xlat8.x;
        u_xlat5.w = u_xlat4.x;
        u_xlat9 = (u_xlat5.zwxz + u_xlat7.zwxz);
        u_xlat6.z = u_xlat7.y;
        u_xlat6.w = u_xlat37.y;
        u_xlat8.z = u_xlat5.y;
        u_xlat8.w = u_xlat4.z;
        u_xlat4 = vec4f(((u_xlat6.zyw + u_xlat8.zyw)).xyz, u_xlat4.w);
        u_xlat5 = vec4f(((u_xlat5.xzw / u_xlat9.zwy)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat5.xyz + x_1502)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat8.zyw / u_xlat4.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f(((u_xlat6.xyz + x_1502)).xyz, u_xlat6.w);
        u_xlat5 = vec4f(((u_xlat5.yxz * x_1198.x_MainLightShadowmapSize.xxx)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_1198.x_MainLightShadowmapSize.yyy)).xyz, u_xlat6.w);
        u_xlat5.w = u_xlat6.x;
        u_xlat7 = ((u_xlat3.xyxy * x_1198.x_MainLightShadowmapSize.xyxy) + u_xlat5.ywxw);
        u_xlat37 = ((u_xlat3.xy * x_1198.x_MainLightShadowmapSize.xy) + u_xlat5.zw);
        u_xlat6.w = u_xlat5.y;
        let x_1559 = u_xlat6.yz;
        u_xlat5 = vec4f(u_xlat5.x, x_1559.x, u_xlat5.z, x_1559.y);
        u_xlat8 = ((u_xlat3.xyxy * x_1198.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyzy);
        u_xlat6 = ((u_xlat3.xyxy * x_1198.x_MainLightShadowmapSize.xyxy) + u_xlat6.wywz);
        u_xlat5 = ((u_xlat3.xyxy * x_1198.x_MainLightShadowmapSize.xyxy) + u_xlat5.xwzw);
        u_xlat10 = (u_xlat4.xxxy * u_xlat9.zwyz);
        u_xlat11 = (u_xlat4.yyzz * u_xlat9);
        u_xlat3.x = (u_xlat4.z * u_xlat9.y);
        let x_1608 = u_xlat7.xy;
        txVec4 = vec3f(x_1608.x, x_1608.y, u_xlat2.z);
        u_xlat20 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1623 = u_xlat7.zw;
        txVec5 = vec3f(x_1623.x, x_1623.y, u_xlat2.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat4.x = (u_xlat4.x * u_xlat10.y);
        u_xlat20 = ((u_xlat10.x * u_xlat20) + u_xlat4.x);
        txVec6 = vec3f(u_xlat37.x, u_xlat37.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat20 = ((u_xlat10.z * u_xlat37.x) + u_xlat20);
        let x_1672 = u_xlat6.xy;
        txVec7 = vec3f(x_1672.x, x_1672.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat20 = ((u_xlat10.w * u_xlat37.x) + u_xlat20);
        let x_1694 = u_xlat8.xy;
        txVec8 = vec3f(x_1694.x, x_1694.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat20 = ((u_xlat11.x * u_xlat37.x) + u_xlat20);
        let x_1716 = u_xlat8.zw;
        txVec9 = vec3f(x_1716.x, x_1716.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat20 = ((u_xlat11.y * u_xlat37.x) + u_xlat20);
        let x_1738 = u_xlat6.zw;
        txVec10 = vec3f(x_1738.x, x_1738.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat20 = ((u_xlat11.z * u_xlat37.x) + u_xlat20);
        let x_1760 = u_xlat5.xy;
        txVec11 = vec3f(x_1760.x, x_1760.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat20 = ((u_xlat11.w * u_xlat37.x) + u_xlat20);
        let x_1782 = u_xlat5.zw;
        txVec12 = vec3f(x_1782.x, x_1782.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat53 = ((u_xlat3.x * u_xlat37.x) + u_xlat20);
      } else {
        u_xlat3 = vec4f((((u_xlat2.xy * x_1198.x_MainLightShadowmapSize.zw) + x_1346)).xy, u_xlat3.zw);
        u_xlat3 = vec4f(floor(u_xlat3.xy).xy, u_xlat3.zw);
        u_xlat37 = ((u_xlat2.xy * x_1198.x_MainLightShadowmapSize.zw) + -(u_xlat3.xy));
        u_xlat4 = (u_xlat37.xxyy + x_1368);
        u_xlat5 = (u_xlat4.xxzz * u_xlat4.xxzz);
        let x_1839 = (u_xlat5.yw * vec2f(0.04081600159406661987f));
        u_xlat6 = vec4f(u_xlat6.x, x_1839.x, u_xlat6.z, x_1839.y);
        let x_1847 = ((u_xlat5.xz * x_1346) + -(u_xlat37));
        u_xlat4 = vec4f(x_1847.x, u_xlat4.y, x_1847.y, u_xlat4.w);
        u_xlat5 = vec4f(((-(u_xlat37) + x_1394)).xy, u_xlat5.zw);
        u_xlat39 = min(u_xlat37, vec2f());
        u_xlat5 = vec4f((((-(u_xlat39) * u_xlat39) + u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat39 = max(u_xlat37, vec2f());
        let x_1875 = ((-(u_xlat39) * u_xlat39) + u_xlat4.yw);
        u_xlat21 = vec3f(x_1875.x, u_xlat21.y, x_1875.y);
        u_xlat5 = vec4f(((u_xlat5.xy + x_1880)).xy, u_xlat5.zw);
        let x_1886 = (u_xlat21.xz + x_1880);
        u_xlat4 = vec4f(u_xlat4.x, x_1886.x, u_xlat4.z, x_1886.y);
        u_xlat7.z = (u_xlat4.y * 0.08163200318813323975f);
        u_xlat8 = vec4f(((u_xlat4.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat8.w);
        u_xlat4 = vec4f(((u_xlat5.xy * vec2f(0.08163200318813323975f))).xy, u_xlat4.zw);
        u_xlat7.x = u_xlat8.y;
        let x_1916 = ((u_xlat37.xx * x_1912) + x_1915);
        u_xlat7 = vec4f(u_xlat7.x, x_1916.x, u_xlat7.z, x_1916.y);
        let x_1923 = ((u_xlat37.xx * x_1912) + x_1922);
        u_xlat5 = vec4f(x_1923.x, u_xlat5.y, x_1923.y, u_xlat5.w);
        u_xlat5.y = u_xlat4.x;
        u_xlat5.w = u_xlat6.y;
        u_xlat7 = (u_xlat5 + u_xlat7);
        let x_1938 = ((u_xlat37.yy * x_1912) + x_1915);
        u_xlat8 = vec4f(u_xlat8.x, x_1938.x, u_xlat8.z, x_1938.y);
        let x_1944 = ((u_xlat37.yy * x_1912) + x_1922);
        u_xlat6 = vec4f(x_1944.x, u_xlat6.y, x_1944.y, u_xlat6.w);
        u_xlat6.y = u_xlat4.y;
        u_xlat4 = (u_xlat6 + u_xlat8);
        u_xlat5 = (u_xlat5 / u_xlat7);
        u_xlat5 = (u_xlat5 + x_1959);
        u_xlat6 = (u_xlat6 / u_xlat4);
        u_xlat6 = (u_xlat6 + x_1959);
        u_xlat5 = (u_xlat5.wxyz * x_1198.x_MainLightShadowmapSize.xxxx);
        u_xlat6 = (u_xlat6.xwyz * x_1198.x_MainLightShadowmapSize.yyyy);
        let x_1979 = u_xlat5.yzw;
        u_xlat8 = vec4f(x_1979.x, u_xlat8.y, x_1979.yz);
        u_xlat8.y = u_xlat6.x;
        u_xlat9 = ((u_xlat3.xyxy * x_1198.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat37 = ((u_xlat3.xy * x_1198.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.y = u_xlat8.y;
        u_xlat8.y = u_xlat6.z;
        u_xlat10 = ((u_xlat3.xyxy * x_1198.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat11 = vec4f((((u_xlat3.xy * x_1198.x_MainLightShadowmapSize.xy) + u_xlat8.wy)).xy, u_xlat11.zw);
        u_xlat5.z = u_xlat8.y;
        u_xlat12 = ((u_xlat3.xyxy * x_1198.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyxz);
        u_xlat8.y = u_xlat6.w;
        u_xlat13 = ((u_xlat3.xyxy * x_1198.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat22 = ((u_xlat3.xy * x_1198.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.w = u_xlat8.y;
        u_xlat45 = ((u_xlat3.xy * x_1198.x_MainLightShadowmapSize.xy) + u_xlat5.xw);
        let x_2079 = u_xlat8.xzw;
        u_xlat6 = vec4f(x_2079.x, u_xlat6.y, x_2079.yz);
        u_xlat8 = ((u_xlat3.xyxy * x_1198.x_MainLightShadowmapSize.xyxy) + u_xlat6.xyzy);
        u_xlat40 = ((u_xlat3.xy * x_1198.x_MainLightShadowmapSize.xy) + u_xlat6.wy);
        u_xlat6.x = u_xlat5.x;
        u_xlat3 = vec4f((((u_xlat3.xy * x_1198.x_MainLightShadowmapSize.xy) + u_xlat6.xy)).xy, u_xlat3.zw);
        u_xlat14 = (u_xlat4.xxxx * u_xlat7);
        u_xlat15 = (u_xlat4.yyyy * u_xlat7);
        u_xlat16 = (u_xlat4.zzzz * u_xlat7);
        u_xlat4 = (u_xlat4.wwww * u_xlat7);
        let x_2136 = u_xlat9.xy;
        txVec13 = vec3f(x_2136.x, x_2136.y, u_xlat2.z);
        u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_2151 = u_xlat9.zw;
        txVec14 = vec3f(x_2151.x, x_2151.y, u_xlat2.z);
        u_xlat56 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat56 = (u_xlat56 * u_xlat14.y);
        u_xlat5.x = ((u_xlat14.x * u_xlat5.x) + u_xlat56);
        txVec15 = vec3f(u_xlat37.x, u_xlat37.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat37.x = ((u_xlat14.z * u_xlat37.x) + u_xlat5.x);
        let x_2201 = u_xlat12.xy;
        txVec16 = vec3f(x_2201.x, x_2201.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat37.x = ((u_xlat14.w * u_xlat54) + u_xlat37.x);
        let x_2224 = u_xlat10.xy;
        txVec17 = vec3f(x_2224.x, x_2224.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat37.x = ((u_xlat15.x * u_xlat54) + u_xlat37.x);
        let x_2246 = u_xlat10.zw;
        txVec18 = vec3f(x_2246.x, x_2246.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat37.x = ((u_xlat15.y * u_xlat54) + u_xlat37.x);
        let x_2268 = u_xlat11.xy;
        txVec19 = vec3f(x_2268.x, x_2268.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat37.x = ((u_xlat15.z * u_xlat54) + u_xlat37.x);
        let x_2290 = u_xlat12.zw;
        txVec20 = vec3f(x_2290.x, x_2290.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat37.x = ((u_xlat15.w * u_xlat54) + u_xlat37.x);
        let x_2312 = u_xlat13.xy;
        txVec21 = vec3f(x_2312.x, x_2312.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat37.x = ((u_xlat16.x * u_xlat54) + u_xlat37.x);
        let x_2334 = u_xlat13.zw;
        txVec22 = vec3f(x_2334.x, x_2334.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat37.x = ((u_xlat16.y * u_xlat54) + u_xlat37.x);
        txVec23 = vec3f(u_xlat22.x, u_xlat22.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat37.x = ((u_xlat16.z * u_xlat54) + u_xlat37.x);
        txVec24 = vec3f(u_xlat45.x, u_xlat45.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat37.x = ((u_xlat16.w * u_xlat54) + u_xlat37.x);
        let x_2398 = u_xlat8.xy;
        txVec25 = vec3f(x_2398.x, x_2398.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat37.x = ((u_xlat4.x * u_xlat54) + u_xlat37.x);
        let x_2420 = u_xlat8.zw;
        txVec26 = vec3f(x_2420.x, x_2420.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat37.x = ((u_xlat4.y * u_xlat54) + u_xlat37.x);
        txVec27 = vec3f(u_xlat40.x, u_xlat40.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat37.x = ((u_xlat4.z * u_xlat54) + u_xlat37.x);
        let x_2463 = u_xlat3.xy;
        txVec28 = vec3f(x_2463.x, x_2463.y, u_xlat2.z);
        u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat53 = ((u_xlat4.w * u_xlat3.x) + u_xlat37.x);
      }
    }
  } else {
    let x_2487 = u_xlat2.xy;
    txVec29 = vec3f(x_2487.x, x_2487.y, u_xlat2.z);
    u_xlat53 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat2.x = (-(x_1198.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat53 * x_1198.x_MainLightShadowParams.x) + u_xlat2.x);
  u_xlatb19 = (0.0f >= u_xlat2.z);
  u_xlatb36 = (u_xlat2.z >= 1.0f);
  u_xlatb19 = (u_xlatb36 | u_xlatb19);
  if (u_xlatb19) {
    x_2524 = 1.0f;
  } else {
    x_2524 = u_xlat2.x;
  }
  u_xlat2.x = x_2524;
  u_xlat19 = (vs_TEXCOORD1 + -(x_2536.x_WorldSpaceCameraPos));
  u_xlat19.x = dot(u_xlat19, u_xlat19);
  u_xlat36 = ((u_xlat19.x * x_1198.x_MainLightShadowParams.z) + x_1198.x_MainLightShadowParams.w);
  u_xlat36 = clamp(u_xlat36, 0.0f, 1.0f);
  u_xlat53 = (-(u_xlat2.x) + 1.0f);
  u_xlat2.x = ((u_xlat36 * u_xlat53) + u_xlat2.x);
  u_xlat36 = dot(u_xlat1.xyw, x_2536.x_MainLightPosition.xyz);
  u_xlat36 = clamp(u_xlat36, 0.0f, 1.0f);
  u_xlat53 = dot(u_xlat0.xzw, x_2536.x_MainLightPosition.xyz);
  u_xlat53 = clamp(u_xlat53, 0.0f, 1.0f);
  u_xlat0.x = dot(u_xlat0.xzw, u_xlat1.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = ((u_xlat0.x * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat34.x = (u_xlat2.x * u_xlat53);
  u_xlat0.x = ((x_447.x_Ambient * u_xlat0.x) + u_xlat34.x);
  u_xlat34.x = (u_xlat2.x * u_xlat36);
  u_xlat51 = ((u_xlat36 * u_xlat2.x) + x_447.x_Ambient);
  u_xlat0.x = (u_xlat0.x / u_xlat51);
  let x_2636 = (u_xlat17.xxx + vec3f(-0.77999997138977050781f, -1.15999996662139892578f, -0.44999998807907104492f));
  u_xlat1 = vec4f(x_2636.xy, u_xlat1.z, x_2636.z);
  u_xlat17.x = (u_xlat1.x * 4.16666650772094726562f);
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat51 = ((u_xlat17.x * -2.0f) + 3.0f);
  u_xlat17.x = (u_xlat17.x * u_xlat17.x);
  u_xlat17.x = ((-(u_xlat51) * u_xlat17.x) + 1.0f);
  u_xlat51 = (u_xlat17.x * x_447.x_Darken);
  u_xlat1.x = (u_xlat1.y * u_xlat1.y);
  u_xlat1.x = (u_xlat1.x * -120.2245941162109375f);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat18 = (u_xlat1.x * x_447.x_Rim);
  u_xlat18 = ((-(u_xlat17.x) * u_xlat35.x) + u_xlat18);
  u_xlat18 = -(u_xlat18);
  u_xlat18 = clamp(u_xlat18, 0.0f, 1.0f);
  u_xlat18 = ((u_xlat18 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat51 = ((-(u_xlat51) * u_xlat18) + 1.0f);
  u_xlat0.x = (u_xlat51 * u_xlat0.x);
  u_xlat34.x = (u_xlat34.x * 3.0f);
  u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat51 = (u_xlat1.w + u_xlat1.w);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat18 = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat18);
  u_xlat51 = ((u_xlat51 * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat17.x = (u_xlat51 * u_xlat17.x);
  u_xlat34 = (u_xlat34.xx * vec2f(x_447.x_ShadeDarken, x_447.x_ShadeRim));
  u_xlat17.x = ((-(u_xlat34.x) * u_xlat17.x) + 1.0f);
  u_xlat34.x = ((u_xlat34.y * u_xlat1.x) + 1.0f);
  u_xlat17.x = (u_xlat34.x * u_xlat17.x);
  u_xlat34.x = (u_xlat17.x * u_xlat0.x);
  u_xlat51 = sqrt(u_xlat19.x);
  u_xlat1.x = (-(x_447.x_Fade.x) + x_447.x_Fade.y);
  u_xlat51 = (u_xlat51 + -(x_447.x_Fade.x));
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat0.x = ((-(u_xlat0.x) * u_xlat17.x) + 1.0f);
  u_xlat0.x = ((u_xlat51 * u_xlat0.x) + u_xlat34.x);
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
  x_CascadeShadowSplitSpheres0 : vec4f,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4f,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4f,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4f,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4f,
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

@group(1) @binding(1) var<uniform> x_1197 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(1) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(0) var<uniform> x_1420 : PGlobals;

var<private> gl_FragCoord : vec4f;

const x_65 = vec4f(2.12765955924987792969f, 3.33333325386047363281f, 2.5f, 5.0f);

const x_245 = vec4f(2.77777767181396484375f, 3.33333325386047363281f, 2.12765955924987792969f, 3.33333325386047363281f);

const x_342 = vec2f(-0.77999997138977050781f, -1.15999996662139892578f);

const x_478 = vec4f(2.5f, 5.0f, 2.77777767181396484375f, 3.33333325386047363281f);

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat6 : vec3f;
  var u_xlat1 : vec4f;
  var x_37 : f32;
  var u_xlat2 : vec4f;
  var u_xlat13 : vec2f;
  var u_xlat12 : vec2f;
  var u_xlat18 : f32;
  var u_xlatb12 : bool;
  var u_xlat3 : vec4f;
  var u_xlat19 : f32;
  var u_xlat4 : vec4f;
  var u_xlat20 : f32;
  var u_xlat7 : f32;
  var u_xlat0 : vec4f;
  var x_1048 : f32;
  var u_xlat5 : vec3f;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat8 : vec3f;
  var txVec0 : vec3f;
  var u_xlatb8 : bool;
  var u_xlatb14 : bool;
  var x_1409 : f32;
  var u_xlat14 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlatb0 = (0.0f < vs_TEXCOORD3.w);
  u_xlat6.x = (-(vs_TEXCOORD0.x) + 1.0f);
  if (u_xlatb0) {
    x_37 = u_xlat6.x;
  } else {
    x_37 = vs_TEXCOORD0.x;
  }
  u_xlat1.x = x_37;
  u_xlat1.y = vs_TEXCOORD0.y;
  u_xlat2 = (u_xlat1.xyxy + vec4f(-0.51999998092651367188f, -0.68999999761581420898f, -0.47999998927116394043f, -0.20000000298023223877f));
  u_xlat2 = (u_xlat2 * x_65);
  u_xlat6.x = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat6.y = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat13 = (u_xlat1.xy + vec2f(-0.41999998688697814941f, -0.44999998807907104492f));
  u_xlat13 = (u_xlat13 * vec2f(2.77777767181396484375f, 3.33333325386047363281f));
  u_xlat6.z = dot(u_xlat13, u_xlat13);
  u_xlat6 = sqrt(u_xlat6);
  u_xlat13.x = (-(u_xlat6.x) + u_xlat6.y);
  u_xlat13.x = ((u_xlat13.x * 2.0f) + 0.5f);
  u_xlat13.x = clamp(u_xlat13.x, 0.0f, 1.0f);
  u_xlat6.x = (-(u_xlat6.y) + u_xlat6.x);
  u_xlat6.x = ((u_xlat13.x * u_xlat6.x) + u_xlat6.y);
  u_xlat12.x = (u_xlat13.x * 0.25f);
  u_xlat13.x = (-(u_xlat13.x) + 1.0f);
  u_xlat6.x = ((-(u_xlat12.x) * u_xlat13.x) + u_xlat6.x);
  u_xlat12.x = (-(u_xlat6.x) + u_xlat6.z);
  u_xlat12.x = ((u_xlat12.x * 2.0f) + 0.5f);
  u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
  u_xlat6.x = (-(u_xlat6.z) + u_xlat6.x);
  u_xlat6.x = ((u_xlat12.x * u_xlat6.x) + u_xlat6.z);
  u_xlat18 = (u_xlat12.x * 0.25f);
  u_xlat12.x = (-(u_xlat12.x) + 1.0f);
  u_xlat6.x = ((-(u_xlat18) * u_xlat12.x) + u_xlat6.x);
  u_xlatb12 = (1.45000004768371582031f < u_xlat6.x);
  if (u_xlatb12) {
    SV_Target0 = vec4f(0.5f, 0.5f, 0.5f, 1.0f);
    return;
  }
  u_xlat2 = (u_xlat1.xyxy + vec4f(-0.50799995660781860352f, -0.68999999761581420898f, -0.46799999475479125977f, -0.20000000298023223877f));
  u_xlat3 = (u_xlat2 * x_65);
  u_xlat12.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat12.y = dot(u_xlat3.zw, u_xlat3.zw);
  u_xlat12 = sqrt(u_xlat12);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.40799999237060546875f, -0.44999998807907104492f, -0.53200000524520874023f, -0.68999999761581420898f));
  u_xlat3 = (u_xlat3 * x_245);
  u_xlat13.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat13.x = sqrt(u_xlat13.x);
  u_xlat19 = (-(u_xlat12.x) + u_xlat12.y);
  u_xlat19 = ((u_xlat19 * 2.0f) + 0.5f);
  u_xlat19 = clamp(u_xlat19, 0.0f, 1.0f);
  u_xlat12.x = (-(u_xlat12.y) + u_xlat12.x);
  u_xlat12.x = ((u_xlat19 * u_xlat12.x) + u_xlat12.y);
  u_xlat18 = (u_xlat19 * 0.25f);
  u_xlat19 = (-(u_xlat19) + 1.0f);
  u_xlat12.x = ((-(u_xlat18) * u_xlat19) + u_xlat12.x);
  u_xlat18 = (-(u_xlat12.x) + u_xlat13.x);
  u_xlat18 = ((u_xlat18 * 2.0f) + 0.5f);
  u_xlat18 = clamp(u_xlat18, 0.0f, 1.0f);
  u_xlat12.x = (-(u_xlat13.x) + u_xlat12.x);
  u_xlat12.x = ((u_xlat18 * u_xlat12.x) + u_xlat13.x);
  u_xlat13.x = (u_xlat18 * 0.25f);
  u_xlat18 = (-(u_xlat18) + 1.0f);
  u_xlat12.x = ((-(u_xlat13.x) * u_xlat18) + u_xlat12.x);
  u_xlat12 = (u_xlat12.xx + x_342);
  u_xlat12.x = (u_xlat12.x * 4.16666650772094726562f);
  u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
  u_xlat13.x = ((u_xlat12.x * -2.0f) + 3.0f);
  u_xlat12.x = (u_xlat12.x * u_xlat12.x);
  u_xlat12.x = ((-(u_xlat13.x) * u_xlat12.x) + 1.0f);
  u_xlat18 = (u_xlat12.y * u_xlat12.y);
  u_xlat18 = (u_xlat18 * -120.2245941162109375f);
  u_xlat18 = exp2(u_xlat18);
  u_xlat13.x = (u_xlat2.w * u_xlat2.w);
  u_xlat13.x = (u_xlat13.x * -144.269500732421875f);
  u_xlat13.x = exp2(u_xlat13.x);
  u_xlat13.x = ((u_xlat13.x * 0.25f) + 0.85000002384185791016f);
  u_xlat2 = vec4f(((vs_TEXCOORD0.yyy + vec3f(-0.72000002861022949219f, -0.70800000429153442383f, -0.73200005292892456055f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * vec3f(-72.1347503662109375f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(exp2(u_xlat2.xyz).xyz, u_xlat2.w);
  u_xlat19 = (u_xlat2.x * 0.15000000596046447754f);
  u_xlat13.x = ((u_xlat2.x * 0.15000000596046447754f) + u_xlat13.x);
  u_xlat18 = (u_xlat18 * x_447.x_Rim);
  u_xlat12.x = ((-(u_xlat12.x) * u_xlat13.x) + u_xlat18);
  u_xlat18 = dot(u_xlat3.zw, u_xlat3.zw);
  u_xlat18 = sqrt(u_xlat18);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.49199998378753662109f, -0.20000000298023223877f, -0.43199998140335083008f, -0.44999998807907104492f));
  u_xlat4 = (u_xlat3 * x_478);
  u_xlat2.x = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat2.w = dot(u_xlat4.zw, u_xlat4.zw);
  let x_494 = sqrt(u_xlat2.xw);
  u_xlat2 = vec4f(x_494.x, u_xlat2.yz, x_494.y);
  u_xlat3.x = (-(u_xlat18) + u_xlat2.x);
  u_xlat3.x = ((u_xlat3.x * 2.0f) + 0.5f);
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat18 = (u_xlat18 + -(u_xlat2.x));
  u_xlat18 = ((u_xlat3.x * u_xlat18) + u_xlat2.x);
  u_xlat2.x = (u_xlat3.x * 0.25f);
  u_xlat3.x = (-(u_xlat3.x) + 1.0f);
  u_xlat18 = ((-(u_xlat2.x) * u_xlat3.x) + u_xlat18);
  u_xlat2.x = (-(u_xlat18) + u_xlat2.w);
  u_xlat2.x = ((u_xlat2.x * 2.0f) + 0.5f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat18 = (-(u_xlat2.w) + u_xlat18);
  u_xlat18 = ((u_xlat2.x * u_xlat18) + u_xlat2.w);
  u_xlat20 = (u_xlat2.x * 0.25f);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat18 = ((-(u_xlat20) * u_xlat2.x) + u_xlat18);
  let x_586 = (vec2f(u_xlat18) + x_342);
  u_xlat2 = vec4f(x_586.x, u_xlat2.yz, x_586.y);
  u_xlat18 = (u_xlat2.x * 4.16666650772094726562f);
  u_xlat18 = clamp(u_xlat18, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat18 * -2.0f) + 3.0f);
  u_xlat18 = (u_xlat18 * u_xlat18);
  u_xlat18 = ((-(u_xlat2.x) * u_xlat18) + 1.0f);
  u_xlat2.x = (u_xlat2.w * u_xlat2.w);
  u_xlat2.x = (u_xlat2.x * -120.2245941162109375f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat20 = (u_xlat3.y * u_xlat3.y);
  u_xlat20 = (u_xlat20 * -144.269500732421875f);
  u_xlat20 = exp2(u_xlat20);
  u_xlat19 = ((u_xlat20 * 0.25f) + u_xlat19);
  u_xlat19 = (u_xlat19 + 0.85000002384185791016f);
  u_xlat2.x = (u_xlat2.x * x_447.x_Rim);
  u_xlat18 = ((-(u_xlat18) * u_xlat19) + u_xlat2.x);
  u_xlat12.x = (-(u_xlat18) + u_xlat12.x);
  let x_662 = (x_447.x_PrintSize.xy * vec2f(0.02400000020861625671f));
  u_xlat2 = vec4f(x_662.x, u_xlat2.yz, x_662.y);
  u_xlat12.x = (u_xlat12.x / u_xlat2.x);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.51999998092651367188f, -0.67799997329711914062f, -0.47999998927116394043f, -0.18800000846385955811f));
  u_xlat4 = (u_xlat3 * x_65);
  u_xlat18 = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat18 = sqrt(u_xlat18);
  u_xlat19 = dot(u_xlat4.zw, u_xlat4.zw);
  u_xlat19 = sqrt(u_xlat19);
  u_xlat4 = (u_xlat1.xyxy + vec4f(-0.41999998688697814941f, -0.43799999356269836426f, -0.51999998092651367188f, -0.70200002193450927734f));
  u_xlat4 = (u_xlat4 * x_245);
  u_xlat2.x = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat2.x = sqrt(u_xlat2.x);
  u_xlat3.x = (-(u_xlat18) + u_xlat19);
  u_xlat3.x = ((u_xlat3.x * 2.0f) + 0.5f);
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat18 = (u_xlat18 + -(u_xlat19));
  u_xlat18 = ((u_xlat3.x * u_xlat18) + u_xlat19);
  u_xlat19 = (u_xlat3.x * 0.25f);
  u_xlat3.x = (-(u_xlat3.x) + 1.0f);
  u_xlat18 = ((-(u_xlat19) * u_xlat3.x) + u_xlat18);
  u_xlat19 = (-(u_xlat18) + u_xlat2.x);
  u_xlat19 = ((u_xlat19 * 2.0f) + 0.5f);
  u_xlat19 = clamp(u_xlat19, 0.0f, 1.0f);
  u_xlat18 = (-(u_xlat2.x) + u_xlat18);
  u_xlat18 = ((u_xlat19 * u_xlat18) + u_xlat2.x);
  u_xlat2.x = (u_xlat19 * 0.25f);
  u_xlat19 = (-(u_xlat19) + 1.0f);
  u_xlat18 = ((-(u_xlat2.x) * u_xlat19) + u_xlat18);
  u_xlat3 = vec4f(((vec2f(u_xlat18) + x_342)).xy, u_xlat3.zw);
  u_xlat18 = (u_xlat3.x * 4.16666650772094726562f);
  u_xlat18 = clamp(u_xlat18, 0.0f, 1.0f);
  u_xlat19 = ((u_xlat18 * -2.0f) + 3.0f);
  u_xlat18 = (u_xlat18 * u_xlat18);
  u_xlat18 = ((-(u_xlat19) * u_xlat18) + 1.0f);
  u_xlat19 = (u_xlat3.y * u_xlat3.y);
  u_xlat19 = (u_xlat19 * -120.2245941162109375f);
  u_xlat19 = exp2(u_xlat19);
  u_xlat2.x = (u_xlat3.w * u_xlat3.w);
  u_xlat2.x = (u_xlat2.x * -144.269500732421875f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = ((u_xlat2.x * 0.25f) + 0.85000002384185791016f);
  u_xlat2.x = ((u_xlat2.y * 0.15000000596046447754f) + u_xlat2.x);
  u_xlat19 = (u_xlat19 * x_447.x_Rim);
  u_xlat18 = ((-(u_xlat18) * u_xlat2.x) + u_xlat19);
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
  u_xlat19 = (-(u_xlat1.x) + u_xlat1.w);
  u_xlat1.x = ((u_xlat2.x * u_xlat19) + u_xlat1.x);
  u_xlat19 = (u_xlat2.x * 0.25f);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat1.x = ((-(u_xlat19) * u_xlat2.x) + u_xlat1.x);
  u_xlat19 = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat19 = ((u_xlat19 * 2.0f) + 0.5f);
  u_xlat19 = clamp(u_xlat19, 0.0f, 1.0f);
  u_xlat1.x = (-(u_xlat1.y) + u_xlat1.x);
  u_xlat1.x = ((u_xlat19 * u_xlat1.x) + u_xlat1.y);
  u_xlat7 = (u_xlat19 * 0.25f);
  u_xlat19 = (-(u_xlat19) + 1.0f);
  u_xlat1.x = ((-(u_xlat7) * u_xlat19) + u_xlat1.x);
  u_xlat1 = vec4f(((u_xlat1.xx + x_342)).xy, u_xlat1.zw);
  u_xlat1.x = (u_xlat1.x * 4.16666650772094726562f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat19 = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat19) * u_xlat1.x) + 1.0f);
  u_xlat7 = (u_xlat1.y * u_xlat1.y);
  u_xlat7 = (u_xlat7 * -120.2245941162109375f);
  u_xlat7 = exp2(u_xlat7);
  u_xlat19 = (u_xlat3.y * u_xlat3.y);
  u_xlat19 = (u_xlat19 * -144.269500732421875f);
  u_xlat19 = exp2(u_xlat19);
  u_xlat19 = ((u_xlat19 * 0.25f) + 0.85000002384185791016f);
  u_xlat19 = ((u_xlat2.z * 0.15000000596046447754f) + u_xlat19);
  u_xlat7 = (u_xlat7 * x_447.x_Rim);
  u_xlat1.x = ((-(u_xlat1.x) * u_xlat19) + u_xlat7);
  u_xlat18 = (u_xlat18 + -(u_xlat1.x));
  u_xlat18 = (u_xlat18 / u_xlat2.w);
  if (u_xlatb0) {
    x_1048 = -(u_xlat12.x);
  } else {
    x_1048 = u_xlat12.x;
  }
  u_xlat0.x = x_1048;
  u_xlat12.x = dot(vs_TEXCOORD2, vs_TEXCOORD2);
  u_xlat12.x = inverseSqrt(u_xlat12.x);
  let x_1072 = (u_xlat12.xxx * vs_TEXCOORD2);
  u_xlat1 = vec4f(x_1072.xy, u_xlat1.z, x_1072.z);
  u_xlat12.x = dot(vs_TEXCOORD3.xyz, u_xlat1.xyw);
  u_xlat2 = vec4f((((-(u_xlat1.xyw) * u_xlat12.xxx) + vs_TEXCOORD3.xyz)).xyz, u_xlat2.w);
  u_xlat12.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat12.x = inverseSqrt(u_xlat12.x);
  u_xlat2 = vec4f(((u_xlat12.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((u_xlat1.wxy * u_xlat2.yzx)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((u_xlat1.ywx * u_xlat2.zxy) + -(u_xlat3.xyz))).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((vec3f(u_xlat18) * u_xlat2.xyz)).xyz, u_xlat2.w);
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
  u_xlat2 = vec4f(((vs_TEXCOORD1 + -(x_1197.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((vs_TEXCOORD1 + -(x_1197.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat3.w);
  u_xlat4 = vec4f(((vs_TEXCOORD1 + -(x_1197.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat4.w);
  u_xlat5 = (vs_TEXCOORD1 + -(x_1197.x_CascadeShadowSplitSpheres3.xyz));
  u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat2.y = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat2.z = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat2.w = dot(u_xlat5, u_xlat5);
  u_xlatb2 = (u_xlat2 < x_1197.x_CascadeShadowSplitSphereRadii);
  u_xlat3.x = select(0.0f, 1.0f, u_xlatb2.x);
  u_xlat3.y = select(0.0f, 1.0f, u_xlatb2.y);
  u_xlat3.z = select(0.0f, 1.0f, u_xlatb2.z);
  u_xlat3.w = select(0.0f, 1.0f, u_xlatb2.w);
  u_xlat2.x = select(-0.0f, -1.0f, u_xlatb2.x);
  u_xlat2.y = select(-0.0f, -1.0f, u_xlatb2.y);
  u_xlat2.z = select(-0.0f, -1.0f, u_xlatb2.z);
  u_xlat2 = vec4f(((u_xlat2.xyz + u_xlat3.yzw)).xyz, u_xlat2.w);
  u_xlat3 = vec4f(u_xlat3.x, max(u_xlat2.xyz, vec3f()).xyz);
  u_xlat2.x = dot(u_xlat3, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat2.x = (-(u_xlat2.x) + 4.0f);
  u_xlatu2 = u32(u_xlat2.x);
  u_xlati2 = (bitcast<i32>(u_xlatu2) << bitcast<u32>(2i));
  u_xlat8 = (vs_TEXCOORD1.yyy * x_1197.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 1i)].xyz);
  u_xlat8 = ((x_1197.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati2].xyz * vs_TEXCOORD1.xxx) + u_xlat8);
  u_xlat8 = ((x_1197.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 2i)].xyz * vs_TEXCOORD1.zzz) + u_xlat8);
  u_xlat2 = vec4f(((u_xlat8 + x_1197.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 3i)].xyz)).xyz, u_xlat2.w);
  let x_1362 = u_xlat2.xy;
  txVec0 = vec3f(x_1362.x, x_1362.y, u_xlat2.z);
  u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat8.x = (-(x_1197.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat2.x * x_1197.x_MainLightShadowParams.x) + u_xlat8.x);
  u_xlatb8 = (0.0f >= u_xlat2.z);
  u_xlatb14 = (u_xlat2.z >= 1.0f);
  u_xlatb8 = (u_xlatb14 | u_xlatb8);
  if (u_xlatb8) {
    x_1409 = 1.0f;
  } else {
    x_1409 = u_xlat2.x;
  }
  u_xlat2.x = x_1409;
  u_xlat8 = (vs_TEXCOORD1 + -(x_1420.x_WorldSpaceCameraPos));
  u_xlat8.x = dot(u_xlat8, u_xlat8);
  u_xlat14 = ((u_xlat8.x * x_1197.x_MainLightShadowParams.z) + x_1197.x_MainLightShadowParams.w);
  u_xlat14 = clamp(u_xlat14, 0.0f, 1.0f);
  u_xlat20 = (-(u_xlat2.x) + 1.0f);
  u_xlat2.x = ((u_xlat14 * u_xlat20) + u_xlat2.x);
  u_xlat14 = dot(u_xlat1.xyw, x_1420.x_MainLightPosition.xyz);
  u_xlat14 = clamp(u_xlat14, 0.0f, 1.0f);
  u_xlat20 = dot(u_xlat0.xzw, x_1420.x_MainLightPosition.xyz);
  u_xlat20 = clamp(u_xlat20, 0.0f, 1.0f);
  u_xlat0.x = dot(u_xlat0.xzw, u_xlat1.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = ((u_xlat0.x * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat12.x = (u_xlat2.x * u_xlat20);
  u_xlat0.x = ((x_447.x_Ambient * u_xlat0.x) + u_xlat12.x);
  u_xlat12.x = (u_xlat2.x * u_xlat14);
  u_xlat18 = ((u_xlat14 * u_xlat2.x) + x_447.x_Ambient);
  u_xlat0.x = (u_xlat0.x / u_xlat18);
  let x_1519 = (u_xlat6.xxx + vec3f(-0.77999997138977050781f, -1.15999996662139892578f, -0.44999998807907104492f));
  u_xlat1 = vec4f(x_1519.xy, u_xlat1.z, x_1519.z);
  u_xlat6.x = (u_xlat1.x * 4.16666650772094726562f);
  u_xlat6.x = clamp(u_xlat6.x, 0.0f, 1.0f);
  u_xlat18 = ((u_xlat6.x * -2.0f) + 3.0f);
  u_xlat6.x = (u_xlat6.x * u_xlat6.x);
  u_xlat6.x = ((-(u_xlat18) * u_xlat6.x) + 1.0f);
  u_xlat18 = (u_xlat6.x * x_447.x_Darken);
  u_xlat1.x = (u_xlat1.y * u_xlat1.y);
  u_xlat1.x = (u_xlat1.x * -120.2245941162109375f);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat7 = (u_xlat1.x * x_447.x_Rim);
  u_xlat7 = ((-(u_xlat6.x) * u_xlat13.x) + u_xlat7);
  u_xlat7 = -(u_xlat7);
  u_xlat7 = clamp(u_xlat7, 0.0f, 1.0f);
  u_xlat7 = ((u_xlat7 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat18 = ((-(u_xlat18) * u_xlat7) + 1.0f);
  u_xlat0.x = (u_xlat18 * u_xlat0.x);
  u_xlat12.x = (u_xlat12.x * 3.0f);
  u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
  u_xlat12.x = (-(u_xlat12.x) + 1.0f);
  u_xlat18 = (u_xlat1.w + u_xlat1.w);
  u_xlat18 = clamp(u_xlat18, 0.0f, 1.0f);
  u_xlat7 = ((u_xlat18 * -2.0f) + 3.0f);
  u_xlat18 = (u_xlat18 * u_xlat18);
  u_xlat18 = (u_xlat18 * u_xlat7);
  u_xlat18 = ((u_xlat18 * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat6.x = (u_xlat18 * u_xlat6.x);
  u_xlat12 = (u_xlat12.xx * vec2f(x_447.x_ShadeDarken, x_447.x_ShadeRim));
  u_xlat6.x = ((-(u_xlat12.x) * u_xlat6.x) + 1.0f);
  u_xlat12.x = ((u_xlat12.y * u_xlat1.x) + 1.0f);
  u_xlat6.x = (u_xlat12.x * u_xlat6.x);
  u_xlat12.x = (u_xlat6.x * u_xlat0.x);
  u_xlat18 = sqrt(u_xlat8.x);
  u_xlat1.x = (-(x_447.x_Fade.x) + x_447.x_Fade.y);
  u_xlat18 = (u_xlat18 + -(x_447.x_Fade.x));
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat18 = (u_xlat18 * u_xlat1.x);
  u_xlat18 = clamp(u_xlat18, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat18 * -2.0f) + 3.0f);
  u_xlat18 = (u_xlat18 * u_xlat18);
  u_xlat18 = (u_xlat18 * u_xlat1.x);
  u_xlat0.x = ((-(u_xlat0.x) * u_xlat6.x) + 1.0f);
  u_xlat0.x = ((u_xlat18 * u_xlat0.x) + u_xlat12.x);
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
  x_CascadeShadowSplitSpheres0 : vec4f,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4f,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4f,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4f,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4f,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4f,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4f,
  /* @offset(432) */
  x_MainLightShadowParams : vec4f,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4f,
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

@group(1) @binding(1) var<uniform> x_1197 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(1) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(0) var<uniform> x_2662 : PGlobals;

var<private> gl_FragCoord : vec4f;

const x_65 = vec4f(2.12765955924987792969f, 3.33333325386047363281f, 2.5f, 5.0f);

const x_245 = vec4f(2.77777767181396484375f, 3.33333325386047363281f, 2.12765955924987792969f, 3.33333325386047363281f);

const x_342 = vec2f(-0.77999997138977050781f, -1.15999996662139892578f);

const x_478 = vec4f(2.5f, 5.0f, 2.77777767181396484375f, 3.33333325386047363281f);

const x_1474 = vec2f(0.5f);

const x_1496 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1521 = vec2f(1.0f);

const x_1559 = vec2f(0.15999999642372131348f);

const x_1629 = vec3f(-2.5f, -0.5f, 1.5f);

const x_2007 = vec2f(2.0f);

const x_2039 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_2042 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_2049 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_2086 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat17 : vec3f;
  var u_xlat1 : vec4f;
  var x_37 : f32;
  var u_xlat2 : vec4f;
  var u_xlat35 : vec2f;
  var u_xlat34 : vec2f;
  var u_xlat51 : f32;
  var u_xlatb34 : bool;
  var u_xlat3 : vec4f;
  var u_xlat52 : f32;
  var u_xlat4 : vec4f;
  var u_xlat53 : f32;
  var u_xlat18 : f32;
  var u_xlat0 : vec4f;
  var x_1048 : f32;
  var u_xlat5 : vec4f;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat19 : vec3f;
  var u_xlatb53 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb3 : bool;
  var u_xlat37 : vec2f;
  var u_xlat39 : vec2f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var txVec4 : vec3f;
  var u_xlat20 : f32;
  var txVec5 : vec3f;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat21 : vec3f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat22 : vec2f;
  var u_xlat45 : vec2f;
  var u_xlat40 : vec2f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var txVec13 : vec3f;
  var txVec14 : vec3f;
  var u_xlat56 : f32;
  var txVec15 : vec3f;
  var txVec16 : vec3f;
  var u_xlat54 : f32;
  var txVec17 : vec3f;
  var txVec18 : vec3f;
  var txVec19 : vec3f;
  var txVec20 : vec3f;
  var txVec21 : vec3f;
  var txVec22 : vec3f;
  var txVec23 : vec3f;
  var txVec24 : vec3f;
  var txVec25 : vec3f;
  var txVec26 : vec3f;
  var txVec27 : vec3f;
  var txVec28 : vec3f;
  var txVec29 : vec3f;
  var u_xlatb19 : bool;
  var u_xlatb36 : bool;
  var x_2651 : f32;
  var u_xlat36 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlatb0 = (0.0f < vs_TEXCOORD3.w);
  u_xlat17.x = (-(vs_TEXCOORD0.x) + 1.0f);
  if (u_xlatb0) {
    x_37 = u_xlat17.x;
  } else {
    x_37 = vs_TEXCOORD0.x;
  }
  u_xlat1.x = x_37;
  u_xlat1.y = vs_TEXCOORD0.y;
  u_xlat2 = (u_xlat1.xyxy + vec4f(-0.51999998092651367188f, -0.68999999761581420898f, -0.47999998927116394043f, -0.20000000298023223877f));
  u_xlat2 = (u_xlat2 * x_65);
  u_xlat17.x = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat17.y = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat35 = (u_xlat1.xy + vec2f(-0.41999998688697814941f, -0.44999998807907104492f));
  u_xlat35 = (u_xlat35 * vec2f(2.77777767181396484375f, 3.33333325386047363281f));
  u_xlat17.z = dot(u_xlat35, u_xlat35);
  u_xlat17 = sqrt(u_xlat17);
  u_xlat35.x = (-(u_xlat17.x) + u_xlat17.y);
  u_xlat35.x = ((u_xlat35.x * 2.0f) + 0.5f);
  u_xlat35.x = clamp(u_xlat35.x, 0.0f, 1.0f);
  u_xlat17.x = (-(u_xlat17.y) + u_xlat17.x);
  u_xlat17.x = ((u_xlat35.x * u_xlat17.x) + u_xlat17.y);
  u_xlat34.x = (u_xlat35.x * 0.25f);
  u_xlat35.x = (-(u_xlat35.x) + 1.0f);
  u_xlat17.x = ((-(u_xlat34.x) * u_xlat35.x) + u_xlat17.x);
  u_xlat34.x = (-(u_xlat17.x) + u_xlat17.z);
  u_xlat34.x = ((u_xlat34.x * 2.0f) + 0.5f);
  u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
  u_xlat17.x = (-(u_xlat17.z) + u_xlat17.x);
  u_xlat17.x = ((u_xlat34.x * u_xlat17.x) + u_xlat17.z);
  u_xlat51 = (u_xlat34.x * 0.25f);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat17.x = ((-(u_xlat51) * u_xlat34.x) + u_xlat17.x);
  u_xlatb34 = (1.45000004768371582031f < u_xlat17.x);
  if (u_xlatb34) {
    SV_Target0 = vec4f(0.5f, 0.5f, 0.5f, 1.0f);
    return;
  }
  u_xlat2 = (u_xlat1.xyxy + vec4f(-0.50799995660781860352f, -0.68999999761581420898f, -0.46799999475479125977f, -0.20000000298023223877f));
  u_xlat3 = (u_xlat2 * x_65);
  u_xlat34.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat34.y = dot(u_xlat3.zw, u_xlat3.zw);
  u_xlat34 = sqrt(u_xlat34);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.40799999237060546875f, -0.44999998807907104492f, -0.53200000524520874023f, -0.68999999761581420898f));
  u_xlat3 = (u_xlat3 * x_245);
  u_xlat35.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat35.x = sqrt(u_xlat35.x);
  u_xlat52 = (-(u_xlat34.x) + u_xlat34.y);
  u_xlat52 = ((u_xlat52 * 2.0f) + 0.5f);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat34.x = (-(u_xlat34.y) + u_xlat34.x);
  u_xlat34.x = ((u_xlat52 * u_xlat34.x) + u_xlat34.y);
  u_xlat51 = (u_xlat52 * 0.25f);
  u_xlat52 = (-(u_xlat52) + 1.0f);
  u_xlat34.x = ((-(u_xlat51) * u_xlat52) + u_xlat34.x);
  u_xlat51 = (-(u_xlat34.x) + u_xlat35.x);
  u_xlat51 = ((u_xlat51 * 2.0f) + 0.5f);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat34.x = (-(u_xlat35.x) + u_xlat34.x);
  u_xlat34.x = ((u_xlat51 * u_xlat34.x) + u_xlat35.x);
  u_xlat35.x = (u_xlat51 * 0.25f);
  u_xlat51 = (-(u_xlat51) + 1.0f);
  u_xlat34.x = ((-(u_xlat35.x) * u_xlat51) + u_xlat34.x);
  u_xlat34 = (u_xlat34.xx + x_342);
  u_xlat34.x = (u_xlat34.x * 4.16666650772094726562f);
  u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
  u_xlat35.x = ((u_xlat34.x * -2.0f) + 3.0f);
  u_xlat34.x = (u_xlat34.x * u_xlat34.x);
  u_xlat34.x = ((-(u_xlat35.x) * u_xlat34.x) + 1.0f);
  u_xlat51 = (u_xlat34.y * u_xlat34.y);
  u_xlat51 = (u_xlat51 * -120.2245941162109375f);
  u_xlat51 = exp2(u_xlat51);
  u_xlat35.x = (u_xlat2.w * u_xlat2.w);
  u_xlat35.x = (u_xlat35.x * -144.269500732421875f);
  u_xlat35.x = exp2(u_xlat35.x);
  u_xlat35.x = ((u_xlat35.x * 0.25f) + 0.85000002384185791016f);
  u_xlat2 = vec4f(((vs_TEXCOORD0.yyy + vec3f(-0.72000002861022949219f, -0.70800000429153442383f, -0.73200005292892456055f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * vec3f(-72.1347503662109375f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(exp2(u_xlat2.xyz).xyz, u_xlat2.w);
  u_xlat52 = (u_xlat2.x * 0.15000000596046447754f);
  u_xlat35.x = ((u_xlat2.x * 0.15000000596046447754f) + u_xlat35.x);
  u_xlat51 = (u_xlat51 * x_447.x_Rim);
  u_xlat34.x = ((-(u_xlat34.x) * u_xlat35.x) + u_xlat51);
  u_xlat51 = dot(u_xlat3.zw, u_xlat3.zw);
  u_xlat51 = sqrt(u_xlat51);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.49199998378753662109f, -0.20000000298023223877f, -0.43199998140335083008f, -0.44999998807907104492f));
  u_xlat4 = (u_xlat3 * x_478);
  u_xlat2.x = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat2.w = dot(u_xlat4.zw, u_xlat4.zw);
  let x_494 = sqrt(u_xlat2.xw);
  u_xlat2 = vec4f(x_494.x, u_xlat2.yz, x_494.y);
  u_xlat3.x = (-(u_xlat51) + u_xlat2.x);
  u_xlat3.x = ((u_xlat3.x * 2.0f) + 0.5f);
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat51 = (u_xlat51 + -(u_xlat2.x));
  u_xlat51 = ((u_xlat3.x * u_xlat51) + u_xlat2.x);
  u_xlat2.x = (u_xlat3.x * 0.25f);
  u_xlat3.x = (-(u_xlat3.x) + 1.0f);
  u_xlat51 = ((-(u_xlat2.x) * u_xlat3.x) + u_xlat51);
  u_xlat2.x = (-(u_xlat51) + u_xlat2.w);
  u_xlat2.x = ((u_xlat2.x * 2.0f) + 0.5f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat51 = (-(u_xlat2.w) + u_xlat51);
  u_xlat51 = ((u_xlat2.x * u_xlat51) + u_xlat2.w);
  u_xlat53 = (u_xlat2.x * 0.25f);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat51 = ((-(u_xlat53) * u_xlat2.x) + u_xlat51);
  let x_586 = (vec2f(u_xlat51) + x_342);
  u_xlat2 = vec4f(x_586.x, u_xlat2.yz, x_586.y);
  u_xlat51 = (u_xlat2.x * 4.16666650772094726562f);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((-(u_xlat2.x) * u_xlat51) + 1.0f);
  u_xlat2.x = (u_xlat2.w * u_xlat2.w);
  u_xlat2.x = (u_xlat2.x * -120.2245941162109375f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat53 = (u_xlat3.y * u_xlat3.y);
  u_xlat53 = (u_xlat53 * -144.269500732421875f);
  u_xlat53 = exp2(u_xlat53);
  u_xlat52 = ((u_xlat53 * 0.25f) + u_xlat52);
  u_xlat52 = (u_xlat52 + 0.85000002384185791016f);
  u_xlat2.x = (u_xlat2.x * x_447.x_Rim);
  u_xlat51 = ((-(u_xlat51) * u_xlat52) + u_xlat2.x);
  u_xlat34.x = (-(u_xlat51) + u_xlat34.x);
  let x_662 = (x_447.x_PrintSize.xy * vec2f(0.02400000020861625671f));
  u_xlat2 = vec4f(x_662.x, u_xlat2.yz, x_662.y);
  u_xlat34.x = (u_xlat34.x / u_xlat2.x);
  u_xlat3 = (u_xlat1.xyxy + vec4f(-0.51999998092651367188f, -0.67799997329711914062f, -0.47999998927116394043f, -0.18800000846385955811f));
  u_xlat4 = (u_xlat3 * x_65);
  u_xlat51 = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat51 = sqrt(u_xlat51);
  u_xlat52 = dot(u_xlat4.zw, u_xlat4.zw);
  u_xlat52 = sqrt(u_xlat52);
  u_xlat4 = (u_xlat1.xyxy + vec4f(-0.41999998688697814941f, -0.43799999356269836426f, -0.51999998092651367188f, -0.70200002193450927734f));
  u_xlat4 = (u_xlat4 * x_245);
  u_xlat2.x = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat2.x = sqrt(u_xlat2.x);
  u_xlat3.x = (-(u_xlat51) + u_xlat52);
  u_xlat3.x = ((u_xlat3.x * 2.0f) + 0.5f);
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat51 = (u_xlat51 + -(u_xlat52));
  u_xlat51 = ((u_xlat3.x * u_xlat51) + u_xlat52);
  u_xlat52 = (u_xlat3.x * 0.25f);
  u_xlat3.x = (-(u_xlat3.x) + 1.0f);
  u_xlat51 = ((-(u_xlat52) * u_xlat3.x) + u_xlat51);
  u_xlat52 = (-(u_xlat51) + u_xlat2.x);
  u_xlat52 = ((u_xlat52 * 2.0f) + 0.5f);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat51 = (-(u_xlat2.x) + u_xlat51);
  u_xlat51 = ((u_xlat52 * u_xlat51) + u_xlat2.x);
  u_xlat2.x = (u_xlat52 * 0.25f);
  u_xlat52 = (-(u_xlat52) + 1.0f);
  u_xlat51 = ((-(u_xlat2.x) * u_xlat52) + u_xlat51);
  u_xlat3 = vec4f(((vec2f(u_xlat51) + x_342)).xy, u_xlat3.zw);
  u_xlat51 = (u_xlat3.x * 4.16666650772094726562f);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat52 = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((-(u_xlat52) * u_xlat51) + 1.0f);
  u_xlat52 = (u_xlat3.y * u_xlat3.y);
  u_xlat52 = (u_xlat52 * -120.2245941162109375f);
  u_xlat52 = exp2(u_xlat52);
  u_xlat2.x = (u_xlat3.w * u_xlat3.w);
  u_xlat2.x = (u_xlat2.x * -144.269500732421875f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = ((u_xlat2.x * 0.25f) + 0.85000002384185791016f);
  u_xlat2.x = ((u_xlat2.y * 0.15000000596046447754f) + u_xlat2.x);
  u_xlat52 = (u_xlat52 * x_447.x_Rim);
  u_xlat51 = ((-(u_xlat51) * u_xlat2.x) + u_xlat52);
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
  u_xlat52 = (-(u_xlat1.x) + u_xlat1.w);
  u_xlat1.x = ((u_xlat2.x * u_xlat52) + u_xlat1.x);
  u_xlat52 = (u_xlat2.x * 0.25f);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat1.x = ((-(u_xlat52) * u_xlat2.x) + u_xlat1.x);
  u_xlat52 = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat52 = ((u_xlat52 * 2.0f) + 0.5f);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat1.x = (-(u_xlat1.y) + u_xlat1.x);
  u_xlat1.x = ((u_xlat52 * u_xlat1.x) + u_xlat1.y);
  u_xlat18 = (u_xlat52 * 0.25f);
  u_xlat52 = (-(u_xlat52) + 1.0f);
  u_xlat1.x = ((-(u_xlat18) * u_xlat52) + u_xlat1.x);
  u_xlat1 = vec4f(((u_xlat1.xx + x_342)).xy, u_xlat1.zw);
  u_xlat1.x = (u_xlat1.x * 4.16666650772094726562f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat52 = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat52) * u_xlat1.x) + 1.0f);
  u_xlat18 = (u_xlat1.y * u_xlat1.y);
  u_xlat18 = (u_xlat18 * -120.2245941162109375f);
  u_xlat18 = exp2(u_xlat18);
  u_xlat52 = (u_xlat3.y * u_xlat3.y);
  u_xlat52 = (u_xlat52 * -144.269500732421875f);
  u_xlat52 = exp2(u_xlat52);
  u_xlat52 = ((u_xlat52 * 0.25f) + 0.85000002384185791016f);
  u_xlat52 = ((u_xlat2.z * 0.15000000596046447754f) + u_xlat52);
  u_xlat18 = (u_xlat18 * x_447.x_Rim);
  u_xlat1.x = ((-(u_xlat1.x) * u_xlat52) + u_xlat18);
  u_xlat51 = (u_xlat51 + -(u_xlat1.x));
  u_xlat51 = (u_xlat51 / u_xlat2.w);
  if (u_xlatb0) {
    x_1048 = -(u_xlat34.x);
  } else {
    x_1048 = u_xlat34.x;
  }
  u_xlat0.x = x_1048;
  u_xlat34.x = dot(vs_TEXCOORD2, vs_TEXCOORD2);
  u_xlat34.x = inverseSqrt(u_xlat34.x);
  let x_1072 = (u_xlat34.xxx * vs_TEXCOORD2);
  u_xlat1 = vec4f(x_1072.xy, u_xlat1.z, x_1072.z);
  u_xlat34.x = dot(vs_TEXCOORD3.xyz, u_xlat1.xyw);
  u_xlat2 = vec4f((((-(u_xlat1.xyw) * u_xlat34.xxx) + vs_TEXCOORD3.xyz)).xyz, u_xlat2.w);
  u_xlat34.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat34.x = inverseSqrt(u_xlat34.x);
  u_xlat2 = vec4f(((u_xlat34.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((u_xlat1.wxy * u_xlat2.yzx)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((u_xlat1.ywx * u_xlat2.zxy) + -(u_xlat3.xyz))).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((vec3f(u_xlat51) * u_xlat2.xyz)).xyz, u_xlat2.w);
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
  u_xlat2 = vec4f(((vs_TEXCOORD1 + -(x_1197.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((vs_TEXCOORD1 + -(x_1197.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat3.w);
  u_xlat4 = vec4f(((vs_TEXCOORD1 + -(x_1197.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((vs_TEXCOORD1 + -(x_1197.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat5.w);
  u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat2.y = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat2.z = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat2.w = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlatb2 = (u_xlat2 < x_1197.x_CascadeShadowSplitSphereRadii);
  u_xlat3.x = select(0.0f, 1.0f, u_xlatb2.x);
  u_xlat3.y = select(0.0f, 1.0f, u_xlatb2.y);
  u_xlat3.z = select(0.0f, 1.0f, u_xlatb2.z);
  u_xlat3.w = select(0.0f, 1.0f, u_xlatb2.w);
  u_xlat2.x = select(-0.0f, -1.0f, u_xlatb2.x);
  u_xlat2.y = select(-0.0f, -1.0f, u_xlatb2.y);
  u_xlat2.z = select(-0.0f, -1.0f, u_xlatb2.z);
  u_xlat2 = vec4f(((u_xlat2.xyz + u_xlat3.yzw)).xyz, u_xlat2.w);
  u_xlat3 = vec4f(u_xlat3.x, max(u_xlat2.xyz, vec3f()).xyz);
  u_xlat2.x = dot(u_xlat3, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat2.x = (-(u_xlat2.x) + 4.0f);
  u_xlatu2 = u32(u_xlat2.x);
  u_xlati2 = (bitcast<i32>(u_xlatu2) << bitcast<u32>(2i));
  u_xlat19 = (vs_TEXCOORD1.yyy * x_1197.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 1i)].xyz);
  u_xlat19 = ((x_1197.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati2].xyz * vs_TEXCOORD1.xxx) + u_xlat19);
  u_xlat19 = ((x_1197.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 2i)].xyz * vs_TEXCOORD1.zzz) + u_xlat19);
  u_xlat2 = vec4f(((u_xlat19 + x_1197.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 3i)].xyz)).xyz, u_xlat2.w);
  u_xlatb53 = (0.0f < x_1197.x_MainLightShadowParams.y);
  if (u_xlatb53) {
    u_xlatb53 = (x_1197.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb53) {
      u_xlat3 = (u_xlat2.xyxy + x_1197.x_MainLightShadowOffset0);
      let x_1386 = u_xlat3.xy;
      txVec0 = vec3f(x_1386.x, x_1386.y, u_xlat2.z);
      u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1408 = u_xlat3.zw;
      txVec1 = vec3f(x_1408.x, x_1408.y, u_xlat2.z);
      u_xlat4.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat3 = (u_xlat2.xyxy + x_1197.x_MainLightShadowOffset1);
      let x_1428 = u_xlat3.xy;
      txVec2 = vec3f(x_1428.x, x_1428.y, u_xlat2.z);
      u_xlat4.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1443 = u_xlat3.zw;
      txVec3 = vec3f(x_1443.x, x_1443.y, u_xlat2.z);
      u_xlat4.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat53 = dot(u_xlat4, vec4f(0.25f));
    } else {
      u_xlatb3 = (x_1197.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb3) {
        u_xlat3 = vec4f((((u_xlat2.xy * x_1197.x_MainLightShadowmapSize.zw) + x_1474)).xy, u_xlat3.zw);
        u_xlat3 = vec4f(floor(u_xlat3.xy).xy, u_xlat3.zw);
        u_xlat37 = ((u_xlat2.xy * x_1197.x_MainLightShadowmapSize.zw) + -(u_xlat3.xy));
        u_xlat4 = (u_xlat37.xxyy + x_1496);
        u_xlat5 = (u_xlat4.xxzz * u_xlat4.xxzz);
        let x_1507 = (u_xlat5.yw * vec2f(0.07999999821186065674f));
        u_xlat4 = vec4f(x_1507.x, u_xlat4.y, x_1507.y, u_xlat4.w);
        u_xlat5 = vec4f((((u_xlat5.xz * x_1474) + -(u_xlat37))).xy, u_xlat5.zw);
        u_xlat39 = (-(u_xlat37) + x_1521);
        u_xlat6 = vec4f(min(u_xlat37, vec2f()).xy, u_xlat6.zw);
        u_xlat6 = vec4f((((-(u_xlat6.xy) * u_xlat6.xy) + u_xlat39)).xy, u_xlat6.zw);
        u_xlat37 = max(u_xlat37, vec2f());
        u_xlat37 = ((-(u_xlat37) * u_xlat37) + u_xlat4.yw);
        u_xlat6 = vec4f(((u_xlat6.xy + x_1521)).xy, u_xlat6.zw);
        u_xlat37 = (u_xlat37 + x_1521);
        u_xlat7 = vec4f(((u_xlat5.xy * x_1559)).xy, u_xlat7.zw);
        u_xlat5 = vec4f(((u_xlat39 * x_1559)).xy, u_xlat5.zw);
        u_xlat6 = vec4f(((u_xlat6.xy * x_1559)).xy, u_xlat6.zw);
        u_xlat8 = vec4f(((u_xlat37 * x_1559)).xy, u_xlat8.zw);
        u_xlat37 = (u_xlat4.yw * x_1559);
        u_xlat7.z = u_xlat6.x;
        u_xlat7.w = u_xlat37.x;
        u_xlat5.z = u_xlat8.x;
        u_xlat5.w = u_xlat4.x;
        u_xlat9 = (u_xlat5.zwxz + u_xlat7.zwxz);
        u_xlat6.z = u_xlat7.y;
        u_xlat6.w = u_xlat37.y;
        u_xlat8.z = u_xlat5.y;
        u_xlat8.w = u_xlat4.z;
        u_xlat4 = vec4f(((u_xlat6.zyw + u_xlat8.zyw)).xyz, u_xlat4.w);
        u_xlat5 = vec4f(((u_xlat5.xzw / u_xlat9.zwy)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat5.xyz + x_1629)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat8.zyw / u_xlat4.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f(((u_xlat6.xyz + x_1629)).xyz, u_xlat6.w);
        u_xlat5 = vec4f(((u_xlat5.yxz * x_1197.x_MainLightShadowmapSize.xxx)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_1197.x_MainLightShadowmapSize.yyy)).xyz, u_xlat6.w);
        u_xlat5.w = u_xlat6.x;
        u_xlat7 = ((u_xlat3.xyxy * x_1197.x_MainLightShadowmapSize.xyxy) + u_xlat5.ywxw);
        u_xlat37 = ((u_xlat3.xy * x_1197.x_MainLightShadowmapSize.xy) + u_xlat5.zw);
        u_xlat6.w = u_xlat5.y;
        let x_1686 = u_xlat6.yz;
        u_xlat5 = vec4f(u_xlat5.x, x_1686.x, u_xlat5.z, x_1686.y);
        u_xlat8 = ((u_xlat3.xyxy * x_1197.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyzy);
        u_xlat6 = ((u_xlat3.xyxy * x_1197.x_MainLightShadowmapSize.xyxy) + u_xlat6.wywz);
        u_xlat5 = ((u_xlat3.xyxy * x_1197.x_MainLightShadowmapSize.xyxy) + u_xlat5.xwzw);
        u_xlat10 = (u_xlat4.xxxy * u_xlat9.zwyz);
        u_xlat11 = (u_xlat4.yyzz * u_xlat9);
        u_xlat3.x = (u_xlat4.z * u_xlat9.y);
        let x_1735 = u_xlat7.xy;
        txVec4 = vec3f(x_1735.x, x_1735.y, u_xlat2.z);
        u_xlat20 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1750 = u_xlat7.zw;
        txVec5 = vec3f(x_1750.x, x_1750.y, u_xlat2.z);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat4.x = (u_xlat4.x * u_xlat10.y);
        u_xlat20 = ((u_xlat10.x * u_xlat20) + u_xlat4.x);
        txVec6 = vec3f(u_xlat37.x, u_xlat37.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat20 = ((u_xlat10.z * u_xlat37.x) + u_xlat20);
        let x_1799 = u_xlat6.xy;
        txVec7 = vec3f(x_1799.x, x_1799.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat20 = ((u_xlat10.w * u_xlat37.x) + u_xlat20);
        let x_1821 = u_xlat8.xy;
        txVec8 = vec3f(x_1821.x, x_1821.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat20 = ((u_xlat11.x * u_xlat37.x) + u_xlat20);
        let x_1843 = u_xlat8.zw;
        txVec9 = vec3f(x_1843.x, x_1843.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat20 = ((u_xlat11.y * u_xlat37.x) + u_xlat20);
        let x_1865 = u_xlat6.zw;
        txVec10 = vec3f(x_1865.x, x_1865.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat20 = ((u_xlat11.z * u_xlat37.x) + u_xlat20);
        let x_1887 = u_xlat5.xy;
        txVec11 = vec3f(x_1887.x, x_1887.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat20 = ((u_xlat11.w * u_xlat37.x) + u_xlat20);
        let x_1909 = u_xlat5.zw;
        txVec12 = vec3f(x_1909.x, x_1909.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat53 = ((u_xlat3.x * u_xlat37.x) + u_xlat20);
      } else {
        u_xlat3 = vec4f((((u_xlat2.xy * x_1197.x_MainLightShadowmapSize.zw) + x_1474)).xy, u_xlat3.zw);
        u_xlat3 = vec4f(floor(u_xlat3.xy).xy, u_xlat3.zw);
        u_xlat37 = ((u_xlat2.xy * x_1197.x_MainLightShadowmapSize.zw) + -(u_xlat3.xy));
        u_xlat4 = (u_xlat37.xxyy + x_1496);
        u_xlat5 = (u_xlat4.xxzz * u_xlat4.xxzz);
        let x_1966 = (u_xlat5.yw * vec2f(0.04081600159406661987f));
        u_xlat6 = vec4f(u_xlat6.x, x_1966.x, u_xlat6.z, x_1966.y);
        let x_1974 = ((u_xlat5.xz * x_1474) + -(u_xlat37));
        u_xlat4 = vec4f(x_1974.x, u_xlat4.y, x_1974.y, u_xlat4.w);
        u_xlat5 = vec4f(((-(u_xlat37) + x_1521)).xy, u_xlat5.zw);
        u_xlat39 = min(u_xlat37, vec2f());
        u_xlat5 = vec4f((((-(u_xlat39) * u_xlat39) + u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat39 = max(u_xlat37, vec2f());
        let x_2002 = ((-(u_xlat39) * u_xlat39) + u_xlat4.yw);
        u_xlat21 = vec3f(x_2002.x, u_xlat21.y, x_2002.y);
        u_xlat5 = vec4f(((u_xlat5.xy + x_2007)).xy, u_xlat5.zw);
        let x_2013 = (u_xlat21.xz + x_2007);
        u_xlat4 = vec4f(u_xlat4.x, x_2013.x, u_xlat4.z, x_2013.y);
        u_xlat7.z = (u_xlat4.y * 0.08163200318813323975f);
        u_xlat8 = vec4f(((u_xlat4.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat8.w);
        u_xlat4 = vec4f(((u_xlat5.xy * vec2f(0.08163200318813323975f))).xy, u_xlat4.zw);
        u_xlat7.x = u_xlat8.y;
        let x_2043 = ((u_xlat37.xx * x_2039) + x_2042);
        u_xlat7 = vec4f(u_xlat7.x, x_2043.x, u_xlat7.z, x_2043.y);
        let x_2050 = ((u_xlat37.xx * x_2039) + x_2049);
        u_xlat5 = vec4f(x_2050.x, u_xlat5.y, x_2050.y, u_xlat5.w);
        u_xlat5.y = u_xlat4.x;
        u_xlat5.w = u_xlat6.y;
        u_xlat7 = (u_xlat5 + u_xlat7);
        let x_2065 = ((u_xlat37.yy * x_2039) + x_2042);
        u_xlat8 = vec4f(u_xlat8.x, x_2065.x, u_xlat8.z, x_2065.y);
        let x_2071 = ((u_xlat37.yy * x_2039) + x_2049);
        u_xlat6 = vec4f(x_2071.x, u_xlat6.y, x_2071.y, u_xlat6.w);
        u_xlat6.y = u_xlat4.y;
        u_xlat4 = (u_xlat6 + u_xlat8);
        u_xlat5 = (u_xlat5 / u_xlat7);
        u_xlat5 = (u_xlat5 + x_2086);
        u_xlat6 = (u_xlat6 / u_xlat4);
        u_xlat6 = (u_xlat6 + x_2086);
        u_xlat5 = (u_xlat5.wxyz * x_1197.x_MainLightShadowmapSize.xxxx);
        u_xlat6 = (u_xlat6.xwyz * x_1197.x_MainLightShadowmapSize.yyyy);
        let x_2106 = u_xlat5.yzw;
        u_xlat8 = vec4f(x_2106.x, u_xlat8.y, x_2106.yz);
        u_xlat8.y = u_xlat6.x;
        u_xlat9 = ((u_xlat3.xyxy * x_1197.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat37 = ((u_xlat3.xy * x_1197.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.y = u_xlat8.y;
        u_xlat8.y = u_xlat6.z;
        u_xlat10 = ((u_xlat3.xyxy * x_1197.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat11 = vec4f((((u_xlat3.xy * x_1197.x_MainLightShadowmapSize.xy) + u_xlat8.wy)).xy, u_xlat11.zw);
        u_xlat5.z = u_xlat8.y;
        u_xlat12 = ((u_xlat3.xyxy * x_1197.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyxz);
        u_xlat8.y = u_xlat6.w;
        u_xlat13 = ((u_xlat3.xyxy * x_1197.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat22 = ((u_xlat3.xy * x_1197.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.w = u_xlat8.y;
        u_xlat45 = ((u_xlat3.xy * x_1197.x_MainLightShadowmapSize.xy) + u_xlat5.xw);
        let x_2206 = u_xlat8.xzw;
        u_xlat6 = vec4f(x_2206.x, u_xlat6.y, x_2206.yz);
        u_xlat8 = ((u_xlat3.xyxy * x_1197.x_MainLightShadowmapSize.xyxy) + u_xlat6.xyzy);
        u_xlat40 = ((u_xlat3.xy * x_1197.x_MainLightShadowmapSize.xy) + u_xlat6.wy);
        u_xlat6.x = u_xlat5.x;
        u_xlat3 = vec4f((((u_xlat3.xy * x_1197.x_MainLightShadowmapSize.xy) + u_xlat6.xy)).xy, u_xlat3.zw);
        u_xlat14 = (u_xlat4.xxxx * u_xlat7);
        u_xlat15 = (u_xlat4.yyyy * u_xlat7);
        u_xlat16 = (u_xlat4.zzzz * u_xlat7);
        u_xlat4 = (u_xlat4.wwww * u_xlat7);
        let x_2263 = u_xlat9.xy;
        txVec13 = vec3f(x_2263.x, x_2263.y, u_xlat2.z);
        u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_2278 = u_xlat9.zw;
        txVec14 = vec3f(x_2278.x, x_2278.y, u_xlat2.z);
        u_xlat56 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat56 = (u_xlat56 * u_xlat14.y);
        u_xlat5.x = ((u_xlat14.x * u_xlat5.x) + u_xlat56);
        txVec15 = vec3f(u_xlat37.x, u_xlat37.y, u_xlat2.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat37.x = ((u_xlat14.z * u_xlat37.x) + u_xlat5.x);
        let x_2328 = u_xlat12.xy;
        txVec16 = vec3f(x_2328.x, x_2328.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat37.x = ((u_xlat14.w * u_xlat54) + u_xlat37.x);
        let x_2351 = u_xlat10.xy;
        txVec17 = vec3f(x_2351.x, x_2351.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat37.x = ((u_xlat15.x * u_xlat54) + u_xlat37.x);
        let x_2373 = u_xlat10.zw;
        txVec18 = vec3f(x_2373.x, x_2373.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat37.x = ((u_xlat15.y * u_xlat54) + u_xlat37.x);
        let x_2395 = u_xlat11.xy;
        txVec19 = vec3f(x_2395.x, x_2395.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat37.x = ((u_xlat15.z * u_xlat54) + u_xlat37.x);
        let x_2417 = u_xlat12.zw;
        txVec20 = vec3f(x_2417.x, x_2417.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat37.x = ((u_xlat15.w * u_xlat54) + u_xlat37.x);
        let x_2439 = u_xlat13.xy;
        txVec21 = vec3f(x_2439.x, x_2439.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat37.x = ((u_xlat16.x * u_xlat54) + u_xlat37.x);
        let x_2461 = u_xlat13.zw;
        txVec22 = vec3f(x_2461.x, x_2461.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat37.x = ((u_xlat16.y * u_xlat54) + u_xlat37.x);
        txVec23 = vec3f(u_xlat22.x, u_xlat22.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat37.x = ((u_xlat16.z * u_xlat54) + u_xlat37.x);
        txVec24 = vec3f(u_xlat45.x, u_xlat45.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat37.x = ((u_xlat16.w * u_xlat54) + u_xlat37.x);
        let x_2525 = u_xlat8.xy;
        txVec25 = vec3f(x_2525.x, x_2525.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat37.x = ((u_xlat4.x * u_xlat54) + u_xlat37.x);
        let x_2547 = u_xlat8.zw;
        txVec26 = vec3f(x_2547.x, x_2547.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat37.x = ((u_xlat4.y * u_xlat54) + u_xlat37.x);
        txVec27 = vec3f(u_xlat40.x, u_xlat40.y, u_xlat2.z);
        u_xlat54 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat37.x = ((u_xlat4.z * u_xlat54) + u_xlat37.x);
        let x_2590 = u_xlat3.xy;
        txVec28 = vec3f(x_2590.x, x_2590.y, u_xlat2.z);
        u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat53 = ((u_xlat4.w * u_xlat3.x) + u_xlat37.x);
      }
    }
  } else {
    let x_2614 = u_xlat2.xy;
    txVec29 = vec3f(x_2614.x, x_2614.y, u_xlat2.z);
    u_xlat53 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat2.x = (-(x_1197.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat53 * x_1197.x_MainLightShadowParams.x) + u_xlat2.x);
  u_xlatb19 = (0.0f >= u_xlat2.z);
  u_xlatb36 = (u_xlat2.z >= 1.0f);
  u_xlatb19 = (u_xlatb36 | u_xlatb19);
  if (u_xlatb19) {
    x_2651 = 1.0f;
  } else {
    x_2651 = u_xlat2.x;
  }
  u_xlat2.x = x_2651;
  u_xlat19 = (vs_TEXCOORD1 + -(x_2662.x_WorldSpaceCameraPos));
  u_xlat19.x = dot(u_xlat19, u_xlat19);
  u_xlat36 = ((u_xlat19.x * x_1197.x_MainLightShadowParams.z) + x_1197.x_MainLightShadowParams.w);
  u_xlat36 = clamp(u_xlat36, 0.0f, 1.0f);
  u_xlat53 = (-(u_xlat2.x) + 1.0f);
  u_xlat2.x = ((u_xlat36 * u_xlat53) + u_xlat2.x);
  u_xlat36 = dot(u_xlat1.xyw, x_2662.x_MainLightPosition.xyz);
  u_xlat36 = clamp(u_xlat36, 0.0f, 1.0f);
  u_xlat53 = dot(u_xlat0.xzw, x_2662.x_MainLightPosition.xyz);
  u_xlat53 = clamp(u_xlat53, 0.0f, 1.0f);
  u_xlat0.x = dot(u_xlat0.xzw, u_xlat1.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = ((u_xlat0.x * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat34.x = (u_xlat2.x * u_xlat53);
  u_xlat0.x = ((x_447.x_Ambient * u_xlat0.x) + u_xlat34.x);
  u_xlat34.x = (u_xlat2.x * u_xlat36);
  u_xlat51 = ((u_xlat36 * u_xlat2.x) + x_447.x_Ambient);
  u_xlat0.x = (u_xlat0.x / u_xlat51);
  let x_2761 = (u_xlat17.xxx + vec3f(-0.77999997138977050781f, -1.15999996662139892578f, -0.44999998807907104492f));
  u_xlat1 = vec4f(x_2761.xy, u_xlat1.z, x_2761.z);
  u_xlat17.x = (u_xlat1.x * 4.16666650772094726562f);
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat51 = ((u_xlat17.x * -2.0f) + 3.0f);
  u_xlat17.x = (u_xlat17.x * u_xlat17.x);
  u_xlat17.x = ((-(u_xlat51) * u_xlat17.x) + 1.0f);
  u_xlat51 = (u_xlat17.x * x_447.x_Darken);
  u_xlat1.x = (u_xlat1.y * u_xlat1.y);
  u_xlat1.x = (u_xlat1.x * -120.2245941162109375f);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat18 = (u_xlat1.x * x_447.x_Rim);
  u_xlat18 = ((-(u_xlat17.x) * u_xlat35.x) + u_xlat18);
  u_xlat18 = -(u_xlat18);
  u_xlat18 = clamp(u_xlat18, 0.0f, 1.0f);
  u_xlat18 = ((u_xlat18 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat51 = ((-(u_xlat51) * u_xlat18) + 1.0f);
  u_xlat0.x = (u_xlat51 * u_xlat0.x);
  u_xlat34.x = (u_xlat34.x * 3.0f);
  u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat51 = (u_xlat1.w + u_xlat1.w);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat18 = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat18);
  u_xlat51 = ((u_xlat51 * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat17.x = (u_xlat51 * u_xlat17.x);
  u_xlat34 = (u_xlat34.xx * vec2f(x_447.x_ShadeDarken, x_447.x_ShadeRim));
  u_xlat17.x = ((-(u_xlat34.x) * u_xlat17.x) + 1.0f);
  u_xlat34.x = ((u_xlat34.y * u_xlat1.x) + 1.0f);
  u_xlat17.x = (u_xlat34.x * u_xlat17.x);
  u_xlat34.x = (u_xlat17.x * u_xlat0.x);
  u_xlat51 = sqrt(u_xlat19.x);
  u_xlat1.x = (-(x_447.x_Fade.x) + x_447.x_Fade.y);
  u_xlat51 = (u_xlat51 + -(x_447.x_Fade.x));
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat0.x = ((-(u_xlat0.x) * u_xlat17.x) + 1.0f);
  u_xlat0.x = ((u_xlat51 * u_xlat0.x) + u_xlat34.x);
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

