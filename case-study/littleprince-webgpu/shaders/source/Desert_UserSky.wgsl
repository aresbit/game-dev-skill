//Assets/Levels/Desert/Shaders/Desert_UserSky.shader
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

@group(1) @binding(3) var<uniform> x_24 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_58 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyyy * x_24.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat0 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[0i] * in_POSITION0.xxxx) + u_xlat0);
  u_xlat0 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_24.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat1 = (u_xlat0.yyyy * x_58.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_58.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_58.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = ((x_58.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat0.wwww) + u_xlat1);
  vs_TEXCOORD0 = in_POSITION0.xyz;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

//Assets/Levels/Desert/Shaders/Desert_UserSky.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_UOffset : f32,
  /* @offset(4) */
  x_Exposure : f32,
  /* @offset(8) */
  x_Saturation : f32,
  /* @offset(12) */
  x_FogMix : f32,
  /* @offset(16) */
  x_VMap : vec4f,
  /* @offset(32) */
  x_ZenithTint : vec4f,
  /* @offset(48) */
  x_HorizonLift : vec4f,
  /* @offset(64) */
  x_BelowColor : vec4f,
  /* @offset(80) */
  x_SunDiskColor : vec4f,
  /* @offset(96) */
  x_SunHaloColor : vec4f,
  /* @offset(112) */
  x_SunGlowColor : vec4f,
  /* @offset(128) */
  x_SunDiskSize : f32,
  /* @offset(132) */
  x_SunHaloPower : f32,
  /* @offset(136) */
  x_SunGlowPower : f32,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(16) */
  x_DesertSunDir : vec4f,
  /* @offset(32) */
  x_DesertHazeTint : vec4f,
  /* @offset(48) */
  x_DesertStar : vec4f,
}

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(1) var<uniform> x_166 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_354 : PGlobals;

@group(0) @binding(0) var x_SkyTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_SkyTex : sampler;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat12 : f32;
  var u_xlat1 : vec3f;
  var u_xlat5 : f32;
  var u_xlatb9 : bool;
  var u_xlatb1 : bool;
  var u_xlatb5 : bool;
  var x_152 : f32;
  var u_xlat2 : vec4f;
  var u_xlatb13 : bool;
  var u_xlat14 : f32;
  var u_xlat3 : vec3f;
  var u_xlat7 : f32;
  var u_xlatb14 : bool;
  var u_xlat11 : f32;
  var u_xlatb11 : bool;
  var x_324 : f32;
  var x_339 : vec2f;
  var u_xlatb12 : bool;
  var x_381 : vec2f;
  var u_xlat13 : f32;
  var u_xlat6 : vec3f;
  var x_644 : vec3f;
  var u_xlat10 : vec2f;
  var u_xlat4 : f32;
  var u_xlat8 : f32;
  var u_xlatb0 : bool;
  var x_938 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(vs_TEXCOORD0, vs_TEXCOORD0);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = (u_xlat0.xxx * vs_TEXCOORD0);
  u_xlat12 = max(abs(u_xlat0.z), abs(u_xlat0.x));
  u_xlat12 = (1.0f / u_xlat12);
  u_xlat1.x = min(abs(u_xlat0.z), abs(u_xlat0.x));
  u_xlat12 = (u_xlat12 * u_xlat1.x);
  u_xlat1.x = (u_xlat12 * u_xlat12);
  u_xlat5 = ((u_xlat1.x * 0.02083509974181652069f) + -0.08513300120830535889f);
  u_xlat5 = ((u_xlat1.x * u_xlat5) + 0.18014100193977355957f);
  u_xlat5 = ((u_xlat1.x * u_xlat5) + -0.33029949665069580078f);
  u_xlat1.x = ((u_xlat1.x * u_xlat5) + 0.99986600875854492188f);
  u_xlat5 = (u_xlat12 * u_xlat1.x);
  u_xlat5 = ((u_xlat5 * -2.0f) + 1.57079637050628662109f);
  u_xlatb9 = (abs(u_xlat0.z) < abs(u_xlat0.x));
  u_xlat5 = select(0.0f, u_xlat5, u_xlatb9);
  u_xlat12 = ((u_xlat12 * u_xlat1.x) + u_xlat5);
  u_xlatb1 = (u_xlat0.z < -(u_xlat0.z));
  u_xlat1.x = select(0.0f, -3.14159274101257324219f, u_xlatb1);
  u_xlat12 = (u_xlat12 + u_xlat1.x);
  u_xlat1.x = min(u_xlat0.z, u_xlat0.x);
  u_xlatb1 = (u_xlat1.x < -(u_xlat1.x));
  u_xlat5 = max(u_xlat0.z, u_xlat0.x);
  u_xlatb5 = (u_xlat5 >= -(u_xlat5));
  u_xlatb1 = (u_xlatb5 & u_xlatb1);
  if (u_xlatb1) {
    x_152 = -(u_xlat12);
  } else {
    x_152 = u_xlat12;
  }
  u_xlat12 = x_152;
  u_xlat12 = ((u_xlat12 * 0.15915493667125701904f) + x_166.x_UOffset);
  u_xlat1.x = fract(u_xlat12);
  u_xlat12 = (u_xlat12 + 0.5f);
  let x_182 = u_xlat1.x;
  u_xlat2.x = dpdxCoarse(x_182);
  let x_186 = u_xlat1.x;
  u_xlat1.x = dpdyCoarse(x_186);
  let x_189 = u_xlat12;
  u_xlat2.y = dpdxCoarse(x_189);
  u_xlatb13 = (abs(u_xlat2.y) < abs(u_xlat2.x));
  u_xlat14 = max(u_xlat0.y, -1.0f);
  u_xlat14 = min(u_xlat14, 1.0f);
  u_xlat3.x = ((abs(u_xlat14) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat3.x = ((u_xlat3.x * abs(u_xlat14)) + -0.21211439371109008789f);
  u_xlat3.x = ((u_xlat3.x * abs(u_xlat14)) + 1.57072877883911132812f);
  u_xlat7 = (-(abs(u_xlat14)) + 1.0f);
  u_xlatb14 = (u_xlat14 < -(u_xlat14));
  u_xlat7 = sqrt(u_xlat7);
  u_xlat11 = (u_xlat7 * u_xlat3.x);
  u_xlat11 = ((u_xlat11 * -2.0f) + 3.14159274101257324219f);
  u_xlat14 = select(0.0f, u_xlat11, u_xlatb14);
  u_xlat14 = ((u_xlat3.x * u_xlat7) + u_xlat14);
  u_xlat14 = (-(u_xlat14) + 1.57079637050628662109f);
  u_xlat3.x = (u_xlat14 * 0.63661974668502807617f);
  u_xlat7 = max(u_xlat3.x, 0.0f);
  u_xlat3.x = -(u_xlat3.x);
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat3.x = inverseSqrt(u_xlat3.x);
  u_xlat3.x = (1.0f / u_xlat3.x);
  u_xlat3.x = (-(u_xlat3.x) + 1.0f);
  u_xlat3.y = log2(u_xlat7);
  u_xlat3 = vec3f(((u_xlat3.xy * x_166.x_VMap.xy)).xy, u_xlat3.z);
  u_xlat7 = exp2(u_xlat3.y);
  u_xlat11 = (-(x_166.x_VMap.x) + 1.0f);
  u_xlat7 = ((u_xlat11 * u_xlat7) + x_166.x_VMap.x);
  u_xlatb11 = (u_xlat14 >= 0.0f);
  if (u_xlatb11) {
    x_324 = u_xlat7;
  } else {
    x_324 = u_xlat3.x;
  }
  u_xlat3.y = x_324;
  let x_334 = u_xlat3.y;
  u_xlat2.z = dpdxCoarse(x_334);
  if (u_xlatb13) {
    x_339 = u_xlat2.yz;
  } else {
    x_339 = u_xlat2.xz;
  }
  u_xlat2 = vec4f(x_339.xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_354.x_GlobalMipBias.yy)).xy, u_xlat2.zw);
  let x_362 = u_xlat12;
  u_xlat1.y = dpdyCoarse(x_362);
  u_xlat3.x = fract(u_xlat12);
  u_xlatb12 = (abs(u_xlat1.y) < abs(u_xlat1.x));
  let x_377 = u_xlat3.y;
  u_xlat1.z = dpdyCoarse(x_377);
  if (u_xlatb12) {
    x_381 = u_xlat1.yz;
  } else {
    x_381 = u_xlat1.xz;
  }
  u_xlat1 = vec3f(x_381.xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy * x_354.x_GlobalMipBias.yy)).xy, u_xlat1.z);
  let x_413 = u_xlat2.xyxx;
  let x_421 = u_xlat1.xyxx;
  u_xlat1 = textureSampleGrad(x_SkyTex, sampler_SkyTex, u_xlat3.xy, vec4f(x_413.x, x_413.y, x_413.z, x_413.w).xy, vec4f(x_421.x, x_421.y, x_421.z, x_421.w).xy).xyz;
  let x_438 = vec3f(x_166.x_Exposure, x_166.x_Exposure, x_166.x_Exposure);
  u_xlat2 = vec4f(((u_xlat1 * vec3f(x_438.x, x_438.y, x_438.z))).xyz, u_xlat2.w);
  u_xlat12 = dot(u_xlat2.xyz, vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
  let x_460 = vec3f(x_166.x_Exposure, x_166.x_Exposure, x_166.x_Exposure);
  u_xlat1 = ((u_xlat1 * vec3f(x_460.x, x_460.y, x_460.z)) + -(vec3f(u_xlat12)));
  let x_477 = vec3f(x_166.x_Saturation, x_166.x_Saturation, x_166.x_Saturation);
  u_xlat1 = ((vec3f(x_477.x, x_477.y, x_477.z) * u_xlat1) + vec3f(u_xlat12));
  u_xlat1 = max(u_xlat1, vec3f());
  let x_501 = vec3f(x_166.x_Exposure, x_166.x_Exposure, x_166.x_Exposure);
  u_xlat1 = ((-(x_166.x_BelowColor.xyz) * vec3f(x_501.x, x_501.y, x_501.z)) + u_xlat1);
  u_xlat12 = (-(x_166.x_HorizonLift.y) + x_166.x_HorizonLift.x);
  u_xlat13 = ((u_xlat14 * 57.295780181884765625f) + -(u_xlat12));
  u_xlat2.x = ((u_xlat14 * 57.295780181884765625f) + -0.5f);
  u_xlat2.x = (u_xlat2.x * 0.04651162773370742798f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat12 = (-(u_xlat12) + x_166.x_HorizonLift.x);
  u_xlat12 = (1.0f / u_xlat12);
  u_xlat12 = (u_xlat12 * u_xlat13);
  u_xlat12 = clamp(u_xlat12, 0.0f, 1.0f);
  u_xlat13 = ((u_xlat12 * -2.0f) + 3.0f);
  u_xlat12 = (u_xlat12 * u_xlat12);
  u_xlat12 = (u_xlat12 * u_xlat13);
  let x_566 = vec3f(x_166.x_Exposure, x_166.x_Exposure, x_166.x_Exposure);
  u_xlat6 = (vec3f(x_566.x, x_566.y, x_566.z) * x_166.x_BelowColor.xyz);
  u_xlat1 = ((vec3f(u_xlat12) * u_xlat1) + u_xlat6);
  u_xlat12 = ((u_xlat2.x * -2.0f) + 3.0f);
  u_xlat13 = (u_xlat2.x * u_xlat2.x);
  u_xlat12 = (u_xlat12 * u_xlat13);
  u_xlat2 = vec4f(((x_166.x_ZenithTint.xyz + vec3f(-1.0f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((vec3f(u_xlat12) * u_xlat2.xyz) + vec3f(1.0f))).xyz, u_xlat2.w);
  u_xlat12 = ((-(u_xlat12) * 0.60000002384185791016f) + 1.0f);
  u_xlat12 = (u_xlat12 * x_166.x_FogMix);
  u_xlat3 = (u_xlat1 * u_xlat2.xyz);
  u_xlat1 = ((-(u_xlat1) * u_xlat2.xyz) + x_354.x_DesertHazeTint.xyz);
  u_xlat1 = ((vec3f(u_xlat12) * u_xlat1) + u_xlat3);
  u_xlatb12 = (0.5f < x_354.x_DesertSunDir.w);
  if (u_xlatb12) {
    x_644 = x_354.x_DesertSunDir.xyz;
  } else {
    x_644 = vec3f(0.14001400768756866455f, 0.01000100001692771912f, 0.99009901285171508789f);
  }
  u_xlat2 = vec4f(x_644.xyz, u_xlat2.w);
  u_xlat12 = dot(u_xlat0, u_xlat2.xyz);
  u_xlat13 = max(u_xlat12, -1.0f);
  u_xlat12 = u_xlat12;
  u_xlat12 = clamp(u_xlat12, 0.0f, 1.0f);
  u_xlat12 = log2(u_xlat12);
  u_xlat2 = vec4f(((vec2f(u_xlat12) * vec2f(x_166.x_SunHaloPower, x_166.x_SunGlowPower))).xy, u_xlat2.zw);
  u_xlat2 = vec4f(exp2(u_xlat2.xy).xy, u_xlat2.zw);
  u_xlat12 = min(u_xlat13, 1.0f);
  u_xlat13 = ((abs(u_xlat12) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat13 = ((u_xlat13 * abs(u_xlat12)) + -0.21211439371109008789f);
  u_xlat13 = ((u_xlat13 * abs(u_xlat12)) + 1.57072877883911132812f);
  u_xlat10.x = (-(abs(u_xlat12)) + 1.0f);
  u_xlatb12 = (u_xlat12 < -(u_xlat12));
  u_xlat10.x = sqrt(u_xlat10.x);
  u_xlat14 = (u_xlat13 * u_xlat10.x);
  u_xlat14 = ((u_xlat14 * -2.0f) + 3.14159274101257324219f);
  u_xlat12 = select(0.0f, u_xlat14, u_xlatb12);
  u_xlat12 = ((u_xlat13 * u_xlat10.x) + u_xlat12);
  u_xlat10 = (vec2f(x_166.x_SunDiskSize) * vec2f(0.80000001192092895508f, 0.34999996423721313477f));
  u_xlat12 = ((u_xlat12 * 57.295780181884765625f) + -(u_xlat10.x));
  u_xlat13 = (1.0f / u_xlat10.y);
  u_xlat12 = (u_xlat12 * u_xlat13);
  u_xlat12 = clamp(u_xlat12, 0.0f, 1.0f);
  u_xlat13 = ((u_xlat12 * -2.0f) + 3.0f);
  u_xlat12 = (u_xlat12 * u_xlat12);
  u_xlat12 = ((-(u_xlat13) * u_xlat12) + 1.0f);
  let x_771 = (u_xlat2.xxx * x_166.x_SunHaloColor.xyz);
  u_xlat2 = vec4f(x_771.x, u_xlat2.y, x_771.yz);
  let x_783 = ((x_166.x_SunDiskColor.xyz * vec3f(u_xlat12)) + u_xlat2.xzw);
  u_xlat2 = vec4f(x_783.x, u_xlat2.y, x_783.yz);
  u_xlat2 = vec4f((((x_166.x_SunGlowColor.xyz * u_xlat2.yyy) + u_xlat2.xzw)).xyz, u_xlat2.w);
  u_xlat1 = (u_xlat1 + u_xlat2.xyz);
  u_xlat12 = dot(x_354.x_DesertStar.xyz, x_354.x_DesertStar.xyz);
  u_xlat12 = inverseSqrt(u_xlat12);
  u_xlat2 = vec4f(((vec3f(u_xlat12) * x_354.x_DesertStar.xyz)).xyz, u_xlat2.w);
  u_xlat0.x = dot(u_xlat0, u_xlat2.xyz);
  u_xlat0.x = max(u_xlat0.x, -1.0f);
  u_xlat0.x = min(u_xlat0.x, 1.0f);
  u_xlat4 = ((abs(u_xlat0.x) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat4 = ((u_xlat4 * abs(u_xlat0.x)) + -0.21211439371109008789f);
  u_xlat4 = ((u_xlat4 * abs(u_xlat0.x)) + 1.57072877883911132812f);
  u_xlat8 = (-(abs(u_xlat0.x)) + 1.0f);
  u_xlatb0 = (u_xlat0.x < -(u_xlat0.x));
  u_xlat8 = sqrt(u_xlat8);
  u_xlat12 = (u_xlat8 * u_xlat4);
  u_xlat12 = ((u_xlat12 * -2.0f) + 3.14159274101257324219f);
  u_xlat0.x = select(0.0f, u_xlat12, u_xlatb0);
  u_xlat0.x = ((u_xlat4 * u_xlat8) + u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 57.295780181884765625f);
  u_xlat0.x = (u_xlat0.x * -(u_xlat0.x));
  u_xlat0 = (u_xlat0.xxx * vec3f(577.0780029296875f, 48.089839935302734375f, 3.60673761367797851562f));
  u_xlat0 = exp2(u_xlat0);
  u_xlat0.x = ((u_xlat0.y * 0.05999999865889549255f) + u_xlat0.x);
  u_xlat0.x = ((u_xlat0.z * 0.00800000037997961044f) + u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * x_354.x_DesertStar.w);
  u_xlat0 = ((u_xlat0.xxx * vec3f(1.0f, 0.97000002861022949219f, 0.89999997615814208984f)) + u_xlat1);
  u_xlatb12 = (0.0f < x_354.x_DesertStar.w);
  if (u_xlatb12) {
    x_938 = u_xlat0;
  } else {
    x_938 = u_xlat1;
  }
  SV_Target0 = vec4f(x_938.xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

