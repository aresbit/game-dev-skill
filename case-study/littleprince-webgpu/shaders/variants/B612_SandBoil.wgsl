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

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(2) var<uniform> x_70 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_229 : PGlobals;

@group(0) @binding(1) var x_SandTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SandTex : sampler;

@group(0) @binding(2) var x_SandNormal : texture_2d<f32>;

@group(0) @binding(5) var sampler_SandNormal : sampler;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(3) var<uniform> x_895 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_2267 : UnityPerDraw;

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

const x_399 = vec2f(0.5f);

const x_541 = vec2f(2.0f);

const x_1057 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1081 = vec2f(1.0f);

const x_1118 = vec2f(0.15999999642372131348f);

const x_1188 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1593 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1596 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1603 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1641 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat34 : f32;
  var u_xlat51 : f32;
  var u_xlat1 : vec4f;
  var u_xlatu1 : vec2u;
  var u_xlati18 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlati1 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var indexable : array<vec4u, 16u>;
  var u_xlatb51 : bool;
  var u_xlat18 : vec3f;
  var u_xlat52 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat36 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat17 : f32;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb52 : bool;
  var u_xlat39 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat19 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat20 : vec3f;
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
  var txVec15 : vec3f;
  var txVec16 : vec3f;
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
  var u_xlatb1 : bool;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_51 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_51.x, x_51.y, x_51.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec4f(((vs_TEXCOORD0.xz + -(x_70.x_Vent.xz))).xy, u_xlat0.zw);
  u_xlat34 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat34 = sqrt(u_xlat34);
  u_xlat51 = (x_70.x_ConeRadius + 0.12999999523162841797f);
  u_xlat51 = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat51);
  u_xlat1.x = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat34);
  u_xlat51 = (1.0f / u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((-(u_xlat1.x) * u_xlat51) + 1.0f);
  u_xlatu1 = vec2u(hlslcc_FragCoord.xy);
  let x_146 = u_xlatu1.y;
  param = 0i;
  param_1 = bitcast<i32>(x_146);
  param_2 = 2i;
  param_3 = 2i;
  let x_153 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati18 = x_153;
  let x_156 = u_xlatu1.x;
  param_4 = u_xlati18;
  param_5 = bitcast<i32>(x_156);
  param_6 = 0i;
  param_7 = 2i;
  let x_163 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
  u_xlati1 = x_163;
  let x_200 = u_xlati1;
  indexable = array<vec4u, 16u>(vec4u(), vec4u(1090519040u, 0u, 0u, 0u), vec4u(1073741824u, 0u, 0u, 0u), vec4u(1092616192u, 0u, 0u, 0u), vec4u(1094713344u, 0u, 0u, 0u), vec4u(1082130432u, 0u, 0u, 0u), vec4u(1096810496u, 0u, 0u, 0u), vec4u(1086324736u, 0u, 0u, 0u), vec4u(1077936128u, 0u, 0u, 0u), vec4u(1093664768u, 0u, 0u, 0u), vec4u(1065353216u, 0u, 0u, 0u), vec4u(1091567616u, 0u, 0u, 0u), vec4u(1097859072u, 0u, 0u, 0u), vec4u(1088421888u, 0u, 0u, 0u), vec4u(1095761920u, 0u, 0u, 0u), vec4u(1084227584u, 0u, 0u, 0u));
  u_xlat1.x = (0.5f + bitcast<f32>(indexable[x_200].x));
  u_xlat51 = ((-(u_xlat1.x) * 0.0625f) + u_xlat51);
  u_xlatb51 = (u_xlat51 < 0.0f);
  if (((select(0i, 1i, u_xlatb51) * -1i) != 0i)) {
    discard;
  }
  u_xlat51 = (x_229.x_Time.y * x_70.x_ChurnSpeed);
  u_xlat1.x = (x_70.x_Vent.w * 0.80000001192092895508f);
  u_xlat18 = vec3f((((-(x_70.x_Vent.ww) * vec2f(0.60000002384185791016f, 0.30000001192092895508f)) + vec2f(u_xlat34))).xy, u_xlat18.z);
  u_xlat52 = (1.0f / x_70.x_Vent.w);
  u_xlat18.x = (u_xlat52 * u_xlat18.x);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat52 = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat18.x = ((-(u_xlat52) * u_xlat18.x) + 1.0f);
  u_xlat2 = vec4f(((vs_TEXCOORD0.xz / vec2f(x_70.x_Tile))).xy, u_xlat2.zw);
  u_xlat3 = (vec4f(u_xlat51) * vec4f(1.70000004768371582031f, 2.29999995231628417969f, 1.89999997615814208984f, 1.10000002384185791016f));
  u_xlat36 = ((u_xlat2.yy * vec2f(9.1000003814697265625f, 6.09999990463256835938f)) + u_xlat3.xw);
  u_xlat36 = sin(u_xlat36);
  u_xlat3 = vec4f((((u_xlat2.xx * vec2f(5.30000019073486328125f, 8.30000019073486328125f)) + -(u_xlat3.yz))).xy, u_xlat3.zw);
  u_xlat52 = sin(u_xlat3.x);
  u_xlat4.x = (u_xlat52 + u_xlat36.x);
  u_xlat52 = cos(u_xlat3.y);
  u_xlat4.y = (u_xlat36.y + u_xlat52);
  u_xlat52 = (u_xlat2.y + u_xlat2.x);
  u_xlat36 = (vec2f(u_xlat51) * vec2f(3.09999990463256835938f, 2.70000004768371582031f));
  u_xlat51 = ((u_xlat52 * 13.0f) + u_xlat36.x);
  u_xlat3.x = sin(u_xlat51);
  u_xlat51 = (-(u_xlat2.y) + u_xlat2.x);
  u_xlat51 = ((u_xlat51 * 11.0f) + -(u_xlat36.y));
  u_xlat3.y = cos(u_xlat51);
  u_xlat51 = max(u_xlat34, 0.00100000004749745131f);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(u_xlat51))).xy, u_xlat0.zw);
  u_xlat36 = (u_xlat3.xy * vec2f(0.34999999403953552246f));
  u_xlat36 = ((u_xlat4.xy * x_399) + u_xlat36);
  u_xlat36 = (u_xlat36 * vec2f(x_70.x_Churn));
  u_xlat36 = (u_xlat18.xx * u_xlat36);
  u_xlat36 = (u_xlat36 / vec2f(x_70.x_Tile));
  u_xlat2 = vec4f(((u_xlat36 + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec4f(((x_229.x_Time.yyy * vec3f(0.07000000029802322388f, 5.02650022506713867188f, 1.29999995231628417969f))).xyz, u_xlat3.w);
  u_xlat51 = fract(u_xlat3.x);
  u_xlat0 = vec4f(((vec2f(u_xlat51) * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy * vec2f(0.03999999910593032837f))).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(x_70.x_Tile))).xy, u_xlat0.zw);
  u_xlat51 = (-(u_xlat18.x) + 1.0f);
  u_xlat0 = vec4f((((-(u_xlat0.xy) * vec2f(u_xlat51)) + u_xlat2.xy)).xy, u_xlat0.zw);
  let x_484 = u_xlat0;
  let x_487 = x_229.x_GlobalMipBias.x;
  let x_488 = textureSampleBias(x_SandTex, sampler_SandTex, x_484.xy, x_487);
  u_xlat2 = vec4f(x_488.xyz.xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * x_70.x_Tint.xyz)).xyz, u_xlat2.w);
  let x_505 = u_xlat0;
  let x_508 = x_229.x_GlobalMipBias.x;
  let x_509 = textureSampleBias(x_SandNormal, sampler_SandNormal, x_505.xy, x_508);
  let x_510 = x_509.xyw;
  u_xlat0 = vec4f(x_510.xy, u_xlat0.z, x_510.z);
  u_xlat18.z = ((-(u_xlat18.x) * 0.60000002384185791016f) + 1.0f);
  let x_529 = (u_xlat18.xz * vec2f(x_70.x_Lifted, x_70.x_NormalStrength));
  u_xlat18 = vec3f(x_529.x, u_xlat18.y, x_529.y);
  u_xlat0.x = (u_xlat0.x * u_xlat0.w);
  u_xlat0 = vec4f((((u_xlat0.xy * x_541) + vec2f(-1.0f))).xy, u_xlat0.zw);
  u_xlat51 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat51 = min(u_xlat51, 1.0f);
  u_xlat51 = (-(u_xlat51) + 1.0f);
  u_xlat51 = sqrt(u_xlat51);
  u_xlat51 = max(u_xlat51, 0.0000000000000001f);
  u_xlat0 = vec4f(((u_xlat18.zz * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat52 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((vec3f(u_xlat52) * vs_TEXCOORD1)).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((u_xlat4.zxy * vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat4.yzx * vec3f(1.0f, 0.0f, 0.0f)) + -(u_xlat5.xyz))).xyz, u_xlat5.w);
  u_xlat52 = dot(u_xlat5.xy, u_xlat5.xy);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat5 = vec4f(((vec3f(u_xlat52) * u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat5.yzx * u_xlat4.zxy) + -(u_xlat6.xyz))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat0.yyy * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat0.xxx) + u_xlat6.xyz)).xyz, u_xlat5.w);
  let x_656 = ((u_xlat4.xyz * vec3f(u_xlat51)) + u_xlat5.xyz);
  u_xlat0 = vec4f(x_656.xy, u_xlat0.z, x_656.z);
  u_xlat52 = dot(u_xlat0.xyw, u_xlat0.xyw);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((u_xlat0.xyw * vec3f(u_xlat52))).xyz, u_xlat4.w);
  u_xlat0.x = (1.0f / u_xlat1.x);
  u_xlat0.x = (u_xlat0.x * u_xlat18.y);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat17 = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat17) * u_xlat0.x) + 1.0f);
  u_xlat17 = sin(u_xlat3.z);
  u_xlat17 = ((u_xlat17 * 1.70000004768371582031f) + u_xlat3.y);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = ((u_xlat17 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat51 = ((-(u_xlat17) * 0.25f) + 1.0f);
  u_xlat51 = (u_xlat51 * u_xlat0.x);
  u_xlat51 = ((u_xlat51 * -(x_70.x_ThroatDark)) + 1.0f);
  let x_739 = (vec3f(u_xlat51) * u_xlat2.xyz);
  u_xlat1 = vec4f(x_739.x, u_xlat1.y, x_739.yz);
  u_xlat17 = (u_xlat17 * u_xlat18.x);
  u_xlat0.x = ((-(u_xlat0.x) * 0.5f) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat17);
  u_xlat2 = vec4f((((-(u_xlat2.xyz) * vec3f(u_xlat51)) + vec3f(0.93000000715255737305f, 0.91000002622604370117f, 0.85000002384185791016f))).xyz, u_xlat2.w);
  let x_777 = ((u_xlat0.xxx * u_xlat2.xyz) + u_xlat1.xzw);
  u_xlat0 = vec4f(x_777.xy, u_xlat0.z, x_777.z);
  u_xlat1.x = max(x_70.x_ConeRadius, 0.05000000074505805969f);
  u_xlat1.x = (u_xlat34 / u_xlat1.x);
  u_xlat18.x = (x_70.x_ConeRadius + -(x_70.x_Vent.w));
  u_xlat34 = (u_xlat34 + -(x_70.x_Vent.w));
  u_xlat18.x = (1.0f / u_xlat18.x);
  u_xlat34 = (u_xlat34 * u_xlat18.x);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat18.x = ((u_xlat34 * -2.0f) + 3.0f);
  u_xlat34 = (u_xlat34 * u_xlat34);
  u_xlat34 = ((-(u_xlat18.x) * u_xlat34) + 1.0f);
  u_xlat34 = ((u_xlat34 * 0.07999999821186065674f) + 1.0f);
  u_xlat0 = vec4f(((vec3f(u_xlat34) * u_xlat0.xyw)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat1.xx + vec2f(-0.63999998569488525391f, -0.40000000596046447754f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(10.0f, 8.3333339691162109375f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(-1.44269502162933349609f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(exp2(u_xlat1.xy).xy, u_xlat1.zw);
  u_xlat51 = ((u_xlat1.x * 0.28000000119209289551f) + 1.0f);
  u_xlat51 = ((-(u_xlat1.y) * 0.25f) + u_xlat51);
  u_xlat0 = vec4f(((vec3f(u_xlat51) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((vs_TEXCOORD0.yyy * x_895.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_895.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_895.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_895.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat1.w);
  u_xlatb51 = (0.0f < x_895.x_MainLightShadowParams.y);
  if (u_xlatb51) {
    u_xlatb51 = (x_895.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb51) {
      u_xlat2 = (u_xlat1.xyxy + x_895.x_MainLightShadowOffset0);
      let x_952 = u_xlat2.xy;
      txVec0 = vec3f(x_952.x, x_952.y, u_xlat1.z);
      u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_972 = u_xlat2.zw;
      txVec1 = vec3f(x_972.x, x_972.y, u_xlat1.z);
      u_xlat3.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat2 = (u_xlat1.xyxy + x_895.x_MainLightShadowOffset1);
      let x_992 = u_xlat2.xy;
      txVec2 = vec3f(x_992.x, x_992.y, u_xlat1.z);
      u_xlat3.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1007 = u_xlat2.zw;
      txVec3 = vec3f(x_1007.x, x_1007.y, u_xlat1.z);
      u_xlat3.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat51 = dot(u_xlat3, vec4f(0.25f));
    } else {
      u_xlatb52 = (x_895.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb52) {
        u_xlat2 = vec4f((((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1057);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1067 = (u_xlat5.yw * vec2f(0.07999999821186065674f));
        u_xlat3 = vec4f(x_1067.x, u_xlat3.y, x_1067.y, u_xlat3.w);
        u_xlat5 = vec4f((((u_xlat5.xz * x_399) + -(u_xlat36))).xy, u_xlat5.zw);
        u_xlat39 = (-(u_xlat36) + x_1081);
        u_xlat6 = vec4f(min(u_xlat36, vec2f()).xy, u_xlat6.zw);
        u_xlat6 = vec4f((((-(u_xlat6.xy) * u_xlat6.xy) + u_xlat39)).xy, u_xlat6.zw);
        u_xlat36 = max(u_xlat36, vec2f());
        u_xlat36 = ((-(u_xlat36) * u_xlat36) + u_xlat3.yw);
        u_xlat6 = vec4f(((u_xlat6.xy + x_1081)).xy, u_xlat6.zw);
        u_xlat36 = (u_xlat36 + x_1081);
        u_xlat7 = vec4f(((u_xlat5.xy * x_1118)).xy, u_xlat7.zw);
        u_xlat5 = vec4f(((u_xlat39 * x_1118)).xy, u_xlat5.zw);
        u_xlat6 = vec4f(((u_xlat6.xy * x_1118)).xy, u_xlat6.zw);
        u_xlat8 = vec4f(((u_xlat36 * x_1118)).xy, u_xlat8.zw);
        u_xlat36 = (u_xlat3.yw * x_1118);
        u_xlat7.z = u_xlat6.x;
        u_xlat7.w = u_xlat36.x;
        u_xlat5.z = u_xlat8.x;
        u_xlat5.w = u_xlat3.x;
        u_xlat9 = (u_xlat5.zwxz + u_xlat7.zwxz);
        u_xlat6.z = u_xlat7.y;
        u_xlat6.w = u_xlat36.y;
        u_xlat8.z = u_xlat5.y;
        u_xlat8.w = u_xlat3.z;
        u_xlat3 = vec4f(((u_xlat6.zyw + u_xlat8.zyw)).xyz, u_xlat3.w);
        u_xlat5 = vec4f(((u_xlat5.xzw / u_xlat9.zwy)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat5.xyz + x_1188)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat8.zyw / u_xlat3.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f(((u_xlat6.xyz + x_1188)).xyz, u_xlat6.w);
        u_xlat5 = vec4f(((u_xlat5.yxz * x_895.x_MainLightShadowmapSize.xxx)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_895.x_MainLightShadowmapSize.yyy)).xyz, u_xlat6.w);
        u_xlat5.w = u_xlat6.x;
        u_xlat7 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.ywxw);
        u_xlat36 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat5.zw);
        u_xlat6.w = u_xlat5.y;
        let x_1245 = u_xlat6.yz;
        u_xlat5 = vec4f(u_xlat5.x, x_1245.x, u_xlat5.z, x_1245.y);
        u_xlat8 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyzy);
        u_xlat6 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat6.wywz);
        u_xlat5 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.xwzw);
        u_xlat10 = (u_xlat3.xxxy * u_xlat9.zwyz);
        u_xlat11 = (u_xlat3.yyzz * u_xlat9);
        u_xlat52 = (u_xlat3.z * u_xlat9.y);
        let x_1293 = u_xlat7.xy;
        txVec4 = vec3f(x_1293.x, x_1293.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1308 = u_xlat7.zw;
        txVec5 = vec3f(x_1308.x, x_1308.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat19 = (u_xlat19 * u_xlat10.y);
        u_xlat2.x = ((u_xlat10.x * u_xlat2.x) + u_xlat19);
        txVec6 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat2.x = ((u_xlat10.z * u_xlat19) + u_xlat2.x);
        let x_1356 = u_xlat6.xy;
        txVec7 = vec3f(x_1356.x, x_1356.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat2.x = ((u_xlat10.w * u_xlat19) + u_xlat2.x);
        let x_1378 = u_xlat8.xy;
        txVec8 = vec3f(x_1378.x, x_1378.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat2.x = ((u_xlat11.x * u_xlat19) + u_xlat2.x);
        let x_1400 = u_xlat8.zw;
        txVec9 = vec3f(x_1400.x, x_1400.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat2.x = ((u_xlat11.y * u_xlat19) + u_xlat2.x);
        let x_1422 = u_xlat6.zw;
        txVec10 = vec3f(x_1422.x, x_1422.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat2.x = ((u_xlat11.z * u_xlat19) + u_xlat2.x);
        let x_1444 = u_xlat5.xy;
        txVec11 = vec3f(x_1444.x, x_1444.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat2.x = ((u_xlat11.w * u_xlat19) + u_xlat2.x);
        let x_1466 = u_xlat5.zw;
        txVec12 = vec3f(x_1466.x, x_1466.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat51 = ((u_xlat52 * u_xlat19) + u_xlat2.x);
      } else {
        u_xlat2 = vec4f((((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1057);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1521 = (u_xlat5.yw * vec2f(0.04081600159406661987f));
        u_xlat6 = vec4f(u_xlat6.x, x_1521.x, u_xlat6.z, x_1521.y);
        let x_1529 = ((u_xlat5.xz * x_399) + -(u_xlat36));
        u_xlat3 = vec4f(x_1529.x, u_xlat3.y, x_1529.y, u_xlat3.w);
        u_xlat5 = vec4f(((-(u_xlat36) + x_1081)).xy, u_xlat5.zw);
        u_xlat39 = min(u_xlat36, vec2f());
        u_xlat5 = vec4f((((-(u_xlat39) * u_xlat39) + u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat39 = max(u_xlat36, vec2f());
        let x_1557 = ((-(u_xlat39) * u_xlat39) + u_xlat3.yw);
        u_xlat20 = vec3f(x_1557.x, u_xlat20.y, x_1557.y);
        u_xlat5 = vec4f(((u_xlat5.xy + x_541)).xy, u_xlat5.zw);
        let x_1567 = (u_xlat20.xz + x_541);
        u_xlat3 = vec4f(u_xlat3.x, x_1567.x, u_xlat3.z, x_1567.y);
        u_xlat7.z = (u_xlat3.y * 0.08163200318813323975f);
        u_xlat8 = vec4f(((u_xlat3.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat8.w);
        u_xlat3 = vec4f(((u_xlat5.xy * vec2f(0.08163200318813323975f))).xy, u_xlat3.zw);
        u_xlat7.x = u_xlat8.y;
        let x_1597 = ((u_xlat36.xx * x_1593) + x_1596);
        u_xlat7 = vec4f(u_xlat7.x, x_1597.x, u_xlat7.z, x_1597.y);
        let x_1604 = ((u_xlat36.xx * x_1593) + x_1603);
        u_xlat5 = vec4f(x_1604.x, u_xlat5.y, x_1604.y, u_xlat5.w);
        u_xlat5.y = u_xlat3.x;
        u_xlat5.w = u_xlat6.y;
        u_xlat7 = (u_xlat5 + u_xlat7);
        let x_1619 = ((u_xlat36.yy * x_1593) + x_1596);
        u_xlat8 = vec4f(u_xlat8.x, x_1619.x, u_xlat8.z, x_1619.y);
        let x_1625 = ((u_xlat36.yy * x_1593) + x_1603);
        u_xlat6 = vec4f(x_1625.x, u_xlat6.y, x_1625.y, u_xlat6.w);
        u_xlat6.y = u_xlat3.y;
        u_xlat3 = (u_xlat6 + u_xlat8);
        u_xlat5 = (u_xlat5 / u_xlat7);
        u_xlat5 = (u_xlat5 + x_1641);
        u_xlat6 = (u_xlat6 / u_xlat3);
        u_xlat6 = (u_xlat6 + x_1641);
        u_xlat5 = (u_xlat5.wxyz * x_895.x_MainLightShadowmapSize.xxxx);
        u_xlat6 = (u_xlat6.xwyz * x_895.x_MainLightShadowmapSize.yyyy);
        let x_1661 = u_xlat5.yzw;
        u_xlat8 = vec4f(x_1661.x, u_xlat8.y, x_1661.yz);
        u_xlat8.y = u_xlat6.x;
        u_xlat9 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat36 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.y = u_xlat8.y;
        u_xlat8.y = u_xlat6.z;
        u_xlat10 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat11 = vec4f((((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat8.wy)).xy, u_xlat11.zw);
        u_xlat5.z = u_xlat8.y;
        u_xlat12 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyxz);
        u_xlat8.y = u_xlat6.w;
        u_xlat13 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat22 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.w = u_xlat8.y;
        u_xlat45 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat5.xw);
        let x_1761 = u_xlat8.xzw;
        u_xlat6 = vec4f(x_1761.x, u_xlat6.y, x_1761.yz);
        u_xlat8 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat6.xyzy);
        u_xlat40 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat6.wy);
        u_xlat6.x = u_xlat5.x;
        u_xlat2 = vec4f((((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat6.xy)).xy, u_xlat2.zw);
        u_xlat14 = (u_xlat3.xxxx * u_xlat7);
        u_xlat15 = (u_xlat3.yyyy * u_xlat7);
        u_xlat16 = (u_xlat3.zzzz * u_xlat7);
        u_xlat3 = (u_xlat3.wwww * u_xlat7);
        let x_1818 = u_xlat9.xy;
        txVec13 = vec3f(x_1818.x, x_1818.y, u_xlat1.z);
        u_xlat52 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1832 = u_xlat9.zw;
        txVec14 = vec3f(x_1832.x, x_1832.y, u_xlat1.z);
        u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat5.x = (u_xlat5.x * u_xlat14.y);
        u_xlat52 = ((u_xlat14.x * u_xlat52) + u_xlat5.x);
        txVec15 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat52 = ((u_xlat14.z * u_xlat36.x) + u_xlat52);
        let x_1881 = u_xlat12.xy;
        txVec16 = vec3f(x_1881.x, x_1881.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat52 = ((u_xlat14.w * u_xlat36.x) + u_xlat52);
        let x_1903 = u_xlat10.xy;
        txVec17 = vec3f(x_1903.x, x_1903.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat52 = ((u_xlat15.x * u_xlat36.x) + u_xlat52);
        let x_1925 = u_xlat10.zw;
        txVec18 = vec3f(x_1925.x, x_1925.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat52 = ((u_xlat15.y * u_xlat36.x) + u_xlat52);
        let x_1947 = u_xlat11.xy;
        txVec19 = vec3f(x_1947.x, x_1947.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat52 = ((u_xlat15.z * u_xlat36.x) + u_xlat52);
        let x_1969 = u_xlat12.zw;
        txVec20 = vec3f(x_1969.x, x_1969.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat52 = ((u_xlat15.w * u_xlat36.x) + u_xlat52);
        let x_1991 = u_xlat13.xy;
        txVec21 = vec3f(x_1991.x, x_1991.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat52 = ((u_xlat16.x * u_xlat36.x) + u_xlat52);
        let x_2013 = u_xlat13.zw;
        txVec22 = vec3f(x_2013.x, x_2013.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat52 = ((u_xlat16.y * u_xlat36.x) + u_xlat52);
        txVec23 = vec3f(u_xlat22.x, u_xlat22.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat52 = ((u_xlat16.z * u_xlat36.x) + u_xlat52);
        txVec24 = vec3f(u_xlat45.x, u_xlat45.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat52 = ((u_xlat16.w * u_xlat36.x) + u_xlat52);
        let x_2077 = u_xlat8.xy;
        txVec25 = vec3f(x_2077.x, x_2077.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat52 = ((u_xlat3.x * u_xlat36.x) + u_xlat52);
        let x_2099 = u_xlat8.zw;
        txVec26 = vec3f(x_2099.x, x_2099.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat52 = ((u_xlat3.y * u_xlat36.x) + u_xlat52);
        txVec27 = vec3f(u_xlat40.x, u_xlat40.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat52 = ((u_xlat3.z * u_xlat36.x) + u_xlat52);
        let x_2142 = u_xlat2.xy;
        txVec28 = vec3f(x_2142.x, x_2142.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat51 = ((u_xlat3.w * u_xlat2.x) + u_xlat52);
      }
    }
  } else {
    let x_2165 = u_xlat1.xy;
    txVec29 = vec3f(x_2165.x, x_2165.y, u_xlat1.z);
    u_xlat51 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat1.x = (-(x_895.x_MainLightShadowParams.x) + 1.0f);
  u_xlat51 = ((u_xlat51 * x_895.x_MainLightShadowParams.x) + u_xlat1.x);
  u_xlatb1 = (0.0f >= u_xlat1.z);
  u_xlatb18 = (u_xlat1.z >= 1.0f);
  u_xlatb1 = (u_xlatb18 | u_xlatb1);
  u_xlat51 = select(u_xlat51, 1.0f, u_xlatb1);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_229.x_WorldSpaceCameraPos))).xyz, u_xlat1.w);
  u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat1.x = ((u_xlat1.x * x_895.x_MainLightShadowParams.z) + x_895.x_MainLightShadowParams.w);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18.x = (-(u_xlat51) + 1.0f);
  u_xlat51 = ((u_xlat1.x * u_xlat18.x) + u_xlat51);
  u_xlat1.x = dot(u_xlat4.xyz, x_229.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18 = (vec3f(u_xlat51) * x_229.x_MainLightColor.xyz);
  u_xlat4.w = 1.0f;
  u_xlat2.x = dot(x_2267.unity_SHAr, u_xlat4);
  u_xlat2.y = dot(x_2267.unity_SHAg, u_xlat4);
  u_xlat2.z = dot(x_2267.unity_SHAb, u_xlat4);
  u_xlat3 = (u_xlat4.yzzx * u_xlat4.xyzz);
  u_xlat5.x = dot(x_2267.unity_SHBr, u_xlat3);
  u_xlat5.y = dot(x_2267.unity_SHBg, u_xlat3);
  u_xlat5.z = dot(x_2267.unity_SHBb, u_xlat3);
  u_xlat51 = (u_xlat4.y * u_xlat4.y);
  u_xlat51 = ((u_xlat4.x * u_xlat4.x) + -(u_xlat51));
  u_xlat3 = vec4f((((x_2267.unity_SHC.xyz * vec3f(u_xlat51)) + u_xlat5.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + u_xlat3.xyz)).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((u_xlat18 * u_xlat1.xxx) + u_xlat2.xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1.xyz)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat0.xyz * x_70.x_WaterTint.xyz)).xyz, SV_Target0.w);
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(4) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD2 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_74.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0.xyz;
  u_xlat0 = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.x = (u_xlat0.z / x_74.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_74.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  vs_TEXCOORD2 = (u_xlat0.x * x_74.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0.xyz);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD2_1 : f32,
  @location(2)
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
  /* @offset(80) */
  unity_FogColor : vec4f,
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

var<private> vs_TEXCOORD2 : f32;

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
  u_xlat0 = vec4f((((u_xlat0.xyz * x_142.x_WaterTint.xyz) + -(x_250.unity_FogColor.xyz))).xyz, u_xlat0.w);
  u_xlat15 = exp2(-(vs_TEXCOORD2));
  u_xlat15 = min(u_xlat15, 1.0f);
  SV_Target0 = vec4f((((vec3f(u_xlat15) * u_xlat0.xyz) + x_250.unity_FogColor.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD1_param : vec3f, @location(1) vs_TEXCOORD2_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(4) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD2 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_74.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0.xyz;
  u_xlat0 = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.x = (u_xlat0.z / x_74.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_74.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  vs_TEXCOORD2 = (u_xlat0.x * x_74.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0.xyz);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD2_1 : f32,
  @location(2)
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
  /* @offset(80) */
  unity_FogColor : vec4f,
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

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(2) var<uniform> x_70 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_229 : PGlobals;

@group(0) @binding(1) var x_SandTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SandTex : sampler;

@group(0) @binding(2) var x_SandNormal : texture_2d<f32>;

@group(0) @binding(5) var sampler_SandNormal : sampler;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(3) var<uniform> x_895 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_2267 : UnityPerDraw;

var<private> vs_TEXCOORD2 : f32;

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

const x_399 = vec2f(0.5f);

const x_541 = vec2f(2.0f);

const x_1057 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1081 = vec2f(1.0f);

const x_1118 = vec2f(0.15999999642372131348f);

const x_1188 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1593 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1596 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1603 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1641 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat34 : f32;
  var u_xlat51 : f32;
  var u_xlat1 : vec4f;
  var u_xlatu1 : vec2u;
  var u_xlati18 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlati1 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var indexable : array<vec4u, 16u>;
  var u_xlatb51 : bool;
  var u_xlat18 : vec3f;
  var u_xlat52 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat36 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat17 : f32;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb52 : bool;
  var u_xlat39 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat19 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat20 : vec3f;
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
  var txVec15 : vec3f;
  var txVec16 : vec3f;
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
  var u_xlatb1 : bool;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_51 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_51.x, x_51.y, x_51.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec4f(((vs_TEXCOORD0.xz + -(x_70.x_Vent.xz))).xy, u_xlat0.zw);
  u_xlat34 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat34 = sqrt(u_xlat34);
  u_xlat51 = (x_70.x_ConeRadius + 0.12999999523162841797f);
  u_xlat51 = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat51);
  u_xlat1.x = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat34);
  u_xlat51 = (1.0f / u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((-(u_xlat1.x) * u_xlat51) + 1.0f);
  u_xlatu1 = vec2u(hlslcc_FragCoord.xy);
  let x_146 = u_xlatu1.y;
  param = 0i;
  param_1 = bitcast<i32>(x_146);
  param_2 = 2i;
  param_3 = 2i;
  let x_153 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati18 = x_153;
  let x_156 = u_xlatu1.x;
  param_4 = u_xlati18;
  param_5 = bitcast<i32>(x_156);
  param_6 = 0i;
  param_7 = 2i;
  let x_163 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
  u_xlati1 = x_163;
  let x_200 = u_xlati1;
  indexable = array<vec4u, 16u>(vec4u(), vec4u(1090519040u, 0u, 0u, 0u), vec4u(1073741824u, 0u, 0u, 0u), vec4u(1092616192u, 0u, 0u, 0u), vec4u(1094713344u, 0u, 0u, 0u), vec4u(1082130432u, 0u, 0u, 0u), vec4u(1096810496u, 0u, 0u, 0u), vec4u(1086324736u, 0u, 0u, 0u), vec4u(1077936128u, 0u, 0u, 0u), vec4u(1093664768u, 0u, 0u, 0u), vec4u(1065353216u, 0u, 0u, 0u), vec4u(1091567616u, 0u, 0u, 0u), vec4u(1097859072u, 0u, 0u, 0u), vec4u(1088421888u, 0u, 0u, 0u), vec4u(1095761920u, 0u, 0u, 0u), vec4u(1084227584u, 0u, 0u, 0u));
  u_xlat1.x = (0.5f + bitcast<f32>(indexable[x_200].x));
  u_xlat51 = ((-(u_xlat1.x) * 0.0625f) + u_xlat51);
  u_xlatb51 = (u_xlat51 < 0.0f);
  if (((select(0i, 1i, u_xlatb51) * -1i) != 0i)) {
    discard;
  }
  u_xlat51 = (x_229.x_Time.y * x_70.x_ChurnSpeed);
  u_xlat1.x = (x_70.x_Vent.w * 0.80000001192092895508f);
  u_xlat18 = vec3f((((-(x_70.x_Vent.ww) * vec2f(0.60000002384185791016f, 0.30000001192092895508f)) + vec2f(u_xlat34))).xy, u_xlat18.z);
  u_xlat52 = (1.0f / x_70.x_Vent.w);
  u_xlat18.x = (u_xlat52 * u_xlat18.x);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat52 = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat18.x = ((-(u_xlat52) * u_xlat18.x) + 1.0f);
  u_xlat2 = vec4f(((vs_TEXCOORD0.xz / vec2f(x_70.x_Tile))).xy, u_xlat2.zw);
  u_xlat3 = (vec4f(u_xlat51) * vec4f(1.70000004768371582031f, 2.29999995231628417969f, 1.89999997615814208984f, 1.10000002384185791016f));
  u_xlat36 = ((u_xlat2.yy * vec2f(9.1000003814697265625f, 6.09999990463256835938f)) + u_xlat3.xw);
  u_xlat36 = sin(u_xlat36);
  u_xlat3 = vec4f((((u_xlat2.xx * vec2f(5.30000019073486328125f, 8.30000019073486328125f)) + -(u_xlat3.yz))).xy, u_xlat3.zw);
  u_xlat52 = sin(u_xlat3.x);
  u_xlat4.x = (u_xlat52 + u_xlat36.x);
  u_xlat52 = cos(u_xlat3.y);
  u_xlat4.y = (u_xlat36.y + u_xlat52);
  u_xlat52 = (u_xlat2.y + u_xlat2.x);
  u_xlat36 = (vec2f(u_xlat51) * vec2f(3.09999990463256835938f, 2.70000004768371582031f));
  u_xlat51 = ((u_xlat52 * 13.0f) + u_xlat36.x);
  u_xlat3.x = sin(u_xlat51);
  u_xlat51 = (-(u_xlat2.y) + u_xlat2.x);
  u_xlat51 = ((u_xlat51 * 11.0f) + -(u_xlat36.y));
  u_xlat3.y = cos(u_xlat51);
  u_xlat51 = max(u_xlat34, 0.00100000004749745131f);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(u_xlat51))).xy, u_xlat0.zw);
  u_xlat36 = (u_xlat3.xy * vec2f(0.34999999403953552246f));
  u_xlat36 = ((u_xlat4.xy * x_399) + u_xlat36);
  u_xlat36 = (u_xlat36 * vec2f(x_70.x_Churn));
  u_xlat36 = (u_xlat18.xx * u_xlat36);
  u_xlat36 = (u_xlat36 / vec2f(x_70.x_Tile));
  u_xlat2 = vec4f(((u_xlat36 + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec4f(((x_229.x_Time.yyy * vec3f(0.07000000029802322388f, 5.02650022506713867188f, 1.29999995231628417969f))).xyz, u_xlat3.w);
  u_xlat51 = fract(u_xlat3.x);
  u_xlat0 = vec4f(((vec2f(u_xlat51) * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy * vec2f(0.03999999910593032837f))).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(x_70.x_Tile))).xy, u_xlat0.zw);
  u_xlat51 = (-(u_xlat18.x) + 1.0f);
  u_xlat0 = vec4f((((-(u_xlat0.xy) * vec2f(u_xlat51)) + u_xlat2.xy)).xy, u_xlat0.zw);
  let x_484 = u_xlat0;
  let x_487 = x_229.x_GlobalMipBias.x;
  let x_488 = textureSampleBias(x_SandTex, sampler_SandTex, x_484.xy, x_487);
  u_xlat2 = vec4f(x_488.xyz.xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * x_70.x_Tint.xyz)).xyz, u_xlat2.w);
  let x_505 = u_xlat0;
  let x_508 = x_229.x_GlobalMipBias.x;
  let x_509 = textureSampleBias(x_SandNormal, sampler_SandNormal, x_505.xy, x_508);
  let x_510 = x_509.xyw;
  u_xlat0 = vec4f(x_510.xy, u_xlat0.z, x_510.z);
  u_xlat18.z = ((-(u_xlat18.x) * 0.60000002384185791016f) + 1.0f);
  let x_529 = (u_xlat18.xz * vec2f(x_70.x_Lifted, x_70.x_NormalStrength));
  u_xlat18 = vec3f(x_529.x, u_xlat18.y, x_529.y);
  u_xlat0.x = (u_xlat0.x * u_xlat0.w);
  u_xlat0 = vec4f((((u_xlat0.xy * x_541) + vec2f(-1.0f))).xy, u_xlat0.zw);
  u_xlat51 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat51 = min(u_xlat51, 1.0f);
  u_xlat51 = (-(u_xlat51) + 1.0f);
  u_xlat51 = sqrt(u_xlat51);
  u_xlat51 = max(u_xlat51, 0.0000000000000001f);
  u_xlat0 = vec4f(((u_xlat18.zz * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat52 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((vec3f(u_xlat52) * vs_TEXCOORD1)).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((u_xlat4.zxy * vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat4.yzx * vec3f(1.0f, 0.0f, 0.0f)) + -(u_xlat5.xyz))).xyz, u_xlat5.w);
  u_xlat52 = dot(u_xlat5.xy, u_xlat5.xy);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat5 = vec4f(((vec3f(u_xlat52) * u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat5.yzx * u_xlat4.zxy) + -(u_xlat6.xyz))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat0.yyy * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat0.xxx) + u_xlat6.xyz)).xyz, u_xlat5.w);
  let x_656 = ((u_xlat4.xyz * vec3f(u_xlat51)) + u_xlat5.xyz);
  u_xlat0 = vec4f(x_656.xy, u_xlat0.z, x_656.z);
  u_xlat52 = dot(u_xlat0.xyw, u_xlat0.xyw);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((u_xlat0.xyw * vec3f(u_xlat52))).xyz, u_xlat4.w);
  u_xlat0.x = (1.0f / u_xlat1.x);
  u_xlat0.x = (u_xlat0.x * u_xlat18.y);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat17 = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat17) * u_xlat0.x) + 1.0f);
  u_xlat17 = sin(u_xlat3.z);
  u_xlat17 = ((u_xlat17 * 1.70000004768371582031f) + u_xlat3.y);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = ((u_xlat17 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat51 = ((-(u_xlat17) * 0.25f) + 1.0f);
  u_xlat51 = (u_xlat51 * u_xlat0.x);
  u_xlat51 = ((u_xlat51 * -(x_70.x_ThroatDark)) + 1.0f);
  let x_739 = (vec3f(u_xlat51) * u_xlat2.xyz);
  u_xlat1 = vec4f(x_739.x, u_xlat1.y, x_739.yz);
  u_xlat17 = (u_xlat17 * u_xlat18.x);
  u_xlat0.x = ((-(u_xlat0.x) * 0.5f) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat17);
  u_xlat2 = vec4f((((-(u_xlat2.xyz) * vec3f(u_xlat51)) + vec3f(0.93000000715255737305f, 0.91000002622604370117f, 0.85000002384185791016f))).xyz, u_xlat2.w);
  let x_777 = ((u_xlat0.xxx * u_xlat2.xyz) + u_xlat1.xzw);
  u_xlat0 = vec4f(x_777.xy, u_xlat0.z, x_777.z);
  u_xlat1.x = max(x_70.x_ConeRadius, 0.05000000074505805969f);
  u_xlat1.x = (u_xlat34 / u_xlat1.x);
  u_xlat18.x = (x_70.x_ConeRadius + -(x_70.x_Vent.w));
  u_xlat34 = (u_xlat34 + -(x_70.x_Vent.w));
  u_xlat18.x = (1.0f / u_xlat18.x);
  u_xlat34 = (u_xlat34 * u_xlat18.x);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat18.x = ((u_xlat34 * -2.0f) + 3.0f);
  u_xlat34 = (u_xlat34 * u_xlat34);
  u_xlat34 = ((-(u_xlat18.x) * u_xlat34) + 1.0f);
  u_xlat34 = ((u_xlat34 * 0.07999999821186065674f) + 1.0f);
  u_xlat0 = vec4f(((vec3f(u_xlat34) * u_xlat0.xyw)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat1.xx + vec2f(-0.63999998569488525391f, -0.40000000596046447754f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(10.0f, 8.3333339691162109375f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(-1.44269502162933349609f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(exp2(u_xlat1.xy).xy, u_xlat1.zw);
  u_xlat51 = ((u_xlat1.x * 0.28000000119209289551f) + 1.0f);
  u_xlat51 = ((-(u_xlat1.y) * 0.25f) + u_xlat51);
  u_xlat0 = vec4f(((vec3f(u_xlat51) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((vs_TEXCOORD0.yyy * x_895.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_895.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_895.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_895.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat1.w);
  u_xlatb51 = (0.0f < x_895.x_MainLightShadowParams.y);
  if (u_xlatb51) {
    u_xlatb51 = (x_895.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb51) {
      u_xlat2 = (u_xlat1.xyxy + x_895.x_MainLightShadowOffset0);
      let x_952 = u_xlat2.xy;
      txVec0 = vec3f(x_952.x, x_952.y, u_xlat1.z);
      u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_972 = u_xlat2.zw;
      txVec1 = vec3f(x_972.x, x_972.y, u_xlat1.z);
      u_xlat3.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat2 = (u_xlat1.xyxy + x_895.x_MainLightShadowOffset1);
      let x_992 = u_xlat2.xy;
      txVec2 = vec3f(x_992.x, x_992.y, u_xlat1.z);
      u_xlat3.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1007 = u_xlat2.zw;
      txVec3 = vec3f(x_1007.x, x_1007.y, u_xlat1.z);
      u_xlat3.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat51 = dot(u_xlat3, vec4f(0.25f));
    } else {
      u_xlatb52 = (x_895.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb52) {
        u_xlat2 = vec4f((((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1057);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1067 = (u_xlat5.yw * vec2f(0.07999999821186065674f));
        u_xlat3 = vec4f(x_1067.x, u_xlat3.y, x_1067.y, u_xlat3.w);
        u_xlat5 = vec4f((((u_xlat5.xz * x_399) + -(u_xlat36))).xy, u_xlat5.zw);
        u_xlat39 = (-(u_xlat36) + x_1081);
        u_xlat6 = vec4f(min(u_xlat36, vec2f()).xy, u_xlat6.zw);
        u_xlat6 = vec4f((((-(u_xlat6.xy) * u_xlat6.xy) + u_xlat39)).xy, u_xlat6.zw);
        u_xlat36 = max(u_xlat36, vec2f());
        u_xlat36 = ((-(u_xlat36) * u_xlat36) + u_xlat3.yw);
        u_xlat6 = vec4f(((u_xlat6.xy + x_1081)).xy, u_xlat6.zw);
        u_xlat36 = (u_xlat36 + x_1081);
        u_xlat7 = vec4f(((u_xlat5.xy * x_1118)).xy, u_xlat7.zw);
        u_xlat5 = vec4f(((u_xlat39 * x_1118)).xy, u_xlat5.zw);
        u_xlat6 = vec4f(((u_xlat6.xy * x_1118)).xy, u_xlat6.zw);
        u_xlat8 = vec4f(((u_xlat36 * x_1118)).xy, u_xlat8.zw);
        u_xlat36 = (u_xlat3.yw * x_1118);
        u_xlat7.z = u_xlat6.x;
        u_xlat7.w = u_xlat36.x;
        u_xlat5.z = u_xlat8.x;
        u_xlat5.w = u_xlat3.x;
        u_xlat9 = (u_xlat5.zwxz + u_xlat7.zwxz);
        u_xlat6.z = u_xlat7.y;
        u_xlat6.w = u_xlat36.y;
        u_xlat8.z = u_xlat5.y;
        u_xlat8.w = u_xlat3.z;
        u_xlat3 = vec4f(((u_xlat6.zyw + u_xlat8.zyw)).xyz, u_xlat3.w);
        u_xlat5 = vec4f(((u_xlat5.xzw / u_xlat9.zwy)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat5.xyz + x_1188)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat8.zyw / u_xlat3.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f(((u_xlat6.xyz + x_1188)).xyz, u_xlat6.w);
        u_xlat5 = vec4f(((u_xlat5.yxz * x_895.x_MainLightShadowmapSize.xxx)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_895.x_MainLightShadowmapSize.yyy)).xyz, u_xlat6.w);
        u_xlat5.w = u_xlat6.x;
        u_xlat7 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.ywxw);
        u_xlat36 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat5.zw);
        u_xlat6.w = u_xlat5.y;
        let x_1245 = u_xlat6.yz;
        u_xlat5 = vec4f(u_xlat5.x, x_1245.x, u_xlat5.z, x_1245.y);
        u_xlat8 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyzy);
        u_xlat6 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat6.wywz);
        u_xlat5 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.xwzw);
        u_xlat10 = (u_xlat3.xxxy * u_xlat9.zwyz);
        u_xlat11 = (u_xlat3.yyzz * u_xlat9);
        u_xlat52 = (u_xlat3.z * u_xlat9.y);
        let x_1293 = u_xlat7.xy;
        txVec4 = vec3f(x_1293.x, x_1293.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1308 = u_xlat7.zw;
        txVec5 = vec3f(x_1308.x, x_1308.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat19 = (u_xlat19 * u_xlat10.y);
        u_xlat2.x = ((u_xlat10.x * u_xlat2.x) + u_xlat19);
        txVec6 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat2.x = ((u_xlat10.z * u_xlat19) + u_xlat2.x);
        let x_1356 = u_xlat6.xy;
        txVec7 = vec3f(x_1356.x, x_1356.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat2.x = ((u_xlat10.w * u_xlat19) + u_xlat2.x);
        let x_1378 = u_xlat8.xy;
        txVec8 = vec3f(x_1378.x, x_1378.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat2.x = ((u_xlat11.x * u_xlat19) + u_xlat2.x);
        let x_1400 = u_xlat8.zw;
        txVec9 = vec3f(x_1400.x, x_1400.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat2.x = ((u_xlat11.y * u_xlat19) + u_xlat2.x);
        let x_1422 = u_xlat6.zw;
        txVec10 = vec3f(x_1422.x, x_1422.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat2.x = ((u_xlat11.z * u_xlat19) + u_xlat2.x);
        let x_1444 = u_xlat5.xy;
        txVec11 = vec3f(x_1444.x, x_1444.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat2.x = ((u_xlat11.w * u_xlat19) + u_xlat2.x);
        let x_1466 = u_xlat5.zw;
        txVec12 = vec3f(x_1466.x, x_1466.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat51 = ((u_xlat52 * u_xlat19) + u_xlat2.x);
      } else {
        u_xlat2 = vec4f((((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1057);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1521 = (u_xlat5.yw * vec2f(0.04081600159406661987f));
        u_xlat6 = vec4f(u_xlat6.x, x_1521.x, u_xlat6.z, x_1521.y);
        let x_1529 = ((u_xlat5.xz * x_399) + -(u_xlat36));
        u_xlat3 = vec4f(x_1529.x, u_xlat3.y, x_1529.y, u_xlat3.w);
        u_xlat5 = vec4f(((-(u_xlat36) + x_1081)).xy, u_xlat5.zw);
        u_xlat39 = min(u_xlat36, vec2f());
        u_xlat5 = vec4f((((-(u_xlat39) * u_xlat39) + u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat39 = max(u_xlat36, vec2f());
        let x_1557 = ((-(u_xlat39) * u_xlat39) + u_xlat3.yw);
        u_xlat20 = vec3f(x_1557.x, u_xlat20.y, x_1557.y);
        u_xlat5 = vec4f(((u_xlat5.xy + x_541)).xy, u_xlat5.zw);
        let x_1567 = (u_xlat20.xz + x_541);
        u_xlat3 = vec4f(u_xlat3.x, x_1567.x, u_xlat3.z, x_1567.y);
        u_xlat7.z = (u_xlat3.y * 0.08163200318813323975f);
        u_xlat8 = vec4f(((u_xlat3.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat8.w);
        u_xlat3 = vec4f(((u_xlat5.xy * vec2f(0.08163200318813323975f))).xy, u_xlat3.zw);
        u_xlat7.x = u_xlat8.y;
        let x_1597 = ((u_xlat36.xx * x_1593) + x_1596);
        u_xlat7 = vec4f(u_xlat7.x, x_1597.x, u_xlat7.z, x_1597.y);
        let x_1604 = ((u_xlat36.xx * x_1593) + x_1603);
        u_xlat5 = vec4f(x_1604.x, u_xlat5.y, x_1604.y, u_xlat5.w);
        u_xlat5.y = u_xlat3.x;
        u_xlat5.w = u_xlat6.y;
        u_xlat7 = (u_xlat5 + u_xlat7);
        let x_1619 = ((u_xlat36.yy * x_1593) + x_1596);
        u_xlat8 = vec4f(u_xlat8.x, x_1619.x, u_xlat8.z, x_1619.y);
        let x_1625 = ((u_xlat36.yy * x_1593) + x_1603);
        u_xlat6 = vec4f(x_1625.x, u_xlat6.y, x_1625.y, u_xlat6.w);
        u_xlat6.y = u_xlat3.y;
        u_xlat3 = (u_xlat6 + u_xlat8);
        u_xlat5 = (u_xlat5 / u_xlat7);
        u_xlat5 = (u_xlat5 + x_1641);
        u_xlat6 = (u_xlat6 / u_xlat3);
        u_xlat6 = (u_xlat6 + x_1641);
        u_xlat5 = (u_xlat5.wxyz * x_895.x_MainLightShadowmapSize.xxxx);
        u_xlat6 = (u_xlat6.xwyz * x_895.x_MainLightShadowmapSize.yyyy);
        let x_1661 = u_xlat5.yzw;
        u_xlat8 = vec4f(x_1661.x, u_xlat8.y, x_1661.yz);
        u_xlat8.y = u_xlat6.x;
        u_xlat9 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat36 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.y = u_xlat8.y;
        u_xlat8.y = u_xlat6.z;
        u_xlat10 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat11 = vec4f((((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat8.wy)).xy, u_xlat11.zw);
        u_xlat5.z = u_xlat8.y;
        u_xlat12 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyxz);
        u_xlat8.y = u_xlat6.w;
        u_xlat13 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat22 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.w = u_xlat8.y;
        u_xlat45 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat5.xw);
        let x_1761 = u_xlat8.xzw;
        u_xlat6 = vec4f(x_1761.x, u_xlat6.y, x_1761.yz);
        u_xlat8 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat6.xyzy);
        u_xlat40 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat6.wy);
        u_xlat6.x = u_xlat5.x;
        u_xlat2 = vec4f((((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat6.xy)).xy, u_xlat2.zw);
        u_xlat14 = (u_xlat3.xxxx * u_xlat7);
        u_xlat15 = (u_xlat3.yyyy * u_xlat7);
        u_xlat16 = (u_xlat3.zzzz * u_xlat7);
        u_xlat3 = (u_xlat3.wwww * u_xlat7);
        let x_1818 = u_xlat9.xy;
        txVec13 = vec3f(x_1818.x, x_1818.y, u_xlat1.z);
        u_xlat52 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1832 = u_xlat9.zw;
        txVec14 = vec3f(x_1832.x, x_1832.y, u_xlat1.z);
        u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat5.x = (u_xlat5.x * u_xlat14.y);
        u_xlat52 = ((u_xlat14.x * u_xlat52) + u_xlat5.x);
        txVec15 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat52 = ((u_xlat14.z * u_xlat36.x) + u_xlat52);
        let x_1881 = u_xlat12.xy;
        txVec16 = vec3f(x_1881.x, x_1881.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat52 = ((u_xlat14.w * u_xlat36.x) + u_xlat52);
        let x_1903 = u_xlat10.xy;
        txVec17 = vec3f(x_1903.x, x_1903.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat52 = ((u_xlat15.x * u_xlat36.x) + u_xlat52);
        let x_1925 = u_xlat10.zw;
        txVec18 = vec3f(x_1925.x, x_1925.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat52 = ((u_xlat15.y * u_xlat36.x) + u_xlat52);
        let x_1947 = u_xlat11.xy;
        txVec19 = vec3f(x_1947.x, x_1947.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat52 = ((u_xlat15.z * u_xlat36.x) + u_xlat52);
        let x_1969 = u_xlat12.zw;
        txVec20 = vec3f(x_1969.x, x_1969.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat52 = ((u_xlat15.w * u_xlat36.x) + u_xlat52);
        let x_1991 = u_xlat13.xy;
        txVec21 = vec3f(x_1991.x, x_1991.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat52 = ((u_xlat16.x * u_xlat36.x) + u_xlat52);
        let x_2013 = u_xlat13.zw;
        txVec22 = vec3f(x_2013.x, x_2013.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat52 = ((u_xlat16.y * u_xlat36.x) + u_xlat52);
        txVec23 = vec3f(u_xlat22.x, u_xlat22.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat52 = ((u_xlat16.z * u_xlat36.x) + u_xlat52);
        txVec24 = vec3f(u_xlat45.x, u_xlat45.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat52 = ((u_xlat16.w * u_xlat36.x) + u_xlat52);
        let x_2077 = u_xlat8.xy;
        txVec25 = vec3f(x_2077.x, x_2077.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat52 = ((u_xlat3.x * u_xlat36.x) + u_xlat52);
        let x_2099 = u_xlat8.zw;
        txVec26 = vec3f(x_2099.x, x_2099.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat52 = ((u_xlat3.y * u_xlat36.x) + u_xlat52);
        txVec27 = vec3f(u_xlat40.x, u_xlat40.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat52 = ((u_xlat3.z * u_xlat36.x) + u_xlat52);
        let x_2142 = u_xlat2.xy;
        txVec28 = vec3f(x_2142.x, x_2142.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat51 = ((u_xlat3.w * u_xlat2.x) + u_xlat52);
      }
    }
  } else {
    let x_2165 = u_xlat1.xy;
    txVec29 = vec3f(x_2165.x, x_2165.y, u_xlat1.z);
    u_xlat51 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat1.x = (-(x_895.x_MainLightShadowParams.x) + 1.0f);
  u_xlat51 = ((u_xlat51 * x_895.x_MainLightShadowParams.x) + u_xlat1.x);
  u_xlatb1 = (0.0f >= u_xlat1.z);
  u_xlatb18 = (u_xlat1.z >= 1.0f);
  u_xlatb1 = (u_xlatb18 | u_xlatb1);
  u_xlat51 = select(u_xlat51, 1.0f, u_xlatb1);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_229.x_WorldSpaceCameraPos))).xyz, u_xlat1.w);
  u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat1.x = ((u_xlat1.x * x_895.x_MainLightShadowParams.z) + x_895.x_MainLightShadowParams.w);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18.x = (-(u_xlat51) + 1.0f);
  u_xlat51 = ((u_xlat1.x * u_xlat18.x) + u_xlat51);
  u_xlat1.x = dot(u_xlat4.xyz, x_229.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18 = (vec3f(u_xlat51) * x_229.x_MainLightColor.xyz);
  u_xlat4.w = 1.0f;
  u_xlat2.x = dot(x_2267.unity_SHAr, u_xlat4);
  u_xlat2.y = dot(x_2267.unity_SHAg, u_xlat4);
  u_xlat2.z = dot(x_2267.unity_SHAb, u_xlat4);
  u_xlat3 = (u_xlat4.yzzx * u_xlat4.xyzz);
  u_xlat5.x = dot(x_2267.unity_SHBr, u_xlat3);
  u_xlat5.y = dot(x_2267.unity_SHBg, u_xlat3);
  u_xlat5.z = dot(x_2267.unity_SHBb, u_xlat3);
  u_xlat51 = (u_xlat4.y * u_xlat4.y);
  u_xlat51 = ((u_xlat4.x * u_xlat4.x) + -(u_xlat51));
  u_xlat3 = vec4f((((x_2267.unity_SHC.xyz * vec3f(u_xlat51)) + u_xlat5.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + u_xlat3.xyz)).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((u_xlat18 * u_xlat1.xxx) + u_xlat2.xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1.xyz)).xyz, u_xlat0.w);
  u_xlat51 = exp2(-(vs_TEXCOORD2));
  u_xlat51 = min(u_xlat51, 1.0f);
  u_xlat0 = vec4f((((u_xlat0.xyz * x_70.x_WaterTint.xyz) + -(x_229.unity_FogColor.xyz))).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((vec3f(u_xlat51) * u_xlat0.xyz) + x_229.unity_FogColor.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD1_param : vec3f, @location(1) vs_TEXCOORD2_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(4) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD2 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_74.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0.xyz;
  u_xlat0 = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.x = (u_xlat0.z / x_74.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_74.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  vs_TEXCOORD2 = (u_xlat0.x * x_74.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0.xyz);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD2_1 : f32,
  @location(2)
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
  /* @offset(80) */
  unity_FogColor : vec4f,
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

var<private> vs_TEXCOORD2 : f32;

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
  u_xlat0 = vec4f((((u_xlat0.xyz * x_142.x_WaterTint.xyz) + -(x_250.unity_FogColor.xyz))).xyz, u_xlat0.w);
  u_xlat15 = (vs_TEXCOORD2 * -(vs_TEXCOORD2));
  u_xlat15 = exp2(u_xlat15);
  SV_Target0 = vec4f((((vec3f(u_xlat15) * u_xlat0.xyz) + x_250.unity_FogColor.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD1_param : vec3f, @location(1) vs_TEXCOORD2_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(4) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD2 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_74.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0.xyz;
  u_xlat0 = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.x = (u_xlat0.z / x_74.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_74.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  vs_TEXCOORD2 = (u_xlat0.x * x_74.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0.xyz);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD2_1 : f32,
  @location(2)
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
  /* @offset(80) */
  unity_FogColor : vec4f,
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

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(2) var<uniform> x_70 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_229 : PGlobals;

@group(0) @binding(1) var x_SandTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SandTex : sampler;

@group(0) @binding(2) var x_SandNormal : texture_2d<f32>;

@group(0) @binding(5) var sampler_SandNormal : sampler;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(3) var<uniform> x_895 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_2267 : UnityPerDraw;

var<private> vs_TEXCOORD2 : f32;

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

const x_399 = vec2f(0.5f);

const x_541 = vec2f(2.0f);

const x_1057 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1081 = vec2f(1.0f);

const x_1118 = vec2f(0.15999999642372131348f);

const x_1188 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1593 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1596 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1603 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1641 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat34 : f32;
  var u_xlat51 : f32;
  var u_xlat1 : vec4f;
  var u_xlatu1 : vec2u;
  var u_xlati18 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlati1 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var indexable : array<vec4u, 16u>;
  var u_xlatb51 : bool;
  var u_xlat18 : vec3f;
  var u_xlat52 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat36 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat17 : f32;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb52 : bool;
  var u_xlat39 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat19 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat20 : vec3f;
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
  var txVec15 : vec3f;
  var txVec16 : vec3f;
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
  var u_xlatb1 : bool;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_51 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_51.x, x_51.y, x_51.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec4f(((vs_TEXCOORD0.xz + -(x_70.x_Vent.xz))).xy, u_xlat0.zw);
  u_xlat34 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat34 = sqrt(u_xlat34);
  u_xlat51 = (x_70.x_ConeRadius + 0.12999999523162841797f);
  u_xlat51 = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat51);
  u_xlat1.x = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat34);
  u_xlat51 = (1.0f / u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((-(u_xlat1.x) * u_xlat51) + 1.0f);
  u_xlatu1 = vec2u(hlslcc_FragCoord.xy);
  let x_146 = u_xlatu1.y;
  param = 0i;
  param_1 = bitcast<i32>(x_146);
  param_2 = 2i;
  param_3 = 2i;
  let x_153 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati18 = x_153;
  let x_156 = u_xlatu1.x;
  param_4 = u_xlati18;
  param_5 = bitcast<i32>(x_156);
  param_6 = 0i;
  param_7 = 2i;
  let x_163 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
  u_xlati1 = x_163;
  let x_200 = u_xlati1;
  indexable = array<vec4u, 16u>(vec4u(), vec4u(1090519040u, 0u, 0u, 0u), vec4u(1073741824u, 0u, 0u, 0u), vec4u(1092616192u, 0u, 0u, 0u), vec4u(1094713344u, 0u, 0u, 0u), vec4u(1082130432u, 0u, 0u, 0u), vec4u(1096810496u, 0u, 0u, 0u), vec4u(1086324736u, 0u, 0u, 0u), vec4u(1077936128u, 0u, 0u, 0u), vec4u(1093664768u, 0u, 0u, 0u), vec4u(1065353216u, 0u, 0u, 0u), vec4u(1091567616u, 0u, 0u, 0u), vec4u(1097859072u, 0u, 0u, 0u), vec4u(1088421888u, 0u, 0u, 0u), vec4u(1095761920u, 0u, 0u, 0u), vec4u(1084227584u, 0u, 0u, 0u));
  u_xlat1.x = (0.5f + bitcast<f32>(indexable[x_200].x));
  u_xlat51 = ((-(u_xlat1.x) * 0.0625f) + u_xlat51);
  u_xlatb51 = (u_xlat51 < 0.0f);
  if (((select(0i, 1i, u_xlatb51) * -1i) != 0i)) {
    discard;
  }
  u_xlat51 = (x_229.x_Time.y * x_70.x_ChurnSpeed);
  u_xlat1.x = (x_70.x_Vent.w * 0.80000001192092895508f);
  u_xlat18 = vec3f((((-(x_70.x_Vent.ww) * vec2f(0.60000002384185791016f, 0.30000001192092895508f)) + vec2f(u_xlat34))).xy, u_xlat18.z);
  u_xlat52 = (1.0f / x_70.x_Vent.w);
  u_xlat18.x = (u_xlat52 * u_xlat18.x);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat52 = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat18.x = ((-(u_xlat52) * u_xlat18.x) + 1.0f);
  u_xlat2 = vec4f(((vs_TEXCOORD0.xz / vec2f(x_70.x_Tile))).xy, u_xlat2.zw);
  u_xlat3 = (vec4f(u_xlat51) * vec4f(1.70000004768371582031f, 2.29999995231628417969f, 1.89999997615814208984f, 1.10000002384185791016f));
  u_xlat36 = ((u_xlat2.yy * vec2f(9.1000003814697265625f, 6.09999990463256835938f)) + u_xlat3.xw);
  u_xlat36 = sin(u_xlat36);
  u_xlat3 = vec4f((((u_xlat2.xx * vec2f(5.30000019073486328125f, 8.30000019073486328125f)) + -(u_xlat3.yz))).xy, u_xlat3.zw);
  u_xlat52 = sin(u_xlat3.x);
  u_xlat4.x = (u_xlat52 + u_xlat36.x);
  u_xlat52 = cos(u_xlat3.y);
  u_xlat4.y = (u_xlat36.y + u_xlat52);
  u_xlat52 = (u_xlat2.y + u_xlat2.x);
  u_xlat36 = (vec2f(u_xlat51) * vec2f(3.09999990463256835938f, 2.70000004768371582031f));
  u_xlat51 = ((u_xlat52 * 13.0f) + u_xlat36.x);
  u_xlat3.x = sin(u_xlat51);
  u_xlat51 = (-(u_xlat2.y) + u_xlat2.x);
  u_xlat51 = ((u_xlat51 * 11.0f) + -(u_xlat36.y));
  u_xlat3.y = cos(u_xlat51);
  u_xlat51 = max(u_xlat34, 0.00100000004749745131f);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(u_xlat51))).xy, u_xlat0.zw);
  u_xlat36 = (u_xlat3.xy * vec2f(0.34999999403953552246f));
  u_xlat36 = ((u_xlat4.xy * x_399) + u_xlat36);
  u_xlat36 = (u_xlat36 * vec2f(x_70.x_Churn));
  u_xlat36 = (u_xlat18.xx * u_xlat36);
  u_xlat36 = (u_xlat36 / vec2f(x_70.x_Tile));
  u_xlat2 = vec4f(((u_xlat36 + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec4f(((x_229.x_Time.yyy * vec3f(0.07000000029802322388f, 5.02650022506713867188f, 1.29999995231628417969f))).xyz, u_xlat3.w);
  u_xlat51 = fract(u_xlat3.x);
  u_xlat0 = vec4f(((vec2f(u_xlat51) * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy * vec2f(0.03999999910593032837f))).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(x_70.x_Tile))).xy, u_xlat0.zw);
  u_xlat51 = (-(u_xlat18.x) + 1.0f);
  u_xlat0 = vec4f((((-(u_xlat0.xy) * vec2f(u_xlat51)) + u_xlat2.xy)).xy, u_xlat0.zw);
  let x_484 = u_xlat0;
  let x_487 = x_229.x_GlobalMipBias.x;
  let x_488 = textureSampleBias(x_SandTex, sampler_SandTex, x_484.xy, x_487);
  u_xlat2 = vec4f(x_488.xyz.xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * x_70.x_Tint.xyz)).xyz, u_xlat2.w);
  let x_505 = u_xlat0;
  let x_508 = x_229.x_GlobalMipBias.x;
  let x_509 = textureSampleBias(x_SandNormal, sampler_SandNormal, x_505.xy, x_508);
  let x_510 = x_509.xyw;
  u_xlat0 = vec4f(x_510.xy, u_xlat0.z, x_510.z);
  u_xlat18.z = ((-(u_xlat18.x) * 0.60000002384185791016f) + 1.0f);
  let x_529 = (u_xlat18.xz * vec2f(x_70.x_Lifted, x_70.x_NormalStrength));
  u_xlat18 = vec3f(x_529.x, u_xlat18.y, x_529.y);
  u_xlat0.x = (u_xlat0.x * u_xlat0.w);
  u_xlat0 = vec4f((((u_xlat0.xy * x_541) + vec2f(-1.0f))).xy, u_xlat0.zw);
  u_xlat51 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat51 = min(u_xlat51, 1.0f);
  u_xlat51 = (-(u_xlat51) + 1.0f);
  u_xlat51 = sqrt(u_xlat51);
  u_xlat51 = max(u_xlat51, 0.0000000000000001f);
  u_xlat0 = vec4f(((u_xlat18.zz * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat52 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((vec3f(u_xlat52) * vs_TEXCOORD1)).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((u_xlat4.zxy * vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat4.yzx * vec3f(1.0f, 0.0f, 0.0f)) + -(u_xlat5.xyz))).xyz, u_xlat5.w);
  u_xlat52 = dot(u_xlat5.xy, u_xlat5.xy);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat5 = vec4f(((vec3f(u_xlat52) * u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat5.yzx * u_xlat4.zxy) + -(u_xlat6.xyz))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat0.yyy * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat0.xxx) + u_xlat6.xyz)).xyz, u_xlat5.w);
  let x_656 = ((u_xlat4.xyz * vec3f(u_xlat51)) + u_xlat5.xyz);
  u_xlat0 = vec4f(x_656.xy, u_xlat0.z, x_656.z);
  u_xlat52 = dot(u_xlat0.xyw, u_xlat0.xyw);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((u_xlat0.xyw * vec3f(u_xlat52))).xyz, u_xlat4.w);
  u_xlat0.x = (1.0f / u_xlat1.x);
  u_xlat0.x = (u_xlat0.x * u_xlat18.y);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat17 = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat17) * u_xlat0.x) + 1.0f);
  u_xlat17 = sin(u_xlat3.z);
  u_xlat17 = ((u_xlat17 * 1.70000004768371582031f) + u_xlat3.y);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = ((u_xlat17 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat51 = ((-(u_xlat17) * 0.25f) + 1.0f);
  u_xlat51 = (u_xlat51 * u_xlat0.x);
  u_xlat51 = ((u_xlat51 * -(x_70.x_ThroatDark)) + 1.0f);
  let x_739 = (vec3f(u_xlat51) * u_xlat2.xyz);
  u_xlat1 = vec4f(x_739.x, u_xlat1.y, x_739.yz);
  u_xlat17 = (u_xlat17 * u_xlat18.x);
  u_xlat0.x = ((-(u_xlat0.x) * 0.5f) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat17);
  u_xlat2 = vec4f((((-(u_xlat2.xyz) * vec3f(u_xlat51)) + vec3f(0.93000000715255737305f, 0.91000002622604370117f, 0.85000002384185791016f))).xyz, u_xlat2.w);
  let x_777 = ((u_xlat0.xxx * u_xlat2.xyz) + u_xlat1.xzw);
  u_xlat0 = vec4f(x_777.xy, u_xlat0.z, x_777.z);
  u_xlat1.x = max(x_70.x_ConeRadius, 0.05000000074505805969f);
  u_xlat1.x = (u_xlat34 / u_xlat1.x);
  u_xlat18.x = (x_70.x_ConeRadius + -(x_70.x_Vent.w));
  u_xlat34 = (u_xlat34 + -(x_70.x_Vent.w));
  u_xlat18.x = (1.0f / u_xlat18.x);
  u_xlat34 = (u_xlat34 * u_xlat18.x);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat18.x = ((u_xlat34 * -2.0f) + 3.0f);
  u_xlat34 = (u_xlat34 * u_xlat34);
  u_xlat34 = ((-(u_xlat18.x) * u_xlat34) + 1.0f);
  u_xlat34 = ((u_xlat34 * 0.07999999821186065674f) + 1.0f);
  u_xlat0 = vec4f(((vec3f(u_xlat34) * u_xlat0.xyw)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat1.xx + vec2f(-0.63999998569488525391f, -0.40000000596046447754f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(10.0f, 8.3333339691162109375f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(-1.44269502162933349609f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(exp2(u_xlat1.xy).xy, u_xlat1.zw);
  u_xlat51 = ((u_xlat1.x * 0.28000000119209289551f) + 1.0f);
  u_xlat51 = ((-(u_xlat1.y) * 0.25f) + u_xlat51);
  u_xlat0 = vec4f(((vec3f(u_xlat51) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((vs_TEXCOORD0.yyy * x_895.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_895.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_895.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_895.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat1.w);
  u_xlatb51 = (0.0f < x_895.x_MainLightShadowParams.y);
  if (u_xlatb51) {
    u_xlatb51 = (x_895.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb51) {
      u_xlat2 = (u_xlat1.xyxy + x_895.x_MainLightShadowOffset0);
      let x_952 = u_xlat2.xy;
      txVec0 = vec3f(x_952.x, x_952.y, u_xlat1.z);
      u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_972 = u_xlat2.zw;
      txVec1 = vec3f(x_972.x, x_972.y, u_xlat1.z);
      u_xlat3.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat2 = (u_xlat1.xyxy + x_895.x_MainLightShadowOffset1);
      let x_992 = u_xlat2.xy;
      txVec2 = vec3f(x_992.x, x_992.y, u_xlat1.z);
      u_xlat3.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1007 = u_xlat2.zw;
      txVec3 = vec3f(x_1007.x, x_1007.y, u_xlat1.z);
      u_xlat3.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat51 = dot(u_xlat3, vec4f(0.25f));
    } else {
      u_xlatb52 = (x_895.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb52) {
        u_xlat2 = vec4f((((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1057);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1067 = (u_xlat5.yw * vec2f(0.07999999821186065674f));
        u_xlat3 = vec4f(x_1067.x, u_xlat3.y, x_1067.y, u_xlat3.w);
        u_xlat5 = vec4f((((u_xlat5.xz * x_399) + -(u_xlat36))).xy, u_xlat5.zw);
        u_xlat39 = (-(u_xlat36) + x_1081);
        u_xlat6 = vec4f(min(u_xlat36, vec2f()).xy, u_xlat6.zw);
        u_xlat6 = vec4f((((-(u_xlat6.xy) * u_xlat6.xy) + u_xlat39)).xy, u_xlat6.zw);
        u_xlat36 = max(u_xlat36, vec2f());
        u_xlat36 = ((-(u_xlat36) * u_xlat36) + u_xlat3.yw);
        u_xlat6 = vec4f(((u_xlat6.xy + x_1081)).xy, u_xlat6.zw);
        u_xlat36 = (u_xlat36 + x_1081);
        u_xlat7 = vec4f(((u_xlat5.xy * x_1118)).xy, u_xlat7.zw);
        u_xlat5 = vec4f(((u_xlat39 * x_1118)).xy, u_xlat5.zw);
        u_xlat6 = vec4f(((u_xlat6.xy * x_1118)).xy, u_xlat6.zw);
        u_xlat8 = vec4f(((u_xlat36 * x_1118)).xy, u_xlat8.zw);
        u_xlat36 = (u_xlat3.yw * x_1118);
        u_xlat7.z = u_xlat6.x;
        u_xlat7.w = u_xlat36.x;
        u_xlat5.z = u_xlat8.x;
        u_xlat5.w = u_xlat3.x;
        u_xlat9 = (u_xlat5.zwxz + u_xlat7.zwxz);
        u_xlat6.z = u_xlat7.y;
        u_xlat6.w = u_xlat36.y;
        u_xlat8.z = u_xlat5.y;
        u_xlat8.w = u_xlat3.z;
        u_xlat3 = vec4f(((u_xlat6.zyw + u_xlat8.zyw)).xyz, u_xlat3.w);
        u_xlat5 = vec4f(((u_xlat5.xzw / u_xlat9.zwy)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat5.xyz + x_1188)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat8.zyw / u_xlat3.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f(((u_xlat6.xyz + x_1188)).xyz, u_xlat6.w);
        u_xlat5 = vec4f(((u_xlat5.yxz * x_895.x_MainLightShadowmapSize.xxx)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_895.x_MainLightShadowmapSize.yyy)).xyz, u_xlat6.w);
        u_xlat5.w = u_xlat6.x;
        u_xlat7 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.ywxw);
        u_xlat36 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat5.zw);
        u_xlat6.w = u_xlat5.y;
        let x_1245 = u_xlat6.yz;
        u_xlat5 = vec4f(u_xlat5.x, x_1245.x, u_xlat5.z, x_1245.y);
        u_xlat8 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyzy);
        u_xlat6 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat6.wywz);
        u_xlat5 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.xwzw);
        u_xlat10 = (u_xlat3.xxxy * u_xlat9.zwyz);
        u_xlat11 = (u_xlat3.yyzz * u_xlat9);
        u_xlat52 = (u_xlat3.z * u_xlat9.y);
        let x_1293 = u_xlat7.xy;
        txVec4 = vec3f(x_1293.x, x_1293.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1308 = u_xlat7.zw;
        txVec5 = vec3f(x_1308.x, x_1308.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat19 = (u_xlat19 * u_xlat10.y);
        u_xlat2.x = ((u_xlat10.x * u_xlat2.x) + u_xlat19);
        txVec6 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat2.x = ((u_xlat10.z * u_xlat19) + u_xlat2.x);
        let x_1356 = u_xlat6.xy;
        txVec7 = vec3f(x_1356.x, x_1356.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat2.x = ((u_xlat10.w * u_xlat19) + u_xlat2.x);
        let x_1378 = u_xlat8.xy;
        txVec8 = vec3f(x_1378.x, x_1378.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat2.x = ((u_xlat11.x * u_xlat19) + u_xlat2.x);
        let x_1400 = u_xlat8.zw;
        txVec9 = vec3f(x_1400.x, x_1400.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat2.x = ((u_xlat11.y * u_xlat19) + u_xlat2.x);
        let x_1422 = u_xlat6.zw;
        txVec10 = vec3f(x_1422.x, x_1422.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat2.x = ((u_xlat11.z * u_xlat19) + u_xlat2.x);
        let x_1444 = u_xlat5.xy;
        txVec11 = vec3f(x_1444.x, x_1444.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat2.x = ((u_xlat11.w * u_xlat19) + u_xlat2.x);
        let x_1466 = u_xlat5.zw;
        txVec12 = vec3f(x_1466.x, x_1466.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat51 = ((u_xlat52 * u_xlat19) + u_xlat2.x);
      } else {
        u_xlat2 = vec4f((((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_895.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1057);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1521 = (u_xlat5.yw * vec2f(0.04081600159406661987f));
        u_xlat6 = vec4f(u_xlat6.x, x_1521.x, u_xlat6.z, x_1521.y);
        let x_1529 = ((u_xlat5.xz * x_399) + -(u_xlat36));
        u_xlat3 = vec4f(x_1529.x, u_xlat3.y, x_1529.y, u_xlat3.w);
        u_xlat5 = vec4f(((-(u_xlat36) + x_1081)).xy, u_xlat5.zw);
        u_xlat39 = min(u_xlat36, vec2f());
        u_xlat5 = vec4f((((-(u_xlat39) * u_xlat39) + u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat39 = max(u_xlat36, vec2f());
        let x_1557 = ((-(u_xlat39) * u_xlat39) + u_xlat3.yw);
        u_xlat20 = vec3f(x_1557.x, u_xlat20.y, x_1557.y);
        u_xlat5 = vec4f(((u_xlat5.xy + x_541)).xy, u_xlat5.zw);
        let x_1567 = (u_xlat20.xz + x_541);
        u_xlat3 = vec4f(u_xlat3.x, x_1567.x, u_xlat3.z, x_1567.y);
        u_xlat7.z = (u_xlat3.y * 0.08163200318813323975f);
        u_xlat8 = vec4f(((u_xlat3.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat8.w);
        u_xlat3 = vec4f(((u_xlat5.xy * vec2f(0.08163200318813323975f))).xy, u_xlat3.zw);
        u_xlat7.x = u_xlat8.y;
        let x_1597 = ((u_xlat36.xx * x_1593) + x_1596);
        u_xlat7 = vec4f(u_xlat7.x, x_1597.x, u_xlat7.z, x_1597.y);
        let x_1604 = ((u_xlat36.xx * x_1593) + x_1603);
        u_xlat5 = vec4f(x_1604.x, u_xlat5.y, x_1604.y, u_xlat5.w);
        u_xlat5.y = u_xlat3.x;
        u_xlat5.w = u_xlat6.y;
        u_xlat7 = (u_xlat5 + u_xlat7);
        let x_1619 = ((u_xlat36.yy * x_1593) + x_1596);
        u_xlat8 = vec4f(u_xlat8.x, x_1619.x, u_xlat8.z, x_1619.y);
        let x_1625 = ((u_xlat36.yy * x_1593) + x_1603);
        u_xlat6 = vec4f(x_1625.x, u_xlat6.y, x_1625.y, u_xlat6.w);
        u_xlat6.y = u_xlat3.y;
        u_xlat3 = (u_xlat6 + u_xlat8);
        u_xlat5 = (u_xlat5 / u_xlat7);
        u_xlat5 = (u_xlat5 + x_1641);
        u_xlat6 = (u_xlat6 / u_xlat3);
        u_xlat6 = (u_xlat6 + x_1641);
        u_xlat5 = (u_xlat5.wxyz * x_895.x_MainLightShadowmapSize.xxxx);
        u_xlat6 = (u_xlat6.xwyz * x_895.x_MainLightShadowmapSize.yyyy);
        let x_1661 = u_xlat5.yzw;
        u_xlat8 = vec4f(x_1661.x, u_xlat8.y, x_1661.yz);
        u_xlat8.y = u_xlat6.x;
        u_xlat9 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat36 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.y = u_xlat8.y;
        u_xlat8.y = u_xlat6.z;
        u_xlat10 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat11 = vec4f((((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat8.wy)).xy, u_xlat11.zw);
        u_xlat5.z = u_xlat8.y;
        u_xlat12 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyxz);
        u_xlat8.y = u_xlat6.w;
        u_xlat13 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat22 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.w = u_xlat8.y;
        u_xlat45 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat5.xw);
        let x_1761 = u_xlat8.xzw;
        u_xlat6 = vec4f(x_1761.x, u_xlat6.y, x_1761.yz);
        u_xlat8 = ((u_xlat2.xyxy * x_895.x_MainLightShadowmapSize.xyxy) + u_xlat6.xyzy);
        u_xlat40 = ((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat6.wy);
        u_xlat6.x = u_xlat5.x;
        u_xlat2 = vec4f((((u_xlat2.xy * x_895.x_MainLightShadowmapSize.xy) + u_xlat6.xy)).xy, u_xlat2.zw);
        u_xlat14 = (u_xlat3.xxxx * u_xlat7);
        u_xlat15 = (u_xlat3.yyyy * u_xlat7);
        u_xlat16 = (u_xlat3.zzzz * u_xlat7);
        u_xlat3 = (u_xlat3.wwww * u_xlat7);
        let x_1818 = u_xlat9.xy;
        txVec13 = vec3f(x_1818.x, x_1818.y, u_xlat1.z);
        u_xlat52 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1832 = u_xlat9.zw;
        txVec14 = vec3f(x_1832.x, x_1832.y, u_xlat1.z);
        u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat5.x = (u_xlat5.x * u_xlat14.y);
        u_xlat52 = ((u_xlat14.x * u_xlat52) + u_xlat5.x);
        txVec15 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat52 = ((u_xlat14.z * u_xlat36.x) + u_xlat52);
        let x_1881 = u_xlat12.xy;
        txVec16 = vec3f(x_1881.x, x_1881.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat52 = ((u_xlat14.w * u_xlat36.x) + u_xlat52);
        let x_1903 = u_xlat10.xy;
        txVec17 = vec3f(x_1903.x, x_1903.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat52 = ((u_xlat15.x * u_xlat36.x) + u_xlat52);
        let x_1925 = u_xlat10.zw;
        txVec18 = vec3f(x_1925.x, x_1925.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat52 = ((u_xlat15.y * u_xlat36.x) + u_xlat52);
        let x_1947 = u_xlat11.xy;
        txVec19 = vec3f(x_1947.x, x_1947.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat52 = ((u_xlat15.z * u_xlat36.x) + u_xlat52);
        let x_1969 = u_xlat12.zw;
        txVec20 = vec3f(x_1969.x, x_1969.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat52 = ((u_xlat15.w * u_xlat36.x) + u_xlat52);
        let x_1991 = u_xlat13.xy;
        txVec21 = vec3f(x_1991.x, x_1991.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat52 = ((u_xlat16.x * u_xlat36.x) + u_xlat52);
        let x_2013 = u_xlat13.zw;
        txVec22 = vec3f(x_2013.x, x_2013.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat52 = ((u_xlat16.y * u_xlat36.x) + u_xlat52);
        txVec23 = vec3f(u_xlat22.x, u_xlat22.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat52 = ((u_xlat16.z * u_xlat36.x) + u_xlat52);
        txVec24 = vec3f(u_xlat45.x, u_xlat45.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat52 = ((u_xlat16.w * u_xlat36.x) + u_xlat52);
        let x_2077 = u_xlat8.xy;
        txVec25 = vec3f(x_2077.x, x_2077.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat52 = ((u_xlat3.x * u_xlat36.x) + u_xlat52);
        let x_2099 = u_xlat8.zw;
        txVec26 = vec3f(x_2099.x, x_2099.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat52 = ((u_xlat3.y * u_xlat36.x) + u_xlat52);
        txVec27 = vec3f(u_xlat40.x, u_xlat40.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat52 = ((u_xlat3.z * u_xlat36.x) + u_xlat52);
        let x_2142 = u_xlat2.xy;
        txVec28 = vec3f(x_2142.x, x_2142.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat51 = ((u_xlat3.w * u_xlat2.x) + u_xlat52);
      }
    }
  } else {
    let x_2165 = u_xlat1.xy;
    txVec29 = vec3f(x_2165.x, x_2165.y, u_xlat1.z);
    u_xlat51 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat1.x = (-(x_895.x_MainLightShadowParams.x) + 1.0f);
  u_xlat51 = ((u_xlat51 * x_895.x_MainLightShadowParams.x) + u_xlat1.x);
  u_xlatb1 = (0.0f >= u_xlat1.z);
  u_xlatb18 = (u_xlat1.z >= 1.0f);
  u_xlatb1 = (u_xlatb18 | u_xlatb1);
  u_xlat51 = select(u_xlat51, 1.0f, u_xlatb1);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_229.x_WorldSpaceCameraPos))).xyz, u_xlat1.w);
  u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat1.x = ((u_xlat1.x * x_895.x_MainLightShadowParams.z) + x_895.x_MainLightShadowParams.w);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18.x = (-(u_xlat51) + 1.0f);
  u_xlat51 = ((u_xlat1.x * u_xlat18.x) + u_xlat51);
  u_xlat1.x = dot(u_xlat4.xyz, x_229.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18 = (vec3f(u_xlat51) * x_229.x_MainLightColor.xyz);
  u_xlat4.w = 1.0f;
  u_xlat2.x = dot(x_2267.unity_SHAr, u_xlat4);
  u_xlat2.y = dot(x_2267.unity_SHAg, u_xlat4);
  u_xlat2.z = dot(x_2267.unity_SHAb, u_xlat4);
  u_xlat3 = (u_xlat4.yzzx * u_xlat4.xyzz);
  u_xlat5.x = dot(x_2267.unity_SHBr, u_xlat3);
  u_xlat5.y = dot(x_2267.unity_SHBg, u_xlat3);
  u_xlat5.z = dot(x_2267.unity_SHBb, u_xlat3);
  u_xlat51 = (u_xlat4.y * u_xlat4.y);
  u_xlat51 = ((u_xlat4.x * u_xlat4.x) + -(u_xlat51));
  u_xlat3 = vec4f((((x_2267.unity_SHC.xyz * vec3f(u_xlat51)) + u_xlat5.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + u_xlat3.xyz)).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((u_xlat18 * u_xlat1.xxx) + u_xlat2.xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1.xyz)).xyz, u_xlat0.w);
  u_xlat51 = (vs_TEXCOORD2 * -(vs_TEXCOORD2));
  u_xlat51 = exp2(u_xlat51);
  u_xlat0 = vec4f((((u_xlat0.xyz * x_70.x_WaterTint.xyz) + -(x_229.unity_FogColor.xyz))).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((vec3f(u_xlat51) * u_xlat0.xyz) + x_229.unity_FogColor.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD1_param : vec3f, @location(1) vs_TEXCOORD2_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

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

@group(1) @binding(3) var<uniform> x_962 : LightShadows;

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
  var u_xlatb2 : vec4<bool>;
  var u_xlatu16 : u32;
  var u_xlati16 : i32;
  var u_xlatb16 : bool;
  var u_xlatb17 : bool;
  var txVec0 : vec3f;
  var x_1157 : f32;
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
  u_xlat2 = vec4f(((vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat2.w);
  u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat3 = (vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres1.xyz));
  u_xlat2.y = dot(u_xlat3, u_xlat3);
  u_xlat3 = (vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres2.xyz));
  u_xlat2.z = dot(u_xlat3, u_xlat3);
  u_xlat3 = (vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres3.xyz));
  u_xlat2.w = dot(u_xlat3, u_xlat3);
  u_xlatb2 = (u_xlat2 < x_962.x_CascadeShadowSplitSphereRadii);
  u_xlat3.x = select(-0.0f, -1.0f, u_xlatb2.x);
  u_xlat3.y = select(-0.0f, -1.0f, u_xlatb2.y);
  u_xlat3.z = select(-0.0f, -1.0f, u_xlatb2.z);
  u_xlat2.x = select(0.0f, 1.0f, u_xlatb2.x);
  u_xlat2.y = select(0.0f, 1.0f, u_xlatb2.y);
  u_xlat2.z = select(0.0f, 1.0f, u_xlatb2.z);
  u_xlat2.w = select(0.0f, 1.0f, u_xlatb2.w);
  u_xlat3 = (u_xlat3 + u_xlat2.yzw);
  u_xlat2 = vec4f(u_xlat2.x, max(u_xlat3, vec3f()).xyz);
  u_xlat16 = dot(u_xlat2, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat16 = (-(u_xlat16) + 4.0f);
  u_xlatu16 = u32(u_xlat16);
  u_xlati16 = (bitcast<i32>(u_xlatu16) << bitcast<u32>(2i));
  u_xlat2 = vec4f(((vs_TEXCOORD0.yyy * x_962.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati16 + 1i)].xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_962.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati16].xyz * vs_TEXCOORD0.xxx) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_962.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati16 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + x_962.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati16 + 3i)].xyz)).xyz, u_xlat2.w);
  u_xlatb16 = (0.0f >= u_xlat2.z);
  u_xlatb17 = (u_xlat2.z >= 1.0f);
  let x_1120 = u_xlat2.xy;
  txVec0 = vec3f(x_1120.x, x_1120.y, u_xlat2.z);
  u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlatb16 = (u_xlatb16 | u_xlatb17);
  u_xlat7.x = (-(x_962.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat2.x * x_962.x_MainLightShadowParams.x) + u_xlat7.x);
  if (u_xlatb16) {
    x_1157 = 1.0f;
  } else {
    x_1157 = u_xlat2.x;
  }
  u_xlat16 = x_1157;
  u_xlat2.x = (-(u_xlat16) + 1.0f);
  u_xlat7 = (vs_TEXCOORD0 + -(x_250.x_WorldSpaceCameraPos));
  u_xlat7.x = dot(u_xlat7, u_xlat7);
  u_xlat7.x = ((u_xlat7.x * x_962.x_MainLightShadowParams.z) + x_962.x_MainLightShadowParams.w);
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

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(2) var<uniform> x_70 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_229 : PGlobals;

@group(0) @binding(1) var x_SandTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SandTex : sampler;

@group(0) @binding(2) var x_SandNormal : texture_2d<f32>;

@group(0) @binding(5) var sampler_SandNormal : sampler;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(3) var<uniform> x_894 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_2396 : UnityPerDraw;

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

const x_399 = vec2f(0.5f);

const x_541 = vec2f(2.0f);

const x_1183 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1207 = vec2f(1.0f);

const x_1244 = vec2f(0.15999999642372131348f);

const x_1314 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1719 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1722 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1729 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1767 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat34 : f32;
  var u_xlat51 : f32;
  var u_xlat1 : vec4f;
  var u_xlatu1 : vec2u;
  var u_xlati18 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlati1 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var indexable : array<vec4u, 16u>;
  var u_xlatb51 : bool;
  var u_xlat18 : vec3f;
  var u_xlat52 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat36 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat17 : f32;
  var u_xlatb1 : vec4<bool>;
  var u_xlatu51 : u32;
  var u_xlati51 : i32;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb52 : bool;
  var u_xlat39 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat19 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat20 : vec3f;
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
  var txVec15 : vec3f;
  var txVec16 : vec3f;
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
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_51 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_51.x, x_51.y, x_51.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec4f(((vs_TEXCOORD0.xz + -(x_70.x_Vent.xz))).xy, u_xlat0.zw);
  u_xlat34 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat34 = sqrt(u_xlat34);
  u_xlat51 = (x_70.x_ConeRadius + 0.12999999523162841797f);
  u_xlat51 = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat51);
  u_xlat1.x = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat34);
  u_xlat51 = (1.0f / u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((-(u_xlat1.x) * u_xlat51) + 1.0f);
  u_xlatu1 = vec2u(hlslcc_FragCoord.xy);
  let x_146 = u_xlatu1.y;
  param = 0i;
  param_1 = bitcast<i32>(x_146);
  param_2 = 2i;
  param_3 = 2i;
  let x_153 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati18 = x_153;
  let x_156 = u_xlatu1.x;
  param_4 = u_xlati18;
  param_5 = bitcast<i32>(x_156);
  param_6 = 0i;
  param_7 = 2i;
  let x_163 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
  u_xlati1 = x_163;
  let x_200 = u_xlati1;
  indexable = array<vec4u, 16u>(vec4u(), vec4u(1090519040u, 0u, 0u, 0u), vec4u(1073741824u, 0u, 0u, 0u), vec4u(1092616192u, 0u, 0u, 0u), vec4u(1094713344u, 0u, 0u, 0u), vec4u(1082130432u, 0u, 0u, 0u), vec4u(1096810496u, 0u, 0u, 0u), vec4u(1086324736u, 0u, 0u, 0u), vec4u(1077936128u, 0u, 0u, 0u), vec4u(1093664768u, 0u, 0u, 0u), vec4u(1065353216u, 0u, 0u, 0u), vec4u(1091567616u, 0u, 0u, 0u), vec4u(1097859072u, 0u, 0u, 0u), vec4u(1088421888u, 0u, 0u, 0u), vec4u(1095761920u, 0u, 0u, 0u), vec4u(1084227584u, 0u, 0u, 0u));
  u_xlat1.x = (0.5f + bitcast<f32>(indexable[x_200].x));
  u_xlat51 = ((-(u_xlat1.x) * 0.0625f) + u_xlat51);
  u_xlatb51 = (u_xlat51 < 0.0f);
  if (((select(0i, 1i, u_xlatb51) * -1i) != 0i)) {
    discard;
  }
  u_xlat51 = (x_229.x_Time.y * x_70.x_ChurnSpeed);
  u_xlat1.x = (x_70.x_Vent.w * 0.80000001192092895508f);
  u_xlat18 = vec3f((((-(x_70.x_Vent.ww) * vec2f(0.60000002384185791016f, 0.30000001192092895508f)) + vec2f(u_xlat34))).xy, u_xlat18.z);
  u_xlat52 = (1.0f / x_70.x_Vent.w);
  u_xlat18.x = (u_xlat52 * u_xlat18.x);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat52 = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat18.x = ((-(u_xlat52) * u_xlat18.x) + 1.0f);
  u_xlat2 = vec4f(((vs_TEXCOORD0.xz / vec2f(x_70.x_Tile))).xy, u_xlat2.zw);
  u_xlat3 = (vec4f(u_xlat51) * vec4f(1.70000004768371582031f, 2.29999995231628417969f, 1.89999997615814208984f, 1.10000002384185791016f));
  u_xlat36 = ((u_xlat2.yy * vec2f(9.1000003814697265625f, 6.09999990463256835938f)) + u_xlat3.xw);
  u_xlat36 = sin(u_xlat36);
  u_xlat3 = vec4f((((u_xlat2.xx * vec2f(5.30000019073486328125f, 8.30000019073486328125f)) + -(u_xlat3.yz))).xy, u_xlat3.zw);
  u_xlat52 = sin(u_xlat3.x);
  u_xlat4.x = (u_xlat52 + u_xlat36.x);
  u_xlat52 = cos(u_xlat3.y);
  u_xlat4.y = (u_xlat36.y + u_xlat52);
  u_xlat52 = (u_xlat2.y + u_xlat2.x);
  u_xlat36 = (vec2f(u_xlat51) * vec2f(3.09999990463256835938f, 2.70000004768371582031f));
  u_xlat51 = ((u_xlat52 * 13.0f) + u_xlat36.x);
  u_xlat3.x = sin(u_xlat51);
  u_xlat51 = (-(u_xlat2.y) + u_xlat2.x);
  u_xlat51 = ((u_xlat51 * 11.0f) + -(u_xlat36.y));
  u_xlat3.y = cos(u_xlat51);
  u_xlat51 = max(u_xlat34, 0.00100000004749745131f);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(u_xlat51))).xy, u_xlat0.zw);
  u_xlat36 = (u_xlat3.xy * vec2f(0.34999999403953552246f));
  u_xlat36 = ((u_xlat4.xy * x_399) + u_xlat36);
  u_xlat36 = (u_xlat36 * vec2f(x_70.x_Churn));
  u_xlat36 = (u_xlat18.xx * u_xlat36);
  u_xlat36 = (u_xlat36 / vec2f(x_70.x_Tile));
  u_xlat2 = vec4f(((u_xlat36 + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec4f(((x_229.x_Time.yyy * vec3f(0.07000000029802322388f, 5.02650022506713867188f, 1.29999995231628417969f))).xyz, u_xlat3.w);
  u_xlat51 = fract(u_xlat3.x);
  u_xlat0 = vec4f(((vec2f(u_xlat51) * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy * vec2f(0.03999999910593032837f))).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(x_70.x_Tile))).xy, u_xlat0.zw);
  u_xlat51 = (-(u_xlat18.x) + 1.0f);
  u_xlat0 = vec4f((((-(u_xlat0.xy) * vec2f(u_xlat51)) + u_xlat2.xy)).xy, u_xlat0.zw);
  let x_484 = u_xlat0;
  let x_487 = x_229.x_GlobalMipBias.x;
  let x_488 = textureSampleBias(x_SandTex, sampler_SandTex, x_484.xy, x_487);
  u_xlat2 = vec4f(x_488.xyz.xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * x_70.x_Tint.xyz)).xyz, u_xlat2.w);
  let x_505 = u_xlat0;
  let x_508 = x_229.x_GlobalMipBias.x;
  let x_509 = textureSampleBias(x_SandNormal, sampler_SandNormal, x_505.xy, x_508);
  let x_510 = x_509.xyw;
  u_xlat0 = vec4f(x_510.xy, u_xlat0.z, x_510.z);
  u_xlat18.z = ((-(u_xlat18.x) * 0.60000002384185791016f) + 1.0f);
  let x_529 = (u_xlat18.xz * vec2f(x_70.x_Lifted, x_70.x_NormalStrength));
  u_xlat18 = vec3f(x_529.x, u_xlat18.y, x_529.y);
  u_xlat0.x = (u_xlat0.x * u_xlat0.w);
  u_xlat0 = vec4f((((u_xlat0.xy * x_541) + vec2f(-1.0f))).xy, u_xlat0.zw);
  u_xlat51 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat51 = min(u_xlat51, 1.0f);
  u_xlat51 = (-(u_xlat51) + 1.0f);
  u_xlat51 = sqrt(u_xlat51);
  u_xlat51 = max(u_xlat51, 0.0000000000000001f);
  u_xlat0 = vec4f(((u_xlat18.zz * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat52 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((vec3f(u_xlat52) * vs_TEXCOORD1)).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((u_xlat4.zxy * vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat4.yzx * vec3f(1.0f, 0.0f, 0.0f)) + -(u_xlat5.xyz))).xyz, u_xlat5.w);
  u_xlat52 = dot(u_xlat5.xy, u_xlat5.xy);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat5 = vec4f(((vec3f(u_xlat52) * u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat5.yzx * u_xlat4.zxy) + -(u_xlat6.xyz))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat0.yyy * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat0.xxx) + u_xlat6.xyz)).xyz, u_xlat5.w);
  let x_656 = ((u_xlat4.xyz * vec3f(u_xlat51)) + u_xlat5.xyz);
  u_xlat0 = vec4f(x_656.xy, u_xlat0.z, x_656.z);
  u_xlat52 = dot(u_xlat0.xyw, u_xlat0.xyw);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((u_xlat0.xyw * vec3f(u_xlat52))).xyz, u_xlat4.w);
  u_xlat0.x = (1.0f / u_xlat1.x);
  u_xlat0.x = (u_xlat0.x * u_xlat18.y);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat17 = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat17) * u_xlat0.x) + 1.0f);
  u_xlat17 = sin(u_xlat3.z);
  u_xlat17 = ((u_xlat17 * 1.70000004768371582031f) + u_xlat3.y);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = ((u_xlat17 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat51 = ((-(u_xlat17) * 0.25f) + 1.0f);
  u_xlat51 = (u_xlat51 * u_xlat0.x);
  u_xlat51 = ((u_xlat51 * -(x_70.x_ThroatDark)) + 1.0f);
  let x_739 = (vec3f(u_xlat51) * u_xlat2.xyz);
  u_xlat1 = vec4f(x_739.x, u_xlat1.y, x_739.yz);
  u_xlat17 = (u_xlat17 * u_xlat18.x);
  u_xlat0.x = ((-(u_xlat0.x) * 0.5f) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat17);
  u_xlat2 = vec4f((((-(u_xlat2.xyz) * vec3f(u_xlat51)) + vec3f(0.93000000715255737305f, 0.91000002622604370117f, 0.85000002384185791016f))).xyz, u_xlat2.w);
  let x_777 = ((u_xlat0.xxx * u_xlat2.xyz) + u_xlat1.xzw);
  u_xlat0 = vec4f(x_777.xy, u_xlat0.z, x_777.z);
  u_xlat1.x = max(x_70.x_ConeRadius, 0.05000000074505805969f);
  u_xlat1.x = (u_xlat34 / u_xlat1.x);
  u_xlat18.x = (x_70.x_ConeRadius + -(x_70.x_Vent.w));
  u_xlat34 = (u_xlat34 + -(x_70.x_Vent.w));
  u_xlat18.x = (1.0f / u_xlat18.x);
  u_xlat34 = (u_xlat34 * u_xlat18.x);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat18.x = ((u_xlat34 * -2.0f) + 3.0f);
  u_xlat34 = (u_xlat34 * u_xlat34);
  u_xlat34 = ((-(u_xlat18.x) * u_xlat34) + 1.0f);
  u_xlat34 = ((u_xlat34 * 0.07999999821186065674f) + 1.0f);
  u_xlat0 = vec4f(((vec3f(u_xlat34) * u_xlat0.xyw)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat1.xx + vec2f(-0.63999998569488525391f, -0.40000000596046447754f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(10.0f, 8.3333339691162109375f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(-1.44269502162933349609f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(exp2(u_xlat1.xy).xy, u_xlat1.zw);
  u_xlat51 = ((u_xlat1.x * 0.28000000119209289551f) + 1.0f);
  u_xlat51 = ((-(u_xlat1.y) * 0.25f) + u_xlat51);
  u_xlat0 = vec4f(((vec3f(u_xlat51) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat3.w);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat5.w);
  u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat1.y = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat1.z = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat1.w = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlatb1 = (u_xlat1 < x_894.x_CascadeShadowSplitSphereRadii);
  u_xlat2.x = select(0.0f, 1.0f, u_xlatb1.x);
  u_xlat2.y = select(0.0f, 1.0f, u_xlatb1.y);
  u_xlat2.z = select(0.0f, 1.0f, u_xlatb1.z);
  u_xlat2.w = select(0.0f, 1.0f, u_xlatb1.w);
  u_xlat1.x = select(-0.0f, -1.0f, u_xlatb1.x);
  u_xlat1.y = select(-0.0f, -1.0f, u_xlatb1.y);
  u_xlat1.z = select(-0.0f, -1.0f, u_xlatb1.z);
  u_xlat1 = vec4f(((u_xlat1.xyz + u_xlat2.yzw)).xyz, u_xlat1.w);
  u_xlat2 = vec4f(u_xlat2.x, max(u_xlat1.xyz, vec3f()).xyz);
  u_xlat51 = dot(u_xlat2, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat51 = (-(u_xlat51) + 4.0f);
  u_xlatu51 = u32(u_xlat51);
  u_xlati51 = (bitcast<i32>(u_xlatu51) << bitcast<u32>(2i));
  u_xlat1 = vec4f(((vs_TEXCOORD0.yyy * x_894.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 1i)].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_894.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati51].xyz * vs_TEXCOORD0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_894.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_894.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 3i)].xyz)).xyz, u_xlat1.w);
  u_xlatb51 = (0.0f < x_894.x_MainLightShadowParams.y);
  if (u_xlatb51) {
    u_xlatb51 = (x_894.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb51) {
      u_xlat2 = (u_xlat1.xyxy + x_894.x_MainLightShadowOffset0);
      let x_1078 = u_xlat2.xy;
      txVec0 = vec3f(x_1078.x, x_1078.y, u_xlat1.z);
      u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1098 = u_xlat2.zw;
      txVec1 = vec3f(x_1098.x, x_1098.y, u_xlat1.z);
      u_xlat3.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat2 = (u_xlat1.xyxy + x_894.x_MainLightShadowOffset1);
      let x_1118 = u_xlat2.xy;
      txVec2 = vec3f(x_1118.x, x_1118.y, u_xlat1.z);
      u_xlat3.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1133 = u_xlat2.zw;
      txVec3 = vec3f(x_1133.x, x_1133.y, u_xlat1.z);
      u_xlat3.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat51 = dot(u_xlat3, vec4f(0.25f));
    } else {
      u_xlatb52 = (x_894.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb52) {
        u_xlat2 = vec4f((((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1183);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1193 = (u_xlat5.yw * vec2f(0.07999999821186065674f));
        u_xlat3 = vec4f(x_1193.x, u_xlat3.y, x_1193.y, u_xlat3.w);
        u_xlat5 = vec4f((((u_xlat5.xz * x_399) + -(u_xlat36))).xy, u_xlat5.zw);
        u_xlat39 = (-(u_xlat36) + x_1207);
        u_xlat6 = vec4f(min(u_xlat36, vec2f()).xy, u_xlat6.zw);
        u_xlat6 = vec4f((((-(u_xlat6.xy) * u_xlat6.xy) + u_xlat39)).xy, u_xlat6.zw);
        u_xlat36 = max(u_xlat36, vec2f());
        u_xlat36 = ((-(u_xlat36) * u_xlat36) + u_xlat3.yw);
        u_xlat6 = vec4f(((u_xlat6.xy + x_1207)).xy, u_xlat6.zw);
        u_xlat36 = (u_xlat36 + x_1207);
        u_xlat7 = vec4f(((u_xlat5.xy * x_1244)).xy, u_xlat7.zw);
        u_xlat5 = vec4f(((u_xlat39 * x_1244)).xy, u_xlat5.zw);
        u_xlat6 = vec4f(((u_xlat6.xy * x_1244)).xy, u_xlat6.zw);
        u_xlat8 = vec4f(((u_xlat36 * x_1244)).xy, u_xlat8.zw);
        u_xlat36 = (u_xlat3.yw * x_1244);
        u_xlat7.z = u_xlat6.x;
        u_xlat7.w = u_xlat36.x;
        u_xlat5.z = u_xlat8.x;
        u_xlat5.w = u_xlat3.x;
        u_xlat9 = (u_xlat5.zwxz + u_xlat7.zwxz);
        u_xlat6.z = u_xlat7.y;
        u_xlat6.w = u_xlat36.y;
        u_xlat8.z = u_xlat5.y;
        u_xlat8.w = u_xlat3.z;
        u_xlat3 = vec4f(((u_xlat6.zyw + u_xlat8.zyw)).xyz, u_xlat3.w);
        u_xlat5 = vec4f(((u_xlat5.xzw / u_xlat9.zwy)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat5.xyz + x_1314)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat8.zyw / u_xlat3.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f(((u_xlat6.xyz + x_1314)).xyz, u_xlat6.w);
        u_xlat5 = vec4f(((u_xlat5.yxz * x_894.x_MainLightShadowmapSize.xxx)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_894.x_MainLightShadowmapSize.yyy)).xyz, u_xlat6.w);
        u_xlat5.w = u_xlat6.x;
        u_xlat7 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.ywxw);
        u_xlat36 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat5.zw);
        u_xlat6.w = u_xlat5.y;
        let x_1371 = u_xlat6.yz;
        u_xlat5 = vec4f(u_xlat5.x, x_1371.x, u_xlat5.z, x_1371.y);
        u_xlat8 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyzy);
        u_xlat6 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat6.wywz);
        u_xlat5 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.xwzw);
        u_xlat10 = (u_xlat3.xxxy * u_xlat9.zwyz);
        u_xlat11 = (u_xlat3.yyzz * u_xlat9);
        u_xlat52 = (u_xlat3.z * u_xlat9.y);
        let x_1419 = u_xlat7.xy;
        txVec4 = vec3f(x_1419.x, x_1419.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1434 = u_xlat7.zw;
        txVec5 = vec3f(x_1434.x, x_1434.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat19 = (u_xlat19 * u_xlat10.y);
        u_xlat2.x = ((u_xlat10.x * u_xlat2.x) + u_xlat19);
        txVec6 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat2.x = ((u_xlat10.z * u_xlat19) + u_xlat2.x);
        let x_1482 = u_xlat6.xy;
        txVec7 = vec3f(x_1482.x, x_1482.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat2.x = ((u_xlat10.w * u_xlat19) + u_xlat2.x);
        let x_1504 = u_xlat8.xy;
        txVec8 = vec3f(x_1504.x, x_1504.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat2.x = ((u_xlat11.x * u_xlat19) + u_xlat2.x);
        let x_1526 = u_xlat8.zw;
        txVec9 = vec3f(x_1526.x, x_1526.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat2.x = ((u_xlat11.y * u_xlat19) + u_xlat2.x);
        let x_1548 = u_xlat6.zw;
        txVec10 = vec3f(x_1548.x, x_1548.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat2.x = ((u_xlat11.z * u_xlat19) + u_xlat2.x);
        let x_1570 = u_xlat5.xy;
        txVec11 = vec3f(x_1570.x, x_1570.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat2.x = ((u_xlat11.w * u_xlat19) + u_xlat2.x);
        let x_1592 = u_xlat5.zw;
        txVec12 = vec3f(x_1592.x, x_1592.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat51 = ((u_xlat52 * u_xlat19) + u_xlat2.x);
      } else {
        u_xlat2 = vec4f((((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1183);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1647 = (u_xlat5.yw * vec2f(0.04081600159406661987f));
        u_xlat6 = vec4f(u_xlat6.x, x_1647.x, u_xlat6.z, x_1647.y);
        let x_1655 = ((u_xlat5.xz * x_399) + -(u_xlat36));
        u_xlat3 = vec4f(x_1655.x, u_xlat3.y, x_1655.y, u_xlat3.w);
        u_xlat5 = vec4f(((-(u_xlat36) + x_1207)).xy, u_xlat5.zw);
        u_xlat39 = min(u_xlat36, vec2f());
        u_xlat5 = vec4f((((-(u_xlat39) * u_xlat39) + u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat39 = max(u_xlat36, vec2f());
        let x_1683 = ((-(u_xlat39) * u_xlat39) + u_xlat3.yw);
        u_xlat20 = vec3f(x_1683.x, u_xlat20.y, x_1683.y);
        u_xlat5 = vec4f(((u_xlat5.xy + x_541)).xy, u_xlat5.zw);
        let x_1693 = (u_xlat20.xz + x_541);
        u_xlat3 = vec4f(u_xlat3.x, x_1693.x, u_xlat3.z, x_1693.y);
        u_xlat7.z = (u_xlat3.y * 0.08163200318813323975f);
        u_xlat8 = vec4f(((u_xlat3.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat8.w);
        u_xlat3 = vec4f(((u_xlat5.xy * vec2f(0.08163200318813323975f))).xy, u_xlat3.zw);
        u_xlat7.x = u_xlat8.y;
        let x_1723 = ((u_xlat36.xx * x_1719) + x_1722);
        u_xlat7 = vec4f(u_xlat7.x, x_1723.x, u_xlat7.z, x_1723.y);
        let x_1730 = ((u_xlat36.xx * x_1719) + x_1729);
        u_xlat5 = vec4f(x_1730.x, u_xlat5.y, x_1730.y, u_xlat5.w);
        u_xlat5.y = u_xlat3.x;
        u_xlat5.w = u_xlat6.y;
        u_xlat7 = (u_xlat5 + u_xlat7);
        let x_1745 = ((u_xlat36.yy * x_1719) + x_1722);
        u_xlat8 = vec4f(u_xlat8.x, x_1745.x, u_xlat8.z, x_1745.y);
        let x_1751 = ((u_xlat36.yy * x_1719) + x_1729);
        u_xlat6 = vec4f(x_1751.x, u_xlat6.y, x_1751.y, u_xlat6.w);
        u_xlat6.y = u_xlat3.y;
        u_xlat3 = (u_xlat6 + u_xlat8);
        u_xlat5 = (u_xlat5 / u_xlat7);
        u_xlat5 = (u_xlat5 + x_1767);
        u_xlat6 = (u_xlat6 / u_xlat3);
        u_xlat6 = (u_xlat6 + x_1767);
        u_xlat5 = (u_xlat5.wxyz * x_894.x_MainLightShadowmapSize.xxxx);
        u_xlat6 = (u_xlat6.xwyz * x_894.x_MainLightShadowmapSize.yyyy);
        let x_1787 = u_xlat5.yzw;
        u_xlat8 = vec4f(x_1787.x, u_xlat8.y, x_1787.yz);
        u_xlat8.y = u_xlat6.x;
        u_xlat9 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat36 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.y = u_xlat8.y;
        u_xlat8.y = u_xlat6.z;
        u_xlat10 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat11 = vec4f((((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat8.wy)).xy, u_xlat11.zw);
        u_xlat5.z = u_xlat8.y;
        u_xlat12 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyxz);
        u_xlat8.y = u_xlat6.w;
        u_xlat13 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat22 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.w = u_xlat8.y;
        u_xlat45 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat5.xw);
        let x_1887 = u_xlat8.xzw;
        u_xlat6 = vec4f(x_1887.x, u_xlat6.y, x_1887.yz);
        u_xlat8 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat6.xyzy);
        u_xlat40 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat6.wy);
        u_xlat6.x = u_xlat5.x;
        u_xlat2 = vec4f((((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat6.xy)).xy, u_xlat2.zw);
        u_xlat14 = (u_xlat3.xxxx * u_xlat7);
        u_xlat15 = (u_xlat3.yyyy * u_xlat7);
        u_xlat16 = (u_xlat3.zzzz * u_xlat7);
        u_xlat3 = (u_xlat3.wwww * u_xlat7);
        let x_1944 = u_xlat9.xy;
        txVec13 = vec3f(x_1944.x, x_1944.y, u_xlat1.z);
        u_xlat52 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1958 = u_xlat9.zw;
        txVec14 = vec3f(x_1958.x, x_1958.y, u_xlat1.z);
        u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat5.x = (u_xlat5.x * u_xlat14.y);
        u_xlat52 = ((u_xlat14.x * u_xlat52) + u_xlat5.x);
        txVec15 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat52 = ((u_xlat14.z * u_xlat36.x) + u_xlat52);
        let x_2007 = u_xlat12.xy;
        txVec16 = vec3f(x_2007.x, x_2007.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat52 = ((u_xlat14.w * u_xlat36.x) + u_xlat52);
        let x_2029 = u_xlat10.xy;
        txVec17 = vec3f(x_2029.x, x_2029.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat52 = ((u_xlat15.x * u_xlat36.x) + u_xlat52);
        let x_2051 = u_xlat10.zw;
        txVec18 = vec3f(x_2051.x, x_2051.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat52 = ((u_xlat15.y * u_xlat36.x) + u_xlat52);
        let x_2073 = u_xlat11.xy;
        txVec19 = vec3f(x_2073.x, x_2073.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat52 = ((u_xlat15.z * u_xlat36.x) + u_xlat52);
        let x_2095 = u_xlat12.zw;
        txVec20 = vec3f(x_2095.x, x_2095.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat52 = ((u_xlat15.w * u_xlat36.x) + u_xlat52);
        let x_2117 = u_xlat13.xy;
        txVec21 = vec3f(x_2117.x, x_2117.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat52 = ((u_xlat16.x * u_xlat36.x) + u_xlat52);
        let x_2139 = u_xlat13.zw;
        txVec22 = vec3f(x_2139.x, x_2139.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat52 = ((u_xlat16.y * u_xlat36.x) + u_xlat52);
        txVec23 = vec3f(u_xlat22.x, u_xlat22.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat52 = ((u_xlat16.z * u_xlat36.x) + u_xlat52);
        txVec24 = vec3f(u_xlat45.x, u_xlat45.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat52 = ((u_xlat16.w * u_xlat36.x) + u_xlat52);
        let x_2203 = u_xlat8.xy;
        txVec25 = vec3f(x_2203.x, x_2203.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat52 = ((u_xlat3.x * u_xlat36.x) + u_xlat52);
        let x_2225 = u_xlat8.zw;
        txVec26 = vec3f(x_2225.x, x_2225.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat52 = ((u_xlat3.y * u_xlat36.x) + u_xlat52);
        txVec27 = vec3f(u_xlat40.x, u_xlat40.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat52 = ((u_xlat3.z * u_xlat36.x) + u_xlat52);
        let x_2268 = u_xlat2.xy;
        txVec28 = vec3f(x_2268.x, x_2268.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat51 = ((u_xlat3.w * u_xlat2.x) + u_xlat52);
      }
    }
  } else {
    let x_2291 = u_xlat1.xy;
    txVec29 = vec3f(x_2291.x, x_2291.y, u_xlat1.z);
    u_xlat51 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat1.x = (-(x_894.x_MainLightShadowParams.x) + 1.0f);
  u_xlat51 = ((u_xlat51 * x_894.x_MainLightShadowParams.x) + u_xlat1.x);
  u_xlatb1.x = (0.0f >= u_xlat1.z);
  u_xlatb18 = (u_xlat1.z >= 1.0f);
  u_xlatb1.x = (u_xlatb18 | u_xlatb1.x);
  u_xlat51 = select(u_xlat51, 1.0f, u_xlatb1.x);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_229.x_WorldSpaceCameraPos))).xyz, u_xlat1.w);
  u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat1.x = ((u_xlat1.x * x_894.x_MainLightShadowParams.z) + x_894.x_MainLightShadowParams.w);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18.x = (-(u_xlat51) + 1.0f);
  u_xlat51 = ((u_xlat1.x * u_xlat18.x) + u_xlat51);
  u_xlat1.x = dot(u_xlat4.xyz, x_229.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18 = (vec3f(u_xlat51) * x_229.x_MainLightColor.xyz);
  u_xlat4.w = 1.0f;
  u_xlat2.x = dot(x_2396.unity_SHAr, u_xlat4);
  u_xlat2.y = dot(x_2396.unity_SHAg, u_xlat4);
  u_xlat2.z = dot(x_2396.unity_SHAb, u_xlat4);
  u_xlat3 = (u_xlat4.yzzx * u_xlat4.xyzz);
  u_xlat5.x = dot(x_2396.unity_SHBr, u_xlat3);
  u_xlat5.y = dot(x_2396.unity_SHBg, u_xlat3);
  u_xlat5.z = dot(x_2396.unity_SHBb, u_xlat3);
  u_xlat51 = (u_xlat4.y * u_xlat4.y);
  u_xlat51 = ((u_xlat4.x * u_xlat4.x) + -(u_xlat51));
  u_xlat3 = vec4f((((x_2396.unity_SHC.xyz * vec3f(u_xlat51)) + u_xlat5.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + u_xlat3.xyz)).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((u_xlat18 * u_xlat1.xxx) + u_xlat2.xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1.xyz)).xyz, u_xlat0.w);
  SV_Target0 = vec4f(((u_xlat0.xyz * x_70.x_WaterTint.xyz)).xyz, SV_Target0.w);
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(4) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD2 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_74.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0.xyz;
  u_xlat0 = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.x = (u_xlat0.z / x_74.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_74.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  vs_TEXCOORD2 = (u_xlat0.x * x_74.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0.xyz);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD2_1 : f32,
  @location(2)
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
  /* @offset(80) */
  unity_FogColor : vec4f,
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

@group(1) @binding(3) var<uniform> x_962 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

var<private> vs_TEXCOORD2 : f32;

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
  var u_xlatb2 : vec4<bool>;
  var u_xlatu16 : u32;
  var u_xlati16 : i32;
  var u_xlatb16 : bool;
  var u_xlatb17 : bool;
  var txVec0 : vec3f;
  var x_1157 : f32;
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
  u_xlat2 = vec4f(((vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat2.w);
  u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat3 = (vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres1.xyz));
  u_xlat2.y = dot(u_xlat3, u_xlat3);
  u_xlat3 = (vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres2.xyz));
  u_xlat2.z = dot(u_xlat3, u_xlat3);
  u_xlat3 = (vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres3.xyz));
  u_xlat2.w = dot(u_xlat3, u_xlat3);
  u_xlatb2 = (u_xlat2 < x_962.x_CascadeShadowSplitSphereRadii);
  u_xlat3.x = select(-0.0f, -1.0f, u_xlatb2.x);
  u_xlat3.y = select(-0.0f, -1.0f, u_xlatb2.y);
  u_xlat3.z = select(-0.0f, -1.0f, u_xlatb2.z);
  u_xlat2.x = select(0.0f, 1.0f, u_xlatb2.x);
  u_xlat2.y = select(0.0f, 1.0f, u_xlatb2.y);
  u_xlat2.z = select(0.0f, 1.0f, u_xlatb2.z);
  u_xlat2.w = select(0.0f, 1.0f, u_xlatb2.w);
  u_xlat3 = (u_xlat3 + u_xlat2.yzw);
  u_xlat2 = vec4f(u_xlat2.x, max(u_xlat3, vec3f()).xyz);
  u_xlat16 = dot(u_xlat2, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat16 = (-(u_xlat16) + 4.0f);
  u_xlatu16 = u32(u_xlat16);
  u_xlati16 = (bitcast<i32>(u_xlatu16) << bitcast<u32>(2i));
  u_xlat2 = vec4f(((vs_TEXCOORD0.yyy * x_962.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati16 + 1i)].xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_962.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati16].xyz * vs_TEXCOORD0.xxx) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_962.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati16 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + x_962.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati16 + 3i)].xyz)).xyz, u_xlat2.w);
  u_xlatb16 = (0.0f >= u_xlat2.z);
  u_xlatb17 = (u_xlat2.z >= 1.0f);
  let x_1120 = u_xlat2.xy;
  txVec0 = vec3f(x_1120.x, x_1120.y, u_xlat2.z);
  u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlatb16 = (u_xlatb16 | u_xlatb17);
  u_xlat7.x = (-(x_962.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat2.x * x_962.x_MainLightShadowParams.x) + u_xlat7.x);
  if (u_xlatb16) {
    x_1157 = 1.0f;
  } else {
    x_1157 = u_xlat2.x;
  }
  u_xlat16 = x_1157;
  u_xlat2.x = (-(u_xlat16) + 1.0f);
  u_xlat7 = (vs_TEXCOORD0 + -(x_250.x_WorldSpaceCameraPos));
  u_xlat7.x = dot(u_xlat7, u_xlat7);
  u_xlat7.x = ((u_xlat7.x * x_962.x_MainLightShadowParams.z) + x_962.x_MainLightShadowParams.w);
  u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
  u_xlat16 = ((u_xlat7.x * u_xlat2.x) + u_xlat16);
  u_xlat2 = vec4f(((vec3f(u_xlat16) * x_250.x_MainLightColor.xyz)).xyz, u_xlat2.w);
  u_xlat0 = vec4f((((u_xlat2.xyz * u_xlat0.xxx) + u_xlat5)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((u_xlat0.xyz * x_142.x_WaterTint.xyz) + -(x_250.unity_FogColor.xyz))).xyz, u_xlat0.w);
  u_xlat15 = exp2(-(vs_TEXCOORD2));
  u_xlat15 = min(u_xlat15, 1.0f);
  SV_Target0 = vec4f((((vec3f(u_xlat15) * u_xlat0.xyz) + x_250.unity_FogColor.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD1_param : vec3f, @location(1) vs_TEXCOORD2_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(4) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD2 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_74.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0.xyz;
  u_xlat0 = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.x = (u_xlat0.z / x_74.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_74.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  vs_TEXCOORD2 = (u_xlat0.x * x_74.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0.xyz);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD2_1 : f32,
  @location(2)
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
  /* @offset(80) */
  unity_FogColor : vec4f,
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

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(2) var<uniform> x_70 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_229 : PGlobals;

@group(0) @binding(1) var x_SandTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SandTex : sampler;

@group(0) @binding(2) var x_SandNormal : texture_2d<f32>;

@group(0) @binding(5) var sampler_SandNormal : sampler;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(3) var<uniform> x_894 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_2396 : UnityPerDraw;

var<private> vs_TEXCOORD2 : f32;

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

const x_399 = vec2f(0.5f);

const x_541 = vec2f(2.0f);

const x_1183 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1207 = vec2f(1.0f);

const x_1244 = vec2f(0.15999999642372131348f);

const x_1314 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1719 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1722 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1729 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1767 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat34 : f32;
  var u_xlat51 : f32;
  var u_xlat1 : vec4f;
  var u_xlatu1 : vec2u;
  var u_xlati18 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlati1 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var indexable : array<vec4u, 16u>;
  var u_xlatb51 : bool;
  var u_xlat18 : vec3f;
  var u_xlat52 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat36 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat17 : f32;
  var u_xlatb1 : vec4<bool>;
  var u_xlatu51 : u32;
  var u_xlati51 : i32;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb52 : bool;
  var u_xlat39 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat19 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat20 : vec3f;
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
  var txVec15 : vec3f;
  var txVec16 : vec3f;
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
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_51 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_51.x, x_51.y, x_51.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec4f(((vs_TEXCOORD0.xz + -(x_70.x_Vent.xz))).xy, u_xlat0.zw);
  u_xlat34 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat34 = sqrt(u_xlat34);
  u_xlat51 = (x_70.x_ConeRadius + 0.12999999523162841797f);
  u_xlat51 = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat51);
  u_xlat1.x = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat34);
  u_xlat51 = (1.0f / u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((-(u_xlat1.x) * u_xlat51) + 1.0f);
  u_xlatu1 = vec2u(hlslcc_FragCoord.xy);
  let x_146 = u_xlatu1.y;
  param = 0i;
  param_1 = bitcast<i32>(x_146);
  param_2 = 2i;
  param_3 = 2i;
  let x_153 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati18 = x_153;
  let x_156 = u_xlatu1.x;
  param_4 = u_xlati18;
  param_5 = bitcast<i32>(x_156);
  param_6 = 0i;
  param_7 = 2i;
  let x_163 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
  u_xlati1 = x_163;
  let x_200 = u_xlati1;
  indexable = array<vec4u, 16u>(vec4u(), vec4u(1090519040u, 0u, 0u, 0u), vec4u(1073741824u, 0u, 0u, 0u), vec4u(1092616192u, 0u, 0u, 0u), vec4u(1094713344u, 0u, 0u, 0u), vec4u(1082130432u, 0u, 0u, 0u), vec4u(1096810496u, 0u, 0u, 0u), vec4u(1086324736u, 0u, 0u, 0u), vec4u(1077936128u, 0u, 0u, 0u), vec4u(1093664768u, 0u, 0u, 0u), vec4u(1065353216u, 0u, 0u, 0u), vec4u(1091567616u, 0u, 0u, 0u), vec4u(1097859072u, 0u, 0u, 0u), vec4u(1088421888u, 0u, 0u, 0u), vec4u(1095761920u, 0u, 0u, 0u), vec4u(1084227584u, 0u, 0u, 0u));
  u_xlat1.x = (0.5f + bitcast<f32>(indexable[x_200].x));
  u_xlat51 = ((-(u_xlat1.x) * 0.0625f) + u_xlat51);
  u_xlatb51 = (u_xlat51 < 0.0f);
  if (((select(0i, 1i, u_xlatb51) * -1i) != 0i)) {
    discard;
  }
  u_xlat51 = (x_229.x_Time.y * x_70.x_ChurnSpeed);
  u_xlat1.x = (x_70.x_Vent.w * 0.80000001192092895508f);
  u_xlat18 = vec3f((((-(x_70.x_Vent.ww) * vec2f(0.60000002384185791016f, 0.30000001192092895508f)) + vec2f(u_xlat34))).xy, u_xlat18.z);
  u_xlat52 = (1.0f / x_70.x_Vent.w);
  u_xlat18.x = (u_xlat52 * u_xlat18.x);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat52 = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat18.x = ((-(u_xlat52) * u_xlat18.x) + 1.0f);
  u_xlat2 = vec4f(((vs_TEXCOORD0.xz / vec2f(x_70.x_Tile))).xy, u_xlat2.zw);
  u_xlat3 = (vec4f(u_xlat51) * vec4f(1.70000004768371582031f, 2.29999995231628417969f, 1.89999997615814208984f, 1.10000002384185791016f));
  u_xlat36 = ((u_xlat2.yy * vec2f(9.1000003814697265625f, 6.09999990463256835938f)) + u_xlat3.xw);
  u_xlat36 = sin(u_xlat36);
  u_xlat3 = vec4f((((u_xlat2.xx * vec2f(5.30000019073486328125f, 8.30000019073486328125f)) + -(u_xlat3.yz))).xy, u_xlat3.zw);
  u_xlat52 = sin(u_xlat3.x);
  u_xlat4.x = (u_xlat52 + u_xlat36.x);
  u_xlat52 = cos(u_xlat3.y);
  u_xlat4.y = (u_xlat36.y + u_xlat52);
  u_xlat52 = (u_xlat2.y + u_xlat2.x);
  u_xlat36 = (vec2f(u_xlat51) * vec2f(3.09999990463256835938f, 2.70000004768371582031f));
  u_xlat51 = ((u_xlat52 * 13.0f) + u_xlat36.x);
  u_xlat3.x = sin(u_xlat51);
  u_xlat51 = (-(u_xlat2.y) + u_xlat2.x);
  u_xlat51 = ((u_xlat51 * 11.0f) + -(u_xlat36.y));
  u_xlat3.y = cos(u_xlat51);
  u_xlat51 = max(u_xlat34, 0.00100000004749745131f);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(u_xlat51))).xy, u_xlat0.zw);
  u_xlat36 = (u_xlat3.xy * vec2f(0.34999999403953552246f));
  u_xlat36 = ((u_xlat4.xy * x_399) + u_xlat36);
  u_xlat36 = (u_xlat36 * vec2f(x_70.x_Churn));
  u_xlat36 = (u_xlat18.xx * u_xlat36);
  u_xlat36 = (u_xlat36 / vec2f(x_70.x_Tile));
  u_xlat2 = vec4f(((u_xlat36 + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec4f(((x_229.x_Time.yyy * vec3f(0.07000000029802322388f, 5.02650022506713867188f, 1.29999995231628417969f))).xyz, u_xlat3.w);
  u_xlat51 = fract(u_xlat3.x);
  u_xlat0 = vec4f(((vec2f(u_xlat51) * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy * vec2f(0.03999999910593032837f))).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(x_70.x_Tile))).xy, u_xlat0.zw);
  u_xlat51 = (-(u_xlat18.x) + 1.0f);
  u_xlat0 = vec4f((((-(u_xlat0.xy) * vec2f(u_xlat51)) + u_xlat2.xy)).xy, u_xlat0.zw);
  let x_484 = u_xlat0;
  let x_487 = x_229.x_GlobalMipBias.x;
  let x_488 = textureSampleBias(x_SandTex, sampler_SandTex, x_484.xy, x_487);
  u_xlat2 = vec4f(x_488.xyz.xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * x_70.x_Tint.xyz)).xyz, u_xlat2.w);
  let x_505 = u_xlat0;
  let x_508 = x_229.x_GlobalMipBias.x;
  let x_509 = textureSampleBias(x_SandNormal, sampler_SandNormal, x_505.xy, x_508);
  let x_510 = x_509.xyw;
  u_xlat0 = vec4f(x_510.xy, u_xlat0.z, x_510.z);
  u_xlat18.z = ((-(u_xlat18.x) * 0.60000002384185791016f) + 1.0f);
  let x_529 = (u_xlat18.xz * vec2f(x_70.x_Lifted, x_70.x_NormalStrength));
  u_xlat18 = vec3f(x_529.x, u_xlat18.y, x_529.y);
  u_xlat0.x = (u_xlat0.x * u_xlat0.w);
  u_xlat0 = vec4f((((u_xlat0.xy * x_541) + vec2f(-1.0f))).xy, u_xlat0.zw);
  u_xlat51 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat51 = min(u_xlat51, 1.0f);
  u_xlat51 = (-(u_xlat51) + 1.0f);
  u_xlat51 = sqrt(u_xlat51);
  u_xlat51 = max(u_xlat51, 0.0000000000000001f);
  u_xlat0 = vec4f(((u_xlat18.zz * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat52 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((vec3f(u_xlat52) * vs_TEXCOORD1)).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((u_xlat4.zxy * vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat4.yzx * vec3f(1.0f, 0.0f, 0.0f)) + -(u_xlat5.xyz))).xyz, u_xlat5.w);
  u_xlat52 = dot(u_xlat5.xy, u_xlat5.xy);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat5 = vec4f(((vec3f(u_xlat52) * u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat5.yzx * u_xlat4.zxy) + -(u_xlat6.xyz))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat0.yyy * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat0.xxx) + u_xlat6.xyz)).xyz, u_xlat5.w);
  let x_656 = ((u_xlat4.xyz * vec3f(u_xlat51)) + u_xlat5.xyz);
  u_xlat0 = vec4f(x_656.xy, u_xlat0.z, x_656.z);
  u_xlat52 = dot(u_xlat0.xyw, u_xlat0.xyw);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((u_xlat0.xyw * vec3f(u_xlat52))).xyz, u_xlat4.w);
  u_xlat0.x = (1.0f / u_xlat1.x);
  u_xlat0.x = (u_xlat0.x * u_xlat18.y);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat17 = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat17) * u_xlat0.x) + 1.0f);
  u_xlat17 = sin(u_xlat3.z);
  u_xlat17 = ((u_xlat17 * 1.70000004768371582031f) + u_xlat3.y);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = ((u_xlat17 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat51 = ((-(u_xlat17) * 0.25f) + 1.0f);
  u_xlat51 = (u_xlat51 * u_xlat0.x);
  u_xlat51 = ((u_xlat51 * -(x_70.x_ThroatDark)) + 1.0f);
  let x_739 = (vec3f(u_xlat51) * u_xlat2.xyz);
  u_xlat1 = vec4f(x_739.x, u_xlat1.y, x_739.yz);
  u_xlat17 = (u_xlat17 * u_xlat18.x);
  u_xlat0.x = ((-(u_xlat0.x) * 0.5f) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat17);
  u_xlat2 = vec4f((((-(u_xlat2.xyz) * vec3f(u_xlat51)) + vec3f(0.93000000715255737305f, 0.91000002622604370117f, 0.85000002384185791016f))).xyz, u_xlat2.w);
  let x_777 = ((u_xlat0.xxx * u_xlat2.xyz) + u_xlat1.xzw);
  u_xlat0 = vec4f(x_777.xy, u_xlat0.z, x_777.z);
  u_xlat1.x = max(x_70.x_ConeRadius, 0.05000000074505805969f);
  u_xlat1.x = (u_xlat34 / u_xlat1.x);
  u_xlat18.x = (x_70.x_ConeRadius + -(x_70.x_Vent.w));
  u_xlat34 = (u_xlat34 + -(x_70.x_Vent.w));
  u_xlat18.x = (1.0f / u_xlat18.x);
  u_xlat34 = (u_xlat34 * u_xlat18.x);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat18.x = ((u_xlat34 * -2.0f) + 3.0f);
  u_xlat34 = (u_xlat34 * u_xlat34);
  u_xlat34 = ((-(u_xlat18.x) * u_xlat34) + 1.0f);
  u_xlat34 = ((u_xlat34 * 0.07999999821186065674f) + 1.0f);
  u_xlat0 = vec4f(((vec3f(u_xlat34) * u_xlat0.xyw)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat1.xx + vec2f(-0.63999998569488525391f, -0.40000000596046447754f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(10.0f, 8.3333339691162109375f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(-1.44269502162933349609f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(exp2(u_xlat1.xy).xy, u_xlat1.zw);
  u_xlat51 = ((u_xlat1.x * 0.28000000119209289551f) + 1.0f);
  u_xlat51 = ((-(u_xlat1.y) * 0.25f) + u_xlat51);
  u_xlat0 = vec4f(((vec3f(u_xlat51) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat3.w);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat5.w);
  u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat1.y = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat1.z = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat1.w = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlatb1 = (u_xlat1 < x_894.x_CascadeShadowSplitSphereRadii);
  u_xlat2.x = select(0.0f, 1.0f, u_xlatb1.x);
  u_xlat2.y = select(0.0f, 1.0f, u_xlatb1.y);
  u_xlat2.z = select(0.0f, 1.0f, u_xlatb1.z);
  u_xlat2.w = select(0.0f, 1.0f, u_xlatb1.w);
  u_xlat1.x = select(-0.0f, -1.0f, u_xlatb1.x);
  u_xlat1.y = select(-0.0f, -1.0f, u_xlatb1.y);
  u_xlat1.z = select(-0.0f, -1.0f, u_xlatb1.z);
  u_xlat1 = vec4f(((u_xlat1.xyz + u_xlat2.yzw)).xyz, u_xlat1.w);
  u_xlat2 = vec4f(u_xlat2.x, max(u_xlat1.xyz, vec3f()).xyz);
  u_xlat51 = dot(u_xlat2, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat51 = (-(u_xlat51) + 4.0f);
  u_xlatu51 = u32(u_xlat51);
  u_xlati51 = (bitcast<i32>(u_xlatu51) << bitcast<u32>(2i));
  u_xlat1 = vec4f(((vs_TEXCOORD0.yyy * x_894.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 1i)].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_894.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati51].xyz * vs_TEXCOORD0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_894.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_894.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 3i)].xyz)).xyz, u_xlat1.w);
  u_xlatb51 = (0.0f < x_894.x_MainLightShadowParams.y);
  if (u_xlatb51) {
    u_xlatb51 = (x_894.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb51) {
      u_xlat2 = (u_xlat1.xyxy + x_894.x_MainLightShadowOffset0);
      let x_1078 = u_xlat2.xy;
      txVec0 = vec3f(x_1078.x, x_1078.y, u_xlat1.z);
      u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1098 = u_xlat2.zw;
      txVec1 = vec3f(x_1098.x, x_1098.y, u_xlat1.z);
      u_xlat3.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat2 = (u_xlat1.xyxy + x_894.x_MainLightShadowOffset1);
      let x_1118 = u_xlat2.xy;
      txVec2 = vec3f(x_1118.x, x_1118.y, u_xlat1.z);
      u_xlat3.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1133 = u_xlat2.zw;
      txVec3 = vec3f(x_1133.x, x_1133.y, u_xlat1.z);
      u_xlat3.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat51 = dot(u_xlat3, vec4f(0.25f));
    } else {
      u_xlatb52 = (x_894.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb52) {
        u_xlat2 = vec4f((((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1183);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1193 = (u_xlat5.yw * vec2f(0.07999999821186065674f));
        u_xlat3 = vec4f(x_1193.x, u_xlat3.y, x_1193.y, u_xlat3.w);
        u_xlat5 = vec4f((((u_xlat5.xz * x_399) + -(u_xlat36))).xy, u_xlat5.zw);
        u_xlat39 = (-(u_xlat36) + x_1207);
        u_xlat6 = vec4f(min(u_xlat36, vec2f()).xy, u_xlat6.zw);
        u_xlat6 = vec4f((((-(u_xlat6.xy) * u_xlat6.xy) + u_xlat39)).xy, u_xlat6.zw);
        u_xlat36 = max(u_xlat36, vec2f());
        u_xlat36 = ((-(u_xlat36) * u_xlat36) + u_xlat3.yw);
        u_xlat6 = vec4f(((u_xlat6.xy + x_1207)).xy, u_xlat6.zw);
        u_xlat36 = (u_xlat36 + x_1207);
        u_xlat7 = vec4f(((u_xlat5.xy * x_1244)).xy, u_xlat7.zw);
        u_xlat5 = vec4f(((u_xlat39 * x_1244)).xy, u_xlat5.zw);
        u_xlat6 = vec4f(((u_xlat6.xy * x_1244)).xy, u_xlat6.zw);
        u_xlat8 = vec4f(((u_xlat36 * x_1244)).xy, u_xlat8.zw);
        u_xlat36 = (u_xlat3.yw * x_1244);
        u_xlat7.z = u_xlat6.x;
        u_xlat7.w = u_xlat36.x;
        u_xlat5.z = u_xlat8.x;
        u_xlat5.w = u_xlat3.x;
        u_xlat9 = (u_xlat5.zwxz + u_xlat7.zwxz);
        u_xlat6.z = u_xlat7.y;
        u_xlat6.w = u_xlat36.y;
        u_xlat8.z = u_xlat5.y;
        u_xlat8.w = u_xlat3.z;
        u_xlat3 = vec4f(((u_xlat6.zyw + u_xlat8.zyw)).xyz, u_xlat3.w);
        u_xlat5 = vec4f(((u_xlat5.xzw / u_xlat9.zwy)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat5.xyz + x_1314)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat8.zyw / u_xlat3.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f(((u_xlat6.xyz + x_1314)).xyz, u_xlat6.w);
        u_xlat5 = vec4f(((u_xlat5.yxz * x_894.x_MainLightShadowmapSize.xxx)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_894.x_MainLightShadowmapSize.yyy)).xyz, u_xlat6.w);
        u_xlat5.w = u_xlat6.x;
        u_xlat7 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.ywxw);
        u_xlat36 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat5.zw);
        u_xlat6.w = u_xlat5.y;
        let x_1371 = u_xlat6.yz;
        u_xlat5 = vec4f(u_xlat5.x, x_1371.x, u_xlat5.z, x_1371.y);
        u_xlat8 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyzy);
        u_xlat6 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat6.wywz);
        u_xlat5 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.xwzw);
        u_xlat10 = (u_xlat3.xxxy * u_xlat9.zwyz);
        u_xlat11 = (u_xlat3.yyzz * u_xlat9);
        u_xlat52 = (u_xlat3.z * u_xlat9.y);
        let x_1419 = u_xlat7.xy;
        txVec4 = vec3f(x_1419.x, x_1419.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1434 = u_xlat7.zw;
        txVec5 = vec3f(x_1434.x, x_1434.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat19 = (u_xlat19 * u_xlat10.y);
        u_xlat2.x = ((u_xlat10.x * u_xlat2.x) + u_xlat19);
        txVec6 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat2.x = ((u_xlat10.z * u_xlat19) + u_xlat2.x);
        let x_1482 = u_xlat6.xy;
        txVec7 = vec3f(x_1482.x, x_1482.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat2.x = ((u_xlat10.w * u_xlat19) + u_xlat2.x);
        let x_1504 = u_xlat8.xy;
        txVec8 = vec3f(x_1504.x, x_1504.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat2.x = ((u_xlat11.x * u_xlat19) + u_xlat2.x);
        let x_1526 = u_xlat8.zw;
        txVec9 = vec3f(x_1526.x, x_1526.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat2.x = ((u_xlat11.y * u_xlat19) + u_xlat2.x);
        let x_1548 = u_xlat6.zw;
        txVec10 = vec3f(x_1548.x, x_1548.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat2.x = ((u_xlat11.z * u_xlat19) + u_xlat2.x);
        let x_1570 = u_xlat5.xy;
        txVec11 = vec3f(x_1570.x, x_1570.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat2.x = ((u_xlat11.w * u_xlat19) + u_xlat2.x);
        let x_1592 = u_xlat5.zw;
        txVec12 = vec3f(x_1592.x, x_1592.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat51 = ((u_xlat52 * u_xlat19) + u_xlat2.x);
      } else {
        u_xlat2 = vec4f((((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1183);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1647 = (u_xlat5.yw * vec2f(0.04081600159406661987f));
        u_xlat6 = vec4f(u_xlat6.x, x_1647.x, u_xlat6.z, x_1647.y);
        let x_1655 = ((u_xlat5.xz * x_399) + -(u_xlat36));
        u_xlat3 = vec4f(x_1655.x, u_xlat3.y, x_1655.y, u_xlat3.w);
        u_xlat5 = vec4f(((-(u_xlat36) + x_1207)).xy, u_xlat5.zw);
        u_xlat39 = min(u_xlat36, vec2f());
        u_xlat5 = vec4f((((-(u_xlat39) * u_xlat39) + u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat39 = max(u_xlat36, vec2f());
        let x_1683 = ((-(u_xlat39) * u_xlat39) + u_xlat3.yw);
        u_xlat20 = vec3f(x_1683.x, u_xlat20.y, x_1683.y);
        u_xlat5 = vec4f(((u_xlat5.xy + x_541)).xy, u_xlat5.zw);
        let x_1693 = (u_xlat20.xz + x_541);
        u_xlat3 = vec4f(u_xlat3.x, x_1693.x, u_xlat3.z, x_1693.y);
        u_xlat7.z = (u_xlat3.y * 0.08163200318813323975f);
        u_xlat8 = vec4f(((u_xlat3.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat8.w);
        u_xlat3 = vec4f(((u_xlat5.xy * vec2f(0.08163200318813323975f))).xy, u_xlat3.zw);
        u_xlat7.x = u_xlat8.y;
        let x_1723 = ((u_xlat36.xx * x_1719) + x_1722);
        u_xlat7 = vec4f(u_xlat7.x, x_1723.x, u_xlat7.z, x_1723.y);
        let x_1730 = ((u_xlat36.xx * x_1719) + x_1729);
        u_xlat5 = vec4f(x_1730.x, u_xlat5.y, x_1730.y, u_xlat5.w);
        u_xlat5.y = u_xlat3.x;
        u_xlat5.w = u_xlat6.y;
        u_xlat7 = (u_xlat5 + u_xlat7);
        let x_1745 = ((u_xlat36.yy * x_1719) + x_1722);
        u_xlat8 = vec4f(u_xlat8.x, x_1745.x, u_xlat8.z, x_1745.y);
        let x_1751 = ((u_xlat36.yy * x_1719) + x_1729);
        u_xlat6 = vec4f(x_1751.x, u_xlat6.y, x_1751.y, u_xlat6.w);
        u_xlat6.y = u_xlat3.y;
        u_xlat3 = (u_xlat6 + u_xlat8);
        u_xlat5 = (u_xlat5 / u_xlat7);
        u_xlat5 = (u_xlat5 + x_1767);
        u_xlat6 = (u_xlat6 / u_xlat3);
        u_xlat6 = (u_xlat6 + x_1767);
        u_xlat5 = (u_xlat5.wxyz * x_894.x_MainLightShadowmapSize.xxxx);
        u_xlat6 = (u_xlat6.xwyz * x_894.x_MainLightShadowmapSize.yyyy);
        let x_1787 = u_xlat5.yzw;
        u_xlat8 = vec4f(x_1787.x, u_xlat8.y, x_1787.yz);
        u_xlat8.y = u_xlat6.x;
        u_xlat9 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat36 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.y = u_xlat8.y;
        u_xlat8.y = u_xlat6.z;
        u_xlat10 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat11 = vec4f((((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat8.wy)).xy, u_xlat11.zw);
        u_xlat5.z = u_xlat8.y;
        u_xlat12 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyxz);
        u_xlat8.y = u_xlat6.w;
        u_xlat13 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat22 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.w = u_xlat8.y;
        u_xlat45 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat5.xw);
        let x_1887 = u_xlat8.xzw;
        u_xlat6 = vec4f(x_1887.x, u_xlat6.y, x_1887.yz);
        u_xlat8 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat6.xyzy);
        u_xlat40 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat6.wy);
        u_xlat6.x = u_xlat5.x;
        u_xlat2 = vec4f((((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat6.xy)).xy, u_xlat2.zw);
        u_xlat14 = (u_xlat3.xxxx * u_xlat7);
        u_xlat15 = (u_xlat3.yyyy * u_xlat7);
        u_xlat16 = (u_xlat3.zzzz * u_xlat7);
        u_xlat3 = (u_xlat3.wwww * u_xlat7);
        let x_1944 = u_xlat9.xy;
        txVec13 = vec3f(x_1944.x, x_1944.y, u_xlat1.z);
        u_xlat52 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1958 = u_xlat9.zw;
        txVec14 = vec3f(x_1958.x, x_1958.y, u_xlat1.z);
        u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat5.x = (u_xlat5.x * u_xlat14.y);
        u_xlat52 = ((u_xlat14.x * u_xlat52) + u_xlat5.x);
        txVec15 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat52 = ((u_xlat14.z * u_xlat36.x) + u_xlat52);
        let x_2007 = u_xlat12.xy;
        txVec16 = vec3f(x_2007.x, x_2007.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat52 = ((u_xlat14.w * u_xlat36.x) + u_xlat52);
        let x_2029 = u_xlat10.xy;
        txVec17 = vec3f(x_2029.x, x_2029.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat52 = ((u_xlat15.x * u_xlat36.x) + u_xlat52);
        let x_2051 = u_xlat10.zw;
        txVec18 = vec3f(x_2051.x, x_2051.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat52 = ((u_xlat15.y * u_xlat36.x) + u_xlat52);
        let x_2073 = u_xlat11.xy;
        txVec19 = vec3f(x_2073.x, x_2073.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat52 = ((u_xlat15.z * u_xlat36.x) + u_xlat52);
        let x_2095 = u_xlat12.zw;
        txVec20 = vec3f(x_2095.x, x_2095.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat52 = ((u_xlat15.w * u_xlat36.x) + u_xlat52);
        let x_2117 = u_xlat13.xy;
        txVec21 = vec3f(x_2117.x, x_2117.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat52 = ((u_xlat16.x * u_xlat36.x) + u_xlat52);
        let x_2139 = u_xlat13.zw;
        txVec22 = vec3f(x_2139.x, x_2139.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat52 = ((u_xlat16.y * u_xlat36.x) + u_xlat52);
        txVec23 = vec3f(u_xlat22.x, u_xlat22.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat52 = ((u_xlat16.z * u_xlat36.x) + u_xlat52);
        txVec24 = vec3f(u_xlat45.x, u_xlat45.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat52 = ((u_xlat16.w * u_xlat36.x) + u_xlat52);
        let x_2203 = u_xlat8.xy;
        txVec25 = vec3f(x_2203.x, x_2203.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat52 = ((u_xlat3.x * u_xlat36.x) + u_xlat52);
        let x_2225 = u_xlat8.zw;
        txVec26 = vec3f(x_2225.x, x_2225.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat52 = ((u_xlat3.y * u_xlat36.x) + u_xlat52);
        txVec27 = vec3f(u_xlat40.x, u_xlat40.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat52 = ((u_xlat3.z * u_xlat36.x) + u_xlat52);
        let x_2268 = u_xlat2.xy;
        txVec28 = vec3f(x_2268.x, x_2268.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat51 = ((u_xlat3.w * u_xlat2.x) + u_xlat52);
      }
    }
  } else {
    let x_2291 = u_xlat1.xy;
    txVec29 = vec3f(x_2291.x, x_2291.y, u_xlat1.z);
    u_xlat51 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat1.x = (-(x_894.x_MainLightShadowParams.x) + 1.0f);
  u_xlat51 = ((u_xlat51 * x_894.x_MainLightShadowParams.x) + u_xlat1.x);
  u_xlatb1.x = (0.0f >= u_xlat1.z);
  u_xlatb18 = (u_xlat1.z >= 1.0f);
  u_xlatb1.x = (u_xlatb18 | u_xlatb1.x);
  u_xlat51 = select(u_xlat51, 1.0f, u_xlatb1.x);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_229.x_WorldSpaceCameraPos))).xyz, u_xlat1.w);
  u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat1.x = ((u_xlat1.x * x_894.x_MainLightShadowParams.z) + x_894.x_MainLightShadowParams.w);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18.x = (-(u_xlat51) + 1.0f);
  u_xlat51 = ((u_xlat1.x * u_xlat18.x) + u_xlat51);
  u_xlat1.x = dot(u_xlat4.xyz, x_229.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18 = (vec3f(u_xlat51) * x_229.x_MainLightColor.xyz);
  u_xlat4.w = 1.0f;
  u_xlat2.x = dot(x_2396.unity_SHAr, u_xlat4);
  u_xlat2.y = dot(x_2396.unity_SHAg, u_xlat4);
  u_xlat2.z = dot(x_2396.unity_SHAb, u_xlat4);
  u_xlat3 = (u_xlat4.yzzx * u_xlat4.xyzz);
  u_xlat5.x = dot(x_2396.unity_SHBr, u_xlat3);
  u_xlat5.y = dot(x_2396.unity_SHBg, u_xlat3);
  u_xlat5.z = dot(x_2396.unity_SHBb, u_xlat3);
  u_xlat51 = (u_xlat4.y * u_xlat4.y);
  u_xlat51 = ((u_xlat4.x * u_xlat4.x) + -(u_xlat51));
  u_xlat3 = vec4f((((x_2396.unity_SHC.xyz * vec3f(u_xlat51)) + u_xlat5.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + u_xlat3.xyz)).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((u_xlat18 * u_xlat1.xxx) + u_xlat2.xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1.xyz)).xyz, u_xlat0.w);
  u_xlat51 = exp2(-(vs_TEXCOORD2));
  u_xlat51 = min(u_xlat51, 1.0f);
  u_xlat0 = vec4f((((u_xlat0.xyz * x_70.x_WaterTint.xyz) + -(x_229.unity_FogColor.xyz))).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((vec3f(u_xlat51) * u_xlat0.xyz) + x_229.unity_FogColor.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD1_param : vec3f, @location(1) vs_TEXCOORD2_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(4) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD2 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_74.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0.xyz;
  u_xlat0 = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.x = (u_xlat0.z / x_74.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_74.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  vs_TEXCOORD2 = (u_xlat0.x * x_74.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0.xyz);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD2_1 : f32,
  @location(2)
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
  /* @offset(80) */
  unity_FogColor : vec4f,
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

@group(1) @binding(3) var<uniform> x_962 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

var<private> vs_TEXCOORD2 : f32;

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
  var u_xlatb2 : vec4<bool>;
  var u_xlatu16 : u32;
  var u_xlati16 : i32;
  var u_xlatb16 : bool;
  var u_xlatb17 : bool;
  var txVec0 : vec3f;
  var x_1157 : f32;
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
  u_xlat2 = vec4f(((vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat2.w);
  u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat3 = (vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres1.xyz));
  u_xlat2.y = dot(u_xlat3, u_xlat3);
  u_xlat3 = (vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres2.xyz));
  u_xlat2.z = dot(u_xlat3, u_xlat3);
  u_xlat3 = (vs_TEXCOORD0 + -(x_962.x_CascadeShadowSplitSpheres3.xyz));
  u_xlat2.w = dot(u_xlat3, u_xlat3);
  u_xlatb2 = (u_xlat2 < x_962.x_CascadeShadowSplitSphereRadii);
  u_xlat3.x = select(-0.0f, -1.0f, u_xlatb2.x);
  u_xlat3.y = select(-0.0f, -1.0f, u_xlatb2.y);
  u_xlat3.z = select(-0.0f, -1.0f, u_xlatb2.z);
  u_xlat2.x = select(0.0f, 1.0f, u_xlatb2.x);
  u_xlat2.y = select(0.0f, 1.0f, u_xlatb2.y);
  u_xlat2.z = select(0.0f, 1.0f, u_xlatb2.z);
  u_xlat2.w = select(0.0f, 1.0f, u_xlatb2.w);
  u_xlat3 = (u_xlat3 + u_xlat2.yzw);
  u_xlat2 = vec4f(u_xlat2.x, max(u_xlat3, vec3f()).xyz);
  u_xlat16 = dot(u_xlat2, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat16 = (-(u_xlat16) + 4.0f);
  u_xlatu16 = u32(u_xlat16);
  u_xlati16 = (bitcast<i32>(u_xlatu16) << bitcast<u32>(2i));
  u_xlat2 = vec4f(((vs_TEXCOORD0.yyy * x_962.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati16 + 1i)].xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_962.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati16].xyz * vs_TEXCOORD0.xxx) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_962.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati16 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + x_962.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati16 + 3i)].xyz)).xyz, u_xlat2.w);
  u_xlatb16 = (0.0f >= u_xlat2.z);
  u_xlatb17 = (u_xlat2.z >= 1.0f);
  let x_1120 = u_xlat2.xy;
  txVec0 = vec3f(x_1120.x, x_1120.y, u_xlat2.z);
  u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlatb16 = (u_xlatb16 | u_xlatb17);
  u_xlat7.x = (-(x_962.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat2.x * x_962.x_MainLightShadowParams.x) + u_xlat7.x);
  if (u_xlatb16) {
    x_1157 = 1.0f;
  } else {
    x_1157 = u_xlat2.x;
  }
  u_xlat16 = x_1157;
  u_xlat2.x = (-(u_xlat16) + 1.0f);
  u_xlat7 = (vs_TEXCOORD0 + -(x_250.x_WorldSpaceCameraPos));
  u_xlat7.x = dot(u_xlat7, u_xlat7);
  u_xlat7.x = ((u_xlat7.x * x_962.x_MainLightShadowParams.z) + x_962.x_MainLightShadowParams.w);
  u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
  u_xlat16 = ((u_xlat7.x * u_xlat2.x) + u_xlat16);
  u_xlat2 = vec4f(((vec3f(u_xlat16) * x_250.x_MainLightColor.xyz)).xyz, u_xlat2.w);
  u_xlat0 = vec4f((((u_xlat2.xyz * u_xlat0.xxx) + u_xlat5)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((u_xlat0.xyz * x_142.x_WaterTint.xyz) + -(x_250.unity_FogColor.xyz))).xyz, u_xlat0.w);
  u_xlat15 = (vs_TEXCOORD2 * -(vs_TEXCOORD2));
  u_xlat15 = exp2(u_xlat15);
  SV_Target0 = vec4f((((vec3f(u_xlat15) * u_xlat0.xyz) + x_250.unity_FogColor.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD1_param : vec3f, @location(1) vs_TEXCOORD2_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(4) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD2 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_74.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0.xyz;
  u_xlat0 = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.x = (u_xlat0.z / x_74.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_74.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  vs_TEXCOORD2 = (u_xlat0.x * x_74.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0.xyz);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD2_1 : f32,
  @location(2)
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
  /* @offset(80) */
  unity_FogColor : vec4f,
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

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(2) var<uniform> x_70 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_229 : PGlobals;

@group(0) @binding(1) var x_SandTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SandTex : sampler;

@group(0) @binding(2) var x_SandNormal : texture_2d<f32>;

@group(0) @binding(5) var sampler_SandNormal : sampler;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(3) var<uniform> x_894 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_2396 : UnityPerDraw;

var<private> vs_TEXCOORD2 : f32;

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

const x_399 = vec2f(0.5f);

const x_541 = vec2f(2.0f);

const x_1183 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1207 = vec2f(1.0f);

const x_1244 = vec2f(0.15999999642372131348f);

const x_1314 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1719 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1722 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1729 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1767 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlat34 : f32;
  var u_xlat51 : f32;
  var u_xlat1 : vec4f;
  var u_xlatu1 : vec2u;
  var u_xlati18 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlati1 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var indexable : array<vec4u, 16u>;
  var u_xlatb51 : bool;
  var u_xlat18 : vec3f;
  var u_xlat52 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat36 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat17 : f32;
  var u_xlatb1 : vec4<bool>;
  var u_xlatu51 : u32;
  var u_xlati51 : i32;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb52 : bool;
  var u_xlat39 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat19 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat20 : vec3f;
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
  var txVec15 : vec3f;
  var txVec16 : vec3f;
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
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_51 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_51.x, x_51.y, x_51.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec4f(((vs_TEXCOORD0.xz + -(x_70.x_Vent.xz))).xy, u_xlat0.zw);
  u_xlat34 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat34 = sqrt(u_xlat34);
  u_xlat51 = (x_70.x_ConeRadius + 0.12999999523162841797f);
  u_xlat51 = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat51);
  u_xlat1.x = ((-(x_70.x_ConeRadius) * 0.94999998807907104492f) + u_xlat34);
  u_xlat51 = (1.0f / u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat1.x);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = ((-(u_xlat1.x) * u_xlat51) + 1.0f);
  u_xlatu1 = vec2u(hlslcc_FragCoord.xy);
  let x_146 = u_xlatu1.y;
  param = 0i;
  param_1 = bitcast<i32>(x_146);
  param_2 = 2i;
  param_3 = 2i;
  let x_153 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati18 = x_153;
  let x_156 = u_xlatu1.x;
  param_4 = u_xlati18;
  param_5 = bitcast<i32>(x_156);
  param_6 = 0i;
  param_7 = 2i;
  let x_163 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
  u_xlati1 = x_163;
  let x_200 = u_xlati1;
  indexable = array<vec4u, 16u>(vec4u(), vec4u(1090519040u, 0u, 0u, 0u), vec4u(1073741824u, 0u, 0u, 0u), vec4u(1092616192u, 0u, 0u, 0u), vec4u(1094713344u, 0u, 0u, 0u), vec4u(1082130432u, 0u, 0u, 0u), vec4u(1096810496u, 0u, 0u, 0u), vec4u(1086324736u, 0u, 0u, 0u), vec4u(1077936128u, 0u, 0u, 0u), vec4u(1093664768u, 0u, 0u, 0u), vec4u(1065353216u, 0u, 0u, 0u), vec4u(1091567616u, 0u, 0u, 0u), vec4u(1097859072u, 0u, 0u, 0u), vec4u(1088421888u, 0u, 0u, 0u), vec4u(1095761920u, 0u, 0u, 0u), vec4u(1084227584u, 0u, 0u, 0u));
  u_xlat1.x = (0.5f + bitcast<f32>(indexable[x_200].x));
  u_xlat51 = ((-(u_xlat1.x) * 0.0625f) + u_xlat51);
  u_xlatb51 = (u_xlat51 < 0.0f);
  if (((select(0i, 1i, u_xlatb51) * -1i) != 0i)) {
    discard;
  }
  u_xlat51 = (x_229.x_Time.y * x_70.x_ChurnSpeed);
  u_xlat1.x = (x_70.x_Vent.w * 0.80000001192092895508f);
  u_xlat18 = vec3f((((-(x_70.x_Vent.ww) * vec2f(0.60000002384185791016f, 0.30000001192092895508f)) + vec2f(u_xlat34))).xy, u_xlat18.z);
  u_xlat52 = (1.0f / x_70.x_Vent.w);
  u_xlat18.x = (u_xlat52 * u_xlat18.x);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat52 = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat18.x = ((-(u_xlat52) * u_xlat18.x) + 1.0f);
  u_xlat2 = vec4f(((vs_TEXCOORD0.xz / vec2f(x_70.x_Tile))).xy, u_xlat2.zw);
  u_xlat3 = (vec4f(u_xlat51) * vec4f(1.70000004768371582031f, 2.29999995231628417969f, 1.89999997615814208984f, 1.10000002384185791016f));
  u_xlat36 = ((u_xlat2.yy * vec2f(9.1000003814697265625f, 6.09999990463256835938f)) + u_xlat3.xw);
  u_xlat36 = sin(u_xlat36);
  u_xlat3 = vec4f((((u_xlat2.xx * vec2f(5.30000019073486328125f, 8.30000019073486328125f)) + -(u_xlat3.yz))).xy, u_xlat3.zw);
  u_xlat52 = sin(u_xlat3.x);
  u_xlat4.x = (u_xlat52 + u_xlat36.x);
  u_xlat52 = cos(u_xlat3.y);
  u_xlat4.y = (u_xlat36.y + u_xlat52);
  u_xlat52 = (u_xlat2.y + u_xlat2.x);
  u_xlat36 = (vec2f(u_xlat51) * vec2f(3.09999990463256835938f, 2.70000004768371582031f));
  u_xlat51 = ((u_xlat52 * 13.0f) + u_xlat36.x);
  u_xlat3.x = sin(u_xlat51);
  u_xlat51 = (-(u_xlat2.y) + u_xlat2.x);
  u_xlat51 = ((u_xlat51 * 11.0f) + -(u_xlat36.y));
  u_xlat3.y = cos(u_xlat51);
  u_xlat51 = max(u_xlat34, 0.00100000004749745131f);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(u_xlat51))).xy, u_xlat0.zw);
  u_xlat36 = (u_xlat3.xy * vec2f(0.34999999403953552246f));
  u_xlat36 = ((u_xlat4.xy * x_399) + u_xlat36);
  u_xlat36 = (u_xlat36 * vec2f(x_70.x_Churn));
  u_xlat36 = (u_xlat18.xx * u_xlat36);
  u_xlat36 = (u_xlat36 / vec2f(x_70.x_Tile));
  u_xlat2 = vec4f(((u_xlat36 + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec4f(((x_229.x_Time.yyy * vec3f(0.07000000029802322388f, 5.02650022506713867188f, 1.29999995231628417969f))).xyz, u_xlat3.w);
  u_xlat51 = fract(u_xlat3.x);
  u_xlat0 = vec4f(((vec2f(u_xlat51) * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy * vec2f(0.03999999910593032837f))).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.xy / vec2f(x_70.x_Tile))).xy, u_xlat0.zw);
  u_xlat51 = (-(u_xlat18.x) + 1.0f);
  u_xlat0 = vec4f((((-(u_xlat0.xy) * vec2f(u_xlat51)) + u_xlat2.xy)).xy, u_xlat0.zw);
  let x_484 = u_xlat0;
  let x_487 = x_229.x_GlobalMipBias.x;
  let x_488 = textureSampleBias(x_SandTex, sampler_SandTex, x_484.xy, x_487);
  u_xlat2 = vec4f(x_488.xyz.xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * x_70.x_Tint.xyz)).xyz, u_xlat2.w);
  let x_505 = u_xlat0;
  let x_508 = x_229.x_GlobalMipBias.x;
  let x_509 = textureSampleBias(x_SandNormal, sampler_SandNormal, x_505.xy, x_508);
  let x_510 = x_509.xyw;
  u_xlat0 = vec4f(x_510.xy, u_xlat0.z, x_510.z);
  u_xlat18.z = ((-(u_xlat18.x) * 0.60000002384185791016f) + 1.0f);
  let x_529 = (u_xlat18.xz * vec2f(x_70.x_Lifted, x_70.x_NormalStrength));
  u_xlat18 = vec3f(x_529.x, u_xlat18.y, x_529.y);
  u_xlat0.x = (u_xlat0.x * u_xlat0.w);
  u_xlat0 = vec4f((((u_xlat0.xy * x_541) + vec2f(-1.0f))).xy, u_xlat0.zw);
  u_xlat51 = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat51 = min(u_xlat51, 1.0f);
  u_xlat51 = (-(u_xlat51) + 1.0f);
  u_xlat51 = sqrt(u_xlat51);
  u_xlat51 = max(u_xlat51, 0.0000000000000001f);
  u_xlat0 = vec4f(((u_xlat18.zz * u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat52 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((vec3f(u_xlat52) * vs_TEXCOORD1)).xyz, u_xlat4.w);
  u_xlat5 = vec4f(((u_xlat4.zxy * vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat4.yzx * vec3f(1.0f, 0.0f, 0.0f)) + -(u_xlat5.xyz))).xyz, u_xlat5.w);
  u_xlat52 = dot(u_xlat5.xy, u_xlat5.xy);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat5 = vec4f(((vec3f(u_xlat52) * u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat5.yzx * u_xlat4.zxy) + -(u_xlat6.xyz))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat0.yyy * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat0.xxx) + u_xlat6.xyz)).xyz, u_xlat5.w);
  let x_656 = ((u_xlat4.xyz * vec3f(u_xlat51)) + u_xlat5.xyz);
  u_xlat0 = vec4f(x_656.xy, u_xlat0.z, x_656.z);
  u_xlat52 = dot(u_xlat0.xyw, u_xlat0.xyw);
  u_xlat52 = inverseSqrt(u_xlat52);
  u_xlat4 = vec4f(((u_xlat0.xyw * vec3f(u_xlat52))).xyz, u_xlat4.w);
  u_xlat0.x = (1.0f / u_xlat1.x);
  u_xlat0.x = (u_xlat0.x * u_xlat18.y);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat17 = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat17) * u_xlat0.x) + 1.0f);
  u_xlat17 = sin(u_xlat3.z);
  u_xlat17 = ((u_xlat17 * 1.70000004768371582031f) + u_xlat3.y);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = ((u_xlat17 * 0.40000000596046447754f) + 0.60000002384185791016f);
  u_xlat51 = ((-(u_xlat17) * 0.25f) + 1.0f);
  u_xlat51 = (u_xlat51 * u_xlat0.x);
  u_xlat51 = ((u_xlat51 * -(x_70.x_ThroatDark)) + 1.0f);
  let x_739 = (vec3f(u_xlat51) * u_xlat2.xyz);
  u_xlat1 = vec4f(x_739.x, u_xlat1.y, x_739.yz);
  u_xlat17 = (u_xlat17 * u_xlat18.x);
  u_xlat0.x = ((-(u_xlat0.x) * 0.5f) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat17);
  u_xlat2 = vec4f((((-(u_xlat2.xyz) * vec3f(u_xlat51)) + vec3f(0.93000000715255737305f, 0.91000002622604370117f, 0.85000002384185791016f))).xyz, u_xlat2.w);
  let x_777 = ((u_xlat0.xxx * u_xlat2.xyz) + u_xlat1.xzw);
  u_xlat0 = vec4f(x_777.xy, u_xlat0.z, x_777.z);
  u_xlat1.x = max(x_70.x_ConeRadius, 0.05000000074505805969f);
  u_xlat1.x = (u_xlat34 / u_xlat1.x);
  u_xlat18.x = (x_70.x_ConeRadius + -(x_70.x_Vent.w));
  u_xlat34 = (u_xlat34 + -(x_70.x_Vent.w));
  u_xlat18.x = (1.0f / u_xlat18.x);
  u_xlat34 = (u_xlat34 * u_xlat18.x);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat18.x = ((u_xlat34 * -2.0f) + 3.0f);
  u_xlat34 = (u_xlat34 * u_xlat34);
  u_xlat34 = ((-(u_xlat18.x) * u_xlat34) + 1.0f);
  u_xlat34 = ((u_xlat34 * 0.07999999821186065674f) + 1.0f);
  u_xlat0 = vec4f(((vec3f(u_xlat34) * u_xlat0.xyw)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat1.xx + vec2f(-0.63999998569488525391f, -0.40000000596046447754f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(10.0f, 8.3333339691162109375f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * vec2f(-1.44269502162933349609f))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(exp2(u_xlat1.xy).xy, u_xlat1.zw);
  u_xlat51 = ((u_xlat1.x * 0.28000000119209289551f) + 1.0f);
  u_xlat51 = ((-(u_xlat1.y) * 0.25f) + u_xlat51);
  u_xlat0 = vec4f(((vec3f(u_xlat51) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat3.w);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_894.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat5.w);
  u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat1.y = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat1.z = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat1.w = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlatb1 = (u_xlat1 < x_894.x_CascadeShadowSplitSphereRadii);
  u_xlat2.x = select(0.0f, 1.0f, u_xlatb1.x);
  u_xlat2.y = select(0.0f, 1.0f, u_xlatb1.y);
  u_xlat2.z = select(0.0f, 1.0f, u_xlatb1.z);
  u_xlat2.w = select(0.0f, 1.0f, u_xlatb1.w);
  u_xlat1.x = select(-0.0f, -1.0f, u_xlatb1.x);
  u_xlat1.y = select(-0.0f, -1.0f, u_xlatb1.y);
  u_xlat1.z = select(-0.0f, -1.0f, u_xlatb1.z);
  u_xlat1 = vec4f(((u_xlat1.xyz + u_xlat2.yzw)).xyz, u_xlat1.w);
  u_xlat2 = vec4f(u_xlat2.x, max(u_xlat1.xyz, vec3f()).xyz);
  u_xlat51 = dot(u_xlat2, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat51 = (-(u_xlat51) + 4.0f);
  u_xlatu51 = u32(u_xlat51);
  u_xlati51 = (bitcast<i32>(u_xlatu51) << bitcast<u32>(2i));
  u_xlat1 = vec4f(((vs_TEXCOORD0.yyy * x_894.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 1i)].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_894.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati51].xyz * vs_TEXCOORD0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_894.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_894.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati51 + 3i)].xyz)).xyz, u_xlat1.w);
  u_xlatb51 = (0.0f < x_894.x_MainLightShadowParams.y);
  if (u_xlatb51) {
    u_xlatb51 = (x_894.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb51) {
      u_xlat2 = (u_xlat1.xyxy + x_894.x_MainLightShadowOffset0);
      let x_1078 = u_xlat2.xy;
      txVec0 = vec3f(x_1078.x, x_1078.y, u_xlat1.z);
      u_xlat3.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1098 = u_xlat2.zw;
      txVec1 = vec3f(x_1098.x, x_1098.y, u_xlat1.z);
      u_xlat3.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat2 = (u_xlat1.xyxy + x_894.x_MainLightShadowOffset1);
      let x_1118 = u_xlat2.xy;
      txVec2 = vec3f(x_1118.x, x_1118.y, u_xlat1.z);
      u_xlat3.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1133 = u_xlat2.zw;
      txVec3 = vec3f(x_1133.x, x_1133.y, u_xlat1.z);
      u_xlat3.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat51 = dot(u_xlat3, vec4f(0.25f));
    } else {
      u_xlatb52 = (x_894.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb52) {
        u_xlat2 = vec4f((((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1183);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1193 = (u_xlat5.yw * vec2f(0.07999999821186065674f));
        u_xlat3 = vec4f(x_1193.x, u_xlat3.y, x_1193.y, u_xlat3.w);
        u_xlat5 = vec4f((((u_xlat5.xz * x_399) + -(u_xlat36))).xy, u_xlat5.zw);
        u_xlat39 = (-(u_xlat36) + x_1207);
        u_xlat6 = vec4f(min(u_xlat36, vec2f()).xy, u_xlat6.zw);
        u_xlat6 = vec4f((((-(u_xlat6.xy) * u_xlat6.xy) + u_xlat39)).xy, u_xlat6.zw);
        u_xlat36 = max(u_xlat36, vec2f());
        u_xlat36 = ((-(u_xlat36) * u_xlat36) + u_xlat3.yw);
        u_xlat6 = vec4f(((u_xlat6.xy + x_1207)).xy, u_xlat6.zw);
        u_xlat36 = (u_xlat36 + x_1207);
        u_xlat7 = vec4f(((u_xlat5.xy * x_1244)).xy, u_xlat7.zw);
        u_xlat5 = vec4f(((u_xlat39 * x_1244)).xy, u_xlat5.zw);
        u_xlat6 = vec4f(((u_xlat6.xy * x_1244)).xy, u_xlat6.zw);
        u_xlat8 = vec4f(((u_xlat36 * x_1244)).xy, u_xlat8.zw);
        u_xlat36 = (u_xlat3.yw * x_1244);
        u_xlat7.z = u_xlat6.x;
        u_xlat7.w = u_xlat36.x;
        u_xlat5.z = u_xlat8.x;
        u_xlat5.w = u_xlat3.x;
        u_xlat9 = (u_xlat5.zwxz + u_xlat7.zwxz);
        u_xlat6.z = u_xlat7.y;
        u_xlat6.w = u_xlat36.y;
        u_xlat8.z = u_xlat5.y;
        u_xlat8.w = u_xlat3.z;
        u_xlat3 = vec4f(((u_xlat6.zyw + u_xlat8.zyw)).xyz, u_xlat3.w);
        u_xlat5 = vec4f(((u_xlat5.xzw / u_xlat9.zwy)).xyz, u_xlat5.w);
        u_xlat5 = vec4f(((u_xlat5.xyz + x_1314)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat8.zyw / u_xlat3.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f(((u_xlat6.xyz + x_1314)).xyz, u_xlat6.w);
        u_xlat5 = vec4f(((u_xlat5.yxz * x_894.x_MainLightShadowmapSize.xxx)).xyz, u_xlat5.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_894.x_MainLightShadowmapSize.yyy)).xyz, u_xlat6.w);
        u_xlat5.w = u_xlat6.x;
        u_xlat7 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.ywxw);
        u_xlat36 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat5.zw);
        u_xlat6.w = u_xlat5.y;
        let x_1371 = u_xlat6.yz;
        u_xlat5 = vec4f(u_xlat5.x, x_1371.x, u_xlat5.z, x_1371.y);
        u_xlat8 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyzy);
        u_xlat6 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat6.wywz);
        u_xlat5 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.xwzw);
        u_xlat10 = (u_xlat3.xxxy * u_xlat9.zwyz);
        u_xlat11 = (u_xlat3.yyzz * u_xlat9);
        u_xlat52 = (u_xlat3.z * u_xlat9.y);
        let x_1419 = u_xlat7.xy;
        txVec4 = vec3f(x_1419.x, x_1419.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1434 = u_xlat7.zw;
        txVec5 = vec3f(x_1434.x, x_1434.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat19 = (u_xlat19 * u_xlat10.y);
        u_xlat2.x = ((u_xlat10.x * u_xlat2.x) + u_xlat19);
        txVec6 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat2.x = ((u_xlat10.z * u_xlat19) + u_xlat2.x);
        let x_1482 = u_xlat6.xy;
        txVec7 = vec3f(x_1482.x, x_1482.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat2.x = ((u_xlat10.w * u_xlat19) + u_xlat2.x);
        let x_1504 = u_xlat8.xy;
        txVec8 = vec3f(x_1504.x, x_1504.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat2.x = ((u_xlat11.x * u_xlat19) + u_xlat2.x);
        let x_1526 = u_xlat8.zw;
        txVec9 = vec3f(x_1526.x, x_1526.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat2.x = ((u_xlat11.y * u_xlat19) + u_xlat2.x);
        let x_1548 = u_xlat6.zw;
        txVec10 = vec3f(x_1548.x, x_1548.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat2.x = ((u_xlat11.z * u_xlat19) + u_xlat2.x);
        let x_1570 = u_xlat5.xy;
        txVec11 = vec3f(x_1570.x, x_1570.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat2.x = ((u_xlat11.w * u_xlat19) + u_xlat2.x);
        let x_1592 = u_xlat5.zw;
        txVec12 = vec3f(x_1592.x, x_1592.y, u_xlat1.z);
        u_xlat19 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat51 = ((u_xlat52 * u_xlat19) + u_xlat2.x);
      } else {
        u_xlat2 = vec4f((((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + x_399)).xy, u_xlat2.zw);
        u_xlat2 = vec4f(floor(u_xlat2.xy).xy, u_xlat2.zw);
        u_xlat36 = ((u_xlat1.xy * x_894.x_MainLightShadowmapSize.zw) + -(u_xlat2.xy));
        u_xlat3 = (u_xlat36.xxyy + x_1183);
        u_xlat5 = (u_xlat3.xxzz * u_xlat3.xxzz);
        let x_1647 = (u_xlat5.yw * vec2f(0.04081600159406661987f));
        u_xlat6 = vec4f(u_xlat6.x, x_1647.x, u_xlat6.z, x_1647.y);
        let x_1655 = ((u_xlat5.xz * x_399) + -(u_xlat36));
        u_xlat3 = vec4f(x_1655.x, u_xlat3.y, x_1655.y, u_xlat3.w);
        u_xlat5 = vec4f(((-(u_xlat36) + x_1207)).xy, u_xlat5.zw);
        u_xlat39 = min(u_xlat36, vec2f());
        u_xlat5 = vec4f((((-(u_xlat39) * u_xlat39) + u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat39 = max(u_xlat36, vec2f());
        let x_1683 = ((-(u_xlat39) * u_xlat39) + u_xlat3.yw);
        u_xlat20 = vec3f(x_1683.x, u_xlat20.y, x_1683.y);
        u_xlat5 = vec4f(((u_xlat5.xy + x_541)).xy, u_xlat5.zw);
        let x_1693 = (u_xlat20.xz + x_541);
        u_xlat3 = vec4f(u_xlat3.x, x_1693.x, u_xlat3.z, x_1693.y);
        u_xlat7.z = (u_xlat3.y * 0.08163200318813323975f);
        u_xlat8 = vec4f(((u_xlat3.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat8.w);
        u_xlat3 = vec4f(((u_xlat5.xy * vec2f(0.08163200318813323975f))).xy, u_xlat3.zw);
        u_xlat7.x = u_xlat8.y;
        let x_1723 = ((u_xlat36.xx * x_1719) + x_1722);
        u_xlat7 = vec4f(u_xlat7.x, x_1723.x, u_xlat7.z, x_1723.y);
        let x_1730 = ((u_xlat36.xx * x_1719) + x_1729);
        u_xlat5 = vec4f(x_1730.x, u_xlat5.y, x_1730.y, u_xlat5.w);
        u_xlat5.y = u_xlat3.x;
        u_xlat5.w = u_xlat6.y;
        u_xlat7 = (u_xlat5 + u_xlat7);
        let x_1745 = ((u_xlat36.yy * x_1719) + x_1722);
        u_xlat8 = vec4f(u_xlat8.x, x_1745.x, u_xlat8.z, x_1745.y);
        let x_1751 = ((u_xlat36.yy * x_1719) + x_1729);
        u_xlat6 = vec4f(x_1751.x, u_xlat6.y, x_1751.y, u_xlat6.w);
        u_xlat6.y = u_xlat3.y;
        u_xlat3 = (u_xlat6 + u_xlat8);
        u_xlat5 = (u_xlat5 / u_xlat7);
        u_xlat5 = (u_xlat5 + x_1767);
        u_xlat6 = (u_xlat6 / u_xlat3);
        u_xlat6 = (u_xlat6 + x_1767);
        u_xlat5 = (u_xlat5.wxyz * x_894.x_MainLightShadowmapSize.xxxx);
        u_xlat6 = (u_xlat6.xwyz * x_894.x_MainLightShadowmapSize.yyyy);
        let x_1787 = u_xlat5.yzw;
        u_xlat8 = vec4f(x_1787.x, u_xlat8.y, x_1787.yz);
        u_xlat8.y = u_xlat6.x;
        u_xlat9 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat36 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.y = u_xlat8.y;
        u_xlat8.y = u_xlat6.z;
        u_xlat10 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat11 = vec4f((((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat8.wy)).xy, u_xlat11.zw);
        u_xlat5.z = u_xlat8.y;
        u_xlat12 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat5.xyxz);
        u_xlat8.y = u_xlat6.w;
        u_xlat13 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat22 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat8.wy);
        u_xlat5.w = u_xlat8.y;
        u_xlat45 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat5.xw);
        let x_1887 = u_xlat8.xzw;
        u_xlat6 = vec4f(x_1887.x, u_xlat6.y, x_1887.yz);
        u_xlat8 = ((u_xlat2.xyxy * x_894.x_MainLightShadowmapSize.xyxy) + u_xlat6.xyzy);
        u_xlat40 = ((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat6.wy);
        u_xlat6.x = u_xlat5.x;
        u_xlat2 = vec4f((((u_xlat2.xy * x_894.x_MainLightShadowmapSize.xy) + u_xlat6.xy)).xy, u_xlat2.zw);
        u_xlat14 = (u_xlat3.xxxx * u_xlat7);
        u_xlat15 = (u_xlat3.yyyy * u_xlat7);
        u_xlat16 = (u_xlat3.zzzz * u_xlat7);
        u_xlat3 = (u_xlat3.wwww * u_xlat7);
        let x_1944 = u_xlat9.xy;
        txVec13 = vec3f(x_1944.x, x_1944.y, u_xlat1.z);
        u_xlat52 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1958 = u_xlat9.zw;
        txVec14 = vec3f(x_1958.x, x_1958.y, u_xlat1.z);
        u_xlat5.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat5.x = (u_xlat5.x * u_xlat14.y);
        u_xlat52 = ((u_xlat14.x * u_xlat52) + u_xlat5.x);
        txVec15 = vec3f(u_xlat36.x, u_xlat36.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat52 = ((u_xlat14.z * u_xlat36.x) + u_xlat52);
        let x_2007 = u_xlat12.xy;
        txVec16 = vec3f(x_2007.x, x_2007.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat52 = ((u_xlat14.w * u_xlat36.x) + u_xlat52);
        let x_2029 = u_xlat10.xy;
        txVec17 = vec3f(x_2029.x, x_2029.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat52 = ((u_xlat15.x * u_xlat36.x) + u_xlat52);
        let x_2051 = u_xlat10.zw;
        txVec18 = vec3f(x_2051.x, x_2051.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat52 = ((u_xlat15.y * u_xlat36.x) + u_xlat52);
        let x_2073 = u_xlat11.xy;
        txVec19 = vec3f(x_2073.x, x_2073.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat52 = ((u_xlat15.z * u_xlat36.x) + u_xlat52);
        let x_2095 = u_xlat12.zw;
        txVec20 = vec3f(x_2095.x, x_2095.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat52 = ((u_xlat15.w * u_xlat36.x) + u_xlat52);
        let x_2117 = u_xlat13.xy;
        txVec21 = vec3f(x_2117.x, x_2117.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat52 = ((u_xlat16.x * u_xlat36.x) + u_xlat52);
        let x_2139 = u_xlat13.zw;
        txVec22 = vec3f(x_2139.x, x_2139.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat52 = ((u_xlat16.y * u_xlat36.x) + u_xlat52);
        txVec23 = vec3f(u_xlat22.x, u_xlat22.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat52 = ((u_xlat16.z * u_xlat36.x) + u_xlat52);
        txVec24 = vec3f(u_xlat45.x, u_xlat45.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat52 = ((u_xlat16.w * u_xlat36.x) + u_xlat52);
        let x_2203 = u_xlat8.xy;
        txVec25 = vec3f(x_2203.x, x_2203.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat52 = ((u_xlat3.x * u_xlat36.x) + u_xlat52);
        let x_2225 = u_xlat8.zw;
        txVec26 = vec3f(x_2225.x, x_2225.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat52 = ((u_xlat3.y * u_xlat36.x) + u_xlat52);
        txVec27 = vec3f(u_xlat40.x, u_xlat40.y, u_xlat1.z);
        u_xlat36.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat52 = ((u_xlat3.z * u_xlat36.x) + u_xlat52);
        let x_2268 = u_xlat2.xy;
        txVec28 = vec3f(x_2268.x, x_2268.y, u_xlat1.z);
        u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat51 = ((u_xlat3.w * u_xlat2.x) + u_xlat52);
      }
    }
  } else {
    let x_2291 = u_xlat1.xy;
    txVec29 = vec3f(x_2291.x, x_2291.y, u_xlat1.z);
    u_xlat51 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat1.x = (-(x_894.x_MainLightShadowParams.x) + 1.0f);
  u_xlat51 = ((u_xlat51 * x_894.x_MainLightShadowParams.x) + u_xlat1.x);
  u_xlatb1.x = (0.0f >= u_xlat1.z);
  u_xlatb18 = (u_xlat1.z >= 1.0f);
  u_xlatb1.x = (u_xlatb18 | u_xlatb1.x);
  u_xlat51 = select(u_xlat51, 1.0f, u_xlatb1.x);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_229.x_WorldSpaceCameraPos))).xyz, u_xlat1.w);
  u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat1.x = ((u_xlat1.x * x_894.x_MainLightShadowParams.z) + x_894.x_MainLightShadowParams.w);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18.x = (-(u_xlat51) + 1.0f);
  u_xlat51 = ((u_xlat1.x * u_xlat18.x) + u_xlat51);
  u_xlat1.x = dot(u_xlat4.xyz, x_229.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat18 = (vec3f(u_xlat51) * x_229.x_MainLightColor.xyz);
  u_xlat4.w = 1.0f;
  u_xlat2.x = dot(x_2396.unity_SHAr, u_xlat4);
  u_xlat2.y = dot(x_2396.unity_SHAg, u_xlat4);
  u_xlat2.z = dot(x_2396.unity_SHAb, u_xlat4);
  u_xlat3 = (u_xlat4.yzzx * u_xlat4.xyzz);
  u_xlat5.x = dot(x_2396.unity_SHBr, u_xlat3);
  u_xlat5.y = dot(x_2396.unity_SHBg, u_xlat3);
  u_xlat5.z = dot(x_2396.unity_SHBb, u_xlat3);
  u_xlat51 = (u_xlat4.y * u_xlat4.y);
  u_xlat51 = ((u_xlat4.x * u_xlat4.x) + -(u_xlat51));
  u_xlat3 = vec4f((((x_2396.unity_SHC.xyz * vec3f(u_xlat51)) + u_xlat5.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + u_xlat3.xyz)).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((u_xlat18 * u_xlat1.xxx) + u_xlat2.xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1.xyz)).xyz, u_xlat0.w);
  u_xlat51 = (vs_TEXCOORD2 * -(vs_TEXCOORD2));
  u_xlat51 = exp2(u_xlat51);
  u_xlat0 = vec4f((((u_xlat0.xyz * x_70.x_WaterTint.xyz) + -(x_229.unity_FogColor.xyz))).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((vec3f(u_xlat51) * u_xlat0.xyz) + x_229.unity_FogColor.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD1_param : vec3f, @location(1) vs_TEXCOORD2_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

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

@group(1) @binding(2) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_64 : VGlobals;

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

//Assets/Levels/B612/Shaders/B612_SandBoil.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_Tile : f32,
  /* @offset(4) */
  x_ConeRadius : f32,
  /* @offset(8) */
  Xhlslcc_UnusedX_ChurnSpeed : f32,
  /* @offset(16) */
  Xhlslcc_UnusedX_Tint : vec4f,
  /* @offset(32) */
  x_Vent : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_Churn : f32,
  /* @offset(52) */
  Xhlslcc_UnusedX_Lifted : f32,
  /* @offset(56) */
  Xhlslcc_UnusedX_NormalStrength : f32,
  /* @offset(64) */
  Xhlslcc_UnusedX_WaterTint : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_ThroatDark : f32,
}

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(0) var<uniform> x_71 : UnityPerMaterial;

var<private> SV_Target0 : f32;

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
  var u_xlat0 : vec2f;
  var u_xlat1 : f32;
  var u_xlatu1 : vec2u;
  var u_xlati2 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlati1 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var indexable : array<vec4u, 16u>;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_51 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_51.x, x_51.y, x_51.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = (vs_TEXCOORD0.xz + -(x_71.x_Vent.xz));
  u_xlat0.x = dot(u_xlat0, u_xlat0);
  u_xlat0.x = sqrt(u_xlat0.x);
  u_xlat0.x = ((-(x_71.x_ConeRadius) * 0.94999998807907104492f) + u_xlat0.x);
  u_xlat1 = (x_71.x_ConeRadius + 0.12999999523162841797f);
  u_xlat1 = ((-(x_71.x_ConeRadius) * 0.94999998807907104492f) + u_xlat1);
  u_xlat1 = (1.0f / u_xlat1);
  u_xlat0.x = (u_xlat1 * u_xlat0.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat1) * u_xlat0.x) + 1.0f);
  u_xlatu1 = vec2u(hlslcc_FragCoord.xy);
  let x_152 = u_xlatu1.y;
  param = 0i;
  param_1 = bitcast<i32>(x_152);
  param_2 = 2i;
  param_3 = 2i;
  let x_159 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati2 = x_159;
  let x_162 = u_xlatu1.x;
  param_4 = u_xlati2;
  param_5 = bitcast<i32>(x_162);
  param_6 = 0i;
  param_7 = 2i;
  let x_169 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
  u_xlati1 = x_169;
  let x_206 = u_xlati1;
  indexable = array<vec4u, 16u>(vec4u(), vec4u(1090519040u, 0u, 0u, 0u), vec4u(1073741824u, 0u, 0u, 0u), vec4u(1092616192u, 0u, 0u, 0u), vec4u(1094713344u, 0u, 0u, 0u), vec4u(1082130432u, 0u, 0u, 0u), vec4u(1096810496u, 0u, 0u, 0u), vec4u(1086324736u, 0u, 0u, 0u), vec4u(1077936128u, 0u, 0u, 0u), vec4u(1093664768u, 0u, 0u, 0u), vec4u(1065353216u, 0u, 0u, 0u), vec4u(1091567616u, 0u, 0u, 0u), vec4u(1097859072u, 0u, 0u, 0u), vec4u(1088421888u, 0u, 0u, 0u), vec4u(1095761920u, 0u, 0u, 0u), vec4u(1084227584u, 0u, 0u, 0u));
  u_xlat1 = (0.5f + bitcast<f32>(indexable[x_206].x));
  u_xlat0.x = ((-(u_xlat1) * 0.0625f) + u_xlat0.x);
  u_xlatb0 = (u_xlat0.x < 0.0f);
  if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
    discard;
  }
  SV_Target0 = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : f32,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

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

@group(1) @binding(2) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

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
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_SandBoil.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_Tile : f32,
  /* @offset(4) */
  x_ConeRadius : f32,
  /* @offset(8) */
  Xhlslcc_UnusedX_ChurnSpeed : f32,
  /* @offset(16) */
  Xhlslcc_UnusedX_Tint : vec4f,
  /* @offset(32) */
  x_Vent : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_Churn : f32,
  /* @offset(52) */
  Xhlslcc_UnusedX_Lifted : f32,
  /* @offset(56) */
  Xhlslcc_UnusedX_NormalStrength : f32,
  /* @offset(64) */
  Xhlslcc_UnusedX_WaterTint : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_ThroatDark : f32,
}

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(0) var<uniform> x_71 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3f;

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
  var u_xlat0 : vec2f;
  var u_xlat1 : f32;
  var u_xlatu1 : vec2u;
  var u_xlati2 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlati1 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var indexable : array<vec4u, 16u>;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_51 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_51.x, x_51.y, x_51.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = (vs_TEXCOORD0.xz + -(x_71.x_Vent.xz));
  u_xlat0.x = dot(u_xlat0, u_xlat0);
  u_xlat0.x = sqrt(u_xlat0.x);
  u_xlat0.x = ((-(x_71.x_ConeRadius) * 0.94999998807907104492f) + u_xlat0.x);
  u_xlat1 = (x_71.x_ConeRadius + 0.12999999523162841797f);
  u_xlat1 = ((-(x_71.x_ConeRadius) * 0.94999998807907104492f) + u_xlat1);
  u_xlat1 = (1.0f / u_xlat1);
  u_xlat0.x = (u_xlat1 * u_xlat0.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = ((-(u_xlat1) * u_xlat0.x) + 1.0f);
  u_xlatu1 = vec2u(hlslcc_FragCoord.xy);
  let x_152 = u_xlatu1.y;
  param = 0i;
  param_1 = bitcast<i32>(x_152);
  param_2 = 2i;
  param_3 = 2i;
  let x_159 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati2 = x_159;
  let x_162 = u_xlatu1.x;
  param_4 = u_xlati2;
  param_5 = bitcast<i32>(x_162);
  param_6 = 0i;
  param_7 = 2i;
  let x_169 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
  u_xlati1 = x_169;
  let x_206 = u_xlati1;
  indexable = array<vec4u, 16u>(vec4u(), vec4u(1090519040u, 0u, 0u, 0u), vec4u(1073741824u, 0u, 0u, 0u), vec4u(1092616192u, 0u, 0u, 0u), vec4u(1094713344u, 0u, 0u, 0u), vec4u(1082130432u, 0u, 0u, 0u), vec4u(1096810496u, 0u, 0u, 0u), vec4u(1086324736u, 0u, 0u, 0u), vec4u(1077936128u, 0u, 0u, 0u), vec4u(1093664768u, 0u, 0u, 0u), vec4u(1065353216u, 0u, 0u, 0u), vec4u(1091567616u, 0u, 0u, 0u), vec4u(1097859072u, 0u, 0u, 0u), vec4u(1088421888u, 0u, 0u, 0u), vec4u(1095761920u, 0u, 0u, 0u), vec4u(1084227584u, 0u, 0u, 0u));
  u_xlat1 = (0.5f + bitcast<f32>(indexable[x_206].x));
  u_xlat0.x = ((-(u_xlat1) * 0.0625f) + u_xlat0.x);
  u_xlatb0 = (u_xlat0.x < 0.0f);
  if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
    discard;
  }
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  SV_Target0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, SV_Target0.w);
  SV_Target0.w = 0.0f;
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

