//Assets/Levels/Desert/Materials/Shaders/Desert_WaterSheet.shader
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

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

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
  vs_TEXCOORD2 = in_TEXCOORD0;
  vs_COLOR0 = in_COLOR0;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec2f,
  @location(3)
  vs_COLOR0_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(3) in_TEXCOORD0_param : vec2f, @location(2) in_COLOR0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0);
}

//Assets/Levels/Desert/Materials/Shaders/Desert_WaterSheet.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Tint : vec4f,
  /* @offset(16) */
  x_Foam : vec4f,
  /* @offset(32) */
  x_Columns : f32,
  /* @offset(36) */
  x_Rows : f32,
  /* @offset(40) */
  x_Speed : f32,
  /* @offset(44) */
  x_Reflection : f32,
  /* @offset(48) */
  x_Sun : f32,
  /* @offset(64) */
  x_Alpha : vec4f,
  /* @offset(80) */
  x_Break : vec4f,
  /* @offset(96) */
  x_Aerate : vec4f,
}

struct PGlobals {
  /* @offset(0) */
  x_MainLightPosition : vec4f,
  /* @offset(16) */
  x_MainLightColor : vec4f,
  /* @offset(32) */
  x_Time : vec4f,
  /* @offset(48) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(64) */
  x_DesertSunDir : vec4f,
  /* @offset(80) */
  x_DesertSunColor : vec4f,
  /* @offset(96) */
  x_DesertHaze : vec4f,
  /* @offset(112) */
  x_DesertHaze2 : vec4f,
  /* @offset(128) */
  x_DesertHazeTint : vec4f,
  /* @offset(144) */
  x_DesertSkyGrade0 : vec4f,
  /* @offset(160) */
  x_DesertSkyGrade1 : vec4f,
  /* @offset(176) */
  x_DesertSkyGrade2 : vec4f,
  /* @offset(192) */
  x_DesertSkyGrade3 : vec4f,
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
  unity_SpecCube0_HDR : vec4f,
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

var<private> vs_TEXCOORD2 : vec2f;

@group(1) @binding(3) var<uniform> x_16 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(2) var<uniform> x_986 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1128 : UnityPerDraw;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(3) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var x_DesertHorizonRing : texture_2d<f32>;

@group(0) @binding(5) var sampler_DesertHorizonRing : sampler;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_90 = vec2f(2.0f);

const x_93 = vec2f(3.0f);

const x_104 = vec2f(0.10310000181198120117f);

const x_117 = vec3f(33.3300018310546875f);

const x_151 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_154 = vec4f(0.10310000181198120117f);

const x_160 = vec4f(33.3300018310546875f);

const x_314 = vec2f(2.29999995231628417969f, 5.09999990463256835938f);

const x_956 = vec3f(0.34999999403953552246f);

const x_1924 = vec3f(-1.0f);

const x_1933 = vec3f(1.0f);

const x_1990 = vec2f(0.00000999999974737875f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat18 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat28 : f32;
  var u_xlat10 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat20 : vec2f;
  var u_xlat11 : f32;
  var u_xlat27 : f32;
  var u_xlat19 : vec2f;
  var x_908 : vec3f;
  var txVec0 : vec3f;
  var u_xlatb9 : bool;
  var u_xlatb28 : bool;
  var x_1075 : f32;
  var u_xlat30 : f32;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec3f;
  var u_xlat29 : f32;
  var u_xlatb18 : bool;
  var x_1621 : f32;
  var u_xlatb32 : bool;
  var u_xlatb29 : bool;
  var u_xlatb30 : bool;
  var x_1792 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((vs_TEXCOORD2 * vec2f(x_16.x_Columns, x_16.x_Rows))).xy, u_xlat0.zw);
  u_xlat9.x = ((-(x_34.x_Time.y) * x_16.x_Speed) + u_xlat0.y);
  u_xlat1 = vec4f(((u_xlat9.xxx * vec3f(0.34999999403953552246f, 0.80000001192092895508f, 1.89999997615814208984f))).xyz, u_xlat1.w);
  u_xlat2.x = floor(u_xlat0.x);
  u_xlat2.y = floor(u_xlat1.x);
  u_xlat3.x = fract(u_xlat0.x);
  let x_76 = fract(u_xlat1.xy);
  u_xlat3 = vec4f(u_xlat3.x, x_76.x, u_xlat3.z, x_76.y);
  u_xlat18 = (u_xlat3.xy * u_xlat3.xy);
  u_xlat1 = vec4f((((-(u_xlat3.xy) * x_90) + x_93)).xy, u_xlat1.zw);
  u_xlat18 = (u_xlat18 * u_xlat1.xy);
  u_xlat1 = vec4f(((u_xlat2.xy * x_104)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(fract(u_xlat1.xy).xy, u_xlat1.zw);
  u_xlat4 = vec4f(((u_xlat1.yxx + x_117)).xyz, u_xlat4.w);
  u_xlat28 = dot(u_xlat1.xyx, u_xlat4.xyz);
  u_xlat1 = vec4f(((vec2f(u_xlat28) + u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat10.x = (u_xlat1.y + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat10.x);
  u_xlat4 = (u_xlat2.yxyx + x_151);
  u_xlat4 = (u_xlat4 * x_154);
  u_xlat4 = fract(u_xlat4);
  u_xlat5 = (u_xlat4 + x_160);
  u_xlat10.x = dot(u_xlat4.yxy, u_xlat5.xyy);
  let x_172 = (u_xlat10.xx + u_xlat4.yx);
  u_xlat10 = vec3f(x_172.x, u_xlat10.y, x_172.y);
  u_xlat28 = (u_xlat10.z + u_xlat10.x);
  u_xlat1.y = (u_xlat10.x * u_xlat28);
  u_xlat28 = dot(u_xlat4.wzw, u_xlat5.zww);
  u_xlat20 = (vec2f(u_xlat28) + u_xlat4.wz);
  u_xlat28 = (u_xlat20.y + u_xlat20.x);
  u_xlat1.w = (u_xlat20.x * u_xlat28);
  let x_210 = fract(u_xlat1.xyw);
  u_xlat1 = vec4f(x_210.xy, u_xlat1.z, x_210.z);
  u_xlat2 = vec4f(((u_xlat2.xy + vec2f(1.0f))).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_104)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(fract(u_xlat2.xy).xy, u_xlat2.zw);
  u_xlat4 = vec4f(((u_xlat2.yxx + x_117)).xyz, u_xlat4.w);
  u_xlat20.x = dot(u_xlat2.xyx, u_xlat4.xyz);
  u_xlat2 = vec4f(((u_xlat20.xx + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat11 = (u_xlat2.y + u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat11);
  u_xlat2.x = fract(u_xlat2.x);
  u_xlat10.x = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat1.x = ((u_xlat18.x * u_xlat10.x) + u_xlat1.x);
  u_xlat10.x = (-(u_xlat1.w) + u_xlat2.x);
  u_xlat18.x = ((u_xlat18.x * u_xlat10.x) + u_xlat1.w);
  u_xlat18.x = (-(u_xlat1.x) + u_xlat18.x);
  u_xlat18.x = ((u_xlat18.y * u_xlat18.x) + u_xlat1.x);
  u_xlat1 = vec4f(((u_xlat0.xx * x_314)).xy, u_xlat1.zw);
  let x_324 = ((u_xlat0.xx * x_314) + vec2f(17.0f, 5.0f));
  u_xlat0 = vec4f(x_324.x, u_xlat0.yz, x_324.y);
  u_xlat2 = vec4f((((u_xlat9.xx * vec2f(0.80000001192092895508f, 1.89999997615814208984f)) + vec2f(3.0f, -7.0f))).xy, u_xlat2.zw);
  let x_338 = floor(u_xlat0.xw);
  u_xlat4 = vec4f(x_338.x, u_xlat4.y, x_338.y, u_xlat4.w);
  let x_343 = floor(u_xlat2.xy);
  u_xlat4 = vec4f(u_xlat4.x, x_343.x, u_xlat4.z, x_343.y);
  u_xlat3.z = fract(u_xlat1.x);
  u_xlat0 = vec4f(((u_xlat3.zw * u_xlat3.zw)).xy, u_xlat0.zw);
  let x_361 = ((-(u_xlat3.zw) * x_90) + x_93);
  u_xlat1 = vec4f(x_361.x, u_xlat1.yz, x_361.y);
  u_xlat0 = vec4f(((u_xlat0.xy * u_xlat1.xw)).xy, u_xlat0.zw);
  u_xlat2 = (u_xlat4 * x_154);
  u_xlat2 = fract(u_xlat2);
  u_xlat3 = vec4f(((u_xlat2.yxx + x_117)).xyz, u_xlat3.w);
  u_xlat27 = dot(u_xlat2.xyx, u_xlat3.xyz);
  let x_390 = (vec2f(u_xlat27) + u_xlat2.xy);
  u_xlat1 = vec4f(x_390.x, u_xlat1.yz, x_390.y);
  u_xlat27 = (u_xlat1.w + u_xlat1.x);
  u_xlat27 = (u_xlat1.x * u_xlat27);
  u_xlat27 = fract(u_xlat27);
  u_xlat3 = (u_xlat4.yxyx + x_151);
  u_xlat3 = (u_xlat3 * x_154);
  u_xlat3 = fract(u_xlat3);
  u_xlat5 = (u_xlat3 + x_160);
  u_xlat1.x = dot(u_xlat3.yxy, u_xlat5.xyy);
  let x_423 = (u_xlat1.xx + u_xlat3.yx);
  u_xlat1 = vec4f(x_423.x, u_xlat1.yz, x_423.y);
  u_xlat28 = (u_xlat1.w + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat28);
  u_xlat28 = dot(u_xlat3.wzw, u_xlat5.zww);
  u_xlat2 = vec4f(((vec2f(u_xlat28) + u_xlat3.wz)).xy, u_xlat2.zw);
  u_xlat28 = (u_xlat2.y + u_xlat2.x);
  u_xlat1.w = (u_xlat2.x * u_xlat28);
  let x_460 = fract(u_xlat1.xw);
  u_xlat1 = vec4f(x_460.x, u_xlat1.yz, x_460.y);
  u_xlat3 = (u_xlat4 + vec4f(1.0f));
  u_xlat3 = (u_xlat3 * x_154);
  u_xlat3 = fract(u_xlat3);
  u_xlat5 = vec4f(((u_xlat3.yxx + x_117)).xyz, u_xlat5.w);
  u_xlat2.x = dot(u_xlat3.xyx, u_xlat5.xyz);
  u_xlat2 = vec4f(((u_xlat2.xx + u_xlat3.xy)).xy, u_xlat2.zw);
  u_xlat11 = (u_xlat2.y + u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat11);
  u_xlat2.x = fract(u_xlat2.x);
  u_xlat1.x = (-(u_xlat27) + u_xlat1.x);
  u_xlat27 = ((u_xlat0.x * u_xlat1.x) + u_xlat27);
  u_xlat1.x = (-(u_xlat1.w) + u_xlat2.x);
  u_xlat0.x = ((u_xlat0.x * u_xlat1.x) + u_xlat1.w);
  u_xlat0.x = (-(u_xlat27) + u_xlat0.x);
  u_xlat0.x = ((u_xlat0.y * u_xlat0.x) + u_xlat27);
  u_xlat1.x = fract(u_xlat1.y);
  u_xlat1.y = fract(u_xlat1.z);
  let x_557 = (u_xlat1.xy * u_xlat1.xy);
  u_xlat9 = vec3f(x_557.x, u_xlat9.y, x_557.y);
  u_xlat1 = vec4f((((-(u_xlat1.xy) * x_90) + x_93)).xy, u_xlat1.zw);
  let x_571 = (u_xlat9.xz * u_xlat1.xy);
  u_xlat9 = vec3f(x_571.x, u_xlat9.y, x_571.y);
  u_xlat1 = vec4f(((u_xlat2.wzz + x_117)).xyz, u_xlat1.w);
  u_xlat1.x = dot(u_xlat2.zwz, u_xlat1.xyz);
  u_xlat1 = vec4f(((u_xlat1.xx + u_xlat2.zw)).xy, u_xlat1.zw);
  u_xlat10.x = (u_xlat1.y + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat10.x);
  u_xlat2 = (u_xlat4.wzwz + x_151);
  u_xlat2 = (u_xlat2 * x_154);
  u_xlat2 = fract(u_xlat2);
  u_xlat4 = (u_xlat2 + x_160);
  u_xlat10.x = dot(u_xlat2.yxy, u_xlat4.xyy);
  u_xlat10 = vec3f(((u_xlat10.xx + u_xlat2.yx)).xy, u_xlat10.z);
  u_xlat19.x = (u_xlat10.y + u_xlat10.x);
  u_xlat1.y = (u_xlat10.x * u_xlat19.x);
  u_xlat19.x = dot(u_xlat2.wzw, u_xlat4.zww);
  u_xlat19 = (u_xlat19.xx + u_xlat2.wz);
  u_xlat28 = (u_xlat19.y + u_xlat19.x);
  u_xlat1.z = (u_xlat19.x * u_xlat28);
  u_xlat2 = vec4f(((u_xlat3.wzz + x_117)).xyz, u_xlat2.w);
  u_xlat28 = dot(u_xlat3.zwz, u_xlat2.xyz);
  u_xlat2 = vec4f(((vec2f(u_xlat28) + u_xlat3.zw)).xy, u_xlat2.zw);
  u_xlat28 = (u_xlat2.y + u_xlat2.x);
  u_xlat1.w = (u_xlat2.x * u_xlat28);
  u_xlat1 = fract(u_xlat1);
  u_xlat10.x = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat1.x = ((u_xlat9.x * u_xlat10.x) + u_xlat1.x);
  u_xlat10.x = (-(u_xlat1.z) + u_xlat1.w);
  u_xlat9.x = ((u_xlat9.x * u_xlat10.x) + u_xlat1.z);
  u_xlat9.x = (-(u_xlat1.x) + u_xlat9.x);
  u_xlat0.y = ((u_xlat9.z * u_xlat9.x) + u_xlat1.x);
  u_xlat27 = (u_xlat0.x * 0.30000001192092895508f);
  u_xlat18.x = ((u_xlat18.x * 0.55000001192092895508f) + u_xlat27);
  u_xlat18.x = ((u_xlat0.y * 0.15000000596046447754f) + u_xlat18.x);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat27 = (-(x_16.x_Break.x) + x_16.x_Break.y);
  u_xlat1.x = (vs_TEXCOORD2.y + -(x_16.x_Break.x));
  u_xlat27 = (1.0f / u_xlat27);
  u_xlat27 = (u_xlat27 * u_xlat1.x);
  u_xlat27 = clamp(u_xlat27, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat27 * -2.0f) + 3.0f);
  u_xlat27 = (u_xlat27 * u_xlat27);
  u_xlat27 = (u_xlat27 * u_xlat1.x);
  u_xlat18.x = (u_xlat18.x + -0.37999999523162841797f);
  u_xlat18.x = (u_xlat18.x * 2.70270276069641113281f);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat18.x = (u_xlat18.x * u_xlat1.x);
  u_xlat1.x = ((u_xlat0.x * 0.30000001192092895508f) + 0.85000002384185791016f);
  u_xlat10.x = (u_xlat1.x * x_16.x_Alpha.x);
  u_xlat19.x = (-(x_16.x_Alpha.z) + x_16.x_Alpha.y);
  u_xlat19.x = ((u_xlat18.x * u_xlat19.x) + x_16.x_Alpha.z);
  u_xlat1.x = ((-(x_16.x_Alpha.x) * u_xlat1.x) + u_xlat19.x);
  u_xlat27 = ((u_xlat27 * u_xlat1.x) + u_xlat10.x);
  u_xlat1.x = (vs_COLOR0.w * x_16.x_Alpha.w);
  u_xlat10.x = (u_xlat27 * u_xlat1.x);
  u_xlat19.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat19.x = inverseSqrt(u_xlat19.x);
  u_xlat2 = vec4f(((u_xlat19.xxx * vs_TEXCOORD1)).xyz, u_xlat2.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_908 = u_xlat2.xyz;
  } else {
    x_908 = -(u_xlat2.xyz);
  }
  u_xlat2 = vec4f(x_908.xyz, u_xlat2.w);
  u_xlat3 = vec4f(((-(vs_TEXCOORD0) + x_34.x_WorldSpaceCameraPos)).xyz, u_xlat3.w);
  u_xlat19.x = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat19.x = inverseSqrt(u_xlat19.x);
  u_xlat4 = vec4f(((u_xlat19.xxx * u_xlat3.xyz)).xyz, u_xlat4.w);
  let x_950 = (u_xlat0.xy + vec2f(-0.5f));
  u_xlat5 = vec4f(x_950.x, u_xlat5.y, x_950.y, u_xlat5.w);
  u_xlat5.y = 0.0f;
  u_xlat2 = vec4f((((u_xlat5.xyz * x_956) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat2 = vec4f(((u_xlat0.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_986.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_986.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_986.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_986.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat5.w);
  let x_1028 = u_xlat5.xy;
  txVec0 = vec3f(x_1028.x, x_1028.y, u_xlat5.z);
  u_xlat0.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat9.x = (-(x_986.x_MainLightShadowParams.x) + 1.0f);
  u_xlat0.x = ((u_xlat0.x * x_986.x_MainLightShadowParams.x) + u_xlat9.x);
  u_xlatb9 = (0.0f >= u_xlat5.z);
  u_xlatb28 = (u_xlat5.z >= 1.0f);
  u_xlatb9 = (u_xlatb9 | u_xlatb28);
  if (u_xlatb9) {
    x_1075 = 1.0f;
  } else {
    x_1075 = u_xlat0.x;
  }
  u_xlat0.x = x_1075;
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_34.x_WorldSpaceCameraPos))).xyz, u_xlat5.w);
  u_xlat9.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat28 = ((u_xlat9.x * x_986.x_MainLightShadowParams.z) + x_986.x_MainLightShadowParams.w);
  u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
  u_xlat30 = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = ((u_xlat28 * u_xlat30) + u_xlat0.x);
  u_xlat2.w = 1.0f;
  u_xlat6.x = dot(x_1128.unity_SHAr, u_xlat2);
  u_xlat6.y = dot(x_1128.unity_SHAg, u_xlat2);
  u_xlat6.z = dot(x_1128.unity_SHAb, u_xlat2);
  u_xlat7 = (u_xlat2.yzzx * u_xlat2.xyzz);
  u_xlat8.x = dot(x_1128.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_1128.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_1128.unity_SHBb, u_xlat7);
  u_xlat28 = (u_xlat2.y * u_xlat2.y);
  u_xlat28 = ((u_xlat2.x * u_xlat2.x) + -(u_xlat28));
  u_xlat7 = vec4f((((x_1128.unity_SHC.xyz * vec3f(u_xlat28)) + u_xlat8)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  u_xlat28 = dot(u_xlat2.xyz, x_34.x_MainLightPosition.xyz);
  u_xlat28 = (u_xlat28 + 0.5f);
  u_xlat28 = (u_xlat28 * 0.6666666865348815918f);
  u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
  u_xlat29 = (-(x_16.x_Aerate.x) + x_16.x_Aerate.y);
  u_xlat30 = (vs_TEXCOORD2.y + -(x_16.x_Aerate.x));
  u_xlat29 = (1.0f / u_xlat29);
  u_xlat29 = (u_xlat29 * u_xlat30);
  u_xlat29 = clamp(u_xlat29, 0.0f, 1.0f);
  u_xlat30 = ((u_xlat29 * -2.0f) + 3.0f);
  u_xlat29 = (u_xlat29 * u_xlat29);
  u_xlat29 = (u_xlat29 * u_xlat30);
  u_xlat29 = (u_xlat29 * x_16.x_Aerate.z);
  u_xlat18.x = ((u_xlat18.x * 0.60000002384185791016f) + 0.60000002384185791016f);
  u_xlat18.x = (u_xlat18.x * u_xlat29);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat7 = vec4f(((-(x_16.x_Tint.xyz) + x_16.x_Foam.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f((((u_xlat18.xxx * u_xlat7.xyz) + x_16.x_Tint.xyz)).xyz, u_xlat7.w);
  u_xlat8 = (vec3f(u_xlat28) * x_34.x_MainLightColor.xyz);
  u_xlat8 = (u_xlat0.xxx * u_xlat8);
  u_xlat6 = vec4f((((u_xlat8 * vec3f(0.80000001192092895508f)) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat18.x = dot(u_xlat2.xyz, u_xlat4.xyz);
  u_xlat18.x = min(abs(u_xlat18.x), 1.0f);
  u_xlat18.x = (-(u_xlat18.x) + 1.0f);
  u_xlat28 = (u_xlat18.x * u_xlat18.x);
  u_xlat28 = (u_xlat28 * u_xlat28);
  u_xlat18.x = (u_xlat18.x * u_xlat28);
  u_xlat18.x = ((u_xlat18.x * 0.95999997854232788086f) + 0.03999999910593032837f);
  u_xlat28 = dot(-(u_xlat4.xyz), u_xlat2.xyz);
  u_xlat28 = (u_xlat28 + u_xlat28);
  u_xlat4 = vec4f((((u_xlat2.xyz * -(vec3f(u_xlat28))) + -(u_xlat4.xyz))).xyz, u_xlat4.w);
  u_xlat4 = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, u_xlat4.xyz, 0.97800004482269287109f);
  u_xlat28 = (u_xlat4.w + -1.0f);
  u_xlat28 = ((x_1128.unity_SpecCube0_HDR.w * u_xlat28) + 1.0f);
  u_xlat28 = max(u_xlat28, 0.0f);
  u_xlat28 = log2(u_xlat28);
  u_xlat28 = (u_xlat28 * x_1128.unity_SpecCube0_HDR.y);
  u_xlat28 = exp2(u_xlat28);
  u_xlat28 = (u_xlat28 * x_1128.unity_SpecCube0_HDR.x);
  u_xlat4 = vec4f(((u_xlat4.xyz * vec3f(u_xlat28))).xyz, u_xlat4.w);
  let x_1413 = vec3f(x_16.x_Reflection, x_16.x_Reflection, x_16.x_Reflection);
  u_xlat4 = vec4f(((u_xlat4.xyz * vec3f(x_1413.x, x_1413.y, x_1413.z))).xyz, u_xlat4.w);
  u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat19.xxx) + x_34.x_MainLightPosition.xyz)).xyz, u_xlat3.w);
  u_xlat19.x = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat19.x = inverseSqrt(u_xlat19.x);
  u_xlat3 = vec4f(((u_xlat19.xxx * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat19.x = dot(u_xlat2.xyz, u_xlat3.xyz);
  u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
  u_xlat19.x = log2(u_xlat19.x);
  u_xlat19.x = (u_xlat19.x * 220.0f);
  u_xlat19.x = exp2(u_xlat19.x);
  u_xlat19.x = (u_xlat19.x * x_16.x_Sun);
  u_xlat0.x = (u_xlat0.x * u_xlat19.x);
  u_xlat2 = vec4f(((u_xlat18.xxx * u_xlat4.xyz)).xyz, u_xlat2.w);
  u_xlat3 = vec4f((((u_xlat7.xyz * u_xlat6.xyz) + u_xlat2.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((x_34.x_MainLightColor.xyz * u_xlat0.xxx) + u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlatb18 = (x_34.x_DesertSunDir.w >= 0.5f);
  if (u_xlatb18) {
    u_xlat9.x = sqrt(u_xlat9.x);
    u_xlat18.x = max(u_xlat9.x, 0.00009999999747378752f);
    u_xlat4 = vec4f(((u_xlat5.xyz / u_xlat18.xxx)).xyz, u_xlat4.w);
    u_xlat9.x = (u_xlat9.x + -(x_34.x_DesertHaze.z));
    u_xlat9.x = max(u_xlat9.x, 0.0f);
    u_xlat19.x = (x_34.x_WorldSpaceCameraPos.y + -(x_34.x_DesertHaze2.x));
    u_xlat18.x = (u_xlat9.x / u_xlat18.x);
    u_xlat18.x = (u_xlat18.x * u_xlat5.y);
    u_xlat19.x = max(u_xlat19.x, -20.0f);
    u_xlat19.x = (u_xlat19.x * -(x_34.x_DesertHaze.y));
    u_xlat19.x = (u_xlat19.x * 1.44269502162933349609f);
    u_xlat19.x = exp2(u_xlat19.x);
    u_xlatb28 = (0.00999999977648258209f < abs(u_xlat18.x));
    u_xlat29 = (u_xlat18.x * -(x_34.x_DesertHaze.y));
    u_xlat29 = (u_xlat29 * 1.44269502162933349609f);
    u_xlat29 = exp2(u_xlat29);
    u_xlat29 = (-(u_xlat29) + 1.0f);
    u_xlat29 = (u_xlat19.x * u_xlat29);
    u_xlat18.x = (u_xlat18.x * x_34.x_DesertHaze.y);
    u_xlat18.x = (u_xlat29 / u_xlat18.x);
    if (u_xlatb28) {
      x_1621 = u_xlat18.x;
    } else {
      x_1621 = u_xlat19.x;
    }
    u_xlat18.x = x_1621;
    u_xlat19.x = (u_xlat9.x * x_34.x_DesertHaze.x);
    u_xlat9.x = (u_xlat9.x * x_34.x_DesertHazeTint.w);
    u_xlat9.x = ((u_xlat19.x * u_xlat18.x) + u_xlat9.x);
    u_xlat18.x = (u_xlat9.x * -1.44269502162933349609f);
    u_xlat18.x = exp2(u_xlat18.x);
    u_xlat18.x = (-(u_xlat18.x) + 1.0f);
    u_xlat18.x = min(u_xlat18.x, x_34.x_DesertHaze.w);
    u_xlat4.w = 0.03500000014901161194f;
    u_xlat19.x = dot(u_xlat4.xzw, u_xlat4.xzw);
    u_xlat19.x = inverseSqrt(u_xlat19.x);
    u_xlat5 = vec4f(((u_xlat19.xxx * u_xlat4.xwz)).xyz, u_xlat5.w);
    u_xlat28 = min(abs(u_xlat5.z), abs(u_xlat5.x));
    u_xlat29 = max(abs(u_xlat5.z), abs(u_xlat5.x));
    u_xlat29 = (1.0f / u_xlat29);
    u_xlat28 = (u_xlat28 * u_xlat29);
    u_xlat29 = (u_xlat28 * u_xlat28);
    u_xlat30 = ((u_xlat29 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat30 = ((u_xlat29 * u_xlat30) + 0.18014100193977355957f);
    u_xlat30 = ((u_xlat29 * u_xlat30) + -0.33029949665069580078f);
    u_xlat29 = ((u_xlat29 * u_xlat30) + 0.99986600875854492188f);
    u_xlat30 = (u_xlat28 * u_xlat29);
    u_xlatb32 = (abs(u_xlat5.z) < abs(u_xlat5.x));
    u_xlat30 = ((u_xlat30 * -2.0f) + 1.57079637050628662109f);
    u_xlat30 = select(0.0f, u_xlat30, u_xlatb32);
    u_xlat28 = ((u_xlat28 * u_xlat29) + u_xlat30);
    u_xlatb29 = (u_xlat5.z < -(u_xlat5.z));
    u_xlat29 = select(0.0f, -3.14159274101257324219f, u_xlatb29);
    u_xlat28 = (u_xlat28 + u_xlat29);
    u_xlat29 = min(u_xlat5.z, u_xlat5.x);
    u_xlat30 = max(u_xlat5.z, u_xlat5.x);
    u_xlatb29 = (u_xlat29 < -(u_xlat29));
    u_xlatb30 = (u_xlat30 >= -(u_xlat30));
    u_xlatb29 = (u_xlatb29 & u_xlatb30);
    if (u_xlatb29) {
      x_1792 = -(u_xlat28);
    } else {
      x_1792 = u_xlat28;
    }
    u_xlat28 = x_1792;
    u_xlat6.x = ((u_xlat28 * 0.15915493667125701904f) + 0.5f);
    u_xlat6.y = 0.5f;
    let x_1817 = textureSampleLevel(x_DesertHorizonRing, sampler_DesertHorizonRing, u_xlat6.xy, 0.0f).xyz;
    u_xlat5 = vec4f(x_1817.x, u_xlat5.y, x_1817.yz);
    u_xlat28 = ((-(u_xlat4.w) * u_xlat19.x) + 1.0f);
    u_xlat28 = sqrt(u_xlat28);
    u_xlat29 = ((u_xlat19.x * -0.00065552548039704561f) + 0.07426100224256515503f);
    u_xlat29 = ((u_xlat29 * u_xlat5.y) + -0.21211439371109008789f);
    u_xlat29 = ((u_xlat29 * u_xlat5.y) + 1.57072877883911132812f);
    u_xlat28 = ((-(u_xlat29) * u_xlat28) + 1.57079637050628662109f);
    u_xlat6 = vec4f(((vec2f(u_xlat28) * vec2f(57.295780181884765625f, -9.18448162078857421875f))).xy, u_xlat6.zw);
    u_xlat7 = vec4f(((u_xlat5.xzw * x_34.x_DesertSkyGrade0.xyz)).xyz, u_xlat7.w);
    u_xlat29 = dot(u_xlat7.xyz, vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
    u_xlat5 = vec4f((((u_xlat5.xzw * x_34.x_DesertSkyGrade0.xyz) + -(vec3f(u_xlat29)))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((x_34.x_DesertSkyGrade0.www * u_xlat5.xyz) + vec3f(u_xlat29))).xyz, u_xlat5.w);
    u_xlat5 = vec4f(max(u_xlat5.xyz, vec3f()).xyz, u_xlat5.w);
    u_xlat29 = max(x_34.x_DesertSkyGrade1.w, 0.10000000149011611938f);
    u_xlat29 = (u_xlat6.x / u_xlat29);
    u_xlat29 = (-(u_xlat29) + 1.0f);
    u_xlat29 = max(u_xlat29, 0.0f);
    u_xlat29 = (u_xlat29 * u_xlat29);
    let x_1925 = (x_34.x_DesertSkyGrade1.xyz + x_1924);
    u_xlat6 = vec4f(x_1925.x, u_xlat6.y, x_1925.yz);
    let x_1934 = ((vec3f(u_xlat29) * u_xlat6.xzw) + x_1933);
    u_xlat6 = vec4f(x_1934.x, u_xlat6.y, x_1934.yz);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6.xzw)).xyz, u_xlat5.w);
    u_xlat28 = ((u_xlat28 * 57.295780181884765625f) + -(x_34.x_DesertSkyGrade2.w));
    u_xlat29 = (-(x_34.x_DesertSkyGrade2.w) + 90.0f);
    u_xlat29 = max(u_xlat29, 1.0f);
    u_xlat28 = (u_xlat28 / u_xlat29);
    u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
    let x_1966 = (x_34.x_DesertSkyGrade2.xyz + x_1924);
    u_xlat6 = vec4f(x_1966.x, u_xlat6.y, x_1966.yz);
    let x_1974 = ((vec3f(u_xlat28) * u_xlat6.xzw) + x_1933);
    u_xlat6 = vec4f(x_1974.x, u_xlat6.y, x_1974.yz);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6.xzw)).xyz, u_xlat5.w);
    u_xlat19 = ((u_xlat4.xz * u_xlat19.xx) + x_1990);
    u_xlat29 = dot(u_xlat19, u_xlat19);
    u_xlat29 = inverseSqrt(u_xlat29);
    u_xlat19 = (u_xlat19 * vec2f(u_xlat29));
    let x_2004 = (x_34.x_DesertSunDir.xz + x_1990);
    u_xlat6 = vec4f(x_2004.x, u_xlat6.y, x_2004.y, u_xlat6.w);
    u_xlat29 = dot(u_xlat6.xz, u_xlat6.xz);
    u_xlat29 = inverseSqrt(u_xlat29);
    let x_2018 = (vec2f(u_xlat29) * u_xlat6.xz);
    u_xlat6 = vec4f(x_2018.x, u_xlat6.y, x_2018.y, u_xlat6.w);
    u_xlat19.x = dot(u_xlat19, u_xlat6.xz);
    u_xlat19.x = ((u_xlat19.x * 0.5f) + 0.5f);
    u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
    u_xlat28 = max(x_34.x_DesertSkyGrade3.w, 1.0f);
    u_xlat19.x = log2(u_xlat19.x);
    u_xlat19.x = (u_xlat19.x * u_xlat28);
    u_xlat19.x = exp2(u_xlat19.x);
    u_xlat28 = exp2(u_xlat6.y);
    u_xlat19.x = (u_xlat28 * u_xlat19.x);
    u_xlat28 = (u_xlat19.x * 1.5f);
    u_xlat28 = min(u_xlat28, 1.0f);
    u_xlat6 = vec4f((((vec3f(u_xlat28) * vec3f(0.0f, -0.19999998807907104492f, -0.33999997377395629883f)) + x_1933)).xyz, u_xlat6.w);
    u_xlat7 = vec4f(((u_xlat19.xxx * x_34.x_DesertSkyGrade3.xyz)).xyz, u_xlat7.w);
    u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat6.xyz) + u_xlat7.xyz)).xyz, u_xlat5.w);
    u_xlat9.x = (u_xlat9.x * x_34.x_DesertHaze2.w);
    u_xlat9.x = (u_xlat9.x * 0.44999998807907104492f);
    u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
    u_xlat5 = vec4f(((u_xlat5.xyz + -(x_34.x_DesertHazeTint.xyz))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((u_xlat9.xxx * u_xlat5.xyz) + x_34.x_DesertHazeTint.xyz)).xyz, u_xlat5.w);
    u_xlat9.x = dot(u_xlat4.xyz, x_34.x_DesertSunDir.xyz);
    u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
    u_xlat4 = vec4f(((x_34.x_DesertSunColor.xyz * x_34.x_DesertHaze2.yyy)).xyz, u_xlat4.w);
    u_xlat9.x = log2(u_xlat9.x);
    u_xlat9.x = (u_xlat9.x * x_34.x_DesertHaze2.z);
    u_xlat9.x = exp2(u_xlat9.x);
    u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat9.xxx) + u_xlat5.xyz)).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((-(u_xlat3.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
    u_xlat3 = vec4f((((u_xlat18.xxx * u_xlat4.xyz) + u_xlat3.xyz)).xyz, u_xlat3.w);
  }
  u_xlat0 = vec4f((((x_34.x_MainLightColor.xyz * u_xlat0.xxx) + u_xlat2.xyz)).xyz, u_xlat0.w);
  u_xlat27 = ((-(u_xlat27) * u_xlat1.x) + 1.0f);
  u_xlat0 = vec4f(((vec3f(u_xlat27) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * x_956)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * vs_COLOR0.www)).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((u_xlat3.xyz * u_xlat10.xxx) + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat10.x;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec2f, @location(3) vs_COLOR0_param : vec4f, @location(1) vs_TEXCOORD1_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(0) vs_TEXCOORD0_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/Desert/Materials/Shaders/Desert_WaterSheet.shader
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

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

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
  vs_TEXCOORD2 = in_TEXCOORD0;
  vs_COLOR0 = in_COLOR0;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec2f,
  @location(3)
  vs_COLOR0_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(3) in_TEXCOORD0_param : vec2f, @location(2) in_COLOR0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0);
}

//Assets/Levels/Desert/Materials/Shaders/Desert_WaterSheet.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Tint : vec4f,
  /* @offset(16) */
  x_Foam : vec4f,
  /* @offset(32) */
  x_Columns : f32,
  /* @offset(36) */
  x_Rows : f32,
  /* @offset(40) */
  x_Speed : f32,
  /* @offset(44) */
  x_Reflection : f32,
  /* @offset(48) */
  x_Sun : f32,
  /* @offset(64) */
  x_Alpha : vec4f,
  /* @offset(80) */
  x_Break : vec4f,
  /* @offset(96) */
  x_Aerate : vec4f,
}

struct PGlobals {
  /* @offset(0) */
  x_MainLightPosition : vec4f,
  /* @offset(16) */
  x_MainLightColor : vec4f,
  /* @offset(32) */
  x_Time : vec4f,
  /* @offset(48) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(64) */
  x_DesertSunDir : vec4f,
  /* @offset(80) */
  x_DesertSunColor : vec4f,
  /* @offset(96) */
  x_DesertHaze : vec4f,
  /* @offset(112) */
  x_DesertHaze2 : vec4f,
  /* @offset(128) */
  x_DesertHazeTint : vec4f,
  /* @offset(144) */
  x_DesertSkyGrade0 : vec4f,
  /* @offset(160) */
  x_DesertSkyGrade1 : vec4f,
  /* @offset(176) */
  x_DesertSkyGrade2 : vec4f,
  /* @offset(192) */
  x_DesertSkyGrade3 : vec4f,
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
  unity_SpecCube0_HDR : vec4f,
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

var<private> vs_TEXCOORD2 : vec2f;

@group(1) @binding(3) var<uniform> x_16 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(2) var<uniform> x_986 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_2347 : UnityPerDraw;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(3) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var x_DesertHorizonRing : texture_2d<f32>;

@group(0) @binding(5) var sampler_DesertHorizonRing : sampler;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_90 = vec2f(2.0f);

const x_93 = vec2f(3.0f);

const x_104 = vec2f(0.10310000181198120117f);

const x_117 = vec3f(33.3300018310546875f);

const x_151 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_154 = vec4f(0.10310000181198120117f);

const x_160 = vec4f(33.3300018310546875f);

const x_215 = vec2f(1.0f);

const x_314 = vec2f(2.29999995231628417969f, 5.09999990463256835938f);

const x_956 = vec3f(0.34999999403953552246f);

const x_1141 = vec2f(0.5f);

const x_1163 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1226 = vec2f(0.15999999642372131348f);

const x_1295 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1687 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1690 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1697 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1735 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_3145 = vec3f(-1.0f);

const x_3154 = vec3f(1.0f);

const x_3211 = vec2f(0.00000999999974737875f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat20 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat40 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat61 : f32;
  var u_xlat21 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat42 : vec2f;
  var u_xlat22 : f32;
  var u_xlat60 : f32;
  var u_xlat41 : vec2f;
  var x_908 : vec3f;
  var u_xlatb0 : bool;
  var u_xlat6 : vec4f;
  var txVec0 : vec3f;
  var u_xlat7 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb20 : bool;
  var u_xlat46 : vec2f;
  var u_xlat8 : vec4f;
  var u_xlat48 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat63 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat27 : vec3f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat28 : vec2f;
  var u_xlat54 : vec2f;
  var u_xlat49 : vec2f;
  var u_xlat17 : vec4f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
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
  var u_xlatb61 : bool;
  var x_2296 : f32;
  var u_xlat62 : f32;
  var u_xlatb40 : bool;
  var x_2842 : f32;
  var u_xlatb65 : bool;
  var u_xlatb62 : bool;
  var u_xlatb63 : bool;
  var x_3013 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((vs_TEXCOORD2 * vec2f(x_16.x_Columns, x_16.x_Rows))).xy, u_xlat0.zw);
  u_xlat20.x = ((-(x_34.x_Time.y) * x_16.x_Speed) + u_xlat0.y);
  u_xlat1 = vec4f(((u_xlat20.xxx * vec3f(0.34999999403953552246f, 0.80000001192092895508f, 1.89999997615814208984f))).xyz, u_xlat1.w);
  u_xlat2.x = floor(u_xlat0.x);
  u_xlat2.y = floor(u_xlat1.x);
  u_xlat3.x = fract(u_xlat0.x);
  let x_76 = fract(u_xlat1.xy);
  u_xlat3 = vec4f(u_xlat3.x, x_76.x, u_xlat3.z, x_76.y);
  u_xlat40 = (u_xlat3.xy * u_xlat3.xy);
  u_xlat1 = vec4f((((-(u_xlat3.xy) * x_90) + x_93)).xy, u_xlat1.zw);
  u_xlat40 = (u_xlat40 * u_xlat1.xy);
  u_xlat1 = vec4f(((u_xlat2.xy * x_104)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(fract(u_xlat1.xy).xy, u_xlat1.zw);
  u_xlat4 = vec4f(((u_xlat1.yxx + x_117)).xyz, u_xlat4.w);
  u_xlat61 = dot(u_xlat1.xyx, u_xlat4.xyz);
  u_xlat1 = vec4f(((vec2f(u_xlat61) + u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat21.x = (u_xlat1.y + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat21.x);
  u_xlat4 = (u_xlat2.yxyx + x_151);
  u_xlat4 = (u_xlat4 * x_154);
  u_xlat4 = fract(u_xlat4);
  u_xlat5 = (u_xlat4 + x_160);
  u_xlat21.x = dot(u_xlat4.yxy, u_xlat5.xyy);
  let x_172 = (u_xlat21.xx + u_xlat4.yx);
  u_xlat21 = vec3f(x_172.x, u_xlat21.y, x_172.y);
  u_xlat61 = (u_xlat21.z + u_xlat21.x);
  u_xlat1.y = (u_xlat21.x * u_xlat61);
  u_xlat61 = dot(u_xlat4.wzw, u_xlat5.zww);
  u_xlat42 = (vec2f(u_xlat61) + u_xlat4.wz);
  u_xlat61 = (u_xlat42.y + u_xlat42.x);
  u_xlat1.w = (u_xlat42.x * u_xlat61);
  let x_210 = fract(u_xlat1.xyw);
  u_xlat1 = vec4f(x_210.xy, u_xlat1.z, x_210.z);
  u_xlat2 = vec4f(((u_xlat2.xy + x_215)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_104)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(fract(u_xlat2.xy).xy, u_xlat2.zw);
  u_xlat4 = vec4f(((u_xlat2.yxx + x_117)).xyz, u_xlat4.w);
  u_xlat42.x = dot(u_xlat2.xyx, u_xlat4.xyz);
  u_xlat2 = vec4f(((u_xlat42.xx + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat22 = (u_xlat2.y + u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat22);
  u_xlat2.x = fract(u_xlat2.x);
  u_xlat21.x = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat1.x = ((u_xlat40.x * u_xlat21.x) + u_xlat1.x);
  u_xlat21.x = (-(u_xlat1.w) + u_xlat2.x);
  u_xlat40.x = ((u_xlat40.x * u_xlat21.x) + u_xlat1.w);
  u_xlat40.x = (-(u_xlat1.x) + u_xlat40.x);
  u_xlat40.x = ((u_xlat40.y * u_xlat40.x) + u_xlat1.x);
  u_xlat1 = vec4f(((u_xlat0.xx * x_314)).xy, u_xlat1.zw);
  let x_324 = ((u_xlat0.xx * x_314) + vec2f(17.0f, 5.0f));
  u_xlat0 = vec4f(x_324.x, u_xlat0.yz, x_324.y);
  u_xlat2 = vec4f((((u_xlat20.xx * vec2f(0.80000001192092895508f, 1.89999997615814208984f)) + vec2f(3.0f, -7.0f))).xy, u_xlat2.zw);
  let x_338 = floor(u_xlat0.xw);
  u_xlat4 = vec4f(x_338.x, u_xlat4.y, x_338.y, u_xlat4.w);
  let x_343 = floor(u_xlat2.xy);
  u_xlat4 = vec4f(u_xlat4.x, x_343.x, u_xlat4.z, x_343.y);
  u_xlat3.z = fract(u_xlat1.x);
  u_xlat0 = vec4f(((u_xlat3.zw * u_xlat3.zw)).xy, u_xlat0.zw);
  let x_361 = ((-(u_xlat3.zw) * x_90) + x_93);
  u_xlat1 = vec4f(x_361.x, u_xlat1.yz, x_361.y);
  u_xlat0 = vec4f(((u_xlat0.xy * u_xlat1.xw)).xy, u_xlat0.zw);
  u_xlat2 = (u_xlat4 * x_154);
  u_xlat2 = fract(u_xlat2);
  u_xlat3 = vec4f(((u_xlat2.yxx + x_117)).xyz, u_xlat3.w);
  u_xlat60 = dot(u_xlat2.xyx, u_xlat3.xyz);
  let x_390 = (vec2f(u_xlat60) + u_xlat2.xy);
  u_xlat1 = vec4f(x_390.x, u_xlat1.yz, x_390.y);
  u_xlat60 = (u_xlat1.w + u_xlat1.x);
  u_xlat60 = (u_xlat1.x * u_xlat60);
  u_xlat60 = fract(u_xlat60);
  u_xlat3 = (u_xlat4.yxyx + x_151);
  u_xlat3 = (u_xlat3 * x_154);
  u_xlat3 = fract(u_xlat3);
  u_xlat5 = (u_xlat3 + x_160);
  u_xlat1.x = dot(u_xlat3.yxy, u_xlat5.xyy);
  let x_423 = (u_xlat1.xx + u_xlat3.yx);
  u_xlat1 = vec4f(x_423.x, u_xlat1.yz, x_423.y);
  u_xlat61 = (u_xlat1.w + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat61);
  u_xlat61 = dot(u_xlat3.wzw, u_xlat5.zww);
  u_xlat2 = vec4f(((vec2f(u_xlat61) + u_xlat3.wz)).xy, u_xlat2.zw);
  u_xlat61 = (u_xlat2.y + u_xlat2.x);
  u_xlat1.w = (u_xlat2.x * u_xlat61);
  let x_460 = fract(u_xlat1.xw);
  u_xlat1 = vec4f(x_460.x, u_xlat1.yz, x_460.y);
  u_xlat3 = (u_xlat4 + vec4f(1.0f));
  u_xlat3 = (u_xlat3 * x_154);
  u_xlat3 = fract(u_xlat3);
  u_xlat5 = vec4f(((u_xlat3.yxx + x_117)).xyz, u_xlat5.w);
  u_xlat2.x = dot(u_xlat3.xyx, u_xlat5.xyz);
  u_xlat2 = vec4f(((u_xlat2.xx + u_xlat3.xy)).xy, u_xlat2.zw);
  u_xlat22 = (u_xlat2.y + u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat22);
  u_xlat2.x = fract(u_xlat2.x);
  u_xlat1.x = (-(u_xlat60) + u_xlat1.x);
  u_xlat60 = ((u_xlat0.x * u_xlat1.x) + u_xlat60);
  u_xlat1.x = (-(u_xlat1.w) + u_xlat2.x);
  u_xlat0.x = ((u_xlat0.x * u_xlat1.x) + u_xlat1.w);
  u_xlat0.x = (-(u_xlat60) + u_xlat0.x);
  u_xlat0.x = ((u_xlat0.y * u_xlat0.x) + u_xlat60);
  u_xlat1.x = fract(u_xlat1.y);
  u_xlat1.y = fract(u_xlat1.z);
  let x_557 = (u_xlat1.xy * u_xlat1.xy);
  u_xlat20 = vec3f(x_557.x, u_xlat20.y, x_557.y);
  u_xlat1 = vec4f((((-(u_xlat1.xy) * x_90) + x_93)).xy, u_xlat1.zw);
  let x_571 = (u_xlat20.xz * u_xlat1.xy);
  u_xlat20 = vec3f(x_571.x, u_xlat20.y, x_571.y);
  u_xlat1 = vec4f(((u_xlat2.wzz + x_117)).xyz, u_xlat1.w);
  u_xlat1.x = dot(u_xlat2.zwz, u_xlat1.xyz);
  u_xlat1 = vec4f(((u_xlat1.xx + u_xlat2.zw)).xy, u_xlat1.zw);
  u_xlat21.x = (u_xlat1.y + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat21.x);
  u_xlat2 = (u_xlat4.wzwz + x_151);
  u_xlat2 = (u_xlat2 * x_154);
  u_xlat2 = fract(u_xlat2);
  u_xlat4 = (u_xlat2 + x_160);
  u_xlat21.x = dot(u_xlat2.yxy, u_xlat4.xyy);
  u_xlat21 = vec3f(((u_xlat21.xx + u_xlat2.yx)).xy, u_xlat21.z);
  u_xlat41.x = (u_xlat21.y + u_xlat21.x);
  u_xlat1.y = (u_xlat21.x * u_xlat41.x);
  u_xlat41.x = dot(u_xlat2.wzw, u_xlat4.zww);
  u_xlat41 = (u_xlat41.xx + u_xlat2.wz);
  u_xlat61 = (u_xlat41.y + u_xlat41.x);
  u_xlat1.z = (u_xlat41.x * u_xlat61);
  u_xlat2 = vec4f(((u_xlat3.wzz + x_117)).xyz, u_xlat2.w);
  u_xlat61 = dot(u_xlat3.zwz, u_xlat2.xyz);
  u_xlat2 = vec4f(((vec2f(u_xlat61) + u_xlat3.zw)).xy, u_xlat2.zw);
  u_xlat61 = (u_xlat2.y + u_xlat2.x);
  u_xlat1.w = (u_xlat2.x * u_xlat61);
  u_xlat1 = fract(u_xlat1);
  u_xlat21.x = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat1.x = ((u_xlat20.x * u_xlat21.x) + u_xlat1.x);
  u_xlat21.x = (-(u_xlat1.z) + u_xlat1.w);
  u_xlat20.x = ((u_xlat20.x * u_xlat21.x) + u_xlat1.z);
  u_xlat20.x = (-(u_xlat1.x) + u_xlat20.x);
  u_xlat0.y = ((u_xlat20.z * u_xlat20.x) + u_xlat1.x);
  u_xlat60 = (u_xlat0.x * 0.30000001192092895508f);
  u_xlat40.x = ((u_xlat40.x * 0.55000001192092895508f) + u_xlat60);
  u_xlat40.x = ((u_xlat0.y * 0.15000000596046447754f) + u_xlat40.x);
  u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
  u_xlat60 = (-(x_16.x_Break.x) + x_16.x_Break.y);
  u_xlat1.x = (vs_TEXCOORD2.y + -(x_16.x_Break.x));
  u_xlat60 = (1.0f / u_xlat60);
  u_xlat60 = (u_xlat60 * u_xlat1.x);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat60 * -2.0f) + 3.0f);
  u_xlat60 = (u_xlat60 * u_xlat60);
  u_xlat60 = (u_xlat60 * u_xlat1.x);
  u_xlat40.x = (u_xlat40.x + -0.37999999523162841797f);
  u_xlat40.x = (u_xlat40.x * 2.70270276069641113281f);
  u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat40.x * -2.0f) + 3.0f);
  u_xlat40.x = (u_xlat40.x * u_xlat40.x);
  u_xlat40.x = (u_xlat40.x * u_xlat1.x);
  u_xlat1.x = ((u_xlat0.x * 0.30000001192092895508f) + 0.85000002384185791016f);
  u_xlat21.x = (u_xlat1.x * x_16.x_Alpha.x);
  u_xlat41.x = (-(x_16.x_Alpha.z) + x_16.x_Alpha.y);
  u_xlat41.x = ((u_xlat40.x * u_xlat41.x) + x_16.x_Alpha.z);
  u_xlat1.x = ((-(x_16.x_Alpha.x) * u_xlat1.x) + u_xlat41.x);
  u_xlat60 = ((u_xlat60 * u_xlat1.x) + u_xlat21.x);
  u_xlat1.x = (vs_COLOR0.w * x_16.x_Alpha.w);
  u_xlat21.x = (u_xlat60 * u_xlat1.x);
  u_xlat41.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat41.x = inverseSqrt(u_xlat41.x);
  u_xlat2 = vec4f(((u_xlat41.xxx * vs_TEXCOORD1)).xyz, u_xlat2.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_908 = u_xlat2.xyz;
  } else {
    x_908 = -(u_xlat2.xyz);
  }
  u_xlat2 = vec4f(x_908.xyz, u_xlat2.w);
  u_xlat3 = vec4f(((-(vs_TEXCOORD0) + x_34.x_WorldSpaceCameraPos)).xyz, u_xlat3.w);
  u_xlat41.x = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat41.x = inverseSqrt(u_xlat41.x);
  u_xlat4 = vec4f(((u_xlat41.xxx * u_xlat3.xyz)).xyz, u_xlat4.w);
  let x_950 = (u_xlat0.xy + vec2f(-0.5f));
  u_xlat5 = vec4f(x_950.x, u_xlat5.y, x_950.y, u_xlat5.w);
  u_xlat5.y = 0.0f;
  u_xlat2 = vec4f((((u_xlat5.xyz * x_956) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat2 = vec4f(((u_xlat0.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_986.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_986.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_986.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_986.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat5.w);
  u_xlatb0 = (0.0f < x_986.x_MainLightShadowParams.y);
  if (u_xlatb0) {
    u_xlatb0 = (x_986.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb0) {
      u_xlat6 = (u_xlat5.xyxy + x_986.x_MainLightShadowOffset0);
      let x_1049 = u_xlat6.xy;
      txVec0 = vec3f(x_1049.x, x_1049.y, u_xlat5.z);
      u_xlat7.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1072 = u_xlat6.zw;
      txVec1 = vec3f(x_1072.x, x_1072.y, u_xlat5.z);
      u_xlat7.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat6 = (u_xlat5.xyxy + x_986.x_MainLightShadowOffset1);
      let x_1092 = u_xlat6.xy;
      txVec2 = vec3f(x_1092.x, x_1092.y, u_xlat5.z);
      u_xlat7.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1107 = u_xlat6.zw;
      txVec3 = vec3f(x_1107.x, x_1107.y, u_xlat5.z);
      u_xlat7.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat0.x = dot(u_xlat7, vec4f(0.25f));
    } else {
      u_xlatb20 = (x_986.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb20) {
        u_xlat6 = vec4f((((u_xlat5.xy * x_986.x_MainLightShadowmapSize.zw) + x_1141)).xy, u_xlat6.zw);
        u_xlat6 = vec4f(floor(u_xlat6.xy).xy, u_xlat6.zw);
        u_xlat46 = ((u_xlat5.xy * x_986.x_MainLightShadowmapSize.zw) + -(u_xlat6.xy));
        u_xlat7 = (u_xlat46.xxyy + x_1163);
        u_xlat8 = (u_xlat7.xxzz * u_xlat7.xxzz);
        let x_1175 = (u_xlat8.yw * vec2f(0.07999999821186065674f));
        u_xlat7 = vec4f(x_1175.x, u_xlat7.y, x_1175.y, u_xlat7.w);
        u_xlat8 = vec4f((((u_xlat8.xz * x_1141) + -(u_xlat46))).xy, u_xlat8.zw);
        u_xlat48 = (-(u_xlat46) + x_215);
        u_xlat9 = vec4f(min(u_xlat46, vec2f()).xy, u_xlat9.zw);
        u_xlat9 = vec4f((((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat48)).xy, u_xlat9.zw);
        u_xlat46 = max(u_xlat46, vec2f());
        u_xlat46 = ((-(u_xlat46) * u_xlat46) + u_xlat7.yw);
        u_xlat9 = vec4f(((u_xlat9.xy + x_215)).xy, u_xlat9.zw);
        u_xlat46 = (u_xlat46 + x_215);
        u_xlat10 = vec4f(((u_xlat8.xy * x_1226)).xy, u_xlat10.zw);
        u_xlat8 = vec4f(((u_xlat48 * x_1226)).xy, u_xlat8.zw);
        u_xlat9 = vec4f(((u_xlat9.xy * x_1226)).xy, u_xlat9.zw);
        u_xlat11 = vec4f(((u_xlat46 * x_1226)).xy, u_xlat11.zw);
        u_xlat46 = (u_xlat7.yw * x_1226);
        u_xlat10.z = u_xlat9.x;
        u_xlat10.w = u_xlat46.x;
        u_xlat8.z = u_xlat11.x;
        u_xlat8.w = u_xlat7.x;
        u_xlat12 = (u_xlat8.zwxz + u_xlat10.zwxz);
        u_xlat9.z = u_xlat10.y;
        u_xlat9.w = u_xlat46.y;
        u_xlat11.z = u_xlat8.y;
        u_xlat11.w = u_xlat7.z;
        u_xlat7 = vec4f(((u_xlat9.zyw + u_xlat11.zyw)).xyz, u_xlat7.w);
        u_xlat8 = vec4f(((u_xlat8.xzw / u_xlat12.zwy)).xyz, u_xlat8.w);
        u_xlat8 = vec4f(((u_xlat8.xyz + x_1295)).xyz, u_xlat8.w);
        u_xlat9 = vec4f(((u_xlat11.zyw / u_xlat7.xyz)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat9.xyz + x_1295)).xyz, u_xlat9.w);
        u_xlat8 = vec4f(((u_xlat8.yxz * x_986.x_MainLightShadowmapSize.xxx)).xyz, u_xlat8.w);
        u_xlat9 = vec4f(((u_xlat9.xyz * x_986.x_MainLightShadowmapSize.yyy)).xyz, u_xlat9.w);
        u_xlat8.w = u_xlat9.x;
        u_xlat10 = ((u_xlat6.xyxy * x_986.x_MainLightShadowmapSize.xyxy) + u_xlat8.ywxw);
        u_xlat46 = ((u_xlat6.xy * x_986.x_MainLightShadowmapSize.xy) + u_xlat8.zw);
        u_xlat9.w = u_xlat8.y;
        let x_1352 = u_xlat9.yz;
        u_xlat8 = vec4f(u_xlat8.x, x_1352.x, u_xlat8.z, x_1352.y);
        u_xlat11 = ((u_xlat6.xyxy * x_986.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat9 = ((u_xlat6.xyxy * x_986.x_MainLightShadowmapSize.xyxy) + u_xlat9.wywz);
        u_xlat8 = ((u_xlat6.xyxy * x_986.x_MainLightShadowmapSize.xyxy) + u_xlat8.xwzw);
        u_xlat13 = (u_xlat7.xxxy * u_xlat12.zwyz);
        u_xlat14 = (u_xlat7.yyzz * u_xlat12);
        u_xlat20.x = (u_xlat7.z * u_xlat12.y);
        let x_1401 = u_xlat10.xy;
        txVec4 = vec3f(x_1401.x, x_1401.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1415 = u_xlat10.zw;
        txVec5 = vec3f(x_1415.x, x_1415.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat63 = (u_xlat63 * u_xlat13.y);
        u_xlat61 = ((u_xlat13.x * u_xlat61) + u_xlat63);
        txVec6 = vec3f(u_xlat46.x, u_xlat46.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat61 = ((u_xlat13.z * u_xlat63) + u_xlat61);
        let x_1459 = u_xlat9.xy;
        txVec7 = vec3f(x_1459.x, x_1459.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat61 = ((u_xlat13.w * u_xlat63) + u_xlat61);
        let x_1479 = u_xlat11.xy;
        txVec8 = vec3f(x_1479.x, x_1479.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat61 = ((u_xlat14.x * u_xlat63) + u_xlat61);
        let x_1499 = u_xlat11.zw;
        txVec9 = vec3f(x_1499.x, x_1499.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat61 = ((u_xlat14.y * u_xlat63) + u_xlat61);
        let x_1519 = u_xlat9.zw;
        txVec10 = vec3f(x_1519.x, x_1519.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat61 = ((u_xlat14.z * u_xlat63) + u_xlat61);
        let x_1539 = u_xlat8.xy;
        txVec11 = vec3f(x_1539.x, x_1539.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat61 = ((u_xlat14.w * u_xlat63) + u_xlat61);
        let x_1559 = u_xlat8.zw;
        txVec12 = vec3f(x_1559.x, x_1559.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat0.x = ((u_xlat20.x * u_xlat63) + u_xlat61);
      } else {
        u_xlat6 = vec4f((((u_xlat5.xy * x_986.x_MainLightShadowmapSize.zw) + x_1141)).xy, u_xlat6.zw);
        u_xlat6 = vec4f(floor(u_xlat6.xy).xy, u_xlat6.zw);
        u_xlat46 = ((u_xlat5.xy * x_986.x_MainLightShadowmapSize.zw) + -(u_xlat6.xy));
        u_xlat7 = (u_xlat46.xxyy + x_1163);
        u_xlat8 = (u_xlat7.xxzz * u_xlat7.xxzz);
        let x_1615 = (u_xlat8.yw * vec2f(0.04081600159406661987f));
        u_xlat9 = vec4f(u_xlat9.x, x_1615.x, u_xlat9.z, x_1615.y);
        let x_1623 = ((u_xlat8.xz * x_1141) + -(u_xlat46));
        u_xlat7 = vec4f(x_1623.x, u_xlat7.y, x_1623.y, u_xlat7.w);
        u_xlat8 = vec4f(((-(u_xlat46) + x_215)).xy, u_xlat8.zw);
        u_xlat48 = min(u_xlat46, vec2f());
        u_xlat8 = vec4f((((-(u_xlat48) * u_xlat48) + u_xlat8.xy)).xy, u_xlat8.zw);
        u_xlat48 = max(u_xlat46, vec2f());
        let x_1651 = ((-(u_xlat48) * u_xlat48) + u_xlat7.yw);
        u_xlat27 = vec3f(x_1651.x, u_xlat27.y, x_1651.y);
        u_xlat8 = vec4f(((u_xlat8.xy + x_90)).xy, u_xlat8.zw);
        let x_1661 = (u_xlat27.xz + x_90);
        u_xlat7 = vec4f(u_xlat7.x, x_1661.x, u_xlat7.z, x_1661.y);
        u_xlat10.z = (u_xlat7.y * 0.08163200318813323975f);
        u_xlat11 = vec4f(((u_xlat7.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat11.w);
        u_xlat7 = vec4f(((u_xlat8.xy * vec2f(0.08163200318813323975f))).xy, u_xlat7.zw);
        u_xlat10.x = u_xlat11.y;
        let x_1691 = ((u_xlat46.xx * x_1687) + x_1690);
        u_xlat10 = vec4f(u_xlat10.x, x_1691.x, u_xlat10.z, x_1691.y);
        let x_1698 = ((u_xlat46.xx * x_1687) + x_1697);
        u_xlat8 = vec4f(x_1698.x, u_xlat8.y, x_1698.y, u_xlat8.w);
        u_xlat8.y = u_xlat7.x;
        u_xlat8.w = u_xlat9.y;
        u_xlat10 = (u_xlat8 + u_xlat10);
        let x_1713 = ((u_xlat46.yy * x_1687) + x_1690);
        u_xlat11 = vec4f(u_xlat11.x, x_1713.x, u_xlat11.z, x_1713.y);
        let x_1719 = ((u_xlat46.yy * x_1687) + x_1697);
        u_xlat9 = vec4f(x_1719.x, u_xlat9.y, x_1719.y, u_xlat9.w);
        u_xlat9.y = u_xlat7.y;
        u_xlat7 = (u_xlat9 + u_xlat11);
        u_xlat8 = (u_xlat8 / u_xlat10);
        u_xlat8 = (u_xlat8 + x_1735);
        u_xlat9 = (u_xlat9 / u_xlat7);
        u_xlat9 = (u_xlat9 + x_1735);
        u_xlat8 = (u_xlat8.wxyz * x_986.x_MainLightShadowmapSize.xxxx);
        u_xlat9 = (u_xlat9.xwyz * x_986.x_MainLightShadowmapSize.yyyy);
        let x_1755 = u_xlat8.yzw;
        u_xlat11 = vec4f(x_1755.x, u_xlat11.y, x_1755.yz);
        u_xlat11.y = u_xlat9.x;
        u_xlat12 = ((u_xlat6.xyxy * x_986.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat46 = ((u_xlat6.xy * x_986.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat8.y = u_xlat11.y;
        u_xlat11.y = u_xlat9.z;
        u_xlat13 = ((u_xlat6.xyxy * x_986.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat14 = vec4f((((u_xlat6.xy * x_986.x_MainLightShadowmapSize.xy) + u_xlat11.wy)).xy, u_xlat14.zw);
        u_xlat8.z = u_xlat11.y;
        u_xlat15 = ((u_xlat6.xyxy * x_986.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyxz);
        u_xlat11.y = u_xlat9.w;
        u_xlat16 = ((u_xlat6.xyxy * x_986.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat28 = ((u_xlat6.xy * x_986.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat8.w = u_xlat11.y;
        u_xlat54 = ((u_xlat6.xy * x_986.x_MainLightShadowmapSize.xy) + u_xlat8.xw);
        let x_1855 = u_xlat11.xzw;
        u_xlat9 = vec4f(x_1855.x, u_xlat9.y, x_1855.yz);
        u_xlat11 = ((u_xlat6.xyxy * x_986.x_MainLightShadowmapSize.xyxy) + u_xlat9.xyzy);
        u_xlat49 = ((u_xlat6.xy * x_986.x_MainLightShadowmapSize.xy) + u_xlat9.wy);
        u_xlat9.x = u_xlat8.x;
        u_xlat6 = vec4f((((u_xlat6.xy * x_986.x_MainLightShadowmapSize.xy) + u_xlat9.xy)).xy, u_xlat6.zw);
        u_xlat17 = (u_xlat7.xxxx * u_xlat10);
        u_xlat18 = (u_xlat7.yyyy * u_xlat10);
        u_xlat19 = (u_xlat7.zzzz * u_xlat10);
        u_xlat7 = (u_xlat7.wwww * u_xlat10);
        let x_1912 = u_xlat12.xy;
        txVec13 = vec3f(x_1912.x, x_1912.y, u_xlat5.z);
        u_xlat20.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1927 = u_xlat12.zw;
        txVec14 = vec3f(x_1927.x, x_1927.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat61 = (u_xlat61 * u_xlat17.y);
        u_xlat20.x = ((u_xlat17.x * u_xlat20.x) + u_xlat61);
        txVec15 = vec3f(u_xlat46.x, u_xlat46.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat20.x = ((u_xlat17.z * u_xlat61) + u_xlat20.x);
        let x_1974 = u_xlat15.xy;
        txVec16 = vec3f(x_1974.x, x_1974.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat20.x = ((u_xlat17.w * u_xlat61) + u_xlat20.x);
        let x_1996 = u_xlat13.xy;
        txVec17 = vec3f(x_1996.x, x_1996.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat20.x = ((u_xlat18.x * u_xlat61) + u_xlat20.x);
        let x_2018 = u_xlat13.zw;
        txVec18 = vec3f(x_2018.x, x_2018.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat20.x = ((u_xlat18.y * u_xlat61) + u_xlat20.x);
        let x_2040 = u_xlat14.xy;
        txVec19 = vec3f(x_2040.x, x_2040.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat20.x = ((u_xlat18.z * u_xlat61) + u_xlat20.x);
        let x_2062 = u_xlat15.zw;
        txVec20 = vec3f(x_2062.x, x_2062.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat20.x = ((u_xlat18.w * u_xlat61) + u_xlat20.x);
        let x_2084 = u_xlat16.xy;
        txVec21 = vec3f(x_2084.x, x_2084.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat20.x = ((u_xlat19.x * u_xlat61) + u_xlat20.x);
        let x_2106 = u_xlat16.zw;
        txVec22 = vec3f(x_2106.x, x_2106.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat20.x = ((u_xlat19.y * u_xlat61) + u_xlat20.x);
        txVec23 = vec3f(u_xlat28.x, u_xlat28.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat20.x = ((u_xlat19.z * u_xlat61) + u_xlat20.x);
        txVec24 = vec3f(u_xlat54.x, u_xlat54.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat20.x = ((u_xlat19.w * u_xlat61) + u_xlat20.x);
        let x_2170 = u_xlat11.xy;
        txVec25 = vec3f(x_2170.x, x_2170.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat20.x = ((u_xlat7.x * u_xlat61) + u_xlat20.x);
        let x_2192 = u_xlat11.zw;
        txVec26 = vec3f(x_2192.x, x_2192.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat20.x = ((u_xlat7.y * u_xlat61) + u_xlat20.x);
        txVec27 = vec3f(u_xlat49.x, u_xlat49.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat20.x = ((u_xlat7.z * u_xlat61) + u_xlat20.x);
        let x_2235 = u_xlat6.xy;
        txVec28 = vec3f(x_2235.x, x_2235.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat0.x = ((u_xlat7.w * u_xlat61) + u_xlat20.x);
      }
    }
  } else {
    let x_2258 = u_xlat5.xy;
    txVec29 = vec3f(x_2258.x, x_2258.y, u_xlat5.z);
    u_xlat0.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat20.x = (-(x_986.x_MainLightShadowParams.x) + 1.0f);
  u_xlat0.x = ((u_xlat0.x * x_986.x_MainLightShadowParams.x) + u_xlat20.x);
  u_xlatb20 = (0.0f >= u_xlat5.z);
  u_xlatb61 = (u_xlat5.z >= 1.0f);
  u_xlatb20 = (u_xlatb20 | u_xlatb61);
  if (u_xlatb20) {
    x_2296 = 1.0f;
  } else {
    x_2296 = u_xlat0.x;
  }
  u_xlat0.x = x_2296;
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_34.x_WorldSpaceCameraPos))).xyz, u_xlat5.w);
  u_xlat20.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat61 = ((u_xlat20.x * x_986.x_MainLightShadowParams.z) + x_986.x_MainLightShadowParams.w);
  u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
  u_xlat63 = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = ((u_xlat61 * u_xlat63) + u_xlat0.x);
  u_xlat2.w = 1.0f;
  u_xlat6.x = dot(x_2347.unity_SHAr, u_xlat2);
  u_xlat6.y = dot(x_2347.unity_SHAg, u_xlat2);
  u_xlat6.z = dot(x_2347.unity_SHAb, u_xlat2);
  u_xlat7 = (u_xlat2.yzzx * u_xlat2.xyzz);
  u_xlat8.x = dot(x_2347.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_2347.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_2347.unity_SHBb, u_xlat7);
  u_xlat61 = (u_xlat2.y * u_xlat2.y);
  u_xlat61 = ((u_xlat2.x * u_xlat2.x) + -(u_xlat61));
  u_xlat7 = vec4f((((x_2347.unity_SHC.xyz * vec3f(u_xlat61)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  u_xlat61 = dot(u_xlat2.xyz, x_34.x_MainLightPosition.xyz);
  u_xlat61 = (u_xlat61 + 0.5f);
  u_xlat61 = (u_xlat61 * 0.6666666865348815918f);
  u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
  u_xlat62 = (-(x_16.x_Aerate.x) + x_16.x_Aerate.y);
  u_xlat63 = (vs_TEXCOORD2.y + -(x_16.x_Aerate.x));
  u_xlat62 = (1.0f / u_xlat62);
  u_xlat62 = (u_xlat62 * u_xlat63);
  u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
  u_xlat63 = ((u_xlat62 * -2.0f) + 3.0f);
  u_xlat62 = (u_xlat62 * u_xlat62);
  u_xlat62 = (u_xlat62 * u_xlat63);
  u_xlat62 = (u_xlat62 * x_16.x_Aerate.z);
  u_xlat40.x = ((u_xlat40.x * 0.60000002384185791016f) + 0.60000002384185791016f);
  u_xlat40.x = (u_xlat40.x * u_xlat62);
  u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
  u_xlat7 = vec4f(((-(x_16.x_Tint.xyz) + x_16.x_Foam.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f((((u_xlat40.xxx * u_xlat7.xyz) + x_16.x_Tint.xyz)).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vec3f(u_xlat61) * x_34.x_MainLightColor.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((u_xlat0.xxx * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat8.xyz * vec3f(0.80000001192092895508f)) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat40.x = dot(u_xlat2.xyz, u_xlat4.xyz);
  u_xlat40.x = min(abs(u_xlat40.x), 1.0f);
  u_xlat40.x = (-(u_xlat40.x) + 1.0f);
  u_xlat61 = (u_xlat40.x * u_xlat40.x);
  u_xlat61 = (u_xlat61 * u_xlat61);
  u_xlat40.x = (u_xlat40.x * u_xlat61);
  u_xlat40.x = ((u_xlat40.x * 0.95999997854232788086f) + 0.03999999910593032837f);
  u_xlat61 = dot(-(u_xlat4.xyz), u_xlat2.xyz);
  u_xlat61 = (u_xlat61 + u_xlat61);
  u_xlat4 = vec4f((((u_xlat2.xyz * -(vec3f(u_xlat61))) + -(u_xlat4.xyz))).xyz, u_xlat4.w);
  u_xlat4 = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, u_xlat4.xyz, 0.97800004482269287109f);
  u_xlat61 = (u_xlat4.w + -1.0f);
  u_xlat61 = ((x_2347.unity_SpecCube0_HDR.w * u_xlat61) + 1.0f);
  u_xlat61 = max(u_xlat61, 0.0f);
  u_xlat61 = log2(u_xlat61);
  u_xlat61 = (u_xlat61 * x_2347.unity_SpecCube0_HDR.y);
  u_xlat61 = exp2(u_xlat61);
  u_xlat61 = (u_xlat61 * x_2347.unity_SpecCube0_HDR.x);
  u_xlat4 = vec4f(((u_xlat4.xyz * vec3f(u_xlat61))).xyz, u_xlat4.w);
  let x_2635 = vec3f(x_16.x_Reflection, x_16.x_Reflection, x_16.x_Reflection);
  u_xlat4 = vec4f(((u_xlat4.xyz * vec3f(x_2635.x, x_2635.y, x_2635.z))).xyz, u_xlat4.w);
  u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat41.xxx) + x_34.x_MainLightPosition.xyz)).xyz, u_xlat3.w);
  u_xlat41.x = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat41.x = inverseSqrt(u_xlat41.x);
  u_xlat3 = vec4f(((u_xlat41.xxx * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat41.x = dot(u_xlat2.xyz, u_xlat3.xyz);
  u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
  u_xlat41.x = log2(u_xlat41.x);
  u_xlat41.x = (u_xlat41.x * 220.0f);
  u_xlat41.x = exp2(u_xlat41.x);
  u_xlat41.x = (u_xlat41.x * x_16.x_Sun);
  u_xlat0.x = (u_xlat0.x * u_xlat41.x);
  u_xlat2 = vec4f(((u_xlat40.xxx * u_xlat4.xyz)).xyz, u_xlat2.w);
  u_xlat3 = vec4f((((u_xlat7.xyz * u_xlat6.xyz) + u_xlat2.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((x_34.x_MainLightColor.xyz * u_xlat0.xxx) + u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlatb40 = (x_34.x_DesertSunDir.w >= 0.5f);
  if (u_xlatb40) {
    u_xlat20.x = sqrt(u_xlat20.x);
    u_xlat40.x = max(u_xlat20.x, 0.00009999999747378752f);
    u_xlat4 = vec4f(((u_xlat5.xyz / u_xlat40.xxx)).xyz, u_xlat4.w);
    u_xlat20.x = (u_xlat20.x + -(x_34.x_DesertHaze.z));
    u_xlat20.x = max(u_xlat20.x, 0.0f);
    u_xlat41.x = (x_34.x_WorldSpaceCameraPos.y + -(x_34.x_DesertHaze2.x));
    u_xlat40.x = (u_xlat20.x / u_xlat40.x);
    u_xlat40.x = (u_xlat40.x * u_xlat5.y);
    u_xlat41.x = max(u_xlat41.x, -20.0f);
    u_xlat41.x = (u_xlat41.x * -(x_34.x_DesertHaze.y));
    u_xlat41.x = (u_xlat41.x * 1.44269502162933349609f);
    u_xlat41.x = exp2(u_xlat41.x);
    u_xlatb61 = (0.00999999977648258209f < abs(u_xlat40.x));
    u_xlat62 = (u_xlat40.x * -(x_34.x_DesertHaze.y));
    u_xlat62 = (u_xlat62 * 1.44269502162933349609f);
    u_xlat62 = exp2(u_xlat62);
    u_xlat62 = (-(u_xlat62) + 1.0f);
    u_xlat62 = (u_xlat41.x * u_xlat62);
    u_xlat40.x = (u_xlat40.x * x_34.x_DesertHaze.y);
    u_xlat40.x = (u_xlat62 / u_xlat40.x);
    if (u_xlatb61) {
      x_2842 = u_xlat40.x;
    } else {
      x_2842 = u_xlat41.x;
    }
    u_xlat40.x = x_2842;
    u_xlat41.x = (u_xlat20.x * x_34.x_DesertHaze.x);
    u_xlat20.x = (u_xlat20.x * x_34.x_DesertHazeTint.w);
    u_xlat20.x = ((u_xlat41.x * u_xlat40.x) + u_xlat20.x);
    u_xlat40.x = (u_xlat20.x * -1.44269502162933349609f);
    u_xlat40.x = exp2(u_xlat40.x);
    u_xlat40.x = (-(u_xlat40.x) + 1.0f);
    u_xlat40.x = min(u_xlat40.x, x_34.x_DesertHaze.w);
    u_xlat4.w = 0.03500000014901161194f;
    u_xlat41.x = dot(u_xlat4.xzw, u_xlat4.xzw);
    u_xlat41.x = inverseSqrt(u_xlat41.x);
    u_xlat5 = vec4f(((u_xlat41.xxx * u_xlat4.xwz)).xyz, u_xlat5.w);
    u_xlat61 = min(abs(u_xlat5.z), abs(u_xlat5.x));
    u_xlat62 = max(abs(u_xlat5.z), abs(u_xlat5.x));
    u_xlat62 = (1.0f / u_xlat62);
    u_xlat61 = (u_xlat61 * u_xlat62);
    u_xlat62 = (u_xlat61 * u_xlat61);
    u_xlat63 = ((u_xlat62 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat63 = ((u_xlat62 * u_xlat63) + 0.18014100193977355957f);
    u_xlat63 = ((u_xlat62 * u_xlat63) + -0.33029949665069580078f);
    u_xlat62 = ((u_xlat62 * u_xlat63) + 0.99986600875854492188f);
    u_xlat63 = (u_xlat61 * u_xlat62);
    u_xlatb65 = (abs(u_xlat5.z) < abs(u_xlat5.x));
    u_xlat63 = ((u_xlat63 * -2.0f) + 1.57079637050628662109f);
    u_xlat63 = select(0.0f, u_xlat63, u_xlatb65);
    u_xlat61 = ((u_xlat61 * u_xlat62) + u_xlat63);
    u_xlatb62 = (u_xlat5.z < -(u_xlat5.z));
    u_xlat62 = select(0.0f, -3.14159274101257324219f, u_xlatb62);
    u_xlat61 = (u_xlat61 + u_xlat62);
    u_xlat62 = min(u_xlat5.z, u_xlat5.x);
    u_xlat63 = max(u_xlat5.z, u_xlat5.x);
    u_xlatb62 = (u_xlat62 < -(u_xlat62));
    u_xlatb63 = (u_xlat63 >= -(u_xlat63));
    u_xlatb62 = (u_xlatb62 & u_xlatb63);
    if (u_xlatb62) {
      x_3013 = -(u_xlat61);
    } else {
      x_3013 = u_xlat61;
    }
    u_xlat61 = x_3013;
    u_xlat6.x = ((u_xlat61 * 0.15915493667125701904f) + 0.5f);
    u_xlat6.y = 0.5f;
    let x_3038 = textureSampleLevel(x_DesertHorizonRing, sampler_DesertHorizonRing, u_xlat6.xy, 0.0f).xyz;
    u_xlat5 = vec4f(x_3038.x, u_xlat5.y, x_3038.yz);
    u_xlat61 = ((-(u_xlat4.w) * u_xlat41.x) + 1.0f);
    u_xlat61 = sqrt(u_xlat61);
    u_xlat62 = ((u_xlat41.x * -0.00065552548039704561f) + 0.07426100224256515503f);
    u_xlat62 = ((u_xlat62 * u_xlat5.y) + -0.21211439371109008789f);
    u_xlat62 = ((u_xlat62 * u_xlat5.y) + 1.57072877883911132812f);
    u_xlat61 = ((-(u_xlat62) * u_xlat61) + 1.57079637050628662109f);
    u_xlat6 = vec4f(((vec2f(u_xlat61) * vec2f(57.295780181884765625f, -9.18448162078857421875f))).xy, u_xlat6.zw);
    u_xlat7 = vec4f(((u_xlat5.xzw * x_34.x_DesertSkyGrade0.xyz)).xyz, u_xlat7.w);
    u_xlat62 = dot(u_xlat7.xyz, vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
    u_xlat5 = vec4f((((u_xlat5.xzw * x_34.x_DesertSkyGrade0.xyz) + -(vec3f(u_xlat62)))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((x_34.x_DesertSkyGrade0.www * u_xlat5.xyz) + vec3f(u_xlat62))).xyz, u_xlat5.w);
    u_xlat5 = vec4f(max(u_xlat5.xyz, vec3f()).xyz, u_xlat5.w);
    u_xlat62 = max(x_34.x_DesertSkyGrade1.w, 0.10000000149011611938f);
    u_xlat62 = (u_xlat6.x / u_xlat62);
    u_xlat62 = (-(u_xlat62) + 1.0f);
    u_xlat62 = max(u_xlat62, 0.0f);
    u_xlat62 = (u_xlat62 * u_xlat62);
    let x_3146 = (x_34.x_DesertSkyGrade1.xyz + x_3145);
    u_xlat6 = vec4f(x_3146.x, u_xlat6.y, x_3146.yz);
    let x_3155 = ((vec3f(u_xlat62) * u_xlat6.xzw) + x_3154);
    u_xlat6 = vec4f(x_3155.x, u_xlat6.y, x_3155.yz);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6.xzw)).xyz, u_xlat5.w);
    u_xlat61 = ((u_xlat61 * 57.295780181884765625f) + -(x_34.x_DesertSkyGrade2.w));
    u_xlat62 = (-(x_34.x_DesertSkyGrade2.w) + 90.0f);
    u_xlat62 = max(u_xlat62, 1.0f);
    u_xlat61 = (u_xlat61 / u_xlat62);
    u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
    let x_3187 = (x_34.x_DesertSkyGrade2.xyz + x_3145);
    u_xlat6 = vec4f(x_3187.x, u_xlat6.y, x_3187.yz);
    let x_3195 = ((vec3f(u_xlat61) * u_xlat6.xzw) + x_3154);
    u_xlat6 = vec4f(x_3195.x, u_xlat6.y, x_3195.yz);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6.xzw)).xyz, u_xlat5.w);
    u_xlat41 = ((u_xlat4.xz * u_xlat41.xx) + x_3211);
    u_xlat62 = dot(u_xlat41, u_xlat41);
    u_xlat62 = inverseSqrt(u_xlat62);
    u_xlat41 = (u_xlat41 * vec2f(u_xlat62));
    let x_3225 = (x_34.x_DesertSunDir.xz + x_3211);
    u_xlat6 = vec4f(x_3225.x, u_xlat6.y, x_3225.y, u_xlat6.w);
    u_xlat62 = dot(u_xlat6.xz, u_xlat6.xz);
    u_xlat62 = inverseSqrt(u_xlat62);
    let x_3239 = (vec2f(u_xlat62) * u_xlat6.xz);
    u_xlat6 = vec4f(x_3239.x, u_xlat6.y, x_3239.y, u_xlat6.w);
    u_xlat41.x = dot(u_xlat41, u_xlat6.xz);
    u_xlat41.x = ((u_xlat41.x * 0.5f) + 0.5f);
    u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
    u_xlat61 = max(x_34.x_DesertSkyGrade3.w, 1.0f);
    u_xlat41.x = log2(u_xlat41.x);
    u_xlat41.x = (u_xlat41.x * u_xlat61);
    u_xlat41.x = exp2(u_xlat41.x);
    u_xlat61 = exp2(u_xlat6.y);
    u_xlat41.x = (u_xlat61 * u_xlat41.x);
    u_xlat61 = (u_xlat41.x * 1.5f);
    u_xlat61 = min(u_xlat61, 1.0f);
    u_xlat6 = vec4f((((vec3f(u_xlat61) * vec3f(0.0f, -0.19999998807907104492f, -0.33999997377395629883f)) + x_3154)).xyz, u_xlat6.w);
    u_xlat7 = vec4f(((u_xlat41.xxx * x_34.x_DesertSkyGrade3.xyz)).xyz, u_xlat7.w);
    u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat6.xyz) + u_xlat7.xyz)).xyz, u_xlat5.w);
    u_xlat20.x = (u_xlat20.x * x_34.x_DesertHaze2.w);
    u_xlat20.x = (u_xlat20.x * 0.44999998807907104492f);
    u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
    u_xlat5 = vec4f(((u_xlat5.xyz + -(x_34.x_DesertHazeTint.xyz))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((u_xlat20.xxx * u_xlat5.xyz) + x_34.x_DesertHazeTint.xyz)).xyz, u_xlat5.w);
    u_xlat20.x = dot(u_xlat4.xyz, x_34.x_DesertSunDir.xyz);
    u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
    u_xlat4 = vec4f(((x_34.x_DesertSunColor.xyz * x_34.x_DesertHaze2.yyy)).xyz, u_xlat4.w);
    u_xlat20.x = log2(u_xlat20.x);
    u_xlat20.x = (u_xlat20.x * x_34.x_DesertHaze2.z);
    u_xlat20.x = exp2(u_xlat20.x);
    u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat20.xxx) + u_xlat5.xyz)).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((-(u_xlat3.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
    u_xlat3 = vec4f((((u_xlat40.xxx * u_xlat4.xyz) + u_xlat3.xyz)).xyz, u_xlat3.w);
  }
  u_xlat0 = vec4f((((x_34.x_MainLightColor.xyz * u_xlat0.xxx) + u_xlat2.xyz)).xyz, u_xlat0.w);
  u_xlat60 = ((-(u_xlat60) * u_xlat1.x) + 1.0f);
  u_xlat0 = vec4f(((vec3f(u_xlat60) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * x_956)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * vs_COLOR0.www)).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((u_xlat3.xyz * u_xlat21.xxx) + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat21.x;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec2f, @location(3) vs_COLOR0_param : vec4f, @location(1) vs_TEXCOORD1_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(0) vs_TEXCOORD0_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/Desert/Materials/Shaders/Desert_WaterSheet.shader
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

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

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
  vs_TEXCOORD2 = in_TEXCOORD0;
  vs_COLOR0 = in_COLOR0;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec2f,
  @location(3)
  vs_COLOR0_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(3) in_TEXCOORD0_param : vec2f, @location(2) in_COLOR0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0);
}

//Assets/Levels/Desert/Materials/Shaders/Desert_WaterSheet.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Tint : vec4f,
  /* @offset(16) */
  x_Foam : vec4f,
  /* @offset(32) */
  x_Columns : f32,
  /* @offset(36) */
  x_Rows : f32,
  /* @offset(40) */
  x_Speed : f32,
  /* @offset(44) */
  x_Reflection : f32,
  /* @offset(48) */
  x_Sun : f32,
  /* @offset(64) */
  x_Alpha : vec4f,
  /* @offset(80) */
  x_Break : vec4f,
  /* @offset(96) */
  x_Aerate : vec4f,
}

struct PGlobals {
  /* @offset(0) */
  x_MainLightPosition : vec4f,
  /* @offset(16) */
  x_MainLightColor : vec4f,
  /* @offset(32) */
  x_Time : vec4f,
  /* @offset(48) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(64) */
  x_DesertSunDir : vec4f,
  /* @offset(80) */
  x_DesertSunColor : vec4f,
  /* @offset(96) */
  x_DesertHaze : vec4f,
  /* @offset(112) */
  x_DesertHaze2 : vec4f,
  /* @offset(128) */
  x_DesertHazeTint : vec4f,
  /* @offset(144) */
  x_DesertSkyGrade0 : vec4f,
  /* @offset(160) */
  x_DesertSkyGrade1 : vec4f,
  /* @offset(176) */
  x_DesertSkyGrade2 : vec4f,
  /* @offset(192) */
  x_DesertSkyGrade3 : vec4f,
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
  unity_SpecCube0_HDR : vec4f,
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

var<private> vs_TEXCOORD2 : vec2f;

@group(1) @binding(3) var<uniform> x_16 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(2) var<uniform> x_985 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1260 : UnityPerDraw;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(3) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var x_DesertHorizonRing : texture_2d<f32>;

@group(0) @binding(5) var sampler_DesertHorizonRing : sampler;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_90 = vec2f(2.0f);

const x_93 = vec2f(3.0f);

const x_104 = vec2f(0.10310000181198120117f);

const x_117 = vec3f(33.3300018310546875f);

const x_151 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_154 = vec4f(0.10310000181198120117f);

const x_160 = vec4f(33.3300018310546875f);

const x_314 = vec2f(2.29999995231628417969f, 5.09999990463256835938f);

const x_956 = vec3f(0.34999999403953552246f);

const x_2051 = vec3f(-1.0f);

const x_2060 = vec3f(1.0f);

const x_2117 = vec2f(0.00000999999974737875f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat18 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat28 : f32;
  var u_xlat10 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat20 : vec2f;
  var u_xlat11 : f32;
  var u_xlat27 : f32;
  var u_xlat19 : vec2f;
  var x_908 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec3f;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3f;
  var u_xlatb9 : bool;
  var u_xlatb28 : bool;
  var x_1208 : f32;
  var u_xlat30 : f32;
  var u_xlat29 : f32;
  var u_xlatb18 : bool;
  var x_1749 : f32;
  var u_xlatb32 : bool;
  var u_xlatb29 : bool;
  var u_xlatb30 : bool;
  var x_1920 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((vs_TEXCOORD2 * vec2f(x_16.x_Columns, x_16.x_Rows))).xy, u_xlat0.zw);
  u_xlat9.x = ((-(x_34.x_Time.y) * x_16.x_Speed) + u_xlat0.y);
  u_xlat1 = vec4f(((u_xlat9.xxx * vec3f(0.34999999403953552246f, 0.80000001192092895508f, 1.89999997615814208984f))).xyz, u_xlat1.w);
  u_xlat2.x = floor(u_xlat0.x);
  u_xlat2.y = floor(u_xlat1.x);
  u_xlat3.x = fract(u_xlat0.x);
  let x_76 = fract(u_xlat1.xy);
  u_xlat3 = vec4f(u_xlat3.x, x_76.x, u_xlat3.z, x_76.y);
  u_xlat18 = (u_xlat3.xy * u_xlat3.xy);
  u_xlat1 = vec4f((((-(u_xlat3.xy) * x_90) + x_93)).xy, u_xlat1.zw);
  u_xlat18 = (u_xlat18 * u_xlat1.xy);
  u_xlat1 = vec4f(((u_xlat2.xy * x_104)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(fract(u_xlat1.xy).xy, u_xlat1.zw);
  u_xlat4 = vec4f(((u_xlat1.yxx + x_117)).xyz, u_xlat4.w);
  u_xlat28 = dot(u_xlat1.xyx, u_xlat4.xyz);
  u_xlat1 = vec4f(((vec2f(u_xlat28) + u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat10.x = (u_xlat1.y + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat10.x);
  u_xlat4 = (u_xlat2.yxyx + x_151);
  u_xlat4 = (u_xlat4 * x_154);
  u_xlat4 = fract(u_xlat4);
  u_xlat5 = (u_xlat4 + x_160);
  u_xlat10.x = dot(u_xlat4.yxy, u_xlat5.xyy);
  let x_172 = (u_xlat10.xx + u_xlat4.yx);
  u_xlat10 = vec3f(x_172.x, u_xlat10.y, x_172.y);
  u_xlat28 = (u_xlat10.z + u_xlat10.x);
  u_xlat1.y = (u_xlat10.x * u_xlat28);
  u_xlat28 = dot(u_xlat4.wzw, u_xlat5.zww);
  u_xlat20 = (vec2f(u_xlat28) + u_xlat4.wz);
  u_xlat28 = (u_xlat20.y + u_xlat20.x);
  u_xlat1.w = (u_xlat20.x * u_xlat28);
  let x_210 = fract(u_xlat1.xyw);
  u_xlat1 = vec4f(x_210.xy, u_xlat1.z, x_210.z);
  u_xlat2 = vec4f(((u_xlat2.xy + vec2f(1.0f))).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_104)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(fract(u_xlat2.xy).xy, u_xlat2.zw);
  u_xlat4 = vec4f(((u_xlat2.yxx + x_117)).xyz, u_xlat4.w);
  u_xlat20.x = dot(u_xlat2.xyx, u_xlat4.xyz);
  u_xlat2 = vec4f(((u_xlat20.xx + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat11 = (u_xlat2.y + u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat11);
  u_xlat2.x = fract(u_xlat2.x);
  u_xlat10.x = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat1.x = ((u_xlat18.x * u_xlat10.x) + u_xlat1.x);
  u_xlat10.x = (-(u_xlat1.w) + u_xlat2.x);
  u_xlat18.x = ((u_xlat18.x * u_xlat10.x) + u_xlat1.w);
  u_xlat18.x = (-(u_xlat1.x) + u_xlat18.x);
  u_xlat18.x = ((u_xlat18.y * u_xlat18.x) + u_xlat1.x);
  u_xlat1 = vec4f(((u_xlat0.xx * x_314)).xy, u_xlat1.zw);
  let x_324 = ((u_xlat0.xx * x_314) + vec2f(17.0f, 5.0f));
  u_xlat0 = vec4f(x_324.x, u_xlat0.yz, x_324.y);
  u_xlat2 = vec4f((((u_xlat9.xx * vec2f(0.80000001192092895508f, 1.89999997615814208984f)) + vec2f(3.0f, -7.0f))).xy, u_xlat2.zw);
  let x_338 = floor(u_xlat0.xw);
  u_xlat4 = vec4f(x_338.x, u_xlat4.y, x_338.y, u_xlat4.w);
  let x_343 = floor(u_xlat2.xy);
  u_xlat4 = vec4f(u_xlat4.x, x_343.x, u_xlat4.z, x_343.y);
  u_xlat3.z = fract(u_xlat1.x);
  u_xlat0 = vec4f(((u_xlat3.zw * u_xlat3.zw)).xy, u_xlat0.zw);
  let x_361 = ((-(u_xlat3.zw) * x_90) + x_93);
  u_xlat1 = vec4f(x_361.x, u_xlat1.yz, x_361.y);
  u_xlat0 = vec4f(((u_xlat0.xy * u_xlat1.xw)).xy, u_xlat0.zw);
  u_xlat2 = (u_xlat4 * x_154);
  u_xlat2 = fract(u_xlat2);
  u_xlat3 = vec4f(((u_xlat2.yxx + x_117)).xyz, u_xlat3.w);
  u_xlat27 = dot(u_xlat2.xyx, u_xlat3.xyz);
  let x_390 = (vec2f(u_xlat27) + u_xlat2.xy);
  u_xlat1 = vec4f(x_390.x, u_xlat1.yz, x_390.y);
  u_xlat27 = (u_xlat1.w + u_xlat1.x);
  u_xlat27 = (u_xlat1.x * u_xlat27);
  u_xlat27 = fract(u_xlat27);
  u_xlat3 = (u_xlat4.yxyx + x_151);
  u_xlat3 = (u_xlat3 * x_154);
  u_xlat3 = fract(u_xlat3);
  u_xlat5 = (u_xlat3 + x_160);
  u_xlat1.x = dot(u_xlat3.yxy, u_xlat5.xyy);
  let x_423 = (u_xlat1.xx + u_xlat3.yx);
  u_xlat1 = vec4f(x_423.x, u_xlat1.yz, x_423.y);
  u_xlat28 = (u_xlat1.w + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat28);
  u_xlat28 = dot(u_xlat3.wzw, u_xlat5.zww);
  u_xlat2 = vec4f(((vec2f(u_xlat28) + u_xlat3.wz)).xy, u_xlat2.zw);
  u_xlat28 = (u_xlat2.y + u_xlat2.x);
  u_xlat1.w = (u_xlat2.x * u_xlat28);
  let x_460 = fract(u_xlat1.xw);
  u_xlat1 = vec4f(x_460.x, u_xlat1.yz, x_460.y);
  u_xlat3 = (u_xlat4 + vec4f(1.0f));
  u_xlat3 = (u_xlat3 * x_154);
  u_xlat3 = fract(u_xlat3);
  u_xlat5 = vec4f(((u_xlat3.yxx + x_117)).xyz, u_xlat5.w);
  u_xlat2.x = dot(u_xlat3.xyx, u_xlat5.xyz);
  u_xlat2 = vec4f(((u_xlat2.xx + u_xlat3.xy)).xy, u_xlat2.zw);
  u_xlat11 = (u_xlat2.y + u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat11);
  u_xlat2.x = fract(u_xlat2.x);
  u_xlat1.x = (-(u_xlat27) + u_xlat1.x);
  u_xlat27 = ((u_xlat0.x * u_xlat1.x) + u_xlat27);
  u_xlat1.x = (-(u_xlat1.w) + u_xlat2.x);
  u_xlat0.x = ((u_xlat0.x * u_xlat1.x) + u_xlat1.w);
  u_xlat0.x = (-(u_xlat27) + u_xlat0.x);
  u_xlat0.x = ((u_xlat0.y * u_xlat0.x) + u_xlat27);
  u_xlat1.x = fract(u_xlat1.y);
  u_xlat1.y = fract(u_xlat1.z);
  let x_557 = (u_xlat1.xy * u_xlat1.xy);
  u_xlat9 = vec3f(x_557.x, u_xlat9.y, x_557.y);
  u_xlat1 = vec4f((((-(u_xlat1.xy) * x_90) + x_93)).xy, u_xlat1.zw);
  let x_571 = (u_xlat9.xz * u_xlat1.xy);
  u_xlat9 = vec3f(x_571.x, u_xlat9.y, x_571.y);
  u_xlat1 = vec4f(((u_xlat2.wzz + x_117)).xyz, u_xlat1.w);
  u_xlat1.x = dot(u_xlat2.zwz, u_xlat1.xyz);
  u_xlat1 = vec4f(((u_xlat1.xx + u_xlat2.zw)).xy, u_xlat1.zw);
  u_xlat10.x = (u_xlat1.y + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat10.x);
  u_xlat2 = (u_xlat4.wzwz + x_151);
  u_xlat2 = (u_xlat2 * x_154);
  u_xlat2 = fract(u_xlat2);
  u_xlat4 = (u_xlat2 + x_160);
  u_xlat10.x = dot(u_xlat2.yxy, u_xlat4.xyy);
  u_xlat10 = vec3f(((u_xlat10.xx + u_xlat2.yx)).xy, u_xlat10.z);
  u_xlat19.x = (u_xlat10.y + u_xlat10.x);
  u_xlat1.y = (u_xlat10.x * u_xlat19.x);
  u_xlat19.x = dot(u_xlat2.wzw, u_xlat4.zww);
  u_xlat19 = (u_xlat19.xx + u_xlat2.wz);
  u_xlat28 = (u_xlat19.y + u_xlat19.x);
  u_xlat1.z = (u_xlat19.x * u_xlat28);
  u_xlat2 = vec4f(((u_xlat3.wzz + x_117)).xyz, u_xlat2.w);
  u_xlat28 = dot(u_xlat3.zwz, u_xlat2.xyz);
  u_xlat2 = vec4f(((vec2f(u_xlat28) + u_xlat3.zw)).xy, u_xlat2.zw);
  u_xlat28 = (u_xlat2.y + u_xlat2.x);
  u_xlat1.w = (u_xlat2.x * u_xlat28);
  u_xlat1 = fract(u_xlat1);
  u_xlat10.x = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat1.x = ((u_xlat9.x * u_xlat10.x) + u_xlat1.x);
  u_xlat10.x = (-(u_xlat1.z) + u_xlat1.w);
  u_xlat9.x = ((u_xlat9.x * u_xlat10.x) + u_xlat1.z);
  u_xlat9.x = (-(u_xlat1.x) + u_xlat9.x);
  u_xlat0.y = ((u_xlat9.z * u_xlat9.x) + u_xlat1.x);
  u_xlat27 = (u_xlat0.x * 0.30000001192092895508f);
  u_xlat18.x = ((u_xlat18.x * 0.55000001192092895508f) + u_xlat27);
  u_xlat18.x = ((u_xlat0.y * 0.15000000596046447754f) + u_xlat18.x);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat27 = (-(x_16.x_Break.x) + x_16.x_Break.y);
  u_xlat1.x = (vs_TEXCOORD2.y + -(x_16.x_Break.x));
  u_xlat27 = (1.0f / u_xlat27);
  u_xlat27 = (u_xlat27 * u_xlat1.x);
  u_xlat27 = clamp(u_xlat27, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat27 * -2.0f) + 3.0f);
  u_xlat27 = (u_xlat27 * u_xlat27);
  u_xlat27 = (u_xlat27 * u_xlat1.x);
  u_xlat18.x = (u_xlat18.x + -0.37999999523162841797f);
  u_xlat18.x = (u_xlat18.x * 2.70270276069641113281f);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat18.x * -2.0f) + 3.0f);
  u_xlat18.x = (u_xlat18.x * u_xlat18.x);
  u_xlat18.x = (u_xlat18.x * u_xlat1.x);
  u_xlat1.x = ((u_xlat0.x * 0.30000001192092895508f) + 0.85000002384185791016f);
  u_xlat10.x = (u_xlat1.x * x_16.x_Alpha.x);
  u_xlat19.x = (-(x_16.x_Alpha.z) + x_16.x_Alpha.y);
  u_xlat19.x = ((u_xlat18.x * u_xlat19.x) + x_16.x_Alpha.z);
  u_xlat1.x = ((-(x_16.x_Alpha.x) * u_xlat1.x) + u_xlat19.x);
  u_xlat27 = ((u_xlat27 * u_xlat1.x) + u_xlat10.x);
  u_xlat1.x = (vs_COLOR0.w * x_16.x_Alpha.w);
  u_xlat10.x = (u_xlat27 * u_xlat1.x);
  u_xlat19.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat19.x = inverseSqrt(u_xlat19.x);
  u_xlat2 = vec4f(((u_xlat19.xxx * vs_TEXCOORD1)).xyz, u_xlat2.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_908 = u_xlat2.xyz;
  } else {
    x_908 = -(u_xlat2.xyz);
  }
  u_xlat2 = vec4f(x_908.xyz, u_xlat2.w);
  u_xlat3 = vec4f(((-(vs_TEXCOORD0) + x_34.x_WorldSpaceCameraPos)).xyz, u_xlat3.w);
  u_xlat19.x = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat19.x = inverseSqrt(u_xlat19.x);
  u_xlat4 = vec4f(((u_xlat19.xxx * u_xlat3.xyz)).xyz, u_xlat4.w);
  let x_950 = (u_xlat0.xy + vec2f(-0.5f));
  u_xlat5 = vec4f(x_950.x, u_xlat5.y, x_950.y, u_xlat5.w);
  u_xlat5.y = 0.0f;
  u_xlat2 = vec4f((((u_xlat5.xyz * x_956) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat2 = vec4f(((u_xlat0.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_985.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_985.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_985.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat7.w);
  u_xlat8 = (vs_TEXCOORD0 + -(x_985.x_CascadeShadowSplitSpheres3.xyz));
  u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat5.w = dot(u_xlat8, u_xlat8);
  u_xlatb5 = (u_xlat5 < x_985.x_CascadeShadowSplitSphereRadii);
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb5.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb5.y);
  u_xlat6.z = select(0.0f, 1.0f, u_xlatb5.z);
  u_xlat6.w = select(0.0f, 1.0f, u_xlatb5.w);
  u_xlat5.x = select(-0.0f, -1.0f, u_xlatb5.x);
  u_xlat5.y = select(-0.0f, -1.0f, u_xlatb5.y);
  u_xlat5.z = select(-0.0f, -1.0f, u_xlatb5.z);
  u_xlat5 = vec4f(((u_xlat5.xyz + u_xlat6.yzw)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(u_xlat6.x, max(u_xlat5.xyz, vec3f()).xyz);
  u_xlat0.x = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat0.x = (-(u_xlat0.x) + 4.0f);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlati0 = (bitcast<i32>(u_xlatu0) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_985.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati0 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_985.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati0].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_985.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati0 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_985.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati0 + 3i)].xyz)).xyz, u_xlat5.w);
  let x_1162 = u_xlat5.xy;
  txVec0 = vec3f(x_1162.x, x_1162.y, u_xlat5.z);
  u_xlat0.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat9.x = (-(x_985.x_MainLightShadowParams.x) + 1.0f);
  u_xlat0.x = ((u_xlat0.x * x_985.x_MainLightShadowParams.x) + u_xlat9.x);
  u_xlatb9 = (0.0f >= u_xlat5.z);
  u_xlatb28 = (u_xlat5.z >= 1.0f);
  u_xlatb9 = (u_xlatb9 | u_xlatb28);
  if (u_xlatb9) {
    x_1208 = 1.0f;
  } else {
    x_1208 = u_xlat0.x;
  }
  u_xlat0.x = x_1208;
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_34.x_WorldSpaceCameraPos))).xyz, u_xlat5.w);
  u_xlat9.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat28 = ((u_xlat9.x * x_985.x_MainLightShadowParams.z) + x_985.x_MainLightShadowParams.w);
  u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
  u_xlat30 = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = ((u_xlat28 * u_xlat30) + u_xlat0.x);
  u_xlat2.w = 1.0f;
  u_xlat6.x = dot(x_1260.unity_SHAr, u_xlat2);
  u_xlat6.y = dot(x_1260.unity_SHAg, u_xlat2);
  u_xlat6.z = dot(x_1260.unity_SHAb, u_xlat2);
  u_xlat7 = (u_xlat2.yzzx * u_xlat2.xyzz);
  u_xlat8.x = dot(x_1260.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_1260.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_1260.unity_SHBb, u_xlat7);
  u_xlat28 = (u_xlat2.y * u_xlat2.y);
  u_xlat28 = ((u_xlat2.x * u_xlat2.x) + -(u_xlat28));
  u_xlat7 = vec4f((((x_1260.unity_SHC.xyz * vec3f(u_xlat28)) + u_xlat8)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  u_xlat28 = dot(u_xlat2.xyz, x_34.x_MainLightPosition.xyz);
  u_xlat28 = (u_xlat28 + 0.5f);
  u_xlat28 = (u_xlat28 * 0.6666666865348815918f);
  u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
  u_xlat29 = (-(x_16.x_Aerate.x) + x_16.x_Aerate.y);
  u_xlat30 = (vs_TEXCOORD2.y + -(x_16.x_Aerate.x));
  u_xlat29 = (1.0f / u_xlat29);
  u_xlat29 = (u_xlat29 * u_xlat30);
  u_xlat29 = clamp(u_xlat29, 0.0f, 1.0f);
  u_xlat30 = ((u_xlat29 * -2.0f) + 3.0f);
  u_xlat29 = (u_xlat29 * u_xlat29);
  u_xlat29 = (u_xlat29 * u_xlat30);
  u_xlat29 = (u_xlat29 * x_16.x_Aerate.z);
  u_xlat18.x = ((u_xlat18.x * 0.60000002384185791016f) + 0.60000002384185791016f);
  u_xlat18.x = (u_xlat18.x * u_xlat29);
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat7 = vec4f(((-(x_16.x_Tint.xyz) + x_16.x_Foam.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f((((u_xlat18.xxx * u_xlat7.xyz) + x_16.x_Tint.xyz)).xyz, u_xlat7.w);
  u_xlat8 = (vec3f(u_xlat28) * x_34.x_MainLightColor.xyz);
  u_xlat8 = (u_xlat0.xxx * u_xlat8);
  u_xlat6 = vec4f((((u_xlat8 * vec3f(0.80000001192092895508f)) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat18.x = dot(u_xlat2.xyz, u_xlat4.xyz);
  u_xlat18.x = min(abs(u_xlat18.x), 1.0f);
  u_xlat18.x = (-(u_xlat18.x) + 1.0f);
  u_xlat28 = (u_xlat18.x * u_xlat18.x);
  u_xlat28 = (u_xlat28 * u_xlat28);
  u_xlat18.x = (u_xlat18.x * u_xlat28);
  u_xlat18.x = ((u_xlat18.x * 0.95999997854232788086f) + 0.03999999910593032837f);
  u_xlat28 = dot(-(u_xlat4.xyz), u_xlat2.xyz);
  u_xlat28 = (u_xlat28 + u_xlat28);
  u_xlat4 = vec4f((((u_xlat2.xyz * -(vec3f(u_xlat28))) + -(u_xlat4.xyz))).xyz, u_xlat4.w);
  u_xlat4 = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, u_xlat4.xyz, 0.97800004482269287109f);
  u_xlat28 = (u_xlat4.w + -1.0f);
  u_xlat28 = ((x_1260.unity_SpecCube0_HDR.w * u_xlat28) + 1.0f);
  u_xlat28 = max(u_xlat28, 0.0f);
  u_xlat28 = log2(u_xlat28);
  u_xlat28 = (u_xlat28 * x_1260.unity_SpecCube0_HDR.y);
  u_xlat28 = exp2(u_xlat28);
  u_xlat28 = (u_xlat28 * x_1260.unity_SpecCube0_HDR.x);
  u_xlat4 = vec4f(((u_xlat4.xyz * vec3f(u_xlat28))).xyz, u_xlat4.w);
  let x_1541 = vec3f(x_16.x_Reflection, x_16.x_Reflection, x_16.x_Reflection);
  u_xlat4 = vec4f(((u_xlat4.xyz * vec3f(x_1541.x, x_1541.y, x_1541.z))).xyz, u_xlat4.w);
  u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat19.xxx) + x_34.x_MainLightPosition.xyz)).xyz, u_xlat3.w);
  u_xlat19.x = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat19.x = inverseSqrt(u_xlat19.x);
  u_xlat3 = vec4f(((u_xlat19.xxx * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat19.x = dot(u_xlat2.xyz, u_xlat3.xyz);
  u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
  u_xlat19.x = log2(u_xlat19.x);
  u_xlat19.x = (u_xlat19.x * 220.0f);
  u_xlat19.x = exp2(u_xlat19.x);
  u_xlat19.x = (u_xlat19.x * x_16.x_Sun);
  u_xlat0.x = (u_xlat0.x * u_xlat19.x);
  u_xlat2 = vec4f(((u_xlat18.xxx * u_xlat4.xyz)).xyz, u_xlat2.w);
  u_xlat3 = vec4f((((u_xlat7.xyz * u_xlat6.xyz) + u_xlat2.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((x_34.x_MainLightColor.xyz * u_xlat0.xxx) + u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlatb18 = (x_34.x_DesertSunDir.w >= 0.5f);
  if (u_xlatb18) {
    u_xlat9.x = sqrt(u_xlat9.x);
    u_xlat18.x = max(u_xlat9.x, 0.00009999999747378752f);
    u_xlat4 = vec4f(((u_xlat5.xyz / u_xlat18.xxx)).xyz, u_xlat4.w);
    u_xlat9.x = (u_xlat9.x + -(x_34.x_DesertHaze.z));
    u_xlat9.x = max(u_xlat9.x, 0.0f);
    u_xlat19.x = (x_34.x_WorldSpaceCameraPos.y + -(x_34.x_DesertHaze2.x));
    u_xlat18.x = (u_xlat9.x / u_xlat18.x);
    u_xlat18.x = (u_xlat18.x * u_xlat5.y);
    u_xlat19.x = max(u_xlat19.x, -20.0f);
    u_xlat19.x = (u_xlat19.x * -(x_34.x_DesertHaze.y));
    u_xlat19.x = (u_xlat19.x * 1.44269502162933349609f);
    u_xlat19.x = exp2(u_xlat19.x);
    u_xlatb28 = (0.00999999977648258209f < abs(u_xlat18.x));
    u_xlat29 = (u_xlat18.x * -(x_34.x_DesertHaze.y));
    u_xlat29 = (u_xlat29 * 1.44269502162933349609f);
    u_xlat29 = exp2(u_xlat29);
    u_xlat29 = (-(u_xlat29) + 1.0f);
    u_xlat29 = (u_xlat19.x * u_xlat29);
    u_xlat18.x = (u_xlat18.x * x_34.x_DesertHaze.y);
    u_xlat18.x = (u_xlat29 / u_xlat18.x);
    if (u_xlatb28) {
      x_1749 = u_xlat18.x;
    } else {
      x_1749 = u_xlat19.x;
    }
    u_xlat18.x = x_1749;
    u_xlat19.x = (u_xlat9.x * x_34.x_DesertHaze.x);
    u_xlat9.x = (u_xlat9.x * x_34.x_DesertHazeTint.w);
    u_xlat9.x = ((u_xlat19.x * u_xlat18.x) + u_xlat9.x);
    u_xlat18.x = (u_xlat9.x * -1.44269502162933349609f);
    u_xlat18.x = exp2(u_xlat18.x);
    u_xlat18.x = (-(u_xlat18.x) + 1.0f);
    u_xlat18.x = min(u_xlat18.x, x_34.x_DesertHaze.w);
    u_xlat4.w = 0.03500000014901161194f;
    u_xlat19.x = dot(u_xlat4.xzw, u_xlat4.xzw);
    u_xlat19.x = inverseSqrt(u_xlat19.x);
    u_xlat5 = vec4f(((u_xlat19.xxx * u_xlat4.xwz)).xyz, u_xlat5.w);
    u_xlat28 = min(abs(u_xlat5.z), abs(u_xlat5.x));
    u_xlat29 = max(abs(u_xlat5.z), abs(u_xlat5.x));
    u_xlat29 = (1.0f / u_xlat29);
    u_xlat28 = (u_xlat28 * u_xlat29);
    u_xlat29 = (u_xlat28 * u_xlat28);
    u_xlat30 = ((u_xlat29 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat30 = ((u_xlat29 * u_xlat30) + 0.18014100193977355957f);
    u_xlat30 = ((u_xlat29 * u_xlat30) + -0.33029949665069580078f);
    u_xlat29 = ((u_xlat29 * u_xlat30) + 0.99986600875854492188f);
    u_xlat30 = (u_xlat28 * u_xlat29);
    u_xlatb32 = (abs(u_xlat5.z) < abs(u_xlat5.x));
    u_xlat30 = ((u_xlat30 * -2.0f) + 1.57079637050628662109f);
    u_xlat30 = select(0.0f, u_xlat30, u_xlatb32);
    u_xlat28 = ((u_xlat28 * u_xlat29) + u_xlat30);
    u_xlatb29 = (u_xlat5.z < -(u_xlat5.z));
    u_xlat29 = select(0.0f, -3.14159274101257324219f, u_xlatb29);
    u_xlat28 = (u_xlat28 + u_xlat29);
    u_xlat29 = min(u_xlat5.z, u_xlat5.x);
    u_xlat30 = max(u_xlat5.z, u_xlat5.x);
    u_xlatb29 = (u_xlat29 < -(u_xlat29));
    u_xlatb30 = (u_xlat30 >= -(u_xlat30));
    u_xlatb29 = (u_xlatb29 & u_xlatb30);
    if (u_xlatb29) {
      x_1920 = -(u_xlat28);
    } else {
      x_1920 = u_xlat28;
    }
    u_xlat28 = x_1920;
    u_xlat6.x = ((u_xlat28 * 0.15915493667125701904f) + 0.5f);
    u_xlat6.y = 0.5f;
    let x_1945 = textureSampleLevel(x_DesertHorizonRing, sampler_DesertHorizonRing, u_xlat6.xy, 0.0f).xyz;
    u_xlat5 = vec4f(x_1945.x, u_xlat5.y, x_1945.yz);
    u_xlat28 = ((-(u_xlat4.w) * u_xlat19.x) + 1.0f);
    u_xlat28 = sqrt(u_xlat28);
    u_xlat29 = ((u_xlat19.x * -0.00065552548039704561f) + 0.07426100224256515503f);
    u_xlat29 = ((u_xlat29 * u_xlat5.y) + -0.21211439371109008789f);
    u_xlat29 = ((u_xlat29 * u_xlat5.y) + 1.57072877883911132812f);
    u_xlat28 = ((-(u_xlat29) * u_xlat28) + 1.57079637050628662109f);
    u_xlat6 = vec4f(((vec2f(u_xlat28) * vec2f(57.295780181884765625f, -9.18448162078857421875f))).xy, u_xlat6.zw);
    u_xlat7 = vec4f(((u_xlat5.xzw * x_34.x_DesertSkyGrade0.xyz)).xyz, u_xlat7.w);
    u_xlat29 = dot(u_xlat7.xyz, vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
    u_xlat5 = vec4f((((u_xlat5.xzw * x_34.x_DesertSkyGrade0.xyz) + -(vec3f(u_xlat29)))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((x_34.x_DesertSkyGrade0.www * u_xlat5.xyz) + vec3f(u_xlat29))).xyz, u_xlat5.w);
    u_xlat5 = vec4f(max(u_xlat5.xyz, vec3f()).xyz, u_xlat5.w);
    u_xlat29 = max(x_34.x_DesertSkyGrade1.w, 0.10000000149011611938f);
    u_xlat29 = (u_xlat6.x / u_xlat29);
    u_xlat29 = (-(u_xlat29) + 1.0f);
    u_xlat29 = max(u_xlat29, 0.0f);
    u_xlat29 = (u_xlat29 * u_xlat29);
    let x_2052 = (x_34.x_DesertSkyGrade1.xyz + x_2051);
    u_xlat6 = vec4f(x_2052.x, u_xlat6.y, x_2052.yz);
    let x_2061 = ((vec3f(u_xlat29) * u_xlat6.xzw) + x_2060);
    u_xlat6 = vec4f(x_2061.x, u_xlat6.y, x_2061.yz);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6.xzw)).xyz, u_xlat5.w);
    u_xlat28 = ((u_xlat28 * 57.295780181884765625f) + -(x_34.x_DesertSkyGrade2.w));
    u_xlat29 = (-(x_34.x_DesertSkyGrade2.w) + 90.0f);
    u_xlat29 = max(u_xlat29, 1.0f);
    u_xlat28 = (u_xlat28 / u_xlat29);
    u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
    let x_2093 = (x_34.x_DesertSkyGrade2.xyz + x_2051);
    u_xlat6 = vec4f(x_2093.x, u_xlat6.y, x_2093.yz);
    let x_2101 = ((vec3f(u_xlat28) * u_xlat6.xzw) + x_2060);
    u_xlat6 = vec4f(x_2101.x, u_xlat6.y, x_2101.yz);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6.xzw)).xyz, u_xlat5.w);
    u_xlat19 = ((u_xlat4.xz * u_xlat19.xx) + x_2117);
    u_xlat29 = dot(u_xlat19, u_xlat19);
    u_xlat29 = inverseSqrt(u_xlat29);
    u_xlat19 = (u_xlat19 * vec2f(u_xlat29));
    let x_2131 = (x_34.x_DesertSunDir.xz + x_2117);
    u_xlat6 = vec4f(x_2131.x, u_xlat6.y, x_2131.y, u_xlat6.w);
    u_xlat29 = dot(u_xlat6.xz, u_xlat6.xz);
    u_xlat29 = inverseSqrt(u_xlat29);
    let x_2145 = (vec2f(u_xlat29) * u_xlat6.xz);
    u_xlat6 = vec4f(x_2145.x, u_xlat6.y, x_2145.y, u_xlat6.w);
    u_xlat19.x = dot(u_xlat19, u_xlat6.xz);
    u_xlat19.x = ((u_xlat19.x * 0.5f) + 0.5f);
    u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
    u_xlat28 = max(x_34.x_DesertSkyGrade3.w, 1.0f);
    u_xlat19.x = log2(u_xlat19.x);
    u_xlat19.x = (u_xlat19.x * u_xlat28);
    u_xlat19.x = exp2(u_xlat19.x);
    u_xlat28 = exp2(u_xlat6.y);
    u_xlat19.x = (u_xlat28 * u_xlat19.x);
    u_xlat28 = (u_xlat19.x * 1.5f);
    u_xlat28 = min(u_xlat28, 1.0f);
    u_xlat6 = vec4f((((vec3f(u_xlat28) * vec3f(0.0f, -0.19999998807907104492f, -0.33999997377395629883f)) + x_2060)).xyz, u_xlat6.w);
    u_xlat7 = vec4f(((u_xlat19.xxx * x_34.x_DesertSkyGrade3.xyz)).xyz, u_xlat7.w);
    u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat6.xyz) + u_xlat7.xyz)).xyz, u_xlat5.w);
    u_xlat9.x = (u_xlat9.x * x_34.x_DesertHaze2.w);
    u_xlat9.x = (u_xlat9.x * 0.44999998807907104492f);
    u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
    u_xlat5 = vec4f(((u_xlat5.xyz + -(x_34.x_DesertHazeTint.xyz))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((u_xlat9.xxx * u_xlat5.xyz) + x_34.x_DesertHazeTint.xyz)).xyz, u_xlat5.w);
    u_xlat9.x = dot(u_xlat4.xyz, x_34.x_DesertSunDir.xyz);
    u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
    u_xlat4 = vec4f(((x_34.x_DesertSunColor.xyz * x_34.x_DesertHaze2.yyy)).xyz, u_xlat4.w);
    u_xlat9.x = log2(u_xlat9.x);
    u_xlat9.x = (u_xlat9.x * x_34.x_DesertHaze2.z);
    u_xlat9.x = exp2(u_xlat9.x);
    u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat9.xxx) + u_xlat5.xyz)).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((-(u_xlat3.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
    u_xlat3 = vec4f((((u_xlat18.xxx * u_xlat4.xyz) + u_xlat3.xyz)).xyz, u_xlat3.w);
  }
  u_xlat0 = vec4f((((x_34.x_MainLightColor.xyz * u_xlat0.xxx) + u_xlat2.xyz)).xyz, u_xlat0.w);
  u_xlat27 = ((-(u_xlat27) * u_xlat1.x) + 1.0f);
  u_xlat0 = vec4f(((vec3f(u_xlat27) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * x_956)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * vs_COLOR0.www)).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((u_xlat3.xyz * u_xlat10.xxx) + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat10.x;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec2f, @location(3) vs_COLOR0_param : vec4f, @location(1) vs_TEXCOORD1_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(0) vs_TEXCOORD0_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/Desert/Materials/Shaders/Desert_WaterSheet.shader
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

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

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
  vs_TEXCOORD2 = in_TEXCOORD0;
  vs_COLOR0 = in_COLOR0;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec2f,
  @location(3)
  vs_COLOR0_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(3) in_TEXCOORD0_param : vec2f, @location(2) in_COLOR0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0);
}

//Assets/Levels/Desert/Materials/Shaders/Desert_WaterSheet.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_Tint : vec4f,
  /* @offset(16) */
  x_Foam : vec4f,
  /* @offset(32) */
  x_Columns : f32,
  /* @offset(36) */
  x_Rows : f32,
  /* @offset(40) */
  x_Speed : f32,
  /* @offset(44) */
  x_Reflection : f32,
  /* @offset(48) */
  x_Sun : f32,
  /* @offset(64) */
  x_Alpha : vec4f,
  /* @offset(80) */
  x_Break : vec4f,
  /* @offset(96) */
  x_Aerate : vec4f,
}

struct PGlobals {
  /* @offset(0) */
  x_MainLightPosition : vec4f,
  /* @offset(16) */
  x_MainLightColor : vec4f,
  /* @offset(32) */
  x_Time : vec4f,
  /* @offset(48) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(64) */
  x_DesertSunDir : vec4f,
  /* @offset(80) */
  x_DesertSunColor : vec4f,
  /* @offset(96) */
  x_DesertHaze : vec4f,
  /* @offset(112) */
  x_DesertHaze2 : vec4f,
  /* @offset(128) */
  x_DesertHazeTint : vec4f,
  /* @offset(144) */
  x_DesertSkyGrade0 : vec4f,
  /* @offset(160) */
  x_DesertSkyGrade1 : vec4f,
  /* @offset(176) */
  x_DesertSkyGrade2 : vec4f,
  /* @offset(192) */
  x_DesertSkyGrade3 : vec4f,
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
  unity_SpecCube0_HDR : vec4f,
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

var<private> vs_TEXCOORD2 : vec2f;

@group(1) @binding(3) var<uniform> x_16 : UnityPerMaterial;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(2) var<uniform> x_985 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_2481 : UnityPerDraw;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(3) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var x_DesertHorizonRing : texture_2d<f32>;

@group(0) @binding(5) var sampler_DesertHorizonRing : sampler;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_90 = vec2f(2.0f);

const x_93 = vec2f(3.0f);

const x_104 = vec2f(0.10310000181198120117f);

const x_117 = vec3f(33.3300018310546875f);

const x_151 = vec4f(0.0f, 1.0f, 1.0f, 0.0f);

const x_154 = vec4f(0.10310000181198120117f);

const x_160 = vec4f(33.3300018310546875f);

const x_215 = vec2f(1.0f);

const x_314 = vec2f(2.29999995231628417969f, 5.09999990463256835938f);

const x_956 = vec3f(0.34999999403953552246f);

const x_1276 = vec2f(0.5f);

const x_1298 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1360 = vec2f(0.15999999642372131348f);

const x_1429 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1821 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1824 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1831 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1869 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_3276 = vec3f(-1.0f);

const x_3285 = vec3f(1.0f);

const x_3342 = vec2f(0.00000999999974737875f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat20 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat40 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat61 : f32;
  var u_xlat21 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat42 : vec2f;
  var u_xlat22 : f32;
  var u_xlat60 : f32;
  var u_xlat41 : vec2f;
  var x_908 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var u_xlatb0 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb20 : bool;
  var u_xlat46 : vec2f;
  var u_xlat48 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat63 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat27 : vec3f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat28 : vec2f;
  var u_xlat54 : vec2f;
  var u_xlat49 : vec2f;
  var u_xlat17 : vec4f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
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
  var u_xlatb61 : bool;
  var x_2430 : f32;
  var u_xlat62 : f32;
  var u_xlatb40 : bool;
  var x_2974 : f32;
  var u_xlatb65 : bool;
  var u_xlatb62 : bool;
  var u_xlatb63 : bool;
  var x_3145 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((vs_TEXCOORD2 * vec2f(x_16.x_Columns, x_16.x_Rows))).xy, u_xlat0.zw);
  u_xlat20.x = ((-(x_34.x_Time.y) * x_16.x_Speed) + u_xlat0.y);
  u_xlat1 = vec4f(((u_xlat20.xxx * vec3f(0.34999999403953552246f, 0.80000001192092895508f, 1.89999997615814208984f))).xyz, u_xlat1.w);
  u_xlat2.x = floor(u_xlat0.x);
  u_xlat2.y = floor(u_xlat1.x);
  u_xlat3.x = fract(u_xlat0.x);
  let x_76 = fract(u_xlat1.xy);
  u_xlat3 = vec4f(u_xlat3.x, x_76.x, u_xlat3.z, x_76.y);
  u_xlat40 = (u_xlat3.xy * u_xlat3.xy);
  u_xlat1 = vec4f((((-(u_xlat3.xy) * x_90) + x_93)).xy, u_xlat1.zw);
  u_xlat40 = (u_xlat40 * u_xlat1.xy);
  u_xlat1 = vec4f(((u_xlat2.xy * x_104)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(fract(u_xlat1.xy).xy, u_xlat1.zw);
  u_xlat4 = vec4f(((u_xlat1.yxx + x_117)).xyz, u_xlat4.w);
  u_xlat61 = dot(u_xlat1.xyx, u_xlat4.xyz);
  u_xlat1 = vec4f(((vec2f(u_xlat61) + u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat21.x = (u_xlat1.y + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat21.x);
  u_xlat4 = (u_xlat2.yxyx + x_151);
  u_xlat4 = (u_xlat4 * x_154);
  u_xlat4 = fract(u_xlat4);
  u_xlat5 = (u_xlat4 + x_160);
  u_xlat21.x = dot(u_xlat4.yxy, u_xlat5.xyy);
  let x_172 = (u_xlat21.xx + u_xlat4.yx);
  u_xlat21 = vec3f(x_172.x, u_xlat21.y, x_172.y);
  u_xlat61 = (u_xlat21.z + u_xlat21.x);
  u_xlat1.y = (u_xlat21.x * u_xlat61);
  u_xlat61 = dot(u_xlat4.wzw, u_xlat5.zww);
  u_xlat42 = (vec2f(u_xlat61) + u_xlat4.wz);
  u_xlat61 = (u_xlat42.y + u_xlat42.x);
  u_xlat1.w = (u_xlat42.x * u_xlat61);
  let x_210 = fract(u_xlat1.xyw);
  u_xlat1 = vec4f(x_210.xy, u_xlat1.z, x_210.z);
  u_xlat2 = vec4f(((u_xlat2.xy + x_215)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_104)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(fract(u_xlat2.xy).xy, u_xlat2.zw);
  u_xlat4 = vec4f(((u_xlat2.yxx + x_117)).xyz, u_xlat4.w);
  u_xlat42.x = dot(u_xlat2.xyx, u_xlat4.xyz);
  u_xlat2 = vec4f(((u_xlat42.xx + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat22 = (u_xlat2.y + u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat22);
  u_xlat2.x = fract(u_xlat2.x);
  u_xlat21.x = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat1.x = ((u_xlat40.x * u_xlat21.x) + u_xlat1.x);
  u_xlat21.x = (-(u_xlat1.w) + u_xlat2.x);
  u_xlat40.x = ((u_xlat40.x * u_xlat21.x) + u_xlat1.w);
  u_xlat40.x = (-(u_xlat1.x) + u_xlat40.x);
  u_xlat40.x = ((u_xlat40.y * u_xlat40.x) + u_xlat1.x);
  u_xlat1 = vec4f(((u_xlat0.xx * x_314)).xy, u_xlat1.zw);
  let x_324 = ((u_xlat0.xx * x_314) + vec2f(17.0f, 5.0f));
  u_xlat0 = vec4f(x_324.x, u_xlat0.yz, x_324.y);
  u_xlat2 = vec4f((((u_xlat20.xx * vec2f(0.80000001192092895508f, 1.89999997615814208984f)) + vec2f(3.0f, -7.0f))).xy, u_xlat2.zw);
  let x_338 = floor(u_xlat0.xw);
  u_xlat4 = vec4f(x_338.x, u_xlat4.y, x_338.y, u_xlat4.w);
  let x_343 = floor(u_xlat2.xy);
  u_xlat4 = vec4f(u_xlat4.x, x_343.x, u_xlat4.z, x_343.y);
  u_xlat3.z = fract(u_xlat1.x);
  u_xlat0 = vec4f(((u_xlat3.zw * u_xlat3.zw)).xy, u_xlat0.zw);
  let x_361 = ((-(u_xlat3.zw) * x_90) + x_93);
  u_xlat1 = vec4f(x_361.x, u_xlat1.yz, x_361.y);
  u_xlat0 = vec4f(((u_xlat0.xy * u_xlat1.xw)).xy, u_xlat0.zw);
  u_xlat2 = (u_xlat4 * x_154);
  u_xlat2 = fract(u_xlat2);
  u_xlat3 = vec4f(((u_xlat2.yxx + x_117)).xyz, u_xlat3.w);
  u_xlat60 = dot(u_xlat2.xyx, u_xlat3.xyz);
  let x_390 = (vec2f(u_xlat60) + u_xlat2.xy);
  u_xlat1 = vec4f(x_390.x, u_xlat1.yz, x_390.y);
  u_xlat60 = (u_xlat1.w + u_xlat1.x);
  u_xlat60 = (u_xlat1.x * u_xlat60);
  u_xlat60 = fract(u_xlat60);
  u_xlat3 = (u_xlat4.yxyx + x_151);
  u_xlat3 = (u_xlat3 * x_154);
  u_xlat3 = fract(u_xlat3);
  u_xlat5 = (u_xlat3 + x_160);
  u_xlat1.x = dot(u_xlat3.yxy, u_xlat5.xyy);
  let x_423 = (u_xlat1.xx + u_xlat3.yx);
  u_xlat1 = vec4f(x_423.x, u_xlat1.yz, x_423.y);
  u_xlat61 = (u_xlat1.w + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat61);
  u_xlat61 = dot(u_xlat3.wzw, u_xlat5.zww);
  u_xlat2 = vec4f(((vec2f(u_xlat61) + u_xlat3.wz)).xy, u_xlat2.zw);
  u_xlat61 = (u_xlat2.y + u_xlat2.x);
  u_xlat1.w = (u_xlat2.x * u_xlat61);
  let x_460 = fract(u_xlat1.xw);
  u_xlat1 = vec4f(x_460.x, u_xlat1.yz, x_460.y);
  u_xlat3 = (u_xlat4 + vec4f(1.0f));
  u_xlat3 = (u_xlat3 * x_154);
  u_xlat3 = fract(u_xlat3);
  u_xlat5 = vec4f(((u_xlat3.yxx + x_117)).xyz, u_xlat5.w);
  u_xlat2.x = dot(u_xlat3.xyx, u_xlat5.xyz);
  u_xlat2 = vec4f(((u_xlat2.xx + u_xlat3.xy)).xy, u_xlat2.zw);
  u_xlat22 = (u_xlat2.y + u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat22);
  u_xlat2.x = fract(u_xlat2.x);
  u_xlat1.x = (-(u_xlat60) + u_xlat1.x);
  u_xlat60 = ((u_xlat0.x * u_xlat1.x) + u_xlat60);
  u_xlat1.x = (-(u_xlat1.w) + u_xlat2.x);
  u_xlat0.x = ((u_xlat0.x * u_xlat1.x) + u_xlat1.w);
  u_xlat0.x = (-(u_xlat60) + u_xlat0.x);
  u_xlat0.x = ((u_xlat0.y * u_xlat0.x) + u_xlat60);
  u_xlat1.x = fract(u_xlat1.y);
  u_xlat1.y = fract(u_xlat1.z);
  let x_557 = (u_xlat1.xy * u_xlat1.xy);
  u_xlat20 = vec3f(x_557.x, u_xlat20.y, x_557.y);
  u_xlat1 = vec4f((((-(u_xlat1.xy) * x_90) + x_93)).xy, u_xlat1.zw);
  let x_571 = (u_xlat20.xz * u_xlat1.xy);
  u_xlat20 = vec3f(x_571.x, u_xlat20.y, x_571.y);
  u_xlat1 = vec4f(((u_xlat2.wzz + x_117)).xyz, u_xlat1.w);
  u_xlat1.x = dot(u_xlat2.zwz, u_xlat1.xyz);
  u_xlat1 = vec4f(((u_xlat1.xx + u_xlat2.zw)).xy, u_xlat1.zw);
  u_xlat21.x = (u_xlat1.y + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat21.x);
  u_xlat2 = (u_xlat4.wzwz + x_151);
  u_xlat2 = (u_xlat2 * x_154);
  u_xlat2 = fract(u_xlat2);
  u_xlat4 = (u_xlat2 + x_160);
  u_xlat21.x = dot(u_xlat2.yxy, u_xlat4.xyy);
  u_xlat21 = vec3f(((u_xlat21.xx + u_xlat2.yx)).xy, u_xlat21.z);
  u_xlat41.x = (u_xlat21.y + u_xlat21.x);
  u_xlat1.y = (u_xlat21.x * u_xlat41.x);
  u_xlat41.x = dot(u_xlat2.wzw, u_xlat4.zww);
  u_xlat41 = (u_xlat41.xx + u_xlat2.wz);
  u_xlat61 = (u_xlat41.y + u_xlat41.x);
  u_xlat1.z = (u_xlat41.x * u_xlat61);
  u_xlat2 = vec4f(((u_xlat3.wzz + x_117)).xyz, u_xlat2.w);
  u_xlat61 = dot(u_xlat3.zwz, u_xlat2.xyz);
  u_xlat2 = vec4f(((vec2f(u_xlat61) + u_xlat3.zw)).xy, u_xlat2.zw);
  u_xlat61 = (u_xlat2.y + u_xlat2.x);
  u_xlat1.w = (u_xlat2.x * u_xlat61);
  u_xlat1 = fract(u_xlat1);
  u_xlat21.x = (-(u_xlat1.x) + u_xlat1.y);
  u_xlat1.x = ((u_xlat20.x * u_xlat21.x) + u_xlat1.x);
  u_xlat21.x = (-(u_xlat1.z) + u_xlat1.w);
  u_xlat20.x = ((u_xlat20.x * u_xlat21.x) + u_xlat1.z);
  u_xlat20.x = (-(u_xlat1.x) + u_xlat20.x);
  u_xlat0.y = ((u_xlat20.z * u_xlat20.x) + u_xlat1.x);
  u_xlat60 = (u_xlat0.x * 0.30000001192092895508f);
  u_xlat40.x = ((u_xlat40.x * 0.55000001192092895508f) + u_xlat60);
  u_xlat40.x = ((u_xlat0.y * 0.15000000596046447754f) + u_xlat40.x);
  u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
  u_xlat60 = (-(x_16.x_Break.x) + x_16.x_Break.y);
  u_xlat1.x = (vs_TEXCOORD2.y + -(x_16.x_Break.x));
  u_xlat60 = (1.0f / u_xlat60);
  u_xlat60 = (u_xlat60 * u_xlat1.x);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat60 * -2.0f) + 3.0f);
  u_xlat60 = (u_xlat60 * u_xlat60);
  u_xlat60 = (u_xlat60 * u_xlat1.x);
  u_xlat40.x = (u_xlat40.x + -0.37999999523162841797f);
  u_xlat40.x = (u_xlat40.x * 2.70270276069641113281f);
  u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat40.x * -2.0f) + 3.0f);
  u_xlat40.x = (u_xlat40.x * u_xlat40.x);
  u_xlat40.x = (u_xlat40.x * u_xlat1.x);
  u_xlat1.x = ((u_xlat0.x * 0.30000001192092895508f) + 0.85000002384185791016f);
  u_xlat21.x = (u_xlat1.x * x_16.x_Alpha.x);
  u_xlat41.x = (-(x_16.x_Alpha.z) + x_16.x_Alpha.y);
  u_xlat41.x = ((u_xlat40.x * u_xlat41.x) + x_16.x_Alpha.z);
  u_xlat1.x = ((-(x_16.x_Alpha.x) * u_xlat1.x) + u_xlat41.x);
  u_xlat60 = ((u_xlat60 * u_xlat1.x) + u_xlat21.x);
  u_xlat1.x = (vs_COLOR0.w * x_16.x_Alpha.w);
  u_xlat21.x = (u_xlat60 * u_xlat1.x);
  u_xlat41.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat41.x = inverseSqrt(u_xlat41.x);
  u_xlat2 = vec4f(((u_xlat41.xxx * vs_TEXCOORD1)).xyz, u_xlat2.w);
  if ((select(0u, 4294967295u, gl_FrontFacing) != 0u)) {
    x_908 = u_xlat2.xyz;
  } else {
    x_908 = -(u_xlat2.xyz);
  }
  u_xlat2 = vec4f(x_908.xyz, u_xlat2.w);
  u_xlat3 = vec4f(((-(vs_TEXCOORD0) + x_34.x_WorldSpaceCameraPos)).xyz, u_xlat3.w);
  u_xlat41.x = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat41.x = inverseSqrt(u_xlat41.x);
  u_xlat4 = vec4f(((u_xlat41.xxx * u_xlat3.xyz)).xyz, u_xlat4.w);
  let x_950 = (u_xlat0.xy + vec2f(-0.5f));
  u_xlat5 = vec4f(x_950.x, u_xlat5.y, x_950.y, u_xlat5.w);
  u_xlat5.y = 0.0f;
  u_xlat2 = vec4f((((u_xlat5.xyz * x_956) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat2 = vec4f(((u_xlat0.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_985.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_985.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_985.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_985.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat8.w);
  u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlatb5 = (u_xlat5 < x_985.x_CascadeShadowSplitSphereRadii);
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb5.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb5.y);
  u_xlat6.z = select(0.0f, 1.0f, u_xlatb5.z);
  u_xlat6.w = select(0.0f, 1.0f, u_xlatb5.w);
  u_xlat5.x = select(-0.0f, -1.0f, u_xlatb5.x);
  u_xlat5.y = select(-0.0f, -1.0f, u_xlatb5.y);
  u_xlat5.z = select(-0.0f, -1.0f, u_xlatb5.z);
  u_xlat5 = vec4f(((u_xlat5.xyz + u_xlat6.yzw)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(u_xlat6.x, max(u_xlat5.xyz, vec3f()).xyz);
  u_xlat0.x = dot(u_xlat6, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat0.x = (-(u_xlat0.x) + 4.0f);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlati0 = (bitcast<i32>(u_xlatu0) << bitcast<u32>(2i));
  u_xlat5 = vec4f(((vs_TEXCOORD0.yyy * x_985.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati0 + 1i)].xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_985.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati0].xyz * vs_TEXCOORD0.xxx) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((x_985.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati0 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + x_985.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati0 + 3i)].xyz)).xyz, u_xlat5.w);
  u_xlatb0 = (0.0f < x_985.x_MainLightShadowParams.y);
  if (u_xlatb0) {
    u_xlatb0 = (x_985.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb0) {
      u_xlat6 = (u_xlat5.xyxy + x_985.x_MainLightShadowOffset0);
      let x_1185 = u_xlat6.xy;
      txVec0 = vec3f(x_1185.x, x_1185.y, u_xlat5.z);
      u_xlat7.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1207 = u_xlat6.zw;
      txVec1 = vec3f(x_1207.x, x_1207.y, u_xlat5.z);
      u_xlat7.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat6 = (u_xlat5.xyxy + x_985.x_MainLightShadowOffset1);
      let x_1227 = u_xlat6.xy;
      txVec2 = vec3f(x_1227.x, x_1227.y, u_xlat5.z);
      u_xlat7.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1242 = u_xlat6.zw;
      txVec3 = vec3f(x_1242.x, x_1242.y, u_xlat5.z);
      u_xlat7.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat0.x = dot(u_xlat7, vec4f(0.25f));
    } else {
      u_xlatb20 = (x_985.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb20) {
        u_xlat6 = vec4f((((u_xlat5.xy * x_985.x_MainLightShadowmapSize.zw) + x_1276)).xy, u_xlat6.zw);
        u_xlat6 = vec4f(floor(u_xlat6.xy).xy, u_xlat6.zw);
        u_xlat46 = ((u_xlat5.xy * x_985.x_MainLightShadowmapSize.zw) + -(u_xlat6.xy));
        u_xlat7 = (u_xlat46.xxyy + x_1298);
        u_xlat8 = (u_xlat7.xxzz * u_xlat7.xxzz);
        let x_1309 = (u_xlat8.yw * vec2f(0.07999999821186065674f));
        u_xlat7 = vec4f(x_1309.x, u_xlat7.y, x_1309.y, u_xlat7.w);
        u_xlat8 = vec4f((((u_xlat8.xz * x_1276) + -(u_xlat46))).xy, u_xlat8.zw);
        u_xlat48 = (-(u_xlat46) + x_215);
        u_xlat9 = vec4f(min(u_xlat46, vec2f()).xy, u_xlat9.zw);
        u_xlat9 = vec4f((((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat48)).xy, u_xlat9.zw);
        u_xlat46 = max(u_xlat46, vec2f());
        u_xlat46 = ((-(u_xlat46) * u_xlat46) + u_xlat7.yw);
        u_xlat9 = vec4f(((u_xlat9.xy + x_215)).xy, u_xlat9.zw);
        u_xlat46 = (u_xlat46 + x_215);
        u_xlat10 = vec4f(((u_xlat8.xy * x_1360)).xy, u_xlat10.zw);
        u_xlat8 = vec4f(((u_xlat48 * x_1360)).xy, u_xlat8.zw);
        u_xlat9 = vec4f(((u_xlat9.xy * x_1360)).xy, u_xlat9.zw);
        u_xlat11 = vec4f(((u_xlat46 * x_1360)).xy, u_xlat11.zw);
        u_xlat46 = (u_xlat7.yw * x_1360);
        u_xlat10.z = u_xlat9.x;
        u_xlat10.w = u_xlat46.x;
        u_xlat8.z = u_xlat11.x;
        u_xlat8.w = u_xlat7.x;
        u_xlat12 = (u_xlat8.zwxz + u_xlat10.zwxz);
        u_xlat9.z = u_xlat10.y;
        u_xlat9.w = u_xlat46.y;
        u_xlat11.z = u_xlat8.y;
        u_xlat11.w = u_xlat7.z;
        u_xlat7 = vec4f(((u_xlat9.zyw + u_xlat11.zyw)).xyz, u_xlat7.w);
        u_xlat8 = vec4f(((u_xlat8.xzw / u_xlat12.zwy)).xyz, u_xlat8.w);
        u_xlat8 = vec4f(((u_xlat8.xyz + x_1429)).xyz, u_xlat8.w);
        u_xlat9 = vec4f(((u_xlat11.zyw / u_xlat7.xyz)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat9.xyz + x_1429)).xyz, u_xlat9.w);
        u_xlat8 = vec4f(((u_xlat8.yxz * x_985.x_MainLightShadowmapSize.xxx)).xyz, u_xlat8.w);
        u_xlat9 = vec4f(((u_xlat9.xyz * x_985.x_MainLightShadowmapSize.yyy)).xyz, u_xlat9.w);
        u_xlat8.w = u_xlat9.x;
        u_xlat10 = ((u_xlat6.xyxy * x_985.x_MainLightShadowmapSize.xyxy) + u_xlat8.ywxw);
        u_xlat46 = ((u_xlat6.xy * x_985.x_MainLightShadowmapSize.xy) + u_xlat8.zw);
        u_xlat9.w = u_xlat8.y;
        let x_1486 = u_xlat9.yz;
        u_xlat8 = vec4f(u_xlat8.x, x_1486.x, u_xlat8.z, x_1486.y);
        u_xlat11 = ((u_xlat6.xyxy * x_985.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyzy);
        u_xlat9 = ((u_xlat6.xyxy * x_985.x_MainLightShadowmapSize.xyxy) + u_xlat9.wywz);
        u_xlat8 = ((u_xlat6.xyxy * x_985.x_MainLightShadowmapSize.xyxy) + u_xlat8.xwzw);
        u_xlat13 = (u_xlat7.xxxy * u_xlat12.zwyz);
        u_xlat14 = (u_xlat7.yyzz * u_xlat12);
        u_xlat20.x = (u_xlat7.z * u_xlat12.y);
        let x_1535 = u_xlat10.xy;
        txVec4 = vec3f(x_1535.x, x_1535.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1549 = u_xlat10.zw;
        txVec5 = vec3f(x_1549.x, x_1549.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat63 = (u_xlat63 * u_xlat13.y);
        u_xlat61 = ((u_xlat13.x * u_xlat61) + u_xlat63);
        txVec6 = vec3f(u_xlat46.x, u_xlat46.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat61 = ((u_xlat13.z * u_xlat63) + u_xlat61);
        let x_1593 = u_xlat9.xy;
        txVec7 = vec3f(x_1593.x, x_1593.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat61 = ((u_xlat13.w * u_xlat63) + u_xlat61);
        let x_1613 = u_xlat11.xy;
        txVec8 = vec3f(x_1613.x, x_1613.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat61 = ((u_xlat14.x * u_xlat63) + u_xlat61);
        let x_1633 = u_xlat11.zw;
        txVec9 = vec3f(x_1633.x, x_1633.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat61 = ((u_xlat14.y * u_xlat63) + u_xlat61);
        let x_1653 = u_xlat9.zw;
        txVec10 = vec3f(x_1653.x, x_1653.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat61 = ((u_xlat14.z * u_xlat63) + u_xlat61);
        let x_1673 = u_xlat8.xy;
        txVec11 = vec3f(x_1673.x, x_1673.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat61 = ((u_xlat14.w * u_xlat63) + u_xlat61);
        let x_1693 = u_xlat8.zw;
        txVec12 = vec3f(x_1693.x, x_1693.y, u_xlat5.z);
        u_xlat63 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat0.x = ((u_xlat20.x * u_xlat63) + u_xlat61);
      } else {
        u_xlat6 = vec4f((((u_xlat5.xy * x_985.x_MainLightShadowmapSize.zw) + x_1276)).xy, u_xlat6.zw);
        u_xlat6 = vec4f(floor(u_xlat6.xy).xy, u_xlat6.zw);
        u_xlat46 = ((u_xlat5.xy * x_985.x_MainLightShadowmapSize.zw) + -(u_xlat6.xy));
        u_xlat7 = (u_xlat46.xxyy + x_1298);
        u_xlat8 = (u_xlat7.xxzz * u_xlat7.xxzz);
        let x_1749 = (u_xlat8.yw * vec2f(0.04081600159406661987f));
        u_xlat9 = vec4f(u_xlat9.x, x_1749.x, u_xlat9.z, x_1749.y);
        let x_1757 = ((u_xlat8.xz * x_1276) + -(u_xlat46));
        u_xlat7 = vec4f(x_1757.x, u_xlat7.y, x_1757.y, u_xlat7.w);
        u_xlat8 = vec4f(((-(u_xlat46) + x_215)).xy, u_xlat8.zw);
        u_xlat48 = min(u_xlat46, vec2f());
        u_xlat8 = vec4f((((-(u_xlat48) * u_xlat48) + u_xlat8.xy)).xy, u_xlat8.zw);
        u_xlat48 = max(u_xlat46, vec2f());
        let x_1785 = ((-(u_xlat48) * u_xlat48) + u_xlat7.yw);
        u_xlat27 = vec3f(x_1785.x, u_xlat27.y, x_1785.y);
        u_xlat8 = vec4f(((u_xlat8.xy + x_90)).xy, u_xlat8.zw);
        let x_1795 = (u_xlat27.xz + x_90);
        u_xlat7 = vec4f(u_xlat7.x, x_1795.x, u_xlat7.z, x_1795.y);
        u_xlat10.z = (u_xlat7.y * 0.08163200318813323975f);
        u_xlat11 = vec4f(((u_xlat7.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat11.w);
        u_xlat7 = vec4f(((u_xlat8.xy * vec2f(0.08163200318813323975f))).xy, u_xlat7.zw);
        u_xlat10.x = u_xlat11.y;
        let x_1825 = ((u_xlat46.xx * x_1821) + x_1824);
        u_xlat10 = vec4f(u_xlat10.x, x_1825.x, u_xlat10.z, x_1825.y);
        let x_1832 = ((u_xlat46.xx * x_1821) + x_1831);
        u_xlat8 = vec4f(x_1832.x, u_xlat8.y, x_1832.y, u_xlat8.w);
        u_xlat8.y = u_xlat7.x;
        u_xlat8.w = u_xlat9.y;
        u_xlat10 = (u_xlat8 + u_xlat10);
        let x_1847 = ((u_xlat46.yy * x_1821) + x_1824);
        u_xlat11 = vec4f(u_xlat11.x, x_1847.x, u_xlat11.z, x_1847.y);
        let x_1853 = ((u_xlat46.yy * x_1821) + x_1831);
        u_xlat9 = vec4f(x_1853.x, u_xlat9.y, x_1853.y, u_xlat9.w);
        u_xlat9.y = u_xlat7.y;
        u_xlat7 = (u_xlat9 + u_xlat11);
        u_xlat8 = (u_xlat8 / u_xlat10);
        u_xlat8 = (u_xlat8 + x_1869);
        u_xlat9 = (u_xlat9 / u_xlat7);
        u_xlat9 = (u_xlat9 + x_1869);
        u_xlat8 = (u_xlat8.wxyz * x_985.x_MainLightShadowmapSize.xxxx);
        u_xlat9 = (u_xlat9.xwyz * x_985.x_MainLightShadowmapSize.yyyy);
        let x_1889 = u_xlat8.yzw;
        u_xlat11 = vec4f(x_1889.x, u_xlat11.y, x_1889.yz);
        u_xlat11.y = u_xlat9.x;
        u_xlat12 = ((u_xlat6.xyxy * x_985.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat46 = ((u_xlat6.xy * x_985.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat8.y = u_xlat11.y;
        u_xlat11.y = u_xlat9.z;
        u_xlat13 = ((u_xlat6.xyxy * x_985.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat14 = vec4f((((u_xlat6.xy * x_985.x_MainLightShadowmapSize.xy) + u_xlat11.wy)).xy, u_xlat14.zw);
        u_xlat8.z = u_xlat11.y;
        u_xlat15 = ((u_xlat6.xyxy * x_985.x_MainLightShadowmapSize.xyxy) + u_xlat8.xyxz);
        u_xlat11.y = u_xlat9.w;
        u_xlat16 = ((u_xlat6.xyxy * x_985.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat28 = ((u_xlat6.xy * x_985.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat8.w = u_xlat11.y;
        u_xlat54 = ((u_xlat6.xy * x_985.x_MainLightShadowmapSize.xy) + u_xlat8.xw);
        let x_1989 = u_xlat11.xzw;
        u_xlat9 = vec4f(x_1989.x, u_xlat9.y, x_1989.yz);
        u_xlat11 = ((u_xlat6.xyxy * x_985.x_MainLightShadowmapSize.xyxy) + u_xlat9.xyzy);
        u_xlat49 = ((u_xlat6.xy * x_985.x_MainLightShadowmapSize.xy) + u_xlat9.wy);
        u_xlat9.x = u_xlat8.x;
        u_xlat6 = vec4f((((u_xlat6.xy * x_985.x_MainLightShadowmapSize.xy) + u_xlat9.xy)).xy, u_xlat6.zw);
        u_xlat17 = (u_xlat7.xxxx * u_xlat10);
        u_xlat18 = (u_xlat7.yyyy * u_xlat10);
        u_xlat19 = (u_xlat7.zzzz * u_xlat10);
        u_xlat7 = (u_xlat7.wwww * u_xlat10);
        let x_2046 = u_xlat12.xy;
        txVec13 = vec3f(x_2046.x, x_2046.y, u_xlat5.z);
        u_xlat20.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_2061 = u_xlat12.zw;
        txVec14 = vec3f(x_2061.x, x_2061.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat61 = (u_xlat61 * u_xlat17.y);
        u_xlat20.x = ((u_xlat17.x * u_xlat20.x) + u_xlat61);
        txVec15 = vec3f(u_xlat46.x, u_xlat46.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat20.x = ((u_xlat17.z * u_xlat61) + u_xlat20.x);
        let x_2108 = u_xlat15.xy;
        txVec16 = vec3f(x_2108.x, x_2108.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat20.x = ((u_xlat17.w * u_xlat61) + u_xlat20.x);
        let x_2130 = u_xlat13.xy;
        txVec17 = vec3f(x_2130.x, x_2130.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat20.x = ((u_xlat18.x * u_xlat61) + u_xlat20.x);
        let x_2152 = u_xlat13.zw;
        txVec18 = vec3f(x_2152.x, x_2152.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat20.x = ((u_xlat18.y * u_xlat61) + u_xlat20.x);
        let x_2174 = u_xlat14.xy;
        txVec19 = vec3f(x_2174.x, x_2174.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat20.x = ((u_xlat18.z * u_xlat61) + u_xlat20.x);
        let x_2196 = u_xlat15.zw;
        txVec20 = vec3f(x_2196.x, x_2196.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat20.x = ((u_xlat18.w * u_xlat61) + u_xlat20.x);
        let x_2218 = u_xlat16.xy;
        txVec21 = vec3f(x_2218.x, x_2218.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat20.x = ((u_xlat19.x * u_xlat61) + u_xlat20.x);
        let x_2240 = u_xlat16.zw;
        txVec22 = vec3f(x_2240.x, x_2240.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat20.x = ((u_xlat19.y * u_xlat61) + u_xlat20.x);
        txVec23 = vec3f(u_xlat28.x, u_xlat28.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat20.x = ((u_xlat19.z * u_xlat61) + u_xlat20.x);
        txVec24 = vec3f(u_xlat54.x, u_xlat54.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat20.x = ((u_xlat19.w * u_xlat61) + u_xlat20.x);
        let x_2304 = u_xlat11.xy;
        txVec25 = vec3f(x_2304.x, x_2304.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat20.x = ((u_xlat7.x * u_xlat61) + u_xlat20.x);
        let x_2326 = u_xlat11.zw;
        txVec26 = vec3f(x_2326.x, x_2326.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat20.x = ((u_xlat7.y * u_xlat61) + u_xlat20.x);
        txVec27 = vec3f(u_xlat49.x, u_xlat49.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat20.x = ((u_xlat7.z * u_xlat61) + u_xlat20.x);
        let x_2369 = u_xlat6.xy;
        txVec28 = vec3f(x_2369.x, x_2369.y, u_xlat5.z);
        u_xlat61 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat0.x = ((u_xlat7.w * u_xlat61) + u_xlat20.x);
      }
    }
  } else {
    let x_2392 = u_xlat5.xy;
    txVec29 = vec3f(x_2392.x, x_2392.y, u_xlat5.z);
    u_xlat0.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat20.x = (-(x_985.x_MainLightShadowParams.x) + 1.0f);
  u_xlat0.x = ((u_xlat0.x * x_985.x_MainLightShadowParams.x) + u_xlat20.x);
  u_xlatb20 = (0.0f >= u_xlat5.z);
  u_xlatb61 = (u_xlat5.z >= 1.0f);
  u_xlatb20 = (u_xlatb20 | u_xlatb61);
  if (u_xlatb20) {
    x_2430 = 1.0f;
  } else {
    x_2430 = u_xlat0.x;
  }
  u_xlat0.x = x_2430;
  u_xlat5 = vec4f(((vs_TEXCOORD0 + -(x_34.x_WorldSpaceCameraPos))).xyz, u_xlat5.w);
  u_xlat20.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat61 = ((u_xlat20.x * x_985.x_MainLightShadowParams.z) + x_985.x_MainLightShadowParams.w);
  u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
  u_xlat63 = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = ((u_xlat61 * u_xlat63) + u_xlat0.x);
  u_xlat2.w = 1.0f;
  u_xlat6.x = dot(x_2481.unity_SHAr, u_xlat2);
  u_xlat6.y = dot(x_2481.unity_SHAg, u_xlat2);
  u_xlat6.z = dot(x_2481.unity_SHAb, u_xlat2);
  u_xlat7 = (u_xlat2.yzzx * u_xlat2.xyzz);
  u_xlat8.x = dot(x_2481.unity_SHBr, u_xlat7);
  u_xlat8.y = dot(x_2481.unity_SHBg, u_xlat7);
  u_xlat8.z = dot(x_2481.unity_SHBb, u_xlat7);
  u_xlat61 = (u_xlat2.y * u_xlat2.y);
  u_xlat61 = ((u_xlat2.x * u_xlat2.x) + -(u_xlat61));
  u_xlat7 = vec4f((((x_2481.unity_SHC.xyz * vec3f(u_xlat61)) + u_xlat8.xyz)).xyz, u_xlat7.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.xyz)).xyz, u_xlat6.w);
  u_xlat61 = dot(u_xlat2.xyz, x_34.x_MainLightPosition.xyz);
  u_xlat61 = (u_xlat61 + 0.5f);
  u_xlat61 = (u_xlat61 * 0.6666666865348815918f);
  u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
  u_xlat62 = (-(x_16.x_Aerate.x) + x_16.x_Aerate.y);
  u_xlat63 = (vs_TEXCOORD2.y + -(x_16.x_Aerate.x));
  u_xlat62 = (1.0f / u_xlat62);
  u_xlat62 = (u_xlat62 * u_xlat63);
  u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
  u_xlat63 = ((u_xlat62 * -2.0f) + 3.0f);
  u_xlat62 = (u_xlat62 * u_xlat62);
  u_xlat62 = (u_xlat62 * u_xlat63);
  u_xlat62 = (u_xlat62 * x_16.x_Aerate.z);
  u_xlat40.x = ((u_xlat40.x * 0.60000002384185791016f) + 0.60000002384185791016f);
  u_xlat40.x = (u_xlat40.x * u_xlat62);
  u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
  u_xlat7 = vec4f(((-(x_16.x_Tint.xyz) + x_16.x_Foam.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f((((u_xlat40.xxx * u_xlat7.xyz) + x_16.x_Tint.xyz)).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vec3f(u_xlat61) * x_34.x_MainLightColor.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((u_xlat0.xxx * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat6 = vec4f((((u_xlat8.xyz * vec3f(0.80000001192092895508f)) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat40.x = dot(u_xlat2.xyz, u_xlat4.xyz);
  u_xlat40.x = min(abs(u_xlat40.x), 1.0f);
  u_xlat40.x = (-(u_xlat40.x) + 1.0f);
  u_xlat61 = (u_xlat40.x * u_xlat40.x);
  u_xlat61 = (u_xlat61 * u_xlat61);
  u_xlat40.x = (u_xlat40.x * u_xlat61);
  u_xlat40.x = ((u_xlat40.x * 0.95999997854232788086f) + 0.03999999910593032837f);
  u_xlat61 = dot(-(u_xlat4.xyz), u_xlat2.xyz);
  u_xlat61 = (u_xlat61 + u_xlat61);
  u_xlat4 = vec4f((((u_xlat2.xyz * -(vec3f(u_xlat61))) + -(u_xlat4.xyz))).xyz, u_xlat4.w);
  u_xlat4 = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, u_xlat4.xyz, 0.97800004482269287109f);
  u_xlat61 = (u_xlat4.w + -1.0f);
  u_xlat61 = ((x_2481.unity_SpecCube0_HDR.w * u_xlat61) + 1.0f);
  u_xlat61 = max(u_xlat61, 0.0f);
  u_xlat61 = log2(u_xlat61);
  u_xlat61 = (u_xlat61 * x_2481.unity_SpecCube0_HDR.y);
  u_xlat61 = exp2(u_xlat61);
  u_xlat61 = (u_xlat61 * x_2481.unity_SpecCube0_HDR.x);
  u_xlat4 = vec4f(((u_xlat4.xyz * vec3f(u_xlat61))).xyz, u_xlat4.w);
  let x_2767 = vec3f(x_16.x_Reflection, x_16.x_Reflection, x_16.x_Reflection);
  u_xlat4 = vec4f(((u_xlat4.xyz * vec3f(x_2767.x, x_2767.y, x_2767.z))).xyz, u_xlat4.w);
  u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat41.xxx) + x_34.x_MainLightPosition.xyz)).xyz, u_xlat3.w);
  u_xlat41.x = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat41.x = inverseSqrt(u_xlat41.x);
  u_xlat3 = vec4f(((u_xlat41.xxx * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat41.x = dot(u_xlat2.xyz, u_xlat3.xyz);
  u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
  u_xlat41.x = log2(u_xlat41.x);
  u_xlat41.x = (u_xlat41.x * 220.0f);
  u_xlat41.x = exp2(u_xlat41.x);
  u_xlat41.x = (u_xlat41.x * x_16.x_Sun);
  u_xlat0.x = (u_xlat0.x * u_xlat41.x);
  u_xlat2 = vec4f(((u_xlat40.xxx * u_xlat4.xyz)).xyz, u_xlat2.w);
  u_xlat3 = vec4f((((u_xlat7.xyz * u_xlat6.xyz) + u_xlat2.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((x_34.x_MainLightColor.xyz * u_xlat0.xxx) + u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlatb40 = (x_34.x_DesertSunDir.w >= 0.5f);
  if (u_xlatb40) {
    u_xlat20.x = sqrt(u_xlat20.x);
    u_xlat40.x = max(u_xlat20.x, 0.00009999999747378752f);
    u_xlat4 = vec4f(((u_xlat5.xyz / u_xlat40.xxx)).xyz, u_xlat4.w);
    u_xlat20.x = (u_xlat20.x + -(x_34.x_DesertHaze.z));
    u_xlat20.x = max(u_xlat20.x, 0.0f);
    u_xlat41.x = (x_34.x_WorldSpaceCameraPos.y + -(x_34.x_DesertHaze2.x));
    u_xlat40.x = (u_xlat20.x / u_xlat40.x);
    u_xlat40.x = (u_xlat40.x * u_xlat5.y);
    u_xlat41.x = max(u_xlat41.x, -20.0f);
    u_xlat41.x = (u_xlat41.x * -(x_34.x_DesertHaze.y));
    u_xlat41.x = (u_xlat41.x * 1.44269502162933349609f);
    u_xlat41.x = exp2(u_xlat41.x);
    u_xlatb61 = (0.00999999977648258209f < abs(u_xlat40.x));
    u_xlat62 = (u_xlat40.x * -(x_34.x_DesertHaze.y));
    u_xlat62 = (u_xlat62 * 1.44269502162933349609f);
    u_xlat62 = exp2(u_xlat62);
    u_xlat62 = (-(u_xlat62) + 1.0f);
    u_xlat62 = (u_xlat41.x * u_xlat62);
    u_xlat40.x = (u_xlat40.x * x_34.x_DesertHaze.y);
    u_xlat40.x = (u_xlat62 / u_xlat40.x);
    if (u_xlatb61) {
      x_2974 = u_xlat40.x;
    } else {
      x_2974 = u_xlat41.x;
    }
    u_xlat40.x = x_2974;
    u_xlat41.x = (u_xlat20.x * x_34.x_DesertHaze.x);
    u_xlat20.x = (u_xlat20.x * x_34.x_DesertHazeTint.w);
    u_xlat20.x = ((u_xlat41.x * u_xlat40.x) + u_xlat20.x);
    u_xlat40.x = (u_xlat20.x * -1.44269502162933349609f);
    u_xlat40.x = exp2(u_xlat40.x);
    u_xlat40.x = (-(u_xlat40.x) + 1.0f);
    u_xlat40.x = min(u_xlat40.x, x_34.x_DesertHaze.w);
    u_xlat4.w = 0.03500000014901161194f;
    u_xlat41.x = dot(u_xlat4.xzw, u_xlat4.xzw);
    u_xlat41.x = inverseSqrt(u_xlat41.x);
    u_xlat5 = vec4f(((u_xlat41.xxx * u_xlat4.xwz)).xyz, u_xlat5.w);
    u_xlat61 = min(abs(u_xlat5.z), abs(u_xlat5.x));
    u_xlat62 = max(abs(u_xlat5.z), abs(u_xlat5.x));
    u_xlat62 = (1.0f / u_xlat62);
    u_xlat61 = (u_xlat61 * u_xlat62);
    u_xlat62 = (u_xlat61 * u_xlat61);
    u_xlat63 = ((u_xlat62 * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat63 = ((u_xlat62 * u_xlat63) + 0.18014100193977355957f);
    u_xlat63 = ((u_xlat62 * u_xlat63) + -0.33029949665069580078f);
    u_xlat62 = ((u_xlat62 * u_xlat63) + 0.99986600875854492188f);
    u_xlat63 = (u_xlat61 * u_xlat62);
    u_xlatb65 = (abs(u_xlat5.z) < abs(u_xlat5.x));
    u_xlat63 = ((u_xlat63 * -2.0f) + 1.57079637050628662109f);
    u_xlat63 = select(0.0f, u_xlat63, u_xlatb65);
    u_xlat61 = ((u_xlat61 * u_xlat62) + u_xlat63);
    u_xlatb62 = (u_xlat5.z < -(u_xlat5.z));
    u_xlat62 = select(0.0f, -3.14159274101257324219f, u_xlatb62);
    u_xlat61 = (u_xlat61 + u_xlat62);
    u_xlat62 = min(u_xlat5.z, u_xlat5.x);
    u_xlat63 = max(u_xlat5.z, u_xlat5.x);
    u_xlatb62 = (u_xlat62 < -(u_xlat62));
    u_xlatb63 = (u_xlat63 >= -(u_xlat63));
    u_xlatb62 = (u_xlatb62 & u_xlatb63);
    if (u_xlatb62) {
      x_3145 = -(u_xlat61);
    } else {
      x_3145 = u_xlat61;
    }
    u_xlat61 = x_3145;
    u_xlat6.x = ((u_xlat61 * 0.15915493667125701904f) + 0.5f);
    u_xlat6.y = 0.5f;
    let x_3170 = textureSampleLevel(x_DesertHorizonRing, sampler_DesertHorizonRing, u_xlat6.xy, 0.0f).xyz;
    u_xlat5 = vec4f(x_3170.x, u_xlat5.y, x_3170.yz);
    u_xlat61 = ((-(u_xlat4.w) * u_xlat41.x) + 1.0f);
    u_xlat61 = sqrt(u_xlat61);
    u_xlat62 = ((u_xlat41.x * -0.00065552548039704561f) + 0.07426100224256515503f);
    u_xlat62 = ((u_xlat62 * u_xlat5.y) + -0.21211439371109008789f);
    u_xlat62 = ((u_xlat62 * u_xlat5.y) + 1.57072877883911132812f);
    u_xlat61 = ((-(u_xlat62) * u_xlat61) + 1.57079637050628662109f);
    u_xlat6 = vec4f(((vec2f(u_xlat61) * vec2f(57.295780181884765625f, -9.18448162078857421875f))).xy, u_xlat6.zw);
    u_xlat7 = vec4f(((u_xlat5.xzw * x_34.x_DesertSkyGrade0.xyz)).xyz, u_xlat7.w);
    u_xlat62 = dot(u_xlat7.xyz, vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
    u_xlat5 = vec4f((((u_xlat5.xzw * x_34.x_DesertSkyGrade0.xyz) + -(vec3f(u_xlat62)))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((x_34.x_DesertSkyGrade0.www * u_xlat5.xyz) + vec3f(u_xlat62))).xyz, u_xlat5.w);
    u_xlat5 = vec4f(max(u_xlat5.xyz, vec3f()).xyz, u_xlat5.w);
    u_xlat62 = max(x_34.x_DesertSkyGrade1.w, 0.10000000149011611938f);
    u_xlat62 = (u_xlat6.x / u_xlat62);
    u_xlat62 = (-(u_xlat62) + 1.0f);
    u_xlat62 = max(u_xlat62, 0.0f);
    u_xlat62 = (u_xlat62 * u_xlat62);
    let x_3277 = (x_34.x_DesertSkyGrade1.xyz + x_3276);
    u_xlat6 = vec4f(x_3277.x, u_xlat6.y, x_3277.yz);
    let x_3286 = ((vec3f(u_xlat62) * u_xlat6.xzw) + x_3285);
    u_xlat6 = vec4f(x_3286.x, u_xlat6.y, x_3286.yz);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6.xzw)).xyz, u_xlat5.w);
    u_xlat61 = ((u_xlat61 * 57.295780181884765625f) + -(x_34.x_DesertSkyGrade2.w));
    u_xlat62 = (-(x_34.x_DesertSkyGrade2.w) + 90.0f);
    u_xlat62 = max(u_xlat62, 1.0f);
    u_xlat61 = (u_xlat61 / u_xlat62);
    u_xlat61 = clamp(u_xlat61, 0.0f, 1.0f);
    let x_3318 = (x_34.x_DesertSkyGrade2.xyz + x_3276);
    u_xlat6 = vec4f(x_3318.x, u_xlat6.y, x_3318.yz);
    let x_3326 = ((vec3f(u_xlat61) * u_xlat6.xzw) + x_3285);
    u_xlat6 = vec4f(x_3326.x, u_xlat6.y, x_3326.yz);
    u_xlat5 = vec4f(((u_xlat5.xyz * u_xlat6.xzw)).xyz, u_xlat5.w);
    u_xlat41 = ((u_xlat4.xz * u_xlat41.xx) + x_3342);
    u_xlat62 = dot(u_xlat41, u_xlat41);
    u_xlat62 = inverseSqrt(u_xlat62);
    u_xlat41 = (u_xlat41 * vec2f(u_xlat62));
    let x_3356 = (x_34.x_DesertSunDir.xz + x_3342);
    u_xlat6 = vec4f(x_3356.x, u_xlat6.y, x_3356.y, u_xlat6.w);
    u_xlat62 = dot(u_xlat6.xz, u_xlat6.xz);
    u_xlat62 = inverseSqrt(u_xlat62);
    let x_3370 = (vec2f(u_xlat62) * u_xlat6.xz);
    u_xlat6 = vec4f(x_3370.x, u_xlat6.y, x_3370.y, u_xlat6.w);
    u_xlat41.x = dot(u_xlat41, u_xlat6.xz);
    u_xlat41.x = ((u_xlat41.x * 0.5f) + 0.5f);
    u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
    u_xlat61 = max(x_34.x_DesertSkyGrade3.w, 1.0f);
    u_xlat41.x = log2(u_xlat41.x);
    u_xlat41.x = (u_xlat41.x * u_xlat61);
    u_xlat41.x = exp2(u_xlat41.x);
    u_xlat61 = exp2(u_xlat6.y);
    u_xlat41.x = (u_xlat61 * u_xlat41.x);
    u_xlat61 = (u_xlat41.x * 1.5f);
    u_xlat61 = min(u_xlat61, 1.0f);
    u_xlat6 = vec4f((((vec3f(u_xlat61) * vec3f(0.0f, -0.19999998807907104492f, -0.33999997377395629883f)) + x_3285)).xyz, u_xlat6.w);
    u_xlat7 = vec4f(((u_xlat41.xxx * x_34.x_DesertSkyGrade3.xyz)).xyz, u_xlat7.w);
    u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat6.xyz) + u_xlat7.xyz)).xyz, u_xlat5.w);
    u_xlat20.x = (u_xlat20.x * x_34.x_DesertHaze2.w);
    u_xlat20.x = (u_xlat20.x * 0.44999998807907104492f);
    u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
    u_xlat5 = vec4f(((u_xlat5.xyz + -(x_34.x_DesertHazeTint.xyz))).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((u_xlat20.xxx * u_xlat5.xyz) + x_34.x_DesertHazeTint.xyz)).xyz, u_xlat5.w);
    u_xlat20.x = dot(u_xlat4.xyz, x_34.x_DesertSunDir.xyz);
    u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
    u_xlat4 = vec4f(((x_34.x_DesertSunColor.xyz * x_34.x_DesertHaze2.yyy)).xyz, u_xlat4.w);
    u_xlat20.x = log2(u_xlat20.x);
    u_xlat20.x = (u_xlat20.x * x_34.x_DesertHaze2.z);
    u_xlat20.x = exp2(u_xlat20.x);
    u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat20.xxx) + u_xlat5.xyz)).xyz, u_xlat4.w);
    u_xlat4 = vec4f(((-(u_xlat3.xyz) + u_xlat4.xyz)).xyz, u_xlat4.w);
    u_xlat3 = vec4f((((u_xlat40.xxx * u_xlat4.xyz) + u_xlat3.xyz)).xyz, u_xlat3.w);
  }
  u_xlat0 = vec4f((((x_34.x_MainLightColor.xyz * u_xlat0.xxx) + u_xlat2.xyz)).xyz, u_xlat0.w);
  u_xlat60 = ((-(u_xlat60) * u_xlat1.x) + 1.0f);
  u_xlat0 = vec4f(((vec3f(u_xlat60) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * x_956)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * vs_COLOR0.www)).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((u_xlat3.xyz * u_xlat21.xxx) + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat21.x;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec2f, @location(3) vs_COLOR0_param : vec4f, @location(1) vs_TEXCOORD1_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(0) vs_TEXCOORD0_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

