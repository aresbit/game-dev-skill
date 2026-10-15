//Assets/Levels/B612/Shaders/B612_CloudPuff.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  hlslcc_mtx4x4unity_MatrixVP : Arr,
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

@group(1) @binding(3) var<uniform> x_16 : VGlobals;

@group(1) @binding(1) var<uniform> x_33 : UnityPerDraw;

var<private> vs_TEXCOORD3 : vec3f;

var<private> in_POSITION0 : vec4f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD4 : vec3f;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : vec2f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat9 : f32;
  var u_xlat1 : vec4f;
  var u_xlat10 : f32;
  var u_xlat2 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((-(x_16.x_WorldSpaceCameraPos.xz) + x_33.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz)).xy, u_xlat0.zw);
  let x_47 = (u_xlat0.xy + vec2f(0.00009999999747378752f, 0.0f));
  u_xlat0 = vec4f(x_47.x, u_xlat0.y, x_47.y, u_xlat0.w);
  u_xlat9 = dot(u_xlat0.xz, u_xlat0.xz);
  u_xlat9 = inverseSqrt(u_xlat9);
  u_xlat0.y = 0.0f;
  u_xlat0 = vec4f(((vec3f(u_xlat9) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat9 = dot(x_33.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz, x_33.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0.w = sqrt(u_xlat9);
  u_xlat1.y = (u_xlat0.w * 0.40000000596046447754f);
  u_xlat1.x = 0.0f;
  u_xlat1.z = 0.0f;
  u_xlat1 = vec4f(((u_xlat1.xyz + x_33.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + -(x_16.x_WorldSpaceCameraPos))).xyz, u_xlat1.w);
  u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat10 = inverseSqrt(u_xlat10);
  u_xlat1 = vec4f((((u_xlat1.xyz * vec3f(u_xlat10)) + -(u_xlat0.xyz))).xyz, u_xlat1.w);
  u_xlat0 = vec4f((((u_xlat1.xyz * vec3f(0.60000002384185791016f)) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1.x = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1.xxx)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat0.yzx * vec3f(0.0f, 0.0f, 1.0f))).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat0.zxy * vec3f(1.0f, 0.0f, 0.0f)) + -(u_xlat1.xyz))).xyz, u_xlat1.w);
  u_xlat10 = dot(u_xlat1.xz, u_xlat1.xz);
  u_xlat10 = inverseSqrt(u_xlat10);
  u_xlat1 = vec4f(((vec3f(u_xlat10) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat2 = (u_xlat0.zxy * u_xlat1.yzx);
  u_xlat2 = ((u_xlat0.yzx * u_xlat1.zxy) + -(u_xlat2));
  vs_TEXCOORD3 = u_xlat0.xyz;
  u_xlat0.x = dot(x_33.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz, x_33.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz);
  u_xlat0.x = sqrt(u_xlat0.x);
  let x_219 = (u_xlat0.xw * in_POSITION0.xy);
  u_xlat0 = vec4f(x_219.x, u_xlat0.yz, x_219.y);
  u_xlat0 = vec4f((((u_xlat1.xyz * u_xlat0.xxx) + x_33.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  vs_TEXCOORD2 = u_xlat1.xyz;
  u_xlat0 = vec4f((((u_xlat2 * u_xlat0.www) + u_xlat0.xyz)).xyz, u_xlat0.w);
  vs_TEXCOORD4 = u_xlat2;
  u_xlat1 = (u_xlat0.yyyy * x_16.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_16.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_16.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0.xyz;
  gl_Position = (u_xlat1 + x_16.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD1 = (in_POSITION0.xy + vec2f(0.5f, 0.0f));
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD3_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD4_1 : vec3f,
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec2f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD3, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_CloudPuff.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Cell : f32,
  /* @offset(4) */
  x_Opacity : f32,
  /* @offset(8) */
  x_Softness : f32,
  /* @offset(12) */
  x_Contrast : f32,
  /* @offset(16) */
  x_SunScale : f32,
  /* @offset(20) */
  x_AmbientScale : f32,
  /* @offset(24) */
  x_Silver : f32,
  /* @offset(28) */
  x_DepthFade : f32,
  /* @offset(32) */
  x_HazeDensity : f32,
  /* @offset(36) */
  x_HazeStart : f32,
  /* @offset(40) */
  x_BottomFade : f32,
  /* @offset(48) */
  x_NearFade : vec4f,
}

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
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
  x_ZBufferParams : vec4f,
  /* @offset(112) */
  x_ScaleBiasRt : vec4f,
  /* @offset(128) */
  x_RTHandleScale : vec4f,
  /* @offset(144) */
  x_ScreenSize : vec4f,
  /* @offset(160) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(176) */
  x_B612SunDirection : vec4f,
  /* @offset(192) */
  x_B612TimeParams : vec4f,
  /* @offset(208) */
  x_B612SkyZenith : vec4f,
  /* @offset(224) */
  x_B612SkyHorizon : vec4f,
  /* @offset(240) */
  x_B612SkyHorizonSun : vec4f,
  /* @offset(256) */
  x_B612SkyParams : vec4f,
  /* @offset(272) */
  x_B612HazeColor : vec4f,
  /* @offset(288) */
  x_B612HazeParams : vec4f,
  /* @offset(304) */
  x_B612SkyGlow : vec4f,
  /* @offset(320) */
  x_B612SkyAnti : vec4f,
  /* @offset(336) */
  x_B612SkyParams2 : vec4f,
  /* @offset(352) */
  x_B612CloudParams : vec4f,
  /* @offset(368) */
  x_B612SunGlow : vec4f,
  /* @offset(384) */
  x_B612HdriParams : vec4f,
  /* @offset(400) */
  x_B612HdriDay0 : vec4f,
  /* @offset(416) */
  x_B612HdriDay1 : vec4f,
  /* @offset(432) */
  x_B612HdriDay2 : vec4f,
  /* @offset(448) */
  x_B612HdriDay3 : vec4f,
  /* @offset(464) */
  x_B612HdriDusk0 : vec4f,
  /* @offset(480) */
  x_B612HdriDusk1 : vec4f,
  /* @offset(496) */
  x_B612HdriDusk2 : vec4f,
  /* @offset(512) */
  x_B612HdriDusk3 : vec4f,
  /* @offset(528) */
  x_B612SkyCloud : vec4f,
  /* @offset(544) */
  x_B612SkyCloud2 : vec4f,
  /* @offset(560) */
  x_B612SkyCloudWarm : vec4f,
  /* @offset(576) */
  x_B612SkyNight : vec4f,
  /* @offset(592) */
  x_B612SkyCloudNight : vec4f,
  /* @offset(608) */
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
  Xhlslcc_UnusedXunity_SHBr : vec4f,
  /* @offset(496) */
  Xhlslcc_UnusedXunity_SHBg : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedXunity_SHBb : vec4f,
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

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD1 : vec2f;

@group(1) @binding(2) var<uniform> x_46 : UnityPerMaterial;

@group(0) @binding(3) var x_CumulusPos : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(1) @binding(0) var<uniform> x_169 : PGlobals;

@group(0) @binding(4) var x_CumulusNeg : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD4 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

@group(1) @binding(1) var<uniform> x_476 : UnityPerDraw;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

var<private> vs_TEXCOORD0 : vec3f;

var<private> SV_Target0 : vec4f;

@group(0) @binding(1) var x_B612HdriRingDay : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

@group(0) @binding(2) var x_B612HdriRingDusk : texture_2d<f32>;

const x_481 = vec2f(1.0f);

const x_573 = vec2f(0.5f);

const x_777 = vec2f(0.00000999999974737875f, 0.0f);

const x_945 = vec2f(0.00999999977648258209f, 0.0f);

const x_1018 = vec3f(0.34999999403953552246f);

const x_1104 = vec3f(0.00999999977648258209f, 0.10000000149011611938f, 0.00999999977648258209f);

const x_1420 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_1478 = vec3f(-1.0f);

const x_1484 = vec3f(1.0f);

const x_1501 = vec2f(1.5f, 90.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb21 : bool;
  var u_xlat1 : vec4f;
  var x_74 : vec2f;
  var u_xlatb1 : vec3<bool>;
  var u_xlat8 : vec3f;
  var x_112 : f32;
  var u_xlat15 : f32;
  var u_xlat2 : vec4f;
  var u_xlat21 : f32;
  var u_xlat14 : f32;
  var u_xlat7 : vec3f;
  var u_xlatb7 : bool;
  var u_xlat3 : vec4f;
  var hlslcc_movcTemp : vec3f;
  var x_367 : f32;
  var x_379 : f32;
  var x_403 : f32;
  var u_xlatu1 : vec4u;
  var u_xlat22 : f32;
  var u_xlatb2 : bool;
  var u_xlat9 : vec3f;
  var u_xlat23 : f32;
  var u_xlat10 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat24 : f32;
  var u_xlat25 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlatb4 : bool;
  var u_xlatb10 : bool;
  var u_xlatb24 : bool;
  var x_1360 : f32;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlat19 : f32;
  var u_xlatb15 : bool;
  var u_xlat17 : vec2f;
  var u_xlatb11 : bool;
  var x_2118 : f32;
  var x_2172 : f32;
  var u_xlat18 : vec2f;
  var u_xlatb23 : bool;
  var x_2291 : vec3f;
  var x_2467 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  u_xlat0 = vec4f(vs_TEXCOORD1.xy, u_xlat0.zw);
  u_xlat0 = vec4f(clamp(u_xlat0.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat0.zw);
  u_xlatb21 = (x_46.x_Cell >= 4.0f);
  u_xlat1.y = (-(u_xlat0.x) + 1.0f);
  u_xlat1.x = (x_46.x_Cell + -4.0f);
  u_xlat0.z = x_46.x_Cell;
  if (u_xlatb21) {
    x_74 = u_xlat1.xy;
  } else {
    x_74 = u_xlat0.zx;
  }
  u_xlat0 = vec4f(x_74.x, u_xlat0.y, x_74.y, u_xlat0.w);
  let x_90 = (u_xlat0.xz * vec2f(0.5f, 33.33333587646484375f));
  u_xlat0 = vec4f(x_90.x, u_xlat0.yz, x_90.y);
  u_xlatb1.x = (u_xlat0.x >= -(u_xlat0.x));
  u_xlat8.x = fract(abs(u_xlat0.x));
  if (u_xlatb1.x) {
    x_112 = u_xlat8.x;
  } else {
    x_112 = -(u_xlat8.x);
  }
  u_xlat1.x = x_112;
  u_xlat0.x = floor(u_xlat0.x);
  u_xlat1.x = ((u_xlat1.x * 2.0f) + u_xlat0.z);
  u_xlat1.x = (u_xlat1.x * 0.5f);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat15 = (u_xlat0.y * 0.5f);
  u_xlat1.y = ((u_xlat0.x * 0.5f) + u_xlat15);
  let x_165 = u_xlat1;
  let x_172 = x_169.x_GlobalMipBias.x;
  let x_173 = textureSampleBias(x_CumulusPos, sampler_LinearClamp, x_165.xy, x_172);
  u_xlat2 = x_173;
  u_xlat0.x = max(u_xlat2.w, 0.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * x_46.x_Softness);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * x_46.x_Opacity);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat21 = min(u_xlat0.w, 1.0f);
  u_xlat15 = ((u_xlat21 * -2.0f) + 3.0f);
  u_xlat21 = (u_xlat21 * u_xlat21);
  u_xlat21 = (u_xlat21 * u_xlat15);
  u_xlat14 = (u_xlat0.z + -1.0f);
  u_xlat14 = (u_xlat14 * -33.33336639404296875f);
  u_xlat14 = min(u_xlat14, 1.0f);
  u_xlat15 = ((u_xlat14 * -2.0f) + 3.0f);
  u_xlat14 = (u_xlat14 * u_xlat14);
  u_xlat14 = (u_xlat14 * u_xlat15);
  u_xlat14 = (u_xlat14 * u_xlat21);
  u_xlat21 = (u_xlat0.y + -1.0f);
  u_xlat21 = (u_xlat21 * -24.9999866485595703125f);
  u_xlat21 = min(u_xlat21, 1.0f);
  u_xlat15 = ((u_xlat21 * -2.0f) + 3.0f);
  u_xlat21 = (u_xlat21 * u_xlat21);
  u_xlat21 = (u_xlat21 * u_xlat15);
  u_xlat14 = (u_xlat21 * u_xlat14);
  u_xlat0.x = (u_xlat14 * u_xlat0.x);
  u_xlat14 = max(x_46.x_BottomFade, 0.00100000004749745131f);
  u_xlat14 = (1.0f / u_xlat14);
  u_xlat7.x = (u_xlat14 * u_xlat0.y);
  u_xlat7.x = min(u_xlat7.x, 1.0f);
  u_xlat14 = ((u_xlat7.x * -2.0f) + 3.0f);
  u_xlat7.x = (u_xlat7.x * u_xlat7.x);
  u_xlat7.x = (u_xlat7.x * u_xlat14);
  u_xlat0.x = (u_xlat7.x * u_xlat0.x);
  u_xlatb7 = (u_xlat0.x < 0.00300000002607703209f);
  if (((select(0i, 1i, u_xlatb7) * -1i) != 0i)) {
    discard;
  }
  let x_320 = u_xlat1;
  let x_323 = x_169.x_GlobalMipBias.x;
  let x_324 = textureSampleBias(x_CumulusNeg, sampler_LinearClamp, x_320.xy, x_323);
  u_xlat7 = x_324.xyz;
  u_xlat1.x = dot(x_169.x_MainLightPosition.xyz, vs_TEXCOORD2);
  u_xlat1.y = dot(x_169.x_MainLightPosition.xyz, vs_TEXCOORD4);
  u_xlat1.z = dot(x_169.x_MainLightPosition.xyz, vs_TEXCOORD3);
  u_xlat3 = vec4f(((u_xlat1.xyz * u_xlat1.xyz)).xyz, u_xlat3.w);
  u_xlatb1 = ((vec4f() < u_xlat1.xyzx)).xyz;
  hlslcc_movcTemp = u_xlat7;
  if (u_xlatb1.x) {
    x_367 = u_xlat2.x;
  } else {
    x_367 = u_xlat7.x;
  }
  hlslcc_movcTemp.x = x_367;
  if (u_xlatb1.y) {
    x_379 = u_xlat2.y;
  } else {
    x_379 = u_xlat7.y;
  }
  hlslcc_movcTemp.y = x_379;
  u_xlat7 = hlslcc_movcTemp;
  u_xlat1.x = (x_46.x_Silver + 1.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat2.z);
  if (u_xlatb1.z) {
    x_403 = u_xlat1.x;
  } else {
    x_403 = u_xlat7.z;
  }
  u_xlat21 = x_403;
  u_xlat7 = vec3f(((u_xlat3.xy * u_xlat7.xy)).xy, u_xlat7.z);
  u_xlat7.x = (u_xlat7.y + u_xlat7.x);
  u_xlat7.x = ((u_xlat21 * u_xlat3.z) + u_xlat7.x);
  u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
  u_xlat7.x = log2(u_xlat7.x);
  u_xlat7.x = (u_xlat7.x * x_46.x_Contrast);
  u_xlat7.x = exp2(u_xlat7.x);
  u_xlat14 = ((u_xlat2.y * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat1 = vec4f(((x_169.x_MainLightColor.xyz * vec3f(x_46.x_SunScale))).xyz, u_xlat1.w);
  u_xlat2.x = dot(x_476.unity_SHAr.yw, x_481);
  u_xlat2.y = dot(x_476.unity_SHAg.yw, x_481);
  u_xlat2.z = dot(x_476.unity_SHAb.yw, x_481);
  u_xlat2 = vec4f(((u_xlat2.xyz + -(x_476.unity_SHC.xyz))).xyz, u_xlat2.w);
  let x_515 = vec3f(x_46.x_AmbientScale, x_46.x_AmbientScale, x_46.x_AmbientScale);
  u_xlat2 = vec4f(((u_xlat2.xyz * vec3f(x_515.x, x_515.y, x_515.z))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((vec3f(u_xlat14) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat7 = ((u_xlat1.xyz * u_xlat7.xxx) + u_xlat2.xyz);
  let x_540 = x_169.x_ScaledScreenParams.xy;
  u_xlat1 = vec4f(((x_481 / vec2f(x_540.x, x_540.y))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * hlslcc_FragCoord.xy)).xy, u_xlat1.zw);
  u_xlat8.x = ((u_xlat1.y * x_169.x_ScaleBiasRt.x) + x_169.x_ScaleBiasRt.y);
  u_xlat1.z = (-(u_xlat8.x) + 1.0f);
  let x_575 = ((-(x_169.x_CameraDepthTexture_TexelSize.xy) * x_573) + x_481);
  u_xlat8 = vec3f(x_575.x, u_xlat8.y, x_575.y);
  u_xlat1 = vec4f(min(u_xlat8.xz, u_xlat1.xz).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * x_169.x_RTHandleScale.xy)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat1.xy * x_169.x_ScreenSize.xy)).xy, u_xlat1.zw);
  u_xlatu1 = vec4u(vec2u(u_xlat1.xy).xy, u_xlatu1.zw);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  u_xlat1.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu1.xy), bitcast<i32>(u_xlatu1.w)).x;
  u_xlat1.x = ((x_169.x_ZBufferParams.z * u_xlat1.x) + x_169.x_ZBufferParams.w);
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat8.x = ((x_169.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_169.x_ZBufferParams.w);
  u_xlat8.x = (1.0f / u_xlat8.x);
  u_xlat1.x = (-(u_xlat8.x) + u_xlat1.x);
  u_xlat8.x = max(x_46.x_DepthFade, 0.00999999977648258209f);
  u_xlat1.x = (u_xlat1.x / u_xlat8.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat1.x);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_169.x_WorldSpaceCameraPos))).xyz, u_xlat1.w);
  u_xlat8.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat8.x = sqrt(u_xlat8.x);
  u_xlat22 = (-(x_46.x_NearFade.x) + x_46.x_NearFade.y);
  u_xlat2.x = (u_xlat8.x + -(x_46.x_NearFade.x));
  u_xlat22 = (1.0f / u_xlat22);
  u_xlat22 = (u_xlat22 * u_xlat2.x);
  u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat22 * -2.0f) + 3.0f);
  u_xlat22 = (u_xlat22 * u_xlat22);
  u_xlat22 = (u_xlat22 * u_xlat2.x);
  SV_Target0.w = (u_xlat0.x * u_xlat22);
  u_xlat0.x = (u_xlat8.x + -(x_46.x_HazeStart));
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  u_xlat0.x = (-(u_xlat0.x) * x_46.x_HazeDensity);
  u_xlat0.x = (u_xlat0.x * 1.44269502162933349609f);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xz + x_777)).xy, u_xlat1.zw);
  u_xlat15 = dot(u_xlat1.xy, u_xlat1.xy);
  u_xlat15 = inverseSqrt(u_xlat15);
  u_xlat1 = vec4f(((vec2f(u_xlat15) * u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlatb2 = (1.5f < x_169.x_B612HdriParams.x);
  if (u_xlatb2) {
    u_xlat1.z = 0.02600000053644180298f;
    u_xlat2.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat2.x = inverseSqrt(u_xlat2.x);
    u_xlat9 = (u_xlat1.xzy * u_xlat2.xxx);
    u_xlat9.x = dot(u_xlat9, x_169.x_B612SunDirection.xyz);
    u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
    u_xlat15 = ((-(u_xlat1.z) * u_xlat2.x) + 1.0f);
    u_xlat23 = sqrt(u_xlat15);
    u_xlat3.x = ((u_xlat2.x * -0.00048696179874241352f) + 0.07426100224256515503f);
    u_xlat3.x = ((u_xlat3.x * u_xlat9.y) + -0.21211439371109008789f);
    u_xlat3.x = ((u_xlat3.x * u_xlat9.y) + 1.57072877883911132812f);
    u_xlat23 = ((-(u_xlat3.x) * u_xlat23) + 1.57079637050628662109f);
    u_xlat3.x = (u_xlat23 * 57.295780181884765625f);
    u_xlat10 = vec3f((((u_xlat1.xy * u_xlat2.xx) + x_777)).xy, u_xlat10.z);
    u_xlat2.x = dot(u_xlat10.xy, u_xlat10.xy);
    u_xlat2.x = inverseSqrt(u_xlat2.x);
    u_xlat10 = vec3f(((u_xlat2.xx * u_xlat10.xy)).xy, u_xlat10.z);
    u_xlat4 = vec4f(((x_169.x_B612SunDirection.xz + x_777)).xy, u_xlat4.zw);
    u_xlat2.x = dot(u_xlat4.xy, u_xlat4.xy);
    u_xlat2.x = inverseSqrt(u_xlat2.x);
    u_xlat4 = vec4f(((u_xlat2.xx * u_xlat4.xy)).xy, u_xlat4.zw);
    u_xlat2.x = dot(u_xlat10.xy, u_xlat4.xy);
    u_xlat2.x = ((u_xlat2.x * 0.5f) + 0.5f);
    u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
    u_xlat10 = vec3f(max(x_169.x_B612SkyParams.yw, x_945).xy, u_xlat10.z);
    u_xlat24 = log2(u_xlat2.x);
    u_xlat10.x = (u_xlat24 * u_xlat10.x);
    u_xlat10.x = exp2(u_xlat10.x);
    u_xlat4 = vec4f(((-(x_169.x_B612SkyHorizon.xyz) + x_169.x_B612SkyHorizonSun.xyz)).xyz, u_xlat4.w);
    u_xlat4 = vec4f((((u_xlat10.xxx * u_xlat4.xyz) + x_169.x_B612SkyHorizon.xyz)).xyz, u_xlat4.w);
    u_xlat25 = (x_169.x_B612SkyParams.x * 0.44999998807907104492f);
    u_xlat25 = max(u_xlat25, 0.00999999977648258209f);
    u_xlat25 = (-(u_xlat9.y) / u_xlat25);
    u_xlat25 = (u_xlat25 * 1.44269502162933349609f);
    u_xlat25 = exp2(u_xlat25);
    u_xlat25 = (-(u_xlat25) + 1.0f);
    u_xlat5 = vec4f(((-(x_169.x_B612SkyZenith.xyz) + x_169.x_B612SkyHorizonSun.xyz)).xyz, u_xlat5.w);
    u_xlat5 = vec4f(((u_xlat5.xyz * x_1018)).xyz, u_xlat5.w);
    u_xlat10.x = (u_xlat10.x * x_169.x_B612SkyParams.z);
    u_xlat15 = (u_xlat15 * u_xlat10.x);
    u_xlat5 = vec4f((((vec3f(u_xlat15) * u_xlat5.xyz) + x_169.x_B612SkyZenith.xyz)).xyz, u_xlat5.w);
    u_xlat5 = vec4f(((-(u_xlat4.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
    u_xlat4 = vec4f((((vec3f(u_xlat25) * u_xlat5.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
    u_xlat15 = max(x_169.x_B612HazeParams.x, 0.10000000149011611938f);
    u_xlat15 = (u_xlat15 * -(u_xlat9.y));
    u_xlat15 = (u_xlat15 * 1.44269502162933349609f);
    u_xlat15 = exp2(u_xlat15);
    u_xlat15 = (u_xlat15 * x_169.x_B612HazeColor.w);
    u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
    u_xlat5 = vec4f(((-(u_xlat4.xyz) + x_169.x_B612HazeColor.xyz)).xyz, u_xlat5.w);
    u_xlat4 = vec4f((((vec3f(u_xlat15) * u_xlat5.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
    u_xlat5 = vec4f(max(x_169.x_B612SkyParams2.xyz, x_1104).xyz, u_xlat5.w);
    u_xlat15 = (u_xlat24 * u_xlat5.x);
    u_xlat15 = exp2(u_xlat15);
    u_xlat6 = (vec3f(u_xlat15) * x_169.x_B612SkyGlow.xyz);
    u_xlat15 = max(x_169.x_B612SkyGlow.w, 0.10000000149011611938f);
    u_xlat15 = (-(u_xlat3.x) / u_xlat15);
    u_xlat15 = (u_xlat15 * 1.44269502162933349609f);
    u_xlat15 = exp2(u_xlat15);
    let x_1140 = ((u_xlat6 * vec3f(u_xlat15)) + u_xlat4.xyz);
    u_xlat3 = vec4f(x_1140.xy, u_xlat3.z, x_1140.z);
    u_xlat15 = ((u_xlat23 * 57.295780181884765625f) + -(x_169.x_B612SkyAnti.w));
    u_xlat15 = (u_xlat15 / u_xlat5.y);
    u_xlat2.x = (-(u_xlat2.x) + 1.0f);
    u_xlat2.x = log2(u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * u_xlat5.z);
    u_xlat2.x = exp2(u_xlat2.x);
    let x_1177 = (u_xlat2.xxx * x_169.x_B612SkyAnti.xyz);
    u_xlat2 = vec4f(x_1177.x, u_xlat2.y, x_1177.yz);
    u_xlat15 = (u_xlat15 * -(u_xlat15));
    u_xlat15 = (u_xlat15 * 1.44269502162933349609f);
    u_xlat15 = exp2(u_xlat15);
    let x_1195 = ((u_xlat2.xzw * vec3f(u_xlat15)) + u_xlat3.xyw);
    u_xlat2 = vec4f(x_1195.x, u_xlat2.y, x_1195.yz);
    u_xlat15 = max(x_169.x_B612SunGlow.w, 1.0f);
    u_xlat9.x = log2(u_xlat9.x);
    u_xlat15 = (u_xlat15 * u_xlat9.x);
    u_xlat15 = exp2(u_xlat15);
    u_xlat2 = vec4f((((x_169.x_B612SunGlow.xyz * vec3f(u_xlat15)) + u_xlat2.xzw)).xyz, u_xlat2.w);
    u_xlat15 = x_169.x_B612TimeParams.x;
    u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
    u_xlat23 = x_169.x_B612SkyCloud.z;
    u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
    u_xlat3.x = min(abs(u_xlat1.y), abs(u_xlat1.x));
    u_xlat10.x = max(abs(u_xlat1.y), abs(u_xlat1.x));
    u_xlat10.x = (1.0f / u_xlat10.x);
    u_xlat3.x = (u_xlat10.x * u_xlat3.x);
    u_xlat10.x = (u_xlat3.x * u_xlat3.x);
    u_xlat24 = ((u_xlat10.x * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat24 = ((u_xlat10.x * u_xlat24) + 0.18014100193977355957f);
    u_xlat24 = ((u_xlat10.x * u_xlat24) + -0.33029949665069580078f);
    u_xlat10.x = ((u_xlat10.x * u_xlat24) + 0.99986600875854492188f);
    u_xlat24 = (u_xlat10.x * u_xlat3.x);
    u_xlatb4 = (abs(u_xlat1.y) < abs(u_xlat1.x));
    u_xlat24 = ((u_xlat24 * -2.0f) + 1.57079637050628662109f);
    u_xlat24 = select(0.0f, u_xlat24, u_xlatb4);
    u_xlat3.x = ((u_xlat3.x * u_xlat10.x) + u_xlat24);
    u_xlatb10 = (u_xlat1.y < -(u_xlat1.y));
    u_xlat10.x = select(0.0f, -3.14159274101257324219f, u_xlatb10);
    u_xlat3.x = (u_xlat10.x + u_xlat3.x);
    u_xlat10.x = min(u_xlat1.y, u_xlat1.x);
    u_xlat24 = max(u_xlat1.y, u_xlat1.x);
    u_xlatb10 = (u_xlat10.x < -(u_xlat10.x));
    u_xlatb24 = (u_xlat24 >= -(u_xlat24));
    u_xlatb10 = (u_xlatb24 & u_xlatb10);
    if (u_xlatb10) {
      x_1360 = -(u_xlat3.x);
    } else {
      x_1360 = u_xlat3.x;
    }
    u_xlat3.x = x_1360;
    u_xlat3 = vec4f((((u_xlat3.xx * vec2f(57.295780181884765625f)) + -(x_169.x_B612SkyCloud.xy))).xy, u_xlat3.zw);
    u_xlat4 = vec4f((((u_xlat3.xy * vec2f(0.00277777784503996372f)) + x_573)).xy, u_xlat4.zw);
    u_xlat4.z = 0.5f;
    u_xlat5 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat4.xz, 0.0f);
    u_xlat4 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat4.yz, 0.0f);
    let x_1412 = (u_xlat5.xyz * x_169.x_B612HdriDay0.xyz);
    u_xlat3 = vec4f(x_1412.xy, u_xlat3.z, x_1412.z);
    u_xlat3.x = dot(u_xlat3.xyw, x_1420);
    u_xlat5 = vec4f((((u_xlat5.xyz * x_169.x_B612HdriDay0.xyz) + -(u_xlat3.xxx))).xyz, u_xlat5.w);
    let x_1443 = ((x_169.x_B612HdriDay0.www * u_xlat5.xyz) + u_xlat3.xxx);
    u_xlat3 = vec4f(x_1443.xy, u_xlat3.z, x_1443.z);
    let x_1449 = max(u_xlat3.xyw, vec3f());
    u_xlat3 = vec4f(x_1449.xy, u_xlat3.z, x_1449.z);
    u_xlat5.x = max(x_169.x_B612HdriDay1.w, 0.10000000149011611938f);
    u_xlat5.x = (1.5f / u_xlat5.x);
    u_xlat5.x = (-(u_xlat5.x) + 1.0f);
    u_xlat5.x = max(u_xlat5.x, 0.0f);
    u_xlat5.x = (u_xlat5.x * u_xlat5.x);
    u_xlat6 = (x_169.x_B612HdriDay1.xyz + x_1478);
    u_xlat5 = vec4f((((u_xlat5.xxx * u_xlat6) + x_1484)).xyz, u_xlat5.w);
    let x_1492 = (u_xlat3.xyw * u_xlat5.xyz);
    u_xlat3 = vec4f(x_1492.xy, u_xlat3.z, x_1492.z);
    u_xlat5 = vec4f(((-(x_169.x_B612HdriDay2.ww) + x_1501)).xy, u_xlat5.zw);
    u_xlat12 = max(u_xlat5.y, 1.0f);
    u_xlat5.x = (u_xlat5.x / u_xlat12);
    u_xlat5.x = clamp(u_xlat5.x, 0.0f, 1.0f);
    u_xlat6 = (x_169.x_B612HdriDay2.xyz + x_1478);
    u_xlat5 = vec4f((((u_xlat5.xxx * u_xlat6) + x_1484)).xyz, u_xlat5.w);
    let x_1533 = (u_xlat3.xyw * u_xlat5.xyz);
    u_xlat3 = vec4f(x_1533.xy, u_xlat3.z, x_1533.z);
    u_xlat5 = vec4f(max(x_169.x_B612SkyCloudWarm.xyz, vec3f(0.00100000004749745131f)).xyz, u_xlat5.w);
    u_xlat5 = vec4f(log2(u_xlat5.xyz).xyz, u_xlat5.w);
    u_xlat5 = vec4f(((vec3f(u_xlat15) * u_xlat5.xyz)).xyz, u_xlat5.w);
    u_xlat5 = vec4f(exp2(u_xlat5.xyz).xyz, u_xlat5.w);
    let x_1565 = (u_xlat3.xyw * u_xlat5.xyz);
    u_xlat3 = vec4f(x_1565.xy, u_xlat3.z, x_1565.z);
    u_xlat5.x = (x_169.x_B612SkyCloudWarm.w + -1.0f);
    u_xlat15 = ((u_xlat15 * u_xlat5.x) + 1.0f);
    let x_1581 = (vec3f(u_xlat15) * u_xlat3.xyw);
    u_xlat3 = vec4f(x_1581.xy, u_xlat3.z, x_1581.z);
    u_xlat5 = vec4f(((u_xlat4.xyz * x_169.x_B612HdriDusk0.xyz)).xyz, u_xlat5.w);
    u_xlat15 = dot(u_xlat5.xyz, x_1420);
    u_xlat4 = vec4f((((u_xlat4.xyz * x_169.x_B612HdriDusk0.xyz) + -(vec3f(u_xlat15)))).xyz, u_xlat4.w);
    u_xlat4 = vec4f((((x_169.x_B612HdriDusk0.www * u_xlat4.xyz) + vec3f(u_xlat15))).xyz, u_xlat4.w);
    u_xlat4 = vec4f(max(u_xlat4.xyz, vec3f()).xyz, u_xlat4.w);
    u_xlat15 = max(x_169.x_B612HdriDusk1.w, 0.10000000149011611938f);
    u_xlat15 = (1.5f / u_xlat15);
    u_xlat15 = (-(u_xlat15) + 1.0f);
    u_xlat15 = max(u_xlat15, 0.0f);
    u_xlat15 = (u_xlat15 * u_xlat15);
    u_xlat5 = vec4f(((x_169.x_B612HdriDusk1.xyz + x_1478)).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((vec3f(u_xlat15) * u_xlat5.xyz) + x_1484)).xyz, u_xlat5.w);
    u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat5.xyz)).xyz, u_xlat4.w);
    u_xlat5 = vec4f(((-(x_169.x_B612HdriDusk2.ww) + x_1501)).xy, u_xlat5.zw);
    u_xlat15 = max(u_xlat5.y, 1.0f);
    u_xlat15 = (u_xlat5.x / u_xlat15);
    u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
    u_xlat5 = vec4f(((x_169.x_B612HdriDusk2.xyz + x_1478)).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((vec3f(u_xlat15) * u_xlat5.xyz) + x_1484)).xyz, u_xlat5.w);
    u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat5.xyz)).xyz, u_xlat4.w);
    u_xlat15 = (-(x_169.x_B612SkyCloud2.x) + x_169.x_B612SkyCloud2.y);
    u_xlat5.x = (-(x_169.x_B612SkyCloud2.x) + 1.5f);
    u_xlat15 = (1.0f / u_xlat15);
    u_xlat15 = (u_xlat15 * u_xlat5.x);
    u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
    u_xlat5.x = ((u_xlat15 * -2.0f) + 3.0f);
    u_xlat15 = (u_xlat15 * u_xlat15);
    u_xlat15 = (u_xlat15 * u_xlat5.x);
    u_xlat5 = vec4f(x_169.x_B612SkyCloudCut.xyz.xyz, u_xlat5.w);
    u_xlat5 = vec4f(clamp(u_xlat5.xyz, vec3f(0.0f), vec3f(1.0f)).xyz, u_xlat5.w);
    u_xlat5 = vec4f(((-(u_xlat5.xy) + x_481)).xy, u_xlat5.zw);
    u_xlat6.x = max(x_169.x_B612SkyCloudCut.w, 0.10000000149011611938f);
    u_xlat6.x = (1.0f / u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * 1.5f);
    u_xlat6.x = min(u_xlat6.x, 1.0f);
    u_xlat13 = ((u_xlat6.x * -2.0f) + 3.0f);
    u_xlat6.x = (u_xlat6.x * u_xlat6.x);
    u_xlat6.x = ((-(u_xlat13) * u_xlat6.x) + 1.0f);
    u_xlat19 = ((-(u_xlat5.z) * u_xlat6.x) + 1.0f);
    u_xlat12 = (u_xlat19 * u_xlat5.y);
    u_xlat19 = (u_xlat5.x * u_xlat5.w);
    u_xlat25 = ((u_xlat4.w * u_xlat12) + -(u_xlat19));
    u_xlat25 = ((u_xlat23 * u_xlat25) + u_xlat19);
    u_xlat25 = (u_xlat15 * u_xlat25);
    let x_1817 = (u_xlat3.xyw * u_xlat5.xxx);
    u_xlat3 = vec4f(x_1817.xy, u_xlat3.z, x_1817.z);
    u_xlat4 = vec4f((((u_xlat4.xyz * vec3f(u_xlat12)) + -(u_xlat3.xyw))).xyz, u_xlat4.w);
    let x_1838 = ((vec3f(u_xlat23) * u_xlat4.xyz) + u_xlat3.xyw);
    u_xlat3 = vec4f(x_1838.xy, u_xlat3.z, x_1838.z);
    u_xlat4 = vec4f(((vec3f(u_xlat15) * u_xlat3.xyw)).xyz, u_xlat4.w);
    u_xlat23 = x_169.x_B612SkyNight.w;
    u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
    u_xlat5.x = dot(u_xlat4.xyz, x_1420);
    let x_1865 = ((-(u_xlat3.xyw) * vec3f(u_xlat15)) + u_xlat5.xxx);
    u_xlat3 = vec4f(x_1865.xy, u_xlat3.z, x_1865.z);
    let x_1875 = ((vec3f(u_xlat23) * u_xlat3.xyw) + u_xlat4.xyz);
    u_xlat3 = vec4f(x_1875.xy, u_xlat3.z, x_1875.z);
    u_xlat15 = ((u_xlat5.x * 1.5f) + 1.0f);
    u_xlat15 = (1.0f / u_xlat15);
    u_xlat15 = (u_xlat15 + -1.0f);
    u_xlat15 = ((u_xlat23 * u_xlat15) + 1.0f);
    let x_1894 = (vec3f(u_xlat15) * u_xlat3.xyw);
    u_xlat3 = vec4f(x_1894.xy, u_xlat3.z, x_1894.z);
    u_xlat5 = (-(x_169.x_B612SkyCloudNight.wxyz) + vec4f(1.0f));
    u_xlat4 = vec4f(((u_xlat5.xxx * u_xlat5.yzw)).xyz, u_xlat4.w);
    let x_1915 = (u_xlat3.xyw * u_xlat4.xyz);
    u_xlat3 = vec4f(x_1915.xy, u_xlat3.z, x_1915.z);
    u_xlat15 = (u_xlat25 * u_xlat5.x);
    u_xlat23 = x_169.x_B612SkyCloud2.z;
    u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
    u_xlat4 = vec4f((((u_xlat2.xyz * vec3f(u_xlat15)) + -(u_xlat3.xyw))).xyz, u_xlat4.w);
    let x_1944 = ((vec3f(u_xlat23) * u_xlat4.xyz) + u_xlat3.xyw);
    u_xlat3 = vec4f(x_1944.xy, u_xlat3.z, x_1944.z);
    u_xlat15 = ((-(u_xlat25) * u_xlat5.x) + 1.0f);
    u_xlat2 = vec4f((((u_xlat2.xyz * vec3f(u_xlat15)) + u_xlat3.xyw)).xyz, u_xlat2.w);
    u_xlat2 = vec4f(((u_xlat10.yyy * u_xlat2.xyz)).xyz, u_xlat2.w);
  } else {
    u_xlatb15 = (0.5f < x_169.x_B612HdriParams.x);
    if (u_xlatb15) {
      u_xlat15 = x_169.x_B612TimeParams.x;
      u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
      u_xlat3 = vec4f(max(x_169.x_B612HdriParams.zw, vec2f(10.0f, 0.0f)).xy, u_xlat3.zw);
      u_xlat23 = (u_xlat3.x * x_169.x_B612CloudParams.x);
      u_xlat23 = (u_xlat23 * 0.15915493667125701904f);
      u_xlat17.x = (x_169.x_Time.y * 6.28318548202514648438f);
      u_xlat3.x = (u_xlat17.x / u_xlat3.x);
      u_xlat3.x = sin(u_xlat3.x);
      u_xlat17.x = ((u_xlat23 * u_xlat3.x) + x_169.x_B612HdriDay3.x);
      u_xlat17.x = ((-(u_xlat15) * x_169.x_B612HdriParams.y) + u_xlat17.x);
      u_xlat23 = ((u_xlat23 * u_xlat3.x) + x_169.x_B612HdriDusk3.x);
      u_xlat3.x = (-(u_xlat15) + 1.0f);
      u_xlat23 = ((u_xlat3.x * x_169.x_B612HdriParams.y) + u_xlat23);
      u_xlat3.x = min(abs(u_xlat1.y), abs(u_xlat1.x));
      u_xlat24 = max(abs(u_xlat1.y), abs(u_xlat1.x));
      u_xlat24 = (1.0f / u_xlat24);
      u_xlat3.x = (u_xlat24 * u_xlat3.x);
      u_xlat24 = (u_xlat3.x * u_xlat3.x);
      u_xlat4.x = ((u_xlat24 * 0.02083509974181652069f) + -0.08513300120830535889f);
      u_xlat4.x = ((u_xlat24 * u_xlat4.x) + 0.18014100193977355957f);
      u_xlat4.x = ((u_xlat24 * u_xlat4.x) + -0.33029949665069580078f);
      u_xlat24 = ((u_xlat24 * u_xlat4.x) + 0.99986600875854492188f);
      u_xlat4.x = (u_xlat24 * u_xlat3.x);
      u_xlatb11 = (abs(u_xlat1.y) < abs(u_xlat1.x));
      u_xlat4.x = ((u_xlat4.x * -2.0f) + 1.57079637050628662109f);
      if (u_xlatb11) {
        x_2118 = u_xlat4.x;
      } else {
        x_2118 = 0.0f;
      }
      u_xlat4.x = x_2118;
      u_xlat3.x = ((u_xlat3.x * u_xlat24) + u_xlat4.x);
      u_xlatb24 = (u_xlat1.y < -(u_xlat1.y));
      u_xlat24 = select(0.0f, -3.14159274101257324219f, u_xlatb24);
      u_xlat3.x = (u_xlat24 + u_xlat3.x);
      u_xlat24 = min(u_xlat1.y, u_xlat1.x);
      u_xlat4.x = max(u_xlat1.y, u_xlat1.x);
      u_xlatb24 = (u_xlat24 < -(u_xlat24));
      u_xlatb4 = (u_xlat4.x >= -(u_xlat4.x));
      u_xlatb24 = (u_xlatb24 & u_xlatb4);
      if (u_xlatb24) {
        x_2172 = -(u_xlat3.x);
      } else {
        x_2172 = u_xlat3.x;
      }
      u_xlat3.x = x_2172;
      u_xlat17.x = ((u_xlat3.x * 57.295780181884765625f) + -(u_xlat17.x));
      u_xlat4.x = ((u_xlat17.x * 0.00277777784503996372f) + 0.5f);
      u_xlat4.y = 0.5f;
      u_xlat18.y = 0.5f;
      u_xlat5 = vec4f(textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat4.xy, 0.0f).xyz.xyz, u_xlat5.w);
      u_xlat23 = ((u_xlat3.x * 57.295780181884765625f) + -(u_xlat23));
      u_xlat18.x = ((u_xlat23 * 0.00277777784503996372f) + 0.5f);
      let x_2223 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat18, 0.0f).xyz;
      u_xlat3 = vec4f(x_2223.x, u_xlat3.y, x_2223.yz);
      u_xlat4 = vec4f(((u_xlat5.xyz * x_169.x_B612HdriDay0.xyz)).xyz, u_xlat4.w);
      u_xlatb23 = (0.0f < x_169.x_B612HdriDay3.z);
      u_xlat25 = max(u_xlat4.y, u_xlat4.x);
      u_xlat25 = max(u_xlat4.z, u_xlat25);
      u_xlat5.x = (u_xlat25 + -(x_169.x_B612HdriDay3.y));
      u_xlat5.x = max(u_xlat5.x, 0.0f);
      u_xlat12 = (u_xlat5.x / x_169.x_B612HdriDay3.z);
      u_xlat12 = (u_xlat12 + 1.0f);
      u_xlat5.x = (u_xlat5.x / u_xlat12);
      u_xlat5.x = (u_xlat5.x + x_169.x_B612HdriDay3.y);
      u_xlat25 = max(u_xlat25, x_169.x_B612HdriDay3.y);
      u_xlat25 = (u_xlat5.x / u_xlat25);
      u_xlat5 = vec4f(((vec3f(u_xlat25) * u_xlat4.xyz)).xyz, u_xlat5.w);
      if (u_xlatb23) {
        x_2291 = u_xlat5.xyz;
      } else {
        x_2291 = u_xlat4.xyz;
      }
      u_xlat4 = vec4f(x_2291.xyz, u_xlat4.w);
      u_xlat23 = dot(u_xlat4.xyz, x_1420);
      u_xlat4 = vec4f(((-(vec3f(u_xlat23)) + u_xlat4.xyz)).xyz, u_xlat4.w);
      u_xlat4 = vec4f((((x_169.x_B612HdriDay0.www * u_xlat4.xyz) + vec3f(u_xlat23))).xyz, u_xlat4.w);
      u_xlat4 = vec4f(max(u_xlat4.xyz, vec3f()).xyz, u_xlat4.w);
      u_xlat23 = max(x_169.x_B612HdriDay1.w, 0.10000000149011611938f);
      u_xlat23 = (u_xlat3.y / u_xlat23);
      u_xlat23 = (-(u_xlat23) + 1.0f);
      u_xlat23 = max(u_xlat23, 0.0f);
      u_xlat23 = (u_xlat23 * u_xlat23);
      u_xlat5 = vec4f(((x_169.x_B612HdriDay1.xyz + x_1478)).xyz, u_xlat5.w);
      u_xlat5 = vec4f((((vec3f(u_xlat23) * u_xlat5.xyz) + x_1484)).xyz, u_xlat5.w);
      u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat5.xyz)).xyz, u_xlat4.w);
      u_xlat23 = (x_169.x_B612HdriParams.w + -(x_169.x_B612HdriDay2.w));
      u_xlat25 = (-(x_169.x_B612HdriDay2.w) + 90.0f);
      u_xlat25 = max(u_xlat25, 1.0f);
      u_xlat23 = (u_xlat23 / u_xlat25);
      u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
      u_xlat5 = vec4f(((x_169.x_B612HdriDay2.xyz + x_1478)).xyz, u_xlat5.w);
      u_xlat5 = vec4f((((vec3f(u_xlat23) * u_xlat5.xyz) + x_1484)).xyz, u_xlat5.w);
      u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat5.xyz)).xyz, u_xlat4.w);
      let x_2408 = (u_xlat3.xzw * x_169.x_B612HdriDusk0.xyz);
      u_xlat3 = vec4f(x_2408.x, u_xlat3.y, x_2408.yz);
      u_xlatb23 = (0.0f < x_169.x_B612HdriDusk3.z);
      u_xlat25 = max(u_xlat3.z, u_xlat3.x);
      u_xlat25 = max(u_xlat3.w, u_xlat25);
      u_xlat5.x = (u_xlat25 + -(x_169.x_B612HdriDusk3.y));
      u_xlat5.x = max(u_xlat5.x, 0.0f);
      u_xlat12 = (u_xlat5.x / x_169.x_B612HdriDusk3.z);
      u_xlat12 = (u_xlat12 + 1.0f);
      u_xlat5.x = (u_xlat5.x / u_xlat12);
      u_xlat5.x = (u_xlat5.x + x_169.x_B612HdriDusk3.y);
      u_xlat25 = max(u_xlat25, x_169.x_B612HdriDusk3.y);
      u_xlat25 = (u_xlat5.x / u_xlat25);
      u_xlat5 = vec4f(((u_xlat3.xzw * vec3f(u_xlat25))).xyz, u_xlat5.w);
      if (u_xlatb23) {
        x_2467 = u_xlat5.xyz;
      } else {
        x_2467 = u_xlat3.xzw;
      }
      u_xlat3 = vec4f(x_2467.x, u_xlat3.y, x_2467.yz);
      u_xlat23 = dot(u_xlat3.xzw, x_1420);
      let x_2486 = (-(vec3f(u_xlat23)) + u_xlat3.xzw);
      u_xlat3 = vec4f(x_2486.x, u_xlat3.y, x_2486.yz);
      let x_2497 = ((x_169.x_B612HdriDusk0.www * u_xlat3.xzw) + vec3f(u_xlat23));
      u_xlat3 = vec4f(x_2497.x, u_xlat3.y, x_2497.yz);
      let x_2502 = max(u_xlat3.xzw, vec3f());
      u_xlat3 = vec4f(x_2502.x, u_xlat3.y, x_2502.yz);
      u_xlat23 = max(x_169.x_B612HdriDusk1.w, 0.10000000149011611938f);
      u_xlat23 = (u_xlat3.y / u_xlat23);
      u_xlat23 = (-(u_xlat23) + 1.0f);
      u_xlat23 = max(u_xlat23, 0.0f);
      u_xlat23 = (u_xlat23 * u_xlat23);
      u_xlat5 = vec4f(((x_169.x_B612HdriDusk1.xyz + x_1478)).xyz, u_xlat5.w);
      u_xlat5 = vec4f((((vec3f(u_xlat23) * u_xlat5.xyz) + x_1484)).xyz, u_xlat5.w);
      u_xlat3 = vec4f(((u_xlat3.xzw * u_xlat5.xyz)).xyz, u_xlat3.w);
      u_xlat23 = (x_169.x_B612HdriParams.w + -(x_169.x_B612HdriDusk2.w));
      u_xlat24 = (-(x_169.x_B612HdriDusk2.w) + 90.0f);
      u_xlat24 = max(u_xlat24, 1.0f);
      u_xlat23 = (u_xlat23 / u_xlat24);
      u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
      u_xlat5 = vec4f(((x_169.x_B612HdriDusk2.xyz + x_1478)).xyz, u_xlat5.w);
      u_xlat5 = vec4f((((vec3f(u_xlat23) * u_xlat5.xyz) + x_1484)).xyz, u_xlat5.w);
      u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat5.xyz) + -(u_xlat4.xyz))).xyz, u_xlat3.w);
      u_xlat2 = vec4f((((vec3f(u_xlat15) * u_xlat3.xyz) + u_xlat4.xyz)).xyz, u_xlat2.w);
    } else {
      u_xlat1.w = 0.02600000053644180298f;
      u_xlat15 = dot(u_xlat1.xyw, u_xlat1.xyw);
      u_xlat15 = inverseSqrt(u_xlat15);
      u_xlat23 = (u_xlat15 * u_xlat1.w);
      u_xlat22 = ((-(u_xlat1.w) * u_xlat15) + 1.0f);
      u_xlat3.x = sqrt(u_xlat22);
      u_xlat10.x = ((u_xlat15 * -0.00048696179874241352f) + 0.07426100224256515503f);
      u_xlat10.x = ((u_xlat10.x * u_xlat23) + -0.21211439371109008789f);
      u_xlat10.x = ((u_xlat10.x * u_xlat23) + 1.57072877883911132812f);
      u_xlat3.x = ((-(u_xlat10.x) * u_xlat3.x) + 1.57079637050628662109f);
      u_xlat1 = vec4f((((u_xlat1.xy * vec2f(u_xlat15)) + x_777)).xy, u_xlat1.zw);
      u_xlat15 = dot(u_xlat1.xy, u_xlat1.xy);
      u_xlat15 = inverseSqrt(u_xlat15);
      u_xlat1 = vec4f(((vec2f(u_xlat15) * u_xlat1.xy)).xy, u_xlat1.zw);
      u_xlat17 = (x_169.x_B612SunDirection.xz + x_777);
      u_xlat15 = dot(u_xlat17, u_xlat17);
      u_xlat15 = inverseSqrt(u_xlat15);
      u_xlat17 = (vec2f(u_xlat15) * u_xlat17);
      u_xlat1.x = dot(u_xlat1.xy, u_xlat17);
      u_xlat1.x = ((u_xlat1.x * 0.5f) + 0.5f);
      u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
      u_xlat8 = vec3f(max(x_169.x_B612SkyParams.yw, x_945).xy, u_xlat8.z);
      u_xlat17.x = log2(u_xlat1.x);
      u_xlat8.x = (u_xlat8.x * u_xlat17.x);
      u_xlat8.x = exp2(u_xlat8.x);
      u_xlat4 = vec4f(((-(x_169.x_B612SkyHorizon.xyz) + x_169.x_B612SkyHorizonSun.xyz)).xyz, u_xlat4.w);
      u_xlat4 = vec4f((((u_xlat8.xxx * u_xlat4.xyz) + x_169.x_B612SkyHorizon.xyz)).xyz, u_xlat4.w);
      u_xlat24 = (x_169.x_B612SkyParams.x * 0.44999998807907104492f);
      u_xlat24 = max(u_xlat24, 0.00999999977648258209f);
      u_xlat3.w = (-(u_xlat23) / u_xlat24);
      let x_2742 = (u_xlat3.xw * vec2f(57.295780181884765625f, 1.44269502162933349609f));
      u_xlat10 = vec3f(x_2742.x, u_xlat10.y, x_2742.y);
      u_xlat24 = exp2(u_xlat10.z);
      u_xlat24 = (-(u_xlat24) + 1.0f);
      u_xlat5 = vec4f(((-(x_169.x_B612SkyZenith.xyz) + x_169.x_B612SkyHorizonSun.xyz)).xyz, u_xlat5.w);
      u_xlat5 = vec4f(((u_xlat5.xyz * x_1018)).xyz, u_xlat5.w);
      u_xlat8.x = (u_xlat8.x * x_169.x_B612SkyParams.z);
      u_xlat8.x = (u_xlat22 * u_xlat8.x);
      u_xlat5 = vec4f((((u_xlat8.xxx * u_xlat5.xyz) + x_169.x_B612SkyZenith.xyz)).xyz, u_xlat5.w);
      u_xlat5 = vec4f(((-(u_xlat4.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
      u_xlat4 = vec4f((((vec3f(u_xlat24) * u_xlat5.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
      u_xlat8.x = max(x_169.x_B612HazeParams.x, 0.10000000149011611938f);
      u_xlat8.x = (u_xlat8.x * -(u_xlat23));
      u_xlat8.x = (u_xlat8.x * 1.44269502162933349609f);
      u_xlat8.x = exp2(u_xlat8.x);
      u_xlat8.x = (u_xlat8.x * x_169.x_B612HazeColor.w);
      u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
      u_xlat5 = vec4f(((-(u_xlat4.xyz) + x_169.x_B612HazeColor.xyz)).xyz, u_xlat5.w);
      u_xlat4 = vec4f((((u_xlat8.xxx * u_xlat5.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
      u_xlat5 = vec4f(max(x_169.x_B612SkyParams2.xyz, x_1104).xyz, u_xlat5.w);
      u_xlat8.x = (u_xlat17.x * u_xlat5.x);
      u_xlat8.x = exp2(u_xlat8.x);
      u_xlat6 = (u_xlat8.xxx * x_169.x_B612SkyGlow.xyz);
      u_xlat8.x = max(x_169.x_B612SkyGlow.w, 0.10000000149011611938f);
      u_xlat8.x = (-(u_xlat10.x) / u_xlat8.x);
      u_xlat8.x = (u_xlat8.x * 1.44269502162933349609f);
      u_xlat8.x = exp2(u_xlat8.x);
      u_xlat10 = ((u_xlat6 * u_xlat8.xxx) + u_xlat4.xyz);
      u_xlat8.x = ((u_xlat3.x * 57.295780181884765625f) + -(x_169.x_B612SkyAnti.w));
      u_xlat8.x = (u_xlat8.x / u_xlat5.y);
      u_xlat1.x = (-(u_xlat1.x) + 1.0f);
      u_xlat1.x = log2(u_xlat1.x);
      u_xlat1.x = (u_xlat1.x * u_xlat5.z);
      u_xlat1.x = exp2(u_xlat1.x);
      u_xlat4 = vec4f(((u_xlat1.xxx * x_169.x_B612SkyAnti.xyz)).xyz, u_xlat4.w);
      u_xlat1.x = (u_xlat8.x * -(u_xlat8.x));
      u_xlat1.x = (u_xlat1.x * 1.44269502162933349609f);
      u_xlat1.x = exp2(u_xlat1.x);
      let x_2963 = ((u_xlat4.xyz * u_xlat1.xxx) + u_xlat10);
      u_xlat1 = vec4f(x_2963.xy, u_xlat1.z, x_2963.z);
      u_xlat2 = vec4f(((u_xlat8.yyy * u_xlat1.xyw)).xyz, u_xlat2.w);
    }
  }
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  u_xlat1 = vec4f(((-(u_xlat7) + u_xlat2.xyz)).xyz, u_xlat1.w);
  SV_Target0 = vec4f((((u_xlat0.xxx * u_xlat1.xyz) + u_xlat7)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(1) vs_TEXCOORD1_param : vec2f, @location(2) vs_TEXCOORD2_param : vec3f, @location(4) vs_TEXCOORD4_param : vec3f, @location(3) vs_TEXCOORD3_param : vec3f, @location(0) vs_TEXCOORD0_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}

