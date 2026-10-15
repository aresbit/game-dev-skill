//Assets/Shared/Rendering/Shaders/B612_Grass.shader
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

alias Arr_6 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
  /* @offset(80) */
  x_B612WindDirection : vec4f,
  /* @offset(96) */
  x_B612WindGust : vec4f,
  /* @offset(112) */
  x_B612WindTime : vec4f,
  /* @offset(128) */
  x_B612Interactor : vec4f,
  /* @offset(144) */
  x_B612InteractorTrail : Arr_6,
  /* @offset(208) */
  x_B612FlowerMapRect : vec4f,
  /* @offset(224) */
  x_B612GrassTintRect : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_ColorRoot : vec4f,
  /* @offset(16) */
  x_ColorMid : vec4f,
  /* @offset(32) */
  x_ColorTip : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_ColorTrans : vec4f,
  /* @offset(64) */
  x_ColorLush : vec4f,
  /* @offset(80) */
  x_ColorSunny : vec4f,
  /* @offset(96) */
  x_ColorDry : vec4f,
  /* @offset(112) */
  x_MidPoint : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_TransAmount : f32,
  /* @offset(120) */
  x_MacroTiling : f32,
  /* @offset(124) */
  x_LushAmount : f32,
  /* @offset(128) */
  x_SunnyAmount : f32,
  /* @offset(132) */
  x_DryPatchAmount : f32,
  /* @offset(136) */
  x_StrawAmount : f32,
  /* @offset(140) */
  x_InstanceSunny : f32,
  /* @offset(144) */
  x_InstanceBrightness : f32,
  /* @offset(148) */
  x_BladeVariation : f32,
  /* @offset(152) */
  x_InstanceHue : f32,
  /* @offset(156) */
  Xhlslcc_UnusedX_TipDesat : f32,
  /* @offset(160) */
  x_VariationFade : f32,
  /* @offset(164) */
  x_WaveBrightness : f32,
  /* @offset(168) */
  x_WaveSunny : f32,
  /* @offset(172) */
  x_FlowerTips : f32,
  /* @offset(176) */
  x_FlowerTipStart : f32,
  /* @offset(180) */
  x_FlowerTipEnd : f32,
  /* @offset(184) */
  x_Occlusion : f32,
  /* @offset(188) */
  Xhlslcc_UnusedX_Wrap : f32,
  /* @offset(192) */
  x_NormalUp : f32,
  /* @offset(196) */
  Xhlslcc_UnusedX_ShadowStrength : f32,
  /* @offset(200) */
  Xhlslcc_UnusedX_SpecStrength : f32,
  /* @offset(204) */
  Xhlslcc_UnusedX_Smoothness : f32,
  /* @offset(208) */
  Xhlslcc_UnusedX_AmbientBoost : f32,
  /* @offset(212) */
  x_WindAmplitude : f32,
  /* @offset(216) */
  x_InteractionStrength : f32,
}

@group(1) @binding(4) var<uniform> x_21 : UnityPerDraw;

var<private> in_POSITION0 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> in_COLOR0 : vec4f;

@group(1) @binding(7) var<uniform> x_214 : VGlobals;

@group(0) @binding(5) var x_B612WindNoise : texture_2d<f32>;

@group(0) @binding(9) var sampler_B612WindNoise : sampler;

@group(1) @binding(6) var<uniform> x_293 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3f;

@group(0) @binding(7) var x_MacroNoise : texture_2d<f32>;

@group(0) @binding(11) var sampler_MacroNoise : sampler;

@group(0) @binding(8) var x_B612GrassTint : texture_2d<f32>;

@group(0) @binding(12) var sampler_B612GrassTint : sampler;

@group(0) @binding(6) var x_B612FlowerMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_B612FlowerMap : sampler;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD2 : vec4f;

var<private> gl_Position : vec4f;

const x_269 = vec2f(-0.5f);

const x_1347 = vec3f(-1.0f);

const x_1353 = vec3f(1.0f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec3f;
  var u_xlat22 : f32;
  var u_xlat11 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec4f;
  var u_xlat33 : f32;
  var u_xlat34 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat27 : vec2f;
  var u_xlat35 : f32;
  var u_xlat28 : vec2f;
  var u_xlat36 : f32;
  var u_xlat38 : f32;
  var u_xlatb11 : bool;
  var u_xlat39 : f32;
  var x_618 : vec3f;
  var u_xlat7 : vec3f;
  var x_703 : vec3f;
  var x_787 : vec3f;
  var x_871 : vec3f;
  var u_xlat17 : vec2f;
  var x_926 : vec3f;
  var u_xlatb24 : bool;
  var x_1144 : vec3f;
  var u_xlat24 : f32;
  var u_xlat13 : f32;
  var u_xlat25 : vec2f;
  var u_xlatb3 : bool;
  var u_xlat8 : vec3f;
  var u_xlat9 : vec3f;
  var u_xlat10 : vec3f;
  var x_1377 : vec3f;
  var u_xlatb35 : bool;
  var u_xlatb25 : vec2<bool>;
  var u_xlatb34 : bool;
  var x_1591 : vec3f;
  var u_xlatb22 : bool;
  var u_xlatb2 : vec2<bool>;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy * vec3f(1.37000000476837158203f, 1.37000000476837158203f, 0.70999997854232788086f));
  u_xlat0 = vec3f(((u_xlat0.zz + u_xlat0.xy)).xy, u_xlat0.z);
  u_xlat0 = vec3f(((u_xlat0.xy * vec2f(0.10310000181198120117f))).xy, u_xlat0.z);
  u_xlat0 = vec3f(fract(u_xlat0.xy).xy, u_xlat0.z);
  u_xlat1 = (u_xlat0.yxx + vec3f(33.3300018310546875f));
  u_xlat22 = dot(u_xlat0.xyx, u_xlat1);
  u_xlat0 = vec3f(((vec2f(u_xlat22) + u_xlat0.xy)).xy, u_xlat0.z);
  u_xlat11.x = (u_xlat0.y + u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat11.x);
  u_xlat0.x = fract(u_xlat0.x);
  u_xlat11.x = dot(x_21.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz, x_21.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat11.x = sqrt(u_xlat11.x);
  u_xlat1 = (in_POSITION0.yyy * x_21.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat1 = ((x_21.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat1);
  u_xlat1 = ((x_21.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat1);
  u_xlat1 = (u_xlat1 + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat2.x = dot(in_NORMAL0, x_21.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat2.y = dot(in_NORMAL0, x_21.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat2.z = dot(in_NORMAL0, x_21.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat22 = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat22 = max(u_xlat22, 1.17549435e-38f);
  u_xlat22 = inverseSqrt(u_xlat22);
  u_xlat3 = vec4f(((vec3f(u_xlat22) * u_xlat2.xyz)).xyz, u_xlat3.w);
  u_xlat4.w = in_COLOR0.x;
  u_xlat4.w = clamp(u_xlat4.w, 0.0f, 1.0f);
  u_xlat11.x = max(u_xlat11.x, 0.00100000004749745131f);
  u_xlat33 = (u_xlat11.x * in_POSITION0.y);
  u_xlat34 = max(u_xlat4.w, 0.15000000596046447754f);
  u_xlat33 = (u_xlat33 / u_xlat34);
  u_xlat33 = max(u_xlat33, 0.05000000074505805969f);
  u_xlat5 = vec4f(((x_214.x_B612WindDirection.zx * vec2f(-1.0f, 1.0f))).xy, u_xlat5.zw);
  u_xlat6.x = dot(x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz, u_xlat5.xy);
  u_xlat34 = dot(x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz, x_214.x_B612WindDirection.xz);
  u_xlat6.y = (u_xlat34 + -(x_214.x_B612WindTime.x));
  u_xlat27 = (u_xlat6.xy * x_214.x_B612WindGust.yy);
  u_xlat27 = textureSampleLevel(x_B612WindNoise, sampler_B612WindNoise, u_xlat27, 0.0f).xy;
  u_xlat27 = (u_xlat27 + x_269);
  u_xlat34 = ((x_214.x_B612WindGust.x * 1.20000004768371582031f) + 0.60000002384185791016f);
  u_xlat34 = ((u_xlat27.x * u_xlat34) + 0.5f);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat11.x = sqrt(u_xlat11.x);
  u_xlat11.x = (u_xlat11.x * x_293.x_WindAmplitude);
  u_xlat35 = (x_214.x_B612WindDirection.w * x_214.x_B612WindTime.z);
  u_xlat11.x = (u_xlat11.x * u_xlat35);
  u_xlat35 = ((u_xlat34 * 1.04999995231628417969f) + 0.25f);
  u_xlat35 = (u_xlat11.x * u_xlat35);
  u_xlat6 = vec3f(((in_COLOR0.yy * vec2f(6.28318548202514648438f, 11.0f))).xy, u_xlat6.z);
  u_xlat28 = ((in_COLOR0.yy * vec2f(0.80000001192092895508f, 3.0f)) + vec2f(1.60000002384185791016f, 6.5f));
  u_xlat36 = (u_xlat28.y * x_214.x_B612WindTime.y);
  u_xlat27.x = ((x_214.x_B612WindTime.y * u_xlat28.x) + u_xlat6.x);
  u_xlat6.x = dot(x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz, vec2f(0.37000000476837158203f, 0.23000000417232513428f));
  u_xlat27.x = (u_xlat27.x + u_xlat6.x);
  u_xlat27.x = sin(u_xlat27.x);
  u_xlat6.x = max(x_214.x_B612WindGust.w, 0.10000000149011611938f);
  u_xlat36 = ((u_xlat36 * u_xlat6.x) + u_xlat6.y);
  u_xlat36 = ((u_xlat1.y * 7.0f) + u_xlat36);
  u_xlat36 = sin(u_xlat36);
  u_xlat38 = (u_xlat27.y * x_214.x_B612WindGust.z);
  u_xlat6 = vec3f(((vec2f(u_xlat35) * x_214.x_B612WindDirection.xz)).xy, u_xlat6.z);
  u_xlat28.x = (u_xlat27.x * 0.21999999880790710449f);
  u_xlat27.x = ((u_xlat27.x * 0.20000000298023223877f) + 0.85000002384185791016f);
  u_xlat5 = vec4f(((vec2f(u_xlat35) * u_xlat5.xy)).xy, u_xlat5.zw);
  u_xlat35 = ((u_xlat38 * 0.5f) + u_xlat28.x);
  u_xlat5 = vec4f(((vec2f(u_xlat35) * u_xlat5.xy)).xy, u_xlat5.zw);
  u_xlat5 = vec4f((((u_xlat6.xy * u_xlat27.xx) + u_xlat5.xy)).xy, u_xlat5.zw);
  u_xlat11.x = (u_xlat11.x * 0.10000000149011611938f);
  u_xlat27 = (u_xlat11.xx * x_214.x_B612WindDirection.xz);
  u_xlat5 = vec4f((((u_xlat27 * vec2f(u_xlat36)) + u_xlat5.xy)).xy, u_xlat5.zw);
  u_xlat11.x = (u_xlat4.w * u_xlat4.w);
  let x_475 = (u_xlat11.xx * u_xlat5.xy);
  u_xlat5 = vec4f(x_475.x, u_xlat5.y, x_475.y, u_xlat5.w);
  u_xlat11.x = dot(u_xlat5.xz, u_xlat5.xz);
  u_xlat35 = (u_xlat33 + u_xlat33);
  u_xlat5.y = (-(u_xlat11.x) / u_xlat35);
  u_xlatb11 = (0.0f < x_214.x_B612Interactor.w);
  if (u_xlatb11) {
    u_xlat6 = vec3f(((-(x_214.x_B612Interactor.xz) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz)).xy, u_xlat6.z);
    u_xlat11.x = dot(u_xlat6.xy, u_xlat6.xy);
    u_xlat35 = (x_214.x_B612Interactor.w + 3.0f);
    u_xlat35 = (u_xlat35 * u_xlat35);
    u_xlatb11 = (u_xlat35 >= u_xlat11.x);
    if (u_xlatb11) {
      u_xlatb11 = (0.0f < x_214.x_B612InteractorTrail[0i].w);
      u_xlat6 = (-(x_214.x_B612InteractorTrail[0i].xzy) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy);
      u_xlat35 = dot(u_xlat6.xy, u_xlat6.xy);
      u_xlat35 = sqrt(u_xlat35);
      u_xlat36 = (x_214.x_B612Interactor.w * -0.75f);
      u_xlat38 = (u_xlat35 + -(x_214.x_B612Interactor.w));
      u_xlat36 = (1.0f / u_xlat36);
      u_xlat38 = (u_xlat36 * u_xlat38);
      u_xlat38 = clamp(u_xlat38, 0.0f, 1.0f);
      u_xlat39 = ((u_xlat38 * -2.0f) + 3.0f);
      u_xlat38 = (u_xlat38 * u_xlat38);
      u_xlat38 = (u_xlat38 * u_xlat39);
      u_xlat38 = (u_xlat38 * x_214.x_B612InteractorTrail[0i].w);
      u_xlat28.x = ((-(abs(u_xlat6.z)) * 0.69999998807907104492f) + 1.0f);
      u_xlat28.x = max(u_xlat28.x, 0.0f);
      u_xlat38 = (u_xlat38 * u_xlat28.x);
      u_xlat35 = max(u_xlat35, 0.00100000004749745131f);
      u_xlat6 = vec3f(((u_xlat6.xy / vec2f(u_xlat35))).xy, u_xlat6.z);
      u_xlat6 = vec3f(u_xlat6.x, ((vec2f(u_xlat38) * u_xlat6.xy)).xy);
      u_xlat6.x = max(u_xlat38, 0.0f);
      if (u_xlatb11) {
        x_618 = u_xlat6;
      } else {
        x_618 = vec3f();
      }
      u_xlat6 = x_618;
      u_xlatb11 = (0.0f < x_214.x_B612InteractorTrail[1i].w);
      u_xlat7 = (-(x_214.x_B612InteractorTrail[1i].xzy) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy);
      u_xlat35 = dot(u_xlat7.xy, u_xlat7.xy);
      u_xlat35 = sqrt(u_xlat35);
      u_xlat38 = (u_xlat35 + -(x_214.x_B612Interactor.w));
      u_xlat38 = (u_xlat36 * u_xlat38);
      u_xlat38 = clamp(u_xlat38, 0.0f, 1.0f);
      u_xlat39 = ((u_xlat38 * -2.0f) + 3.0f);
      u_xlat38 = (u_xlat38 * u_xlat38);
      u_xlat38 = (u_xlat38 * u_xlat39);
      u_xlat38 = (u_xlat38 * x_214.x_B612InteractorTrail[1i].w);
      u_xlat39 = ((-(abs(u_xlat7.z)) * 0.69999998807907104492f) + 1.0f);
      u_xlat39 = max(u_xlat39, 0.0f);
      u_xlat38 = (u_xlat38 * u_xlat39);
      u_xlat35 = max(u_xlat35, 0.00100000004749745131f);
      u_xlat7 = vec3f(((u_xlat7.xy / vec2f(u_xlat35))).xy, u_xlat7.z);
      u_xlat7 = vec3f(u_xlat7.x, (((u_xlat7.xy * vec2f(u_xlat38)) + u_xlat6.yz)).xy);
      u_xlat7.x = max(u_xlat38, u_xlat6.x);
      if (u_xlatb11) {
        x_703 = u_xlat7;
      } else {
        x_703 = u_xlat6;
      }
      u_xlat6 = x_703;
      u_xlatb11 = (0.0f < x_214.x_B612InteractorTrail[2i].w);
      u_xlat7 = (-(x_214.x_B612InteractorTrail[2i].xzy) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy);
      u_xlat35 = dot(u_xlat7.xy, u_xlat7.xy);
      u_xlat35 = sqrt(u_xlat35);
      u_xlat38 = (u_xlat35 + -(x_214.x_B612Interactor.w));
      u_xlat38 = (u_xlat36 * u_xlat38);
      u_xlat38 = clamp(u_xlat38, 0.0f, 1.0f);
      u_xlat39 = ((u_xlat38 * -2.0f) + 3.0f);
      u_xlat38 = (u_xlat38 * u_xlat38);
      u_xlat38 = (u_xlat38 * u_xlat39);
      u_xlat38 = (u_xlat38 * x_214.x_B612InteractorTrail[2i].w);
      u_xlat39 = ((-(abs(u_xlat7.z)) * 0.69999998807907104492f) + 1.0f);
      u_xlat39 = max(u_xlat39, 0.0f);
      u_xlat38 = (u_xlat38 * u_xlat39);
      u_xlat35 = max(u_xlat35, 0.00100000004749745131f);
      u_xlat7 = vec3f(((u_xlat7.xy / vec2f(u_xlat35))).xy, u_xlat7.z);
      u_xlat7 = vec3f(u_xlat7.x, (((u_xlat7.xy * vec2f(u_xlat38)) + u_xlat6.yz)).xy);
      u_xlat7.x = max(u_xlat38, u_xlat6.x);
      if (u_xlatb11) {
        x_787 = u_xlat7;
      } else {
        x_787 = u_xlat6;
      }
      u_xlat6 = x_787;
      u_xlatb11 = (0.0f < x_214.x_B612InteractorTrail[3i].w);
      u_xlat7 = (-(x_214.x_B612InteractorTrail[3i].xzy) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy);
      u_xlat35 = dot(u_xlat7.xy, u_xlat7.xy);
      u_xlat35 = sqrt(u_xlat35);
      u_xlat38 = (u_xlat35 + -(x_214.x_B612Interactor.w));
      u_xlat36 = (u_xlat36 * u_xlat38);
      u_xlat36 = clamp(u_xlat36, 0.0f, 1.0f);
      u_xlat38 = ((u_xlat36 * -2.0f) + 3.0f);
      u_xlat36 = (u_xlat36 * u_xlat36);
      u_xlat36 = (u_xlat36 * u_xlat38);
      u_xlat36 = (u_xlat36 * x_214.x_B612InteractorTrail[3i].w);
      u_xlat38 = ((-(abs(u_xlat7.z)) * 0.69999998807907104492f) + 1.0f);
      u_xlat38 = max(u_xlat38, 0.0f);
      u_xlat36 = (u_xlat36 * u_xlat38);
      u_xlat35 = max(u_xlat35, 0.00100000004749745131f);
      u_xlat7 = vec3f(((u_xlat7.xy / vec2f(u_xlat35))).xy, u_xlat7.z);
      u_xlat7 = vec3f(u_xlat7.x, (((u_xlat7.xy * vec2f(u_xlat36)) + u_xlat6.yz)).xy);
      u_xlat7.x = max(u_xlat36, u_xlat6.x);
      if (u_xlatb11) {
        x_871 = u_xlat7;
      } else {
        x_871 = u_xlat6;
      }
      u_xlat6 = x_871;
      u_xlatb11 = (0.0f < u_xlat6.x);
      u_xlat35 = dot(u_xlat6.yz, u_xlat6.yz);
      u_xlat35 = sqrt(u_xlat35);
      u_xlat35 = max(u_xlat35, 0.00009999999747378752f);
      u_xlat17 = (u_xlat6.yz / vec2f(u_xlat35));
      u_xlat35 = (u_xlat33 * u_xlat6.x);
      u_xlat35 = (u_xlat35 * 0.85000002384185791016f);
      u_xlat35 = (u_xlat4.w * u_xlat35);
      u_xlat33 = (u_xlat33 * -(u_xlat6.x));
      u_xlat33 = (u_xlat33 * 0.60000002384185791016f);
      u_xlat7.y = (u_xlat4.w * u_xlat33);
      let x_922 = (vec2f(u_xlat35) * u_xlat17);
      u_xlat7 = vec3f(x_922.x, u_xlat7.y, x_922.y);
      if (u_xlatb11) {
        x_926 = u_xlat7;
      } else {
        x_926 = vec3f();
      }
      u_xlat6 = x_926;
    } else {
      u_xlat6.x = 0.0f;
      u_xlat6.y = 0.0f;
      u_xlat6.z = 0.0f;
    }
  } else {
    u_xlat6.x = 0.0f;
    u_xlat6.y = 0.0f;
    u_xlat6.z = 0.0f;
  }
  let x_948 = vec3f(x_293.x_InteractionStrength, x_293.x_InteractionStrength, x_293.x_InteractionStrength);
  u_xlat5 = vec4f((((u_xlat6 * vec3f(x_948.x, x_948.y, x_948.z)) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat1 = (u_xlat1 + u_xlat5.xyz);
  u_xlat11 = ((-(u_xlat2.xyz) * vec3f(u_xlat22)) + vec3f(0.0f, 1.0f, 0.0f));
  u_xlat11 = ((vec3f(x_293.x_NormalUp) * u_xlat11) + u_xlat3.xyz);
  u_xlat2.x = dot(u_xlat11, u_xlat11);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  vs_TEXCOORD1 = (u_xlat11 * u_xlat2.xxx);
  u_xlat11.x = (u_xlat34 * x_214.x_B612WindTime.z);
  u_xlat22 = x_214.x_B612WindDirection.w;
  u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
  u_xlat2 = (u_xlat1.yyyy * x_214.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat2 = ((x_214.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat1.xxxx) + u_xlat2);
  u_xlat2 = ((x_214.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat1.zzzz) + u_xlat2);
  gl_Position = (u_xlat2 + x_214.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat2 = vec4f(((-(x_214.x_WorldSpaceCameraPos) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat2.w);
  u_xlat33 = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat33 = sqrt(u_xlat33);
  u_xlat34 = max(x_293.x_VariationFade, 1.0f);
  u_xlat34 = (u_xlat33 / u_xlat34);
  u_xlat34 = (-(u_xlat34) + 1.0f);
  u_xlat34 = max(u_xlat34, 0.0f);
  u_xlat2.x = (in_COLOR0.y + -0.60000002384185791016f);
  u_xlat2 = vec4f((((vec2f(u_xlat34) * u_xlat2.xx) + vec2f(0.60000002384185791016f, -0.27999997138977050781f))).xy, u_xlat2.zw);
  u_xlatb24 = (u_xlat4.w < x_293.x_MidPoint);
  u_xlat35 = (u_xlat4.w / x_293.x_MidPoint);
  u_xlat3 = vec4f(((-(x_293.x_ColorRoot.xyz) + x_293.x_ColorMid.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((vec3f(u_xlat35) * u_xlat3.xyz) + x_293.x_ColorRoot.xyz)).xyz, u_xlat3.w);
  u_xlat35 = (u_xlat4.w + -(x_293.x_MidPoint));
  u_xlat36 = (-(x_293.x_MidPoint) + 1.0f);
  u_xlat35 = (u_xlat35 / u_xlat36);
  u_xlat5 = vec4f(((-(x_293.x_ColorMid.xyz) + x_293.x_ColorTip.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((vec3f(u_xlat35) * u_xlat5.xyz) + x_293.x_ColorMid.xyz)).xyz, u_xlat5.w);
  if (u_xlatb24) {
    x_1144 = u_xlat3.xyz;
  } else {
    x_1144 = u_xlat5.xyz;
  }
  u_xlat3 = vec4f(x_1144.xyz, u_xlat3.w);
  u_xlat24 = ((-(x_293.x_BladeVariation) * 0.60000002384185791016f) + 1.0f);
  u_xlat2.x = ((x_293.x_BladeVariation * u_xlat2.x) + u_xlat24);
  let x_1174 = (u_xlat2.xxx * u_xlat3.xyz);
  u_xlat2 = vec4f(x_1174.x, u_xlat2.y, x_1174.yz);
  u_xlat3 = vec4f((((u_xlat4.ww * vec2f(0.19999998807907104492f, 0.60000002384185791016f)) + vec2f(0.80000001192092895508f, 0.40000000596046447754f))).xy, u_xlat3.zw);
  u_xlat13 = (u_xlat2.y * 8.33333301544189453125f);
  u_xlat13 = clamp(u_xlat13, 0.0f, 1.0f);
  u_xlat25.x = ((u_xlat13 * -2.0f) + 3.0f);
  u_xlat13 = (u_xlat13 * u_xlat13);
  u_xlat13 = (u_xlat13 * u_xlat25.x);
  u_xlat13 = (u_xlat13 * x_293.x_StrawAmount);
  u_xlat13 = (u_xlat4.w * u_xlat13);
  let x_1224 = ((x_293.x_ColorDry.xyz * u_xlat3.xxx) + -(u_xlat2.xzw));
  u_xlat3 = vec4f(x_1224.x, u_xlat3.y, x_1224.yz);
  u_xlat2 = vec4f((((vec3f(u_xlat13) * u_xlat3.xzw) + u_xlat2.xzw)).xyz, u_xlat2.w);
  let x_1249 = vec4f(x_293.x_MacroTiling, x_293.x_MacroTiling, x_293.x_MacroTiling, x_293.x_MacroTiling);
  u_xlat5 = (x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].zxxz * vec4f(x_1249.x, x_1249.y, x_1249.z, x_1249.w));
  u_xlat35 = textureSampleLevel(x_MacroNoise, sampler_MacroNoise, u_xlat5.zw, 0.0f).x;
  u_xlat5 = ((u_xlat5 * vec4f(2.70000004768371582031f, 2.70000004768371582031f, 0.61000001430511474609f, 0.61000001430511474609f)) + vec4f(0.37000000476837158203f, 0.10999999940395355225f, 0.52999997138977050781f, 0.20999999344348907471f));
  u_xlat3.x = textureSampleLevel(x_MacroNoise, sampler_MacroNoise, u_xlat5.xy, 0.0f).x;
  u_xlat25.x = textureSampleLevel(x_MacroNoise, sampler_MacroNoise, u_xlat5.zw, 0.0f).x;
  u_xlat3.x = (u_xlat3.x * 0.30000001192092895508f);
  u_xlat35 = ((u_xlat35 * 0.69999998807907104492f) + u_xlat3.x);
  u_xlat5 = vec4f(max(x_293.x_ColorMid.xyz, vec3f(0.01999999955296516418f)).xyz, u_xlat5.w);
  u_xlat6 = (x_293.x_ColorLush.xyz / u_xlat5.xyz);
  u_xlat7 = (x_293.x_ColorSunny.xyz / u_xlat5.xyz);
  u_xlat5 = vec4f(((x_293.x_ColorDry.xyz / u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlatb3 = (u_xlat35 < 0.5f);
  u_xlat36 = (-(u_xlat35) + 0.5f);
  u_xlat36 = (u_xlat36 + u_xlat36);
  u_xlat36 = clamp(u_xlat36, 0.0f, 1.0f);
  u_xlat36 = (u_xlat36 * x_293.x_LushAmount);
  u_xlat8 = (u_xlat6 + x_1347);
  u_xlat8 = ((vec3f(u_xlat36) * u_xlat8) + x_1353);
  u_xlat35 = (u_xlat35 + -0.5f);
  u_xlat35 = (u_xlat35 + u_xlat35);
  u_xlat35 = clamp(u_xlat35, 0.0f, 1.0f);
  u_xlat35 = (u_xlat35 * x_293.x_SunnyAmount);
  u_xlat9 = (u_xlat7 + x_1347);
  u_xlat10 = ((vec3f(u_xlat35) * u_xlat9) + x_1353);
  if (u_xlatb3) {
    x_1377 = u_xlat8;
  } else {
    x_1377 = u_xlat10;
  }
  u_xlat8 = x_1377;
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat8)).xyz, u_xlat2.w);
  u_xlat35 = (u_xlat25.x + -0.62000000476837158203f);
  u_xlat35 = (u_xlat35 * 3.33333325386047363281f);
  u_xlat35 = clamp(u_xlat35, 0.0f, 1.0f);
  u_xlat3.x = ((u_xlat35 * -2.0f) + 3.0f);
  u_xlat35 = (u_xlat35 * u_xlat35);
  u_xlat35 = (u_xlat35 * u_xlat3.x);
  u_xlat35 = (u_xlat35 * x_293.x_DryPatchAmount);
  u_xlat35 = (u_xlat3.y * u_xlat35);
  u_xlat3 = vec4f(((u_xlat5.xyz + x_1347)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((vec3f(u_xlat35) * u_xlat3.xyz) + x_1353)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat3.xyz)).xyz, u_xlat2.w);
  u_xlatb35 = (0.0f < x_214.x_B612GrassTintRect.z);
  if (u_xlatb35) {
    u_xlat3 = vec4f(((-(x_214.x_B612GrassTintRect.xy) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz)).xy, u_xlat3.zw);
    u_xlat3 = vec4f(((u_xlat3.xy * x_214.x_B612GrassTintRect.zw)).xy, u_xlat3.zw);
    u_xlatb25 = ((u_xlat3.xyxy >= vec4f())).xy;
    u_xlatb35 = (u_xlatb25.y & u_xlatb25.x);
    u_xlatb25 = ((vec4f(1.0f) >= u_xlat3.xyxy)).xy;
    u_xlatb25.x = (u_xlatb25.y & u_xlatb25.x);
    u_xlatb35 = (u_xlatb35 & u_xlatb25.x);
    if (u_xlatb35) {
      u_xlat3 = vec4f(textureSampleLevel(x_B612GrassTint, sampler_B612GrassTint, u_xlat3.xy, 0.0f).xyz.xyz, u_xlat3.w);
      u_xlat3 = vec4f(((u_xlat2.xyz * u_xlat3.xyz)).xyz, u_xlat3.w);
      u_xlat2 = vec4f(((u_xlat3.xyz + u_xlat3.xyz)).xyz, u_xlat2.w);
    }
  }
  u_xlat35 = (u_xlat0.x * x_293.x_InstanceSunny);
  u_xlat3 = vec4f((((vec2f(u_xlat34) * vec2f(0.60000002384185791016f, 0.5f)) + vec2f(0.40000000596046447754f, 0.5f))).xy, u_xlat3.zw);
  u_xlat34 = (u_xlat35 * u_xlat3.x);
  u_xlat5 = vec4f((((vec3f(u_xlat34) * u_xlat9) + x_1353)).xyz, u_xlat5.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat5.xyz)).xyz, u_xlat2.w);
  u_xlat25 = (u_xlat0.xx * vec2f(7.13000011444091796875f, 13.36999988555908203125f));
  u_xlat25 = fract(u_xlat25);
  u_xlat25 = (u_xlat25 + x_269);
  u_xlat34 = (u_xlat25.x + u_xlat25.x);
  u_xlat34 = (u_xlat34 * x_293.x_InstanceBrightness);
  u_xlat34 = ((u_xlat34 * u_xlat3.x) + 1.0f);
  u_xlat2 = vec4f(((vec3f(u_xlat34) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlatb34 = (u_xlat25.y < 0.0f);
  if (u_xlatb34) {
    x_1591 = u_xlat6;
  } else {
    x_1591 = u_xlat7;
  }
  u_xlat5 = vec4f(x_1591.xyz, u_xlat5.w);
  u_xlat34 = (abs(u_xlat25.y) + abs(u_xlat25.y));
  u_xlat34 = (u_xlat34 * x_293.x_InstanceHue);
  u_xlat34 = (u_xlat3.y * u_xlat34);
  u_xlat3 = vec4f(((u_xlat5.xyz + x_1347)).xyz, u_xlat3.w);
  u_xlat3 = vec4f((((vec3f(u_xlat34) * u_xlat3.xyz) + x_1353)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat3.xyz)).xyz, u_xlat2.w);
  u_xlat11.x = ((u_xlat11.x * u_xlat22) + -0.44999998807907104492f);
  u_xlat11.x = (u_xlat11.x * 1.79999995231628417969f);
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat11.x = (u_xlat4.w * u_xlat11.x);
  u_xlat22 = (u_xlat11.x * x_293.x_WaveSunny);
  u_xlat3 = vec4f((((vec3f(u_xlat22) * u_xlat9) + x_1353)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((u_xlat2.xyz * u_xlat3.xyz)).xyz, u_xlat2.w);
  u_xlat11.x = ((u_xlat11.x * x_293.x_WaveBrightness) + 1.0f);
  u_xlat2 = vec4f(((u_xlat11.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat11.x = (-(x_293.x_Occlusion) + 1.0f);
  u_xlat22 = (-(u_xlat11.x) + 1.0f);
  u_xlat11.x = ((in_COLOR0.z * u_xlat22) + u_xlat11.x);
  u_xlat4 = vec4f(((u_xlat11.xxx * u_xlat2.xyz)).xyz, u_xlat4.w);
  u_xlatb11 = (0.0f < x_214.x_B612FlowerMapRect.z);
  u_xlatb22 = (0.0f < x_293.x_FlowerTips);
  u_xlatb11 = (u_xlatb22 & u_xlatb11);
  if (u_xlatb11) {
    u_xlat11 = vec3f(((-(x_214.x_B612FlowerMapRect.xy) + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i].xz)).xy, u_xlat11.z);
    u_xlat11 = vec3f(((u_xlat11.xy * x_214.x_B612FlowerMapRect.zw)).xy, u_xlat11.z);
    u_xlatb2 = ((u_xlat11.xyxx >= vec4f())).xy;
    u_xlatb34 = (u_xlatb2.y & u_xlatb2.x);
    u_xlatb2 = ((vec4f(1.0f, 1.0f, 0.0f, 0.0f) >= u_xlat11.xyxx)).xy;
    u_xlatb2.x = (u_xlatb2.y & u_xlatb2.x);
    u_xlatb34 = (u_xlatb34 & u_xlatb2.x);
    if (u_xlatb34) {
      u_xlat2 = textureSampleLevel(x_B612FlowerMap, sampler_B612FlowerMap, u_xlat11.xy, 0.0f);
      u_xlat11.x = (-(x_293.x_FlowerTipStart) + x_293.x_FlowerTipEnd);
      u_xlat22 = (u_xlat33 + -(x_293.x_FlowerTipStart));
      u_xlat11.x = (1.0f / u_xlat11.x);
      u_xlat11.x = (u_xlat11.x * u_xlat22);
      u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
      u_xlat22 = ((u_xlat11.x * -2.0f) + 3.0f);
      u_xlat11.x = (u_xlat11.x * u_xlat11.x);
      u_xlat11.x = (u_xlat11.x * u_xlat22);
      u_xlat0.x = (u_xlat0.x * 3.70000004768371582031f);
      u_xlat0.x = ((in_COLOR0.y * 7.30999994277954101562f) + u_xlat0.x);
      u_xlat0.x = fract(u_xlat0.x);
      u_xlat22 = (u_xlat2.w * x_293.x_FlowerTips);
      u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
      u_xlatb0 = (u_xlat22 >= u_xlat0.x);
      u_xlat0.x = select(0.0f, 1.0f, u_xlatb0);
      u_xlat22 = (u_xlat4.w + -0.44999998807907104492f);
      u_xlat22 = (u_xlat22 * 2.49999976158142089844f);
      u_xlat22 = clamp(u_xlat22, 0.0f, 1.0f);
      u_xlat33 = ((u_xlat22 * -2.0f) + 3.0f);
      u_xlat22 = (u_xlat22 * u_xlat22);
      u_xlat22 = (u_xlat22 * u_xlat33);
      u_xlat0.x = (u_xlat22 * u_xlat0.x);
      u_xlat0.x = (u_xlat11.x * u_xlat0.x);
      u_xlat11 = ((u_xlat2.xyz * vec3f(1.08000004291534423828f)) + -(u_xlat4.xyz));
      u_xlat4 = vec4f((((u_xlat0.xxx * u_xlat11) + u_xlat4.xyz)).xyz, u_xlat4.w);
    }
  }
  vs_TEXCOORD0 = u_xlat1;
  vs_TEXCOORD3 = 0.0f;
  vs_TEXCOORD2 = u_xlat4;
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @location(3)
  vs_TEXCOORD3_1 : f32,
  @location(2)
  vs_TEXCOORD2_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(2) in_COLOR0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD2);
}

//Assets/Shared/Rendering/Shaders/B612_Grass.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

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
  x_AmbientOcclusionParam : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(144) */
  unity_OrthoParams : vec4f,
  /* @offset(160) */
  x_ScaleBiasRt : vec4f,
  /* @offset(176) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(240) */
  x_B612SunDirection : vec4f,
  /* @offset(256) */
  x_B612VegTint : vec4f,
  /* @offset(272) */
  x_B612VegParams : vec4f,
}

alias Arr_1 = array<vec4f, 20u>;

alias Arr_2 = array<vec4f, 32u>;

alias Arr_3 = array<vec4f, 128u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowFadeParams : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedX_AdditionalShadowmapSize : vec4f,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_2,
  /* @offset(1040) */
  hlslcc_mtx4x4_AdditionalLightsWorldToShadow : Arr_3,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_ColorRoot : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_ColorMid : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_ColorTip : vec4f,
  /* @offset(48) */
  x_ColorTrans : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_ColorLush : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_ColorSunny : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_ColorDry : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_MidPoint : f32,
  /* @offset(116) */
  x_TransAmount : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_MacroTiling : f32,
  /* @offset(124) */
  Xhlslcc_UnusedX_LushAmount : f32,
  /* @offset(128) */
  Xhlslcc_UnusedX_SunnyAmount : f32,
  /* @offset(132) */
  Xhlslcc_UnusedX_DryPatchAmount : f32,
  /* @offset(136) */
  Xhlslcc_UnusedX_StrawAmount : f32,
  /* @offset(140) */
  Xhlslcc_UnusedX_InstanceSunny : f32,
  /* @offset(144) */
  Xhlslcc_UnusedX_InstanceBrightness : f32,
  /* @offset(148) */
  Xhlslcc_UnusedX_BladeVariation : f32,
  /* @offset(152) */
  Xhlslcc_UnusedX_InstanceHue : f32,
  /* @offset(156) */
  x_TipDesat : f32,
  /* @offset(160) */
  Xhlslcc_UnusedX_VariationFade : f32,
  /* @offset(164) */
  Xhlslcc_UnusedX_WaveBrightness : f32,
  /* @offset(168) */
  Xhlslcc_UnusedX_WaveSunny : f32,
  /* @offset(172) */
  Xhlslcc_UnusedX_FlowerTips : f32,
  /* @offset(176) */
  Xhlslcc_UnusedX_FlowerTipStart : f32,
  /* @offset(180) */
  Xhlslcc_UnusedX_FlowerTipEnd : f32,
  /* @offset(184) */
  Xhlslcc_UnusedX_Occlusion : f32,
  /* @offset(188) */
  x_Wrap : f32,
  /* @offset(192) */
  Xhlslcc_UnusedX_NormalUp : f32,
  /* @offset(196) */
  x_ShadowStrength : f32,
  /* @offset(200) */
  x_SpecStrength : f32,
  /* @offset(204) */
  x_Smoothness : f32,
  /* @offset(208) */
  x_AmbientBoost : f32,
  /* @offset(212) */
  Xhlslcc_UnusedX_WindAmplitude : f32,
  /* @offset(216) */
  Xhlslcc_UnusedX_InteractionStrength : f32,
}

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 4u>;

alias Arr_6 = array<vec4f, 2u>;

alias Arr_7 = array<vec4f, 4u>;

alias Arr_8 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_4,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_5,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_6,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_7,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_8,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_9 = array<vec4f, 32u>;

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_14 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_9,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_10,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_11,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_12,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_13,
  /* @offset(2560) */
  Xhlslcc_UnusedX_AdditionalLightsLayerMasks : Arr_14,
}

alias Arr_15 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_15,
}

alias Arr_16 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_16,
}

var<private> gl_FragCoord : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(0) var<uniform> x_99 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(5) var<uniform> x_196 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(6) var<uniform> x_301 : UnityPerMaterial;

@group(0) @binding(0) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD2 : vec4f;

@group(1) @binding(4) var<uniform> x_629 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_754 : AdditionalLights;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(1) @binding(2) var<uniform> x_1181 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_1347 : urp_TileBuffer;

var<private> SV_Target0 : vec4f;

fn int_bitfieldExtract_i1_i1_i1_(value : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var x_30 : i32;
  let x_22 = *(value);
  let x_23 = *(offset_1);
  if (((*(offset_1) + *(bits)) < 32i)) {
    x_30 = *(bits);
  } else {
    x_30 = (32i - *(offset_1));
  }
  let x_37 = x_30;
  return extractBits(x_22, u32(x_23), u32(x_37));
}

fn uint_bitfieldExtract_u1_i1_i1_(value_1 : ptr<function, u32>, offset_2 : ptr<function, i32>, bits_1 : ptr<function, i32>) -> u32 {
  let x_41 = *(value_1);
  let x_42 = *(offset_2);
  let x_46 = *(bits_1);
  return ((x_41 >> bitcast<u32>(x_42)) & bitcast<u32>(~((-1i << bitcast<u32>(x_46)))));
}

const x_153 = vec2f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat12 : vec3f;
  var u_xlat2 : vec3f;
  var x_145 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat35 : f32;
  var u_xlat4 : vec3f;
  var txVec0 : vec3f;
  var u_xlat14 : f32;
  var u_xlatb14 : bool;
  var u_xlatb36 : bool;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat5 : f32;
  var u_xlat16 : vec3f;
  var u_xlat27 : f32;
  var u_xlat6 : vec3f;
  var u_xlat39 : f32;
  var u_xlat7 : f32;
  var u_xlat8 : vec4f;
  var u_xlat18 : vec3f;
  var u_xlat29 : f32;
  var u_xlat23 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec3f;
  var u_xlat33 : f32;
  var u_xlatu33 : u32;
  var u_xlatu35 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatb5 : bool;
  var u_xlati39 : i32;
  var u_xlati5 : i32;
  var u_xlatb39 : bool;
  var u_xlatb8 : vec4<bool>;
  var u_xlat41 : f32;
  var u_xlat19 : f32;
  var x_901 : f32;
  var x_910 : f32;
  var txVec1 : vec3f;
  var u_xlatu12 : vec2u;
  var u_xlatu3 : vec3u;
  var u_xlati12 : i32;
  var u_xlatu1 : vec3u;
  var u_xlat34 : f32;
  var u_xlat1 : f32;
  var x_1106 : f32;
  var u_xlatu23 : u32;
  var u_xlati34 : i32;
  var u_xlatu34 : u32;
  var u_xlati2 : vec2i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati24 : vec2i;
  var u_xlati3 : vec3i;
  var u_xlati23 : vec2i;
  var u_xlatu2 : vec4u;
  var u_xlatu4 : vec2u;
  var u_xlatb26 : bool;
  var u_xlatu37 : u32;
  var u_xlatb37 : bool;
  var u_xlatu26 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu8 : vec4u;
  var u_xlatu18 : vec2u;
  var u_xlati8 : vec4i;
  var param_9 : i32;
  var param_10 : i32;
  var param_11 : i32;
  var param_12 : i32;
  var param_13 : i32;
  var param_14 : i32;
  var param_15 : i32;
  var param_16 : i32;
  var param_17 : i32;
  var param_18 : i32;
  var param_19 : i32;
  var param_20 : i32;
  var u_xlati9 : vec2i;
  var u_xlati10 : vec4i;
  var u_xlati18 : vec3i;
  var u_xlati37 : i32;
  var u_xlati26 : i32;
  var u_xlat26 : f32;
  var x_1679 : f32;
  var x_1688 : f32;
  var txVec2 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, u_xlat0.w);
  u_xlatb1 = (x_99.unity_OrthoParams.w == 0.0f);
  u_xlat12 = (-(vs_TEXCOORD0) + x_99.x_WorldSpaceCameraPos);
  u_xlat2.x = dot(u_xlat12, u_xlat12);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  u_xlat12 = (u_xlat12 * u_xlat2.xxx);
  u_xlat2.x = x_99.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat2.y = x_99.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat2.z = x_99.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb1) {
    x_145 = u_xlat12;
  } else {
    x_145 = u_xlat2;
  }
  u_xlat12 = x_145;
  let x_157 = x_99.x_ScaledScreenParams.xy;
  u_xlat3 = vec4f(((x_153 / vec2f(x_157.x, x_157.y))).xy, u_xlat3.zw);
  u_xlat3 = vec4f(((u_xlat3.xy * hlslcc_FragCoord.xy)).xy, u_xlat3.zw);
  u_xlat35 = ((u_xlat3.y * x_99.x_ScaleBiasRt.x) + x_99.x_ScaleBiasRt.y);
  u_xlat3.z = (-(u_xlat35) + 1.0f);
  u_xlat4 = (vs_TEXCOORD0.yyy * x_196.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz);
  u_xlat4 = ((x_196.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat4);
  u_xlat4 = ((x_196.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat4);
  u_xlat4 = (u_xlat4 + x_196.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz);
  let x_225 = u_xlat4.xy;
  txVec0 = vec3f(x_225.x, x_225.y, u_xlat4.z);
  u_xlat35 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat14 = (-(x_196.x_MainLightShadowParams.x) + 1.0f);
  u_xlat35 = ((u_xlat35 * x_196.x_MainLightShadowParams.x) + u_xlat14);
  u_xlatb14 = (0.0f >= u_xlat4.z);
  u_xlatb36 = (u_xlat4.z >= 1.0f);
  u_xlatb14 = (u_xlatb36 | u_xlatb14);
  u_xlat35 = select(u_xlat35, 1.0f, u_xlatb14);
  u_xlat4 = (vs_TEXCOORD0 + -(x_99.x_WorldSpaceCameraPos));
  u_xlat14 = dot(u_xlat4, u_xlat4);
  u_xlat36 = ((u_xlat14 * x_196.x_MainLightShadowParams.z) + x_196.x_MainLightShadowParams.w);
  u_xlat36 = clamp(u_xlat36, 0.0f, 1.0f);
  u_xlat37 = (-(u_xlat35) + 1.0f);
  u_xlat35 = ((u_xlat36 * u_xlat37) + u_xlat35);
  u_xlat35 = (u_xlat35 + -1.0f);
  u_xlat35 = ((x_301.x_ShadowStrength * u_xlat35) + 1.0f);
  let x_316 = u_xlat3;
  let x_319 = x_99.x_GlobalMipBias.x;
  let x_320 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_316.xz, x_319);
  u_xlat36 = x_320.x;
  u_xlat36 = (u_xlat36 + -(x_99.x_AmbientOcclusionParam.x));
  u_xlat36 = (u_xlat36 + 1.0f);
  u_xlat36 = clamp(u_xlat36, 0.0f, 1.0f);
  u_xlat37 = (u_xlat36 + -1.0f);
  u_xlat37 = ((x_99.x_AmbientOcclusionParam.w * u_xlat37) + 1.0f);
  u_xlat5 = dot(u_xlat0.xyz, x_99.x_MainLightPosition.xyz);
  u_xlat16.x = (vs_TEXCOORD2.w * x_301.x_TipDesat);
  u_xlat16.x = (u_xlat16.x * vs_TEXCOORD2.w);
  u_xlat27 = ((u_xlat5 * 2.0f) + 0.30000001192092895508f);
  u_xlat27 = clamp(u_xlat27, 0.0f, 1.0f);
  u_xlat16.x = (u_xlat27 * u_xlat16.x);
  u_xlat16.x = (u_xlat35 * u_xlat16.x);
  u_xlat27 = dot(vs_TEXCOORD2.xyz, vec3f(0.30000001192092895508f, 0.58999997377395629883f, 0.10999999940395355225f));
  u_xlat6 = ((vec3f(u_xlat27) * vec3f(1.03999996185302734375f, 1.0f, 0.89999997615814208984f)) + -(vs_TEXCOORD2.xyz));
  u_xlat16 = ((u_xlat16.xxx * u_xlat6) + vs_TEXCOORD2.xyz);
  u_xlat6 = (u_xlat16 * x_99.x_MainLightColor.xyz);
  u_xlat39 = (u_xlat5 + x_301.x_Wrap);
  u_xlat7 = (x_301.x_Wrap + 1.0f);
  u_xlat39 = (u_xlat39 / u_xlat7);
  u_xlat39 = clamp(u_xlat39, 0.0f, 1.0f);
  u_xlat39 = (u_xlat35 * u_xlat39);
  u_xlat37 = (u_xlat37 * u_xlat39);
  u_xlat39 = dot(u_xlat12, -(x_99.x_MainLightPosition.xyz));
  u_xlat39 = clamp(u_xlat39, 0.0f, 1.0f);
  u_xlat39 = (u_xlat39 * u_xlat39);
  u_xlat8 = (x_99.x_B612VegTint.wxyz + vec4f(-1.0f));
  u_xlat8 = ((x_99.x_B612SunDirection.wwww * u_xlat8) + vec4f(1.0f));
  u_xlat18.x = (u_xlat8.x * x_301.x_TransAmount);
  u_xlat29 = ((vs_TEXCOORD2.w * 0.64999997615814208984f) + 0.34999999403953552246f);
  u_xlat18.x = (u_xlat29 * u_xlat18.x);
  u_xlat5 = -(u_xlat5);
  u_xlat5 = clamp(u_xlat5, 0.0f, 1.0f);
  u_xlat5 = (u_xlat5 * 0.20000000298023223877f);
  u_xlat5 = ((u_xlat39 * u_xlat39) + u_xlat5);
  u_xlat5 = (u_xlat5 * u_xlat18.x);
  u_xlat18 = (u_xlat8.yzw * x_301.x_ColorTrans.xyz);
  u_xlat18 = (u_xlat18 * x_99.x_MainLightColor.xyz);
  u_xlat5 = (u_xlat35 * u_xlat5);
  u_xlat18 = (vec3f(u_xlat5) * u_xlat18);
  u_xlat6 = ((u_xlat6 * vec3f(u_xlat37)) + u_xlat18);
  u_xlat12 = (u_xlat12 + x_99.x_MainLightPosition.xyz);
  u_xlat37 = dot(u_xlat12, u_xlat12);
  u_xlat37 = max(u_xlat37, 1.17549435e-38f);
  u_xlat37 = inverseSqrt(u_xlat37);
  u_xlat12 = (u_xlat12 * vec3f(u_xlat37));
  u_xlat37 = ((x_301.x_Smoothness * 10.0f) + 1.0f);
  u_xlat37 = exp2(u_xlat37);
  u_xlat18 = ((u_xlat16 * vec3f(2.0f)) + vec3f(-1.0f));
  u_xlat18 = ((u_xlat18 * vec3f(0.60000002384185791016f)) + vec3f(1.0f));
  u_xlat18 = (u_xlat18 * x_99.x_MainLightColor.xyz);
  u_xlat12.x = dot(u_xlat0.xyz, u_xlat12);
  u_xlat12.x = clamp(u_xlat12.x, 0.0f, 1.0f);
  u_xlat12.x = log2(u_xlat12.x);
  u_xlat12.x = (u_xlat12.x * u_xlat37);
  u_xlat12.x = exp2(u_xlat12.x);
  u_xlat12.x = (u_xlat12.x * x_301.x_SpecStrength);
  u_xlat23 = (x_99.x_B612VegParams.yx + vec2f(-1.0f));
  u_xlat23 = ((x_99.x_B612SunDirection.ww * u_xlat23) + x_153);
  u_xlat12.x = (u_xlat23.x * u_xlat12.x);
  u_xlat12.x = (u_xlat35 * u_xlat12.x);
  u_xlat12.x = (u_xlat12.x * vs_TEXCOORD2.w);
  u_xlat6 = ((u_xlat18 * u_xlat12.xxx) + u_xlat6);
  u_xlat0.w = 1.0f;
  u_xlat8.x = dot(x_629.unity_SHAr, u_xlat0);
  u_xlat8.y = dot(x_629.unity_SHAg, u_xlat0);
  u_xlat8.z = dot(x_629.unity_SHAb, u_xlat0);
  u_xlat9 = (u_xlat0.yzzx * u_xlat0.xyzz);
  u_xlat10.x = dot(x_629.unity_SHBr, u_xlat9);
  u_xlat10.y = dot(x_629.unity_SHBg, u_xlat9);
  u_xlat10.z = dot(x_629.unity_SHBb, u_xlat9);
  u_xlat33 = (u_xlat0.y * u_xlat0.y);
  u_xlat33 = ((u_xlat0.x * u_xlat0.x) + -(u_xlat33));
  u_xlat18 = ((x_629.unity_SHC.xyz * vec3f(u_xlat33)) + u_xlat10);
  u_xlat18 = (u_xlat18 + u_xlat8.xyz);
  u_xlat18 = (u_xlat16 * u_xlat18);
  u_xlat33 = (u_xlat36 * x_301.x_AmbientBoost);
  u_xlat33 = (u_xlat23.y * u_xlat33);
  u_xlat12 = ((u_xlat18 * vec3f(u_xlat33)) + u_xlat6);
  u_xlatu33 = u32(x_99.x_FPParams0.w);
  u_xlatu35 = min(u_xlatu33, 32u);
  u_xlat14 = ((u_xlat14 * x_196.x_AdditionalShadowFadeParams.x) + x_196.x_AdditionalShadowFadeParams.y);
  u_xlat14 = clamp(u_xlat14, 0.0f, 1.0f);
  u_xlat6 = u_xlat12;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu35)) {
    } else {
      break;
    }
    u_xlat18 = ((-(vs_TEXCOORD0) * x_754.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_754.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz);
    u_xlat37 = dot(u_xlat18, u_xlat18);
    u_xlat37 = max(u_xlat37, 0.00006103515625f);
    u_xlat5 = inverseSqrt(u_xlat37);
    u_xlat18 = (vec3f(u_xlat5) * u_xlat18);
    u_xlat5 = (1.0f / u_xlat37);
    u_xlat37 = (u_xlat37 * x_754.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat37 = ((-(u_xlat37) * u_xlat37) + 1.0f);
    u_xlat37 = max(u_xlat37, 0.0f);
    u_xlat37 = (u_xlat37 * u_xlat37);
    u_xlat37 = (u_xlat37 * u_xlat5);
    u_xlat5 = dot(x_754.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat18);
    u_xlat5 = ((u_xlat5 * x_754.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_754.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat5 = clamp(u_xlat5, 0.0f, 1.0f);
    u_xlat5 = (u_xlat5 * u_xlat5);
    u_xlat37 = (u_xlat37 * u_xlat5);
    u_xlatb5 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati39 = i32(x_196.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati5 = select(u_xlati39, -1i, u_xlatb5);
    u_xlatb39 = (u_xlati5 >= 0i);
    if (u_xlatb39) {
      u_xlatb39 = any(!((vec4f() == vec4f(x_196.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb39) {
        u_xlatb8 = vec4<bool>(((abs(u_xlat18.zzyz) >= abs(u_xlat18.xyxx))).xyz.xyz, u_xlatb8.w);
        u_xlatb39 = (u_xlatb8.y & u_xlatb8.x);
        let x_880 = ((-(u_xlat18.zyzx) < vec4f())).xyw;
        u_xlatb8 = vec4<bool>(x_880.xy, u_xlatb8.z, x_880.z);
        u_xlat8.x = select(4.0f, 5.0f, u_xlatb8.x);
        u_xlat8.y = select(2.0f, 3.0f, u_xlatb8.y);
        u_xlat41 = select(0.0f, 1.0f, u_xlatb8.w);
        if (u_xlatb8.z) {
          x_901 = u_xlat8.y;
        } else {
          x_901 = u_xlat41;
        }
        u_xlat19 = x_901;
        if (u_xlatb39) {
          x_910 = u_xlat8.x;
        } else {
          x_910 = u_xlat19;
        }
        u_xlat39 = x_910;
        u_xlati39 = i32(u_xlat39);
        u_xlati5 = (u_xlati5 + u_xlati39);
      }
      u_xlati5 = (u_xlati5 << bitcast<u32>(2i));
      u_xlat8 = (vs_TEXCOORD0.yyyy * x_196.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati5 + 1i)]);
      u_xlat8 = ((x_196.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati5] * vs_TEXCOORD0.xxxx) + u_xlat8);
      u_xlat8 = ((x_196.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati5 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat8);
      u_xlat8 = (u_xlat8 + x_196.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati5 + 3i)]);
      u_xlat8 = vec4f(((u_xlat8.xyz / u_xlat8.www)).xyz, u_xlat8.w);
      let x_965 = u_xlat8.xy;
      txVec1 = vec3f(x_965.x, x_965.y, u_xlat8.z);
      u_xlat5 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat39 = (1.0f + -(x_196.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat5 = ((u_xlat5 * x_196.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat39);
      u_xlatb39 = (0.0f >= u_xlat8.z);
      u_xlatb8.x = (u_xlat8.z >= 1.0f);
      u_xlatb39 = (u_xlatb39 | u_xlatb8.x);
      u_xlat5 = select(u_xlat5, 1.0f, u_xlatb39);
    } else {
      u_xlat5 = 1.0f;
    }
    u_xlat39 = (-(u_xlat5) + 1.0f);
    u_xlat5 = ((u_xlat14 * u_xlat39) + u_xlat5);
    u_xlat8 = vec4f(((u_xlat16 * x_754.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat8.w);
    u_xlat37 = (u_xlat37 * u_xlat5);
    u_xlat5 = dot(u_xlat0.xyz, u_xlat18);
    u_xlat5 = (u_xlat5 + x_301.x_Wrap);
    u_xlat5 = (u_xlat5 / u_xlat7);
    u_xlat5 = clamp(u_xlat5, 0.0f, 1.0f);
    u_xlat37 = (u_xlat37 * u_xlat5);
    u_xlat6 = ((u_xlat8.xyz * vec3f(u_xlat37)) + u_xlat6);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlat12 = vec3f(((u_xlat3.xz * x_99.x_FPParams1.xy)).xy, u_xlat12.z);
  u_xlatu12 = vec2u(u_xlat12.xy);
  let x_1073 = vec2u(x_99.x_FPParams1.zw);
  u_xlatu3 = vec3u(x_1073.x, u_xlatu3.y, x_1073.y);
  u_xlati12 = ((bitcast<i32>(u_xlatu12.y) * bitcast<i32>(u_xlatu3.x)) + bitcast<i32>(u_xlatu12.x));
  u_xlatu1.y = (u_xlatu3.z * bitcast<u32>(u_xlati12));
  u_xlat23.x = dot(-(u_xlat2), u_xlat4);
  u_xlat34 = log2(u_xlat23.x);
  if (u_xlatb1) {
    x_1106 = u_xlat34;
  } else {
    x_1106 = u_xlat23.x;
  }
  u_xlat1 = x_1106;
  u_xlat1 = ((u_xlat1 * x_99.x_FPParams0.x) + x_99.x_FPParams0.y);
  u_xlatu1.x = u32(u_xlat1);
  u_xlatu23 = u32(x_99.x_FPParams2.x);
  u_xlatu23 = (u_xlatu23 + 4294967295u);
  u_xlati34 = (bitcast<i32>(u_xlatu3.z) + 2i);
  u_xlatu1.x = min(u_xlatu23, u_xlatu1.x);
  u_xlatu23 = (bitcast<u32>(u_xlati34) * u_xlatu1.x);
  u_xlatu1.x = ((u_xlatu1.x * bitcast<u32>(u_xlati34)) + 2u);
  u_xlatu34 = (u_xlatu23 >> 2u);
  param = bitcast<i32>(u_xlatu23);
  param_1 = 0i;
  param_2 = 1i;
  let x_1165 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu23);
  param_4 = 1i;
  param_5 = 1i;
  let x_1171 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati2 = vec2i(x_1165, x_1171);
  u_xlati24 = bitcast<vec2i>((bitcast<vec2u>(u_xlati2.xx) & bitcast<vec2u>(x_1181.urp_ZBins[bitcast<i32>(u_xlatu34)].wy)));
  let x_1194 = ~(u_xlati2);
  u_xlati3 = vec3i(x_1194.x, u_xlati3.y, x_1194.y);
  u_xlati23 = bitcast<vec2i>((bitcast<vec2u>(u_xlati3.xx) & bitcast<vec2u>(x_1181.urp_ZBins[bitcast<i32>(u_xlatu34)].zx)));
  u_xlati23 = bitcast<vec2i>((bitcast<vec2u>(u_xlati23) | bitcast<vec2u>(u_xlati24)));
  u_xlati23.x = bitcast<i32>((bitcast<u32>(u_xlati2.y) & bitcast<u32>(u_xlati23.x)));
  u_xlati34 = bitcast<i32>((bitcast<u32>(u_xlati3.z) & bitcast<u32>(u_xlati23.y)));
  u_xlatu1.z = (bitcast<u32>(u_xlati34) | bitcast<u32>(u_xlati23.x));
  u_xlatu2.z = 0u;
  let x_1244 = u_xlatu1.yxz;
  u_xlatu2 = vec4u(x_1244.xy, u_xlatu2.z, x_1244.z);
  u_xlat3 = vec4f(u_xlat6.x, u_xlat3.y, u_xlat6.yz);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu34 = (u_xlatu2.w >> 16u);
    u_xlatu4 = u_xlatu2.zw;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb26 = (bitcast<i32>(u_xlatu4.x) == 0i);
      u_xlatu37 = (u_xlatu4.y & 65535u);
      u_xlatb37 = (u_xlatu34 >= u_xlatu37);
      u_xlatb26 = (u_xlatb37 & u_xlatb26);
      if (!(u_xlatb26)) {
        break;
      }
      param_6 = u_xlatu4.y;
      param_7 = 5i;
      param_8 = 11i;
      let x_1296 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu26 = x_1296;
      u_xlatu8 = (u_xlatu2.xxyy + vec4u(u_xlatu26));
      u_xlatu18 = (u_xlatu8.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu8.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_1317 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu8.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_1324 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu8.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_1331 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu8.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_1338 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati8 = vec4i(x_1317, x_1324, x_1331, x_1338);
      u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8.xx) & bitcast<vec2u>(x_1347.urp_Tiles[bitcast<i32>(u_xlatu18.x)].wy)));
      u_xlati10 = ~(u_xlati8);
      let x_1372 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_1347.urp_Tiles[bitcast<i32>(u_xlatu18.x)].zx)));
      u_xlati18 = vec3i(x_1372.x, u_xlati18.y, x_1372.y);
      let x_1381 = bitcast<vec2i>((bitcast<vec2u>(u_xlati18.xz) | bitcast<vec2u>(u_xlati9)));
      u_xlati18 = vec3i(x_1381.x, u_xlati18.y, x_1381.y);
      u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati8.y) & bitcast<u32>(u_xlati18.x)));
      u_xlati5 = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati18.z)));
      u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati37) | bitcast<u32>(u_xlati5)));
      let x_1418 = bitcast<vec2i>((bitcast<vec2u>(u_xlati8.zz) & bitcast<vec2u>(x_1181.urp_ZBins[bitcast<i32>(u_xlatu18.y)].wy)));
      u_xlati18 = vec3i(x_1418.x, u_xlati18.y, x_1418.y);
      u_xlati8 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati10.zz) & bitcast<vec2u>(x_1181.urp_ZBins[bitcast<i32>(u_xlatu18.y)].zx))).xy, u_xlati8.zw);
      u_xlati18 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati18.xz) | bitcast<vec2u>(u_xlati8.xy))).xy, u_xlati18.z);
      u_xlati5 = bitcast<i32>((bitcast<u32>(u_xlati8.w) & bitcast<u32>(u_xlati18.x)));
      u_xlati39 = bitcast<i32>((bitcast<u32>(u_xlati10.w) & bitcast<u32>(u_xlati18.y)));
      u_xlati5 = bitcast<i32>((bitcast<u32>(u_xlati5) | bitcast<u32>(u_xlati39)));
      u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati37) & bitcast<u32>(u_xlati5)));
      u_xlati5 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu4.y) & 31i)));
      u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati37) & bitcast<u32>(u_xlati5)));
      u_xlati26 = (bitcast<i32>(u_xlatu26) << bitcast<u32>(5i));
      u_xlatu26 = (u_xlatu34 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati26)))));
      u_xlatu26 = min(u_xlatu26, 31u);
      u_xlatu26 = (bitcast<u32>(-(bitcast<i32>(u_xlatu26))) + 31u);
      u_xlatu26 = (4294967295u >> (u_xlatu26 & 31u));
      u_xlatu4.x = (u_xlatu26 & bitcast<u32>(u_xlati37));
      u_xlati26 = (bitcast<i32>(u_xlatu4.y) + 32i);
      u_xlatu4.y = (bitcast<u32>(u_xlati26) & 4294967264u);
    }
    u_xlatu2.w = u_xlatu4.y;
    if ((u_xlatu4.x == 0u)) {
      break;
    }
    u_xlati34 = bitcast<i32>(firstTrailingBit(u_xlatu4.x));
    u_xlati26 = (1i << bitcast<u32>((u_xlati34 & 31i)));
    u_xlatu2.z = (bitcast<u32>(u_xlati26) ^ u_xlatu4.x);
    u_xlati26 = (bitcast<i32>(u_xlatu2.w) + -32i);
    u_xlati26 = bitcast<i32>((bitcast<u32>(u_xlati26) & 65504u));
    u_xlati34 = (u_xlati34 + u_xlati26);
    u_xlati34 = (bitcast<i32>(u_xlatu33) + u_xlati34);
    u_xlat18 = ((-(vs_TEXCOORD0) * x_754.x_AdditionalLightsPosition[u_xlati34].www) + x_754.x_AdditionalLightsPosition[u_xlati34].xyz);
    u_xlat26 = dot(u_xlat18, u_xlat18);
    u_xlat26 = max(u_xlat26, 0.00006103515625f);
    u_xlat37 = inverseSqrt(u_xlat26);
    u_xlat18 = (vec3f(u_xlat37) * u_xlat18);
    u_xlat37 = (1.0f / u_xlat26);
    u_xlat26 = (u_xlat26 * x_754.x_AdditionalLightsAttenuation[u_xlati34].x);
    u_xlat26 = ((-(u_xlat26) * u_xlat26) + 1.0f);
    u_xlat26 = max(u_xlat26, 0.0f);
    u_xlat26 = (u_xlat26 * u_xlat26);
    u_xlat26 = (u_xlat26 * u_xlat37);
    u_xlat37 = dot(x_754.x_AdditionalLightsSpotDir[u_xlati34].xyz, u_xlat18);
    u_xlat37 = ((u_xlat37 * x_754.x_AdditionalLightsAttenuation[u_xlati34].z) + x_754.x_AdditionalLightsAttenuation[u_xlati34].w);
    u_xlat37 = clamp(u_xlat37, 0.0f, 1.0f);
    u_xlat37 = (u_xlat37 * u_xlat37);
    u_xlat26 = (u_xlat37 * u_xlat26);
    u_xlatb37 = (u_xlati34 < 0i);
    u_xlati5 = i32(x_196.x_AdditionalShadowParams[u_xlati34].w);
    u_xlati37 = select(u_xlati5, -1i, u_xlatb37);
    u_xlatb5 = (u_xlati37 >= 0i);
    if (u_xlatb5) {
      u_xlatb5 = any(!((vec4f() == vec4f(x_196.x_AdditionalShadowParams[u_xlati34].z))));
      if (u_xlatb5) {
        u_xlatb8 = vec4<bool>(((abs(u_xlat18.zzyz) >= abs(u_xlat18.xyxx))).xyz.xyz, u_xlatb8.w);
        u_xlatb5 = (u_xlatb8.y & u_xlatb8.x);
        let x_1663 = ((-(u_xlat18.zyzx) < vec4f())).xyw;
        u_xlatb8 = vec4<bool>(x_1663.xy, u_xlatb8.z, x_1663.z);
        u_xlat8.x = select(4.0f, 5.0f, u_xlatb8.x);
        u_xlat8.y = select(2.0f, 3.0f, u_xlatb8.y);
        u_xlat39 = select(0.0f, 1.0f, u_xlatb8.w);
        if (u_xlatb8.z) {
          x_1679 = u_xlat8.y;
        } else {
          x_1679 = u_xlat39;
        }
        u_xlat39 = x_1679;
        if (u_xlatb5) {
          x_1688 = u_xlat8.x;
        } else {
          x_1688 = u_xlat39;
        }
        u_xlat5 = x_1688;
        u_xlati5 = i32(u_xlat5);
        u_xlati37 = (u_xlati37 + u_xlati5);
      }
      u_xlati37 = (u_xlati37 << bitcast<u32>(2i));
      u_xlat8 = (vs_TEXCOORD0.yyyy * x_196.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati37 + 1i)]);
      u_xlat8 = ((x_196.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati37] * vs_TEXCOORD0.xxxx) + u_xlat8);
      u_xlat8 = ((x_196.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati37 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat8);
      u_xlat8 = (u_xlat8 + x_196.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati37 + 3i)]);
      u_xlat8 = vec4f(((u_xlat8.xyz / u_xlat8.www)).xyz, u_xlat8.w);
      let x_1742 = u_xlat8.xy;
      txVec2 = vec3f(x_1742.x, x_1742.y, u_xlat8.z);
      u_xlat37 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat5 = (1.0f + -(x_196.x_AdditionalShadowParams[u_xlati34].x));
      u_xlat37 = ((u_xlat37 * x_196.x_AdditionalShadowParams[u_xlati34].x) + u_xlat5);
      u_xlatb5 = (0.0f >= u_xlat8.z);
      u_xlatb39 = (u_xlat8.z >= 1.0f);
      u_xlatb5 = (u_xlatb5 | u_xlatb39);
      u_xlat37 = select(u_xlat37, 1.0f, u_xlatb5);
    } else {
      u_xlat37 = 1.0f;
    }
    u_xlat5 = (-(u_xlat37) + 1.0f);
    u_xlat37 = ((u_xlat14 * u_xlat5) + u_xlat37);
    u_xlat8 = vec4f(((u_xlat16 * x_754.x_AdditionalLightsColor[u_xlati34].xyz)).xyz, u_xlat8.w);
    u_xlat34 = (u_xlat37 * u_xlat26);
    u_xlat26 = dot(u_xlat0.xyz, u_xlat18);
    u_xlat26 = (u_xlat26 + x_301.x_Wrap);
    u_xlat26 = (u_xlat26 / u_xlat7);
    u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
    u_xlat34 = (u_xlat34 * u_xlat26);
    let x_1821 = ((u_xlat8.xyz * vec3f(u_xlat34)) + u_xlat3.xzw);
    u_xlat3 = vec4f(x_1821.x, u_xlat3.y, x_1821.yz);
  }
  SV_Target0 = vec4f(u_xlat3.xzw.xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(1) vs_TEXCOORD1_param : vec3f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD2_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

