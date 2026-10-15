//Assets/Shared/Rendering/Shaders/B612_Sky.shader
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

//Assets/Shared/Rendering/Shaders/B612_Sky.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(16) */
  x_Time : vec4f,
  /* @offset(32) */
  x_B612SunDirection : vec4f,
  /* @offset(48) */
  x_B612TimeParams : vec4f,
  /* @offset(64) */
  x_B612SkyZenith : vec4f,
  /* @offset(80) */
  x_B612SkyHorizon : vec4f,
  /* @offset(96) */
  x_B612SkyHorizonSun : vec4f,
  /* @offset(112) */
  x_B612SkyGround : vec4f,
  /* @offset(128) */
  x_B612SkyParams : vec4f,
  /* @offset(144) */
  x_B612HazeColor : vec4f,
  /* @offset(160) */
  x_B612HazeParams : vec4f,
  /* @offset(176) */
  x_B612SkyGlow : vec4f,
  /* @offset(192) */
  x_B612SkyAnti : vec4f,
  /* @offset(208) */
  x_B612SkyParams2 : vec4f,
  /* @offset(224) */
  x_B612CloudTint : vec4f,
  /* @offset(240) */
  x_B612CloudFill : vec4f,
  /* @offset(256) */
  x_B612CloudParams : vec4f,
  /* @offset(272) */
  x_B612SunGlow : vec4f,
  /* @offset(288) */
  x_B612SunDisk : vec4f,
  /* @offset(304) */
  x_B612SunHalo : vec4f,
  /* @offset(320) */
  x_B612CloudLit : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_CloudPanoLatMin : f32,
  /* @offset(4) */
  x_CloudPanoDayScale : f32,
  /* @offset(8) */
  x_CloudPanoDuskScale : f32,
  /* @offset(12) */
  x_CloudDriftPeriod : f32,
  /* @offset(16) */
  x_SunGlowOverClouds : f32,
  /* @offset(20) */
  Xhlslcc_UnusedX_CloudSoftness : f32,
  /* @offset(24) */
  Xhlslcc_UnusedX_CloudContrast : f32,
  /* @offset(28) */
  Xhlslcc_UnusedX_SunOcclusionByClouds : f32,
  /* @offset(32) */
  Xhlslcc_UnusedX_HdriLatMin : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_HdriRingElevation : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_HdriDrift : f32,
  /* @offset(44) */
  Xhlslcc_UnusedX_HdriGroundBlend : f32,
  /* @offset(48) */
  Xhlslcc_UnusedX_HdriBlend : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_DayExposure : f32,
  /* @offset(68) */
  Xhlslcc_UnusedX_DaySaturation : f32,
  /* @offset(72) */
  Xhlslcc_UnusedX_DayHorizonRange : f32,
  /* @offset(76) */
  Xhlslcc_UnusedX_DayZenithStart : f32,
  /* @offset(80) */
  Xhlslcc_UnusedX_DayYaw : f32,
  /* @offset(84) */
  Xhlslcc_UnusedX_DaySunDisk : f32,
  /* @offset(88) */
  Xhlslcc_UnusedX_DayHalo : f32,
  /* @offset(96) */
  Xhlslcc_UnusedX_DayTint : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_DayHorizon : vec4f,
  /* @offset(128) */
  Xhlslcc_UnusedX_DayZenith : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedX_DuskExposure : f32,
  /* @offset(148) */
  Xhlslcc_UnusedX_DuskSaturation : f32,
  /* @offset(152) */
  Xhlslcc_UnusedX_DuskHorizonRange : f32,
  /* @offset(156) */
  Xhlslcc_UnusedX_DuskZenithStart : f32,
  /* @offset(160) */
  Xhlslcc_UnusedX_DuskYaw : f32,
  /* @offset(164) */
  Xhlslcc_UnusedX_DuskSunDisk : f32,
  /* @offset(168) */
  Xhlslcc_UnusedX_DuskHalo : f32,
  /* @offset(176) */
  Xhlslcc_UnusedX_DuskTint : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedX_DuskHorizon : vec4f,
  /* @offset(208) */
  Xhlslcc_UnusedX_DuskZenith : vec4f,
  /* @offset(224) */
  Xhlslcc_UnusedX_DaySunDim : vec4f,
  /* @offset(240) */
  Xhlslcc_UnusedX_DuskSunDim : vec4f,
  /* @offset(256) */
  Xhlslcc_UnusedX_DayKnee : vec4f,
  /* @offset(272) */
  Xhlslcc_UnusedX_DuskKnee : vec4f,
  /* @offset(288) */
  Xhlslcc_UnusedX_CloudHeight : f32,
  /* @offset(292) */
  Xhlslcc_UnusedX_CloudWindSpeed : f32,
  /* @offset(296) */
  Xhlslcc_UnusedX_CloudFlowPeriod : f32,
  /* @offset(300) */
  Xhlslcc_UnusedX_CloudFlowFade : f32,
  /* @offset(304) */
  Xhlslcc_UnusedX_CloudFlowNoise : f32,
  /* @offset(308) */
  Xhlslcc_UnusedX_CloudHaze : f32,
  /* @offset(312) */
  Xhlslcc_UnusedX_SunFlatten : f32,
  /* @offset(320) */
  Xhlslcc_UnusedX_CloudDamp : vec4f,
  /* @offset(336) */
  Xhlslcc_UnusedX_CloudHorizonFade : vec4f,
  /* @offset(352) */
  Xhlslcc_UnusedX_DayCloudWarm : vec4f,
  /* @offset(368) */
  Xhlslcc_UnusedX_CloudRelight : vec4f,
  /* @offset(384) */
  Xhlslcc_UnusedX_CloudSilver : vec4f,
  /* @offset(400) */
  Xhlslcc_UnusedX_CloudEvolution : vec4f,
  /* @offset(416) */
  Xhlslcc_UnusedX_CloudViewGrad : f32,
  /* @offset(432) */
  Xhlslcc_UnusedX_PhotoCloudCut : vec4f,
  /* @offset(448) */
  Xhlslcc_UnusedX_Cirrus : vec4f,
  /* @offset(464) */
  Xhlslcc_UnusedX_CirrusShape : vec4f,
  /* @offset(480) */
  Xhlslcc_UnusedX_CirrusTint : vec4f,
  /* @offset(496) */
  Xhlslcc_UnusedX_SunLimb : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedX_Rays : vec4f,
  /* @offset(528) */
  Xhlslcc_UnusedX_RaysColor : vec4f,
  /* @offset(544) */
  Xhlslcc_UnusedX_DuskSun : vec4f,
  /* @offset(560) */
  Xhlslcc_UnusedX_DuskSunColor : vec4f,
  /* @offset(576) */
  Xhlslcc_UnusedX_DuskHaloColor : vec4f,
  /* @offset(592) */
  Xhlslcc_UnusedX_StarBrightness : f32,
  /* @offset(596) */
  Xhlslcc_UnusedX_StarSize : f32,
  /* @offset(600) */
  Xhlslcc_UnusedX_StarTwinkle : f32,
  /* @offset(604) */
  Xhlslcc_UnusedX_StarHorizon : f32,
  /* @offset(608) */
  Xhlslcc_UnusedX_StarDensity : vec4f,
  /* @offset(624) */
  Xhlslcc_UnusedX_MilkyWay : vec4f,
  /* @offset(640) */
  Xhlslcc_UnusedX_MilkyWayPole : vec4f,
  /* @offset(656) */
  Xhlslcc_UnusedX_MoonColor : vec4f,
  /* @offset(672) */
  Xhlslcc_UnusedX_MoonHalo : vec4f,
  /* @offset(688) */
  Xhlslcc_UnusedX_MoonHaloColor : vec4f,
}

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

var<private> SV_Target0 : vec4f;

@group(1) @binding(1) var<uniform> x_747 : UnityPerMaterial;

@group(0) @binding(2) var x_CloudPanoAlpha : texture_2d<f32>;

@group(0) @binding(3) var sampler_linear_repeatU_clampV : sampler;

@group(0) @binding(0) var x_CloudPanoDay : texture_2d<f32>;

@group(0) @binding(1) var x_CloudPanoDusk : texture_2d<f32>;

var<private> gl_FragCoord : vec4f;

const x_197 = vec2f(0.00000999999974737875f, 0.0f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat7 : vec3f;
  var u_xlatb1 : bool;
  var u_xlat1 : vec3f;
  var u_xlat22 : f32;
  var u_xlat2 : vec3f;
  var u_xlat9 : vec3f;
  var u_xlat16 : vec2f;
  var u_xlat23 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3f;
  var u_xlat24 : f32;
  var u_xlat4 : vec4f;
  var u_xlat25 : f32;
  var u_xlat8 : vec3f;
  var u_xlat15 : f32;
  var u_xlat10 : vec3f;
  var u_xlat14 : f32;
  var u_xlat5 : vec3f;
  var u_xlat12 : f32;
  var u_xlat19 : f32;
  var u_xlatb26 : bool;
  var u_xlatb12 : bool;
  var u_xlatb19 : bool;
  var x_928 : f32;
  var u_xlat6 : vec3f;
  var u_xlat21 : f32;
  var u_xlat17 : vec2f;
  var u_xlatb10 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(vs_TEXCOORD0, vs_TEXCOORD0);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat7 = (u_xlat0.xxx * vs_TEXCOORD0);
  u_xlatb1 = (x_35.x_B612SunDirection.w < 0.5f);
  if (u_xlatb1) {
    u_xlat1.x = (u_xlat7.y * 1.5f);
    u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
    SV_Target0 = vec4f((((u_xlat1.xxx * vec3f(-0.40000000596046447754f, -0.34000000357627868652f, -0.12000000476837158203f)) + vec3f(0.62000000476837158203f, 0.75999999046325683594f, 0.89999997615814208984f))).xyz, SV_Target0.w);
    SV_Target0.w = 1.0f;
    return;
  }
  u_xlat1 = (x_35.x_B612SunDirection.xyz + vec3f(0.0f, 0.00009999999747378752f, 0.0f));
  u_xlat22 = dot(u_xlat1, u_xlat1);
  u_xlat22 = inverseSqrt(u_xlat22);
  u_xlat1 = (vec3f(u_xlat22) * u_xlat1);
  u_xlat22 = u_xlat7.y;
  u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
  u_xlat2.x = max(u_xlat7.y, -1.0f);
  u_xlat2.x = min(u_xlat2.x, 1.0f);
  u_xlat9.x = (-(abs(u_xlat2.x)) + 1.0f);
  u_xlat9.x = sqrt(u_xlat9.x);
  u_xlat16.x = ((abs(u_xlat2.x) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat16.x = ((u_xlat16.x * abs(u_xlat2.x)) + -0.21211439371109008789f);
  u_xlat16.x = ((u_xlat16.x * abs(u_xlat2.x)) + 1.57072877883911132812f);
  u_xlat23 = (u_xlat9.x * u_xlat16.x);
  u_xlat23 = ((u_xlat23 * -2.0f) + 3.14159274101257324219f);
  u_xlatb2 = (u_xlat2.x < -(u_xlat2.x));
  u_xlat2.x = select(0.0f, u_xlat23, u_xlatb2);
  u_xlat2.x = ((u_xlat16.x * u_xlat9.x) + u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.57079637050628662109f);
  u_xlat9.x = (u_xlat2.x * 57.295780181884765625f);
  u_xlat16 = ((vs_TEXCOORD0.xz * u_xlat0.xx) + x_197);
  u_xlat0.x = dot(u_xlat16, u_xlat16);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat16 = (u_xlat0.xx * u_xlat16);
  u_xlat3 = vec3f(((x_35.x_B612SunDirection.xz + x_197)).xy, u_xlat3.z);
  u_xlat0.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat3 = vec3f(((u_xlat0.xx * u_xlat3.xy)).xy, u_xlat3.z);
  u_xlat0.x = dot(u_xlat16, u_xlat3.xy);
  u_xlat0.x = ((u_xlat0.x * 0.5f) + 0.5f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat16.x = max(x_35.x_B612SkyParams.y, 0.00999999977648258209f);
  u_xlat23 = log2(u_xlat0.x);
  u_xlat16.x = (u_xlat23 * u_xlat16.x);
  u_xlat16.x = exp2(u_xlat16.x);
  u_xlat3 = (-(x_35.x_B612SkyHorizon.xyz) + x_35.x_B612SkyHorizonSun.xyz);
  u_xlat3 = ((u_xlat16.xxx * u_xlat3) + x_35.x_B612SkyHorizon.xyz);
  u_xlat24 = (x_35.x_B612SkyParams.x * 0.44999998807907104492f);
  u_xlat24 = max(u_xlat24, 0.00999999977648258209f);
  u_xlat24 = (-(u_xlat22) / u_xlat24);
  u_xlat24 = (u_xlat24 * 1.44269502162933349609f);
  u_xlat24 = exp2(u_xlat24);
  u_xlat24 = (-(u_xlat24) + 1.0f);
  u_xlat4 = vec4f(((-(x_35.x_B612SkyZenith.xyz) + x_35.x_B612SkyHorizonSun.xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f(((u_xlat4.xyz * vec3f(0.34999999403953552246f))).xyz, u_xlat4.w);
  u_xlat16.x = (u_xlat16.x * x_35.x_B612SkyParams.z);
  u_xlat25 = (-(u_xlat22) + 1.0f);
  u_xlat16.x = (u_xlat16.x * u_xlat25);
  u_xlat4 = vec4f((((u_xlat16.xxx * u_xlat4.xyz) + x_35.x_B612SkyZenith.xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f(((-(u_xlat3) + u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat3 = ((vec3f(u_xlat24) * u_xlat4.xyz) + u_xlat3);
  u_xlat4 = vec4f(max(x_35.x_B612HazeParams.xy, vec2f(0.10000000149011611938f, 1.0f)).xy, u_xlat4.zw);
  u_xlat22 = (-(u_xlat22) * u_xlat4.x);
  u_xlat22 = (u_xlat22 * 1.44269502162933349609f);
  u_xlat22 = exp2(u_xlat22);
  u_xlat22 = (u_xlat22 * x_35.x_B612HazeColor.w);
  u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
  let x_395 = (-(u_xlat3) + x_35.x_B612HazeColor.xyz);
  u_xlat4 = vec4f(x_395.x, u_xlat4.y, x_395.yz);
  u_xlat3 = ((vec3f(u_xlat22) * u_xlat4.xzw) + u_xlat3);
  u_xlat22 = max(u_xlat9.x, 0.0f);
  let x_413 = max(x_35.x_B612SkyParams2.xyz, vec3f(0.00999999977648258209f, 0.10000000149011611938f, 0.00999999977648258209f));
  u_xlat4 = vec4f(x_413.x, u_xlat4.y, x_413.yz);
  u_xlat9.x = (u_xlat23 * u_xlat4.x);
  u_xlat9.x = exp2(u_xlat9.x);
  u_xlat9 = (u_xlat9.xxx * x_35.x_B612SkyGlow.xyz);
  u_xlat24 = max(x_35.x_B612SkyGlow.w, 0.10000000149011611938f);
  u_xlat22 = (-(u_xlat22) / u_xlat24);
  u_xlat22 = (u_xlat22 * 1.44269502162933349609f);
  u_xlat22 = exp2(u_xlat22);
  u_xlat9 = ((u_xlat9 * vec3f(u_xlat22)) + u_xlat3);
  u_xlat22 = ((u_xlat2.x * 57.295780181884765625f) + -(x_35.x_B612SkyAnti.w));
  u_xlat22 = (u_xlat22 / u_xlat4.z);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat4.w);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat3 = (u_xlat0.xxx * x_35.x_B612SkyAnti.xyz);
  u_xlat0.x = (u_xlat22 * -(u_xlat22));
  u_xlat0.x = (u_xlat0.x * 1.44269502162933349609f);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat9 = ((u_xlat3 * u_xlat0.xxx) + u_xlat9);
  u_xlat0.x = (-(u_xlat7.y) * u_xlat4.y);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat3 = (-(u_xlat9) + x_35.x_B612SkyGround.xyz);
  u_xlat9 = ((u_xlat0.xxx * u_xlat3) + u_xlat9);
  u_xlat9 = (u_xlat9 * x_35.x_B612SkyParams.www);
  u_xlat0.x = dot(u_xlat7, u_xlat1);
  u_xlat1.x = max(u_xlat0.x, -1.0f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat8.x = (-(abs(u_xlat1.x)) + 1.0f);
  u_xlat8.x = sqrt(u_xlat8.x);
  u_xlat15 = ((abs(u_xlat1.x) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat15 = ((u_xlat15 * abs(u_xlat1.x)) + -0.21211439371109008789f);
  u_xlat15 = ((u_xlat15 * abs(u_xlat1.x)) + 1.57072877883911132812f);
  u_xlat22 = (u_xlat8.x * u_xlat15);
  u_xlat22 = ((u_xlat22 * -2.0f) + 3.14159274101257324219f);
  u_xlatb1 = (u_xlat1.x < -(u_xlat1.x));
  u_xlat1.x = select(0.0f, u_xlat22, u_xlatb1);
  u_xlat1.x = ((u_xlat15 * u_xlat8.x) + u_xlat1.x);
  u_xlat8.x = max(x_35.x_B612SunDisk.w, 0.05000000074505805969f);
  u_xlat8 = vec3f(((u_xlat8.xx * vec2f(0.85000002384185791016f, 0.29999995231628417969f))).xy, u_xlat8.z);
  u_xlat1.x = ((u_xlat1.x * 57.295780181884765625f) + -(u_xlat8.x));
  u_xlat8.x = (1.0f / u_xlat8.y);
  u_xlat1.x = (u_xlat8.x * u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat8.x = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat8.x) * u_xlat1.x) + 1.0f);
  u_xlat8.x = ((u_xlat2.x * 57.295780181884765625f) + 0.60000002384185791016f);
  u_xlat8.x = (u_xlat8.x * 1.25f);
  u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
  u_xlat15 = ((u_xlat8.x * -2.0f) + 3.0f);
  u_xlat8.x = (u_xlat8.x * u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * u_xlat15);
  u_xlat1.x = (u_xlat8.x * u_xlat1.x);
  u_xlat0.x = u_xlat0.x;
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat8.x = max(x_35.x_B612SunHalo.w, 1.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat8.x = (u_xlat0.x * u_xlat8.x);
  u_xlat8.x = exp2(u_xlat8.x);
  u_xlat15 = max(x_35.x_B612SunGlow.w, 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat15);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat3 = (u_xlat0.xxx * x_35.x_B612SunGlow.xyz);
  u_xlat8 = ((x_35.x_B612SunHalo.xyz * u_xlat8.xxx) + u_xlat3);
  u_xlat0.x = max(x_747.x_CloudDriftPeriod, 10.0f);
  u_xlat3.x = (u_xlat0.x * x_35.x_B612CloudParams.x);
  u_xlat3.x = (u_xlat3.x * 0.15915493667125701904f);
  u_xlat10.x = (x_35.x_Time.y * 6.28318548202514648438f);
  u_xlat0.x = (u_xlat10.x / u_xlat0.x);
  u_xlat0.x = sin(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat3.x);
  let x_789 = u_xlat7;
  u_xlat3 = dpdxCoarse(x_789);
  let x_791 = u_xlat7;
  let x_792 = dpdyCoarse(x_791);
  u_xlat4 = vec4f(x_792.xyz, u_xlat4.w);
  u_xlat14 = dot(u_xlat7.xz, u_xlat7.xz);
  u_xlat14 = max(u_xlat14, 0.00000099999999747524f);
  u_xlat24 = (-(x_747.x_CloudPanoLatMin) + 90.0f);
  u_xlat24 = (u_xlat24 * 0.01745329238474369049f);
  u_xlat25 = sqrt(u_xlat14);
  u_xlat5.x = min(abs(u_xlat7.z), abs(u_xlat7.x));
  u_xlat12 = max(abs(u_xlat7.z), abs(u_xlat7.x));
  u_xlat12 = (1.0f / u_xlat12);
  u_xlat5.x = (u_xlat12 * u_xlat5.x);
  u_xlat12 = (u_xlat5.x * u_xlat5.x);
  u_xlat19 = ((u_xlat12 * 0.02083509974181652069f) + -0.08513300120830535889f);
  u_xlat19 = ((u_xlat12 * u_xlat19) + 0.18014100193977355957f);
  u_xlat19 = ((u_xlat12 * u_xlat19) + -0.33029949665069580078f);
  u_xlat12 = ((u_xlat12 * u_xlat19) + 0.99986600875854492188f);
  u_xlat19 = (u_xlat12 * u_xlat5.x);
  u_xlatb26 = (abs(u_xlat7.z) < abs(u_xlat7.x));
  u_xlat19 = ((u_xlat19 * -2.0f) + 1.57079637050628662109f);
  u_xlat19 = select(0.0f, u_xlat19, u_xlatb26);
  u_xlat5.x = ((u_xlat5.x * u_xlat12) + u_xlat19);
  u_xlatb12 = (u_xlat7.z < -(u_xlat7.z));
  u_xlat12 = select(0.0f, -3.14159274101257324219f, u_xlatb12);
  u_xlat5.x = (u_xlat12 + u_xlat5.x);
  u_xlat12 = min(u_xlat7.z, u_xlat7.x);
  u_xlat19 = max(u_xlat7.z, u_xlat7.x);
  u_xlatb12 = (u_xlat12 < -(u_xlat12));
  u_xlatb19 = (u_xlat19 >= -(u_xlat19));
  u_xlatb12 = (u_xlatb19 & u_xlatb12);
  if (u_xlatb12) {
    x_928 = -(u_xlat5.x);
  } else {
    x_928 = u_xlat5.x;
  }
  u_xlat5.x = x_928;
  u_xlat0.x = ((u_xlat0.x * 0.01745329238474369049f) + u_xlat5.x);
  u_xlat5.x = ((u_xlat0.x * 0.15915493667125701904f) + 0.5f);
  u_xlat0.x = ((-(x_747.x_CloudPanoLatMin) * 0.01745329238474369049f) + u_xlat2.x);
  u_xlat5.y = (u_xlat0.x / u_xlat24);
  u_xlat0.x = (u_xlat7.x * u_xlat3.z);
  u_xlat0.x = ((u_xlat7.z * u_xlat3.x) + -(u_xlat0.x));
  u_xlat0.x = (u_xlat0.x / u_xlat14);
  u_xlat6.x = (u_xlat0.x * x_35.x_GlobalMipBias.y);
  u_xlat0.x = (u_xlat3.y / u_xlat25);
  u_xlat6.y = (u_xlat0.x / u_xlat24);
  u_xlat0.x = (u_xlat7.x * u_xlat4.z);
  u_xlat0.x = ((u_xlat7.z * u_xlat4.x) + -(u_xlat0.x));
  u_xlat0.x = (u_xlat0.x / u_xlat14);
  u_xlat0.x = (u_xlat0.x * x_35.x_GlobalMipBias.y);
  u_xlat14 = (u_xlat4.y / u_xlat25);
  u_xlat0.y = (u_xlat14 / u_xlat24);
  u_xlat14 = x_35.x_B612CloudLit.w;
  u_xlat14 = clamp(u_xlat14, 0.0f, 1.0f);
  u_xlat21 = ((u_xlat2.x * 57.295780181884765625f) + -(x_747.x_CloudPanoLatMin));
  u_xlat21 = clamp(u_xlat21, 0.0f, 1.0f);
  u_xlat3.x = ((u_xlat21 * -2.0f) + 3.0f);
  u_xlat21 = (u_xlat21 * u_xlat21);
  u_xlat21 = (u_xlat21 * u_xlat3.x);
  u_xlat14 = (u_xlat21 * u_xlat14);
  u_xlat3.x = 0.15915493667125701904f;
  u_xlat3.y = x_35.x_GlobalMipBias.y;
  u_xlat17 = (u_xlat3.xy * u_xlat6.xy);
  u_xlat0 = vec3f(((u_xlat0.xy * u_xlat3.xy)).xy, u_xlat0.z);
  let x_1096 = u_xlat17.xyxx;
  let x_1104 = u_xlat0.xyxx;
  u_xlat21 = textureSampleGrad(x_CloudPanoAlpha, sampler_linear_repeatU_clampV, u_xlat5.xy, vec4f(x_1096.x, x_1096.y, x_1096.z, x_1096.w).xy, vec4f(x_1104.x, x_1104.y, x_1104.z, x_1104.w).xy).x;
  u_xlat3.x = (u_xlat14 * u_xlat21);
  u_xlat4 = vec4f((((x_35.x_B612SunDisk.xyz * u_xlat1.xxx) + u_xlat9)).xyz, u_xlat4.w);
  u_xlatb1 = (0.00100000004749745131f < u_xlat3.x);
  if (u_xlatb1) {
    u_xlat1.x = x_35.x_B612TimeParams.x;
    u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
    u_xlatb10 = (u_xlat1.x < 0.99900001287460327148f);
    if (u_xlatb10) {
      let x_1156 = u_xlat17.xyxx;
      let x_1164 = u_xlat0.xyxx;
      u_xlat6 = textureSampleGrad(x_CloudPanoDay, sampler_linear_repeatU_clampV, u_xlat5.xy, vec4f(x_1156.x, x_1156.y, x_1156.z, x_1156.w).xy, vec4f(x_1164.x, x_1164.y, x_1164.z, x_1164.w).xy).xyz;
      u_xlat10.x = (-(u_xlat1.x) + 1.0f);
      u_xlat10.x = (u_xlat10.x * x_747.x_CloudPanoDayScale);
      u_xlat6 = (u_xlat10.xxx * u_xlat6);
    } else {
      u_xlat6.x = 0.0f;
      u_xlat6.y = 0.0f;
      u_xlat6.z = 0.0f;
    }
    u_xlatb10 = (0.00100000004749745131f < u_xlat1.x);
    if (u_xlatb10) {
      let x_1205 = u_xlat17.xyxx;
      let x_1213 = u_xlat0.xyxx;
      u_xlat10 = textureSampleGrad(x_CloudPanoDusk, sampler_linear_repeatU_clampV, u_xlat5.xy, vec4f(x_1205.x, x_1205.y, x_1205.z, x_1205.w).xy, vec4f(x_1213.x, x_1213.y, x_1213.z, x_1213.w).xy).xyz;
      u_xlat0.x = (u_xlat1.x * x_747.x_CloudPanoDuskScale);
      u_xlat6 = ((u_xlat10 * u_xlat0.xxx) + u_xlat6);
    }
    u_xlat10 = max(u_xlat6, vec3f());
    u_xlat10 = (vec3f(u_xlat14) * u_xlat10);
    u_xlat10 = (u_xlat10 * x_35.x_B612CloudTint.xyz);
    u_xlat5 = (u_xlat3.xxx * x_35.x_B612CloudFill.xyz);
    u_xlat10 = ((u_xlat10 * x_35.x_B612CloudParams.www) + u_xlat5);
    u_xlat0.x = ((-(u_xlat2.x) * 2.60435366630554199219f) + 1.0f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat0.x);
    u_xlat0.x = (u_xlat0.x * x_35.x_B612CloudParams.z);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat2 = ((u_xlat9 * u_xlat3.xxx) + -(u_xlat10));
    u_xlat2 = ((u_xlat0.xxx * u_xlat2) + u_xlat10);
    u_xlat0.x = ((-(u_xlat21) * u_xlat14) + 1.0f);
    u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat0.xxx) + u_xlat2)).xyz, u_xlat4.w);
  }
  u_xlat0.x = (-(x_747.x_SunGlowOverClouds) + 1.0f);
  u_xlat0.x = ((-(u_xlat3.x) * u_xlat0.x) + 1.0f);
  u_xlat0 = ((u_xlat8 * u_xlat0.xxx) + u_xlat4.xyz);
  SV_Target0 = vec4f(max(u_xlat0, vec3f()).xyz, SV_Target0.w);
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



/* ================= variant ================= */

