//Assets/Shared/Rendering/Shaders/B612_FarLandscape.shader
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

@group(1) @binding(3) var<uniform> x_64 : VGlobals;

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

//Assets/Shared/Rendering/Shaders/B612_FarLandscape.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_WarmColor : vec4f,
  /* @offset(32) */
  x_CoolColor : vec4f,
  /* @offset(48) */
  x_MacroTiling : f32,
  /* @offset(52) */
  x_Variation : f32,
  /* @offset(56) */
  x_Wrap : f32,
  /* @offset(60) */
  x_NormalSoften : f32,
  /* @offset(64) */
  x_AmbientBoost : f32,
  /* @offset(68) */
  x_CloudShadows : f32,
  /* @offset(72) */
  x_HazeDensity : f32,
  /* @offset(76) */
  x_HazeStart : f32,
  /* @offset(80) */
  x_HazeFalloff : f32,
  /* @offset(84) */
  x_MistHeight : f32,
  /* @offset(88) */
  x_MistDensity : f32,
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
  x_B612SunDirection : vec4f,
  /* @offset(96) */
  x_B612TimeParams : vec4f,
  /* @offset(112) */
  x_B612SkyZenith : vec4f,
  /* @offset(128) */
  x_B612SkyHorizon : vec4f,
  /* @offset(144) */
  x_B612SkyHorizonSun : vec4f,
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
  x_B612CloudTint : vec4f,
  /* @offset(272) */
  x_B612CloudParams : vec4f,
  /* @offset(288) */
  x_B612SunGlow : vec4f,
  /* @offset(304) */
  x_B612HdriParams : vec4f,
  /* @offset(320) */
  x_B612HdriDay0 : vec4f,
  /* @offset(336) */
  x_B612HdriDay1 : vec4f,
  /* @offset(352) */
  x_B612HdriDay2 : vec4f,
  /* @offset(368) */
  x_B612HdriDay3 : vec4f,
  /* @offset(384) */
  x_B612HdriDusk0 : vec4f,
  /* @offset(400) */
  x_B612HdriDusk1 : vec4f,
  /* @offset(416) */
  x_B612HdriDusk2 : vec4f,
  /* @offset(432) */
  x_B612HdriDusk3 : vec4f,
  /* @offset(448) */
  x_B612SkyCloud : vec4f,
  /* @offset(464) */
  x_B612SkyCloud2 : vec4f,
  /* @offset(480) */
  x_B612SkyCloudWarm : vec4f,
  /* @offset(496) */
  x_B612SkyNight : vec4f,
  /* @offset(512) */
  x_B612SkyCloudNight : vec4f,
  /* @offset(528) */
  x_B612SkyCloudCut : vec4f,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(2) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec3f;

@group(0) @binding(2) var x_MacroNoise : texture_2d<f32>;

@group(0) @binding(4) var sampler_MacroNoise : sampler;

@group(1) @binding(0) var<uniform> x_104 : PGlobals;

@group(1) @binding(1) var<uniform> x_1053 : UnityPerDraw;

@group(0) @binding(0) var x_B612HdriRingDay : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearRepeat : sampler;

@group(0) @binding(1) var x_B612HdriRingDusk : texture_2d<f32>;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_266 = vec2f(0.00000999999974737875f, 0.0f);

const x_347 = vec2f(2.0f);

const x_350 = vec2f(3.0f);

const x_359 = vec2f(0.10310000181198120117f);

const x_372 = vec3f(33.3300018310546875f);

const x_401 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_404 = vec4f(0.10310000181198120117f);

const x_409 = vec4f(33.3300018310546875f);

const x_470 = vec2f(1.0f);

const x_559 = vec2f(2.02999997138977050781f);

const x_562 = vec2f(17.1000003814697265625f);

const x_1422 = vec2f(0.00999999977648258209f, 0.0f);

const x_1501 = vec3f(0.34999999403953552246f);

const x_1599 = vec3f(0.00999999977648258209f, 0.10000000149011611938f, 0.00999999977648258209f);

const x_1920 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_1978 = vec3f(-1.0f);

const x_1987 = vec3f(1.0f);

const x_2003 = vec2f(1.5f, 90.0f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat8 : vec3f;
  var u_xlat1 : vec3f;
  var u_xlat24 : f32;
  var u_xlat17 : f32;
  var u_xlat9 : vec3f;
  var u_xlat2 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat25 : f32;
  var u_xlatb10 : bool;
  var u_xlat10 : vec2f;
  var u_xlat26 : f32;
  var u_xlat18 : f32;
  var u_xlat19 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat12 : vec3f;
  var u_xlat20 : vec2f;
  var u_xlat11 : f32;
  var u_xlat6 : vec4f;
  var u_xlat28 : f32;
  var u_xlat27 : f32;
  var u_xlatb24 : bool;
  var u_xlatb25 : bool;
  var u_xlat21 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlatb21 : bool;
  var x_1803 : f32;
  var u_xlatb28 : bool;
  var u_xlatb5 : bool;
  var x_1860 : f32;
  var u_xlat30 : f32;
  var u_xlat14 : vec3f;
  var u_xlatb29 : bool;
  var x_2625 : f32;
  var x_2685 : f32;
  var u_xlat22 : vec2f;
  var u_xlatb26 : bool;
  var x_2800 : vec3f;
  var x_2979 : vec3f;
  var u_xlat13 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat8 = (u_xlat0.xxx * vs_TEXCOORD1);
  u_xlat1 = ((-(vs_TEXCOORD1) * u_xlat0.xxx) + vec3f(0.0f, 1.0f, 0.0f));
  let x_52 = vec3f(x_42.x_NormalSoften, x_42.x_NormalSoften, x_42.x_NormalSoften);
  u_xlat0 = vec4f((((vec3f(x_52.x, x_52.y, x_52.z) * u_xlat1) + u_xlat8)).xyz, u_xlat0.w);
  u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat24 = inverseSqrt(u_xlat24);
  u_xlat0 = vec4f(((vec3f(u_xlat24) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz * vec2f(x_42.x_MacroTiling))).xy, u_xlat1.z);
  let x_100 = u_xlat1;
  let x_107 = x_104.x_GlobalMipBias.x;
  let x_108 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_100.xy, x_107);
  u_xlat17 = x_108.x;
  u_xlat1 = vec3f((((u_xlat1.xy * vec2f(3.09999990463256835938f)) + vec2f(0.37000000476837158203f))).xy, u_xlat1.z);
  let x_123 = u_xlat1;
  let x_126 = x_104.x_GlobalMipBias.x;
  let x_127 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_123.xy, x_126);
  u_xlat1.x = x_127.x;
  u_xlat9.x = (u_xlat17 + -0.5f);
  u_xlat9.x = (u_xlat9.x + u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat9.x = (u_xlat9.x * x_42.x_Variation);
  u_xlat2 = (-(x_42.x_BaseColor.xyz) + x_42.x_WarmColor.xyz);
  u_xlat2 = ((u_xlat9.xxx * u_xlat2) + x_42.x_BaseColor.xyz);
  u_xlat9.x = (-(u_xlat17) + 0.5f);
  u_xlat9.x = (u_xlat9.x + u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat9.x = (u_xlat9.x * x_42.x_Variation);
  u_xlat3 = vec4f(((-(u_xlat2) + x_42.x_CoolColor.xyz)).xyz, u_xlat3.w);
  u_xlat9 = ((u_xlat9.xxx * u_xlat3.xyz) + u_xlat2);
  u_xlat1.x = ((u_xlat1.x * 0.20000000298023223877f) + 0.89999997615814208984f);
  u_xlat1 = (u_xlat1.xxx * u_xlat9);
  u_xlat25 = dot(u_xlat0.xyz, x_104.x_MainLightPosition.xyz);
  u_xlat25 = (u_xlat25 + x_42.x_Wrap);
  u_xlat2.x = (x_42.x_Wrap + 1.0f);
  u_xlat25 = (u_xlat25 / u_xlat2.x);
  u_xlat25 = clamp(u_xlat25, 0.0f, 1.0f);
  u_xlat2.x = (x_104.x_B612SunDirection.w * x_104.x_B612CloudTint.w);
  u_xlatb10 = (0.00100000004749745131f < u_xlat2.x);
  if (u_xlatb10) {
    u_xlat10 = (x_104.x_B612SunDirection.xz + x_266);
    u_xlat26 = dot(u_xlat10, u_xlat10);
    u_xlat26 = inverseSqrt(u_xlat26);
    u_xlat3 = vec4f(((vec2f(u_xlat26) * u_xlat10)).xy, u_xlat3.zw);
    u_xlat10.x = dot(vs_TEXCOORD0.xz, u_xlat3.xy);
    u_xlat3.z = -(u_xlat3.y);
    u_xlat18 = dot(vs_TEXCOORD0.zx, u_xlat3.xz);
    u_xlat26 = ((-(x_104.x_B612SunDirection.y) * 2.5f) + 1.0f);
    u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
    u_xlat26 = ((u_xlat26 * 2.0f) + 1.0f);
    u_xlat26 = (u_xlat26 * 260.0f);
    u_xlat3.x = (u_xlat10.x / u_xlat26);
    u_xlat3.y = (u_xlat18 * 0.00384615384973585606f);
    u_xlat10 = ((x_104.x_Time.yy * vec2f(0.00400000018998980522f, 0.00249999994412064552f)) + u_xlat3.xy);
    u_xlat3 = vec4f(floor(u_xlat10).xy, u_xlat3.zw);
    u_xlat19 = fract(u_xlat10);
    u_xlat4 = vec4f(((u_xlat19 * u_xlat19)).xy, u_xlat4.zw);
    u_xlat19 = ((-(u_xlat19) * x_347) + x_350);
    u_xlat19 = (u_xlat19 * u_xlat4.xy);
    u_xlat4 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat26 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((vec2f(u_xlat26) + u_xlat4.xy)).xy, u_xlat4.zw);
    u_xlat26 = (u_xlat4.y + u_xlat4.x);
    u_xlat26 = (u_xlat4.x * u_xlat26);
    u_xlat26 = fract(u_xlat26);
    u_xlat4 = (u_xlat3.yxyx + x_401);
    u_xlat4 = (u_xlat4 * x_404);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = (u_xlat4 + x_409);
    u_xlat5.x = dot(u_xlat4.yxy, u_xlat5.xyy);
    u_xlat4 = vec4f(((u_xlat4.yx + u_xlat5.xx)).xy, u_xlat4.zw);
    u_xlat12.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat12.x);
    u_xlat12.x = dot(u_xlat4.wzw, u_xlat5.zww);
    u_xlat12 = vec3f(((u_xlat12.xx + u_xlat4.wz)).xy, u_xlat12.z);
    u_xlat20.x = (u_xlat12.y + u_xlat12.x);
    u_xlat4.y = (u_xlat12.x * u_xlat20.x);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + x_470)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat20.x = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((u_xlat3.xy + u_xlat20.xx)).xy, u_xlat3.zw);
    u_xlat11 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat11);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat11 = (-(u_xlat26) + u_xlat4.x);
    u_xlat26 = ((u_xlat19.x * u_xlat11) + u_xlat26);
    u_xlat3.x = (-(u_xlat4.y) + u_xlat3.x);
    u_xlat3.x = ((u_xlat19.x * u_xlat3.x) + u_xlat4.y);
    u_xlat3.x = (-(u_xlat26) + u_xlat3.x);
    u_xlat26 = ((u_xlat19.y * u_xlat3.x) + u_xlat26);
    u_xlat10 = ((u_xlat10 * x_559) + x_562);
    u_xlat3 = vec4f(floor(u_xlat10).xy, u_xlat3.zw);
    u_xlat19 = fract(u_xlat10);
    u_xlat4 = vec4f(((u_xlat19 * u_xlat19)).xy, u_xlat4.zw);
    u_xlat19 = ((-(u_xlat19) * x_347) + x_350);
    u_xlat19 = (u_xlat19 * u_xlat4.xy);
    u_xlat4 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat20.x = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((u_xlat20.xx + u_xlat4.xy)).xy, u_xlat4.zw);
    u_xlat12.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat12.x);
    u_xlat5 = (u_xlat3.yxyx + x_401);
    u_xlat5 = (u_xlat5 * x_404);
    u_xlat5 = fract(u_xlat5);
    u_xlat6 = (u_xlat5 + x_409);
    u_xlat12.x = dot(u_xlat5.yxy, u_xlat6.xyy);
    u_xlat12 = vec3f(((u_xlat12.xx + u_xlat5.yx)).xy, u_xlat12.z);
    u_xlat20.x = (u_xlat12.y + u_xlat12.x);
    u_xlat4.y = (u_xlat12.x * u_xlat20.x);
    u_xlat20.x = dot(u_xlat5.wzw, u_xlat6.zww);
    u_xlat20 = (u_xlat20.xx + u_xlat5.wz);
    u_xlat28 = (u_xlat20.y + u_xlat20.x);
    u_xlat4.z = (u_xlat20.x * u_xlat28);
    u_xlat4 = vec4f(fract(u_xlat4.xyz).xyz, u_xlat4.w);
    u_xlat3 = vec4f(((u_xlat3.xy + x_470)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat28 = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((u_xlat3.xy + vec2f(u_xlat28))).xy, u_xlat3.zw);
    u_xlat11 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat11);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat11 = (-(u_xlat4.x) + u_xlat4.y);
    u_xlat11 = ((u_xlat19.x * u_xlat11) + u_xlat4.x);
    u_xlat3.x = (-(u_xlat4.z) + u_xlat3.x);
    u_xlat3.x = ((u_xlat19.x * u_xlat3.x) + u_xlat4.z);
    u_xlat3.x = (-(u_xlat11) + u_xlat3.x);
    u_xlat3.x = ((u_xlat19.y * u_xlat3.x) + u_xlat11);
    u_xlat3.x = (u_xlat3.x * 0.25f);
    u_xlat26 = ((u_xlat26 * 0.5f) + u_xlat3.x);
    u_xlat10 = ((u_xlat10 * x_559) + x_562);
    u_xlat3 = vec4f(floor(u_xlat10).xy, u_xlat3.zw);
    u_xlat10 = fract(u_xlat10);
    u_xlat19 = (u_xlat10 * u_xlat10);
    u_xlat10 = ((-(u_xlat10) * x_347) + x_350);
    u_xlat10 = (u_xlat10 * u_xlat19);
    u_xlat19 = (u_xlat3.xy * x_359);
    u_xlat19 = fract(u_xlat19);
    u_xlat4 = vec4f(((u_xlat19.yxx + x_372)).xyz, u_xlat4.w);
    u_xlat4.x = dot(u_xlat19.xyx, u_xlat4.xyz);
    u_xlat19 = (u_xlat19 + u_xlat4.xx);
    u_xlat27 = (u_xlat19.y + u_xlat19.x);
    u_xlat3.z = (u_xlat19.x * u_xlat27);
    u_xlat4 = (u_xlat3.yxyx + x_401);
    u_xlat4 = (u_xlat4 * x_404);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = (u_xlat4 + x_409);
    u_xlat27 = dot(u_xlat4.yxy, u_xlat5.xyy);
    u_xlat4 = vec4f(((vec2f(u_xlat27) + u_xlat4.yx)).xy, u_xlat4.zw);
    u_xlat27 = (u_xlat4.y + u_xlat4.x);
    u_xlat3.w = (u_xlat4.x * u_xlat27);
    u_xlat4.x = dot(u_xlat4.wzw, u_xlat5.zww);
    u_xlat4 = vec4f(((u_xlat4.xx + u_xlat4.wz)).xy, u_xlat4.zw);
    u_xlat12.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat12.x);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat3 = vec4f(((u_xlat3.xy + x_470)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat3.zw);
    u_xlat3 = fract(u_xlat3);
    u_xlat12 = (u_xlat3.yxx + x_372);
    u_xlat12.x = dot(u_xlat3.xyx, u_xlat12);
    u_xlat3 = vec4f(((u_xlat3.xy + u_xlat12.xx)).xy, u_xlat3.zw);
    u_xlat11 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat11);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat11 = (-(u_xlat3.z) + u_xlat3.w);
    u_xlat11 = ((u_xlat10.x * u_xlat11) + u_xlat3.z);
    u_xlat3.x = (-(u_xlat4.x) + u_xlat3.x);
    u_xlat10.x = ((u_xlat10.x * u_xlat3.x) + u_xlat4.x);
    u_xlat10.x = (-(u_xlat11) + u_xlat10.x);
    u_xlat10.x = ((u_xlat10.y * u_xlat10.x) + u_xlat11);
    u_xlat10.x = ((u_xlat10.x * 0.125f) + u_xlat26);
    u_xlat10.x = ((u_xlat10.x * 1.14285719394683837891f) + -0.51999998092651367188f);
    u_xlat10.x = (u_xlat10.x * 7.1428546905517578125f);
    u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
    u_xlat18 = ((u_xlat10.x * -2.0f) + 3.0f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * u_xlat18);
    u_xlat2.x = ((-(u_xlat2.x) * u_xlat10.x) + 1.0f);
  } else {
    u_xlat2.x = 1.0f;
  }
  u_xlat2.x = (u_xlat2.x + -1.0f);
  u_xlat2.x = ((x_42.x_CloudShadows * u_xlat2.x) + 1.0f);
  u_xlat25 = (u_xlat25 * u_xlat2.x);
  u_xlat0.w = 1.0f;
  u_xlat2.x = dot(x_1053.unity_SHAr, u_xlat0);
  u_xlat2.y = dot(x_1053.unity_SHAg, u_xlat0);
  u_xlat2.z = dot(x_1053.unity_SHAb, u_xlat0);
  u_xlat3 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat4.x = dot(x_1053.unity_SHBr, u_xlat3);
  u_xlat4.y = dot(x_1053.unity_SHBg, u_xlat3);
  u_xlat4.z = dot(x_1053.unity_SHBb, u_xlat3);
  u_xlat8.x = (u_xlat0.y * u_xlat0.y);
  u_xlat0.x = ((u_xlat0.x * u_xlat0.x) + -(u_xlat8.x));
  u_xlat0 = vec4f((((x_1053.unity_SHC.xyz * u_xlat0.xxx) + u_xlat4.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + u_xlat2)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * vec3f(x_42.x_AmbientBoost))).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_104.x_MainLightColor.xyz * vec3f(u_xlat25)) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat2 = (u_xlat0.xyz * u_xlat1);
  u_xlatb24 = (x_104.x_B612SunDirection.w < 0.5f);
  u_xlatb25 = (0.0f >= x_42.x_HazeDensity);
  u_xlatb24 = (u_xlatb24 | u_xlatb25);
  if (!(u_xlatb24)) {
    u_xlat3 = vec4f(((vs_TEXCOORD0 + -(x_104.x_WorldSpaceCameraPos))).xyz, u_xlat3.w);
    u_xlat24 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat24 = sqrt(u_xlat24);
    u_xlat25 = (u_xlat24 + -(x_42.x_HazeStart));
    u_xlat25 = max(u_xlat25, 0.0f);
    u_xlat26 = (u_xlat25 * x_42.x_HazeDensity);
    u_xlat26 = max(u_xlat26, 0.00000099999999747524f);
    u_xlat11 = max(x_42.x_HazeFalloff, 0.5f);
    u_xlat26 = log2(u_xlat26);
    u_xlat26 = (u_xlat26 * u_xlat11);
    u_xlat26 = exp2(u_xlat26);
    u_xlat26 = (u_xlat26 * -1.44269502162933349609f);
    u_xlat26 = exp2(u_xlat26);
    u_xlat26 = (-(u_xlat26) + 1.0f);
    u_xlat11 = (-(vs_TEXCOORD0.y) + x_42.x_MistHeight);
    u_xlat27 = (abs(x_42.x_MistHeight) + 5.0f);
    u_xlat11 = (u_xlat11 / u_xlat27);
    u_xlat11 = clamp(u_xlat11, 0.0f, 1.0f);
    u_xlat25 = (-(u_xlat25) * x_42.x_MistDensity);
    u_xlat25 = (u_xlat11 * u_xlat25);
    u_xlat25 = (u_xlat25 * 1.44269502162933349609f);
    u_xlat25 = exp2(u_xlat25);
    u_xlat25 = (-(u_xlat25) + 1.0f);
    u_xlat26 = (-(u_xlat26) + 1.0f);
    u_xlat25 = (-(u_xlat25) + 1.0f);
    u_xlat25 = ((-(u_xlat26) * u_xlat25) + 1.0f);
    u_xlat25 = max(u_xlat25, 0.0f);
    u_xlat24 = max(u_xlat24, 0.00100000004749745131f);
    u_xlat3 = vec4f(((u_xlat3.xz / vec2f(u_xlat24))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + x_266)).xy, u_xlat3.zw);
    u_xlat24 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat24 = inverseSqrt(u_xlat24);
    u_xlat3 = vec4f(((vec2f(u_xlat24) * u_xlat3.xy)).xy, u_xlat3.zw);
    u_xlatb24 = (1.5f < x_104.x_B612HdriParams.x);
    if (u_xlatb24) {
      u_xlat3.z = 0.02600000053644180298f;
      u_xlat24 = dot(u_xlat3.xyz, u_xlat3.xyz);
      u_xlat24 = inverseSqrt(u_xlat24);
      u_xlat4 = vec4f(((vec3f(u_xlat24) * u_xlat3.xzy)).xyz, u_xlat4.w);
      u_xlat26 = dot(u_xlat4.xyz, x_104.x_B612SunDirection.xyz);
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat19.x = ((-(u_xlat3.z) * u_xlat24) + 1.0f);
      u_xlat4.x = sqrt(u_xlat19.x);
      u_xlat20.x = ((u_xlat24 * -0.00048696179874241352f) + 0.07426100224256515503f);
      u_xlat20.x = ((u_xlat20.x * u_xlat4.y) + -0.21211439371109008789f);
      u_xlat20.x = ((u_xlat20.x * u_xlat4.y) + 1.57072877883911132812f);
      u_xlat4.x = ((-(u_xlat20.x) * u_xlat4.x) + 1.57079637050628662109f);
      u_xlat20.x = (u_xlat4.x * 57.295780181884765625f);
      u_xlat5 = vec4f((((u_xlat3.xy * vec2f(u_xlat24)) + x_266)).xy, u_xlat5.zw);
      u_xlat24 = dot(u_xlat5.xy, u_xlat5.xy);
      u_xlat24 = inverseSqrt(u_xlat24);
      u_xlat5 = vec4f(((vec2f(u_xlat24) * u_xlat5.xy)).xy, u_xlat5.zw);
      u_xlat21 = (x_104.x_B612SunDirection.xz + x_266);
      u_xlat24 = dot(u_xlat21, u_xlat21);
      u_xlat24 = inverseSqrt(u_xlat24);
      u_xlat21 = (vec2f(u_xlat24) * u_xlat21);
      u_xlat24 = dot(u_xlat5.xy, u_xlat21);
      u_xlat24 = ((u_xlat24 * 0.5f) + 0.5f);
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat5 = vec4f(max(x_104.x_B612SkyParams.yw, x_1422).xy, u_xlat5.zw);
      u_xlat28 = log2(u_xlat24);
      u_xlat5.x = (u_xlat28 * u_xlat5.x);
      u_xlat5.x = exp2(u_xlat5.x);
      u_xlat6 = vec4f(((-(x_104.x_B612SkyHorizon.xyz) + x_104.x_B612SkyHorizonSun.xyz)).xyz, u_xlat6.w);
      u_xlat6 = vec4f((((u_xlat5.xxx * u_xlat6.xyz) + x_104.x_B612SkyHorizon.xyz)).xyz, u_xlat6.w);
      u_xlat21.x = (x_104.x_B612SkyParams.x * 0.44999998807907104492f);
      u_xlat21.x = max(u_xlat21.x, 0.00999999977648258209f);
      u_xlat21.x = (-(u_xlat4.y) / u_xlat21.x);
      u_xlat21.x = (u_xlat21.x * 1.44269502162933349609f);
      u_xlat21.x = exp2(u_xlat21.x);
      u_xlat21.x = (-(u_xlat21.x) + 1.0f);
      u_xlat7 = vec4f(((-(x_104.x_B612SkyZenith.xyz) + x_104.x_B612SkyHorizonSun.xyz)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((u_xlat7.xyz * x_1501)).xyz, u_xlat7.w);
      u_xlat5.x = (u_xlat5.x * x_104.x_B612SkyParams.z);
      u_xlat19.x = (u_xlat19.x * u_xlat5.x);
      u_xlat7 = vec4f((((u_xlat19.xxx * u_xlat7.xyz) + x_104.x_B612SkyZenith.xyz)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((-(u_xlat6.xyz) + u_xlat7.xyz)).xyz, u_xlat7.w);
      let x_1543 = ((u_xlat21.xxx * u_xlat7.xyz) + u_xlat6.xyz);
      u_xlat5 = vec4f(x_1543.x, u_xlat5.y, x_1543.yz);
      u_xlat19.x = max(x_104.x_B612HazeParams.x, 0.10000000149011611938f);
      u_xlat19.x = (u_xlat19.x * -(u_xlat4.y));
      u_xlat19.x = (u_xlat19.x * 1.44269502162933349609f);
      u_xlat19.x = exp2(u_xlat19.x);
      u_xlat19.x = (u_xlat19.x * x_104.x_B612HazeColor.w);
      u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
      u_xlat6 = vec4f(((-(u_xlat5.xzw) + x_104.x_B612HazeColor.xyz)).xyz, u_xlat6.w);
      let x_1592 = ((u_xlat19.xxx * u_xlat6.xyz) + u_xlat5.xzw);
      u_xlat5 = vec4f(x_1592.x, u_xlat5.y, x_1592.yz);
      u_xlat6 = vec4f(max(x_104.x_B612SkyParams2.xyz, x_1599).xyz, u_xlat6.w);
      u_xlat19.x = (u_xlat28 * u_xlat6.x);
      u_xlat19.x = exp2(u_xlat19.x);
      u_xlat7 = vec4f(((u_xlat19.xxx * x_104.x_B612SkyGlow.xyz)).xyz, u_xlat7.w);
      u_xlat19.x = max(x_104.x_B612SkyGlow.w, 0.10000000149011611938f);
      u_xlat19.x = (-(u_xlat20.x) / u_xlat19.x);
      u_xlat19.x = (u_xlat19.x * 1.44269502162933349609f);
      u_xlat19.x = exp2(u_xlat19.x);
      u_xlat12 = ((u_xlat7.xyz * u_xlat19.xxx) + u_xlat5.xzw);
      u_xlat19.x = ((u_xlat4.x * 57.295780181884765625f) + -(x_104.x_B612SkyAnti.w));
      u_xlat19.x = (u_xlat19.x / u_xlat6.y);
      u_xlat24 = (-(u_xlat24) + 1.0f);
      u_xlat24 = log2(u_xlat24);
      u_xlat24 = (u_xlat24 * u_xlat6.z);
      u_xlat24 = exp2(u_xlat24);
      let x_1678 = (vec3f(u_xlat24) * x_104.x_B612SkyAnti.xyz);
      u_xlat5 = vec4f(x_1678.x, u_xlat5.y, x_1678.yz);
      u_xlat24 = (u_xlat19.x * -(u_xlat19.x));
      u_xlat24 = (u_xlat24 * 1.44269502162933349609f);
      u_xlat24 = exp2(u_xlat24);
      u_xlat4 = vec4f((((u_xlat5.xzw * vec3f(u_xlat24)) + u_xlat12)).xyz, u_xlat4.w);
      u_xlat24 = max(x_104.x_B612SunGlow.w, 1.0f);
      u_xlat26 = log2(u_xlat26);
      u_xlat24 = (u_xlat24 * u_xlat26);
      u_xlat24 = exp2(u_xlat24);
      u_xlat4 = vec4f((((x_104.x_B612SunGlow.xyz * vec3f(u_xlat24)) + u_xlat4.xyz)).xyz, u_xlat4.w);
      u_xlat24 = x_104.x_B612TimeParams.x;
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat26 = x_104.x_B612SkyCloud.z;
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat19.x = min(abs(u_xlat3.y), abs(u_xlat3.x));
      u_xlat28 = max(abs(u_xlat3.y), abs(u_xlat3.x));
      u_xlat28 = (1.0f / u_xlat28);
      u_xlat19.x = (u_xlat19.x * u_xlat28);
      u_xlat28 = (u_xlat19.x * u_xlat19.x);
      u_xlat5.x = ((u_xlat28 * 0.02083509974181652069f) + -0.08513300120830535889f);
      u_xlat5.x = ((u_xlat28 * u_xlat5.x) + 0.18014100193977355957f);
      u_xlat5.x = ((u_xlat28 * u_xlat5.x) + -0.33029949665069580078f);
      u_xlat28 = ((u_xlat28 * u_xlat5.x) + 0.99986600875854492188f);
      u_xlat5.x = (u_xlat19.x * u_xlat28);
      u_xlatb21 = (abs(u_xlat3.y) < abs(u_xlat3.x));
      u_xlat5.x = ((u_xlat5.x * -2.0f) + 1.57079637050628662109f);
      if (u_xlatb21) {
        x_1803 = u_xlat5.x;
      } else {
        x_1803 = 0.0f;
      }
      u_xlat5.x = x_1803;
      u_xlat19.x = ((u_xlat19.x * u_xlat28) + u_xlat5.x);
      u_xlatb28 = (u_xlat3.y < -(u_xlat3.y));
      u_xlat28 = select(0.0f, -3.14159274101257324219f, u_xlatb28);
      u_xlat19.x = (u_xlat19.x + u_xlat28);
      u_xlat28 = min(u_xlat3.y, u_xlat3.x);
      u_xlat5.x = max(u_xlat3.y, u_xlat3.x);
      u_xlatb28 = (u_xlat28 < -(u_xlat28));
      u_xlatb5 = (u_xlat5.x >= -(u_xlat5.x));
      u_xlatb28 = (u_xlatb28 & u_xlatb5);
      if (u_xlatb28) {
        x_1860 = -(u_xlat19.x);
      } else {
        x_1860 = u_xlat19.x;
      }
      u_xlat19.x = x_1860;
      let x_1879 = ((u_xlat19.xx * vec2f(57.295780181884765625f)) + -(x_104.x_B612SkyCloud.xy));
      u_xlat5 = vec4f(x_1879.x, u_xlat5.y, x_1879.y, u_xlat5.w);
      u_xlat6 = vec4f((((u_xlat5.xz * vec2f(0.00277777784503996372f)) + vec2f(0.5f))).xy, u_xlat6.zw);
      u_xlat6.z = 0.5f;
      u_xlat7 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat6.xz, 0.0f);
      u_xlat6 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat6.yz, 0.0f);
      let x_1912 = (u_xlat7.xyz * x_104.x_B612HdriDay0.xyz);
      u_xlat5 = vec4f(x_1912.x, u_xlat5.y, x_1912.yz);
      u_xlat19.x = dot(u_xlat5.xzw, x_1920);
      let x_1932 = ((u_xlat7.xyz * x_104.x_B612HdriDay0.xyz) + -(u_xlat19.xxx));
      u_xlat5 = vec4f(x_1932.x, u_xlat5.y, x_1932.yz);
      let x_1943 = ((x_104.x_B612HdriDay0.www * u_xlat5.xzw) + u_xlat19.xxx);
      u_xlat5 = vec4f(x_1943.x, u_xlat5.y, x_1943.yz);
      let x_1949 = max(u_xlat5.xzw, vec3f());
      u_xlat5 = vec4f(x_1949.x, u_xlat5.y, x_1949.yz);
      u_xlat19.x = max(x_104.x_B612HdriDay1.w, 0.10000000149011611938f);
      u_xlat19.x = (1.5f / u_xlat19.x);
      u_xlat19.x = (-(u_xlat19.x) + 1.0f);
      u_xlat19.x = max(u_xlat19.x, 0.0f);
      u_xlat19.x = (u_xlat19.x * u_xlat19.x);
      u_xlat7 = vec4f(((x_104.x_B612HdriDay1.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((u_xlat19.xxx * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      let x_1995 = (u_xlat5.xzw * u_xlat7.xyz);
      u_xlat5 = vec4f(x_1995.x, u_xlat5.y, x_1995.yz);
      u_xlat7 = vec4f(((-(x_104.x_B612HdriDay2.ww) + x_2003)).xy, u_xlat7.zw);
      u_xlat19.x = max(u_xlat7.y, 1.0f);
      u_xlat19.x = (u_xlat7.x / u_xlat19.x);
      u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
      u_xlat7 = vec4f(((x_104.x_B612HdriDay2.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((u_xlat19.xxx * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      let x_2039 = (u_xlat5.xzw * u_xlat7.xyz);
      u_xlat5 = vec4f(x_2039.x, u_xlat5.y, x_2039.yz);
      u_xlat7 = vec4f(max(x_104.x_B612SkyCloudWarm.xyz, vec3f(0.00100000004749745131f)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(log2(u_xlat7.xyz).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((vec3f(u_xlat24) * u_xlat7.xyz)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(exp2(u_xlat7.xyz).xyz, u_xlat7.w);
      let x_2071 = (u_xlat5.xzw * u_xlat7.xyz);
      u_xlat5 = vec4f(x_2071.x, u_xlat5.y, x_2071.yz);
      u_xlat19.x = (x_104.x_B612SkyCloudWarm.w + -1.0f);
      u_xlat24 = ((u_xlat24 * u_xlat19.x) + 1.0f);
      let x_2087 = (vec3f(u_xlat24) * u_xlat5.xzw);
      u_xlat5 = vec4f(x_2087.x, u_xlat5.y, x_2087.yz);
      u_xlat7 = vec4f(((u_xlat6.xyz * x_104.x_B612HdriDusk0.xyz)).xyz, u_xlat7.w);
      u_xlat24 = dot(u_xlat7.xyz, x_1920);
      u_xlat6 = vec4f((((u_xlat6.xyz * x_104.x_B612HdriDusk0.xyz) + -(vec3f(u_xlat24)))).xyz, u_xlat6.w);
      u_xlat6 = vec4f((((x_104.x_B612HdriDusk0.www * u_xlat6.xyz) + vec3f(u_xlat24))).xyz, u_xlat6.w);
      u_xlat6 = vec4f(max(u_xlat6.xyz, vec3f()).xyz, u_xlat6.w);
      u_xlat24 = max(x_104.x_B612HdriDusk1.w, 0.10000000149011611938f);
      u_xlat24 = (1.5f / u_xlat24);
      u_xlat24 = (-(u_xlat24) + 1.0f);
      u_xlat24 = max(u_xlat24, 0.0f);
      u_xlat24 = (u_xlat24 * u_xlat24);
      u_xlat7 = vec4f(((x_104.x_B612HdriDusk1.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((vec3f(u_xlat24) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat7.xyz)).xyz, u_xlat6.w);
      u_xlat7 = vec4f(((-(x_104.x_B612HdriDusk2.ww) + x_2003)).xy, u_xlat7.zw);
      u_xlat24 = max(u_xlat7.y, 1.0f);
      u_xlat24 = (u_xlat7.x / u_xlat24);
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat7 = vec4f(((x_104.x_B612HdriDusk2.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((vec3f(u_xlat24) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat7.xyz)).xyz, u_xlat6.w);
      u_xlat24 = (-(x_104.x_B612SkyCloud2.x) + x_104.x_B612SkyCloud2.y);
      u_xlat19.x = (-(x_104.x_B612SkyCloud2.x) + 1.5f);
      u_xlat24 = (1.0f / u_xlat24);
      u_xlat24 = (u_xlat24 * u_xlat19.x);
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat19.x = ((u_xlat24 * -2.0f) + 3.0f);
      u_xlat24 = (u_xlat24 * u_xlat24);
      u_xlat24 = (u_xlat24 * u_xlat19.x);
      u_xlat7 = vec4f(x_104.x_B612SkyCloudCut.xyz.xyz, u_xlat7.w);
      u_xlat7 = vec4f(clamp(u_xlat7.xyz, vec3f(0.0f), vec3f(1.0f)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((-(u_xlat7.xy) + x_470)).xy, u_xlat7.zw);
      u_xlat19.x = max(x_104.x_B612SkyCloudCut.w, 0.10000000149011611938f);
      u_xlat19.x = (1.0f / u_xlat19.x);
      u_xlat19.x = (u_xlat19.x * 1.5f);
      u_xlat19.x = min(u_xlat19.x, 1.0f);
      u_xlat28 = ((u_xlat19.x * -2.0f) + 3.0f);
      u_xlat19.x = (u_xlat19.x * u_xlat19.x);
      u_xlat19.x = ((-(u_xlat28) * u_xlat19.x) + 1.0f);
      u_xlat19.x = ((-(u_xlat7.z) * u_xlat19.x) + 1.0f);
      u_xlat19.x = (u_xlat19.x * u_xlat7.y);
      u_xlat28 = (u_xlat7.x * u_xlat7.w);
      u_xlat30 = ((u_xlat6.w * u_xlat19.x) + -(u_xlat28));
      u_xlat28 = ((u_xlat26 * u_xlat30) + u_xlat28);
      u_xlat28 = (u_xlat24 * u_xlat28);
      let x_2323 = (u_xlat5.xzw * u_xlat7.xxx);
      u_xlat5 = vec4f(x_2323.x, u_xlat5.y, x_2323.yz);
      u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat19.xxx) + -(u_xlat5.xzw))).xyz, u_xlat6.w);
      let x_2344 = ((vec3f(u_xlat26) * u_xlat6.xyz) + u_xlat5.xzw);
      u_xlat5 = vec4f(x_2344.x, u_xlat5.y, x_2344.yz);
      u_xlat6 = vec4f(((vec3f(u_xlat24) * u_xlat5.xzw)).xyz, u_xlat6.w);
      u_xlat26 = x_104.x_B612SkyNight.w;
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat19.x = dot(u_xlat6.xyz, x_1920);
      let x_2371 = ((-(u_xlat5.xzw) * vec3f(u_xlat24)) + u_xlat19.xxx);
      u_xlat5 = vec4f(x_2371.x, u_xlat5.y, x_2371.yz);
      let x_2381 = ((vec3f(u_xlat26) * u_xlat5.xzw) + u_xlat6.xyz);
      u_xlat5 = vec4f(x_2381.x, u_xlat5.y, x_2381.yz);
      u_xlat24 = ((u_xlat19.x * 1.5f) + 1.0f);
      u_xlat24 = (1.0f / u_xlat24);
      u_xlat24 = (u_xlat24 + -1.0f);
      u_xlat24 = ((u_xlat26 * u_xlat24) + 1.0f);
      let x_2400 = (vec3f(u_xlat24) * u_xlat5.xzw);
      u_xlat5 = vec4f(x_2400.x, u_xlat5.y, x_2400.yz);
      u_xlat6 = (-(x_104.x_B612SkyCloudNight.wxyz) + vec4f(1.0f));
      u_xlat14 = (u_xlat6.xxx * u_xlat6.yzw);
      let x_2419 = (u_xlat5.xzw * u_xlat14);
      u_xlat5 = vec4f(x_2419.x, u_xlat5.y, x_2419.yz);
      u_xlat24 = (u_xlat28 * u_xlat6.x);
      u_xlat26 = x_104.x_B612SkyCloud2.z;
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat14 = ((u_xlat4.xyz * vec3f(u_xlat24)) + -(u_xlat5.xzw));
      let x_2445 = ((vec3f(u_xlat26) * u_xlat14) + u_xlat5.xzw);
      u_xlat5 = vec4f(x_2445.x, u_xlat5.y, x_2445.yz);
      u_xlat24 = ((-(u_xlat28) * u_xlat6.x) + 1.0f);
      u_xlat4 = vec4f((((u_xlat4.xyz * vec3f(u_xlat24)) + u_xlat5.xzw)).xyz, u_xlat4.w);
      u_xlat4 = vec4f(((u_xlat5.yyy * u_xlat4.xyz)).xyz, u_xlat4.w);
    } else {
      u_xlatb24 = (0.5f < x_104.x_B612HdriParams.x);
      if (u_xlatb24) {
        u_xlat24 = x_104.x_B612TimeParams.x;
        u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
        u_xlat5 = vec4f(max(x_104.x_B612HdriParams.zw, vec2f(10.0f, 0.0f)).xy, u_xlat5.zw);
        u_xlat26 = (u_xlat5.x * x_104.x_B612CloudParams.x);
        u_xlat26 = (u_xlat26 * 0.15915493667125701904f);
        u_xlat19.x = (x_104.x_Time.y * 6.28318548202514648438f);
        u_xlat19.x = (u_xlat19.x / u_xlat5.x);
        u_xlat19.x = sin(u_xlat19.x);
        u_xlat28 = ((u_xlat26 * u_xlat19.x) + x_104.x_B612HdriDay3.x);
        u_xlat28 = ((-(u_xlat24) * x_104.x_B612HdriParams.y) + u_xlat28);
        u_xlat26 = ((u_xlat26 * u_xlat19.x) + x_104.x_B612HdriDusk3.x);
        u_xlat19.x = (-(u_xlat24) + 1.0f);
        u_xlat26 = ((u_xlat19.x * x_104.x_B612HdriParams.y) + u_xlat26);
        u_xlat19.x = min(abs(u_xlat3.y), abs(u_xlat3.x));
        u_xlat5.x = max(abs(u_xlat3.y), abs(u_xlat3.x));
        u_xlat5.x = (1.0f / u_xlat5.x);
        u_xlat19.x = (u_xlat19.x * u_xlat5.x);
        u_xlat5.x = (u_xlat19.x * u_xlat19.x);
        u_xlat21.x = ((u_xlat5.x * 0.02083509974181652069f) + -0.08513300120830535889f);
        u_xlat21.x = ((u_xlat5.x * u_xlat21.x) + 0.18014100193977355957f);
        u_xlat21.x = ((u_xlat5.x * u_xlat21.x) + -0.33029949665069580078f);
        u_xlat5.x = ((u_xlat5.x * u_xlat21.x) + 0.99986600875854492188f);
        u_xlat21.x = (u_xlat19.x * u_xlat5.x);
        u_xlatb29 = (abs(u_xlat3.y) < abs(u_xlat3.x));
        u_xlat21.x = ((u_xlat21.x * -2.0f) + 1.57079637050628662109f);
        if (u_xlatb29) {
          x_2625 = u_xlat21.x;
        } else {
          x_2625 = 0.0f;
        }
        u_xlat21.x = x_2625;
        u_xlat19.x = ((u_xlat19.x * u_xlat5.x) + u_xlat21.x);
        u_xlatb5 = (u_xlat3.y < -(u_xlat3.y));
        u_xlat5.x = select(0.0f, -3.14159274101257324219f, u_xlatb5);
        u_xlat19.x = (u_xlat19.x + u_xlat5.x);
        u_xlat5.x = min(u_xlat3.y, u_xlat3.x);
        u_xlat21.x = max(u_xlat3.y, u_xlat3.x);
        u_xlatb5 = (u_xlat5.x < -(u_xlat5.x));
        u_xlatb21 = (u_xlat21.x >= -(u_xlat21.x));
        u_xlatb5 = (u_xlatb21 & u_xlatb5);
        if (u_xlatb5) {
          x_2685 = -(u_xlat19.x);
        } else {
          x_2685 = u_xlat19.x;
        }
        u_xlat19.x = x_2685;
        u_xlat28 = ((u_xlat19.x * 57.295780181884765625f) + -(u_xlat28));
        u_xlat6.x = ((u_xlat28 * 0.00277777784503996372f) + 0.5f);
        u_xlat6.y = 0.5f;
        u_xlat22.y = 0.5f;
        let x_2715 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat6.xy, 0.0f).xyz;
        u_xlat5 = vec4f(x_2715.x, u_xlat5.y, x_2715.yz);
        u_xlat26 = ((u_xlat19.x * 57.295780181884765625f) + -(u_xlat26));
        u_xlat22.x = ((u_xlat26 * 0.00277777784503996372f) + 0.5f);
        u_xlat6 = vec4f(textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat22, 0.0f).xyz.xyz, u_xlat6.w);
        let x_2741 = (u_xlat5.xzw * x_104.x_B612HdriDay0.xyz);
        u_xlat5 = vec4f(x_2741.x, u_xlat5.y, x_2741.yz);
        u_xlatb26 = (0.0f < x_104.x_B612HdriDay3.z);
        u_xlat19.x = max(u_xlat5.z, u_xlat5.x);
        u_xlat19.x = max(u_xlat5.w, u_xlat19.x);
        u_xlat28 = (u_xlat19.x + -(x_104.x_B612HdriDay3.y));
        u_xlat28 = max(u_xlat28, 0.0f);
        u_xlat30 = (u_xlat28 / x_104.x_B612HdriDay3.z);
        u_xlat30 = (u_xlat30 + 1.0f);
        u_xlat28 = (u_xlat28 / u_xlat30);
        u_xlat28 = (u_xlat28 + x_104.x_B612HdriDay3.y);
        u_xlat19.x = max(u_xlat19.x, x_104.x_B612HdriDay3.y);
        u_xlat19.x = (u_xlat28 / u_xlat19.x);
        u_xlat7 = vec4f(((u_xlat19.xxx * u_xlat5.xzw)).xyz, u_xlat7.w);
        if (u_xlatb26) {
          x_2800 = u_xlat7.xyz;
        } else {
          x_2800 = u_xlat5.xzw;
        }
        u_xlat5 = vec4f(x_2800.x, u_xlat5.y, x_2800.yz);
        u_xlat26 = dot(u_xlat5.xzw, x_1920);
        let x_2819 = (-(vec3f(u_xlat26)) + u_xlat5.xzw);
        u_xlat5 = vec4f(x_2819.x, u_xlat5.y, x_2819.yz);
        let x_2830 = ((x_104.x_B612HdriDay0.www * u_xlat5.xzw) + vec3f(u_xlat26));
        u_xlat5 = vec4f(x_2830.x, u_xlat5.y, x_2830.yz);
        let x_2835 = max(u_xlat5.xzw, vec3f());
        u_xlat5 = vec4f(x_2835.x, u_xlat5.y, x_2835.yz);
        u_xlat26 = max(x_104.x_B612HdriDay1.w, 0.10000000149011611938f);
        u_xlat26 = (u_xlat5.y / u_xlat26);
        u_xlat26 = (-(u_xlat26) + 1.0f);
        u_xlat26 = max(u_xlat26, 0.0f);
        u_xlat26 = (u_xlat26 * u_xlat26);
        u_xlat7 = vec4f(((x_104.x_B612HdriDay1.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        let x_2871 = (u_xlat5.xzw * u_xlat7.xyz);
        u_xlat5 = vec4f(x_2871.x, u_xlat5.y, x_2871.yz);
        u_xlat26 = (x_104.x_B612HdriParams.w + -(x_104.x_B612HdriDay2.w));
        u_xlat19.x = (-(x_104.x_B612HdriDay2.w) + 90.0f);
        u_xlat19.x = max(u_xlat19.x, 1.0f);
        u_xlat26 = (u_xlat26 / u_xlat19.x);
        u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
        u_xlat7 = vec4f(((x_104.x_B612HdriDay2.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        let x_2913 = (u_xlat5.xzw * u_xlat7.xyz);
        u_xlat5 = vec4f(x_2913.x, u_xlat5.y, x_2913.yz);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_104.x_B612HdriDusk0.xyz)).xyz, u_xlat6.w);
        u_xlatb26 = (0.0f < x_104.x_B612HdriDusk3.z);
        u_xlat19.x = max(u_xlat6.y, u_xlat6.x);
        u_xlat19.x = max(u_xlat6.z, u_xlat19.x);
        u_xlat28 = (u_xlat19.x + -(x_104.x_B612HdriDusk3.y));
        u_xlat28 = max(u_xlat28, 0.0f);
        u_xlat30 = (u_xlat28 / x_104.x_B612HdriDusk3.z);
        u_xlat30 = (u_xlat30 + 1.0f);
        u_xlat28 = (u_xlat28 / u_xlat30);
        u_xlat28 = (u_xlat28 + x_104.x_B612HdriDusk3.y);
        u_xlat19.x = max(u_xlat19.x, x_104.x_B612HdriDusk3.y);
        u_xlat19.x = (u_xlat28 / u_xlat19.x);
        u_xlat7 = vec4f(((u_xlat19.xxx * u_xlat6.xyz)).xyz, u_xlat7.w);
        if (u_xlatb26) {
          x_2979 = u_xlat7.xyz;
        } else {
          x_2979 = u_xlat6.xyz;
        }
        u_xlat6 = vec4f(x_2979.xyz, u_xlat6.w);
        u_xlat26 = dot(u_xlat6.xyz, x_1920);
        u_xlat6 = vec4f(((-(vec3f(u_xlat26)) + u_xlat6.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f((((x_104.x_B612HdriDusk0.www * u_xlat6.xyz) + vec3f(u_xlat26))).xyz, u_xlat6.w);
        u_xlat6 = vec4f(max(u_xlat6.xyz, vec3f()).xyz, u_xlat6.w);
        u_xlat26 = max(x_104.x_B612HdriDusk1.w, 0.10000000149011611938f);
        u_xlat26 = (u_xlat5.y / u_xlat26);
        u_xlat26 = (-(u_xlat26) + 1.0f);
        u_xlat26 = max(u_xlat26, 0.0f);
        u_xlat26 = (u_xlat26 * u_xlat26);
        u_xlat7 = vec4f(((x_104.x_B612HdriDusk1.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat7.xyz)).xyz, u_xlat6.w);
        u_xlat26 = (x_104.x_B612HdriParams.w + -(x_104.x_B612HdriDusk2.w));
        u_xlat19.x = (-(x_104.x_B612HdriDusk2.w) + 90.0f);
        u_xlat19.x = max(u_xlat19.x, 1.0f);
        u_xlat26 = (u_xlat26 / u_xlat19.x);
        u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
        u_xlat7 = vec4f(((x_104.x_B612HdriDusk2.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat7.xyz) + -(u_xlat5.xzw))).xyz, u_xlat6.w);
        u_xlat4 = vec4f((((vec3f(u_xlat24) * u_xlat6.xyz) + u_xlat5.xzw)).xyz, u_xlat4.w);
      } else {
        u_xlat3.w = 0.02600000053644180298f;
        u_xlat24 = dot(u_xlat3.xyw, u_xlat3.xyw);
        u_xlat24 = inverseSqrt(u_xlat24);
        u_xlat26 = (u_xlat24 * u_xlat3.w);
        u_xlat19.x = ((-(u_xlat3.w) * u_xlat24) + 1.0f);
        u_xlat27 = sqrt(u_xlat19.x);
        u_xlat28 = ((u_xlat24 * -0.00048696179874241352f) + 0.07426100224256515503f);
        u_xlat28 = ((u_xlat28 * u_xlat26) + -0.21211439371109008789f);
        u_xlat28 = ((u_xlat28 * u_xlat26) + 1.57072877883911132812f);
        u_xlat27 = ((-(u_xlat28) * u_xlat27) + 1.57079637050628662109f);
        u_xlat28 = (u_xlat27 * 57.295780181884765625f);
        u_xlat3 = vec4f((((u_xlat3.xy * vec2f(u_xlat24)) + x_266)).xy, u_xlat3.zw);
        u_xlat24 = dot(u_xlat3.xy, u_xlat3.xy);
        u_xlat24 = inverseSqrt(u_xlat24);
        u_xlat3 = vec4f(((vec2f(u_xlat24) * u_xlat3.xy)).xy, u_xlat3.zw);
        u_xlat5 = vec4f(((x_104.x_B612SunDirection.xz + x_266)).xy, u_xlat5.zw);
        u_xlat24 = dot(u_xlat5.xy, u_xlat5.xy);
        u_xlat24 = inverseSqrt(u_xlat24);
        u_xlat5 = vec4f(((vec2f(u_xlat24) * u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat24 = dot(u_xlat3.xy, u_xlat5.xy);
        u_xlat24 = ((u_xlat24 * 0.5f) + 0.5f);
        u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
        u_xlat3 = vec4f(max(x_104.x_B612SkyParams.yw, x_1422).xy, u_xlat3.zw);
        u_xlat5.x = log2(u_xlat24);
        u_xlat3.x = (u_xlat3.x * u_xlat5.x);
        u_xlat3.x = exp2(u_xlat3.x);
        u_xlat13 = (-(x_104.x_B612SkyHorizon.xyz) + x_104.x_B612SkyHorizonSun.xyz);
        u_xlat13 = ((u_xlat3.xxx * u_xlat13) + x_104.x_B612SkyHorizon.xyz);
        u_xlat6.x = (x_104.x_B612SkyParams.x * 0.44999998807907104492f);
        u_xlat6.x = max(u_xlat6.x, 0.00999999977648258209f);
        u_xlat6.x = (-(u_xlat26) / u_xlat6.x);
        u_xlat6.x = (u_xlat6.x * 1.44269502162933349609f);
        u_xlat6.x = exp2(u_xlat6.x);
        u_xlat6.x = (-(u_xlat6.x) + 1.0f);
        u_xlat14 = (-(x_104.x_B612SkyZenith.xyz) + x_104.x_B612SkyHorizonSun.xyz);
        u_xlat14 = (u_xlat14 * x_1501);
        u_xlat3.x = (u_xlat3.x * x_104.x_B612SkyParams.z);
        u_xlat3.x = (u_xlat19.x * u_xlat3.x);
        u_xlat14 = ((u_xlat3.xxx * u_xlat14) + x_104.x_B612SkyZenith.xyz);
        u_xlat14 = (-(u_xlat13) + u_xlat14);
        u_xlat13 = ((u_xlat6.xxx * u_xlat14) + u_xlat13);
        u_xlat3.x = max(x_104.x_B612HazeParams.x, 0.10000000149011611938f);
        u_xlat26 = (-(u_xlat26) * u_xlat3.x);
        u_xlat26 = (u_xlat26 * 1.44269502162933349609f);
        u_xlat26 = exp2(u_xlat26);
        u_xlat26 = (u_xlat26 * x_104.x_B612HazeColor.w);
        u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
        u_xlat6 = vec4f(((-(u_xlat13) + x_104.x_B612HazeColor.xyz)).xyz, u_xlat6.w);
        u_xlat13 = ((vec3f(u_xlat26) * u_xlat6.xyz) + u_xlat13);
        u_xlat6 = vec4f(max(x_104.x_B612SkyParams2.xyz, x_1599).xyz, u_xlat6.w);
        u_xlat26 = (u_xlat5.x * u_xlat6.x);
        u_xlat26 = exp2(u_xlat26);
        u_xlat7 = vec4f(((vec3f(u_xlat26) * x_104.x_B612SkyGlow.xyz)).xyz, u_xlat7.w);
        u_xlat26 = max(x_104.x_B612SkyGlow.w, 0.10000000149011611938f);
        u_xlat26 = (-(u_xlat28) / u_xlat26);
        u_xlat26 = (u_xlat26 * 1.44269502162933349609f);
        u_xlat26 = exp2(u_xlat26);
        u_xlat5 = vec4f((((u_xlat7.xyz * vec3f(u_xlat26)) + u_xlat13)).xyz, u_xlat5.w);
        u_xlat26 = ((u_xlat27 * 57.295780181884765625f) + -(x_104.x_B612SkyAnti.w));
        u_xlat26 = (u_xlat26 / u_xlat6.y);
        u_xlat24 = (-(u_xlat24) + 1.0f);
        u_xlat24 = log2(u_xlat24);
        u_xlat24 = (u_xlat24 * u_xlat6.z);
        u_xlat24 = exp2(u_xlat24);
        let x_3406 = (vec3f(u_xlat24) * x_104.x_B612SkyAnti.xyz);
        u_xlat3 = vec4f(x_3406.x, u_xlat3.y, x_3406.yz);
        u_xlat24 = (u_xlat26 * -(u_xlat26));
        u_xlat24 = (u_xlat24 * 1.44269502162933349609f);
        u_xlat24 = exp2(u_xlat24);
        let x_3424 = ((u_xlat3.xzw * vec3f(u_xlat24)) + u_xlat5.xyz);
        u_xlat3 = vec4f(x_3424.x, u_xlat3.y, x_3424.yz);
        u_xlat4 = vec4f(((u_xlat3.yyy * u_xlat3.xzw)).xyz, u_xlat4.w);
      }
    }
    u_xlat0 = vec4f((((-(u_xlat1) * u_xlat0.xyz) + u_xlat4.xyz)).xyz, u_xlat0.w);
    u_xlat2 = ((vec3f(u_xlat25) * u_xlat0.xyz) + u_xlat2);
  }
  SV_Target0 = vec4f(u_xlat2.xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3f, @location(0) vs_TEXCOORD0_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Shared/Rendering/Shaders/B612_FarLandscape.shader
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

@group(1) @binding(3) var<uniform> x_74 : VGlobals;

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

//Assets/Shared/Rendering/Shaders/B612_FarLandscape.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_WarmColor : vec4f,
  /* @offset(32) */
  x_CoolColor : vec4f,
  /* @offset(48) */
  x_MacroTiling : f32,
  /* @offset(52) */
  x_Variation : f32,
  /* @offset(56) */
  x_Wrap : f32,
  /* @offset(60) */
  x_NormalSoften : f32,
  /* @offset(64) */
  x_AmbientBoost : f32,
  /* @offset(68) */
  x_CloudShadows : f32,
  /* @offset(72) */
  x_HazeDensity : f32,
  /* @offset(76) */
  x_HazeStart : f32,
  /* @offset(80) */
  x_HazeFalloff : f32,
  /* @offset(84) */
  x_MistHeight : f32,
  /* @offset(88) */
  x_MistDensity : f32,
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
  /* @offset(96) */
  x_B612SunDirection : vec4f,
  /* @offset(112) */
  x_B612TimeParams : vec4f,
  /* @offset(128) */
  x_B612SkyZenith : vec4f,
  /* @offset(144) */
  x_B612SkyHorizon : vec4f,
  /* @offset(160) */
  x_B612SkyHorizonSun : vec4f,
  /* @offset(176) */
  x_B612SkyParams : vec4f,
  /* @offset(192) */
  x_B612HazeColor : vec4f,
  /* @offset(208) */
  x_B612HazeParams : vec4f,
  /* @offset(224) */
  x_B612SkyGlow : vec4f,
  /* @offset(240) */
  x_B612SkyAnti : vec4f,
  /* @offset(256) */
  x_B612SkyParams2 : vec4f,
  /* @offset(272) */
  x_B612CloudTint : vec4f,
  /* @offset(288) */
  x_B612CloudParams : vec4f,
  /* @offset(304) */
  x_B612SunGlow : vec4f,
  /* @offset(320) */
  x_B612HdriParams : vec4f,
  /* @offset(336) */
  x_B612HdriDay0 : vec4f,
  /* @offset(352) */
  x_B612HdriDay1 : vec4f,
  /* @offset(368) */
  x_B612HdriDay2 : vec4f,
  /* @offset(384) */
  x_B612HdriDay3 : vec4f,
  /* @offset(400) */
  x_B612HdriDusk0 : vec4f,
  /* @offset(416) */
  x_B612HdriDusk1 : vec4f,
  /* @offset(432) */
  x_B612HdriDusk2 : vec4f,
  /* @offset(448) */
  x_B612HdriDusk3 : vec4f,
  /* @offset(464) */
  x_B612SkyCloud : vec4f,
  /* @offset(480) */
  x_B612SkyCloud2 : vec4f,
  /* @offset(496) */
  x_B612SkyCloudWarm : vec4f,
  /* @offset(512) */
  x_B612SkyNight : vec4f,
  /* @offset(528) */
  x_B612SkyCloudNight : vec4f,
  /* @offset(544) */
  x_B612SkyCloudCut : vec4f,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(2) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec3f;

@group(0) @binding(2) var x_MacroNoise : texture_2d<f32>;

@group(0) @binding(4) var sampler_MacroNoise : sampler;

@group(1) @binding(0) var<uniform> x_104 : PGlobals;

@group(1) @binding(1) var<uniform> x_1053 : UnityPerDraw;

@group(0) @binding(0) var x_B612HdriRingDay : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearRepeat : sampler;

@group(0) @binding(1) var x_B612HdriRingDusk : texture_2d<f32>;

var<private> vs_TEXCOORD2 : f32;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_266 = vec2f(0.00000999999974737875f, 0.0f);

const x_347 = vec2f(2.0f);

const x_350 = vec2f(3.0f);

const x_359 = vec2f(0.10310000181198120117f);

const x_372 = vec3f(33.3300018310546875f);

const x_401 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_404 = vec4f(0.10310000181198120117f);

const x_409 = vec4f(33.3300018310546875f);

const x_470 = vec2f(1.0f);

const x_559 = vec2f(2.02999997138977050781f);

const x_562 = vec2f(17.1000003814697265625f);

const x_1421 = vec2f(0.00999999977648258209f, 0.0f);

const x_1500 = vec3f(0.34999999403953552246f);

const x_1598 = vec3f(0.00999999977648258209f, 0.10000000149011611938f, 0.00999999977648258209f);

const x_1920 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_1978 = vec3f(-1.0f);

const x_1987 = vec3f(1.0f);

const x_2003 = vec2f(1.5f, 90.0f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat8 : vec3f;
  var u_xlat1 : vec3f;
  var u_xlat24 : f32;
  var u_xlat17 : f32;
  var u_xlat9 : vec3f;
  var u_xlat2 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat25 : f32;
  var u_xlatb10 : bool;
  var u_xlat10 : vec2f;
  var u_xlat26 : f32;
  var u_xlat18 : f32;
  var u_xlat19 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat12 : vec3f;
  var u_xlat20 : vec2f;
  var u_xlat11 : f32;
  var u_xlat6 : vec4f;
  var u_xlat28 : f32;
  var u_xlat27 : f32;
  var u_xlatb24 : bool;
  var u_xlatb25 : bool;
  var u_xlat21 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlatb21 : bool;
  var x_1803 : f32;
  var u_xlatb28 : bool;
  var u_xlatb5 : bool;
  var x_1860 : f32;
  var u_xlat30 : f32;
  var u_xlat14 : vec3f;
  var u_xlatb29 : bool;
  var x_2626 : f32;
  var x_2686 : f32;
  var u_xlat22 : vec2f;
  var u_xlatb26 : bool;
  var x_2801 : vec3f;
  var x_2980 : vec3f;
  var u_xlat13 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat8 = (u_xlat0.xxx * vs_TEXCOORD1);
  u_xlat1 = ((-(vs_TEXCOORD1) * u_xlat0.xxx) + vec3f(0.0f, 1.0f, 0.0f));
  let x_52 = vec3f(x_42.x_NormalSoften, x_42.x_NormalSoften, x_42.x_NormalSoften);
  u_xlat0 = vec4f((((vec3f(x_52.x, x_52.y, x_52.z) * u_xlat1) + u_xlat8)).xyz, u_xlat0.w);
  u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat24 = inverseSqrt(u_xlat24);
  u_xlat0 = vec4f(((vec3f(u_xlat24) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz * vec2f(x_42.x_MacroTiling))).xy, u_xlat1.z);
  let x_100 = u_xlat1;
  let x_107 = x_104.x_GlobalMipBias.x;
  let x_108 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_100.xy, x_107);
  u_xlat17 = x_108.x;
  u_xlat1 = vec3f((((u_xlat1.xy * vec2f(3.09999990463256835938f)) + vec2f(0.37000000476837158203f))).xy, u_xlat1.z);
  let x_123 = u_xlat1;
  let x_126 = x_104.x_GlobalMipBias.x;
  let x_127 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_123.xy, x_126);
  u_xlat1.x = x_127.x;
  u_xlat9.x = (u_xlat17 + -0.5f);
  u_xlat9.x = (u_xlat9.x + u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat9.x = (u_xlat9.x * x_42.x_Variation);
  u_xlat2 = (-(x_42.x_BaseColor.xyz) + x_42.x_WarmColor.xyz);
  u_xlat2 = ((u_xlat9.xxx * u_xlat2) + x_42.x_BaseColor.xyz);
  u_xlat9.x = (-(u_xlat17) + 0.5f);
  u_xlat9.x = (u_xlat9.x + u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat9.x = (u_xlat9.x * x_42.x_Variation);
  u_xlat3 = vec4f(((-(u_xlat2) + x_42.x_CoolColor.xyz)).xyz, u_xlat3.w);
  u_xlat9 = ((u_xlat9.xxx * u_xlat3.xyz) + u_xlat2);
  u_xlat1.x = ((u_xlat1.x * 0.20000000298023223877f) + 0.89999997615814208984f);
  u_xlat1 = (u_xlat1.xxx * u_xlat9);
  u_xlat25 = dot(u_xlat0.xyz, x_104.x_MainLightPosition.xyz);
  u_xlat25 = (u_xlat25 + x_42.x_Wrap);
  u_xlat2.x = (x_42.x_Wrap + 1.0f);
  u_xlat25 = (u_xlat25 / u_xlat2.x);
  u_xlat25 = clamp(u_xlat25, 0.0f, 1.0f);
  u_xlat2.x = (x_104.x_B612SunDirection.w * x_104.x_B612CloudTint.w);
  u_xlatb10 = (0.00100000004749745131f < u_xlat2.x);
  if (u_xlatb10) {
    u_xlat10 = (x_104.x_B612SunDirection.xz + x_266);
    u_xlat26 = dot(u_xlat10, u_xlat10);
    u_xlat26 = inverseSqrt(u_xlat26);
    u_xlat3 = vec4f(((vec2f(u_xlat26) * u_xlat10)).xy, u_xlat3.zw);
    u_xlat10.x = dot(vs_TEXCOORD0.xz, u_xlat3.xy);
    u_xlat3.z = -(u_xlat3.y);
    u_xlat18 = dot(vs_TEXCOORD0.zx, u_xlat3.xz);
    u_xlat26 = ((-(x_104.x_B612SunDirection.y) * 2.5f) + 1.0f);
    u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
    u_xlat26 = ((u_xlat26 * 2.0f) + 1.0f);
    u_xlat26 = (u_xlat26 * 260.0f);
    u_xlat3.x = (u_xlat10.x / u_xlat26);
    u_xlat3.y = (u_xlat18 * 0.00384615384973585606f);
    u_xlat10 = ((x_104.x_Time.yy * vec2f(0.00400000018998980522f, 0.00249999994412064552f)) + u_xlat3.xy);
    u_xlat3 = vec4f(floor(u_xlat10).xy, u_xlat3.zw);
    u_xlat19 = fract(u_xlat10);
    u_xlat4 = vec4f(((u_xlat19 * u_xlat19)).xy, u_xlat4.zw);
    u_xlat19 = ((-(u_xlat19) * x_347) + x_350);
    u_xlat19 = (u_xlat19 * u_xlat4.xy);
    u_xlat4 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat26 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((vec2f(u_xlat26) + u_xlat4.xy)).xy, u_xlat4.zw);
    u_xlat26 = (u_xlat4.y + u_xlat4.x);
    u_xlat26 = (u_xlat4.x * u_xlat26);
    u_xlat26 = fract(u_xlat26);
    u_xlat4 = (u_xlat3.yxyx + x_401);
    u_xlat4 = (u_xlat4 * x_404);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = (u_xlat4 + x_409);
    u_xlat5.x = dot(u_xlat4.yxy, u_xlat5.xyy);
    u_xlat4 = vec4f(((u_xlat4.yx + u_xlat5.xx)).xy, u_xlat4.zw);
    u_xlat12.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat12.x);
    u_xlat12.x = dot(u_xlat4.wzw, u_xlat5.zww);
    u_xlat12 = vec3f(((u_xlat12.xx + u_xlat4.wz)).xy, u_xlat12.z);
    u_xlat20.x = (u_xlat12.y + u_xlat12.x);
    u_xlat4.y = (u_xlat12.x * u_xlat20.x);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + x_470)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat20.x = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((u_xlat3.xy + u_xlat20.xx)).xy, u_xlat3.zw);
    u_xlat11 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat11);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat11 = (-(u_xlat26) + u_xlat4.x);
    u_xlat26 = ((u_xlat19.x * u_xlat11) + u_xlat26);
    u_xlat3.x = (-(u_xlat4.y) + u_xlat3.x);
    u_xlat3.x = ((u_xlat19.x * u_xlat3.x) + u_xlat4.y);
    u_xlat3.x = (-(u_xlat26) + u_xlat3.x);
    u_xlat26 = ((u_xlat19.y * u_xlat3.x) + u_xlat26);
    u_xlat10 = ((u_xlat10 * x_559) + x_562);
    u_xlat3 = vec4f(floor(u_xlat10).xy, u_xlat3.zw);
    u_xlat19 = fract(u_xlat10);
    u_xlat4 = vec4f(((u_xlat19 * u_xlat19)).xy, u_xlat4.zw);
    u_xlat19 = ((-(u_xlat19) * x_347) + x_350);
    u_xlat19 = (u_xlat19 * u_xlat4.xy);
    u_xlat4 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat20.x = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((u_xlat20.xx + u_xlat4.xy)).xy, u_xlat4.zw);
    u_xlat12.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat12.x);
    u_xlat5 = (u_xlat3.yxyx + x_401);
    u_xlat5 = (u_xlat5 * x_404);
    u_xlat5 = fract(u_xlat5);
    u_xlat6 = (u_xlat5 + x_409);
    u_xlat12.x = dot(u_xlat5.yxy, u_xlat6.xyy);
    u_xlat12 = vec3f(((u_xlat12.xx + u_xlat5.yx)).xy, u_xlat12.z);
    u_xlat20.x = (u_xlat12.y + u_xlat12.x);
    u_xlat4.y = (u_xlat12.x * u_xlat20.x);
    u_xlat20.x = dot(u_xlat5.wzw, u_xlat6.zww);
    u_xlat20 = (u_xlat20.xx + u_xlat5.wz);
    u_xlat28 = (u_xlat20.y + u_xlat20.x);
    u_xlat4.z = (u_xlat20.x * u_xlat28);
    u_xlat4 = vec4f(fract(u_xlat4.xyz).xyz, u_xlat4.w);
    u_xlat3 = vec4f(((u_xlat3.xy + x_470)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat28 = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((u_xlat3.xy + vec2f(u_xlat28))).xy, u_xlat3.zw);
    u_xlat11 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat11);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat11 = (-(u_xlat4.x) + u_xlat4.y);
    u_xlat11 = ((u_xlat19.x * u_xlat11) + u_xlat4.x);
    u_xlat3.x = (-(u_xlat4.z) + u_xlat3.x);
    u_xlat3.x = ((u_xlat19.x * u_xlat3.x) + u_xlat4.z);
    u_xlat3.x = (-(u_xlat11) + u_xlat3.x);
    u_xlat3.x = ((u_xlat19.y * u_xlat3.x) + u_xlat11);
    u_xlat3.x = (u_xlat3.x * 0.25f);
    u_xlat26 = ((u_xlat26 * 0.5f) + u_xlat3.x);
    u_xlat10 = ((u_xlat10 * x_559) + x_562);
    u_xlat3 = vec4f(floor(u_xlat10).xy, u_xlat3.zw);
    u_xlat10 = fract(u_xlat10);
    u_xlat19 = (u_xlat10 * u_xlat10);
    u_xlat10 = ((-(u_xlat10) * x_347) + x_350);
    u_xlat10 = (u_xlat10 * u_xlat19);
    u_xlat19 = (u_xlat3.xy * x_359);
    u_xlat19 = fract(u_xlat19);
    u_xlat4 = vec4f(((u_xlat19.yxx + x_372)).xyz, u_xlat4.w);
    u_xlat4.x = dot(u_xlat19.xyx, u_xlat4.xyz);
    u_xlat19 = (u_xlat19 + u_xlat4.xx);
    u_xlat27 = (u_xlat19.y + u_xlat19.x);
    u_xlat3.z = (u_xlat19.x * u_xlat27);
    u_xlat4 = (u_xlat3.yxyx + x_401);
    u_xlat4 = (u_xlat4 * x_404);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = (u_xlat4 + x_409);
    u_xlat27 = dot(u_xlat4.yxy, u_xlat5.xyy);
    u_xlat4 = vec4f(((vec2f(u_xlat27) + u_xlat4.yx)).xy, u_xlat4.zw);
    u_xlat27 = (u_xlat4.y + u_xlat4.x);
    u_xlat3.w = (u_xlat4.x * u_xlat27);
    u_xlat4.x = dot(u_xlat4.wzw, u_xlat5.zww);
    u_xlat4 = vec4f(((u_xlat4.xx + u_xlat4.wz)).xy, u_xlat4.zw);
    u_xlat12.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat12.x);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat3 = vec4f(((u_xlat3.xy + x_470)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat3.zw);
    u_xlat3 = fract(u_xlat3);
    u_xlat12 = (u_xlat3.yxx + x_372);
    u_xlat12.x = dot(u_xlat3.xyx, u_xlat12);
    u_xlat3 = vec4f(((u_xlat3.xy + u_xlat12.xx)).xy, u_xlat3.zw);
    u_xlat11 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat11);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat11 = (-(u_xlat3.z) + u_xlat3.w);
    u_xlat11 = ((u_xlat10.x * u_xlat11) + u_xlat3.z);
    u_xlat3.x = (-(u_xlat4.x) + u_xlat3.x);
    u_xlat10.x = ((u_xlat10.x * u_xlat3.x) + u_xlat4.x);
    u_xlat10.x = (-(u_xlat11) + u_xlat10.x);
    u_xlat10.x = ((u_xlat10.y * u_xlat10.x) + u_xlat11);
    u_xlat10.x = ((u_xlat10.x * 0.125f) + u_xlat26);
    u_xlat10.x = ((u_xlat10.x * 1.14285719394683837891f) + -0.51999998092651367188f);
    u_xlat10.x = (u_xlat10.x * 7.1428546905517578125f);
    u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
    u_xlat18 = ((u_xlat10.x * -2.0f) + 3.0f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * u_xlat18);
    u_xlat2.x = ((-(u_xlat2.x) * u_xlat10.x) + 1.0f);
  } else {
    u_xlat2.x = 1.0f;
  }
  u_xlat2.x = (u_xlat2.x + -1.0f);
  u_xlat2.x = ((x_42.x_CloudShadows * u_xlat2.x) + 1.0f);
  u_xlat25 = (u_xlat25 * u_xlat2.x);
  u_xlat0.w = 1.0f;
  u_xlat2.x = dot(x_1053.unity_SHAr, u_xlat0);
  u_xlat2.y = dot(x_1053.unity_SHAg, u_xlat0);
  u_xlat2.z = dot(x_1053.unity_SHAb, u_xlat0);
  u_xlat3 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat4.x = dot(x_1053.unity_SHBr, u_xlat3);
  u_xlat4.y = dot(x_1053.unity_SHBg, u_xlat3);
  u_xlat4.z = dot(x_1053.unity_SHBb, u_xlat3);
  u_xlat8.x = (u_xlat0.y * u_xlat0.y);
  u_xlat0.x = ((u_xlat0.x * u_xlat0.x) + -(u_xlat8.x));
  u_xlat0 = vec4f((((x_1053.unity_SHC.xyz * u_xlat0.xxx) + u_xlat4.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + u_xlat2)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * vec3f(x_42.x_AmbientBoost))).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_104.x_MainLightColor.xyz * vec3f(u_xlat25)) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat2 = (u_xlat0.xyz * u_xlat1);
  u_xlatb24 = (x_104.x_B612SunDirection.w < 0.5f);
  u_xlatb25 = (0.0f >= x_42.x_HazeDensity);
  u_xlatb24 = (u_xlatb24 | u_xlatb25);
  if (!(u_xlatb24)) {
    u_xlat3 = vec4f(((vs_TEXCOORD0 + -(x_104.x_WorldSpaceCameraPos))).xyz, u_xlat3.w);
    u_xlat24 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat24 = sqrt(u_xlat24);
    u_xlat25 = (u_xlat24 + -(x_42.x_HazeStart));
    u_xlat25 = max(u_xlat25, 0.0f);
    u_xlat26 = (u_xlat25 * x_42.x_HazeDensity);
    u_xlat26 = max(u_xlat26, 0.00000099999999747524f);
    u_xlat11 = max(x_42.x_HazeFalloff, 0.5f);
    u_xlat26 = log2(u_xlat26);
    u_xlat26 = (u_xlat26 * u_xlat11);
    u_xlat26 = exp2(u_xlat26);
    u_xlat26 = (u_xlat26 * -1.44269502162933349609f);
    u_xlat26 = exp2(u_xlat26);
    u_xlat26 = (-(u_xlat26) + 1.0f);
    u_xlat11 = (-(vs_TEXCOORD0.y) + x_42.x_MistHeight);
    u_xlat27 = (abs(x_42.x_MistHeight) + 5.0f);
    u_xlat11 = (u_xlat11 / u_xlat27);
    u_xlat11 = clamp(u_xlat11, 0.0f, 1.0f);
    u_xlat25 = (-(u_xlat25) * x_42.x_MistDensity);
    u_xlat25 = (u_xlat11 * u_xlat25);
    u_xlat25 = (u_xlat25 * 1.44269502162933349609f);
    u_xlat25 = exp2(u_xlat25);
    u_xlat25 = (-(u_xlat25) + 1.0f);
    u_xlat26 = (-(u_xlat26) + 1.0f);
    u_xlat25 = (-(u_xlat25) + 1.0f);
    u_xlat25 = ((-(u_xlat26) * u_xlat25) + 1.0f);
    u_xlat25 = max(u_xlat25, 0.0f);
    u_xlat24 = max(u_xlat24, 0.00100000004749745131f);
    u_xlat3 = vec4f(((u_xlat3.xz / vec2f(u_xlat24))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + x_266)).xy, u_xlat3.zw);
    u_xlat24 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat24 = inverseSqrt(u_xlat24);
    u_xlat3 = vec4f(((vec2f(u_xlat24) * u_xlat3.xy)).xy, u_xlat3.zw);
    u_xlatb24 = (1.5f < x_104.x_B612HdriParams.x);
    if (u_xlatb24) {
      u_xlat3.z = 0.02600000053644180298f;
      u_xlat24 = dot(u_xlat3.xyz, u_xlat3.xyz);
      u_xlat24 = inverseSqrt(u_xlat24);
      u_xlat4 = vec4f(((vec3f(u_xlat24) * u_xlat3.xzy)).xyz, u_xlat4.w);
      u_xlat26 = dot(u_xlat4.xyz, x_104.x_B612SunDirection.xyz);
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat19.x = ((-(u_xlat3.z) * u_xlat24) + 1.0f);
      u_xlat4.x = sqrt(u_xlat19.x);
      u_xlat20.x = ((u_xlat24 * -0.00048696179874241352f) + 0.07426100224256515503f);
      u_xlat20.x = ((u_xlat20.x * u_xlat4.y) + -0.21211439371109008789f);
      u_xlat20.x = ((u_xlat20.x * u_xlat4.y) + 1.57072877883911132812f);
      u_xlat4.x = ((-(u_xlat20.x) * u_xlat4.x) + 1.57079637050628662109f);
      u_xlat20.x = (u_xlat4.x * 57.295780181884765625f);
      u_xlat5 = vec4f((((u_xlat3.xy * vec2f(u_xlat24)) + x_266)).xy, u_xlat5.zw);
      u_xlat24 = dot(u_xlat5.xy, u_xlat5.xy);
      u_xlat24 = inverseSqrt(u_xlat24);
      u_xlat5 = vec4f(((vec2f(u_xlat24) * u_xlat5.xy)).xy, u_xlat5.zw);
      u_xlat21 = (x_104.x_B612SunDirection.xz + x_266);
      u_xlat24 = dot(u_xlat21, u_xlat21);
      u_xlat24 = inverseSqrt(u_xlat24);
      u_xlat21 = (vec2f(u_xlat24) * u_xlat21);
      u_xlat24 = dot(u_xlat5.xy, u_xlat21);
      u_xlat24 = ((u_xlat24 * 0.5f) + 0.5f);
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat5 = vec4f(max(x_104.x_B612SkyParams.yw, x_1421).xy, u_xlat5.zw);
      u_xlat28 = log2(u_xlat24);
      u_xlat5.x = (u_xlat28 * u_xlat5.x);
      u_xlat5.x = exp2(u_xlat5.x);
      u_xlat6 = vec4f(((-(x_104.x_B612SkyHorizon.xyz) + x_104.x_B612SkyHorizonSun.xyz)).xyz, u_xlat6.w);
      u_xlat6 = vec4f((((u_xlat5.xxx * u_xlat6.xyz) + x_104.x_B612SkyHorizon.xyz)).xyz, u_xlat6.w);
      u_xlat21.x = (x_104.x_B612SkyParams.x * 0.44999998807907104492f);
      u_xlat21.x = max(u_xlat21.x, 0.00999999977648258209f);
      u_xlat21.x = (-(u_xlat4.y) / u_xlat21.x);
      u_xlat21.x = (u_xlat21.x * 1.44269502162933349609f);
      u_xlat21.x = exp2(u_xlat21.x);
      u_xlat21.x = (-(u_xlat21.x) + 1.0f);
      u_xlat7 = vec4f(((-(x_104.x_B612SkyZenith.xyz) + x_104.x_B612SkyHorizonSun.xyz)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((u_xlat7.xyz * x_1500)).xyz, u_xlat7.w);
      u_xlat5.x = (u_xlat5.x * x_104.x_B612SkyParams.z);
      u_xlat19.x = (u_xlat19.x * u_xlat5.x);
      u_xlat7 = vec4f((((u_xlat19.xxx * u_xlat7.xyz) + x_104.x_B612SkyZenith.xyz)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((-(u_xlat6.xyz) + u_xlat7.xyz)).xyz, u_xlat7.w);
      let x_1542 = ((u_xlat21.xxx * u_xlat7.xyz) + u_xlat6.xyz);
      u_xlat5 = vec4f(x_1542.x, u_xlat5.y, x_1542.yz);
      u_xlat19.x = max(x_104.x_B612HazeParams.x, 0.10000000149011611938f);
      u_xlat19.x = (u_xlat19.x * -(u_xlat4.y));
      u_xlat19.x = (u_xlat19.x * 1.44269502162933349609f);
      u_xlat19.x = exp2(u_xlat19.x);
      u_xlat19.x = (u_xlat19.x * x_104.x_B612HazeColor.w);
      u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
      u_xlat6 = vec4f(((-(u_xlat5.xzw) + x_104.x_B612HazeColor.xyz)).xyz, u_xlat6.w);
      let x_1591 = ((u_xlat19.xxx * u_xlat6.xyz) + u_xlat5.xzw);
      u_xlat5 = vec4f(x_1591.x, u_xlat5.y, x_1591.yz);
      u_xlat6 = vec4f(max(x_104.x_B612SkyParams2.xyz, x_1598).xyz, u_xlat6.w);
      u_xlat19.x = (u_xlat28 * u_xlat6.x);
      u_xlat19.x = exp2(u_xlat19.x);
      u_xlat7 = vec4f(((u_xlat19.xxx * x_104.x_B612SkyGlow.xyz)).xyz, u_xlat7.w);
      u_xlat19.x = max(x_104.x_B612SkyGlow.w, 0.10000000149011611938f);
      u_xlat19.x = (-(u_xlat20.x) / u_xlat19.x);
      u_xlat19.x = (u_xlat19.x * 1.44269502162933349609f);
      u_xlat19.x = exp2(u_xlat19.x);
      u_xlat12 = ((u_xlat7.xyz * u_xlat19.xxx) + u_xlat5.xzw);
      u_xlat19.x = ((u_xlat4.x * 57.295780181884765625f) + -(x_104.x_B612SkyAnti.w));
      u_xlat19.x = (u_xlat19.x / u_xlat6.y);
      u_xlat24 = (-(u_xlat24) + 1.0f);
      u_xlat24 = log2(u_xlat24);
      u_xlat24 = (u_xlat24 * u_xlat6.z);
      u_xlat24 = exp2(u_xlat24);
      let x_1678 = (vec3f(u_xlat24) * x_104.x_B612SkyAnti.xyz);
      u_xlat5 = vec4f(x_1678.x, u_xlat5.y, x_1678.yz);
      u_xlat24 = (u_xlat19.x * -(u_xlat19.x));
      u_xlat24 = (u_xlat24 * 1.44269502162933349609f);
      u_xlat24 = exp2(u_xlat24);
      u_xlat4 = vec4f((((u_xlat5.xzw * vec3f(u_xlat24)) + u_xlat12)).xyz, u_xlat4.w);
      u_xlat24 = max(x_104.x_B612SunGlow.w, 1.0f);
      u_xlat26 = log2(u_xlat26);
      u_xlat24 = (u_xlat24 * u_xlat26);
      u_xlat24 = exp2(u_xlat24);
      u_xlat4 = vec4f((((x_104.x_B612SunGlow.xyz * vec3f(u_xlat24)) + u_xlat4.xyz)).xyz, u_xlat4.w);
      u_xlat24 = x_104.x_B612TimeParams.x;
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat26 = x_104.x_B612SkyCloud.z;
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat19.x = min(abs(u_xlat3.y), abs(u_xlat3.x));
      u_xlat28 = max(abs(u_xlat3.y), abs(u_xlat3.x));
      u_xlat28 = (1.0f / u_xlat28);
      u_xlat19.x = (u_xlat19.x * u_xlat28);
      u_xlat28 = (u_xlat19.x * u_xlat19.x);
      u_xlat5.x = ((u_xlat28 * 0.02083509974181652069f) + -0.08513300120830535889f);
      u_xlat5.x = ((u_xlat28 * u_xlat5.x) + 0.18014100193977355957f);
      u_xlat5.x = ((u_xlat28 * u_xlat5.x) + -0.33029949665069580078f);
      u_xlat28 = ((u_xlat28 * u_xlat5.x) + 0.99986600875854492188f);
      u_xlat5.x = (u_xlat19.x * u_xlat28);
      u_xlatb21 = (abs(u_xlat3.y) < abs(u_xlat3.x));
      u_xlat5.x = ((u_xlat5.x * -2.0f) + 1.57079637050628662109f);
      if (u_xlatb21) {
        x_1803 = u_xlat5.x;
      } else {
        x_1803 = 0.0f;
      }
      u_xlat5.x = x_1803;
      u_xlat19.x = ((u_xlat19.x * u_xlat28) + u_xlat5.x);
      u_xlatb28 = (u_xlat3.y < -(u_xlat3.y));
      u_xlat28 = select(0.0f, -3.14159274101257324219f, u_xlatb28);
      u_xlat19.x = (u_xlat19.x + u_xlat28);
      u_xlat28 = min(u_xlat3.y, u_xlat3.x);
      u_xlat5.x = max(u_xlat3.y, u_xlat3.x);
      u_xlatb28 = (u_xlat28 < -(u_xlat28));
      u_xlatb5 = (u_xlat5.x >= -(u_xlat5.x));
      u_xlatb28 = (u_xlatb28 & u_xlatb5);
      if (u_xlatb28) {
        x_1860 = -(u_xlat19.x);
      } else {
        x_1860 = u_xlat19.x;
      }
      u_xlat19.x = x_1860;
      let x_1879 = ((u_xlat19.xx * vec2f(57.295780181884765625f)) + -(x_104.x_B612SkyCloud.xy));
      u_xlat5 = vec4f(x_1879.x, u_xlat5.y, x_1879.y, u_xlat5.w);
      u_xlat6 = vec4f((((u_xlat5.xz * vec2f(0.00277777784503996372f)) + vec2f(0.5f))).xy, u_xlat6.zw);
      u_xlat6.z = 0.5f;
      u_xlat7 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat6.xz, 0.0f);
      u_xlat6 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat6.yz, 0.0f);
      let x_1912 = (u_xlat7.xyz * x_104.x_B612HdriDay0.xyz);
      u_xlat5 = vec4f(x_1912.x, u_xlat5.y, x_1912.yz);
      u_xlat19.x = dot(u_xlat5.xzw, x_1920);
      let x_1932 = ((u_xlat7.xyz * x_104.x_B612HdriDay0.xyz) + -(u_xlat19.xxx));
      u_xlat5 = vec4f(x_1932.x, u_xlat5.y, x_1932.yz);
      let x_1943 = ((x_104.x_B612HdriDay0.www * u_xlat5.xzw) + u_xlat19.xxx);
      u_xlat5 = vec4f(x_1943.x, u_xlat5.y, x_1943.yz);
      let x_1949 = max(u_xlat5.xzw, vec3f());
      u_xlat5 = vec4f(x_1949.x, u_xlat5.y, x_1949.yz);
      u_xlat19.x = max(x_104.x_B612HdriDay1.w, 0.10000000149011611938f);
      u_xlat19.x = (1.5f / u_xlat19.x);
      u_xlat19.x = (-(u_xlat19.x) + 1.0f);
      u_xlat19.x = max(u_xlat19.x, 0.0f);
      u_xlat19.x = (u_xlat19.x * u_xlat19.x);
      u_xlat7 = vec4f(((x_104.x_B612HdriDay1.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((u_xlat19.xxx * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      let x_1995 = (u_xlat5.xzw * u_xlat7.xyz);
      u_xlat5 = vec4f(x_1995.x, u_xlat5.y, x_1995.yz);
      u_xlat7 = vec4f(((-(x_104.x_B612HdriDay2.ww) + x_2003)).xy, u_xlat7.zw);
      u_xlat19.x = max(u_xlat7.y, 1.0f);
      u_xlat19.x = (u_xlat7.x / u_xlat19.x);
      u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
      u_xlat7 = vec4f(((x_104.x_B612HdriDay2.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((u_xlat19.xxx * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      let x_2039 = (u_xlat5.xzw * u_xlat7.xyz);
      u_xlat5 = vec4f(x_2039.x, u_xlat5.y, x_2039.yz);
      u_xlat7 = vec4f(max(x_104.x_B612SkyCloudWarm.xyz, vec3f(0.00100000004749745131f)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(log2(u_xlat7.xyz).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((vec3f(u_xlat24) * u_xlat7.xyz)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(exp2(u_xlat7.xyz).xyz, u_xlat7.w);
      let x_2071 = (u_xlat5.xzw * u_xlat7.xyz);
      u_xlat5 = vec4f(x_2071.x, u_xlat5.y, x_2071.yz);
      u_xlat19.x = (x_104.x_B612SkyCloudWarm.w + -1.0f);
      u_xlat24 = ((u_xlat24 * u_xlat19.x) + 1.0f);
      let x_2087 = (vec3f(u_xlat24) * u_xlat5.xzw);
      u_xlat5 = vec4f(x_2087.x, u_xlat5.y, x_2087.yz);
      u_xlat7 = vec4f(((u_xlat6.xyz * x_104.x_B612HdriDusk0.xyz)).xyz, u_xlat7.w);
      u_xlat24 = dot(u_xlat7.xyz, x_1920);
      u_xlat6 = vec4f((((u_xlat6.xyz * x_104.x_B612HdriDusk0.xyz) + -(vec3f(u_xlat24)))).xyz, u_xlat6.w);
      u_xlat6 = vec4f((((x_104.x_B612HdriDusk0.www * u_xlat6.xyz) + vec3f(u_xlat24))).xyz, u_xlat6.w);
      u_xlat6 = vec4f(max(u_xlat6.xyz, vec3f()).xyz, u_xlat6.w);
      u_xlat24 = max(x_104.x_B612HdriDusk1.w, 0.10000000149011611938f);
      u_xlat24 = (1.5f / u_xlat24);
      u_xlat24 = (-(u_xlat24) + 1.0f);
      u_xlat24 = max(u_xlat24, 0.0f);
      u_xlat24 = (u_xlat24 * u_xlat24);
      u_xlat7 = vec4f(((x_104.x_B612HdriDusk1.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((vec3f(u_xlat24) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat7.xyz)).xyz, u_xlat6.w);
      u_xlat7 = vec4f(((-(x_104.x_B612HdriDusk2.ww) + x_2003)).xy, u_xlat7.zw);
      u_xlat24 = max(u_xlat7.y, 1.0f);
      u_xlat24 = (u_xlat7.x / u_xlat24);
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat7 = vec4f(((x_104.x_B612HdriDusk2.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((vec3f(u_xlat24) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat7.xyz)).xyz, u_xlat6.w);
      u_xlat24 = (-(x_104.x_B612SkyCloud2.x) + x_104.x_B612SkyCloud2.y);
      u_xlat19.x = (-(x_104.x_B612SkyCloud2.x) + 1.5f);
      u_xlat24 = (1.0f / u_xlat24);
      u_xlat24 = (u_xlat24 * u_xlat19.x);
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat19.x = ((u_xlat24 * -2.0f) + 3.0f);
      u_xlat24 = (u_xlat24 * u_xlat24);
      u_xlat24 = (u_xlat24 * u_xlat19.x);
      u_xlat7 = vec4f(x_104.x_B612SkyCloudCut.xyz.xyz, u_xlat7.w);
      u_xlat7 = vec4f(clamp(u_xlat7.xyz, vec3f(0.0f), vec3f(1.0f)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((-(u_xlat7.xy) + x_470)).xy, u_xlat7.zw);
      u_xlat19.x = max(x_104.x_B612SkyCloudCut.w, 0.10000000149011611938f);
      u_xlat19.x = (1.0f / u_xlat19.x);
      u_xlat19.x = (u_xlat19.x * 1.5f);
      u_xlat19.x = min(u_xlat19.x, 1.0f);
      u_xlat28 = ((u_xlat19.x * -2.0f) + 3.0f);
      u_xlat19.x = (u_xlat19.x * u_xlat19.x);
      u_xlat19.x = ((-(u_xlat28) * u_xlat19.x) + 1.0f);
      u_xlat19.x = ((-(u_xlat7.z) * u_xlat19.x) + 1.0f);
      u_xlat19.x = (u_xlat19.x * u_xlat7.y);
      u_xlat28 = (u_xlat7.x * u_xlat7.w);
      u_xlat30 = ((u_xlat6.w * u_xlat19.x) + -(u_xlat28));
      u_xlat28 = ((u_xlat26 * u_xlat30) + u_xlat28);
      u_xlat28 = (u_xlat24 * u_xlat28);
      let x_2324 = (u_xlat5.xzw * u_xlat7.xxx);
      u_xlat5 = vec4f(x_2324.x, u_xlat5.y, x_2324.yz);
      u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat19.xxx) + -(u_xlat5.xzw))).xyz, u_xlat6.w);
      let x_2345 = ((vec3f(u_xlat26) * u_xlat6.xyz) + u_xlat5.xzw);
      u_xlat5 = vec4f(x_2345.x, u_xlat5.y, x_2345.yz);
      u_xlat6 = vec4f(((vec3f(u_xlat24) * u_xlat5.xzw)).xyz, u_xlat6.w);
      u_xlat26 = x_104.x_B612SkyNight.w;
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat19.x = dot(u_xlat6.xyz, x_1920);
      let x_2372 = ((-(u_xlat5.xzw) * vec3f(u_xlat24)) + u_xlat19.xxx);
      u_xlat5 = vec4f(x_2372.x, u_xlat5.y, x_2372.yz);
      let x_2382 = ((vec3f(u_xlat26) * u_xlat5.xzw) + u_xlat6.xyz);
      u_xlat5 = vec4f(x_2382.x, u_xlat5.y, x_2382.yz);
      u_xlat24 = ((u_xlat19.x * 1.5f) + 1.0f);
      u_xlat24 = (1.0f / u_xlat24);
      u_xlat24 = (u_xlat24 + -1.0f);
      u_xlat24 = ((u_xlat26 * u_xlat24) + 1.0f);
      let x_2401 = (vec3f(u_xlat24) * u_xlat5.xzw);
      u_xlat5 = vec4f(x_2401.x, u_xlat5.y, x_2401.yz);
      u_xlat6 = (-(x_104.x_B612SkyCloudNight.wxyz) + vec4f(1.0f));
      u_xlat14 = (u_xlat6.xxx * u_xlat6.yzw);
      let x_2420 = (u_xlat5.xzw * u_xlat14);
      u_xlat5 = vec4f(x_2420.x, u_xlat5.y, x_2420.yz);
      u_xlat24 = (u_xlat28 * u_xlat6.x);
      u_xlat26 = x_104.x_B612SkyCloud2.z;
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat14 = ((u_xlat4.xyz * vec3f(u_xlat24)) + -(u_xlat5.xzw));
      let x_2446 = ((vec3f(u_xlat26) * u_xlat14) + u_xlat5.xzw);
      u_xlat5 = vec4f(x_2446.x, u_xlat5.y, x_2446.yz);
      u_xlat24 = ((-(u_xlat28) * u_xlat6.x) + 1.0f);
      u_xlat4 = vec4f((((u_xlat4.xyz * vec3f(u_xlat24)) + u_xlat5.xzw)).xyz, u_xlat4.w);
      u_xlat4 = vec4f(((u_xlat5.yyy * u_xlat4.xyz)).xyz, u_xlat4.w);
    } else {
      u_xlatb24 = (0.5f < x_104.x_B612HdriParams.x);
      if (u_xlatb24) {
        u_xlat24 = x_104.x_B612TimeParams.x;
        u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
        u_xlat5 = vec4f(max(x_104.x_B612HdriParams.zw, vec2f(10.0f, 0.0f)).xy, u_xlat5.zw);
        u_xlat26 = (u_xlat5.x * x_104.x_B612CloudParams.x);
        u_xlat26 = (u_xlat26 * 0.15915493667125701904f);
        u_xlat19.x = (x_104.x_Time.y * 6.28318548202514648438f);
        u_xlat19.x = (u_xlat19.x / u_xlat5.x);
        u_xlat19.x = sin(u_xlat19.x);
        u_xlat28 = ((u_xlat26 * u_xlat19.x) + x_104.x_B612HdriDay3.x);
        u_xlat28 = ((-(u_xlat24) * x_104.x_B612HdriParams.y) + u_xlat28);
        u_xlat26 = ((u_xlat26 * u_xlat19.x) + x_104.x_B612HdriDusk3.x);
        u_xlat19.x = (-(u_xlat24) + 1.0f);
        u_xlat26 = ((u_xlat19.x * x_104.x_B612HdriParams.y) + u_xlat26);
        u_xlat19.x = min(abs(u_xlat3.y), abs(u_xlat3.x));
        u_xlat5.x = max(abs(u_xlat3.y), abs(u_xlat3.x));
        u_xlat5.x = (1.0f / u_xlat5.x);
        u_xlat19.x = (u_xlat19.x * u_xlat5.x);
        u_xlat5.x = (u_xlat19.x * u_xlat19.x);
        u_xlat21.x = ((u_xlat5.x * 0.02083509974181652069f) + -0.08513300120830535889f);
        u_xlat21.x = ((u_xlat5.x * u_xlat21.x) + 0.18014100193977355957f);
        u_xlat21.x = ((u_xlat5.x * u_xlat21.x) + -0.33029949665069580078f);
        u_xlat5.x = ((u_xlat5.x * u_xlat21.x) + 0.99986600875854492188f);
        u_xlat21.x = (u_xlat19.x * u_xlat5.x);
        u_xlatb29 = (abs(u_xlat3.y) < abs(u_xlat3.x));
        u_xlat21.x = ((u_xlat21.x * -2.0f) + 1.57079637050628662109f);
        if (u_xlatb29) {
          x_2626 = u_xlat21.x;
        } else {
          x_2626 = 0.0f;
        }
        u_xlat21.x = x_2626;
        u_xlat19.x = ((u_xlat19.x * u_xlat5.x) + u_xlat21.x);
        u_xlatb5 = (u_xlat3.y < -(u_xlat3.y));
        u_xlat5.x = select(0.0f, -3.14159274101257324219f, u_xlatb5);
        u_xlat19.x = (u_xlat19.x + u_xlat5.x);
        u_xlat5.x = min(u_xlat3.y, u_xlat3.x);
        u_xlat21.x = max(u_xlat3.y, u_xlat3.x);
        u_xlatb5 = (u_xlat5.x < -(u_xlat5.x));
        u_xlatb21 = (u_xlat21.x >= -(u_xlat21.x));
        u_xlatb5 = (u_xlatb21 & u_xlatb5);
        if (u_xlatb5) {
          x_2686 = -(u_xlat19.x);
        } else {
          x_2686 = u_xlat19.x;
        }
        u_xlat19.x = x_2686;
        u_xlat28 = ((u_xlat19.x * 57.295780181884765625f) + -(u_xlat28));
        u_xlat6.x = ((u_xlat28 * 0.00277777784503996372f) + 0.5f);
        u_xlat6.y = 0.5f;
        u_xlat22.y = 0.5f;
        let x_2716 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat6.xy, 0.0f).xyz;
        u_xlat5 = vec4f(x_2716.x, u_xlat5.y, x_2716.yz);
        u_xlat26 = ((u_xlat19.x * 57.295780181884765625f) + -(u_xlat26));
        u_xlat22.x = ((u_xlat26 * 0.00277777784503996372f) + 0.5f);
        u_xlat6 = vec4f(textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat22, 0.0f).xyz.xyz, u_xlat6.w);
        let x_2742 = (u_xlat5.xzw * x_104.x_B612HdriDay0.xyz);
        u_xlat5 = vec4f(x_2742.x, u_xlat5.y, x_2742.yz);
        u_xlatb26 = (0.0f < x_104.x_B612HdriDay3.z);
        u_xlat19.x = max(u_xlat5.z, u_xlat5.x);
        u_xlat19.x = max(u_xlat5.w, u_xlat19.x);
        u_xlat28 = (u_xlat19.x + -(x_104.x_B612HdriDay3.y));
        u_xlat28 = max(u_xlat28, 0.0f);
        u_xlat30 = (u_xlat28 / x_104.x_B612HdriDay3.z);
        u_xlat30 = (u_xlat30 + 1.0f);
        u_xlat28 = (u_xlat28 / u_xlat30);
        u_xlat28 = (u_xlat28 + x_104.x_B612HdriDay3.y);
        u_xlat19.x = max(u_xlat19.x, x_104.x_B612HdriDay3.y);
        u_xlat19.x = (u_xlat28 / u_xlat19.x);
        u_xlat7 = vec4f(((u_xlat19.xxx * u_xlat5.xzw)).xyz, u_xlat7.w);
        if (u_xlatb26) {
          x_2801 = u_xlat7.xyz;
        } else {
          x_2801 = u_xlat5.xzw;
        }
        u_xlat5 = vec4f(x_2801.x, u_xlat5.y, x_2801.yz);
        u_xlat26 = dot(u_xlat5.xzw, x_1920);
        let x_2820 = (-(vec3f(u_xlat26)) + u_xlat5.xzw);
        u_xlat5 = vec4f(x_2820.x, u_xlat5.y, x_2820.yz);
        let x_2831 = ((x_104.x_B612HdriDay0.www * u_xlat5.xzw) + vec3f(u_xlat26));
        u_xlat5 = vec4f(x_2831.x, u_xlat5.y, x_2831.yz);
        let x_2836 = max(u_xlat5.xzw, vec3f());
        u_xlat5 = vec4f(x_2836.x, u_xlat5.y, x_2836.yz);
        u_xlat26 = max(x_104.x_B612HdriDay1.w, 0.10000000149011611938f);
        u_xlat26 = (u_xlat5.y / u_xlat26);
        u_xlat26 = (-(u_xlat26) + 1.0f);
        u_xlat26 = max(u_xlat26, 0.0f);
        u_xlat26 = (u_xlat26 * u_xlat26);
        u_xlat7 = vec4f(((x_104.x_B612HdriDay1.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        let x_2872 = (u_xlat5.xzw * u_xlat7.xyz);
        u_xlat5 = vec4f(x_2872.x, u_xlat5.y, x_2872.yz);
        u_xlat26 = (x_104.x_B612HdriParams.w + -(x_104.x_B612HdriDay2.w));
        u_xlat19.x = (-(x_104.x_B612HdriDay2.w) + 90.0f);
        u_xlat19.x = max(u_xlat19.x, 1.0f);
        u_xlat26 = (u_xlat26 / u_xlat19.x);
        u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
        u_xlat7 = vec4f(((x_104.x_B612HdriDay2.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        let x_2914 = (u_xlat5.xzw * u_xlat7.xyz);
        u_xlat5 = vec4f(x_2914.x, u_xlat5.y, x_2914.yz);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_104.x_B612HdriDusk0.xyz)).xyz, u_xlat6.w);
        u_xlatb26 = (0.0f < x_104.x_B612HdriDusk3.z);
        u_xlat19.x = max(u_xlat6.y, u_xlat6.x);
        u_xlat19.x = max(u_xlat6.z, u_xlat19.x);
        u_xlat28 = (u_xlat19.x + -(x_104.x_B612HdriDusk3.y));
        u_xlat28 = max(u_xlat28, 0.0f);
        u_xlat30 = (u_xlat28 / x_104.x_B612HdriDusk3.z);
        u_xlat30 = (u_xlat30 + 1.0f);
        u_xlat28 = (u_xlat28 / u_xlat30);
        u_xlat28 = (u_xlat28 + x_104.x_B612HdriDusk3.y);
        u_xlat19.x = max(u_xlat19.x, x_104.x_B612HdriDusk3.y);
        u_xlat19.x = (u_xlat28 / u_xlat19.x);
        u_xlat7 = vec4f(((u_xlat19.xxx * u_xlat6.xyz)).xyz, u_xlat7.w);
        if (u_xlatb26) {
          x_2980 = u_xlat7.xyz;
        } else {
          x_2980 = u_xlat6.xyz;
        }
        u_xlat6 = vec4f(x_2980.xyz, u_xlat6.w);
        u_xlat26 = dot(u_xlat6.xyz, x_1920);
        u_xlat6 = vec4f(((-(vec3f(u_xlat26)) + u_xlat6.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f((((x_104.x_B612HdriDusk0.www * u_xlat6.xyz) + vec3f(u_xlat26))).xyz, u_xlat6.w);
        u_xlat6 = vec4f(max(u_xlat6.xyz, vec3f()).xyz, u_xlat6.w);
        u_xlat26 = max(x_104.x_B612HdriDusk1.w, 0.10000000149011611938f);
        u_xlat26 = (u_xlat5.y / u_xlat26);
        u_xlat26 = (-(u_xlat26) + 1.0f);
        u_xlat26 = max(u_xlat26, 0.0f);
        u_xlat26 = (u_xlat26 * u_xlat26);
        u_xlat7 = vec4f(((x_104.x_B612HdriDusk1.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat7.xyz)).xyz, u_xlat6.w);
        u_xlat26 = (x_104.x_B612HdriParams.w + -(x_104.x_B612HdriDusk2.w));
        u_xlat19.x = (-(x_104.x_B612HdriDusk2.w) + 90.0f);
        u_xlat19.x = max(u_xlat19.x, 1.0f);
        u_xlat26 = (u_xlat26 / u_xlat19.x);
        u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
        u_xlat7 = vec4f(((x_104.x_B612HdriDusk2.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat7.xyz) + -(u_xlat5.xzw))).xyz, u_xlat6.w);
        u_xlat4 = vec4f((((vec3f(u_xlat24) * u_xlat6.xyz) + u_xlat5.xzw)).xyz, u_xlat4.w);
      } else {
        u_xlat3.w = 0.02600000053644180298f;
        u_xlat24 = dot(u_xlat3.xyw, u_xlat3.xyw);
        u_xlat24 = inverseSqrt(u_xlat24);
        u_xlat26 = (u_xlat24 * u_xlat3.w);
        u_xlat19.x = ((-(u_xlat3.w) * u_xlat24) + 1.0f);
        u_xlat27 = sqrt(u_xlat19.x);
        u_xlat28 = ((u_xlat24 * -0.00048696179874241352f) + 0.07426100224256515503f);
        u_xlat28 = ((u_xlat28 * u_xlat26) + -0.21211439371109008789f);
        u_xlat28 = ((u_xlat28 * u_xlat26) + 1.57072877883911132812f);
        u_xlat27 = ((-(u_xlat28) * u_xlat27) + 1.57079637050628662109f);
        u_xlat28 = (u_xlat27 * 57.295780181884765625f);
        u_xlat3 = vec4f((((u_xlat3.xy * vec2f(u_xlat24)) + x_266)).xy, u_xlat3.zw);
        u_xlat24 = dot(u_xlat3.xy, u_xlat3.xy);
        u_xlat24 = inverseSqrt(u_xlat24);
        u_xlat3 = vec4f(((vec2f(u_xlat24) * u_xlat3.xy)).xy, u_xlat3.zw);
        u_xlat5 = vec4f(((x_104.x_B612SunDirection.xz + x_266)).xy, u_xlat5.zw);
        u_xlat24 = dot(u_xlat5.xy, u_xlat5.xy);
        u_xlat24 = inverseSqrt(u_xlat24);
        u_xlat5 = vec4f(((vec2f(u_xlat24) * u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat24 = dot(u_xlat3.xy, u_xlat5.xy);
        u_xlat24 = ((u_xlat24 * 0.5f) + 0.5f);
        u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
        u_xlat3 = vec4f(max(x_104.x_B612SkyParams.yw, x_1421).xy, u_xlat3.zw);
        u_xlat5.x = log2(u_xlat24);
        u_xlat3.x = (u_xlat3.x * u_xlat5.x);
        u_xlat3.x = exp2(u_xlat3.x);
        u_xlat13 = (-(x_104.x_B612SkyHorizon.xyz) + x_104.x_B612SkyHorizonSun.xyz);
        u_xlat13 = ((u_xlat3.xxx * u_xlat13) + x_104.x_B612SkyHorizon.xyz);
        u_xlat6.x = (x_104.x_B612SkyParams.x * 0.44999998807907104492f);
        u_xlat6.x = max(u_xlat6.x, 0.00999999977648258209f);
        u_xlat6.x = (-(u_xlat26) / u_xlat6.x);
        u_xlat6.x = (u_xlat6.x * 1.44269502162933349609f);
        u_xlat6.x = exp2(u_xlat6.x);
        u_xlat6.x = (-(u_xlat6.x) + 1.0f);
        u_xlat14 = (-(x_104.x_B612SkyZenith.xyz) + x_104.x_B612SkyHorizonSun.xyz);
        u_xlat14 = (u_xlat14 * x_1500);
        u_xlat3.x = (u_xlat3.x * x_104.x_B612SkyParams.z);
        u_xlat3.x = (u_xlat19.x * u_xlat3.x);
        u_xlat14 = ((u_xlat3.xxx * u_xlat14) + x_104.x_B612SkyZenith.xyz);
        u_xlat14 = (-(u_xlat13) + u_xlat14);
        u_xlat13 = ((u_xlat6.xxx * u_xlat14) + u_xlat13);
        u_xlat3.x = max(x_104.x_B612HazeParams.x, 0.10000000149011611938f);
        u_xlat26 = (-(u_xlat26) * u_xlat3.x);
        u_xlat26 = (u_xlat26 * 1.44269502162933349609f);
        u_xlat26 = exp2(u_xlat26);
        u_xlat26 = (u_xlat26 * x_104.x_B612HazeColor.w);
        u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
        u_xlat6 = vec4f(((-(u_xlat13) + x_104.x_B612HazeColor.xyz)).xyz, u_xlat6.w);
        u_xlat13 = ((vec3f(u_xlat26) * u_xlat6.xyz) + u_xlat13);
        u_xlat6 = vec4f(max(x_104.x_B612SkyParams2.xyz, x_1598).xyz, u_xlat6.w);
        u_xlat26 = (u_xlat5.x * u_xlat6.x);
        u_xlat26 = exp2(u_xlat26);
        u_xlat7 = vec4f(((vec3f(u_xlat26) * x_104.x_B612SkyGlow.xyz)).xyz, u_xlat7.w);
        u_xlat26 = max(x_104.x_B612SkyGlow.w, 0.10000000149011611938f);
        u_xlat26 = (-(u_xlat28) / u_xlat26);
        u_xlat26 = (u_xlat26 * 1.44269502162933349609f);
        u_xlat26 = exp2(u_xlat26);
        u_xlat5 = vec4f((((u_xlat7.xyz * vec3f(u_xlat26)) + u_xlat13)).xyz, u_xlat5.w);
        u_xlat26 = ((u_xlat27 * 57.295780181884765625f) + -(x_104.x_B612SkyAnti.w));
        u_xlat26 = (u_xlat26 / u_xlat6.y);
        u_xlat24 = (-(u_xlat24) + 1.0f);
        u_xlat24 = log2(u_xlat24);
        u_xlat24 = (u_xlat24 * u_xlat6.z);
        u_xlat24 = exp2(u_xlat24);
        let x_3407 = (vec3f(u_xlat24) * x_104.x_B612SkyAnti.xyz);
        u_xlat3 = vec4f(x_3407.x, u_xlat3.y, x_3407.yz);
        u_xlat24 = (u_xlat26 * -(u_xlat26));
        u_xlat24 = (u_xlat24 * 1.44269502162933349609f);
        u_xlat24 = exp2(u_xlat24);
        let x_3425 = ((u_xlat3.xzw * vec3f(u_xlat24)) + u_xlat5.xyz);
        u_xlat3 = vec4f(x_3425.x, u_xlat3.y, x_3425.yz);
        u_xlat4 = vec4f(((u_xlat3.yyy * u_xlat3.xzw)).xyz, u_xlat4.w);
      }
    }
    u_xlat0 = vec4f((((-(u_xlat1) * u_xlat0.xyz) + u_xlat4.xyz)).xyz, u_xlat0.w);
    u_xlat2 = ((vec3f(u_xlat25) * u_xlat0.xyz) + u_xlat2);
  }
  u_xlat0.x = exp2(-(vs_TEXCOORD2));
  u_xlat0.x = min(u_xlat0.x, 1.0f);
  u_xlat8 = (u_xlat2 + -(x_104.unity_FogColor.xyz));
  SV_Target0 = vec4f((((u_xlat0.xxx * u_xlat8) + x_104.unity_FogColor.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec3f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD2_param : f32, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Shared/Rendering/Shaders/B612_FarLandscape.shader
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

@group(1) @binding(3) var<uniform> x_74 : VGlobals;

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

//Assets/Shared/Rendering/Shaders/B612_FarLandscape.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseColor : vec4f,
  /* @offset(16) */
  x_WarmColor : vec4f,
  /* @offset(32) */
  x_CoolColor : vec4f,
  /* @offset(48) */
  x_MacroTiling : f32,
  /* @offset(52) */
  x_Variation : f32,
  /* @offset(56) */
  x_Wrap : f32,
  /* @offset(60) */
  x_NormalSoften : f32,
  /* @offset(64) */
  x_AmbientBoost : f32,
  /* @offset(68) */
  x_CloudShadows : f32,
  /* @offset(72) */
  x_HazeDensity : f32,
  /* @offset(76) */
  x_HazeStart : f32,
  /* @offset(80) */
  x_HazeFalloff : f32,
  /* @offset(84) */
  x_MistHeight : f32,
  /* @offset(88) */
  x_MistDensity : f32,
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
  /* @offset(96) */
  x_B612SunDirection : vec4f,
  /* @offset(112) */
  x_B612TimeParams : vec4f,
  /* @offset(128) */
  x_B612SkyZenith : vec4f,
  /* @offset(144) */
  x_B612SkyHorizon : vec4f,
  /* @offset(160) */
  x_B612SkyHorizonSun : vec4f,
  /* @offset(176) */
  x_B612SkyParams : vec4f,
  /* @offset(192) */
  x_B612HazeColor : vec4f,
  /* @offset(208) */
  x_B612HazeParams : vec4f,
  /* @offset(224) */
  x_B612SkyGlow : vec4f,
  /* @offset(240) */
  x_B612SkyAnti : vec4f,
  /* @offset(256) */
  x_B612SkyParams2 : vec4f,
  /* @offset(272) */
  x_B612CloudTint : vec4f,
  /* @offset(288) */
  x_B612CloudParams : vec4f,
  /* @offset(304) */
  x_B612SunGlow : vec4f,
  /* @offset(320) */
  x_B612HdriParams : vec4f,
  /* @offset(336) */
  x_B612HdriDay0 : vec4f,
  /* @offset(352) */
  x_B612HdriDay1 : vec4f,
  /* @offset(368) */
  x_B612HdriDay2 : vec4f,
  /* @offset(384) */
  x_B612HdriDay3 : vec4f,
  /* @offset(400) */
  x_B612HdriDusk0 : vec4f,
  /* @offset(416) */
  x_B612HdriDusk1 : vec4f,
  /* @offset(432) */
  x_B612HdriDusk2 : vec4f,
  /* @offset(448) */
  x_B612HdriDusk3 : vec4f,
  /* @offset(464) */
  x_B612SkyCloud : vec4f,
  /* @offset(480) */
  x_B612SkyCloud2 : vec4f,
  /* @offset(496) */
  x_B612SkyCloudWarm : vec4f,
  /* @offset(512) */
  x_B612SkyNight : vec4f,
  /* @offset(528) */
  x_B612SkyCloudNight : vec4f,
  /* @offset(544) */
  x_B612SkyCloudCut : vec4f,
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

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(2) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD0 : vec3f;

@group(0) @binding(2) var x_MacroNoise : texture_2d<f32>;

@group(0) @binding(4) var sampler_MacroNoise : sampler;

@group(1) @binding(0) var<uniform> x_104 : PGlobals;

@group(1) @binding(1) var<uniform> x_1053 : UnityPerDraw;

@group(0) @binding(0) var x_B612HdriRingDay : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearRepeat : sampler;

@group(0) @binding(1) var x_B612HdriRingDusk : texture_2d<f32>;

var<private> vs_TEXCOORD2 : f32;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_266 = vec2f(0.00000999999974737875f, 0.0f);

const x_347 = vec2f(2.0f);

const x_350 = vec2f(3.0f);

const x_359 = vec2f(0.10310000181198120117f);

const x_372 = vec3f(33.3300018310546875f);

const x_401 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_404 = vec4f(0.10310000181198120117f);

const x_409 = vec4f(33.3300018310546875f);

const x_470 = vec2f(1.0f);

const x_559 = vec2f(2.02999997138977050781f);

const x_562 = vec2f(17.1000003814697265625f);

const x_1421 = vec2f(0.00999999977648258209f, 0.0f);

const x_1500 = vec3f(0.34999999403953552246f);

const x_1598 = vec3f(0.00999999977648258209f, 0.10000000149011611938f, 0.00999999977648258209f);

const x_1920 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_1978 = vec3f(-1.0f);

const x_1987 = vec3f(1.0f);

const x_2003 = vec2f(1.5f, 90.0f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat8 : vec3f;
  var u_xlat1 : vec3f;
  var u_xlat24 : f32;
  var u_xlat17 : f32;
  var u_xlat9 : vec3f;
  var u_xlat2 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat25 : f32;
  var u_xlatb10 : bool;
  var u_xlat10 : vec2f;
  var u_xlat26 : f32;
  var u_xlat18 : f32;
  var u_xlat19 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat12 : vec3f;
  var u_xlat20 : vec2f;
  var u_xlat11 : f32;
  var u_xlat6 : vec4f;
  var u_xlat28 : f32;
  var u_xlat27 : f32;
  var u_xlatb24 : bool;
  var u_xlatb25 : bool;
  var u_xlat21 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlatb21 : bool;
  var x_1803 : f32;
  var u_xlatb28 : bool;
  var u_xlatb5 : bool;
  var x_1860 : f32;
  var u_xlat30 : f32;
  var u_xlat14 : vec3f;
  var u_xlatb29 : bool;
  var x_2626 : f32;
  var x_2686 : f32;
  var u_xlat22 : vec2f;
  var u_xlatb26 : bool;
  var x_2801 : vec3f;
  var x_2980 : vec3f;
  var u_xlat13 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat8 = (u_xlat0.xxx * vs_TEXCOORD1);
  u_xlat1 = ((-(vs_TEXCOORD1) * u_xlat0.xxx) + vec3f(0.0f, 1.0f, 0.0f));
  let x_52 = vec3f(x_42.x_NormalSoften, x_42.x_NormalSoften, x_42.x_NormalSoften);
  u_xlat0 = vec4f((((vec3f(x_52.x, x_52.y, x_52.z) * u_xlat1) + u_xlat8)).xyz, u_xlat0.w);
  u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat24 = inverseSqrt(u_xlat24);
  u_xlat0 = vec4f(((vec3f(u_xlat24) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz * vec2f(x_42.x_MacroTiling))).xy, u_xlat1.z);
  let x_100 = u_xlat1;
  let x_107 = x_104.x_GlobalMipBias.x;
  let x_108 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_100.xy, x_107);
  u_xlat17 = x_108.x;
  u_xlat1 = vec3f((((u_xlat1.xy * vec2f(3.09999990463256835938f)) + vec2f(0.37000000476837158203f))).xy, u_xlat1.z);
  let x_123 = u_xlat1;
  let x_126 = x_104.x_GlobalMipBias.x;
  let x_127 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_123.xy, x_126);
  u_xlat1.x = x_127.x;
  u_xlat9.x = (u_xlat17 + -0.5f);
  u_xlat9.x = (u_xlat9.x + u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat9.x = (u_xlat9.x * x_42.x_Variation);
  u_xlat2 = (-(x_42.x_BaseColor.xyz) + x_42.x_WarmColor.xyz);
  u_xlat2 = ((u_xlat9.xxx * u_xlat2) + x_42.x_BaseColor.xyz);
  u_xlat9.x = (-(u_xlat17) + 0.5f);
  u_xlat9.x = (u_xlat9.x + u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat9.x = (u_xlat9.x * x_42.x_Variation);
  u_xlat3 = vec4f(((-(u_xlat2) + x_42.x_CoolColor.xyz)).xyz, u_xlat3.w);
  u_xlat9 = ((u_xlat9.xxx * u_xlat3.xyz) + u_xlat2);
  u_xlat1.x = ((u_xlat1.x * 0.20000000298023223877f) + 0.89999997615814208984f);
  u_xlat1 = (u_xlat1.xxx * u_xlat9);
  u_xlat25 = dot(u_xlat0.xyz, x_104.x_MainLightPosition.xyz);
  u_xlat25 = (u_xlat25 + x_42.x_Wrap);
  u_xlat2.x = (x_42.x_Wrap + 1.0f);
  u_xlat25 = (u_xlat25 / u_xlat2.x);
  u_xlat25 = clamp(u_xlat25, 0.0f, 1.0f);
  u_xlat2.x = (x_104.x_B612SunDirection.w * x_104.x_B612CloudTint.w);
  u_xlatb10 = (0.00100000004749745131f < u_xlat2.x);
  if (u_xlatb10) {
    u_xlat10 = (x_104.x_B612SunDirection.xz + x_266);
    u_xlat26 = dot(u_xlat10, u_xlat10);
    u_xlat26 = inverseSqrt(u_xlat26);
    u_xlat3 = vec4f(((vec2f(u_xlat26) * u_xlat10)).xy, u_xlat3.zw);
    u_xlat10.x = dot(vs_TEXCOORD0.xz, u_xlat3.xy);
    u_xlat3.z = -(u_xlat3.y);
    u_xlat18 = dot(vs_TEXCOORD0.zx, u_xlat3.xz);
    u_xlat26 = ((-(x_104.x_B612SunDirection.y) * 2.5f) + 1.0f);
    u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
    u_xlat26 = ((u_xlat26 * 2.0f) + 1.0f);
    u_xlat26 = (u_xlat26 * 260.0f);
    u_xlat3.x = (u_xlat10.x / u_xlat26);
    u_xlat3.y = (u_xlat18 * 0.00384615384973585606f);
    u_xlat10 = ((x_104.x_Time.yy * vec2f(0.00400000018998980522f, 0.00249999994412064552f)) + u_xlat3.xy);
    u_xlat3 = vec4f(floor(u_xlat10).xy, u_xlat3.zw);
    u_xlat19 = fract(u_xlat10);
    u_xlat4 = vec4f(((u_xlat19 * u_xlat19)).xy, u_xlat4.zw);
    u_xlat19 = ((-(u_xlat19) * x_347) + x_350);
    u_xlat19 = (u_xlat19 * u_xlat4.xy);
    u_xlat4 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat26 = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((vec2f(u_xlat26) + u_xlat4.xy)).xy, u_xlat4.zw);
    u_xlat26 = (u_xlat4.y + u_xlat4.x);
    u_xlat26 = (u_xlat4.x * u_xlat26);
    u_xlat26 = fract(u_xlat26);
    u_xlat4 = (u_xlat3.yxyx + x_401);
    u_xlat4 = (u_xlat4 * x_404);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = (u_xlat4 + x_409);
    u_xlat5.x = dot(u_xlat4.yxy, u_xlat5.xyy);
    u_xlat4 = vec4f(((u_xlat4.yx + u_xlat5.xx)).xy, u_xlat4.zw);
    u_xlat12.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat12.x);
    u_xlat12.x = dot(u_xlat4.wzw, u_xlat5.zww);
    u_xlat12 = vec3f(((u_xlat12.xx + u_xlat4.wz)).xy, u_xlat12.z);
    u_xlat20.x = (u_xlat12.y + u_xlat12.x);
    u_xlat4.y = (u_xlat12.x * u_xlat20.x);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + x_470)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat20.x = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((u_xlat3.xy + u_xlat20.xx)).xy, u_xlat3.zw);
    u_xlat11 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat11);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat11 = (-(u_xlat26) + u_xlat4.x);
    u_xlat26 = ((u_xlat19.x * u_xlat11) + u_xlat26);
    u_xlat3.x = (-(u_xlat4.y) + u_xlat3.x);
    u_xlat3.x = ((u_xlat19.x * u_xlat3.x) + u_xlat4.y);
    u_xlat3.x = (-(u_xlat26) + u_xlat3.x);
    u_xlat26 = ((u_xlat19.y * u_xlat3.x) + u_xlat26);
    u_xlat10 = ((u_xlat10 * x_559) + x_562);
    u_xlat3 = vec4f(floor(u_xlat10).xy, u_xlat3.zw);
    u_xlat19 = fract(u_xlat10);
    u_xlat4 = vec4f(((u_xlat19 * u_xlat19)).xy, u_xlat4.zw);
    u_xlat19 = ((-(u_xlat19) * x_347) + x_350);
    u_xlat19 = (u_xlat19 * u_xlat4.xy);
    u_xlat4 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat4.zw);
    u_xlat4 = vec4f(fract(u_xlat4.xy).xy, u_xlat4.zw);
    u_xlat5 = vec4f(((u_xlat4.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat20.x = dot(u_xlat4.xyx, u_xlat5.xyz);
    u_xlat4 = vec4f(((u_xlat20.xx + u_xlat4.xy)).xy, u_xlat4.zw);
    u_xlat12.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat12.x);
    u_xlat5 = (u_xlat3.yxyx + x_401);
    u_xlat5 = (u_xlat5 * x_404);
    u_xlat5 = fract(u_xlat5);
    u_xlat6 = (u_xlat5 + x_409);
    u_xlat12.x = dot(u_xlat5.yxy, u_xlat6.xyy);
    u_xlat12 = vec3f(((u_xlat12.xx + u_xlat5.yx)).xy, u_xlat12.z);
    u_xlat20.x = (u_xlat12.y + u_xlat12.x);
    u_xlat4.y = (u_xlat12.x * u_xlat20.x);
    u_xlat20.x = dot(u_xlat5.wzw, u_xlat6.zww);
    u_xlat20 = (u_xlat20.xx + u_xlat5.wz);
    u_xlat28 = (u_xlat20.y + u_xlat20.x);
    u_xlat4.z = (u_xlat20.x * u_xlat28);
    u_xlat4 = vec4f(fract(u_xlat4.xyz).xyz, u_xlat4.w);
    u_xlat3 = vec4f(((u_xlat3.xy + x_470)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(fract(u_xlat3.xy).xy, u_xlat3.zw);
    u_xlat5 = vec4f(((u_xlat3.yxx + x_372)).xyz, u_xlat5.w);
    u_xlat28 = dot(u_xlat3.xyx, u_xlat5.xyz);
    u_xlat3 = vec4f(((u_xlat3.xy + vec2f(u_xlat28))).xy, u_xlat3.zw);
    u_xlat11 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat11);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat11 = (-(u_xlat4.x) + u_xlat4.y);
    u_xlat11 = ((u_xlat19.x * u_xlat11) + u_xlat4.x);
    u_xlat3.x = (-(u_xlat4.z) + u_xlat3.x);
    u_xlat3.x = ((u_xlat19.x * u_xlat3.x) + u_xlat4.z);
    u_xlat3.x = (-(u_xlat11) + u_xlat3.x);
    u_xlat3.x = ((u_xlat19.y * u_xlat3.x) + u_xlat11);
    u_xlat3.x = (u_xlat3.x * 0.25f);
    u_xlat26 = ((u_xlat26 * 0.5f) + u_xlat3.x);
    u_xlat10 = ((u_xlat10 * x_559) + x_562);
    u_xlat3 = vec4f(floor(u_xlat10).xy, u_xlat3.zw);
    u_xlat10 = fract(u_xlat10);
    u_xlat19 = (u_xlat10 * u_xlat10);
    u_xlat10 = ((-(u_xlat10) * x_347) + x_350);
    u_xlat10 = (u_xlat10 * u_xlat19);
    u_xlat19 = (u_xlat3.xy * x_359);
    u_xlat19 = fract(u_xlat19);
    u_xlat4 = vec4f(((u_xlat19.yxx + x_372)).xyz, u_xlat4.w);
    u_xlat4.x = dot(u_xlat19.xyx, u_xlat4.xyz);
    u_xlat19 = (u_xlat19 + u_xlat4.xx);
    u_xlat27 = (u_xlat19.y + u_xlat19.x);
    u_xlat3.z = (u_xlat19.x * u_xlat27);
    u_xlat4 = (u_xlat3.yxyx + x_401);
    u_xlat4 = (u_xlat4 * x_404);
    u_xlat4 = fract(u_xlat4);
    u_xlat5 = (u_xlat4 + x_409);
    u_xlat27 = dot(u_xlat4.yxy, u_xlat5.xyy);
    u_xlat4 = vec4f(((vec2f(u_xlat27) + u_xlat4.yx)).xy, u_xlat4.zw);
    u_xlat27 = (u_xlat4.y + u_xlat4.x);
    u_xlat3.w = (u_xlat4.x * u_xlat27);
    u_xlat4.x = dot(u_xlat4.wzw, u_xlat5.zww);
    u_xlat4 = vec4f(((u_xlat4.xx + u_xlat4.wz)).xy, u_xlat4.zw);
    u_xlat12.x = (u_xlat4.y + u_xlat4.x);
    u_xlat4.x = (u_xlat4.x * u_xlat12.x);
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat3 = vec4f(((u_xlat3.xy + x_470)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_359)).xy, u_xlat3.zw);
    u_xlat3 = fract(u_xlat3);
    u_xlat12 = (u_xlat3.yxx + x_372);
    u_xlat12.x = dot(u_xlat3.xyx, u_xlat12);
    u_xlat3 = vec4f(((u_xlat3.xy + u_xlat12.xx)).xy, u_xlat3.zw);
    u_xlat11 = (u_xlat3.y + u_xlat3.x);
    u_xlat3.x = (u_xlat3.x * u_xlat11);
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat11 = (-(u_xlat3.z) + u_xlat3.w);
    u_xlat11 = ((u_xlat10.x * u_xlat11) + u_xlat3.z);
    u_xlat3.x = (-(u_xlat4.x) + u_xlat3.x);
    u_xlat10.x = ((u_xlat10.x * u_xlat3.x) + u_xlat4.x);
    u_xlat10.x = (-(u_xlat11) + u_xlat10.x);
    u_xlat10.x = ((u_xlat10.y * u_xlat10.x) + u_xlat11);
    u_xlat10.x = ((u_xlat10.x * 0.125f) + u_xlat26);
    u_xlat10.x = ((u_xlat10.x * 1.14285719394683837891f) + -0.51999998092651367188f);
    u_xlat10.x = (u_xlat10.x * 7.1428546905517578125f);
    u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
    u_xlat18 = ((u_xlat10.x * -2.0f) + 3.0f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * u_xlat18);
    u_xlat2.x = ((-(u_xlat2.x) * u_xlat10.x) + 1.0f);
  } else {
    u_xlat2.x = 1.0f;
  }
  u_xlat2.x = (u_xlat2.x + -1.0f);
  u_xlat2.x = ((x_42.x_CloudShadows * u_xlat2.x) + 1.0f);
  u_xlat25 = (u_xlat25 * u_xlat2.x);
  u_xlat0.w = 1.0f;
  u_xlat2.x = dot(x_1053.unity_SHAr, u_xlat0);
  u_xlat2.y = dot(x_1053.unity_SHAg, u_xlat0);
  u_xlat2.z = dot(x_1053.unity_SHAb, u_xlat0);
  u_xlat3 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat4.x = dot(x_1053.unity_SHBr, u_xlat3);
  u_xlat4.y = dot(x_1053.unity_SHBg, u_xlat3);
  u_xlat4.z = dot(x_1053.unity_SHBb, u_xlat3);
  u_xlat8.x = (u_xlat0.y * u_xlat0.y);
  u_xlat0.x = ((u_xlat0.x * u_xlat0.x) + -(u_xlat8.x));
  u_xlat0 = vec4f((((x_1053.unity_SHC.xyz * u_xlat0.xxx) + u_xlat4.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + u_xlat2)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * vec3f(x_42.x_AmbientBoost))).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_104.x_MainLightColor.xyz * vec3f(u_xlat25)) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat2 = (u_xlat0.xyz * u_xlat1);
  u_xlatb24 = (x_104.x_B612SunDirection.w < 0.5f);
  u_xlatb25 = (0.0f >= x_42.x_HazeDensity);
  u_xlatb24 = (u_xlatb24 | u_xlatb25);
  if (!(u_xlatb24)) {
    u_xlat3 = vec4f(((vs_TEXCOORD0 + -(x_104.x_WorldSpaceCameraPos))).xyz, u_xlat3.w);
    u_xlat24 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat24 = sqrt(u_xlat24);
    u_xlat25 = (u_xlat24 + -(x_42.x_HazeStart));
    u_xlat25 = max(u_xlat25, 0.0f);
    u_xlat26 = (u_xlat25 * x_42.x_HazeDensity);
    u_xlat26 = max(u_xlat26, 0.00000099999999747524f);
    u_xlat11 = max(x_42.x_HazeFalloff, 0.5f);
    u_xlat26 = log2(u_xlat26);
    u_xlat26 = (u_xlat26 * u_xlat11);
    u_xlat26 = exp2(u_xlat26);
    u_xlat26 = (u_xlat26 * -1.44269502162933349609f);
    u_xlat26 = exp2(u_xlat26);
    u_xlat26 = (-(u_xlat26) + 1.0f);
    u_xlat11 = (-(vs_TEXCOORD0.y) + x_42.x_MistHeight);
    u_xlat27 = (abs(x_42.x_MistHeight) + 5.0f);
    u_xlat11 = (u_xlat11 / u_xlat27);
    u_xlat11 = clamp(u_xlat11, 0.0f, 1.0f);
    u_xlat25 = (-(u_xlat25) * x_42.x_MistDensity);
    u_xlat25 = (u_xlat11 * u_xlat25);
    u_xlat25 = (u_xlat25 * 1.44269502162933349609f);
    u_xlat25 = exp2(u_xlat25);
    u_xlat25 = (-(u_xlat25) + 1.0f);
    u_xlat26 = (-(u_xlat26) + 1.0f);
    u_xlat25 = (-(u_xlat25) + 1.0f);
    u_xlat25 = ((-(u_xlat26) * u_xlat25) + 1.0f);
    u_xlat25 = max(u_xlat25, 0.0f);
    u_xlat24 = max(u_xlat24, 0.00100000004749745131f);
    u_xlat3 = vec4f(((u_xlat3.xz / vec2f(u_xlat24))).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy + x_266)).xy, u_xlat3.zw);
    u_xlat24 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat24 = inverseSqrt(u_xlat24);
    u_xlat3 = vec4f(((vec2f(u_xlat24) * u_xlat3.xy)).xy, u_xlat3.zw);
    u_xlatb24 = (1.5f < x_104.x_B612HdriParams.x);
    if (u_xlatb24) {
      u_xlat3.z = 0.02600000053644180298f;
      u_xlat24 = dot(u_xlat3.xyz, u_xlat3.xyz);
      u_xlat24 = inverseSqrt(u_xlat24);
      u_xlat4 = vec4f(((vec3f(u_xlat24) * u_xlat3.xzy)).xyz, u_xlat4.w);
      u_xlat26 = dot(u_xlat4.xyz, x_104.x_B612SunDirection.xyz);
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat19.x = ((-(u_xlat3.z) * u_xlat24) + 1.0f);
      u_xlat4.x = sqrt(u_xlat19.x);
      u_xlat20.x = ((u_xlat24 * -0.00048696179874241352f) + 0.07426100224256515503f);
      u_xlat20.x = ((u_xlat20.x * u_xlat4.y) + -0.21211439371109008789f);
      u_xlat20.x = ((u_xlat20.x * u_xlat4.y) + 1.57072877883911132812f);
      u_xlat4.x = ((-(u_xlat20.x) * u_xlat4.x) + 1.57079637050628662109f);
      u_xlat20.x = (u_xlat4.x * 57.295780181884765625f);
      u_xlat5 = vec4f((((u_xlat3.xy * vec2f(u_xlat24)) + x_266)).xy, u_xlat5.zw);
      u_xlat24 = dot(u_xlat5.xy, u_xlat5.xy);
      u_xlat24 = inverseSqrt(u_xlat24);
      u_xlat5 = vec4f(((vec2f(u_xlat24) * u_xlat5.xy)).xy, u_xlat5.zw);
      u_xlat21 = (x_104.x_B612SunDirection.xz + x_266);
      u_xlat24 = dot(u_xlat21, u_xlat21);
      u_xlat24 = inverseSqrt(u_xlat24);
      u_xlat21 = (vec2f(u_xlat24) * u_xlat21);
      u_xlat24 = dot(u_xlat5.xy, u_xlat21);
      u_xlat24 = ((u_xlat24 * 0.5f) + 0.5f);
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat5 = vec4f(max(x_104.x_B612SkyParams.yw, x_1421).xy, u_xlat5.zw);
      u_xlat28 = log2(u_xlat24);
      u_xlat5.x = (u_xlat28 * u_xlat5.x);
      u_xlat5.x = exp2(u_xlat5.x);
      u_xlat6 = vec4f(((-(x_104.x_B612SkyHorizon.xyz) + x_104.x_B612SkyHorizonSun.xyz)).xyz, u_xlat6.w);
      u_xlat6 = vec4f((((u_xlat5.xxx * u_xlat6.xyz) + x_104.x_B612SkyHorizon.xyz)).xyz, u_xlat6.w);
      u_xlat21.x = (x_104.x_B612SkyParams.x * 0.44999998807907104492f);
      u_xlat21.x = max(u_xlat21.x, 0.00999999977648258209f);
      u_xlat21.x = (-(u_xlat4.y) / u_xlat21.x);
      u_xlat21.x = (u_xlat21.x * 1.44269502162933349609f);
      u_xlat21.x = exp2(u_xlat21.x);
      u_xlat21.x = (-(u_xlat21.x) + 1.0f);
      u_xlat7 = vec4f(((-(x_104.x_B612SkyZenith.xyz) + x_104.x_B612SkyHorizonSun.xyz)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((u_xlat7.xyz * x_1500)).xyz, u_xlat7.w);
      u_xlat5.x = (u_xlat5.x * x_104.x_B612SkyParams.z);
      u_xlat19.x = (u_xlat19.x * u_xlat5.x);
      u_xlat7 = vec4f((((u_xlat19.xxx * u_xlat7.xyz) + x_104.x_B612SkyZenith.xyz)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((-(u_xlat6.xyz) + u_xlat7.xyz)).xyz, u_xlat7.w);
      let x_1542 = ((u_xlat21.xxx * u_xlat7.xyz) + u_xlat6.xyz);
      u_xlat5 = vec4f(x_1542.x, u_xlat5.y, x_1542.yz);
      u_xlat19.x = max(x_104.x_B612HazeParams.x, 0.10000000149011611938f);
      u_xlat19.x = (u_xlat19.x * -(u_xlat4.y));
      u_xlat19.x = (u_xlat19.x * 1.44269502162933349609f);
      u_xlat19.x = exp2(u_xlat19.x);
      u_xlat19.x = (u_xlat19.x * x_104.x_B612HazeColor.w);
      u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
      u_xlat6 = vec4f(((-(u_xlat5.xzw) + x_104.x_B612HazeColor.xyz)).xyz, u_xlat6.w);
      let x_1591 = ((u_xlat19.xxx * u_xlat6.xyz) + u_xlat5.xzw);
      u_xlat5 = vec4f(x_1591.x, u_xlat5.y, x_1591.yz);
      u_xlat6 = vec4f(max(x_104.x_B612SkyParams2.xyz, x_1598).xyz, u_xlat6.w);
      u_xlat19.x = (u_xlat28 * u_xlat6.x);
      u_xlat19.x = exp2(u_xlat19.x);
      u_xlat7 = vec4f(((u_xlat19.xxx * x_104.x_B612SkyGlow.xyz)).xyz, u_xlat7.w);
      u_xlat19.x = max(x_104.x_B612SkyGlow.w, 0.10000000149011611938f);
      u_xlat19.x = (-(u_xlat20.x) / u_xlat19.x);
      u_xlat19.x = (u_xlat19.x * 1.44269502162933349609f);
      u_xlat19.x = exp2(u_xlat19.x);
      u_xlat12 = ((u_xlat7.xyz * u_xlat19.xxx) + u_xlat5.xzw);
      u_xlat19.x = ((u_xlat4.x * 57.295780181884765625f) + -(x_104.x_B612SkyAnti.w));
      u_xlat19.x = (u_xlat19.x / u_xlat6.y);
      u_xlat24 = (-(u_xlat24) + 1.0f);
      u_xlat24 = log2(u_xlat24);
      u_xlat24 = (u_xlat24 * u_xlat6.z);
      u_xlat24 = exp2(u_xlat24);
      let x_1678 = (vec3f(u_xlat24) * x_104.x_B612SkyAnti.xyz);
      u_xlat5 = vec4f(x_1678.x, u_xlat5.y, x_1678.yz);
      u_xlat24 = (u_xlat19.x * -(u_xlat19.x));
      u_xlat24 = (u_xlat24 * 1.44269502162933349609f);
      u_xlat24 = exp2(u_xlat24);
      u_xlat4 = vec4f((((u_xlat5.xzw * vec3f(u_xlat24)) + u_xlat12)).xyz, u_xlat4.w);
      u_xlat24 = max(x_104.x_B612SunGlow.w, 1.0f);
      u_xlat26 = log2(u_xlat26);
      u_xlat24 = (u_xlat24 * u_xlat26);
      u_xlat24 = exp2(u_xlat24);
      u_xlat4 = vec4f((((x_104.x_B612SunGlow.xyz * vec3f(u_xlat24)) + u_xlat4.xyz)).xyz, u_xlat4.w);
      u_xlat24 = x_104.x_B612TimeParams.x;
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat26 = x_104.x_B612SkyCloud.z;
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat19.x = min(abs(u_xlat3.y), abs(u_xlat3.x));
      u_xlat28 = max(abs(u_xlat3.y), abs(u_xlat3.x));
      u_xlat28 = (1.0f / u_xlat28);
      u_xlat19.x = (u_xlat19.x * u_xlat28);
      u_xlat28 = (u_xlat19.x * u_xlat19.x);
      u_xlat5.x = ((u_xlat28 * 0.02083509974181652069f) + -0.08513300120830535889f);
      u_xlat5.x = ((u_xlat28 * u_xlat5.x) + 0.18014100193977355957f);
      u_xlat5.x = ((u_xlat28 * u_xlat5.x) + -0.33029949665069580078f);
      u_xlat28 = ((u_xlat28 * u_xlat5.x) + 0.99986600875854492188f);
      u_xlat5.x = (u_xlat19.x * u_xlat28);
      u_xlatb21 = (abs(u_xlat3.y) < abs(u_xlat3.x));
      u_xlat5.x = ((u_xlat5.x * -2.0f) + 1.57079637050628662109f);
      if (u_xlatb21) {
        x_1803 = u_xlat5.x;
      } else {
        x_1803 = 0.0f;
      }
      u_xlat5.x = x_1803;
      u_xlat19.x = ((u_xlat19.x * u_xlat28) + u_xlat5.x);
      u_xlatb28 = (u_xlat3.y < -(u_xlat3.y));
      u_xlat28 = select(0.0f, -3.14159274101257324219f, u_xlatb28);
      u_xlat19.x = (u_xlat19.x + u_xlat28);
      u_xlat28 = min(u_xlat3.y, u_xlat3.x);
      u_xlat5.x = max(u_xlat3.y, u_xlat3.x);
      u_xlatb28 = (u_xlat28 < -(u_xlat28));
      u_xlatb5 = (u_xlat5.x >= -(u_xlat5.x));
      u_xlatb28 = (u_xlatb28 & u_xlatb5);
      if (u_xlatb28) {
        x_1860 = -(u_xlat19.x);
      } else {
        x_1860 = u_xlat19.x;
      }
      u_xlat19.x = x_1860;
      let x_1879 = ((u_xlat19.xx * vec2f(57.295780181884765625f)) + -(x_104.x_B612SkyCloud.xy));
      u_xlat5 = vec4f(x_1879.x, u_xlat5.y, x_1879.y, u_xlat5.w);
      u_xlat6 = vec4f((((u_xlat5.xz * vec2f(0.00277777784503996372f)) + vec2f(0.5f))).xy, u_xlat6.zw);
      u_xlat6.z = 0.5f;
      u_xlat7 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat6.xz, 0.0f);
      u_xlat6 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat6.yz, 0.0f);
      let x_1912 = (u_xlat7.xyz * x_104.x_B612HdriDay0.xyz);
      u_xlat5 = vec4f(x_1912.x, u_xlat5.y, x_1912.yz);
      u_xlat19.x = dot(u_xlat5.xzw, x_1920);
      let x_1932 = ((u_xlat7.xyz * x_104.x_B612HdriDay0.xyz) + -(u_xlat19.xxx));
      u_xlat5 = vec4f(x_1932.x, u_xlat5.y, x_1932.yz);
      let x_1943 = ((x_104.x_B612HdriDay0.www * u_xlat5.xzw) + u_xlat19.xxx);
      u_xlat5 = vec4f(x_1943.x, u_xlat5.y, x_1943.yz);
      let x_1949 = max(u_xlat5.xzw, vec3f());
      u_xlat5 = vec4f(x_1949.x, u_xlat5.y, x_1949.yz);
      u_xlat19.x = max(x_104.x_B612HdriDay1.w, 0.10000000149011611938f);
      u_xlat19.x = (1.5f / u_xlat19.x);
      u_xlat19.x = (-(u_xlat19.x) + 1.0f);
      u_xlat19.x = max(u_xlat19.x, 0.0f);
      u_xlat19.x = (u_xlat19.x * u_xlat19.x);
      u_xlat7 = vec4f(((x_104.x_B612HdriDay1.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((u_xlat19.xxx * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      let x_1995 = (u_xlat5.xzw * u_xlat7.xyz);
      u_xlat5 = vec4f(x_1995.x, u_xlat5.y, x_1995.yz);
      u_xlat7 = vec4f(((-(x_104.x_B612HdriDay2.ww) + x_2003)).xy, u_xlat7.zw);
      u_xlat19.x = max(u_xlat7.y, 1.0f);
      u_xlat19.x = (u_xlat7.x / u_xlat19.x);
      u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
      u_xlat7 = vec4f(((x_104.x_B612HdriDay2.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((u_xlat19.xxx * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      let x_2039 = (u_xlat5.xzw * u_xlat7.xyz);
      u_xlat5 = vec4f(x_2039.x, u_xlat5.y, x_2039.yz);
      u_xlat7 = vec4f(max(x_104.x_B612SkyCloudWarm.xyz, vec3f(0.00100000004749745131f)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(log2(u_xlat7.xyz).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((vec3f(u_xlat24) * u_xlat7.xyz)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(exp2(u_xlat7.xyz).xyz, u_xlat7.w);
      let x_2071 = (u_xlat5.xzw * u_xlat7.xyz);
      u_xlat5 = vec4f(x_2071.x, u_xlat5.y, x_2071.yz);
      u_xlat19.x = (x_104.x_B612SkyCloudWarm.w + -1.0f);
      u_xlat24 = ((u_xlat24 * u_xlat19.x) + 1.0f);
      let x_2087 = (vec3f(u_xlat24) * u_xlat5.xzw);
      u_xlat5 = vec4f(x_2087.x, u_xlat5.y, x_2087.yz);
      u_xlat7 = vec4f(((u_xlat6.xyz * x_104.x_B612HdriDusk0.xyz)).xyz, u_xlat7.w);
      u_xlat24 = dot(u_xlat7.xyz, x_1920);
      u_xlat6 = vec4f((((u_xlat6.xyz * x_104.x_B612HdriDusk0.xyz) + -(vec3f(u_xlat24)))).xyz, u_xlat6.w);
      u_xlat6 = vec4f((((x_104.x_B612HdriDusk0.www * u_xlat6.xyz) + vec3f(u_xlat24))).xyz, u_xlat6.w);
      u_xlat6 = vec4f(max(u_xlat6.xyz, vec3f()).xyz, u_xlat6.w);
      u_xlat24 = max(x_104.x_B612HdriDusk1.w, 0.10000000149011611938f);
      u_xlat24 = (1.5f / u_xlat24);
      u_xlat24 = (-(u_xlat24) + 1.0f);
      u_xlat24 = max(u_xlat24, 0.0f);
      u_xlat24 = (u_xlat24 * u_xlat24);
      u_xlat7 = vec4f(((x_104.x_B612HdriDusk1.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((vec3f(u_xlat24) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat7.xyz)).xyz, u_xlat6.w);
      u_xlat7 = vec4f(((-(x_104.x_B612HdriDusk2.ww) + x_2003)).xy, u_xlat7.zw);
      u_xlat24 = max(u_xlat7.y, 1.0f);
      u_xlat24 = (u_xlat7.x / u_xlat24);
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat7 = vec4f(((x_104.x_B612HdriDusk2.xyz + x_1978)).xyz, u_xlat7.w);
      u_xlat7 = vec4f((((vec3f(u_xlat24) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
      u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat7.xyz)).xyz, u_xlat6.w);
      u_xlat24 = (-(x_104.x_B612SkyCloud2.x) + x_104.x_B612SkyCloud2.y);
      u_xlat19.x = (-(x_104.x_B612SkyCloud2.x) + 1.5f);
      u_xlat24 = (1.0f / u_xlat24);
      u_xlat24 = (u_xlat24 * u_xlat19.x);
      u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
      u_xlat19.x = ((u_xlat24 * -2.0f) + 3.0f);
      u_xlat24 = (u_xlat24 * u_xlat24);
      u_xlat24 = (u_xlat24 * u_xlat19.x);
      u_xlat7 = vec4f(x_104.x_B612SkyCloudCut.xyz.xyz, u_xlat7.w);
      u_xlat7 = vec4f(clamp(u_xlat7.xyz, vec3f(0.0f), vec3f(1.0f)).xyz, u_xlat7.w);
      u_xlat7 = vec4f(((-(u_xlat7.xy) + x_470)).xy, u_xlat7.zw);
      u_xlat19.x = max(x_104.x_B612SkyCloudCut.w, 0.10000000149011611938f);
      u_xlat19.x = (1.0f / u_xlat19.x);
      u_xlat19.x = (u_xlat19.x * 1.5f);
      u_xlat19.x = min(u_xlat19.x, 1.0f);
      u_xlat28 = ((u_xlat19.x * -2.0f) + 3.0f);
      u_xlat19.x = (u_xlat19.x * u_xlat19.x);
      u_xlat19.x = ((-(u_xlat28) * u_xlat19.x) + 1.0f);
      u_xlat19.x = ((-(u_xlat7.z) * u_xlat19.x) + 1.0f);
      u_xlat19.x = (u_xlat19.x * u_xlat7.y);
      u_xlat28 = (u_xlat7.x * u_xlat7.w);
      u_xlat30 = ((u_xlat6.w * u_xlat19.x) + -(u_xlat28));
      u_xlat28 = ((u_xlat26 * u_xlat30) + u_xlat28);
      u_xlat28 = (u_xlat24 * u_xlat28);
      let x_2324 = (u_xlat5.xzw * u_xlat7.xxx);
      u_xlat5 = vec4f(x_2324.x, u_xlat5.y, x_2324.yz);
      u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat19.xxx) + -(u_xlat5.xzw))).xyz, u_xlat6.w);
      let x_2345 = ((vec3f(u_xlat26) * u_xlat6.xyz) + u_xlat5.xzw);
      u_xlat5 = vec4f(x_2345.x, u_xlat5.y, x_2345.yz);
      u_xlat6 = vec4f(((vec3f(u_xlat24) * u_xlat5.xzw)).xyz, u_xlat6.w);
      u_xlat26 = x_104.x_B612SkyNight.w;
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat19.x = dot(u_xlat6.xyz, x_1920);
      let x_2372 = ((-(u_xlat5.xzw) * vec3f(u_xlat24)) + u_xlat19.xxx);
      u_xlat5 = vec4f(x_2372.x, u_xlat5.y, x_2372.yz);
      let x_2382 = ((vec3f(u_xlat26) * u_xlat5.xzw) + u_xlat6.xyz);
      u_xlat5 = vec4f(x_2382.x, u_xlat5.y, x_2382.yz);
      u_xlat24 = ((u_xlat19.x * 1.5f) + 1.0f);
      u_xlat24 = (1.0f / u_xlat24);
      u_xlat24 = (u_xlat24 + -1.0f);
      u_xlat24 = ((u_xlat26 * u_xlat24) + 1.0f);
      let x_2401 = (vec3f(u_xlat24) * u_xlat5.xzw);
      u_xlat5 = vec4f(x_2401.x, u_xlat5.y, x_2401.yz);
      u_xlat6 = (-(x_104.x_B612SkyCloudNight.wxyz) + vec4f(1.0f));
      u_xlat14 = (u_xlat6.xxx * u_xlat6.yzw);
      let x_2420 = (u_xlat5.xzw * u_xlat14);
      u_xlat5 = vec4f(x_2420.x, u_xlat5.y, x_2420.yz);
      u_xlat24 = (u_xlat28 * u_xlat6.x);
      u_xlat26 = x_104.x_B612SkyCloud2.z;
      u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
      u_xlat14 = ((u_xlat4.xyz * vec3f(u_xlat24)) + -(u_xlat5.xzw));
      let x_2446 = ((vec3f(u_xlat26) * u_xlat14) + u_xlat5.xzw);
      u_xlat5 = vec4f(x_2446.x, u_xlat5.y, x_2446.yz);
      u_xlat24 = ((-(u_xlat28) * u_xlat6.x) + 1.0f);
      u_xlat4 = vec4f((((u_xlat4.xyz * vec3f(u_xlat24)) + u_xlat5.xzw)).xyz, u_xlat4.w);
      u_xlat4 = vec4f(((u_xlat5.yyy * u_xlat4.xyz)).xyz, u_xlat4.w);
    } else {
      u_xlatb24 = (0.5f < x_104.x_B612HdriParams.x);
      if (u_xlatb24) {
        u_xlat24 = x_104.x_B612TimeParams.x;
        u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
        u_xlat5 = vec4f(max(x_104.x_B612HdriParams.zw, vec2f(10.0f, 0.0f)).xy, u_xlat5.zw);
        u_xlat26 = (u_xlat5.x * x_104.x_B612CloudParams.x);
        u_xlat26 = (u_xlat26 * 0.15915493667125701904f);
        u_xlat19.x = (x_104.x_Time.y * 6.28318548202514648438f);
        u_xlat19.x = (u_xlat19.x / u_xlat5.x);
        u_xlat19.x = sin(u_xlat19.x);
        u_xlat28 = ((u_xlat26 * u_xlat19.x) + x_104.x_B612HdriDay3.x);
        u_xlat28 = ((-(u_xlat24) * x_104.x_B612HdriParams.y) + u_xlat28);
        u_xlat26 = ((u_xlat26 * u_xlat19.x) + x_104.x_B612HdriDusk3.x);
        u_xlat19.x = (-(u_xlat24) + 1.0f);
        u_xlat26 = ((u_xlat19.x * x_104.x_B612HdriParams.y) + u_xlat26);
        u_xlat19.x = min(abs(u_xlat3.y), abs(u_xlat3.x));
        u_xlat5.x = max(abs(u_xlat3.y), abs(u_xlat3.x));
        u_xlat5.x = (1.0f / u_xlat5.x);
        u_xlat19.x = (u_xlat19.x * u_xlat5.x);
        u_xlat5.x = (u_xlat19.x * u_xlat19.x);
        u_xlat21.x = ((u_xlat5.x * 0.02083509974181652069f) + -0.08513300120830535889f);
        u_xlat21.x = ((u_xlat5.x * u_xlat21.x) + 0.18014100193977355957f);
        u_xlat21.x = ((u_xlat5.x * u_xlat21.x) + -0.33029949665069580078f);
        u_xlat5.x = ((u_xlat5.x * u_xlat21.x) + 0.99986600875854492188f);
        u_xlat21.x = (u_xlat19.x * u_xlat5.x);
        u_xlatb29 = (abs(u_xlat3.y) < abs(u_xlat3.x));
        u_xlat21.x = ((u_xlat21.x * -2.0f) + 1.57079637050628662109f);
        if (u_xlatb29) {
          x_2626 = u_xlat21.x;
        } else {
          x_2626 = 0.0f;
        }
        u_xlat21.x = x_2626;
        u_xlat19.x = ((u_xlat19.x * u_xlat5.x) + u_xlat21.x);
        u_xlatb5 = (u_xlat3.y < -(u_xlat3.y));
        u_xlat5.x = select(0.0f, -3.14159274101257324219f, u_xlatb5);
        u_xlat19.x = (u_xlat19.x + u_xlat5.x);
        u_xlat5.x = min(u_xlat3.y, u_xlat3.x);
        u_xlat21.x = max(u_xlat3.y, u_xlat3.x);
        u_xlatb5 = (u_xlat5.x < -(u_xlat5.x));
        u_xlatb21 = (u_xlat21.x >= -(u_xlat21.x));
        u_xlatb5 = (u_xlatb21 & u_xlatb5);
        if (u_xlatb5) {
          x_2686 = -(u_xlat19.x);
        } else {
          x_2686 = u_xlat19.x;
        }
        u_xlat19.x = x_2686;
        u_xlat28 = ((u_xlat19.x * 57.295780181884765625f) + -(u_xlat28));
        u_xlat6.x = ((u_xlat28 * 0.00277777784503996372f) + 0.5f);
        u_xlat6.y = 0.5f;
        u_xlat22.y = 0.5f;
        let x_2716 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat6.xy, 0.0f).xyz;
        u_xlat5 = vec4f(x_2716.x, u_xlat5.y, x_2716.yz);
        u_xlat26 = ((u_xlat19.x * 57.295780181884765625f) + -(u_xlat26));
        u_xlat22.x = ((u_xlat26 * 0.00277777784503996372f) + 0.5f);
        u_xlat6 = vec4f(textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat22, 0.0f).xyz.xyz, u_xlat6.w);
        let x_2742 = (u_xlat5.xzw * x_104.x_B612HdriDay0.xyz);
        u_xlat5 = vec4f(x_2742.x, u_xlat5.y, x_2742.yz);
        u_xlatb26 = (0.0f < x_104.x_B612HdriDay3.z);
        u_xlat19.x = max(u_xlat5.z, u_xlat5.x);
        u_xlat19.x = max(u_xlat5.w, u_xlat19.x);
        u_xlat28 = (u_xlat19.x + -(x_104.x_B612HdriDay3.y));
        u_xlat28 = max(u_xlat28, 0.0f);
        u_xlat30 = (u_xlat28 / x_104.x_B612HdriDay3.z);
        u_xlat30 = (u_xlat30 + 1.0f);
        u_xlat28 = (u_xlat28 / u_xlat30);
        u_xlat28 = (u_xlat28 + x_104.x_B612HdriDay3.y);
        u_xlat19.x = max(u_xlat19.x, x_104.x_B612HdriDay3.y);
        u_xlat19.x = (u_xlat28 / u_xlat19.x);
        u_xlat7 = vec4f(((u_xlat19.xxx * u_xlat5.xzw)).xyz, u_xlat7.w);
        if (u_xlatb26) {
          x_2801 = u_xlat7.xyz;
        } else {
          x_2801 = u_xlat5.xzw;
        }
        u_xlat5 = vec4f(x_2801.x, u_xlat5.y, x_2801.yz);
        u_xlat26 = dot(u_xlat5.xzw, x_1920);
        let x_2820 = (-(vec3f(u_xlat26)) + u_xlat5.xzw);
        u_xlat5 = vec4f(x_2820.x, u_xlat5.y, x_2820.yz);
        let x_2831 = ((x_104.x_B612HdriDay0.www * u_xlat5.xzw) + vec3f(u_xlat26));
        u_xlat5 = vec4f(x_2831.x, u_xlat5.y, x_2831.yz);
        let x_2836 = max(u_xlat5.xzw, vec3f());
        u_xlat5 = vec4f(x_2836.x, u_xlat5.y, x_2836.yz);
        u_xlat26 = max(x_104.x_B612HdriDay1.w, 0.10000000149011611938f);
        u_xlat26 = (u_xlat5.y / u_xlat26);
        u_xlat26 = (-(u_xlat26) + 1.0f);
        u_xlat26 = max(u_xlat26, 0.0f);
        u_xlat26 = (u_xlat26 * u_xlat26);
        u_xlat7 = vec4f(((x_104.x_B612HdriDay1.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        let x_2872 = (u_xlat5.xzw * u_xlat7.xyz);
        u_xlat5 = vec4f(x_2872.x, u_xlat5.y, x_2872.yz);
        u_xlat26 = (x_104.x_B612HdriParams.w + -(x_104.x_B612HdriDay2.w));
        u_xlat19.x = (-(x_104.x_B612HdriDay2.w) + 90.0f);
        u_xlat19.x = max(u_xlat19.x, 1.0f);
        u_xlat26 = (u_xlat26 / u_xlat19.x);
        u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
        u_xlat7 = vec4f(((x_104.x_B612HdriDay2.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        let x_2914 = (u_xlat5.xzw * u_xlat7.xyz);
        u_xlat5 = vec4f(x_2914.x, u_xlat5.y, x_2914.yz);
        u_xlat6 = vec4f(((u_xlat6.xyz * x_104.x_B612HdriDusk0.xyz)).xyz, u_xlat6.w);
        u_xlatb26 = (0.0f < x_104.x_B612HdriDusk3.z);
        u_xlat19.x = max(u_xlat6.y, u_xlat6.x);
        u_xlat19.x = max(u_xlat6.z, u_xlat19.x);
        u_xlat28 = (u_xlat19.x + -(x_104.x_B612HdriDusk3.y));
        u_xlat28 = max(u_xlat28, 0.0f);
        u_xlat30 = (u_xlat28 / x_104.x_B612HdriDusk3.z);
        u_xlat30 = (u_xlat30 + 1.0f);
        u_xlat28 = (u_xlat28 / u_xlat30);
        u_xlat28 = (u_xlat28 + x_104.x_B612HdriDusk3.y);
        u_xlat19.x = max(u_xlat19.x, x_104.x_B612HdriDusk3.y);
        u_xlat19.x = (u_xlat28 / u_xlat19.x);
        u_xlat7 = vec4f(((u_xlat19.xxx * u_xlat6.xyz)).xyz, u_xlat7.w);
        if (u_xlatb26) {
          x_2980 = u_xlat7.xyz;
        } else {
          x_2980 = u_xlat6.xyz;
        }
        u_xlat6 = vec4f(x_2980.xyz, u_xlat6.w);
        u_xlat26 = dot(u_xlat6.xyz, x_1920);
        u_xlat6 = vec4f(((-(vec3f(u_xlat26)) + u_xlat6.xyz)).xyz, u_xlat6.w);
        u_xlat6 = vec4f((((x_104.x_B612HdriDusk0.www * u_xlat6.xyz) + vec3f(u_xlat26))).xyz, u_xlat6.w);
        u_xlat6 = vec4f(max(u_xlat6.xyz, vec3f()).xyz, u_xlat6.w);
        u_xlat26 = max(x_104.x_B612HdriDusk1.w, 0.10000000149011611938f);
        u_xlat26 = (u_xlat5.y / u_xlat26);
        u_xlat26 = (-(u_xlat26) + 1.0f);
        u_xlat26 = max(u_xlat26, 0.0f);
        u_xlat26 = (u_xlat26 * u_xlat26);
        u_xlat7 = vec4f(((x_104.x_B612HdriDusk1.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat7.xyz)).xyz, u_xlat6.w);
        u_xlat26 = (x_104.x_B612HdriParams.w + -(x_104.x_B612HdriDusk2.w));
        u_xlat19.x = (-(x_104.x_B612HdriDusk2.w) + 90.0f);
        u_xlat19.x = max(u_xlat19.x, 1.0f);
        u_xlat26 = (u_xlat26 / u_xlat19.x);
        u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
        u_xlat7 = vec4f(((x_104.x_B612HdriDusk2.xyz + x_1978)).xyz, u_xlat7.w);
        u_xlat7 = vec4f((((vec3f(u_xlat26) * u_xlat7.xyz) + x_1987)).xyz, u_xlat7.w);
        u_xlat6 = vec4f((((u_xlat6.xyz * u_xlat7.xyz) + -(u_xlat5.xzw))).xyz, u_xlat6.w);
        u_xlat4 = vec4f((((vec3f(u_xlat24) * u_xlat6.xyz) + u_xlat5.xzw)).xyz, u_xlat4.w);
      } else {
        u_xlat3.w = 0.02600000053644180298f;
        u_xlat24 = dot(u_xlat3.xyw, u_xlat3.xyw);
        u_xlat24 = inverseSqrt(u_xlat24);
        u_xlat26 = (u_xlat24 * u_xlat3.w);
        u_xlat19.x = ((-(u_xlat3.w) * u_xlat24) + 1.0f);
        u_xlat27 = sqrt(u_xlat19.x);
        u_xlat28 = ((u_xlat24 * -0.00048696179874241352f) + 0.07426100224256515503f);
        u_xlat28 = ((u_xlat28 * u_xlat26) + -0.21211439371109008789f);
        u_xlat28 = ((u_xlat28 * u_xlat26) + 1.57072877883911132812f);
        u_xlat27 = ((-(u_xlat28) * u_xlat27) + 1.57079637050628662109f);
        u_xlat28 = (u_xlat27 * 57.295780181884765625f);
        u_xlat3 = vec4f((((u_xlat3.xy * vec2f(u_xlat24)) + x_266)).xy, u_xlat3.zw);
        u_xlat24 = dot(u_xlat3.xy, u_xlat3.xy);
        u_xlat24 = inverseSqrt(u_xlat24);
        u_xlat3 = vec4f(((vec2f(u_xlat24) * u_xlat3.xy)).xy, u_xlat3.zw);
        u_xlat5 = vec4f(((x_104.x_B612SunDirection.xz + x_266)).xy, u_xlat5.zw);
        u_xlat24 = dot(u_xlat5.xy, u_xlat5.xy);
        u_xlat24 = inverseSqrt(u_xlat24);
        u_xlat5 = vec4f(((vec2f(u_xlat24) * u_xlat5.xy)).xy, u_xlat5.zw);
        u_xlat24 = dot(u_xlat3.xy, u_xlat5.xy);
        u_xlat24 = ((u_xlat24 * 0.5f) + 0.5f);
        u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
        u_xlat3 = vec4f(max(x_104.x_B612SkyParams.yw, x_1421).xy, u_xlat3.zw);
        u_xlat5.x = log2(u_xlat24);
        u_xlat3.x = (u_xlat3.x * u_xlat5.x);
        u_xlat3.x = exp2(u_xlat3.x);
        u_xlat13 = (-(x_104.x_B612SkyHorizon.xyz) + x_104.x_B612SkyHorizonSun.xyz);
        u_xlat13 = ((u_xlat3.xxx * u_xlat13) + x_104.x_B612SkyHorizon.xyz);
        u_xlat6.x = (x_104.x_B612SkyParams.x * 0.44999998807907104492f);
        u_xlat6.x = max(u_xlat6.x, 0.00999999977648258209f);
        u_xlat6.x = (-(u_xlat26) / u_xlat6.x);
        u_xlat6.x = (u_xlat6.x * 1.44269502162933349609f);
        u_xlat6.x = exp2(u_xlat6.x);
        u_xlat6.x = (-(u_xlat6.x) + 1.0f);
        u_xlat14 = (-(x_104.x_B612SkyZenith.xyz) + x_104.x_B612SkyHorizonSun.xyz);
        u_xlat14 = (u_xlat14 * x_1500);
        u_xlat3.x = (u_xlat3.x * x_104.x_B612SkyParams.z);
        u_xlat3.x = (u_xlat19.x * u_xlat3.x);
        u_xlat14 = ((u_xlat3.xxx * u_xlat14) + x_104.x_B612SkyZenith.xyz);
        u_xlat14 = (-(u_xlat13) + u_xlat14);
        u_xlat13 = ((u_xlat6.xxx * u_xlat14) + u_xlat13);
        u_xlat3.x = max(x_104.x_B612HazeParams.x, 0.10000000149011611938f);
        u_xlat26 = (-(u_xlat26) * u_xlat3.x);
        u_xlat26 = (u_xlat26 * 1.44269502162933349609f);
        u_xlat26 = exp2(u_xlat26);
        u_xlat26 = (u_xlat26 * x_104.x_B612HazeColor.w);
        u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
        u_xlat6 = vec4f(((-(u_xlat13) + x_104.x_B612HazeColor.xyz)).xyz, u_xlat6.w);
        u_xlat13 = ((vec3f(u_xlat26) * u_xlat6.xyz) + u_xlat13);
        u_xlat6 = vec4f(max(x_104.x_B612SkyParams2.xyz, x_1598).xyz, u_xlat6.w);
        u_xlat26 = (u_xlat5.x * u_xlat6.x);
        u_xlat26 = exp2(u_xlat26);
        u_xlat7 = vec4f(((vec3f(u_xlat26) * x_104.x_B612SkyGlow.xyz)).xyz, u_xlat7.w);
        u_xlat26 = max(x_104.x_B612SkyGlow.w, 0.10000000149011611938f);
        u_xlat26 = (-(u_xlat28) / u_xlat26);
        u_xlat26 = (u_xlat26 * 1.44269502162933349609f);
        u_xlat26 = exp2(u_xlat26);
        u_xlat5 = vec4f((((u_xlat7.xyz * vec3f(u_xlat26)) + u_xlat13)).xyz, u_xlat5.w);
        u_xlat26 = ((u_xlat27 * 57.295780181884765625f) + -(x_104.x_B612SkyAnti.w));
        u_xlat26 = (u_xlat26 / u_xlat6.y);
        u_xlat24 = (-(u_xlat24) + 1.0f);
        u_xlat24 = log2(u_xlat24);
        u_xlat24 = (u_xlat24 * u_xlat6.z);
        u_xlat24 = exp2(u_xlat24);
        let x_3407 = (vec3f(u_xlat24) * x_104.x_B612SkyAnti.xyz);
        u_xlat3 = vec4f(x_3407.x, u_xlat3.y, x_3407.yz);
        u_xlat24 = (u_xlat26 * -(u_xlat26));
        u_xlat24 = (u_xlat24 * 1.44269502162933349609f);
        u_xlat24 = exp2(u_xlat24);
        let x_3425 = ((u_xlat3.xzw * vec3f(u_xlat24)) + u_xlat5.xyz);
        u_xlat3 = vec4f(x_3425.x, u_xlat3.y, x_3425.yz);
        u_xlat4 = vec4f(((u_xlat3.yyy * u_xlat3.xzw)).xyz, u_xlat4.w);
      }
    }
    u_xlat0 = vec4f((((-(u_xlat1) * u_xlat0.xyz) + u_xlat4.xyz)).xyz, u_xlat0.w);
    u_xlat2 = ((vec3f(u_xlat25) * u_xlat0.xyz) + u_xlat2);
  }
  u_xlat0.x = (vs_TEXCOORD2 * -(vs_TEXCOORD2));
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat8 = (u_xlat2 + -(x_104.unity_FogColor.xyz));
  SV_Target0 = vec4f((((u_xlat0.xxx * u_xlat8) + x_104.unity_FogColor.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec3f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD2_param : f32, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Shared/Rendering/Shaders/B612_FarLandscape.shader
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

@group(1) @binding(1) var<uniform> x_24 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_58 : VGlobals;

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
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

//Assets/Shared/Rendering/Shaders/B612_FarLandscape.shader
diagnostic(off, derivative_uniformity);

var<private> gl_FragCoord : vec4f;

var<private> SV_Target0 : f32;

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  SV_Target0 = hlslcc_FragCoord.z;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : f32,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Shared/Rendering/Shaders/B612_FarLandscape.shader
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

@group(1) @binding(1) var<uniform> x_24 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_58 : VGlobals;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD0 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
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
  u_xlat0.x = dot(in_NORMAL0, x_24.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_24.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_24.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD0 = (vec3f(u_xlat6) * u_xlat0.xyz);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

//Assets/Shared/Rendering/Shaders/B612_FarLandscape.shader
diagnostic(off, derivative_uniformity);

var<private> vs_TEXCOORD0 : vec3f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = dot(vs_TEXCOORD0, vs_TEXCOORD0);
  u_xlat0 = inverseSqrt(u_xlat0);
  SV_Target0 = vec4f(((vec3f(u_xlat0) * vs_TEXCOORD0)).xyz, SV_Target0.w);
  SV_Target0.w = 0.0f;
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

