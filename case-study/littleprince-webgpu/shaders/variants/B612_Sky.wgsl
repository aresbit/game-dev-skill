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
  x_B612SkyGround : vec4f,
  /* @offset(80) */
  x_B612SkyParams : vec4f,
  /* @offset(96) */
  x_B612CloudParams : vec4f,
  /* @offset(112) */
  x_B612SunGlow : vec4f,
  /* @offset(128) */
  x_B612SunDisk : vec4f,
  /* @offset(144) */
  x_B612SunHalo : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_CloudPanoLatMin : f32,
  /* @offset(4) */
  Xhlslcc_UnusedX_CloudPanoDayScale : f32,
  /* @offset(8) */
  Xhlslcc_UnusedX_CloudPanoDuskScale : f32,
  /* @offset(12) */
  x_CloudDriftPeriod : f32,
  /* @offset(16) */
  Xhlslcc_UnusedX_SunGlowOverClouds : f32,
  /* @offset(20) */
  Xhlslcc_UnusedX_CloudSoftness : f32,
  /* @offset(24) */
  Xhlslcc_UnusedX_CloudContrast : f32,
  /* @offset(28) */
  Xhlslcc_UnusedX_SunOcclusionByClouds : f32,
  /* @offset(32) */
  x_HdriLatMin : f32,
  /* @offset(36) */
  x_HdriRingElevation : f32,
  /* @offset(40) */
  x_HdriDrift : f32,
  /* @offset(44) */
  x_HdriGroundBlend : f32,
  /* @offset(48) */
  x_HdriBlend : vec4f,
  /* @offset(64) */
  x_DayExposure : f32,
  /* @offset(68) */
  x_DaySaturation : f32,
  /* @offset(72) */
  x_DayHorizonRange : f32,
  /* @offset(76) */
  x_DayZenithStart : f32,
  /* @offset(80) */
  x_DayYaw : f32,
  /* @offset(84) */
  x_DaySunDisk : f32,
  /* @offset(88) */
  x_DayHalo : f32,
  /* @offset(96) */
  x_DayTint : vec4f,
  /* @offset(112) */
  x_DayHorizon : vec4f,
  /* @offset(128) */
  x_DayZenith : vec4f,
  /* @offset(144) */
  x_DuskExposure : f32,
  /* @offset(148) */
  x_DuskSaturation : f32,
  /* @offset(152) */
  x_DuskHorizonRange : f32,
  /* @offset(156) */
  x_DuskZenithStart : f32,
  /* @offset(160) */
  x_DuskYaw : f32,
  /* @offset(164) */
  x_DuskSunDisk : f32,
  /* @offset(168) */
  x_DuskHalo : f32,
  /* @offset(176) */
  x_DuskTint : vec4f,
  /* @offset(192) */
  x_DuskHorizon : vec4f,
  /* @offset(208) */
  x_DuskZenith : vec4f,
  /* @offset(224) */
  x_DaySunDim : vec4f,
  /* @offset(240) */
  x_DuskSunDim : vec4f,
  /* @offset(256) */
  x_DayKnee : vec4f,
  /* @offset(272) */
  x_DuskKnee : vec4f,
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

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

var<private> SV_Target0 : vec4f;

@group(1) @binding(1) var<uniform> x_364 : UnityPerMaterial;

@group(0) @binding(2) var x_SkyHdriRingDay : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearRepeat : sampler;

@group(0) @binding(3) var x_SkyHdriRingDusk : texture_2d<f32>;

@group(0) @binding(0) var x_SkyHdriDay : texture_2d<f32>;

@group(0) @binding(5) var sampler_trilinear_repeatU_clampV : sampler;

@group(0) @binding(1) var x_SkyHdriDusk : texture_2d<f32>;

var<private> gl_FragCoord : vec4f;

const x_685 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_735 = vec3f(-1.0f);

const x_741 = vec3f(1.0f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat1 : vec3f;
  var u_xlat46 : f32;
  var u_xlat2 : vec3f;
  var u_xlat17 : f32;
  var u_xlat16 : vec3f;
  var u_xlat31 : f32;
  var u_xlatb16 : bool;
  var u_xlat47 : f32;
  var u_xlat3 : vec4f;
  var u_xlat18 : vec3f;
  var u_xlat4 : vec3f;
  var u_xlat5 : vec3f;
  var u_xlat6 : vec3f;
  var u_xlatb49 : bool;
  var u_xlat50 : f32;
  var u_xlat51 : f32;
  var u_xlat7 : vec3f;
  var u_xlatb22 : bool;
  var x_532 : f32;
  var u_xlatb51 : bool;
  var u_xlatb7 : bool;
  var x_585 : f32;
  var u_xlatb50 : bool;
  var u_xlat52 : f32;
  var u_xlat8 : vec3f;
  var x_674 : vec3f;
  var u_xlatb23 : bool;
  var x_854 : f32;
  var u_xlatb52 : bool;
  var u_xlatb8 : bool;
  var x_906 : f32;
  var u_xlat53 : f32;
  var u_xlat9 : vec3f;
  var x_986 : vec3f;
  var u_xlat49 : f32;
  var u_xlat23 : f32;
  var u_xlat38 : vec2f;
  var u_xlatb53 : bool;
  var x_1178 : f32;
  var u_xlatb38 : bool;
  var x_1233 : f32;
  var u_xlat10 : vec2f;
  var u_xlat11 : vec2f;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlat14 : vec3f;
  var x_1419 : f32;
  var u_xlatb48 : bool;
  var x_1520 : vec3f;
  var u_xlat48 : f32;
  var x_1748 : f32;
  var u_xlat35 : f32;
  var u_xlatb47 : bool;
  var u_xlat15 : vec3f;
  var x_1918 : f32;
  var u_xlatb15 : bool;
  var u_xlat30 : f32;
  var x_2023 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(vs_TEXCOORD0, vs_TEXCOORD0);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = (u_xlat0.xxx * vs_TEXCOORD0);
  u_xlatb45 = (x_34.x_B612SunDirection.w < 0.5f);
  if (u_xlatb45) {
    u_xlat45 = (u_xlat0.y * 1.5f);
    u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
    SV_Target0 = vec4f((((vec3f(u_xlat45) * vec3f(-0.40000000596046447754f, -0.34000000357627868652f, -0.12000000476837158203f)) + vec3f(0.62000000476837158203f, 0.75999999046325683594f, 0.89999997615814208984f))).xyz, SV_Target0.w);
    SV_Target0.w = 1.0f;
    return;
  }
  u_xlat1 = (x_34.x_B612SunDirection.xyz + vec3f(0.0f, 0.00009999999747378752f, 0.0f));
  u_xlat45 = dot(u_xlat1, u_xlat1);
  u_xlat45 = inverseSqrt(u_xlat45);
  u_xlat1 = (vec3f(u_xlat45) * u_xlat1);
  u_xlat45 = max(u_xlat0.y, -1.0f);
  u_xlat45 = min(u_xlat45, 1.0f);
  u_xlat46 = (-(abs(u_xlat45)) + 1.0f);
  u_xlat46 = sqrt(u_xlat46);
  u_xlat2.x = ((abs(u_xlat45) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat2.x = ((u_xlat2.x * abs(u_xlat45)) + -0.21211439371109008789f);
  u_xlat2.x = ((u_xlat2.x * abs(u_xlat45)) + 1.57072877883911132812f);
  u_xlat17 = (u_xlat46 * u_xlat2.x);
  u_xlat17 = ((u_xlat17 * -2.0f) + 3.14159274101257324219f);
  u_xlatb45 = (u_xlat45 < -(u_xlat45));
  u_xlat45 = select(0.0f, u_xlat17, u_xlatb45);
  u_xlat45 = ((u_xlat2.x * u_xlat46) + u_xlat45);
  u_xlat45 = (-(u_xlat45) + 1.57079637050628662109f);
  u_xlat46 = (u_xlat45 * 57.295780181884765625f);
  u_xlat1.x = dot(u_xlat0, u_xlat1);
  u_xlat16.x = max(u_xlat1.x, -1.0f);
  u_xlat16.x = min(u_xlat16.x, 1.0f);
  u_xlat31 = (-(abs(u_xlat16.x)) + 1.0f);
  u_xlat31 = sqrt(u_xlat31);
  u_xlat2.x = ((abs(u_xlat16.x) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat2.x = ((u_xlat2.x * abs(u_xlat16.x)) + -0.21211439371109008789f);
  u_xlat2.x = ((u_xlat2.x * abs(u_xlat16.x)) + 1.57072877883911132812f);
  u_xlat17 = (u_xlat31 * u_xlat2.x);
  u_xlat17 = ((u_xlat17 * -2.0f) + 3.14159274101257324219f);
  u_xlatb16 = (u_xlat16.x < -(u_xlat16.x));
  u_xlat16.x = select(0.0f, u_xlat17, u_xlatb16);
  u_xlat16.x = ((u_xlat2.x * u_xlat31) + u_xlat16.x);
  u_xlat31 = max(x_34.x_B612SunDisk.w, 0.05000000074505805969f);
  u_xlat2 = vec3f(((vec2f(u_xlat31) * vec2f(0.85000002384185791016f, 0.29999995231628417969f))).xy, u_xlat2.z);
  u_xlat16.x = ((u_xlat16.x * 57.295780181884765625f) + -(u_xlat2.x));
  u_xlat31 = (1.0f / u_xlat2.y);
  u_xlat16.x = (u_xlat31 * u_xlat16.x);
  u_xlat16.x = clamp(u_xlat16.x, 0.0f, 1.0f);
  u_xlat31 = ((u_xlat16.x * -2.0f) + 3.0f);
  u_xlat16.x = (u_xlat16.x * u_xlat16.x);
  u_xlat16.x = ((-(u_xlat31) * u_xlat16.x) + 1.0f);
  u_xlat31 = ((u_xlat45 * 57.295780181884765625f) + 0.60000002384185791016f);
  u_xlat31 = (u_xlat31 * 1.25f);
  u_xlat31 = clamp(u_xlat31, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat31 * -2.0f) + 3.0f);
  u_xlat31 = (u_xlat31 * u_xlat31);
  u_xlat31 = (u_xlat31 * u_xlat2.x);
  u_xlat16.x = (u_xlat31 * u_xlat16.x);
  u_xlat1.x = u_xlat1.x;
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat31 = max(x_34.x_B612SunHalo.w, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat31 = (u_xlat1.x * u_xlat31);
  u_xlat31 = exp2(u_xlat31);
  u_xlat2.x = max(x_34.x_B612SunGlow.w, 1.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat2.x);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat2 = (u_xlat1.xxx * x_34.x_B612SunGlow.xyz);
  u_xlat2 = ((x_34.x_B612SunHalo.xyz * vec3f(u_xlat31)) + u_xlat2);
  u_xlat1.x = x_34.x_B612TimeParams.x;
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat31 = max(x_364.x_CloudDriftPeriod, 10.0f);
  u_xlat47 = (u_xlat31 * x_34.x_B612CloudParams.x);
  u_xlat47 = (u_xlat47 * 0.15915493667125701904f);
  u_xlat3.x = (x_34.x_Time.y * 6.28318548202514648438f);
  u_xlat31 = (u_xlat3.x / u_xlat31);
  u_xlat31 = sin(u_xlat31);
  u_xlat3.x = ((u_xlat47 * u_xlat31) + x_364.x_DayYaw);
  u_xlat3.x = ((-(u_xlat1.x) * x_364.x_HdriDrift) + u_xlat3.x);
  u_xlat31 = ((u_xlat47 * u_xlat31) + x_364.x_DuskYaw);
  u_xlat47 = (-(u_xlat1.x) + 1.0f);
  u_xlat31 = ((u_xlat47 * x_364.x_HdriDrift) + u_xlat31);
  u_xlat18 = (vec3f(x_364.x_DayExposure) * x_364.x_DayTint.xyz);
  u_xlat4 = (vec3f(x_364.x_DuskExposure) * x_364.x_DuskTint.xyz);
  let x_449 = u_xlat0;
  u_xlat5 = dpdxCoarse(x_449);
  let x_452 = u_xlat0;
  u_xlat6 = dpdyCoarse(x_452);
  u_xlatb49 = (u_xlat1.x < 0.99900001287460327148f);
  if (u_xlatb49) {
    u_xlat50 = min(abs(u_xlat0.z), abs(u_xlat0.x));
    u_xlat51 = max(abs(u_xlat0.z), abs(u_xlat0.x));
    u_xlat51 = (1.0f / u_xlat51);
    u_xlat50 = (u_xlat50 * u_xlat51);
    u_xlat51 = (u_xlat50 * u_xlat50);
    u_xlat7.x = ((u_xlat51 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat7.x = ((u_xlat51 * u_xlat7.x) + 0.18014100193977355957f);
    u_xlat7.x = ((u_xlat51 * u_xlat7.x) + -0.33029949665069580078f);
    u_xlat51 = ((u_xlat51 * u_xlat7.x) + 0.99986600875854492188f);
    u_xlat7.x = (u_xlat50 * u_xlat51);
    u_xlatb22 = (abs(u_xlat0.z) < abs(u_xlat0.x));
    u_xlat7.x = ((u_xlat7.x * -2.0f) + 1.57079637050628662109f);
    if (u_xlatb22) {
      x_532 = u_xlat7.x;
    } else {
      x_532 = 0.0f;
    }
    u_xlat7.x = x_532;
    u_xlat50 = ((u_xlat50 * u_xlat51) + u_xlat7.x);
    u_xlatb51 = (u_xlat0.z < -(u_xlat0.z));
    u_xlat51 = select(0.0f, -3.14159274101257324219f, u_xlatb51);
    u_xlat50 = (u_xlat50 + u_xlat51);
    u_xlat51 = min(u_xlat0.z, u_xlat0.x);
    u_xlat7.x = max(u_xlat0.z, u_xlat0.x);
    u_xlatb51 = (u_xlat51 < -(u_xlat51));
    u_xlatb7 = (u_xlat7.x >= -(u_xlat7.x));
    u_xlatb51 = (u_xlatb51 & u_xlatb7);
    if (u_xlatb51) {
      x_585 = -(u_xlat50);
    } else {
      x_585 = u_xlat50;
    }
    u_xlat50 = x_585;
    u_xlat50 = ((u_xlat50 * 57.295780181884765625f) + -(u_xlat3.x));
    u_xlat7.x = ((u_xlat50 * 0.00277777784503996372f) + 0.5f);
    u_xlat7.y = 0.5f;
    u_xlat7 = textureSampleLevel(x_SkyHdriRingDay, sampler_LinearRepeat, u_xlat7.xy, 0.0f).xyz;
    u_xlat7 = (u_xlat18 * u_xlat7);
    u_xlatb50 = (0.0f < x_364.x_DayKnee.y);
    u_xlat51 = max(u_xlat7.y, u_xlat7.x);
    u_xlat51 = max(u_xlat7.z, u_xlat51);
    u_xlat52 = (u_xlat51 + -(x_364.x_DayKnee.x));
    u_xlat52 = max(u_xlat52, 0.0f);
    u_xlat8.x = (u_xlat52 / x_364.x_DayKnee.y);
    u_xlat8.x = (u_xlat8.x + 1.0f);
    u_xlat52 = (u_xlat52 / u_xlat8.x);
    u_xlat52 = (u_xlat52 + x_364.x_DayKnee.x);
    u_xlat51 = max(u_xlat51, x_364.x_DayKnee.x);
    u_xlat51 = (u_xlat52 / u_xlat51);
    u_xlat8 = (vec3f(u_xlat51) * u_xlat7);
    if (u_xlatb50) {
      x_674 = u_xlat8;
    } else {
      x_674 = u_xlat7;
    }
    u_xlat7 = x_674;
    u_xlat50 = dot(u_xlat7, x_685);
    u_xlat7 = (-(vec3f(u_xlat50)) + u_xlat7);
    let x_699 = vec3f(x_364.x_DaySaturation, x_364.x_DaySaturation, x_364.x_DaySaturation);
    u_xlat7 = ((vec3f(x_699.x, x_699.y, x_699.z) * u_xlat7) + vec3f(u_xlat50));
    u_xlat7 = max(u_xlat7, vec3f());
    u_xlat50 = max(x_364.x_HdriRingElevation, 0.0f);
    u_xlat51 = max(x_364.x_DayHorizonRange, 0.10000000149011611938f);
    u_xlat50 = (u_xlat50 / u_xlat51);
    u_xlat50 = (-(u_xlat50) + 1.0f);
    u_xlat50 = max(u_xlat50, 0.0f);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat8 = (x_364.x_DayHorizon.xyz + x_735);
    u_xlat8 = ((vec3f(u_xlat50) * u_xlat8) + x_741);
    u_xlat7 = (u_xlat7 * u_xlat8);
    u_xlat50 = (x_364.x_HdriRingElevation + -(x_364.x_DayZenithStart));
    u_xlat51 = (-(x_364.x_DayZenithStart) + 90.0f);
    u_xlat51 = max(u_xlat51, 1.0f);
    u_xlat50 = (u_xlat50 / u_xlat51);
    u_xlat50 = clamp(u_xlat50, 0.0f, 1.0f);
    u_xlat8 = (x_364.x_DayZenith.xyz + x_735);
    u_xlat8 = ((vec3f(u_xlat50) * u_xlat8) + x_741);
    u_xlat7 = (u_xlat7 * u_xlat8);
    u_xlat7 = (vec3f(u_xlat47) * u_xlat7);
  } else {
    u_xlat7.x = 0.0f;
    u_xlat7.y = 0.0f;
    u_xlat7.z = 0.0f;
  }
  u_xlatb50 = (0.00100000004749745131f < u_xlat1.x);
  if (u_xlatb50) {
    u_xlat51 = min(abs(u_xlat0.z), abs(u_xlat0.x));
    u_xlat52 = max(abs(u_xlat0.z), abs(u_xlat0.x));
    u_xlat52 = (1.0f / u_xlat52);
    u_xlat51 = (u_xlat51 * u_xlat52);
    u_xlat52 = (u_xlat51 * u_xlat51);
    u_xlat8.x = ((u_xlat52 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat8.x = ((u_xlat52 * u_xlat8.x) + 0.18014100193977355957f);
    u_xlat8.x = ((u_xlat52 * u_xlat8.x) + -0.33029949665069580078f);
    u_xlat52 = ((u_xlat52 * u_xlat8.x) + 0.99986600875854492188f);
    u_xlat8.x = (u_xlat51 * u_xlat52);
    u_xlatb23 = (abs(u_xlat0.z) < abs(u_xlat0.x));
    u_xlat8.x = ((u_xlat8.x * -2.0f) + 1.57079637050628662109f);
    if (u_xlatb23) {
      x_854 = u_xlat8.x;
    } else {
      x_854 = 0.0f;
    }
    u_xlat8.x = x_854;
    u_xlat51 = ((u_xlat51 * u_xlat52) + u_xlat8.x);
    u_xlatb52 = (u_xlat0.z < -(u_xlat0.z));
    u_xlat52 = select(0.0f, -3.14159274101257324219f, u_xlatb52);
    u_xlat51 = (u_xlat51 + u_xlat52);
    u_xlat52 = min(u_xlat0.z, u_xlat0.x);
    u_xlat8.x = max(u_xlat0.z, u_xlat0.x);
    u_xlatb52 = (u_xlat52 < -(u_xlat52));
    u_xlatb8 = (u_xlat8.x >= -(u_xlat8.x));
    u_xlatb52 = (u_xlatb52 & u_xlatb8);
    if (u_xlatb52) {
      x_906 = -(u_xlat51);
    } else {
      x_906 = u_xlat51;
    }
    u_xlat51 = x_906;
    u_xlat51 = ((u_xlat51 * 57.295780181884765625f) + -(u_xlat31));
    u_xlat8.x = ((u_xlat51 * 0.00277777784503996372f) + 0.5f);
    u_xlat8.y = 0.5f;
    u_xlat8 = textureSampleLevel(x_SkyHdriRingDusk, sampler_LinearRepeat, u_xlat8.xy, 0.0f).xyz;
    u_xlat8 = (u_xlat4 * u_xlat8);
    u_xlatb51 = (0.0f < x_364.x_DuskKnee.y);
    u_xlat52 = max(u_xlat8.y, u_xlat8.x);
    u_xlat52 = max(u_xlat8.z, u_xlat52);
    u_xlat53 = (u_xlat52 + -(x_364.x_DuskKnee.x));
    u_xlat53 = max(u_xlat53, 0.0f);
    u_xlat9.x = (u_xlat53 / x_364.x_DuskKnee.y);
    u_xlat9.x = (u_xlat9.x + 1.0f);
    u_xlat53 = (u_xlat53 / u_xlat9.x);
    u_xlat53 = (u_xlat53 + x_364.x_DuskKnee.x);
    u_xlat52 = max(u_xlat52, x_364.x_DuskKnee.x);
    u_xlat52 = (u_xlat53 / u_xlat52);
    u_xlat9 = (vec3f(u_xlat52) * u_xlat8);
    if (u_xlatb51) {
      x_986 = u_xlat9;
    } else {
      x_986 = u_xlat8;
    }
    u_xlat8 = x_986;
    u_xlat51 = dot(u_xlat8, x_685);
    u_xlat8 = (-(vec3f(u_xlat51)) + u_xlat8);
    let x_1007 = vec3f(x_364.x_DuskSaturation, x_364.x_DuskSaturation, x_364.x_DuskSaturation);
    u_xlat8 = ((vec3f(x_1007.x, x_1007.y, x_1007.z) * u_xlat8) + vec3f(u_xlat51));
    u_xlat8 = max(u_xlat8, vec3f());
    u_xlat51 = max(x_364.x_HdriRingElevation, 0.0f);
    u_xlat52 = max(x_364.x_DuskHorizonRange, 0.10000000149011611938f);
    u_xlat51 = (u_xlat51 / u_xlat52);
    u_xlat51 = (-(u_xlat51) + 1.0f);
    u_xlat51 = max(u_xlat51, 0.0f);
    u_xlat51 = (u_xlat51 * u_xlat51);
    u_xlat9 = (x_364.x_DuskHorizon.xyz + x_735);
    u_xlat9 = ((vec3f(u_xlat51) * u_xlat9) + x_741);
    u_xlat8 = (u_xlat8 * u_xlat9);
    u_xlat51 = (x_364.x_HdriRingElevation + -(x_364.x_DuskZenithStart));
    u_xlat52 = (-(x_364.x_DuskZenithStart) + 90.0f);
    u_xlat52 = max(u_xlat52, 1.0f);
    u_xlat51 = (u_xlat51 / u_xlat52);
    u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
    u_xlat9 = (x_364.x_DuskZenith.xyz + x_735);
    u_xlat9 = ((vec3f(u_xlat51) * u_xlat9) + x_741);
    u_xlat8 = (u_xlat8 * u_xlat9);
    u_xlat7 = ((u_xlat1.xxx * u_xlat8) + u_xlat7);
  }
  if (u_xlatb49) {
    u_xlat49 = dot(u_xlat0.xz, u_xlat0.xz);
    u_xlat49 = max(u_xlat49, 0.00000099999999747524f);
    u_xlat51 = (-(x_364.x_HdriLatMin) + 90.0f);
    u_xlat51 = (u_xlat51 * 0.01745329238474369049f);
    u_xlat52 = sqrt(u_xlat49);
    u_xlat8.x = min(abs(u_xlat0.z), abs(u_xlat0.x));
    u_xlat23 = max(abs(u_xlat0.z), abs(u_xlat0.x));
    u_xlat23 = (1.0f / u_xlat23);
    u_xlat8.x = (u_xlat23 * u_xlat8.x);
    u_xlat23 = (u_xlat8.x * u_xlat8.x);
    u_xlat38.x = ((u_xlat23 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat38.x = ((u_xlat23 * u_xlat38.x) + 0.18014100193977355957f);
    u_xlat38.x = ((u_xlat23 * u_xlat38.x) + -0.33029949665069580078f);
    u_xlat23 = ((u_xlat23 * u_xlat38.x) + 0.99986600875854492188f);
    u_xlat38.x = (u_xlat23 * u_xlat8.x);
    u_xlatb53 = (abs(u_xlat0.z) < abs(u_xlat0.x));
    u_xlat38.x = ((u_xlat38.x * -2.0f) + 1.57079637050628662109f);
    if (u_xlatb53) {
      x_1178 = u_xlat38.x;
    } else {
      x_1178 = 0.0f;
    }
    u_xlat38.x = x_1178;
    u_xlat8.x = ((u_xlat8.x * u_xlat23) + u_xlat38.x);
    u_xlatb23 = (u_xlat0.z < -(u_xlat0.z));
    u_xlat23 = select(0.0f, -3.14159274101257324219f, u_xlatb23);
    u_xlat8.x = (u_xlat23 + u_xlat8.x);
    u_xlat23 = min(u_xlat0.z, u_xlat0.x);
    u_xlat38.x = max(u_xlat0.z, u_xlat0.x);
    u_xlatb23 = (u_xlat23 < -(u_xlat23));
    u_xlatb38 = (u_xlat38.x >= -(u_xlat38.x));
    u_xlatb23 = (u_xlatb38 & u_xlatb23);
    if (u_xlatb23) {
      x_1233 = -(u_xlat8.x);
    } else {
      x_1233 = u_xlat8.x;
    }
    u_xlat8.x = x_1233;
    u_xlat8.x = ((u_xlat8.x * 57.295780181884765625f) + -(u_xlat3.x));
    u_xlat8.x = ((u_xlat8.x * 0.00277777784503996372f) + 0.5f);
    u_xlat38.x = ((-(x_364.x_HdriLatMin) * 0.01745329238474369049f) + u_xlat45);
    u_xlat8.y = (u_xlat38.x / u_xlat51);
    u_xlat38.x = (u_xlat0.x * u_xlat5.z);
    u_xlat38.x = ((u_xlat0.z * u_xlat5.x) + -(u_xlat38.x));
    u_xlat38.x = (u_xlat38.x / u_xlat49);
    u_xlat9.x = (u_xlat38.x * x_34.x_GlobalMipBias.y);
    u_xlat38.x = (u_xlat5.y / u_xlat52);
    u_xlat9.y = (u_xlat38.x / u_xlat51);
    u_xlat38.x = (u_xlat0.x * u_xlat6.z);
    u_xlat38.x = ((u_xlat0.z * u_xlat6.x) + -(u_xlat38.x));
    u_xlat49 = (u_xlat38.x / u_xlat49);
    u_xlat10.x = (u_xlat49 * x_34.x_GlobalMipBias.y);
    u_xlat49 = (u_xlat6.y / u_xlat52);
    u_xlat10.y = (u_xlat49 / u_xlat51);
    u_xlatb49 = (0.0f < x_364.x_DaySunDim.x);
    u_xlat3.x = (u_xlat3.x + x_364.x_DaySunDim.z);
    u_xlat3.x = (u_xlat3.x * 0.01745329238474369049f);
    u_xlat51 = (x_364.x_DaySunDim.w * 0.01745329238474369049f);
    u_xlat11.x = cos(u_xlat3.x);
    u_xlat3.x = sin(u_xlat3.x);
    u_xlat12 = sin(u_xlat51);
    u_xlat13 = cos(u_xlat51);
    u_xlat14.x = (u_xlat3.x * u_xlat13);
    u_xlat14.z = (u_xlat11.x * u_xlat13);
    u_xlat14.y = u_xlat12;
    u_xlat3.x = dot(u_xlat0, u_xlat14);
    u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
    u_xlat51 = max(x_364.x_DaySunDim.y, 1.0f);
    u_xlat3.x = log2(u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat51);
    u_xlat3.x = exp2(u_xlat3.x);
    u_xlat3.x = ((-(x_364.x_DaySunDim.x) * u_xlat3.x) + 1.0f);
    if (u_xlatb49) {
      x_1419 = u_xlat3.x;
    } else {
      x_1419 = 1.0f;
    }
    u_xlat3.x = x_1419;
    u_xlat47 = (u_xlat47 * u_xlat3.x);
    u_xlat11.x = 0.15915493667125701904f;
    u_xlat11.y = x_34.x_GlobalMipBias.y;
    u_xlat38 = (u_xlat9.xy * u_xlat11);
    u_xlat9 = vec3f(((u_xlat10 * u_xlat11)).xy, u_xlat9.z);
    let x_1452 = u_xlat38.xyxx;
    let x_1460 = u_xlat9.xyxx;
    u_xlat8 = textureSampleGrad(x_SkyHdriDay, sampler_trilinear_repeatU_clampV, u_xlat8.xy, vec4f(x_1452.x, x_1452.y, x_1452.z, x_1452.w).xy, vec4f(x_1460.x, x_1460.y, x_1460.z, x_1460.w).xy).xyz;
    u_xlat3 = vec4f(((u_xlat18 * u_xlat8)).xyz, u_xlat3.w);
    u_xlatb48 = (0.0f < x_364.x_DayKnee.y);
    u_xlat49 = max(u_xlat3.y, u_xlat3.x);
    u_xlat49 = max(u_xlat3.z, u_xlat49);
    u_xlat51 = (u_xlat49 + -(x_364.x_DayKnee.x));
    u_xlat51 = max(u_xlat51, 0.0f);
    u_xlat52 = (u_xlat51 / x_364.x_DayKnee.y);
    u_xlat52 = (u_xlat52 + 1.0f);
    u_xlat51 = (u_xlat51 / u_xlat52);
    u_xlat51 = (u_xlat51 + x_364.x_DayKnee.x);
    u_xlat49 = max(u_xlat49, x_364.x_DayKnee.x);
    u_xlat49 = (u_xlat51 / u_xlat49);
    u_xlat8 = (u_xlat3.xyz * vec3f(u_xlat49));
    if (u_xlatb48) {
      x_1520 = u_xlat8;
    } else {
      x_1520 = u_xlat3.xyz;
    }
    u_xlat3 = vec4f(x_1520.xyz, u_xlat3.w);
    u_xlat48 = dot(u_xlat3.xyz, x_685);
    u_xlat3 = vec4f(((-(vec3f(u_xlat48)) + u_xlat3.xyz)).xyz, u_xlat3.w);
    let x_1548 = vec3f(x_364.x_DaySaturation, x_364.x_DaySaturation, x_364.x_DaySaturation);
    u_xlat3 = vec4f((((vec3f(x_1548.x, x_1548.y, x_1548.z) * u_xlat3.xyz) + vec3f(u_xlat48))).xyz, u_xlat3.w);
    u_xlat48 = max(u_xlat46, 0.0f);
    u_xlat49 = max(x_364.x_DayHorizonRange, 0.10000000149011611938f);
    u_xlat48 = (u_xlat48 / u_xlat49);
    u_xlat3.w = (-(u_xlat48) + 1.0f);
    u_xlat3 = max(u_xlat3, vec4f());
    u_xlat48 = (u_xlat3.w * u_xlat3.w);
    u_xlat8 = (x_364.x_DayHorizon.xyz + x_735);
    u_xlat8 = ((vec3f(u_xlat48) * u_xlat8) + x_741);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat8)).xyz, u_xlat3.w);
    u_xlat48 = ((u_xlat45 * 57.295780181884765625f) + -(x_364.x_DayZenithStart));
    u_xlat49 = (-(x_364.x_DayZenithStart) + 90.0f);
    u_xlat49 = max(u_xlat49, 1.0f);
    u_xlat48 = (u_xlat48 / u_xlat49);
    u_xlat48 = clamp(u_xlat48, 0.0f, 1.0f);
    u_xlat8 = (x_364.x_DayZenith.xyz + x_735);
    u_xlat8 = ((vec3f(u_xlat48) * u_xlat8) + x_741);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat8)).xyz, u_xlat3.w);
    u_xlat3 = vec4f(((vec3f(u_xlat47) * u_xlat3.xyz)).xyz, u_xlat3.w);
  } else {
    u_xlat3.x = 0.0f;
    u_xlat3.y = 0.0f;
    u_xlat3.z = 0.0f;
  }
  if (u_xlatb50) {
    u_xlat47 = dot(u_xlat0.xz, u_xlat0.xz);
    u_xlat47 = max(u_xlat47, 0.00000099999999747524f);
    u_xlat48 = (-(x_364.x_HdriLatMin) + 90.0f);
    u_xlat48 = (u_xlat48 * 0.01745329238474369049f);
    u_xlat49 = sqrt(u_xlat47);
    u_xlat50 = min(abs(u_xlat0.z), abs(u_xlat0.x));
    u_xlat51 = max(abs(u_xlat0.z), abs(u_xlat0.x));
    u_xlat51 = (1.0f / u_xlat51);
    u_xlat50 = (u_xlat50 * u_xlat51);
    u_xlat51 = (u_xlat50 * u_xlat50);
    u_xlat52 = ((u_xlat51 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat52 = ((u_xlat51 * u_xlat52) + 0.18014100193977355957f);
    u_xlat52 = ((u_xlat51 * u_xlat52) + -0.33029949665069580078f);
    u_xlat51 = ((u_xlat51 * u_xlat52) + 0.99986600875854492188f);
    u_xlat52 = (u_xlat50 * u_xlat51);
    u_xlatb8 = (abs(u_xlat0.z) < abs(u_xlat0.x));
    u_xlat52 = ((u_xlat52 * -2.0f) + 1.57079637050628662109f);
    u_xlat52 = select(0.0f, u_xlat52, u_xlatb8);
    u_xlat50 = ((u_xlat50 * u_xlat51) + u_xlat52);
    u_xlatb51 = (u_xlat0.z < -(u_xlat0.z));
    u_xlat51 = select(0.0f, -3.14159274101257324219f, u_xlatb51);
    u_xlat50 = (u_xlat50 + u_xlat51);
    u_xlat51 = min(u_xlat0.z, u_xlat0.x);
    u_xlat52 = max(u_xlat0.z, u_xlat0.x);
    u_xlatb51 = (u_xlat51 < -(u_xlat51));
    u_xlatb52 = (u_xlat52 >= -(u_xlat52));
    u_xlatb51 = (u_xlatb51 & u_xlatb52);
    if (u_xlatb51) {
      x_1748 = -(u_xlat50);
    } else {
      x_1748 = u_xlat50;
    }
    u_xlat50 = x_1748;
    u_xlat50 = ((u_xlat50 * 57.295780181884765625f) + -(u_xlat31));
    u_xlat8.x = ((u_xlat50 * 0.00277777784503996372f) + 0.5f);
    u_xlat50 = ((-(x_364.x_HdriLatMin) * 0.01745329238474369049f) + u_xlat45);
    u_xlat8.y = (u_xlat50 / u_xlat48);
    u_xlat35 = (u_xlat0.x * u_xlat5.z);
    u_xlat5.x = ((u_xlat0.z * u_xlat5.x) + -(u_xlat35));
    u_xlat5.x = (u_xlat5.x / u_xlat47);
    u_xlat9.x = (u_xlat5.x * x_34.x_GlobalMipBias.y);
    u_xlat5.x = (u_xlat5.y / u_xlat49);
    u_xlat9.y = (u_xlat5.x / u_xlat48);
    u_xlat5.x = (u_xlat0.x * u_xlat6.z);
    u_xlat5.x = ((u_xlat0.z * u_xlat6.x) + -(u_xlat5.x));
    u_xlat47 = (u_xlat5.x / u_xlat47);
    u_xlat5.x = (u_xlat47 * x_34.x_GlobalMipBias.y);
    u_xlat47 = (u_xlat6.y / u_xlat49);
    u_xlat5.y = (u_xlat47 / u_xlat48);
    u_xlatb47 = (0.0f < x_364.x_DuskSunDim.x);
    u_xlat31 = (u_xlat31 + x_364.x_DuskSunDim.z);
    u_xlat31 = (u_xlat31 * 0.01745329238474369049f);
    u_xlat48 = (x_364.x_DuskSunDim.w * 0.01745329238474369049f);
    u_xlat6.x = sin(u_xlat31);
    u_xlat10.x = cos(u_xlat31);
    u_xlat11.x = sin(u_xlat48);
    u_xlat12 = cos(u_xlat48);
    u_xlat6.x = (u_xlat6.x * u_xlat12);
    u_xlat6.z = (u_xlat10.x * u_xlat12);
    u_xlat6.y = u_xlat11.x;
    u_xlat0.x = dot(u_xlat0, u_xlat6);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat15.x = max(x_364.x_DuskSunDim.y, 1.0f);
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = (u_xlat0.x * u_xlat15.x);
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat0.x = ((-(x_364.x_DuskSunDim.x) * u_xlat0.x) + 1.0f);
    if (u_xlatb47) {
      x_1918 = u_xlat0.x;
    } else {
      x_1918 = 1.0f;
    }
    u_xlat0.x = x_1918;
    u_xlat0.x = (u_xlat0.x * u_xlat1.x);
    u_xlat6.x = 0.15915493667125701904f;
    u_xlat6.y = x_34.x_GlobalMipBias.y;
    u_xlat15 = vec3f(((u_xlat6.xy * u_xlat9.xy)).xy, u_xlat15.z);
    u_xlat5 = vec3f(((u_xlat5.xy * u_xlat6.xy)).xy, u_xlat5.z);
    let x_1957 = u_xlat15.xyxx;
    let x_1965 = u_xlat5.xyxx;
    u_xlat5 = textureSampleGrad(x_SkyHdriDusk, sampler_trilinear_repeatU_clampV, u_xlat8.xy, vec4f(x_1957.x, x_1957.y, x_1957.z, x_1957.w).xy, vec4f(x_1965.x, x_1965.y, x_1965.z, x_1965.w).xy).xyz;
    u_xlat4 = (u_xlat4 * u_xlat5);
    u_xlatb15 = (0.0f < x_364.x_DuskKnee.y);
    u_xlat30 = max(u_xlat4.y, u_xlat4.x);
    u_xlat30 = max(u_xlat4.z, u_xlat30);
    u_xlat31 = (u_xlat30 + -(x_364.x_DuskKnee.x));
    u_xlat31 = max(u_xlat31, 0.0f);
    u_xlat47 = (u_xlat31 / x_364.x_DuskKnee.y);
    u_xlat47 = (u_xlat47 + 1.0f);
    u_xlat31 = (u_xlat31 / u_xlat47);
    u_xlat31 = (u_xlat31 + x_364.x_DuskKnee.x);
    u_xlat30 = max(u_xlat30, x_364.x_DuskKnee.x);
    u_xlat30 = (u_xlat31 / u_xlat30);
    u_xlat5 = (vec3f(u_xlat30) * u_xlat4);
    if (u_xlatb15) {
      x_2023 = u_xlat5;
    } else {
      x_2023 = u_xlat4;
    }
    u_xlat4 = x_2023;
    u_xlat15.x = dot(u_xlat4, x_685);
    u_xlat4 = (-(u_xlat15.xxx) + u_xlat4);
    let x_2044 = vec3f(x_364.x_DuskSaturation, x_364.x_DuskSaturation, x_364.x_DuskSaturation);
    u_xlat4 = ((vec3f(x_2044.x, x_2044.y, x_2044.z) * u_xlat4) + u_xlat15.xxx);
    u_xlat4 = max(u_xlat4, vec3f());
    u_xlat15.x = max(u_xlat46, 0.0f);
    u_xlat30 = max(x_364.x_DuskHorizonRange, 0.10000000149011611938f);
    u_xlat15.x = (u_xlat15.x / u_xlat30);
    u_xlat15.x = (-(u_xlat15.x) + 1.0f);
    u_xlat15.x = max(u_xlat15.x, 0.0f);
    u_xlat15.x = (u_xlat15.x * u_xlat15.x);
    u_xlat5 = (x_364.x_DuskHorizon.xyz + x_735);
    u_xlat5 = ((u_xlat15.xxx * u_xlat5) + x_741);
    u_xlat4 = (u_xlat4 * u_xlat5);
    u_xlat15.x = ((u_xlat45 * 57.295780181884765625f) + -(x_364.x_DuskZenithStart));
    u_xlat30 = (-(x_364.x_DuskZenithStart) + 90.0f);
    u_xlat30 = max(u_xlat30, 1.0f);
    u_xlat15.x = (u_xlat15.x / u_xlat30);
    u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
    u_xlat5 = (x_364.x_DuskZenith.xyz + x_735);
    u_xlat5 = ((u_xlat15.xxx * u_xlat5) + x_741);
    u_xlat4 = (u_xlat4 * u_xlat5);
    u_xlat3 = vec4f((((u_xlat0.xxx * u_xlat4) + u_xlat3.xyz)).xyz, u_xlat3.w);
  }
  u_xlat0.x = (-(x_364.x_HdriBlend.x) + x_364.x_HdriBlend.y);
  u_xlat15.x = ((u_xlat45 * 57.295780181884765625f) + -(x_364.x_HdriBlend.x));
  u_xlat0.x = (1.0f / u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat15.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat15.x = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat15.x);
  u_xlat15 = (-(u_xlat7) + u_xlat3.xyz);
  u_xlat0 = ((u_xlat0.xxx * u_xlat15) + u_xlat7);
  u_xlat45 = max(x_364.x_HdriGroundBlend, 0.10000000149011611938f);
  u_xlat45 = (-(u_xlat46) / u_xlat45);
  u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
  u_xlat3 = vec4f((((x_34.x_B612SkyGround.xyz * x_34.x_B612SkyParams.www) + -(u_xlat0))).xyz, u_xlat3.w);
  u_xlat0 = ((vec3f(u_xlat45) * u_xlat3.xyz) + u_xlat0);
  u_xlat16 = (u_xlat16.xxx * x_34.x_B612SunDisk.xyz);
  u_xlat3 = vec4f(((-(vec2f(x_364.x_DaySunDisk, x_364.x_DayHalo)) + vec2f(x_364.x_DuskSunDisk, x_364.x_DuskHalo))).xy, u_xlat3.zw);
  u_xlat3 = vec4f((((u_xlat1.xx * u_xlat3.xy) + vec2f(x_364.x_DaySunDisk, x_364.x_DayHalo))).xy, u_xlat3.zw);
  u_xlat2 = (u_xlat2 * u_xlat3.yyy);
  u_xlat1 = ((u_xlat16 * u_xlat3.xxx) + u_xlat2);
  u_xlat0 = (u_xlat0 + u_xlat1);
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
  x_MainLightColor : vec4f,
  /* @offset(32) */
  x_Time : vec4f,
  /* @offset(48) */
  x_B612WindDirection : vec4f,
  /* @offset(64) */
  x_B612SunDirection : vec4f,
  /* @offset(80) */
  x_B612TimeParams : vec4f,
  /* @offset(96) */
  x_B612SkyZenith : vec4f,
  /* @offset(112) */
  x_B612SkyHorizon : vec4f,
  /* @offset(128) */
  x_B612SkyHorizonSun : vec4f,
  /* @offset(144) */
  x_B612SkyGround : vec4f,
  /* @offset(160) */
  x_B612SkyParams : vec4f,
  /* @offset(176) */
  x_B612HazeColor : vec4f,
  /* @offset(192) */
  x_B612HazeParams : vec4f,
  /* @offset(208) */
  x_B612SkyGlow : vec4f,
  /* @offset(224) */
  x_B612SkyAnti : vec4f,
  /* @offset(240) */
  x_B612SkyParams2 : vec4f,
  /* @offset(256) */
  x_B612SunGlow : vec4f,
  /* @offset(272) */
  x_B612SkyCloud : vec4f,
  /* @offset(288) */
  x_B612SkyNight : vec4f,
  /* @offset(304) */
  x_B612SkyCloudNight : vec4f,
  /* @offset(320) */
  x_B612MoonDirection : vec4f,
  /* @offset(336) */
  x_B612StarRot0 : vec4f,
  /* @offset(352) */
  x_B612StarRot1 : vec4f,
  /* @offset(368) */
  x_B612StarRot2 : vec4f,
  /* @offset(384) */
  x_B612SkyCloudFlow : vec4f,
  /* @offset(400) */
  x_B612SkyCloudLive : vec4f,
  /* @offset(416) */
  x_B612SunDisk : vec4f,
  /* @offset(432) */
  x_B612SunHalo : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_CloudPanoLatMin : f32,
  /* @offset(4) */
  Xhlslcc_UnusedX_CloudPanoDayScale : f32,
  /* @offset(8) */
  Xhlslcc_UnusedX_CloudPanoDuskScale : f32,
  /* @offset(12) */
  Xhlslcc_UnusedX_CloudDriftPeriod : f32,
  /* @offset(16) */
  Xhlslcc_UnusedX_SunGlowOverClouds : f32,
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
  x_DayExposure : f32,
  /* @offset(68) */
  x_DaySaturation : f32,
  /* @offset(72) */
  x_DayHorizonRange : f32,
  /* @offset(76) */
  x_DayZenithStart : f32,
  /* @offset(80) */
  Xhlslcc_UnusedX_DayYaw : f32,
  /* @offset(84) */
  x_DaySunDisk : f32,
  /* @offset(88) */
  x_DayHalo : f32,
  /* @offset(96) */
  x_DayTint : vec4f,
  /* @offset(112) */
  x_DayHorizon : vec4f,
  /* @offset(128) */
  x_DayZenith : vec4f,
  /* @offset(144) */
  x_DuskExposure : f32,
  /* @offset(148) */
  x_DuskSaturation : f32,
  /* @offset(152) */
  x_DuskHorizonRange : f32,
  /* @offset(156) */
  x_DuskZenithStart : f32,
  /* @offset(160) */
  Xhlslcc_UnusedX_DuskYaw : f32,
  /* @offset(164) */
  x_DuskSunDisk : f32,
  /* @offset(168) */
  x_DuskHalo : f32,
  /* @offset(176) */
  x_DuskTint : vec4f,
  /* @offset(192) */
  x_DuskHorizon : vec4f,
  /* @offset(208) */
  x_DuskZenith : vec4f,
  /* @offset(224) */
  x_DaySunDim : vec4f,
  /* @offset(240) */
  Xhlslcc_UnusedX_DuskSunDim : vec4f,
  /* @offset(256) */
  x_DayKnee : vec4f,
  /* @offset(272) */
  x_DuskKnee : vec4f,
  /* @offset(288) */
  x_CloudHeight : f32,
  /* @offset(292) */
  x_CloudWindSpeed : f32,
  /* @offset(296) */
  x_CloudFlowPeriod : f32,
  /* @offset(300) */
  x_CloudFlowFade : f32,
  /* @offset(304) */
  x_CloudFlowNoise : f32,
  /* @offset(308) */
  x_CloudHaze : f32,
  /* @offset(312) */
  x_SunFlatten : f32,
  /* @offset(320) */
  x_CloudDamp : vec4f,
  /* @offset(336) */
  x_CloudHorizonFade : vec4f,
  /* @offset(352) */
  x_DayCloudWarm : vec4f,
  /* @offset(368) */
  x_CloudRelight : vec4f,
  /* @offset(384) */
  x_CloudSilver : vec4f,
  /* @offset(400) */
  x_CloudEvolution : vec4f,
  /* @offset(416) */
  x_CloudViewGrad : f32,
  /* @offset(432) */
  x_PhotoCloudCut : vec4f,
  /* @offset(448) */
  x_Cirrus : vec4f,
  /* @offset(464) */
  x_CirrusShape : vec4f,
  /* @offset(480) */
  x_CirrusTint : vec4f,
  /* @offset(496) */
  x_SunLimb : vec4f,
  /* @offset(512) */
  x_Rays : vec4f,
  /* @offset(528) */
  x_RaysColor : vec4f,
  /* @offset(544) */
  x_DuskSun : vec4f,
  /* @offset(560) */
  x_DuskSunColor : vec4f,
  /* @offset(576) */
  x_DuskHaloColor : vec4f,
  /* @offset(592) */
  x_StarBrightness : f32,
  /* @offset(596) */
  x_StarSize : f32,
  /* @offset(600) */
  x_StarTwinkle : f32,
  /* @offset(604) */
  x_StarHorizon : f32,
  /* @offset(608) */
  x_StarDensity : vec4f,
  /* @offset(624) */
  x_MilkyWay : vec4f,
  /* @offset(640) */
  x_MilkyWayPole : vec4f,
  /* @offset(656) */
  x_MoonColor : vec4f,
  /* @offset(672) */
  x_MoonHalo : vec4f,
  /* @offset(688) */
  x_MoonHaloColor : vec4f,
}

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

var<private> SV_Target0 : vec4f;

@group(1) @binding(1) var<uniform> x_628 : UnityPerMaterial;

@group(0) @binding(0) var x_SkyCloudDay : texture_2d<f32>;

@group(0) @binding(4) var sampler_trilinear_repeatU_clampV : sampler;

@group(0) @binding(1) var x_SkyCloudDayAlpha : texture_2d<f32>;

@group(0) @binding(2) var x_SkyCloudDusk : texture_2d<f32>;

@group(0) @binding(3) var x_SkyCloudDuskAlpha : texture_2d<f32>;

var<private> gl_FragCoord : vec4f;

const x_84 = vec3f(0.0f, 0.0f, 0.00009999999747378752f);

const x_195 = vec2f(0.00000999999974737875f, 0.0f);

const x_733 = vec2f(2.0f);

const x_735 = vec2f(3.0f);

const x_743 = vec2f(0.10310000181198120117f);

const x_751 = vec3f(33.3300018310546875f);

const x_778 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_781 = vec4f(0.10310000181198120117f);

const x_787 = vec4f(33.3300018310546875f);

const x_843 = vec2f(1.0f);

const x_1758 = vec2f(0.15915493667125701904f, 0.63661974668502807617f);

const x_2249 = vec2f(0.37000000476837158203f, 0.51999998092651367188f);

const x_2257 = vec2f(0.61000001430511474609f, -0.43000000715255737305f);

const x_2463 = vec2f(5.09999990463256835938f, 1.70000004768371582031f);

const x_2747 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_2813 = vec3f(-1.0f);

const x_2822 = vec3f(1.0f);

const x_5176 = vec3f(2.0f);

const x_5178 = vec3f(3.0f);

const x_5191 = vec3f(0.10310000181198120117f);

const x_5203 = vec3f(31.31999969482421875f);

const x_5232 = vec3f(1.0f, 0.0f, 0.0f);

const x_5276 = vec3f(0.0f, 1.0f, 0.0f);

const x_5319 = vec3f(1.0f, 1.0f, 0.0f);

const x_5364 = vec3f(0.0f, 0.0f, 1.0f);

const x_5402 = vec3f(1.0f, 0.0f, 1.0f);

const x_5448 = vec3f(0.0f, 1.0f, 1.0f);

const x_5628 = vec3f(7.09999990463256835938f);

const x_6121 = vec3f(13.69999980926513671875f);

const x_8532 = vec2f(0.20000000298023223877f);

const x_8542 = vec2f(0.60000002384185791016f);

const x_8551 = vec2f(-1.0f);

const x_8576 = vec4f(1.5f, 3.5f, 0.0f, 0.0f);

const x_8652 = vec4f(0.60000002384185791016f, -0.25999999046325683594f, 0.03999996185302734375f, 0.37999999523162841797f);

const x_8657 = vec4f(0.69999998807907104492f, 0.0f, -0.19999998807907104492f, -0.37999999523162841797f);

const x_8739 = vec3f(0.55000001192092895508f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat20 : vec3f;
  var u_xlatb1 : bool;
  var u_xlat1 : vec3f;
  var u_xlat61 : f32;
  var u_xlat2 : vec3f;
  var u_xlat42 : f32;
  var u_xlat62 : f32;
  var u_xlat3 : vec4f;
  var u_xlatb2 : bool;
  var x_164 : f32;
  var u_xlat43 : vec2f;
  var u_xlat4 : vec3f;
  var u_xlat63 : f32;
  var u_xlat5 : vec3f;
  var u_xlat64 : f32;
  var u_xlat6 : vec4f;
  var u_xlatb62 : bool;
  var u_xlat23 : vec3f;
  var u_xlat22 : f32;
  var u_xlat25 : vec3f;
  var u_xlat65 : f32;
  var u_xlat46 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlat47 : vec2f;
  var u_xlat8 : vec4f;
  var u_xlat67 : f32;
  var u_xlat9 : vec4f;
  var u_xlat28 : vec3f;
  var u_xlat27 : vec3f;
  var u_xlat66 : f32;
  var u_xlatb25 : bool;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var x_1201 : vec3f;
  var x_1213 : vec3f;
  var x_1225 : vec3f;
  var u_xlatb23 : bool;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec3f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec3f;
  var u_xlat18 : vec3f;
  var u_xlat45 : vec2f;
  var u_xlat19 : vec3f;
  var u_xlatb65 : bool;
  var u_xlatb67 : bool;
  var u_xlat69 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlatb73 : bool;
  var u_xlatb71 : bool;
  var u_xlatb72 : bool;
  var x_1623 : f32;
  var u_xlat73 : f32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2f;
  var u_xlatb69 : bool;
  var u_xlat33 : f32;
  var u_xlatb53 : bool;
  var u_xlatb13 : vec3<bool>;
  var u_xlatb33 : bool;
  var x_1972 : f32;
  var u_xlat30 : vec3f;
  var u_xlatb30 : bool;
  var u_xlat50 : vec2f;
  var u_xlat26 : vec3f;
  var x_2967 : f32;
  var u_xlatb26 : bool;
  var u_xlat31 : vec3f;
  var u_xlat51 : f32;
  var u_xlatb31 : vec3<bool>;
  var x_3512 : f32;
  var u_xlatb11 : bool;
  var x_3563 : f32;
  var u_xlatb27 : bool;
  var u_xlatb7 : bool;
  var u_xlatb8 : vec2<bool>;
  var x_3944 : f32;
  var u_xlat48 : vec2f;
  var u_xlat68 : f32;
  var u_xlatb66 : bool;
  var u_xlat29 : vec2f;
  var u_xlat32 : vec3f;
  var u_xlat49 : vec2f;
  var u_xlatb9 : vec4<bool>;
  var u_xlatb29 : vec2<bool>;
  var x_8581 : vec3f;
  var x_8594 : vec3f;
  var x_9120 : vec3f;
  var x_9133 : vec3f;
  var u_xlatb42 : bool;
  var x_9531 : f32;
  var u_xlatb0 : bool;
  var u_xlat44 : f32;
  var u_xlat24 : f32;
  var x_12415 : vec3f;
  var x_12600 : f32;
  var u_xlatb46 : bool;
  var x_12661 : f32;
  var x_12790 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlat40 : vec2f;
  var u_xlat60 : f32;
  var u_xlatb21 : bool;
  var x_13500 : f32;
  var u_xlatb60 : bool;
  var u_xlatb20 : bool;
  var x_13556 : f32;
  var u_xlat41 : f32;
  var u_xlat21 : vec2f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(vs_TEXCOORD0, vs_TEXCOORD0);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat20 = (u_xlat0.xxx * vs_TEXCOORD0);
  u_xlatb1 = (x_35.x_B612SunDirection.w < 0.5f);
  if (u_xlatb1) {
    u_xlat1.x = (u_xlat20.y * 1.5f);
    u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
    SV_Target0 = vec4f((((u_xlat1.xxx * vec3f(-0.40000000596046447754f, -0.34000000357627868652f, -0.12000000476837158203f)) + vec3f(0.62000000476837158203f, 0.75999999046325683594f, 0.89999997615814208984f))).xyz, SV_Target0.w);
    SV_Target0.w = 1.0f;
    return;
  }
  u_xlat1 = (x_35.x_B612SunDirection.zxy + x_84);
  u_xlat61 = dot(u_xlat1, u_xlat1);
  u_xlat61 = inverseSqrt(u_xlat61);
  u_xlat1 = (vec3f(u_xlat61) * u_xlat1);
  u_xlat61 = u_xlat20.y;
  u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
  u_xlat2 = vec3f(max(u_xlat20.yy, vec2f(-1.0f, 0.00100000004749745131f)).xy, u_xlat2.z);
  u_xlat2.x = min(u_xlat2.x, 1.0f);
  u_xlat42 = (-(abs(u_xlat2.x)) + 1.0f);
  u_xlat42 = sqrt(u_xlat42);
  u_xlat62 = ((abs(u_xlat2.x) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat62 = ((u_xlat62 * abs(u_xlat2.x)) + -0.21211439371109008789f);
  u_xlat62 = ((u_xlat62 * abs(u_xlat2.x)) + 1.57072877883911132812f);
  u_xlat3.x = (u_xlat42 * u_xlat62);
  u_xlat3.x = ((u_xlat3.x * -2.0f) + 3.14159274101257324219f);
  u_xlatb2 = (u_xlat2.x < -(u_xlat2.x));
  if (u_xlatb2) {
    x_164 = u_xlat3.x;
  } else {
    x_164 = 0.0f;
  }
  u_xlat2.x = x_164;
  u_xlat2.x = ((u_xlat62 * u_xlat42) + u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.57079637050628662109f);
  u_xlat42 = (u_xlat2.x * 57.295780181884765625f);
  u_xlat3 = vec4f((((vs_TEXCOORD0.xz * u_xlat0.xx) + x_195)).xy, u_xlat3.zw);
  u_xlat0.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat3 = vec4f(((u_xlat0.xx * u_xlat3.xy)).xy, u_xlat3.zw);
  u_xlat43 = (x_35.x_B612SunDirection.xz + x_195);
  u_xlat0.x = dot(u_xlat43, u_xlat43);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat43 = (u_xlat0.xx * u_xlat43);
  u_xlat0.x = dot(u_xlat3.xy, u_xlat43);
  u_xlat0.x = ((u_xlat0.x * 0.5f) + 0.5f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat3 = vec4f(max(x_35.x_B612SkyParams.yww, vec3f(0.00999999977648258209f, 0.00009999999747378752f, 0.00100000004749745131f)).xyz, u_xlat3.w);
  u_xlat62 = log2(u_xlat0.x);
  u_xlat3.x = (u_xlat62 * u_xlat3.x);
  u_xlat3.x = exp2(u_xlat3.x);
  u_xlat4 = (-(x_35.x_B612SkyHorizon.xyz) + x_35.x_B612SkyHorizonSun.xyz);
  u_xlat4 = ((u_xlat3.xxx * u_xlat4) + x_35.x_B612SkyHorizon.xyz);
  u_xlat63 = (x_35.x_B612SkyParams.x * 0.44999998807907104492f);
  u_xlat63 = max(u_xlat63, 0.00999999977648258209f);
  u_xlat63 = (-(u_xlat61) / u_xlat63);
  u_xlat63 = (u_xlat63 * 1.44269502162933349609f);
  u_xlat63 = exp2(u_xlat63);
  u_xlat63 = (-(u_xlat63) + 1.0f);
  u_xlat5 = (-(x_35.x_B612SkyZenith.xyz) + x_35.x_B612SkyHorizonSun.xyz);
  u_xlat5 = (u_xlat5 * vec3f(0.34999999403953552246f));
  u_xlat3.x = (u_xlat3.x * x_35.x_B612SkyParams.z);
  u_xlat64 = (-(u_xlat61) + 1.0f);
  u_xlat3.x = (u_xlat3.x * u_xlat64);
  u_xlat5 = ((u_xlat3.xxx * u_xlat5) + x_35.x_B612SkyZenith.xyz);
  u_xlat5 = (-(u_xlat4) + u_xlat5);
  u_xlat4 = ((vec3f(u_xlat63) * u_xlat5) + u_xlat4);
  let x_361 = max(x_35.x_B612HazeParams.xy, vec2f(0.10000000149011611938f, 1.0f));
  u_xlat3 = vec4f(x_361.x, u_xlat3.yz, x_361.y);
  u_xlat61 = (-(u_xlat61) * u_xlat3.x);
  u_xlat61 = (u_xlat61 * 1.44269502162933349609f);
  u_xlat61 = exp2(u_xlat61);
  u_xlat61 = (u_xlat61 * x_35.x_B612HazeColor.w);
  u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
  u_xlat5 = (-(u_xlat4) + x_35.x_B612HazeColor.xyz);
  u_xlat4 = ((vec3f(u_xlat61) * u_xlat5) + u_xlat4);
  u_xlat61 = max(u_xlat42, 0.0f);
  u_xlat5 = max(x_35.x_B612SkyParams2.xyz, vec3f(0.00999999977648258209f, 0.10000000149011611938f, 0.00999999977648258209f));
  u_xlat62 = (u_xlat62 * u_xlat5.x);
  u_xlat62 = exp2(u_xlat62);
  u_xlat6 = vec4f(((vec3f(u_xlat62) * x_35.x_B612SkyGlow.xyz)).xyz, u_xlat6.w);
  u_xlat62 = max(x_35.x_B612SkyGlow.w, 0.10000000149011611938f);
  u_xlat62 = (-(u_xlat61) / u_xlat62);
  u_xlat62 = (u_xlat62 * 1.44269502162933349609f);
  u_xlat62 = exp2(u_xlat62);
  u_xlat4 = ((u_xlat6.xyz * vec3f(u_xlat62)) + u_xlat4);
  u_xlat62 = ((u_xlat2.x * 57.295780181884765625f) + -(x_35.x_B612SkyAnti.w));
  u_xlat62 = (u_xlat62 / u_xlat5.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat5.z);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat5 = (u_xlat0.xxx * x_35.x_B612SkyAnti.xyz);
  u_xlat0.x = (u_xlat62 * -(u_xlat62));
  u_xlat0.x = (u_xlat0.x * 1.44269502162933349609f);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat4 = ((u_xlat5 * u_xlat0.xxx) + u_xlat4);
  u_xlat0.x = (-(u_xlat20.y) * u_xlat3.w);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat5 = (-(u_xlat4) + x_35.x_B612SkyGround.xyz);
  u_xlat4 = ((u_xlat0.xxx * u_xlat5) + u_xlat4);
  u_xlat4 = (u_xlat4 * x_35.x_B612SkyParams.www);
  u_xlat0.x = dot(u_xlat20.zxy, u_xlat1);
  u_xlat62 = max(u_xlat0.x, -1.0f);
  u_xlat62 = min(u_xlat62, 1.0f);
  u_xlat3.x = (-(abs(u_xlat62)) + 1.0f);
  u_xlat3.x = sqrt(u_xlat3.x);
  u_xlat63 = ((abs(u_xlat62) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat63 = ((u_xlat63 * abs(u_xlat62)) + -0.21211439371109008789f);
  u_xlat63 = ((u_xlat63 * abs(u_xlat62)) + 1.57072877883911132812f);
  u_xlat64 = (u_xlat3.x * u_xlat63);
  u_xlat64 = ((u_xlat64 * -2.0f) + 3.14159274101257324219f);
  u_xlatb62 = (u_xlat62 < -(u_xlat62));
  u_xlat62 = select(0.0f, u_xlat64, u_xlatb62);
  u_xlat62 = ((u_xlat63 * u_xlat3.x) + u_xlat62);
  u_xlat3.x = (u_xlat62 * 57.295780181884765625f);
  u_xlat63 = max(x_35.x_B612SunDisk.w, 0.05000000074505805969f);
  u_xlat0.x = u_xlat0.x;
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat64 = x_35.x_B612TimeParams.x;
  u_xlat64 = clamp(u_xlat64, 0.0f, 1.0f);
  u_xlat4 = (u_xlat4 / u_xlat3.yyy);
  u_xlat23.x = max(x_35.x_B612SunGlow.w, 1.0f);
  u_xlat5.x = log2(u_xlat0.x);
  u_xlat23.x = (u_xlat23.x * u_xlat5.x);
  u_xlat23.x = exp2(u_xlat23.x);
  u_xlat4 = ((x_35.x_B612SunGlow.xyz * u_xlat23.xxx) + u_xlat4);
  u_xlat22 = (x_628.x_CloudHeight / u_xlat2.y);
  u_xlat25 = vec3f(((u_xlat20.xz * vec2f(u_xlat22))).xy, u_xlat25.z);
  let x_652 = vec2f(x_628.x_CloudWindSpeed, x_628.x_CloudWindSpeed);
  u_xlat6 = vec4f(((x_35.x_B612WindDirection.xz * vec2f(x_652.x, x_652.y))).xy, u_xlat6.zw);
  u_xlat23.x = (-(x_628.x_CloudDamp.x) + x_628.x_CloudDamp.y);
  u_xlat65 = ((u_xlat2.x * 57.295780181884765625f) + -(x_628.x_CloudDamp.x));
  u_xlat23.x = (1.0f / u_xlat23.x);
  u_xlat23.x = (u_xlat23.x * u_xlat65);
  u_xlat23.x = clamp(u_xlat23.x, 0.0f, 1.0f);
  u_xlat65 = ((u_xlat23.x * -2.0f) + 3.0f);
  u_xlat23.x = (u_xlat23.x * u_xlat23.x);
  u_xlat23.x = (u_xlat23.x * u_xlat65);
  u_xlat65 = max(x_628.x_CloudFlowPeriod, 1.0f);
  u_xlat46.x = max(x_628.x_CloudFlowNoise, 1.0f);
  u_xlat46 = (u_xlat25.xy / u_xlat46.xx);
  u_xlat7 = vec4f(floor(u_xlat46).xy, u_xlat7.zw);
  u_xlat46 = fract(u_xlat46);
  u_xlat47 = (u_xlat46 * u_xlat46);
  u_xlat46 = ((-(u_xlat46) * x_733) + x_735);
  u_xlat46 = (u_xlat46 * u_xlat47);
  u_xlat47 = (u_xlat7.xy * x_743);
  u_xlat47 = fract(u_xlat47);
  u_xlat8 = vec4f(((u_xlat47.yxx + x_751)).xyz, u_xlat8.w);
  u_xlat8.x = dot(u_xlat47.xyx, u_xlat8.xyz);
  u_xlat47 = (u_xlat47 + u_xlat8.xx);
  u_xlat67 = (u_xlat47.y + u_xlat47.x);
  u_xlat7.z = (u_xlat47.x * u_xlat67);
  u_xlat8 = (u_xlat7.yxyx + x_778);
  u_xlat8 = (u_xlat8 * x_781);
  u_xlat8 = fract(u_xlat8);
  u_xlat9 = (u_xlat8 + x_787);
  u_xlat67 = dot(u_xlat8.yxy, u_xlat9.xyy);
  u_xlat8 = vec4f(((vec2f(u_xlat67) + u_xlat8.yx)).xy, u_xlat8.zw);
  u_xlat67 = (u_xlat8.y + u_xlat8.x);
  u_xlat7.w = (u_xlat8.x * u_xlat67);
  u_xlat8.x = dot(u_xlat8.wzw, u_xlat9.zww);
  u_xlat8 = vec4f(((u_xlat8.xx + u_xlat8.wz)).xy, u_xlat8.zw);
  u_xlat28.x = (u_xlat8.y + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * u_xlat28.x);
  u_xlat8.x = fract(u_xlat8.x);
  u_xlat7 = vec4f(((u_xlat7.xy + x_843)).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * x_743)).xy, u_xlat7.zw);
  u_xlat7 = fract(u_xlat7);
  u_xlat28 = (u_xlat7.yxx + x_751);
  u_xlat28.x = dot(u_xlat7.xyx, u_xlat28);
  u_xlat7 = vec4f(((u_xlat7.xy + u_xlat28.xx)).xy, u_xlat7.zw);
  u_xlat27.x = (u_xlat7.y + u_xlat7.x);
  u_xlat7.x = (u_xlat7.x * u_xlat27.x);
  u_xlat7.x = fract(u_xlat7.x);
  u_xlat27.x = (-(u_xlat7.z) + u_xlat7.w);
  u_xlat27.x = ((u_xlat46.x * u_xlat27.x) + u_xlat7.z);
  u_xlat7.x = (-(u_xlat8.x) + u_xlat7.x);
  u_xlat46.x = ((u_xlat46.x * u_xlat7.x) + u_xlat8.x);
  u_xlat46.x = (-(u_xlat27.x) + u_xlat46.x);
  u_xlat46.x = ((u_xlat46.y * u_xlat46.x) + u_xlat27.x);
  u_xlat46.x = ((u_xlat65 * u_xlat46.x) + x_35.x_Time.y);
  u_xlat46.x = (u_xlat46.x / u_xlat65);
  u_xlat46.x = fract(u_xlat46.x);
  u_xlat7 = vec4f(((u_xlat46.xx + vec2f(0.5f, -0.5f))).xy, u_xlat7.zw);
  u_xlat66 = fract(u_xlat7.x);
  u_xlat7.x = (1.0f / x_628.x_CloudFlowFade);
  u_xlat7.x = (u_xlat46.x * u_xlat7.x);
  u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
  u_xlat47.x = ((u_xlat7.x * -2.0f) + 3.0f);
  u_xlat7.x = (u_xlat7.x * u_xlat7.x);
  u_xlat7.x = (u_xlat7.x * u_xlat47.x);
  u_xlat47.x = (-(x_628.x_CloudFlowFade) + 1.0f);
  u_xlat67 = (-(u_xlat47.x) + 1.0f);
  u_xlat46.x = (u_xlat46.x + -(u_xlat47.x));
  u_xlat47.x = (1.0f / u_xlat67);
  u_xlat46.x = (u_xlat46.x * u_xlat47.x);
  u_xlat46.x = clamp(u_xlat46.x, 0.0f, 1.0f);
  u_xlat47.x = ((u_xlat46.x * -2.0f) + 3.0f);
  u_xlat46.x = (u_xlat46.x * u_xlat46.x);
  u_xlat46.x = ((-(u_xlat47.x) * u_xlat46.x) + 1.0f);
  u_xlat8.x = (u_xlat46.x * u_xlat7.x);
  u_xlat46.x = (u_xlat65 * u_xlat7.y);
  u_xlat7 = vec4f(((u_xlat46.xx * u_xlat6.xy)).xy, u_xlat7.zw);
  let x_1069 = ((-(u_xlat7.xy) * u_xlat23.xx) + u_xlat25.xy);
  u_xlat7 = vec4f(x_1069.x, u_xlat7.y, x_1069.y, u_xlat7.w);
  u_xlat7.y = x_628.x_CloudHeight;
  u_xlat46.x = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat46.x = inverseSqrt(u_xlat46.x);
  u_xlat7 = vec4f(((u_xlat46.xxx * u_xlat7.xyz)).xyz, u_xlat7.w);
  u_xlat46.x = (u_xlat66 + -0.5f);
  u_xlat65 = (u_xlat65 * u_xlat46.x);
  u_xlat6 = vec4f(((vec2f(u_xlat65) * u_xlat6.xy)).xy, u_xlat6.zw);
  let x_1114 = ((-(u_xlat6.xy) * u_xlat23.xx) + u_xlat25.xy);
  u_xlat25 = vec3f(x_1114.x, u_xlat25.y, x_1114.y);
  u_xlat25.y = x_628.x_CloudHeight;
  u_xlat6.x = dot(u_xlat25, u_xlat25);
  u_xlat6.x = inverseSqrt(u_xlat6.x);
  u_xlat8 = vec4f(u_xlat8.x, ((u_xlat25 * u_xlat6.xxx)).xyz);
  u_xlatb25 = (0.5f < x_35.x_B612SkyCloudLive.x);
  u_xlat6 = (u_xlat23.xxxx * x_35.x_B612SkyCloudFlow);
  u_xlat9 = ((u_xlat20.xxzz * vec4f(u_xlat22)) + -(u_xlat6.xzyw));
  let x_1156 = u_xlat9.xz;
  u_xlat10 = vec4f(x_1156.x, u_xlat10.y, x_1156.y, u_xlat10.w);
  u_xlat10.y = x_628.x_CloudHeight;
  u_xlat23.x = dot(u_xlat10.xyz, u_xlat10.xyz);
  u_xlat23.x = inverseSqrt(u_xlat23.x);
  u_xlat10 = vec4f(((u_xlat23.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat9.z = x_628.x_CloudHeight;
  u_xlat23.x = dot(u_xlat9.yzw, u_xlat9.yzw);
  u_xlat23.x = inverseSqrt(u_xlat23.x);
  u_xlat9 = vec4f(u_xlat9.x, ((u_xlat23.xxx * u_xlat9.yzw)).xyz);
  if (u_xlatb25) {
    x_1201 = u_xlat10.xyz;
  } else {
    x_1201 = u_xlat7.xyz;
  }
  u_xlat11 = vec4f(x_1201.xyz, u_xlat11.w);
  if (u_xlatb25) {
    x_1213 = u_xlat10.xyz;
  } else {
    x_1213 = u_xlat8.yzw;
  }
  u_xlat10 = vec4f(x_1213.xyz, u_xlat10.w);
  if (u_xlatb25) {
    x_1225 = u_xlat9.yzw;
  } else {
    x_1225 = u_xlat7.xyz;
  }
  u_xlat7 = vec4f(x_1225.xyz, u_xlat7.w);
  u_xlat9.x = 1.0f;
  u_xlat8 = select(u_xlat8, u_xlat9, vec4<bool>(u_xlatb25));
  u_xlatb23 = (0.5f < x_628.x_CloudViewGrad);
  if (u_xlatb23) {
    let x_1251 = u_xlat20;
    let x_1252 = dpdxCoarse(x_1251);
    u_xlat9 = vec4f(x_1252.xyz, u_xlat9.w);
    u_xlat23.x = max(x_628.x_CloudViewGrad, 1.0f);
    u_xlat9 = vec4f(((u_xlat23.xxx * u_xlat9.xzy)).xyz, u_xlat9.w);
    let x_1267 = u_xlat20;
    let x_1268 = dpdyCoarse(x_1267);
    u_xlat12 = vec4f(x_1268.xyz, u_xlat12.w);
    u_xlat12 = vec4f(((u_xlat23.xxx * u_xlat12.xzy)).xyz, u_xlat12.w);
    u_xlat13 = vec4f(u_xlat9.xyz.xyz, u_xlat13.w);
    u_xlat14 = u_xlat12.xyz;
    u_xlat15 = vec4f(u_xlat9.xyz.xyz, u_xlat15.w);
    u_xlat16 = vec4f(u_xlat12.xyz.xyz, u_xlat16.w);
    u_xlat17 = u_xlat9.xyz;
    u_xlat18 = u_xlat12.xyz;
  } else {
    let x_1303 = u_xlat11;
    let x_1305 = dpdxCoarse(x_1303.xzy);
    u_xlat13 = vec4f(x_1305.xyz, u_xlat13.w);
    let x_1308 = u_xlat11;
    u_xlat14 = dpdyCoarse(x_1308.xzy);
    let x_1311 = u_xlat10;
    let x_1313 = dpdxCoarse(x_1311.xzy);
    u_xlat15 = vec4f(x_1313.xyz, u_xlat15.w);
    let x_1316 = u_xlat10;
    let x_1318 = dpdyCoarse(x_1316.xzy);
    u_xlat16 = vec4f(x_1318.xyz, u_xlat16.w);
    let x_1321 = u_xlat7;
    u_xlat17 = dpdxCoarse(x_1321.xzy);
    let x_1324 = u_xlat7;
    u_xlat18 = dpdyCoarse(x_1324.xzy);
    let x_1327 = u_xlat8;
    let x_1329 = dpdxCoarse(x_1327.ywz);
    u_xlat9 = vec4f(x_1329.xyz, u_xlat9.w);
    let x_1332 = u_xlat8;
    let x_1334 = dpdyCoarse(x_1332.ywz);
    u_xlat12 = vec4f(x_1334.xyz, u_xlat12.w);
  }
  if (u_xlatb25) {
    u_xlat23.x = ((-(u_xlat2.x) * 2.29183101654052734375f) + 1.0f);
    u_xlat23.x = clamp(u_xlat23.x, 0.0f, 1.0f);
    u_xlat45.x = (-(x_628.x_CloudEvolution.z) + x_628.x_CloudEvolution.w);
    u_xlat23.x = ((u_xlat23.x * u_xlat45.x) + x_628.x_CloudEvolution.z);
    u_xlat13 = vec4f(((u_xlat23.xxx * u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat14 = (u_xlat23.xxx * u_xlat14);
    u_xlat15 = vec4f(((u_xlat23.xxx * u_xlat15.xyz)).xyz, u_xlat15.w);
    u_xlat16 = vec4f(((u_xlat23.xxx * u_xlat16.xyz)).xyz, u_xlat16.w);
    u_xlat17 = (u_xlat23.xxx * u_xlat17);
    u_xlat18 = (u_xlat23.xxx * u_xlat18);
    u_xlat9 = vec4f(((u_xlat23.xxx * u_xlat9.xyz)).xyz, u_xlat9.w);
    u_xlat12 = vec4f(((u_xlat23.xxx * u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat23.x = (-(x_628.x_CloudHorizonFade.x) + x_628.x_CloudHorizonFade.y);
  u_xlat45.x = ((u_xlat2.x * 57.295780181884765625f) + -(x_628.x_CloudHorizonFade.x));
  u_xlat23.x = (1.0f / u_xlat23.x);
  u_xlat23.x = (u_xlat23.x * u_xlat45.x);
  u_xlat23.x = clamp(u_xlat23.x, 0.0f, 1.0f);
  u_xlat45.x = ((u_xlat23.x * -2.0f) + 3.0f);
  u_xlat23.x = (u_xlat23.x * u_xlat23.x);
  u_xlat23.x = (u_xlat23.x * u_xlat45.x);
  let x_1464 = u_xlat20;
  u_xlat19 = dpdxCoarse(x_1464);
  u_xlat45.x = dot(u_xlat19, u_xlat19);
  let x_1470 = u_xlat20;
  u_xlat19 = dpdyCoarse(x_1470);
  u_xlat45.y = dot(u_xlat19, u_xlat19);
  u_xlat45 = sqrt(u_xlat45);
  u_xlat45.x = max(u_xlat45.y, u_xlat45.x);
  u_xlatb65 = (0.0f < u_xlat23.x);
  if (u_xlatb65) {
    u_xlat65 = x_35.x_B612SkyCloud.z;
    u_xlat65 = clamp(u_xlat65, 0.0f, 1.0f);
    u_xlatb67 = (u_xlat65 < 0.99900001287460327148f);
    if (u_xlatb67) {
      u_xlatb67 = (0.00100000004749745131f < u_xlat8.x);
      if (u_xlatb67) {
        u_xlat67 = dot(u_xlat11.xz, u_xlat11.xz);
        u_xlat67 = max(u_xlat67, 0.00000099999999747524f);
        u_xlat69 = sqrt(u_xlat67);
        u_xlat70 = min(abs(u_xlat11.z), abs(u_xlat11.x));
        u_xlat71 = max(abs(u_xlat11.z), abs(u_xlat11.x));
        u_xlat71 = (1.0f / u_xlat71);
        u_xlat70 = (u_xlat70 * u_xlat71);
        u_xlat71 = (u_xlat70 * u_xlat70);
        u_xlat72 = ((u_xlat71 * 0.02083509974181652069f) + -0.08513300120830535889f);
        u_xlat72 = ((u_xlat71 * u_xlat72) + 0.18014100193977355957f);
        u_xlat72 = ((u_xlat71 * u_xlat72) + -0.33029949665069580078f);
        u_xlat71 = ((u_xlat71 * u_xlat72) + 0.99986600875854492188f);
        u_xlat72 = (u_xlat70 * u_xlat71);
        u_xlatb73 = (abs(u_xlat11.z) < abs(u_xlat11.x));
        u_xlat72 = ((u_xlat72 * -2.0f) + 1.57079637050628662109f);
        u_xlat72 = select(0.0f, u_xlat72, u_xlatb73);
        u_xlat70 = ((u_xlat70 * u_xlat71) + u_xlat72);
        u_xlatb71 = (u_xlat11.z < -(u_xlat11.z));
        u_xlat71 = select(0.0f, -3.14159274101257324219f, u_xlatb71);
        u_xlat70 = (u_xlat70 + u_xlat71);
        u_xlat71 = min(u_xlat11.z, u_xlat11.x);
        u_xlat72 = max(u_xlat11.z, u_xlat11.x);
        u_xlatb71 = (u_xlat71 < -(u_xlat71));
        u_xlatb72 = (u_xlat72 >= -(u_xlat72));
        u_xlatb71 = (u_xlatb71 & u_xlatb72);
        if (u_xlatb71) {
          x_1623 = -(u_xlat70);
        } else {
          x_1623 = u_xlat70;
        }
        u_xlat70 = x_1623;
        u_xlat70 = ((u_xlat70 * 57.295780181884765625f) + -(x_35.x_B612SkyCloud.x));
        u_xlat19.x = ((u_xlat70 * 0.00277777784503996372f) + 0.5f);
        u_xlat70 = max(u_xlat11.y, -1.0f);
        u_xlat70 = min(u_xlat70, 1.0f);
        u_xlat71 = (-(abs(u_xlat70)) + 1.0f);
        u_xlat71 = sqrt(u_xlat71);
        u_xlat72 = ((abs(u_xlat70) * -0.01872929930686950684f) + 0.07426100224256515503f);
        u_xlat72 = ((u_xlat72 * abs(u_xlat70)) + -0.21211439371109008789f);
        u_xlat72 = ((u_xlat72 * abs(u_xlat70)) + 1.57072877883911132812f);
        u_xlat73 = (u_xlat71 * u_xlat72);
        u_xlat73 = ((u_xlat73 * -2.0f) + 3.14159274101257324219f);
        u_xlatb70 = (u_xlat70 < -(u_xlat70));
        u_xlat70 = select(0.0f, u_xlat73, u_xlatb70);
        u_xlat70 = ((u_xlat72 * u_xlat71) + u_xlat70);
        u_xlat70 = (-(u_xlat70) + 1.57079637050628662109f);
        u_xlat19.y = (u_xlat70 * 0.63661974668502807617f);
        u_xlat70 = (u_xlat11.x * u_xlat13.y);
        u_xlat70 = ((u_xlat11.z * u_xlat13.x) + -(u_xlat70));
        u_xlat70 = (u_xlat70 / u_xlat67);
        u_xlat13.x = (u_xlat70 * x_35.x_GlobalMipBias.y);
        u_xlat70 = (u_xlat13.z / u_xlat69);
        u_xlat13.y = (u_xlat70 * x_35.x_GlobalMipBias.y);
        u_xlat70 = (u_xlat11.x * u_xlat14.y);
        u_xlat70 = ((u_xlat11.z * u_xlat14.x) + -(u_xlat70));
        u_xlat67 = (u_xlat70 / u_xlat67);
        u_xlat14.x = (u_xlat67 * x_35.x_GlobalMipBias.y);
        u_xlat67 = (u_xlat14.z / u_xlat69);
        u_xlat14.y = (u_xlat67 * x_35.x_GlobalMipBias.y);
        u_xlat13 = vec4f(((u_xlat13.xy * x_1758)).xy, u_xlat13.zw);
        u_xlat53 = (u_xlat14.xy * x_1758);
        let x_1779 = u_xlat13.xyxx;
        let x_1787 = u_xlat53.xyxx;
        u_xlat14 = textureSampleGrad(x_SkyCloudDay, sampler_trilinear_repeatU_clampV, u_xlat19.xy, vec4f(x_1779.x, x_1779.y, x_1779.z, x_1779.w).xy, vec4f(x_1787.x, x_1787.y, x_1787.z, x_1787.w).xy).xyz;
        u_xlat14 = (u_xlat8.xxx * u_xlat14);
        let x_1807 = u_xlat13.xyxx;
        let x_1815 = u_xlat53.xyxx;
        u_xlat67 = textureSampleGrad(x_SkyCloudDayAlpha, sampler_trilinear_repeatU_clampV, u_xlat19.xy, vec4f(x_1807.x, x_1807.y, x_1807.z, x_1807.w).xy, vec4f(x_1815.x, x_1815.y, x_1815.z, x_1815.w).xy).x;
        u_xlat67 = (u_xlat67 * u_xlat8.x);
      } else {
        u_xlat14.x = 0.0f;
        u_xlat14.y = 0.0f;
        u_xlat14.z = 0.0f;
        u_xlat67 = 0.0f;
      }
      u_xlatb69 = (u_xlat8.x < 0.99900001287460327148f);
      if (u_xlatb69) {
        u_xlat69 = (-(u_xlat8.x) + 1.0f);
        u_xlat70 = dot(u_xlat10.xz, u_xlat10.xz);
        u_xlat70 = max(u_xlat70, 0.00000099999999747524f);
        u_xlat71 = sqrt(u_xlat70);
        u_xlat72 = min(abs(u_xlat10.z), abs(u_xlat10.x));
        u_xlat13.x = max(abs(u_xlat10.z), abs(u_xlat10.x));
        u_xlat13.x = (1.0f / u_xlat13.x);
        u_xlat72 = (u_xlat72 * u_xlat13.x);
        u_xlat13.x = (u_xlat72 * u_xlat72);
        u_xlat33 = ((u_xlat13.x * 0.02083509974181652069f) + -0.08513300120830535889f);
        u_xlat33 = ((u_xlat13.x * u_xlat33) + 0.18014100193977355957f);
        u_xlat33 = ((u_xlat13.x * u_xlat33) + -0.33029949665069580078f);
        u_xlat13.x = ((u_xlat13.x * u_xlat33) + 0.99986600875854492188f);
        u_xlat33 = (u_xlat72 * u_xlat13.x);
        u_xlatb53 = (abs(u_xlat10.z) < abs(u_xlat10.x));
        u_xlat33 = ((u_xlat33 * -2.0f) + 1.57079637050628662109f);
        u_xlat33 = select(0.0f, u_xlat33, u_xlatb53);
        u_xlat72 = ((u_xlat72 * u_xlat13.x) + u_xlat33);
        u_xlatb13.x = (u_xlat10.z < -(u_xlat10.z));
        u_xlat13.x = select(0.0f, -3.14159274101257324219f, u_xlatb13.x);
        u_xlat72 = (u_xlat72 + u_xlat13.x);
        u_xlat13.x = min(u_xlat10.z, u_xlat10.x);
        u_xlat33 = max(u_xlat10.z, u_xlat10.x);
        u_xlatb13.x = (u_xlat13.x < -(u_xlat13.x));
        u_xlatb33 = (u_xlat33 >= -(u_xlat33));
        u_xlatb13.x = (u_xlatb33 & u_xlatb13.x);
        if (u_xlatb13.x) {
          x_1972 = -(u_xlat72);
        } else {
          x_1972 = u_xlat72;
        }
        u_xlat72 = x_1972;
        u_xlat72 = ((u_xlat72 * 57.295780181884765625f) + -(x_35.x_B612SkyCloud.x));
        u_xlat13.x = ((u_xlat72 * 0.00277777784503996372f) + 0.5f);
        u_xlat30.x = max(u_xlat10.y, -1.0f);
        u_xlat30.x = min(u_xlat30.x, 1.0f);
        u_xlat72 = (-(abs(u_xlat30.x)) + 1.0f);
        u_xlat72 = sqrt(u_xlat72);
        u_xlat53.x = ((abs(u_xlat30.x) * -0.01872929930686950684f) + 0.07426100224256515503f);
        u_xlat53.x = ((u_xlat53.x * abs(u_xlat30.x)) + -0.21211439371109008789f);
        u_xlat53.x = ((u_xlat53.x * abs(u_xlat30.x)) + 1.57072877883911132812f);
        u_xlat73 = (u_xlat72 * u_xlat53.x);
        u_xlat73 = ((u_xlat73 * -2.0f) + 3.14159274101257324219f);
        u_xlatb30 = (u_xlat30.x < -(u_xlat30.x));
        u_xlat30.x = select(0.0f, u_xlat73, u_xlatb30);
        u_xlat30.x = ((u_xlat53.x * u_xlat72) + u_xlat30.x);
        u_xlat30.x = (-(u_xlat30.x) + 1.57079637050628662109f);
        u_xlat13.y = (u_xlat30.x * 0.63661974668502807617f);
        u_xlat30.x = (u_xlat10.x * u_xlat15.y);
        u_xlat30.x = ((u_xlat10.z * u_xlat15.x) + -(u_xlat30.x));
        u_xlat30.x = (u_xlat30.x / u_xlat70);
        u_xlat15.x = (u_xlat30.x * x_35.x_GlobalMipBias.y);
        u_xlat30.x = (u_xlat15.z / u_xlat71);
        u_xlat15.y = (u_xlat30.x * x_35.x_GlobalMipBias.y);
        u_xlat10.x = (u_xlat10.x * u_xlat16.y);
        u_xlat10.x = ((u_xlat10.z * u_xlat16.x) + -(u_xlat10.x));
        u_xlat10.x = (u_xlat10.x / u_xlat70);
        u_xlat10.z = (u_xlat16.z / u_xlat71);
        u_xlat10 = vec4f(((u_xlat10.xz * x_35.x_GlobalMipBias.yy)).xy, u_xlat10.zw);
        u_xlat50 = (u_xlat15.xy * x_1758);
        u_xlat10 = vec4f(((u_xlat10.xy * x_1758)).xy, u_xlat10.zw);
        let x_2151 = u_xlat50.xyxx;
        let x_2159 = u_xlat10.xyxx;
        u_xlat15 = vec4f(textureSampleGrad(x_SkyCloudDay, sampler_trilinear_repeatU_clampV, u_xlat13.xy, vec4f(x_2151.x, x_2151.y, x_2151.z, x_2151.w).xy, vec4f(x_2159.x, x_2159.y, x_2159.z, x_2159.w).xy).xyz.xyz, u_xlat15.w);
        u_xlat14 = ((vec3f(u_xlat69) * u_xlat15.xyz) + u_xlat14);
        let x_2183 = u_xlat50.xyxx;
        let x_2191 = u_xlat10.xyxx;
        u_xlat10.x = textureSampleGrad(x_SkyCloudDayAlpha, sampler_trilinear_repeatU_clampV, u_xlat13.xy, vec4f(x_2183.x, x_2183.y, x_2183.z, x_2183.w).xy, vec4f(x_2191.x, x_2191.y, x_2191.z, x_2191.w).xy).x;
        u_xlat67 = ((u_xlat69 * u_xlat10.x) + u_xlat67);
      }
      u_xlatb69 = (0.0f < x_35.x_B612SkyCloudLive.z);
      u_xlatb69 = (u_xlatb25 & u_xlatb69);
      if (u_xlatb69) {
        u_xlat6 = vec4f((((u_xlat20.xz * vec2f(u_xlat22)) + -(u_xlat6.xy))).xy, u_xlat6.zw);
        u_xlat10 = vec4f(max(x_628.x_CloudEvolution.xy, x_843).xy, u_xlat10.zw);
        u_xlat6 = vec4f(((u_xlat6.xy / u_xlat10.xx)).xy, u_xlat6.zw);
        u_xlat69 = (x_35.x_Time.y / u_xlat10.y);
        u_xlat10 = vec4f(((vec2f(u_xlat69) * x_2249)).xy, u_xlat10.zw);
        u_xlat50 = ((vec2f(u_xlat69) * x_2257) + u_xlat6.xy);
        u_xlat13 = vec4f(floor(u_xlat50).xy, u_xlat13.zw);
        u_xlat50 = fract(u_xlat50);
        u_xlat53 = (u_xlat50 * u_xlat50);
        u_xlat50 = ((-(u_xlat50) * x_733) + x_735);
        u_xlat50 = (u_xlat50 * u_xlat53);
        u_xlat53 = (u_xlat13.xy * x_743);
        u_xlat53 = fract(u_xlat53);
        u_xlat15 = vec4f(((u_xlat53.yxx + x_751)).xyz, u_xlat15.w);
        u_xlat69 = dot(u_xlat53.xyx, u_xlat15.xyz);
        u_xlat53 = (vec2f(u_xlat69) + u_xlat53);
        u_xlat69 = (u_xlat53.y + u_xlat53.x);
        u_xlat69 = (u_xlat53.x * u_xlat69);
        u_xlat69 = fract(u_xlat69);
        u_xlat15 = (u_xlat13.yxyx + x_778);
        u_xlat15 = (u_xlat15 * x_781);
        u_xlat15 = fract(u_xlat15);
        u_xlat16 = (u_xlat15 + x_787);
        u_xlat71 = dot(u_xlat15.yxy, u_xlat16.xyy);
        u_xlat53 = (vec2f(u_xlat71) + u_xlat15.yx);
        u_xlat71 = (u_xlat53.y + u_xlat53.x);
        u_xlat71 = (u_xlat53.x * u_xlat71);
        u_xlat71 = fract(u_xlat71);
        u_xlat72 = dot(u_xlat15.wzw, u_xlat16.zww);
        u_xlat53 = (vec2f(u_xlat72) + u_xlat15.wz);
        u_xlat72 = (u_xlat53.y + u_xlat53.x);
        u_xlat72 = (u_xlat53.x * u_xlat72);
        u_xlat72 = fract(u_xlat72);
        u_xlat13 = vec4f(((u_xlat13.xy + x_843)).xy, u_xlat13.zw);
        u_xlat13 = vec4f(((u_xlat13.xy * x_743)).xy, u_xlat13.zw);
        u_xlat13 = vec4f(fract(u_xlat13.xy).xy, u_xlat13.zw);
        u_xlat15 = vec4f(((u_xlat13.yxx + x_751)).xyz, u_xlat15.w);
        u_xlat53.x = dot(u_xlat13.xyx, u_xlat15.xyz);
        u_xlat13 = vec4f(((u_xlat53.xx + u_xlat13.xy)).xy, u_xlat13.zw);
        u_xlat33 = (u_xlat13.y + u_xlat13.x);
        u_xlat13.x = (u_xlat13.x * u_xlat33);
        u_xlat13.x = fract(u_xlat13.x);
        u_xlat71 = (-(u_xlat69) + u_xlat71);
        u_xlat69 = ((u_xlat50.x * u_xlat71) + u_xlat69);
        u_xlat71 = (-(u_xlat72) + u_xlat13.x);
        u_xlat50.x = ((u_xlat50.x * u_xlat71) + u_xlat72);
        u_xlat50.x = (-(u_xlat69) + u_xlat50.x);
        u_xlat69 = ((u_xlat50.y * u_xlat50.x) + u_xlat69);
        u_xlat69 = (u_xlat69 + -0.5f);
        u_xlat13.x = ((u_xlat6.x * 2.29999995231628417969f) + -(u_xlat10.x));
        u_xlat13.y = ((u_xlat6.y * 2.29999995231628417969f) + u_xlat10.y);
        u_xlat6 = vec4f(((u_xlat13.xy + x_2463)).xy, u_xlat6.zw);
        u_xlat10 = vec4f(floor(u_xlat6.xy).xy, u_xlat10.zw);
        u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
        u_xlat50 = (u_xlat6.xy * u_xlat6.xy);
        u_xlat6 = vec4f((((-(u_xlat6.xy) * x_733) + x_735)).xy, u_xlat6.zw);
        u_xlat6 = vec4f(((u_xlat6.xy * u_xlat50)).xy, u_xlat6.zw);
        u_xlat50 = (u_xlat10.xy * x_743);
        u_xlat50 = fract(u_xlat50);
        u_xlat13 = vec4f(((u_xlat50.yxx + x_751)).xyz, u_xlat13.w);
        u_xlat71 = dot(u_xlat50.xyx, u_xlat13.xyz);
        u_xlat50 = (u_xlat50 + vec2f(u_xlat71));
        u_xlat70 = (u_xlat50.y + u_xlat50.x);
        u_xlat10.z = (u_xlat50.x * u_xlat70);
        u_xlat13 = (u_xlat10.yxyx + x_778);
        u_xlat13 = (u_xlat13 * x_781);
        u_xlat13 = fract(u_xlat13);
        u_xlat15 = (u_xlat13 + x_787);
        u_xlat70 = dot(u_xlat13.yxy, u_xlat15.xyy);
        u_xlat13 = vec4f(((vec2f(u_xlat70) + u_xlat13.yx)).xy, u_xlat13.zw);
        u_xlat70 = (u_xlat13.y + u_xlat13.x);
        u_xlat10.w = (u_xlat13.x * u_xlat70);
        u_xlat71 = dot(u_xlat13.wzw, u_xlat15.zww);
        u_xlat13 = vec4f(((vec2f(u_xlat71) + u_xlat13.wz)).xy, u_xlat13.zw);
        u_xlat71 = (u_xlat13.y + u_xlat13.x);
        u_xlat71 = (u_xlat13.x * u_xlat71);
        u_xlat71 = fract(u_xlat71);
        u_xlat10 = vec4f(((u_xlat10.xy + x_843)).xy, u_xlat10.zw);
        u_xlat10 = vec4f(((u_xlat10.xy * x_743)).xy, u_xlat10.zw);
        u_xlat10 = fract(u_xlat10);
        u_xlat13 = vec4f(((u_xlat10.yxx + x_751)).xyz, u_xlat13.w);
        u_xlat72 = dot(u_xlat10.xyx, u_xlat13.xyz);
        u_xlat10 = vec4f(((u_xlat10.xy + vec2f(u_xlat72))).xy, u_xlat10.zw);
        u_xlat30.x = (u_xlat10.y + u_xlat10.x);
        u_xlat10.x = (u_xlat10.x * u_xlat30.x);
        u_xlat10.x = fract(u_xlat10.x);
        u_xlat30.x = (-(u_xlat10.z) + u_xlat10.w);
        u_xlat30.x = ((u_xlat6.x * u_xlat30.x) + u_xlat10.z);
        u_xlat10.x = (-(u_xlat71) + u_xlat10.x);
        u_xlat6.x = ((u_xlat6.x * u_xlat10.x) + u_xlat71);
        u_xlat6.x = (-(u_xlat30.x) + u_xlat6.x);
        u_xlat6.x = ((u_xlat6.y * u_xlat6.x) + u_xlat30.x);
        u_xlat6.x = (u_xlat6.x + -0.5f);
        u_xlat6.x = ((u_xlat6.x * 0.5f) + u_xlat69);
        u_xlat6.x = (u_xlat6.x * x_35.x_B612SkyCloudLive.z);
        u_xlat6.x = (u_xlat67 * u_xlat6.x);
        u_xlat6.x = (u_xlat6.x * 3.0f);
        u_xlat26.x = (-(u_xlat67) + 1.0f);
        u_xlat6.x = ((u_xlat6.x * u_xlat26.x) + u_xlat67);
        u_xlat6.x = clamp(u_xlat6.x, 0.0f, 1.0f);
        u_xlat26.x = max(u_xlat67, 0.00009999999747378752f);
        u_xlat26.x = (u_xlat6.x / u_xlat26.x);
        u_xlat14 = (u_xlat26.xxx * u_xlat14);
        u_xlat67 = u_xlat6.x;
      }
      u_xlat10 = vec4f(((vec3f(x_628.x_DayExposure) * x_628.x_DayTint.xyz)).xyz, u_xlat10.w);
      u_xlat13 = vec4f(((u_xlat10.xyz * u_xlat14)).xyz, u_xlat13.w);
      u_xlat6.x = dot(u_xlat13.xyz, x_2747);
      u_xlat10 = vec4f((((u_xlat14 * u_xlat10.xyz) + -(u_xlat6.xxx))).xyz, u_xlat10.w);
      let x_2766 = vec3f(x_628.x_DaySaturation, x_628.x_DaySaturation, x_628.x_DaySaturation);
      u_xlat10 = vec4f((((vec3f(x_2766.x, x_2766.y, x_2766.z) * u_xlat10.xyz) + u_xlat6.xxx)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(max(u_xlat10.xyz, vec3f()).xyz, u_xlat10.w);
      u_xlat6.x = max(x_628.x_DayHorizonRange, 0.10000000149011611938f);
      u_xlat6.x = (u_xlat61 / u_xlat6.x);
      u_xlat6.x = (-(u_xlat6.x) + 1.0f);
      u_xlat6.x = max(u_xlat6.x, 0.0f);
      u_xlat6.x = (u_xlat6.x * u_xlat6.x);
      u_xlat13 = vec4f(((x_628.x_DayHorizon.xyz + x_2813)).xyz, u_xlat13.w);
      u_xlat13 = vec4f((((u_xlat6.xxx * u_xlat13.xyz) + x_2822)).xyz, u_xlat13.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * u_xlat13.xyz)).xyz, u_xlat10.w);
      u_xlat6.x = ((u_xlat2.x * 57.295780181884765625f) + -(x_628.x_DayZenithStart));
      u_xlat26.x = (-(x_628.x_DayZenithStart) + 90.0f);
      u_xlat26.x = max(u_xlat26.x, 1.0f);
      u_xlat6.x = (u_xlat6.x / u_xlat26.x);
      u_xlat6.x = clamp(u_xlat6.x, 0.0f, 1.0f);
      u_xlat13 = vec4f(((x_628.x_DayZenith.xyz + x_2813)).xyz, u_xlat13.w);
      u_xlat13 = vec4f((((u_xlat6.xxx * u_xlat13.xyz) + x_2822)).xyz, u_xlat13.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * u_xlat13.xyz)).xyz, u_xlat10.w);
      u_xlat6.x = x_35.x_B612SkyCloudLive.y;
      u_xlat6.x = clamp(u_xlat6.x, 0.0f, 1.0f);
      u_xlat26.x = (-(u_xlat6.x) + 1.0f);
      u_xlat26.x = (u_xlat26.x * x_628.x_DaySunDim.x);
      u_xlatb69 = (0.0f < u_xlat26.x);
      u_xlat70 = (x_35.x_B612SkyCloud.x + x_628.x_DaySunDim.z);
      u_xlat70 = (u_xlat70 * 0.01745329238474369049f);
      u_xlat71 = (x_628.x_DaySunDim.w * 0.01745329238474369049f);
      u_xlat13.x = sin(u_xlat70);
      u_xlat14.x = cos(u_xlat70);
      u_xlat15.x = sin(u_xlat71);
      u_xlat16.x = cos(u_xlat71);
      u_xlat13.x = (u_xlat13.x * u_xlat16.x);
      u_xlat13.z = (u_xlat14.x * u_xlat16.x);
      u_xlat13.y = u_xlat15.x;
      u_xlat70 = dot(u_xlat20, u_xlat13.xyz);
      u_xlat70 = clamp(u_xlat70, 0.0f, 1.0f);
      u_xlat71 = max(x_628.x_DaySunDim.y, 1.0f);
      u_xlat70 = log2(u_xlat70);
      u_xlat70 = (u_xlat70 * u_xlat71);
      u_xlat70 = exp2(u_xlat70);
      u_xlat26.x = ((-(u_xlat26.x) * u_xlat70) + 1.0f);
      if (u_xlatb69) {
        x_2967 = u_xlat26.x;
      } else {
        x_2967 = 1.0f;
      }
      u_xlat26.x = x_2967;
      u_xlat10 = vec4f(((u_xlat26.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlatb26 = (0.0f < u_xlat6.x);
      u_xlatb69 = (0.00100000004749745131f < u_xlat67);
      u_xlatb26 = (u_xlatb26 & u_xlatb69);
      if (u_xlatb26) {
        u_xlat26.x = max(x_628.x_CloudRelight.z, 1.0f);
        u_xlat69 = (-(u_xlat3.x) / u_xlat26.x);
        u_xlat69 = (u_xlat69 * 1.44269502162933349609f);
        u_xlat69 = exp2(u_xlat69);
        u_xlat69 = ((x_628.x_CloudRelight.y * u_xlat69) + x_628.x_CloudRelight.x);
        u_xlat70 = dot(u_xlat11.xyz, u_xlat13.xyz);
        u_xlat70 = max(u_xlat70, -1.0f);
        u_xlat70 = min(u_xlat70, 1.0f);
        u_xlat11.x = (-(abs(u_xlat70)) + 1.0f);
        u_xlat11.x = sqrt(u_xlat11.x);
        u_xlat31.x = ((abs(u_xlat70) * -0.01872929930686950684f) + 0.07426100224256515503f);
        u_xlat31.x = ((u_xlat31.x * abs(u_xlat70)) + -0.21211439371109008789f);
        u_xlat31.x = ((u_xlat31.x * abs(u_xlat70)) + 1.57072877883911132812f);
        u_xlat51 = (u_xlat11.x * u_xlat31.x);
        u_xlat51 = ((u_xlat51 * -2.0f) + 3.14159274101257324219f);
        u_xlatb70 = (u_xlat70 < -(u_xlat70));
        u_xlat70 = select(0.0f, u_xlat51, u_xlatb70);
        u_xlat70 = ((u_xlat31.x * u_xlat11.x) + u_xlat70);
        u_xlat11.x = (u_xlat70 * 57.295780181884765625f);
        u_xlat26.x = (-(u_xlat11.x) / u_xlat26.x);
        u_xlat26.x = (u_xlat26.x * 1.44269502162933349609f);
        u_xlat26.x = exp2(u_xlat26.x);
        u_xlat26.x = ((x_628.x_CloudRelight.y * u_xlat26.x) + x_628.x_CloudRelight.x);
        u_xlat26.x = (u_xlat69 / u_xlat26.x);
        u_xlat26.x = log2(u_xlat26.x);
        u_xlat26.x = (u_xlat26.x * 0.60000002384185791016f);
        u_xlat26.x = exp2(u_xlat26.x);
        u_xlat26.x = max(u_xlat26.x, 0.64999997615814208984f);
        u_xlat26.x = min(u_xlat26.x, 1.5f);
        u_xlat11 = vec4f(((u_xlat10.xyz / vec3f(u_xlat67))).xyz, u_xlat11.w);
        u_xlat69 = dot(u_xlat11.xyz, x_2747);
        u_xlat71 = (u_xlat6.x * x_628.x_CloudRelight.w);
        u_xlat13 = vec4f((((vec3f(u_xlat69) * vec3f(0.97000002861022949219f, 1.0f, 1.03999996185302734375f)) + -(u_xlat11.xyz))).xyz, u_xlat13.w);
        u_xlat11 = vec4f((((vec3f(u_xlat71) * u_xlat13.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat26.x = (u_xlat26.x + -1.0f);
        u_xlat26.x = ((u_xlat6.x * u_xlat26.x) + 1.0f);
        u_xlat11 = vec4f(((u_xlat26.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat26.x = ((u_xlat70 * 57.295780181884765625f) + -28.0f);
        u_xlat26.x = (u_xlat26.x * -0.05555555596947669983f);
        u_xlat26.x = clamp(u_xlat26.x, 0.0f, 1.0f);
        u_xlat70 = ((u_xlat26.x * -2.0f) + 3.0f);
        u_xlat26.x = (u_xlat26.x * u_xlat26.x);
        u_xlat26.x = (u_xlat26.x * u_xlat70);
        u_xlat13 = vec4f(max(x_628.x_CloudSilver.zy, vec2f(0.00100000004749745131f, 0.5f)).xy, u_xlat13.zw);
        u_xlat69 = (u_xlat69 / u_xlat13.x);
        u_xlat69 = (-(u_xlat69) + 1.0f);
        u_xlat69 = clamp(u_xlat69, 0.0f, 1.0f);
        u_xlat26.x = (u_xlat26.x * u_xlat69);
        let x_3242 = (x_628.x_CloudSilver.zzz * vec3f(1.0f, 0.99000000953674316406f, 0.97000002861022949219f));
        u_xlat13 = vec4f(x_3242.x, u_xlat13.y, x_3242.yz);
        u_xlat69 = ((u_xlat67 * 0.15000000596046447754f) + 0.85000002384185791016f);
        let x_3258 = ((u_xlat13.xzw * vec3f(u_xlat69)) + -(u_xlat11.xyz));
        u_xlat13 = vec4f(x_3258.x, u_xlat13.y, x_3258.yz);
        u_xlat11 = vec4f((((u_xlat26.xxx * u_xlat13.xzw) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat6.x = (u_xlat6.x * x_628.x_CloudSilver.x);
        u_xlat69 = (-(u_xlat3.x) / u_xlat13.y);
        u_xlat69 = (u_xlat69 * 1.44269502162933349609f);
        u_xlat69 = exp2(u_xlat69);
        u_xlat6.x = (u_xlat6.x * u_xlat69);
        u_xlat69 = (-(u_xlat67) + 1.0f);
        u_xlat6.x = (u_xlat6.x * u_xlat69);
        u_xlat11 = vec4f((((x_35.x_MainLightColor.xyz * u_xlat6.xxx) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat6.x = ((-(u_xlat26.x) * 0.60000002384185791016f) + 1.0f);
        u_xlat67 = (u_xlat6.x * u_xlat67);
        u_xlat10 = vec4f(((vec3f(u_xlat67) * u_xlat11.xyz)).xyz, u_xlat10.w);
      }
      u_xlat11 = vec4f(max(x_628.x_DayCloudWarm.xyz, vec3f(0.00100000004749745131f)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(log2(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((vec3f(u_xlat64) * u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(exp2(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat6.x = (x_628.x_DayCloudWarm.w + -1.0f);
      u_xlat6.x = ((u_xlat64 * u_xlat6.x) + 1.0f);
      u_xlat11 = vec4f(((u_xlat6.xxx * u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * u_xlat11.xyz)).xyz, u_xlat10.w);
      u_xlat6.x = x_628.x_PhotoCloudCut.x;
      u_xlat6.x = clamp(u_xlat6.x, 0.0f, 1.0f);
      u_xlat6.x = (-(u_xlat6.x) + 1.0f);
      u_xlat26.x = (-(u_xlat65) + 1.0f);
      u_xlat10 = vec4f(((u_xlat10.xyz * u_xlat26.xxx)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat6.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat26.x = (u_xlat67 * u_xlat26.x);
      u_xlat6.x = (u_xlat6.x * u_xlat26.x);
    } else {
      u_xlat10.x = 0.0f;
      u_xlat10.y = 0.0f;
      u_xlat10.z = 0.0f;
      u_xlat6.x = 0.0f;
    }
    u_xlatb26 = (0.00100000004749745131f < u_xlat65);
    if (u_xlatb26) {
      u_xlatb26 = (0.00100000004749745131f < u_xlat8.x);
      if (u_xlatb26) {
        u_xlat26.x = dot(u_xlat7.xz, u_xlat7.xz);
        u_xlat26.x = max(u_xlat26.x, 0.00000099999999747524f);
        u_xlat67 = sqrt(u_xlat26.x);
        u_xlat69 = min(abs(u_xlat7.z), abs(u_xlat7.x));
        u_xlat70 = max(abs(u_xlat7.z), abs(u_xlat7.x));
        u_xlat70 = (1.0f / u_xlat70);
        u_xlat69 = (u_xlat69 * u_xlat70);
        u_xlat70 = (u_xlat69 * u_xlat69);
        u_xlat11.x = ((u_xlat70 * 0.02083509974181652069f) + -0.08513300120830535889f);
        u_xlat11.x = ((u_xlat70 * u_xlat11.x) + 0.18014100193977355957f);
        u_xlat11.x = ((u_xlat70 * u_xlat11.x) + -0.33029949665069580078f);
        u_xlat70 = ((u_xlat70 * u_xlat11.x) + 0.99986600875854492188f);
        u_xlat11.x = (u_xlat69 * u_xlat70);
        u_xlatb31.x = (abs(u_xlat7.z) < abs(u_xlat7.x));
        u_xlat11.x = ((u_xlat11.x * -2.0f) + 1.57079637050628662109f);
        if (u_xlatb31.x) {
          x_3512 = u_xlat11.x;
        } else {
          x_3512 = 0.0f;
        }
        u_xlat11.x = x_3512;
        u_xlat69 = ((u_xlat69 * u_xlat70) + u_xlat11.x);
        u_xlatb70 = (u_xlat7.z < -(u_xlat7.z));
        u_xlat70 = select(0.0f, -3.14159274101257324219f, u_xlatb70);
        u_xlat69 = (u_xlat69 + u_xlat70);
        u_xlat70 = min(u_xlat7.z, u_xlat7.x);
        u_xlat11.x = max(u_xlat7.z, u_xlat7.x);
        u_xlatb70 = (u_xlat70 < -(u_xlat70));
        u_xlatb11 = (u_xlat11.x >= -(u_xlat11.x));
        u_xlatb70 = (u_xlatb70 & u_xlatb11);
        if (u_xlatb70) {
          x_3563 = -(u_xlat69);
        } else {
          x_3563 = u_xlat69;
        }
        u_xlat69 = x_3563;
        u_xlat69 = ((u_xlat69 * 57.295780181884765625f) + -(x_35.x_B612SkyCloud.y));
        u_xlat11.x = ((u_xlat69 * 0.00277777784503996372f) + 0.5f);
        u_xlat27.x = max(u_xlat7.y, -1.0f);
        u_xlat27.x = min(u_xlat27.x, 1.0f);
        u_xlat69 = (-(abs(u_xlat27.x)) + 1.0f);
        u_xlat69 = sqrt(u_xlat69);
        u_xlat70 = ((abs(u_xlat27.x) * -0.01872929930686950684f) + 0.07426100224256515503f);
        u_xlat70 = ((u_xlat70 * abs(u_xlat27.x)) + -0.21211439371109008789f);
        u_xlat70 = ((u_xlat70 * abs(u_xlat27.x)) + 1.57072877883911132812f);
        u_xlat51 = (u_xlat69 * u_xlat70);
        u_xlat51 = ((u_xlat51 * -2.0f) + 3.14159274101257324219f);
        u_xlatb27 = (u_xlat27.x < -(u_xlat27.x));
        u_xlat27.x = select(0.0f, u_xlat51, u_xlatb27);
        u_xlat27.x = ((u_xlat70 * u_xlat69) + u_xlat27.x);
        u_xlat27.x = (-(u_xlat27.x) + 1.57079637050628662109f);
        u_xlat11.y = (u_xlat27.x * 0.63661974668502807617f);
        u_xlat27.x = (u_xlat7.x * u_xlat17.y);
        u_xlat27.x = ((u_xlat7.z * u_xlat17.x) + -(u_xlat27.x));
        u_xlat27.x = (u_xlat27.x / u_xlat26.x);
        u_xlat13.x = (u_xlat27.x * x_35.x_GlobalMipBias.y);
        u_xlat27.x = (u_xlat17.z / u_xlat67);
        u_xlat13.y = (u_xlat27.x * x_35.x_GlobalMipBias.y);
        u_xlat7.x = (u_xlat7.x * u_xlat18.y);
        u_xlat7.x = ((u_xlat7.z * u_xlat18.x) + -(u_xlat7.x));
        u_xlat26.x = (u_xlat7.x / u_xlat26.x);
        u_xlat7.x = (u_xlat26.x * x_35.x_GlobalMipBias.y);
        u_xlat26.x = (u_xlat18.z / u_xlat67);
        u_xlat7.y = (u_xlat26.x * x_35.x_GlobalMipBias.y);
        u_xlat47 = (u_xlat13.xy * x_1758);
        u_xlat7 = vec4f(((u_xlat7.xy * x_1758)).xy, u_xlat7.zw);
        let x_3739 = u_xlat47.xyxx;
        let x_3747 = u_xlat7.xyxx;
        u_xlat13 = vec4f(textureSampleGrad(x_SkyCloudDusk, sampler_trilinear_repeatU_clampV, u_xlat11.xy, vec4f(x_3739.x, x_3739.y, x_3739.z, x_3739.w).xy, vec4f(x_3747.x, x_3747.y, x_3747.z, x_3747.w).xy).xyz.xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat8.xxx * u_xlat13.xyz)).xyz, u_xlat13.w);
        let x_3772 = u_xlat47.xyxx;
        let x_3780 = u_xlat7.xyxx;
        u_xlat26.x = textureSampleGrad(x_SkyCloudDuskAlpha, sampler_trilinear_repeatU_clampV, u_xlat11.xy, vec4f(x_3772.x, x_3772.y, x_3772.z, x_3772.w).xy, vec4f(x_3780.x, x_3780.y, x_3780.z, x_3780.w).xy).x;
        u_xlat26.x = (u_xlat26.x * u_xlat8.x);
      } else {
        u_xlat13.x = 0.0f;
        u_xlat13.y = 0.0f;
        u_xlat13.z = 0.0f;
        u_xlat26.x = 0.0f;
      }
      u_xlatb7 = (u_xlat8.x < 0.99900001287460327148f);
      if (u_xlatb7) {
        u_xlat7.x = (-(u_xlat8.x) + 1.0f);
        u_xlat27.x = dot(u_xlat8.yw, u_xlat8.yw);
        u_xlat27.x = max(u_xlat27.x, 0.00000099999999747524f);
        u_xlat47.x = sqrt(u_xlat27.x);
        u_xlat67 = min(abs(u_xlat8.w), abs(u_xlat8.y));
        u_xlat8.x = max(abs(u_xlat8.w), abs(u_xlat8.y));
        u_xlat8.x = (1.0f / u_xlat8.x);
        u_xlat67 = (u_xlat67 * u_xlat8.x);
        u_xlat8.x = (u_xlat67 * u_xlat67);
        u_xlat69 = ((u_xlat8.x * 0.02083509974181652069f) + -0.08513300120830535889f);
        u_xlat69 = ((u_xlat8.x * u_xlat69) + 0.18014100193977355957f);
        u_xlat69 = ((u_xlat8.x * u_xlat69) + -0.33029949665069580078f);
        u_xlat8.x = ((u_xlat8.x * u_xlat69) + 0.99986600875854492188f);
        u_xlat69 = (u_xlat67 * u_xlat8.x);
        u_xlatb70 = (abs(u_xlat8.w) < abs(u_xlat8.y));
        u_xlat69 = ((u_xlat69 * -2.0f) + 1.57079637050628662109f);
        u_xlat69 = select(0.0f, u_xlat69, u_xlatb70);
        u_xlat67 = ((u_xlat67 * u_xlat8.x) + u_xlat69);
        u_xlatb8.x = (u_xlat8.w < -(u_xlat8.w));
        u_xlat8.x = select(0.0f, -3.14159274101257324219f, u_xlatb8.x);
        u_xlat67 = (u_xlat67 + u_xlat8.x);
        u_xlat8.x = min(u_xlat8.w, u_xlat8.y);
        u_xlat69 = max(u_xlat8.w, u_xlat8.y);
        u_xlatb8.x = (u_xlat8.x < -(u_xlat8.x));
        u_xlatb69 = (u_xlat69 >= -(u_xlat69));
        u_xlatb8.x = (u_xlatb8.x & u_xlatb69);
        if (u_xlatb8.x) {
          x_3944 = -(u_xlat67);
        } else {
          x_3944 = u_xlat67;
        }
        u_xlat67 = x_3944;
        u_xlat67 = ((u_xlat67 * 57.295780181884765625f) + -(x_35.x_B612SkyCloud.y));
        u_xlat11.x = ((u_xlat67 * 0.00277777784503996372f) + 0.5f);
        u_xlat67 = max(u_xlat8.z, -1.0f);
        u_xlat67 = min(u_xlat67, 1.0f);
        u_xlat8.x = (-(abs(u_xlat67)) + 1.0f);
        u_xlat8.x = sqrt(u_xlat8.x);
        u_xlat48.x = ((abs(u_xlat67) * -0.01872929930686950684f) + 0.07426100224256515503f);
        u_xlat48.x = ((u_xlat48.x * abs(u_xlat67)) + -0.21211439371109008789f);
        u_xlat48.x = ((u_xlat48.x * abs(u_xlat67)) + 1.57072877883911132812f);
        u_xlat69 = (u_xlat8.x * u_xlat48.x);
        u_xlat69 = ((u_xlat69 * -2.0f) + 3.14159274101257324219f);
        u_xlatb67 = (u_xlat67 < -(u_xlat67));
        u_xlat67 = select(0.0f, u_xlat69, u_xlatb67);
        u_xlat67 = ((u_xlat48.x * u_xlat8.x) + u_xlat67);
        u_xlat67 = (-(u_xlat67) + 1.57079637050628662109f);
        u_xlat11.y = (u_xlat67 * 0.63661974668502807617f);
        u_xlat67 = (u_xlat8.y * u_xlat9.y);
        u_xlat67 = ((u_xlat8.w * u_xlat9.x) + -(u_xlat67));
        u_xlat67 = (u_xlat67 / u_xlat27.x);
        u_xlat9.x = (u_xlat67 * x_35.x_GlobalMipBias.y);
        u_xlat67 = (u_xlat9.z / u_xlat47.x);
        u_xlat9.y = (u_xlat67 * x_35.x_GlobalMipBias.y);
        u_xlat67 = (u_xlat8.y * u_xlat12.y);
        u_xlat67 = ((u_xlat8.w * u_xlat12.x) + -(u_xlat67));
        u_xlat27.x = (u_xlat67 / u_xlat27.x);
        u_xlat8.x = (u_xlat27.x * x_35.x_GlobalMipBias.y);
        u_xlat27.x = (u_xlat12.z / u_xlat47.x);
        u_xlat8.y = (u_xlat27.x * x_35.x_GlobalMipBias.y);
        u_xlat27 = vec3f(((u_xlat9.xy * x_1758)).xy, u_xlat27.z);
        u_xlat8 = vec4f(((u_xlat8.xy * x_1758)).xy, u_xlat8.zw);
        let x_4108 = u_xlat27.xyxx;
        let x_4116 = u_xlat8.xyxx;
        u_xlat9 = vec4f(textureSampleGrad(x_SkyCloudDusk, sampler_trilinear_repeatU_clampV, u_xlat11.xy, vec4f(x_4108.x, x_4108.y, x_4108.z, x_4108.w).xy, vec4f(x_4116.x, x_4116.y, x_4116.z, x_4116.w).xy).xyz.xyz, u_xlat9.w);
        u_xlat13 = vec4f((((u_xlat7.xxx * u_xlat9.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        let x_4143 = u_xlat27.xyxx;
        let x_4151 = u_xlat8.xyxx;
        u_xlat27.x = textureSampleGrad(x_SkyCloudDuskAlpha, sampler_trilinear_repeatU_clampV, u_xlat11.xy, vec4f(x_4143.x, x_4143.y, x_4143.z, x_4143.w).xy, vec4f(x_4151.x, x_4151.y, x_4151.z, x_4151.w).xy).x;
        u_xlat26.x = ((u_xlat7.x * u_xlat27.x) + u_xlat26.x);
      }
      u_xlatb7 = (0.0f < x_35.x_B612SkyCloudLive.z);
      u_xlatb25 = (u_xlatb25 & u_xlatb7);
      if (u_xlatb25) {
        u_xlat46 = ((u_xlat20.xz * vec2f(u_xlat22)) + -(u_xlat6.zw));
        u_xlat7 = vec4f(max(x_628.x_CloudEvolution.xy, x_843).xy, u_xlat7.zw);
        u_xlat46 = (u_xlat46 / u_xlat7.xx);
        u_xlat22 = (x_35.x_Time.y / u_xlat7.y);
        u_xlat7 = vec4f(((vec2f(u_xlat22) * x_2249)).xy, u_xlat7.zw);
        u_xlat47 = ((vec2f(u_xlat22) * x_2257) + u_xlat46);
        u_xlat8 = vec4f(floor(u_xlat47).xy, u_xlat8.zw);
        u_xlat47 = fract(u_xlat47);
        u_xlat48 = (u_xlat47 * u_xlat47);
        u_xlat47 = ((-(u_xlat47) * x_733) + x_735);
        u_xlat47 = (u_xlat47 * u_xlat48);
        u_xlat48 = (u_xlat8.xy * x_743);
        u_xlat48 = fract(u_xlat48);
        u_xlat9 = vec4f(((u_xlat48.yxx + x_751)).xyz, u_xlat9.w);
        u_xlat22 = dot(u_xlat48.xyx, u_xlat9.xyz);
        u_xlat48 = (vec2f(u_xlat22) + u_xlat48);
        u_xlat22 = (u_xlat48.y + u_xlat48.x);
        u_xlat22 = (u_xlat48.x * u_xlat22);
        u_xlat22 = fract(u_xlat22);
        u_xlat9 = (u_xlat8.yxyx + x_778);
        u_xlat9 = (u_xlat9 * x_781);
        u_xlat9 = fract(u_xlat9);
        u_xlat11 = (u_xlat9 + x_787);
        u_xlat25.x = dot(u_xlat9.yxy, u_xlat11.xyy);
        u_xlat48 = (u_xlat25.xx + u_xlat9.yx);
        u_xlat25.x = (u_xlat48.y + u_xlat48.x);
        u_xlat25.x = (u_xlat48.x * u_xlat25.x);
        u_xlat25.x = fract(u_xlat25.x);
        u_xlat48.x = dot(u_xlat9.wzw, u_xlat11.zww);
        u_xlat48 = (u_xlat48.xx + u_xlat9.wz);
        u_xlat68 = (u_xlat48.y + u_xlat48.x);
        u_xlat8.z = (u_xlat48.x * u_xlat68);
        u_xlat8 = vec4f(((u_xlat8.xy + x_843)).xy, u_xlat8.zw);
        u_xlat8 = vec4f(((u_xlat8.xy * x_743)).xy, u_xlat8.zw);
        u_xlat8 = vec4f(fract(u_xlat8.xyz).xyz, u_xlat8.w);
        u_xlat9 = vec4f(((u_xlat8.yxx + x_751)).xyz, u_xlat9.w);
        u_xlat68 = dot(u_xlat8.xyx, u_xlat9.xyz);
        u_xlat8 = vec4f(((vec2f(u_xlat68) + u_xlat8.xy)).xy, u_xlat8.zw);
        u_xlat28.x = (u_xlat8.y + u_xlat8.x);
        u_xlat8.x = (u_xlat8.x * u_xlat28.x);
        u_xlat8.x = fract(u_xlat8.x);
        u_xlat25.x = (-(u_xlat22) + u_xlat25.x);
        u_xlat22 = ((u_xlat47.x * u_xlat25.x) + u_xlat22);
        u_xlat25.x = (-(u_xlat8.z) + u_xlat8.x);
        u_xlat25.x = ((u_xlat47.x * u_xlat25.x) + u_xlat8.z);
        u_xlat25.x = (-(u_xlat22) + u_xlat25.x);
        u_xlat22 = ((u_xlat47.y * u_xlat25.x) + u_xlat22);
        u_xlat22 = (u_xlat22 + -0.5f);
        u_xlat8.x = ((u_xlat46.x * 2.29999995231628417969f) + -(u_xlat7.x));
        u_xlat8.y = ((u_xlat46.y * 2.29999995231628417969f) + u_xlat7.y);
        u_xlat46 = (u_xlat8.xy + x_2463);
        u_xlat7 = vec4f(floor(u_xlat46).xy, u_xlat7.zw);
        u_xlat46 = fract(u_xlat46);
        u_xlat47 = (u_xlat46 * u_xlat46);
        u_xlat46 = ((-(u_xlat46) * x_733) + x_735);
        u_xlat46 = (u_xlat46 * u_xlat47);
        u_xlat47 = (u_xlat7.xy * x_743);
        u_xlat47 = fract(u_xlat47);
        u_xlat8 = vec4f(((u_xlat47.yxx + x_751)).xyz, u_xlat8.w);
        u_xlat25.x = dot(u_xlat47.xyx, u_xlat8.xyz);
        u_xlat47 = (u_xlat25.xx + u_xlat47);
        u_xlat25.x = (u_xlat47.y + u_xlat47.x);
        u_xlat25.x = (u_xlat47.x * u_xlat25.x);
        u_xlat25.x = fract(u_xlat25.x);
        u_xlat8 = (u_xlat7.yxyx + x_778);
        u_xlat8 = (u_xlat8 * x_781);
        u_xlat8 = fract(u_xlat8);
        u_xlat9 = (u_xlat8 + x_787);
        u_xlat47.x = dot(u_xlat8.yxy, u_xlat9.xyy);
        u_xlat47 = (u_xlat47.xx + u_xlat8.yx);
        u_xlat67 = (u_xlat47.y + u_xlat47.x);
        u_xlat7.z = (u_xlat47.x * u_xlat67);
        u_xlat67 = dot(u_xlat8.wzw, u_xlat9.zww);
        u_xlat8 = vec4f(((vec2f(u_xlat67) + u_xlat8.wz)).xy, u_xlat8.zw);
        u_xlat67 = (u_xlat8.y + u_xlat8.x);
        u_xlat7.w = (u_xlat8.x * u_xlat67);
        u_xlat7 = vec4f(((u_xlat7.xy + x_843)).xy, u_xlat7.zw);
        u_xlat7 = vec4f(((u_xlat7.xy * x_743)).xy, u_xlat7.zw);
        u_xlat7 = fract(u_xlat7);
        u_xlat8 = vec4f(((u_xlat7.yxx + x_751)).xyz, u_xlat8.w);
        u_xlat8.x = dot(u_xlat7.xyx, u_xlat8.xyz);
        u_xlat7 = vec4f(((u_xlat7.xy + u_xlat8.xx)).xy, u_xlat7.zw);
        u_xlat27.x = (u_xlat7.y + u_xlat7.x);
        u_xlat7.x = (u_xlat7.x * u_xlat27.x);
        u_xlat7.x = fract(u_xlat7.x);
        u_xlat27.x = (-(u_xlat25.x) + u_xlat7.z);
        u_xlat25.x = ((u_xlat46.x * u_xlat27.x) + u_xlat25.x);
        u_xlat7.x = (-(u_xlat7.w) + u_xlat7.x);
        u_xlat46.x = ((u_xlat46.x * u_xlat7.x) + u_xlat7.w);
        u_xlat46.x = (-(u_xlat25.x) + u_xlat46.x);
        u_xlat25.x = ((u_xlat46.y * u_xlat46.x) + u_xlat25.x);
        u_xlat25.x = (u_xlat25.x + -0.5f);
        u_xlat22 = ((u_xlat25.x * 0.5f) + u_xlat22);
        u_xlat22 = (u_xlat22 * x_35.x_B612SkyCloudLive.z);
        u_xlat22 = (u_xlat26.x * u_xlat22);
        u_xlat22 = (u_xlat22 * 3.0f);
        u_xlat25.x = (-(u_xlat26.x) + 1.0f);
        u_xlat22 = ((u_xlat22 * u_xlat25.x) + u_xlat26.x);
        u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
        u_xlat25.x = max(u_xlat26.x, 0.00009999999747378752f);
        u_xlat25.x = (u_xlat22 / u_xlat25.x);
        u_xlat13 = vec4f(((u_xlat25.xxx * u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat26.x = u_xlat22;
      }
      u_xlat7 = vec4f(((vec3f(x_628.x_DuskExposure) * x_628.x_DuskTint.xyz)).xyz, u_xlat7.w);
      u_xlat8 = vec4f(((u_xlat7.xyz * u_xlat13.xyz)).xyz, u_xlat8.w);
      u_xlat22 = dot(u_xlat8.xyz, x_2747);
      u_xlat7 = vec4f((((u_xlat13.xyz * u_xlat7.xyz) + -(vec3f(u_xlat22)))).xyz, u_xlat7.w);
      let x_4714 = vec3f(x_628.x_DuskSaturation, x_628.x_DuskSaturation, x_628.x_DuskSaturation);
      u_xlat7 = vec4f((((vec3f(x_4714.x, x_4714.y, x_4714.z) * u_xlat7.xyz) + vec3f(u_xlat22))).xyz, u_xlat7.w);
      u_xlat7 = vec4f(max(u_xlat7.xyz, vec3f()).xyz, u_xlat7.w);
      u_xlat22 = max(x_628.x_DuskHorizonRange, 0.10000000149011611938f);
      u_xlat22 = (u_xlat61 / u_xlat22);
      u_xlat22 = (-(u_xlat22) + 1.0f);
      u_xlat22 = max(u_xlat22, 0.0f);
      u_xlat22 = (u_xlat22 * u_xlat22);
      u_xlat8 = vec4f(((x_628.x_DuskHorizon.xyz + x_2813)).xyz, u_xlat8.w);
      u_xlat8 = vec4f((((vec3f(u_xlat22) * u_xlat8.xyz) + x_2822)).xyz, u_xlat8.w);
      u_xlat7 = vec4f(((u_xlat7.xyz * u_xlat8.xyz)).xyz, u_xlat7.w);
      u_xlat22 = ((u_xlat2.x * 57.295780181884765625f) + -(x_628.x_DuskZenithStart));
      u_xlat25.x = (-(x_628.x_DuskZenithStart) + 90.0f);
      u_xlat25.x = max(u_xlat25.x, 1.0f);
      u_xlat22 = (u_xlat22 / u_xlat25.x);
      u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
      u_xlat8 = vec4f(((x_628.x_DuskZenith.xyz + x_2813)).xyz, u_xlat8.w);
      u_xlat8 = vec4f((((vec3f(u_xlat22) * u_xlat8.xyz) + x_2822)).xyz, u_xlat8.w);
      u_xlat7 = vec4f(((u_xlat7.xyz * u_xlat8.xyz)).xyz, u_xlat7.w);
      u_xlat46 = x_628.x_PhotoCloudCut.yz;
      u_xlat46 = clamp(u_xlat46, vec2f(0.0f), vec2f(1.0f));
      u_xlat22 = (-(u_xlat46.x) + 1.0f);
      u_xlat25.x = max(x_628.x_PhotoCloudCut.w, 0.10000000149011611938f);
      u_xlat25.x = (1.0f / u_xlat25.x);
      u_xlat25.x = (u_xlat42 * u_xlat25.x);
      u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
      u_xlat46.x = ((u_xlat25.x * -2.0f) + 3.0f);
      u_xlat25.x = (u_xlat25.x * u_xlat25.x);
      u_xlat25.x = ((-(u_xlat46.x) * u_xlat25.x) + 1.0f);
      u_xlat25.x = ((-(u_xlat46.y) * u_xlat25.x) + 1.0f);
      u_xlat22 = (u_xlat22 * u_xlat25.x);
      u_xlat7 = vec4f(((vec3f(u_xlat65) * u_xlat7.xyz)).xyz, u_xlat7.w);
      u_xlat10 = vec4f((((u_xlat7.xyz * vec3f(u_xlat22)) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat25.x = (u_xlat65 * u_xlat26.x);
      u_xlat6.x = ((u_xlat25.x * u_xlat22) + u_xlat6.x);
    }
    u_xlat22 = x_35.x_B612SkyNight.w;
    u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
    u_xlat25.x = dot(u_xlat10.xyz, x_2747);
    u_xlat26 = (-(u_xlat10.xyz) + u_xlat25.xxx);
    u_xlat26 = ((vec3f(u_xlat22) * u_xlat26) + u_xlat10.xyz);
    u_xlat25.x = ((u_xlat25.x * 1.5f) + 1.0f);
    u_xlat25.x = (1.0f / u_xlat25.x);
    u_xlat25.x = (u_xlat25.x + -1.0f);
    u_xlat22 = ((u_xlat22 * u_xlat25.x) + 1.0f);
    u_xlat26 = (vec3f(u_xlat22) * u_xlat26);
    u_xlat7 = (-(x_35.x_B612SkyCloudNight.wxyz) + vec4f(1.0f));
    u_xlat27 = (u_xlat7.xxx * u_xlat7.yzw);
    u_xlat26 = (u_xlat26 * u_xlat27);
    u_xlat22 = (u_xlat6.x * u_xlat7.x);
    u_xlat25.x = ((-(u_xlat2.x) * 2.60435366630554199219f) + 1.0f);
    u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
    u_xlat25.x = (u_xlat25.x * u_xlat25.x);
    u_xlat25.x = (u_xlat25.x * x_628.x_CloudHaze);
    u_xlat7 = vec4f((((u_xlat4 * vec3f(u_xlat22)) + -(u_xlat26))).xyz, u_xlat7.w);
    u_xlat6 = vec4f((((u_xlat25.xxx * u_xlat7.xyz) + u_xlat26)).xyz, u_xlat6.w);
    u_xlat6 = vec4f(((u_xlat23.xxx * u_xlat6.xyz)).xyz, u_xlat6.w);
    u_xlat22 = (u_xlat23.x * u_xlat22);
  } else {
    u_xlat6.x = 0.0f;
    u_xlat6.y = 0.0f;
    u_xlat6.z = 0.0f;
    u_xlat22 = 0.0f;
  }
  u_xlat23.x = (x_35.x_B612SkyNight.y + x_35.x_B612SkyNight.x);
  u_xlat23.x = (u_xlat23.x + x_35.x_B612MoonDirection.w);
  u_xlatb23 = (0.00009999999747378752f < u_xlat23.x);
  if (u_xlatb23) {
    u_xlat7.y = dot(x_35.x_B612StarRot0.xyz, u_xlat20);
    u_xlat7.z = dot(x_35.x_B612StarRot1.xyz, u_xlat20);
    u_xlat7.x = dot(x_35.x_B612StarRot2.xyz, u_xlat20);
    u_xlat23.x = max(x_628.x_StarHorizon, 0.10000000149011611938f);
    u_xlat42 = (u_xlat42 / u_xlat23.x);
    u_xlat42 = clamp(u_xlat42, 0.0f, 1.0f);
    u_xlat42 = (u_xlat42 * u_xlat42);
    u_xlat8 = vec4f(((x_628.x_MilkyWayPole.xyz + x_84)).xyz, u_xlat8.w);
    u_xlat23.x = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat23.x = inverseSqrt(u_xlat23.x);
    u_xlat8 = vec4f(((u_xlat23.xxx * u_xlat8.xyz)).xyz, u_xlat8.w);
    u_xlat23.x = dot(u_xlat7.yzx, u_xlat8.xyz);
    u_xlat25.x = max(x_628.x_MilkyWay.w, 0.01999999955296516418f);
    u_xlat23.x = (u_xlat23.x * u_xlat23.x);
    u_xlat23.x = (u_xlat23.x * -0.5f);
    u_xlat25.x = (u_xlat25.x * u_xlat25.x);
    u_xlat65 = (u_xlat23.x / u_xlat25.x);
    u_xlat65 = (u_xlat65 * 1.44269502162933349609f);
    u_xlat65 = exp2(u_xlat65);
    u_xlatb8 = ((vec4f(0.00009999999747378752f, 0.00009999999747378752f, 0.0f, 0.0f) < x_35.x_B612SkyNight.yxyy)).xy;
    u_xlatb66 = (0.00999999977648258209f < u_xlat65);
    u_xlatb66 = (u_xlatb66 & u_xlatb8.x);
    if (u_xlatb66) {
      let x_5153 = (u_xlat7.yzx * vec3f(5.0f));
      u_xlat8 = vec4f(x_5153.x, u_xlat8.y, x_5153.yz);
      u_xlat9 = vec4f(floor(u_xlat8.xzw).xyz, u_xlat9.w);
      let x_5163 = fract(u_xlat8.xzw);
      u_xlat8 = vec4f(x_5163.x, u_xlat8.y, x_5163.yz);
      u_xlat10 = vec4f(((u_xlat8.xzw * u_xlat8.xzw)).xyz, u_xlat10.w);
      let x_5179 = ((-(u_xlat8.xzw) * x_5176) + x_5178);
      u_xlat8 = vec4f(x_5179.x, u_xlat8.y, x_5179.yz);
      let x_5186 = (u_xlat8.xzw * u_xlat10.xyz);
      u_xlat8 = vec4f(x_5186.x, u_xlat8.y, x_5186.yz);
      u_xlat10 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat66 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat66) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat66 = (u_xlat10.y + u_xlat10.x);
      u_xlat66 = (u_xlat10.z * u_xlat66);
      u_xlat66 = fract(u_xlat66);
      u_xlat10 = vec4f(((u_xlat9.xyz + x_5232)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat67 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat67) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat67 = (u_xlat10.y + u_xlat10.x);
      u_xlat67 = (u_xlat10.z * u_xlat67);
      u_xlat67 = fract(u_xlat67);
      u_xlat10 = vec4f(((u_xlat9.xyz + x_5276)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat69 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat69) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat69 = (u_xlat10.y + u_xlat10.x);
      u_xlat9.w = (u_xlat10.z * u_xlat69);
      u_xlat10 = vec4f(((u_xlat9.xyz + x_5319)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat70 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat70) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat10.x = (u_xlat10.y + u_xlat10.x);
      u_xlat10.x = (u_xlat10.z * u_xlat10.x);
      u_xlat30 = (u_xlat9.xyz + x_5364);
      u_xlat10 = vec4f(u_xlat10.x, ((u_xlat30 * x_5191)).xyz);
      u_xlat10 = fract(u_xlat10);
      u_xlat11 = vec4f(((u_xlat10.wzy + x_5203)).xyz, u_xlat11.w);
      u_xlat11.x = dot(u_xlat10.yzw, u_xlat11.xyz);
      u_xlat30 = (u_xlat10.yzw + u_xlat11.xxx);
      u_xlat30.x = (u_xlat30.y + u_xlat30.x);
      u_xlat30.x = (u_xlat30.z * u_xlat30.x);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5402)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat50.x = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((u_xlat50.xxx + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat50.x = (u_xlat11.y + u_xlat11.x);
      u_xlat30.y = (u_xlat11.z * u_xlat50.x);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5448)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat70 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat70) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat70 = (u_xlat11.y + u_xlat11.x);
      u_xlat30.z = (u_xlat11.z * u_xlat70);
      u_xlat30 = fract(u_xlat30);
      u_xlat9 = vec4f(((u_xlat9.xyz + x_2822)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat9.w);
      u_xlat9 = fract(u_xlat9);
      u_xlat11 = vec4f(((u_xlat9.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat11.x = dot(u_xlat9.xyz, u_xlat11.xyz);
      u_xlat9 = vec4f(((u_xlat9.xyz + u_xlat11.xxx)).xyz, u_xlat9.w);
      u_xlat9.x = (u_xlat9.y + u_xlat9.x);
      u_xlat9.x = (u_xlat9.z * u_xlat9.x);
      u_xlat9.x = fract(u_xlat9.x);
      u_xlat67 = (-(u_xlat66) + u_xlat67);
      u_xlat66 = ((u_xlat8.x * u_xlat67) + u_xlat66);
      u_xlat67 = (-(u_xlat9.w) + u_xlat10.x);
      u_xlat67 = ((u_xlat8.x * u_xlat67) + u_xlat9.w);
      u_xlat67 = (-(u_xlat66) + u_xlat67);
      u_xlat66 = ((u_xlat8.z * u_xlat67) + u_xlat66);
      u_xlat67 = (-(u_xlat30.x) + u_xlat30.y);
      u_xlat67 = ((u_xlat8.x * u_xlat67) + u_xlat30.x);
      u_xlat9.x = (-(u_xlat30.z) + u_xlat9.x);
      u_xlat8.x = ((u_xlat8.x * u_xlat9.x) + u_xlat30.z);
      u_xlat8.x = (-(u_xlat67) + u_xlat8.x);
      u_xlat67 = ((u_xlat8.z * u_xlat8.x) + u_xlat67);
      u_xlat67 = (-(u_xlat66) + u_xlat67);
      u_xlat66 = ((u_xlat8.w * u_xlat67) + u_xlat66);
      let x_5629 = ((u_xlat7.yzx * vec3f(10.1499996185302734375f)) + x_5628);
      u_xlat8 = vec4f(x_5629.x, u_xlat8.y, x_5629.yz);
      u_xlat9 = vec4f(floor(u_xlat8.xzw).xyz, u_xlat9.w);
      let x_5639 = fract(u_xlat8.xzw);
      u_xlat8 = vec4f(x_5639.x, u_xlat8.y, x_5639.yz);
      u_xlat10 = vec4f(((u_xlat8.xzw * u_xlat8.xzw)).xyz, u_xlat10.w);
      let x_5653 = ((-(u_xlat8.xzw) * x_5176) + x_5178);
      u_xlat8 = vec4f(x_5653.x, u_xlat8.y, x_5653.yz);
      let x_5660 = (u_xlat8.xzw * u_xlat10.xyz);
      u_xlat8 = vec4f(x_5660.x, u_xlat8.y, x_5660.yz);
      u_xlat10 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat67 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat67) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat67 = (u_xlat10.y + u_xlat10.x);
      u_xlat67 = (u_xlat10.z * u_xlat67);
      u_xlat67 = fract(u_xlat67);
      u_xlat10 = vec4f(((u_xlat9.xyz + x_5232)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat69 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat69) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat69 = (u_xlat10.y + u_xlat10.x);
      u_xlat9.w = (u_xlat10.z * u_xlat69);
      u_xlat10 = vec4f(((u_xlat9.xyz + x_5276)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat70 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat70) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat10.x = (u_xlat10.y + u_xlat10.x);
      u_xlat10.x = (u_xlat10.z * u_xlat10.x);
      u_xlat30 = (u_xlat9.xyz + x_5319);
      u_xlat10 = vec4f(u_xlat10.x, ((u_xlat30 * x_5191)).xyz);
      u_xlat10 = fract(u_xlat10);
      u_xlat11 = vec4f(((u_xlat10.wzy + x_5203)).xyz, u_xlat11.w);
      u_xlat11.x = dot(u_xlat10.yzw, u_xlat11.xyz);
      u_xlat30 = (u_xlat10.yzw + u_xlat11.xxx);
      u_xlat30.x = (u_xlat30.y + u_xlat30.x);
      u_xlat30.x = (u_xlat30.z * u_xlat30.x);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5364)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat50.x = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((u_xlat50.xxx + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat50.x = (u_xlat11.y + u_xlat11.x);
      u_xlat30.y = (u_xlat11.z * u_xlat50.x);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5402)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat70 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat70) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat70 = (u_xlat11.y + u_xlat11.x);
      u_xlat30.z = (u_xlat11.z * u_xlat70);
      u_xlat30 = fract(u_xlat30);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5448)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat71 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat71) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat11.x = (u_xlat11.y + u_xlat11.x);
      u_xlat11.x = (u_xlat11.z * u_xlat11.x);
      u_xlat11.x = fract(u_xlat11.x);
      u_xlat9 = vec4f(((u_xlat9.xyz + x_2822)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat9.w);
      u_xlat9 = fract(u_xlat9);
      u_xlat31 = (u_xlat9.zyx + x_5203);
      u_xlat31.x = dot(u_xlat9.xyz, u_xlat31);
      u_xlat9 = vec4f(((u_xlat9.xyz + u_xlat31.xxx)).xyz, u_xlat9.w);
      u_xlat9.x = (u_xlat9.y + u_xlat9.x);
      u_xlat9.x = (u_xlat9.z * u_xlat9.x);
      u_xlat9.x = fract(u_xlat9.x);
      u_xlat29.x = (-(u_xlat67) + u_xlat9.w);
      u_xlat67 = ((u_xlat8.x * u_xlat29.x) + u_xlat67);
      u_xlat29.x = (-(u_xlat10.x) + u_xlat30.x);
      u_xlat29.x = ((u_xlat8.x * u_xlat29.x) + u_xlat10.x);
      u_xlat29.x = (-(u_xlat67) + u_xlat29.x);
      u_xlat67 = ((u_xlat8.z * u_xlat29.x) + u_xlat67);
      u_xlat29.x = (-(u_xlat30.y) + u_xlat30.z);
      u_xlat29.x = ((u_xlat8.x * u_xlat29.x) + u_xlat30.y);
      u_xlat9.x = (-(u_xlat11.x) + u_xlat9.x);
      u_xlat8.x = ((u_xlat8.x * u_xlat9.x) + u_xlat11.x);
      u_xlat8.x = (-(u_xlat29.x) + u_xlat8.x);
      u_xlat8.x = ((u_xlat8.z * u_xlat8.x) + u_xlat29.x);
      u_xlat8.x = (-(u_xlat67) + u_xlat8.x);
      u_xlat67 = ((u_xlat8.w * u_xlat8.x) + u_xlat67);
      u_xlat67 = (u_xlat67 * 0.30000001192092895508f);
      u_xlat66 = ((u_xlat66 * 0.5f) + u_xlat67);
      let x_6122 = ((u_xlat7.yzx * vec3f(20.5500011444091796875f)) + x_6121);
      u_xlat8 = vec4f(x_6122.x, u_xlat8.y, x_6122.yz);
      u_xlat9 = vec4f(floor(u_xlat8.xzw).xyz, u_xlat9.w);
      let x_6132 = fract(u_xlat8.xzw);
      u_xlat8 = vec4f(x_6132.x, u_xlat8.y, x_6132.yz);
      u_xlat10 = vec4f(((u_xlat8.xzw * u_xlat8.xzw)).xyz, u_xlat10.w);
      let x_6146 = ((-(u_xlat8.xzw) * x_5176) + x_5178);
      u_xlat8 = vec4f(x_6146.x, u_xlat8.y, x_6146.yz);
      let x_6153 = (u_xlat8.xzw * u_xlat10.xyz);
      u_xlat8 = vec4f(x_6153.x, u_xlat8.y, x_6153.yz);
      u_xlat10 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat67 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat67) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat67 = (u_xlat10.y + u_xlat10.x);
      u_xlat67 = (u_xlat10.z * u_xlat67);
      u_xlat67 = fract(u_xlat67);
      u_xlat10 = vec4f(((u_xlat9.xyz + x_5232)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat69 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat69) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat69 = (u_xlat10.y + u_xlat10.x);
      u_xlat9.w = (u_xlat10.z * u_xlat69);
      u_xlat10 = vec4f(((u_xlat9.xyz + x_5276)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat70 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat70) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat10.x = (u_xlat10.y + u_xlat10.x);
      u_xlat10.x = (u_xlat10.z * u_xlat10.x);
      u_xlat30 = (u_xlat9.xyz + x_5319);
      u_xlat10 = vec4f(u_xlat10.x, ((u_xlat30 * x_5191)).xyz);
      u_xlat10 = fract(u_xlat10);
      u_xlat11 = vec4f(((u_xlat10.wzy + x_5203)).xyz, u_xlat11.w);
      u_xlat11.x = dot(u_xlat10.yzw, u_xlat11.xyz);
      u_xlat30 = (u_xlat10.yzw + u_xlat11.xxx);
      u_xlat30.x = (u_xlat30.y + u_xlat30.x);
      u_xlat30.x = (u_xlat30.z * u_xlat30.x);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5364)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat50.x = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((u_xlat50.xxx + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat50.x = (u_xlat11.y + u_xlat11.x);
      u_xlat30.y = (u_xlat11.z * u_xlat50.x);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5402)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat70 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat70) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat70 = (u_xlat11.y + u_xlat11.x);
      u_xlat30.z = (u_xlat11.z * u_xlat70);
      u_xlat30 = fract(u_xlat30);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5448)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat71 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat71) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat11.x = (u_xlat11.y + u_xlat11.x);
      u_xlat11.x = (u_xlat11.z * u_xlat11.x);
      u_xlat11.x = fract(u_xlat11.x);
      u_xlat9 = vec4f(((u_xlat9.xyz + x_2822)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat9.w);
      u_xlat9 = fract(u_xlat9);
      u_xlat31 = (u_xlat9.zyx + x_5203);
      u_xlat31.x = dot(u_xlat9.xyz, u_xlat31);
      u_xlat9 = vec4f(((u_xlat9.xyz + u_xlat31.xxx)).xyz, u_xlat9.w);
      u_xlat9.x = (u_xlat9.y + u_xlat9.x);
      u_xlat9.x = (u_xlat9.z * u_xlat9.x);
      u_xlat9.x = fract(u_xlat9.x);
      u_xlat29.x = (-(u_xlat67) + u_xlat9.w);
      u_xlat67 = ((u_xlat8.x * u_xlat29.x) + u_xlat67);
      u_xlat29.x = (-(u_xlat10.x) + u_xlat30.x);
      u_xlat29.x = ((u_xlat8.x * u_xlat29.x) + u_xlat10.x);
      u_xlat29.x = (-(u_xlat67) + u_xlat29.x);
      u_xlat67 = ((u_xlat8.z * u_xlat29.x) + u_xlat67);
      u_xlat29.x = (-(u_xlat30.y) + u_xlat30.z);
      u_xlat29.x = ((u_xlat8.x * u_xlat29.x) + u_xlat30.y);
      u_xlat9.x = (-(u_xlat11.x) + u_xlat9.x);
      u_xlat8.x = ((u_xlat8.x * u_xlat9.x) + u_xlat11.x);
      u_xlat8.x = (-(u_xlat29.x) + u_xlat8.x);
      u_xlat8.x = ((u_xlat8.z * u_xlat8.x) + u_xlat29.x);
      u_xlat8.x = (-(u_xlat67) + u_xlat8.x);
      u_xlat67 = ((u_xlat8.w * u_xlat8.x) + u_xlat67);
      u_xlat66 = ((u_xlat67 * 0.20000000298023223877f) + u_xlat66);
      let x_6612 = ((u_xlat7.yzx * vec3f(11.0f)) + vec3f(3.09999990463256835938f));
      u_xlat8 = vec4f(x_6612.x, u_xlat8.y, x_6612.yz);
      u_xlat9 = vec4f(floor(u_xlat8.xzw).xyz, u_xlat9.w);
      u_xlat10 = vec4f(fract(u_xlat8.xzw).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.xyz * u_xlat10.xyz)).xyz, u_xlat11.w);
      u_xlat10 = vec4f((((-(u_xlat10.xyz) * x_5176) + x_5178)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * u_xlat11.xyz)).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat67 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat67) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat67 = (u_xlat11.y + u_xlat11.x);
      u_xlat67 = (u_xlat11.z * u_xlat67);
      u_xlat67 = fract(u_xlat67);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5232)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat69 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat69) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat69 = (u_xlat11.y + u_xlat11.x);
      u_xlat9.w = (u_xlat11.z * u_xlat69);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5276)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat70 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat70) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat70 = (u_xlat11.y + u_xlat11.x);
      u_xlat70 = (u_xlat11.z * u_xlat70);
      u_xlat70 = fract(u_xlat70);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5319)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat71 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat71) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat11.x = (u_xlat11.y + u_xlat11.x);
      u_xlat11.x = (u_xlat11.z * u_xlat11.x);
      u_xlat31 = (u_xlat9.xyz + x_5364);
      u_xlat11 = vec4f(u_xlat11.x, ((u_xlat31 * x_5191)).xyz);
      u_xlat11 = fract(u_xlat11);
      u_xlat12 = vec4f(((u_xlat11.wzy + x_5203)).xyz, u_xlat12.w);
      u_xlat12.x = dot(u_xlat11.yzw, u_xlat12.xyz);
      u_xlat31 = (u_xlat11.yzw + u_xlat12.xxx);
      u_xlat31.x = (u_xlat31.y + u_xlat31.x);
      u_xlat31.x = (u_xlat31.z * u_xlat31.x);
      u_xlat12 = vec4f(((u_xlat9.xyz + x_5402)).xyz, u_xlat12.w);
      u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
      u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
      u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
      u_xlat51 = dot(u_xlat12.xyz, u_xlat13.xyz);
      u_xlat12 = vec4f(((vec3f(u_xlat51) + u_xlat12.xyz)).xyz, u_xlat12.w);
      u_xlat51 = (u_xlat12.y + u_xlat12.x);
      u_xlat31.y = (u_xlat12.z * u_xlat51);
      u_xlat12 = vec4f(((u_xlat9.xyz + x_5448)).xyz, u_xlat12.w);
      u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
      u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
      u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
      u_xlat71 = dot(u_xlat12.xyz, u_xlat13.xyz);
      u_xlat12 = vec4f(((vec3f(u_xlat71) + u_xlat12.xyz)).xyz, u_xlat12.w);
      u_xlat71 = (u_xlat12.y + u_xlat12.x);
      u_xlat31.z = (u_xlat12.z * u_xlat71);
      u_xlat31 = fract(u_xlat31);
      u_xlat9 = vec4f(((u_xlat9.xyz + x_2822)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat9.w);
      u_xlat9 = fract(u_xlat9);
      u_xlat12 = vec4f(((u_xlat9.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat12.x = dot(u_xlat9.xyz, u_xlat12.xyz);
      u_xlat9 = vec4f(((u_xlat9.xyz + u_xlat12.xxx)).xyz, u_xlat9.w);
      u_xlat9.x = (u_xlat9.y + u_xlat9.x);
      u_xlat9.x = (u_xlat9.z * u_xlat9.x);
      u_xlat9.x = fract(u_xlat9.x);
      u_xlat29.x = (-(u_xlat67) + u_xlat9.w);
      u_xlat67 = ((u_xlat10.x * u_xlat29.x) + u_xlat67);
      u_xlat29.x = (-(u_xlat70) + u_xlat11.x);
      u_xlat29.x = ((u_xlat10.x * u_xlat29.x) + u_xlat70);
      u_xlat29.x = (-(u_xlat67) + u_xlat29.x);
      u_xlat67 = ((u_xlat10.y * u_xlat29.x) + u_xlat67);
      u_xlat29.x = (-(u_xlat31.x) + u_xlat31.y);
      u_xlat29.x = ((u_xlat10.x * u_xlat29.x) + u_xlat31.x);
      u_xlat9.x = (-(u_xlat31.z) + u_xlat9.x);
      u_xlat9.x = ((u_xlat10.x * u_xlat9.x) + u_xlat31.z);
      u_xlat9.x = (-(u_xlat29.x) + u_xlat9.x);
      u_xlat9.x = ((u_xlat10.y * u_xlat9.x) + u_xlat29.x);
      u_xlat9.x = (-(u_xlat67) + u_xlat9.x);
      u_xlat67 = ((u_xlat10.z * u_xlat9.x) + u_xlat67);
      u_xlat9 = vec4f((((u_xlat8.xzw * vec3f(2.02999997138977050781f)) + x_5628)).xyz, u_xlat9.w);
      u_xlat10 = vec4f(floor(u_xlat9.xyz).xyz, u_xlat10.w);
      u_xlat9 = vec4f(fract(u_xlat9.xyz).xyz, u_xlat9.w);
      u_xlat11 = vec4f(((u_xlat9.xyz * u_xlat9.xyz)).xyz, u_xlat11.w);
      u_xlat9 = vec4f((((-(u_xlat9.xyz) * x_5176) + x_5178)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(((u_xlat9.xyz * u_xlat11.xyz)).xyz, u_xlat9.w);
      u_xlat11 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat69 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat69) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat69 = (u_xlat11.y + u_xlat11.x);
      u_xlat69 = (u_xlat11.z * u_xlat69);
      u_xlat69 = fract(u_xlat69);
      u_xlat11 = vec4f(((u_xlat10.xyz + x_5232)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat70 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat70) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat70 = (u_xlat11.y + u_xlat11.x);
      u_xlat10.w = (u_xlat11.z * u_xlat70);
      u_xlat11 = vec4f(((u_xlat10.xyz + x_5276)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat71 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat71) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat11.x = (u_xlat11.y + u_xlat11.x);
      u_xlat11.x = (u_xlat11.z * u_xlat11.x);
      u_xlat31 = (u_xlat10.xyz + x_5319);
      u_xlat11 = vec4f(u_xlat11.x, ((u_xlat31 * x_5191)).xyz);
      u_xlat11 = fract(u_xlat11);
      u_xlat12 = vec4f(((u_xlat11.wzy + x_5203)).xyz, u_xlat12.w);
      u_xlat12.x = dot(u_xlat11.yzw, u_xlat12.xyz);
      u_xlat31 = (u_xlat11.yzw + u_xlat12.xxx);
      u_xlat31.x = (u_xlat31.y + u_xlat31.x);
      u_xlat31.x = (u_xlat31.z * u_xlat31.x);
      u_xlat12 = vec4f(((u_xlat10.xyz + x_5364)).xyz, u_xlat12.w);
      u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
      u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
      u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
      u_xlat51 = dot(u_xlat12.xyz, u_xlat13.xyz);
      u_xlat12 = vec4f(((vec3f(u_xlat51) + u_xlat12.xyz)).xyz, u_xlat12.w);
      u_xlat51 = (u_xlat12.y + u_xlat12.x);
      u_xlat31.y = (u_xlat12.z * u_xlat51);
      u_xlat12 = vec4f(((u_xlat10.xyz + x_5402)).xyz, u_xlat12.w);
      u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
      u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
      u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
      u_xlat71 = dot(u_xlat12.xyz, u_xlat13.xyz);
      u_xlat12 = vec4f(((vec3f(u_xlat71) + u_xlat12.xyz)).xyz, u_xlat12.w);
      u_xlat71 = (u_xlat12.y + u_xlat12.x);
      u_xlat31.z = (u_xlat12.z * u_xlat71);
      u_xlat31 = fract(u_xlat31);
      u_xlat12 = vec4f(((u_xlat10.xyz + x_5448)).xyz, u_xlat12.w);
      u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
      u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
      u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
      u_xlat72 = dot(u_xlat12.xyz, u_xlat13.xyz);
      u_xlat12 = vec4f(((vec3f(u_xlat72) + u_xlat12.xyz)).xyz, u_xlat12.w);
      u_xlat12.x = (u_xlat12.y + u_xlat12.x);
      u_xlat12.x = (u_xlat12.z * u_xlat12.x);
      u_xlat12.x = fract(u_xlat12.x);
      u_xlat10 = vec4f(((u_xlat10.xyz + x_2822)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = fract(u_xlat10);
      u_xlat32 = (u_xlat10.zyx + x_5203);
      u_xlat32.x = dot(u_xlat10.xyz, u_xlat32);
      u_xlat10 = vec4f(((u_xlat10.xyz + u_xlat32.xxx)).xyz, u_xlat10.w);
      u_xlat10.x = (u_xlat10.y + u_xlat10.x);
      u_xlat10.x = (u_xlat10.z * u_xlat10.x);
      u_xlat10.x = fract(u_xlat10.x);
      u_xlat30.x = (-(u_xlat69) + u_xlat10.w);
      u_xlat69 = ((u_xlat9.x * u_xlat30.x) + u_xlat69);
      u_xlat30.x = (-(u_xlat11.x) + u_xlat31.x);
      u_xlat30.x = ((u_xlat9.x * u_xlat30.x) + u_xlat11.x);
      u_xlat30.x = (-(u_xlat69) + u_xlat30.x);
      u_xlat69 = ((u_xlat9.y * u_xlat30.x) + u_xlat69);
      u_xlat30.x = (-(u_xlat31.y) + u_xlat31.z);
      u_xlat30.x = ((u_xlat9.x * u_xlat30.x) + u_xlat31.y);
      u_xlat10.x = (-(u_xlat12.x) + u_xlat10.x);
      u_xlat9.x = ((u_xlat9.x * u_xlat10.x) + u_xlat12.x);
      u_xlat9.x = (-(u_xlat30.x) + u_xlat9.x);
      u_xlat9.x = ((u_xlat9.y * u_xlat9.x) + u_xlat30.x);
      u_xlat9.x = (-(u_xlat69) + u_xlat9.x);
      u_xlat9.x = ((u_xlat9.z * u_xlat9.x) + u_xlat69);
      u_xlat9.x = (u_xlat9.x * 0.30000001192092895508f);
      u_xlat67 = ((u_xlat67 * 0.5f) + u_xlat9.x);
      let x_7579 = ((u_xlat8.xzw * vec3f(4.11000013351440429688f)) + x_6121);
      u_xlat8 = vec4f(x_7579.x, u_xlat8.y, x_7579.yz);
      u_xlat9 = vec4f(floor(u_xlat8.xzw).xyz, u_xlat9.w);
      let x_7589 = fract(u_xlat8.xzw);
      u_xlat8 = vec4f(x_7589.x, u_xlat8.y, x_7589.yz);
      u_xlat10 = vec4f(((u_xlat8.xzw * u_xlat8.xzw)).xyz, u_xlat10.w);
      let x_7603 = ((-(u_xlat8.xzw) * x_5176) + x_5178);
      u_xlat8 = vec4f(x_7603.x, u_xlat8.y, x_7603.yz);
      let x_7610 = (u_xlat8.xzw * u_xlat10.xyz);
      u_xlat8 = vec4f(x_7610.x, u_xlat8.y, x_7610.yz);
      u_xlat10 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat69 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat69) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat69 = (u_xlat10.y + u_xlat10.x);
      u_xlat9.w = (u_xlat10.z * u_xlat69);
      u_xlat10 = vec4f(((u_xlat9.xyz + x_5232)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
      u_xlat11 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat70 = dot(u_xlat10.xyz, u_xlat11.xyz);
      u_xlat10 = vec4f(((vec3f(u_xlat70) + u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat10.x = (u_xlat10.y + u_xlat10.x);
      u_xlat10.x = (u_xlat10.z * u_xlat10.x);
      u_xlat30 = (u_xlat9.xyz + x_5276);
      u_xlat10 = vec4f(u_xlat10.x, ((u_xlat30 * x_5191)).xyz);
      u_xlat10 = fract(u_xlat10);
      u_xlat11 = vec4f(((u_xlat10.wzy + x_5203)).xyz, u_xlat11.w);
      u_xlat11.x = dot(u_xlat10.yzw, u_xlat11.xyz);
      u_xlat30 = (u_xlat10.yzw + u_xlat11.xxx);
      u_xlat30.x = (u_xlat30.y + u_xlat30.x);
      u_xlat30.x = (u_xlat30.z * u_xlat30.x);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5319)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat50.x = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((u_xlat50.xxx + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat50.x = (u_xlat11.y + u_xlat11.x);
      u_xlat30.y = (u_xlat11.z * u_xlat50.x);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5364)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat70 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat70) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat70 = (u_xlat11.y + u_xlat11.x);
      u_xlat30.z = (u_xlat11.z * u_xlat70);
      u_xlat30 = fract(u_xlat30);
      u_xlat11 = vec4f(((u_xlat9.xyz + x_5402)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat71 = dot(u_xlat11.xyz, u_xlat12.xyz);
      u_xlat11 = vec4f(((vec3f(u_xlat71) + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat11.x = (u_xlat11.y + u_xlat11.x);
      u_xlat11.x = (u_xlat11.z * u_xlat11.x);
      u_xlat31 = (u_xlat9.xyz + x_5448);
      u_xlat11 = vec4f(u_xlat11.x, ((u_xlat31 * x_5191)).xyz);
      u_xlat11 = fract(u_xlat11);
      u_xlat12 = vec4f(((u_xlat11.wzy + x_5203)).xyz, u_xlat12.w);
      u_xlat12.x = dot(u_xlat11.yzw, u_xlat12.xyz);
      u_xlat31 = (u_xlat11.yzw + u_xlat12.xxx);
      u_xlat31.x = (u_xlat31.y + u_xlat31.x);
      u_xlat31.x = (u_xlat31.z * u_xlat31.x);
      u_xlat31.x = fract(u_xlat31.x);
      u_xlat9 = vec4f(((u_xlat9.xyz + x_2822)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat9.w);
      u_xlat9 = fract(u_xlat9);
      u_xlat12 = vec4f(((u_xlat9.zyx + x_5203)).xyz, u_xlat12.w);
      u_xlat51 = dot(u_xlat9.xyz, u_xlat12.xyz);
      u_xlat9 = vec4f(((u_xlat9.xyz + vec3f(u_xlat51))).xyz, u_xlat9.w);
      u_xlat9.x = (u_xlat9.y + u_xlat9.x);
      u_xlat9.x = (u_xlat9.z * u_xlat9.x);
      u_xlat9.x = fract(u_xlat9.x);
      u_xlat29.x = (-(u_xlat9.w) + u_xlat10.x);
      u_xlat29.x = ((u_xlat8.x * u_xlat29.x) + u_xlat9.w);
      u_xlat49.x = (-(u_xlat30.x) + u_xlat30.y);
      u_xlat49.x = ((u_xlat8.x * u_xlat49.x) + u_xlat30.x);
      u_xlat49.x = (-(u_xlat29.x) + u_xlat49.x);
      u_xlat29.x = ((u_xlat8.z * u_xlat49.x) + u_xlat29.x);
      u_xlat49.x = (-(u_xlat30.z) + u_xlat11.x);
      u_xlat49.x = ((u_xlat8.x * u_xlat49.x) + u_xlat30.z);
      u_xlat9.x = (-(u_xlat31.x) + u_xlat9.x);
      u_xlat8.x = ((u_xlat8.x * u_xlat9.x) + u_xlat31.x);
      u_xlat8.x = (-(u_xlat49.x) + u_xlat8.x);
      u_xlat8.x = ((u_xlat8.z * u_xlat8.x) + u_xlat49.x);
      u_xlat8.x = (-(u_xlat29.x) + u_xlat8.x);
      u_xlat8.x = ((u_xlat8.w * u_xlat8.x) + u_xlat29.x);
      u_xlat67 = ((u_xlat8.x * 0.20000000298023223877f) + u_xlat67);
      u_xlat67 = (u_xlat67 + -0.41999998688697814941f);
      u_xlat67 = (u_xlat67 * 3.57142853736877441406f);
      u_xlat67 = clamp(u_xlat67, 0.0f, 1.0f);
      u_xlat8.x = ((u_xlat67 * -2.0f) + 3.0f);
      u_xlat67 = (u_xlat67 * u_xlat67);
      u_xlat67 = (u_xlat67 * u_xlat8.x);
      u_xlat25.x = (u_xlat25.x * 0.25f);
      u_xlat23.x = (u_xlat23.x / u_xlat25.x);
      u_xlat23.x = (u_xlat23.x * 1.44269502162933349609f);
      u_xlat23.x = exp2(u_xlat23.x);
      u_xlat23.x = (u_xlat23.x * u_xlat67);
      u_xlat25.x = ((u_xlat66 * 1.10000002384185791016f) + 0.25f);
      u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
      u_xlat25.x = (u_xlat25.x * u_xlat65);
      u_xlat23.x = ((-(u_xlat23.x) * 0.60000002384185791016f) + 1.0f);
      u_xlat23.x = (u_xlat23.x * u_xlat25.x);
      let x_8142 = (u_xlat23.xxx * x_628.x_MilkyWay.xyz);
      u_xlat8 = vec4f(x_8142.x, u_xlat8.y, x_8142.yz);
      let x_8150 = (u_xlat8.xzw * x_35.x_B612SkyNight.yyy);
      u_xlat8 = vec4f(x_8150.x, u_xlat8.y, x_8150.yz);
      let x_8157 = (vec3f(u_xlat42) * u_xlat8.xzw);
      u_xlat8 = vec4f(x_8157.x, u_xlat8.y, x_8157.yz);
    } else {
      u_xlat8.x = 0.0f;
      u_xlat8.z = 0.0f;
      u_xlat8.w = 0.0f;
      u_xlat23.x = 0.0f;
    }
    if (u_xlatb8.y) {
      u_xlatb9 = vec4<bool>(((abs(u_xlat7.yyzy) >= abs(u_xlat7.zxxz))).xyz.xyz, u_xlatb9.w);
      u_xlatb25 = (u_xlatb9.y & u_xlatb9.x);
      u_xlat10 = vec4f(((u_xlat7.zx / abs(u_xlat7.yy))).xy, u_xlat10.zw);
      let x_8198 = ((vec4f() < u_xlat7.yzyx)).xyw;
      u_xlatb9 = vec4<bool>(x_8198.xy, u_xlatb9.z, x_8198.z);
      u_xlat10 = vec4f(u_xlat10.xy, select(x_843, vec2f(), vec2<bool>(u_xlatb9.x)).xy);
      u_xlat11 = vec4f(((u_xlat7.yx / abs(u_xlat7.zz))).xy, u_xlat11.zw);
      u_xlat11 = vec4f(u_xlat11.xy, select(x_735, x_733, vec2<bool>(u_xlatb9.y)).xy);
      u_xlat12 = vec4f(((u_xlat7.yz / abs(u_xlat7.xx))).xy, u_xlat12.zw);
      u_xlat12 = vec4f(u_xlat12.xy, select(vec2f(5.0f), vec2f(4.0f), vec2<bool>(u_xlatb9.w)).xy);
      u_xlat9 = select(u_xlat12, u_xlat11, vec4<bool>(u_xlatb9.z));
      u_xlat9 = select(u_xlat9, u_xlat10, vec4<bool>(u_xlatb25));
      u_xlat10.w = (u_xlat9.w * 131.0f);
      u_xlat11 = ((u_xlat9 * vec4f(0.5f, 0.5f, 131.0f, 131.0f)) + vec4f(0.5f, 0.5f, 110.0f, 260.0f));
      u_xlat12 = (u_xlat11.xyxy * vec4f(110.0f, 110.0f, 260.0f, 260.0f));
      u_xlat12 = floor(u_xlat12);
      u_xlat10 = vec4f(u_xlat12.xy.xy, u_xlat10.zw);
      u_xlat10.z = u_xlat11.z;
      u_xlat9 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(fract(u_xlat9.xyz).xyz, u_xlat9.w);
      u_xlat11 = vec4f(((u_xlat9.zyx + x_5203)).xyz, u_xlat11.w);
      u_xlat25.x = dot(u_xlat9.xyz, u_xlat11.xyz);
      u_xlat9 = vec4f(((u_xlat25.xxx + u_xlat9.xyz)).xyz, u_xlat9.w);
      u_xlat25.x = (u_xlat9.y + u_xlat9.x);
      u_xlat25.x = (u_xlat9.z * u_xlat25.x);
      u_xlat25.x = fract(u_xlat25.x);
      u_xlatb25 = (x_628.x_StarDensity.x >= u_xlat25.x);
      if (u_xlatb25) {
        u_xlat9 = vec4f(((u_xlat10.xyw + vec3f(17.3099994659423828125f, 17.3099994659423828125f, 127.30999755859375f))).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat9.xyz * x_5191)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(fract(u_xlat9.xyz).xyz, u_xlat9.w);
        u_xlat11 = vec4f(((u_xlat9.zyx + x_5203)).xyz, u_xlat11.w);
        u_xlat25.x = dot(u_xlat9.xyz, u_xlat11.xyz);
        u_xlat9 = vec4f(((u_xlat25.xxx + u_xlat9.xyz)).xyz, u_xlat9.w);
        u_xlat25.x = (u_xlat9.y + u_xlat9.x);
        u_xlat25.x = (u_xlat9.z * u_xlat25.x);
        u_xlat9.x = fract(u_xlat25.x);
        u_xlat11 = vec4f(((u_xlat10.xyw + vec3f(41.700000762939453125f, 41.700000762939453125f, 151.6999969482421875f))).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
        u_xlat13 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat25.x = dot(u_xlat11.xyz, u_xlat13.xyz);
        u_xlat11 = vec4f(((u_xlat25.xxx + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat25.x = (u_xlat11.y + u_xlat11.x);
        u_xlat25.x = (u_xlat11.z * u_xlat25.x);
        u_xlat9.y = fract(u_xlat25.x);
        u_xlat11 = vec4f(((u_xlat10.xyw + vec3f(73.09999847412109375f, 73.09999847412109375f, 183.100006103515625f))).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
        u_xlat13 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat25.x = dot(u_xlat11.xyz, u_xlat13.xyz);
        u_xlat11 = vec4f(((u_xlat25.xxx + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat25.x = (u_xlat11.y + u_xlat11.x);
        u_xlat25.x = (u_xlat11.z * u_xlat25.x);
        u_xlat11 = vec4f(((u_xlat10.xyw + vec3f(5.30000019073486328125f, 5.30000019073486328125f, 115.3000030517578125f))).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
        u_xlat13 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat65 = dot(u_xlat11.xyz, u_xlat13.xyz);
        u_xlat11 = vec4f(((vec3f(u_xlat65) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat65 = (u_xlat11.y + u_xlat11.x);
        u_xlat25.z = (u_xlat11.z * u_xlat65);
        let x_8527 = fract(u_xlat25.xz);
        u_xlat25 = vec3f(x_8527.x, u_xlat25.y, x_8527.y);
        u_xlat11 = vec4f(((u_xlat10.xy + x_8532)).xy, u_xlat11.zw);
        u_xlat66 = (u_xlat9.y * 40.0f);
        u_xlat29 = ((u_xlat9.xy * x_8542) + u_xlat11.xy);
        u_xlat11 = vec4f((((u_xlat29 * vec2f(0.01818181760609149933f)) + x_8551)).xy, u_xlat11.zw);
        u_xlatb13 = ((u_xlat9.wwww == vec4f(0.0f, 2.0f, 4.0f, 0.0f))).xyz;
        u_xlatb67 = (u_xlatb13.y | u_xlatb13.x);
        u_xlatb67 = (u_xlatb13.z | u_xlatb67);
        u_xlat11.z = select(-1.0f, 1.0f, u_xlatb67);
        u_xlatb29 = ((u_xlat9.wwww < x_8576)).xy;
        if (u_xlatb29.y) {
          x_8581 = u_xlat11.zyx;
        } else {
          x_8581 = u_xlat11.yzx;
        }
        u_xlat13 = vec4f(x_8581.xyz, u_xlat13.w);
        if (u_xlatb29.x) {
          x_8594 = u_xlat11.xyz;
        } else {
          x_8594 = u_xlat13.xyz;
        }
        u_xlat11 = vec4f(x_8594.xyz, u_xlat11.w);
        u_xlat67 = dot(u_xlat11.xyz, u_xlat11.xyz);
        u_xlat67 = inverseSqrt(u_xlat67);
        u_xlat11 = vec4f(((vec3f(u_xlat67) * u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat13 = vec4f(((u_xlat7.xyz * u_xlat11.xyz)).xyz, u_xlat13.w);
        u_xlat11 = vec4f((((u_xlat7.zxy * u_xlat11.yzx) + -(u_xlat13.xyz))).xyz, u_xlat11.w);
        u_xlat67 = dot(u_xlat11.xyz, u_xlat11.xyz);
        u_xlat28.x = (x_628.x_StarSize * 0.01745329238474369049f);
        u_xlat13 = ((u_xlat25.zzzz * x_8652) + x_8657);
        u_xlat65 = (u_xlat28.x * u_xlat13.x);
        u_xlat28.x = (u_xlat45.x * 0.64999997615814208984f);
        u_xlat28.x = max(u_xlat65, u_xlat28.x);
        u_xlat29.x = log2(u_xlat25.x);
        u_xlat29.x = (u_xlat29.x * 7.0f);
        u_xlat29.x = exp2(u_xlat29.x);
        u_xlat29.x = ((u_xlat29.x * 0.96499997377395629883f) + 0.03500000014901161194f);
        u_xlat9.x = ((u_xlat9.x * 2.70000004768371582031f) + 1.29999995231628417969f);
        u_xlat66 = ((x_35.x_Time.y * u_xlat9.x) + u_xlat66);
        u_xlat66 = sin(u_xlat66);
        u_xlat66 = (u_xlat66 * x_628.x_StarTwinkle);
        u_xlat25.x = ((u_xlat25.x * 1.60000002384185791016f) + -0.40000000596046447754f);
        u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
        u_xlat25.x = ((u_xlat66 * u_xlat25.x) + 1.0f);
        u_xlat25.x = (u_xlat25.x * u_xlat29.x);
        u_xlat9 = vec4f((((u_xlat13.yzw * x_8739) + x_2822)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat25.xxx * u_xlat9.xyz)).xyz, u_xlat9.w);
        u_xlat25.x = (u_xlat67 * -0.5f);
        u_xlat66 = (u_xlat28.x * u_xlat28.x);
        u_xlat25.x = (u_xlat25.x / u_xlat66);
        u_xlat25.x = (u_xlat25.x * 1.44269502162933349609f);
        u_xlat25.x = exp2(u_xlat25.x);
        u_xlat9 = vec4f(((u_xlat25.xxx * u_xlat9.xyz)).xyz, u_xlat9.w);
        u_xlat25.x = (u_xlat65 * u_xlat65);
        u_xlat9 = vec4f(((u_xlat25.xxx * u_xlat9.xyz)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat9.xyz / vec3f(u_xlat66))).xyz, u_xlat9.w);
      } else {
        u_xlat9.x = 0.0f;
        u_xlat9.y = 0.0f;
        u_xlat9.z = 0.0f;
      }
      u_xlat23.x = ((x_628.x_StarDensity.z * u_xlat23.x) + 1.0f);
      u_xlat23.x = (u_xlat23.x * x_628.x_StarDensity.y);
      u_xlat10 = vec4f(u_xlat12.zw.xy, u_xlat10.zw);
      u_xlat10.z = u_xlat11.w;
      u_xlat11 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat11.w);
      u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
      u_xlat13 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat13.w);
      u_xlat25.x = dot(u_xlat11.xyz, u_xlat13.xyz);
      u_xlat11 = vec4f(((u_xlat25.xxx + u_xlat11.xyz)).xyz, u_xlat11.w);
      u_xlat25.x = (u_xlat11.y + u_xlat11.x);
      u_xlat25.x = (u_xlat11.z * u_xlat25.x);
      u_xlat25.x = fract(u_xlat25.x);
      u_xlatb23 = (u_xlat23.x >= u_xlat25.x);
      if (u_xlatb23) {
        u_xlat11 = vec4f(((u_xlat10.xyw + vec3f(17.3099994659423828125f, 17.3099994659423828125f, 277.30999755859375f))).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
        u_xlat13 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat23.x = dot(u_xlat11.xyz, u_xlat13.xyz);
        u_xlat11 = vec4f(((u_xlat23.xxx + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat23.x = (u_xlat11.y + u_xlat11.x);
        u_xlat23.x = (u_xlat11.z * u_xlat23.x);
        u_xlat11.x = fract(u_xlat23.x);
        u_xlat13 = vec4f(((u_xlat10.xyw + vec3f(41.700000762939453125f, 41.700000762939453125f, 301.70001220703125f))).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz * x_5191)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(fract(u_xlat13.xyz).xyz, u_xlat13.w);
        u_xlat14 = (u_xlat13.zyx + x_5203);
        u_xlat23.x = dot(u_xlat13.xyz, u_xlat14);
        u_xlat13 = vec4f(((u_xlat23.xxx + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat23.x = (u_xlat13.y + u_xlat13.x);
        u_xlat23.x = (u_xlat13.z * u_xlat23.x);
        u_xlat11.y = fract(u_xlat23.x);
        u_xlat13 = vec4f(((u_xlat10.xyw + vec3f(73.09999847412109375f, 73.09999847412109375f, 333.100006103515625f))).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz * x_5191)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(fract(u_xlat13.xyz).xyz, u_xlat13.w);
        u_xlat14 = (u_xlat13.zyx + x_5203);
        u_xlat23.x = dot(u_xlat13.xyz, u_xlat14);
        u_xlat13 = vec4f(((u_xlat23.xxx + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat23.x = (u_xlat13.y + u_xlat13.x);
        u_xlat23.x = (u_xlat13.z * u_xlat23.x);
        u_xlat23.x = fract(u_xlat23.x);
        u_xlat10 = vec4f(((u_xlat10.xyw + vec3f(5.30000019073486328125f, 5.30000019073486328125f, 265.29998779296875f))).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz * x_5191)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(fract(u_xlat10.xyz).xyz, u_xlat10.w);
        u_xlat13 = vec4f(((u_xlat10.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat25.x = dot(u_xlat10.xyz, u_xlat13.xyz);
        u_xlat10 = vec4f(((u_xlat25.xxx + u_xlat10.xyz)).xyz, u_xlat10.w);
        u_xlat25.x = (u_xlat10.y + u_xlat10.x);
        u_xlat25.x = (u_xlat10.z * u_xlat25.x);
        u_xlat25.x = fract(u_xlat25.x);
        u_xlat10 = vec4f(((u_xlat12.zw + x_8532)).xy, u_xlat10.zw);
        u_xlat65 = (u_xlat11.y * 40.0f);
        u_xlat10 = vec4f((((u_xlat11.xy * x_8542) + u_xlat10.xy)).xy, u_xlat10.zw);
        u_xlat10 = vec4f((((u_xlat10.xy * vec2f(0.00769230769947171211f)) + x_8551)).xy, u_xlat10.zw);
        u_xlatb31 = ((u_xlat9.wwww == vec4f(0.0f, 2.0f, 4.0f, 4.0f))).xyz;
        u_xlatb66 = (u_xlatb31.y | u_xlatb31.x);
        u_xlatb66 = (u_xlatb31.z | u_xlatb66);
        u_xlat10.z = select(-1.0f, 1.0f, u_xlatb66);
        u_xlatb31 = vec3<bool>(((u_xlat9.wwww < x_8576)).xy.xy, u_xlatb31.z);
        if (u_xlatb31.y) {
          x_9120 = u_xlat10.zyx;
        } else {
          x_9120 = u_xlat10.yzx;
        }
        u_xlat12 = vec4f(x_9120.xyz, u_xlat12.w);
        if (u_xlatb31.x) {
          x_9133 = u_xlat10.xyz;
        } else {
          x_9133 = u_xlat12.xyz;
        }
        u_xlat10 = vec4f(x_9133.xyz, u_xlat10.w);
        u_xlat66 = dot(u_xlat10.xyz, u_xlat10.xyz);
        u_xlat66 = inverseSqrt(u_xlat66);
        u_xlat10 = vec4f(((vec3f(u_xlat66) * u_xlat10.xyz)).xyz, u_xlat10.w);
        u_xlat31 = (u_xlat7.xyz * u_xlat10.xyz);
        u_xlat7 = vec4f((((u_xlat7.zxy * u_xlat10.yzx) + -(u_xlat31))).xyz, u_xlat7.w);
        u_xlat66 = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat7.x = (x_628.x_StarSize * 0.01745329238474369049f);
        u_xlat10 = ((u_xlat25.xxxx * x_8652) + x_8657);
        u_xlat25.x = (u_xlat7.x * u_xlat10.x);
        u_xlat7.x = (u_xlat45.x * 0.64999997615814208984f);
        u_xlat7.x = max(u_xlat25.x, u_xlat7.x);
        u_xlat27.x = log2(u_xlat23.x);
        u_xlat27.x = (u_xlat27.x * 7.0f);
        u_xlat27.x = exp2(u_xlat27.x);
        u_xlat27.x = ((u_xlat27.x * 0.96499997377395629883f) + 0.03500000014901161194f);
        u_xlat27.x = (u_xlat27.x * 0.11999999731779098511f);
        u_xlat47.x = ((u_xlat11.x * 2.70000004768371582031f) + 1.29999995231628417969f);
        u_xlat65 = ((x_35.x_Time.y * u_xlat47.x) + u_xlat65);
        u_xlat65 = sin(u_xlat65);
        u_xlat65 = (u_xlat65 * x_628.x_StarTwinkle);
        u_xlat23.x = ((u_xlat23.x * 1.60000002384185791016f) + -0.40000000596046447754f);
        u_xlat23.x = clamp(u_xlat23.x, 0.0f, 1.0f);
        u_xlat23.x = ((u_xlat65 * u_xlat23.x) + 1.0f);
        u_xlat23.x = (u_xlat23.x * u_xlat27.x);
        u_xlat27 = ((u_xlat10.yzw * x_8739) + x_2822);
        u_xlat27 = (u_xlat23.xxx * u_xlat27);
        u_xlat23.x = (u_xlat66 * -0.5f);
        u_xlat65 = (u_xlat7.x * u_xlat7.x);
        u_xlat23.x = (u_xlat23.x / u_xlat65);
        u_xlat23.x = (u_xlat23.x * 1.44269502162933349609f);
        u_xlat23.x = exp2(u_xlat23.x);
        u_xlat7 = vec4f(((u_xlat23.xxx * u_xlat27)).xyz, u_xlat7.w);
        u_xlat23.x = (u_xlat25.x * u_xlat25.x);
        u_xlat7 = vec4f(((u_xlat23.xxx * u_xlat7.xyz)).xyz, u_xlat7.w);
        u_xlat7 = vec4f(((u_xlat7.xyz / vec3f(u_xlat65))).xyz, u_xlat7.w);
      } else {
        u_xlat7.x = 0.0f;
        u_xlat7.y = 0.0f;
        u_xlat7.z = 0.0f;
      }
      u_xlat7 = vec4f(((u_xlat7.xyz + u_xlat9.xyz)).xyz, u_xlat7.w);
      u_xlat23.x = (x_35.x_B612SkyNight.x * x_628.x_StarBrightness);
      u_xlat42 = (u_xlat42 * u_xlat23.x);
      u_xlat7 = vec4f(((vec3f(u_xlat42) * u_xlat7.xyz)).xyz, u_xlat7.w);
    } else {
      u_xlat7.x = 0.0f;
      u_xlat7.y = 0.0f;
      u_xlat7.z = 0.0f;
    }
    u_xlatb42 = (0.00009999999747378752f < x_35.x_B612MoonDirection.w);
    if (u_xlatb42) {
      u_xlat42 = dot(x_35.x_B612MoonDirection.xyz, x_35.x_B612MoonDirection.xyz);
      u_xlat42 = inverseSqrt(u_xlat42);
      u_xlat9 = vec4f(((vec3f(u_xlat42) * x_35.x_B612MoonDirection.zxy)).xyz, u_xlat9.w);
      u_xlat42 = dot(u_xlat20.zxy, u_xlat9.xyz);
      u_xlat23.x = max(x_628.x_MoonColor.w, 0.10000000149011611938f);
      u_xlat25.x = max(u_xlat42, -1.0f);
      u_xlat25.x = min(u_xlat25.x, 1.0f);
      u_xlat65 = (-(abs(u_xlat25.x)) + 1.0f);
      u_xlat65 = sqrt(u_xlat65);
      u_xlat66 = ((abs(u_xlat25.x) * -0.01872929930686950684f) + 0.07426100224256515503f);
      u_xlat66 = ((u_xlat66 * abs(u_xlat25.x)) + -0.21211439371109008789f);
      u_xlat66 = ((u_xlat66 * abs(u_xlat25.x)) + 1.57072877883911132812f);
      u_xlat67 = (u_xlat65 * u_xlat66);
      u_xlat67 = ((u_xlat67 * -2.0f) + 3.14159274101257324219f);
      u_xlatb25 = (u_xlat25.x < -(u_xlat25.x));
      u_xlat25.x = select(0.0f, u_xlat67, u_xlatb25);
      u_xlat25.x = ((u_xlat66 * u_xlat65) + u_xlat25.x);
      u_xlat65 = (u_xlat45.x * 57.295780181884765625f);
      u_xlat65 = max(u_xlat65, 0.00100000004749745131f);
      u_xlat66 = (u_xlat23.x + -(u_xlat65));
      u_xlat65 = (u_xlat23.x + u_xlat65);
      u_xlat65 = (-(u_xlat66) + u_xlat65);
      u_xlat25.x = ((u_xlat25.x * 57.295780181884765625f) + -(u_xlat66));
      u_xlat65 = (1.0f / u_xlat65);
      u_xlat25.x = (u_xlat65 * u_xlat25.x);
      u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
      u_xlat65 = ((u_xlat25.x * -2.0f) + 3.0f);
      u_xlat25.x = (u_xlat25.x * u_xlat25.x);
      u_xlat25.x = ((-(u_xlat65) * u_xlat25.x) + 1.0f);
      u_xlat65 = max(u_xlat9.z, -1.0f);
      u_xlat65 = min(u_xlat65, 1.0f);
      u_xlat66 = (-(abs(u_xlat65)) + 1.0f);
      u_xlat66 = sqrt(u_xlat66);
      u_xlat67 = ((abs(u_xlat65) * -0.01872929930686950684f) + 0.07426100224256515503f);
      u_xlat67 = ((u_xlat67 * abs(u_xlat65)) + -0.21211439371109008789f);
      u_xlat67 = ((u_xlat67 * abs(u_xlat65)) + 1.57072877883911132812f);
      u_xlat28.x = (u_xlat66 * u_xlat67);
      u_xlat28.x = ((u_xlat28.x * -2.0f) + 3.14159274101257324219f);
      u_xlatb65 = (u_xlat65 < -(u_xlat65));
      if (u_xlatb65) {
        x_9531 = u_xlat28.x;
      } else {
        x_9531 = 0.0f;
      }
      u_xlat65 = x_9531;
      u_xlat65 = ((u_xlat67 * u_xlat66) + u_xlat65);
      u_xlat65 = (-(u_xlat65) + 1.57079637050628662109f);
      u_xlat65 = (u_xlat65 * 4.7746486663818359375f);
      u_xlat65 = clamp(u_xlat65, 0.0f, 1.0f);
      u_xlat10 = vec4f((((vec3f(u_xlat65) * vec3f(0.0f, 0.37999999523162841797f, 0.62000000476837158203f)) + vec3f(1.0f, 0.62000000476837158203f, 0.37999999523162841797f))).xyz, u_xlat10.w);
      u_xlatb65 = (0.0f < u_xlat25.x);
      if (u_xlatb65) {
        u_xlat11 = vec4f(((u_xlat9.xyz * x_5276)).xyz, u_xlat11.w);
        u_xlat11 = vec4f((((u_xlat9.yzx * x_5364) + -(u_xlat11.xyz))).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_84)).xyz, u_xlat11.w);
        u_xlat65 = dot(u_xlat11.yz, u_xlat11.yz);
        u_xlat65 = inverseSqrt(u_xlat65);
        u_xlat11 = vec4f(((vec3f(u_xlat65) * u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat9.xyz * u_xlat11.xyz)).xyz, u_xlat12.w);
        u_xlat9 = vec4f((((u_xlat9.zxy * u_xlat11.yzx) + -(u_xlat12.xyz))).xyz, u_xlat9.w);
        u_xlat11.x = dot(u_xlat20.zx, u_xlat11.yz);
        u_xlat11.y = dot(u_xlat20, u_xlat9.xyz);
        u_xlat23.x = (u_xlat23.x * 0.01745329238474369049f);
        u_xlat9.x = sin(u_xlat23.x);
        u_xlat12.x = cos(u_xlat23.x);
        u_xlat23.x = (u_xlat9.x / u_xlat12.x);
        u_xlat9 = vec4f(((u_xlat11.xy / u_xlat23.xx)).xy, u_xlat9.zw);
        u_xlat23.x = dot(u_xlat9.xy, u_xlat9.xy);
        u_xlat23.x = (-(u_xlat23.x) + 1.0f);
        u_xlat23.x = max(u_xlat23.x, 0.0f);
        u_xlat23.x = sqrt(u_xlat23.x);
        u_xlat49 = (u_xlat9.xy * vec2f(2.29999995231628417969f));
        u_xlat11 = vec4f(floor(u_xlat49).xy, u_xlat11.zw);
        u_xlat11.z = 1.0f;
        u_xlat49 = fract(u_xlat49);
        u_xlat12 = vec4f(((u_xlat49 * u_xlat49)).xy, u_xlat12.zw);
        u_xlat49 = ((-(u_xlat49) * x_733) + x_735);
        u_xlat49 = (u_xlat49 * u_xlat12.xy);
        u_xlat12 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat65 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat65) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat65 = (u_xlat12.y + u_xlat12.x);
        u_xlat65 = (u_xlat12.z * u_xlat65);
        u_xlat65 = fract(u_xlat65);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5232)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat66 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat66) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat66 = (u_xlat12.y + u_xlat12.x);
        u_xlat66 = (u_xlat12.z * u_xlat66);
        u_xlat66 = fract(u_xlat66);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5276)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat67 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat67) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat67 = (u_xlat12.y + u_xlat12.x);
        u_xlat67 = (u_xlat12.z * u_xlat67);
        u_xlat67 = fract(u_xlat67);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5319)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat28.x = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((u_xlat28.xxx + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat28.x = (u_xlat12.y + u_xlat12.x);
        u_xlat28.x = (u_xlat12.z * u_xlat28.x);
        u_xlat28.x = fract(u_xlat28.x);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5364)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat70 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat70) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat70 = (u_xlat12.y + u_xlat12.x);
        u_xlat70 = (u_xlat12.z * u_xlat70);
        u_xlat70 = fract(u_xlat70);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5402)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat71 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat71) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat71 = (u_xlat12.y + u_xlat12.x);
        u_xlat11.w = (u_xlat12.z * u_xlat71);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5448)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat72 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat72) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat12.x = (u_xlat12.y + u_xlat12.x);
        u_xlat12.x = (u_xlat12.z * u_xlat12.x);
        u_xlat12.x = fract(u_xlat12.x);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_2822)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = fract(u_xlat11);
        u_xlat32 = (u_xlat11.zyx + x_5203);
        u_xlat32.x = dot(u_xlat11.xyz, u_xlat32);
        u_xlat11 = vec4f(((u_xlat11.xyz + u_xlat32.xxx)).xyz, u_xlat11.w);
        u_xlat11.x = (u_xlat11.y + u_xlat11.x);
        u_xlat11.x = (u_xlat11.z * u_xlat11.x);
        u_xlat11.x = fract(u_xlat11.x);
        u_xlat66 = (-(u_xlat65) + u_xlat66);
        u_xlat65 = ((u_xlat49.x * u_xlat66) + u_xlat65);
        u_xlat66 = (-(u_xlat67) + u_xlat28.x);
        u_xlat66 = ((u_xlat49.x * u_xlat66) + u_xlat67);
        u_xlat66 = (-(u_xlat65) + u_xlat66);
        u_xlat65 = ((u_xlat49.y * u_xlat66) + u_xlat65);
        u_xlat66 = (-(u_xlat70) + u_xlat11.w);
        u_xlat66 = ((u_xlat49.x * u_xlat66) + u_xlat70);
        u_xlat67 = (-(u_xlat12.x) + u_xlat11.x);
        u_xlat67 = ((u_xlat49.x * u_xlat67) + u_xlat12.x);
        u_xlat67 = (-(u_xlat66) + u_xlat67);
        u_xlat66 = ((u_xlat49.y * u_xlat67) + u_xlat66);
        u_xlat66 = (-(u_xlat65) + u_xlat66);
        u_xlat65 = ((u_xlat66 * 0.78400003910064697266f) + u_xlat65);
        u_xlat11 = vec4f(((u_xlat9.xy * vec2f(4.66899967193603515625f))).xy, u_xlat11.zw);
        u_xlat11.z = 3.45099997520446777344f;
        u_xlat11 = vec4f(((u_xlat11.xyz + x_5628)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(floor(u_xlat11.xyz).xyz, u_xlat12.w);
        u_xlat49 = fract(u_xlat11.xy);
        u_xlat11 = vec4f(((u_xlat49 * u_xlat49)).xy, u_xlat11.zw);
        u_xlat49 = ((-(u_xlat49) * x_733) + x_735);
        u_xlat49 = (u_xlat49 * u_xlat11.xy);
        u_xlat11 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
        u_xlat13 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat66 = dot(u_xlat11.xyz, u_xlat13.xyz);
        u_xlat11 = vec4f(((vec3f(u_xlat66) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat66 = (u_xlat11.y + u_xlat11.x);
        u_xlat66 = (u_xlat11.z * u_xlat66);
        u_xlat66 = fract(u_xlat66);
        u_xlat11 = vec4f(((u_xlat12.xyz + x_5232)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
        u_xlat13 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat67 = dot(u_xlat11.xyz, u_xlat13.xyz);
        u_xlat11 = vec4f(((vec3f(u_xlat67) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat67 = (u_xlat11.y + u_xlat11.x);
        u_xlat67 = (u_xlat11.z * u_xlat67);
        u_xlat67 = fract(u_xlat67);
        u_xlat11 = vec4f(((u_xlat12.xyz + x_5276)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
        u_xlat13 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat28.x = dot(u_xlat11.xyz, u_xlat13.xyz);
        u_xlat11 = vec4f(((u_xlat28.xxx + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat28.x = (u_xlat11.y + u_xlat11.x);
        u_xlat28.x = (u_xlat11.z * u_xlat28.x);
        u_xlat28.x = fract(u_xlat28.x);
        u_xlat11 = vec4f(((u_xlat12.xyz + x_5319)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
        u_xlat13 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat70 = dot(u_xlat11.xyz, u_xlat13.xyz);
        u_xlat11 = vec4f(((vec3f(u_xlat70) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat70 = (u_xlat11.y + u_xlat11.x);
        u_xlat70 = (u_xlat11.z * u_xlat70);
        u_xlat70 = fract(u_xlat70);
        u_xlat11 = vec4f(((u_xlat12.xyz + x_5364)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(fract(u_xlat11.xyz).xyz, u_xlat11.w);
        u_xlat13 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat71 = dot(u_xlat11.xyz, u_xlat13.xyz);
        u_xlat11 = vec4f(((vec3f(u_xlat71) + u_xlat11.xyz)).xyz, u_xlat11.w);
        u_xlat11.x = (u_xlat11.y + u_xlat11.x);
        u_xlat11.x = (u_xlat11.z * u_xlat11.x);
        u_xlat31 = (u_xlat12.xyz + x_5402);
        u_xlat11 = vec4f(u_xlat11.x, ((u_xlat31 * x_5191)).xyz);
        u_xlat11 = fract(u_xlat11);
        u_xlat13 = vec4f(((u_xlat11.wzy + x_5203)).xyz, u_xlat13.w);
        u_xlat72 = dot(u_xlat11.yzw, u_xlat13.xyz);
        u_xlat31 = (u_xlat11.yzw + vec3f(u_xlat72));
        u_xlat31.x = (u_xlat31.y + u_xlat31.x);
        u_xlat31.x = (u_xlat31.z * u_xlat31.x);
        u_xlat13 = vec4f(((u_xlat12.xyz + x_5448)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz * x_5191)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(fract(u_xlat13.xyz).xyz, u_xlat13.w);
        u_xlat14 = (u_xlat13.zyx + x_5203);
        u_xlat51 = dot(u_xlat13.xyz, u_xlat14);
        u_xlat13 = vec4f(((vec3f(u_xlat51) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat51 = (u_xlat13.y + u_xlat13.x);
        u_xlat31.y = (u_xlat13.z * u_xlat51);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_2822)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat71 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat71) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat71 = (u_xlat12.y + u_xlat12.x);
        u_xlat31.z = (u_xlat12.z * u_xlat71);
        u_xlat31 = fract(u_xlat31);
        u_xlat67 = (-(u_xlat66) + u_xlat67);
        u_xlat66 = ((u_xlat49.x * u_xlat67) + u_xlat66);
        u_xlat67 = (-(u_xlat28.x) + u_xlat70);
        u_xlat67 = ((u_xlat49.x * u_xlat67) + u_xlat28.x);
        u_xlat67 = (-(u_xlat66) + u_xlat67);
        u_xlat66 = ((u_xlat49.y * u_xlat67) + u_xlat66);
        u_xlat67 = (-(u_xlat11.x) + u_xlat31.x);
        u_xlat67 = ((u_xlat49.x * u_xlat67) + u_xlat11.x);
        u_xlat28.x = (-(u_xlat31.y) + u_xlat31.z);
        u_xlat28.x = ((u_xlat49.x * u_xlat28.x) + u_xlat31.y);
        u_xlat28.x = (-(u_xlat67) + u_xlat28.x);
        u_xlat67 = ((u_xlat49.y * u_xlat28.x) + u_xlat67);
        u_xlat67 = (-(u_xlat66) + u_xlat67);
        u_xlat66 = ((u_xlat67 * 0.5762341618537902832f) + u_xlat66);
        u_xlat66 = (u_xlat66 * 0.30000001192092895508f);
        u_xlat65 = ((u_xlat65 * 0.5f) + u_xlat66);
        u_xlat9 = vec4f(((u_xlat9.xy * vec2f(9.45300006866455078125f))).xy, u_xlat9.zw);
        u_xlat9.z = 6.98700046539306640625f;
        u_xlat9 = vec4f(((u_xlat9.xyz + x_6121)).xyz, u_xlat9.w);
        u_xlat11 = vec4f(floor(u_xlat9.xyz).xyz, u_xlat11.w);
        u_xlat9 = vec4f(fract(u_xlat9.xy).xy, u_xlat9.zw);
        u_xlat49 = (u_xlat9.xy * u_xlat9.xy);
        u_xlat9 = vec4f((((-(u_xlat9.xy) * x_733) + x_735)).xy, u_xlat9.zw);
        u_xlat9 = vec4f(((u_xlat9.xy * u_xlat49)).xy, u_xlat9.zw);
        u_xlat12 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat66 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat66) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat66 = (u_xlat12.y + u_xlat12.x);
        u_xlat66 = (u_xlat12.z * u_xlat66);
        u_xlat66 = fract(u_xlat66);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5232)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat67 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat67) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat67 = (u_xlat12.y + u_xlat12.x);
        u_xlat67 = (u_xlat12.z * u_xlat67);
        u_xlat67 = fract(u_xlat67);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5276)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat28.x = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((u_xlat28.xxx + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat28.x = (u_xlat12.y + u_xlat12.x);
        u_xlat28.x = (u_xlat12.z * u_xlat28.x);
        u_xlat28.x = fract(u_xlat28.x);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5319)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat49.x = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((u_xlat49.xxx + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat49.x = (u_xlat12.y + u_xlat12.x);
        u_xlat49.x = (u_xlat12.z * u_xlat49.x);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5364)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat69 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat69) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat69 = (u_xlat12.y + u_xlat12.x);
        u_xlat49.y = (u_xlat12.z * u_xlat69);
        u_xlat49 = fract(u_xlat49);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5402)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat70 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat70) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat70 = (u_xlat12.y + u_xlat12.x);
        u_xlat70 = (u_xlat12.z * u_xlat70);
        u_xlat70 = fract(u_xlat70);
        u_xlat12 = vec4f(((u_xlat11.xyz + x_5448)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_5191)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(fract(u_xlat12.xyz).xyz, u_xlat12.w);
        u_xlat13 = vec4f(((u_xlat12.zyx + x_5203)).xyz, u_xlat13.w);
        u_xlat71 = dot(u_xlat12.xyz, u_xlat13.xyz);
        u_xlat12 = vec4f(((vec3f(u_xlat71) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat71 = (u_xlat12.y + u_xlat12.x);
        u_xlat11.w = (u_xlat12.z * u_xlat71);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_2822)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_5191)).xyz, u_xlat11.w);
        u_xlat11 = fract(u_xlat11);
        u_xlat12 = vec4f(((u_xlat11.zyx + x_5203)).xyz, u_xlat12.w);
        u_xlat12.x = dot(u_xlat11.xyz, u_xlat12.xyz);
        u_xlat11 = vec4f(((u_xlat11.xyz + u_xlat12.xxx)).xyz, u_xlat11.w);
        u_xlat11.x = (u_xlat11.y + u_xlat11.x);
        u_xlat11.x = (u_xlat11.z * u_xlat11.x);
        u_xlat11.x = fract(u_xlat11.x);
        u_xlat67 = (-(u_xlat66) + u_xlat67);
        u_xlat66 = ((u_xlat9.x * u_xlat67) + u_xlat66);
        u_xlat67 = (-(u_xlat28.x) + u_xlat49.x);
        u_xlat67 = ((u_xlat9.x * u_xlat67) + u_xlat28.x);
        u_xlat67 = (-(u_xlat66) + u_xlat67);
        u_xlat66 = ((u_xlat9.y * u_xlat67) + u_xlat66);
        u_xlat67 = (-(u_xlat49.y) + u_xlat70);
        u_xlat67 = ((u_xlat9.x * u_xlat67) + u_xlat49.y);
        u_xlat28.x = (-(u_xlat11.w) + u_xlat11.x);
        u_xlat28.x = ((u_xlat9.x * u_xlat28.x) + u_xlat11.w);
        u_xlat28.x = (-(u_xlat67) + u_xlat28.x);
        u_xlat67 = ((u_xlat9.y * u_xlat28.x) + u_xlat67);
        u_xlat67 = (-(u_xlat66) + u_xlat67);
        u_xlat66 = ((u_xlat67 * 0.76742190122604370117f) + u_xlat66);
        u_xlat65 = ((u_xlat66 * 0.20000000298023223877f) + u_xlat65);
        u_xlat65 = (u_xlat65 + -0.43999999761581420898f);
        u_xlat65 = (u_xlat65 * 5.00000047683715820312f);
        u_xlat65 = clamp(u_xlat65, 0.0f, 1.0f);
        u_xlat66 = ((u_xlat65 * -2.0f) + 3.0f);
        u_xlat65 = (u_xlat65 * u_xlat65);
        u_xlat65 = (u_xlat65 * u_xlat66);
        u_xlat65 = ((u_xlat65 * -0.44999998807907104492f) + 1.0f);
        u_xlat23.x = ((u_xlat23.x * 0.21999999880790710449f) + 0.77999997138977050781f);
        u_xlat23.x = (u_xlat23.x * u_xlat65);
        u_xlat9 = vec4f(((u_xlat23.xxx * x_628.x_MoonColor.xyz)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat10.xyz * u_xlat9.xyz)).xyz, u_xlat9.w);
        u_xlat9 = vec4f((((u_xlat9.xyz * x_35.x_B612MoonDirection.www) + -(u_xlat8.xzw))).xyz, u_xlat9.w);
        let x_11124 = ((u_xlat25.xxx * u_xlat9.xyz) + u_xlat8.xzw);
        u_xlat8 = vec4f(x_11124.x, u_xlat8.y, x_11124.yz);
        u_xlat23.x = (-(u_xlat25.x) + 1.0f);
        u_xlat7 = vec4f(((u_xlat23.xxx * u_xlat7.xyz)).xyz, u_xlat7.w);
      }
      u_xlat42 = u_xlat42;
      u_xlat42 = clamp(u_xlat42, 0.0f, 1.0f);
      let x_11146 = max(x_628.x_MoonHalo.yw, x_843);
      u_xlat25 = vec3f(x_11146.x, u_xlat25.y, x_11146.y);
      u_xlat42 = log2(u_xlat42);
      let x_11155 = (vec2f(u_xlat42) * u_xlat25.xz);
      u_xlat25 = vec3f(x_11155.x, u_xlat25.y, x_11155.y);
      let x_11160 = exp2(u_xlat25.xz);
      u_xlat25 = vec3f(x_11160.x, u_xlat25.y, x_11160.y);
      let x_11168 = (u_xlat25.xz * x_628.x_MoonHalo.xz);
      u_xlat25 = vec3f(x_11168.x, u_xlat25.y, x_11168.y);
      u_xlat23.x = (u_xlat25.z + u_xlat25.x);
      u_xlat9 = vec4f(((u_xlat10.xyz * x_628.x_MoonHaloColor.xyz)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(((u_xlat23.xxx * u_xlat9.xyz)).xyz, u_xlat9.w);
      u_xlat9 = vec4f(((u_xlat9.xyz * x_35.x_B612MoonDirection.www)).xyz, u_xlat9.w);
      u_xlat10 = vec4f(((vec3f(u_xlat22) * x_628.x_MoonHaloColor.xyz)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_628.x_MoonHaloColor.www)).xyz, u_xlat10.w);
      u_xlat42 = (u_xlat42 * 10.0f);
      u_xlat42 = exp2(u_xlat42);
      u_xlat10 = vec4f(((vec3f(u_xlat42) * u_xlat10.xyz)).xyz, u_xlat10.w);
      u_xlat10 = vec4f(((u_xlat10.xyz * x_35.x_B612MoonDirection.www)).xyz, u_xlat10.w);
      u_xlat6 = vec4f((((u_xlat10.xyz * vec3f(0.25f)) + u_xlat6.xyz)).xyz, u_xlat6.w);
    } else {
      u_xlat9.x = 0.0f;
      u_xlat9.y = 0.0f;
      u_xlat9.z = 0.0f;
    }
    u_xlat7 = vec4f(((u_xlat7.xyz + u_xlat8.xzw)).xyz, u_xlat7.w);
  } else {
    u_xlat7.x = 0.0f;
    u_xlat7.y = 0.0f;
    u_xlat7.z = 0.0f;
    u_xlat9.x = 0.0f;
    u_xlat9.y = 0.0f;
    u_xlat9.z = 0.0f;
  }
  u_xlat7 = vec4f(((u_xlat4 + u_xlat7.xyz)).xyz, u_xlat7.w);
  u_xlat42 = (-(u_xlat22) + 1.0f);
  u_xlat6 = vec4f((((u_xlat7.xyz * vec3f(u_xlat42)) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlatb23 = (0.0f < x_628.x_Cirrus.x);
  u_xlatb25 = (0.00872664619237184525f < u_xlat2.x);
  u_xlatb23 = (u_xlatb23 & u_xlatb25);
  if (u_xlatb23) {
    u_xlat23.x = max(u_xlat20.y, 0.02999999932944774628f);
    let x_11306 = (u_xlat20.xz / u_xlat23.xx);
    u_xlat25 = vec3f(x_11306.x, u_xlat25.y, x_11306.y);
    u_xlat23.x = (x_628.x_Cirrus.y * 1000.0f);
    let x_11318 = (u_xlat23.xx * u_xlat25.xz);
    u_xlat25 = vec3f(x_11318.x, u_xlat25.y, x_11318.y);
    u_xlat7 = vec4f(((x_35.x_B612WindDirection.xz + vec2f(0.00009999999747378752f, 0.0f))).xy, u_xlat7.zw);
    u_xlat23.x = dot(u_xlat7.xy, u_xlat7.xy);
    u_xlat23.x = inverseSqrt(u_xlat23.x);
    u_xlat7 = vec4f(((u_xlat23.xx * u_xlat7.xy)).xy, u_xlat7.zw);
    u_xlat23.x = dot(u_xlat25.xz, u_xlat7.xy);
    u_xlat66 = max(x_628.x_Cirrus.z, 1.0f);
    u_xlat8.x = (u_xlat23.x / u_xlat66);
    u_xlat7.z = -(u_xlat7.y);
    u_xlat8.y = dot(u_xlat25.zx, u_xlat7.xz);
    u_xlat23.x = (x_35.x_Time.y * x_628.x_Cirrus.w);
    u_xlat7 = ((u_xlat23.xxxx * vec4f(1.0f, 0.25f, 1.0f, 0.25f)) + u_xlat8.xyxy);
    let x_11384 = (u_xlat7.zw * x_735);
    u_xlat25 = vec3f(x_11384.x, u_xlat25.y, x_11384.y);
    u_xlat8 = vec4f(floor(u_xlat25.xz).xy, u_xlat8.zw);
    let x_11394 = fract(u_xlat25.xz);
    u_xlat25 = vec3f(x_11394.x, u_xlat25.y, x_11394.y);
    u_xlat48 = (u_xlat25.xz * u_xlat25.xz);
    let x_11406 = ((-(u_xlat25.xz) * x_733) + x_735);
    u_xlat25 = vec3f(x_11406.x, u_xlat25.y, x_11406.y);
    let x_11412 = (u_xlat25.xz * u_xlat48);
    u_xlat25 = vec3f(x_11412.x, u_xlat25.y, x_11412.y);
    u_xlat48 = (u_xlat8.xy * x_743);
    u_xlat48 = fract(u_xlat48);
    u_xlat10 = vec4f(((u_xlat48.yxx + x_751)).xyz, u_xlat10.w);
    u_xlat23.x = dot(u_xlat48.xyx, u_xlat10.xyz);
    u_xlat48 = (u_xlat23.xx + u_xlat48);
    u_xlat23.x = (u_xlat48.y + u_xlat48.x);
    u_xlat23.x = (u_xlat48.x * u_xlat23.x);
    u_xlat23.x = fract(u_xlat23.x);
    u_xlat10 = (u_xlat8.yxyx + x_778);
    u_xlat10 = (u_xlat10 * x_781);
    u_xlat10 = fract(u_xlat10);
    u_xlat11 = (u_xlat10 + x_787);
    u_xlat66 = dot(u_xlat10.yxy, u_xlat11.xyy);
    u_xlat48 = (vec2f(u_xlat66) + u_xlat10.yx);
    u_xlat66 = (u_xlat48.y + u_xlat48.x);
    u_xlat66 = (u_xlat48.x * u_xlat66);
    u_xlat66 = fract(u_xlat66);
    u_xlat48.x = dot(u_xlat10.wzw, u_xlat11.zww);
    u_xlat48 = (u_xlat48.xx + u_xlat10.wz);
    u_xlat68 = (u_xlat48.y + u_xlat48.x);
    u_xlat8.z = (u_xlat48.x * u_xlat68);
    u_xlat8 = vec4f(((u_xlat8.xy + x_843)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy * x_743)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(fract(u_xlat8.xyz).xyz, u_xlat8.w);
    u_xlat10 = vec4f(((u_xlat8.yxx + x_751)).xyz, u_xlat10.w);
    u_xlat68 = dot(u_xlat8.xyx, u_xlat10.xyz);
    u_xlat8 = vec4f(((vec2f(u_xlat68) + u_xlat8.xy)).xy, u_xlat8.zw);
    u_xlat28.x = (u_xlat8.y + u_xlat8.x);
    u_xlat8.x = (u_xlat8.x * u_xlat28.x);
    u_xlat8.x = fract(u_xlat8.x);
    u_xlat66 = (-(u_xlat23.x) + u_xlat66);
    u_xlat23.x = ((u_xlat25.x * u_xlat66) + u_xlat23.x);
    u_xlat66 = (-(u_xlat8.z) + u_xlat8.x);
    u_xlat25.x = ((u_xlat25.x * u_xlat66) + u_xlat8.z);
    u_xlat25.x = (-(u_xlat23.x) + u_xlat25.x);
    u_xlat23.x = ((u_xlat25.z * u_xlat25.x) + u_xlat23.x);
    let x_11600 = ((u_xlat7.zw * vec2f(6.09999990463256835938f)) + vec2f(3.70000004768371582031f));
    u_xlat25 = vec3f(x_11600.x, u_xlat25.y, x_11600.y);
    u_xlat8 = vec4f(floor(u_xlat25.xz).xy, u_xlat8.zw);
    let x_11610 = fract(u_xlat25.xz);
    u_xlat25 = vec3f(x_11610.x, u_xlat25.y, x_11610.y);
    u_xlat48 = (u_xlat25.xz * u_xlat25.xz);
    let x_11622 = ((-(u_xlat25.xz) * x_733) + x_735);
    u_xlat25 = vec3f(x_11622.x, u_xlat25.y, x_11622.y);
    let x_11628 = (u_xlat25.xz * u_xlat48);
    u_xlat25 = vec3f(x_11628.x, u_xlat25.y, x_11628.y);
    u_xlat48 = (u_xlat8.xy * x_743);
    u_xlat48 = fract(u_xlat48);
    u_xlat10 = vec4f(((u_xlat48.yxx + x_751)).xyz, u_xlat10.w);
    u_xlat66 = dot(u_xlat48.xyx, u_xlat10.xyz);
    u_xlat48 = (vec2f(u_xlat66) + u_xlat48);
    u_xlat66 = (u_xlat48.y + u_xlat48.x);
    u_xlat66 = (u_xlat48.x * u_xlat66);
    u_xlat66 = fract(u_xlat66);
    u_xlat10 = (u_xlat8.yxyx + x_778);
    u_xlat10 = (u_xlat10 * x_781);
    u_xlat10 = fract(u_xlat10);
    u_xlat11 = (u_xlat10 + x_787);
    u_xlat48.x = dot(u_xlat10.yxy, u_xlat11.xyy);
    u_xlat48 = (u_xlat48.xx + u_xlat10.yx);
    u_xlat68 = (u_xlat48.y + u_xlat48.x);
    u_xlat8.z = (u_xlat48.x * u_xlat68);
    u_xlat68 = dot(u_xlat10.wzw, u_xlat11.zww);
    u_xlat10 = vec4f(((vec2f(u_xlat68) + u_xlat10.wz)).xy, u_xlat10.zw);
    u_xlat68 = (u_xlat10.y + u_xlat10.x);
    u_xlat8.w = (u_xlat10.x * u_xlat68);
    u_xlat8 = vec4f(((u_xlat8.xy + x_843)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy * x_743)).xy, u_xlat8.zw);
    u_xlat8 = fract(u_xlat8);
    u_xlat10 = vec4f(((u_xlat8.yxx + x_751)).xyz, u_xlat10.w);
    u_xlat69 = dot(u_xlat8.xyx, u_xlat10.xyz);
    u_xlat8 = vec4f(((u_xlat8.xy + vec2f(u_xlat69))).xy, u_xlat8.zw);
    u_xlat28.x = (u_xlat8.y + u_xlat8.x);
    u_xlat8.x = (u_xlat8.x * u_xlat28.x);
    u_xlat8.x = fract(u_xlat8.x);
    u_xlat28.x = (-(u_xlat66) + u_xlat8.z);
    u_xlat66 = ((u_xlat25.x * u_xlat28.x) + u_xlat66);
    u_xlat8.x = (-(u_xlat8.w) + u_xlat8.x);
    u_xlat25.x = ((u_xlat25.x * u_xlat8.x) + u_xlat8.w);
    u_xlat25.x = (-(u_xlat66) + u_xlat25.x);
    u_xlat25.x = ((u_xlat25.z * u_xlat25.x) + u_xlat66);
    u_xlat25.x = (u_xlat25.x * 0.25f);
    u_xlat23.x = ((u_xlat23.x * 0.5f) + u_xlat25.x);
    u_xlat7 = ((u_xlat7 * vec4f(12.30000019073486328125f, 12.30000019073486328125f, 25.1000003814697265625f, 25.1000003814697265625f)) + vec4f(1.29999995231628417969f, 1.29999995231628417969f, 7.09999990463256835938f, 7.09999990463256835938f));
    u_xlat8 = floor(u_xlat7.yxwz);
    u_xlat7 = fract(u_xlat7);
    u_xlat10 = (u_xlat7 * u_xlat7);
    u_xlat7 = ((-(u_xlat7) * vec4f(2.0f)) + vec4f(3.0f));
    u_xlat7 = (u_xlat7 * u_xlat10);
    u_xlat10 = (u_xlat8 * x_781);
    u_xlat10 = fract(u_xlat10);
    u_xlat11 = (u_xlat10 + x_787);
    u_xlat25.x = dot(u_xlat10.yxy, u_xlat11.xyy);
    let x_11852 = (u_xlat25.xx + u_xlat10.yx);
    u_xlat25 = vec3f(x_11852.x, u_xlat25.y, x_11852.y);
    u_xlat65 = (u_xlat25.z + u_xlat25.x);
    u_xlat25.x = (u_xlat25.x * u_xlat65);
    u_xlat12 = (u_xlat8.xyxy + x_778);
    u_xlat12 = (u_xlat12 * x_781);
    u_xlat12 = fract(u_xlat12);
    u_xlat13 = (u_xlat12 + x_787);
    u_xlat65 = dot(u_xlat12.yxy, u_xlat13.xyy);
    u_xlat10 = vec4f(((vec2f(u_xlat65) + u_xlat12.yx)).xy, u_xlat10.zw);
    u_xlat65 = (u_xlat10.y + u_xlat10.x);
    u_xlat25.z = (u_xlat10.x * u_xlat65);
    let x_11898 = fract(u_xlat25.xz);
    u_xlat25 = vec3f(x_11898.x, u_xlat25.y, x_11898.y);
    u_xlat66 = dot(u_xlat12.wzw, u_xlat13.zww);
    u_xlat10 = vec4f(((vec2f(u_xlat66) + u_xlat12.wz)).xy, u_xlat10.zw);
    u_xlat66 = (u_xlat10.y + u_xlat10.x);
    u_xlat66 = (u_xlat10.x * u_xlat66);
    u_xlat66 = fract(u_xlat66);
    u_xlat12 = (u_xlat8 + vec4f(1.0f, 1.0f, 0.0f, 1.0f));
    u_xlat12 = (u_xlat12 * x_781);
    u_xlat12 = fract(u_xlat12);
    u_xlat13 = (u_xlat12 + x_787);
    u_xlat8.x = dot(u_xlat12.yxy, u_xlat13.xyy);
    u_xlat8 = vec4f(((u_xlat8.xx + u_xlat12.yx)).xy, u_xlat8.zw);
    u_xlat28.x = (u_xlat8.y + u_xlat8.x);
    u_xlat8.x = (u_xlat8.x * u_xlat28.x);
    u_xlat8.x = fract(u_xlat8.x);
    u_xlat65 = (-(u_xlat25.x) + u_xlat25.z);
    u_xlat25.x = ((u_xlat7.x * u_xlat65) + u_xlat25.x);
    u_xlat65 = (-(u_xlat66) + u_xlat8.x);
    u_xlat65 = ((u_xlat7.x * u_xlat65) + u_xlat66);
    u_xlat65 = (-(u_xlat25.x) + u_xlat65);
    u_xlat25.x = ((u_xlat7.y * u_xlat65) + u_xlat25.x);
    u_xlat23.x = ((u_xlat25.x * 0.125f) + u_xlat23.x);
    u_xlat25.x = dot(u_xlat10.wzw, u_xlat11.zww);
    let x_12018 = (u_xlat25.xx + u_xlat10.wz);
    u_xlat25 = vec3f(x_12018.x, u_xlat25.y, x_12018.y);
    u_xlat65 = (u_xlat25.z + u_xlat25.x);
    u_xlat25.x = (u_xlat25.x * u_xlat65);
    u_xlat65 = dot(u_xlat12.wzw, u_xlat13.zww);
    u_xlat7 = vec4f(((vec2f(u_xlat65) + u_xlat12.wz)).xy, u_xlat7.zw);
    u_xlat65 = (u_xlat7.y + u_xlat7.x);
    u_xlat25.z = (u_xlat7.x * u_xlat65);
    let x_12055 = fract(u_xlat25.xz);
    u_xlat25 = vec3f(x_12055.x, u_xlat25.y, x_12055.y);
    u_xlat8 = (u_xlat8.zwzw + vec4f(1.0f, 0.0f, 1.0f, 1.0f));
    u_xlat8 = (u_xlat8 * x_781);
    u_xlat8 = fract(u_xlat8);
    u_xlat10 = (u_xlat8 + x_787);
    u_xlat66 = dot(u_xlat8.yxy, u_xlat10.xyy);
    u_xlat7 = vec4f(((vec2f(u_xlat66) + u_xlat8.yx)).xy, u_xlat7.zw);
    u_xlat66 = (u_xlat7.y + u_xlat7.x);
    u_xlat66 = (u_xlat7.x * u_xlat66);
    u_xlat66 = fract(u_xlat66);
    u_xlat7.x = dot(u_xlat8.wzw, u_xlat10.zww);
    u_xlat7 = vec4f(((u_xlat7.xx + u_xlat8.wz)).xy, u_xlat7.zw);
    u_xlat27.x = (u_xlat7.y + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat27.x);
    u_xlat7.x = fract(u_xlat7.x);
    u_xlat65 = (-(u_xlat25.x) + u_xlat25.z);
    u_xlat25.x = ((u_xlat7.z * u_xlat65) + u_xlat25.x);
    u_xlat65 = (-(u_xlat66) + u_xlat7.x);
    u_xlat65 = ((u_xlat7.z * u_xlat65) + u_xlat66);
    u_xlat65 = (-(u_xlat25.x) + u_xlat65);
    u_xlat25.x = ((u_xlat7.w * u_xlat65) + u_xlat25.x);
    u_xlat23.x = ((u_xlat25.x * 0.0625f) + u_xlat23.x);
    u_xlat25.x = (-(x_628.x_CirrusShape.x) + x_628.x_CirrusShape.y);
    u_xlat23.x = ((u_xlat23.x * 1.06666672229766845703f) + -(x_628.x_CirrusShape.x));
    u_xlat25.x = (1.0f / u_xlat25.x);
    u_xlat23.x = (u_xlat23.x * u_xlat25.x);
    u_xlat23.x = clamp(u_xlat23.x, 0.0f, 1.0f);
    u_xlat25.x = ((u_xlat23.x * -2.0f) + 3.0f);
    u_xlat23.x = (u_xlat23.x * u_xlat23.x);
    u_xlat23.x = (u_xlat23.x * u_xlat25.x);
    u_xlat25.x = ((u_xlat2.x * 57.295780181884765625f) + -0.5f);
    u_xlat25.x = (u_xlat25.x * 0.0869565233588218689f);
    u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
    u_xlat65 = ((u_xlat25.x * -2.0f) + 3.0f);
    u_xlat25.x = (u_xlat25.x * u_xlat25.x);
    u_xlat25.x = (u_xlat25.x * u_xlat65);
    u_xlat23.x = (u_xlat23.x * u_xlat25.x);
    u_xlat23.x = (u_xlat23.x * x_628.x_Cirrus.x);
    u_xlat23.x = (u_xlat42 * u_xlat23.x);
    u_xlat23.x = clamp(u_xlat23.x, 0.0f, 1.0f);
    u_xlat25.x = max(x_35.x_B612SkyParams.w, 0.00100000004749745131f);
    u_xlat7 = vec4f(((x_35.x_MainLightColor.xyz / u_xlat25.xxx)).xyz, u_xlat7.w);
    u_xlat0.x = (u_xlat0.x * u_xlat0.x);
    u_xlat25.x = (u_xlat0.x * u_xlat0.x);
    u_xlat0.x = (u_xlat0.x * u_xlat25.x);
    u_xlat0.x = ((x_628.x_CirrusShape.z * u_xlat0.x) + 0.05999999865889549255f);
    u_xlat7 = vec4f(((u_xlat0.xxx * u_xlat7.xyz)).xyz, u_xlat7.w);
    u_xlat4 = ((u_xlat4 * x_628.x_CirrusShape.www) + u_xlat7.xyz);
    u_xlat4 = ((u_xlat4 * x_628.x_CirrusTint.xyz) + -(u_xlat6.xyz));
    u_xlat6 = vec4f((((u_xlat23.xxx * u_xlat4) + u_xlat6.xyz)).xyz, u_xlat6.w);
  }
  u_xlat4 = vec3f(((-(x_628.x_DayKnee.xy) + x_628.x_DuskKnee.xy)).xy, u_xlat4.z);
  u_xlat4 = vec3f((((vec2f(u_xlat64) * u_xlat4.xy) + x_628.x_DayKnee.xy)).xy, u_xlat4.z);
  u_xlatb0 = (0.00100000004749745131f < u_xlat4.y);
  u_xlat23.x = max(u_xlat6.y, u_xlat6.x);
  u_xlat23.x = max(u_xlat6.z, u_xlat23.x);
  u_xlat44 = (-(u_xlat4.x) + u_xlat23.x);
  u_xlat44 = max(u_xlat44, 0.0f);
  u_xlat24 = (u_xlat44 / u_xlat4.y);
  u_xlat24 = (u_xlat24 + 1.0f);
  u_xlat24 = (u_xlat44 / u_xlat24);
  u_xlat24 = (u_xlat24 + u_xlat4.x);
  u_xlat23.x = max(u_xlat4.x, u_xlat23.x);
  u_xlat23.x = (u_xlat24 / u_xlat23.x);
  u_xlat4 = (u_xlat23.xxx * u_xlat6.xyz);
  if (u_xlatb0) {
    x_12415 = u_xlat4;
  } else {
    x_12415 = u_xlat6.xyz;
  }
  u_xlat4 = x_12415;
  u_xlat0.x = max(u_xlat1.z, -1.0f);
  u_xlat0.x = min(u_xlat0.x, 1.0f);
  u_xlat23.x = (-(abs(u_xlat0.x)) + 1.0f);
  u_xlat23.x = sqrt(u_xlat23.x);
  u_xlat25.x = ((abs(u_xlat0.x) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat25.x = ((u_xlat25.x * abs(u_xlat0.x)) + -0.21211439371109008789f);
  u_xlat25.x = ((u_xlat25.x * abs(u_xlat0.x)) + 1.57072877883911132812f);
  u_xlat65 = (u_xlat23.x * u_xlat25.x);
  u_xlat65 = ((u_xlat65 * -2.0f) + 3.14159274101257324219f);
  u_xlatb0 = (u_xlat0.x < -(u_xlat0.x));
  u_xlat0.x = select(0.0f, u_xlat65, u_xlatb0);
  u_xlat0.x = ((u_xlat25.x * u_xlat23.x) + u_xlat0.x);
  u_xlat0.x = (-(u_xlat0.x) + 1.57079637050628662109f);
  let x_12498 = (u_xlat0.xx * vec2f(4.7746486663818359375f, 57.295780181884765625f));
  u_xlat25 = vec3f(x_12498.x, u_xlat25.y, x_12498.y);
  u_xlat23.x = max(u_xlat25.z, 0.0f);
  u_xlat23.x = (u_xlat23.x * -0.96179670095443725586f);
  u_xlat23.x = exp2(u_xlat23.x);
  u_xlat23.x = ((-(x_628.x_SunFlatten) * u_xlat23.x) + 1.0f);
  u_xlat6.x = min(abs(u_xlat20.z), abs(u_xlat20.x));
  u_xlat26.x = max(abs(u_xlat20.z), abs(u_xlat20.x));
  u_xlat26.x = (1.0f / u_xlat26.x);
  u_xlat6.x = (u_xlat26.x * u_xlat6.x);
  u_xlat26.x = (u_xlat6.x * u_xlat6.x);
  u_xlat46.x = ((u_xlat26.x * 0.02083509974181652069f) + -0.08513300120830535889f);
  u_xlat46.x = ((u_xlat26.x * u_xlat46.x) + 0.18014100193977355957f);
  u_xlat46.x = ((u_xlat26.x * u_xlat46.x) + -0.33029949665069580078f);
  u_xlat26.x = ((u_xlat26.x * u_xlat46.x) + 0.99986600875854492188f);
  u_xlat46.x = (u_xlat26.x * u_xlat6.x);
  u_xlatb66 = (abs(u_xlat20.z) < abs(u_xlat20.x));
  u_xlat46.x = ((u_xlat46.x * -2.0f) + 1.57079637050628662109f);
  if (u_xlatb66) {
    x_12600 = u_xlat46.x;
  } else {
    x_12600 = 0.0f;
  }
  u_xlat46.x = x_12600;
  u_xlat6.x = ((u_xlat6.x * u_xlat26.x) + u_xlat46.x);
  u_xlatb26 = (u_xlat20.z < -(u_xlat20.z));
  u_xlat26.x = select(0.0f, -3.14159274101257324219f, u_xlatb26);
  u_xlat6.x = (u_xlat26.x + u_xlat6.x);
  u_xlat26.x = min(u_xlat20.z, u_xlat20.x);
  u_xlat46.x = max(u_xlat20.z, u_xlat20.x);
  u_xlatb26 = (u_xlat26.x < -(u_xlat26.x));
  u_xlatb46 = (u_xlat46.x >= -(u_xlat46.x));
  u_xlatb26 = (u_xlatb46 & u_xlatb26);
  if (u_xlatb26) {
    x_12661 = -(u_xlat6.x);
  } else {
    x_12661 = u_xlat6.x;
  }
  u_xlat6.x = x_12661;
  u_xlat26.x = min(abs(u_xlat1.x), abs(u_xlat1.y));
  u_xlat46.x = max(abs(u_xlat1.x), abs(u_xlat1.y));
  u_xlat46.x = (1.0f / u_xlat46.x);
  u_xlat26.x = (u_xlat46.x * u_xlat26.x);
  u_xlat46.x = (u_xlat26.x * u_xlat26.x);
  u_xlat66 = ((u_xlat46.x * 0.02083509974181652069f) + -0.08513300120830535889f);
  u_xlat66 = ((u_xlat46.x * u_xlat66) + 0.18014100193977355957f);
  u_xlat66 = ((u_xlat46.x * u_xlat66) + -0.33029949665069580078f);
  u_xlat46.x = ((u_xlat46.x * u_xlat66) + 0.99986600875854492188f);
  u_xlat66 = (u_xlat46.x * u_xlat26.x);
  u_xlatb7 = (abs(u_xlat1.x) < abs(u_xlat1.y));
  u_xlat66 = ((u_xlat66 * -2.0f) + 1.57079637050628662109f);
  u_xlat66 = select(0.0f, u_xlat66, u_xlatb7);
  u_xlat26.x = ((u_xlat26.x * u_xlat46.x) + u_xlat66);
  u_xlatb46 = (u_xlat1.x < -(u_xlat1.x));
  u_xlat46.x = select(0.0f, -3.14159274101257324219f, u_xlatb46);
  u_xlat26.x = (u_xlat46.x + u_xlat26.x);
  u_xlat46.x = min(u_xlat1.x, u_xlat1.y);
  u_xlat66 = max(u_xlat1.x, u_xlat1.y);
  u_xlatb46 = (u_xlat46.x < -(u_xlat46.x));
  u_xlatb66 = (u_xlat66 >= -(u_xlat66));
  u_xlatb46 = (u_xlatb66 & u_xlatb46);
  if (u_xlatb46) {
    x_12790 = -(u_xlat26.x);
  } else {
    x_12790 = u_xlat26.x;
  }
  u_xlat26.x = x_12790;
  u_xlat6.x = (-(u_xlat26.x) + u_xlat6.x);
  u_xlat6 = vec4f(((u_xlat6.xx * vec2f(57.295780181884765625f, 0.15915495157241821289f))).xy, u_xlat6.zw);
  u_xlat26.x = round(u_xlat6.y);
  u_xlat6.x = ((-(u_xlat26.x) * 360.0f) + u_xlat6.x);
  u_xlat26.x = ((u_xlat2.x * 57.295780181884765625f) + -(u_xlat25.z));
  u_xlat23.x = (u_xlat26.x / u_xlat23.x);
  u_xlat26.x = cos(u_xlat0.x);
  u_xlat6.x = (u_xlat26.x * u_xlat6.x);
  u_xlat23.x = (u_xlat23.x * u_xlat23.x);
  u_xlat23.x = ((u_xlat6.x * u_xlat6.x) + u_xlat23.x);
  u_xlat23.x = sqrt(u_xlat23.x);
  u_xlat25.x = u_xlat25.x;
  u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
  u_xlat6.x = ((u_xlat62 * 57.295780181884765625f) + -(u_xlat23.x));
  u_xlat23.x = ((u_xlat25.x * u_xlat6.x) + u_xlat23.x);
  u_xlat2.x = ((u_xlat2.x * 57.295780181884765625f) + 0.60000002384185791016f);
  u_xlat2.x = (u_xlat2.x * 1.25f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat25.x = ((u_xlat2.x * -2.0f) + 3.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat25.x);
  u_xlatb6 = ((vec4f() < x_628.x_SunLimb.xzxx)).xy;
  u_xlatb25 = (u_xlatb6.y | u_xlatb6.x);
  if (u_xlatb25) {
    u_xlat25.x = max(u_xlat45.x, 0.00000999999974737875f);
    u_xlat25.x = (u_xlat25.x * 57.295780181884765625f);
    u_xlat45.x = (u_xlat63 * x_628.x_SunLimb.y);
    u_xlat25.x = max(u_xlat25.x, u_xlat45.x);
    u_xlat45.x = (-(u_xlat23.x) + u_xlat63);
    u_xlat25.x = (u_xlat45.x / u_xlat25.x);
    u_xlat25.x = (u_xlat25.x + 0.5f);
    u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
    u_xlat25.x = (u_xlat2.x * u_xlat25.x);
    u_xlat45.x = (u_xlat23.x / u_xlat63);
    u_xlat45.x = clamp(u_xlat45.x, 0.0f, 1.0f);
    u_xlat45.x = ((-(u_xlat45.x) * u_xlat45.x) + 1.0f);
    u_xlat45.x = sqrt(u_xlat45.x);
    u_xlat45.x = (-(u_xlat45.x) + 1.0f);
    u_xlat45.x = ((-(x_628.x_SunLimb.x) * u_xlat45.x) + 1.0f);
    u_xlat25.x = (u_xlat45.x * u_xlat25.x);
    u_xlat6 = vec4f(((x_35.x_B612SunDisk.xyz * x_628.x_SunLimb.zzz)).xyz, u_xlat6.w);
    u_xlat45.x = max(x_628.x_SunLimb.w, 1.0f);
    u_xlat45.x = (u_xlat5.x * u_xlat45.x);
    u_xlat45.x = exp2(u_xlat45.x);
    u_xlat6 = vec4f(((u_xlat45.xxx * u_xlat6.xyz)).xyz, u_xlat6.w);
    u_xlat45.x = ((-(u_xlat22) * 0.69999998807907104492f) + 1.0f);
    u_xlat4 = ((u_xlat6.xyz * u_xlat45.xxx) + u_xlat4);
  } else {
    u_xlat45.x = (u_xlat63 * 0.29999995231628417969f);
    u_xlat63 = ((-(u_xlat63) * 0.85000002384185791016f) + u_xlat23.x);
    u_xlat45.x = (1.0f / u_xlat45.x);
    u_xlat63 = (u_xlat63 * u_xlat45.x);
    u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
    u_xlat45.x = ((u_xlat63 * -2.0f) + 3.0f);
    u_xlat63 = (u_xlat63 * u_xlat63);
    u_xlat63 = ((-(u_xlat45.x) * u_xlat63) + 1.0f);
    u_xlat25.x = (u_xlat2.x * u_xlat63);
  }
  u_xlat2.x = ((-(u_xlat0.x) * 57.295780181884765625f) + x_628.x_DuskSun.w);
  u_xlat63 = max(x_628.x_DuskSun.w, 0.10000000149011611938f);
  u_xlat2.x = (u_xlat2.x / u_xlat63);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat2.x = (u_xlat2.x * x_628.x_DuskSun.x);
  u_xlat6 = vec4f(((-(vec2f(x_628.x_DaySunDisk, x_628.x_DayHalo)) + vec2f(x_628.x_DuskSunDisk, x_628.x_DuskHalo))).xy, u_xlat6.zw);
  u_xlat6 = vec4f((((vec2f(u_xlat64) * u_xlat6.xy) + vec2f(x_628.x_DaySunDisk, x_628.x_DayHalo))).xy, u_xlat6.zw);
  let x_13167 = (u_xlat6.xxx * x_35.x_B612SunDisk.xyz);
  u_xlat6 = vec4f(x_13167.x, u_xlat6.y, x_13167.yz);
  let x_13174 = (u_xlat25.xxx * u_xlat6.xzw);
  u_xlat6 = vec4f(x_13174.x, u_xlat6.y, x_13174.yz);
  let x_13181 = (vec3f(u_xlat42) * u_xlat6.xzw);
  u_xlat6 = vec4f(x_13181.x, u_xlat6.y, x_13181.yz);
  u_xlat63 = u_xlat2.x;
  u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
  u_xlat64 = (-(u_xlat63) + 1.0f);
  u_xlat4 = ((u_xlat6.xzw * vec3f(u_xlat64)) + u_xlat4);
  let x_13204 = (x_628.x_DuskSunColor.xyz / u_xlat3.zzz);
  u_xlat6 = vec4f(x_13204.x, u_xlat6.y, x_13204.yz);
  u_xlat42 = (u_xlat42 * u_xlat25.x);
  u_xlat42 = (u_xlat63 * u_xlat42);
  let x_13218 = (-(u_xlat4) + u_xlat6.xzw);
  u_xlat6 = vec4f(x_13218.x, u_xlat6.y, x_13218.yz);
  u_xlat4 = ((vec3f(u_xlat42) * u_xlat6.xzw) + u_xlat4);
  u_xlat42 = max(x_35.x_B612SunHalo.w, 1.0f);
  u_xlat42 = (u_xlat5.x * u_xlat42);
  u_xlat42 = exp2(u_xlat42);
  u_xlat5 = (vec3f(u_xlat42) * x_35.x_B612SunHalo.xyz);
  u_xlat5 = (u_xlat6.yyy * u_xlat5);
  u_xlat6 = vec4f((((-(vec2f(u_xlat22)) * vec2f(0.60000002384185791016f, 0.5f)) + x_843)).xy, u_xlat6.zw);
  u_xlat4 = ((u_xlat5 * u_xlat6.xxx) + u_xlat4);
  u_xlatb42 = (0.0f < u_xlat2.x);
  if (u_xlatb42) {
    u_xlat42 = max(x_628.x_DuskSun.z, 0.10000000149011611938f);
    u_xlat5 = (x_628.x_DuskHaloColor.xyz / u_xlat3.zzz);
    u_xlat2.x = (u_xlat2.x * x_628.x_DuskSun.y);
    u_xlat43.x = (u_xlat42 * 0.21999999880790710449f);
    u_xlat43.x = (-(u_xlat23.x) / u_xlat43.x);
    u_xlat43.x = (u_xlat43.x * 1.44269502162933349609f);
    u_xlat43.x = exp2(u_xlat43.x);
    u_xlat42 = (-(u_xlat23.x) / u_xlat42);
    u_xlat42 = (u_xlat42 * 1.44269502162933349609f);
    u_xlat42 = exp2(u_xlat42);
    u_xlat42 = (u_xlat42 * 0.34999999403953552246f);
    u_xlat42 = ((u_xlat43.x * 0.64999997615814208984f) + u_xlat42);
    u_xlat2.x = (u_xlat42 * u_xlat2.x);
    u_xlat23 = (u_xlat2.xxx * u_xlat5);
    u_xlat2.x = ((-(u_xlat22) * 0.40000000596046447754f) + 1.0f);
    u_xlat4 = ((u_xlat23 * u_xlat2.xxx) + u_xlat4);
  }
  u_xlatb2 = (0.0f < x_628.x_Rays.x);
  if (u_xlatb2) {
    u_xlat2.x = max(x_628.x_RaysColor.w, 0.10000000149011611938f);
    u_xlat2.x = (u_xlat25.z / u_xlat2.x);
    u_xlat2.x = (-(u_xlat2.x) + 1.0f);
    u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
    u_xlat0.x = ((u_xlat0.x * 57.295780181884765625f) + 3.0f);
    u_xlat0.x = (u_xlat0.x * 0.3333333432674407959f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat0.x = (u_xlat0.x * u_xlat2.x);
    u_xlat23 = (u_xlat1 * x_5276);
    u_xlat23 = ((u_xlat1.yzx * x_5364) + -(u_xlat23));
    u_xlat23 = (u_xlat23 + x_84);
    u_xlat2.x = dot(u_xlat23.yz, u_xlat23.yz);
    u_xlat2.x = inverseSqrt(u_xlat2.x);
    u_xlat23 = (u_xlat2.xxx * u_xlat23);
    u_xlat5 = (u_xlat1 * u_xlat23);
    u_xlat1 = ((u_xlat1.zxy * u_xlat23.yzx) + -(u_xlat5));
    u_xlat2.x = dot(u_xlat20.zx, u_xlat23.yz);
    u_xlat20.x = dot(u_xlat20, u_xlat1);
    u_xlat40.x = min(abs(u_xlat2.x), abs(u_xlat20.x));
    u_xlat60 = max(abs(u_xlat2.x), abs(u_xlat20.x));
    u_xlat60 = (1.0f / u_xlat60);
    u_xlat40.x = (u_xlat60 * u_xlat40.x);
    u_xlat60 = (u_xlat40.x * u_xlat40.x);
    u_xlat1.x = ((u_xlat60 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat1.x = ((u_xlat60 * u_xlat1.x) + 0.18014100193977355957f);
    u_xlat1.x = ((u_xlat60 * u_xlat1.x) + -0.33029949665069580078f);
    u_xlat60 = ((u_xlat60 * u_xlat1.x) + 0.99986600875854492188f);
    u_xlat1.x = (u_xlat60 * u_xlat40.x);
    u_xlatb21 = (abs(u_xlat2.x) < abs(u_xlat20.x));
    u_xlat1.x = ((u_xlat1.x * -2.0f) + 1.57079637050628662109f);
    if (u_xlatb21) {
      x_13500 = u_xlat1.x;
    } else {
      x_13500 = 0.0f;
    }
    u_xlat1.x = x_13500;
    u_xlat40.x = ((u_xlat40.x * u_xlat60) + u_xlat1.x);
    u_xlatb60 = (u_xlat2.x < -(u_xlat2.x));
    u_xlat60 = select(0.0f, -3.14159274101257324219f, u_xlatb60);
    u_xlat40.x = (u_xlat60 + u_xlat40.x);
    u_xlat60 = min(u_xlat2.x, u_xlat20.x);
    u_xlat20.x = max(u_xlat2.x, u_xlat20.x);
    u_xlatb60 = (u_xlat60 < -(u_xlat60));
    u_xlatb20 = (u_xlat20.x >= -(u_xlat20.x));
    u_xlatb20 = (u_xlatb20 & u_xlatb60);
    if (u_xlatb20) {
      x_13556 = -(u_xlat40.x);
    } else {
      x_13556 = u_xlat40.x;
    }
    u_xlat20.x = x_13556;
    u_xlat20.x = (u_xlat20.x * x_628.x_Rays.y);
    u_xlat40 = (x_35.x_Time.yy * vec2f(0.01200000010430812836f, 0.01999999955296516418f));
    u_xlat40.x = ((u_xlat20.x * 0.15915493667125701904f) + u_xlat40.x);
    u_xlat5.x = floor(u_xlat40.x);
    u_xlat5.y = 3.0f;
    u_xlat45.y = 7.0f;
    u_xlat40.x = fract(u_xlat40.x);
    u_xlat1.x = (u_xlat40.x * u_xlat40.x);
    u_xlat40.x = ((-(u_xlat40.x) * 2.0f) + 3.0f);
    u_xlat40.x = (u_xlat40.x * u_xlat1.x);
    u_xlat1 = vec3f(((u_xlat5.xy * x_743)).xy, u_xlat1.z);
    u_xlat1 = vec3f(fract(u_xlat1.xy).xy, u_xlat1.z);
    u_xlat23 = (u_xlat1.yxx + x_751);
    u_xlat41 = dot(u_xlat1.xyx, u_xlat23);
    u_xlat1 = vec3f(((vec2f(u_xlat41) + u_xlat1.xy)).xy, u_xlat1.z);
    u_xlat21.x = (u_xlat1.y + u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * u_xlat21.x);
    u_xlat7 = (u_xlat5.yxyx + x_778);
    u_xlat7 = (u_xlat7 * x_781);
    u_xlat7 = fract(u_xlat7);
    u_xlat8 = (u_xlat7 + x_787);
    u_xlat21.x = dot(u_xlat7.yxy, u_xlat8.xyy);
    u_xlat21 = (u_xlat21.xx + u_xlat7.yx);
    u_xlat41 = (u_xlat21.y + u_xlat21.x);
    u_xlat1.y = (u_xlat21.x * u_xlat41);
    u_xlat41 = dot(u_xlat7.wzw, u_xlat8.zww);
    let x_13691 = (vec2f(u_xlat41) + u_xlat7.wz);
    u_xlat2 = vec3f(x_13691.x, u_xlat2.y, x_13691.y);
    u_xlat41 = (u_xlat2.z + u_xlat2.x);
    u_xlat1.z = (u_xlat2.x * u_xlat41);
    u_xlat1 = fract(u_xlat1);
    let x_13708 = (u_xlat5.xy + x_843);
    u_xlat2 = vec3f(x_13708.x, u_xlat2.y, x_13708.y);
    let x_13713 = (u_xlat2.xz * x_743);
    u_xlat2 = vec3f(x_13713.x, u_xlat2.y, x_13713.y);
    let x_13718 = fract(u_xlat2.xz);
    u_xlat2 = vec3f(x_13718.x, u_xlat2.y, x_13718.y);
    u_xlat23 = (u_xlat2.zxx + x_751);
    u_xlat23.x = dot(u_xlat2.xzx, u_xlat23);
    let x_13733 = (u_xlat2.xz + u_xlat23.xx);
    u_xlat2 = vec3f(x_13733.x, u_xlat2.y, x_13733.y);
    u_xlat42 = (u_xlat2.z + u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * u_xlat42);
    u_xlat2.x = fract(u_xlat2.x);
    u_xlat21.x = (-(u_xlat1.x) + u_xlat1.y);
    u_xlat1.x = ((u_xlat40.x * u_xlat21.x) + u_xlat1.x);
    u_xlat21.x = (-(u_xlat1.z) + u_xlat2.x);
    u_xlat40.x = ((u_xlat40.x * u_xlat21.x) + u_xlat1.z);
    u_xlat40.x = (-(u_xlat1.x) + u_xlat40.x);
    u_xlat40.x = ((u_xlat40.x * 0.02799994871020317078f) + u_xlat1.x);
    u_xlat20.x = ((u_xlat20.x * 0.36605635285377502441f) + -(u_xlat40.y));
    u_xlat45.x = floor(u_xlat20.x);
    u_xlat20.x = fract(u_xlat20.x);
    u_xlat60 = (u_xlat20.x * u_xlat20.x);
    u_xlat20.x = ((-(u_xlat20.x) * 2.0f) + 3.0f);
    u_xlat20.x = (u_xlat20.x * u_xlat60);
    u_xlat1 = vec3f(((u_xlat45 * x_743)).xy, u_xlat1.z);
    u_xlat1 = vec3f(fract(u_xlat1.xy).xy, u_xlat1.z);
    u_xlat23 = (u_xlat1.yxx + x_751);
    u_xlat60 = dot(u_xlat1.xyx, u_xlat23);
    u_xlat1 = vec3f(((vec2f(u_xlat60) + u_xlat1.xy)).xy, u_xlat1.z);
    u_xlat60 = (u_xlat1.y + u_xlat1.x);
    u_xlat60 = (u_xlat1.x * u_xlat60);
    u_xlat60 = fract(u_xlat60);
    u_xlat7 = (u_xlat45.yxyx + x_778);
    u_xlat7 = (u_xlat7 * x_781);
    u_xlat7 = fract(u_xlat7);
    u_xlat8 = (u_xlat7 + x_787);
    u_xlat1.x = dot(u_xlat7.yxy, u_xlat8.xyy);
    u_xlat1 = vec3f(((u_xlat1.xx + u_xlat7.yx)).xy, u_xlat1.z);
    u_xlat21.x = (u_xlat1.y + u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * u_xlat21.x);
    u_xlat21.x = dot(u_xlat7.wzw, u_xlat8.zww);
    u_xlat21 = (u_xlat21.xx + u_xlat7.wz);
    u_xlat41 = (u_xlat21.y + u_xlat21.x);
    u_xlat1.y = (u_xlat21.x * u_xlat41);
    let x_13920 = (u_xlat45 + x_843);
    u_xlat2 = vec3f(x_13920.x, u_xlat2.y, x_13920.y);
    let x_13925 = (u_xlat2.xz * x_743);
    u_xlat2 = vec3f(x_13925.x, u_xlat2.y, x_13925.y);
    let x_13930 = fract(u_xlat2.xz);
    u_xlat2 = vec3f(x_13930.x, u_xlat2.y, x_13930.y);
    u_xlat23 = (u_xlat2.zxx + x_751);
    u_xlat41 = dot(u_xlat2.xzx, u_xlat23);
    let x_13944 = (vec2f(u_xlat41) + u_xlat2.xz);
    u_xlat2 = vec3f(x_13944.x, u_xlat2.y, x_13944.y);
    u_xlat41 = (u_xlat2.z + u_xlat2.x);
    u_xlat1.z = (u_xlat2.x * u_xlat41);
    u_xlat1 = fract(u_xlat1);
    u_xlat1.x = (-(u_xlat60) + u_xlat1.x);
    u_xlat60 = ((u_xlat20.x * u_xlat1.x) + u_xlat60);
    u_xlat1.x = (-(u_xlat1.y) + u_xlat1.z);
    u_xlat20.x = ((u_xlat20.x * u_xlat1.x) + u_xlat1.y);
    u_xlat20.x = (-(u_xlat60) + u_xlat20.x);
    u_xlat20.x = ((u_xlat20.x * 0.78399980068206787109f) + u_xlat60);
    u_xlat20.x = (u_xlat20.x * 0.34999999403953552246f);
    u_xlat20.x = ((u_xlat40.x * 0.64999997615814208984f) + u_xlat20.x);
    u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
    u_xlat0.y = log2(u_xlat20.x);
    u_xlat0 = vec3f(((u_xlat0.xy * x_628.x_Rays.xz)).xy, u_xlat0.z);
    u_xlat20.x = exp2(u_xlat0.y);
    u_xlat40.x = max(x_628.x_Rays.w, 1.0f);
    u_xlat40.x = (-(u_xlat3.x) / u_xlat40.x);
    u_xlat40.x = (u_xlat40.x * 1.44269502162933349609f);
    u_xlat0.z = exp2(u_xlat40.x);
    u_xlat60 = (u_xlat62 * 38.1971893310546875f);
    u_xlat20.z = min(u_xlat60, 1.0f);
    let x_14061 = (u_xlat20.xz * u_xlat0.xz);
    u_xlat0 = vec3f(x_14061.x, u_xlat0.y, x_14061.y);
    u_xlat60 = (u_xlat61 * -0.16029945015907287598f);
    u_xlat60 = exp2(u_xlat60);
    u_xlat1 = (x_35.x_MainLightColor.xyz * x_628.x_RaysColor.xyz);
    u_xlat0.x = (u_xlat0.z * u_xlat0.x);
    u_xlat0.x = (u_xlat60 * u_xlat0.x);
    u_xlat0 = (u_xlat0.xxx * u_xlat1);
    u_xlat60 = ((-(u_xlat22) * 0.5f) + 1.0f);
    u_xlat4 = ((u_xlat0 * vec3f(u_xlat60)) + u_xlat4);
  }
  u_xlat0 = ((u_xlat9.xyz * u_xlat6.yyy) + u_xlat4);
  u_xlat0 = (u_xlat0 * x_35.x_B612SkyParams.www);
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

