//Assets/Levels/Geography/Materials/Shaders/GeoSky.shader
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

//Assets/Levels/Geography/Materials/Shaders/GeoSky.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_ZenithColor : vec4f,
  /* @offset(16) */
  x_HorizonColor : vec4f,
  /* @offset(32) */
  x_SunHorizonColor : vec4f,
  /* @offset(48) */
  x_BelowColor : vec4f,
  /* @offset(64) */
  x_SunColor : vec4f,
  /* @offset(80) */
  x_GlowColor : vec4f,
  /* @offset(96) */
  x_CloudTint : vec4f,
  /* @offset(112) */
  x_CloudFill : vec4f,
  /* @offset(128) */
  x_SunDir : vec4f,
  /* @offset(144) */
  x_CloudHorizonFade : vec4f,
  /* @offset(160) */
  x_HorizonSharpness : f32,
  /* @offset(164) */
  x_HorizonWarmth : f32,
  /* @offset(168) */
  x_SunDiskCos : f32,
  /* @offset(172) */
  x_SunDiskIntensity : f32,
  /* @offset(176) */
  x_GlowPower : f32,
  /* @offset(180) */
  x_GlowStrength : f32,
  /* @offset(184) */
  x_HaloPower : f32,
  /* @offset(188) */
  x_HaloStrength : f32,
  /* @offset(192) */
  x_CloudYaw : f32,
  /* @offset(196) */
  x_CloudExposure : f32,
  /* @offset(200) */
  x_CloudOpacity : f32,
  /* @offset(204) */
  x_CloudHaze : f32,
  /* @offset(208) */
  x_Exposure : f32,
  /* @offset(212) */
  x_CloudSunGlow : f32,
  /* @offset(216) */
  x_CloudSunThin : f32,
  /* @offset(220) */
  x_CloudCut : f32,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
}

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(1) var<uniform> x_198 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_347 : PGlobals;

@group(0) @binding(0) var x_CloudTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_CloudTex : sampler;

@group(0) @binding(1) var x_CloudAlpha : texture_2d<f32>;

@group(0) @binding(3) var sampler_CloudAlpha : sampler;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_368 = vec2f(0.15915493667125701904f, 0.63661974668502807617f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat6 : vec3f;
  var u_xlat1 : vec3f;
  var u_xlat19 : f32;
  var u_xlat2 : vec3f;
  var u_xlatb8 : bool;
  var x_122 : f32;
  var u_xlatb19 : bool;
  var u_xlatb2 : bool;
  var x_180 : f32;
  var u_xlat14 : vec2f;
  var u_xlatb0 : bool;
  var u_xlat20 : f32;
  var u_xlat3 : vec3f;
  var u_xlat9 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat8 : f32;
  var u_xlat12 : f32;
  var u_xlat21 : f32;
  var u_xlat18 : f32;
  var u_xlat5 : vec3f;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(vs_TEXCOORD0, vs_TEXCOORD0);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat6 = (u_xlat0.xxx * vs_TEXCOORD0.yxz);
  u_xlat1 = ((vs_TEXCOORD0.xzy * u_xlat0.xxx) + vec3f(0.00000999999974737875f, 0.00000999999974737875f, 0.00999999977648258209f));
  u_xlat0.x = max(abs(u_xlat6.z), abs(u_xlat6.y));
  u_xlat0.x = (1.0f / u_xlat0.x);
  u_xlat19 = min(abs(u_xlat6.z), abs(u_xlat6.y));
  u_xlat0.x = (u_xlat0.x * u_xlat19);
  u_xlat19 = (u_xlat0.x * u_xlat0.x);
  u_xlat2.x = ((u_xlat19 * 0.02083509974181652069f) + -0.08513300120830535889f);
  u_xlat2.x = ((u_xlat19 * u_xlat2.x) + 0.18014100193977355957f);
  u_xlat2.x = ((u_xlat19 * u_xlat2.x) + -0.33029949665069580078f);
  u_xlat19 = ((u_xlat19 * u_xlat2.x) + 0.99986600875854492188f);
  u_xlat2.x = (u_xlat0.x * u_xlat19);
  u_xlat2.x = ((u_xlat2.x * -2.0f) + 1.57079637050628662109f);
  u_xlatb8 = (abs(u_xlat6.z) < abs(u_xlat6.y));
  if (u_xlatb8) {
    x_122 = u_xlat2.x;
  } else {
    x_122 = 0.0f;
  }
  u_xlat2.x = x_122;
  u_xlat0.x = ((u_xlat0.x * u_xlat19) + u_xlat2.x);
  u_xlatb19 = (u_xlat6.z < -(u_xlat6.z));
  u_xlat19 = select(0.0f, -3.14159274101257324219f, u_xlatb19);
  u_xlat0.x = (u_xlat0.x + u_xlat19);
  u_xlat19 = min(u_xlat6.z, u_xlat6.y);
  u_xlatb19 = (u_xlat19 < -(u_xlat19));
  u_xlat2.x = max(u_xlat6.z, u_xlat6.y);
  u_xlatb2 = (u_xlat2.x >= -(u_xlat2.x));
  u_xlatb19 = (u_xlatb19 & u_xlatb2);
  if (u_xlatb19) {
    x_180 = -(u_xlat0.x);
  } else {
    x_180 = u_xlat0.x;
  }
  u_xlat0.x = x_180;
  u_xlat0.x = ((u_xlat0.x * 57.295780181884765625f) + -(x_198.x_CloudYaw));
  u_xlat2.x = ((u_xlat0.x * 0.00277777784503996372f) + 0.5f);
  u_xlat0.x = max(u_xlat6.x, -1.0f);
  u_xlat0.x = min(u_xlat0.x, 1.0f);
  u_xlat19 = ((abs(u_xlat0.x) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat19 = ((u_xlat19 * abs(u_xlat0.x)) + -0.21211439371109008789f);
  u_xlat19 = ((u_xlat19 * abs(u_xlat0.x)) + 1.57072877883911132812f);
  u_xlat14.x = (-(abs(u_xlat0.x)) + 1.0f);
  u_xlatb0 = (u_xlat0.x < -(u_xlat0.x));
  u_xlat14.x = sqrt(u_xlat14.x);
  u_xlat20 = (u_xlat19 * u_xlat14.x);
  u_xlat20 = ((u_xlat20 * -2.0f) + 3.14159274101257324219f);
  u_xlat0.x = select(0.0f, u_xlat20, u_xlatb0);
  u_xlat0.x = ((u_xlat19 * u_xlat14.x) + u_xlat0.x);
  u_xlat0.x = (-(u_xlat0.x) + 1.57079637050628662109f);
  let x_296 = (u_xlat0.xx * vec2f(3.18309879302978515625f, 0.63661974668502807617f));
  u_xlat3 = vec3f(x_296.x, u_xlat3.y, x_296.y);
  u_xlat2.y = max(u_xlat3.z, 0.0f);
  u_xlat3.x = u_xlat3.x;
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  let x_311 = u_xlat6;
  u_xlat9 = dpdxCoarse(x_311.yxz);
  u_xlat19 = (u_xlat6.y * u_xlat9.z);
  u_xlat19 = ((u_xlat6.z * u_xlat9.x) + -(u_xlat19));
  u_xlat14.x = dot(u_xlat6.yz, u_xlat6.yz);
  u_xlat14.x = max(u_xlat14.x, 0.00000099999999747524f);
  u_xlat19 = (u_xlat19 / u_xlat14.x);
  u_xlat4.x = (u_xlat19 * x_347.x_GlobalMipBias.y);
  u_xlat19 = sqrt(u_xlat14.x);
  u_xlat20 = (u_xlat9.y / u_xlat19);
  u_xlat4.y = (u_xlat20 * x_347.x_GlobalMipBias.y);
  u_xlat9 = vec3f(((u_xlat4.xy * x_368)).xy, u_xlat9.z);
  let x_372 = u_xlat6;
  let x_374 = dpdyCoarse(x_372.yxz);
  u_xlat4 = vec4f(x_374.xyz, u_xlat4.w);
  u_xlat20 = (u_xlat6.y * u_xlat4.z);
  u_xlat20 = ((u_xlat6.z * u_xlat4.x) + -(u_xlat20));
  u_xlat19 = (u_xlat4.y / u_xlat19);
  u_xlat4.y = (u_xlat19 * x_347.x_GlobalMipBias.y);
  u_xlat19 = (u_xlat20 / u_xlat14.x);
  u_xlat4.x = (u_xlat19 * x_347.x_GlobalMipBias.y);
  u_xlat14 = (u_xlat4.xy * x_368);
  let x_424 = u_xlat9.xyxx;
  let x_432 = u_xlat14.xyxx;
  u_xlat4 = vec4f(textureSampleGrad(x_CloudTex, sampler_CloudTex, u_xlat2.xy, vec4f(x_424.x, x_424.y, x_424.z, x_424.w).xy, vec4f(x_432.x, x_432.y, x_432.z, x_432.w).xy).xyz.xyz, u_xlat4.w);
  let x_451 = u_xlat9.xyxx;
  let x_459 = u_xlat14.xyxx;
  u_xlat19 = textureSampleGrad(x_CloudAlpha, sampler_CloudAlpha, u_xlat2.xy, vec4f(x_451.x, x_451.y, x_451.z, x_451.w).xy, vec4f(x_459.x, x_459.y, x_459.z, x_459.w).xy).x;
  u_xlat2.x = max(u_xlat19, 0.00100000004749745131f);
  u_xlat19 = (u_xlat19 + -(x_198.x_CloudCut));
  u_xlat8 = (-(x_198.x_CloudCut) + 1.0f);
  u_xlat8 = max(u_xlat8, 0.00100000004749745131f);
  u_xlat19 = (u_xlat19 / u_xlat8);
  u_xlat19 = clamp(u_xlat19, 0.0f, 1.0f);
  u_xlat2.x = (u_xlat19 / u_xlat2.x);
  u_xlat2 = (u_xlat2.xxx * u_xlat4.xyz);
  u_xlat20 = ((u_xlat0.x * 57.295780181884765625f) + -(x_198.x_CloudHorizonFade.x));
  u_xlat0.x = ((u_xlat0.x * 57.295780181884765625f) + -0.20000000298023223877f);
  u_xlat0.x = (u_xlat0.x * -0.37037035822868347168f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat9.x = (-(x_198.x_CloudHorizonFade.x) + x_198.x_CloudHorizonFade.y);
  u_xlat9.x = (1.0f / u_xlat9.x);
  u_xlat20 = (u_xlat20 * u_xlat9.x);
  u_xlat20 = clamp(u_xlat20, 0.0f, 1.0f);
  u_xlat9.x = ((u_xlat20 * -2.0f) + 3.0f);
  u_xlat20 = (u_xlat20 * u_xlat20);
  u_xlat20 = (u_xlat20 * u_xlat9.x);
  u_xlat20 = (u_xlat20 * x_198.x_CloudOpacity);
  u_xlat9.x = dot(x_198.x_SunDir.xyz, x_198.x_SunDir.xyz);
  u_xlat9.x = inverseSqrt(u_xlat9.x);
  u_xlat4 = vec4f(((u_xlat9.xxx * x_198.x_SunDir.xyz)).xyz, u_xlat4.w);
  u_xlat9 = vec3f((((x_198.x_SunDir.xz * u_xlat9.xx) + vec2f(0.00000999999974737875f))).xy, u_xlat9.z);
  u_xlat6.y = dot(u_xlat6.yxz, u_xlat4.xyz);
  let x_596 = u_xlat6.xy;
  u_xlat6 = vec3f(x_596.x, u_xlat6.y, x_596.y);
  let x_603 = clamp(u_xlat6.xz, vec2f(0.0f), vec2f(1.0f));
  u_xlat6 = vec3f(x_603.x, u_xlat6.y, x_603.y);
  u_xlat6.x = (-(u_xlat6.x) * x_198.x_HorizonSharpness);
  u_xlat6.x = (u_xlat6.x * 1.44269502162933349609f);
  u_xlat6.x = exp2(u_xlat6.x);
  u_xlat6.x = (-(u_xlat6.x) + 1.0f);
  u_xlat12 = (u_xlat6.y + -(x_198.x_SunDiskCos));
  u_xlat21 = (u_xlat6.z * u_xlat6.z);
  u_xlat18 = log2(u_xlat6.z);
  u_xlat4 = vec4f(((vec2f(u_xlat18) * vec2f(x_198.x_GlowPower, x_198.x_HaloPower))).xy, u_xlat4.zw);
  u_xlat4 = vec4f(exp2(u_xlat4.xy).xy, u_xlat4.zw);
  u_xlat18 = (u_xlat21 * u_xlat21);
  u_xlat21 = ((-(x_198.x_CloudSunThin) * u_xlat18) + 1.0f);
  u_xlat20 = (u_xlat20 * u_xlat21);
  u_xlat2 = (vec3f(u_xlat20) * u_xlat2);
  u_xlat2 = (u_xlat2 * x_198.x_CloudTint.xyz);
  u_xlat21 = (u_xlat19 * u_xlat20);
  u_xlat19 = ((-(u_xlat19) * u_xlat20) + 1.0f);
  u_xlat5 = (vec3f(u_xlat21) * x_198.x_CloudFill.xyz);
  let x_710 = vec3f(x_198.x_CloudExposure, x_198.x_CloudExposure, x_198.x_CloudExposure);
  u_xlat2 = ((u_xlat2 * vec3f(x_710.x, x_710.y, x_710.z)) + u_xlat5);
  let x_729 = vec3f(x_198.x_CloudSunGlow, x_198.x_CloudSunGlow, x_198.x_CloudSunGlow);
  u_xlat5 = (x_198.x_GlowColor.xyz * vec3f(x_729.x, x_729.y, x_729.z));
  u_xlat5 = (vec3f(u_xlat21) * u_xlat5);
  u_xlat2 = ((u_xlat5 * vec3f(u_xlat18)) + u_xlat2);
  u_xlat18 = dot(u_xlat9.xy, u_xlat9.xy);
  u_xlat18 = inverseSqrt(u_xlat18);
  u_xlat9 = vec3f(((vec2f(u_xlat18) * u_xlat9.xy)).xy, u_xlat9.z);
  u_xlat18 = dot(u_xlat1.xy, u_xlat1.xy);
  u_xlat18 = inverseSqrt(u_xlat18);
  u_xlat1 = vec3f(((vec2f(u_xlat18) * u_xlat1.xy)).xy, u_xlat1.z);
  u_xlatb18 = (u_xlat1.z >= 0.0f);
  u_xlat18 = select(0.0f, 1.0f, u_xlatb18);
  u_xlat1.x = dot(u_xlat1.xy, u_xlat9.xy);
  u_xlat1.x = ((u_xlat1.x * 0.5f) + 0.5f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * x_198.x_HorizonWarmth);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat5 = (-(x_198.x_HorizonColor.xyz) + x_198.x_SunHorizonColor.xyz);
  u_xlat1 = ((u_xlat1.xxx * u_xlat5) + x_198.x_HorizonColor.xyz);
  u_xlat9 = ((u_xlat1 * vec3f(u_xlat21)) + -(u_xlat2));
  u_xlat20 = ((u_xlat3.x * -2.0f) + 3.0f);
  u_xlat3.x = (u_xlat3.x * u_xlat3.x);
  u_xlat20 = ((-(u_xlat20) * u_xlat3.x) + 1.0f);
  u_xlat20 = (u_xlat20 * x_198.x_CloudHaze);
  u_xlat2 = ((vec3f(u_xlat20) * u_xlat9) + u_xlat2);
  u_xlat3 = (-(u_xlat1) + x_198.x_ZenithColor.xyz);
  u_xlat3 = ((u_xlat6.xxx * u_xlat3) + u_xlat1);
  u_xlat6.x = ((-(u_xlat6.x) * 0.60000002384185791016f) + 1.0f);
  let x_890 = vec3f(x_198.x_GlowStrength, x_198.x_GlowStrength, x_198.x_GlowStrength);
  u_xlat5 = (x_198.x_GlowColor.xyz * vec3f(x_890.x, x_890.y, x_890.z));
  let x_899 = (u_xlat4.xxx * u_xlat5);
  u_xlat4 = vec4f(x_899.x, u_xlat4.y, x_899.yz);
  u_xlat3 = ((u_xlat4.xzw * u_xlat6.xxx) + u_xlat3);
  u_xlat2 = ((u_xlat3 * vec3f(u_xlat19)) + u_xlat2);
  u_xlat6.x = (-(x_198.x_SunDiskCos) + 1.0f);
  u_xlat6.x = (u_xlat6.x * 0.34999999403953552246f);
  u_xlat6.x = (1.0f / u_xlat6.x);
  u_xlat6.x = (u_xlat6.x * u_xlat12);
  u_xlat6.x = clamp(u_xlat6.x, 0.0f, 1.0f);
  u_xlat12 = ((u_xlat6.x * -2.0f) + 3.0f);
  u_xlat6.x = (u_xlat6.x * u_xlat6.x);
  u_xlat6.x = (u_xlat6.x * u_xlat12);
  let x_964 = vec3f(x_198.x_SunDiskIntensity, x_198.x_SunDiskIntensity, x_198.x_SunDiskIntensity);
  u_xlat3 = (x_198.x_SunColor.xyz * vec3f(x_964.x, x_964.y, x_964.z));
  u_xlat3 = (u_xlat6.xxx * u_xlat3);
  let x_984 = vec3f(x_198.x_HaloStrength, x_198.x_HaloStrength, x_198.x_HaloStrength);
  let x_989 = (x_198.x_SunColor.xyz * vec3f(x_984.x, x_984.y, x_984.z));
  u_xlat4 = vec4f(x_989.x, u_xlat4.y, x_989.yz);
  u_xlat4 = vec4f(((u_xlat4.yyy * u_xlat4.xzw)).xyz, u_xlat4.w);
  u_xlat3 = ((u_xlat3 * vec3f(u_xlat19)) + u_xlat4.xyz);
  u_xlat6 = ((u_xlat3 * vec3f(u_xlat18)) + u_xlat2);
  u_xlat2 = (-(u_xlat1) + x_198.x_BelowColor.xyz);
  u_xlat1 = ((u_xlat2 * vec3f(0.64999997615814208984f)) + u_xlat1);
  u_xlat1 = (-(u_xlat6) + u_xlat1);
  u_xlat19 = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat19);
  u_xlat0 = ((u_xlat0.xxx * u_xlat1) + u_xlat6);
  SV_Target0 = vec4f(((u_xlat0 * vec3f(x_198.x_Exposure))).xyz, SV_Target0.w);
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

