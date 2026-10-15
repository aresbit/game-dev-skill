//Assets/Levels/B612/Shaders/B612_SandBoil.shader
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
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(4) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD2 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
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
  vs_TEXCOORD2 = 0.0f;
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(2)
  vs_TEXCOORD2_1 : f32,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD2, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_SandBoil.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Tile : f32,
  /* @offset(4) */
  x_ConeRadius : f32,
  /* @offset(8) */
  x_ChurnSpeed : f32,
  /* @offset(16) */
  x_Tint : vec4f,
  /* @offset(32) */
  x_Vent : vec4f,
  /* @offset(48) */
  x_Churn : f32,
  /* @offset(52) */
  x_Lifted : f32,
  /* @offset(56) */
  x_NormalStrength : f32,
  /* @offset(64) */
  x_WaterTint : vec4f,
  /* @offset(80) */
  x_ThroatDark : f32,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(16) */
  x_MainLightPosition : vec4f,
  /* @offset(32) */
  x_MainLightColor : vec4f,
  /* @offset(48) */
  x_Time : vec4f,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3f,
}

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 2u>;

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr,
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

alias Arr_5 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_5,
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

var<private> gl_FragCoord : vec4f;

@group(1) @binding(2) var<uniform> x_142 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(0) var<uniform> x_250 : PGlobals;

@group(0) @binding(1) var x_SandTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SandTex : sampler;

@group(0) @binding(2) var x_SandNormal : texture_2d<f32>;

@group(0) @binding(5) var sampler_SandNormal : sampler;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(1) var<uniform> x_893 : UnityPerDraw;

@group(1) @binding(3) var<uniform> x_963 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

var<private> SV_Target0 : vec4f;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  mask = bitcast<u32>((~((-1i << bitcast<u32>(*(bits)))) << bitcast<u32>(*(offset_1))));
  let x_27 = *(base);
  let x_29 = mask;
  let x_32 = *(insert);
  let x_34 = *(offset_1);
  let x_37 = mask;
  return bitcast<i32>(((bitcast<u32>(x_27) & ~(x_29)) | ((bitcast<u32>(x_32) << bitcast<u32>(x_34)) & x_37)));
}

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatu0 : vec2u;
  var u_xlati5 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlati0 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var u_xlat0 : vec4f;
  var indexable : array<vec4u, 16u>;
  var u_xlat5 : vec3f;
  var u_xlat10 : vec2f;
  var u_xlat1 : vec3f;
  var u_xlat6 : vec2f;
  var u_xlatb0 : bool;
  var u_xlat2 : vec4f;
  var u_xlat16 : f32;
  var u_xlat3 : vec3f;
  var u_xlat7 : vec3f;
  var u_xlat15 : f32;
  var u_xlat11 : f32;
  var u_xlat4 : vec3f;
  var u_xlatb16 : bool;
  var u_xlatb17 : bool;
  var txVec0 : vec3f;
  var x_1047 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_51 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_51.x, x_51.y, x_51.z, (1.0f / gl_FragCoord.w));
  u_xlatu0 = vec2u(hlslcc_FragCoord.xy);
  let x_73 = u_xlatu0.y;
  param = 0i;
  param_1 = bitcast<i32>(x_73);
  param_2 = 2i;
  param_3 = 2i;
  let x_80 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati5 = x_80;
  let x_84 = u_xlatu0.x;
  param_4 = u_xlati5;
  param_5 = bitcast<i32>(x_84);
  param_6 = 0i;
  param_7 = 2i;
  let x_91 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
  u_xlati0 = x_91;
  let x_129 = u_xlati0;
  indexable = array<vec4u, 16u>(vec4u(), vec4u(1090519040u, 0u, 0u, 0u), vec4u(1073741824u, 0u, 0u, 0u), vec4u(1092616192u, 0u, 0u, 0u), vec4u(1094713344u, 0u, 0u, 0u), vec4u(1082130432u, 0u, 0u, 0u), vec4u(1096810496u, 0u, 0u, 0u), vec4u(1086324736u, 0u, 0u, 0u), vec4u(1077936128u, 0u, 0u, 0u), vec4u(1093664768u, 0u, 0u, 0u), vec4u(1065353216u, 0u, 0u, 0u), vec4u(1091567616u, 0u, 0u, 0u), vec4u(1097859072u, 0u, 0u, 0u), vec4u(1088421888u, 0u, 0u, 0u), vec4u(1095761920u, 0u, 0u, 0u), vec4u(1084227584u, 0u, 0u, 0u));
  u_xlat0.x = (0.5f + bitcast<f32>(indexable[x_129].x));
  u_xlat5.x = (x_142.x_ConeRadius + 0.12999999523162841797f);
  u_xlat5.x = ((-(x_142.x_ConeRadius) * 0.94999998807907104492f) + u_xlat5.x);
  u_xlat5.x = (1.0f / u_xlat5.x);
  u_xlat10 = (vs_TEXCOORD0.xz + -(x_142.x_Vent.xz));
  u_xlat1.x = dot(u_xlat10, u_xlat10);
  u_xlat1.x = sqrt(u_xlat1.x);
  u_xlat6.x = ((-(x_142.x_ConeRadius) * 0.94999998807907104492f) + u_xlat1.x);
  u_xlat5.x = (u_xlat5.x * u_xlat6.x);
  u_xlat5.x = clamp(u_xlat5.x, 0.0f, 1.0f);
  u_xlat6.x = ((u_xlat5.x * -2.0f) + 3.0f);
  u_xlat5.x = (u_xlat5.x * u_xlat5.x);
  u_xlat5.x = ((-(u_xlat6.x) * u_xlat5.x) + 1.0f);
  u_xlat0.x = ((-(u_xlat0.x) * 0.0625f) + u_xlat5.x);
  u_xlatb0 = (u_xlat0.x < 0.0f);
  if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
    discard;
  }
  u_xlat0.x = (x_250.x_Time.y * x_142.x_ChurnSpeed);
  u_xlat6 = (u_xlat0.xx * vec2f(3.09999990463256835938f, 2.70000004768371582031f));
  u_xlat2 = (u_xlat0.xxxx * vec4f(1.70000004768371582031f, 2.29999995231628417969f, 1.89999997615814208984f, 1.10000002384185791016f));
  u_xlat0 = vec4f(((vs_TEXCOORD0.xz / vec2f(x_142.x_Tile))).xy, u_xlat0.zw);
  u_xlat16 = (u_xlat0.y + u_xlat0.x);
  u_xlat6.x = ((u_xlat16 * 13.0f) + u_xlat6.x);
  u_xlat3.x = sin(u_xlat6.x);
  u_xlat6.x = (-(u_xlat0.y) + u_xlat0.x);
  u_xlat6.x = ((u_xlat6.x * 11.0f) + -(u_xlat6.y));
  u_xlat3.y = cos(u_xlat6.x);
  u_xlat6 = (u_xlat3.xy * vec2f(0.34999999403953552246f));
  let x_332 = ((u_xlat0.yy * vec2f(9.1000003814697265625f, 6.09999990463256835938f)) + u_xlat2.xw);
  u_xlat2 = vec4f(x_332.x, u_xlat2.yz, x_332.y);
  u_xlat7 = vec3f((((u_xlat0.xx * vec2f(5.30000019073486328125f, 8.30000019073486328125f)) + -(u_xlat2.yz))).xy, u_xlat7.z);
  let x_350 = sin(u_xlat2.xw);
  u_xlat2 = vec4f(x_350.x, u_xlat2.yz, x_350.y);
  u_xlat16 = sin(u_xlat7.x);
  u_xlat7.x = cos(u_xlat7.y);
  u_xlat3.y = (u_xlat2.w + u_xlat7.x);
  u_xlat3.x = (u_xlat16 + u_xlat2.x);
  u_xlat6 = ((u_xlat3.xy * vec2f(0.5f)) + u_xlat6);
  u_xlat6 = (u_xlat6 * vec2f(x_142.x_Churn));
  u_xlat16 = (1.0f / x_142.x_Vent.w);
  u_xlat2 = vec4f((((-(x_142.x_Vent.ww) * vec2f(0.60000002384185791016f, 0.30000001192092895508f)) + u_xlat1.xx)).xy, u_xlat2.zw);
  u_xlat16 = (u_xlat16 * u_xlat2.x);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat16 * -2.0f) + 3.0f);
  u_xlat16 = (u_xlat16 * u_xlat16);
  u_xlat16 = ((-(u_xlat2.x) * u_xlat16) + 1.0f);
  u_xlat6 = (vec2f(u_xlat16) * u_xlat6);
  u_xlat6 = (u_xlat6 / vec2f(x_142.x_Tile));
  u_xlat0 = vec4f(((u_xlat0.xy + u_xlat6)).xy, u_xlat0.zw);
  u_xlat6.x = max(u_xlat1.x, 0.00100000004749745131f);
  u_xlat10 = (u_xlat10 / u_xlat6.xx);
  let x_449 = (x_250.x_Time.yyy * vec3f(0.07000000029802322388f, 5.02650022506713867188f, 1.29999995231628417969f));
  u_xlat2 = vec4f(x_449.x, u_xlat2.y, x_449.yz);
  u_xlat6.x = fract(u_xlat2.x);
  u_xlat10 = (u_xlat10 * u_xlat6.xx);
  u_xlat10 = (u_xlat10 * vec2f(0.03999999910593032837f));
  u_xlat10 = (u_xlat10 / vec2f(x_142.x_Tile));
  u_xlat6.x = (-(u_xlat16) + 1.0f);
  u_xlat0 = vec4f((((-(u_xlat10) * u_xlat6.xx) + u_xlat0.xy)).xy, u_xlat0.zw);
  let x_493 = u_xlat0;
  let x_496 = x_250.x_GlobalMipBias.x;
  let x_497 = textureSampleBias(x_SandTex, sampler_SandTex, x_493.xy, x_496);
  u_xlat3 = x_497.xyz;
  let x_504 = u_xlat0;
  let x_507 = x_250.x_GlobalMipBias.x;
  let x_508 = textureSampleBias(x_SandNormal, sampler_SandNormal, x_504.xy, x_507);
  u_xlat0 = vec4f(x_508.xyw.xyz, u_xlat0.w);
  u_xlat3 = (u_xlat3 * x_142.x_Tint.xyz);
  u_xlat15 = sin(u_xlat2.w);
  u_xlat15 = ((u_xlat15 * 1.70000004768371582031f) + u_xlat2.z);
  u_xlat15 = sin(u_xlat15);
  u_xlat15 = ((u_xlat15 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat6.x = ((-(u_xlat15) * 0.25f) + 1.0f);
  u_xlat11 = (x_142.x_Vent.w * 0.80000001192092895508f);
  u_xlat11 = (1.0f / u_xlat11);
  u_xlat11 = (u_xlat11 * u_xlat2.y);
  u_xlat11 = clamp(u_xlat11, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat11 * -2.0f) + 3.0f);
  u_xlat11 = (u_xlat11 * u_xlat11);
  u_xlat11 = ((-(u_xlat2.x) * u_xlat11) + 1.0f);
  u_xlat6.x = (u_xlat6.x * u_xlat11);
  u_xlat11 = ((-(u_xlat11) * 0.5f) + 1.0f);
  u_xlat6.x = ((u_xlat6.x * -(x_142.x_ThroatDark)) + 1.0f);
  u_xlat2 = vec4f(((u_xlat6.xxx * u_xlat3)).xyz, u_xlat2.w);
  u_xlat3 = ((-(u_xlat3) * u_xlat6.xxx) + vec3f(0.93000000715255737305f, 0.91000002622604370117f, 0.85000002384185791016f));
  u_xlat6.x = (u_xlat16 * x_142.x_Lifted);
  u_xlat16 = ((-(u_xlat16) * 0.60000002384185791016f) + 1.0f);
  u_xlat16 = (u_xlat16 * x_142.x_NormalStrength);
  u_xlat15 = (u_xlat15 * u_xlat6.x);
  u_xlat15 = (u_xlat11 * u_xlat15);
  u_xlat2 = vec4f((((vec3f(u_xlat15) * u_xlat3) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat15 = (u_xlat1.x + -(x_142.x_Vent.w));
  u_xlat6.x = (x_142.x_ConeRadius + -(x_142.x_Vent.w));
  u_xlat6.x = (1.0f / u_xlat6.x);
  u_xlat15 = (u_xlat15 * u_xlat6.x);
  u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
  u_xlat6.x = ((u_xlat15 * -2.0f) + 3.0f);
  u_xlat15 = (u_xlat15 * u_xlat15);
  u_xlat15 = ((-(u_xlat6.x) * u_xlat15) + 1.0f);
  u_xlat15 = ((u_xlat15 * 0.07999999821186065674f) + 1.0f);
  u_xlat2 = vec4f(((vec3f(u_xlat15) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat15 = max(x_142.x_ConeRadius, 0.05000000074505805969f);
  u_xlat15 = (u_xlat1.x / u_xlat15);
  u_xlat1 = vec3f(((vec2f(u_xlat15) + vec2f(-0.63999998569488525391f, -0.40000000596046447754f))).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * vec2f(10.0f, 8.3333339691162109375f))).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * vec2f(-1.44269502162933349609f))).xy, u_xlat1.z);
  u_xlat1 = vec3f(exp2(u_xlat1.xy).xy, u_xlat1.z);
  u_xlat15 = ((u_xlat1.x * 0.28000000119209289551f) + 1.0f);
  u_xlat15 = ((-(u_xlat1.y) * 0.25f) + u_xlat15);
  u_xlat1 = (vec3f(u_xlat15) * u_xlat2.xyz);
  u_xlat0.x = (u_xlat0.x * u_xlat0.z);
  u_xlat0 = vec4f((((u_xlat0.xy * vec2f(2.0f)) + vec2f(-1.0f))).xy, u_xlat0.zw);
  u_xlat10.x = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat0 = vec4f(((vec2f(u_xlat16) * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat10.x = min(u_xlat10.x, 1.0f);
  u_xlat10.x = (-(u_xlat10.x) + 1.0f);
  u_xlat10.x = sqrt(u_xlat10.x);
  u_xlat10.x = max(u_xlat10.x, 0.0000000000000001f);
  u_xlat15 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat15 = inverseSqrt(u_xlat15);
  u_xlat2 = vec4f(((vec3f(u_xlat15) * vs_TEXCOORD1)).xyz, u_xlat2.w);
  u_xlat3 = (u_xlat2.zxy * vec3f(0.0f, 1.0f, 0.0f));
  u_xlat3 = ((u_xlat2.yzx * vec3f(1.0f, 0.0f, 0.0f)) + -(u_xlat3));
  u_xlat15 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat15 = inverseSqrt(u_xlat15);
  u_xlat3 = (vec3f(u_xlat15) * u_xlat3);
  u_xlat4 = (u_xlat2.yzx * u_xlat3.zxy);
  u_xlat4 = ((u_xlat3.yzx * u_xlat2.zxy) + -(u_xlat4));
  u_xlat4 = (u_xlat0.yyy * u_xlat4);
  let x_840 = ((u_xlat3 * u_xlat0.xxx) + u_xlat4);
  u_xlat0 = vec4f(x_840.xy, u_xlat0.z, x_840.z);
  u_xlat0 = vec4f((((u_xlat2.xyz * u_xlat10.xxx) + u_xlat0.xyw)).xyz, u_xlat0.w);
  u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat15 = inverseSqrt(u_xlat15);
  u_xlat0 = vec4f(((vec3f(u_xlat15) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat16 = (u_xlat0.y * u_xlat0.y);
  u_xlat16 = ((u_xlat0.x * u_xlat0.x) + -(u_xlat16));
  u_xlat2 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat3.x = dot(x_893.unity_SHBr, u_xlat2);
  u_xlat3.y = dot(x_893.unity_SHBg, u_xlat2);
  u_xlat3.z = dot(x_893.unity_SHBb, u_xlat2);
  u_xlat2 = vec4f((((x_893.unity_SHC.xyz * vec3f(u_xlat16)) + u_xlat3)).xyz, u_xlat2.w);
  u_xlat0.w = 1.0f;
  u_xlat3.x = dot(x_893.unity_SHAr, u_xlat0);
  u_xlat3.y = dot(x_893.unity_SHAg, u_xlat0);
  u_xlat3.z = dot(x_893.unity_SHAb, u_xlat0);
  u_xlat0.x = dot(u_xlat0.xyz, x_250.x_MainLightPosition.xyz);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat5 = (u_xlat2.xyz + u_xlat3);
  u_xlat2 = vec4f(((vs_TEXCOORD0.yyy * x_963.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_963.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_963.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + x_963.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat2.w);
  u_xlatb16 = (0.0f >= u_xlat2.z);
  u_xlatb17 = (u_xlat2.z >= 1.0f);
  let x_1010 = u_xlat2.xy;
  txVec0 = vec3f(x_1010.x, x_1010.y, u_xlat2.z);
  u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlatb16 = (u_xlatb16 | u_xlatb17);
  u_xlat7.x = (-(x_963.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat2.x * x_963.x_MainLightShadowParams.x) + u_xlat7.x);
  if (u_xlatb16) {
    x_1047 = 1.0f;
  } else {
    x_1047 = u_xlat2.x;
  }
  u_xlat16 = x_1047;
  u_xlat2.x = (-(u_xlat16) + 1.0f);
  u_xlat7 = (vs_TEXCOORD0 + -(x_250.x_WorldSpaceCameraPos));
  u_xlat7.x = dot(u_xlat7, u_xlat7);
  u_xlat7.x = ((u_xlat7.x * x_963.x_MainLightShadowParams.z) + x_963.x_MainLightShadowParams.w);
  u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
  u_xlat16 = ((u_xlat7.x * u_xlat2.x) + u_xlat16);
  u_xlat2 = vec4f(((vec3f(u_xlat16) * x_250.x_MainLightColor.xyz)).xyz, u_xlat2.w);
  u_xlat0 = vec4f((((u_xlat2.xyz * u_xlat0.xxx) + u_xlat5)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat0.xyz * x_142.x_WaterTint.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

