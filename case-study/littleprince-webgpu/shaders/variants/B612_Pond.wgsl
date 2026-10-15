//Assets/Levels/B612/Shaders/B612_Pond.shader
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
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
  vs_TEXCOORD1 = (u_xlat0.x * x_74.unity_FogParams.x);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  unity_FogColor : vec4f,
  /* @offset(240) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(304) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(368) */
  x_ScreenSize : vec4f,
  /* @offset(384) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(416) */
  x_B612SunDirection : vec4f,
  /* @offset(432) */
  x_B612WaterShallow : vec4f,
  /* @offset(448) */
  x_B612WaterDeep : vec4f,
  /* @offset(464) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2589 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_4081 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_5067 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_5244 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_5479 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : f32;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_744 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2883 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_2948 = vec2f(0.15999999642372131348f);

const x_3020 = vec3f(-2.5f, -0.5f, 1.5f);

const x_3419 = vec2f(0.08163200318813323975f);

const x_3438 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_3441 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_3448 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_3486 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_4112 = vec3f(-1.0f);

const x_4122 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat38 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat79 : vec2f;
  var u_xlat115 : f32;
  var u_xlat4 : vec4f;
  var u_xlat80 : f32;
  var u_xlat118 : f32;
  var u_xlatb42 : bool;
  var x_281 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat43 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat82 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat83 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat84 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat85 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb123 : bool;
  var u_xlat11 : vec3f;
  var u_xlat48 : vec3f;
  var u_xlat86 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat49 : vec3f;
  var u_xlat122 : f32;
  var u_xlat124 : f32;
  var u_xlat87 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat89 : vec2f;
  var u_xlat52 : vec3f;
  var u_xlat126 : f32;
  var u_xlat88 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat129 : f32;
  var u_xlat128 : f32;
  var u_xlat53 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat55 : vec2f;
  var u_xlat56 : vec3f;
  var u_xlat92 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat131 : f32;
  var u_xlat132 : f32;
  var u_xlatb58 : vec2<bool>;
  var u_xlat59 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat47 : vec2f;
  var u_xlat95 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat60 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat99 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat81 : f32;
  var u_xlat134 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat41 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat45 : vec3f;
  var u_xlat117 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb115 : bool;
  var x_2476 : vec3f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec4f;
  var u_xlat27 : vec4f;
  var u_xlatb24 : vec4<bool>;
  var u_xlat40 : f32;
  var u_xlatu40 : u32;
  var u_xlati40 : i32;
  var u_xlatb40 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb80 : bool;
  var u_xlat44 : vec3f;
  var u_xlat102 : vec2f;
  var u_xlat28 : vec4f;
  var u_xlat29 : vec4f;
  var u_xlat30 : vec4f;
  var u_xlat31 : vec4f;
  var u_xlat32 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat119 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat33 : vec4f;
  var u_xlat63 : vec2f;
  var u_xlat34 : vec2f;
  var u_xlat103 : vec2f;
  var u_xlat35 : vec4f;
  var u_xlat36 : vec4f;
  var u_xlat37 : vec4f;
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
  var u_xlatb43 : bool;
  var u_xlat120 : f32;
  var u_xlat121 : f32;
  var x_4549 : f32;
  var x_4592 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu82 : vec2u;
  var u_xlati6 : i32;
  var u_xlat39 : vec2f;
  var u_xlat0 : vec3f;
  var x_4985 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati39 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati44 : vec2i;
  var u_xlati45 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb44 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati87 : i32;
  var u_xlatu125 : u32;
  var u_xlat77 : vec2f;
  var u_xlatu45 : u32;
  var u_xlati121 : i32;
  var u_xlatu122 : u32;
  var u_xlatb47 : bool;
  var u_xlatu126 : u32;
  var u_xlatb126 : bool;
  var u_xlatu47 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati90 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati126 : i32;
  var u_xlati51 : i32;
  var u_xlati47 : i32;
  var u_xlatb45 : bool;
  var x_5545 : f32;
  var x_5561 : f32;
  var x_5577 : f32;
  var u_xlat51 : vec3f;
  var x_5636 : vec3f;
  var u_xlat127 : f32;
  var u_xlatb52 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_5692 : f32;
  var x_5705 : f32;
  var u_xlatu89 : vec2u;
  var u_xlati89 : i32;
  var u_xlat76 : f32;
  var u_xlat114 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat38 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat38, u_xlat38);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat38 = (u_xlat38 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat38;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat38 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat79 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat115 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat115, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat80 = max(u_xlat80, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat80))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat79.yx + u_xlat79.yx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat79, u_xlat79);
  u_xlat118 = max(u_xlat80, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat118))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb42 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb42) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat42 = vec3f(x_314.x, u_xlat42.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat43 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat82 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat82) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat83 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat82.x * 4.0f);
  u_xlat8 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat42 = vec3f(x_405.x, u_xlat42.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat84 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat84 = (u_xlat84 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat84;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat84 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat85 = (u_xlat42.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat85 = (u_xlat85 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat85));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat83.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat84 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat84 = max(vec2f(u_xlat115), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat84.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat84.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat85.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat85.x = sin(u_xlat85.x);
  u_xlat85.x = (u_xlat85.x * 43758.546875f);
  u_xlat85.x = fract(u_xlat85.x);
  u_xlat85.x = ((u_xlat85.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat85.x = (u_xlat85.x / u_xlat9.y);
  u_xlat85.x = (-(u_xlat85.x) + x_81.x_Time.y);
  u_xlatb123 = (u_xlat85.x >= 0.0f);
  u_xlat10.x = (u_xlat115 + -(x_142.x_BoilRadius));
  let x_745 = (u_xlat85.xx * x_744);
  u_xlat11 = vec3f(x_745.x, u_xlat11.y, x_745.y);
  u_xlat48.x = ((u_xlat85.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat86 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat10.x);
  u_xlat86 = (u_xlat86 / u_xlat48.x);
  u_xlat86 = (u_xlat86 * u_xlat86);
  u_xlat86 = (u_xlat86 * -1.44269502162933349609f);
  u_xlat86 = exp2(u_xlat86);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat49 = vec3f(x_804.x, u_xlat49.y, x_804.y);
  u_xlat122 = (u_xlat84.y * 6.66666650772094726562f);
  u_xlat122 = inverseSqrt(u_xlat122);
  let x_818 = (vec2f(u_xlat122) * u_xlat49.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat124 = exp2(u_xlat11.z);
  u_xlat87 = (u_xlat124 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat87 = (u_xlat11.x * u_xlat87);
  u_xlat86 = (u_xlat86 * u_xlat87);
  u_xlat87 = (u_xlat84.x * u_xlat85.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat87));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat86 = (u_xlat86 * u_xlat12.x);
  u_xlat86 = select(0.0f, u_xlat86, u_xlatb123);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_744);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat89 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat52 = vec3f(x_931.x, u_xlat52.y, x_931.y);
  let x_937 = (u_xlat52.xz / u_xlat89);
  u_xlat52 = vec3f(x_937.x, u_xlat52.y, x_937.y);
  let x_944 = (u_xlat52.xz * u_xlat52.xz);
  u_xlat52 = vec3f(x_944.x, u_xlat52.y, x_944.y);
  let x_950 = (u_xlat52.xz * x_949);
  u_xlat52 = vec3f(x_950.x, u_xlat52.y, x_950.y);
  let x_955 = exp2(u_xlat52.xz);
  u_xlat52 = vec3f(x_955.x, u_xlat52.y, x_955.y);
  u_xlat126 = exp2(u_xlat14.z);
  u_xlat88 = (u_xlat126 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat88 = (u_xlat88 * u_xlat14.x);
  u_xlat88 = (u_xlat88 * u_xlat52.x);
  u_xlat52 = vec3f(((u_xlat84.xx * u_xlat12.xy)).xy, u_xlat52.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat52.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat88 = ((u_xlat88 * u_xlat15.x) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat88, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat122) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_744);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat88 = exp2(u_xlat17.z);
  u_xlat129 = (u_xlat88 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat129 = (u_xlat129 * u_xlat17.x);
  u_xlat128 = (u_xlat52.z * u_xlat129);
  u_xlat128 = ((u_xlat128 * u_xlat15.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat128, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat53 = vec3f(x_1094.x, u_xlat53.y, x_1094.y);
  let x_1101 = (u_xlat53.xz / u_xlat9.yy);
  u_xlat53 = vec3f(x_1101.x, u_xlat53.y, x_1101.y);
  let x_1110 = (-(u_xlat53.xz) + x_81.x_Time.yy);
  u_xlat53 = vec3f(x_1110.x, u_xlat53.y, x_1110.y);
  u_xlatb16 = ((u_xlat53.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat53.xx * x_744);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat55 = ((u_xlat53.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat53.xz) + u_xlat10.xx);
  u_xlat56 = vec3f(x_1144.x, u_xlat56.y, x_1144.y);
  let x_1150 = (u_xlat56.xz / u_xlat55);
  u_xlat56 = vec3f(x_1150.x, u_xlat56.y, x_1150.y);
  let x_1157 = (u_xlat56.xz * u_xlat56.xz);
  u_xlat56 = vec3f(x_1157.x, u_xlat56.y, x_1157.y);
  let x_1162 = (u_xlat56.xz * x_949);
  u_xlat56 = vec3f(x_1162.x, u_xlat56.y, x_1162.y);
  let x_1167 = exp2(u_xlat56.xz);
  u_xlat56 = vec3f(x_1167.x, u_xlat56.y, x_1167.y);
  u_xlat128 = exp2(u_xlat18.z);
  u_xlat92.x = (u_xlat128 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat92.x = (u_xlat92.x * u_xlat18.x);
  u_xlat92.x = (u_xlat92.x * u_xlat56.x);
  u_xlat56 = vec3f(((u_xlat84.xx * u_xlat53.xz)).xy, u_xlat56.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat56.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat92.x = ((u_xlat92.x * u_xlat19.x) + u_xlat86);
  if (u_xlatb16.x) {
    x_1232 = u_xlat92.x;
  } else {
    x_1232 = u_xlat86;
  }
  u_xlat86 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat92 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat122) * u_xlat92);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat53.zz * x_744);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat131 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat131 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat132 = (u_xlat56.z * u_xlat19.x);
  u_xlat132 = ((u_xlat132 * u_xlat19.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat132, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb58 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_744);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat59 = vec3f(x_1350.x, u_xlat59.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat59.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat47.x = exp2(u_xlat21.z);
  u_xlat132 = (u_xlat47.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat132 = (u_xlat132 * u_xlat21.x);
  u_xlat132 = (u_xlat132 * u_xlat22.x);
  u_xlat95 = (u_xlat84.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat95));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat84.x = ((u_xlat132 * u_xlat22.x) + u_xlat86);
  if (u_xlatb58.x) {
    x_1450 = u_xlat84.x;
  } else {
    x_1450 = u_xlat86;
  }
  u_xlat84.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat122 = (u_xlat122 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_744);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat86 = exp2(u_xlat22.w);
  u_xlat122 = (u_xlat122 * u_xlat86);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat122 = (u_xlat122 * u_xlat22.x);
  u_xlat122 = (u_xlat122 * u_xlat22.y);
  u_xlat122 = ((u_xlat122 * u_xlat22.z) + u_xlat84.x);
  if (u_xlatb58.y) {
    x_1524 = u_xlat122;
  } else {
    x_1524 = u_xlat84.x;
  }
  u_xlat84.x = x_1524;
  u_xlat122 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat132 = (u_xlat115 / u_xlat122);
  u_xlat132 = (-(u_xlat132) + 1.0f);
  u_xlat132 = max(u_xlat132, 0.0f);
  u_xlat84.x = (u_xlat84.x * x_142.x_RingStrength);
  u_xlat84.x = (u_xlat132 * u_xlat84.x);
  u_xlat60 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat115))).xy, u_xlat23.zw);
  u_xlat99 = (x_376 / u_xlat60.xy);
  u_xlat23 = vec4f(((u_xlat99 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat132 = (u_xlat23.x * u_xlat24.x);
  u_xlat84.x = (u_xlat84.x * u_xlat132);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat84.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat84.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat81 = sin(u_xlat43.y);
  u_xlat81 = (u_xlat81 * 1.70000004768371582031f);
  u_xlat81 = ((u_xlat84.x * 6.28318548202514648438f) + u_xlat81);
  u_xlat81 = sin(u_xlat81);
  u_xlat81 = ((u_xlat81 * 0.25f) + 0.75f);
  u_xlat84.x = (u_xlat115 * -(u_xlat115));
  u_xlat132 = (u_xlat60.x * u_xlat60.x);
  u_xlat84.x = (u_xlat84.x / u_xlat132);
  u_xlat84.x = (u_xlat84.x * 1.44269502162933349609f);
  u_xlat84.x = exp2(u_xlat84.x);
  u_xlat134 = (u_xlat115 + u_xlat115);
  u_xlat132 = (u_xlat134 / u_xlat132);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat132));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat84.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat60 = vec3f(((u_xlat60.xx * u_xlat23.xw)).xy, u_xlat60.z);
  let x_1734 = ((u_xlat60.xy * vec2f(u_xlat81)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat84.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat43.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat43 = vec3f(x_1763.x, u_xlat43.y, x_1763.y);
  let x_1769 = u_xlat43;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_1786.x, u_xlat43.y, x_1786.y);
  u_xlat60 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat60.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat60.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat60.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat132 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat115 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat115);
  u_xlat132 = (1.0f / u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat132 = ((u_xlat115 * -2.0f) + 3.0f);
  u_xlat115 = (u_xlat115 * u_xlat115);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat84.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat43.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat115)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat115 = sqrt(u_xlat80);
  u_xlat60 = (vec3f(u_xlat115) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat60 = (u_xlat60 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat60 = clamp(u_xlat60, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat60 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat60 = (u_xlat60 * u_xlat60);
  u_xlat80 = (u_xlat60.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat60.xz) + x_376);
  u_xlat43 = vec3f(x_1932.x, u_xlat43.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat82.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat82.x = dot(u_xlat82.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat82.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat43.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat43.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat80 * u_xlat43.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat43 = vec3f(x_2080.x, u_xlat43.y, x_2080.y);
  u_xlat41 = dot(u_xlat79.yx, u_xlat43.xz);
  u_xlat41 = (abs(u_xlat41) * 4.0f);
  u_xlat41 = min(u_xlat41, 1.0f);
  u_xlat115 = max(u_xlat115, 0.00100000004749745131f);
  u_xlat79 = (-(u_xlat79) / vec2f(u_xlat115));
  let x_2105 = (u_xlat82.yy * u_xlat79.yx);
  u_xlat43 = vec3f(x_2105.x, u_xlat43.y, x_2105.y);
  let x_2115 = ((-(u_xlat43.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat43 = vec3f(x_2115.x, u_xlat43.y, x_2115.y);
  let x_2122 = (u_xlat43.xz * vec2f(2.38095235824584960938f));
  u_xlat43 = vec3f(x_2122.x, u_xlat43.y, x_2122.y);
  u_xlat79 = (u_xlat6.yy * u_xlat79);
  u_xlat79 = ((-(u_xlat79) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat79 = ((u_xlat79 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat43;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_2162.x, u_xlat43.y, x_2162.y);
  let x_2168 = u_xlat79;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat79 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat79 = (u_xlat83.yy * u_xlat79);
  u_xlat79 = ((u_xlat43.xz * u_xlat7.yy) + u_xlat79);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat79 = (u_xlat79 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat79);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat115 = ((u_xlat41 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat115)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat115 = dot(u_xlat3, u_xlat3);
  u_xlat115 = inverseSqrt(u_xlat115);
  u_xlat3 = (vec3f(u_xlat115) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat115 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat115) + 1.0f);
  u_xlat115 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat115 = (1.0f / u_xlat115);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat43 = vec3f(x_2286.x, u_xlat43.y, x_2286.y);
  let x_2294 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2294.x, u_xlat43.y, x_2294.y);
  let x_2302 = (u_xlat43.xz * x_81.x_ScreenSize.xy);
  u_xlat43 = vec3f(x_2302.x, u_xlat43.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat43.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat43 = vec3f(x_2331.x, u_xlat43.y, x_2331.y);
  let x_2341 = (-(u_xlat43.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat45 = vec3f(x_2341.x, u_xlat45.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat43.xx) + u_xlat45.xz);
  u_xlat43 = vec3f(x_2352.x, u_xlat43.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat43.xz);
  u_xlat43 = vec3f(x_2363.x, u_xlat43.y, x_2363.y);
  let x_2372 = (u_xlat43.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat43 = vec3f(x_2372.x, u_xlat43.y, x_2372.y);
  u_xlat117 = (u_xlat43.x / u_xlat43.z);
  u_xlat117 = (-(u_xlat117) + vs_TEXCOORD0.y);
  u_xlat117 = max(u_xlat117, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat43 = vec3f(x_2399.x, u_xlat43.y, x_2399.y);
  u_xlat80 = (u_xlat117 * 4.0f);
  u_xlat80 = min(u_xlat80, 1.0f);
  u_xlat24 = vec4f((((u_xlat43.xz * vec2f(u_xlat80)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb115 = (u_xlat2.x < u_xlat115);
  if (u_xlatb115) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat60 = x_2476;
  u_xlat2 = vec4f((((u_xlat60.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat60.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat115 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat115 = min(u_xlat115, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat43 = vec3f(x_2555.x, u_xlat43.y, x_2555.y);
  let x_2562 = min(u_xlat43.xz, u_xlat60.xy);
  u_xlat43 = vec3f(x_2562.x, u_xlat43.y, x_2562.y);
  let x_2570 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2570.x, u_xlat43.y, x_2570.y);
  let x_2578 = u_xlat43;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat60 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat24.w);
  u_xlat25 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat25.w);
  u_xlat26 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat26.w);
  u_xlat27 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat27.w);
  u_xlat24.x = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat24.y = dot(u_xlat25.xyz, u_xlat25.xyz);
  u_xlat24.z = dot(u_xlat26.xyz, u_xlat26.xyz);
  u_xlat24.w = dot(u_xlat27.xyz, u_xlat27.xyz);
  u_xlatb24 = (u_xlat24 < x_2589.x_CascadeShadowSplitSphereRadii);
  u_xlat25.x = select(0.0f, 1.0f, u_xlatb24.x);
  u_xlat25.y = select(0.0f, 1.0f, u_xlatb24.y);
  u_xlat25.z = select(0.0f, 1.0f, u_xlatb24.z);
  u_xlat25.w = select(0.0f, 1.0f, u_xlatb24.w);
  u_xlat24.x = select(-0.0f, -1.0f, u_xlatb24.x);
  u_xlat24.y = select(-0.0f, -1.0f, u_xlatb24.y);
  u_xlat24.z = select(-0.0f, -1.0f, u_xlatb24.z);
  u_xlat24 = vec4f(((u_xlat24.xyz + u_xlat25.yzw)).xyz, u_xlat24.w);
  u_xlat25 = vec4f(u_xlat25.x, max(u_xlat24.xyz, vec3f()).xyz);
  u_xlat40 = dot(u_xlat25, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat40 = (-(u_xlat40) + 4.0f);
  u_xlatu40 = u32(u_xlat40);
  u_xlati40 = (bitcast<i32>(u_xlatu40) << bitcast<u32>(2i));
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati40 + 1i)].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati40].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati40 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati40 + 3i)].xyz)).xyz, u_xlat24.w);
  u_xlatb40 = (0.0f < x_2589.x_MainLightShadowParams.y);
  if (u_xlatb40) {
    u_xlatb40 = (x_2589.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb40) {
      u_xlat25 = (u_xlat24.xyxy + x_2589.x_MainLightShadowOffset0);
      let x_2775 = u_xlat25.xy;
      txVec0 = vec3f(x_2775.x, x_2775.y, u_xlat24.z);
      u_xlat26.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_2795 = u_xlat25.zw;
      txVec1 = vec3f(x_2795.x, x_2795.y, u_xlat24.z);
      u_xlat26.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat25 = (u_xlat24.xyxy + x_2589.x_MainLightShadowOffset1);
      let x_2815 = u_xlat25.xy;
      txVec2 = vec3f(x_2815.x, x_2815.y, u_xlat24.z);
      u_xlat26.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_2830 = u_xlat25.zw;
      txVec3 = vec3f(x_2830.x, x_2830.y, u_xlat24.z);
      u_xlat26.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat40 = dot(u_xlat26, vec4f(0.25f));
    } else {
      u_xlatb80 = (x_2589.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb80) {
        let x_2860 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_2860.x, u_xlat43.y, x_2860.y);
        let x_2865 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_2865.x, u_xlat43.y, x_2865.y);
        let x_2878 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_2878.x, u_xlat44.y, x_2878.y);
        u_xlat25 = (u_xlat44.xxzz + x_2883);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_2892 = (u_xlat26.yw * x_914);
        u_xlat45 = vec3f(x_2892.x, u_xlat45.y, x_2892.y);
        let x_2901 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat25 = vec4f(x_2901.x, u_xlat25.y, x_2901.y, u_xlat25.w);
        u_xlat26 = vec4f(((-(u_xlat44.xz) + x_376)).xy, u_xlat26.zw);
        u_xlat102 = min(u_xlat44.xz, vec2f());
        u_xlat102 = ((-(u_xlat102) * u_xlat102) + u_xlat26.xy);
        let x_2924 = max(u_xlat44.xz, vec2f());
        u_xlat44 = vec3f(x_2924.x, u_xlat44.y, x_2924.y);
        let x_2935 = ((-(u_xlat44.xz) * u_xlat44.xz) + u_xlat25.yw);
        u_xlat44 = vec3f(x_2935.x, u_xlat44.y, x_2935.y);
        u_xlat102 = (u_xlat102 + x_376);
        let x_2942 = (u_xlat44.xz + x_376);
        u_xlat44 = vec3f(x_2942.x, u_xlat44.y, x_2942.y);
        u_xlat27 = vec4f(((u_xlat25.xz * x_2948)).xy, u_xlat27.zw);
        u_xlat28 = vec4f(((u_xlat26.xy * x_2948)).xy, u_xlat28.zw);
        u_xlat26 = vec4f(((u_xlat102 * x_2948)).xy, u_xlat26.zw);
        u_xlat29 = vec4f(((u_xlat44.xz * x_2948)).xy, u_xlat29.zw);
        let x_2970 = (u_xlat25.yw * x_2948);
        u_xlat44 = vec3f(x_2970.x, u_xlat44.y, x_2970.y);
        u_xlat27.z = u_xlat26.x;
        u_xlat27.w = u_xlat44.x;
        u_xlat28.z = u_xlat29.x;
        u_xlat28.w = u_xlat45.x;
        u_xlat25 = (u_xlat27.zwxz + u_xlat28.zwxz);
        u_xlat26.z = u_xlat27.y;
        u_xlat26.w = u_xlat44.z;
        u_xlat29.z = u_xlat28.y;
        u_xlat29.w = u_xlat45.z;
        u_xlat26 = vec4f(((u_xlat26.zyw + u_xlat29.zyw)).xyz, u_xlat26.w);
        u_xlat27 = vec4f(((u_xlat28.xzw / u_xlat25.zwy)).xyz, u_xlat27.w);
        u_xlat27 = vec4f(((u_xlat27.xyz + x_3020)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat29.zyw / u_xlat26.xyz)).xyz, u_xlat28.w);
        u_xlat28 = vec4f(((u_xlat28.xyz + x_3020)).xyz, u_xlat28.w);
        u_xlat27 = vec4f(((u_xlat27.yxz * x_2589.x_MainLightShadowmapSize.xxx)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat28.xyz * x_2589.x_MainLightShadowmapSize.yyy)).xyz, u_xlat28.w);
        u_xlat27.w = u_xlat28.x;
        u_xlat29 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.ywxw);
        let x_3072 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat27.zw);
        u_xlat44 = vec3f(x_3072.x, u_xlat44.y, x_3072.y);
        u_xlat28.w = u_xlat27.y;
        let x_3079 = u_xlat28.yz;
        u_xlat27 = vec4f(u_xlat27.x, x_3079.x, u_xlat27.z, x_3079.y);
        u_xlat30 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat28 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat28.wywz);
        u_xlat27 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.xwzw);
        u_xlat31 = (u_xlat25.zwyz * u_xlat26.xxxy);
        u_xlat32 = (u_xlat25 * u_xlat26.yyzz);
        u_xlat80 = (u_xlat25.y * u_xlat26.z);
        let x_3128 = u_xlat29.xy;
        txVec4 = vec3f(x_3128.x, x_3128.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_3143 = u_xlat29.zw;
        txVec5 = vec3f(x_3143.x, x_3143.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat119 = (u_xlat119 * u_xlat31.y);
        u_xlat43.x = ((u_xlat31.x * u_xlat43.x) + u_xlat119);
        let x_3170 = u_xlat44.xz;
        txVec6 = vec3f(x_3170.x, x_3170.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat43.x = ((u_xlat31.z * u_xlat119) + u_xlat43.x);
        let x_3192 = u_xlat28.xy;
        txVec7 = vec3f(x_3192.x, x_3192.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat43.x = ((u_xlat31.w * u_xlat119) + u_xlat43.x);
        let x_3214 = u_xlat30.xy;
        txVec8 = vec3f(x_3214.x, x_3214.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat43.x = ((u_xlat32.x * u_xlat119) + u_xlat43.x);
        let x_3236 = u_xlat30.zw;
        txVec9 = vec3f(x_3236.x, x_3236.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat43.x = ((u_xlat32.y * u_xlat119) + u_xlat43.x);
        let x_3258 = u_xlat28.zw;
        txVec10 = vec3f(x_3258.x, x_3258.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat43.x = ((u_xlat32.z * u_xlat119) + u_xlat43.x);
        let x_3280 = u_xlat27.xy;
        txVec11 = vec3f(x_3280.x, x_3280.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat43.x = ((u_xlat32.w * u_xlat119) + u_xlat43.x);
        let x_3302 = u_xlat27.zw;
        txVec12 = vec3f(x_3302.x, x_3302.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat40 = ((u_xlat80 * u_xlat119) + u_xlat43.x);
      } else {
        let x_3327 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_3327.x, u_xlat43.y, x_3327.y);
        let x_3332 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_3332.x, u_xlat43.y, x_3332.y);
        let x_3344 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_3344.x, u_xlat44.y, x_3344.y);
        u_xlat25 = (u_xlat44.xxzz + x_2883);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_3359 = (u_xlat26.yw * vec2f(0.04081600159406661987f));
        u_xlat27 = vec4f(u_xlat27.x, x_3359.x, u_xlat27.z, x_3359.y);
        let x_3368 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat45 = vec3f(x_3368.x, u_xlat45.y, x_3368.y);
        let x_3374 = (-(u_xlat44.xz) + x_376);
        u_xlat25 = vec4f(x_3374.x, u_xlat25.y, x_3374.y, u_xlat25.w);
        u_xlat26 = vec4f(min(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3390 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.xz);
        u_xlat25 = vec4f(x_3390.x, u_xlat25.y, x_3390.y, u_xlat25.w);
        u_xlat26 = vec4f(max(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3406 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.yw);
        u_xlat25 = vec4f(u_xlat25.x, x_3406.x, u_xlat25.z, x_3406.y);
        u_xlat25 = (u_xlat25 + vec4f(2.0f));
        u_xlat26.z = (u_xlat25.y * 0.08163200318813323975f);
        u_xlat28 = vec4f(((u_xlat45.zx * x_3419)).xy, u_xlat28.zw);
        let x_3425 = (u_xlat25.xz * x_3419);
        u_xlat45 = vec3f(x_3425.x, u_xlat45.y, x_3425.y);
        u_xlat28.z = (u_xlat25.w * 0.08163200318813323975f);
        u_xlat26.x = u_xlat28.y;
        let x_3442 = ((u_xlat44.xx * x_3438) + x_3441);
        u_xlat26 = vec4f(u_xlat26.x, x_3442.x, u_xlat26.z, x_3442.y);
        let x_3449 = ((u_xlat44.xx * x_3438) + x_3448);
        u_xlat25 = vec4f(x_3449.x, u_xlat25.y, x_3449.y, u_xlat25.w);
        u_xlat25.y = u_xlat45.x;
        u_xlat25.w = u_xlat27.y;
        u_xlat26 = (u_xlat25 + u_xlat26);
        let x_3464 = ((u_xlat44.zz * x_3438) + x_3441);
        u_xlat28 = vec4f(u_xlat28.x, x_3464.x, u_xlat28.z, x_3464.y);
        let x_3470 = ((u_xlat44.zz * x_3438) + x_3448);
        u_xlat27 = vec4f(x_3470.x, u_xlat27.y, x_3470.y, u_xlat27.w);
        u_xlat27.y = u_xlat45.z;
        u_xlat28 = (u_xlat27 + u_xlat28);
        u_xlat25 = (u_xlat25 / u_xlat26);
        u_xlat25 = (u_xlat25 + x_3486);
        u_xlat27 = (u_xlat27 / u_xlat28);
        u_xlat27 = (u_xlat27 + x_3486);
        u_xlat25 = (u_xlat25.wxyz * x_2589.x_MainLightShadowmapSize.xxxx);
        u_xlat27 = (u_xlat27.xwyz * x_2589.x_MainLightShadowmapSize.yyyy);
        let x_3506 = u_xlat25.yzw;
        u_xlat29 = vec4f(x_3506.x, u_xlat29.y, x_3506.yz);
        u_xlat29.y = u_xlat27.x;
        u_xlat30 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3529 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat44 = vec3f(x_3529.x, u_xlat44.y, x_3529.y);
        u_xlat25.y = u_xlat29.y;
        u_xlat29.y = u_xlat27.z;
        u_xlat31 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3555 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat45 = vec3f(x_3555.x, u_xlat45.y, x_3555.y);
        u_xlat25.z = u_xlat29.y;
        u_xlat32 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat25.xyxz);
        u_xlat29.y = u_xlat27.w;
        u_xlat33 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        u_xlat63 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat25.w = u_xlat29.y;
        u_xlat34 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat25.xw);
        let x_3607 = u_xlat29.xzw;
        u_xlat27 = vec4f(x_3607.x, u_xlat27.y, x_3607.yz);
        u_xlat29 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat103 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat27.wy);
        u_xlat27.x = u_xlat25.x;
        let x_3640 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat27.xy);
        u_xlat43 = vec3f(x_3640.x, u_xlat43.y, x_3640.y);
        u_xlat35 = (u_xlat26 * u_xlat28.xxxx);
        u_xlat36 = (u_xlat26 * u_xlat28.yyyy);
        u_xlat37 = (u_xlat26 * u_xlat28.zzzz);
        u_xlat26 = (u_xlat26 * u_xlat28.wwww);
        let x_3664 = u_xlat30.xy;
        txVec13 = vec3f(x_3664.x, x_3664.y, u_xlat24.z);
        u_xlat80 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_3678 = u_xlat30.zw;
        txVec14 = vec3f(x_3678.x, x_3678.y, u_xlat24.z);
        u_xlat132 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat132 = (u_xlat132 * u_xlat35.y);
        u_xlat80 = ((u_xlat35.x * u_xlat80) + u_xlat132);
        let x_3702 = u_xlat44.xz;
        txVec15 = vec3f(x_3702.x, x_3702.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat80 = ((u_xlat35.z * u_xlat44.x) + u_xlat80);
        let x_3724 = u_xlat32.xy;
        txVec16 = vec3f(x_3724.x, x_3724.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat80 = ((u_xlat35.w * u_xlat44.x) + u_xlat80);
        let x_3746 = u_xlat31.xy;
        txVec17 = vec3f(x_3746.x, x_3746.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat80 = ((u_xlat36.x * u_xlat44.x) + u_xlat80);
        let x_3768 = u_xlat31.zw;
        txVec18 = vec3f(x_3768.x, x_3768.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat80 = ((u_xlat36.y * u_xlat44.x) + u_xlat80);
        let x_3790 = u_xlat45.xz;
        txVec19 = vec3f(x_3790.x, x_3790.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat80 = ((u_xlat36.z * u_xlat44.x) + u_xlat80);
        let x_3812 = u_xlat32.zw;
        txVec20 = vec3f(x_3812.x, x_3812.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat80 = ((u_xlat36.w * u_xlat44.x) + u_xlat80);
        let x_3834 = u_xlat33.xy;
        txVec21 = vec3f(x_3834.x, x_3834.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat80 = ((u_xlat37.x * u_xlat44.x) + u_xlat80);
        let x_3856 = u_xlat33.zw;
        txVec22 = vec3f(x_3856.x, x_3856.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat80 = ((u_xlat37.y * u_xlat44.x) + u_xlat80);
        txVec23 = vec3f(u_xlat63.x, u_xlat63.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat80 = ((u_xlat37.z * u_xlat44.x) + u_xlat80);
        txVec24 = vec3f(u_xlat34.x, u_xlat34.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat80 = ((u_xlat37.w * u_xlat44.x) + u_xlat80);
        let x_3920 = u_xlat29.xy;
        txVec25 = vec3f(x_3920.x, x_3920.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat80 = ((u_xlat26.x * u_xlat44.x) + u_xlat80);
        let x_3942 = u_xlat29.zw;
        txVec26 = vec3f(x_3942.x, x_3942.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat80 = ((u_xlat26.y * u_xlat44.x) + u_xlat80);
        txVec27 = vec3f(u_xlat103.x, u_xlat103.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat80 = ((u_xlat26.z * u_xlat44.x) + u_xlat80);
        let x_3985 = u_xlat43.xz;
        txVec28 = vec3f(x_3985.x, x_3985.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat40 = ((u_xlat26.w * u_xlat43.x) + u_xlat80);
      }
    }
  } else {
    let x_4008 = u_xlat24.xy;
    txVec29 = vec3f(x_4008.x, x_4008.y, u_xlat24.z);
    u_xlat40 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat80 = (-(x_2589.x_MainLightShadowParams.x) + 1.0f);
  u_xlat40 = ((u_xlat40 * x_2589.x_MainLightShadowParams.x) + u_xlat80);
  u_xlatb80 = (0.0f >= u_xlat24.z);
  u_xlatb43 = (u_xlat24.z >= 1.0f);
  u_xlatb80 = (u_xlatb80 | u_xlatb43);
  u_xlat40 = select(u_xlat40, 1.0f, u_xlatb80);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat80 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat80 = ((u_xlat80 * x_2589.x_MainLightShadowParams.z) + x_2589.x_MainLightShadowParams.w);
  u_xlat80 = clamp(u_xlat80, 0.0f, 1.0f);
  u_xlat43.x = (-(u_xlat40) + 1.0f);
  u_xlat40 = ((u_xlat80 * u_xlat43.x) + u_xlat40);
  u_xlat25.x = dot(x_4081.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_4081.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_4081.unity_SHAb.yw, x_376);
  u_xlat25 = vec4f(((u_xlat25.xyz + -(x_4081.unity_SHC.xyz))).xyz, u_xlat25.w);
  u_xlat26 = vec4f(((x_81.x_B612WaterShallow.xyz + x_4112)).xyz, u_xlat26.w);
  u_xlat26 = vec4f((((x_81.x_B612SunDirection.www * u_xlat26.xyz) + x_4122)).xyz, u_xlat26.w);
  u_xlat26 = vec4f(((u_xlat26.xyz * x_142.x_ScatterColor.xyz)).xyz, u_xlat26.w);
  u_xlat27 = vec4f(((x_81.x_B612WaterDeep.xyz + x_4112)).xyz, u_xlat27.w);
  u_xlat27 = vec4f((((x_81.x_B612SunDirection.www * u_xlat27.xyz) + x_4122)).xyz, u_xlat27.w);
  let x_4156 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_4160 = (u_xlat23.xw / vec2f(x_4156.x, x_4156.y));
  u_xlat43 = vec3f(x_4160.x, u_xlat43.y, x_4160.y);
  let x_4172 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat43.xz);
  u_xlat44 = vec3f(x_4172.x, u_xlat44.y, x_4172.y);
  let x_4180 = u_xlat44;
  let x_4183 = x_81.x_GlobalMipBias.x;
  let x_4184 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4180.xz, x_4183);
  u_xlat80 = x_4184.x;
  let x_4192 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat44 = vec3f(x_4192.x, u_xlat44.y, x_4192.y);
  let x_4202 = ((u_xlat43.xz * vec2f(1.12999999523162841797f)) + u_xlat44.xz);
  u_xlat43 = vec3f(x_4202.x, u_xlat43.y, x_4202.y);
  let x_4208 = u_xlat43;
  let x_4211 = x_81.x_GlobalMipBias.x;
  let x_4212 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4208.xz, x_4211);
  u_xlat43.x = x_4212.x;
  let x_4221 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat44 = vec3f(x_4221.x, u_xlat44.y, x_4221.y);
  u_xlat119 = dot(u_xlat44.xz, u_xlat44.xz);
  u_xlat119 = sqrt(u_xlat119);
  u_xlat44.x = (u_xlat119 + -(x_142.x_BoilRadius));
  u_xlat120 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat44.x);
  u_xlat120 = (u_xlat120 / u_xlat48.x);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat120 = (u_xlat120 * -1.44269502162933349609f);
  u_xlat120 = exp2(u_xlat120);
  u_xlat45.x = max(u_xlat119, 0.15000000596046447754f);
  u_xlat45.x = (u_xlat45.x * 6.66666650772094726562f);
  u_xlat45.x = inverseSqrt(u_xlat45.x);
  let x_4273 = (u_xlat45.xx * u_xlat49.xz);
  u_xlat49 = vec3f(x_4273.x, u_xlat49.y, x_4273.y);
  u_xlat121 = (u_xlat124 * u_xlat49.x);
  u_xlat121 = (u_xlat11.x * u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat121 = ((u_xlat5.x * u_xlat44.x) + -(u_xlat87));
  u_xlat121 = cos(u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat120 = select(0.0f, u_xlat120, u_xlatb123);
  let x_4308 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4308.x, x_4308.y)) * u_xlat12.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat89);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat126 * u_xlat49.z);
  u_xlat121 = (u_xlat14.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4349 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat52.xy));
  u_xlat48 = vec3f(x_4349.x, u_xlat48.y, x_4349.y);
  let x_4354 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4354.x, u_xlat48.y, x_4354.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat88 * u_xlat11.x);
  u_xlat121 = (u_xlat17.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.y);
  let x_4402 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4402.x, x_4402.y)) * u_xlat53.xz) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat55);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat128 * u_xlat11.y);
  u_xlat121 = (u_xlat18.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4443 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat56.xy));
  u_xlat48 = vec3f(x_4443.x, u_xlat48.y, x_4443.y);
  let x_4448 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4448.x, u_xlat48.y, x_4448.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat92)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat131 * u_xlat11.x);
  u_xlat121 = (u_xlat20.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.y);
  let x_4495 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4495.x, x_4495.y)) * u_xlat19.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat59.xz);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat47.x * u_xlat11.y);
  u_xlat121 = (u_xlat21.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  u_xlat47 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat95));
  u_xlat47 = cos(u_xlat47);
  u_xlat5.x = ((u_xlat121 * u_xlat47.x) + u_xlat120);
  if (u_xlatb58.x) {
    x_4549 = u_xlat5.x;
  } else {
    x_4549 = u_xlat120;
  }
  u_xlat5.x = x_4549;
  u_xlat44.x = (u_xlat45.x * u_xlat9.x);
  u_xlat44.x = (u_xlat86 * u_xlat44.x);
  u_xlat44.x = (u_xlat22.x * u_xlat44.x);
  u_xlat44.x = (u_xlat44.x * u_xlat85.y);
  u_xlat44.x = ((u_xlat44.x * u_xlat47.y) + u_xlat5.x);
  if (u_xlatb58.y) {
    x_4592 = u_xlat44.x;
  } else {
    x_4592 = u_xlat5.x;
  }
  u_xlat5.x = x_4592;
  u_xlat44.x = (u_xlat119 / u_xlat122);
  u_xlat44.x = (-(u_xlat44.x) + 1.0f);
  u_xlat44.x = max(u_xlat44.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat44.x * u_xlat5.x);
  u_xlat119 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat119);
  u_xlat119 = (u_xlat99.x * u_xlat119);
  u_xlat119 = clamp(u_xlat119, 0.0f, 1.0f);
  u_xlat44.x = ((u_xlat119 * -2.0f) + 3.0f);
  u_xlat119 = (u_xlat119 * u_xlat119);
  u_xlat119 = (u_xlat119 * u_xlat44.x);
  u_xlat5.x = (u_xlat119 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat80 = min(u_xlat80, u_xlat43.x);
  u_xlat80 = (u_xlat80 * 2.5f);
  u_xlat80 = (u_xlat80 * x_142.x_CausticsStrength);
  let x_4677 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat43 = vec3f(x_4677.x, u_xlat43.y, x_4677.y);
  u_xlat2.x = min(u_xlat43.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat80 = exp2(u_xlat43.z);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_4708 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_4708.xy, u_xlat5.z, x_4708.z);
  let x_4715 = (vec3f(u_xlat40) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4715.xy, u_xlat5.z, x_4715.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_4731 = ((u_xlat5.xyw * u_xlat2.xxx) + x_4122);
  u_xlat5 = vec4f(x_4731.xy, u_xlat5.z, x_4731.z);
  let x_4737 = (u_xlat5.xyw * u_xlat60);
  u_xlat5 = vec4f(x_4737.xy, u_xlat5.z, x_4737.z);
  u_xlat9 = vec4f(((vec3f(u_xlat115) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat115 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat48 = (vec3f(u_xlat40) * x_81.x_MainLightColor.xyz);
  u_xlat40 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat40 = clamp(u_xlat40, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat40) * u_xlat48);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25.xyz);
  u_xlat115 = (u_xlat115 * 0.69999998807907104492f);
  u_xlat115 = min(u_xlat115, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27.xyz) + -(u_xlat26.xyz))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat115) * u_xlat12.xyz) + u_xlat26.xyz)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_4843 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_4843.xy, u_xlat5.z, x_4843.z);
  u_xlat115 = dot(u_xlat3, u_xlat38);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat40 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat80 = (-(x_142.x_F0) + 1.0f);
  u_xlat44.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat80);
  u_xlat115 = (-(u_xlat115) + 1.0f);
  u_xlat120 = (u_xlat115 * u_xlat115);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat115 = (u_xlat115 * u_xlat120);
  u_xlat115 = ((u_xlat44.x * u_xlat115) + u_xlat40);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat40 = dot(-(u_xlat38), u_xlat3);
  u_xlat40 = (u_xlat40 + u_xlat40);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat40))) + -(u_xlat38))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat40 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat40 = (u_xlat40 * x_142.x_Roughness);
  u_xlat40 = (u_xlat40 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu82 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu82.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu82.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat39.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_4985 = u_xlat39.x;
  } else {
    x_4985 = u_xlat1.x;
  }
  u_xlat0.x = x_4985;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati39 = (bitcast<i32>(u_xlatu82.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati39))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_5047 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_5054 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_5055 = vec2i(x_5047, x_5054);
  u_xlati1 = vec3i(x_5055.x, u_xlati1.y, x_5055.y);
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_5079 = ~(u_xlati1.xz);
  u_xlati45 = vec3i(x_5079.x, u_xlati45.y, x_5079.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45.xx) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati44) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati44.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati45.z) & bitcast<u32>(u_xlati44.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb44 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati87 = 0i;
  u_xlatu125 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat77.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu45 = (u_xlatu125 >> 16u);
    u_xlati121 = u_xlati87;
    u_xlatu122 = u_xlatu125;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb47 = (u_xlati121 == 0i);
      u_xlatu126 = (u_xlatu122 & 65535u);
      u_xlatb126 = (u_xlatu45 >= u_xlatu126);
      u_xlatb47 = (u_xlatb47 & u_xlatb126);
      if (!(u_xlatb47)) {
        break;
      }
      param_6 = u_xlatu122;
      param_7 = 5i;
      param_8 = 11i;
      let x_5193 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu47 = x_5193;
      u_xlatu13 = (vec4u(u_xlatu47) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_5214 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_5221 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_5228 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_5235 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_5214, x_5221, x_5228, x_5235);
      u_xlati90 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_5244.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_5244.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_5276 = bitcast<vec2i>((bitcast<vec2u>(u_xlati90) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_5276.x, u_xlati14.y, x_5276.y);
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati51 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati51) | bitcast<u32>(u_xlati13.x)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu122) & 31i)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati47 = (bitcast<i32>(u_xlatu47) << bitcast<u32>(5i));
      u_xlatu47 = (u_xlatu45 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati47)))));
      u_xlatu47 = min(u_xlatu47, 31u);
      u_xlatu47 = (bitcast<u32>(-(bitcast<i32>(u_xlatu47))) + 31u);
      u_xlatu47 = (4294967295u >> (u_xlatu47 & 31u));
      u_xlati121 = bitcast<i32>((u_xlatu47 & bitcast<u32>(u_xlati126)));
      u_xlati47 = (bitcast<i32>(u_xlatu122) + 32i);
      u_xlatu122 = (bitcast<u32>(u_xlati47) & 4294967264u);
    }
    u_xlatu125 = u_xlatu122;
    u_xlatb45 = (u_xlati121 != 0i);
    u_xlatb47 = (u_xlat77.x < 0.99000000953674316406f);
    u_xlatb45 = (u_xlatb45 & u_xlatb47);
    if (!(u_xlatb45)) {
      break;
    }
    u_xlati45.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati121)));
    u_xlati47 = (1i << bitcast<u32>((u_xlati45.x & 31i)));
    u_xlati87 = bitcast<i32>((bitcast<u32>(u_xlati121) ^ bitcast<u32>(u_xlati47)));
    u_xlati47 = (bitcast<i32>(u_xlatu125) + -32i);
    u_xlati47 = bitcast<i32>((bitcast<u32>(u_xlati47) & 65504u));
    u_xlati45.x = (u_xlati45.x + u_xlati47);
    u_xlati45.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati45.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].www)).xyz, u_xlat13.w);
    u_xlat47.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat47.x = min(u_xlat47.x, u_xlat13.x);
    u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
    u_xlat126 = (-(u_xlat77.x) + 1.0f);
    u_xlat47.x = min(u_xlat47.x, u_xlat126);
    u_xlatb126 = (0.0f < x_5479.urp_ReflProbes_ProbePosition[u_xlati45.x].w);
    if (u_xlatb44.x) {
      x_5545 = x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].x;
    } else {
      x_5545 = x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].x;
    }
    u_xlat13.x = x_5545;
    if (u_xlatb44.y) {
      x_5561 = x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].y;
    } else {
      x_5561 = x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].y;
    }
    u_xlat13.y = x_5561;
    if (u_xlatb44.z) {
      x_5577 = x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].z;
    } else {
      x_5577 = x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].z;
    }
    u_xlat13.z = x_5577;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat51 = (vs_TEXCOORD0 + -(x_5479.urp_ReflProbes_ProbePosition[u_xlati45.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat51)).xyz, u_xlat13.w);
    if (u_xlatb126) {
      x_5636 = u_xlat13.xyz;
    } else {
      x_5636 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_5636.xyz, u_xlat13.w);
    u_xlatu126 = u32(abs(x_5479.urp_ReflProbes_ProbePosition[u_xlati45.x].w));
    u_xlatu126 = (u_xlatu126 + 4294967295u);
    u_xlat126 = f32(u_xlatu126);
    u_xlat126 = min(u_xlat40, u_xlat126);
    u_xlat127 = dot(abs(u_xlat13.xyz), x_4122);
    u_xlat127 = max(u_xlat127, 0.00000099999999747524f);
    u_xlat127 = (1.0f / u_xlat127);
    u_xlat14 = (vec3f(u_xlat127) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb52 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb52.x) {
      x_5692 = u_xlat14.x;
    } else {
      x_5692 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_5692;
    if (u_xlatb52.y) {
      x_5705 = u_xlat14.x;
    } else {
      x_5705 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_5705;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat127)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat89.x = floor(u_xlat126);
    u_xlat89.y = (u_xlat89.x + 1.0f);
    u_xlat126 = (u_xlat126 + -(u_xlat89.x));
    u_xlatu89 = vec2u(u_xlat89);
    u_xlati89 = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.x));
    u_xlati45.x = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.y));
    u_xlat89 = ((u_xlat13.xy * x_5479.urp_ReflProbes_MipScaleOffset[u_xlati89].xy) + x_5479.urp_ReflProbes_MipScaleOffset[u_xlati89].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat89, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_5479.urp_ReflProbes_MipScaleOffset[u_xlati45.x].xy) + x_5479.urp_ReflProbes_MipScaleOffset[u_xlati45.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat126) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat47.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat77.x = (u_xlat77.x + u_xlat47.x);
  }
  u_xlatb0 = (u_xlat77.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat40);
    u_xlat0.x = (-(u_xlat77.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat115) * u_xlat1) + u_xlat5.xyw);
  let x_5947 = (u_xlat38 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_5947.xy, u_xlat5.z, x_5947.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_5969 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_5969.xy, u_xlat5.z, x_5969.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat115 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat115 = max(u_xlat115, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat115 * u_xlat115);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat115 = ((u_xlat115 * u_xlat115) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat115) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat38.x = dot(u_xlat5.xyw, u_xlat38);
  u_xlat38.x = clamp(u_xlat38.x, 0.0f, 1.0f);
  u_xlat38.x = (-(u_xlat38.x) + 1.0f);
  u_xlat76 = (u_xlat38.x * u_xlat38.x);
  u_xlat76 = (u_xlat76 * u_xlat76);
  u_xlat38.x = (u_xlat76 * u_xlat38.x);
  u_xlat38.x = ((u_xlat80 * u_xlat38.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat38.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat48);
  let x_6088 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_6088.x, x_6088.y, x_6088.z));
  u_xlat114 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat114 = (u_xlat114 * 4.0f);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat114)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat77 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat77 = (-(u_xlat77) + u_xlat1.xy);
  let x_6131 = u_xlat77;
  let x_6133 = x_81.x_GlobalMipBias.x;
  let x_6134 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6131, x_6133);
  u_xlat114 = x_6134.x;
  u_xlat77 = (u_xlat42.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat77) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_6159 = u_xlat1;
  let x_6162 = x_81.x_GlobalMipBias.x;
  let x_6163 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6159.xy, x_6162);
  u_xlat1.x = x_6163.x;
  u_xlat1.x = (u_xlat83.x * u_xlat1.x);
  u_xlat114 = ((u_xlat114 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat39.x = (-(u_xlat84.x) + 1.0f);
  u_xlat1.x = (u_xlat39.x * u_xlat1.x);
  u_xlat39 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_6213 = u_xlat39;
  let x_6215 = x_81.x_GlobalMipBias.x;
  let x_6216 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6213, x_6215);
  u_xlat39.x = x_6216.y;
  u_xlat77.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat77.x = (u_xlat77.x * u_xlat77.x);
  u_xlat77.x = (u_xlat77.x * -1.44269502162933349609f);
  u_xlat77.x = exp2(u_xlat77.x);
  u_xlat77.x = ((u_xlat84.x * 0.34999999403953552246f) + u_xlat77.x);
  u_xlat39.x = (u_xlat77.x * u_xlat39.x);
  u_xlat39.x = (u_xlat81 * u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * 0.89999997615814208984f);
  u_xlat114 = ((u_xlat114 * u_xlat1.x) + u_xlat39.x);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat48 * vec3f(0.69999998807907104492f)) + u_xlat25.xyz);
  u_xlat114 = (u_xlat114 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  u_xlat0 = ((vec3f(u_xlat114) * u_xlat1) + u_xlat0);
  SV_Target0.w = (u_xlat117 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat114 = (vs_TEXCOORD1 * -(vs_TEXCOORD1));
  u_xlat114 = exp2(u_xlat114);
  u_xlat0 = (u_xlat0 + -(x_81.unity_FogColor.xyz));
  SV_Target0 = vec4f((((vec3f(u_xlat114) * u_xlat0) + x_81.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

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
  vs_TEXCOORD1 = 0.0f;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(288) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(352) */
  x_ScreenSize : vec4f,
  /* @offset(368) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(384) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_B612SunDirection : vec4f,
  /* @offset(416) */
  x_B612WaterShallow : vec4f,
  /* @offset(432) */
  x_B612WaterDeep : vec4f,
  /* @offset(448) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2590 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2710 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_3681 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_3858 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_4093 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_743 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2739 = vec3f(-1.0f);

const x_2746 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat28 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat59 : vec2f;
  var u_xlat85 : f32;
  var u_xlat4 : vec4f;
  var u_xlat60 : f32;
  var u_xlat88 : f32;
  var u_xlatb32 : bool;
  var x_281 : vec2f;
  var u_xlat32 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat33 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat62 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat63 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat64 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat65 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb93 : bool;
  var u_xlat11 : vec3f;
  var u_xlat38 : vec3f;
  var u_xlat66 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat39 : vec3f;
  var u_xlat92 : f32;
  var u_xlat94 : f32;
  var u_xlat67 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat69 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat96 : f32;
  var u_xlat68 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat99 : f32;
  var u_xlat98 : f32;
  var u_xlat43 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat45 : vec2f;
  var u_xlat46 : vec3f;
  var u_xlat72 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat101 : f32;
  var u_xlat102 : f32;
  var u_xlatb48 : vec2<bool>;
  var u_xlat49 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat37 : vec2f;
  var u_xlat75 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat50 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat79 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat61 : f32;
  var u_xlat104 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat31 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat35 : vec3f;
  var u_xlat87 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb85 : bool;
  var x_2476 : vec3f;
  var txVec0 : vec3f;
  var u_xlat30 : f32;
  var u_xlatb60 : bool;
  var u_xlatb33 : bool;
  var u_xlat25 : vec3f;
  var u_xlat26 : vec3f;
  var u_xlat27 : vec3f;
  var u_xlat34 : vec3f;
  var u_xlat89 : f32;
  var u_xlat90 : f32;
  var u_xlat91 : f32;
  var x_3166 : f32;
  var x_3209 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu62 : vec2u;
  var u_xlati6 : i32;
  var u_xlat29 : vec2f;
  var u_xlat0 : vec3f;
  var x_3599 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati29 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati34 : vec2i;
  var u_xlati35 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb34 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati67 : i32;
  var u_xlatu95 : u32;
  var u_xlat57 : vec2f;
  var u_xlatu35 : u32;
  var u_xlati91 : i32;
  var u_xlatu92 : u32;
  var u_xlatb37 : bool;
  var u_xlatu96 : u32;
  var u_xlatb96 : bool;
  var u_xlatu37 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati70 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati96 : i32;
  var u_xlati41 : i32;
  var u_xlati37 : i32;
  var u_xlatb35 : bool;
  var x_4159 : f32;
  var x_4175 : f32;
  var x_4191 : f32;
  var u_xlat41 : vec3f;
  var x_4250 : vec3f;
  var u_xlat97 : f32;
  var u_xlatb42 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_4306 : f32;
  var x_4319 : f32;
  var u_xlatu69 : vec2u;
  var u_xlati69 : i32;
  var u_xlat56 : f32;
  var u_xlat84 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat28 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat28, u_xlat28);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat28 = (u_xlat28 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat28;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat28 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat59 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat85 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat85, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat60 = max(u_xlat60, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat60))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat59.yx + u_xlat59.yx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat59, u_xlat59);
  u_xlat88 = max(u_xlat60, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat88))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb32 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb32) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat32 = vec3f(x_314.x, u_xlat32.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat33 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat62 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat62) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat63 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat62.x * 4.0f);
  u_xlat8 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat32 = vec3f(x_405.x, u_xlat32.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat64 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat64 = (u_xlat64 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat64;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat64 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat65 = (u_xlat32.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat65 = (u_xlat65 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat65));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat63.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat64 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat64 = max(vec2f(u_xlat85), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat64.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat64.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat65.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat65.x = sin(u_xlat65.x);
  u_xlat65.x = (u_xlat65.x * 43758.546875f);
  u_xlat65.x = fract(u_xlat65.x);
  u_xlat65.x = ((u_xlat65.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat65.x = (u_xlat65.x / u_xlat9.y);
  u_xlat65.x = (-(u_xlat65.x) + x_81.x_Time.y);
  u_xlatb93 = (u_xlat65.x >= 0.0f);
  u_xlat10.x = (u_xlat85 + -(x_142.x_BoilRadius));
  let x_744 = (u_xlat65.xx * x_743);
  u_xlat11 = vec3f(x_744.x, u_xlat11.y, x_744.y);
  u_xlat38.x = ((u_xlat65.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat66 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat10.x);
  u_xlat66 = (u_xlat66 / u_xlat38.x);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat66 = (u_xlat66 * -1.44269502162933349609f);
  u_xlat66 = exp2(u_xlat66);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat39 = vec3f(x_804.x, u_xlat39.y, x_804.y);
  u_xlat92 = (u_xlat64.y * 6.66666650772094726562f);
  u_xlat92 = inverseSqrt(u_xlat92);
  let x_818 = (vec2f(u_xlat92) * u_xlat39.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat94 = exp2(u_xlat11.z);
  u_xlat67 = (u_xlat94 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat67 = (u_xlat11.x * u_xlat67);
  u_xlat66 = (u_xlat66 * u_xlat67);
  u_xlat67 = (u_xlat64.x * u_xlat65.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat67));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat66 = (u_xlat66 * u_xlat12.x);
  u_xlat66 = select(0.0f, u_xlat66, u_xlatb93);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_743);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat69 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat42 = vec3f(x_931.x, u_xlat42.y, x_931.y);
  let x_937 = (u_xlat42.xz / u_xlat69);
  u_xlat42 = vec3f(x_937.x, u_xlat42.y, x_937.y);
  let x_944 = (u_xlat42.xz * u_xlat42.xz);
  u_xlat42 = vec3f(x_944.x, u_xlat42.y, x_944.y);
  let x_950 = (u_xlat42.xz * x_949);
  u_xlat42 = vec3f(x_950.x, u_xlat42.y, x_950.y);
  let x_955 = exp2(u_xlat42.xz);
  u_xlat42 = vec3f(x_955.x, u_xlat42.y, x_955.y);
  u_xlat96 = exp2(u_xlat14.z);
  u_xlat68 = (u_xlat96 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat68 = (u_xlat68 * u_xlat14.x);
  u_xlat68 = (u_xlat68 * u_xlat42.x);
  u_xlat42 = vec3f(((u_xlat64.xx * u_xlat12.xy)).xy, u_xlat42.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat42.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat68 = ((u_xlat68 * u_xlat15.x) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat68, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat92) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_743);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat68 = exp2(u_xlat17.z);
  u_xlat99 = (u_xlat68 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat99 = (u_xlat99 * u_xlat17.x);
  u_xlat98 = (u_xlat42.z * u_xlat99);
  u_xlat98 = ((u_xlat98 * u_xlat15.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat98, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat43 = vec3f(x_1094.x, u_xlat43.y, x_1094.y);
  let x_1101 = (u_xlat43.xz / u_xlat9.yy);
  u_xlat43 = vec3f(x_1101.x, u_xlat43.y, x_1101.y);
  let x_1110 = (-(u_xlat43.xz) + x_81.x_Time.yy);
  u_xlat43 = vec3f(x_1110.x, u_xlat43.y, x_1110.y);
  u_xlatb16 = ((u_xlat43.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat43.xx * x_743);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat45 = ((u_xlat43.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat43.xz) + u_xlat10.xx);
  u_xlat46 = vec3f(x_1144.x, u_xlat46.y, x_1144.y);
  let x_1150 = (u_xlat46.xz / u_xlat45);
  u_xlat46 = vec3f(x_1150.x, u_xlat46.y, x_1150.y);
  let x_1157 = (u_xlat46.xz * u_xlat46.xz);
  u_xlat46 = vec3f(x_1157.x, u_xlat46.y, x_1157.y);
  let x_1162 = (u_xlat46.xz * x_949);
  u_xlat46 = vec3f(x_1162.x, u_xlat46.y, x_1162.y);
  let x_1167 = exp2(u_xlat46.xz);
  u_xlat46 = vec3f(x_1167.x, u_xlat46.y, x_1167.y);
  u_xlat98 = exp2(u_xlat18.z);
  u_xlat72.x = (u_xlat98 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat72.x = (u_xlat72.x * u_xlat18.x);
  u_xlat72.x = (u_xlat72.x * u_xlat46.x);
  u_xlat46 = vec3f(((u_xlat64.xx * u_xlat43.xz)).xy, u_xlat46.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat46.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat72.x = ((u_xlat72.x * u_xlat19.x) + u_xlat66);
  if (u_xlatb16.x) {
    x_1232 = u_xlat72.x;
  } else {
    x_1232 = u_xlat66;
  }
  u_xlat66 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat72 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat92) * u_xlat72);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat43.zz * x_743);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat101 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat101 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat102 = (u_xlat46.z * u_xlat19.x);
  u_xlat102 = ((u_xlat102 * u_xlat19.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat102, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb48 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_743);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat49 = vec3f(x_1350.x, u_xlat49.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat49.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat37.x = exp2(u_xlat21.z);
  u_xlat102 = (u_xlat37.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat102 = (u_xlat102 * u_xlat21.x);
  u_xlat102 = (u_xlat102 * u_xlat22.x);
  u_xlat75 = (u_xlat64.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat75));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat64.x = ((u_xlat102 * u_xlat22.x) + u_xlat66);
  if (u_xlatb48.x) {
    x_1450 = u_xlat64.x;
  } else {
    x_1450 = u_xlat66;
  }
  u_xlat64.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat92 = (u_xlat92 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_743);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat66 = exp2(u_xlat22.w);
  u_xlat92 = (u_xlat92 * u_xlat66);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat92 = (u_xlat92 * u_xlat22.x);
  u_xlat92 = (u_xlat92 * u_xlat22.y);
  u_xlat92 = ((u_xlat92 * u_xlat22.z) + u_xlat64.x);
  if (u_xlatb48.y) {
    x_1524 = u_xlat92;
  } else {
    x_1524 = u_xlat64.x;
  }
  u_xlat64.x = x_1524;
  u_xlat92 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat102 = (u_xlat85 / u_xlat92);
  u_xlat102 = (-(u_xlat102) + 1.0f);
  u_xlat102 = max(u_xlat102, 0.0f);
  u_xlat64.x = (u_xlat64.x * x_142.x_RingStrength);
  u_xlat64.x = (u_xlat102 * u_xlat64.x);
  u_xlat50 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat85))).xy, u_xlat23.zw);
  u_xlat79 = (x_376 / u_xlat50.xy);
  u_xlat23 = vec4f(((u_xlat79 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat102 = (u_xlat23.x * u_xlat24.x);
  u_xlat64.x = (u_xlat64.x * u_xlat102);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat64.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat64.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat61 = sin(u_xlat33.y);
  u_xlat61 = (u_xlat61 * 1.70000004768371582031f);
  u_xlat61 = ((u_xlat64.x * 6.28318548202514648438f) + u_xlat61);
  u_xlat61 = sin(u_xlat61);
  u_xlat61 = ((u_xlat61 * 0.25f) + 0.75f);
  u_xlat64.x = (u_xlat85 * -(u_xlat85));
  u_xlat102 = (u_xlat50.x * u_xlat50.x);
  u_xlat64.x = (u_xlat64.x / u_xlat102);
  u_xlat64.x = (u_xlat64.x * 1.44269502162933349609f);
  u_xlat64.x = exp2(u_xlat64.x);
  u_xlat104 = (u_xlat85 + u_xlat85);
  u_xlat102 = (u_xlat104 / u_xlat102);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat102));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat64.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat50 = vec3f(((u_xlat50.xx * u_xlat23.xw)).xy, u_xlat50.z);
  let x_1734 = ((u_xlat50.xy * vec2f(u_xlat61)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat64.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat33.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat33 = vec3f(x_1763.x, u_xlat33.y, x_1763.y);
  let x_1769 = u_xlat33;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_1786.x, u_xlat33.y, x_1786.y);
  u_xlat50 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat50.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat50.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat50.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat102 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat85 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat85);
  u_xlat102 = (1.0f / u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat102 = ((u_xlat85 * -2.0f) + 3.0f);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat64.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat33.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat85)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat85 = sqrt(u_xlat60);
  u_xlat50 = (vec3f(u_xlat85) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat50 = (u_xlat50 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat50 = clamp(u_xlat50, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat50 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat50 = (u_xlat50 * u_xlat50);
  u_xlat60 = (u_xlat50.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat50.xz) + x_376);
  u_xlat33 = vec3f(x_1932.x, u_xlat33.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat62.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat62.x = dot(u_xlat62.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat62.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat33.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat33.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat60 * u_xlat33.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat33 = vec3f(x_2080.x, u_xlat33.y, x_2080.y);
  u_xlat31 = dot(u_xlat59.yx, u_xlat33.xz);
  u_xlat31 = (abs(u_xlat31) * 4.0f);
  u_xlat31 = min(u_xlat31, 1.0f);
  u_xlat85 = max(u_xlat85, 0.00100000004749745131f);
  u_xlat59 = (-(u_xlat59) / vec2f(u_xlat85));
  let x_2105 = (u_xlat62.yy * u_xlat59.yx);
  u_xlat33 = vec3f(x_2105.x, u_xlat33.y, x_2105.y);
  let x_2115 = ((-(u_xlat33.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat33 = vec3f(x_2115.x, u_xlat33.y, x_2115.y);
  let x_2122 = (u_xlat33.xz * vec2f(2.38095235824584960938f));
  u_xlat33 = vec3f(x_2122.x, u_xlat33.y, x_2122.y);
  u_xlat59 = (u_xlat6.yy * u_xlat59);
  u_xlat59 = ((-(u_xlat59) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat59 = ((u_xlat59 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat33;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_2162.x, u_xlat33.y, x_2162.y);
  let x_2168 = u_xlat59;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat59 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat59 = (u_xlat63.yy * u_xlat59);
  u_xlat59 = ((u_xlat33.xz * u_xlat7.yy) + u_xlat59);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat59 = (u_xlat59 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat59);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat85 = ((u_xlat31 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat85)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat85 = dot(u_xlat3, u_xlat3);
  u_xlat85 = inverseSqrt(u_xlat85);
  u_xlat3 = (vec3f(u_xlat85) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat85 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat85) + 1.0f);
  u_xlat85 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat85 = (1.0f / u_xlat85);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat33 = vec3f(x_2286.x, u_xlat33.y, x_2286.y);
  let x_2294 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2294.x, u_xlat33.y, x_2294.y);
  let x_2302 = (u_xlat33.xz * x_81.x_ScreenSize.xy);
  u_xlat33 = vec3f(x_2302.x, u_xlat33.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat33.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat33 = vec3f(x_2331.x, u_xlat33.y, x_2331.y);
  let x_2341 = (-(u_xlat33.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat35 = vec3f(x_2341.x, u_xlat35.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat33.xx) + u_xlat35.xz);
  u_xlat33 = vec3f(x_2352.x, u_xlat33.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat33.xz);
  u_xlat33 = vec3f(x_2363.x, u_xlat33.y, x_2363.y);
  let x_2372 = (u_xlat33.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat33 = vec3f(x_2372.x, u_xlat33.y, x_2372.y);
  u_xlat87 = (u_xlat33.x / u_xlat33.z);
  u_xlat87 = (-(u_xlat87) + vs_TEXCOORD0.y);
  u_xlat87 = max(u_xlat87, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat33 = vec3f(x_2399.x, u_xlat33.y, x_2399.y);
  u_xlat60 = (u_xlat87 * 4.0f);
  u_xlat60 = min(u_xlat60, 1.0f);
  u_xlat24 = vec4f((((u_xlat33.xz * vec2f(u_xlat60)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb85 = (u_xlat2.x < u_xlat85);
  if (u_xlatb85) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat50 = x_2476;
  u_xlat2 = vec4f((((u_xlat50.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat50.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat85 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat85 = min(u_xlat85, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat33 = vec3f(x_2555.x, u_xlat33.y, x_2555.y);
  let x_2562 = min(u_xlat33.xz, u_xlat50.xy);
  u_xlat33 = vec3f(x_2562.x, u_xlat33.y, x_2562.y);
  let x_2570 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2570.x, u_xlat33.y, x_2570.y);
  let x_2578 = u_xlat33;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat50 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat24.w);
  let x_2629 = u_xlat24.xy;
  txVec0 = vec3f(x_2629.x, x_2629.y, u_xlat24.z);
  u_xlat30 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat60 = (-(x_2590.x_MainLightShadowParams.x) + 1.0f);
  u_xlat30 = ((u_xlat30 * x_2590.x_MainLightShadowParams.x) + u_xlat60);
  u_xlatb60 = (0.0f >= u_xlat24.z);
  u_xlatb33 = (u_xlat24.z >= 1.0f);
  u_xlatb60 = (u_xlatb60 | u_xlatb33);
  u_xlat30 = select(u_xlat30, 1.0f, u_xlatb60);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat60 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat60 = ((u_xlat60 * x_2590.x_MainLightShadowParams.z) + x_2590.x_MainLightShadowParams.w);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat33.x = (-(u_xlat30) + 1.0f);
  u_xlat30 = ((u_xlat60 * u_xlat33.x) + u_xlat30);
  u_xlat25.x = dot(x_2710.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_2710.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_2710.unity_SHAb.yw, x_376);
  u_xlat25 = (u_xlat25 + -(x_2710.unity_SHC.xyz));
  u_xlat26 = (x_81.x_B612WaterShallow.xyz + x_2739);
  u_xlat26 = ((x_81.x_B612SunDirection.www * u_xlat26) + x_2746);
  u_xlat26 = (u_xlat26 * x_142.x_ScatterColor.xyz);
  u_xlat27 = (x_81.x_B612WaterDeep.xyz + x_2739);
  u_xlat27 = ((x_81.x_B612SunDirection.www * u_xlat27) + x_2746);
  let x_2771 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_2775 = (u_xlat23.xw / vec2f(x_2771.x, x_2771.y));
  u_xlat33 = vec3f(x_2775.x, u_xlat33.y, x_2775.y);
  let x_2788 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat33.xz);
  u_xlat34 = vec3f(x_2788.x, u_xlat34.y, x_2788.y);
  let x_2796 = u_xlat34;
  let x_2799 = x_81.x_GlobalMipBias.x;
  let x_2800 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2796.xz, x_2799);
  u_xlat60 = x_2800.x;
  let x_2808 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat34 = vec3f(x_2808.x, u_xlat34.y, x_2808.y);
  let x_2818 = ((u_xlat33.xz * vec2f(1.12999999523162841797f)) + u_xlat34.xz);
  u_xlat33 = vec3f(x_2818.x, u_xlat33.y, x_2818.y);
  let x_2824 = u_xlat33;
  let x_2827 = x_81.x_GlobalMipBias.x;
  let x_2828 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2824.xz, x_2827);
  u_xlat33.x = x_2828.x;
  let x_2837 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat34 = vec3f(x_2837.x, u_xlat34.y, x_2837.y);
  u_xlat89 = dot(u_xlat34.xz, u_xlat34.xz);
  u_xlat89 = sqrt(u_xlat89);
  u_xlat34.x = (u_xlat89 + -(x_142.x_BoilRadius));
  u_xlat90 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat34.x);
  u_xlat90 = (u_xlat90 / u_xlat38.x);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat90 = (u_xlat90 * -1.44269502162933349609f);
  u_xlat90 = exp2(u_xlat90);
  u_xlat35.x = max(u_xlat89, 0.15000000596046447754f);
  u_xlat35.x = (u_xlat35.x * 6.66666650772094726562f);
  u_xlat35.x = inverseSqrt(u_xlat35.x);
  let x_2890 = (u_xlat35.xx * u_xlat39.xz);
  u_xlat39 = vec3f(x_2890.x, u_xlat39.y, x_2890.y);
  u_xlat91 = (u_xlat94 * u_xlat39.x);
  u_xlat91 = (u_xlat11.x * u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat91 = ((u_xlat5.x * u_xlat34.x) + -(u_xlat67));
  u_xlat91 = cos(u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat90 = select(0.0f, u_xlat90, u_xlatb93);
  let x_2925 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_2925.x, x_2925.y)) * u_xlat12.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat69);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat96 * u_xlat39.z);
  u_xlat91 = (u_xlat14.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_2966 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat42.xy));
  u_xlat38 = vec3f(x_2966.x, u_xlat38.y, x_2966.y);
  let x_2971 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_2971.x, u_xlat38.y, x_2971.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat68 * u_xlat11.x);
  u_xlat91 = (u_xlat17.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.y);
  let x_3019 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3019.x, x_3019.y)) * u_xlat43.xz) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat45);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat98 * u_xlat11.y);
  u_xlat91 = (u_xlat18.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_3060 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat46.xy));
  u_xlat38 = vec3f(x_3060.x, u_xlat38.y, x_3060.y);
  let x_3065 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_3065.x, u_xlat38.y, x_3065.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat72)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat101 * u_xlat11.x);
  u_xlat91 = (u_xlat20.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.y);
  let x_3112 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3112.x, x_3112.y)) * u_xlat19.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat49.xz);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat37.x * u_xlat11.y);
  u_xlat91 = (u_xlat21.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  u_xlat37 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat75));
  u_xlat37 = cos(u_xlat37);
  u_xlat5.x = ((u_xlat91 * u_xlat37.x) + u_xlat90);
  if (u_xlatb48.x) {
    x_3166 = u_xlat5.x;
  } else {
    x_3166 = u_xlat90;
  }
  u_xlat5.x = x_3166;
  u_xlat34.x = (u_xlat35.x * u_xlat9.x);
  u_xlat34.x = (u_xlat66 * u_xlat34.x);
  u_xlat34.x = (u_xlat22.x * u_xlat34.x);
  u_xlat34.x = (u_xlat34.x * u_xlat65.y);
  u_xlat34.x = ((u_xlat34.x * u_xlat37.y) + u_xlat5.x);
  if (u_xlatb48.y) {
    x_3209 = u_xlat34.x;
  } else {
    x_3209 = u_xlat5.x;
  }
  u_xlat5.x = x_3209;
  u_xlat34.x = (u_xlat89 / u_xlat92);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat34.x = max(u_xlat34.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat34.x * u_xlat5.x);
  u_xlat89 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat89);
  u_xlat89 = (u_xlat79.x * u_xlat89);
  u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
  u_xlat34.x = ((u_xlat89 * -2.0f) + 3.0f);
  u_xlat89 = (u_xlat89 * u_xlat89);
  u_xlat89 = (u_xlat89 * u_xlat34.x);
  u_xlat5.x = (u_xlat89 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat60 = min(u_xlat60, u_xlat33.x);
  u_xlat60 = (u_xlat60 * 2.5f);
  u_xlat60 = (u_xlat60 * x_142.x_CausticsStrength);
  let x_3295 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat33 = vec3f(x_3295.x, u_xlat33.y, x_3295.y);
  u_xlat2.x = min(u_xlat33.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat60 = exp2(u_xlat33.z);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_3326 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_3326.xy, u_xlat5.z, x_3326.z);
  let x_3333 = (vec3f(u_xlat30) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_3333.xy, u_xlat5.z, x_3333.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_3349 = ((u_xlat5.xyw * u_xlat2.xxx) + x_2746);
  u_xlat5 = vec4f(x_3349.xy, u_xlat5.z, x_3349.z);
  let x_3355 = (u_xlat5.xyw * u_xlat50);
  u_xlat5 = vec4f(x_3355.xy, u_xlat5.z, x_3355.z);
  u_xlat9 = vec4f(((vec3f(u_xlat85) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat85 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat38 = (vec3f(u_xlat30) * x_81.x_MainLightColor.xyz);
  u_xlat30 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat30 = clamp(u_xlat30, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat30) * u_xlat38);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25);
  u_xlat85 = (u_xlat85 * 0.69999998807907104492f);
  u_xlat85 = min(u_xlat85, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27) + -(u_xlat26))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat85) * u_xlat12.xyz) + u_xlat26)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_3457 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_3457.xy, u_xlat5.z, x_3457.z);
  u_xlat85 = dot(u_xlat3, u_xlat28);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat30 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat60 = (-(x_142.x_F0) + 1.0f);
  u_xlat34.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat60);
  u_xlat85 = (-(u_xlat85) + 1.0f);
  u_xlat90 = (u_xlat85 * u_xlat85);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat85 = (u_xlat85 * u_xlat90);
  u_xlat85 = ((u_xlat34.x * u_xlat85) + u_xlat30);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat30 = dot(-(u_xlat28), u_xlat3);
  u_xlat30 = (u_xlat30 + u_xlat30);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat30))) + -(u_xlat28))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat30 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat30 = (u_xlat30 * x_142.x_Roughness);
  u_xlat30 = (u_xlat30 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu62 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu62.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu62.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat29.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_3599 = u_xlat29.x;
  } else {
    x_3599 = u_xlat1.x;
  }
  u_xlat0.x = x_3599;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu62.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_3661 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_3668 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_3669 = vec2i(x_3661, x_3668);
  u_xlati1 = vec3i(x_3669.x, u_xlati1.y, x_3669.y);
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_3693 = ~(u_xlati1.xz);
  u_xlati35 = vec3i(x_3693.x, u_xlati35.y, x_3693.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati34) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati34.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati35.z) & bitcast<u32>(u_xlati34.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb34 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati67 = 0i;
  u_xlatu95 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat57.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu35 = (u_xlatu95 >> 16u);
    u_xlati91 = u_xlati67;
    u_xlatu92 = u_xlatu95;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb37 = (u_xlati91 == 0i);
      u_xlatu96 = (u_xlatu92 & 65535u);
      u_xlatb96 = (u_xlatu35 >= u_xlatu96);
      u_xlatb37 = (u_xlatb37 & u_xlatb96);
      if (!(u_xlatb37)) {
        break;
      }
      param_6 = u_xlatu92;
      param_7 = 5i;
      param_8 = 11i;
      let x_3807 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu37 = x_3807;
      u_xlatu13 = (vec4u(u_xlatu37) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3828 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3835 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3842 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3849 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_3828, x_3835, x_3842, x_3849);
      u_xlati70 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_3858.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_3858.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_3890 = bitcast<vec2i>((bitcast<vec2u>(u_xlati70) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_3890.x, u_xlati14.y, x_3890.y);
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati41) | bitcast<u32>(u_xlati13.x)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu92) & 31i)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati37 = (bitcast<i32>(u_xlatu37) << bitcast<u32>(5i));
      u_xlatu37 = (u_xlatu35 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati37)))));
      u_xlatu37 = min(u_xlatu37, 31u);
      u_xlatu37 = (bitcast<u32>(-(bitcast<i32>(u_xlatu37))) + 31u);
      u_xlatu37 = (4294967295u >> (u_xlatu37 & 31u));
      u_xlati91 = bitcast<i32>((u_xlatu37 & bitcast<u32>(u_xlati96)));
      u_xlati37 = (bitcast<i32>(u_xlatu92) + 32i);
      u_xlatu92 = (bitcast<u32>(u_xlati37) & 4294967264u);
    }
    u_xlatu95 = u_xlatu92;
    u_xlatb35 = (u_xlati91 != 0i);
    u_xlatb37 = (u_xlat57.x < 0.99000000953674316406f);
    u_xlatb35 = (u_xlatb35 & u_xlatb37);
    if (!(u_xlatb35)) {
      break;
    }
    u_xlati35.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati91)));
    u_xlati37 = (1i << bitcast<u32>((u_xlati35.x & 31i)));
    u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati91) ^ bitcast<u32>(u_xlati37)));
    u_xlati37 = (bitcast<i32>(u_xlatu95) + -32i);
    u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati37) & 65504u));
    u_xlati35.x = (u_xlati35.x + u_xlati37);
    u_xlati35.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati35.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].www)).xyz, u_xlat13.w);
    u_xlat37.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat37.x = min(u_xlat37.x, u_xlat13.x);
    u_xlat37.x = clamp(u_xlat37.x, 0.0f, 1.0f);
    u_xlat96 = (-(u_xlat57.x) + 1.0f);
    u_xlat37.x = min(u_xlat37.x, u_xlat96);
    u_xlatb96 = (0.0f < x_4093.urp_ReflProbes_ProbePosition[u_xlati35.x].w);
    if (u_xlatb34.x) {
      x_4159 = x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].x;
    } else {
      x_4159 = x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].x;
    }
    u_xlat13.x = x_4159;
    if (u_xlatb34.y) {
      x_4175 = x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].y;
    } else {
      x_4175 = x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].y;
    }
    u_xlat13.y = x_4175;
    if (u_xlatb34.z) {
      x_4191 = x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].z;
    } else {
      x_4191 = x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].z;
    }
    u_xlat13.z = x_4191;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat41 = (vs_TEXCOORD0 + -(x_4093.urp_ReflProbes_ProbePosition[u_xlati35.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat41)).xyz, u_xlat13.w);
    if (u_xlatb96) {
      x_4250 = u_xlat13.xyz;
    } else {
      x_4250 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_4250.xyz, u_xlat13.w);
    u_xlatu96 = u32(abs(x_4093.urp_ReflProbes_ProbePosition[u_xlati35.x].w));
    u_xlatu96 = (u_xlatu96 + 4294967295u);
    u_xlat96 = f32(u_xlatu96);
    u_xlat96 = min(u_xlat30, u_xlat96);
    u_xlat97 = dot(abs(u_xlat13.xyz), x_2746);
    u_xlat97 = max(u_xlat97, 0.00000099999999747524f);
    u_xlat97 = (1.0f / u_xlat97);
    u_xlat14 = (vec3f(u_xlat97) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb42 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb42.x) {
      x_4306 = u_xlat14.x;
    } else {
      x_4306 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_4306;
    if (u_xlatb42.y) {
      x_4319 = u_xlat14.x;
    } else {
      x_4319 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_4319;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat97)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat69.x = floor(u_xlat96);
    u_xlat69.y = (u_xlat69.x + 1.0f);
    u_xlat96 = (u_xlat96 + -(u_xlat69.x));
    u_xlatu69 = vec2u(u_xlat69);
    u_xlati69 = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.x));
    u_xlati35.x = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.y));
    u_xlat69 = ((u_xlat13.xy * x_4093.urp_ReflProbes_MipScaleOffset[u_xlati69].xy) + x_4093.urp_ReflProbes_MipScaleOffset[u_xlati69].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat69, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_4093.urp_ReflProbes_MipScaleOffset[u_xlati35.x].xy) + x_4093.urp_ReflProbes_MipScaleOffset[u_xlati35.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat96) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat37.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat57.x = (u_xlat57.x + u_xlat37.x);
  }
  u_xlatb0 = (u_xlat57.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat30);
    u_xlat0.x = (-(u_xlat57.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat85) * u_xlat1) + u_xlat5.xyw);
  let x_4561 = (u_xlat28 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_4561.xy, u_xlat5.z, x_4561.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_4583 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4583.xy, u_xlat5.z, x_4583.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat85 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat85 = max(u_xlat85, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat85 * u_xlat85);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat85 = ((u_xlat85 * u_xlat85) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat85) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat28.x = dot(u_xlat5.xyw, u_xlat28);
  u_xlat28.x = clamp(u_xlat28.x, 0.0f, 1.0f);
  u_xlat28.x = (-(u_xlat28.x) + 1.0f);
  u_xlat56 = (u_xlat28.x * u_xlat28.x);
  u_xlat56 = (u_xlat56 * u_xlat56);
  u_xlat28.x = (u_xlat56 * u_xlat28.x);
  u_xlat28.x = ((u_xlat60 * u_xlat28.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat28.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat38);
  let x_4702 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_4702.x, x_4702.y, x_4702.z));
  u_xlat84 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat84 = (u_xlat84 * 4.0f);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat84)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat57 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat57 = (-(u_xlat57) + u_xlat1.xy);
  let x_4745 = u_xlat57;
  let x_4747 = x_81.x_GlobalMipBias.x;
  let x_4748 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4745, x_4747);
  u_xlat84 = x_4748.x;
  u_xlat57 = (u_xlat32.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat57) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_4773 = u_xlat1;
  let x_4776 = x_81.x_GlobalMipBias.x;
  let x_4777 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4773.xy, x_4776);
  u_xlat1.x = x_4777.x;
  u_xlat1.x = (u_xlat63.x * u_xlat1.x);
  u_xlat84 = ((u_xlat84 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat29.x = (-(u_xlat64.x) + 1.0f);
  u_xlat1.x = (u_xlat29.x * u_xlat1.x);
  u_xlat29 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_4827 = u_xlat29;
  let x_4829 = x_81.x_GlobalMipBias.x;
  let x_4830 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4827, x_4829);
  u_xlat29.x = x_4830.y;
  u_xlat57.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat57.x = (u_xlat57.x * u_xlat57.x);
  u_xlat57.x = (u_xlat57.x * -1.44269502162933349609f);
  u_xlat57.x = exp2(u_xlat57.x);
  u_xlat57.x = ((u_xlat64.x * 0.34999999403953552246f) + u_xlat57.x);
  u_xlat29.x = (u_xlat57.x * u_xlat29.x);
  u_xlat29.x = (u_xlat61 * u_xlat29.x);
  u_xlat29.x = (u_xlat29.x * 0.89999997615814208984f);
  u_xlat84 = ((u_xlat84 * u_xlat1.x) + u_xlat29.x);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat38 * vec3f(0.69999998807907104492f)) + u_xlat25);
  u_xlat84 = (u_xlat84 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  SV_Target0 = vec4f((((vec3f(u_xlat84) * u_xlat1) + u_xlat0)).xyz, SV_Target0.w);
  SV_Target0.w = (u_xlat87 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
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
  vs_TEXCOORD1 = (u_xlat0.x * x_74.unity_FogParams.x);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  unity_FogColor : vec4f,
  /* @offset(240) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(304) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(368) */
  x_ScreenSize : vec4f,
  /* @offset(384) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(416) */
  x_B612SunDirection : vec4f,
  /* @offset(432) */
  x_B612WaterShallow : vec4f,
  /* @offset(448) */
  x_B612WaterDeep : vec4f,
  /* @offset(464) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2589 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2828 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_3801 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_3978 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_4213 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : f32;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_744 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2859 = vec3f(-1.0f);

const x_2866 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat28 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat59 : vec2f;
  var u_xlat85 : f32;
  var u_xlat4 : vec4f;
  var u_xlat60 : f32;
  var u_xlat88 : f32;
  var u_xlatb32 : bool;
  var x_281 : vec2f;
  var u_xlat32 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat33 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat62 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat63 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat64 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat65 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb93 : bool;
  var u_xlat11 : vec3f;
  var u_xlat38 : vec3f;
  var u_xlat66 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat39 : vec3f;
  var u_xlat92 : f32;
  var u_xlat94 : f32;
  var u_xlat67 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat69 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat96 : f32;
  var u_xlat68 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat99 : f32;
  var u_xlat98 : f32;
  var u_xlat43 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat45 : vec2f;
  var u_xlat46 : vec3f;
  var u_xlat72 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat101 : f32;
  var u_xlat102 : f32;
  var u_xlatb48 : vec2<bool>;
  var u_xlat49 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat37 : vec2f;
  var u_xlat75 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat50 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat79 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat61 : f32;
  var u_xlat104 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat31 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat35 : vec3f;
  var u_xlat87 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb85 : bool;
  var x_2476 : vec3f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec3f;
  var u_xlat27 : vec3f;
  var u_xlatb24 : vec4<bool>;
  var u_xlat30 : f32;
  var u_xlatu30 : u32;
  var u_xlati30 : i32;
  var txVec0 : vec3f;
  var u_xlatb60 : bool;
  var u_xlatb33 : bool;
  var u_xlat34 : vec3f;
  var u_xlat89 : f32;
  var u_xlat90 : f32;
  var u_xlat91 : f32;
  var x_3285 : f32;
  var x_3328 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu62 : vec2u;
  var u_xlati6 : i32;
  var u_xlat29 : vec2f;
  var u_xlat0 : vec3f;
  var x_3719 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati29 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati34 : vec2i;
  var u_xlati35 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb34 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati67 : i32;
  var u_xlatu95 : u32;
  var u_xlat57 : vec2f;
  var u_xlatu35 : u32;
  var u_xlati91 : i32;
  var u_xlatu92 : u32;
  var u_xlatb37 : bool;
  var u_xlatu96 : u32;
  var u_xlatb96 : bool;
  var u_xlatu37 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati70 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati96 : i32;
  var u_xlati41 : i32;
  var u_xlati37 : i32;
  var u_xlatb35 : bool;
  var x_4279 : f32;
  var x_4295 : f32;
  var x_4311 : f32;
  var u_xlat41 : vec3f;
  var x_4370 : vec3f;
  var u_xlat97 : f32;
  var u_xlatb42 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_4426 : f32;
  var x_4439 : f32;
  var u_xlatu69 : vec2u;
  var u_xlati69 : i32;
  var u_xlat56 : f32;
  var u_xlat84 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat28 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat28, u_xlat28);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat28 = (u_xlat28 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat28;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat28 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat59 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat85 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat85, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat60 = max(u_xlat60, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat60))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat59.yx + u_xlat59.yx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat59, u_xlat59);
  u_xlat88 = max(u_xlat60, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat88))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb32 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb32) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat32 = vec3f(x_314.x, u_xlat32.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat33 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat62 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat62) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat63 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat62.x * 4.0f);
  u_xlat8 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat32 = vec3f(x_405.x, u_xlat32.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat64 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat64 = (u_xlat64 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat64;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat64 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat65 = (u_xlat32.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat65 = (u_xlat65 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat65));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat63.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat64 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat64 = max(vec2f(u_xlat85), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat64.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat64.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat65.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat65.x = sin(u_xlat65.x);
  u_xlat65.x = (u_xlat65.x * 43758.546875f);
  u_xlat65.x = fract(u_xlat65.x);
  u_xlat65.x = ((u_xlat65.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat65.x = (u_xlat65.x / u_xlat9.y);
  u_xlat65.x = (-(u_xlat65.x) + x_81.x_Time.y);
  u_xlatb93 = (u_xlat65.x >= 0.0f);
  u_xlat10.x = (u_xlat85 + -(x_142.x_BoilRadius));
  let x_745 = (u_xlat65.xx * x_744);
  u_xlat11 = vec3f(x_745.x, u_xlat11.y, x_745.y);
  u_xlat38.x = ((u_xlat65.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat66 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat10.x);
  u_xlat66 = (u_xlat66 / u_xlat38.x);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat66 = (u_xlat66 * -1.44269502162933349609f);
  u_xlat66 = exp2(u_xlat66);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat39 = vec3f(x_804.x, u_xlat39.y, x_804.y);
  u_xlat92 = (u_xlat64.y * 6.66666650772094726562f);
  u_xlat92 = inverseSqrt(u_xlat92);
  let x_818 = (vec2f(u_xlat92) * u_xlat39.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat94 = exp2(u_xlat11.z);
  u_xlat67 = (u_xlat94 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat67 = (u_xlat11.x * u_xlat67);
  u_xlat66 = (u_xlat66 * u_xlat67);
  u_xlat67 = (u_xlat64.x * u_xlat65.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat67));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat66 = (u_xlat66 * u_xlat12.x);
  u_xlat66 = select(0.0f, u_xlat66, u_xlatb93);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_744);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat69 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat42 = vec3f(x_931.x, u_xlat42.y, x_931.y);
  let x_937 = (u_xlat42.xz / u_xlat69);
  u_xlat42 = vec3f(x_937.x, u_xlat42.y, x_937.y);
  let x_944 = (u_xlat42.xz * u_xlat42.xz);
  u_xlat42 = vec3f(x_944.x, u_xlat42.y, x_944.y);
  let x_950 = (u_xlat42.xz * x_949);
  u_xlat42 = vec3f(x_950.x, u_xlat42.y, x_950.y);
  let x_955 = exp2(u_xlat42.xz);
  u_xlat42 = vec3f(x_955.x, u_xlat42.y, x_955.y);
  u_xlat96 = exp2(u_xlat14.z);
  u_xlat68 = (u_xlat96 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat68 = (u_xlat68 * u_xlat14.x);
  u_xlat68 = (u_xlat68 * u_xlat42.x);
  u_xlat42 = vec3f(((u_xlat64.xx * u_xlat12.xy)).xy, u_xlat42.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat42.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat68 = ((u_xlat68 * u_xlat15.x) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat68, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat92) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_744);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat68 = exp2(u_xlat17.z);
  u_xlat99 = (u_xlat68 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat99 = (u_xlat99 * u_xlat17.x);
  u_xlat98 = (u_xlat42.z * u_xlat99);
  u_xlat98 = ((u_xlat98 * u_xlat15.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat98, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat43 = vec3f(x_1094.x, u_xlat43.y, x_1094.y);
  let x_1101 = (u_xlat43.xz / u_xlat9.yy);
  u_xlat43 = vec3f(x_1101.x, u_xlat43.y, x_1101.y);
  let x_1110 = (-(u_xlat43.xz) + x_81.x_Time.yy);
  u_xlat43 = vec3f(x_1110.x, u_xlat43.y, x_1110.y);
  u_xlatb16 = ((u_xlat43.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat43.xx * x_744);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat45 = ((u_xlat43.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat43.xz) + u_xlat10.xx);
  u_xlat46 = vec3f(x_1144.x, u_xlat46.y, x_1144.y);
  let x_1150 = (u_xlat46.xz / u_xlat45);
  u_xlat46 = vec3f(x_1150.x, u_xlat46.y, x_1150.y);
  let x_1157 = (u_xlat46.xz * u_xlat46.xz);
  u_xlat46 = vec3f(x_1157.x, u_xlat46.y, x_1157.y);
  let x_1162 = (u_xlat46.xz * x_949);
  u_xlat46 = vec3f(x_1162.x, u_xlat46.y, x_1162.y);
  let x_1167 = exp2(u_xlat46.xz);
  u_xlat46 = vec3f(x_1167.x, u_xlat46.y, x_1167.y);
  u_xlat98 = exp2(u_xlat18.z);
  u_xlat72.x = (u_xlat98 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat72.x = (u_xlat72.x * u_xlat18.x);
  u_xlat72.x = (u_xlat72.x * u_xlat46.x);
  u_xlat46 = vec3f(((u_xlat64.xx * u_xlat43.xz)).xy, u_xlat46.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat46.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat72.x = ((u_xlat72.x * u_xlat19.x) + u_xlat66);
  if (u_xlatb16.x) {
    x_1232 = u_xlat72.x;
  } else {
    x_1232 = u_xlat66;
  }
  u_xlat66 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat72 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat92) * u_xlat72);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat43.zz * x_744);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat101 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat101 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat102 = (u_xlat46.z * u_xlat19.x);
  u_xlat102 = ((u_xlat102 * u_xlat19.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat102, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb48 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_744);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat49 = vec3f(x_1350.x, u_xlat49.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat49.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat37.x = exp2(u_xlat21.z);
  u_xlat102 = (u_xlat37.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat102 = (u_xlat102 * u_xlat21.x);
  u_xlat102 = (u_xlat102 * u_xlat22.x);
  u_xlat75 = (u_xlat64.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat75));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat64.x = ((u_xlat102 * u_xlat22.x) + u_xlat66);
  if (u_xlatb48.x) {
    x_1450 = u_xlat64.x;
  } else {
    x_1450 = u_xlat66;
  }
  u_xlat64.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat92 = (u_xlat92 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_744);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat66 = exp2(u_xlat22.w);
  u_xlat92 = (u_xlat92 * u_xlat66);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat92 = (u_xlat92 * u_xlat22.x);
  u_xlat92 = (u_xlat92 * u_xlat22.y);
  u_xlat92 = ((u_xlat92 * u_xlat22.z) + u_xlat64.x);
  if (u_xlatb48.y) {
    x_1524 = u_xlat92;
  } else {
    x_1524 = u_xlat64.x;
  }
  u_xlat64.x = x_1524;
  u_xlat92 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat102 = (u_xlat85 / u_xlat92);
  u_xlat102 = (-(u_xlat102) + 1.0f);
  u_xlat102 = max(u_xlat102, 0.0f);
  u_xlat64.x = (u_xlat64.x * x_142.x_RingStrength);
  u_xlat64.x = (u_xlat102 * u_xlat64.x);
  u_xlat50 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat85))).xy, u_xlat23.zw);
  u_xlat79 = (x_376 / u_xlat50.xy);
  u_xlat23 = vec4f(((u_xlat79 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat102 = (u_xlat23.x * u_xlat24.x);
  u_xlat64.x = (u_xlat64.x * u_xlat102);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat64.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat64.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat61 = sin(u_xlat33.y);
  u_xlat61 = (u_xlat61 * 1.70000004768371582031f);
  u_xlat61 = ((u_xlat64.x * 6.28318548202514648438f) + u_xlat61);
  u_xlat61 = sin(u_xlat61);
  u_xlat61 = ((u_xlat61 * 0.25f) + 0.75f);
  u_xlat64.x = (u_xlat85 * -(u_xlat85));
  u_xlat102 = (u_xlat50.x * u_xlat50.x);
  u_xlat64.x = (u_xlat64.x / u_xlat102);
  u_xlat64.x = (u_xlat64.x * 1.44269502162933349609f);
  u_xlat64.x = exp2(u_xlat64.x);
  u_xlat104 = (u_xlat85 + u_xlat85);
  u_xlat102 = (u_xlat104 / u_xlat102);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat102));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat64.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat50 = vec3f(((u_xlat50.xx * u_xlat23.xw)).xy, u_xlat50.z);
  let x_1734 = ((u_xlat50.xy * vec2f(u_xlat61)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat64.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat33.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat33 = vec3f(x_1763.x, u_xlat33.y, x_1763.y);
  let x_1769 = u_xlat33;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_1786.x, u_xlat33.y, x_1786.y);
  u_xlat50 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat50.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat50.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat50.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat102 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat85 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat85);
  u_xlat102 = (1.0f / u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat102 = ((u_xlat85 * -2.0f) + 3.0f);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat64.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat33.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat85)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat85 = sqrt(u_xlat60);
  u_xlat50 = (vec3f(u_xlat85) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat50 = (u_xlat50 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat50 = clamp(u_xlat50, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat50 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat50 = (u_xlat50 * u_xlat50);
  u_xlat60 = (u_xlat50.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat50.xz) + x_376);
  u_xlat33 = vec3f(x_1932.x, u_xlat33.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat62.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat62.x = dot(u_xlat62.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat62.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat33.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat33.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat60 * u_xlat33.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat33 = vec3f(x_2080.x, u_xlat33.y, x_2080.y);
  u_xlat31 = dot(u_xlat59.yx, u_xlat33.xz);
  u_xlat31 = (abs(u_xlat31) * 4.0f);
  u_xlat31 = min(u_xlat31, 1.0f);
  u_xlat85 = max(u_xlat85, 0.00100000004749745131f);
  u_xlat59 = (-(u_xlat59) / vec2f(u_xlat85));
  let x_2105 = (u_xlat62.yy * u_xlat59.yx);
  u_xlat33 = vec3f(x_2105.x, u_xlat33.y, x_2105.y);
  let x_2115 = ((-(u_xlat33.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat33 = vec3f(x_2115.x, u_xlat33.y, x_2115.y);
  let x_2122 = (u_xlat33.xz * vec2f(2.38095235824584960938f));
  u_xlat33 = vec3f(x_2122.x, u_xlat33.y, x_2122.y);
  u_xlat59 = (u_xlat6.yy * u_xlat59);
  u_xlat59 = ((-(u_xlat59) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat59 = ((u_xlat59 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat33;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_2162.x, u_xlat33.y, x_2162.y);
  let x_2168 = u_xlat59;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat59 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat59 = (u_xlat63.yy * u_xlat59);
  u_xlat59 = ((u_xlat33.xz * u_xlat7.yy) + u_xlat59);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat59 = (u_xlat59 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat59);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat85 = ((u_xlat31 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat85)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat85 = dot(u_xlat3, u_xlat3);
  u_xlat85 = inverseSqrt(u_xlat85);
  u_xlat3 = (vec3f(u_xlat85) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat85 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat85) + 1.0f);
  u_xlat85 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat85 = (1.0f / u_xlat85);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat33 = vec3f(x_2286.x, u_xlat33.y, x_2286.y);
  let x_2294 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2294.x, u_xlat33.y, x_2294.y);
  let x_2302 = (u_xlat33.xz * x_81.x_ScreenSize.xy);
  u_xlat33 = vec3f(x_2302.x, u_xlat33.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat33.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat33 = vec3f(x_2331.x, u_xlat33.y, x_2331.y);
  let x_2341 = (-(u_xlat33.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat35 = vec3f(x_2341.x, u_xlat35.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat33.xx) + u_xlat35.xz);
  u_xlat33 = vec3f(x_2352.x, u_xlat33.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat33.xz);
  u_xlat33 = vec3f(x_2363.x, u_xlat33.y, x_2363.y);
  let x_2372 = (u_xlat33.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat33 = vec3f(x_2372.x, u_xlat33.y, x_2372.y);
  u_xlat87 = (u_xlat33.x / u_xlat33.z);
  u_xlat87 = (-(u_xlat87) + vs_TEXCOORD0.y);
  u_xlat87 = max(u_xlat87, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat33 = vec3f(x_2399.x, u_xlat33.y, x_2399.y);
  u_xlat60 = (u_xlat87 * 4.0f);
  u_xlat60 = min(u_xlat60, 1.0f);
  u_xlat24 = vec4f((((u_xlat33.xz * vec2f(u_xlat60)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb85 = (u_xlat2.x < u_xlat85);
  if (u_xlatb85) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat50 = x_2476;
  u_xlat2 = vec4f((((u_xlat50.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat50.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat85 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat85 = min(u_xlat85, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat33 = vec3f(x_2555.x, u_xlat33.y, x_2555.y);
  let x_2562 = min(u_xlat33.xz, u_xlat50.xy);
  u_xlat33 = vec3f(x_2562.x, u_xlat33.y, x_2562.y);
  let x_2570 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2570.x, u_xlat33.y, x_2570.y);
  let x_2578 = u_xlat33;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat50 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat24.w);
  u_xlat25 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat25.w);
  u_xlat26 = (vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres2.xyz));
  u_xlat27 = (vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres3.xyz));
  u_xlat24.x = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat24.y = dot(u_xlat25.xyz, u_xlat25.xyz);
  u_xlat24.z = dot(u_xlat26, u_xlat26);
  u_xlat24.w = dot(u_xlat27, u_xlat27);
  u_xlatb24 = (u_xlat24 < x_2589.x_CascadeShadowSplitSphereRadii);
  u_xlat25.x = select(0.0f, 1.0f, u_xlatb24.x);
  u_xlat25.y = select(0.0f, 1.0f, u_xlatb24.y);
  u_xlat25.z = select(0.0f, 1.0f, u_xlatb24.z);
  u_xlat25.w = select(0.0f, 1.0f, u_xlatb24.w);
  u_xlat24.x = select(-0.0f, -1.0f, u_xlatb24.x);
  u_xlat24.y = select(-0.0f, -1.0f, u_xlatb24.y);
  u_xlat24.z = select(-0.0f, -1.0f, u_xlatb24.z);
  u_xlat24 = vec4f(((u_xlat24.xyz + u_xlat25.yzw)).xyz, u_xlat24.w);
  u_xlat25 = vec4f(u_xlat25.x, max(u_xlat24.xyz, vec3f()).xyz);
  u_xlat30 = dot(u_xlat25, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat30 = (-(u_xlat30) + 4.0f);
  u_xlatu30 = u32(u_xlat30);
  u_xlati30 = (bitcast<i32>(u_xlatu30) << bitcast<u32>(2i));
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati30 + 1i)].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati30].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati30 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati30 + 3i)].xyz)).xyz, u_xlat24.w);
  let x_2749 = u_xlat24.xy;
  txVec0 = vec3f(x_2749.x, x_2749.y, u_xlat24.z);
  u_xlat30 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat60 = (-(x_2589.x_MainLightShadowParams.x) + 1.0f);
  u_xlat30 = ((u_xlat30 * x_2589.x_MainLightShadowParams.x) + u_xlat60);
  u_xlatb60 = (0.0f >= u_xlat24.z);
  u_xlatb33 = (u_xlat24.z >= 1.0f);
  u_xlatb60 = (u_xlatb60 | u_xlatb33);
  u_xlat30 = select(u_xlat30, 1.0f, u_xlatb60);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat60 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat60 = ((u_xlat60 * x_2589.x_MainLightShadowParams.z) + x_2589.x_MainLightShadowParams.w);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat33.x = (-(u_xlat30) + 1.0f);
  u_xlat30 = ((u_xlat60 * u_xlat33.x) + u_xlat30);
  u_xlat25.x = dot(x_2828.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_2828.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_2828.unity_SHAb.yw, x_376);
  u_xlat25 = vec4f(((u_xlat25.xyz + -(x_2828.unity_SHC.xyz))).xyz, u_xlat25.w);
  u_xlat26 = (x_81.x_B612WaterShallow.xyz + x_2859);
  u_xlat26 = ((x_81.x_B612SunDirection.www * u_xlat26) + x_2866);
  u_xlat26 = (u_xlat26 * x_142.x_ScatterColor.xyz);
  u_xlat27 = (x_81.x_B612WaterDeep.xyz + x_2859);
  u_xlat27 = ((x_81.x_B612SunDirection.www * u_xlat27) + x_2866);
  let x_2890 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_2894 = (u_xlat23.xw / vec2f(x_2890.x, x_2890.y));
  u_xlat33 = vec3f(x_2894.x, u_xlat33.y, x_2894.y);
  let x_2907 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat33.xz);
  u_xlat34 = vec3f(x_2907.x, u_xlat34.y, x_2907.y);
  let x_2915 = u_xlat34;
  let x_2918 = x_81.x_GlobalMipBias.x;
  let x_2919 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2915.xz, x_2918);
  u_xlat60 = x_2919.x;
  let x_2927 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat34 = vec3f(x_2927.x, u_xlat34.y, x_2927.y);
  let x_2937 = ((u_xlat33.xz * vec2f(1.12999999523162841797f)) + u_xlat34.xz);
  u_xlat33 = vec3f(x_2937.x, u_xlat33.y, x_2937.y);
  let x_2943 = u_xlat33;
  let x_2946 = x_81.x_GlobalMipBias.x;
  let x_2947 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2943.xz, x_2946);
  u_xlat33.x = x_2947.x;
  let x_2956 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat34 = vec3f(x_2956.x, u_xlat34.y, x_2956.y);
  u_xlat89 = dot(u_xlat34.xz, u_xlat34.xz);
  u_xlat89 = sqrt(u_xlat89);
  u_xlat34.x = (u_xlat89 + -(x_142.x_BoilRadius));
  u_xlat90 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat34.x);
  u_xlat90 = (u_xlat90 / u_xlat38.x);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat90 = (u_xlat90 * -1.44269502162933349609f);
  u_xlat90 = exp2(u_xlat90);
  u_xlat35.x = max(u_xlat89, 0.15000000596046447754f);
  u_xlat35.x = (u_xlat35.x * 6.66666650772094726562f);
  u_xlat35.x = inverseSqrt(u_xlat35.x);
  let x_3009 = (u_xlat35.xx * u_xlat39.xz);
  u_xlat39 = vec3f(x_3009.x, u_xlat39.y, x_3009.y);
  u_xlat91 = (u_xlat94 * u_xlat39.x);
  u_xlat91 = (u_xlat11.x * u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat91 = ((u_xlat5.x * u_xlat34.x) + -(u_xlat67));
  u_xlat91 = cos(u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat90 = select(0.0f, u_xlat90, u_xlatb93);
  let x_3044 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3044.x, x_3044.y)) * u_xlat12.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat69);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat96 * u_xlat39.z);
  u_xlat91 = (u_xlat14.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_3085 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat42.xy));
  u_xlat38 = vec3f(x_3085.x, u_xlat38.y, x_3085.y);
  let x_3090 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_3090.x, u_xlat38.y, x_3090.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat68 * u_xlat11.x);
  u_xlat91 = (u_xlat17.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.y);
  let x_3138 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3138.x, x_3138.y)) * u_xlat43.xz) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat45);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat98 * u_xlat11.y);
  u_xlat91 = (u_xlat18.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_3179 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat46.xy));
  u_xlat38 = vec3f(x_3179.x, u_xlat38.y, x_3179.y);
  let x_3184 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_3184.x, u_xlat38.y, x_3184.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat72)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat101 * u_xlat11.x);
  u_xlat91 = (u_xlat20.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.y);
  let x_3231 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3231.x, x_3231.y)) * u_xlat19.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat49.xz);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat37.x * u_xlat11.y);
  u_xlat91 = (u_xlat21.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  u_xlat37 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat75));
  u_xlat37 = cos(u_xlat37);
  u_xlat5.x = ((u_xlat91 * u_xlat37.x) + u_xlat90);
  if (u_xlatb48.x) {
    x_3285 = u_xlat5.x;
  } else {
    x_3285 = u_xlat90;
  }
  u_xlat5.x = x_3285;
  u_xlat34.x = (u_xlat35.x * u_xlat9.x);
  u_xlat34.x = (u_xlat66 * u_xlat34.x);
  u_xlat34.x = (u_xlat22.x * u_xlat34.x);
  u_xlat34.x = (u_xlat34.x * u_xlat65.y);
  u_xlat34.x = ((u_xlat34.x * u_xlat37.y) + u_xlat5.x);
  if (u_xlatb48.y) {
    x_3328 = u_xlat34.x;
  } else {
    x_3328 = u_xlat5.x;
  }
  u_xlat5.x = x_3328;
  u_xlat34.x = (u_xlat89 / u_xlat92);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat34.x = max(u_xlat34.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat34.x * u_xlat5.x);
  u_xlat89 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat89);
  u_xlat89 = (u_xlat79.x * u_xlat89);
  u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
  u_xlat34.x = ((u_xlat89 * -2.0f) + 3.0f);
  u_xlat89 = (u_xlat89 * u_xlat89);
  u_xlat89 = (u_xlat89 * u_xlat34.x);
  u_xlat5.x = (u_xlat89 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat60 = min(u_xlat60, u_xlat33.x);
  u_xlat60 = (u_xlat60 * 2.5f);
  u_xlat60 = (u_xlat60 * x_142.x_CausticsStrength);
  let x_3414 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat33 = vec3f(x_3414.x, u_xlat33.y, x_3414.y);
  u_xlat2.x = min(u_xlat33.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat60 = exp2(u_xlat33.z);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_3445 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_3445.xy, u_xlat5.z, x_3445.z);
  let x_3452 = (vec3f(u_xlat30) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_3452.xy, u_xlat5.z, x_3452.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_3468 = ((u_xlat5.xyw * u_xlat2.xxx) + x_2866);
  u_xlat5 = vec4f(x_3468.xy, u_xlat5.z, x_3468.z);
  let x_3474 = (u_xlat5.xyw * u_xlat50);
  u_xlat5 = vec4f(x_3474.xy, u_xlat5.z, x_3474.z);
  u_xlat9 = vec4f(((vec3f(u_xlat85) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat85 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat38 = (vec3f(u_xlat30) * x_81.x_MainLightColor.xyz);
  u_xlat30 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat30 = clamp(u_xlat30, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat30) * u_xlat38);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25.xyz);
  u_xlat85 = (u_xlat85 * 0.69999998807907104492f);
  u_xlat85 = min(u_xlat85, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27) + -(u_xlat26))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat85) * u_xlat12.xyz) + u_xlat26)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_3577 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_3577.xy, u_xlat5.z, x_3577.z);
  u_xlat85 = dot(u_xlat3, u_xlat28);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat30 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat60 = (-(x_142.x_F0) + 1.0f);
  u_xlat34.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat60);
  u_xlat85 = (-(u_xlat85) + 1.0f);
  u_xlat90 = (u_xlat85 * u_xlat85);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat85 = (u_xlat85 * u_xlat90);
  u_xlat85 = ((u_xlat34.x * u_xlat85) + u_xlat30);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat30 = dot(-(u_xlat28), u_xlat3);
  u_xlat30 = (u_xlat30 + u_xlat30);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat30))) + -(u_xlat28))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat30 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat30 = (u_xlat30 * x_142.x_Roughness);
  u_xlat30 = (u_xlat30 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu62 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu62.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu62.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat29.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_3719 = u_xlat29.x;
  } else {
    x_3719 = u_xlat1.x;
  }
  u_xlat0.x = x_3719;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu62.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_3781 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_3788 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_3789 = vec2i(x_3781, x_3788);
  u_xlati1 = vec3i(x_3789.x, u_xlati1.y, x_3789.y);
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_3813 = ~(u_xlati1.xz);
  u_xlati35 = vec3i(x_3813.x, u_xlati35.y, x_3813.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati34) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati34.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati35.z) & bitcast<u32>(u_xlati34.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb34 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati67 = 0i;
  u_xlatu95 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat57.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu35 = (u_xlatu95 >> 16u);
    u_xlati91 = u_xlati67;
    u_xlatu92 = u_xlatu95;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb37 = (u_xlati91 == 0i);
      u_xlatu96 = (u_xlatu92 & 65535u);
      u_xlatb96 = (u_xlatu35 >= u_xlatu96);
      u_xlatb37 = (u_xlatb37 & u_xlatb96);
      if (!(u_xlatb37)) {
        break;
      }
      param_6 = u_xlatu92;
      param_7 = 5i;
      param_8 = 11i;
      let x_3927 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu37 = x_3927;
      u_xlatu13 = (vec4u(u_xlatu37) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3948 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3955 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3962 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3969 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_3948, x_3955, x_3962, x_3969);
      u_xlati70 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_3978.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_3978.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_4010 = bitcast<vec2i>((bitcast<vec2u>(u_xlati70) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_4010.x, u_xlati14.y, x_4010.y);
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati41) | bitcast<u32>(u_xlati13.x)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu92) & 31i)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati37 = (bitcast<i32>(u_xlatu37) << bitcast<u32>(5i));
      u_xlatu37 = (u_xlatu35 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati37)))));
      u_xlatu37 = min(u_xlatu37, 31u);
      u_xlatu37 = (bitcast<u32>(-(bitcast<i32>(u_xlatu37))) + 31u);
      u_xlatu37 = (4294967295u >> (u_xlatu37 & 31u));
      u_xlati91 = bitcast<i32>((u_xlatu37 & bitcast<u32>(u_xlati96)));
      u_xlati37 = (bitcast<i32>(u_xlatu92) + 32i);
      u_xlatu92 = (bitcast<u32>(u_xlati37) & 4294967264u);
    }
    u_xlatu95 = u_xlatu92;
    u_xlatb35 = (u_xlati91 != 0i);
    u_xlatb37 = (u_xlat57.x < 0.99000000953674316406f);
    u_xlatb35 = (u_xlatb35 & u_xlatb37);
    if (!(u_xlatb35)) {
      break;
    }
    u_xlati35.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati91)));
    u_xlati37 = (1i << bitcast<u32>((u_xlati35.x & 31i)));
    u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati91) ^ bitcast<u32>(u_xlati37)));
    u_xlati37 = (bitcast<i32>(u_xlatu95) + -32i);
    u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati37) & 65504u));
    u_xlati35.x = (u_xlati35.x + u_xlati37);
    u_xlati35.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati35.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].www)).xyz, u_xlat13.w);
    u_xlat37.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat37.x = min(u_xlat37.x, u_xlat13.x);
    u_xlat37.x = clamp(u_xlat37.x, 0.0f, 1.0f);
    u_xlat96 = (-(u_xlat57.x) + 1.0f);
    u_xlat37.x = min(u_xlat37.x, u_xlat96);
    u_xlatb96 = (0.0f < x_4213.urp_ReflProbes_ProbePosition[u_xlati35.x].w);
    if (u_xlatb34.x) {
      x_4279 = x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].x;
    } else {
      x_4279 = x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].x;
    }
    u_xlat13.x = x_4279;
    if (u_xlatb34.y) {
      x_4295 = x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].y;
    } else {
      x_4295 = x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].y;
    }
    u_xlat13.y = x_4295;
    if (u_xlatb34.z) {
      x_4311 = x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].z;
    } else {
      x_4311 = x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].z;
    }
    u_xlat13.z = x_4311;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat41 = (vs_TEXCOORD0 + -(x_4213.urp_ReflProbes_ProbePosition[u_xlati35.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat41)).xyz, u_xlat13.w);
    if (u_xlatb96) {
      x_4370 = u_xlat13.xyz;
    } else {
      x_4370 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_4370.xyz, u_xlat13.w);
    u_xlatu96 = u32(abs(x_4213.urp_ReflProbes_ProbePosition[u_xlati35.x].w));
    u_xlatu96 = (u_xlatu96 + 4294967295u);
    u_xlat96 = f32(u_xlatu96);
    u_xlat96 = min(u_xlat30, u_xlat96);
    u_xlat97 = dot(abs(u_xlat13.xyz), x_2866);
    u_xlat97 = max(u_xlat97, 0.00000099999999747524f);
    u_xlat97 = (1.0f / u_xlat97);
    u_xlat14 = (vec3f(u_xlat97) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb42 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb42.x) {
      x_4426 = u_xlat14.x;
    } else {
      x_4426 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_4426;
    if (u_xlatb42.y) {
      x_4439 = u_xlat14.x;
    } else {
      x_4439 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_4439;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat97)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat69.x = floor(u_xlat96);
    u_xlat69.y = (u_xlat69.x + 1.0f);
    u_xlat96 = (u_xlat96 + -(u_xlat69.x));
    u_xlatu69 = vec2u(u_xlat69);
    u_xlati69 = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.x));
    u_xlati35.x = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.y));
    u_xlat69 = ((u_xlat13.xy * x_4213.urp_ReflProbes_MipScaleOffset[u_xlati69].xy) + x_4213.urp_ReflProbes_MipScaleOffset[u_xlati69].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat69, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_4213.urp_ReflProbes_MipScaleOffset[u_xlati35.x].xy) + x_4213.urp_ReflProbes_MipScaleOffset[u_xlati35.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat96) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat37.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat57.x = (u_xlat57.x + u_xlat37.x);
  }
  u_xlatb0 = (u_xlat57.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat30);
    u_xlat0.x = (-(u_xlat57.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat85) * u_xlat1) + u_xlat5.xyw);
  let x_4681 = (u_xlat28 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_4681.xy, u_xlat5.z, x_4681.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_4703 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4703.xy, u_xlat5.z, x_4703.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat85 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat85 = max(u_xlat85, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat85 * u_xlat85);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat85 = ((u_xlat85 * u_xlat85) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat85) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat28.x = dot(u_xlat5.xyw, u_xlat28);
  u_xlat28.x = clamp(u_xlat28.x, 0.0f, 1.0f);
  u_xlat28.x = (-(u_xlat28.x) + 1.0f);
  u_xlat56 = (u_xlat28.x * u_xlat28.x);
  u_xlat56 = (u_xlat56 * u_xlat56);
  u_xlat28.x = (u_xlat56 * u_xlat28.x);
  u_xlat28.x = ((u_xlat60 * u_xlat28.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat28.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat38);
  let x_4822 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_4822.x, x_4822.y, x_4822.z));
  u_xlat84 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat84 = (u_xlat84 * 4.0f);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat84)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat57 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat57 = (-(u_xlat57) + u_xlat1.xy);
  let x_4865 = u_xlat57;
  let x_4867 = x_81.x_GlobalMipBias.x;
  let x_4868 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4865, x_4867);
  u_xlat84 = x_4868.x;
  u_xlat57 = (u_xlat32.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat57) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_4893 = u_xlat1;
  let x_4896 = x_81.x_GlobalMipBias.x;
  let x_4897 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4893.xy, x_4896);
  u_xlat1.x = x_4897.x;
  u_xlat1.x = (u_xlat63.x * u_xlat1.x);
  u_xlat84 = ((u_xlat84 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat29.x = (-(u_xlat64.x) + 1.0f);
  u_xlat1.x = (u_xlat29.x * u_xlat1.x);
  u_xlat29 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_4947 = u_xlat29;
  let x_4949 = x_81.x_GlobalMipBias.x;
  let x_4950 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4947, x_4949);
  u_xlat29.x = x_4950.y;
  u_xlat57.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat57.x = (u_xlat57.x * u_xlat57.x);
  u_xlat57.x = (u_xlat57.x * -1.44269502162933349609f);
  u_xlat57.x = exp2(u_xlat57.x);
  u_xlat57.x = ((u_xlat64.x * 0.34999999403953552246f) + u_xlat57.x);
  u_xlat29.x = (u_xlat57.x * u_xlat29.x);
  u_xlat29.x = (u_xlat61 * u_xlat29.x);
  u_xlat29.x = (u_xlat29.x * 0.89999997615814208984f);
  u_xlat84 = ((u_xlat84 * u_xlat1.x) + u_xlat29.x);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat38 * vec3f(0.69999998807907104492f)) + u_xlat25.xyz);
  u_xlat84 = (u_xlat84 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  u_xlat0 = ((vec3f(u_xlat84) * u_xlat1) + u_xlat0);
  SV_Target0.w = (u_xlat87 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat84 = (vs_TEXCOORD1 * -(vs_TEXCOORD1));
  u_xlat84 = exp2(u_xlat84);
  u_xlat0 = (u_xlat0 + -(x_81.unity_FogColor.xyz));
  SV_Target0 = vec4f((((vec3f(u_xlat84) * u_xlat0) + x_81.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

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
  vs_TEXCOORD1 = 0.0f;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(288) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(352) */
  x_ScreenSize : vec4f,
  /* @offset(368) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(384) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_B612SunDirection : vec4f,
  /* @offset(416) */
  x_B612WaterShallow : vec4f,
  /* @offset(432) */
  x_B612WaterDeep : vec4f,
  /* @offset(448) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2590 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_3957 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_4943 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_5120 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_5355 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_743 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2758 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_2824 = vec2f(0.15999999642372131348f);

const x_2896 = vec3f(-2.5f, -0.5f, 1.5f);

const x_3295 = vec2f(0.08163200318813323975f);

const x_3314 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_3317 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_3324 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_3362 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_3988 = vec3f(-1.0f);

const x_3998 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat38 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat79 : vec2f;
  var u_xlat115 : f32;
  var u_xlat4 : vec4f;
  var u_xlat80 : f32;
  var u_xlat118 : f32;
  var u_xlatb42 : bool;
  var x_281 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat43 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat82 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat83 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat84 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat85 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb123 : bool;
  var u_xlat11 : vec3f;
  var u_xlat48 : vec3f;
  var u_xlat86 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat49 : vec3f;
  var u_xlat122 : f32;
  var u_xlat124 : f32;
  var u_xlat87 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat89 : vec2f;
  var u_xlat52 : vec3f;
  var u_xlat126 : f32;
  var u_xlat88 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat129 : f32;
  var u_xlat128 : f32;
  var u_xlat53 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat55 : vec2f;
  var u_xlat56 : vec3f;
  var u_xlat92 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat131 : f32;
  var u_xlat132 : f32;
  var u_xlatb58 : vec2<bool>;
  var u_xlat59 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat47 : vec2f;
  var u_xlat95 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat60 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat99 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat81 : f32;
  var u_xlat134 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat41 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat45 : vec3f;
  var u_xlat117 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb115 : bool;
  var x_2476 : vec3f;
  var u_xlatb40 : bool;
  var u_xlat25 : vec4f;
  var txVec0 : vec3f;
  var u_xlat26 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlat40 : f32;
  var u_xlatb80 : bool;
  var u_xlat44 : vec3f;
  var u_xlat102 : vec2f;
  var u_xlat27 : vec4f;
  var u_xlat28 : vec4f;
  var u_xlat29 : vec4f;
  var u_xlat30 : vec4f;
  var u_xlat31 : vec4f;
  var u_xlat32 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat119 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat33 : vec4f;
  var u_xlat63 : vec2f;
  var u_xlat34 : vec2f;
  var u_xlat103 : vec2f;
  var u_xlat35 : vec4f;
  var u_xlat36 : vec4f;
  var u_xlat37 : vec4f;
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
  var u_xlatb43 : bool;
  var u_xlat120 : f32;
  var u_xlat121 : f32;
  var x_4425 : f32;
  var x_4468 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu82 : vec2u;
  var u_xlati6 : i32;
  var u_xlat39 : vec2f;
  var u_xlat0 : vec3f;
  var x_4861 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati39 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati44 : vec2i;
  var u_xlati45 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb44 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati87 : i32;
  var u_xlatu125 : u32;
  var u_xlat77 : vec2f;
  var u_xlatu45 : u32;
  var u_xlati121 : i32;
  var u_xlatu122 : u32;
  var u_xlatb47 : bool;
  var u_xlatu126 : u32;
  var u_xlatb126 : bool;
  var u_xlatu47 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati90 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati126 : i32;
  var u_xlati51 : i32;
  var u_xlati47 : i32;
  var u_xlatb45 : bool;
  var x_5421 : f32;
  var x_5437 : f32;
  var x_5453 : f32;
  var u_xlat51 : vec3f;
  var x_5512 : vec3f;
  var u_xlat127 : f32;
  var u_xlatb52 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_5568 : f32;
  var x_5581 : f32;
  var u_xlatu89 : vec2u;
  var u_xlati89 : i32;
  var u_xlat76 : f32;
  var u_xlat114 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat38 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat38, u_xlat38);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat38 = (u_xlat38 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat38;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat38 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat79 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat115 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat115, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat80 = max(u_xlat80, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat80))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat79.yx + u_xlat79.yx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat79, u_xlat79);
  u_xlat118 = max(u_xlat80, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat118))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb42 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb42) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat42 = vec3f(x_314.x, u_xlat42.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat43 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat82 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat82) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat83 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat82.x * 4.0f);
  u_xlat8 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat42 = vec3f(x_405.x, u_xlat42.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat84 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat84 = (u_xlat84 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat84;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat84 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat85 = (u_xlat42.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat85 = (u_xlat85 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat85));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat83.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat84 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat84 = max(vec2f(u_xlat115), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat84.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat84.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat85.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat85.x = sin(u_xlat85.x);
  u_xlat85.x = (u_xlat85.x * 43758.546875f);
  u_xlat85.x = fract(u_xlat85.x);
  u_xlat85.x = ((u_xlat85.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat85.x = (u_xlat85.x / u_xlat9.y);
  u_xlat85.x = (-(u_xlat85.x) + x_81.x_Time.y);
  u_xlatb123 = (u_xlat85.x >= 0.0f);
  u_xlat10.x = (u_xlat115 + -(x_142.x_BoilRadius));
  let x_744 = (u_xlat85.xx * x_743);
  u_xlat11 = vec3f(x_744.x, u_xlat11.y, x_744.y);
  u_xlat48.x = ((u_xlat85.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat86 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat10.x);
  u_xlat86 = (u_xlat86 / u_xlat48.x);
  u_xlat86 = (u_xlat86 * u_xlat86);
  u_xlat86 = (u_xlat86 * -1.44269502162933349609f);
  u_xlat86 = exp2(u_xlat86);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat49 = vec3f(x_804.x, u_xlat49.y, x_804.y);
  u_xlat122 = (u_xlat84.y * 6.66666650772094726562f);
  u_xlat122 = inverseSqrt(u_xlat122);
  let x_818 = (vec2f(u_xlat122) * u_xlat49.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat124 = exp2(u_xlat11.z);
  u_xlat87 = (u_xlat124 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat87 = (u_xlat11.x * u_xlat87);
  u_xlat86 = (u_xlat86 * u_xlat87);
  u_xlat87 = (u_xlat84.x * u_xlat85.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat87));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat86 = (u_xlat86 * u_xlat12.x);
  u_xlat86 = select(0.0f, u_xlat86, u_xlatb123);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_743);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat89 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat52 = vec3f(x_931.x, u_xlat52.y, x_931.y);
  let x_937 = (u_xlat52.xz / u_xlat89);
  u_xlat52 = vec3f(x_937.x, u_xlat52.y, x_937.y);
  let x_944 = (u_xlat52.xz * u_xlat52.xz);
  u_xlat52 = vec3f(x_944.x, u_xlat52.y, x_944.y);
  let x_950 = (u_xlat52.xz * x_949);
  u_xlat52 = vec3f(x_950.x, u_xlat52.y, x_950.y);
  let x_955 = exp2(u_xlat52.xz);
  u_xlat52 = vec3f(x_955.x, u_xlat52.y, x_955.y);
  u_xlat126 = exp2(u_xlat14.z);
  u_xlat88 = (u_xlat126 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat88 = (u_xlat88 * u_xlat14.x);
  u_xlat88 = (u_xlat88 * u_xlat52.x);
  u_xlat52 = vec3f(((u_xlat84.xx * u_xlat12.xy)).xy, u_xlat52.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat52.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat88 = ((u_xlat88 * u_xlat15.x) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat88, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat122) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_743);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat88 = exp2(u_xlat17.z);
  u_xlat129 = (u_xlat88 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat129 = (u_xlat129 * u_xlat17.x);
  u_xlat128 = (u_xlat52.z * u_xlat129);
  u_xlat128 = ((u_xlat128 * u_xlat15.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat128, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat53 = vec3f(x_1094.x, u_xlat53.y, x_1094.y);
  let x_1101 = (u_xlat53.xz / u_xlat9.yy);
  u_xlat53 = vec3f(x_1101.x, u_xlat53.y, x_1101.y);
  let x_1110 = (-(u_xlat53.xz) + x_81.x_Time.yy);
  u_xlat53 = vec3f(x_1110.x, u_xlat53.y, x_1110.y);
  u_xlatb16 = ((u_xlat53.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat53.xx * x_743);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat55 = ((u_xlat53.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat53.xz) + u_xlat10.xx);
  u_xlat56 = vec3f(x_1144.x, u_xlat56.y, x_1144.y);
  let x_1150 = (u_xlat56.xz / u_xlat55);
  u_xlat56 = vec3f(x_1150.x, u_xlat56.y, x_1150.y);
  let x_1157 = (u_xlat56.xz * u_xlat56.xz);
  u_xlat56 = vec3f(x_1157.x, u_xlat56.y, x_1157.y);
  let x_1162 = (u_xlat56.xz * x_949);
  u_xlat56 = vec3f(x_1162.x, u_xlat56.y, x_1162.y);
  let x_1167 = exp2(u_xlat56.xz);
  u_xlat56 = vec3f(x_1167.x, u_xlat56.y, x_1167.y);
  u_xlat128 = exp2(u_xlat18.z);
  u_xlat92.x = (u_xlat128 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat92.x = (u_xlat92.x * u_xlat18.x);
  u_xlat92.x = (u_xlat92.x * u_xlat56.x);
  u_xlat56 = vec3f(((u_xlat84.xx * u_xlat53.xz)).xy, u_xlat56.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat56.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat92.x = ((u_xlat92.x * u_xlat19.x) + u_xlat86);
  if (u_xlatb16.x) {
    x_1232 = u_xlat92.x;
  } else {
    x_1232 = u_xlat86;
  }
  u_xlat86 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat92 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat122) * u_xlat92);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat53.zz * x_743);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat131 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat131 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat132 = (u_xlat56.z * u_xlat19.x);
  u_xlat132 = ((u_xlat132 * u_xlat19.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat132, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb58 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_743);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat59 = vec3f(x_1350.x, u_xlat59.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat59.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat47.x = exp2(u_xlat21.z);
  u_xlat132 = (u_xlat47.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat132 = (u_xlat132 * u_xlat21.x);
  u_xlat132 = (u_xlat132 * u_xlat22.x);
  u_xlat95 = (u_xlat84.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat95));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat84.x = ((u_xlat132 * u_xlat22.x) + u_xlat86);
  if (u_xlatb58.x) {
    x_1450 = u_xlat84.x;
  } else {
    x_1450 = u_xlat86;
  }
  u_xlat84.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat122 = (u_xlat122 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_743);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat86 = exp2(u_xlat22.w);
  u_xlat122 = (u_xlat122 * u_xlat86);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat122 = (u_xlat122 * u_xlat22.x);
  u_xlat122 = (u_xlat122 * u_xlat22.y);
  u_xlat122 = ((u_xlat122 * u_xlat22.z) + u_xlat84.x);
  if (u_xlatb58.y) {
    x_1524 = u_xlat122;
  } else {
    x_1524 = u_xlat84.x;
  }
  u_xlat84.x = x_1524;
  u_xlat122 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat132 = (u_xlat115 / u_xlat122);
  u_xlat132 = (-(u_xlat132) + 1.0f);
  u_xlat132 = max(u_xlat132, 0.0f);
  u_xlat84.x = (u_xlat84.x * x_142.x_RingStrength);
  u_xlat84.x = (u_xlat132 * u_xlat84.x);
  u_xlat60 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat115))).xy, u_xlat23.zw);
  u_xlat99 = (x_376 / u_xlat60.xy);
  u_xlat23 = vec4f(((u_xlat99 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat132 = (u_xlat23.x * u_xlat24.x);
  u_xlat84.x = (u_xlat84.x * u_xlat132);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat84.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat84.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat81 = sin(u_xlat43.y);
  u_xlat81 = (u_xlat81 * 1.70000004768371582031f);
  u_xlat81 = ((u_xlat84.x * 6.28318548202514648438f) + u_xlat81);
  u_xlat81 = sin(u_xlat81);
  u_xlat81 = ((u_xlat81 * 0.25f) + 0.75f);
  u_xlat84.x = (u_xlat115 * -(u_xlat115));
  u_xlat132 = (u_xlat60.x * u_xlat60.x);
  u_xlat84.x = (u_xlat84.x / u_xlat132);
  u_xlat84.x = (u_xlat84.x * 1.44269502162933349609f);
  u_xlat84.x = exp2(u_xlat84.x);
  u_xlat134 = (u_xlat115 + u_xlat115);
  u_xlat132 = (u_xlat134 / u_xlat132);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat132));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat84.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat60 = vec3f(((u_xlat60.xx * u_xlat23.xw)).xy, u_xlat60.z);
  let x_1734 = ((u_xlat60.xy * vec2f(u_xlat81)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat84.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat43.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat43 = vec3f(x_1763.x, u_xlat43.y, x_1763.y);
  let x_1769 = u_xlat43;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_1786.x, u_xlat43.y, x_1786.y);
  u_xlat60 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat60.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat60.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat60.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat132 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat115 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat115);
  u_xlat132 = (1.0f / u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat132 = ((u_xlat115 * -2.0f) + 3.0f);
  u_xlat115 = (u_xlat115 * u_xlat115);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat84.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat43.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat115)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat115 = sqrt(u_xlat80);
  u_xlat60 = (vec3f(u_xlat115) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat60 = (u_xlat60 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat60 = clamp(u_xlat60, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat60 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat60 = (u_xlat60 * u_xlat60);
  u_xlat80 = (u_xlat60.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat60.xz) + x_376);
  u_xlat43 = vec3f(x_1932.x, u_xlat43.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat82.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat82.x = dot(u_xlat82.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat82.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat43.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat43.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat80 * u_xlat43.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat43 = vec3f(x_2080.x, u_xlat43.y, x_2080.y);
  u_xlat41 = dot(u_xlat79.yx, u_xlat43.xz);
  u_xlat41 = (abs(u_xlat41) * 4.0f);
  u_xlat41 = min(u_xlat41, 1.0f);
  u_xlat115 = max(u_xlat115, 0.00100000004749745131f);
  u_xlat79 = (-(u_xlat79) / vec2f(u_xlat115));
  let x_2105 = (u_xlat82.yy * u_xlat79.yx);
  u_xlat43 = vec3f(x_2105.x, u_xlat43.y, x_2105.y);
  let x_2115 = ((-(u_xlat43.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat43 = vec3f(x_2115.x, u_xlat43.y, x_2115.y);
  let x_2122 = (u_xlat43.xz * vec2f(2.38095235824584960938f));
  u_xlat43 = vec3f(x_2122.x, u_xlat43.y, x_2122.y);
  u_xlat79 = (u_xlat6.yy * u_xlat79);
  u_xlat79 = ((-(u_xlat79) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat79 = ((u_xlat79 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat43;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_2162.x, u_xlat43.y, x_2162.y);
  let x_2168 = u_xlat79;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat79 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat79 = (u_xlat83.yy * u_xlat79);
  u_xlat79 = ((u_xlat43.xz * u_xlat7.yy) + u_xlat79);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat79 = (u_xlat79 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat79);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat115 = ((u_xlat41 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat115)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat115 = dot(u_xlat3, u_xlat3);
  u_xlat115 = inverseSqrt(u_xlat115);
  u_xlat3 = (vec3f(u_xlat115) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat115 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat115) + 1.0f);
  u_xlat115 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat115 = (1.0f / u_xlat115);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat43 = vec3f(x_2286.x, u_xlat43.y, x_2286.y);
  let x_2294 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2294.x, u_xlat43.y, x_2294.y);
  let x_2302 = (u_xlat43.xz * x_81.x_ScreenSize.xy);
  u_xlat43 = vec3f(x_2302.x, u_xlat43.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat43.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat43 = vec3f(x_2331.x, u_xlat43.y, x_2331.y);
  let x_2341 = (-(u_xlat43.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat45 = vec3f(x_2341.x, u_xlat45.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat43.xx) + u_xlat45.xz);
  u_xlat43 = vec3f(x_2352.x, u_xlat43.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat43.xz);
  u_xlat43 = vec3f(x_2363.x, u_xlat43.y, x_2363.y);
  let x_2372 = (u_xlat43.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat43 = vec3f(x_2372.x, u_xlat43.y, x_2372.y);
  u_xlat117 = (u_xlat43.x / u_xlat43.z);
  u_xlat117 = (-(u_xlat117) + vs_TEXCOORD0.y);
  u_xlat117 = max(u_xlat117, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat43 = vec3f(x_2399.x, u_xlat43.y, x_2399.y);
  u_xlat80 = (u_xlat117 * 4.0f);
  u_xlat80 = min(u_xlat80, 1.0f);
  u_xlat24 = vec4f((((u_xlat43.xz * vec2f(u_xlat80)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb115 = (u_xlat2.x < u_xlat115);
  if (u_xlatb115) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat60 = x_2476;
  u_xlat2 = vec4f((((u_xlat60.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat60.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat115 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat115 = min(u_xlat115, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat43 = vec3f(x_2555.x, u_xlat43.y, x_2555.y);
  let x_2562 = min(u_xlat43.xz, u_xlat60.xy);
  u_xlat43 = vec3f(x_2562.x, u_xlat43.y, x_2562.y);
  let x_2570 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2570.x, u_xlat43.y, x_2570.y);
  let x_2578 = u_xlat43;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat60 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat24.w);
  u_xlatb40 = (0.0f < x_2590.x_MainLightShadowParams.y);
  if (u_xlatb40) {
    u_xlatb40 = (x_2590.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb40) {
      u_xlat25 = (u_xlat24.xyxy + x_2590.x_MainLightShadowOffset0);
      let x_2648 = u_xlat25.xy;
      txVec0 = vec3f(x_2648.x, x_2648.y, u_xlat24.z);
      u_xlat26.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_2669 = u_xlat25.zw;
      txVec1 = vec3f(x_2669.x, x_2669.y, u_xlat24.z);
      u_xlat26.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat25 = (u_xlat24.xyxy + x_2590.x_MainLightShadowOffset1);
      let x_2689 = u_xlat25.xy;
      txVec2 = vec3f(x_2689.x, x_2689.y, u_xlat24.z);
      u_xlat26.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_2704 = u_xlat25.zw;
      txVec3 = vec3f(x_2704.x, x_2704.y, u_xlat24.z);
      u_xlat26.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat40 = dot(u_xlat26, vec4f(0.25f));
    } else {
      u_xlatb80 = (x_2590.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb80) {
        let x_2735 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_2735.x, u_xlat43.y, x_2735.y);
        let x_2740 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_2740.x, u_xlat43.y, x_2740.y);
        let x_2753 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_2753.x, u_xlat44.y, x_2753.y);
        u_xlat25 = (u_xlat44.xxzz + x_2758);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_2767 = (u_xlat26.yw * x_914);
        u_xlat45 = vec3f(x_2767.x, u_xlat45.y, x_2767.y);
        let x_2776 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat25 = vec4f(x_2776.x, u_xlat25.y, x_2776.y, u_xlat25.w);
        u_xlat26 = vec4f(((-(u_xlat44.xz) + x_376)).xy, u_xlat26.zw);
        u_xlat102 = min(u_xlat44.xz, vec2f());
        u_xlat102 = ((-(u_xlat102) * u_xlat102) + u_xlat26.xy);
        let x_2799 = max(u_xlat44.xz, vec2f());
        u_xlat44 = vec3f(x_2799.x, u_xlat44.y, x_2799.y);
        let x_2810 = ((-(u_xlat44.xz) * u_xlat44.xz) + u_xlat25.yw);
        u_xlat44 = vec3f(x_2810.x, u_xlat44.y, x_2810.y);
        u_xlat102 = (u_xlat102 + x_376);
        let x_2817 = (u_xlat44.xz + x_376);
        u_xlat44 = vec3f(x_2817.x, u_xlat44.y, x_2817.y);
        u_xlat27 = vec4f(((u_xlat25.xz * x_2824)).xy, u_xlat27.zw);
        u_xlat28 = vec4f(((u_xlat26.xy * x_2824)).xy, u_xlat28.zw);
        u_xlat26 = vec4f(((u_xlat102 * x_2824)).xy, u_xlat26.zw);
        u_xlat29 = vec4f(((u_xlat44.xz * x_2824)).xy, u_xlat29.zw);
        let x_2846 = (u_xlat25.yw * x_2824);
        u_xlat44 = vec3f(x_2846.x, u_xlat44.y, x_2846.y);
        u_xlat27.z = u_xlat26.x;
        u_xlat27.w = u_xlat44.x;
        u_xlat28.z = u_xlat29.x;
        u_xlat28.w = u_xlat45.x;
        u_xlat25 = (u_xlat27.zwxz + u_xlat28.zwxz);
        u_xlat26.z = u_xlat27.y;
        u_xlat26.w = u_xlat44.z;
        u_xlat29.z = u_xlat28.y;
        u_xlat29.w = u_xlat45.z;
        u_xlat26 = vec4f(((u_xlat26.zyw + u_xlat29.zyw)).xyz, u_xlat26.w);
        u_xlat27 = vec4f(((u_xlat28.xzw / u_xlat25.zwy)).xyz, u_xlat27.w);
        u_xlat27 = vec4f(((u_xlat27.xyz + x_2896)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat29.zyw / u_xlat26.xyz)).xyz, u_xlat28.w);
        u_xlat28 = vec4f(((u_xlat28.xyz + x_2896)).xyz, u_xlat28.w);
        u_xlat27 = vec4f(((u_xlat27.yxz * x_2590.x_MainLightShadowmapSize.xxx)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat28.xyz * x_2590.x_MainLightShadowmapSize.yyy)).xyz, u_xlat28.w);
        u_xlat27.w = u_xlat28.x;
        u_xlat29 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.ywxw);
        let x_2948 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat27.zw);
        u_xlat44 = vec3f(x_2948.x, u_xlat44.y, x_2948.y);
        u_xlat28.w = u_xlat27.y;
        let x_2955 = u_xlat28.yz;
        u_xlat27 = vec4f(u_xlat27.x, x_2955.x, u_xlat27.z, x_2955.y);
        u_xlat30 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat28 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat28.wywz);
        u_xlat27 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.xwzw);
        u_xlat31 = (u_xlat25.zwyz * u_xlat26.xxxy);
        u_xlat32 = (u_xlat25 * u_xlat26.yyzz);
        u_xlat80 = (u_xlat25.y * u_xlat26.z);
        let x_3004 = u_xlat29.xy;
        txVec4 = vec3f(x_3004.x, x_3004.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_3019 = u_xlat29.zw;
        txVec5 = vec3f(x_3019.x, x_3019.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat119 = (u_xlat119 * u_xlat31.y);
        u_xlat43.x = ((u_xlat31.x * u_xlat43.x) + u_xlat119);
        let x_3046 = u_xlat44.xz;
        txVec6 = vec3f(x_3046.x, x_3046.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat43.x = ((u_xlat31.z * u_xlat119) + u_xlat43.x);
        let x_3068 = u_xlat28.xy;
        txVec7 = vec3f(x_3068.x, x_3068.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat43.x = ((u_xlat31.w * u_xlat119) + u_xlat43.x);
        let x_3090 = u_xlat30.xy;
        txVec8 = vec3f(x_3090.x, x_3090.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat43.x = ((u_xlat32.x * u_xlat119) + u_xlat43.x);
        let x_3112 = u_xlat30.zw;
        txVec9 = vec3f(x_3112.x, x_3112.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat43.x = ((u_xlat32.y * u_xlat119) + u_xlat43.x);
        let x_3134 = u_xlat28.zw;
        txVec10 = vec3f(x_3134.x, x_3134.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat43.x = ((u_xlat32.z * u_xlat119) + u_xlat43.x);
        let x_3156 = u_xlat27.xy;
        txVec11 = vec3f(x_3156.x, x_3156.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat43.x = ((u_xlat32.w * u_xlat119) + u_xlat43.x);
        let x_3178 = u_xlat27.zw;
        txVec12 = vec3f(x_3178.x, x_3178.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat40 = ((u_xlat80 * u_xlat119) + u_xlat43.x);
      } else {
        let x_3203 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_3203.x, u_xlat43.y, x_3203.y);
        let x_3208 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_3208.x, u_xlat43.y, x_3208.y);
        let x_3220 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_3220.x, u_xlat44.y, x_3220.y);
        u_xlat25 = (u_xlat44.xxzz + x_2758);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_3235 = (u_xlat26.yw * vec2f(0.04081600159406661987f));
        u_xlat27 = vec4f(u_xlat27.x, x_3235.x, u_xlat27.z, x_3235.y);
        let x_3244 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat45 = vec3f(x_3244.x, u_xlat45.y, x_3244.y);
        let x_3250 = (-(u_xlat44.xz) + x_376);
        u_xlat25 = vec4f(x_3250.x, u_xlat25.y, x_3250.y, u_xlat25.w);
        u_xlat26 = vec4f(min(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3266 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.xz);
        u_xlat25 = vec4f(x_3266.x, u_xlat25.y, x_3266.y, u_xlat25.w);
        u_xlat26 = vec4f(max(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3282 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.yw);
        u_xlat25 = vec4f(u_xlat25.x, x_3282.x, u_xlat25.z, x_3282.y);
        u_xlat25 = (u_xlat25 + vec4f(2.0f));
        u_xlat26.z = (u_xlat25.y * 0.08163200318813323975f);
        u_xlat28 = vec4f(((u_xlat45.zx * x_3295)).xy, u_xlat28.zw);
        let x_3301 = (u_xlat25.xz * x_3295);
        u_xlat45 = vec3f(x_3301.x, u_xlat45.y, x_3301.y);
        u_xlat28.z = (u_xlat25.w * 0.08163200318813323975f);
        u_xlat26.x = u_xlat28.y;
        let x_3318 = ((u_xlat44.xx * x_3314) + x_3317);
        u_xlat26 = vec4f(u_xlat26.x, x_3318.x, u_xlat26.z, x_3318.y);
        let x_3325 = ((u_xlat44.xx * x_3314) + x_3324);
        u_xlat25 = vec4f(x_3325.x, u_xlat25.y, x_3325.y, u_xlat25.w);
        u_xlat25.y = u_xlat45.x;
        u_xlat25.w = u_xlat27.y;
        u_xlat26 = (u_xlat25 + u_xlat26);
        let x_3340 = ((u_xlat44.zz * x_3314) + x_3317);
        u_xlat28 = vec4f(u_xlat28.x, x_3340.x, u_xlat28.z, x_3340.y);
        let x_3346 = ((u_xlat44.zz * x_3314) + x_3324);
        u_xlat27 = vec4f(x_3346.x, u_xlat27.y, x_3346.y, u_xlat27.w);
        u_xlat27.y = u_xlat45.z;
        u_xlat28 = (u_xlat27 + u_xlat28);
        u_xlat25 = (u_xlat25 / u_xlat26);
        u_xlat25 = (u_xlat25 + x_3362);
        u_xlat27 = (u_xlat27 / u_xlat28);
        u_xlat27 = (u_xlat27 + x_3362);
        u_xlat25 = (u_xlat25.wxyz * x_2590.x_MainLightShadowmapSize.xxxx);
        u_xlat27 = (u_xlat27.xwyz * x_2590.x_MainLightShadowmapSize.yyyy);
        let x_3382 = u_xlat25.yzw;
        u_xlat29 = vec4f(x_3382.x, u_xlat29.y, x_3382.yz);
        u_xlat29.y = u_xlat27.x;
        u_xlat30 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3405 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat44 = vec3f(x_3405.x, u_xlat44.y, x_3405.y);
        u_xlat25.y = u_xlat29.y;
        u_xlat29.y = u_xlat27.z;
        u_xlat31 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3431 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat45 = vec3f(x_3431.x, u_xlat45.y, x_3431.y);
        u_xlat25.z = u_xlat29.y;
        u_xlat32 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat25.xyxz);
        u_xlat29.y = u_xlat27.w;
        u_xlat33 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        u_xlat63 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat25.w = u_xlat29.y;
        u_xlat34 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat25.xw);
        let x_3483 = u_xlat29.xzw;
        u_xlat27 = vec4f(x_3483.x, u_xlat27.y, x_3483.yz);
        u_xlat29 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat103 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat27.wy);
        u_xlat27.x = u_xlat25.x;
        let x_3516 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat27.xy);
        u_xlat43 = vec3f(x_3516.x, u_xlat43.y, x_3516.y);
        u_xlat35 = (u_xlat26 * u_xlat28.xxxx);
        u_xlat36 = (u_xlat26 * u_xlat28.yyyy);
        u_xlat37 = (u_xlat26 * u_xlat28.zzzz);
        u_xlat26 = (u_xlat26 * u_xlat28.wwww);
        let x_3540 = u_xlat30.xy;
        txVec13 = vec3f(x_3540.x, x_3540.y, u_xlat24.z);
        u_xlat80 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_3554 = u_xlat30.zw;
        txVec14 = vec3f(x_3554.x, x_3554.y, u_xlat24.z);
        u_xlat132 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat132 = (u_xlat132 * u_xlat35.y);
        u_xlat80 = ((u_xlat35.x * u_xlat80) + u_xlat132);
        let x_3578 = u_xlat44.xz;
        txVec15 = vec3f(x_3578.x, x_3578.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat80 = ((u_xlat35.z * u_xlat44.x) + u_xlat80);
        let x_3600 = u_xlat32.xy;
        txVec16 = vec3f(x_3600.x, x_3600.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat80 = ((u_xlat35.w * u_xlat44.x) + u_xlat80);
        let x_3622 = u_xlat31.xy;
        txVec17 = vec3f(x_3622.x, x_3622.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat80 = ((u_xlat36.x * u_xlat44.x) + u_xlat80);
        let x_3644 = u_xlat31.zw;
        txVec18 = vec3f(x_3644.x, x_3644.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat80 = ((u_xlat36.y * u_xlat44.x) + u_xlat80);
        let x_3666 = u_xlat45.xz;
        txVec19 = vec3f(x_3666.x, x_3666.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat80 = ((u_xlat36.z * u_xlat44.x) + u_xlat80);
        let x_3688 = u_xlat32.zw;
        txVec20 = vec3f(x_3688.x, x_3688.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat80 = ((u_xlat36.w * u_xlat44.x) + u_xlat80);
        let x_3710 = u_xlat33.xy;
        txVec21 = vec3f(x_3710.x, x_3710.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat80 = ((u_xlat37.x * u_xlat44.x) + u_xlat80);
        let x_3732 = u_xlat33.zw;
        txVec22 = vec3f(x_3732.x, x_3732.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat80 = ((u_xlat37.y * u_xlat44.x) + u_xlat80);
        txVec23 = vec3f(u_xlat63.x, u_xlat63.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat80 = ((u_xlat37.z * u_xlat44.x) + u_xlat80);
        txVec24 = vec3f(u_xlat34.x, u_xlat34.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat80 = ((u_xlat37.w * u_xlat44.x) + u_xlat80);
        let x_3796 = u_xlat29.xy;
        txVec25 = vec3f(x_3796.x, x_3796.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat80 = ((u_xlat26.x * u_xlat44.x) + u_xlat80);
        let x_3818 = u_xlat29.zw;
        txVec26 = vec3f(x_3818.x, x_3818.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat80 = ((u_xlat26.y * u_xlat44.x) + u_xlat80);
        txVec27 = vec3f(u_xlat103.x, u_xlat103.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat80 = ((u_xlat26.z * u_xlat44.x) + u_xlat80);
        let x_3861 = u_xlat43.xz;
        txVec28 = vec3f(x_3861.x, x_3861.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat40 = ((u_xlat26.w * u_xlat43.x) + u_xlat80);
      }
    }
  } else {
    let x_3884 = u_xlat24.xy;
    txVec29 = vec3f(x_3884.x, x_3884.y, u_xlat24.z);
    u_xlat40 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat80 = (-(x_2590.x_MainLightShadowParams.x) + 1.0f);
  u_xlat40 = ((u_xlat40 * x_2590.x_MainLightShadowParams.x) + u_xlat80);
  u_xlatb80 = (0.0f >= u_xlat24.z);
  u_xlatb43 = (u_xlat24.z >= 1.0f);
  u_xlatb80 = (u_xlatb80 | u_xlatb43);
  u_xlat40 = select(u_xlat40, 1.0f, u_xlatb80);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat80 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat80 = ((u_xlat80 * x_2590.x_MainLightShadowParams.z) + x_2590.x_MainLightShadowParams.w);
  u_xlat80 = clamp(u_xlat80, 0.0f, 1.0f);
  u_xlat43.x = (-(u_xlat40) + 1.0f);
  u_xlat40 = ((u_xlat80 * u_xlat43.x) + u_xlat40);
  u_xlat25.x = dot(x_3957.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_3957.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_3957.unity_SHAb.yw, x_376);
  u_xlat25 = vec4f(((u_xlat25.xyz + -(x_3957.unity_SHC.xyz))).xyz, u_xlat25.w);
  u_xlat26 = vec4f(((x_81.x_B612WaterShallow.xyz + x_3988)).xyz, u_xlat26.w);
  u_xlat26 = vec4f((((x_81.x_B612SunDirection.www * u_xlat26.xyz) + x_3998)).xyz, u_xlat26.w);
  u_xlat26 = vec4f(((u_xlat26.xyz * x_142.x_ScatterColor.xyz)).xyz, u_xlat26.w);
  u_xlat27 = vec4f(((x_81.x_B612WaterDeep.xyz + x_3988)).xyz, u_xlat27.w);
  u_xlat27 = vec4f((((x_81.x_B612SunDirection.www * u_xlat27.xyz) + x_3998)).xyz, u_xlat27.w);
  let x_4032 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_4036 = (u_xlat23.xw / vec2f(x_4032.x, x_4032.y));
  u_xlat43 = vec3f(x_4036.x, u_xlat43.y, x_4036.y);
  let x_4048 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat43.xz);
  u_xlat44 = vec3f(x_4048.x, u_xlat44.y, x_4048.y);
  let x_4056 = u_xlat44;
  let x_4059 = x_81.x_GlobalMipBias.x;
  let x_4060 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4056.xz, x_4059);
  u_xlat80 = x_4060.x;
  let x_4068 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat44 = vec3f(x_4068.x, u_xlat44.y, x_4068.y);
  let x_4078 = ((u_xlat43.xz * vec2f(1.12999999523162841797f)) + u_xlat44.xz);
  u_xlat43 = vec3f(x_4078.x, u_xlat43.y, x_4078.y);
  let x_4084 = u_xlat43;
  let x_4087 = x_81.x_GlobalMipBias.x;
  let x_4088 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4084.xz, x_4087);
  u_xlat43.x = x_4088.x;
  let x_4097 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat44 = vec3f(x_4097.x, u_xlat44.y, x_4097.y);
  u_xlat119 = dot(u_xlat44.xz, u_xlat44.xz);
  u_xlat119 = sqrt(u_xlat119);
  u_xlat44.x = (u_xlat119 + -(x_142.x_BoilRadius));
  u_xlat120 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat44.x);
  u_xlat120 = (u_xlat120 / u_xlat48.x);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat120 = (u_xlat120 * -1.44269502162933349609f);
  u_xlat120 = exp2(u_xlat120);
  u_xlat45.x = max(u_xlat119, 0.15000000596046447754f);
  u_xlat45.x = (u_xlat45.x * 6.66666650772094726562f);
  u_xlat45.x = inverseSqrt(u_xlat45.x);
  let x_4149 = (u_xlat45.xx * u_xlat49.xz);
  u_xlat49 = vec3f(x_4149.x, u_xlat49.y, x_4149.y);
  u_xlat121 = (u_xlat124 * u_xlat49.x);
  u_xlat121 = (u_xlat11.x * u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat121 = ((u_xlat5.x * u_xlat44.x) + -(u_xlat87));
  u_xlat121 = cos(u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat120 = select(0.0f, u_xlat120, u_xlatb123);
  let x_4184 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4184.x, x_4184.y)) * u_xlat12.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat89);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat126 * u_xlat49.z);
  u_xlat121 = (u_xlat14.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4225 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat52.xy));
  u_xlat48 = vec3f(x_4225.x, u_xlat48.y, x_4225.y);
  let x_4230 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4230.x, u_xlat48.y, x_4230.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat88 * u_xlat11.x);
  u_xlat121 = (u_xlat17.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.y);
  let x_4278 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4278.x, x_4278.y)) * u_xlat53.xz) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat55);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat128 * u_xlat11.y);
  u_xlat121 = (u_xlat18.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4319 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat56.xy));
  u_xlat48 = vec3f(x_4319.x, u_xlat48.y, x_4319.y);
  let x_4324 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4324.x, u_xlat48.y, x_4324.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat92)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat131 * u_xlat11.x);
  u_xlat121 = (u_xlat20.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.y);
  let x_4371 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4371.x, x_4371.y)) * u_xlat19.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat59.xz);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat47.x * u_xlat11.y);
  u_xlat121 = (u_xlat21.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  u_xlat47 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat95));
  u_xlat47 = cos(u_xlat47);
  u_xlat5.x = ((u_xlat121 * u_xlat47.x) + u_xlat120);
  if (u_xlatb58.x) {
    x_4425 = u_xlat5.x;
  } else {
    x_4425 = u_xlat120;
  }
  u_xlat5.x = x_4425;
  u_xlat44.x = (u_xlat45.x * u_xlat9.x);
  u_xlat44.x = (u_xlat86 * u_xlat44.x);
  u_xlat44.x = (u_xlat22.x * u_xlat44.x);
  u_xlat44.x = (u_xlat44.x * u_xlat85.y);
  u_xlat44.x = ((u_xlat44.x * u_xlat47.y) + u_xlat5.x);
  if (u_xlatb58.y) {
    x_4468 = u_xlat44.x;
  } else {
    x_4468 = u_xlat5.x;
  }
  u_xlat5.x = x_4468;
  u_xlat44.x = (u_xlat119 / u_xlat122);
  u_xlat44.x = (-(u_xlat44.x) + 1.0f);
  u_xlat44.x = max(u_xlat44.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat44.x * u_xlat5.x);
  u_xlat119 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat119);
  u_xlat119 = (u_xlat99.x * u_xlat119);
  u_xlat119 = clamp(u_xlat119, 0.0f, 1.0f);
  u_xlat44.x = ((u_xlat119 * -2.0f) + 3.0f);
  u_xlat119 = (u_xlat119 * u_xlat119);
  u_xlat119 = (u_xlat119 * u_xlat44.x);
  u_xlat5.x = (u_xlat119 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat80 = min(u_xlat80, u_xlat43.x);
  u_xlat80 = (u_xlat80 * 2.5f);
  u_xlat80 = (u_xlat80 * x_142.x_CausticsStrength);
  let x_4553 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat43 = vec3f(x_4553.x, u_xlat43.y, x_4553.y);
  u_xlat2.x = min(u_xlat43.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat80 = exp2(u_xlat43.z);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_4584 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_4584.xy, u_xlat5.z, x_4584.z);
  let x_4591 = (vec3f(u_xlat40) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4591.xy, u_xlat5.z, x_4591.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_4607 = ((u_xlat5.xyw * u_xlat2.xxx) + x_3998);
  u_xlat5 = vec4f(x_4607.xy, u_xlat5.z, x_4607.z);
  let x_4613 = (u_xlat5.xyw * u_xlat60);
  u_xlat5 = vec4f(x_4613.xy, u_xlat5.z, x_4613.z);
  u_xlat9 = vec4f(((vec3f(u_xlat115) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat115 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat48 = (vec3f(u_xlat40) * x_81.x_MainLightColor.xyz);
  u_xlat40 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat40 = clamp(u_xlat40, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat40) * u_xlat48);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25.xyz);
  u_xlat115 = (u_xlat115 * 0.69999998807907104492f);
  u_xlat115 = min(u_xlat115, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27.xyz) + -(u_xlat26.xyz))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat115) * u_xlat12.xyz) + u_xlat26.xyz)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_4719 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_4719.xy, u_xlat5.z, x_4719.z);
  u_xlat115 = dot(u_xlat3, u_xlat38);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat40 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat80 = (-(x_142.x_F0) + 1.0f);
  u_xlat44.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat80);
  u_xlat115 = (-(u_xlat115) + 1.0f);
  u_xlat120 = (u_xlat115 * u_xlat115);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat115 = (u_xlat115 * u_xlat120);
  u_xlat115 = ((u_xlat44.x * u_xlat115) + u_xlat40);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat40 = dot(-(u_xlat38), u_xlat3);
  u_xlat40 = (u_xlat40 + u_xlat40);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat40))) + -(u_xlat38))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat40 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat40 = (u_xlat40 * x_142.x_Roughness);
  u_xlat40 = (u_xlat40 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu82 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu82.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu82.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat39.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_4861 = u_xlat39.x;
  } else {
    x_4861 = u_xlat1.x;
  }
  u_xlat0.x = x_4861;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati39 = (bitcast<i32>(u_xlatu82.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati39))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_4923 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_4930 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_4931 = vec2i(x_4923, x_4930);
  u_xlati1 = vec3i(x_4931.x, u_xlati1.y, x_4931.y);
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_4955 = ~(u_xlati1.xz);
  u_xlati45 = vec3i(x_4955.x, u_xlati45.y, x_4955.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45.xx) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati44) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati44.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati45.z) & bitcast<u32>(u_xlati44.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb44 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati87 = 0i;
  u_xlatu125 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat77.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu45 = (u_xlatu125 >> 16u);
    u_xlati121 = u_xlati87;
    u_xlatu122 = u_xlatu125;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb47 = (u_xlati121 == 0i);
      u_xlatu126 = (u_xlatu122 & 65535u);
      u_xlatb126 = (u_xlatu45 >= u_xlatu126);
      u_xlatb47 = (u_xlatb47 & u_xlatb126);
      if (!(u_xlatb47)) {
        break;
      }
      param_6 = u_xlatu122;
      param_7 = 5i;
      param_8 = 11i;
      let x_5069 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu47 = x_5069;
      u_xlatu13 = (vec4u(u_xlatu47) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_5090 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_5097 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_5104 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_5111 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_5090, x_5097, x_5104, x_5111);
      u_xlati90 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_5120.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_5120.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_5152 = bitcast<vec2i>((bitcast<vec2u>(u_xlati90) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_5152.x, u_xlati14.y, x_5152.y);
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati51 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati51) | bitcast<u32>(u_xlati13.x)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu122) & 31i)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati47 = (bitcast<i32>(u_xlatu47) << bitcast<u32>(5i));
      u_xlatu47 = (u_xlatu45 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati47)))));
      u_xlatu47 = min(u_xlatu47, 31u);
      u_xlatu47 = (bitcast<u32>(-(bitcast<i32>(u_xlatu47))) + 31u);
      u_xlatu47 = (4294967295u >> (u_xlatu47 & 31u));
      u_xlati121 = bitcast<i32>((u_xlatu47 & bitcast<u32>(u_xlati126)));
      u_xlati47 = (bitcast<i32>(u_xlatu122) + 32i);
      u_xlatu122 = (bitcast<u32>(u_xlati47) & 4294967264u);
    }
    u_xlatu125 = u_xlatu122;
    u_xlatb45 = (u_xlati121 != 0i);
    u_xlatb47 = (u_xlat77.x < 0.99000000953674316406f);
    u_xlatb45 = (u_xlatb45 & u_xlatb47);
    if (!(u_xlatb45)) {
      break;
    }
    u_xlati45.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati121)));
    u_xlati47 = (1i << bitcast<u32>((u_xlati45.x & 31i)));
    u_xlati87 = bitcast<i32>((bitcast<u32>(u_xlati121) ^ bitcast<u32>(u_xlati47)));
    u_xlati47 = (bitcast<i32>(u_xlatu125) + -32i);
    u_xlati47 = bitcast<i32>((bitcast<u32>(u_xlati47) & 65504u));
    u_xlati45.x = (u_xlati45.x + u_xlati47);
    u_xlati45.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati45.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].www)).xyz, u_xlat13.w);
    u_xlat47.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat47.x = min(u_xlat47.x, u_xlat13.x);
    u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
    u_xlat126 = (-(u_xlat77.x) + 1.0f);
    u_xlat47.x = min(u_xlat47.x, u_xlat126);
    u_xlatb126 = (0.0f < x_5355.urp_ReflProbes_ProbePosition[u_xlati45.x].w);
    if (u_xlatb44.x) {
      x_5421 = x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].x;
    } else {
      x_5421 = x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].x;
    }
    u_xlat13.x = x_5421;
    if (u_xlatb44.y) {
      x_5437 = x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].y;
    } else {
      x_5437 = x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].y;
    }
    u_xlat13.y = x_5437;
    if (u_xlatb44.z) {
      x_5453 = x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].z;
    } else {
      x_5453 = x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].z;
    }
    u_xlat13.z = x_5453;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat51 = (vs_TEXCOORD0 + -(x_5355.urp_ReflProbes_ProbePosition[u_xlati45.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat51)).xyz, u_xlat13.w);
    if (u_xlatb126) {
      x_5512 = u_xlat13.xyz;
    } else {
      x_5512 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_5512.xyz, u_xlat13.w);
    u_xlatu126 = u32(abs(x_5355.urp_ReflProbes_ProbePosition[u_xlati45.x].w));
    u_xlatu126 = (u_xlatu126 + 4294967295u);
    u_xlat126 = f32(u_xlatu126);
    u_xlat126 = min(u_xlat40, u_xlat126);
    u_xlat127 = dot(abs(u_xlat13.xyz), x_3998);
    u_xlat127 = max(u_xlat127, 0.00000099999999747524f);
    u_xlat127 = (1.0f / u_xlat127);
    u_xlat14 = (vec3f(u_xlat127) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb52 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb52.x) {
      x_5568 = u_xlat14.x;
    } else {
      x_5568 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_5568;
    if (u_xlatb52.y) {
      x_5581 = u_xlat14.x;
    } else {
      x_5581 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_5581;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat127)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat89.x = floor(u_xlat126);
    u_xlat89.y = (u_xlat89.x + 1.0f);
    u_xlat126 = (u_xlat126 + -(u_xlat89.x));
    u_xlatu89 = vec2u(u_xlat89);
    u_xlati89 = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.x));
    u_xlati45.x = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.y));
    u_xlat89 = ((u_xlat13.xy * x_5355.urp_ReflProbes_MipScaleOffset[u_xlati89].xy) + x_5355.urp_ReflProbes_MipScaleOffset[u_xlati89].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat89, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_5355.urp_ReflProbes_MipScaleOffset[u_xlati45.x].xy) + x_5355.urp_ReflProbes_MipScaleOffset[u_xlati45.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat126) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat47.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat77.x = (u_xlat77.x + u_xlat47.x);
  }
  u_xlatb0 = (u_xlat77.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat40);
    u_xlat0.x = (-(u_xlat77.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat115) * u_xlat1) + u_xlat5.xyw);
  let x_5823 = (u_xlat38 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_5823.xy, u_xlat5.z, x_5823.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_5845 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_5845.xy, u_xlat5.z, x_5845.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat115 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat115 = max(u_xlat115, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat115 * u_xlat115);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat115 = ((u_xlat115 * u_xlat115) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat115) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat38.x = dot(u_xlat5.xyw, u_xlat38);
  u_xlat38.x = clamp(u_xlat38.x, 0.0f, 1.0f);
  u_xlat38.x = (-(u_xlat38.x) + 1.0f);
  u_xlat76 = (u_xlat38.x * u_xlat38.x);
  u_xlat76 = (u_xlat76 * u_xlat76);
  u_xlat38.x = (u_xlat76 * u_xlat38.x);
  u_xlat38.x = ((u_xlat80 * u_xlat38.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat38.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat48);
  let x_5964 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_5964.x, x_5964.y, x_5964.z));
  u_xlat114 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat114 = (u_xlat114 * 4.0f);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat114)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat77 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat77 = (-(u_xlat77) + u_xlat1.xy);
  let x_6007 = u_xlat77;
  let x_6009 = x_81.x_GlobalMipBias.x;
  let x_6010 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6007, x_6009);
  u_xlat114 = x_6010.x;
  u_xlat77 = (u_xlat42.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat77) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_6035 = u_xlat1;
  let x_6038 = x_81.x_GlobalMipBias.x;
  let x_6039 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6035.xy, x_6038);
  u_xlat1.x = x_6039.x;
  u_xlat1.x = (u_xlat83.x * u_xlat1.x);
  u_xlat114 = ((u_xlat114 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat39.x = (-(u_xlat84.x) + 1.0f);
  u_xlat1.x = (u_xlat39.x * u_xlat1.x);
  u_xlat39 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_6089 = u_xlat39;
  let x_6091 = x_81.x_GlobalMipBias.x;
  let x_6092 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6089, x_6091);
  u_xlat39.x = x_6092.y;
  u_xlat77.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat77.x = (u_xlat77.x * u_xlat77.x);
  u_xlat77.x = (u_xlat77.x * -1.44269502162933349609f);
  u_xlat77.x = exp2(u_xlat77.x);
  u_xlat77.x = ((u_xlat84.x * 0.34999999403953552246f) + u_xlat77.x);
  u_xlat39.x = (u_xlat77.x * u_xlat39.x);
  u_xlat39.x = (u_xlat81 * u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * 0.89999997615814208984f);
  u_xlat114 = ((u_xlat114 * u_xlat1.x) + u_xlat39.x);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat48 * vec3f(0.69999998807907104492f)) + u_xlat25.xyz);
  u_xlat114 = (u_xlat114 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  SV_Target0 = vec4f((((vec3f(u_xlat114) * u_xlat1) + u_xlat0)).xyz, SV_Target0.w);
  SV_Target0.w = (u_xlat117 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
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
  vs_TEXCOORD1 = (u_xlat0.x * x_74.unity_FogParams.x);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  unity_FogColor : vec4f,
  /* @offset(240) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(304) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(368) */
  x_ScreenSize : vec4f,
  /* @offset(384) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(416) */
  x_B612SunDirection : vec4f,
  /* @offset(432) */
  x_B612WaterShallow : vec4f,
  /* @offset(448) */
  x_B612WaterDeep : vec4f,
  /* @offset(464) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2589 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_4081 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_5067 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_5244 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_5479 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : f32;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_744 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2883 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_2948 = vec2f(0.15999999642372131348f);

const x_3020 = vec3f(-2.5f, -0.5f, 1.5f);

const x_3419 = vec2f(0.08163200318813323975f);

const x_3438 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_3441 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_3448 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_3486 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_4112 = vec3f(-1.0f);

const x_4122 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat38 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat79 : vec2f;
  var u_xlat115 : f32;
  var u_xlat4 : vec4f;
  var u_xlat80 : f32;
  var u_xlat118 : f32;
  var u_xlatb42 : bool;
  var x_281 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat43 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat82 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat83 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat84 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat85 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb123 : bool;
  var u_xlat11 : vec3f;
  var u_xlat48 : vec3f;
  var u_xlat86 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat49 : vec3f;
  var u_xlat122 : f32;
  var u_xlat124 : f32;
  var u_xlat87 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat89 : vec2f;
  var u_xlat52 : vec3f;
  var u_xlat126 : f32;
  var u_xlat88 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat129 : f32;
  var u_xlat128 : f32;
  var u_xlat53 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat55 : vec2f;
  var u_xlat56 : vec3f;
  var u_xlat92 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat131 : f32;
  var u_xlat132 : f32;
  var u_xlatb58 : vec2<bool>;
  var u_xlat59 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat47 : vec2f;
  var u_xlat95 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat60 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat99 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat81 : f32;
  var u_xlat134 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat41 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat45 : vec3f;
  var u_xlat117 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb115 : bool;
  var x_2476 : vec3f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec4f;
  var u_xlat27 : vec4f;
  var u_xlatb24 : vec4<bool>;
  var u_xlat40 : f32;
  var u_xlatu40 : u32;
  var u_xlati40 : i32;
  var u_xlatb40 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb80 : bool;
  var u_xlat44 : vec3f;
  var u_xlat102 : vec2f;
  var u_xlat28 : vec4f;
  var u_xlat29 : vec4f;
  var u_xlat30 : vec4f;
  var u_xlat31 : vec4f;
  var u_xlat32 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat119 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat33 : vec4f;
  var u_xlat63 : vec2f;
  var u_xlat34 : vec2f;
  var u_xlat103 : vec2f;
  var u_xlat35 : vec4f;
  var u_xlat36 : vec4f;
  var u_xlat37 : vec4f;
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
  var u_xlatb43 : bool;
  var u_xlat120 : f32;
  var u_xlat121 : f32;
  var x_4549 : f32;
  var x_4592 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu82 : vec2u;
  var u_xlati6 : i32;
  var u_xlat39 : vec2f;
  var u_xlat0 : vec3f;
  var x_4985 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati39 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati44 : vec2i;
  var u_xlati45 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb44 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati87 : i32;
  var u_xlatu125 : u32;
  var u_xlat77 : vec2f;
  var u_xlatu45 : u32;
  var u_xlati121 : i32;
  var u_xlatu122 : u32;
  var u_xlatb47 : bool;
  var u_xlatu126 : u32;
  var u_xlatb126 : bool;
  var u_xlatu47 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati90 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati126 : i32;
  var u_xlati51 : i32;
  var u_xlati47 : i32;
  var u_xlatb45 : bool;
  var x_5545 : f32;
  var x_5561 : f32;
  var x_5577 : f32;
  var u_xlat51 : vec3f;
  var x_5636 : vec3f;
  var u_xlat127 : f32;
  var u_xlatb52 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_5692 : f32;
  var x_5705 : f32;
  var u_xlatu89 : vec2u;
  var u_xlati89 : i32;
  var u_xlat76 : f32;
  var u_xlat114 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat38 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat38, u_xlat38);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat38 = (u_xlat38 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat38;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat38 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat79 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat115 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat115, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat80 = max(u_xlat80, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat80))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat79.yx + u_xlat79.yx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat79, u_xlat79);
  u_xlat118 = max(u_xlat80, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat118))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb42 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb42) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat42 = vec3f(x_314.x, u_xlat42.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat43 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat82 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat82) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat83 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat82.x * 4.0f);
  u_xlat8 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat42 = vec3f(x_405.x, u_xlat42.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat84 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat84 = (u_xlat84 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat84;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat84 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat85 = (u_xlat42.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat85 = (u_xlat85 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat85));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat83.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat84 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat84 = max(vec2f(u_xlat115), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat84.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat84.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat85.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat85.x = sin(u_xlat85.x);
  u_xlat85.x = (u_xlat85.x * 43758.546875f);
  u_xlat85.x = fract(u_xlat85.x);
  u_xlat85.x = ((u_xlat85.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat85.x = (u_xlat85.x / u_xlat9.y);
  u_xlat85.x = (-(u_xlat85.x) + x_81.x_Time.y);
  u_xlatb123 = (u_xlat85.x >= 0.0f);
  u_xlat10.x = (u_xlat115 + -(x_142.x_BoilRadius));
  let x_745 = (u_xlat85.xx * x_744);
  u_xlat11 = vec3f(x_745.x, u_xlat11.y, x_745.y);
  u_xlat48.x = ((u_xlat85.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat86 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat10.x);
  u_xlat86 = (u_xlat86 / u_xlat48.x);
  u_xlat86 = (u_xlat86 * u_xlat86);
  u_xlat86 = (u_xlat86 * -1.44269502162933349609f);
  u_xlat86 = exp2(u_xlat86);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat49 = vec3f(x_804.x, u_xlat49.y, x_804.y);
  u_xlat122 = (u_xlat84.y * 6.66666650772094726562f);
  u_xlat122 = inverseSqrt(u_xlat122);
  let x_818 = (vec2f(u_xlat122) * u_xlat49.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat124 = exp2(u_xlat11.z);
  u_xlat87 = (u_xlat124 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat87 = (u_xlat11.x * u_xlat87);
  u_xlat86 = (u_xlat86 * u_xlat87);
  u_xlat87 = (u_xlat84.x * u_xlat85.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat87));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat86 = (u_xlat86 * u_xlat12.x);
  u_xlat86 = select(0.0f, u_xlat86, u_xlatb123);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_744);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat89 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat52 = vec3f(x_931.x, u_xlat52.y, x_931.y);
  let x_937 = (u_xlat52.xz / u_xlat89);
  u_xlat52 = vec3f(x_937.x, u_xlat52.y, x_937.y);
  let x_944 = (u_xlat52.xz * u_xlat52.xz);
  u_xlat52 = vec3f(x_944.x, u_xlat52.y, x_944.y);
  let x_950 = (u_xlat52.xz * x_949);
  u_xlat52 = vec3f(x_950.x, u_xlat52.y, x_950.y);
  let x_955 = exp2(u_xlat52.xz);
  u_xlat52 = vec3f(x_955.x, u_xlat52.y, x_955.y);
  u_xlat126 = exp2(u_xlat14.z);
  u_xlat88 = (u_xlat126 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat88 = (u_xlat88 * u_xlat14.x);
  u_xlat88 = (u_xlat88 * u_xlat52.x);
  u_xlat52 = vec3f(((u_xlat84.xx * u_xlat12.xy)).xy, u_xlat52.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat52.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat88 = ((u_xlat88 * u_xlat15.x) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat88, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat122) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_744);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat88 = exp2(u_xlat17.z);
  u_xlat129 = (u_xlat88 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat129 = (u_xlat129 * u_xlat17.x);
  u_xlat128 = (u_xlat52.z * u_xlat129);
  u_xlat128 = ((u_xlat128 * u_xlat15.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat128, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat53 = vec3f(x_1094.x, u_xlat53.y, x_1094.y);
  let x_1101 = (u_xlat53.xz / u_xlat9.yy);
  u_xlat53 = vec3f(x_1101.x, u_xlat53.y, x_1101.y);
  let x_1110 = (-(u_xlat53.xz) + x_81.x_Time.yy);
  u_xlat53 = vec3f(x_1110.x, u_xlat53.y, x_1110.y);
  u_xlatb16 = ((u_xlat53.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat53.xx * x_744);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat55 = ((u_xlat53.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat53.xz) + u_xlat10.xx);
  u_xlat56 = vec3f(x_1144.x, u_xlat56.y, x_1144.y);
  let x_1150 = (u_xlat56.xz / u_xlat55);
  u_xlat56 = vec3f(x_1150.x, u_xlat56.y, x_1150.y);
  let x_1157 = (u_xlat56.xz * u_xlat56.xz);
  u_xlat56 = vec3f(x_1157.x, u_xlat56.y, x_1157.y);
  let x_1162 = (u_xlat56.xz * x_949);
  u_xlat56 = vec3f(x_1162.x, u_xlat56.y, x_1162.y);
  let x_1167 = exp2(u_xlat56.xz);
  u_xlat56 = vec3f(x_1167.x, u_xlat56.y, x_1167.y);
  u_xlat128 = exp2(u_xlat18.z);
  u_xlat92.x = (u_xlat128 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat92.x = (u_xlat92.x * u_xlat18.x);
  u_xlat92.x = (u_xlat92.x * u_xlat56.x);
  u_xlat56 = vec3f(((u_xlat84.xx * u_xlat53.xz)).xy, u_xlat56.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat56.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat92.x = ((u_xlat92.x * u_xlat19.x) + u_xlat86);
  if (u_xlatb16.x) {
    x_1232 = u_xlat92.x;
  } else {
    x_1232 = u_xlat86;
  }
  u_xlat86 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat92 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat122) * u_xlat92);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat53.zz * x_744);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat131 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat131 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat132 = (u_xlat56.z * u_xlat19.x);
  u_xlat132 = ((u_xlat132 * u_xlat19.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat132, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb58 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_744);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat59 = vec3f(x_1350.x, u_xlat59.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat59.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat47.x = exp2(u_xlat21.z);
  u_xlat132 = (u_xlat47.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat132 = (u_xlat132 * u_xlat21.x);
  u_xlat132 = (u_xlat132 * u_xlat22.x);
  u_xlat95 = (u_xlat84.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat95));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat84.x = ((u_xlat132 * u_xlat22.x) + u_xlat86);
  if (u_xlatb58.x) {
    x_1450 = u_xlat84.x;
  } else {
    x_1450 = u_xlat86;
  }
  u_xlat84.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat122 = (u_xlat122 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_744);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat86 = exp2(u_xlat22.w);
  u_xlat122 = (u_xlat122 * u_xlat86);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat122 = (u_xlat122 * u_xlat22.x);
  u_xlat122 = (u_xlat122 * u_xlat22.y);
  u_xlat122 = ((u_xlat122 * u_xlat22.z) + u_xlat84.x);
  if (u_xlatb58.y) {
    x_1524 = u_xlat122;
  } else {
    x_1524 = u_xlat84.x;
  }
  u_xlat84.x = x_1524;
  u_xlat122 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat132 = (u_xlat115 / u_xlat122);
  u_xlat132 = (-(u_xlat132) + 1.0f);
  u_xlat132 = max(u_xlat132, 0.0f);
  u_xlat84.x = (u_xlat84.x * x_142.x_RingStrength);
  u_xlat84.x = (u_xlat132 * u_xlat84.x);
  u_xlat60 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat115))).xy, u_xlat23.zw);
  u_xlat99 = (x_376 / u_xlat60.xy);
  u_xlat23 = vec4f(((u_xlat99 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat132 = (u_xlat23.x * u_xlat24.x);
  u_xlat84.x = (u_xlat84.x * u_xlat132);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat84.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat84.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat81 = sin(u_xlat43.y);
  u_xlat81 = (u_xlat81 * 1.70000004768371582031f);
  u_xlat81 = ((u_xlat84.x * 6.28318548202514648438f) + u_xlat81);
  u_xlat81 = sin(u_xlat81);
  u_xlat81 = ((u_xlat81 * 0.25f) + 0.75f);
  u_xlat84.x = (u_xlat115 * -(u_xlat115));
  u_xlat132 = (u_xlat60.x * u_xlat60.x);
  u_xlat84.x = (u_xlat84.x / u_xlat132);
  u_xlat84.x = (u_xlat84.x * 1.44269502162933349609f);
  u_xlat84.x = exp2(u_xlat84.x);
  u_xlat134 = (u_xlat115 + u_xlat115);
  u_xlat132 = (u_xlat134 / u_xlat132);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat132));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat84.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat60 = vec3f(((u_xlat60.xx * u_xlat23.xw)).xy, u_xlat60.z);
  let x_1734 = ((u_xlat60.xy * vec2f(u_xlat81)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat84.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat43.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat43 = vec3f(x_1763.x, u_xlat43.y, x_1763.y);
  let x_1769 = u_xlat43;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_1786.x, u_xlat43.y, x_1786.y);
  u_xlat60 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat60.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat60.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat60.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat132 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat115 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat115);
  u_xlat132 = (1.0f / u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat132 = ((u_xlat115 * -2.0f) + 3.0f);
  u_xlat115 = (u_xlat115 * u_xlat115);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat84.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat43.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat115)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat115 = sqrt(u_xlat80);
  u_xlat60 = (vec3f(u_xlat115) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat60 = (u_xlat60 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat60 = clamp(u_xlat60, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat60 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat60 = (u_xlat60 * u_xlat60);
  u_xlat80 = (u_xlat60.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat60.xz) + x_376);
  u_xlat43 = vec3f(x_1932.x, u_xlat43.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat82.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat82.x = dot(u_xlat82.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat82.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat43.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat43.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat80 * u_xlat43.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat43 = vec3f(x_2080.x, u_xlat43.y, x_2080.y);
  u_xlat41 = dot(u_xlat79.yx, u_xlat43.xz);
  u_xlat41 = (abs(u_xlat41) * 4.0f);
  u_xlat41 = min(u_xlat41, 1.0f);
  u_xlat115 = max(u_xlat115, 0.00100000004749745131f);
  u_xlat79 = (-(u_xlat79) / vec2f(u_xlat115));
  let x_2105 = (u_xlat82.yy * u_xlat79.yx);
  u_xlat43 = vec3f(x_2105.x, u_xlat43.y, x_2105.y);
  let x_2115 = ((-(u_xlat43.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat43 = vec3f(x_2115.x, u_xlat43.y, x_2115.y);
  let x_2122 = (u_xlat43.xz * vec2f(2.38095235824584960938f));
  u_xlat43 = vec3f(x_2122.x, u_xlat43.y, x_2122.y);
  u_xlat79 = (u_xlat6.yy * u_xlat79);
  u_xlat79 = ((-(u_xlat79) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat79 = ((u_xlat79 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat43;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_2162.x, u_xlat43.y, x_2162.y);
  let x_2168 = u_xlat79;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat79 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat79 = (u_xlat83.yy * u_xlat79);
  u_xlat79 = ((u_xlat43.xz * u_xlat7.yy) + u_xlat79);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat79 = (u_xlat79 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat79);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat115 = ((u_xlat41 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat115)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat115 = dot(u_xlat3, u_xlat3);
  u_xlat115 = inverseSqrt(u_xlat115);
  u_xlat3 = (vec3f(u_xlat115) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat115 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat115) + 1.0f);
  u_xlat115 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat115 = (1.0f / u_xlat115);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat43 = vec3f(x_2286.x, u_xlat43.y, x_2286.y);
  let x_2294 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2294.x, u_xlat43.y, x_2294.y);
  let x_2302 = (u_xlat43.xz * x_81.x_ScreenSize.xy);
  u_xlat43 = vec3f(x_2302.x, u_xlat43.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat43.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat43 = vec3f(x_2331.x, u_xlat43.y, x_2331.y);
  let x_2341 = (-(u_xlat43.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat45 = vec3f(x_2341.x, u_xlat45.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat43.xx) + u_xlat45.xz);
  u_xlat43 = vec3f(x_2352.x, u_xlat43.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat43.xz);
  u_xlat43 = vec3f(x_2363.x, u_xlat43.y, x_2363.y);
  let x_2372 = (u_xlat43.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat43 = vec3f(x_2372.x, u_xlat43.y, x_2372.y);
  u_xlat117 = (u_xlat43.x / u_xlat43.z);
  u_xlat117 = (-(u_xlat117) + vs_TEXCOORD0.y);
  u_xlat117 = max(u_xlat117, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat43 = vec3f(x_2399.x, u_xlat43.y, x_2399.y);
  u_xlat80 = (u_xlat117 * 4.0f);
  u_xlat80 = min(u_xlat80, 1.0f);
  u_xlat24 = vec4f((((u_xlat43.xz * vec2f(u_xlat80)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb115 = (u_xlat2.x < u_xlat115);
  if (u_xlatb115) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat60 = x_2476;
  u_xlat2 = vec4f((((u_xlat60.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat60.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat115 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat115 = min(u_xlat115, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat43 = vec3f(x_2555.x, u_xlat43.y, x_2555.y);
  let x_2562 = min(u_xlat43.xz, u_xlat60.xy);
  u_xlat43 = vec3f(x_2562.x, u_xlat43.y, x_2562.y);
  let x_2570 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2570.x, u_xlat43.y, x_2570.y);
  let x_2578 = u_xlat43;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat60 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat24.w);
  u_xlat25 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat25.w);
  u_xlat26 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat26.w);
  u_xlat27 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat27.w);
  u_xlat24.x = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat24.y = dot(u_xlat25.xyz, u_xlat25.xyz);
  u_xlat24.z = dot(u_xlat26.xyz, u_xlat26.xyz);
  u_xlat24.w = dot(u_xlat27.xyz, u_xlat27.xyz);
  u_xlatb24 = (u_xlat24 < x_2589.x_CascadeShadowSplitSphereRadii);
  u_xlat25.x = select(0.0f, 1.0f, u_xlatb24.x);
  u_xlat25.y = select(0.0f, 1.0f, u_xlatb24.y);
  u_xlat25.z = select(0.0f, 1.0f, u_xlatb24.z);
  u_xlat25.w = select(0.0f, 1.0f, u_xlatb24.w);
  u_xlat24.x = select(-0.0f, -1.0f, u_xlatb24.x);
  u_xlat24.y = select(-0.0f, -1.0f, u_xlatb24.y);
  u_xlat24.z = select(-0.0f, -1.0f, u_xlatb24.z);
  u_xlat24 = vec4f(((u_xlat24.xyz + u_xlat25.yzw)).xyz, u_xlat24.w);
  u_xlat25 = vec4f(u_xlat25.x, max(u_xlat24.xyz, vec3f()).xyz);
  u_xlat40 = dot(u_xlat25, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat40 = (-(u_xlat40) + 4.0f);
  u_xlatu40 = u32(u_xlat40);
  u_xlati40 = (bitcast<i32>(u_xlatu40) << bitcast<u32>(2i));
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati40 + 1i)].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati40].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati40 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati40 + 3i)].xyz)).xyz, u_xlat24.w);
  u_xlatb40 = (0.0f < x_2589.x_MainLightShadowParams.y);
  if (u_xlatb40) {
    u_xlatb40 = (x_2589.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb40) {
      u_xlat25 = (u_xlat24.xyxy + x_2589.x_MainLightShadowOffset0);
      let x_2775 = u_xlat25.xy;
      txVec0 = vec3f(x_2775.x, x_2775.y, u_xlat24.z);
      u_xlat26.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_2795 = u_xlat25.zw;
      txVec1 = vec3f(x_2795.x, x_2795.y, u_xlat24.z);
      u_xlat26.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat25 = (u_xlat24.xyxy + x_2589.x_MainLightShadowOffset1);
      let x_2815 = u_xlat25.xy;
      txVec2 = vec3f(x_2815.x, x_2815.y, u_xlat24.z);
      u_xlat26.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_2830 = u_xlat25.zw;
      txVec3 = vec3f(x_2830.x, x_2830.y, u_xlat24.z);
      u_xlat26.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat40 = dot(u_xlat26, vec4f(0.25f));
    } else {
      u_xlatb80 = (x_2589.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb80) {
        let x_2860 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_2860.x, u_xlat43.y, x_2860.y);
        let x_2865 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_2865.x, u_xlat43.y, x_2865.y);
        let x_2878 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_2878.x, u_xlat44.y, x_2878.y);
        u_xlat25 = (u_xlat44.xxzz + x_2883);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_2892 = (u_xlat26.yw * x_914);
        u_xlat45 = vec3f(x_2892.x, u_xlat45.y, x_2892.y);
        let x_2901 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat25 = vec4f(x_2901.x, u_xlat25.y, x_2901.y, u_xlat25.w);
        u_xlat26 = vec4f(((-(u_xlat44.xz) + x_376)).xy, u_xlat26.zw);
        u_xlat102 = min(u_xlat44.xz, vec2f());
        u_xlat102 = ((-(u_xlat102) * u_xlat102) + u_xlat26.xy);
        let x_2924 = max(u_xlat44.xz, vec2f());
        u_xlat44 = vec3f(x_2924.x, u_xlat44.y, x_2924.y);
        let x_2935 = ((-(u_xlat44.xz) * u_xlat44.xz) + u_xlat25.yw);
        u_xlat44 = vec3f(x_2935.x, u_xlat44.y, x_2935.y);
        u_xlat102 = (u_xlat102 + x_376);
        let x_2942 = (u_xlat44.xz + x_376);
        u_xlat44 = vec3f(x_2942.x, u_xlat44.y, x_2942.y);
        u_xlat27 = vec4f(((u_xlat25.xz * x_2948)).xy, u_xlat27.zw);
        u_xlat28 = vec4f(((u_xlat26.xy * x_2948)).xy, u_xlat28.zw);
        u_xlat26 = vec4f(((u_xlat102 * x_2948)).xy, u_xlat26.zw);
        u_xlat29 = vec4f(((u_xlat44.xz * x_2948)).xy, u_xlat29.zw);
        let x_2970 = (u_xlat25.yw * x_2948);
        u_xlat44 = vec3f(x_2970.x, u_xlat44.y, x_2970.y);
        u_xlat27.z = u_xlat26.x;
        u_xlat27.w = u_xlat44.x;
        u_xlat28.z = u_xlat29.x;
        u_xlat28.w = u_xlat45.x;
        u_xlat25 = (u_xlat27.zwxz + u_xlat28.zwxz);
        u_xlat26.z = u_xlat27.y;
        u_xlat26.w = u_xlat44.z;
        u_xlat29.z = u_xlat28.y;
        u_xlat29.w = u_xlat45.z;
        u_xlat26 = vec4f(((u_xlat26.zyw + u_xlat29.zyw)).xyz, u_xlat26.w);
        u_xlat27 = vec4f(((u_xlat28.xzw / u_xlat25.zwy)).xyz, u_xlat27.w);
        u_xlat27 = vec4f(((u_xlat27.xyz + x_3020)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat29.zyw / u_xlat26.xyz)).xyz, u_xlat28.w);
        u_xlat28 = vec4f(((u_xlat28.xyz + x_3020)).xyz, u_xlat28.w);
        u_xlat27 = vec4f(((u_xlat27.yxz * x_2589.x_MainLightShadowmapSize.xxx)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat28.xyz * x_2589.x_MainLightShadowmapSize.yyy)).xyz, u_xlat28.w);
        u_xlat27.w = u_xlat28.x;
        u_xlat29 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.ywxw);
        let x_3072 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat27.zw);
        u_xlat44 = vec3f(x_3072.x, u_xlat44.y, x_3072.y);
        u_xlat28.w = u_xlat27.y;
        let x_3079 = u_xlat28.yz;
        u_xlat27 = vec4f(u_xlat27.x, x_3079.x, u_xlat27.z, x_3079.y);
        u_xlat30 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat28 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat28.wywz);
        u_xlat27 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.xwzw);
        u_xlat31 = (u_xlat25.zwyz * u_xlat26.xxxy);
        u_xlat32 = (u_xlat25 * u_xlat26.yyzz);
        u_xlat80 = (u_xlat25.y * u_xlat26.z);
        let x_3128 = u_xlat29.xy;
        txVec4 = vec3f(x_3128.x, x_3128.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_3143 = u_xlat29.zw;
        txVec5 = vec3f(x_3143.x, x_3143.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat119 = (u_xlat119 * u_xlat31.y);
        u_xlat43.x = ((u_xlat31.x * u_xlat43.x) + u_xlat119);
        let x_3170 = u_xlat44.xz;
        txVec6 = vec3f(x_3170.x, x_3170.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat43.x = ((u_xlat31.z * u_xlat119) + u_xlat43.x);
        let x_3192 = u_xlat28.xy;
        txVec7 = vec3f(x_3192.x, x_3192.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat43.x = ((u_xlat31.w * u_xlat119) + u_xlat43.x);
        let x_3214 = u_xlat30.xy;
        txVec8 = vec3f(x_3214.x, x_3214.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat43.x = ((u_xlat32.x * u_xlat119) + u_xlat43.x);
        let x_3236 = u_xlat30.zw;
        txVec9 = vec3f(x_3236.x, x_3236.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat43.x = ((u_xlat32.y * u_xlat119) + u_xlat43.x);
        let x_3258 = u_xlat28.zw;
        txVec10 = vec3f(x_3258.x, x_3258.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat43.x = ((u_xlat32.z * u_xlat119) + u_xlat43.x);
        let x_3280 = u_xlat27.xy;
        txVec11 = vec3f(x_3280.x, x_3280.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat43.x = ((u_xlat32.w * u_xlat119) + u_xlat43.x);
        let x_3302 = u_xlat27.zw;
        txVec12 = vec3f(x_3302.x, x_3302.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat40 = ((u_xlat80 * u_xlat119) + u_xlat43.x);
      } else {
        let x_3327 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_3327.x, u_xlat43.y, x_3327.y);
        let x_3332 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_3332.x, u_xlat43.y, x_3332.y);
        let x_3344 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_3344.x, u_xlat44.y, x_3344.y);
        u_xlat25 = (u_xlat44.xxzz + x_2883);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_3359 = (u_xlat26.yw * vec2f(0.04081600159406661987f));
        u_xlat27 = vec4f(u_xlat27.x, x_3359.x, u_xlat27.z, x_3359.y);
        let x_3368 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat45 = vec3f(x_3368.x, u_xlat45.y, x_3368.y);
        let x_3374 = (-(u_xlat44.xz) + x_376);
        u_xlat25 = vec4f(x_3374.x, u_xlat25.y, x_3374.y, u_xlat25.w);
        u_xlat26 = vec4f(min(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3390 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.xz);
        u_xlat25 = vec4f(x_3390.x, u_xlat25.y, x_3390.y, u_xlat25.w);
        u_xlat26 = vec4f(max(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3406 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.yw);
        u_xlat25 = vec4f(u_xlat25.x, x_3406.x, u_xlat25.z, x_3406.y);
        u_xlat25 = (u_xlat25 + vec4f(2.0f));
        u_xlat26.z = (u_xlat25.y * 0.08163200318813323975f);
        u_xlat28 = vec4f(((u_xlat45.zx * x_3419)).xy, u_xlat28.zw);
        let x_3425 = (u_xlat25.xz * x_3419);
        u_xlat45 = vec3f(x_3425.x, u_xlat45.y, x_3425.y);
        u_xlat28.z = (u_xlat25.w * 0.08163200318813323975f);
        u_xlat26.x = u_xlat28.y;
        let x_3442 = ((u_xlat44.xx * x_3438) + x_3441);
        u_xlat26 = vec4f(u_xlat26.x, x_3442.x, u_xlat26.z, x_3442.y);
        let x_3449 = ((u_xlat44.xx * x_3438) + x_3448);
        u_xlat25 = vec4f(x_3449.x, u_xlat25.y, x_3449.y, u_xlat25.w);
        u_xlat25.y = u_xlat45.x;
        u_xlat25.w = u_xlat27.y;
        u_xlat26 = (u_xlat25 + u_xlat26);
        let x_3464 = ((u_xlat44.zz * x_3438) + x_3441);
        u_xlat28 = vec4f(u_xlat28.x, x_3464.x, u_xlat28.z, x_3464.y);
        let x_3470 = ((u_xlat44.zz * x_3438) + x_3448);
        u_xlat27 = vec4f(x_3470.x, u_xlat27.y, x_3470.y, u_xlat27.w);
        u_xlat27.y = u_xlat45.z;
        u_xlat28 = (u_xlat27 + u_xlat28);
        u_xlat25 = (u_xlat25 / u_xlat26);
        u_xlat25 = (u_xlat25 + x_3486);
        u_xlat27 = (u_xlat27 / u_xlat28);
        u_xlat27 = (u_xlat27 + x_3486);
        u_xlat25 = (u_xlat25.wxyz * x_2589.x_MainLightShadowmapSize.xxxx);
        u_xlat27 = (u_xlat27.xwyz * x_2589.x_MainLightShadowmapSize.yyyy);
        let x_3506 = u_xlat25.yzw;
        u_xlat29 = vec4f(x_3506.x, u_xlat29.y, x_3506.yz);
        u_xlat29.y = u_xlat27.x;
        u_xlat30 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3529 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat44 = vec3f(x_3529.x, u_xlat44.y, x_3529.y);
        u_xlat25.y = u_xlat29.y;
        u_xlat29.y = u_xlat27.z;
        u_xlat31 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3555 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat45 = vec3f(x_3555.x, u_xlat45.y, x_3555.y);
        u_xlat25.z = u_xlat29.y;
        u_xlat32 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat25.xyxz);
        u_xlat29.y = u_xlat27.w;
        u_xlat33 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        u_xlat63 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat25.w = u_xlat29.y;
        u_xlat34 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat25.xw);
        let x_3607 = u_xlat29.xzw;
        u_xlat27 = vec4f(x_3607.x, u_xlat27.y, x_3607.yz);
        u_xlat29 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat103 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat27.wy);
        u_xlat27.x = u_xlat25.x;
        let x_3640 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat27.xy);
        u_xlat43 = vec3f(x_3640.x, u_xlat43.y, x_3640.y);
        u_xlat35 = (u_xlat26 * u_xlat28.xxxx);
        u_xlat36 = (u_xlat26 * u_xlat28.yyyy);
        u_xlat37 = (u_xlat26 * u_xlat28.zzzz);
        u_xlat26 = (u_xlat26 * u_xlat28.wwww);
        let x_3664 = u_xlat30.xy;
        txVec13 = vec3f(x_3664.x, x_3664.y, u_xlat24.z);
        u_xlat80 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_3678 = u_xlat30.zw;
        txVec14 = vec3f(x_3678.x, x_3678.y, u_xlat24.z);
        u_xlat132 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat132 = (u_xlat132 * u_xlat35.y);
        u_xlat80 = ((u_xlat35.x * u_xlat80) + u_xlat132);
        let x_3702 = u_xlat44.xz;
        txVec15 = vec3f(x_3702.x, x_3702.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat80 = ((u_xlat35.z * u_xlat44.x) + u_xlat80);
        let x_3724 = u_xlat32.xy;
        txVec16 = vec3f(x_3724.x, x_3724.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat80 = ((u_xlat35.w * u_xlat44.x) + u_xlat80);
        let x_3746 = u_xlat31.xy;
        txVec17 = vec3f(x_3746.x, x_3746.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat80 = ((u_xlat36.x * u_xlat44.x) + u_xlat80);
        let x_3768 = u_xlat31.zw;
        txVec18 = vec3f(x_3768.x, x_3768.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat80 = ((u_xlat36.y * u_xlat44.x) + u_xlat80);
        let x_3790 = u_xlat45.xz;
        txVec19 = vec3f(x_3790.x, x_3790.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat80 = ((u_xlat36.z * u_xlat44.x) + u_xlat80);
        let x_3812 = u_xlat32.zw;
        txVec20 = vec3f(x_3812.x, x_3812.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat80 = ((u_xlat36.w * u_xlat44.x) + u_xlat80);
        let x_3834 = u_xlat33.xy;
        txVec21 = vec3f(x_3834.x, x_3834.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat80 = ((u_xlat37.x * u_xlat44.x) + u_xlat80);
        let x_3856 = u_xlat33.zw;
        txVec22 = vec3f(x_3856.x, x_3856.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat80 = ((u_xlat37.y * u_xlat44.x) + u_xlat80);
        txVec23 = vec3f(u_xlat63.x, u_xlat63.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat80 = ((u_xlat37.z * u_xlat44.x) + u_xlat80);
        txVec24 = vec3f(u_xlat34.x, u_xlat34.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat80 = ((u_xlat37.w * u_xlat44.x) + u_xlat80);
        let x_3920 = u_xlat29.xy;
        txVec25 = vec3f(x_3920.x, x_3920.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat80 = ((u_xlat26.x * u_xlat44.x) + u_xlat80);
        let x_3942 = u_xlat29.zw;
        txVec26 = vec3f(x_3942.x, x_3942.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat80 = ((u_xlat26.y * u_xlat44.x) + u_xlat80);
        txVec27 = vec3f(u_xlat103.x, u_xlat103.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat80 = ((u_xlat26.z * u_xlat44.x) + u_xlat80);
        let x_3985 = u_xlat43.xz;
        txVec28 = vec3f(x_3985.x, x_3985.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat40 = ((u_xlat26.w * u_xlat43.x) + u_xlat80);
      }
    }
  } else {
    let x_4008 = u_xlat24.xy;
    txVec29 = vec3f(x_4008.x, x_4008.y, u_xlat24.z);
    u_xlat40 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat80 = (-(x_2589.x_MainLightShadowParams.x) + 1.0f);
  u_xlat40 = ((u_xlat40 * x_2589.x_MainLightShadowParams.x) + u_xlat80);
  u_xlatb80 = (0.0f >= u_xlat24.z);
  u_xlatb43 = (u_xlat24.z >= 1.0f);
  u_xlatb80 = (u_xlatb80 | u_xlatb43);
  u_xlat40 = select(u_xlat40, 1.0f, u_xlatb80);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat80 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat80 = ((u_xlat80 * x_2589.x_MainLightShadowParams.z) + x_2589.x_MainLightShadowParams.w);
  u_xlat80 = clamp(u_xlat80, 0.0f, 1.0f);
  u_xlat43.x = (-(u_xlat40) + 1.0f);
  u_xlat40 = ((u_xlat80 * u_xlat43.x) + u_xlat40);
  u_xlat25.x = dot(x_4081.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_4081.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_4081.unity_SHAb.yw, x_376);
  u_xlat25 = vec4f(((u_xlat25.xyz + -(x_4081.unity_SHC.xyz))).xyz, u_xlat25.w);
  u_xlat26 = vec4f(((x_81.x_B612WaterShallow.xyz + x_4112)).xyz, u_xlat26.w);
  u_xlat26 = vec4f((((x_81.x_B612SunDirection.www * u_xlat26.xyz) + x_4122)).xyz, u_xlat26.w);
  u_xlat26 = vec4f(((u_xlat26.xyz * x_142.x_ScatterColor.xyz)).xyz, u_xlat26.w);
  u_xlat27 = vec4f(((x_81.x_B612WaterDeep.xyz + x_4112)).xyz, u_xlat27.w);
  u_xlat27 = vec4f((((x_81.x_B612SunDirection.www * u_xlat27.xyz) + x_4122)).xyz, u_xlat27.w);
  let x_4156 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_4160 = (u_xlat23.xw / vec2f(x_4156.x, x_4156.y));
  u_xlat43 = vec3f(x_4160.x, u_xlat43.y, x_4160.y);
  let x_4172 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat43.xz);
  u_xlat44 = vec3f(x_4172.x, u_xlat44.y, x_4172.y);
  let x_4180 = u_xlat44;
  let x_4183 = x_81.x_GlobalMipBias.x;
  let x_4184 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4180.xz, x_4183);
  u_xlat80 = x_4184.x;
  let x_4192 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat44 = vec3f(x_4192.x, u_xlat44.y, x_4192.y);
  let x_4202 = ((u_xlat43.xz * vec2f(1.12999999523162841797f)) + u_xlat44.xz);
  u_xlat43 = vec3f(x_4202.x, u_xlat43.y, x_4202.y);
  let x_4208 = u_xlat43;
  let x_4211 = x_81.x_GlobalMipBias.x;
  let x_4212 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4208.xz, x_4211);
  u_xlat43.x = x_4212.x;
  let x_4221 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat44 = vec3f(x_4221.x, u_xlat44.y, x_4221.y);
  u_xlat119 = dot(u_xlat44.xz, u_xlat44.xz);
  u_xlat119 = sqrt(u_xlat119);
  u_xlat44.x = (u_xlat119 + -(x_142.x_BoilRadius));
  u_xlat120 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat44.x);
  u_xlat120 = (u_xlat120 / u_xlat48.x);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat120 = (u_xlat120 * -1.44269502162933349609f);
  u_xlat120 = exp2(u_xlat120);
  u_xlat45.x = max(u_xlat119, 0.15000000596046447754f);
  u_xlat45.x = (u_xlat45.x * 6.66666650772094726562f);
  u_xlat45.x = inverseSqrt(u_xlat45.x);
  let x_4273 = (u_xlat45.xx * u_xlat49.xz);
  u_xlat49 = vec3f(x_4273.x, u_xlat49.y, x_4273.y);
  u_xlat121 = (u_xlat124 * u_xlat49.x);
  u_xlat121 = (u_xlat11.x * u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat121 = ((u_xlat5.x * u_xlat44.x) + -(u_xlat87));
  u_xlat121 = cos(u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat120 = select(0.0f, u_xlat120, u_xlatb123);
  let x_4308 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4308.x, x_4308.y)) * u_xlat12.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat89);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat126 * u_xlat49.z);
  u_xlat121 = (u_xlat14.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4349 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat52.xy));
  u_xlat48 = vec3f(x_4349.x, u_xlat48.y, x_4349.y);
  let x_4354 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4354.x, u_xlat48.y, x_4354.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat88 * u_xlat11.x);
  u_xlat121 = (u_xlat17.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.y);
  let x_4402 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4402.x, x_4402.y)) * u_xlat53.xz) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat55);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat128 * u_xlat11.y);
  u_xlat121 = (u_xlat18.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4443 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat56.xy));
  u_xlat48 = vec3f(x_4443.x, u_xlat48.y, x_4443.y);
  let x_4448 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4448.x, u_xlat48.y, x_4448.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat92)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat131 * u_xlat11.x);
  u_xlat121 = (u_xlat20.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.y);
  let x_4495 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4495.x, x_4495.y)) * u_xlat19.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat59.xz);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat47.x * u_xlat11.y);
  u_xlat121 = (u_xlat21.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  u_xlat47 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat95));
  u_xlat47 = cos(u_xlat47);
  u_xlat5.x = ((u_xlat121 * u_xlat47.x) + u_xlat120);
  if (u_xlatb58.x) {
    x_4549 = u_xlat5.x;
  } else {
    x_4549 = u_xlat120;
  }
  u_xlat5.x = x_4549;
  u_xlat44.x = (u_xlat45.x * u_xlat9.x);
  u_xlat44.x = (u_xlat86 * u_xlat44.x);
  u_xlat44.x = (u_xlat22.x * u_xlat44.x);
  u_xlat44.x = (u_xlat44.x * u_xlat85.y);
  u_xlat44.x = ((u_xlat44.x * u_xlat47.y) + u_xlat5.x);
  if (u_xlatb58.y) {
    x_4592 = u_xlat44.x;
  } else {
    x_4592 = u_xlat5.x;
  }
  u_xlat5.x = x_4592;
  u_xlat44.x = (u_xlat119 / u_xlat122);
  u_xlat44.x = (-(u_xlat44.x) + 1.0f);
  u_xlat44.x = max(u_xlat44.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat44.x * u_xlat5.x);
  u_xlat119 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat119);
  u_xlat119 = (u_xlat99.x * u_xlat119);
  u_xlat119 = clamp(u_xlat119, 0.0f, 1.0f);
  u_xlat44.x = ((u_xlat119 * -2.0f) + 3.0f);
  u_xlat119 = (u_xlat119 * u_xlat119);
  u_xlat119 = (u_xlat119 * u_xlat44.x);
  u_xlat5.x = (u_xlat119 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat80 = min(u_xlat80, u_xlat43.x);
  u_xlat80 = (u_xlat80 * 2.5f);
  u_xlat80 = (u_xlat80 * x_142.x_CausticsStrength);
  let x_4677 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat43 = vec3f(x_4677.x, u_xlat43.y, x_4677.y);
  u_xlat2.x = min(u_xlat43.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat80 = exp2(u_xlat43.z);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_4708 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_4708.xy, u_xlat5.z, x_4708.z);
  let x_4715 = (vec3f(u_xlat40) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4715.xy, u_xlat5.z, x_4715.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_4731 = ((u_xlat5.xyw * u_xlat2.xxx) + x_4122);
  u_xlat5 = vec4f(x_4731.xy, u_xlat5.z, x_4731.z);
  let x_4737 = (u_xlat5.xyw * u_xlat60);
  u_xlat5 = vec4f(x_4737.xy, u_xlat5.z, x_4737.z);
  u_xlat9 = vec4f(((vec3f(u_xlat115) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat115 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat48 = (vec3f(u_xlat40) * x_81.x_MainLightColor.xyz);
  u_xlat40 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat40 = clamp(u_xlat40, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat40) * u_xlat48);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25.xyz);
  u_xlat115 = (u_xlat115 * 0.69999998807907104492f);
  u_xlat115 = min(u_xlat115, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27.xyz) + -(u_xlat26.xyz))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat115) * u_xlat12.xyz) + u_xlat26.xyz)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_4843 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_4843.xy, u_xlat5.z, x_4843.z);
  u_xlat115 = dot(u_xlat3, u_xlat38);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat40 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat80 = (-(x_142.x_F0) + 1.0f);
  u_xlat44.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat80);
  u_xlat115 = (-(u_xlat115) + 1.0f);
  u_xlat120 = (u_xlat115 * u_xlat115);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat115 = (u_xlat115 * u_xlat120);
  u_xlat115 = ((u_xlat44.x * u_xlat115) + u_xlat40);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat40 = dot(-(u_xlat38), u_xlat3);
  u_xlat40 = (u_xlat40 + u_xlat40);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat40))) + -(u_xlat38))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat40 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat40 = (u_xlat40 * x_142.x_Roughness);
  u_xlat40 = (u_xlat40 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu82 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu82.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu82.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat39.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_4985 = u_xlat39.x;
  } else {
    x_4985 = u_xlat1.x;
  }
  u_xlat0.x = x_4985;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati39 = (bitcast<i32>(u_xlatu82.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati39))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_5047 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_5054 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_5055 = vec2i(x_5047, x_5054);
  u_xlati1 = vec3i(x_5055.x, u_xlati1.y, x_5055.y);
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_5079 = ~(u_xlati1.xz);
  u_xlati45 = vec3i(x_5079.x, u_xlati45.y, x_5079.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45.xx) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati44) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati44.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati45.z) & bitcast<u32>(u_xlati44.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb44 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati87 = 0i;
  u_xlatu125 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat77.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu45 = (u_xlatu125 >> 16u);
    u_xlati121 = u_xlati87;
    u_xlatu122 = u_xlatu125;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb47 = (u_xlati121 == 0i);
      u_xlatu126 = (u_xlatu122 & 65535u);
      u_xlatb126 = (u_xlatu45 >= u_xlatu126);
      u_xlatb47 = (u_xlatb47 & u_xlatb126);
      if (!(u_xlatb47)) {
        break;
      }
      param_6 = u_xlatu122;
      param_7 = 5i;
      param_8 = 11i;
      let x_5193 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu47 = x_5193;
      u_xlatu13 = (vec4u(u_xlatu47) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_5214 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_5221 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_5228 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_5235 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_5214, x_5221, x_5228, x_5235);
      u_xlati90 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_5244.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_5244.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_5276 = bitcast<vec2i>((bitcast<vec2u>(u_xlati90) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_5276.x, u_xlati14.y, x_5276.y);
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati51 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati51) | bitcast<u32>(u_xlati13.x)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu122) & 31i)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati47 = (bitcast<i32>(u_xlatu47) << bitcast<u32>(5i));
      u_xlatu47 = (u_xlatu45 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati47)))));
      u_xlatu47 = min(u_xlatu47, 31u);
      u_xlatu47 = (bitcast<u32>(-(bitcast<i32>(u_xlatu47))) + 31u);
      u_xlatu47 = (4294967295u >> (u_xlatu47 & 31u));
      u_xlati121 = bitcast<i32>((u_xlatu47 & bitcast<u32>(u_xlati126)));
      u_xlati47 = (bitcast<i32>(u_xlatu122) + 32i);
      u_xlatu122 = (bitcast<u32>(u_xlati47) & 4294967264u);
    }
    u_xlatu125 = u_xlatu122;
    u_xlatb45 = (u_xlati121 != 0i);
    u_xlatb47 = (u_xlat77.x < 0.99000000953674316406f);
    u_xlatb45 = (u_xlatb45 & u_xlatb47);
    if (!(u_xlatb45)) {
      break;
    }
    u_xlati45.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati121)));
    u_xlati47 = (1i << bitcast<u32>((u_xlati45.x & 31i)));
    u_xlati87 = bitcast<i32>((bitcast<u32>(u_xlati121) ^ bitcast<u32>(u_xlati47)));
    u_xlati47 = (bitcast<i32>(u_xlatu125) + -32i);
    u_xlati47 = bitcast<i32>((bitcast<u32>(u_xlati47) & 65504u));
    u_xlati45.x = (u_xlati45.x + u_xlati47);
    u_xlati45.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati45.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].www)).xyz, u_xlat13.w);
    u_xlat47.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat47.x = min(u_xlat47.x, u_xlat13.x);
    u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
    u_xlat126 = (-(u_xlat77.x) + 1.0f);
    u_xlat47.x = min(u_xlat47.x, u_xlat126);
    u_xlatb126 = (0.0f < x_5479.urp_ReflProbes_ProbePosition[u_xlati45.x].w);
    if (u_xlatb44.x) {
      x_5545 = x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].x;
    } else {
      x_5545 = x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].x;
    }
    u_xlat13.x = x_5545;
    if (u_xlatb44.y) {
      x_5561 = x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].y;
    } else {
      x_5561 = x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].y;
    }
    u_xlat13.y = x_5561;
    if (u_xlatb44.z) {
      x_5577 = x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].z;
    } else {
      x_5577 = x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].z;
    }
    u_xlat13.z = x_5577;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat51 = (vs_TEXCOORD0 + -(x_5479.urp_ReflProbes_ProbePosition[u_xlati45.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat51)).xyz, u_xlat13.w);
    if (u_xlatb126) {
      x_5636 = u_xlat13.xyz;
    } else {
      x_5636 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_5636.xyz, u_xlat13.w);
    u_xlatu126 = u32(abs(x_5479.urp_ReflProbes_ProbePosition[u_xlati45.x].w));
    u_xlatu126 = (u_xlatu126 + 4294967295u);
    u_xlat126 = f32(u_xlatu126);
    u_xlat126 = min(u_xlat40, u_xlat126);
    u_xlat127 = dot(abs(u_xlat13.xyz), x_4122);
    u_xlat127 = max(u_xlat127, 0.00000099999999747524f);
    u_xlat127 = (1.0f / u_xlat127);
    u_xlat14 = (vec3f(u_xlat127) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb52 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb52.x) {
      x_5692 = u_xlat14.x;
    } else {
      x_5692 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_5692;
    if (u_xlatb52.y) {
      x_5705 = u_xlat14.x;
    } else {
      x_5705 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_5705;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat127)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat89.x = floor(u_xlat126);
    u_xlat89.y = (u_xlat89.x + 1.0f);
    u_xlat126 = (u_xlat126 + -(u_xlat89.x));
    u_xlatu89 = vec2u(u_xlat89);
    u_xlati89 = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.x));
    u_xlati45.x = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.y));
    u_xlat89 = ((u_xlat13.xy * x_5479.urp_ReflProbes_MipScaleOffset[u_xlati89].xy) + x_5479.urp_ReflProbes_MipScaleOffset[u_xlati89].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat89, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_5479.urp_ReflProbes_MipScaleOffset[u_xlati45.x].xy) + x_5479.urp_ReflProbes_MipScaleOffset[u_xlati45.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat126) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat47.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat77.x = (u_xlat77.x + u_xlat47.x);
  }
  u_xlatb0 = (u_xlat77.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat40);
    u_xlat0.x = (-(u_xlat77.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat115) * u_xlat1) + u_xlat5.xyw);
  let x_5947 = (u_xlat38 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_5947.xy, u_xlat5.z, x_5947.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_5969 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_5969.xy, u_xlat5.z, x_5969.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat115 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat115 = max(u_xlat115, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat115 * u_xlat115);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat115 = ((u_xlat115 * u_xlat115) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat115) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat38.x = dot(u_xlat5.xyw, u_xlat38);
  u_xlat38.x = clamp(u_xlat38.x, 0.0f, 1.0f);
  u_xlat38.x = (-(u_xlat38.x) + 1.0f);
  u_xlat76 = (u_xlat38.x * u_xlat38.x);
  u_xlat76 = (u_xlat76 * u_xlat76);
  u_xlat38.x = (u_xlat76 * u_xlat38.x);
  u_xlat38.x = ((u_xlat80 * u_xlat38.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat38.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat48);
  let x_6088 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_6088.x, x_6088.y, x_6088.z));
  u_xlat114 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat114 = (u_xlat114 * 4.0f);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat114)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat77 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat77 = (-(u_xlat77) + u_xlat1.xy);
  let x_6131 = u_xlat77;
  let x_6133 = x_81.x_GlobalMipBias.x;
  let x_6134 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6131, x_6133);
  u_xlat114 = x_6134.x;
  u_xlat77 = (u_xlat42.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat77) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_6159 = u_xlat1;
  let x_6162 = x_81.x_GlobalMipBias.x;
  let x_6163 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6159.xy, x_6162);
  u_xlat1.x = x_6163.x;
  u_xlat1.x = (u_xlat83.x * u_xlat1.x);
  u_xlat114 = ((u_xlat114 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat39.x = (-(u_xlat84.x) + 1.0f);
  u_xlat1.x = (u_xlat39.x * u_xlat1.x);
  u_xlat39 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_6213 = u_xlat39;
  let x_6215 = x_81.x_GlobalMipBias.x;
  let x_6216 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6213, x_6215);
  u_xlat39.x = x_6216.y;
  u_xlat77.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat77.x = (u_xlat77.x * u_xlat77.x);
  u_xlat77.x = (u_xlat77.x * -1.44269502162933349609f);
  u_xlat77.x = exp2(u_xlat77.x);
  u_xlat77.x = ((u_xlat84.x * 0.34999999403953552246f) + u_xlat77.x);
  u_xlat39.x = (u_xlat77.x * u_xlat39.x);
  u_xlat39.x = (u_xlat81 * u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * 0.89999997615814208984f);
  u_xlat114 = ((u_xlat114 * u_xlat1.x) + u_xlat39.x);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat48 * vec3f(0.69999998807907104492f)) + u_xlat25.xyz);
  u_xlat114 = (u_xlat114 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  u_xlat0 = ((vec3f(u_xlat114) * u_xlat1) + u_xlat0);
  SV_Target0.w = (u_xlat117 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat114 = exp2(-(vs_TEXCOORD1));
  u_xlat114 = min(u_xlat114, 1.0f);
  u_xlat0 = (u_xlat0 + -(x_81.unity_FogColor.xyz));
  SV_Target0 = vec4f((((vec3f(u_xlat114) * u_xlat0) + x_81.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
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
  vs_TEXCOORD1 = (u_xlat0.x * x_74.unity_FogParams.x);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  unity_FogColor : vec4f,
  /* @offset(240) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(304) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(368) */
  x_ScreenSize : vec4f,
  /* @offset(384) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(416) */
  x_B612SunDirection : vec4f,
  /* @offset(432) */
  x_B612WaterShallow : vec4f,
  /* @offset(448) */
  x_B612WaterDeep : vec4f,
  /* @offset(464) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2590 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2710 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_3681 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_3858 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_4093 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : f32;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_744 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2739 = vec3f(-1.0f);

const x_2746 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat28 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat59 : vec2f;
  var u_xlat85 : f32;
  var u_xlat4 : vec4f;
  var u_xlat60 : f32;
  var u_xlat88 : f32;
  var u_xlatb32 : bool;
  var x_281 : vec2f;
  var u_xlat32 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat33 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat62 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat63 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat64 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat65 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb93 : bool;
  var u_xlat11 : vec3f;
  var u_xlat38 : vec3f;
  var u_xlat66 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat39 : vec3f;
  var u_xlat92 : f32;
  var u_xlat94 : f32;
  var u_xlat67 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat69 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat96 : f32;
  var u_xlat68 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat99 : f32;
  var u_xlat98 : f32;
  var u_xlat43 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat45 : vec2f;
  var u_xlat46 : vec3f;
  var u_xlat72 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat101 : f32;
  var u_xlat102 : f32;
  var u_xlatb48 : vec2<bool>;
  var u_xlat49 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat37 : vec2f;
  var u_xlat75 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat50 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat79 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat61 : f32;
  var u_xlat104 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat31 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat35 : vec3f;
  var u_xlat87 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb85 : bool;
  var x_2476 : vec3f;
  var txVec0 : vec3f;
  var u_xlat30 : f32;
  var u_xlatb60 : bool;
  var u_xlatb33 : bool;
  var u_xlat25 : vec3f;
  var u_xlat26 : vec3f;
  var u_xlat27 : vec3f;
  var u_xlat34 : vec3f;
  var u_xlat89 : f32;
  var u_xlat90 : f32;
  var u_xlat91 : f32;
  var x_3166 : f32;
  var x_3209 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu62 : vec2u;
  var u_xlati6 : i32;
  var u_xlat29 : vec2f;
  var u_xlat0 : vec3f;
  var x_3599 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati29 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati34 : vec2i;
  var u_xlati35 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb34 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati67 : i32;
  var u_xlatu95 : u32;
  var u_xlat57 : vec2f;
  var u_xlatu35 : u32;
  var u_xlati91 : i32;
  var u_xlatu92 : u32;
  var u_xlatb37 : bool;
  var u_xlatu96 : u32;
  var u_xlatb96 : bool;
  var u_xlatu37 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati70 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati96 : i32;
  var u_xlati41 : i32;
  var u_xlati37 : i32;
  var u_xlatb35 : bool;
  var x_4159 : f32;
  var x_4175 : f32;
  var x_4191 : f32;
  var u_xlat41 : vec3f;
  var x_4250 : vec3f;
  var u_xlat97 : f32;
  var u_xlatb42 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_4306 : f32;
  var x_4319 : f32;
  var u_xlatu69 : vec2u;
  var u_xlati69 : i32;
  var u_xlat56 : f32;
  var u_xlat84 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat28 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat28, u_xlat28);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat28 = (u_xlat28 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat28;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat28 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat59 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat85 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat85, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat60 = max(u_xlat60, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat60))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat59.yx + u_xlat59.yx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat59, u_xlat59);
  u_xlat88 = max(u_xlat60, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat88))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb32 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb32) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat32 = vec3f(x_314.x, u_xlat32.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat33 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat62 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat62) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat63 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat62.x * 4.0f);
  u_xlat8 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat32 = vec3f(x_405.x, u_xlat32.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat64 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat64 = (u_xlat64 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat64;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat64 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat65 = (u_xlat32.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat65 = (u_xlat65 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat65));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat63.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat64 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat64 = max(vec2f(u_xlat85), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat64.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat64.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat65.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat65.x = sin(u_xlat65.x);
  u_xlat65.x = (u_xlat65.x * 43758.546875f);
  u_xlat65.x = fract(u_xlat65.x);
  u_xlat65.x = ((u_xlat65.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat65.x = (u_xlat65.x / u_xlat9.y);
  u_xlat65.x = (-(u_xlat65.x) + x_81.x_Time.y);
  u_xlatb93 = (u_xlat65.x >= 0.0f);
  u_xlat10.x = (u_xlat85 + -(x_142.x_BoilRadius));
  let x_745 = (u_xlat65.xx * x_744);
  u_xlat11 = vec3f(x_745.x, u_xlat11.y, x_745.y);
  u_xlat38.x = ((u_xlat65.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat66 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat10.x);
  u_xlat66 = (u_xlat66 / u_xlat38.x);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat66 = (u_xlat66 * -1.44269502162933349609f);
  u_xlat66 = exp2(u_xlat66);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat39 = vec3f(x_804.x, u_xlat39.y, x_804.y);
  u_xlat92 = (u_xlat64.y * 6.66666650772094726562f);
  u_xlat92 = inverseSqrt(u_xlat92);
  let x_818 = (vec2f(u_xlat92) * u_xlat39.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat94 = exp2(u_xlat11.z);
  u_xlat67 = (u_xlat94 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat67 = (u_xlat11.x * u_xlat67);
  u_xlat66 = (u_xlat66 * u_xlat67);
  u_xlat67 = (u_xlat64.x * u_xlat65.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat67));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat66 = (u_xlat66 * u_xlat12.x);
  u_xlat66 = select(0.0f, u_xlat66, u_xlatb93);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_744);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat69 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat42 = vec3f(x_931.x, u_xlat42.y, x_931.y);
  let x_937 = (u_xlat42.xz / u_xlat69);
  u_xlat42 = vec3f(x_937.x, u_xlat42.y, x_937.y);
  let x_944 = (u_xlat42.xz * u_xlat42.xz);
  u_xlat42 = vec3f(x_944.x, u_xlat42.y, x_944.y);
  let x_950 = (u_xlat42.xz * x_949);
  u_xlat42 = vec3f(x_950.x, u_xlat42.y, x_950.y);
  let x_955 = exp2(u_xlat42.xz);
  u_xlat42 = vec3f(x_955.x, u_xlat42.y, x_955.y);
  u_xlat96 = exp2(u_xlat14.z);
  u_xlat68 = (u_xlat96 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat68 = (u_xlat68 * u_xlat14.x);
  u_xlat68 = (u_xlat68 * u_xlat42.x);
  u_xlat42 = vec3f(((u_xlat64.xx * u_xlat12.xy)).xy, u_xlat42.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat42.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat68 = ((u_xlat68 * u_xlat15.x) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat68, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat92) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_744);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat68 = exp2(u_xlat17.z);
  u_xlat99 = (u_xlat68 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat99 = (u_xlat99 * u_xlat17.x);
  u_xlat98 = (u_xlat42.z * u_xlat99);
  u_xlat98 = ((u_xlat98 * u_xlat15.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat98, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat43 = vec3f(x_1094.x, u_xlat43.y, x_1094.y);
  let x_1101 = (u_xlat43.xz / u_xlat9.yy);
  u_xlat43 = vec3f(x_1101.x, u_xlat43.y, x_1101.y);
  let x_1110 = (-(u_xlat43.xz) + x_81.x_Time.yy);
  u_xlat43 = vec3f(x_1110.x, u_xlat43.y, x_1110.y);
  u_xlatb16 = ((u_xlat43.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat43.xx * x_744);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat45 = ((u_xlat43.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat43.xz) + u_xlat10.xx);
  u_xlat46 = vec3f(x_1144.x, u_xlat46.y, x_1144.y);
  let x_1150 = (u_xlat46.xz / u_xlat45);
  u_xlat46 = vec3f(x_1150.x, u_xlat46.y, x_1150.y);
  let x_1157 = (u_xlat46.xz * u_xlat46.xz);
  u_xlat46 = vec3f(x_1157.x, u_xlat46.y, x_1157.y);
  let x_1162 = (u_xlat46.xz * x_949);
  u_xlat46 = vec3f(x_1162.x, u_xlat46.y, x_1162.y);
  let x_1167 = exp2(u_xlat46.xz);
  u_xlat46 = vec3f(x_1167.x, u_xlat46.y, x_1167.y);
  u_xlat98 = exp2(u_xlat18.z);
  u_xlat72.x = (u_xlat98 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat72.x = (u_xlat72.x * u_xlat18.x);
  u_xlat72.x = (u_xlat72.x * u_xlat46.x);
  u_xlat46 = vec3f(((u_xlat64.xx * u_xlat43.xz)).xy, u_xlat46.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat46.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat72.x = ((u_xlat72.x * u_xlat19.x) + u_xlat66);
  if (u_xlatb16.x) {
    x_1232 = u_xlat72.x;
  } else {
    x_1232 = u_xlat66;
  }
  u_xlat66 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat72 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat92) * u_xlat72);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat43.zz * x_744);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat101 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat101 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat102 = (u_xlat46.z * u_xlat19.x);
  u_xlat102 = ((u_xlat102 * u_xlat19.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat102, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb48 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_744);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat49 = vec3f(x_1350.x, u_xlat49.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat49.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat37.x = exp2(u_xlat21.z);
  u_xlat102 = (u_xlat37.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat102 = (u_xlat102 * u_xlat21.x);
  u_xlat102 = (u_xlat102 * u_xlat22.x);
  u_xlat75 = (u_xlat64.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat75));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat64.x = ((u_xlat102 * u_xlat22.x) + u_xlat66);
  if (u_xlatb48.x) {
    x_1450 = u_xlat64.x;
  } else {
    x_1450 = u_xlat66;
  }
  u_xlat64.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat92 = (u_xlat92 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_744);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat66 = exp2(u_xlat22.w);
  u_xlat92 = (u_xlat92 * u_xlat66);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat92 = (u_xlat92 * u_xlat22.x);
  u_xlat92 = (u_xlat92 * u_xlat22.y);
  u_xlat92 = ((u_xlat92 * u_xlat22.z) + u_xlat64.x);
  if (u_xlatb48.y) {
    x_1524 = u_xlat92;
  } else {
    x_1524 = u_xlat64.x;
  }
  u_xlat64.x = x_1524;
  u_xlat92 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat102 = (u_xlat85 / u_xlat92);
  u_xlat102 = (-(u_xlat102) + 1.0f);
  u_xlat102 = max(u_xlat102, 0.0f);
  u_xlat64.x = (u_xlat64.x * x_142.x_RingStrength);
  u_xlat64.x = (u_xlat102 * u_xlat64.x);
  u_xlat50 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat85))).xy, u_xlat23.zw);
  u_xlat79 = (x_376 / u_xlat50.xy);
  u_xlat23 = vec4f(((u_xlat79 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat102 = (u_xlat23.x * u_xlat24.x);
  u_xlat64.x = (u_xlat64.x * u_xlat102);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat64.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat64.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat61 = sin(u_xlat33.y);
  u_xlat61 = (u_xlat61 * 1.70000004768371582031f);
  u_xlat61 = ((u_xlat64.x * 6.28318548202514648438f) + u_xlat61);
  u_xlat61 = sin(u_xlat61);
  u_xlat61 = ((u_xlat61 * 0.25f) + 0.75f);
  u_xlat64.x = (u_xlat85 * -(u_xlat85));
  u_xlat102 = (u_xlat50.x * u_xlat50.x);
  u_xlat64.x = (u_xlat64.x / u_xlat102);
  u_xlat64.x = (u_xlat64.x * 1.44269502162933349609f);
  u_xlat64.x = exp2(u_xlat64.x);
  u_xlat104 = (u_xlat85 + u_xlat85);
  u_xlat102 = (u_xlat104 / u_xlat102);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat102));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat64.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat50 = vec3f(((u_xlat50.xx * u_xlat23.xw)).xy, u_xlat50.z);
  let x_1734 = ((u_xlat50.xy * vec2f(u_xlat61)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat64.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat33.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat33 = vec3f(x_1763.x, u_xlat33.y, x_1763.y);
  let x_1769 = u_xlat33;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_1786.x, u_xlat33.y, x_1786.y);
  u_xlat50 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat50.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat50.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat50.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat102 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat85 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat85);
  u_xlat102 = (1.0f / u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat102 = ((u_xlat85 * -2.0f) + 3.0f);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat64.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat33.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat85)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat85 = sqrt(u_xlat60);
  u_xlat50 = (vec3f(u_xlat85) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat50 = (u_xlat50 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat50 = clamp(u_xlat50, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat50 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat50 = (u_xlat50 * u_xlat50);
  u_xlat60 = (u_xlat50.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat50.xz) + x_376);
  u_xlat33 = vec3f(x_1932.x, u_xlat33.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat62.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat62.x = dot(u_xlat62.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat62.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat33.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat33.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat60 * u_xlat33.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat33 = vec3f(x_2080.x, u_xlat33.y, x_2080.y);
  u_xlat31 = dot(u_xlat59.yx, u_xlat33.xz);
  u_xlat31 = (abs(u_xlat31) * 4.0f);
  u_xlat31 = min(u_xlat31, 1.0f);
  u_xlat85 = max(u_xlat85, 0.00100000004749745131f);
  u_xlat59 = (-(u_xlat59) / vec2f(u_xlat85));
  let x_2105 = (u_xlat62.yy * u_xlat59.yx);
  u_xlat33 = vec3f(x_2105.x, u_xlat33.y, x_2105.y);
  let x_2115 = ((-(u_xlat33.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat33 = vec3f(x_2115.x, u_xlat33.y, x_2115.y);
  let x_2122 = (u_xlat33.xz * vec2f(2.38095235824584960938f));
  u_xlat33 = vec3f(x_2122.x, u_xlat33.y, x_2122.y);
  u_xlat59 = (u_xlat6.yy * u_xlat59);
  u_xlat59 = ((-(u_xlat59) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat59 = ((u_xlat59 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat33;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_2162.x, u_xlat33.y, x_2162.y);
  let x_2168 = u_xlat59;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat59 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat59 = (u_xlat63.yy * u_xlat59);
  u_xlat59 = ((u_xlat33.xz * u_xlat7.yy) + u_xlat59);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat59 = (u_xlat59 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat59);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat85 = ((u_xlat31 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat85)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat85 = dot(u_xlat3, u_xlat3);
  u_xlat85 = inverseSqrt(u_xlat85);
  u_xlat3 = (vec3f(u_xlat85) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat85 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat85) + 1.0f);
  u_xlat85 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat85 = (1.0f / u_xlat85);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat33 = vec3f(x_2286.x, u_xlat33.y, x_2286.y);
  let x_2294 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2294.x, u_xlat33.y, x_2294.y);
  let x_2302 = (u_xlat33.xz * x_81.x_ScreenSize.xy);
  u_xlat33 = vec3f(x_2302.x, u_xlat33.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat33.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat33 = vec3f(x_2331.x, u_xlat33.y, x_2331.y);
  let x_2341 = (-(u_xlat33.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat35 = vec3f(x_2341.x, u_xlat35.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat33.xx) + u_xlat35.xz);
  u_xlat33 = vec3f(x_2352.x, u_xlat33.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat33.xz);
  u_xlat33 = vec3f(x_2363.x, u_xlat33.y, x_2363.y);
  let x_2372 = (u_xlat33.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat33 = vec3f(x_2372.x, u_xlat33.y, x_2372.y);
  u_xlat87 = (u_xlat33.x / u_xlat33.z);
  u_xlat87 = (-(u_xlat87) + vs_TEXCOORD0.y);
  u_xlat87 = max(u_xlat87, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat33 = vec3f(x_2399.x, u_xlat33.y, x_2399.y);
  u_xlat60 = (u_xlat87 * 4.0f);
  u_xlat60 = min(u_xlat60, 1.0f);
  u_xlat24 = vec4f((((u_xlat33.xz * vec2f(u_xlat60)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb85 = (u_xlat2.x < u_xlat85);
  if (u_xlatb85) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat50 = x_2476;
  u_xlat2 = vec4f((((u_xlat50.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat50.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat85 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat85 = min(u_xlat85, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat33 = vec3f(x_2555.x, u_xlat33.y, x_2555.y);
  let x_2562 = min(u_xlat33.xz, u_xlat50.xy);
  u_xlat33 = vec3f(x_2562.x, u_xlat33.y, x_2562.y);
  let x_2570 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2570.x, u_xlat33.y, x_2570.y);
  let x_2578 = u_xlat33;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat50 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat24.w);
  let x_2629 = u_xlat24.xy;
  txVec0 = vec3f(x_2629.x, x_2629.y, u_xlat24.z);
  u_xlat30 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat60 = (-(x_2590.x_MainLightShadowParams.x) + 1.0f);
  u_xlat30 = ((u_xlat30 * x_2590.x_MainLightShadowParams.x) + u_xlat60);
  u_xlatb60 = (0.0f >= u_xlat24.z);
  u_xlatb33 = (u_xlat24.z >= 1.0f);
  u_xlatb60 = (u_xlatb60 | u_xlatb33);
  u_xlat30 = select(u_xlat30, 1.0f, u_xlatb60);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat60 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat60 = ((u_xlat60 * x_2590.x_MainLightShadowParams.z) + x_2590.x_MainLightShadowParams.w);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat33.x = (-(u_xlat30) + 1.0f);
  u_xlat30 = ((u_xlat60 * u_xlat33.x) + u_xlat30);
  u_xlat25.x = dot(x_2710.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_2710.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_2710.unity_SHAb.yw, x_376);
  u_xlat25 = (u_xlat25 + -(x_2710.unity_SHC.xyz));
  u_xlat26 = (x_81.x_B612WaterShallow.xyz + x_2739);
  u_xlat26 = ((x_81.x_B612SunDirection.www * u_xlat26) + x_2746);
  u_xlat26 = (u_xlat26 * x_142.x_ScatterColor.xyz);
  u_xlat27 = (x_81.x_B612WaterDeep.xyz + x_2739);
  u_xlat27 = ((x_81.x_B612SunDirection.www * u_xlat27) + x_2746);
  let x_2771 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_2775 = (u_xlat23.xw / vec2f(x_2771.x, x_2771.y));
  u_xlat33 = vec3f(x_2775.x, u_xlat33.y, x_2775.y);
  let x_2788 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat33.xz);
  u_xlat34 = vec3f(x_2788.x, u_xlat34.y, x_2788.y);
  let x_2796 = u_xlat34;
  let x_2799 = x_81.x_GlobalMipBias.x;
  let x_2800 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2796.xz, x_2799);
  u_xlat60 = x_2800.x;
  let x_2808 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat34 = vec3f(x_2808.x, u_xlat34.y, x_2808.y);
  let x_2818 = ((u_xlat33.xz * vec2f(1.12999999523162841797f)) + u_xlat34.xz);
  u_xlat33 = vec3f(x_2818.x, u_xlat33.y, x_2818.y);
  let x_2824 = u_xlat33;
  let x_2827 = x_81.x_GlobalMipBias.x;
  let x_2828 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2824.xz, x_2827);
  u_xlat33.x = x_2828.x;
  let x_2837 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat34 = vec3f(x_2837.x, u_xlat34.y, x_2837.y);
  u_xlat89 = dot(u_xlat34.xz, u_xlat34.xz);
  u_xlat89 = sqrt(u_xlat89);
  u_xlat34.x = (u_xlat89 + -(x_142.x_BoilRadius));
  u_xlat90 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat34.x);
  u_xlat90 = (u_xlat90 / u_xlat38.x);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat90 = (u_xlat90 * -1.44269502162933349609f);
  u_xlat90 = exp2(u_xlat90);
  u_xlat35.x = max(u_xlat89, 0.15000000596046447754f);
  u_xlat35.x = (u_xlat35.x * 6.66666650772094726562f);
  u_xlat35.x = inverseSqrt(u_xlat35.x);
  let x_2890 = (u_xlat35.xx * u_xlat39.xz);
  u_xlat39 = vec3f(x_2890.x, u_xlat39.y, x_2890.y);
  u_xlat91 = (u_xlat94 * u_xlat39.x);
  u_xlat91 = (u_xlat11.x * u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat91 = ((u_xlat5.x * u_xlat34.x) + -(u_xlat67));
  u_xlat91 = cos(u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat90 = select(0.0f, u_xlat90, u_xlatb93);
  let x_2925 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_2925.x, x_2925.y)) * u_xlat12.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat69);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat96 * u_xlat39.z);
  u_xlat91 = (u_xlat14.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_2966 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat42.xy));
  u_xlat38 = vec3f(x_2966.x, u_xlat38.y, x_2966.y);
  let x_2971 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_2971.x, u_xlat38.y, x_2971.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat68 * u_xlat11.x);
  u_xlat91 = (u_xlat17.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.y);
  let x_3019 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3019.x, x_3019.y)) * u_xlat43.xz) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat45);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat98 * u_xlat11.y);
  u_xlat91 = (u_xlat18.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_3060 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat46.xy));
  u_xlat38 = vec3f(x_3060.x, u_xlat38.y, x_3060.y);
  let x_3065 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_3065.x, u_xlat38.y, x_3065.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat72)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat101 * u_xlat11.x);
  u_xlat91 = (u_xlat20.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.y);
  let x_3112 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3112.x, x_3112.y)) * u_xlat19.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat49.xz);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat37.x * u_xlat11.y);
  u_xlat91 = (u_xlat21.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  u_xlat37 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat75));
  u_xlat37 = cos(u_xlat37);
  u_xlat5.x = ((u_xlat91 * u_xlat37.x) + u_xlat90);
  if (u_xlatb48.x) {
    x_3166 = u_xlat5.x;
  } else {
    x_3166 = u_xlat90;
  }
  u_xlat5.x = x_3166;
  u_xlat34.x = (u_xlat35.x * u_xlat9.x);
  u_xlat34.x = (u_xlat66 * u_xlat34.x);
  u_xlat34.x = (u_xlat22.x * u_xlat34.x);
  u_xlat34.x = (u_xlat34.x * u_xlat65.y);
  u_xlat34.x = ((u_xlat34.x * u_xlat37.y) + u_xlat5.x);
  if (u_xlatb48.y) {
    x_3209 = u_xlat34.x;
  } else {
    x_3209 = u_xlat5.x;
  }
  u_xlat5.x = x_3209;
  u_xlat34.x = (u_xlat89 / u_xlat92);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat34.x = max(u_xlat34.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat34.x * u_xlat5.x);
  u_xlat89 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat89);
  u_xlat89 = (u_xlat79.x * u_xlat89);
  u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
  u_xlat34.x = ((u_xlat89 * -2.0f) + 3.0f);
  u_xlat89 = (u_xlat89 * u_xlat89);
  u_xlat89 = (u_xlat89 * u_xlat34.x);
  u_xlat5.x = (u_xlat89 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat60 = min(u_xlat60, u_xlat33.x);
  u_xlat60 = (u_xlat60 * 2.5f);
  u_xlat60 = (u_xlat60 * x_142.x_CausticsStrength);
  let x_3295 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat33 = vec3f(x_3295.x, u_xlat33.y, x_3295.y);
  u_xlat2.x = min(u_xlat33.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat60 = exp2(u_xlat33.z);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_3326 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_3326.xy, u_xlat5.z, x_3326.z);
  let x_3333 = (vec3f(u_xlat30) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_3333.xy, u_xlat5.z, x_3333.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_3349 = ((u_xlat5.xyw * u_xlat2.xxx) + x_2746);
  u_xlat5 = vec4f(x_3349.xy, u_xlat5.z, x_3349.z);
  let x_3355 = (u_xlat5.xyw * u_xlat50);
  u_xlat5 = vec4f(x_3355.xy, u_xlat5.z, x_3355.z);
  u_xlat9 = vec4f(((vec3f(u_xlat85) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat85 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat38 = (vec3f(u_xlat30) * x_81.x_MainLightColor.xyz);
  u_xlat30 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat30 = clamp(u_xlat30, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat30) * u_xlat38);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25);
  u_xlat85 = (u_xlat85 * 0.69999998807907104492f);
  u_xlat85 = min(u_xlat85, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27) + -(u_xlat26))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat85) * u_xlat12.xyz) + u_xlat26)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_3457 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_3457.xy, u_xlat5.z, x_3457.z);
  u_xlat85 = dot(u_xlat3, u_xlat28);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat30 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat60 = (-(x_142.x_F0) + 1.0f);
  u_xlat34.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat60);
  u_xlat85 = (-(u_xlat85) + 1.0f);
  u_xlat90 = (u_xlat85 * u_xlat85);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat85 = (u_xlat85 * u_xlat90);
  u_xlat85 = ((u_xlat34.x * u_xlat85) + u_xlat30);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat30 = dot(-(u_xlat28), u_xlat3);
  u_xlat30 = (u_xlat30 + u_xlat30);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat30))) + -(u_xlat28))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat30 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat30 = (u_xlat30 * x_142.x_Roughness);
  u_xlat30 = (u_xlat30 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu62 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu62.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu62.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat29.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_3599 = u_xlat29.x;
  } else {
    x_3599 = u_xlat1.x;
  }
  u_xlat0.x = x_3599;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu62.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_3661 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_3668 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_3669 = vec2i(x_3661, x_3668);
  u_xlati1 = vec3i(x_3669.x, u_xlati1.y, x_3669.y);
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_3693 = ~(u_xlati1.xz);
  u_xlati35 = vec3i(x_3693.x, u_xlati35.y, x_3693.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati34) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati34.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati35.z) & bitcast<u32>(u_xlati34.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb34 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati67 = 0i;
  u_xlatu95 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat57.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu35 = (u_xlatu95 >> 16u);
    u_xlati91 = u_xlati67;
    u_xlatu92 = u_xlatu95;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb37 = (u_xlati91 == 0i);
      u_xlatu96 = (u_xlatu92 & 65535u);
      u_xlatb96 = (u_xlatu35 >= u_xlatu96);
      u_xlatb37 = (u_xlatb37 & u_xlatb96);
      if (!(u_xlatb37)) {
        break;
      }
      param_6 = u_xlatu92;
      param_7 = 5i;
      param_8 = 11i;
      let x_3807 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu37 = x_3807;
      u_xlatu13 = (vec4u(u_xlatu37) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3828 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3835 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3842 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3849 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_3828, x_3835, x_3842, x_3849);
      u_xlati70 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_3858.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_3858.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_3890 = bitcast<vec2i>((bitcast<vec2u>(u_xlati70) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_3890.x, u_xlati14.y, x_3890.y);
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati41) | bitcast<u32>(u_xlati13.x)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu92) & 31i)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati37 = (bitcast<i32>(u_xlatu37) << bitcast<u32>(5i));
      u_xlatu37 = (u_xlatu35 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati37)))));
      u_xlatu37 = min(u_xlatu37, 31u);
      u_xlatu37 = (bitcast<u32>(-(bitcast<i32>(u_xlatu37))) + 31u);
      u_xlatu37 = (4294967295u >> (u_xlatu37 & 31u));
      u_xlati91 = bitcast<i32>((u_xlatu37 & bitcast<u32>(u_xlati96)));
      u_xlati37 = (bitcast<i32>(u_xlatu92) + 32i);
      u_xlatu92 = (bitcast<u32>(u_xlati37) & 4294967264u);
    }
    u_xlatu95 = u_xlatu92;
    u_xlatb35 = (u_xlati91 != 0i);
    u_xlatb37 = (u_xlat57.x < 0.99000000953674316406f);
    u_xlatb35 = (u_xlatb35 & u_xlatb37);
    if (!(u_xlatb35)) {
      break;
    }
    u_xlati35.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati91)));
    u_xlati37 = (1i << bitcast<u32>((u_xlati35.x & 31i)));
    u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati91) ^ bitcast<u32>(u_xlati37)));
    u_xlati37 = (bitcast<i32>(u_xlatu95) + -32i);
    u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati37) & 65504u));
    u_xlati35.x = (u_xlati35.x + u_xlati37);
    u_xlati35.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati35.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].www)).xyz, u_xlat13.w);
    u_xlat37.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat37.x = min(u_xlat37.x, u_xlat13.x);
    u_xlat37.x = clamp(u_xlat37.x, 0.0f, 1.0f);
    u_xlat96 = (-(u_xlat57.x) + 1.0f);
    u_xlat37.x = min(u_xlat37.x, u_xlat96);
    u_xlatb96 = (0.0f < x_4093.urp_ReflProbes_ProbePosition[u_xlati35.x].w);
    if (u_xlatb34.x) {
      x_4159 = x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].x;
    } else {
      x_4159 = x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].x;
    }
    u_xlat13.x = x_4159;
    if (u_xlatb34.y) {
      x_4175 = x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].y;
    } else {
      x_4175 = x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].y;
    }
    u_xlat13.y = x_4175;
    if (u_xlatb34.z) {
      x_4191 = x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].z;
    } else {
      x_4191 = x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].z;
    }
    u_xlat13.z = x_4191;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat41 = (vs_TEXCOORD0 + -(x_4093.urp_ReflProbes_ProbePosition[u_xlati35.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat41)).xyz, u_xlat13.w);
    if (u_xlatb96) {
      x_4250 = u_xlat13.xyz;
    } else {
      x_4250 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_4250.xyz, u_xlat13.w);
    u_xlatu96 = u32(abs(x_4093.urp_ReflProbes_ProbePosition[u_xlati35.x].w));
    u_xlatu96 = (u_xlatu96 + 4294967295u);
    u_xlat96 = f32(u_xlatu96);
    u_xlat96 = min(u_xlat30, u_xlat96);
    u_xlat97 = dot(abs(u_xlat13.xyz), x_2746);
    u_xlat97 = max(u_xlat97, 0.00000099999999747524f);
    u_xlat97 = (1.0f / u_xlat97);
    u_xlat14 = (vec3f(u_xlat97) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb42 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb42.x) {
      x_4306 = u_xlat14.x;
    } else {
      x_4306 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_4306;
    if (u_xlatb42.y) {
      x_4319 = u_xlat14.x;
    } else {
      x_4319 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_4319;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat97)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat69.x = floor(u_xlat96);
    u_xlat69.y = (u_xlat69.x + 1.0f);
    u_xlat96 = (u_xlat96 + -(u_xlat69.x));
    u_xlatu69 = vec2u(u_xlat69);
    u_xlati69 = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.x));
    u_xlati35.x = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.y));
    u_xlat69 = ((u_xlat13.xy * x_4093.urp_ReflProbes_MipScaleOffset[u_xlati69].xy) + x_4093.urp_ReflProbes_MipScaleOffset[u_xlati69].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat69, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_4093.urp_ReflProbes_MipScaleOffset[u_xlati35.x].xy) + x_4093.urp_ReflProbes_MipScaleOffset[u_xlati35.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat96) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat37.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat57.x = (u_xlat57.x + u_xlat37.x);
  }
  u_xlatb0 = (u_xlat57.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat30);
    u_xlat0.x = (-(u_xlat57.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat85) * u_xlat1) + u_xlat5.xyw);
  let x_4561 = (u_xlat28 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_4561.xy, u_xlat5.z, x_4561.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_4583 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4583.xy, u_xlat5.z, x_4583.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat85 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat85 = max(u_xlat85, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat85 * u_xlat85);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat85 = ((u_xlat85 * u_xlat85) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat85) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat28.x = dot(u_xlat5.xyw, u_xlat28);
  u_xlat28.x = clamp(u_xlat28.x, 0.0f, 1.0f);
  u_xlat28.x = (-(u_xlat28.x) + 1.0f);
  u_xlat56 = (u_xlat28.x * u_xlat28.x);
  u_xlat56 = (u_xlat56 * u_xlat56);
  u_xlat28.x = (u_xlat56 * u_xlat28.x);
  u_xlat28.x = ((u_xlat60 * u_xlat28.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat28.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat38);
  let x_4702 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_4702.x, x_4702.y, x_4702.z));
  u_xlat84 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat84 = (u_xlat84 * 4.0f);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat84)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat57 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat57 = (-(u_xlat57) + u_xlat1.xy);
  let x_4745 = u_xlat57;
  let x_4747 = x_81.x_GlobalMipBias.x;
  let x_4748 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4745, x_4747);
  u_xlat84 = x_4748.x;
  u_xlat57 = (u_xlat32.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat57) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_4773 = u_xlat1;
  let x_4776 = x_81.x_GlobalMipBias.x;
  let x_4777 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4773.xy, x_4776);
  u_xlat1.x = x_4777.x;
  u_xlat1.x = (u_xlat63.x * u_xlat1.x);
  u_xlat84 = ((u_xlat84 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat29.x = (-(u_xlat64.x) + 1.0f);
  u_xlat1.x = (u_xlat29.x * u_xlat1.x);
  u_xlat29 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_4827 = u_xlat29;
  let x_4829 = x_81.x_GlobalMipBias.x;
  let x_4830 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4827, x_4829);
  u_xlat29.x = x_4830.y;
  u_xlat57.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat57.x = (u_xlat57.x * u_xlat57.x);
  u_xlat57.x = (u_xlat57.x * -1.44269502162933349609f);
  u_xlat57.x = exp2(u_xlat57.x);
  u_xlat57.x = ((u_xlat64.x * 0.34999999403953552246f) + u_xlat57.x);
  u_xlat29.x = (u_xlat57.x * u_xlat29.x);
  u_xlat29.x = (u_xlat61 * u_xlat29.x);
  u_xlat29.x = (u_xlat29.x * 0.89999997615814208984f);
  u_xlat84 = ((u_xlat84 * u_xlat1.x) + u_xlat29.x);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat38 * vec3f(0.69999998807907104492f)) + u_xlat25);
  u_xlat84 = (u_xlat84 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  u_xlat0 = ((vec3f(u_xlat84) * u_xlat1) + u_xlat0);
  SV_Target0.w = (u_xlat87 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat84 = exp2(-(vs_TEXCOORD1));
  u_xlat84 = min(u_xlat84, 1.0f);
  u_xlat0 = (u_xlat0 + -(x_81.unity_FogColor.xyz));
  SV_Target0 = vec4f((((vec3f(u_xlat84) * u_xlat0) + x_81.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
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
  vs_TEXCOORD1 = (u_xlat0.x * x_74.unity_FogParams.x);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  unity_FogColor : vec4f,
  /* @offset(240) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(304) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(368) */
  x_ScreenSize : vec4f,
  /* @offset(384) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(416) */
  x_B612SunDirection : vec4f,
  /* @offset(432) */
  x_B612WaterShallow : vec4f,
  /* @offset(448) */
  x_B612WaterDeep : vec4f,
  /* @offset(464) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2589 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2828 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_3801 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_3978 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_4213 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : f32;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_744 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2859 = vec3f(-1.0f);

const x_2866 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat28 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat59 : vec2f;
  var u_xlat85 : f32;
  var u_xlat4 : vec4f;
  var u_xlat60 : f32;
  var u_xlat88 : f32;
  var u_xlatb32 : bool;
  var x_281 : vec2f;
  var u_xlat32 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat33 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat62 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat63 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat64 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat65 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb93 : bool;
  var u_xlat11 : vec3f;
  var u_xlat38 : vec3f;
  var u_xlat66 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat39 : vec3f;
  var u_xlat92 : f32;
  var u_xlat94 : f32;
  var u_xlat67 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat69 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat96 : f32;
  var u_xlat68 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat99 : f32;
  var u_xlat98 : f32;
  var u_xlat43 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat45 : vec2f;
  var u_xlat46 : vec3f;
  var u_xlat72 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat101 : f32;
  var u_xlat102 : f32;
  var u_xlatb48 : vec2<bool>;
  var u_xlat49 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat37 : vec2f;
  var u_xlat75 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat50 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat79 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat61 : f32;
  var u_xlat104 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat31 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat35 : vec3f;
  var u_xlat87 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb85 : bool;
  var x_2476 : vec3f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec3f;
  var u_xlat27 : vec3f;
  var u_xlatb24 : vec4<bool>;
  var u_xlat30 : f32;
  var u_xlatu30 : u32;
  var u_xlati30 : i32;
  var txVec0 : vec3f;
  var u_xlatb60 : bool;
  var u_xlatb33 : bool;
  var u_xlat34 : vec3f;
  var u_xlat89 : f32;
  var u_xlat90 : f32;
  var u_xlat91 : f32;
  var x_3285 : f32;
  var x_3328 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu62 : vec2u;
  var u_xlati6 : i32;
  var u_xlat29 : vec2f;
  var u_xlat0 : vec3f;
  var x_3719 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati29 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati34 : vec2i;
  var u_xlati35 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb34 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati67 : i32;
  var u_xlatu95 : u32;
  var u_xlat57 : vec2f;
  var u_xlatu35 : u32;
  var u_xlati91 : i32;
  var u_xlatu92 : u32;
  var u_xlatb37 : bool;
  var u_xlatu96 : u32;
  var u_xlatb96 : bool;
  var u_xlatu37 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati70 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati96 : i32;
  var u_xlati41 : i32;
  var u_xlati37 : i32;
  var u_xlatb35 : bool;
  var x_4279 : f32;
  var x_4295 : f32;
  var x_4311 : f32;
  var u_xlat41 : vec3f;
  var x_4370 : vec3f;
  var u_xlat97 : f32;
  var u_xlatb42 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_4426 : f32;
  var x_4439 : f32;
  var u_xlatu69 : vec2u;
  var u_xlati69 : i32;
  var u_xlat56 : f32;
  var u_xlat84 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat28 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat28, u_xlat28);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat28 = (u_xlat28 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat28;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat28 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat59 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat85 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat85, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat60 = max(u_xlat60, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat60))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat59.yx + u_xlat59.yx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat59, u_xlat59);
  u_xlat88 = max(u_xlat60, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat88))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb32 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb32) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat32 = vec3f(x_314.x, u_xlat32.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat33 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat62 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat62) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat63 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat62.x * 4.0f);
  u_xlat8 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat32 = vec3f(x_405.x, u_xlat32.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat64 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat64 = (u_xlat64 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat64;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat64 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat65 = (u_xlat32.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat65 = (u_xlat65 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat65));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat63.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat64 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat64 = max(vec2f(u_xlat85), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat64.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat64.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat65.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat65.x = sin(u_xlat65.x);
  u_xlat65.x = (u_xlat65.x * 43758.546875f);
  u_xlat65.x = fract(u_xlat65.x);
  u_xlat65.x = ((u_xlat65.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat65.x = (u_xlat65.x / u_xlat9.y);
  u_xlat65.x = (-(u_xlat65.x) + x_81.x_Time.y);
  u_xlatb93 = (u_xlat65.x >= 0.0f);
  u_xlat10.x = (u_xlat85 + -(x_142.x_BoilRadius));
  let x_745 = (u_xlat65.xx * x_744);
  u_xlat11 = vec3f(x_745.x, u_xlat11.y, x_745.y);
  u_xlat38.x = ((u_xlat65.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat66 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat10.x);
  u_xlat66 = (u_xlat66 / u_xlat38.x);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat66 = (u_xlat66 * -1.44269502162933349609f);
  u_xlat66 = exp2(u_xlat66);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat39 = vec3f(x_804.x, u_xlat39.y, x_804.y);
  u_xlat92 = (u_xlat64.y * 6.66666650772094726562f);
  u_xlat92 = inverseSqrt(u_xlat92);
  let x_818 = (vec2f(u_xlat92) * u_xlat39.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat94 = exp2(u_xlat11.z);
  u_xlat67 = (u_xlat94 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat67 = (u_xlat11.x * u_xlat67);
  u_xlat66 = (u_xlat66 * u_xlat67);
  u_xlat67 = (u_xlat64.x * u_xlat65.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat67));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat66 = (u_xlat66 * u_xlat12.x);
  u_xlat66 = select(0.0f, u_xlat66, u_xlatb93);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_744);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat69 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat42 = vec3f(x_931.x, u_xlat42.y, x_931.y);
  let x_937 = (u_xlat42.xz / u_xlat69);
  u_xlat42 = vec3f(x_937.x, u_xlat42.y, x_937.y);
  let x_944 = (u_xlat42.xz * u_xlat42.xz);
  u_xlat42 = vec3f(x_944.x, u_xlat42.y, x_944.y);
  let x_950 = (u_xlat42.xz * x_949);
  u_xlat42 = vec3f(x_950.x, u_xlat42.y, x_950.y);
  let x_955 = exp2(u_xlat42.xz);
  u_xlat42 = vec3f(x_955.x, u_xlat42.y, x_955.y);
  u_xlat96 = exp2(u_xlat14.z);
  u_xlat68 = (u_xlat96 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat68 = (u_xlat68 * u_xlat14.x);
  u_xlat68 = (u_xlat68 * u_xlat42.x);
  u_xlat42 = vec3f(((u_xlat64.xx * u_xlat12.xy)).xy, u_xlat42.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat42.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat68 = ((u_xlat68 * u_xlat15.x) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat68, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat92) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_744);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat68 = exp2(u_xlat17.z);
  u_xlat99 = (u_xlat68 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat99 = (u_xlat99 * u_xlat17.x);
  u_xlat98 = (u_xlat42.z * u_xlat99);
  u_xlat98 = ((u_xlat98 * u_xlat15.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat98, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat43 = vec3f(x_1094.x, u_xlat43.y, x_1094.y);
  let x_1101 = (u_xlat43.xz / u_xlat9.yy);
  u_xlat43 = vec3f(x_1101.x, u_xlat43.y, x_1101.y);
  let x_1110 = (-(u_xlat43.xz) + x_81.x_Time.yy);
  u_xlat43 = vec3f(x_1110.x, u_xlat43.y, x_1110.y);
  u_xlatb16 = ((u_xlat43.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat43.xx * x_744);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat45 = ((u_xlat43.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat43.xz) + u_xlat10.xx);
  u_xlat46 = vec3f(x_1144.x, u_xlat46.y, x_1144.y);
  let x_1150 = (u_xlat46.xz / u_xlat45);
  u_xlat46 = vec3f(x_1150.x, u_xlat46.y, x_1150.y);
  let x_1157 = (u_xlat46.xz * u_xlat46.xz);
  u_xlat46 = vec3f(x_1157.x, u_xlat46.y, x_1157.y);
  let x_1162 = (u_xlat46.xz * x_949);
  u_xlat46 = vec3f(x_1162.x, u_xlat46.y, x_1162.y);
  let x_1167 = exp2(u_xlat46.xz);
  u_xlat46 = vec3f(x_1167.x, u_xlat46.y, x_1167.y);
  u_xlat98 = exp2(u_xlat18.z);
  u_xlat72.x = (u_xlat98 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat72.x = (u_xlat72.x * u_xlat18.x);
  u_xlat72.x = (u_xlat72.x * u_xlat46.x);
  u_xlat46 = vec3f(((u_xlat64.xx * u_xlat43.xz)).xy, u_xlat46.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat46.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat72.x = ((u_xlat72.x * u_xlat19.x) + u_xlat66);
  if (u_xlatb16.x) {
    x_1232 = u_xlat72.x;
  } else {
    x_1232 = u_xlat66;
  }
  u_xlat66 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat72 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat92) * u_xlat72);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat43.zz * x_744);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat101 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat101 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat102 = (u_xlat46.z * u_xlat19.x);
  u_xlat102 = ((u_xlat102 * u_xlat19.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat102, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb48 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_744);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat49 = vec3f(x_1350.x, u_xlat49.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat49.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat37.x = exp2(u_xlat21.z);
  u_xlat102 = (u_xlat37.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat102 = (u_xlat102 * u_xlat21.x);
  u_xlat102 = (u_xlat102 * u_xlat22.x);
  u_xlat75 = (u_xlat64.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat75));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat64.x = ((u_xlat102 * u_xlat22.x) + u_xlat66);
  if (u_xlatb48.x) {
    x_1450 = u_xlat64.x;
  } else {
    x_1450 = u_xlat66;
  }
  u_xlat64.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat92 = (u_xlat92 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_744);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat66 = exp2(u_xlat22.w);
  u_xlat92 = (u_xlat92 * u_xlat66);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat92 = (u_xlat92 * u_xlat22.x);
  u_xlat92 = (u_xlat92 * u_xlat22.y);
  u_xlat92 = ((u_xlat92 * u_xlat22.z) + u_xlat64.x);
  if (u_xlatb48.y) {
    x_1524 = u_xlat92;
  } else {
    x_1524 = u_xlat64.x;
  }
  u_xlat64.x = x_1524;
  u_xlat92 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat102 = (u_xlat85 / u_xlat92);
  u_xlat102 = (-(u_xlat102) + 1.0f);
  u_xlat102 = max(u_xlat102, 0.0f);
  u_xlat64.x = (u_xlat64.x * x_142.x_RingStrength);
  u_xlat64.x = (u_xlat102 * u_xlat64.x);
  u_xlat50 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat85))).xy, u_xlat23.zw);
  u_xlat79 = (x_376 / u_xlat50.xy);
  u_xlat23 = vec4f(((u_xlat79 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat102 = (u_xlat23.x * u_xlat24.x);
  u_xlat64.x = (u_xlat64.x * u_xlat102);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat64.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat64.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat61 = sin(u_xlat33.y);
  u_xlat61 = (u_xlat61 * 1.70000004768371582031f);
  u_xlat61 = ((u_xlat64.x * 6.28318548202514648438f) + u_xlat61);
  u_xlat61 = sin(u_xlat61);
  u_xlat61 = ((u_xlat61 * 0.25f) + 0.75f);
  u_xlat64.x = (u_xlat85 * -(u_xlat85));
  u_xlat102 = (u_xlat50.x * u_xlat50.x);
  u_xlat64.x = (u_xlat64.x / u_xlat102);
  u_xlat64.x = (u_xlat64.x * 1.44269502162933349609f);
  u_xlat64.x = exp2(u_xlat64.x);
  u_xlat104 = (u_xlat85 + u_xlat85);
  u_xlat102 = (u_xlat104 / u_xlat102);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat102));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat64.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat50 = vec3f(((u_xlat50.xx * u_xlat23.xw)).xy, u_xlat50.z);
  let x_1734 = ((u_xlat50.xy * vec2f(u_xlat61)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat64.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat33.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat33 = vec3f(x_1763.x, u_xlat33.y, x_1763.y);
  let x_1769 = u_xlat33;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_1786.x, u_xlat33.y, x_1786.y);
  u_xlat50 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat50.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat50.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat50.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat102 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat85 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat85);
  u_xlat102 = (1.0f / u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat102 = ((u_xlat85 * -2.0f) + 3.0f);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat64.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat33.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat85)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat85 = sqrt(u_xlat60);
  u_xlat50 = (vec3f(u_xlat85) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat50 = (u_xlat50 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat50 = clamp(u_xlat50, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat50 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat50 = (u_xlat50 * u_xlat50);
  u_xlat60 = (u_xlat50.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat50.xz) + x_376);
  u_xlat33 = vec3f(x_1932.x, u_xlat33.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat62.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat62.x = dot(u_xlat62.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat62.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat33.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat33.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat60 * u_xlat33.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat33 = vec3f(x_2080.x, u_xlat33.y, x_2080.y);
  u_xlat31 = dot(u_xlat59.yx, u_xlat33.xz);
  u_xlat31 = (abs(u_xlat31) * 4.0f);
  u_xlat31 = min(u_xlat31, 1.0f);
  u_xlat85 = max(u_xlat85, 0.00100000004749745131f);
  u_xlat59 = (-(u_xlat59) / vec2f(u_xlat85));
  let x_2105 = (u_xlat62.yy * u_xlat59.yx);
  u_xlat33 = vec3f(x_2105.x, u_xlat33.y, x_2105.y);
  let x_2115 = ((-(u_xlat33.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat33 = vec3f(x_2115.x, u_xlat33.y, x_2115.y);
  let x_2122 = (u_xlat33.xz * vec2f(2.38095235824584960938f));
  u_xlat33 = vec3f(x_2122.x, u_xlat33.y, x_2122.y);
  u_xlat59 = (u_xlat6.yy * u_xlat59);
  u_xlat59 = ((-(u_xlat59) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat59 = ((u_xlat59 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat33;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_2162.x, u_xlat33.y, x_2162.y);
  let x_2168 = u_xlat59;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat59 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat59 = (u_xlat63.yy * u_xlat59);
  u_xlat59 = ((u_xlat33.xz * u_xlat7.yy) + u_xlat59);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat59 = (u_xlat59 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat59);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat85 = ((u_xlat31 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat85)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat85 = dot(u_xlat3, u_xlat3);
  u_xlat85 = inverseSqrt(u_xlat85);
  u_xlat3 = (vec3f(u_xlat85) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat85 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat85) + 1.0f);
  u_xlat85 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat85 = (1.0f / u_xlat85);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat33 = vec3f(x_2286.x, u_xlat33.y, x_2286.y);
  let x_2294 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2294.x, u_xlat33.y, x_2294.y);
  let x_2302 = (u_xlat33.xz * x_81.x_ScreenSize.xy);
  u_xlat33 = vec3f(x_2302.x, u_xlat33.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat33.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat33 = vec3f(x_2331.x, u_xlat33.y, x_2331.y);
  let x_2341 = (-(u_xlat33.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat35 = vec3f(x_2341.x, u_xlat35.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat33.xx) + u_xlat35.xz);
  u_xlat33 = vec3f(x_2352.x, u_xlat33.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat33.xz);
  u_xlat33 = vec3f(x_2363.x, u_xlat33.y, x_2363.y);
  let x_2372 = (u_xlat33.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat33 = vec3f(x_2372.x, u_xlat33.y, x_2372.y);
  u_xlat87 = (u_xlat33.x / u_xlat33.z);
  u_xlat87 = (-(u_xlat87) + vs_TEXCOORD0.y);
  u_xlat87 = max(u_xlat87, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat33 = vec3f(x_2399.x, u_xlat33.y, x_2399.y);
  u_xlat60 = (u_xlat87 * 4.0f);
  u_xlat60 = min(u_xlat60, 1.0f);
  u_xlat24 = vec4f((((u_xlat33.xz * vec2f(u_xlat60)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb85 = (u_xlat2.x < u_xlat85);
  if (u_xlatb85) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat50 = x_2476;
  u_xlat2 = vec4f((((u_xlat50.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat50.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat85 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat85 = min(u_xlat85, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat33 = vec3f(x_2555.x, u_xlat33.y, x_2555.y);
  let x_2562 = min(u_xlat33.xz, u_xlat50.xy);
  u_xlat33 = vec3f(x_2562.x, u_xlat33.y, x_2562.y);
  let x_2570 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2570.x, u_xlat33.y, x_2570.y);
  let x_2578 = u_xlat33;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat50 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat24.w);
  u_xlat25 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat25.w);
  u_xlat26 = (vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres2.xyz));
  u_xlat27 = (vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres3.xyz));
  u_xlat24.x = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat24.y = dot(u_xlat25.xyz, u_xlat25.xyz);
  u_xlat24.z = dot(u_xlat26, u_xlat26);
  u_xlat24.w = dot(u_xlat27, u_xlat27);
  u_xlatb24 = (u_xlat24 < x_2589.x_CascadeShadowSplitSphereRadii);
  u_xlat25.x = select(0.0f, 1.0f, u_xlatb24.x);
  u_xlat25.y = select(0.0f, 1.0f, u_xlatb24.y);
  u_xlat25.z = select(0.0f, 1.0f, u_xlatb24.z);
  u_xlat25.w = select(0.0f, 1.0f, u_xlatb24.w);
  u_xlat24.x = select(-0.0f, -1.0f, u_xlatb24.x);
  u_xlat24.y = select(-0.0f, -1.0f, u_xlatb24.y);
  u_xlat24.z = select(-0.0f, -1.0f, u_xlatb24.z);
  u_xlat24 = vec4f(((u_xlat24.xyz + u_xlat25.yzw)).xyz, u_xlat24.w);
  u_xlat25 = vec4f(u_xlat25.x, max(u_xlat24.xyz, vec3f()).xyz);
  u_xlat30 = dot(u_xlat25, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat30 = (-(u_xlat30) + 4.0f);
  u_xlatu30 = u32(u_xlat30);
  u_xlati30 = (bitcast<i32>(u_xlatu30) << bitcast<u32>(2i));
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati30 + 1i)].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati30].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati30 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati30 + 3i)].xyz)).xyz, u_xlat24.w);
  let x_2749 = u_xlat24.xy;
  txVec0 = vec3f(x_2749.x, x_2749.y, u_xlat24.z);
  u_xlat30 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat60 = (-(x_2589.x_MainLightShadowParams.x) + 1.0f);
  u_xlat30 = ((u_xlat30 * x_2589.x_MainLightShadowParams.x) + u_xlat60);
  u_xlatb60 = (0.0f >= u_xlat24.z);
  u_xlatb33 = (u_xlat24.z >= 1.0f);
  u_xlatb60 = (u_xlatb60 | u_xlatb33);
  u_xlat30 = select(u_xlat30, 1.0f, u_xlatb60);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat60 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat60 = ((u_xlat60 * x_2589.x_MainLightShadowParams.z) + x_2589.x_MainLightShadowParams.w);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat33.x = (-(u_xlat30) + 1.0f);
  u_xlat30 = ((u_xlat60 * u_xlat33.x) + u_xlat30);
  u_xlat25.x = dot(x_2828.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_2828.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_2828.unity_SHAb.yw, x_376);
  u_xlat25 = vec4f(((u_xlat25.xyz + -(x_2828.unity_SHC.xyz))).xyz, u_xlat25.w);
  u_xlat26 = (x_81.x_B612WaterShallow.xyz + x_2859);
  u_xlat26 = ((x_81.x_B612SunDirection.www * u_xlat26) + x_2866);
  u_xlat26 = (u_xlat26 * x_142.x_ScatterColor.xyz);
  u_xlat27 = (x_81.x_B612WaterDeep.xyz + x_2859);
  u_xlat27 = ((x_81.x_B612SunDirection.www * u_xlat27) + x_2866);
  let x_2890 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_2894 = (u_xlat23.xw / vec2f(x_2890.x, x_2890.y));
  u_xlat33 = vec3f(x_2894.x, u_xlat33.y, x_2894.y);
  let x_2907 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat33.xz);
  u_xlat34 = vec3f(x_2907.x, u_xlat34.y, x_2907.y);
  let x_2915 = u_xlat34;
  let x_2918 = x_81.x_GlobalMipBias.x;
  let x_2919 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2915.xz, x_2918);
  u_xlat60 = x_2919.x;
  let x_2927 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat34 = vec3f(x_2927.x, u_xlat34.y, x_2927.y);
  let x_2937 = ((u_xlat33.xz * vec2f(1.12999999523162841797f)) + u_xlat34.xz);
  u_xlat33 = vec3f(x_2937.x, u_xlat33.y, x_2937.y);
  let x_2943 = u_xlat33;
  let x_2946 = x_81.x_GlobalMipBias.x;
  let x_2947 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2943.xz, x_2946);
  u_xlat33.x = x_2947.x;
  let x_2956 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat34 = vec3f(x_2956.x, u_xlat34.y, x_2956.y);
  u_xlat89 = dot(u_xlat34.xz, u_xlat34.xz);
  u_xlat89 = sqrt(u_xlat89);
  u_xlat34.x = (u_xlat89 + -(x_142.x_BoilRadius));
  u_xlat90 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat34.x);
  u_xlat90 = (u_xlat90 / u_xlat38.x);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat90 = (u_xlat90 * -1.44269502162933349609f);
  u_xlat90 = exp2(u_xlat90);
  u_xlat35.x = max(u_xlat89, 0.15000000596046447754f);
  u_xlat35.x = (u_xlat35.x * 6.66666650772094726562f);
  u_xlat35.x = inverseSqrt(u_xlat35.x);
  let x_3009 = (u_xlat35.xx * u_xlat39.xz);
  u_xlat39 = vec3f(x_3009.x, u_xlat39.y, x_3009.y);
  u_xlat91 = (u_xlat94 * u_xlat39.x);
  u_xlat91 = (u_xlat11.x * u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat91 = ((u_xlat5.x * u_xlat34.x) + -(u_xlat67));
  u_xlat91 = cos(u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat90 = select(0.0f, u_xlat90, u_xlatb93);
  let x_3044 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3044.x, x_3044.y)) * u_xlat12.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat69);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat96 * u_xlat39.z);
  u_xlat91 = (u_xlat14.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_3085 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat42.xy));
  u_xlat38 = vec3f(x_3085.x, u_xlat38.y, x_3085.y);
  let x_3090 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_3090.x, u_xlat38.y, x_3090.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat68 * u_xlat11.x);
  u_xlat91 = (u_xlat17.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.y);
  let x_3138 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3138.x, x_3138.y)) * u_xlat43.xz) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat45);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat98 * u_xlat11.y);
  u_xlat91 = (u_xlat18.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_3179 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat46.xy));
  u_xlat38 = vec3f(x_3179.x, u_xlat38.y, x_3179.y);
  let x_3184 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_3184.x, u_xlat38.y, x_3184.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat72)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat101 * u_xlat11.x);
  u_xlat91 = (u_xlat20.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.y);
  let x_3231 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3231.x, x_3231.y)) * u_xlat19.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat49.xz);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat37.x * u_xlat11.y);
  u_xlat91 = (u_xlat21.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  u_xlat37 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat75));
  u_xlat37 = cos(u_xlat37);
  u_xlat5.x = ((u_xlat91 * u_xlat37.x) + u_xlat90);
  if (u_xlatb48.x) {
    x_3285 = u_xlat5.x;
  } else {
    x_3285 = u_xlat90;
  }
  u_xlat5.x = x_3285;
  u_xlat34.x = (u_xlat35.x * u_xlat9.x);
  u_xlat34.x = (u_xlat66 * u_xlat34.x);
  u_xlat34.x = (u_xlat22.x * u_xlat34.x);
  u_xlat34.x = (u_xlat34.x * u_xlat65.y);
  u_xlat34.x = ((u_xlat34.x * u_xlat37.y) + u_xlat5.x);
  if (u_xlatb48.y) {
    x_3328 = u_xlat34.x;
  } else {
    x_3328 = u_xlat5.x;
  }
  u_xlat5.x = x_3328;
  u_xlat34.x = (u_xlat89 / u_xlat92);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat34.x = max(u_xlat34.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat34.x * u_xlat5.x);
  u_xlat89 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat89);
  u_xlat89 = (u_xlat79.x * u_xlat89);
  u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
  u_xlat34.x = ((u_xlat89 * -2.0f) + 3.0f);
  u_xlat89 = (u_xlat89 * u_xlat89);
  u_xlat89 = (u_xlat89 * u_xlat34.x);
  u_xlat5.x = (u_xlat89 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat60 = min(u_xlat60, u_xlat33.x);
  u_xlat60 = (u_xlat60 * 2.5f);
  u_xlat60 = (u_xlat60 * x_142.x_CausticsStrength);
  let x_3414 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat33 = vec3f(x_3414.x, u_xlat33.y, x_3414.y);
  u_xlat2.x = min(u_xlat33.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat60 = exp2(u_xlat33.z);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_3445 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_3445.xy, u_xlat5.z, x_3445.z);
  let x_3452 = (vec3f(u_xlat30) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_3452.xy, u_xlat5.z, x_3452.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_3468 = ((u_xlat5.xyw * u_xlat2.xxx) + x_2866);
  u_xlat5 = vec4f(x_3468.xy, u_xlat5.z, x_3468.z);
  let x_3474 = (u_xlat5.xyw * u_xlat50);
  u_xlat5 = vec4f(x_3474.xy, u_xlat5.z, x_3474.z);
  u_xlat9 = vec4f(((vec3f(u_xlat85) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat85 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat38 = (vec3f(u_xlat30) * x_81.x_MainLightColor.xyz);
  u_xlat30 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat30 = clamp(u_xlat30, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat30) * u_xlat38);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25.xyz);
  u_xlat85 = (u_xlat85 * 0.69999998807907104492f);
  u_xlat85 = min(u_xlat85, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27) + -(u_xlat26))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat85) * u_xlat12.xyz) + u_xlat26)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_3577 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_3577.xy, u_xlat5.z, x_3577.z);
  u_xlat85 = dot(u_xlat3, u_xlat28);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat30 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat60 = (-(x_142.x_F0) + 1.0f);
  u_xlat34.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat60);
  u_xlat85 = (-(u_xlat85) + 1.0f);
  u_xlat90 = (u_xlat85 * u_xlat85);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat85 = (u_xlat85 * u_xlat90);
  u_xlat85 = ((u_xlat34.x * u_xlat85) + u_xlat30);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat30 = dot(-(u_xlat28), u_xlat3);
  u_xlat30 = (u_xlat30 + u_xlat30);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat30))) + -(u_xlat28))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat30 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat30 = (u_xlat30 * x_142.x_Roughness);
  u_xlat30 = (u_xlat30 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu62 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu62.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu62.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat29.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_3719 = u_xlat29.x;
  } else {
    x_3719 = u_xlat1.x;
  }
  u_xlat0.x = x_3719;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu62.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_3781 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_3788 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_3789 = vec2i(x_3781, x_3788);
  u_xlati1 = vec3i(x_3789.x, u_xlati1.y, x_3789.y);
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_3813 = ~(u_xlati1.xz);
  u_xlati35 = vec3i(x_3813.x, u_xlati35.y, x_3813.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati34) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati34.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati35.z) & bitcast<u32>(u_xlati34.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb34 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati67 = 0i;
  u_xlatu95 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat57.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu35 = (u_xlatu95 >> 16u);
    u_xlati91 = u_xlati67;
    u_xlatu92 = u_xlatu95;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb37 = (u_xlati91 == 0i);
      u_xlatu96 = (u_xlatu92 & 65535u);
      u_xlatb96 = (u_xlatu35 >= u_xlatu96);
      u_xlatb37 = (u_xlatb37 & u_xlatb96);
      if (!(u_xlatb37)) {
        break;
      }
      param_6 = u_xlatu92;
      param_7 = 5i;
      param_8 = 11i;
      let x_3927 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu37 = x_3927;
      u_xlatu13 = (vec4u(u_xlatu37) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3948 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3955 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3962 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3969 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_3948, x_3955, x_3962, x_3969);
      u_xlati70 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_3978.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_3978.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_4010 = bitcast<vec2i>((bitcast<vec2u>(u_xlati70) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_4010.x, u_xlati14.y, x_4010.y);
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati41) | bitcast<u32>(u_xlati13.x)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu92) & 31i)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati37 = (bitcast<i32>(u_xlatu37) << bitcast<u32>(5i));
      u_xlatu37 = (u_xlatu35 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati37)))));
      u_xlatu37 = min(u_xlatu37, 31u);
      u_xlatu37 = (bitcast<u32>(-(bitcast<i32>(u_xlatu37))) + 31u);
      u_xlatu37 = (4294967295u >> (u_xlatu37 & 31u));
      u_xlati91 = bitcast<i32>((u_xlatu37 & bitcast<u32>(u_xlati96)));
      u_xlati37 = (bitcast<i32>(u_xlatu92) + 32i);
      u_xlatu92 = (bitcast<u32>(u_xlati37) & 4294967264u);
    }
    u_xlatu95 = u_xlatu92;
    u_xlatb35 = (u_xlati91 != 0i);
    u_xlatb37 = (u_xlat57.x < 0.99000000953674316406f);
    u_xlatb35 = (u_xlatb35 & u_xlatb37);
    if (!(u_xlatb35)) {
      break;
    }
    u_xlati35.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati91)));
    u_xlati37 = (1i << bitcast<u32>((u_xlati35.x & 31i)));
    u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati91) ^ bitcast<u32>(u_xlati37)));
    u_xlati37 = (bitcast<i32>(u_xlatu95) + -32i);
    u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati37) & 65504u));
    u_xlati35.x = (u_xlati35.x + u_xlati37);
    u_xlati35.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati35.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].www)).xyz, u_xlat13.w);
    u_xlat37.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat37.x = min(u_xlat37.x, u_xlat13.x);
    u_xlat37.x = clamp(u_xlat37.x, 0.0f, 1.0f);
    u_xlat96 = (-(u_xlat57.x) + 1.0f);
    u_xlat37.x = min(u_xlat37.x, u_xlat96);
    u_xlatb96 = (0.0f < x_4213.urp_ReflProbes_ProbePosition[u_xlati35.x].w);
    if (u_xlatb34.x) {
      x_4279 = x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].x;
    } else {
      x_4279 = x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].x;
    }
    u_xlat13.x = x_4279;
    if (u_xlatb34.y) {
      x_4295 = x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].y;
    } else {
      x_4295 = x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].y;
    }
    u_xlat13.y = x_4295;
    if (u_xlatb34.z) {
      x_4311 = x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].z;
    } else {
      x_4311 = x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].z;
    }
    u_xlat13.z = x_4311;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat41 = (vs_TEXCOORD0 + -(x_4213.urp_ReflProbes_ProbePosition[u_xlati35.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat41)).xyz, u_xlat13.w);
    if (u_xlatb96) {
      x_4370 = u_xlat13.xyz;
    } else {
      x_4370 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_4370.xyz, u_xlat13.w);
    u_xlatu96 = u32(abs(x_4213.urp_ReflProbes_ProbePosition[u_xlati35.x].w));
    u_xlatu96 = (u_xlatu96 + 4294967295u);
    u_xlat96 = f32(u_xlatu96);
    u_xlat96 = min(u_xlat30, u_xlat96);
    u_xlat97 = dot(abs(u_xlat13.xyz), x_2866);
    u_xlat97 = max(u_xlat97, 0.00000099999999747524f);
    u_xlat97 = (1.0f / u_xlat97);
    u_xlat14 = (vec3f(u_xlat97) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb42 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb42.x) {
      x_4426 = u_xlat14.x;
    } else {
      x_4426 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_4426;
    if (u_xlatb42.y) {
      x_4439 = u_xlat14.x;
    } else {
      x_4439 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_4439;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat97)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat69.x = floor(u_xlat96);
    u_xlat69.y = (u_xlat69.x + 1.0f);
    u_xlat96 = (u_xlat96 + -(u_xlat69.x));
    u_xlatu69 = vec2u(u_xlat69);
    u_xlati69 = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.x));
    u_xlati35.x = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.y));
    u_xlat69 = ((u_xlat13.xy * x_4213.urp_ReflProbes_MipScaleOffset[u_xlati69].xy) + x_4213.urp_ReflProbes_MipScaleOffset[u_xlati69].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat69, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_4213.urp_ReflProbes_MipScaleOffset[u_xlati35.x].xy) + x_4213.urp_ReflProbes_MipScaleOffset[u_xlati35.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat96) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat37.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat57.x = (u_xlat57.x + u_xlat37.x);
  }
  u_xlatb0 = (u_xlat57.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat30);
    u_xlat0.x = (-(u_xlat57.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat85) * u_xlat1) + u_xlat5.xyw);
  let x_4681 = (u_xlat28 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_4681.xy, u_xlat5.z, x_4681.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_4703 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4703.xy, u_xlat5.z, x_4703.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat85 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat85 = max(u_xlat85, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat85 * u_xlat85);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat85 = ((u_xlat85 * u_xlat85) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat85) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat28.x = dot(u_xlat5.xyw, u_xlat28);
  u_xlat28.x = clamp(u_xlat28.x, 0.0f, 1.0f);
  u_xlat28.x = (-(u_xlat28.x) + 1.0f);
  u_xlat56 = (u_xlat28.x * u_xlat28.x);
  u_xlat56 = (u_xlat56 * u_xlat56);
  u_xlat28.x = (u_xlat56 * u_xlat28.x);
  u_xlat28.x = ((u_xlat60 * u_xlat28.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat28.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat38);
  let x_4822 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_4822.x, x_4822.y, x_4822.z));
  u_xlat84 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat84 = (u_xlat84 * 4.0f);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat84)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat57 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat57 = (-(u_xlat57) + u_xlat1.xy);
  let x_4865 = u_xlat57;
  let x_4867 = x_81.x_GlobalMipBias.x;
  let x_4868 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4865, x_4867);
  u_xlat84 = x_4868.x;
  u_xlat57 = (u_xlat32.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat57) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_4893 = u_xlat1;
  let x_4896 = x_81.x_GlobalMipBias.x;
  let x_4897 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4893.xy, x_4896);
  u_xlat1.x = x_4897.x;
  u_xlat1.x = (u_xlat63.x * u_xlat1.x);
  u_xlat84 = ((u_xlat84 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat29.x = (-(u_xlat64.x) + 1.0f);
  u_xlat1.x = (u_xlat29.x * u_xlat1.x);
  u_xlat29 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_4947 = u_xlat29;
  let x_4949 = x_81.x_GlobalMipBias.x;
  let x_4950 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4947, x_4949);
  u_xlat29.x = x_4950.y;
  u_xlat57.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat57.x = (u_xlat57.x * u_xlat57.x);
  u_xlat57.x = (u_xlat57.x * -1.44269502162933349609f);
  u_xlat57.x = exp2(u_xlat57.x);
  u_xlat57.x = ((u_xlat64.x * 0.34999999403953552246f) + u_xlat57.x);
  u_xlat29.x = (u_xlat57.x * u_xlat29.x);
  u_xlat29.x = (u_xlat61 * u_xlat29.x);
  u_xlat29.x = (u_xlat29.x * 0.89999997615814208984f);
  u_xlat84 = ((u_xlat84 * u_xlat1.x) + u_xlat29.x);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat38 * vec3f(0.69999998807907104492f)) + u_xlat25.xyz);
  u_xlat84 = (u_xlat84 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  u_xlat0 = ((vec3f(u_xlat84) * u_xlat1) + u_xlat0);
  SV_Target0.w = (u_xlat87 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat84 = exp2(-(vs_TEXCOORD1));
  u_xlat84 = min(u_xlat84, 1.0f);
  u_xlat0 = (u_xlat0 + -(x_81.unity_FogColor.xyz));
  SV_Target0 = vec4f((((vec3f(u_xlat84) * u_xlat0) + x_81.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
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
  vs_TEXCOORD1 = (u_xlat0.x * x_74.unity_FogParams.x);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  unity_FogColor : vec4f,
  /* @offset(240) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(304) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(368) */
  x_ScreenSize : vec4f,
  /* @offset(384) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(416) */
  x_B612SunDirection : vec4f,
  /* @offset(432) */
  x_B612WaterShallow : vec4f,
  /* @offset(448) */
  x_B612WaterDeep : vec4f,
  /* @offset(464) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2590 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_3957 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_4943 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_5120 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_5355 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : f32;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_744 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2758 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_2824 = vec2f(0.15999999642372131348f);

const x_2896 = vec3f(-2.5f, -0.5f, 1.5f);

const x_3295 = vec2f(0.08163200318813323975f);

const x_3314 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_3317 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_3324 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_3362 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_3988 = vec3f(-1.0f);

const x_3998 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat38 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat79 : vec2f;
  var u_xlat115 : f32;
  var u_xlat4 : vec4f;
  var u_xlat80 : f32;
  var u_xlat118 : f32;
  var u_xlatb42 : bool;
  var x_281 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat43 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat82 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat83 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat84 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat85 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb123 : bool;
  var u_xlat11 : vec3f;
  var u_xlat48 : vec3f;
  var u_xlat86 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat49 : vec3f;
  var u_xlat122 : f32;
  var u_xlat124 : f32;
  var u_xlat87 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat89 : vec2f;
  var u_xlat52 : vec3f;
  var u_xlat126 : f32;
  var u_xlat88 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat129 : f32;
  var u_xlat128 : f32;
  var u_xlat53 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat55 : vec2f;
  var u_xlat56 : vec3f;
  var u_xlat92 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat131 : f32;
  var u_xlat132 : f32;
  var u_xlatb58 : vec2<bool>;
  var u_xlat59 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat47 : vec2f;
  var u_xlat95 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat60 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat99 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat81 : f32;
  var u_xlat134 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat41 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat45 : vec3f;
  var u_xlat117 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb115 : bool;
  var x_2476 : vec3f;
  var u_xlatb40 : bool;
  var u_xlat25 : vec4f;
  var txVec0 : vec3f;
  var u_xlat26 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlat40 : f32;
  var u_xlatb80 : bool;
  var u_xlat44 : vec3f;
  var u_xlat102 : vec2f;
  var u_xlat27 : vec4f;
  var u_xlat28 : vec4f;
  var u_xlat29 : vec4f;
  var u_xlat30 : vec4f;
  var u_xlat31 : vec4f;
  var u_xlat32 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat119 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat33 : vec4f;
  var u_xlat63 : vec2f;
  var u_xlat34 : vec2f;
  var u_xlat103 : vec2f;
  var u_xlat35 : vec4f;
  var u_xlat36 : vec4f;
  var u_xlat37 : vec4f;
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
  var u_xlatb43 : bool;
  var u_xlat120 : f32;
  var u_xlat121 : f32;
  var x_4425 : f32;
  var x_4468 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu82 : vec2u;
  var u_xlati6 : i32;
  var u_xlat39 : vec2f;
  var u_xlat0 : vec3f;
  var x_4861 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati39 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati44 : vec2i;
  var u_xlati45 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb44 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati87 : i32;
  var u_xlatu125 : u32;
  var u_xlat77 : vec2f;
  var u_xlatu45 : u32;
  var u_xlati121 : i32;
  var u_xlatu122 : u32;
  var u_xlatb47 : bool;
  var u_xlatu126 : u32;
  var u_xlatb126 : bool;
  var u_xlatu47 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati90 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati126 : i32;
  var u_xlati51 : i32;
  var u_xlati47 : i32;
  var u_xlatb45 : bool;
  var x_5421 : f32;
  var x_5437 : f32;
  var x_5453 : f32;
  var u_xlat51 : vec3f;
  var x_5512 : vec3f;
  var u_xlat127 : f32;
  var u_xlatb52 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_5568 : f32;
  var x_5581 : f32;
  var u_xlatu89 : vec2u;
  var u_xlati89 : i32;
  var u_xlat76 : f32;
  var u_xlat114 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat38 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat38, u_xlat38);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat38 = (u_xlat38 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat38;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat38 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat79 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat115 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat115, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat80 = max(u_xlat80, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat80))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat79.yx + u_xlat79.yx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat79, u_xlat79);
  u_xlat118 = max(u_xlat80, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat118))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb42 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb42) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat42 = vec3f(x_314.x, u_xlat42.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat43 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat82 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat82) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat83 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat82.x * 4.0f);
  u_xlat8 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat42 = vec3f(x_405.x, u_xlat42.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat84 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat84 = (u_xlat84 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat84;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat84 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat85 = (u_xlat42.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat85 = (u_xlat85 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat85));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat83.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat84 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat84 = max(vec2f(u_xlat115), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat84.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat84.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat85.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat85.x = sin(u_xlat85.x);
  u_xlat85.x = (u_xlat85.x * 43758.546875f);
  u_xlat85.x = fract(u_xlat85.x);
  u_xlat85.x = ((u_xlat85.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat85.x = (u_xlat85.x / u_xlat9.y);
  u_xlat85.x = (-(u_xlat85.x) + x_81.x_Time.y);
  u_xlatb123 = (u_xlat85.x >= 0.0f);
  u_xlat10.x = (u_xlat115 + -(x_142.x_BoilRadius));
  let x_745 = (u_xlat85.xx * x_744);
  u_xlat11 = vec3f(x_745.x, u_xlat11.y, x_745.y);
  u_xlat48.x = ((u_xlat85.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat86 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat10.x);
  u_xlat86 = (u_xlat86 / u_xlat48.x);
  u_xlat86 = (u_xlat86 * u_xlat86);
  u_xlat86 = (u_xlat86 * -1.44269502162933349609f);
  u_xlat86 = exp2(u_xlat86);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat49 = vec3f(x_804.x, u_xlat49.y, x_804.y);
  u_xlat122 = (u_xlat84.y * 6.66666650772094726562f);
  u_xlat122 = inverseSqrt(u_xlat122);
  let x_818 = (vec2f(u_xlat122) * u_xlat49.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat124 = exp2(u_xlat11.z);
  u_xlat87 = (u_xlat124 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat87 = (u_xlat11.x * u_xlat87);
  u_xlat86 = (u_xlat86 * u_xlat87);
  u_xlat87 = (u_xlat84.x * u_xlat85.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat87));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat86 = (u_xlat86 * u_xlat12.x);
  u_xlat86 = select(0.0f, u_xlat86, u_xlatb123);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_744);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat89 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat52 = vec3f(x_931.x, u_xlat52.y, x_931.y);
  let x_937 = (u_xlat52.xz / u_xlat89);
  u_xlat52 = vec3f(x_937.x, u_xlat52.y, x_937.y);
  let x_944 = (u_xlat52.xz * u_xlat52.xz);
  u_xlat52 = vec3f(x_944.x, u_xlat52.y, x_944.y);
  let x_950 = (u_xlat52.xz * x_949);
  u_xlat52 = vec3f(x_950.x, u_xlat52.y, x_950.y);
  let x_955 = exp2(u_xlat52.xz);
  u_xlat52 = vec3f(x_955.x, u_xlat52.y, x_955.y);
  u_xlat126 = exp2(u_xlat14.z);
  u_xlat88 = (u_xlat126 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat88 = (u_xlat88 * u_xlat14.x);
  u_xlat88 = (u_xlat88 * u_xlat52.x);
  u_xlat52 = vec3f(((u_xlat84.xx * u_xlat12.xy)).xy, u_xlat52.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat52.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat88 = ((u_xlat88 * u_xlat15.x) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat88, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat122) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_744);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat88 = exp2(u_xlat17.z);
  u_xlat129 = (u_xlat88 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat129 = (u_xlat129 * u_xlat17.x);
  u_xlat128 = (u_xlat52.z * u_xlat129);
  u_xlat128 = ((u_xlat128 * u_xlat15.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat128, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat53 = vec3f(x_1094.x, u_xlat53.y, x_1094.y);
  let x_1101 = (u_xlat53.xz / u_xlat9.yy);
  u_xlat53 = vec3f(x_1101.x, u_xlat53.y, x_1101.y);
  let x_1110 = (-(u_xlat53.xz) + x_81.x_Time.yy);
  u_xlat53 = vec3f(x_1110.x, u_xlat53.y, x_1110.y);
  u_xlatb16 = ((u_xlat53.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat53.xx * x_744);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat55 = ((u_xlat53.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat53.xz) + u_xlat10.xx);
  u_xlat56 = vec3f(x_1144.x, u_xlat56.y, x_1144.y);
  let x_1150 = (u_xlat56.xz / u_xlat55);
  u_xlat56 = vec3f(x_1150.x, u_xlat56.y, x_1150.y);
  let x_1157 = (u_xlat56.xz * u_xlat56.xz);
  u_xlat56 = vec3f(x_1157.x, u_xlat56.y, x_1157.y);
  let x_1162 = (u_xlat56.xz * x_949);
  u_xlat56 = vec3f(x_1162.x, u_xlat56.y, x_1162.y);
  let x_1167 = exp2(u_xlat56.xz);
  u_xlat56 = vec3f(x_1167.x, u_xlat56.y, x_1167.y);
  u_xlat128 = exp2(u_xlat18.z);
  u_xlat92.x = (u_xlat128 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat92.x = (u_xlat92.x * u_xlat18.x);
  u_xlat92.x = (u_xlat92.x * u_xlat56.x);
  u_xlat56 = vec3f(((u_xlat84.xx * u_xlat53.xz)).xy, u_xlat56.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat56.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat92.x = ((u_xlat92.x * u_xlat19.x) + u_xlat86);
  if (u_xlatb16.x) {
    x_1232 = u_xlat92.x;
  } else {
    x_1232 = u_xlat86;
  }
  u_xlat86 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat92 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat122) * u_xlat92);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat53.zz * x_744);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat131 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat131 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat132 = (u_xlat56.z * u_xlat19.x);
  u_xlat132 = ((u_xlat132 * u_xlat19.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat132, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb58 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_744);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat59 = vec3f(x_1350.x, u_xlat59.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat59.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat47.x = exp2(u_xlat21.z);
  u_xlat132 = (u_xlat47.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat132 = (u_xlat132 * u_xlat21.x);
  u_xlat132 = (u_xlat132 * u_xlat22.x);
  u_xlat95 = (u_xlat84.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat95));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat84.x = ((u_xlat132 * u_xlat22.x) + u_xlat86);
  if (u_xlatb58.x) {
    x_1450 = u_xlat84.x;
  } else {
    x_1450 = u_xlat86;
  }
  u_xlat84.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat122 = (u_xlat122 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_744);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat86 = exp2(u_xlat22.w);
  u_xlat122 = (u_xlat122 * u_xlat86);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat122 = (u_xlat122 * u_xlat22.x);
  u_xlat122 = (u_xlat122 * u_xlat22.y);
  u_xlat122 = ((u_xlat122 * u_xlat22.z) + u_xlat84.x);
  if (u_xlatb58.y) {
    x_1524 = u_xlat122;
  } else {
    x_1524 = u_xlat84.x;
  }
  u_xlat84.x = x_1524;
  u_xlat122 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat132 = (u_xlat115 / u_xlat122);
  u_xlat132 = (-(u_xlat132) + 1.0f);
  u_xlat132 = max(u_xlat132, 0.0f);
  u_xlat84.x = (u_xlat84.x * x_142.x_RingStrength);
  u_xlat84.x = (u_xlat132 * u_xlat84.x);
  u_xlat60 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat115))).xy, u_xlat23.zw);
  u_xlat99 = (x_376 / u_xlat60.xy);
  u_xlat23 = vec4f(((u_xlat99 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat132 = (u_xlat23.x * u_xlat24.x);
  u_xlat84.x = (u_xlat84.x * u_xlat132);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat84.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat84.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat81 = sin(u_xlat43.y);
  u_xlat81 = (u_xlat81 * 1.70000004768371582031f);
  u_xlat81 = ((u_xlat84.x * 6.28318548202514648438f) + u_xlat81);
  u_xlat81 = sin(u_xlat81);
  u_xlat81 = ((u_xlat81 * 0.25f) + 0.75f);
  u_xlat84.x = (u_xlat115 * -(u_xlat115));
  u_xlat132 = (u_xlat60.x * u_xlat60.x);
  u_xlat84.x = (u_xlat84.x / u_xlat132);
  u_xlat84.x = (u_xlat84.x * 1.44269502162933349609f);
  u_xlat84.x = exp2(u_xlat84.x);
  u_xlat134 = (u_xlat115 + u_xlat115);
  u_xlat132 = (u_xlat134 / u_xlat132);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat132));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat84.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat60 = vec3f(((u_xlat60.xx * u_xlat23.xw)).xy, u_xlat60.z);
  let x_1734 = ((u_xlat60.xy * vec2f(u_xlat81)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat84.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat43.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat43 = vec3f(x_1763.x, u_xlat43.y, x_1763.y);
  let x_1769 = u_xlat43;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_1786.x, u_xlat43.y, x_1786.y);
  u_xlat60 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat60.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat60.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat60.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat132 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat115 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat115);
  u_xlat132 = (1.0f / u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat132 = ((u_xlat115 * -2.0f) + 3.0f);
  u_xlat115 = (u_xlat115 * u_xlat115);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat84.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat43.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat115)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat115 = sqrt(u_xlat80);
  u_xlat60 = (vec3f(u_xlat115) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat60 = (u_xlat60 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat60 = clamp(u_xlat60, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat60 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat60 = (u_xlat60 * u_xlat60);
  u_xlat80 = (u_xlat60.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat60.xz) + x_376);
  u_xlat43 = vec3f(x_1932.x, u_xlat43.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat82.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat82.x = dot(u_xlat82.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat82.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat43.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat43.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat80 * u_xlat43.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat43 = vec3f(x_2080.x, u_xlat43.y, x_2080.y);
  u_xlat41 = dot(u_xlat79.yx, u_xlat43.xz);
  u_xlat41 = (abs(u_xlat41) * 4.0f);
  u_xlat41 = min(u_xlat41, 1.0f);
  u_xlat115 = max(u_xlat115, 0.00100000004749745131f);
  u_xlat79 = (-(u_xlat79) / vec2f(u_xlat115));
  let x_2105 = (u_xlat82.yy * u_xlat79.yx);
  u_xlat43 = vec3f(x_2105.x, u_xlat43.y, x_2105.y);
  let x_2115 = ((-(u_xlat43.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat43 = vec3f(x_2115.x, u_xlat43.y, x_2115.y);
  let x_2122 = (u_xlat43.xz * vec2f(2.38095235824584960938f));
  u_xlat43 = vec3f(x_2122.x, u_xlat43.y, x_2122.y);
  u_xlat79 = (u_xlat6.yy * u_xlat79);
  u_xlat79 = ((-(u_xlat79) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat79 = ((u_xlat79 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat43;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_2162.x, u_xlat43.y, x_2162.y);
  let x_2168 = u_xlat79;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat79 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat79 = (u_xlat83.yy * u_xlat79);
  u_xlat79 = ((u_xlat43.xz * u_xlat7.yy) + u_xlat79);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat79 = (u_xlat79 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat79);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat115 = ((u_xlat41 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat115)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat115 = dot(u_xlat3, u_xlat3);
  u_xlat115 = inverseSqrt(u_xlat115);
  u_xlat3 = (vec3f(u_xlat115) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat115 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat115) + 1.0f);
  u_xlat115 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat115 = (1.0f / u_xlat115);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat43 = vec3f(x_2286.x, u_xlat43.y, x_2286.y);
  let x_2294 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2294.x, u_xlat43.y, x_2294.y);
  let x_2302 = (u_xlat43.xz * x_81.x_ScreenSize.xy);
  u_xlat43 = vec3f(x_2302.x, u_xlat43.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat43.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat43 = vec3f(x_2331.x, u_xlat43.y, x_2331.y);
  let x_2341 = (-(u_xlat43.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat45 = vec3f(x_2341.x, u_xlat45.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat43.xx) + u_xlat45.xz);
  u_xlat43 = vec3f(x_2352.x, u_xlat43.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat43.xz);
  u_xlat43 = vec3f(x_2363.x, u_xlat43.y, x_2363.y);
  let x_2372 = (u_xlat43.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat43 = vec3f(x_2372.x, u_xlat43.y, x_2372.y);
  u_xlat117 = (u_xlat43.x / u_xlat43.z);
  u_xlat117 = (-(u_xlat117) + vs_TEXCOORD0.y);
  u_xlat117 = max(u_xlat117, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat43 = vec3f(x_2399.x, u_xlat43.y, x_2399.y);
  u_xlat80 = (u_xlat117 * 4.0f);
  u_xlat80 = min(u_xlat80, 1.0f);
  u_xlat24 = vec4f((((u_xlat43.xz * vec2f(u_xlat80)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb115 = (u_xlat2.x < u_xlat115);
  if (u_xlatb115) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat60 = x_2476;
  u_xlat2 = vec4f((((u_xlat60.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat60.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat115 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat115 = min(u_xlat115, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat43 = vec3f(x_2555.x, u_xlat43.y, x_2555.y);
  let x_2562 = min(u_xlat43.xz, u_xlat60.xy);
  u_xlat43 = vec3f(x_2562.x, u_xlat43.y, x_2562.y);
  let x_2570 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2570.x, u_xlat43.y, x_2570.y);
  let x_2578 = u_xlat43;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat60 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat24.w);
  u_xlatb40 = (0.0f < x_2590.x_MainLightShadowParams.y);
  if (u_xlatb40) {
    u_xlatb40 = (x_2590.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb40) {
      u_xlat25 = (u_xlat24.xyxy + x_2590.x_MainLightShadowOffset0);
      let x_2648 = u_xlat25.xy;
      txVec0 = vec3f(x_2648.x, x_2648.y, u_xlat24.z);
      u_xlat26.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_2669 = u_xlat25.zw;
      txVec1 = vec3f(x_2669.x, x_2669.y, u_xlat24.z);
      u_xlat26.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat25 = (u_xlat24.xyxy + x_2590.x_MainLightShadowOffset1);
      let x_2689 = u_xlat25.xy;
      txVec2 = vec3f(x_2689.x, x_2689.y, u_xlat24.z);
      u_xlat26.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_2704 = u_xlat25.zw;
      txVec3 = vec3f(x_2704.x, x_2704.y, u_xlat24.z);
      u_xlat26.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat40 = dot(u_xlat26, vec4f(0.25f));
    } else {
      u_xlatb80 = (x_2590.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb80) {
        let x_2735 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_2735.x, u_xlat43.y, x_2735.y);
        let x_2740 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_2740.x, u_xlat43.y, x_2740.y);
        let x_2753 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_2753.x, u_xlat44.y, x_2753.y);
        u_xlat25 = (u_xlat44.xxzz + x_2758);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_2767 = (u_xlat26.yw * x_914);
        u_xlat45 = vec3f(x_2767.x, u_xlat45.y, x_2767.y);
        let x_2776 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat25 = vec4f(x_2776.x, u_xlat25.y, x_2776.y, u_xlat25.w);
        u_xlat26 = vec4f(((-(u_xlat44.xz) + x_376)).xy, u_xlat26.zw);
        u_xlat102 = min(u_xlat44.xz, vec2f());
        u_xlat102 = ((-(u_xlat102) * u_xlat102) + u_xlat26.xy);
        let x_2799 = max(u_xlat44.xz, vec2f());
        u_xlat44 = vec3f(x_2799.x, u_xlat44.y, x_2799.y);
        let x_2810 = ((-(u_xlat44.xz) * u_xlat44.xz) + u_xlat25.yw);
        u_xlat44 = vec3f(x_2810.x, u_xlat44.y, x_2810.y);
        u_xlat102 = (u_xlat102 + x_376);
        let x_2817 = (u_xlat44.xz + x_376);
        u_xlat44 = vec3f(x_2817.x, u_xlat44.y, x_2817.y);
        u_xlat27 = vec4f(((u_xlat25.xz * x_2824)).xy, u_xlat27.zw);
        u_xlat28 = vec4f(((u_xlat26.xy * x_2824)).xy, u_xlat28.zw);
        u_xlat26 = vec4f(((u_xlat102 * x_2824)).xy, u_xlat26.zw);
        u_xlat29 = vec4f(((u_xlat44.xz * x_2824)).xy, u_xlat29.zw);
        let x_2846 = (u_xlat25.yw * x_2824);
        u_xlat44 = vec3f(x_2846.x, u_xlat44.y, x_2846.y);
        u_xlat27.z = u_xlat26.x;
        u_xlat27.w = u_xlat44.x;
        u_xlat28.z = u_xlat29.x;
        u_xlat28.w = u_xlat45.x;
        u_xlat25 = (u_xlat27.zwxz + u_xlat28.zwxz);
        u_xlat26.z = u_xlat27.y;
        u_xlat26.w = u_xlat44.z;
        u_xlat29.z = u_xlat28.y;
        u_xlat29.w = u_xlat45.z;
        u_xlat26 = vec4f(((u_xlat26.zyw + u_xlat29.zyw)).xyz, u_xlat26.w);
        u_xlat27 = vec4f(((u_xlat28.xzw / u_xlat25.zwy)).xyz, u_xlat27.w);
        u_xlat27 = vec4f(((u_xlat27.xyz + x_2896)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat29.zyw / u_xlat26.xyz)).xyz, u_xlat28.w);
        u_xlat28 = vec4f(((u_xlat28.xyz + x_2896)).xyz, u_xlat28.w);
        u_xlat27 = vec4f(((u_xlat27.yxz * x_2590.x_MainLightShadowmapSize.xxx)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat28.xyz * x_2590.x_MainLightShadowmapSize.yyy)).xyz, u_xlat28.w);
        u_xlat27.w = u_xlat28.x;
        u_xlat29 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.ywxw);
        let x_2948 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat27.zw);
        u_xlat44 = vec3f(x_2948.x, u_xlat44.y, x_2948.y);
        u_xlat28.w = u_xlat27.y;
        let x_2955 = u_xlat28.yz;
        u_xlat27 = vec4f(u_xlat27.x, x_2955.x, u_xlat27.z, x_2955.y);
        u_xlat30 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat28 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat28.wywz);
        u_xlat27 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.xwzw);
        u_xlat31 = (u_xlat25.zwyz * u_xlat26.xxxy);
        u_xlat32 = (u_xlat25 * u_xlat26.yyzz);
        u_xlat80 = (u_xlat25.y * u_xlat26.z);
        let x_3004 = u_xlat29.xy;
        txVec4 = vec3f(x_3004.x, x_3004.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_3019 = u_xlat29.zw;
        txVec5 = vec3f(x_3019.x, x_3019.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat119 = (u_xlat119 * u_xlat31.y);
        u_xlat43.x = ((u_xlat31.x * u_xlat43.x) + u_xlat119);
        let x_3046 = u_xlat44.xz;
        txVec6 = vec3f(x_3046.x, x_3046.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat43.x = ((u_xlat31.z * u_xlat119) + u_xlat43.x);
        let x_3068 = u_xlat28.xy;
        txVec7 = vec3f(x_3068.x, x_3068.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat43.x = ((u_xlat31.w * u_xlat119) + u_xlat43.x);
        let x_3090 = u_xlat30.xy;
        txVec8 = vec3f(x_3090.x, x_3090.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat43.x = ((u_xlat32.x * u_xlat119) + u_xlat43.x);
        let x_3112 = u_xlat30.zw;
        txVec9 = vec3f(x_3112.x, x_3112.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat43.x = ((u_xlat32.y * u_xlat119) + u_xlat43.x);
        let x_3134 = u_xlat28.zw;
        txVec10 = vec3f(x_3134.x, x_3134.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat43.x = ((u_xlat32.z * u_xlat119) + u_xlat43.x);
        let x_3156 = u_xlat27.xy;
        txVec11 = vec3f(x_3156.x, x_3156.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat43.x = ((u_xlat32.w * u_xlat119) + u_xlat43.x);
        let x_3178 = u_xlat27.zw;
        txVec12 = vec3f(x_3178.x, x_3178.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat40 = ((u_xlat80 * u_xlat119) + u_xlat43.x);
      } else {
        let x_3203 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_3203.x, u_xlat43.y, x_3203.y);
        let x_3208 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_3208.x, u_xlat43.y, x_3208.y);
        let x_3220 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_3220.x, u_xlat44.y, x_3220.y);
        u_xlat25 = (u_xlat44.xxzz + x_2758);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_3235 = (u_xlat26.yw * vec2f(0.04081600159406661987f));
        u_xlat27 = vec4f(u_xlat27.x, x_3235.x, u_xlat27.z, x_3235.y);
        let x_3244 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat45 = vec3f(x_3244.x, u_xlat45.y, x_3244.y);
        let x_3250 = (-(u_xlat44.xz) + x_376);
        u_xlat25 = vec4f(x_3250.x, u_xlat25.y, x_3250.y, u_xlat25.w);
        u_xlat26 = vec4f(min(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3266 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.xz);
        u_xlat25 = vec4f(x_3266.x, u_xlat25.y, x_3266.y, u_xlat25.w);
        u_xlat26 = vec4f(max(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3282 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.yw);
        u_xlat25 = vec4f(u_xlat25.x, x_3282.x, u_xlat25.z, x_3282.y);
        u_xlat25 = (u_xlat25 + vec4f(2.0f));
        u_xlat26.z = (u_xlat25.y * 0.08163200318813323975f);
        u_xlat28 = vec4f(((u_xlat45.zx * x_3295)).xy, u_xlat28.zw);
        let x_3301 = (u_xlat25.xz * x_3295);
        u_xlat45 = vec3f(x_3301.x, u_xlat45.y, x_3301.y);
        u_xlat28.z = (u_xlat25.w * 0.08163200318813323975f);
        u_xlat26.x = u_xlat28.y;
        let x_3318 = ((u_xlat44.xx * x_3314) + x_3317);
        u_xlat26 = vec4f(u_xlat26.x, x_3318.x, u_xlat26.z, x_3318.y);
        let x_3325 = ((u_xlat44.xx * x_3314) + x_3324);
        u_xlat25 = vec4f(x_3325.x, u_xlat25.y, x_3325.y, u_xlat25.w);
        u_xlat25.y = u_xlat45.x;
        u_xlat25.w = u_xlat27.y;
        u_xlat26 = (u_xlat25 + u_xlat26);
        let x_3340 = ((u_xlat44.zz * x_3314) + x_3317);
        u_xlat28 = vec4f(u_xlat28.x, x_3340.x, u_xlat28.z, x_3340.y);
        let x_3346 = ((u_xlat44.zz * x_3314) + x_3324);
        u_xlat27 = vec4f(x_3346.x, u_xlat27.y, x_3346.y, u_xlat27.w);
        u_xlat27.y = u_xlat45.z;
        u_xlat28 = (u_xlat27 + u_xlat28);
        u_xlat25 = (u_xlat25 / u_xlat26);
        u_xlat25 = (u_xlat25 + x_3362);
        u_xlat27 = (u_xlat27 / u_xlat28);
        u_xlat27 = (u_xlat27 + x_3362);
        u_xlat25 = (u_xlat25.wxyz * x_2590.x_MainLightShadowmapSize.xxxx);
        u_xlat27 = (u_xlat27.xwyz * x_2590.x_MainLightShadowmapSize.yyyy);
        let x_3382 = u_xlat25.yzw;
        u_xlat29 = vec4f(x_3382.x, u_xlat29.y, x_3382.yz);
        u_xlat29.y = u_xlat27.x;
        u_xlat30 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3405 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat44 = vec3f(x_3405.x, u_xlat44.y, x_3405.y);
        u_xlat25.y = u_xlat29.y;
        u_xlat29.y = u_xlat27.z;
        u_xlat31 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3431 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat45 = vec3f(x_3431.x, u_xlat45.y, x_3431.y);
        u_xlat25.z = u_xlat29.y;
        u_xlat32 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat25.xyxz);
        u_xlat29.y = u_xlat27.w;
        u_xlat33 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        u_xlat63 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat25.w = u_xlat29.y;
        u_xlat34 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat25.xw);
        let x_3483 = u_xlat29.xzw;
        u_xlat27 = vec4f(x_3483.x, u_xlat27.y, x_3483.yz);
        u_xlat29 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat103 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat27.wy);
        u_xlat27.x = u_xlat25.x;
        let x_3516 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat27.xy);
        u_xlat43 = vec3f(x_3516.x, u_xlat43.y, x_3516.y);
        u_xlat35 = (u_xlat26 * u_xlat28.xxxx);
        u_xlat36 = (u_xlat26 * u_xlat28.yyyy);
        u_xlat37 = (u_xlat26 * u_xlat28.zzzz);
        u_xlat26 = (u_xlat26 * u_xlat28.wwww);
        let x_3540 = u_xlat30.xy;
        txVec13 = vec3f(x_3540.x, x_3540.y, u_xlat24.z);
        u_xlat80 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_3554 = u_xlat30.zw;
        txVec14 = vec3f(x_3554.x, x_3554.y, u_xlat24.z);
        u_xlat132 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat132 = (u_xlat132 * u_xlat35.y);
        u_xlat80 = ((u_xlat35.x * u_xlat80) + u_xlat132);
        let x_3578 = u_xlat44.xz;
        txVec15 = vec3f(x_3578.x, x_3578.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat80 = ((u_xlat35.z * u_xlat44.x) + u_xlat80);
        let x_3600 = u_xlat32.xy;
        txVec16 = vec3f(x_3600.x, x_3600.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat80 = ((u_xlat35.w * u_xlat44.x) + u_xlat80);
        let x_3622 = u_xlat31.xy;
        txVec17 = vec3f(x_3622.x, x_3622.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat80 = ((u_xlat36.x * u_xlat44.x) + u_xlat80);
        let x_3644 = u_xlat31.zw;
        txVec18 = vec3f(x_3644.x, x_3644.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat80 = ((u_xlat36.y * u_xlat44.x) + u_xlat80);
        let x_3666 = u_xlat45.xz;
        txVec19 = vec3f(x_3666.x, x_3666.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat80 = ((u_xlat36.z * u_xlat44.x) + u_xlat80);
        let x_3688 = u_xlat32.zw;
        txVec20 = vec3f(x_3688.x, x_3688.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat80 = ((u_xlat36.w * u_xlat44.x) + u_xlat80);
        let x_3710 = u_xlat33.xy;
        txVec21 = vec3f(x_3710.x, x_3710.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat80 = ((u_xlat37.x * u_xlat44.x) + u_xlat80);
        let x_3732 = u_xlat33.zw;
        txVec22 = vec3f(x_3732.x, x_3732.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat80 = ((u_xlat37.y * u_xlat44.x) + u_xlat80);
        txVec23 = vec3f(u_xlat63.x, u_xlat63.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat80 = ((u_xlat37.z * u_xlat44.x) + u_xlat80);
        txVec24 = vec3f(u_xlat34.x, u_xlat34.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat80 = ((u_xlat37.w * u_xlat44.x) + u_xlat80);
        let x_3796 = u_xlat29.xy;
        txVec25 = vec3f(x_3796.x, x_3796.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat80 = ((u_xlat26.x * u_xlat44.x) + u_xlat80);
        let x_3818 = u_xlat29.zw;
        txVec26 = vec3f(x_3818.x, x_3818.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat80 = ((u_xlat26.y * u_xlat44.x) + u_xlat80);
        txVec27 = vec3f(u_xlat103.x, u_xlat103.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat80 = ((u_xlat26.z * u_xlat44.x) + u_xlat80);
        let x_3861 = u_xlat43.xz;
        txVec28 = vec3f(x_3861.x, x_3861.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat40 = ((u_xlat26.w * u_xlat43.x) + u_xlat80);
      }
    }
  } else {
    let x_3884 = u_xlat24.xy;
    txVec29 = vec3f(x_3884.x, x_3884.y, u_xlat24.z);
    u_xlat40 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat80 = (-(x_2590.x_MainLightShadowParams.x) + 1.0f);
  u_xlat40 = ((u_xlat40 * x_2590.x_MainLightShadowParams.x) + u_xlat80);
  u_xlatb80 = (0.0f >= u_xlat24.z);
  u_xlatb43 = (u_xlat24.z >= 1.0f);
  u_xlatb80 = (u_xlatb80 | u_xlatb43);
  u_xlat40 = select(u_xlat40, 1.0f, u_xlatb80);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat80 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat80 = ((u_xlat80 * x_2590.x_MainLightShadowParams.z) + x_2590.x_MainLightShadowParams.w);
  u_xlat80 = clamp(u_xlat80, 0.0f, 1.0f);
  u_xlat43.x = (-(u_xlat40) + 1.0f);
  u_xlat40 = ((u_xlat80 * u_xlat43.x) + u_xlat40);
  u_xlat25.x = dot(x_3957.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_3957.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_3957.unity_SHAb.yw, x_376);
  u_xlat25 = vec4f(((u_xlat25.xyz + -(x_3957.unity_SHC.xyz))).xyz, u_xlat25.w);
  u_xlat26 = vec4f(((x_81.x_B612WaterShallow.xyz + x_3988)).xyz, u_xlat26.w);
  u_xlat26 = vec4f((((x_81.x_B612SunDirection.www * u_xlat26.xyz) + x_3998)).xyz, u_xlat26.w);
  u_xlat26 = vec4f(((u_xlat26.xyz * x_142.x_ScatterColor.xyz)).xyz, u_xlat26.w);
  u_xlat27 = vec4f(((x_81.x_B612WaterDeep.xyz + x_3988)).xyz, u_xlat27.w);
  u_xlat27 = vec4f((((x_81.x_B612SunDirection.www * u_xlat27.xyz) + x_3998)).xyz, u_xlat27.w);
  let x_4032 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_4036 = (u_xlat23.xw / vec2f(x_4032.x, x_4032.y));
  u_xlat43 = vec3f(x_4036.x, u_xlat43.y, x_4036.y);
  let x_4048 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat43.xz);
  u_xlat44 = vec3f(x_4048.x, u_xlat44.y, x_4048.y);
  let x_4056 = u_xlat44;
  let x_4059 = x_81.x_GlobalMipBias.x;
  let x_4060 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4056.xz, x_4059);
  u_xlat80 = x_4060.x;
  let x_4068 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat44 = vec3f(x_4068.x, u_xlat44.y, x_4068.y);
  let x_4078 = ((u_xlat43.xz * vec2f(1.12999999523162841797f)) + u_xlat44.xz);
  u_xlat43 = vec3f(x_4078.x, u_xlat43.y, x_4078.y);
  let x_4084 = u_xlat43;
  let x_4087 = x_81.x_GlobalMipBias.x;
  let x_4088 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4084.xz, x_4087);
  u_xlat43.x = x_4088.x;
  let x_4097 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat44 = vec3f(x_4097.x, u_xlat44.y, x_4097.y);
  u_xlat119 = dot(u_xlat44.xz, u_xlat44.xz);
  u_xlat119 = sqrt(u_xlat119);
  u_xlat44.x = (u_xlat119 + -(x_142.x_BoilRadius));
  u_xlat120 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat44.x);
  u_xlat120 = (u_xlat120 / u_xlat48.x);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat120 = (u_xlat120 * -1.44269502162933349609f);
  u_xlat120 = exp2(u_xlat120);
  u_xlat45.x = max(u_xlat119, 0.15000000596046447754f);
  u_xlat45.x = (u_xlat45.x * 6.66666650772094726562f);
  u_xlat45.x = inverseSqrt(u_xlat45.x);
  let x_4149 = (u_xlat45.xx * u_xlat49.xz);
  u_xlat49 = vec3f(x_4149.x, u_xlat49.y, x_4149.y);
  u_xlat121 = (u_xlat124 * u_xlat49.x);
  u_xlat121 = (u_xlat11.x * u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat121 = ((u_xlat5.x * u_xlat44.x) + -(u_xlat87));
  u_xlat121 = cos(u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat120 = select(0.0f, u_xlat120, u_xlatb123);
  let x_4184 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4184.x, x_4184.y)) * u_xlat12.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat89);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat126 * u_xlat49.z);
  u_xlat121 = (u_xlat14.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4225 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat52.xy));
  u_xlat48 = vec3f(x_4225.x, u_xlat48.y, x_4225.y);
  let x_4230 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4230.x, u_xlat48.y, x_4230.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat88 * u_xlat11.x);
  u_xlat121 = (u_xlat17.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.y);
  let x_4278 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4278.x, x_4278.y)) * u_xlat53.xz) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat55);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat128 * u_xlat11.y);
  u_xlat121 = (u_xlat18.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4319 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat56.xy));
  u_xlat48 = vec3f(x_4319.x, u_xlat48.y, x_4319.y);
  let x_4324 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4324.x, u_xlat48.y, x_4324.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat92)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat131 * u_xlat11.x);
  u_xlat121 = (u_xlat20.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.y);
  let x_4371 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4371.x, x_4371.y)) * u_xlat19.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat59.xz);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat47.x * u_xlat11.y);
  u_xlat121 = (u_xlat21.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  u_xlat47 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat95));
  u_xlat47 = cos(u_xlat47);
  u_xlat5.x = ((u_xlat121 * u_xlat47.x) + u_xlat120);
  if (u_xlatb58.x) {
    x_4425 = u_xlat5.x;
  } else {
    x_4425 = u_xlat120;
  }
  u_xlat5.x = x_4425;
  u_xlat44.x = (u_xlat45.x * u_xlat9.x);
  u_xlat44.x = (u_xlat86 * u_xlat44.x);
  u_xlat44.x = (u_xlat22.x * u_xlat44.x);
  u_xlat44.x = (u_xlat44.x * u_xlat85.y);
  u_xlat44.x = ((u_xlat44.x * u_xlat47.y) + u_xlat5.x);
  if (u_xlatb58.y) {
    x_4468 = u_xlat44.x;
  } else {
    x_4468 = u_xlat5.x;
  }
  u_xlat5.x = x_4468;
  u_xlat44.x = (u_xlat119 / u_xlat122);
  u_xlat44.x = (-(u_xlat44.x) + 1.0f);
  u_xlat44.x = max(u_xlat44.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat44.x * u_xlat5.x);
  u_xlat119 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat119);
  u_xlat119 = (u_xlat99.x * u_xlat119);
  u_xlat119 = clamp(u_xlat119, 0.0f, 1.0f);
  u_xlat44.x = ((u_xlat119 * -2.0f) + 3.0f);
  u_xlat119 = (u_xlat119 * u_xlat119);
  u_xlat119 = (u_xlat119 * u_xlat44.x);
  u_xlat5.x = (u_xlat119 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat80 = min(u_xlat80, u_xlat43.x);
  u_xlat80 = (u_xlat80 * 2.5f);
  u_xlat80 = (u_xlat80 * x_142.x_CausticsStrength);
  let x_4553 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat43 = vec3f(x_4553.x, u_xlat43.y, x_4553.y);
  u_xlat2.x = min(u_xlat43.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat80 = exp2(u_xlat43.z);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_4584 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_4584.xy, u_xlat5.z, x_4584.z);
  let x_4591 = (vec3f(u_xlat40) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4591.xy, u_xlat5.z, x_4591.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_4607 = ((u_xlat5.xyw * u_xlat2.xxx) + x_3998);
  u_xlat5 = vec4f(x_4607.xy, u_xlat5.z, x_4607.z);
  let x_4613 = (u_xlat5.xyw * u_xlat60);
  u_xlat5 = vec4f(x_4613.xy, u_xlat5.z, x_4613.z);
  u_xlat9 = vec4f(((vec3f(u_xlat115) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat115 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat48 = (vec3f(u_xlat40) * x_81.x_MainLightColor.xyz);
  u_xlat40 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat40 = clamp(u_xlat40, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat40) * u_xlat48);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25.xyz);
  u_xlat115 = (u_xlat115 * 0.69999998807907104492f);
  u_xlat115 = min(u_xlat115, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27.xyz) + -(u_xlat26.xyz))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat115) * u_xlat12.xyz) + u_xlat26.xyz)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_4719 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_4719.xy, u_xlat5.z, x_4719.z);
  u_xlat115 = dot(u_xlat3, u_xlat38);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat40 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat80 = (-(x_142.x_F0) + 1.0f);
  u_xlat44.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat80);
  u_xlat115 = (-(u_xlat115) + 1.0f);
  u_xlat120 = (u_xlat115 * u_xlat115);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat115 = (u_xlat115 * u_xlat120);
  u_xlat115 = ((u_xlat44.x * u_xlat115) + u_xlat40);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat40 = dot(-(u_xlat38), u_xlat3);
  u_xlat40 = (u_xlat40 + u_xlat40);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat40))) + -(u_xlat38))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat40 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat40 = (u_xlat40 * x_142.x_Roughness);
  u_xlat40 = (u_xlat40 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu82 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu82.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu82.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat39.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_4861 = u_xlat39.x;
  } else {
    x_4861 = u_xlat1.x;
  }
  u_xlat0.x = x_4861;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati39 = (bitcast<i32>(u_xlatu82.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati39))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_4923 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_4930 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_4931 = vec2i(x_4923, x_4930);
  u_xlati1 = vec3i(x_4931.x, u_xlati1.y, x_4931.y);
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_4955 = ~(u_xlati1.xz);
  u_xlati45 = vec3i(x_4955.x, u_xlati45.y, x_4955.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45.xx) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati44) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati44.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati45.z) & bitcast<u32>(u_xlati44.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb44 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati87 = 0i;
  u_xlatu125 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat77.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu45 = (u_xlatu125 >> 16u);
    u_xlati121 = u_xlati87;
    u_xlatu122 = u_xlatu125;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb47 = (u_xlati121 == 0i);
      u_xlatu126 = (u_xlatu122 & 65535u);
      u_xlatb126 = (u_xlatu45 >= u_xlatu126);
      u_xlatb47 = (u_xlatb47 & u_xlatb126);
      if (!(u_xlatb47)) {
        break;
      }
      param_6 = u_xlatu122;
      param_7 = 5i;
      param_8 = 11i;
      let x_5069 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu47 = x_5069;
      u_xlatu13 = (vec4u(u_xlatu47) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_5090 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_5097 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_5104 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_5111 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_5090, x_5097, x_5104, x_5111);
      u_xlati90 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_5120.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_5120.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_5152 = bitcast<vec2i>((bitcast<vec2u>(u_xlati90) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_5152.x, u_xlati14.y, x_5152.y);
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati51 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati51) | bitcast<u32>(u_xlati13.x)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu122) & 31i)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati47 = (bitcast<i32>(u_xlatu47) << bitcast<u32>(5i));
      u_xlatu47 = (u_xlatu45 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati47)))));
      u_xlatu47 = min(u_xlatu47, 31u);
      u_xlatu47 = (bitcast<u32>(-(bitcast<i32>(u_xlatu47))) + 31u);
      u_xlatu47 = (4294967295u >> (u_xlatu47 & 31u));
      u_xlati121 = bitcast<i32>((u_xlatu47 & bitcast<u32>(u_xlati126)));
      u_xlati47 = (bitcast<i32>(u_xlatu122) + 32i);
      u_xlatu122 = (bitcast<u32>(u_xlati47) & 4294967264u);
    }
    u_xlatu125 = u_xlatu122;
    u_xlatb45 = (u_xlati121 != 0i);
    u_xlatb47 = (u_xlat77.x < 0.99000000953674316406f);
    u_xlatb45 = (u_xlatb45 & u_xlatb47);
    if (!(u_xlatb45)) {
      break;
    }
    u_xlati45.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati121)));
    u_xlati47 = (1i << bitcast<u32>((u_xlati45.x & 31i)));
    u_xlati87 = bitcast<i32>((bitcast<u32>(u_xlati121) ^ bitcast<u32>(u_xlati47)));
    u_xlati47 = (bitcast<i32>(u_xlatu125) + -32i);
    u_xlati47 = bitcast<i32>((bitcast<u32>(u_xlati47) & 65504u));
    u_xlati45.x = (u_xlati45.x + u_xlati47);
    u_xlati45.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati45.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].www)).xyz, u_xlat13.w);
    u_xlat47.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat47.x = min(u_xlat47.x, u_xlat13.x);
    u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
    u_xlat126 = (-(u_xlat77.x) + 1.0f);
    u_xlat47.x = min(u_xlat47.x, u_xlat126);
    u_xlatb126 = (0.0f < x_5355.urp_ReflProbes_ProbePosition[u_xlati45.x].w);
    if (u_xlatb44.x) {
      x_5421 = x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].x;
    } else {
      x_5421 = x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].x;
    }
    u_xlat13.x = x_5421;
    if (u_xlatb44.y) {
      x_5437 = x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].y;
    } else {
      x_5437 = x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].y;
    }
    u_xlat13.y = x_5437;
    if (u_xlatb44.z) {
      x_5453 = x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].z;
    } else {
      x_5453 = x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].z;
    }
    u_xlat13.z = x_5453;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat51 = (vs_TEXCOORD0 + -(x_5355.urp_ReflProbes_ProbePosition[u_xlati45.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat51)).xyz, u_xlat13.w);
    if (u_xlatb126) {
      x_5512 = u_xlat13.xyz;
    } else {
      x_5512 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_5512.xyz, u_xlat13.w);
    u_xlatu126 = u32(abs(x_5355.urp_ReflProbes_ProbePosition[u_xlati45.x].w));
    u_xlatu126 = (u_xlatu126 + 4294967295u);
    u_xlat126 = f32(u_xlatu126);
    u_xlat126 = min(u_xlat40, u_xlat126);
    u_xlat127 = dot(abs(u_xlat13.xyz), x_3998);
    u_xlat127 = max(u_xlat127, 0.00000099999999747524f);
    u_xlat127 = (1.0f / u_xlat127);
    u_xlat14 = (vec3f(u_xlat127) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb52 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb52.x) {
      x_5568 = u_xlat14.x;
    } else {
      x_5568 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_5568;
    if (u_xlatb52.y) {
      x_5581 = u_xlat14.x;
    } else {
      x_5581 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_5581;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat127)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat89.x = floor(u_xlat126);
    u_xlat89.y = (u_xlat89.x + 1.0f);
    u_xlat126 = (u_xlat126 + -(u_xlat89.x));
    u_xlatu89 = vec2u(u_xlat89);
    u_xlati89 = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.x));
    u_xlati45.x = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.y));
    u_xlat89 = ((u_xlat13.xy * x_5355.urp_ReflProbes_MipScaleOffset[u_xlati89].xy) + x_5355.urp_ReflProbes_MipScaleOffset[u_xlati89].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat89, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_5355.urp_ReflProbes_MipScaleOffset[u_xlati45.x].xy) + x_5355.urp_ReflProbes_MipScaleOffset[u_xlati45.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat126) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat47.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat77.x = (u_xlat77.x + u_xlat47.x);
  }
  u_xlatb0 = (u_xlat77.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat40);
    u_xlat0.x = (-(u_xlat77.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat115) * u_xlat1) + u_xlat5.xyw);
  let x_5823 = (u_xlat38 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_5823.xy, u_xlat5.z, x_5823.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_5845 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_5845.xy, u_xlat5.z, x_5845.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat115 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat115 = max(u_xlat115, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat115 * u_xlat115);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat115 = ((u_xlat115 * u_xlat115) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat115) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat38.x = dot(u_xlat5.xyw, u_xlat38);
  u_xlat38.x = clamp(u_xlat38.x, 0.0f, 1.0f);
  u_xlat38.x = (-(u_xlat38.x) + 1.0f);
  u_xlat76 = (u_xlat38.x * u_xlat38.x);
  u_xlat76 = (u_xlat76 * u_xlat76);
  u_xlat38.x = (u_xlat76 * u_xlat38.x);
  u_xlat38.x = ((u_xlat80 * u_xlat38.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat38.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat48);
  let x_5964 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_5964.x, x_5964.y, x_5964.z));
  u_xlat114 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat114 = (u_xlat114 * 4.0f);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat114)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat77 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat77 = (-(u_xlat77) + u_xlat1.xy);
  let x_6007 = u_xlat77;
  let x_6009 = x_81.x_GlobalMipBias.x;
  let x_6010 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6007, x_6009);
  u_xlat114 = x_6010.x;
  u_xlat77 = (u_xlat42.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat77) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_6035 = u_xlat1;
  let x_6038 = x_81.x_GlobalMipBias.x;
  let x_6039 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6035.xy, x_6038);
  u_xlat1.x = x_6039.x;
  u_xlat1.x = (u_xlat83.x * u_xlat1.x);
  u_xlat114 = ((u_xlat114 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat39.x = (-(u_xlat84.x) + 1.0f);
  u_xlat1.x = (u_xlat39.x * u_xlat1.x);
  u_xlat39 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_6089 = u_xlat39;
  let x_6091 = x_81.x_GlobalMipBias.x;
  let x_6092 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6089, x_6091);
  u_xlat39.x = x_6092.y;
  u_xlat77.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat77.x = (u_xlat77.x * u_xlat77.x);
  u_xlat77.x = (u_xlat77.x * -1.44269502162933349609f);
  u_xlat77.x = exp2(u_xlat77.x);
  u_xlat77.x = ((u_xlat84.x * 0.34999999403953552246f) + u_xlat77.x);
  u_xlat39.x = (u_xlat77.x * u_xlat39.x);
  u_xlat39.x = (u_xlat81 * u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * 0.89999997615814208984f);
  u_xlat114 = ((u_xlat114 * u_xlat1.x) + u_xlat39.x);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat48 * vec3f(0.69999998807907104492f)) + u_xlat25.xyz);
  u_xlat114 = (u_xlat114 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  u_xlat0 = ((vec3f(u_xlat114) * u_xlat1) + u_xlat0);
  SV_Target0.w = (u_xlat117 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat114 = exp2(-(vs_TEXCOORD1));
  u_xlat114 = min(u_xlat114, 1.0f);
  u_xlat0 = (u_xlat0 + -(x_81.unity_FogColor.xyz));
  SV_Target0 = vec4f((((vec3f(u_xlat114) * u_xlat0) + x_81.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

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
  vs_TEXCOORD1 = 0.0f;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(288) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(352) */
  x_ScreenSize : vec4f,
  /* @offset(368) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(384) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_B612SunDirection : vec4f,
  /* @offset(416) */
  x_B612WaterShallow : vec4f,
  /* @offset(432) */
  x_B612WaterDeep : vec4f,
  /* @offset(448) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2589 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_4081 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_5067 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_5244 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_5479 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_743 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2883 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_2948 = vec2f(0.15999999642372131348f);

const x_3020 = vec3f(-2.5f, -0.5f, 1.5f);

const x_3419 = vec2f(0.08163200318813323975f);

const x_3438 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_3441 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_3448 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_3486 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_4112 = vec3f(-1.0f);

const x_4122 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat38 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat79 : vec2f;
  var u_xlat115 : f32;
  var u_xlat4 : vec4f;
  var u_xlat80 : f32;
  var u_xlat118 : f32;
  var u_xlatb42 : bool;
  var x_281 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat43 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat82 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat83 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat84 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat85 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb123 : bool;
  var u_xlat11 : vec3f;
  var u_xlat48 : vec3f;
  var u_xlat86 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat49 : vec3f;
  var u_xlat122 : f32;
  var u_xlat124 : f32;
  var u_xlat87 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat89 : vec2f;
  var u_xlat52 : vec3f;
  var u_xlat126 : f32;
  var u_xlat88 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat129 : f32;
  var u_xlat128 : f32;
  var u_xlat53 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat55 : vec2f;
  var u_xlat56 : vec3f;
  var u_xlat92 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat131 : f32;
  var u_xlat132 : f32;
  var u_xlatb58 : vec2<bool>;
  var u_xlat59 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat47 : vec2f;
  var u_xlat95 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat60 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat99 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat81 : f32;
  var u_xlat134 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat41 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat45 : vec3f;
  var u_xlat117 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb115 : bool;
  var x_2476 : vec3f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec4f;
  var u_xlat27 : vec4f;
  var u_xlatb24 : vec4<bool>;
  var u_xlat40 : f32;
  var u_xlatu40 : u32;
  var u_xlati40 : i32;
  var u_xlatb40 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb80 : bool;
  var u_xlat44 : vec3f;
  var u_xlat102 : vec2f;
  var u_xlat28 : vec4f;
  var u_xlat29 : vec4f;
  var u_xlat30 : vec4f;
  var u_xlat31 : vec4f;
  var u_xlat32 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat119 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat33 : vec4f;
  var u_xlat63 : vec2f;
  var u_xlat34 : vec2f;
  var u_xlat103 : vec2f;
  var u_xlat35 : vec4f;
  var u_xlat36 : vec4f;
  var u_xlat37 : vec4f;
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
  var u_xlatb43 : bool;
  var u_xlat120 : f32;
  var u_xlat121 : f32;
  var x_4549 : f32;
  var x_4592 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu82 : vec2u;
  var u_xlati6 : i32;
  var u_xlat39 : vec2f;
  var u_xlat0 : vec3f;
  var x_4985 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati39 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati44 : vec2i;
  var u_xlati45 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb44 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati87 : i32;
  var u_xlatu125 : u32;
  var u_xlat77 : vec2f;
  var u_xlatu45 : u32;
  var u_xlati121 : i32;
  var u_xlatu122 : u32;
  var u_xlatb47 : bool;
  var u_xlatu126 : u32;
  var u_xlatb126 : bool;
  var u_xlatu47 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati90 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati126 : i32;
  var u_xlati51 : i32;
  var u_xlati47 : i32;
  var u_xlatb45 : bool;
  var x_5545 : f32;
  var x_5561 : f32;
  var x_5577 : f32;
  var u_xlat51 : vec3f;
  var x_5636 : vec3f;
  var u_xlat127 : f32;
  var u_xlatb52 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_5692 : f32;
  var x_5705 : f32;
  var u_xlatu89 : vec2u;
  var u_xlati89 : i32;
  var u_xlat76 : f32;
  var u_xlat114 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat38 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat38, u_xlat38);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat38 = (u_xlat38 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat38;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat38 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat79 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat115 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat115, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat80 = max(u_xlat80, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat80))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat79.yx + u_xlat79.yx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat79, u_xlat79);
  u_xlat118 = max(u_xlat80, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat118))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb42 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb42) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat42 = vec3f(x_314.x, u_xlat42.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat43 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat82 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat82) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat83 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat82.x * 4.0f);
  u_xlat8 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat42 = vec3f(x_405.x, u_xlat42.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat84 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat84 = (u_xlat84 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat84;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat84 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat85 = (u_xlat42.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat85 = (u_xlat85 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat85));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat83.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat84 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat84 = max(vec2f(u_xlat115), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat84.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat84.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat85.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat85.x = sin(u_xlat85.x);
  u_xlat85.x = (u_xlat85.x * 43758.546875f);
  u_xlat85.x = fract(u_xlat85.x);
  u_xlat85.x = ((u_xlat85.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat85.x = (u_xlat85.x / u_xlat9.y);
  u_xlat85.x = (-(u_xlat85.x) + x_81.x_Time.y);
  u_xlatb123 = (u_xlat85.x >= 0.0f);
  u_xlat10.x = (u_xlat115 + -(x_142.x_BoilRadius));
  let x_744 = (u_xlat85.xx * x_743);
  u_xlat11 = vec3f(x_744.x, u_xlat11.y, x_744.y);
  u_xlat48.x = ((u_xlat85.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat86 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat10.x);
  u_xlat86 = (u_xlat86 / u_xlat48.x);
  u_xlat86 = (u_xlat86 * u_xlat86);
  u_xlat86 = (u_xlat86 * -1.44269502162933349609f);
  u_xlat86 = exp2(u_xlat86);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat49 = vec3f(x_804.x, u_xlat49.y, x_804.y);
  u_xlat122 = (u_xlat84.y * 6.66666650772094726562f);
  u_xlat122 = inverseSqrt(u_xlat122);
  let x_818 = (vec2f(u_xlat122) * u_xlat49.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat124 = exp2(u_xlat11.z);
  u_xlat87 = (u_xlat124 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat87 = (u_xlat11.x * u_xlat87);
  u_xlat86 = (u_xlat86 * u_xlat87);
  u_xlat87 = (u_xlat84.x * u_xlat85.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat87));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat86 = (u_xlat86 * u_xlat12.x);
  u_xlat86 = select(0.0f, u_xlat86, u_xlatb123);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_743);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat89 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat52 = vec3f(x_931.x, u_xlat52.y, x_931.y);
  let x_937 = (u_xlat52.xz / u_xlat89);
  u_xlat52 = vec3f(x_937.x, u_xlat52.y, x_937.y);
  let x_944 = (u_xlat52.xz * u_xlat52.xz);
  u_xlat52 = vec3f(x_944.x, u_xlat52.y, x_944.y);
  let x_950 = (u_xlat52.xz * x_949);
  u_xlat52 = vec3f(x_950.x, u_xlat52.y, x_950.y);
  let x_955 = exp2(u_xlat52.xz);
  u_xlat52 = vec3f(x_955.x, u_xlat52.y, x_955.y);
  u_xlat126 = exp2(u_xlat14.z);
  u_xlat88 = (u_xlat126 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat88 = (u_xlat88 * u_xlat14.x);
  u_xlat88 = (u_xlat88 * u_xlat52.x);
  u_xlat52 = vec3f(((u_xlat84.xx * u_xlat12.xy)).xy, u_xlat52.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat52.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat88 = ((u_xlat88 * u_xlat15.x) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat88, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat122) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_743);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat88 = exp2(u_xlat17.z);
  u_xlat129 = (u_xlat88 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat129 = (u_xlat129 * u_xlat17.x);
  u_xlat128 = (u_xlat52.z * u_xlat129);
  u_xlat128 = ((u_xlat128 * u_xlat15.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat128, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat53 = vec3f(x_1094.x, u_xlat53.y, x_1094.y);
  let x_1101 = (u_xlat53.xz / u_xlat9.yy);
  u_xlat53 = vec3f(x_1101.x, u_xlat53.y, x_1101.y);
  let x_1110 = (-(u_xlat53.xz) + x_81.x_Time.yy);
  u_xlat53 = vec3f(x_1110.x, u_xlat53.y, x_1110.y);
  u_xlatb16 = ((u_xlat53.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat53.xx * x_743);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat55 = ((u_xlat53.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat53.xz) + u_xlat10.xx);
  u_xlat56 = vec3f(x_1144.x, u_xlat56.y, x_1144.y);
  let x_1150 = (u_xlat56.xz / u_xlat55);
  u_xlat56 = vec3f(x_1150.x, u_xlat56.y, x_1150.y);
  let x_1157 = (u_xlat56.xz * u_xlat56.xz);
  u_xlat56 = vec3f(x_1157.x, u_xlat56.y, x_1157.y);
  let x_1162 = (u_xlat56.xz * x_949);
  u_xlat56 = vec3f(x_1162.x, u_xlat56.y, x_1162.y);
  let x_1167 = exp2(u_xlat56.xz);
  u_xlat56 = vec3f(x_1167.x, u_xlat56.y, x_1167.y);
  u_xlat128 = exp2(u_xlat18.z);
  u_xlat92.x = (u_xlat128 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat92.x = (u_xlat92.x * u_xlat18.x);
  u_xlat92.x = (u_xlat92.x * u_xlat56.x);
  u_xlat56 = vec3f(((u_xlat84.xx * u_xlat53.xz)).xy, u_xlat56.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat56.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat92.x = ((u_xlat92.x * u_xlat19.x) + u_xlat86);
  if (u_xlatb16.x) {
    x_1232 = u_xlat92.x;
  } else {
    x_1232 = u_xlat86;
  }
  u_xlat86 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat92 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat122) * u_xlat92);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat53.zz * x_743);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat131 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat131 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat132 = (u_xlat56.z * u_xlat19.x);
  u_xlat132 = ((u_xlat132 * u_xlat19.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat132, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb58 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_743);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat59 = vec3f(x_1350.x, u_xlat59.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat59.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat47.x = exp2(u_xlat21.z);
  u_xlat132 = (u_xlat47.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat132 = (u_xlat132 * u_xlat21.x);
  u_xlat132 = (u_xlat132 * u_xlat22.x);
  u_xlat95 = (u_xlat84.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat95));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat84.x = ((u_xlat132 * u_xlat22.x) + u_xlat86);
  if (u_xlatb58.x) {
    x_1450 = u_xlat84.x;
  } else {
    x_1450 = u_xlat86;
  }
  u_xlat84.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat122 = (u_xlat122 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_743);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat86 = exp2(u_xlat22.w);
  u_xlat122 = (u_xlat122 * u_xlat86);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat122 = (u_xlat122 * u_xlat22.x);
  u_xlat122 = (u_xlat122 * u_xlat22.y);
  u_xlat122 = ((u_xlat122 * u_xlat22.z) + u_xlat84.x);
  if (u_xlatb58.y) {
    x_1524 = u_xlat122;
  } else {
    x_1524 = u_xlat84.x;
  }
  u_xlat84.x = x_1524;
  u_xlat122 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat132 = (u_xlat115 / u_xlat122);
  u_xlat132 = (-(u_xlat132) + 1.0f);
  u_xlat132 = max(u_xlat132, 0.0f);
  u_xlat84.x = (u_xlat84.x * x_142.x_RingStrength);
  u_xlat84.x = (u_xlat132 * u_xlat84.x);
  u_xlat60 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat115))).xy, u_xlat23.zw);
  u_xlat99 = (x_376 / u_xlat60.xy);
  u_xlat23 = vec4f(((u_xlat99 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat132 = (u_xlat23.x * u_xlat24.x);
  u_xlat84.x = (u_xlat84.x * u_xlat132);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat84.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat84.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat81 = sin(u_xlat43.y);
  u_xlat81 = (u_xlat81 * 1.70000004768371582031f);
  u_xlat81 = ((u_xlat84.x * 6.28318548202514648438f) + u_xlat81);
  u_xlat81 = sin(u_xlat81);
  u_xlat81 = ((u_xlat81 * 0.25f) + 0.75f);
  u_xlat84.x = (u_xlat115 * -(u_xlat115));
  u_xlat132 = (u_xlat60.x * u_xlat60.x);
  u_xlat84.x = (u_xlat84.x / u_xlat132);
  u_xlat84.x = (u_xlat84.x * 1.44269502162933349609f);
  u_xlat84.x = exp2(u_xlat84.x);
  u_xlat134 = (u_xlat115 + u_xlat115);
  u_xlat132 = (u_xlat134 / u_xlat132);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat132));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat84.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat60 = vec3f(((u_xlat60.xx * u_xlat23.xw)).xy, u_xlat60.z);
  let x_1734 = ((u_xlat60.xy * vec2f(u_xlat81)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat84.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat43.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat43 = vec3f(x_1763.x, u_xlat43.y, x_1763.y);
  let x_1769 = u_xlat43;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_1786.x, u_xlat43.y, x_1786.y);
  u_xlat60 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat60.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat60.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat60.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat132 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat115 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat115);
  u_xlat132 = (1.0f / u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat132 = ((u_xlat115 * -2.0f) + 3.0f);
  u_xlat115 = (u_xlat115 * u_xlat115);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat84.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat43.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat115)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat115 = sqrt(u_xlat80);
  u_xlat60 = (vec3f(u_xlat115) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat60 = (u_xlat60 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat60 = clamp(u_xlat60, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat60 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat60 = (u_xlat60 * u_xlat60);
  u_xlat80 = (u_xlat60.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat60.xz) + x_376);
  u_xlat43 = vec3f(x_1932.x, u_xlat43.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat82.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat82.x = dot(u_xlat82.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat82.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat43.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat43.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat80 * u_xlat43.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat43 = vec3f(x_2080.x, u_xlat43.y, x_2080.y);
  u_xlat41 = dot(u_xlat79.yx, u_xlat43.xz);
  u_xlat41 = (abs(u_xlat41) * 4.0f);
  u_xlat41 = min(u_xlat41, 1.0f);
  u_xlat115 = max(u_xlat115, 0.00100000004749745131f);
  u_xlat79 = (-(u_xlat79) / vec2f(u_xlat115));
  let x_2105 = (u_xlat82.yy * u_xlat79.yx);
  u_xlat43 = vec3f(x_2105.x, u_xlat43.y, x_2105.y);
  let x_2115 = ((-(u_xlat43.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat43 = vec3f(x_2115.x, u_xlat43.y, x_2115.y);
  let x_2122 = (u_xlat43.xz * vec2f(2.38095235824584960938f));
  u_xlat43 = vec3f(x_2122.x, u_xlat43.y, x_2122.y);
  u_xlat79 = (u_xlat6.yy * u_xlat79);
  u_xlat79 = ((-(u_xlat79) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat79 = ((u_xlat79 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat43;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_2162.x, u_xlat43.y, x_2162.y);
  let x_2168 = u_xlat79;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat79 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat79 = (u_xlat83.yy * u_xlat79);
  u_xlat79 = ((u_xlat43.xz * u_xlat7.yy) + u_xlat79);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat79 = (u_xlat79 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat79);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat115 = ((u_xlat41 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat115)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat115 = dot(u_xlat3, u_xlat3);
  u_xlat115 = inverseSqrt(u_xlat115);
  u_xlat3 = (vec3f(u_xlat115) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat115 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat115) + 1.0f);
  u_xlat115 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat115 = (1.0f / u_xlat115);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat43 = vec3f(x_2286.x, u_xlat43.y, x_2286.y);
  let x_2294 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2294.x, u_xlat43.y, x_2294.y);
  let x_2302 = (u_xlat43.xz * x_81.x_ScreenSize.xy);
  u_xlat43 = vec3f(x_2302.x, u_xlat43.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat43.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat43 = vec3f(x_2331.x, u_xlat43.y, x_2331.y);
  let x_2341 = (-(u_xlat43.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat45 = vec3f(x_2341.x, u_xlat45.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat43.xx) + u_xlat45.xz);
  u_xlat43 = vec3f(x_2352.x, u_xlat43.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat43.xz);
  u_xlat43 = vec3f(x_2363.x, u_xlat43.y, x_2363.y);
  let x_2372 = (u_xlat43.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat43 = vec3f(x_2372.x, u_xlat43.y, x_2372.y);
  u_xlat117 = (u_xlat43.x / u_xlat43.z);
  u_xlat117 = (-(u_xlat117) + vs_TEXCOORD0.y);
  u_xlat117 = max(u_xlat117, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat43 = vec3f(x_2399.x, u_xlat43.y, x_2399.y);
  u_xlat80 = (u_xlat117 * 4.0f);
  u_xlat80 = min(u_xlat80, 1.0f);
  u_xlat24 = vec4f((((u_xlat43.xz * vec2f(u_xlat80)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb115 = (u_xlat2.x < u_xlat115);
  if (u_xlatb115) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat60 = x_2476;
  u_xlat2 = vec4f((((u_xlat60.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat60.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat115 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat115 = min(u_xlat115, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat43 = vec3f(x_2555.x, u_xlat43.y, x_2555.y);
  let x_2562 = min(u_xlat43.xz, u_xlat60.xy);
  u_xlat43 = vec3f(x_2562.x, u_xlat43.y, x_2562.y);
  let x_2570 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2570.x, u_xlat43.y, x_2570.y);
  let x_2578 = u_xlat43;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat60 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat24.w);
  u_xlat25 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat25.w);
  u_xlat26 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat26.w);
  u_xlat27 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat27.w);
  u_xlat24.x = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat24.y = dot(u_xlat25.xyz, u_xlat25.xyz);
  u_xlat24.z = dot(u_xlat26.xyz, u_xlat26.xyz);
  u_xlat24.w = dot(u_xlat27.xyz, u_xlat27.xyz);
  u_xlatb24 = (u_xlat24 < x_2589.x_CascadeShadowSplitSphereRadii);
  u_xlat25.x = select(0.0f, 1.0f, u_xlatb24.x);
  u_xlat25.y = select(0.0f, 1.0f, u_xlatb24.y);
  u_xlat25.z = select(0.0f, 1.0f, u_xlatb24.z);
  u_xlat25.w = select(0.0f, 1.0f, u_xlatb24.w);
  u_xlat24.x = select(-0.0f, -1.0f, u_xlatb24.x);
  u_xlat24.y = select(-0.0f, -1.0f, u_xlatb24.y);
  u_xlat24.z = select(-0.0f, -1.0f, u_xlatb24.z);
  u_xlat24 = vec4f(((u_xlat24.xyz + u_xlat25.yzw)).xyz, u_xlat24.w);
  u_xlat25 = vec4f(u_xlat25.x, max(u_xlat24.xyz, vec3f()).xyz);
  u_xlat40 = dot(u_xlat25, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat40 = (-(u_xlat40) + 4.0f);
  u_xlatu40 = u32(u_xlat40);
  u_xlati40 = (bitcast<i32>(u_xlatu40) << bitcast<u32>(2i));
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati40 + 1i)].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati40].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati40 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati40 + 3i)].xyz)).xyz, u_xlat24.w);
  u_xlatb40 = (0.0f < x_2589.x_MainLightShadowParams.y);
  if (u_xlatb40) {
    u_xlatb40 = (x_2589.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb40) {
      u_xlat25 = (u_xlat24.xyxy + x_2589.x_MainLightShadowOffset0);
      let x_2775 = u_xlat25.xy;
      txVec0 = vec3f(x_2775.x, x_2775.y, u_xlat24.z);
      u_xlat26.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_2795 = u_xlat25.zw;
      txVec1 = vec3f(x_2795.x, x_2795.y, u_xlat24.z);
      u_xlat26.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat25 = (u_xlat24.xyxy + x_2589.x_MainLightShadowOffset1);
      let x_2815 = u_xlat25.xy;
      txVec2 = vec3f(x_2815.x, x_2815.y, u_xlat24.z);
      u_xlat26.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_2830 = u_xlat25.zw;
      txVec3 = vec3f(x_2830.x, x_2830.y, u_xlat24.z);
      u_xlat26.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat40 = dot(u_xlat26, vec4f(0.25f));
    } else {
      u_xlatb80 = (x_2589.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb80) {
        let x_2860 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_2860.x, u_xlat43.y, x_2860.y);
        let x_2865 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_2865.x, u_xlat43.y, x_2865.y);
        let x_2878 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_2878.x, u_xlat44.y, x_2878.y);
        u_xlat25 = (u_xlat44.xxzz + x_2883);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_2892 = (u_xlat26.yw * x_914);
        u_xlat45 = vec3f(x_2892.x, u_xlat45.y, x_2892.y);
        let x_2901 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat25 = vec4f(x_2901.x, u_xlat25.y, x_2901.y, u_xlat25.w);
        u_xlat26 = vec4f(((-(u_xlat44.xz) + x_376)).xy, u_xlat26.zw);
        u_xlat102 = min(u_xlat44.xz, vec2f());
        u_xlat102 = ((-(u_xlat102) * u_xlat102) + u_xlat26.xy);
        let x_2924 = max(u_xlat44.xz, vec2f());
        u_xlat44 = vec3f(x_2924.x, u_xlat44.y, x_2924.y);
        let x_2935 = ((-(u_xlat44.xz) * u_xlat44.xz) + u_xlat25.yw);
        u_xlat44 = vec3f(x_2935.x, u_xlat44.y, x_2935.y);
        u_xlat102 = (u_xlat102 + x_376);
        let x_2942 = (u_xlat44.xz + x_376);
        u_xlat44 = vec3f(x_2942.x, u_xlat44.y, x_2942.y);
        u_xlat27 = vec4f(((u_xlat25.xz * x_2948)).xy, u_xlat27.zw);
        u_xlat28 = vec4f(((u_xlat26.xy * x_2948)).xy, u_xlat28.zw);
        u_xlat26 = vec4f(((u_xlat102 * x_2948)).xy, u_xlat26.zw);
        u_xlat29 = vec4f(((u_xlat44.xz * x_2948)).xy, u_xlat29.zw);
        let x_2970 = (u_xlat25.yw * x_2948);
        u_xlat44 = vec3f(x_2970.x, u_xlat44.y, x_2970.y);
        u_xlat27.z = u_xlat26.x;
        u_xlat27.w = u_xlat44.x;
        u_xlat28.z = u_xlat29.x;
        u_xlat28.w = u_xlat45.x;
        u_xlat25 = (u_xlat27.zwxz + u_xlat28.zwxz);
        u_xlat26.z = u_xlat27.y;
        u_xlat26.w = u_xlat44.z;
        u_xlat29.z = u_xlat28.y;
        u_xlat29.w = u_xlat45.z;
        u_xlat26 = vec4f(((u_xlat26.zyw + u_xlat29.zyw)).xyz, u_xlat26.w);
        u_xlat27 = vec4f(((u_xlat28.xzw / u_xlat25.zwy)).xyz, u_xlat27.w);
        u_xlat27 = vec4f(((u_xlat27.xyz + x_3020)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat29.zyw / u_xlat26.xyz)).xyz, u_xlat28.w);
        u_xlat28 = vec4f(((u_xlat28.xyz + x_3020)).xyz, u_xlat28.w);
        u_xlat27 = vec4f(((u_xlat27.yxz * x_2589.x_MainLightShadowmapSize.xxx)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat28.xyz * x_2589.x_MainLightShadowmapSize.yyy)).xyz, u_xlat28.w);
        u_xlat27.w = u_xlat28.x;
        u_xlat29 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.ywxw);
        let x_3072 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat27.zw);
        u_xlat44 = vec3f(x_3072.x, u_xlat44.y, x_3072.y);
        u_xlat28.w = u_xlat27.y;
        let x_3079 = u_xlat28.yz;
        u_xlat27 = vec4f(u_xlat27.x, x_3079.x, u_xlat27.z, x_3079.y);
        u_xlat30 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat28 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat28.wywz);
        u_xlat27 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.xwzw);
        u_xlat31 = (u_xlat25.zwyz * u_xlat26.xxxy);
        u_xlat32 = (u_xlat25 * u_xlat26.yyzz);
        u_xlat80 = (u_xlat25.y * u_xlat26.z);
        let x_3128 = u_xlat29.xy;
        txVec4 = vec3f(x_3128.x, x_3128.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_3143 = u_xlat29.zw;
        txVec5 = vec3f(x_3143.x, x_3143.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat119 = (u_xlat119 * u_xlat31.y);
        u_xlat43.x = ((u_xlat31.x * u_xlat43.x) + u_xlat119);
        let x_3170 = u_xlat44.xz;
        txVec6 = vec3f(x_3170.x, x_3170.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat43.x = ((u_xlat31.z * u_xlat119) + u_xlat43.x);
        let x_3192 = u_xlat28.xy;
        txVec7 = vec3f(x_3192.x, x_3192.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat43.x = ((u_xlat31.w * u_xlat119) + u_xlat43.x);
        let x_3214 = u_xlat30.xy;
        txVec8 = vec3f(x_3214.x, x_3214.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat43.x = ((u_xlat32.x * u_xlat119) + u_xlat43.x);
        let x_3236 = u_xlat30.zw;
        txVec9 = vec3f(x_3236.x, x_3236.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat43.x = ((u_xlat32.y * u_xlat119) + u_xlat43.x);
        let x_3258 = u_xlat28.zw;
        txVec10 = vec3f(x_3258.x, x_3258.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat43.x = ((u_xlat32.z * u_xlat119) + u_xlat43.x);
        let x_3280 = u_xlat27.xy;
        txVec11 = vec3f(x_3280.x, x_3280.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat43.x = ((u_xlat32.w * u_xlat119) + u_xlat43.x);
        let x_3302 = u_xlat27.zw;
        txVec12 = vec3f(x_3302.x, x_3302.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat40 = ((u_xlat80 * u_xlat119) + u_xlat43.x);
      } else {
        let x_3327 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_3327.x, u_xlat43.y, x_3327.y);
        let x_3332 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_3332.x, u_xlat43.y, x_3332.y);
        let x_3344 = ((u_xlat24.xy * x_2589.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_3344.x, u_xlat44.y, x_3344.y);
        u_xlat25 = (u_xlat44.xxzz + x_2883);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_3359 = (u_xlat26.yw * vec2f(0.04081600159406661987f));
        u_xlat27 = vec4f(u_xlat27.x, x_3359.x, u_xlat27.z, x_3359.y);
        let x_3368 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat45 = vec3f(x_3368.x, u_xlat45.y, x_3368.y);
        let x_3374 = (-(u_xlat44.xz) + x_376);
        u_xlat25 = vec4f(x_3374.x, u_xlat25.y, x_3374.y, u_xlat25.w);
        u_xlat26 = vec4f(min(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3390 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.xz);
        u_xlat25 = vec4f(x_3390.x, u_xlat25.y, x_3390.y, u_xlat25.w);
        u_xlat26 = vec4f(max(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3406 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.yw);
        u_xlat25 = vec4f(u_xlat25.x, x_3406.x, u_xlat25.z, x_3406.y);
        u_xlat25 = (u_xlat25 + vec4f(2.0f));
        u_xlat26.z = (u_xlat25.y * 0.08163200318813323975f);
        u_xlat28 = vec4f(((u_xlat45.zx * x_3419)).xy, u_xlat28.zw);
        let x_3425 = (u_xlat25.xz * x_3419);
        u_xlat45 = vec3f(x_3425.x, u_xlat45.y, x_3425.y);
        u_xlat28.z = (u_xlat25.w * 0.08163200318813323975f);
        u_xlat26.x = u_xlat28.y;
        let x_3442 = ((u_xlat44.xx * x_3438) + x_3441);
        u_xlat26 = vec4f(u_xlat26.x, x_3442.x, u_xlat26.z, x_3442.y);
        let x_3449 = ((u_xlat44.xx * x_3438) + x_3448);
        u_xlat25 = vec4f(x_3449.x, u_xlat25.y, x_3449.y, u_xlat25.w);
        u_xlat25.y = u_xlat45.x;
        u_xlat25.w = u_xlat27.y;
        u_xlat26 = (u_xlat25 + u_xlat26);
        let x_3464 = ((u_xlat44.zz * x_3438) + x_3441);
        u_xlat28 = vec4f(u_xlat28.x, x_3464.x, u_xlat28.z, x_3464.y);
        let x_3470 = ((u_xlat44.zz * x_3438) + x_3448);
        u_xlat27 = vec4f(x_3470.x, u_xlat27.y, x_3470.y, u_xlat27.w);
        u_xlat27.y = u_xlat45.z;
        u_xlat28 = (u_xlat27 + u_xlat28);
        u_xlat25 = (u_xlat25 / u_xlat26);
        u_xlat25 = (u_xlat25 + x_3486);
        u_xlat27 = (u_xlat27 / u_xlat28);
        u_xlat27 = (u_xlat27 + x_3486);
        u_xlat25 = (u_xlat25.wxyz * x_2589.x_MainLightShadowmapSize.xxxx);
        u_xlat27 = (u_xlat27.xwyz * x_2589.x_MainLightShadowmapSize.yyyy);
        let x_3506 = u_xlat25.yzw;
        u_xlat29 = vec4f(x_3506.x, u_xlat29.y, x_3506.yz);
        u_xlat29.y = u_xlat27.x;
        u_xlat30 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3529 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat44 = vec3f(x_3529.x, u_xlat44.y, x_3529.y);
        u_xlat25.y = u_xlat29.y;
        u_xlat29.y = u_xlat27.z;
        u_xlat31 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3555 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat45 = vec3f(x_3555.x, u_xlat45.y, x_3555.y);
        u_xlat25.z = u_xlat29.y;
        u_xlat32 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat25.xyxz);
        u_xlat29.y = u_xlat27.w;
        u_xlat33 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        u_xlat63 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat25.w = u_xlat29.y;
        u_xlat34 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat25.xw);
        let x_3607 = u_xlat29.xzw;
        u_xlat27 = vec4f(x_3607.x, u_xlat27.y, x_3607.yz);
        u_xlat29 = ((u_xlat43.xzxz * x_2589.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat103 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat27.wy);
        u_xlat27.x = u_xlat25.x;
        let x_3640 = ((u_xlat43.xz * x_2589.x_MainLightShadowmapSize.xy) + u_xlat27.xy);
        u_xlat43 = vec3f(x_3640.x, u_xlat43.y, x_3640.y);
        u_xlat35 = (u_xlat26 * u_xlat28.xxxx);
        u_xlat36 = (u_xlat26 * u_xlat28.yyyy);
        u_xlat37 = (u_xlat26 * u_xlat28.zzzz);
        u_xlat26 = (u_xlat26 * u_xlat28.wwww);
        let x_3664 = u_xlat30.xy;
        txVec13 = vec3f(x_3664.x, x_3664.y, u_xlat24.z);
        u_xlat80 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_3678 = u_xlat30.zw;
        txVec14 = vec3f(x_3678.x, x_3678.y, u_xlat24.z);
        u_xlat132 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat132 = (u_xlat132 * u_xlat35.y);
        u_xlat80 = ((u_xlat35.x * u_xlat80) + u_xlat132);
        let x_3702 = u_xlat44.xz;
        txVec15 = vec3f(x_3702.x, x_3702.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat80 = ((u_xlat35.z * u_xlat44.x) + u_xlat80);
        let x_3724 = u_xlat32.xy;
        txVec16 = vec3f(x_3724.x, x_3724.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat80 = ((u_xlat35.w * u_xlat44.x) + u_xlat80);
        let x_3746 = u_xlat31.xy;
        txVec17 = vec3f(x_3746.x, x_3746.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat80 = ((u_xlat36.x * u_xlat44.x) + u_xlat80);
        let x_3768 = u_xlat31.zw;
        txVec18 = vec3f(x_3768.x, x_3768.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat80 = ((u_xlat36.y * u_xlat44.x) + u_xlat80);
        let x_3790 = u_xlat45.xz;
        txVec19 = vec3f(x_3790.x, x_3790.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat80 = ((u_xlat36.z * u_xlat44.x) + u_xlat80);
        let x_3812 = u_xlat32.zw;
        txVec20 = vec3f(x_3812.x, x_3812.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat80 = ((u_xlat36.w * u_xlat44.x) + u_xlat80);
        let x_3834 = u_xlat33.xy;
        txVec21 = vec3f(x_3834.x, x_3834.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat80 = ((u_xlat37.x * u_xlat44.x) + u_xlat80);
        let x_3856 = u_xlat33.zw;
        txVec22 = vec3f(x_3856.x, x_3856.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat80 = ((u_xlat37.y * u_xlat44.x) + u_xlat80);
        txVec23 = vec3f(u_xlat63.x, u_xlat63.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat80 = ((u_xlat37.z * u_xlat44.x) + u_xlat80);
        txVec24 = vec3f(u_xlat34.x, u_xlat34.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat80 = ((u_xlat37.w * u_xlat44.x) + u_xlat80);
        let x_3920 = u_xlat29.xy;
        txVec25 = vec3f(x_3920.x, x_3920.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat80 = ((u_xlat26.x * u_xlat44.x) + u_xlat80);
        let x_3942 = u_xlat29.zw;
        txVec26 = vec3f(x_3942.x, x_3942.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat80 = ((u_xlat26.y * u_xlat44.x) + u_xlat80);
        txVec27 = vec3f(u_xlat103.x, u_xlat103.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat80 = ((u_xlat26.z * u_xlat44.x) + u_xlat80);
        let x_3985 = u_xlat43.xz;
        txVec28 = vec3f(x_3985.x, x_3985.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat40 = ((u_xlat26.w * u_xlat43.x) + u_xlat80);
      }
    }
  } else {
    let x_4008 = u_xlat24.xy;
    txVec29 = vec3f(x_4008.x, x_4008.y, u_xlat24.z);
    u_xlat40 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat80 = (-(x_2589.x_MainLightShadowParams.x) + 1.0f);
  u_xlat40 = ((u_xlat40 * x_2589.x_MainLightShadowParams.x) + u_xlat80);
  u_xlatb80 = (0.0f >= u_xlat24.z);
  u_xlatb43 = (u_xlat24.z >= 1.0f);
  u_xlatb80 = (u_xlatb80 | u_xlatb43);
  u_xlat40 = select(u_xlat40, 1.0f, u_xlatb80);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat80 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat80 = ((u_xlat80 * x_2589.x_MainLightShadowParams.z) + x_2589.x_MainLightShadowParams.w);
  u_xlat80 = clamp(u_xlat80, 0.0f, 1.0f);
  u_xlat43.x = (-(u_xlat40) + 1.0f);
  u_xlat40 = ((u_xlat80 * u_xlat43.x) + u_xlat40);
  u_xlat25.x = dot(x_4081.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_4081.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_4081.unity_SHAb.yw, x_376);
  u_xlat25 = vec4f(((u_xlat25.xyz + -(x_4081.unity_SHC.xyz))).xyz, u_xlat25.w);
  u_xlat26 = vec4f(((x_81.x_B612WaterShallow.xyz + x_4112)).xyz, u_xlat26.w);
  u_xlat26 = vec4f((((x_81.x_B612SunDirection.www * u_xlat26.xyz) + x_4122)).xyz, u_xlat26.w);
  u_xlat26 = vec4f(((u_xlat26.xyz * x_142.x_ScatterColor.xyz)).xyz, u_xlat26.w);
  u_xlat27 = vec4f(((x_81.x_B612WaterDeep.xyz + x_4112)).xyz, u_xlat27.w);
  u_xlat27 = vec4f((((x_81.x_B612SunDirection.www * u_xlat27.xyz) + x_4122)).xyz, u_xlat27.w);
  let x_4156 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_4160 = (u_xlat23.xw / vec2f(x_4156.x, x_4156.y));
  u_xlat43 = vec3f(x_4160.x, u_xlat43.y, x_4160.y);
  let x_4172 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat43.xz);
  u_xlat44 = vec3f(x_4172.x, u_xlat44.y, x_4172.y);
  let x_4180 = u_xlat44;
  let x_4183 = x_81.x_GlobalMipBias.x;
  let x_4184 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4180.xz, x_4183);
  u_xlat80 = x_4184.x;
  let x_4192 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat44 = vec3f(x_4192.x, u_xlat44.y, x_4192.y);
  let x_4202 = ((u_xlat43.xz * vec2f(1.12999999523162841797f)) + u_xlat44.xz);
  u_xlat43 = vec3f(x_4202.x, u_xlat43.y, x_4202.y);
  let x_4208 = u_xlat43;
  let x_4211 = x_81.x_GlobalMipBias.x;
  let x_4212 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4208.xz, x_4211);
  u_xlat43.x = x_4212.x;
  let x_4221 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat44 = vec3f(x_4221.x, u_xlat44.y, x_4221.y);
  u_xlat119 = dot(u_xlat44.xz, u_xlat44.xz);
  u_xlat119 = sqrt(u_xlat119);
  u_xlat44.x = (u_xlat119 + -(x_142.x_BoilRadius));
  u_xlat120 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat44.x);
  u_xlat120 = (u_xlat120 / u_xlat48.x);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat120 = (u_xlat120 * -1.44269502162933349609f);
  u_xlat120 = exp2(u_xlat120);
  u_xlat45.x = max(u_xlat119, 0.15000000596046447754f);
  u_xlat45.x = (u_xlat45.x * 6.66666650772094726562f);
  u_xlat45.x = inverseSqrt(u_xlat45.x);
  let x_4273 = (u_xlat45.xx * u_xlat49.xz);
  u_xlat49 = vec3f(x_4273.x, u_xlat49.y, x_4273.y);
  u_xlat121 = (u_xlat124 * u_xlat49.x);
  u_xlat121 = (u_xlat11.x * u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat121 = ((u_xlat5.x * u_xlat44.x) + -(u_xlat87));
  u_xlat121 = cos(u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat120 = select(0.0f, u_xlat120, u_xlatb123);
  let x_4308 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4308.x, x_4308.y)) * u_xlat12.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat89);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat126 * u_xlat49.z);
  u_xlat121 = (u_xlat14.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4349 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat52.xy));
  u_xlat48 = vec3f(x_4349.x, u_xlat48.y, x_4349.y);
  let x_4354 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4354.x, u_xlat48.y, x_4354.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat88 * u_xlat11.x);
  u_xlat121 = (u_xlat17.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.y);
  let x_4402 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4402.x, x_4402.y)) * u_xlat53.xz) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat55);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat128 * u_xlat11.y);
  u_xlat121 = (u_xlat18.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4443 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat56.xy));
  u_xlat48 = vec3f(x_4443.x, u_xlat48.y, x_4443.y);
  let x_4448 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4448.x, u_xlat48.y, x_4448.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat92)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat131 * u_xlat11.x);
  u_xlat121 = (u_xlat20.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.y);
  let x_4495 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4495.x, x_4495.y)) * u_xlat19.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat59.xz);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat47.x * u_xlat11.y);
  u_xlat121 = (u_xlat21.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  u_xlat47 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat95));
  u_xlat47 = cos(u_xlat47);
  u_xlat5.x = ((u_xlat121 * u_xlat47.x) + u_xlat120);
  if (u_xlatb58.x) {
    x_4549 = u_xlat5.x;
  } else {
    x_4549 = u_xlat120;
  }
  u_xlat5.x = x_4549;
  u_xlat44.x = (u_xlat45.x * u_xlat9.x);
  u_xlat44.x = (u_xlat86 * u_xlat44.x);
  u_xlat44.x = (u_xlat22.x * u_xlat44.x);
  u_xlat44.x = (u_xlat44.x * u_xlat85.y);
  u_xlat44.x = ((u_xlat44.x * u_xlat47.y) + u_xlat5.x);
  if (u_xlatb58.y) {
    x_4592 = u_xlat44.x;
  } else {
    x_4592 = u_xlat5.x;
  }
  u_xlat5.x = x_4592;
  u_xlat44.x = (u_xlat119 / u_xlat122);
  u_xlat44.x = (-(u_xlat44.x) + 1.0f);
  u_xlat44.x = max(u_xlat44.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat44.x * u_xlat5.x);
  u_xlat119 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat119);
  u_xlat119 = (u_xlat99.x * u_xlat119);
  u_xlat119 = clamp(u_xlat119, 0.0f, 1.0f);
  u_xlat44.x = ((u_xlat119 * -2.0f) + 3.0f);
  u_xlat119 = (u_xlat119 * u_xlat119);
  u_xlat119 = (u_xlat119 * u_xlat44.x);
  u_xlat5.x = (u_xlat119 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat80 = min(u_xlat80, u_xlat43.x);
  u_xlat80 = (u_xlat80 * 2.5f);
  u_xlat80 = (u_xlat80 * x_142.x_CausticsStrength);
  let x_4677 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat43 = vec3f(x_4677.x, u_xlat43.y, x_4677.y);
  u_xlat2.x = min(u_xlat43.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat80 = exp2(u_xlat43.z);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_4708 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_4708.xy, u_xlat5.z, x_4708.z);
  let x_4715 = (vec3f(u_xlat40) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4715.xy, u_xlat5.z, x_4715.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_4731 = ((u_xlat5.xyw * u_xlat2.xxx) + x_4122);
  u_xlat5 = vec4f(x_4731.xy, u_xlat5.z, x_4731.z);
  let x_4737 = (u_xlat5.xyw * u_xlat60);
  u_xlat5 = vec4f(x_4737.xy, u_xlat5.z, x_4737.z);
  u_xlat9 = vec4f(((vec3f(u_xlat115) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat115 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat48 = (vec3f(u_xlat40) * x_81.x_MainLightColor.xyz);
  u_xlat40 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat40 = clamp(u_xlat40, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat40) * u_xlat48);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25.xyz);
  u_xlat115 = (u_xlat115 * 0.69999998807907104492f);
  u_xlat115 = min(u_xlat115, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27.xyz) + -(u_xlat26.xyz))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat115) * u_xlat12.xyz) + u_xlat26.xyz)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_4843 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_4843.xy, u_xlat5.z, x_4843.z);
  u_xlat115 = dot(u_xlat3, u_xlat38);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat40 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat80 = (-(x_142.x_F0) + 1.0f);
  u_xlat44.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat80);
  u_xlat115 = (-(u_xlat115) + 1.0f);
  u_xlat120 = (u_xlat115 * u_xlat115);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat115 = (u_xlat115 * u_xlat120);
  u_xlat115 = ((u_xlat44.x * u_xlat115) + u_xlat40);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat40 = dot(-(u_xlat38), u_xlat3);
  u_xlat40 = (u_xlat40 + u_xlat40);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat40))) + -(u_xlat38))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat40 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat40 = (u_xlat40 * x_142.x_Roughness);
  u_xlat40 = (u_xlat40 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu82 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu82.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu82.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat39.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_4985 = u_xlat39.x;
  } else {
    x_4985 = u_xlat1.x;
  }
  u_xlat0.x = x_4985;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati39 = (bitcast<i32>(u_xlatu82.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati39))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_5047 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_5054 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_5055 = vec2i(x_5047, x_5054);
  u_xlati1 = vec3i(x_5055.x, u_xlati1.y, x_5055.y);
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_5079 = ~(u_xlati1.xz);
  u_xlati45 = vec3i(x_5079.x, u_xlati45.y, x_5079.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45.xx) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati44) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati44.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati45.z) & bitcast<u32>(u_xlati44.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb44 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati87 = 0i;
  u_xlatu125 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat77.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu45 = (u_xlatu125 >> 16u);
    u_xlati121 = u_xlati87;
    u_xlatu122 = u_xlatu125;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb47 = (u_xlati121 == 0i);
      u_xlatu126 = (u_xlatu122 & 65535u);
      u_xlatb126 = (u_xlatu45 >= u_xlatu126);
      u_xlatb47 = (u_xlatb47 & u_xlatb126);
      if (!(u_xlatb47)) {
        break;
      }
      param_6 = u_xlatu122;
      param_7 = 5i;
      param_8 = 11i;
      let x_5193 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu47 = x_5193;
      u_xlatu13 = (vec4u(u_xlatu47) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_5214 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_5221 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_5228 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_5235 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_5214, x_5221, x_5228, x_5235);
      u_xlati90 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_5244.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_5244.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_5276 = bitcast<vec2i>((bitcast<vec2u>(u_xlati90) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_5276.x, u_xlati14.y, x_5276.y);
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_5067.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati51 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati51) | bitcast<u32>(u_xlati13.x)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu122) & 31i)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati47 = (bitcast<i32>(u_xlatu47) << bitcast<u32>(5i));
      u_xlatu47 = (u_xlatu45 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati47)))));
      u_xlatu47 = min(u_xlatu47, 31u);
      u_xlatu47 = (bitcast<u32>(-(bitcast<i32>(u_xlatu47))) + 31u);
      u_xlatu47 = (4294967295u >> (u_xlatu47 & 31u));
      u_xlati121 = bitcast<i32>((u_xlatu47 & bitcast<u32>(u_xlati126)));
      u_xlati47 = (bitcast<i32>(u_xlatu122) + 32i);
      u_xlatu122 = (bitcast<u32>(u_xlati47) & 4294967264u);
    }
    u_xlatu125 = u_xlatu122;
    u_xlatb45 = (u_xlati121 != 0i);
    u_xlatb47 = (u_xlat77.x < 0.99000000953674316406f);
    u_xlatb45 = (u_xlatb45 & u_xlatb47);
    if (!(u_xlatb45)) {
      break;
    }
    u_xlati45.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati121)));
    u_xlati47 = (1i << bitcast<u32>((u_xlati45.x & 31i)));
    u_xlati87 = bitcast<i32>((bitcast<u32>(u_xlati121) ^ bitcast<u32>(u_xlati47)));
    u_xlati47 = (bitcast<i32>(u_xlatu125) + -32i);
    u_xlati47 = bitcast<i32>((bitcast<u32>(u_xlati47) & 65504u));
    u_xlati45.x = (u_xlati45.x + u_xlati47);
    u_xlati45.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati45.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].www)).xyz, u_xlat13.w);
    u_xlat47.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat47.x = min(u_xlat47.x, u_xlat13.x);
    u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
    u_xlat126 = (-(u_xlat77.x) + 1.0f);
    u_xlat47.x = min(u_xlat47.x, u_xlat126);
    u_xlatb126 = (0.0f < x_5479.urp_ReflProbes_ProbePosition[u_xlati45.x].w);
    if (u_xlatb44.x) {
      x_5545 = x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].x;
    } else {
      x_5545 = x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].x;
    }
    u_xlat13.x = x_5545;
    if (u_xlatb44.y) {
      x_5561 = x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].y;
    } else {
      x_5561 = x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].y;
    }
    u_xlat13.y = x_5561;
    if (u_xlatb44.z) {
      x_5577 = x_5479.urp_ReflProbes_BoxMax[u_xlati45.x].z;
    } else {
      x_5577 = x_5479.urp_ReflProbes_BoxMin[u_xlati45.x].z;
    }
    u_xlat13.z = x_5577;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat51 = (vs_TEXCOORD0 + -(x_5479.urp_ReflProbes_ProbePosition[u_xlati45.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat51)).xyz, u_xlat13.w);
    if (u_xlatb126) {
      x_5636 = u_xlat13.xyz;
    } else {
      x_5636 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_5636.xyz, u_xlat13.w);
    u_xlatu126 = u32(abs(x_5479.urp_ReflProbes_ProbePosition[u_xlati45.x].w));
    u_xlatu126 = (u_xlatu126 + 4294967295u);
    u_xlat126 = f32(u_xlatu126);
    u_xlat126 = min(u_xlat40, u_xlat126);
    u_xlat127 = dot(abs(u_xlat13.xyz), x_4122);
    u_xlat127 = max(u_xlat127, 0.00000099999999747524f);
    u_xlat127 = (1.0f / u_xlat127);
    u_xlat14 = (vec3f(u_xlat127) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb52 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb52.x) {
      x_5692 = u_xlat14.x;
    } else {
      x_5692 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_5692;
    if (u_xlatb52.y) {
      x_5705 = u_xlat14.x;
    } else {
      x_5705 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_5705;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat127)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat89.x = floor(u_xlat126);
    u_xlat89.y = (u_xlat89.x + 1.0f);
    u_xlat126 = (u_xlat126 + -(u_xlat89.x));
    u_xlatu89 = vec2u(u_xlat89);
    u_xlati89 = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.x));
    u_xlati45.x = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.y));
    u_xlat89 = ((u_xlat13.xy * x_5479.urp_ReflProbes_MipScaleOffset[u_xlati89].xy) + x_5479.urp_ReflProbes_MipScaleOffset[u_xlati89].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat89, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_5479.urp_ReflProbes_MipScaleOffset[u_xlati45.x].xy) + x_5479.urp_ReflProbes_MipScaleOffset[u_xlati45.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat126) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat47.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat77.x = (u_xlat77.x + u_xlat47.x);
  }
  u_xlatb0 = (u_xlat77.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat40);
    u_xlat0.x = (-(u_xlat77.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat115) * u_xlat1) + u_xlat5.xyw);
  let x_5947 = (u_xlat38 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_5947.xy, u_xlat5.z, x_5947.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_5969 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_5969.xy, u_xlat5.z, x_5969.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat115 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat115 = max(u_xlat115, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat115 * u_xlat115);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat115 = ((u_xlat115 * u_xlat115) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat115) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat38.x = dot(u_xlat5.xyw, u_xlat38);
  u_xlat38.x = clamp(u_xlat38.x, 0.0f, 1.0f);
  u_xlat38.x = (-(u_xlat38.x) + 1.0f);
  u_xlat76 = (u_xlat38.x * u_xlat38.x);
  u_xlat76 = (u_xlat76 * u_xlat76);
  u_xlat38.x = (u_xlat76 * u_xlat38.x);
  u_xlat38.x = ((u_xlat80 * u_xlat38.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat38.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat48);
  let x_6088 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_6088.x, x_6088.y, x_6088.z));
  u_xlat114 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat114 = (u_xlat114 * 4.0f);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat114)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat77 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat77 = (-(u_xlat77) + u_xlat1.xy);
  let x_6131 = u_xlat77;
  let x_6133 = x_81.x_GlobalMipBias.x;
  let x_6134 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6131, x_6133);
  u_xlat114 = x_6134.x;
  u_xlat77 = (u_xlat42.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat77) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_6159 = u_xlat1;
  let x_6162 = x_81.x_GlobalMipBias.x;
  let x_6163 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6159.xy, x_6162);
  u_xlat1.x = x_6163.x;
  u_xlat1.x = (u_xlat83.x * u_xlat1.x);
  u_xlat114 = ((u_xlat114 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat39.x = (-(u_xlat84.x) + 1.0f);
  u_xlat1.x = (u_xlat39.x * u_xlat1.x);
  u_xlat39 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_6213 = u_xlat39;
  let x_6215 = x_81.x_GlobalMipBias.x;
  let x_6216 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6213, x_6215);
  u_xlat39.x = x_6216.y;
  u_xlat77.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat77.x = (u_xlat77.x * u_xlat77.x);
  u_xlat77.x = (u_xlat77.x * -1.44269502162933349609f);
  u_xlat77.x = exp2(u_xlat77.x);
  u_xlat77.x = ((u_xlat84.x * 0.34999999403953552246f) + u_xlat77.x);
  u_xlat39.x = (u_xlat77.x * u_xlat39.x);
  u_xlat39.x = (u_xlat81 * u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * 0.89999997615814208984f);
  u_xlat114 = ((u_xlat114 * u_xlat1.x) + u_xlat39.x);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat48 * vec3f(0.69999998807907104492f)) + u_xlat25.xyz);
  u_xlat114 = (u_xlat114 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  SV_Target0 = vec4f((((vec3f(u_xlat114) * u_xlat1) + u_xlat0)).xyz, SV_Target0.w);
  SV_Target0.w = (u_xlat117 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
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
  vs_TEXCOORD1 = (u_xlat0.x * x_74.unity_FogParams.x);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  unity_FogColor : vec4f,
  /* @offset(240) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(304) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(368) */
  x_ScreenSize : vec4f,
  /* @offset(384) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(416) */
  x_B612SunDirection : vec4f,
  /* @offset(432) */
  x_B612WaterShallow : vec4f,
  /* @offset(448) */
  x_B612WaterDeep : vec4f,
  /* @offset(464) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2590 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2710 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_3681 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_3858 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_4093 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : f32;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_744 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2739 = vec3f(-1.0f);

const x_2746 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat28 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat59 : vec2f;
  var u_xlat85 : f32;
  var u_xlat4 : vec4f;
  var u_xlat60 : f32;
  var u_xlat88 : f32;
  var u_xlatb32 : bool;
  var x_281 : vec2f;
  var u_xlat32 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat33 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat62 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat63 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat64 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat65 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb93 : bool;
  var u_xlat11 : vec3f;
  var u_xlat38 : vec3f;
  var u_xlat66 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat39 : vec3f;
  var u_xlat92 : f32;
  var u_xlat94 : f32;
  var u_xlat67 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat69 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat96 : f32;
  var u_xlat68 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat99 : f32;
  var u_xlat98 : f32;
  var u_xlat43 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat45 : vec2f;
  var u_xlat46 : vec3f;
  var u_xlat72 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat101 : f32;
  var u_xlat102 : f32;
  var u_xlatb48 : vec2<bool>;
  var u_xlat49 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat37 : vec2f;
  var u_xlat75 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat50 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat79 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat61 : f32;
  var u_xlat104 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat31 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat35 : vec3f;
  var u_xlat87 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb85 : bool;
  var x_2476 : vec3f;
  var txVec0 : vec3f;
  var u_xlat30 : f32;
  var u_xlatb60 : bool;
  var u_xlatb33 : bool;
  var u_xlat25 : vec3f;
  var u_xlat26 : vec3f;
  var u_xlat27 : vec3f;
  var u_xlat34 : vec3f;
  var u_xlat89 : f32;
  var u_xlat90 : f32;
  var u_xlat91 : f32;
  var x_3166 : f32;
  var x_3209 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu62 : vec2u;
  var u_xlati6 : i32;
  var u_xlat29 : vec2f;
  var u_xlat0 : vec3f;
  var x_3599 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati29 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati34 : vec2i;
  var u_xlati35 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb34 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati67 : i32;
  var u_xlatu95 : u32;
  var u_xlat57 : vec2f;
  var u_xlatu35 : u32;
  var u_xlati91 : i32;
  var u_xlatu92 : u32;
  var u_xlatb37 : bool;
  var u_xlatu96 : u32;
  var u_xlatb96 : bool;
  var u_xlatu37 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati70 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati96 : i32;
  var u_xlati41 : i32;
  var u_xlati37 : i32;
  var u_xlatb35 : bool;
  var x_4159 : f32;
  var x_4175 : f32;
  var x_4191 : f32;
  var u_xlat41 : vec3f;
  var x_4250 : vec3f;
  var u_xlat97 : f32;
  var u_xlatb42 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_4306 : f32;
  var x_4319 : f32;
  var u_xlatu69 : vec2u;
  var u_xlati69 : i32;
  var u_xlat56 : f32;
  var u_xlat84 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat28 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat28, u_xlat28);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat28 = (u_xlat28 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat28;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat28 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat59 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat85 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat85, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat60 = max(u_xlat60, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat60))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat59.yx + u_xlat59.yx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat59, u_xlat59);
  u_xlat88 = max(u_xlat60, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat88))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb32 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb32) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat32 = vec3f(x_314.x, u_xlat32.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat33 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat62 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat62) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat63 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat62.x * 4.0f);
  u_xlat8 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat32 = vec3f(x_405.x, u_xlat32.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat64 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat64 = (u_xlat64 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat64;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat64 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat65 = (u_xlat32.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat65 = (u_xlat65 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat65));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat63.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat64 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat64 = max(vec2f(u_xlat85), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat64.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat64.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat65.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat65.x = sin(u_xlat65.x);
  u_xlat65.x = (u_xlat65.x * 43758.546875f);
  u_xlat65.x = fract(u_xlat65.x);
  u_xlat65.x = ((u_xlat65.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat65.x = (u_xlat65.x / u_xlat9.y);
  u_xlat65.x = (-(u_xlat65.x) + x_81.x_Time.y);
  u_xlatb93 = (u_xlat65.x >= 0.0f);
  u_xlat10.x = (u_xlat85 + -(x_142.x_BoilRadius));
  let x_745 = (u_xlat65.xx * x_744);
  u_xlat11 = vec3f(x_745.x, u_xlat11.y, x_745.y);
  u_xlat38.x = ((u_xlat65.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat66 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat10.x);
  u_xlat66 = (u_xlat66 / u_xlat38.x);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat66 = (u_xlat66 * -1.44269502162933349609f);
  u_xlat66 = exp2(u_xlat66);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat39 = vec3f(x_804.x, u_xlat39.y, x_804.y);
  u_xlat92 = (u_xlat64.y * 6.66666650772094726562f);
  u_xlat92 = inverseSqrt(u_xlat92);
  let x_818 = (vec2f(u_xlat92) * u_xlat39.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat94 = exp2(u_xlat11.z);
  u_xlat67 = (u_xlat94 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat67 = (u_xlat11.x * u_xlat67);
  u_xlat66 = (u_xlat66 * u_xlat67);
  u_xlat67 = (u_xlat64.x * u_xlat65.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat67));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat66 = (u_xlat66 * u_xlat12.x);
  u_xlat66 = select(0.0f, u_xlat66, u_xlatb93);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_744);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat69 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat42 = vec3f(x_931.x, u_xlat42.y, x_931.y);
  let x_937 = (u_xlat42.xz / u_xlat69);
  u_xlat42 = vec3f(x_937.x, u_xlat42.y, x_937.y);
  let x_944 = (u_xlat42.xz * u_xlat42.xz);
  u_xlat42 = vec3f(x_944.x, u_xlat42.y, x_944.y);
  let x_950 = (u_xlat42.xz * x_949);
  u_xlat42 = vec3f(x_950.x, u_xlat42.y, x_950.y);
  let x_955 = exp2(u_xlat42.xz);
  u_xlat42 = vec3f(x_955.x, u_xlat42.y, x_955.y);
  u_xlat96 = exp2(u_xlat14.z);
  u_xlat68 = (u_xlat96 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat68 = (u_xlat68 * u_xlat14.x);
  u_xlat68 = (u_xlat68 * u_xlat42.x);
  u_xlat42 = vec3f(((u_xlat64.xx * u_xlat12.xy)).xy, u_xlat42.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat42.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat68 = ((u_xlat68 * u_xlat15.x) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat68, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat92) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_744);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat68 = exp2(u_xlat17.z);
  u_xlat99 = (u_xlat68 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat99 = (u_xlat99 * u_xlat17.x);
  u_xlat98 = (u_xlat42.z * u_xlat99);
  u_xlat98 = ((u_xlat98 * u_xlat15.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat98, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat43 = vec3f(x_1094.x, u_xlat43.y, x_1094.y);
  let x_1101 = (u_xlat43.xz / u_xlat9.yy);
  u_xlat43 = vec3f(x_1101.x, u_xlat43.y, x_1101.y);
  let x_1110 = (-(u_xlat43.xz) + x_81.x_Time.yy);
  u_xlat43 = vec3f(x_1110.x, u_xlat43.y, x_1110.y);
  u_xlatb16 = ((u_xlat43.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat43.xx * x_744);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat45 = ((u_xlat43.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat43.xz) + u_xlat10.xx);
  u_xlat46 = vec3f(x_1144.x, u_xlat46.y, x_1144.y);
  let x_1150 = (u_xlat46.xz / u_xlat45);
  u_xlat46 = vec3f(x_1150.x, u_xlat46.y, x_1150.y);
  let x_1157 = (u_xlat46.xz * u_xlat46.xz);
  u_xlat46 = vec3f(x_1157.x, u_xlat46.y, x_1157.y);
  let x_1162 = (u_xlat46.xz * x_949);
  u_xlat46 = vec3f(x_1162.x, u_xlat46.y, x_1162.y);
  let x_1167 = exp2(u_xlat46.xz);
  u_xlat46 = vec3f(x_1167.x, u_xlat46.y, x_1167.y);
  u_xlat98 = exp2(u_xlat18.z);
  u_xlat72.x = (u_xlat98 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat72.x = (u_xlat72.x * u_xlat18.x);
  u_xlat72.x = (u_xlat72.x * u_xlat46.x);
  u_xlat46 = vec3f(((u_xlat64.xx * u_xlat43.xz)).xy, u_xlat46.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat46.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat72.x = ((u_xlat72.x * u_xlat19.x) + u_xlat66);
  if (u_xlatb16.x) {
    x_1232 = u_xlat72.x;
  } else {
    x_1232 = u_xlat66;
  }
  u_xlat66 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat72 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat92) * u_xlat72);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat43.zz * x_744);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat101 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat101 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat102 = (u_xlat46.z * u_xlat19.x);
  u_xlat102 = ((u_xlat102 * u_xlat19.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat102, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb48 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_744);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat49 = vec3f(x_1350.x, u_xlat49.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat49.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat37.x = exp2(u_xlat21.z);
  u_xlat102 = (u_xlat37.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat102 = (u_xlat102 * u_xlat21.x);
  u_xlat102 = (u_xlat102 * u_xlat22.x);
  u_xlat75 = (u_xlat64.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat75));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat64.x = ((u_xlat102 * u_xlat22.x) + u_xlat66);
  if (u_xlatb48.x) {
    x_1450 = u_xlat64.x;
  } else {
    x_1450 = u_xlat66;
  }
  u_xlat64.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat92 = (u_xlat92 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_744);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat66 = exp2(u_xlat22.w);
  u_xlat92 = (u_xlat92 * u_xlat66);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat92 = (u_xlat92 * u_xlat22.x);
  u_xlat92 = (u_xlat92 * u_xlat22.y);
  u_xlat92 = ((u_xlat92 * u_xlat22.z) + u_xlat64.x);
  if (u_xlatb48.y) {
    x_1524 = u_xlat92;
  } else {
    x_1524 = u_xlat64.x;
  }
  u_xlat64.x = x_1524;
  u_xlat92 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat102 = (u_xlat85 / u_xlat92);
  u_xlat102 = (-(u_xlat102) + 1.0f);
  u_xlat102 = max(u_xlat102, 0.0f);
  u_xlat64.x = (u_xlat64.x * x_142.x_RingStrength);
  u_xlat64.x = (u_xlat102 * u_xlat64.x);
  u_xlat50 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat85))).xy, u_xlat23.zw);
  u_xlat79 = (x_376 / u_xlat50.xy);
  u_xlat23 = vec4f(((u_xlat79 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat102 = (u_xlat23.x * u_xlat24.x);
  u_xlat64.x = (u_xlat64.x * u_xlat102);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat64.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat64.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat61 = sin(u_xlat33.y);
  u_xlat61 = (u_xlat61 * 1.70000004768371582031f);
  u_xlat61 = ((u_xlat64.x * 6.28318548202514648438f) + u_xlat61);
  u_xlat61 = sin(u_xlat61);
  u_xlat61 = ((u_xlat61 * 0.25f) + 0.75f);
  u_xlat64.x = (u_xlat85 * -(u_xlat85));
  u_xlat102 = (u_xlat50.x * u_xlat50.x);
  u_xlat64.x = (u_xlat64.x / u_xlat102);
  u_xlat64.x = (u_xlat64.x * 1.44269502162933349609f);
  u_xlat64.x = exp2(u_xlat64.x);
  u_xlat104 = (u_xlat85 + u_xlat85);
  u_xlat102 = (u_xlat104 / u_xlat102);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat102));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat64.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat50 = vec3f(((u_xlat50.xx * u_xlat23.xw)).xy, u_xlat50.z);
  let x_1734 = ((u_xlat50.xy * vec2f(u_xlat61)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat64.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat33.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat33 = vec3f(x_1763.x, u_xlat33.y, x_1763.y);
  let x_1769 = u_xlat33;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_1786.x, u_xlat33.y, x_1786.y);
  u_xlat50 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat50.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat50.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat50.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat102 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat85 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat85);
  u_xlat102 = (1.0f / u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat102 = ((u_xlat85 * -2.0f) + 3.0f);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat64.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat33.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat85)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat85 = sqrt(u_xlat60);
  u_xlat50 = (vec3f(u_xlat85) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat50 = (u_xlat50 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat50 = clamp(u_xlat50, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat50 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat50 = (u_xlat50 * u_xlat50);
  u_xlat60 = (u_xlat50.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat50.xz) + x_376);
  u_xlat33 = vec3f(x_1932.x, u_xlat33.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat62.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat62.x = dot(u_xlat62.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat62.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat33.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat33.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat60 * u_xlat33.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat33 = vec3f(x_2080.x, u_xlat33.y, x_2080.y);
  u_xlat31 = dot(u_xlat59.yx, u_xlat33.xz);
  u_xlat31 = (abs(u_xlat31) * 4.0f);
  u_xlat31 = min(u_xlat31, 1.0f);
  u_xlat85 = max(u_xlat85, 0.00100000004749745131f);
  u_xlat59 = (-(u_xlat59) / vec2f(u_xlat85));
  let x_2105 = (u_xlat62.yy * u_xlat59.yx);
  u_xlat33 = vec3f(x_2105.x, u_xlat33.y, x_2105.y);
  let x_2115 = ((-(u_xlat33.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat33 = vec3f(x_2115.x, u_xlat33.y, x_2115.y);
  let x_2122 = (u_xlat33.xz * vec2f(2.38095235824584960938f));
  u_xlat33 = vec3f(x_2122.x, u_xlat33.y, x_2122.y);
  u_xlat59 = (u_xlat6.yy * u_xlat59);
  u_xlat59 = ((-(u_xlat59) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat59 = ((u_xlat59 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat33;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_2162.x, u_xlat33.y, x_2162.y);
  let x_2168 = u_xlat59;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat59 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat59 = (u_xlat63.yy * u_xlat59);
  u_xlat59 = ((u_xlat33.xz * u_xlat7.yy) + u_xlat59);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat59 = (u_xlat59 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat59);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat85 = ((u_xlat31 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat85)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat85 = dot(u_xlat3, u_xlat3);
  u_xlat85 = inverseSqrt(u_xlat85);
  u_xlat3 = (vec3f(u_xlat85) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat85 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat85) + 1.0f);
  u_xlat85 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat85 = (1.0f / u_xlat85);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat33 = vec3f(x_2286.x, u_xlat33.y, x_2286.y);
  let x_2294 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2294.x, u_xlat33.y, x_2294.y);
  let x_2302 = (u_xlat33.xz * x_81.x_ScreenSize.xy);
  u_xlat33 = vec3f(x_2302.x, u_xlat33.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat33.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat33 = vec3f(x_2331.x, u_xlat33.y, x_2331.y);
  let x_2341 = (-(u_xlat33.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat35 = vec3f(x_2341.x, u_xlat35.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat33.xx) + u_xlat35.xz);
  u_xlat33 = vec3f(x_2352.x, u_xlat33.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat33.xz);
  u_xlat33 = vec3f(x_2363.x, u_xlat33.y, x_2363.y);
  let x_2372 = (u_xlat33.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat33 = vec3f(x_2372.x, u_xlat33.y, x_2372.y);
  u_xlat87 = (u_xlat33.x / u_xlat33.z);
  u_xlat87 = (-(u_xlat87) + vs_TEXCOORD0.y);
  u_xlat87 = max(u_xlat87, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat33 = vec3f(x_2399.x, u_xlat33.y, x_2399.y);
  u_xlat60 = (u_xlat87 * 4.0f);
  u_xlat60 = min(u_xlat60, 1.0f);
  u_xlat24 = vec4f((((u_xlat33.xz * vec2f(u_xlat60)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb85 = (u_xlat2.x < u_xlat85);
  if (u_xlatb85) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat50 = x_2476;
  u_xlat2 = vec4f((((u_xlat50.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat50.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat85 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat85 = min(u_xlat85, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat33 = vec3f(x_2555.x, u_xlat33.y, x_2555.y);
  let x_2562 = min(u_xlat33.xz, u_xlat50.xy);
  u_xlat33 = vec3f(x_2562.x, u_xlat33.y, x_2562.y);
  let x_2570 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2570.x, u_xlat33.y, x_2570.y);
  let x_2578 = u_xlat33;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat50 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat24.w);
  let x_2629 = u_xlat24.xy;
  txVec0 = vec3f(x_2629.x, x_2629.y, u_xlat24.z);
  u_xlat30 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat60 = (-(x_2590.x_MainLightShadowParams.x) + 1.0f);
  u_xlat30 = ((u_xlat30 * x_2590.x_MainLightShadowParams.x) + u_xlat60);
  u_xlatb60 = (0.0f >= u_xlat24.z);
  u_xlatb33 = (u_xlat24.z >= 1.0f);
  u_xlatb60 = (u_xlatb60 | u_xlatb33);
  u_xlat30 = select(u_xlat30, 1.0f, u_xlatb60);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat60 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat60 = ((u_xlat60 * x_2590.x_MainLightShadowParams.z) + x_2590.x_MainLightShadowParams.w);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat33.x = (-(u_xlat30) + 1.0f);
  u_xlat30 = ((u_xlat60 * u_xlat33.x) + u_xlat30);
  u_xlat25.x = dot(x_2710.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_2710.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_2710.unity_SHAb.yw, x_376);
  u_xlat25 = (u_xlat25 + -(x_2710.unity_SHC.xyz));
  u_xlat26 = (x_81.x_B612WaterShallow.xyz + x_2739);
  u_xlat26 = ((x_81.x_B612SunDirection.www * u_xlat26) + x_2746);
  u_xlat26 = (u_xlat26 * x_142.x_ScatterColor.xyz);
  u_xlat27 = (x_81.x_B612WaterDeep.xyz + x_2739);
  u_xlat27 = ((x_81.x_B612SunDirection.www * u_xlat27) + x_2746);
  let x_2771 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_2775 = (u_xlat23.xw / vec2f(x_2771.x, x_2771.y));
  u_xlat33 = vec3f(x_2775.x, u_xlat33.y, x_2775.y);
  let x_2788 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat33.xz);
  u_xlat34 = vec3f(x_2788.x, u_xlat34.y, x_2788.y);
  let x_2796 = u_xlat34;
  let x_2799 = x_81.x_GlobalMipBias.x;
  let x_2800 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2796.xz, x_2799);
  u_xlat60 = x_2800.x;
  let x_2808 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat34 = vec3f(x_2808.x, u_xlat34.y, x_2808.y);
  let x_2818 = ((u_xlat33.xz * vec2f(1.12999999523162841797f)) + u_xlat34.xz);
  u_xlat33 = vec3f(x_2818.x, u_xlat33.y, x_2818.y);
  let x_2824 = u_xlat33;
  let x_2827 = x_81.x_GlobalMipBias.x;
  let x_2828 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2824.xz, x_2827);
  u_xlat33.x = x_2828.x;
  let x_2837 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat34 = vec3f(x_2837.x, u_xlat34.y, x_2837.y);
  u_xlat89 = dot(u_xlat34.xz, u_xlat34.xz);
  u_xlat89 = sqrt(u_xlat89);
  u_xlat34.x = (u_xlat89 + -(x_142.x_BoilRadius));
  u_xlat90 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat34.x);
  u_xlat90 = (u_xlat90 / u_xlat38.x);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat90 = (u_xlat90 * -1.44269502162933349609f);
  u_xlat90 = exp2(u_xlat90);
  u_xlat35.x = max(u_xlat89, 0.15000000596046447754f);
  u_xlat35.x = (u_xlat35.x * 6.66666650772094726562f);
  u_xlat35.x = inverseSqrt(u_xlat35.x);
  let x_2890 = (u_xlat35.xx * u_xlat39.xz);
  u_xlat39 = vec3f(x_2890.x, u_xlat39.y, x_2890.y);
  u_xlat91 = (u_xlat94 * u_xlat39.x);
  u_xlat91 = (u_xlat11.x * u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat91 = ((u_xlat5.x * u_xlat34.x) + -(u_xlat67));
  u_xlat91 = cos(u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat90 = select(0.0f, u_xlat90, u_xlatb93);
  let x_2925 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_2925.x, x_2925.y)) * u_xlat12.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat69);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat96 * u_xlat39.z);
  u_xlat91 = (u_xlat14.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_2966 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat42.xy));
  u_xlat38 = vec3f(x_2966.x, u_xlat38.y, x_2966.y);
  let x_2971 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_2971.x, u_xlat38.y, x_2971.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat68 * u_xlat11.x);
  u_xlat91 = (u_xlat17.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.y);
  let x_3019 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3019.x, x_3019.y)) * u_xlat43.xz) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat45);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat98 * u_xlat11.y);
  u_xlat91 = (u_xlat18.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_3060 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat46.xy));
  u_xlat38 = vec3f(x_3060.x, u_xlat38.y, x_3060.y);
  let x_3065 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_3065.x, u_xlat38.y, x_3065.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat72)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat101 * u_xlat11.x);
  u_xlat91 = (u_xlat20.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.y);
  let x_3112 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3112.x, x_3112.y)) * u_xlat19.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat49.xz);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat37.x * u_xlat11.y);
  u_xlat91 = (u_xlat21.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  u_xlat37 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat75));
  u_xlat37 = cos(u_xlat37);
  u_xlat5.x = ((u_xlat91 * u_xlat37.x) + u_xlat90);
  if (u_xlatb48.x) {
    x_3166 = u_xlat5.x;
  } else {
    x_3166 = u_xlat90;
  }
  u_xlat5.x = x_3166;
  u_xlat34.x = (u_xlat35.x * u_xlat9.x);
  u_xlat34.x = (u_xlat66 * u_xlat34.x);
  u_xlat34.x = (u_xlat22.x * u_xlat34.x);
  u_xlat34.x = (u_xlat34.x * u_xlat65.y);
  u_xlat34.x = ((u_xlat34.x * u_xlat37.y) + u_xlat5.x);
  if (u_xlatb48.y) {
    x_3209 = u_xlat34.x;
  } else {
    x_3209 = u_xlat5.x;
  }
  u_xlat5.x = x_3209;
  u_xlat34.x = (u_xlat89 / u_xlat92);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat34.x = max(u_xlat34.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat34.x * u_xlat5.x);
  u_xlat89 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat89);
  u_xlat89 = (u_xlat79.x * u_xlat89);
  u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
  u_xlat34.x = ((u_xlat89 * -2.0f) + 3.0f);
  u_xlat89 = (u_xlat89 * u_xlat89);
  u_xlat89 = (u_xlat89 * u_xlat34.x);
  u_xlat5.x = (u_xlat89 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat60 = min(u_xlat60, u_xlat33.x);
  u_xlat60 = (u_xlat60 * 2.5f);
  u_xlat60 = (u_xlat60 * x_142.x_CausticsStrength);
  let x_3295 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat33 = vec3f(x_3295.x, u_xlat33.y, x_3295.y);
  u_xlat2.x = min(u_xlat33.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat60 = exp2(u_xlat33.z);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_3326 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_3326.xy, u_xlat5.z, x_3326.z);
  let x_3333 = (vec3f(u_xlat30) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_3333.xy, u_xlat5.z, x_3333.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_3349 = ((u_xlat5.xyw * u_xlat2.xxx) + x_2746);
  u_xlat5 = vec4f(x_3349.xy, u_xlat5.z, x_3349.z);
  let x_3355 = (u_xlat5.xyw * u_xlat50);
  u_xlat5 = vec4f(x_3355.xy, u_xlat5.z, x_3355.z);
  u_xlat9 = vec4f(((vec3f(u_xlat85) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat85 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat38 = (vec3f(u_xlat30) * x_81.x_MainLightColor.xyz);
  u_xlat30 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat30 = clamp(u_xlat30, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat30) * u_xlat38);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25);
  u_xlat85 = (u_xlat85 * 0.69999998807907104492f);
  u_xlat85 = min(u_xlat85, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27) + -(u_xlat26))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat85) * u_xlat12.xyz) + u_xlat26)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_3457 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_3457.xy, u_xlat5.z, x_3457.z);
  u_xlat85 = dot(u_xlat3, u_xlat28);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat30 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat60 = (-(x_142.x_F0) + 1.0f);
  u_xlat34.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat60);
  u_xlat85 = (-(u_xlat85) + 1.0f);
  u_xlat90 = (u_xlat85 * u_xlat85);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat85 = (u_xlat85 * u_xlat90);
  u_xlat85 = ((u_xlat34.x * u_xlat85) + u_xlat30);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat30 = dot(-(u_xlat28), u_xlat3);
  u_xlat30 = (u_xlat30 + u_xlat30);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat30))) + -(u_xlat28))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat30 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat30 = (u_xlat30 * x_142.x_Roughness);
  u_xlat30 = (u_xlat30 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu62 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu62.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu62.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat29.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_3599 = u_xlat29.x;
  } else {
    x_3599 = u_xlat1.x;
  }
  u_xlat0.x = x_3599;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu62.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_3661 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_3668 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_3669 = vec2i(x_3661, x_3668);
  u_xlati1 = vec3i(x_3669.x, u_xlati1.y, x_3669.y);
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_3693 = ~(u_xlati1.xz);
  u_xlati35 = vec3i(x_3693.x, u_xlati35.y, x_3693.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati34) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati34.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati35.z) & bitcast<u32>(u_xlati34.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb34 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati67 = 0i;
  u_xlatu95 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat57.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu35 = (u_xlatu95 >> 16u);
    u_xlati91 = u_xlati67;
    u_xlatu92 = u_xlatu95;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb37 = (u_xlati91 == 0i);
      u_xlatu96 = (u_xlatu92 & 65535u);
      u_xlatb96 = (u_xlatu35 >= u_xlatu96);
      u_xlatb37 = (u_xlatb37 & u_xlatb96);
      if (!(u_xlatb37)) {
        break;
      }
      param_6 = u_xlatu92;
      param_7 = 5i;
      param_8 = 11i;
      let x_3807 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu37 = x_3807;
      u_xlatu13 = (vec4u(u_xlatu37) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3828 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3835 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3842 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3849 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_3828, x_3835, x_3842, x_3849);
      u_xlati70 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_3858.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_3858.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_3890 = bitcast<vec2i>((bitcast<vec2u>(u_xlati70) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_3890.x, u_xlati14.y, x_3890.y);
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_3681.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati41) | bitcast<u32>(u_xlati13.x)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu92) & 31i)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati37 = (bitcast<i32>(u_xlatu37) << bitcast<u32>(5i));
      u_xlatu37 = (u_xlatu35 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati37)))));
      u_xlatu37 = min(u_xlatu37, 31u);
      u_xlatu37 = (bitcast<u32>(-(bitcast<i32>(u_xlatu37))) + 31u);
      u_xlatu37 = (4294967295u >> (u_xlatu37 & 31u));
      u_xlati91 = bitcast<i32>((u_xlatu37 & bitcast<u32>(u_xlati96)));
      u_xlati37 = (bitcast<i32>(u_xlatu92) + 32i);
      u_xlatu92 = (bitcast<u32>(u_xlati37) & 4294967264u);
    }
    u_xlatu95 = u_xlatu92;
    u_xlatb35 = (u_xlati91 != 0i);
    u_xlatb37 = (u_xlat57.x < 0.99000000953674316406f);
    u_xlatb35 = (u_xlatb35 & u_xlatb37);
    if (!(u_xlatb35)) {
      break;
    }
    u_xlati35.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati91)));
    u_xlati37 = (1i << bitcast<u32>((u_xlati35.x & 31i)));
    u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati91) ^ bitcast<u32>(u_xlati37)));
    u_xlati37 = (bitcast<i32>(u_xlatu95) + -32i);
    u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati37) & 65504u));
    u_xlati35.x = (u_xlati35.x + u_xlati37);
    u_xlati35.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati35.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].www)).xyz, u_xlat13.w);
    u_xlat37.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat37.x = min(u_xlat37.x, u_xlat13.x);
    u_xlat37.x = clamp(u_xlat37.x, 0.0f, 1.0f);
    u_xlat96 = (-(u_xlat57.x) + 1.0f);
    u_xlat37.x = min(u_xlat37.x, u_xlat96);
    u_xlatb96 = (0.0f < x_4093.urp_ReflProbes_ProbePosition[u_xlati35.x].w);
    if (u_xlatb34.x) {
      x_4159 = x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].x;
    } else {
      x_4159 = x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].x;
    }
    u_xlat13.x = x_4159;
    if (u_xlatb34.y) {
      x_4175 = x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].y;
    } else {
      x_4175 = x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].y;
    }
    u_xlat13.y = x_4175;
    if (u_xlatb34.z) {
      x_4191 = x_4093.urp_ReflProbes_BoxMax[u_xlati35.x].z;
    } else {
      x_4191 = x_4093.urp_ReflProbes_BoxMin[u_xlati35.x].z;
    }
    u_xlat13.z = x_4191;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat41 = (vs_TEXCOORD0 + -(x_4093.urp_ReflProbes_ProbePosition[u_xlati35.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat41)).xyz, u_xlat13.w);
    if (u_xlatb96) {
      x_4250 = u_xlat13.xyz;
    } else {
      x_4250 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_4250.xyz, u_xlat13.w);
    u_xlatu96 = u32(abs(x_4093.urp_ReflProbes_ProbePosition[u_xlati35.x].w));
    u_xlatu96 = (u_xlatu96 + 4294967295u);
    u_xlat96 = f32(u_xlatu96);
    u_xlat96 = min(u_xlat30, u_xlat96);
    u_xlat97 = dot(abs(u_xlat13.xyz), x_2746);
    u_xlat97 = max(u_xlat97, 0.00000099999999747524f);
    u_xlat97 = (1.0f / u_xlat97);
    u_xlat14 = (vec3f(u_xlat97) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb42 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb42.x) {
      x_4306 = u_xlat14.x;
    } else {
      x_4306 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_4306;
    if (u_xlatb42.y) {
      x_4319 = u_xlat14.x;
    } else {
      x_4319 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_4319;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat97)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat69.x = floor(u_xlat96);
    u_xlat69.y = (u_xlat69.x + 1.0f);
    u_xlat96 = (u_xlat96 + -(u_xlat69.x));
    u_xlatu69 = vec2u(u_xlat69);
    u_xlati69 = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.x));
    u_xlati35.x = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.y));
    u_xlat69 = ((u_xlat13.xy * x_4093.urp_ReflProbes_MipScaleOffset[u_xlati69].xy) + x_4093.urp_ReflProbes_MipScaleOffset[u_xlati69].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat69, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_4093.urp_ReflProbes_MipScaleOffset[u_xlati35.x].xy) + x_4093.urp_ReflProbes_MipScaleOffset[u_xlati35.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat96) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat37.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat57.x = (u_xlat57.x + u_xlat37.x);
  }
  u_xlatb0 = (u_xlat57.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat30);
    u_xlat0.x = (-(u_xlat57.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat85) * u_xlat1) + u_xlat5.xyw);
  let x_4561 = (u_xlat28 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_4561.xy, u_xlat5.z, x_4561.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_4583 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4583.xy, u_xlat5.z, x_4583.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat85 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat85 = max(u_xlat85, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat85 * u_xlat85);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat85 = ((u_xlat85 * u_xlat85) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat85) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat28.x = dot(u_xlat5.xyw, u_xlat28);
  u_xlat28.x = clamp(u_xlat28.x, 0.0f, 1.0f);
  u_xlat28.x = (-(u_xlat28.x) + 1.0f);
  u_xlat56 = (u_xlat28.x * u_xlat28.x);
  u_xlat56 = (u_xlat56 * u_xlat56);
  u_xlat28.x = (u_xlat56 * u_xlat28.x);
  u_xlat28.x = ((u_xlat60 * u_xlat28.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat28.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat38);
  let x_4702 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_4702.x, x_4702.y, x_4702.z));
  u_xlat84 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat84 = (u_xlat84 * 4.0f);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat84)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat57 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat57 = (-(u_xlat57) + u_xlat1.xy);
  let x_4745 = u_xlat57;
  let x_4747 = x_81.x_GlobalMipBias.x;
  let x_4748 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4745, x_4747);
  u_xlat84 = x_4748.x;
  u_xlat57 = (u_xlat32.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat57) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_4773 = u_xlat1;
  let x_4776 = x_81.x_GlobalMipBias.x;
  let x_4777 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4773.xy, x_4776);
  u_xlat1.x = x_4777.x;
  u_xlat1.x = (u_xlat63.x * u_xlat1.x);
  u_xlat84 = ((u_xlat84 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat29.x = (-(u_xlat64.x) + 1.0f);
  u_xlat1.x = (u_xlat29.x * u_xlat1.x);
  u_xlat29 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_4827 = u_xlat29;
  let x_4829 = x_81.x_GlobalMipBias.x;
  let x_4830 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4827, x_4829);
  u_xlat29.x = x_4830.y;
  u_xlat57.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat57.x = (u_xlat57.x * u_xlat57.x);
  u_xlat57.x = (u_xlat57.x * -1.44269502162933349609f);
  u_xlat57.x = exp2(u_xlat57.x);
  u_xlat57.x = ((u_xlat64.x * 0.34999999403953552246f) + u_xlat57.x);
  u_xlat29.x = (u_xlat57.x * u_xlat29.x);
  u_xlat29.x = (u_xlat61 * u_xlat29.x);
  u_xlat29.x = (u_xlat29.x * 0.89999997615814208984f);
  u_xlat84 = ((u_xlat84 * u_xlat1.x) + u_xlat29.x);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat38 * vec3f(0.69999998807907104492f)) + u_xlat25);
  u_xlat84 = (u_xlat84 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  u_xlat0 = ((vec3f(u_xlat84) * u_xlat1) + u_xlat0);
  SV_Target0.w = (u_xlat87 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat84 = (vs_TEXCOORD1 * -(vs_TEXCOORD1));
  u_xlat84 = exp2(u_xlat84);
  u_xlat0 = (u_xlat0 + -(x_81.unity_FogColor.xyz));
  SV_Target0 = vec4f((((vec3f(u_xlat84) * u_xlat0) + x_81.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

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
  vs_TEXCOORD1 = 0.0f;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(288) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(352) */
  x_ScreenSize : vec4f,
  /* @offset(368) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(384) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_B612SunDirection : vec4f,
  /* @offset(416) */
  x_B612WaterShallow : vec4f,
  /* @offset(432) */
  x_B612WaterDeep : vec4f,
  /* @offset(448) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2589 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2828 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_3801 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_3978 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_4213 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_743 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2859 = vec3f(-1.0f);

const x_2866 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat28 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat59 : vec2f;
  var u_xlat85 : f32;
  var u_xlat4 : vec4f;
  var u_xlat60 : f32;
  var u_xlat88 : f32;
  var u_xlatb32 : bool;
  var x_281 : vec2f;
  var u_xlat32 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat33 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat62 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat63 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat64 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat65 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb93 : bool;
  var u_xlat11 : vec3f;
  var u_xlat38 : vec3f;
  var u_xlat66 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat39 : vec3f;
  var u_xlat92 : f32;
  var u_xlat94 : f32;
  var u_xlat67 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat69 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat96 : f32;
  var u_xlat68 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat99 : f32;
  var u_xlat98 : f32;
  var u_xlat43 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat45 : vec2f;
  var u_xlat46 : vec3f;
  var u_xlat72 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat101 : f32;
  var u_xlat102 : f32;
  var u_xlatb48 : vec2<bool>;
  var u_xlat49 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat37 : vec2f;
  var u_xlat75 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat50 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat79 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat61 : f32;
  var u_xlat104 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat31 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat35 : vec3f;
  var u_xlat87 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb85 : bool;
  var x_2476 : vec3f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec3f;
  var u_xlat27 : vec3f;
  var u_xlatb24 : vec4<bool>;
  var u_xlat30 : f32;
  var u_xlatu30 : u32;
  var u_xlati30 : i32;
  var txVec0 : vec3f;
  var u_xlatb60 : bool;
  var u_xlatb33 : bool;
  var u_xlat34 : vec3f;
  var u_xlat89 : f32;
  var u_xlat90 : f32;
  var u_xlat91 : f32;
  var x_3285 : f32;
  var x_3328 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu62 : vec2u;
  var u_xlati6 : i32;
  var u_xlat29 : vec2f;
  var u_xlat0 : vec3f;
  var x_3719 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati29 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati34 : vec2i;
  var u_xlati35 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb34 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati67 : i32;
  var u_xlatu95 : u32;
  var u_xlat57 : vec2f;
  var u_xlatu35 : u32;
  var u_xlati91 : i32;
  var u_xlatu92 : u32;
  var u_xlatb37 : bool;
  var u_xlatu96 : u32;
  var u_xlatb96 : bool;
  var u_xlatu37 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati70 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati96 : i32;
  var u_xlati41 : i32;
  var u_xlati37 : i32;
  var u_xlatb35 : bool;
  var x_4279 : f32;
  var x_4295 : f32;
  var x_4311 : f32;
  var u_xlat41 : vec3f;
  var x_4370 : vec3f;
  var u_xlat97 : f32;
  var u_xlatb42 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_4426 : f32;
  var x_4439 : f32;
  var u_xlatu69 : vec2u;
  var u_xlati69 : i32;
  var u_xlat56 : f32;
  var u_xlat84 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat28 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat28, u_xlat28);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat28 = (u_xlat28 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat28;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat28 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat59 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat85 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat85, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat60 = max(u_xlat60, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat60))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat59.yx + u_xlat59.yx)).xy, u_xlat4.zw);
  u_xlat60 = dot(u_xlat59, u_xlat59);
  u_xlat88 = max(u_xlat60, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat88))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb32 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb32) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat32 = vec3f(x_314.x, u_xlat32.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat33 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat62 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat62) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat63 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat62.x * 4.0f);
  u_xlat8 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat32.xz * u_xlat5.xx);
  u_xlat32 = vec3f(x_405.x, u_xlat32.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat64 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat64 = (u_xlat64 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat64;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat64 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat65 = (u_xlat32.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat65 = (u_xlat65 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat65));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat63.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat64 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat64 = max(vec2f(u_xlat85), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat64.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat64.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat65.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat65.x = sin(u_xlat65.x);
  u_xlat65.x = (u_xlat65.x * 43758.546875f);
  u_xlat65.x = fract(u_xlat65.x);
  u_xlat65.x = ((u_xlat65.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat65.x = (u_xlat65.x / u_xlat9.y);
  u_xlat65.x = (-(u_xlat65.x) + x_81.x_Time.y);
  u_xlatb93 = (u_xlat65.x >= 0.0f);
  u_xlat10.x = (u_xlat85 + -(x_142.x_BoilRadius));
  let x_744 = (u_xlat65.xx * x_743);
  u_xlat11 = vec3f(x_744.x, u_xlat11.y, x_744.y);
  u_xlat38.x = ((u_xlat65.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat66 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat10.x);
  u_xlat66 = (u_xlat66 / u_xlat38.x);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat66 = (u_xlat66 * -1.44269502162933349609f);
  u_xlat66 = exp2(u_xlat66);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat39 = vec3f(x_804.x, u_xlat39.y, x_804.y);
  u_xlat92 = (u_xlat64.y * 6.66666650772094726562f);
  u_xlat92 = inverseSqrt(u_xlat92);
  let x_818 = (vec2f(u_xlat92) * u_xlat39.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat94 = exp2(u_xlat11.z);
  u_xlat67 = (u_xlat94 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat67 = (u_xlat11.x * u_xlat67);
  u_xlat66 = (u_xlat66 * u_xlat67);
  u_xlat67 = (u_xlat64.x * u_xlat65.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat67));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat66 = (u_xlat66 * u_xlat12.x);
  u_xlat66 = select(0.0f, u_xlat66, u_xlatb93);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_743);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat69 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat42 = vec3f(x_931.x, u_xlat42.y, x_931.y);
  let x_937 = (u_xlat42.xz / u_xlat69);
  u_xlat42 = vec3f(x_937.x, u_xlat42.y, x_937.y);
  let x_944 = (u_xlat42.xz * u_xlat42.xz);
  u_xlat42 = vec3f(x_944.x, u_xlat42.y, x_944.y);
  let x_950 = (u_xlat42.xz * x_949);
  u_xlat42 = vec3f(x_950.x, u_xlat42.y, x_950.y);
  let x_955 = exp2(u_xlat42.xz);
  u_xlat42 = vec3f(x_955.x, u_xlat42.y, x_955.y);
  u_xlat96 = exp2(u_xlat14.z);
  u_xlat68 = (u_xlat96 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat68 = (u_xlat68 * u_xlat14.x);
  u_xlat68 = (u_xlat68 * u_xlat42.x);
  u_xlat42 = vec3f(((u_xlat64.xx * u_xlat12.xy)).xy, u_xlat42.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat42.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat68 = ((u_xlat68 * u_xlat15.x) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat68, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat92) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_743);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat68 = exp2(u_xlat17.z);
  u_xlat99 = (u_xlat68 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat99 = (u_xlat99 * u_xlat17.x);
  u_xlat98 = (u_xlat42.z * u_xlat99);
  u_xlat98 = ((u_xlat98 * u_xlat15.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat98, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat43 = vec3f(x_1094.x, u_xlat43.y, x_1094.y);
  let x_1101 = (u_xlat43.xz / u_xlat9.yy);
  u_xlat43 = vec3f(x_1101.x, u_xlat43.y, x_1101.y);
  let x_1110 = (-(u_xlat43.xz) + x_81.x_Time.yy);
  u_xlat43 = vec3f(x_1110.x, u_xlat43.y, x_1110.y);
  u_xlatb16 = ((u_xlat43.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat43.xx * x_743);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat45 = ((u_xlat43.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat43.xz) + u_xlat10.xx);
  u_xlat46 = vec3f(x_1144.x, u_xlat46.y, x_1144.y);
  let x_1150 = (u_xlat46.xz / u_xlat45);
  u_xlat46 = vec3f(x_1150.x, u_xlat46.y, x_1150.y);
  let x_1157 = (u_xlat46.xz * u_xlat46.xz);
  u_xlat46 = vec3f(x_1157.x, u_xlat46.y, x_1157.y);
  let x_1162 = (u_xlat46.xz * x_949);
  u_xlat46 = vec3f(x_1162.x, u_xlat46.y, x_1162.y);
  let x_1167 = exp2(u_xlat46.xz);
  u_xlat46 = vec3f(x_1167.x, u_xlat46.y, x_1167.y);
  u_xlat98 = exp2(u_xlat18.z);
  u_xlat72.x = (u_xlat98 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat72.x = (u_xlat72.x * u_xlat18.x);
  u_xlat72.x = (u_xlat72.x * u_xlat46.x);
  u_xlat46 = vec3f(((u_xlat64.xx * u_xlat43.xz)).xy, u_xlat46.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat46.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat72.x = ((u_xlat72.x * u_xlat19.x) + u_xlat66);
  if (u_xlatb16.x) {
    x_1232 = u_xlat72.x;
  } else {
    x_1232 = u_xlat66;
  }
  u_xlat66 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat72 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat92) * u_xlat72);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat43.zz * x_743);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat101 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat101 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat102 = (u_xlat46.z * u_xlat19.x);
  u_xlat102 = ((u_xlat102 * u_xlat19.y) + u_xlat66);
  u_xlat66 = select(u_xlat66, u_xlat102, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb48 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_743);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat49 = vec3f(x_1350.x, u_xlat49.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat49.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat37.x = exp2(u_xlat21.z);
  u_xlat102 = (u_xlat37.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat102 = (u_xlat102 * u_xlat21.x);
  u_xlat102 = (u_xlat102 * u_xlat22.x);
  u_xlat75 = (u_xlat64.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat75));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat64.x = ((u_xlat102 * u_xlat22.x) + u_xlat66);
  if (u_xlatb48.x) {
    x_1450 = u_xlat64.x;
  } else {
    x_1450 = u_xlat66;
  }
  u_xlat64.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat92 = (u_xlat92 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_743);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat66 = exp2(u_xlat22.w);
  u_xlat92 = (u_xlat92 * u_xlat66);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat92 = (u_xlat92 * u_xlat22.x);
  u_xlat92 = (u_xlat92 * u_xlat22.y);
  u_xlat92 = ((u_xlat92 * u_xlat22.z) + u_xlat64.x);
  if (u_xlatb48.y) {
    x_1524 = u_xlat92;
  } else {
    x_1524 = u_xlat64.x;
  }
  u_xlat64.x = x_1524;
  u_xlat92 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat102 = (u_xlat85 / u_xlat92);
  u_xlat102 = (-(u_xlat102) + 1.0f);
  u_xlat102 = max(u_xlat102, 0.0f);
  u_xlat64.x = (u_xlat64.x * x_142.x_RingStrength);
  u_xlat64.x = (u_xlat102 * u_xlat64.x);
  u_xlat50 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat85))).xy, u_xlat23.zw);
  u_xlat79 = (x_376 / u_xlat50.xy);
  u_xlat23 = vec4f(((u_xlat79 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat102 = (u_xlat23.x * u_xlat24.x);
  u_xlat64.x = (u_xlat64.x * u_xlat102);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat64.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat64.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat61 = sin(u_xlat33.y);
  u_xlat61 = (u_xlat61 * 1.70000004768371582031f);
  u_xlat61 = ((u_xlat64.x * 6.28318548202514648438f) + u_xlat61);
  u_xlat61 = sin(u_xlat61);
  u_xlat61 = ((u_xlat61 * 0.25f) + 0.75f);
  u_xlat64.x = (u_xlat85 * -(u_xlat85));
  u_xlat102 = (u_xlat50.x * u_xlat50.x);
  u_xlat64.x = (u_xlat64.x / u_xlat102);
  u_xlat64.x = (u_xlat64.x * 1.44269502162933349609f);
  u_xlat64.x = exp2(u_xlat64.x);
  u_xlat104 = (u_xlat85 + u_xlat85);
  u_xlat102 = (u_xlat104 / u_xlat102);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat102));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat64.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat50 = vec3f(((u_xlat50.xx * u_xlat23.xw)).xy, u_xlat50.z);
  let x_1734 = ((u_xlat50.xy * vec2f(u_xlat61)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat64.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat33.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat33 = vec3f(x_1763.x, u_xlat33.y, x_1763.y);
  let x_1769 = u_xlat33;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_1786.x, u_xlat33.y, x_1786.y);
  u_xlat50 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat50.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat50.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat50.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat102 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat85 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat85);
  u_xlat102 = (1.0f / u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat102 = ((u_xlat85 * -2.0f) + 3.0f);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * u_xlat102);
  u_xlat85 = (u_xlat85 * u_xlat64.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat33.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat85)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat85 = sqrt(u_xlat60);
  u_xlat50 = (vec3f(u_xlat85) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat50 = (u_xlat50 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat50 = clamp(u_xlat50, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat50 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat50 = (u_xlat50 * u_xlat50);
  u_xlat60 = (u_xlat50.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat50.xz) + x_376);
  u_xlat33 = vec3f(x_1932.x, u_xlat33.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat62.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat62.x = dot(u_xlat62.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat62.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat33.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat33.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat60 * u_xlat33.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat33 = vec3f(x_2080.x, u_xlat33.y, x_2080.y);
  u_xlat31 = dot(u_xlat59.yx, u_xlat33.xz);
  u_xlat31 = (abs(u_xlat31) * 4.0f);
  u_xlat31 = min(u_xlat31, 1.0f);
  u_xlat85 = max(u_xlat85, 0.00100000004749745131f);
  u_xlat59 = (-(u_xlat59) / vec2f(u_xlat85));
  let x_2105 = (u_xlat62.yy * u_xlat59.yx);
  u_xlat33 = vec3f(x_2105.x, u_xlat33.y, x_2105.y);
  let x_2115 = ((-(u_xlat33.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat33 = vec3f(x_2115.x, u_xlat33.y, x_2115.y);
  let x_2122 = (u_xlat33.xz * vec2f(2.38095235824584960938f));
  u_xlat33 = vec3f(x_2122.x, u_xlat33.y, x_2122.y);
  u_xlat59 = (u_xlat6.yy * u_xlat59);
  u_xlat59 = ((-(u_xlat59) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat59 = ((u_xlat59 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat33;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat33 = vec3f(x_2162.x, u_xlat33.y, x_2162.y);
  let x_2168 = u_xlat59;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat59 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat59 = (u_xlat63.yy * u_xlat59);
  u_xlat59 = ((u_xlat33.xz * u_xlat7.yy) + u_xlat59);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat59 = (u_xlat59 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat59);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat85 = ((u_xlat31 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat85)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat85 = dot(u_xlat3, u_xlat3);
  u_xlat85 = inverseSqrt(u_xlat85);
  u_xlat3 = (vec3f(u_xlat85) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat85 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat85) + 1.0f);
  u_xlat85 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat85 = (1.0f / u_xlat85);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat33 = vec3f(x_2286.x, u_xlat33.y, x_2286.y);
  let x_2294 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2294.x, u_xlat33.y, x_2294.y);
  let x_2302 = (u_xlat33.xz * x_81.x_ScreenSize.xy);
  u_xlat33 = vec3f(x_2302.x, u_xlat33.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat33.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat33 = vec3f(x_2331.x, u_xlat33.y, x_2331.y);
  let x_2341 = (-(u_xlat33.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat35 = vec3f(x_2341.x, u_xlat35.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat33.xx) + u_xlat35.xz);
  u_xlat33 = vec3f(x_2352.x, u_xlat33.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat33.xz);
  u_xlat33 = vec3f(x_2363.x, u_xlat33.y, x_2363.y);
  let x_2372 = (u_xlat33.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat33 = vec3f(x_2372.x, u_xlat33.y, x_2372.y);
  u_xlat87 = (u_xlat33.x / u_xlat33.z);
  u_xlat87 = (-(u_xlat87) + vs_TEXCOORD0.y);
  u_xlat87 = max(u_xlat87, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat33 = vec3f(x_2399.x, u_xlat33.y, x_2399.y);
  u_xlat60 = (u_xlat87 * 4.0f);
  u_xlat60 = min(u_xlat60, 1.0f);
  u_xlat24 = vec4f((((u_xlat33.xz * vec2f(u_xlat60)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb85 = (u_xlat2.x < u_xlat85);
  if (u_xlatb85) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat50 = x_2476;
  u_xlat2 = vec4f((((u_xlat50.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat50.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat85 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat85 = sqrt(u_xlat85);
  u_xlat85 = min(u_xlat85, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat33 = vec3f(x_2555.x, u_xlat33.y, x_2555.y);
  let x_2562 = min(u_xlat33.xz, u_xlat50.xy);
  u_xlat33 = vec3f(x_2562.x, u_xlat33.y, x_2562.y);
  let x_2570 = (u_xlat33.xz * x_81.x_RTHandleScale.xy);
  u_xlat33 = vec3f(x_2570.x, u_xlat33.y, x_2570.y);
  let x_2578 = u_xlat33;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat50 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat24.w);
  u_xlat25 = vec4f(((vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat25.w);
  u_xlat26 = (vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres2.xyz));
  u_xlat27 = (vs_TEXCOORD0 + -(x_2589.x_CascadeShadowSplitSpheres3.xyz));
  u_xlat24.x = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat24.y = dot(u_xlat25.xyz, u_xlat25.xyz);
  u_xlat24.z = dot(u_xlat26, u_xlat26);
  u_xlat24.w = dot(u_xlat27, u_xlat27);
  u_xlatb24 = (u_xlat24 < x_2589.x_CascadeShadowSplitSphereRadii);
  u_xlat25.x = select(0.0f, 1.0f, u_xlatb24.x);
  u_xlat25.y = select(0.0f, 1.0f, u_xlatb24.y);
  u_xlat25.z = select(0.0f, 1.0f, u_xlatb24.z);
  u_xlat25.w = select(0.0f, 1.0f, u_xlatb24.w);
  u_xlat24.x = select(-0.0f, -1.0f, u_xlatb24.x);
  u_xlat24.y = select(-0.0f, -1.0f, u_xlatb24.y);
  u_xlat24.z = select(-0.0f, -1.0f, u_xlatb24.z);
  u_xlat24 = vec4f(((u_xlat24.xyz + u_xlat25.yzw)).xyz, u_xlat24.w);
  u_xlat25 = vec4f(u_xlat25.x, max(u_xlat24.xyz, vec3f()).xyz);
  u_xlat30 = dot(u_xlat25, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat30 = (-(u_xlat30) + 4.0f);
  u_xlatu30 = u32(u_xlat30);
  u_xlati30 = (bitcast<i32>(u_xlatu30) << bitcast<u32>(2i));
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati30 + 1i)].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati30].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati30 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2589.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati30 + 3i)].xyz)).xyz, u_xlat24.w);
  let x_2749 = u_xlat24.xy;
  txVec0 = vec3f(x_2749.x, x_2749.y, u_xlat24.z);
  u_xlat30 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat60 = (-(x_2589.x_MainLightShadowParams.x) + 1.0f);
  u_xlat30 = ((u_xlat30 * x_2589.x_MainLightShadowParams.x) + u_xlat60);
  u_xlatb60 = (0.0f >= u_xlat24.z);
  u_xlatb33 = (u_xlat24.z >= 1.0f);
  u_xlatb60 = (u_xlatb60 | u_xlatb33);
  u_xlat30 = select(u_xlat30, 1.0f, u_xlatb60);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat60 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat60 = ((u_xlat60 * x_2589.x_MainLightShadowParams.z) + x_2589.x_MainLightShadowParams.w);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat33.x = (-(u_xlat30) + 1.0f);
  u_xlat30 = ((u_xlat60 * u_xlat33.x) + u_xlat30);
  u_xlat25.x = dot(x_2828.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_2828.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_2828.unity_SHAb.yw, x_376);
  u_xlat25 = vec4f(((u_xlat25.xyz + -(x_2828.unity_SHC.xyz))).xyz, u_xlat25.w);
  u_xlat26 = (x_81.x_B612WaterShallow.xyz + x_2859);
  u_xlat26 = ((x_81.x_B612SunDirection.www * u_xlat26) + x_2866);
  u_xlat26 = (u_xlat26 * x_142.x_ScatterColor.xyz);
  u_xlat27 = (x_81.x_B612WaterDeep.xyz + x_2859);
  u_xlat27 = ((x_81.x_B612SunDirection.www * u_xlat27) + x_2866);
  let x_2890 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_2894 = (u_xlat23.xw / vec2f(x_2890.x, x_2890.y));
  u_xlat33 = vec3f(x_2894.x, u_xlat33.y, x_2894.y);
  let x_2907 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat33.xz);
  u_xlat34 = vec3f(x_2907.x, u_xlat34.y, x_2907.y);
  let x_2915 = u_xlat34;
  let x_2918 = x_81.x_GlobalMipBias.x;
  let x_2919 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2915.xz, x_2918);
  u_xlat60 = x_2919.x;
  let x_2927 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat34 = vec3f(x_2927.x, u_xlat34.y, x_2927.y);
  let x_2937 = ((u_xlat33.xz * vec2f(1.12999999523162841797f)) + u_xlat34.xz);
  u_xlat33 = vec3f(x_2937.x, u_xlat33.y, x_2937.y);
  let x_2943 = u_xlat33;
  let x_2946 = x_81.x_GlobalMipBias.x;
  let x_2947 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2943.xz, x_2946);
  u_xlat33.x = x_2947.x;
  let x_2956 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat34 = vec3f(x_2956.x, u_xlat34.y, x_2956.y);
  u_xlat89 = dot(u_xlat34.xz, u_xlat34.xz);
  u_xlat89 = sqrt(u_xlat89);
  u_xlat34.x = (u_xlat89 + -(x_142.x_BoilRadius));
  u_xlat90 = ((-(x_142.x_RingGroupSpeed) * u_xlat65.x) + u_xlat34.x);
  u_xlat90 = (u_xlat90 / u_xlat38.x);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat90 = (u_xlat90 * -1.44269502162933349609f);
  u_xlat90 = exp2(u_xlat90);
  u_xlat35.x = max(u_xlat89, 0.15000000596046447754f);
  u_xlat35.x = (u_xlat35.x * 6.66666650772094726562f);
  u_xlat35.x = inverseSqrt(u_xlat35.x);
  let x_3009 = (u_xlat35.xx * u_xlat39.xz);
  u_xlat39 = vec3f(x_3009.x, u_xlat39.y, x_3009.y);
  u_xlat91 = (u_xlat94 * u_xlat39.x);
  u_xlat91 = (u_xlat11.x * u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat91 = ((u_xlat5.x * u_xlat34.x) + -(u_xlat67));
  u_xlat91 = cos(u_xlat91);
  u_xlat90 = (u_xlat90 * u_xlat91);
  u_xlat90 = select(0.0f, u_xlat90, u_xlatb93);
  let x_3044 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3044.x, x_3044.y)) * u_xlat12.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat69);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat96 * u_xlat39.z);
  u_xlat91 = (u_xlat14.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_3085 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat42.xy));
  u_xlat38 = vec3f(x_3085.x, u_xlat38.y, x_3085.y);
  let x_3090 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_3090.x, u_xlat38.y, x_3090.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat68 * u_xlat11.x);
  u_xlat91 = (u_xlat17.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb13.y);
  let x_3138 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3138.x, x_3138.y)) * u_xlat43.xz) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat45);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat98 * u_xlat11.y);
  u_xlat91 = (u_xlat18.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  let x_3179 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat46.xy));
  u_xlat38 = vec3f(x_3179.x, u_xlat38.y, x_3179.y);
  let x_3184 = cos(u_xlat38.xz);
  u_xlat38 = vec3f(x_3184.x, u_xlat38.y, x_3184.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.x) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat35.xx * u_xlat72)).xy, u_xlat11.z);
  u_xlat91 = (u_xlat101 * u_xlat11.x);
  u_xlat91 = (u_xlat20.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.y);
  u_xlat91 = ((u_xlat91 * u_xlat38.z) + u_xlat90);
  u_xlat90 = select(u_xlat90, u_xlat91, u_xlatb16.y);
  let x_3231 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat65 = ((-(vec2f(x_3231.x, x_3231.y)) * u_xlat19.xy) + u_xlat34.xx);
  u_xlat65 = (u_xlat65 / u_xlat49.xz);
  u_xlat65 = (u_xlat65 * u_xlat65);
  u_xlat65 = (u_xlat65 * x_949);
  u_xlat65 = exp2(u_xlat65);
  u_xlat91 = (u_xlat37.x * u_xlat11.y);
  u_xlat91 = (u_xlat21.x * u_xlat91);
  u_xlat91 = (u_xlat91 * u_xlat65.x);
  u_xlat37 = ((u_xlat5.xx * u_xlat34.xx) + -(u_xlat75));
  u_xlat37 = cos(u_xlat37);
  u_xlat5.x = ((u_xlat91 * u_xlat37.x) + u_xlat90);
  if (u_xlatb48.x) {
    x_3285 = u_xlat5.x;
  } else {
    x_3285 = u_xlat90;
  }
  u_xlat5.x = x_3285;
  u_xlat34.x = (u_xlat35.x * u_xlat9.x);
  u_xlat34.x = (u_xlat66 * u_xlat34.x);
  u_xlat34.x = (u_xlat22.x * u_xlat34.x);
  u_xlat34.x = (u_xlat34.x * u_xlat65.y);
  u_xlat34.x = ((u_xlat34.x * u_xlat37.y) + u_xlat5.x);
  if (u_xlatb48.y) {
    x_3328 = u_xlat34.x;
  } else {
    x_3328 = u_xlat5.x;
  }
  u_xlat5.x = x_3328;
  u_xlat34.x = (u_xlat89 / u_xlat92);
  u_xlat34.x = (-(u_xlat34.x) + 1.0f);
  u_xlat34.x = max(u_xlat34.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat34.x * u_xlat5.x);
  u_xlat89 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat89);
  u_xlat89 = (u_xlat79.x * u_xlat89);
  u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
  u_xlat34.x = ((u_xlat89 * -2.0f) + 3.0f);
  u_xlat89 = (u_xlat89 * u_xlat89);
  u_xlat89 = (u_xlat89 * u_xlat34.x);
  u_xlat5.x = (u_xlat89 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat60 = min(u_xlat60, u_xlat33.x);
  u_xlat60 = (u_xlat60 * 2.5f);
  u_xlat60 = (u_xlat60 * x_142.x_CausticsStrength);
  let x_3414 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat33 = vec3f(x_3414.x, u_xlat33.y, x_3414.y);
  u_xlat2.x = min(u_xlat33.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat60 = exp2(u_xlat33.z);
  u_xlat2.x = (u_xlat2.x * u_xlat60);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_3445 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_3445.xy, u_xlat5.z, x_3445.z);
  let x_3452 = (vec3f(u_xlat30) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_3452.xy, u_xlat5.z, x_3452.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_3468 = ((u_xlat5.xyw * u_xlat2.xxx) + x_2866);
  u_xlat5 = vec4f(x_3468.xy, u_xlat5.z, x_3468.z);
  let x_3474 = (u_xlat5.xyw * u_xlat50);
  u_xlat5 = vec4f(x_3474.xy, u_xlat5.z, x_3474.z);
  u_xlat9 = vec4f(((vec3f(u_xlat85) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat85 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat38 = (vec3f(u_xlat30) * x_81.x_MainLightColor.xyz);
  u_xlat30 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat30 = clamp(u_xlat30, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat30) * u_xlat38);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25.xyz);
  u_xlat85 = (u_xlat85 * 0.69999998807907104492f);
  u_xlat85 = min(u_xlat85, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27) + -(u_xlat26))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat85) * u_xlat12.xyz) + u_xlat26)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_3577 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_3577.xy, u_xlat5.z, x_3577.z);
  u_xlat85 = dot(u_xlat3, u_xlat28);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat30 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat60 = (-(x_142.x_F0) + 1.0f);
  u_xlat34.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat60);
  u_xlat85 = (-(u_xlat85) + 1.0f);
  u_xlat90 = (u_xlat85 * u_xlat85);
  u_xlat90 = (u_xlat90 * u_xlat90);
  u_xlat85 = (u_xlat85 * u_xlat90);
  u_xlat85 = ((u_xlat34.x * u_xlat85) + u_xlat30);
  u_xlat85 = clamp(u_xlat85, 0.0f, 1.0f);
  u_xlat30 = dot(-(u_xlat28), u_xlat3);
  u_xlat30 = (u_xlat30 + u_xlat30);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat30))) + -(u_xlat28))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat30 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat30 = (u_xlat30 * x_142.x_Roughness);
  u_xlat30 = (u_xlat30 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu62 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu62.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu62.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat29.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_3719 = u_xlat29.x;
  } else {
    x_3719 = u_xlat1.x;
  }
  u_xlat0.x = x_3719;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu62.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_3781 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_3788 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_3789 = vec2i(x_3781, x_3788);
  u_xlati1 = vec3i(x_3789.x, u_xlati1.y, x_3789.y);
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_3813 = ~(u_xlati1.xz);
  u_xlati35 = vec3i(x_3813.x, u_xlati35.y, x_3813.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati35.xx) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati34 = bitcast<vec2i>((bitcast<vec2u>(u_xlati34) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati34.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati35.z) & bitcast<u32>(u_xlati34.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb34 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati67 = 0i;
  u_xlatu95 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat57.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu35 = (u_xlatu95 >> 16u);
    u_xlati91 = u_xlati67;
    u_xlatu92 = u_xlatu95;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb37 = (u_xlati91 == 0i);
      u_xlatu96 = (u_xlatu92 & 65535u);
      u_xlatb96 = (u_xlatu35 >= u_xlatu96);
      u_xlatb37 = (u_xlatb37 & u_xlatb96);
      if (!(u_xlatb37)) {
        break;
      }
      param_6 = u_xlatu92;
      param_7 = 5i;
      param_8 = 11i;
      let x_3927 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu37 = x_3927;
      u_xlatu13 = (vec4u(u_xlatu37) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3948 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3955 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3962 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3969 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_3948, x_3955, x_3962, x_3969);
      u_xlati70 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_3978.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_3978.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_4010 = bitcast<vec2i>((bitcast<vec2u>(u_xlati70) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_4010.x, u_xlati14.y, x_4010.y);
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_3801.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati41) | bitcast<u32>(u_xlati13.x)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu92) & 31i)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(u_xlati13.x)));
      u_xlati37 = (bitcast<i32>(u_xlatu37) << bitcast<u32>(5i));
      u_xlatu37 = (u_xlatu35 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati37)))));
      u_xlatu37 = min(u_xlatu37, 31u);
      u_xlatu37 = (bitcast<u32>(-(bitcast<i32>(u_xlatu37))) + 31u);
      u_xlatu37 = (4294967295u >> (u_xlatu37 & 31u));
      u_xlati91 = bitcast<i32>((u_xlatu37 & bitcast<u32>(u_xlati96)));
      u_xlati37 = (bitcast<i32>(u_xlatu92) + 32i);
      u_xlatu92 = (bitcast<u32>(u_xlati37) & 4294967264u);
    }
    u_xlatu95 = u_xlatu92;
    u_xlatb35 = (u_xlati91 != 0i);
    u_xlatb37 = (u_xlat57.x < 0.99000000953674316406f);
    u_xlatb35 = (u_xlatb35 & u_xlatb37);
    if (!(u_xlatb35)) {
      break;
    }
    u_xlati35.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati91)));
    u_xlati37 = (1i << bitcast<u32>((u_xlati35.x & 31i)));
    u_xlati67 = bitcast<i32>((bitcast<u32>(u_xlati91) ^ bitcast<u32>(u_xlati37)));
    u_xlati37 = (bitcast<i32>(u_xlatu95) + -32i);
    u_xlati37 = bitcast<i32>((bitcast<u32>(u_xlati37) & 65504u));
    u_xlati35.x = (u_xlati35.x + u_xlati37);
    u_xlati35.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati35.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].www)).xyz, u_xlat13.w);
    u_xlat37.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat37.x = min(u_xlat37.x, u_xlat13.x);
    u_xlat37.x = clamp(u_xlat37.x, 0.0f, 1.0f);
    u_xlat96 = (-(u_xlat57.x) + 1.0f);
    u_xlat37.x = min(u_xlat37.x, u_xlat96);
    u_xlatb96 = (0.0f < x_4213.urp_ReflProbes_ProbePosition[u_xlati35.x].w);
    if (u_xlatb34.x) {
      x_4279 = x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].x;
    } else {
      x_4279 = x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].x;
    }
    u_xlat13.x = x_4279;
    if (u_xlatb34.y) {
      x_4295 = x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].y;
    } else {
      x_4295 = x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].y;
    }
    u_xlat13.y = x_4295;
    if (u_xlatb34.z) {
      x_4311 = x_4213.urp_ReflProbes_BoxMax[u_xlati35.x].z;
    } else {
      x_4311 = x_4213.urp_ReflProbes_BoxMin[u_xlati35.x].z;
    }
    u_xlat13.z = x_4311;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat41 = (vs_TEXCOORD0 + -(x_4213.urp_ReflProbes_ProbePosition[u_xlati35.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat41)).xyz, u_xlat13.w);
    if (u_xlatb96) {
      x_4370 = u_xlat13.xyz;
    } else {
      x_4370 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_4370.xyz, u_xlat13.w);
    u_xlatu96 = u32(abs(x_4213.urp_ReflProbes_ProbePosition[u_xlati35.x].w));
    u_xlatu96 = (u_xlatu96 + 4294967295u);
    u_xlat96 = f32(u_xlatu96);
    u_xlat96 = min(u_xlat30, u_xlat96);
    u_xlat97 = dot(abs(u_xlat13.xyz), x_2866);
    u_xlat97 = max(u_xlat97, 0.00000099999999747524f);
    u_xlat97 = (1.0f / u_xlat97);
    u_xlat14 = (vec3f(u_xlat97) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb42 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb42.x) {
      x_4426 = u_xlat14.x;
    } else {
      x_4426 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_4426;
    if (u_xlatb42.y) {
      x_4439 = u_xlat14.x;
    } else {
      x_4439 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_4439;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat97)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat69.x = floor(u_xlat96);
    u_xlat69.y = (u_xlat69.x + 1.0f);
    u_xlat96 = (u_xlat96 + -(u_xlat69.x));
    u_xlatu69 = vec2u(u_xlat69);
    u_xlati69 = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.x));
    u_xlati35.x = ((u_xlati35.x * 7i) + bitcast<i32>(u_xlatu69.y));
    u_xlat69 = ((u_xlat13.xy * x_4213.urp_ReflProbes_MipScaleOffset[u_xlati69].xy) + x_4213.urp_ReflProbes_MipScaleOffset[u_xlati69].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat69, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_4213.urp_ReflProbes_MipScaleOffset[u_xlati35.x].xy) + x_4213.urp_ReflProbes_MipScaleOffset[u_xlati35.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat96) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat37.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat57.x = (u_xlat57.x + u_xlat37.x);
  }
  u_xlatb0 = (u_xlat57.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat30);
    u_xlat0.x = (-(u_xlat57.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat85) * u_xlat1) + u_xlat5.xyw);
  let x_4681 = (u_xlat28 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_4681.xy, u_xlat5.z, x_4681.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_4703 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4703.xy, u_xlat5.z, x_4703.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat85 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat85 = max(u_xlat85, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat85 * u_xlat85);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat85 = ((u_xlat85 * u_xlat85) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat85) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat28.x = dot(u_xlat5.xyw, u_xlat28);
  u_xlat28.x = clamp(u_xlat28.x, 0.0f, 1.0f);
  u_xlat28.x = (-(u_xlat28.x) + 1.0f);
  u_xlat56 = (u_xlat28.x * u_xlat28.x);
  u_xlat56 = (u_xlat56 * u_xlat56);
  u_xlat28.x = (u_xlat56 * u_xlat28.x);
  u_xlat28.x = ((u_xlat60 * u_xlat28.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat28.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat38);
  let x_4822 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_4822.x, x_4822.y, x_4822.z));
  u_xlat84 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat84 = (u_xlat84 * 4.0f);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat84)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat57 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat57 = (-(u_xlat57) + u_xlat1.xy);
  let x_4865 = u_xlat57;
  let x_4867 = x_81.x_GlobalMipBias.x;
  let x_4868 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4865, x_4867);
  u_xlat84 = x_4868.x;
  u_xlat57 = (u_xlat32.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat57) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_4893 = u_xlat1;
  let x_4896 = x_81.x_GlobalMipBias.x;
  let x_4897 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4893.xy, x_4896);
  u_xlat1.x = x_4897.x;
  u_xlat1.x = (u_xlat63.x * u_xlat1.x);
  u_xlat84 = ((u_xlat84 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat29.x = (-(u_xlat64.x) + 1.0f);
  u_xlat1.x = (u_xlat29.x * u_xlat1.x);
  u_xlat29 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_4947 = u_xlat29;
  let x_4949 = x_81.x_GlobalMipBias.x;
  let x_4950 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_4947, x_4949);
  u_xlat29.x = x_4950.y;
  u_xlat57.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat57.x = (u_xlat57.x * u_xlat57.x);
  u_xlat57.x = (u_xlat57.x * -1.44269502162933349609f);
  u_xlat57.x = exp2(u_xlat57.x);
  u_xlat57.x = ((u_xlat64.x * 0.34999999403953552246f) + u_xlat57.x);
  u_xlat29.x = (u_xlat57.x * u_xlat29.x);
  u_xlat29.x = (u_xlat61 * u_xlat29.x);
  u_xlat29.x = (u_xlat29.x * 0.89999997615814208984f);
  u_xlat84 = ((u_xlat84 * u_xlat1.x) + u_xlat29.x);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat38 * vec3f(0.69999998807907104492f)) + u_xlat25.xyz);
  u_xlat84 = (u_xlat84 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  SV_Target0 = vec4f((((vec3f(u_xlat84) * u_xlat1) + u_xlat0)).xyz, SV_Target0.w);
  SV_Target0.w = (u_xlat87 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Assets/Levels/B612/Shaders/B612_Pond.shader
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
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
  vs_TEXCOORD1 = (u_xlat0.x * x_74.unity_FogParams.x);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/B612/Shaders/B612_Pond.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_FPParams0 : vec4f,
  /* @offset(96) */
  x_FPParams1 : vec4f,
  /* @offset(112) */
  x_FPParams2 : vec4f,
  /* @offset(128) */
  x_Time : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  x_ZBufferParams : vec4f,
  /* @offset(176) */
  unity_OrthoParams : vec4f,
  /* @offset(192) */
  x_ScaleBiasRt : vec4f,
  /* @offset(208) */
  x_RTHandleScale : vec4f,
  /* @offset(224) */
  unity_FogColor : vec4f,
  /* @offset(240) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(304) */
  hlslcc_mtx4x4unity_MatrixInvVP : Arr_1,
  /* @offset(368) */
  x_ScreenSize : vec4f,
  /* @offset(384) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(400) */
  x_CameraOpaqueTexture_TexelSize : vec4f,
  /* @offset(416) */
  x_B612SunDirection : vec4f,
  /* @offset(432) */
  x_B612WaterShallow : vec4f,
  /* @offset(448) */
  x_B612WaterDeep : vec4f,
  /* @offset(464) */
  x_B612WaterParams : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_TileA : f32,
  /* @offset(4) */
  x_TileB : f32,
  /* @offset(8) */
  x_Drift : f32,
  /* @offset(12) */
  x_CausticsTile : f32,
  /* @offset(16) */
  x_NormalStrengthA : f32,
  /* @offset(20) */
  x_NormalStrengthB : f32,
  /* @offset(32) */
  x_SpringCenter : vec4f,
  /* @offset(48) */
  x_VentImage : vec4f,
  /* @offset(64) */
  x_Outlet : vec4f,
  /* @offset(80) */
  x_BoilRadius : f32,
  /* @offset(84) */
  x_BoilPulse : f32,
  /* @offset(88) */
  x_BoilDome : f32,
  /* @offset(92) */
  x_BoilChurn : f32,
  /* @offset(96) */
  x_RingWavelength : f32,
  /* @offset(100) */
  x_RingPhaseSpeed : f32,
  /* @offset(104) */
  x_RingGroupSpeed : f32,
  /* @offset(108) */
  x_RingRate : f32,
  /* @offset(112) */
  x_RingRadius : f32,
  /* @offset(116) */
  x_RingStrength : f32,
  /* @offset(120) */
  x_FlowK : f32,
  /* @offset(124) */
  x_DriftBoost : f32,
  /* @offset(128) */
  x_FleckTile : f32,
  /* @offset(132) */
  x_FleckAmount : f32,
  /* @offset(136) */
  x_Tongue : f32,
  /* @offset(140) */
  x_OutletTurb : f32,
  /* @offset(144) */
  x_ScatterColor : vec4f,
  /* @offset(160) */
  x_DeepColor : vec4f,
  /* @offset(176) */
  x_ScatterDensity : f32,
  /* @offset(180) */
  x_Refraction : f32,
  /* @offset(192) */
  x_Absorption : vec4f,
  /* @offset(208) */
  x_ReflectionStrength : f32,
  /* @offset(212) */
  x_F0 : f32,
  /* @offset(216) */
  x_Roughness : f32,
  /* @offset(220) */
  x_SunSpecular : f32,
  /* @offset(224) */
  x_EdgeSoftness : f32,
  /* @offset(228) */
  x_CausticsStrength : f32,
}

alias Arr_2 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_2,
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

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 2u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_3,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_4,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_5,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_6,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_7,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_81 : PGlobals;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(6) var<uniform> x_142 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(7) var x_FleckTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FleckTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_2590 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_3957 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_4943 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_5120 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_5355 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : f32;

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

const x_361 = vec2f(0.5f);

const x_374 = vec2f(2.0f);

const x_376 = vec2f(1.0f);

const x_465 = vec2f(-1.0f);

const x_469 = vec2f(1.0f, -1.0f);

const x_744 = vec2f(2.85714292526245117188f, -0.41219860315322875977f);

const x_788 = vec4f(127.09999847412109375f);

const x_793 = vec4f(43758.546875f);

const x_801 = vec2f(0.55000001192092895508f);

const x_803 = vec2f(0.44999998807907104492f);

const x_871 = vec2f(0.64999997615814208984f);

const x_912 = vec2f(0.04500000178813934326f);

const x_914 = vec2f(0.07999999821186065674f);

const x_949 = vec2f(-1.44269502162933349609f);

const x_2111 = vec2f(0.34999999403953552246f);

const x_2758 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_2824 = vec2f(0.15999999642372131348f);

const x_2896 = vec3f(-2.5f, -0.5f, 1.5f);

const x_3295 = vec2f(0.08163200318813323975f);

const x_3314 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_3317 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_3324 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_3362 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_3988 = vec3f(-1.0f);

const x_3998 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat38 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat79 : vec2f;
  var u_xlat115 : f32;
  var u_xlat4 : vec4f;
  var u_xlat80 : f32;
  var u_xlat118 : f32;
  var u_xlatb42 : bool;
  var x_281 : vec2f;
  var u_xlat42 : vec3f;
  var u_xlat5 : vec4f;
  var u_xlat43 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat82 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat83 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat84 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat85 : vec2f;
  var u_xlat10 : vec3f;
  var u_xlatb123 : bool;
  var u_xlat11 : vec3f;
  var u_xlat48 : vec3f;
  var u_xlat86 : f32;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat49 : vec3f;
  var u_xlat122 : f32;
  var u_xlat124 : f32;
  var u_xlat87 : f32;
  var u_xlatb13 : vec2<bool>;
  var u_xlat14 : vec3f;
  var u_xlat89 : vec2f;
  var u_xlat52 : vec3f;
  var u_xlat126 : f32;
  var u_xlat88 : f32;
  var u_xlat15 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat129 : f32;
  var u_xlat128 : f32;
  var u_xlat53 : vec3f;
  var u_xlatb16 : vec2<bool>;
  var u_xlat18 : vec3f;
  var u_xlat55 : vec2f;
  var u_xlat56 : vec3f;
  var u_xlat92 : vec2f;
  var u_xlat19 : vec3f;
  var x_1232 : f32;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat131 : f32;
  var u_xlat132 : f32;
  var u_xlatb58 : vec2<bool>;
  var u_xlat59 : vec3f;
  var u_xlat22 : vec4f;
  var u_xlat47 : vec2f;
  var u_xlat95 : vec2f;
  var x_1450 : f32;
  var x_1524 : f32;
  var u_xlat60 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat99 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat81 : f32;
  var u_xlat134 : f32;
  var u_xlatb6 : bool;
  var x_1948 : vec2f;
  var u_xlat41 : f32;
  var u_xlatu24 : vec4u;
  var u_xlat45 : vec3f;
  var u_xlat117 : f32;
  var u_xlatu25 : vec4u;
  var u_xlatb115 : bool;
  var x_2476 : vec3f;
  var u_xlatb40 : bool;
  var u_xlat25 : vec4f;
  var txVec0 : vec3f;
  var u_xlat26 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlat40 : f32;
  var u_xlatb80 : bool;
  var u_xlat44 : vec3f;
  var u_xlat102 : vec2f;
  var u_xlat27 : vec4f;
  var u_xlat28 : vec4f;
  var u_xlat29 : vec4f;
  var u_xlat30 : vec4f;
  var u_xlat31 : vec4f;
  var u_xlat32 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat119 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat33 : vec4f;
  var u_xlat63 : vec2f;
  var u_xlat34 : vec2f;
  var u_xlat103 : vec2f;
  var u_xlat35 : vec4f;
  var u_xlat36 : vec4f;
  var u_xlat37 : vec4f;
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
  var u_xlatb43 : bool;
  var u_xlat120 : f32;
  var u_xlat121 : f32;
  var x_4425 : f32;
  var x_4468 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu82 : vec2u;
  var u_xlati6 : i32;
  var u_xlat39 : vec2f;
  var u_xlat0 : vec3f;
  var x_4861 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati39 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati44 : vec2i;
  var u_xlati45 : vec3i;
  var u_xlati11 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb44 : vec3<bool>;
  var u_xlatu11 : vec2u;
  var u_xlati87 : i32;
  var u_xlatu125 : u32;
  var u_xlat77 : vec2f;
  var u_xlatu45 : u32;
  var u_xlati121 : i32;
  var u_xlatu122 : u32;
  var u_xlatb47 : bool;
  var u_xlatu126 : u32;
  var u_xlatb126 : bool;
  var u_xlatu47 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec4u;
  var u_xlatu14 : vec2u;
  var u_xlati13 : vec4i;
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
  var u_xlati90 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec3i;
  var u_xlati126 : i32;
  var u_xlati51 : i32;
  var u_xlati47 : i32;
  var u_xlatb45 : bool;
  var x_5421 : f32;
  var x_5437 : f32;
  var x_5453 : f32;
  var u_xlat51 : vec3f;
  var x_5512 : vec3f;
  var u_xlat127 : f32;
  var u_xlatb52 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_5568 : f32;
  var x_5581 : f32;
  var u_xlatu89 : vec2u;
  var u_xlati89 : i32;
  var u_xlat76 : f32;
  var u_xlat114 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat38 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat38, u_xlat38);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat38 = (u_xlat38 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat38;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat38 = x_130;
  u_xlat2 = (vs_TEXCOORD0.xzxz + -(x_142.x_SpringCenter.xzxz));
  u_xlat3 = vec3f(((vs_TEXCOORD0.xz + -(x_142.x_VentImage.xz))).xy, u_xlat3.z);
  u_xlat79 = (vs_TEXCOORD0.zx + -(x_142.x_Outlet.zx));
  u_xlat115 = dot(u_xlat2.zw, u_xlat2.zw);
  u_xlat4.x = max(u_xlat115, 0.00999999977648258209f);
  u_xlat4 = vec4f(((u_xlat2.zw / u_xlat4.xx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat80 = max(u_xlat80, 0.00999999977648258209f);
  u_xlat3 = vec3f(((u_xlat3.xy / vec2f(u_xlat80))).xy, u_xlat3.z);
  u_xlat3 = vec3f(((u_xlat3.xy + u_xlat4.xy)).xy, u_xlat3.z);
  u_xlat4 = vec4f(((u_xlat79.yx + u_xlat79.yx)).xy, u_xlat4.zw);
  u_xlat80 = dot(u_xlat79, u_xlat79);
  u_xlat118 = max(u_xlat80, 0.01999999955296516418f);
  u_xlat4 = vec4f(((u_xlat4.xy / vec2f(u_xlat118))).xy, u_xlat4.zw);
  u_xlat3 = vec3f(((u_xlat3.xy + -(u_xlat4.xy))).xy, u_xlat3.z);
  let x_247 = vec2f(x_142.x_FlowK, x_142.x_FlowK);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_247.x, x_247.y))).xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  u_xlatb42 = (0.60000002384185791016f < u_xlat4.x);
  u_xlat4.x = (0.60000002384185791016f / u_xlat4.x);
  let x_277 = (u_xlat3.xy * u_xlat4.xx);
  u_xlat4 = vec4f(x_277.x, u_xlat4.yz, x_277.y);
  if (u_xlatb42) {
    x_281 = u_xlat4.xw;
  } else {
    x_281 = u_xlat3.xy;
  }
  u_xlat3 = vec3f(x_281.xy, u_xlat3.z);
  u_xlat4.x = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat4.x = sqrt(u_xlat4.x);
  let x_310 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  let x_314 = (u_xlat3.xy * vec2f(x_310.x, x_310.y));
  u_xlat42 = vec3f(x_314.x, u_xlat42.y, x_314.y);
  u_xlat5.x = dot(vs_TEXCOORD0.xz, vec2f(0.37000000476837158203f, 0.61000001430511474609f));
  u_xlat5.x = (u_xlat5.x * 0.5f);
  u_xlat5.x = fract(u_xlat5.x);
  u_xlat43 = (x_81.x_Time.yyy * vec3f(0.25f, 1.29999995231628417969f, 0.34999999403953552246f));
  u_xlat6 = vec4f((((x_81.x_Time.yy * vec2f(0.25f, 0.44999998807907104492f)) + u_xlat5.xx)).xy, u_xlat6.zw);
  u_xlat82 = fract(u_xlat6.xy);
  u_xlat6 = vec4f(((u_xlat6.xy + x_361)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = ((-(u_xlat82) * x_374) + x_376);
  u_xlat7 = (-(abs(u_xlat7)) + x_376);
  u_xlat83 = (-(u_xlat7) + x_376);
  u_xlat5.x = (u_xlat82.x * 4.0f);
  u_xlat8 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat5.x = (u_xlat6.x * 4.0f);
  let x_405 = (u_xlat42.xz * u_xlat5.xx);
  u_xlat42 = vec3f(x_405.x, u_xlat42.y, x_405.y);
  u_xlat5.x = (x_81.x_Time.y * x_142.x_Drift);
  let x_419 = (u_xlat5.xx * vec2f(-0.85000002384185791016f, 1.36000001430511474609f));
  u_xlat6 = vec4f(x_419.x, u_xlat6.y, x_419.y, u_xlat6.w);
  u_xlat84 = ((u_xlat5.xx * vec2f(0.69999998807907104492f, 0.40000000596046447754f)) + vs_TEXCOORD0.xz);
  u_xlat84 = (u_xlat84 / vec2f(x_142.x_TileA));
  let x_448 = u_xlat84;
  let x_450 = x_81.x_GlobalMipBias.x;
  let x_451 = textureSampleBias(x_NormalA, sampler_NormalA, x_448, x_450);
  u_xlat9 = vec4f(x_451.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat84 = ((u_xlat9.xy * x_374) + x_465);
  let x_473 = ((vs_TEXCOORD0.zx * x_469) + u_xlat6.xz);
  u_xlat6 = vec4f(x_473.x, u_xlat6.y, x_473.y, u_xlat6.w);
  let x_482 = vec2f(x_142.x_TileB, x_142.x_TileB);
  let x_486 = (u_xlat6.xz / vec2f(x_482.x, x_482.y));
  u_xlat6 = vec4f(x_486.x, u_xlat6.y, x_486.y, u_xlat6.w);
  u_xlat9 = vec4f(((u_xlat8.yx * x_469)).xy, u_xlat9.zw);
  let x_500 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_500.x, x_500.y))).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat6.xz + -(u_xlat9.xy))).xy, u_xlat9.zw);
  let x_520 = u_xlat9;
  let x_523 = x_81.x_GlobalMipBias.x;
  let x_524 = textureSampleBias(x_NormalB, sampler_NormalB, x_520.xy, x_523);
  u_xlat9 = vec4f(x_524.xyw.xyz, u_xlat9.w);
  u_xlat9.x = (u_xlat9.x * u_xlat9.z);
  u_xlat9 = vec4f((((u_xlat9.xy * x_374) + x_465)).xy, u_xlat9.zw);
  let x_547 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  u_xlat9 = vec4f(((u_xlat9.xy * vec2f(x_547.x, x_547.y))).xy, u_xlat9.zw);
  u_xlat85 = (u_xlat42.zx * x_469);
  let x_563 = vec2f(x_142.x_TileB, x_142.x_TileB);
  u_xlat85 = (u_xlat85 / vec2f(x_563.x, x_563.y));
  let x_572 = (u_xlat6.xz + -(u_xlat85));
  u_xlat6 = vec4f(x_572.x, u_xlat6.y, x_572.y, u_xlat6.w);
  let x_578 = (u_xlat6.xz + vec2f(0.37000000476837158203f));
  u_xlat6 = vec4f(x_578.x, u_xlat6.y, x_578.y, u_xlat6.w);
  let x_585 = u_xlat6;
  let x_588 = x_81.x_GlobalMipBias.x;
  let x_589 = textureSampleBias(x_NormalB, sampler_NormalB, x_585.xz, x_588);
  u_xlat10 = x_589.xyw;
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  let x_600 = ((u_xlat10.xy * x_374) + x_465);
  u_xlat6 = vec4f(x_600.x, u_xlat6.y, x_600.y, u_xlat6.w);
  let x_609 = vec2f(x_142.x_NormalStrengthB, x_142.x_NormalStrengthB);
  let x_613 = (u_xlat6.xz * vec2f(x_609.x, x_609.y));
  u_xlat6 = vec4f(x_613.x, u_xlat6.y, x_613.y, u_xlat6.w);
  let x_620 = (u_xlat83.xx * u_xlat6.xz);
  u_xlat6 = vec4f(x_620.x, u_xlat6.y, x_620.y, u_xlat6.w);
  let x_630 = ((u_xlat9.xy * u_xlat7.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_630.x, u_xlat6.y, x_630.y, u_xlat6.w);
  let x_641 = ((u_xlat84 * vec2f(x_142.x_NormalStrengthA)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_641.x, u_xlat6.y, x_641.y, u_xlat6.w);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat84 = max(vec2f(u_xlat115), vec2f(0.00100000004749745131f, 0.15000000596046447754f));
  u_xlat2 = (u_xlat2 / u_xlat84.xxxx);
  u_xlat9 = vec4f(max(vec2f(x_142.x_RingWavelength, x_142.x_RingRate), vec2f(0.01999999955296516418f, 0.05000000074505805969f)).xy, u_xlat9.zw);
  u_xlat5.x = (6.28318548202514648438f / u_xlat9.x);
  u_xlat84.x = (u_xlat5.x * x_142.x_RingPhaseSpeed);
  u_xlat9.x = (u_xlat9.y * x_81.x_Time.y);
  u_xlat9.x = floor(u_xlat9.x);
  u_xlat85.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat85.x = sin(u_xlat85.x);
  u_xlat85.x = (u_xlat85.x * 43758.546875f);
  u_xlat85.x = fract(u_xlat85.x);
  u_xlat85.x = ((u_xlat85.x * 0.64999997615814208984f) + u_xlat9.x);
  u_xlat85.x = (u_xlat85.x / u_xlat9.y);
  u_xlat85.x = (-(u_xlat85.x) + x_81.x_Time.y);
  u_xlatb123 = (u_xlat85.x >= 0.0f);
  u_xlat10.x = (u_xlat115 + -(x_142.x_BoilRadius));
  let x_745 = (u_xlat85.xx * x_744);
  u_xlat11 = vec3f(x_745.x, u_xlat11.y, x_745.y);
  u_xlat48.x = ((u_xlat85.x * 0.04500000178813934326f) + 0.07999999821186065674f);
  u_xlat86 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat10.x);
  u_xlat86 = (u_xlat86 / u_xlat48.x);
  u_xlat86 = (u_xlat86 * u_xlat86);
  u_xlat86 = (u_xlat86 * -1.44269502162933349609f);
  u_xlat86 = exp2(u_xlat86);
  u_xlat12 = (u_xlat9.xxxx + vec4f(17.299999237060546875f, -1.0f, 16.299999237060546875f, -2.0f));
  u_xlat13 = (u_xlat12 * x_788);
  u_xlat13 = sin(u_xlat13);
  u_xlat13 = (u_xlat13 * x_793);
  u_xlat13 = fract(u_xlat13);
  let x_804 = ((u_xlat13.xz * x_801) + x_803);
  u_xlat49 = vec3f(x_804.x, u_xlat49.y, x_804.y);
  u_xlat122 = (u_xlat84.y * 6.66666650772094726562f);
  u_xlat122 = inverseSqrt(u_xlat122);
  let x_818 = (vec2f(u_xlat122) * u_xlat49.xz);
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.y, u_xlat12.w);
  u_xlat124 = exp2(u_xlat11.z);
  u_xlat87 = (u_xlat124 * u_xlat12.x);
  u_xlat11.x = u_xlat11.x;
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlat87 = (u_xlat11.x * u_xlat87);
  u_xlat86 = (u_xlat86 * u_xlat87);
  u_xlat87 = (u_xlat84.x * u_xlat85.x);
  u_xlat12.x = ((u_xlat5.x * u_xlat10.x) + -(u_xlat87));
  u_xlat12.x = cos(u_xlat12.x);
  u_xlat86 = (u_xlat86 * u_xlat12.x);
  u_xlat86 = select(0.0f, u_xlat86, u_xlatb123);
  u_xlat12 = vec4f((((u_xlat13.yw * x_871) + u_xlat12.yw)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat9.yy)).xy, u_xlat12.zw);
  u_xlat12 = vec4f(((-(u_xlat12.xy) + x_81.x_Time.yy)).xy, u_xlat12.zw);
  u_xlatb13 = ((u_xlat12.xyxx >= vec4f())).xy;
  let x_906 = (u_xlat12.xx * x_744);
  u_xlat14 = vec3f(x_906.x, u_xlat14.y, x_906.y);
  u_xlat89 = ((u_xlat12.xy * x_912) + x_914);
  let x_921 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_931 = ((-(vec2f(x_921.x, x_921.y)) * u_xlat12.xy) + u_xlat10.xx);
  u_xlat52 = vec3f(x_931.x, u_xlat52.y, x_931.y);
  let x_937 = (u_xlat52.xz / u_xlat89);
  u_xlat52 = vec3f(x_937.x, u_xlat52.y, x_937.y);
  let x_944 = (u_xlat52.xz * u_xlat52.xz);
  u_xlat52 = vec3f(x_944.x, u_xlat52.y, x_944.y);
  let x_950 = (u_xlat52.xz * x_949);
  u_xlat52 = vec3f(x_950.x, u_xlat52.y, x_950.y);
  let x_955 = exp2(u_xlat52.xz);
  u_xlat52 = vec3f(x_955.x, u_xlat52.y, x_955.y);
  u_xlat126 = exp2(u_xlat14.z);
  u_xlat88 = (u_xlat126 * u_xlat12.z);
  u_xlat14.x = u_xlat14.x;
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat88 = (u_xlat88 * u_xlat14.x);
  u_xlat88 = (u_xlat88 * u_xlat52.x);
  u_xlat52 = vec3f(((u_xlat84.xx * u_xlat12.xy)).xy, u_xlat52.z);
  u_xlat15 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat52.xy))).xy, u_xlat15.z);
  u_xlat15 = vec3f(cos(u_xlat15.xy).xy, u_xlat15.z);
  u_xlat88 = ((u_xlat88 * u_xlat15.x) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat88, u_xlatb13.x);
  u_xlat16 = (u_xlat9.xxxx + vec4f(15.299999237060546875f, -3.0f, 14.299999237060546875f, -4.0f));
  u_xlat17 = (u_xlat16 * x_788);
  u_xlat17 = sin(u_xlat17);
  u_xlat17 = (u_xlat17 * x_793);
  u_xlat17 = fract(u_xlat17);
  let x_1038 = ((u_xlat17.xz * x_801) + x_803);
  u_xlat15 = vec3f(x_1038.x, u_xlat15.y, x_1038.y);
  let x_1045 = (vec2f(u_xlat122) * u_xlat15.xz);
  u_xlat16 = vec4f(x_1045.x, u_xlat16.y, x_1045.y, u_xlat16.w);
  let x_1050 = (u_xlat12.yy * x_744);
  u_xlat17 = vec4f(x_1050.x, u_xlat17.y, x_1050.y, u_xlat17.w);
  u_xlat88 = exp2(u_xlat17.z);
  u_xlat129 = (u_xlat88 * u_xlat16.x);
  u_xlat17.x = u_xlat17.x;
  u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
  u_xlat129 = (u_xlat129 * u_xlat17.x);
  u_xlat128 = (u_xlat52.z * u_xlat129);
  u_xlat128 = ((u_xlat128 * u_xlat15.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat128, u_xlatb13.y);
  let x_1094 = ((u_xlat17.yw * x_871) + u_xlat16.yw);
  u_xlat53 = vec3f(x_1094.x, u_xlat53.y, x_1094.y);
  let x_1101 = (u_xlat53.xz / u_xlat9.yy);
  u_xlat53 = vec3f(x_1101.x, u_xlat53.y, x_1101.y);
  let x_1110 = (-(u_xlat53.xz) + x_81.x_Time.yy);
  u_xlat53 = vec3f(x_1110.x, u_xlat53.y, x_1110.y);
  u_xlatb16 = ((u_xlat53.xzxx >= vec4f())).xy;
  let x_1121 = (u_xlat53.xx * x_744);
  u_xlat18 = vec3f(x_1121.x, u_xlat18.y, x_1121.y);
  u_xlat55 = ((u_xlat53.xz * x_912) + x_914);
  let x_1134 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  let x_1144 = ((-(vec2f(x_1134.x, x_1134.y)) * u_xlat53.xz) + u_xlat10.xx);
  u_xlat56 = vec3f(x_1144.x, u_xlat56.y, x_1144.y);
  let x_1150 = (u_xlat56.xz / u_xlat55);
  u_xlat56 = vec3f(x_1150.x, u_xlat56.y, x_1150.y);
  let x_1157 = (u_xlat56.xz * u_xlat56.xz);
  u_xlat56 = vec3f(x_1157.x, u_xlat56.y, x_1157.y);
  let x_1162 = (u_xlat56.xz * x_949);
  u_xlat56 = vec3f(x_1162.x, u_xlat56.y, x_1162.y);
  let x_1167 = exp2(u_xlat56.xz);
  u_xlat56 = vec3f(x_1167.x, u_xlat56.y, x_1167.y);
  u_xlat128 = exp2(u_xlat18.z);
  u_xlat92.x = (u_xlat128 * u_xlat16.z);
  u_xlat18.x = u_xlat18.x;
  u_xlat18.x = clamp(u_xlat18.x, 0.0f, 1.0f);
  u_xlat92.x = (u_xlat92.x * u_xlat18.x);
  u_xlat92.x = (u_xlat92.x * u_xlat56.x);
  u_xlat56 = vec3f(((u_xlat84.xx * u_xlat53.xz)).xy, u_xlat56.z);
  u_xlat19 = vec3f((((u_xlat5.xx * u_xlat10.xx) + -(u_xlat56.xy))).xy, u_xlat19.z);
  u_xlat19 = vec3f(cos(u_xlat19.xy).xy, u_xlat19.z);
  u_xlat92.x = ((u_xlat92.x * u_xlat19.x) + u_xlat86);
  if (u_xlatb16.x) {
    x_1232 = u_xlat92.x;
  } else {
    x_1232 = u_xlat86;
  }
  u_xlat86 = x_1232;
  u_xlat20 = (u_xlat9.xxxx + vec4f(13.299999237060546875f, -5.0f, 12.299999237060546875f, -6.0f));
  u_xlat21 = (u_xlat20 * x_788);
  u_xlat21 = sin(u_xlat21);
  u_xlat21 = (u_xlat21 * x_793);
  u_xlat21 = fract(u_xlat21);
  u_xlat92 = ((u_xlat21.xz * x_801) + x_803);
  let x_1265 = (vec2f(u_xlat122) * u_xlat92);
  u_xlat19 = vec3f(x_1265.x, u_xlat19.y, x_1265.y);
  let x_1270 = (u_xlat53.zz * x_744);
  u_xlat20 = vec4f(x_1270.x, u_xlat20.y, x_1270.y, u_xlat20.w);
  u_xlat131 = exp2(u_xlat20.z);
  u_xlat19.x = (u_xlat131 * u_xlat19.x);
  u_xlat20.x = u_xlat20.x;
  u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
  u_xlat19.x = (u_xlat19.x * u_xlat20.x);
  u_xlat132 = (u_xlat56.z * u_xlat19.x);
  u_xlat132 = ((u_xlat132 * u_xlat19.y) + u_xlat86);
  u_xlat86 = select(u_xlat86, u_xlat132, u_xlatb16.y);
  u_xlat19 = vec3f((((u_xlat21.yw * x_871) + u_xlat20.yw)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((u_xlat19.xy / u_xlat9.yy)).xy, u_xlat19.z);
  u_xlat19 = vec3f(((-(u_xlat19.xy) + x_81.x_Time.yy)).xy, u_xlat19.z);
  u_xlatb58 = ((u_xlat19.xyxx >= vec4f())).xy;
  let x_1343 = (u_xlat19.xx * x_744);
  u_xlat21 = vec4f(x_1343.x, u_xlat21.y, x_1343.y, u_xlat21.w);
  let x_1350 = ((u_xlat19.xy * x_912) + x_914);
  u_xlat59 = vec3f(x_1350.x, u_xlat59.y, x_1350.y);
  let x_1358 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat22 = vec4f((((-(vec2f(x_1358.x, x_1358.y)) * u_xlat19.xy) + u_xlat10.xx)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy / u_xlat59.xz)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(((u_xlat22.xy * x_949)).xy, u_xlat22.zw);
  u_xlat22 = vec4f(exp2(u_xlat22.xy).xy, u_xlat22.zw);
  u_xlat47.x = exp2(u_xlat21.z);
  u_xlat132 = (u_xlat47.x * u_xlat19.z);
  u_xlat21.x = u_xlat21.x;
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat132 = (u_xlat132 * u_xlat21.x);
  u_xlat132 = (u_xlat132 * u_xlat22.x);
  u_xlat95 = (u_xlat84.xx * u_xlat19.xy);
  let x_1433 = ((u_xlat5.xx * u_xlat10.xx) + -(u_xlat95));
  u_xlat22 = vec4f(x_1433.x, u_xlat22.y, x_1433.y, u_xlat22.w);
  let x_1438 = cos(u_xlat22.xz);
  u_xlat22 = vec4f(x_1438.x, u_xlat22.y, x_1438.y, u_xlat22.w);
  u_xlat84.x = ((u_xlat132 * u_xlat22.x) + u_xlat86);
  if (u_xlatb58.x) {
    x_1450 = u_xlat84.x;
  } else {
    x_1450 = u_xlat86;
  }
  u_xlat84.x = x_1450;
  u_xlat9.x = (u_xlat9.x + 11.299999237060546875f);
  u_xlat9.x = (u_xlat9.x * 127.09999847412109375f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 43758.546875f);
  u_xlat9.x = fract(u_xlat9.x);
  u_xlat9.x = ((u_xlat9.x * 0.55000001192092895508f) + 0.44999998807907104492f);
  u_xlat122 = (u_xlat122 * u_xlat9.x);
  let x_1491 = (u_xlat19.yy * x_744);
  u_xlat22 = vec4f(x_1491.x, u_xlat22.yz, x_1491.y);
  u_xlat86 = exp2(u_xlat22.w);
  u_xlat122 = (u_xlat122 * u_xlat86);
  u_xlat22.x = u_xlat22.x;
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat122 = (u_xlat122 * u_xlat22.x);
  u_xlat122 = (u_xlat122 * u_xlat22.y);
  u_xlat122 = ((u_xlat122 * u_xlat22.z) + u_xlat84.x);
  if (u_xlatb58.y) {
    x_1524 = u_xlat122;
  } else {
    x_1524 = u_xlat84.x;
  }
  u_xlat84.x = x_1524;
  u_xlat122 = max(x_142.x_RingRadius, 0.10000000149011611938f);
  u_xlat132 = (u_xlat115 / u_xlat122);
  u_xlat132 = (-(u_xlat132) + 1.0f);
  u_xlat132 = max(u_xlat132, 0.0f);
  u_xlat84.x = (u_xlat84.x * x_142.x_RingStrength);
  u_xlat84.x = (u_xlat132 * u_xlat84.x);
  u_xlat60 = (vec3f(x_142.x_BoilRadius, x_142.x_BoilRadius, x_142.x_BoilChurn) * vec3f(0.60000002384185791016f, 0.65000003576278686523f, 0.69999998807907104492f));
  u_xlat23 = vec4f((((-(vec2f(x_142.x_BoilRadius)) * vec2f(0.60000002384185791016f, 0.69999998807907104492f)) + vec2f(u_xlat115))).xy, u_xlat23.zw);
  u_xlat99 = (x_376 / u_xlat60.xy);
  u_xlat23 = vec4f(((u_xlat99 * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat23 = vec4f(clamp(u_xlat23.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat23.zw);
  u_xlat24 = vec4f((((u_xlat23.xy * vec2f(-2.0f)) + vec2f(3.0f))).xy, u_xlat24.zw);
  u_xlat23 = vec4f(((u_xlat23.xy * u_xlat23.xy)).xy, u_xlat23.zw);
  u_xlat132 = (u_xlat23.x * u_xlat24.x);
  u_xlat84.x = (u_xlat84.x * u_xlat132);
  let x_1634 = ((-(u_xlat2.zw) * u_xlat84.xx) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1634.x, u_xlat6.y, x_1634.y, u_xlat6.w);
  u_xlat84.x = (x_81.x_Time.y * x_142.x_BoilPulse);
  u_xlat81 = sin(u_xlat43.y);
  u_xlat81 = (u_xlat81 * 1.70000004768371582031f);
  u_xlat81 = ((u_xlat84.x * 6.28318548202514648438f) + u_xlat81);
  u_xlat81 = sin(u_xlat81);
  u_xlat81 = ((u_xlat81 * 0.25f) + 0.75f);
  u_xlat84.x = (u_xlat115 * -(u_xlat115));
  u_xlat132 = (u_xlat60.x * u_xlat60.x);
  u_xlat84.x = (u_xlat84.x / u_xlat132);
  u_xlat84.x = (u_xlat84.x * 1.44269502162933349609f);
  u_xlat84.x = exp2(u_xlat84.x);
  u_xlat134 = (u_xlat115 + u_xlat115);
  u_xlat132 = (u_xlat134 / u_xlat132);
  let x_1697 = (u_xlat2.zw * vec2f(u_xlat132));
  u_xlat23 = vec4f(x_1697.x, u_xlat23.yz, x_1697.y);
  let x_1704 = (u_xlat84.xx * u_xlat23.xw);
  u_xlat23 = vec4f(x_1704.x, u_xlat23.yz, x_1704.y);
  let x_1713 = vec2f(x_142.x_BoilDome, x_142.x_BoilDome);
  let x_1717 = (u_xlat23.xw * vec2f(x_1713.x, x_1713.y));
  u_xlat23 = vec4f(x_1717.x, u_xlat23.yz, x_1717.y);
  u_xlat60 = vec3f(((u_xlat60.xx * u_xlat23.xw)).xy, u_xlat60.z);
  let x_1734 = ((u_xlat60.xy * vec2f(u_xlat81)) + u_xlat6.xz);
  u_xlat6 = vec4f(x_1734.x, u_xlat6.y, x_1734.y, u_xlat6.w);
  u_xlat84.x = ((-(u_xlat24.y) * u_xlat23.y) + 1.0f);
  u_xlat24 = fract(u_xlat43.zzxx);
  u_xlat2 = (u_xlat2 * u_xlat24);
  u_xlat2 = ((-(u_xlat2) * vec4f(0.11999999731779098511f, 0.11999999731779098511f, 0.10000000149011611938f, 0.10000000149011611938f)) + vs_TEXCOORD0.xzxz);
  let x_1763 = (u_xlat2.xy * vec2f(6.25f));
  u_xlat43 = vec3f(x_1763.x, u_xlat43.y, x_1763.y);
  let x_1769 = u_xlat43;
  let x_1772 = x_81.x_GlobalMipBias.x;
  let x_1773 = textureSampleBias(x_NormalB, sampler_NormalB, x_1769.xz, x_1772);
  let x_1774 = x_1773.xyw;
  u_xlat23 = vec4f(x_1774.xy, u_xlat23.z, x_1774.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  let x_1786 = ((u_xlat23.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_1786.x, u_xlat43.y, x_1786.y);
  u_xlat60 = vec3f(((x_81.x_Time.yy * vec2f(0.30000001192092895508f, 0.10000000149011611938f))).xy, u_xlat60.z);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(10.625f)) + u_xlat60.xy)).xy, u_xlat2.zw);
  let x_1810 = u_xlat2;
  let x_1813 = x_81.x_GlobalMipBias.x;
  let x_1814 = textureSampleBias(x_NormalB, sampler_NormalB, x_1810.xy, x_1813);
  let x_1815 = x_1814.xyw;
  u_xlat23 = vec4f(x_1815.xy, u_xlat23.z, x_1815.z);
  u_xlat23.x = (u_xlat23.x * u_xlat23.w);
  u_xlat2 = vec4f((((u_xlat23.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat60.zz * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat132 = (x_142.x_BoilRadius * 0.64999997615814208984f);
  u_xlat115 = ((-(x_142.x_BoilRadius) * 0.15000000596046447754f) + u_xlat115);
  u_xlat132 = (1.0f / u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat132 = ((u_xlat115 * -2.0f) + 3.0f);
  u_xlat115 = (u_xlat115 * u_xlat115);
  u_xlat115 = (u_xlat115 * u_xlat132);
  u_xlat115 = (u_xlat115 * u_xlat84.x);
  let x_1872 = vec2f(x_142.x_BoilChurn, x_142.x_BoilChurn);
  u_xlat2 = vec4f((((u_xlat43.xz * vec2f(x_1872.x, x_1872.y)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat115)) + u_xlat6.xz)).xy, u_xlat2.zw);
  u_xlat115 = sqrt(u_xlat80);
  u_xlat60 = (vec3f(u_xlat115) + vec3f(-0.15000000596046447754f, -0.20000000298023223877f, -0.69999998807907104492f));
  u_xlat60 = (u_xlat60 * vec3f(1.42857134342193603516f, 4.00000047683715820312f, 1.25f));
  u_xlat60 = clamp(u_xlat60, vec3f(0.0f), vec3f(1.0f));
  let x_1915 = ((u_xlat60 * vec3f(-2.0f)) + vec3f(3.0f));
  u_xlat23 = vec4f(x_1915.xy, u_xlat23.z, x_1915.z);
  u_xlat60 = (u_xlat60 * u_xlat60);
  u_xlat80 = (u_xlat60.y * u_xlat23.y);
  let x_1932 = ((-(u_xlat23.xw) * u_xlat60.xz) + x_376);
  u_xlat43 = vec3f(x_1932.x, u_xlat43.y, x_1932.y);
  u_xlatb6 = (0.00009999999747378752f < u_xlat4.x);
  u_xlat3 = vec3f(((u_xlat3.xy / u_xlat4.xx)).xy, u_xlat3.z);
  if (u_xlatb6) {
    x_1948 = u_xlat3.xy;
  } else {
    x_1948 = vec2f(0.0f, 1.0f);
  }
  u_xlat24 = vec4f(x_1948.xy, u_xlat24.zw);
  u_xlat24 = vec4f(u_xlat24.xy, (-(u_xlat24.yy)).xy);
  u_xlat3.x = dot(vs_TEXCOORD0.zx, u_xlat24.xz);
  u_xlat6.x = dot(vs_TEXCOORD0.xxzz, u_xlat24.xxyy);
  u_xlat82.x = (u_xlat4.x * x_81.x_Time.y);
  let x_1987 = vec2f(x_142.x_DriftBoost, x_142.x_DriftBoost);
  u_xlat82.x = dot(u_xlat82.xx, vec2f(x_1987.x, x_1987.y));
  u_xlat3.y = (-(u_xlat82.x) + u_xlat6.x);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(0.83333343267440795898f, 0.05000000074505805969f))).xy, u_xlat3.z);
  let x_2012 = u_xlat3;
  let x_2015 = x_81.x_GlobalMipBias.x;
  let x_2016 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_2012.xy, x_2015);
  u_xlat3.x = x_2016.z;
  u_xlat3.x = (u_xlat3.x + -0.5f);
  let x_2028 = (u_xlat2.xy * u_xlat43.xx);
  u_xlat6 = vec4f(x_2028.x, u_xlat6.y, x_2028.y, u_xlat6.w);
  u_xlat2 = vec4f((((u_xlat6.xz * vec2f(-0.64999997615814208984f)) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3 = vec3f(((u_xlat3.xx * u_xlat24.wx)).xy, u_xlat3.z);
  let x_2055 = vec2f(x_142.x_Tongue, x_142.x_Tongue);
  u_xlat3 = vec3f(((u_xlat3.xy * vec2f(x_2055.x, x_2055.y))).xy, u_xlat3.z);
  u_xlat2 = vec4f((((u_xlat3.xy * u_xlat43.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat3.x = (u_xlat80 * u_xlat43.z);
  let x_2080 = (u_xlat24.yx * vec2f(-1.0f, 1.0f));
  u_xlat43 = vec3f(x_2080.x, u_xlat43.y, x_2080.y);
  u_xlat41 = dot(u_xlat79.yx, u_xlat43.xz);
  u_xlat41 = (abs(u_xlat41) * 4.0f);
  u_xlat41 = min(u_xlat41, 1.0f);
  u_xlat115 = max(u_xlat115, 0.00100000004749745131f);
  u_xlat79 = (-(u_xlat79) / vec2f(u_xlat115));
  let x_2105 = (u_xlat82.yy * u_xlat79.yx);
  u_xlat43 = vec3f(x_2105.x, u_xlat43.y, x_2105.y);
  let x_2115 = ((-(u_xlat43.xz) * x_2111) + vs_TEXCOORD0.xz);
  u_xlat43 = vec3f(x_2115.x, u_xlat43.y, x_2115.y);
  let x_2122 = (u_xlat43.xz * vec2f(2.38095235824584960938f));
  u_xlat43 = vec3f(x_2122.x, u_xlat43.y, x_2122.y);
  u_xlat79 = (u_xlat6.yy * u_xlat79);
  u_xlat79 = ((-(u_xlat79) * x_2111) + vs_TEXCOORD0.zx);
  u_xlat79 = ((u_xlat79 * vec2f(3.33333325386047363281f)) + vec2f(0.40999999642372131348f));
  let x_2145 = u_xlat43;
  let x_2148 = x_81.x_GlobalMipBias.x;
  let x_2149 = textureSampleBias(x_NormalB, sampler_NormalB, x_2145.xz, x_2148);
  u_xlat6 = vec4f(x_2149.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  let x_2162 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat43 = vec3f(x_2162.x, u_xlat43.y, x_2162.y);
  let x_2168 = u_xlat79;
  let x_2170 = x_81.x_GlobalMipBias.x;
  let x_2171 = textureSampleBias(x_NormalB, sampler_NormalB, x_2168, x_2170);
  u_xlat6 = vec4f(x_2171.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat79 = ((u_xlat6.xy * x_374) + x_465);
  u_xlat79 = (u_xlat83.yy * u_xlat79);
  u_xlat79 = ((u_xlat43.xz * u_xlat7.yy) + u_xlat79);
  let x_2202 = vec2f(x_142.x_OutletTurb, x_142.x_OutletTurb);
  u_xlat79 = (u_xlat79 * vec2f(x_2202.x, x_2202.y));
  let x_2210 = (u_xlat3.xx * u_xlat79);
  u_xlat3 = vec3f(x_2210.x, u_xlat3.y, x_2210.y);
  u_xlat115 = ((u_xlat41 * 0.64999997615814208984f) + 0.34999999403953552246f);
  let x_2223 = ((u_xlat3.xz * vec2f(u_xlat115)) + u_xlat2.xy);
  u_xlat3 = vec3f(x_2223.x, u_xlat3.y, x_2223.y);
  u_xlat3.y = 1.0f;
  u_xlat115 = dot(u_xlat3, u_xlat3);
  u_xlat115 = inverseSqrt(u_xlat115);
  u_xlat3 = (vec3f(u_xlat115) * u_xlat3);
  let x_2238 = x_81.x_ScaledScreenParams.xy;
  u_xlat2 = vec4f(((x_376 / vec2f(x_2238.x, x_2238.y))).xy, u_xlat2.zw);
  u_xlat6 = vec4f(((u_xlat2.xy * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat115 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat115) + 1.0f);
  u_xlat115 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat115 = (1.0f / u_xlat115);
  u_xlat2 = vec4f((((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_361) + x_376)).xy, u_xlat2.zw);
  let x_2286 = min(u_xlat2.xy, u_xlat6.xz);
  u_xlat43 = vec3f(x_2286.x, u_xlat43.y, x_2286.y);
  let x_2294 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2294.x, u_xlat43.y, x_2294.y);
  let x_2302 = (u_xlat43.xz * x_81.x_ScreenSize.xy);
  u_xlat43 = vec3f(x_2302.x, u_xlat43.y, x_2302.y);
  u_xlatu24 = vec4u(vec2u(u_xlat43.xz).xy, u_xlatu24.zw);
  u_xlatu24.z = 0u;
  u_xlatu24.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu24.xy), bitcast<i32>(u_xlatu24.w)).x;
  let x_2331 = ((u_xlat6.xz * x_374) + x_465);
  u_xlat43 = vec3f(x_2331.x, u_xlat43.y, x_2331.y);
  let x_2341 = (-(u_xlat43.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat45 = vec3f(x_2341.x, u_xlat45.y, x_2341.y);
  let x_2352 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat43.xx) + u_xlat45.xz);
  u_xlat43 = vec3f(x_2352.x, u_xlat43.y, x_2352.y);
  let x_2363 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat43.xz);
  u_xlat43 = vec3f(x_2363.x, u_xlat43.y, x_2363.y);
  let x_2372 = (u_xlat43.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat43 = vec3f(x_2372.x, u_xlat43.y, x_2372.y);
  u_xlat117 = (u_xlat43.x / u_xlat43.z);
  u_xlat117 = (-(u_xlat117) + vs_TEXCOORD0.y);
  u_xlat117 = max(u_xlat117, 0.0f);
  let x_2395 = vec2f(x_142.x_Refraction, x_142.x_Refraction);
  let x_2399 = (u_xlat3.xz * vec2f(x_2395.x, x_2395.y));
  u_xlat43 = vec3f(x_2399.x, u_xlat43.y, x_2399.y);
  u_xlat80 = (u_xlat117 * 4.0f);
  u_xlat80 = min(u_xlat80, 1.0f);
  u_xlat24 = vec4f((((u_xlat43.xz * vec2f(u_xlat80)) + u_xlat6.xz)).xy, u_xlat24.zw);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat24.xy).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_ScreenSize.xy)).xy, u_xlat2.zw);
  u_xlatu25 = vec4u(vec2u(u_xlat2.xy).xy, u_xlatu25.zw);
  u_xlatu25.z = 0u;
  u_xlatu25.w = 0u;
  u_xlat24.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu25.xy), bitcast<i32>(u_xlatu25.w)).x;
  u_xlat2.x = ((x_81.x_ZBufferParams.z * u_xlat24.z) + x_81.x_ZBufferParams.w);
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlatb115 = (u_xlat2.x < u_xlat115);
  if (u_xlatb115) {
    x_2476 = u_xlat6.xzw;
  } else {
    x_2476 = u_xlat24.xyz;
  }
  u_xlat60 = x_2476;
  u_xlat2 = vec4f((((u_xlat60.xy * x_374) + x_465)).xy, u_xlat2.zw);
  u_xlat24 = (-(u_xlat2.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat2.xxxx) + u_xlat24);
  u_xlat24 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat60.zzzz) + u_xlat24);
  u_xlat24 = (u_xlat24 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_2519 = (u_xlat24.xyz / u_xlat24.www);
  u_xlat23 = vec4f(x_2519.xy, u_xlat23.z, x_2519.z);
  u_xlat24 = vec4f(((u_xlat23.xyw + -(vs_TEXCOORD0))).xyz, u_xlat24.w);
  u_xlat115 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat115 = sqrt(u_xlat115);
  u_xlat115 = min(u_xlat115, 20.0f);
  u_xlat2.x = (-(u_xlat23.y) + vs_TEXCOORD0.y);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  let x_2555 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_361) + x_376);
  u_xlat43 = vec3f(x_2555.x, u_xlat43.y, x_2555.y);
  let x_2562 = min(u_xlat43.xz, u_xlat60.xy);
  u_xlat43 = vec3f(x_2562.x, u_xlat43.y, x_2562.y);
  let x_2570 = (u_xlat43.xz * x_81.x_RTHandleScale.xy);
  u_xlat43 = vec3f(x_2570.x, u_xlat43.y, x_2570.y);
  let x_2578 = u_xlat43;
  let x_2581 = x_81.x_GlobalMipBias.x;
  let x_2582 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_2578.xz, x_2581);
  u_xlat60 = x_2582.xyz;
  u_xlat24 = vec4f(((vs_TEXCOORD0.yyy * x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD0.xxx) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f((((x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD0.zzz) + u_xlat24.xyz)).xyz, u_xlat24.w);
  u_xlat24 = vec4f(((u_xlat24.xyz + x_2590.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat24.w);
  u_xlatb40 = (0.0f < x_2590.x_MainLightShadowParams.y);
  if (u_xlatb40) {
    u_xlatb40 = (x_2590.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb40) {
      u_xlat25 = (u_xlat24.xyxy + x_2590.x_MainLightShadowOffset0);
      let x_2648 = u_xlat25.xy;
      txVec0 = vec3f(x_2648.x, x_2648.y, u_xlat24.z);
      u_xlat26.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_2669 = u_xlat25.zw;
      txVec1 = vec3f(x_2669.x, x_2669.y, u_xlat24.z);
      u_xlat26.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat25 = (u_xlat24.xyxy + x_2590.x_MainLightShadowOffset1);
      let x_2689 = u_xlat25.xy;
      txVec2 = vec3f(x_2689.x, x_2689.y, u_xlat24.z);
      u_xlat26.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_2704 = u_xlat25.zw;
      txVec3 = vec3f(x_2704.x, x_2704.y, u_xlat24.z);
      u_xlat26.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat40 = dot(u_xlat26, vec4f(0.25f));
    } else {
      u_xlatb80 = (x_2590.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb80) {
        let x_2735 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_2735.x, u_xlat43.y, x_2735.y);
        let x_2740 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_2740.x, u_xlat43.y, x_2740.y);
        let x_2753 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_2753.x, u_xlat44.y, x_2753.y);
        u_xlat25 = (u_xlat44.xxzz + x_2758);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_2767 = (u_xlat26.yw * x_914);
        u_xlat45 = vec3f(x_2767.x, u_xlat45.y, x_2767.y);
        let x_2776 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat25 = vec4f(x_2776.x, u_xlat25.y, x_2776.y, u_xlat25.w);
        u_xlat26 = vec4f(((-(u_xlat44.xz) + x_376)).xy, u_xlat26.zw);
        u_xlat102 = min(u_xlat44.xz, vec2f());
        u_xlat102 = ((-(u_xlat102) * u_xlat102) + u_xlat26.xy);
        let x_2799 = max(u_xlat44.xz, vec2f());
        u_xlat44 = vec3f(x_2799.x, u_xlat44.y, x_2799.y);
        let x_2810 = ((-(u_xlat44.xz) * u_xlat44.xz) + u_xlat25.yw);
        u_xlat44 = vec3f(x_2810.x, u_xlat44.y, x_2810.y);
        u_xlat102 = (u_xlat102 + x_376);
        let x_2817 = (u_xlat44.xz + x_376);
        u_xlat44 = vec3f(x_2817.x, u_xlat44.y, x_2817.y);
        u_xlat27 = vec4f(((u_xlat25.xz * x_2824)).xy, u_xlat27.zw);
        u_xlat28 = vec4f(((u_xlat26.xy * x_2824)).xy, u_xlat28.zw);
        u_xlat26 = vec4f(((u_xlat102 * x_2824)).xy, u_xlat26.zw);
        u_xlat29 = vec4f(((u_xlat44.xz * x_2824)).xy, u_xlat29.zw);
        let x_2846 = (u_xlat25.yw * x_2824);
        u_xlat44 = vec3f(x_2846.x, u_xlat44.y, x_2846.y);
        u_xlat27.z = u_xlat26.x;
        u_xlat27.w = u_xlat44.x;
        u_xlat28.z = u_xlat29.x;
        u_xlat28.w = u_xlat45.x;
        u_xlat25 = (u_xlat27.zwxz + u_xlat28.zwxz);
        u_xlat26.z = u_xlat27.y;
        u_xlat26.w = u_xlat44.z;
        u_xlat29.z = u_xlat28.y;
        u_xlat29.w = u_xlat45.z;
        u_xlat26 = vec4f(((u_xlat26.zyw + u_xlat29.zyw)).xyz, u_xlat26.w);
        u_xlat27 = vec4f(((u_xlat28.xzw / u_xlat25.zwy)).xyz, u_xlat27.w);
        u_xlat27 = vec4f(((u_xlat27.xyz + x_2896)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat29.zyw / u_xlat26.xyz)).xyz, u_xlat28.w);
        u_xlat28 = vec4f(((u_xlat28.xyz + x_2896)).xyz, u_xlat28.w);
        u_xlat27 = vec4f(((u_xlat27.yxz * x_2590.x_MainLightShadowmapSize.xxx)).xyz, u_xlat27.w);
        u_xlat28 = vec4f(((u_xlat28.xyz * x_2590.x_MainLightShadowmapSize.yyy)).xyz, u_xlat28.w);
        u_xlat27.w = u_xlat28.x;
        u_xlat29 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.ywxw);
        let x_2948 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat27.zw);
        u_xlat44 = vec3f(x_2948.x, u_xlat44.y, x_2948.y);
        u_xlat28.w = u_xlat27.y;
        let x_2955 = u_xlat28.yz;
        u_xlat27 = vec4f(u_xlat27.x, x_2955.x, u_xlat27.z, x_2955.y);
        u_xlat30 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat28 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat28.wywz);
        u_xlat27 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.xwzw);
        u_xlat31 = (u_xlat25.zwyz * u_xlat26.xxxy);
        u_xlat32 = (u_xlat25 * u_xlat26.yyzz);
        u_xlat80 = (u_xlat25.y * u_xlat26.z);
        let x_3004 = u_xlat29.xy;
        txVec4 = vec3f(x_3004.x, x_3004.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_3019 = u_xlat29.zw;
        txVec5 = vec3f(x_3019.x, x_3019.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat119 = (u_xlat119 * u_xlat31.y);
        u_xlat43.x = ((u_xlat31.x * u_xlat43.x) + u_xlat119);
        let x_3046 = u_xlat44.xz;
        txVec6 = vec3f(x_3046.x, x_3046.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat43.x = ((u_xlat31.z * u_xlat119) + u_xlat43.x);
        let x_3068 = u_xlat28.xy;
        txVec7 = vec3f(x_3068.x, x_3068.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat43.x = ((u_xlat31.w * u_xlat119) + u_xlat43.x);
        let x_3090 = u_xlat30.xy;
        txVec8 = vec3f(x_3090.x, x_3090.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat43.x = ((u_xlat32.x * u_xlat119) + u_xlat43.x);
        let x_3112 = u_xlat30.zw;
        txVec9 = vec3f(x_3112.x, x_3112.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat43.x = ((u_xlat32.y * u_xlat119) + u_xlat43.x);
        let x_3134 = u_xlat28.zw;
        txVec10 = vec3f(x_3134.x, x_3134.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat43.x = ((u_xlat32.z * u_xlat119) + u_xlat43.x);
        let x_3156 = u_xlat27.xy;
        txVec11 = vec3f(x_3156.x, x_3156.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat43.x = ((u_xlat32.w * u_xlat119) + u_xlat43.x);
        let x_3178 = u_xlat27.zw;
        txVec12 = vec3f(x_3178.x, x_3178.y, u_xlat24.z);
        u_xlat119 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat40 = ((u_xlat80 * u_xlat119) + u_xlat43.x);
      } else {
        let x_3203 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + x_361);
        u_xlat43 = vec3f(x_3203.x, u_xlat43.y, x_3203.y);
        let x_3208 = floor(u_xlat43.xz);
        u_xlat43 = vec3f(x_3208.x, u_xlat43.y, x_3208.y);
        let x_3220 = ((u_xlat24.xy * x_2590.x_MainLightShadowmapSize.zw) + -(u_xlat43.xz));
        u_xlat44 = vec3f(x_3220.x, u_xlat44.y, x_3220.y);
        u_xlat25 = (u_xlat44.xxzz + x_2758);
        u_xlat26 = (u_xlat25.xxzz * u_xlat25.xxzz);
        let x_3235 = (u_xlat26.yw * vec2f(0.04081600159406661987f));
        u_xlat27 = vec4f(u_xlat27.x, x_3235.x, u_xlat27.z, x_3235.y);
        let x_3244 = ((u_xlat26.xz * x_361) + -(u_xlat44.xz));
        u_xlat45 = vec3f(x_3244.x, u_xlat45.y, x_3244.y);
        let x_3250 = (-(u_xlat44.xz) + x_376);
        u_xlat25 = vec4f(x_3250.x, u_xlat25.y, x_3250.y, u_xlat25.w);
        u_xlat26 = vec4f(min(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3266 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.xz);
        u_xlat25 = vec4f(x_3266.x, u_xlat25.y, x_3266.y, u_xlat25.w);
        u_xlat26 = vec4f(max(u_xlat44.xz, vec2f()).xy, u_xlat26.zw);
        let x_3282 = ((-(u_xlat26.xy) * u_xlat26.xy) + u_xlat25.yw);
        u_xlat25 = vec4f(u_xlat25.x, x_3282.x, u_xlat25.z, x_3282.y);
        u_xlat25 = (u_xlat25 + vec4f(2.0f));
        u_xlat26.z = (u_xlat25.y * 0.08163200318813323975f);
        u_xlat28 = vec4f(((u_xlat45.zx * x_3295)).xy, u_xlat28.zw);
        let x_3301 = (u_xlat25.xz * x_3295);
        u_xlat45 = vec3f(x_3301.x, u_xlat45.y, x_3301.y);
        u_xlat28.z = (u_xlat25.w * 0.08163200318813323975f);
        u_xlat26.x = u_xlat28.y;
        let x_3318 = ((u_xlat44.xx * x_3314) + x_3317);
        u_xlat26 = vec4f(u_xlat26.x, x_3318.x, u_xlat26.z, x_3318.y);
        let x_3325 = ((u_xlat44.xx * x_3314) + x_3324);
        u_xlat25 = vec4f(x_3325.x, u_xlat25.y, x_3325.y, u_xlat25.w);
        u_xlat25.y = u_xlat45.x;
        u_xlat25.w = u_xlat27.y;
        u_xlat26 = (u_xlat25 + u_xlat26);
        let x_3340 = ((u_xlat44.zz * x_3314) + x_3317);
        u_xlat28 = vec4f(u_xlat28.x, x_3340.x, u_xlat28.z, x_3340.y);
        let x_3346 = ((u_xlat44.zz * x_3314) + x_3324);
        u_xlat27 = vec4f(x_3346.x, u_xlat27.y, x_3346.y, u_xlat27.w);
        u_xlat27.y = u_xlat45.z;
        u_xlat28 = (u_xlat27 + u_xlat28);
        u_xlat25 = (u_xlat25 / u_xlat26);
        u_xlat25 = (u_xlat25 + x_3362);
        u_xlat27 = (u_xlat27 / u_xlat28);
        u_xlat27 = (u_xlat27 + x_3362);
        u_xlat25 = (u_xlat25.wxyz * x_2590.x_MainLightShadowmapSize.xxxx);
        u_xlat27 = (u_xlat27.xwyz * x_2590.x_MainLightShadowmapSize.yyyy);
        let x_3382 = u_xlat25.yzw;
        u_xlat29 = vec4f(x_3382.x, u_xlat29.y, x_3382.yz);
        u_xlat29.y = u_xlat27.x;
        u_xlat30 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3405 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat44 = vec3f(x_3405.x, u_xlat44.y, x_3405.y);
        u_xlat25.y = u_xlat29.y;
        u_xlat29.y = u_xlat27.z;
        u_xlat31 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        let x_3431 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat45 = vec3f(x_3431.x, u_xlat45.y, x_3431.y);
        u_xlat25.z = u_xlat29.y;
        u_xlat32 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat25.xyxz);
        u_xlat29.y = u_xlat27.w;
        u_xlat33 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat29.xyzy);
        u_xlat63 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat29.wy);
        u_xlat25.w = u_xlat29.y;
        u_xlat34 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat25.xw);
        let x_3483 = u_xlat29.xzw;
        u_xlat27 = vec4f(x_3483.x, u_xlat27.y, x_3483.yz);
        u_xlat29 = ((u_xlat43.xzxz * x_2590.x_MainLightShadowmapSize.xyxy) + u_xlat27.xyzy);
        u_xlat103 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat27.wy);
        u_xlat27.x = u_xlat25.x;
        let x_3516 = ((u_xlat43.xz * x_2590.x_MainLightShadowmapSize.xy) + u_xlat27.xy);
        u_xlat43 = vec3f(x_3516.x, u_xlat43.y, x_3516.y);
        u_xlat35 = (u_xlat26 * u_xlat28.xxxx);
        u_xlat36 = (u_xlat26 * u_xlat28.yyyy);
        u_xlat37 = (u_xlat26 * u_xlat28.zzzz);
        u_xlat26 = (u_xlat26 * u_xlat28.wwww);
        let x_3540 = u_xlat30.xy;
        txVec13 = vec3f(x_3540.x, x_3540.y, u_xlat24.z);
        u_xlat80 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_3554 = u_xlat30.zw;
        txVec14 = vec3f(x_3554.x, x_3554.y, u_xlat24.z);
        u_xlat132 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat132 = (u_xlat132 * u_xlat35.y);
        u_xlat80 = ((u_xlat35.x * u_xlat80) + u_xlat132);
        let x_3578 = u_xlat44.xz;
        txVec15 = vec3f(x_3578.x, x_3578.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat80 = ((u_xlat35.z * u_xlat44.x) + u_xlat80);
        let x_3600 = u_xlat32.xy;
        txVec16 = vec3f(x_3600.x, x_3600.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat80 = ((u_xlat35.w * u_xlat44.x) + u_xlat80);
        let x_3622 = u_xlat31.xy;
        txVec17 = vec3f(x_3622.x, x_3622.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat80 = ((u_xlat36.x * u_xlat44.x) + u_xlat80);
        let x_3644 = u_xlat31.zw;
        txVec18 = vec3f(x_3644.x, x_3644.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat80 = ((u_xlat36.y * u_xlat44.x) + u_xlat80);
        let x_3666 = u_xlat45.xz;
        txVec19 = vec3f(x_3666.x, x_3666.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat80 = ((u_xlat36.z * u_xlat44.x) + u_xlat80);
        let x_3688 = u_xlat32.zw;
        txVec20 = vec3f(x_3688.x, x_3688.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat80 = ((u_xlat36.w * u_xlat44.x) + u_xlat80);
        let x_3710 = u_xlat33.xy;
        txVec21 = vec3f(x_3710.x, x_3710.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat80 = ((u_xlat37.x * u_xlat44.x) + u_xlat80);
        let x_3732 = u_xlat33.zw;
        txVec22 = vec3f(x_3732.x, x_3732.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat80 = ((u_xlat37.y * u_xlat44.x) + u_xlat80);
        txVec23 = vec3f(u_xlat63.x, u_xlat63.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat80 = ((u_xlat37.z * u_xlat44.x) + u_xlat80);
        txVec24 = vec3f(u_xlat34.x, u_xlat34.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat80 = ((u_xlat37.w * u_xlat44.x) + u_xlat80);
        let x_3796 = u_xlat29.xy;
        txVec25 = vec3f(x_3796.x, x_3796.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat80 = ((u_xlat26.x * u_xlat44.x) + u_xlat80);
        let x_3818 = u_xlat29.zw;
        txVec26 = vec3f(x_3818.x, x_3818.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat80 = ((u_xlat26.y * u_xlat44.x) + u_xlat80);
        txVec27 = vec3f(u_xlat103.x, u_xlat103.y, u_xlat24.z);
        u_xlat44.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat80 = ((u_xlat26.z * u_xlat44.x) + u_xlat80);
        let x_3861 = u_xlat43.xz;
        txVec28 = vec3f(x_3861.x, x_3861.y, u_xlat24.z);
        u_xlat43.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat40 = ((u_xlat26.w * u_xlat43.x) + u_xlat80);
      }
    }
  } else {
    let x_3884 = u_xlat24.xy;
    txVec29 = vec3f(x_3884.x, x_3884.y, u_xlat24.z);
    u_xlat40 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat80 = (-(x_2590.x_MainLightShadowParams.x) + 1.0f);
  u_xlat40 = ((u_xlat40 * x_2590.x_MainLightShadowParams.x) + u_xlat80);
  u_xlatb80 = (0.0f >= u_xlat24.z);
  u_xlatb43 = (u_xlat24.z >= 1.0f);
  u_xlatb80 = (u_xlatb80 | u_xlatb43);
  u_xlat40 = select(u_xlat40, 1.0f, u_xlatb80);
  u_xlat24 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat24.w);
  u_xlat80 = dot(u_xlat24.xyz, u_xlat24.xyz);
  u_xlat80 = ((u_xlat80 * x_2590.x_MainLightShadowParams.z) + x_2590.x_MainLightShadowParams.w);
  u_xlat80 = clamp(u_xlat80, 0.0f, 1.0f);
  u_xlat43.x = (-(u_xlat40) + 1.0f);
  u_xlat40 = ((u_xlat80 * u_xlat43.x) + u_xlat40);
  u_xlat25.x = dot(x_3957.unity_SHAr.yw, x_376);
  u_xlat25.y = dot(x_3957.unity_SHAg.yw, x_376);
  u_xlat25.z = dot(x_3957.unity_SHAb.yw, x_376);
  u_xlat25 = vec4f(((u_xlat25.xyz + -(x_3957.unity_SHC.xyz))).xyz, u_xlat25.w);
  u_xlat26 = vec4f(((x_81.x_B612WaterShallow.xyz + x_3988)).xyz, u_xlat26.w);
  u_xlat26 = vec4f((((x_81.x_B612SunDirection.www * u_xlat26.xyz) + x_3998)).xyz, u_xlat26.w);
  u_xlat26 = vec4f(((u_xlat26.xyz * x_142.x_ScatterColor.xyz)).xyz, u_xlat26.w);
  u_xlat27 = vec4f(((x_81.x_B612WaterDeep.xyz + x_3988)).xyz, u_xlat27.w);
  u_xlat27 = vec4f((((x_81.x_B612SunDirection.www * u_xlat27.xyz) + x_3998)).xyz, u_xlat27.w);
  let x_4032 = vec2f(x_142.x_CausticsTile, x_142.x_CausticsTile);
  let x_4036 = (u_xlat23.xw / vec2f(x_4032.x, x_4032.y));
  u_xlat43 = vec3f(x_4036.x, u_xlat43.y, x_4036.y);
  let x_4048 = ((x_81.x_Time.yy * vec2f(0.02099999971687793732f, 0.01300000026822090149f)) + u_xlat43.xz);
  u_xlat44 = vec3f(x_4048.x, u_xlat44.y, x_4048.y);
  let x_4056 = u_xlat44;
  let x_4059 = x_81.x_GlobalMipBias.x;
  let x_4060 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4056.xz, x_4059);
  u_xlat80 = x_4060.x;
  let x_4068 = (x_81.x_Time.yy * vec2f(-0.01700000092387199402f, 0.02199999988079071045f));
  u_xlat44 = vec3f(x_4068.x, u_xlat44.y, x_4068.y);
  let x_4078 = ((u_xlat43.xz * vec2f(1.12999999523162841797f)) + u_xlat44.xz);
  u_xlat43 = vec3f(x_4078.x, u_xlat43.y, x_4078.y);
  let x_4084 = u_xlat43;
  let x_4087 = x_81.x_GlobalMipBias.x;
  let x_4088 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_4084.xz, x_4087);
  u_xlat43.x = x_4088.x;
  let x_4097 = (u_xlat23.xw + -(x_142.x_SpringCenter.xz));
  u_xlat44 = vec3f(x_4097.x, u_xlat44.y, x_4097.y);
  u_xlat119 = dot(u_xlat44.xz, u_xlat44.xz);
  u_xlat119 = sqrt(u_xlat119);
  u_xlat44.x = (u_xlat119 + -(x_142.x_BoilRadius));
  u_xlat120 = ((-(x_142.x_RingGroupSpeed) * u_xlat85.x) + u_xlat44.x);
  u_xlat120 = (u_xlat120 / u_xlat48.x);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat120 = (u_xlat120 * -1.44269502162933349609f);
  u_xlat120 = exp2(u_xlat120);
  u_xlat45.x = max(u_xlat119, 0.15000000596046447754f);
  u_xlat45.x = (u_xlat45.x * 6.66666650772094726562f);
  u_xlat45.x = inverseSqrt(u_xlat45.x);
  let x_4149 = (u_xlat45.xx * u_xlat49.xz);
  u_xlat49 = vec3f(x_4149.x, u_xlat49.y, x_4149.y);
  u_xlat121 = (u_xlat124 * u_xlat49.x);
  u_xlat121 = (u_xlat11.x * u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat121 = ((u_xlat5.x * u_xlat44.x) + -(u_xlat87));
  u_xlat121 = cos(u_xlat121);
  u_xlat120 = (u_xlat120 * u_xlat121);
  u_xlat120 = select(0.0f, u_xlat120, u_xlatb123);
  let x_4184 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4184.x, x_4184.y)) * u_xlat12.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat89);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat126 * u_xlat49.z);
  u_xlat121 = (u_xlat14.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4225 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat52.xy));
  u_xlat48 = vec3f(x_4225.x, u_xlat48.y, x_4225.y);
  let x_4230 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4230.x, u_xlat48.y, x_4230.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat15.xz)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat88 * u_xlat11.x);
  u_xlat121 = (u_xlat17.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb13.y);
  let x_4278 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4278.x, x_4278.y)) * u_xlat53.xz) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat55);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat128 * u_xlat11.y);
  u_xlat121 = (u_xlat18.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  let x_4319 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat56.xy));
  u_xlat48 = vec3f(x_4319.x, u_xlat48.y, x_4319.y);
  let x_4324 = cos(u_xlat48.xz);
  u_xlat48 = vec3f(x_4324.x, u_xlat48.y, x_4324.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.x) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.x);
  u_xlat11 = vec3f(((u_xlat45.xx * u_xlat92)).xy, u_xlat11.z);
  u_xlat121 = (u_xlat131 * u_xlat11.x);
  u_xlat121 = (u_xlat20.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.y);
  u_xlat121 = ((u_xlat121 * u_xlat48.z) + u_xlat120);
  u_xlat120 = select(u_xlat120, u_xlat121, u_xlatb16.y);
  let x_4371 = vec2f(x_142.x_RingGroupSpeed, x_142.x_RingGroupSpeed);
  u_xlat85 = ((-(vec2f(x_4371.x, x_4371.y)) * u_xlat19.xy) + u_xlat44.xx);
  u_xlat85 = (u_xlat85 / u_xlat59.xz);
  u_xlat85 = (u_xlat85 * u_xlat85);
  u_xlat85 = (u_xlat85 * x_949);
  u_xlat85 = exp2(u_xlat85);
  u_xlat121 = (u_xlat47.x * u_xlat11.y);
  u_xlat121 = (u_xlat21.x * u_xlat121);
  u_xlat121 = (u_xlat121 * u_xlat85.x);
  u_xlat47 = ((u_xlat5.xx * u_xlat44.xx) + -(u_xlat95));
  u_xlat47 = cos(u_xlat47);
  u_xlat5.x = ((u_xlat121 * u_xlat47.x) + u_xlat120);
  if (u_xlatb58.x) {
    x_4425 = u_xlat5.x;
  } else {
    x_4425 = u_xlat120;
  }
  u_xlat5.x = x_4425;
  u_xlat44.x = (u_xlat45.x * u_xlat9.x);
  u_xlat44.x = (u_xlat86 * u_xlat44.x);
  u_xlat44.x = (u_xlat22.x * u_xlat44.x);
  u_xlat44.x = (u_xlat44.x * u_xlat85.y);
  u_xlat44.x = ((u_xlat44.x * u_xlat47.y) + u_xlat5.x);
  if (u_xlatb58.y) {
    x_4468 = u_xlat44.x;
  } else {
    x_4468 = u_xlat5.x;
  }
  u_xlat5.x = x_4468;
  u_xlat44.x = (u_xlat119 / u_xlat122);
  u_xlat44.x = (-(u_xlat44.x) + 1.0f);
  u_xlat44.x = max(u_xlat44.x, 0.0f);
  u_xlat5.x = (u_xlat5.x * x_142.x_RingStrength);
  u_xlat5.x = (u_xlat44.x * u_xlat5.x);
  u_xlat119 = ((-(x_142.x_BoilRadius) * 0.60000002384185791016f) + u_xlat119);
  u_xlat119 = (u_xlat99.x * u_xlat119);
  u_xlat119 = clamp(u_xlat119, 0.0f, 1.0f);
  u_xlat44.x = ((u_xlat119 * -2.0f) + 3.0f);
  u_xlat119 = (u_xlat119 * u_xlat119);
  u_xlat119 = (u_xlat119 * u_xlat44.x);
  u_xlat5.x = (u_xlat119 * u_xlat5.x);
  u_xlat5.x = ((abs(u_xlat5.x) * 6.0f) + 1.0f);
  u_xlat80 = min(u_xlat80, u_xlat43.x);
  u_xlat80 = (u_xlat80 * 2.5f);
  u_xlat80 = (u_xlat80 * x_142.x_CausticsStrength);
  let x_4553 = (u_xlat2.xx * vec2f(6.0f, -3.60673761367797851562f));
  u_xlat43 = vec3f(x_4553.x, u_xlat43.y, x_4553.y);
  u_xlat2.x = min(u_xlat43.x, 1.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat80 = exp2(u_xlat43.z);
  u_xlat2.x = (u_xlat2.x * u_xlat80);
  u_xlat2.x = (u_xlat5.x * u_xlat2.x);
  let x_4584 = (u_xlat2.xxx * x_81.x_MainLightColor.xyz);
  u_xlat5 = vec4f(x_4584.xy, u_xlat5.z, x_4584.z);
  let x_4591 = (vec3f(u_xlat40) * u_xlat5.xyw);
  u_xlat5 = vec4f(x_4591.xy, u_xlat5.z, x_4591.z);
  u_xlat2.x = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_4607 = ((u_xlat5.xyw * u_xlat2.xxx) + x_3998);
  u_xlat5 = vec4f(x_4607.xy, u_xlat5.z, x_4607.z);
  let x_4613 = (u_xlat5.xyw * u_xlat60);
  u_xlat5 = vec4f(x_4613.xy, u_xlat5.z, x_4613.z);
  u_xlat9 = vec4f(((vec3f(u_xlat115) * -(x_142.x_Absorption.xyz))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat9.w);
  u_xlat9 = vec4f(exp2(u_xlat9.xyz).xyz, u_xlat9.w);
  u_xlat2.x = (u_xlat115 * -(x_142.x_ScatterDensity));
  u_xlat2.x = (u_xlat2.x * 1.44269502162933349609f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat48 = (vec3f(u_xlat40) * x_81.x_MainLightColor.xyz);
  u_xlat40 = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat40 = clamp(u_xlat40, 0.0f, 1.0f);
  u_xlat11 = (vec3f(u_xlat40) * u_xlat48);
  u_xlat11 = ((u_xlat11 * vec3f(0.60000002384185791016f)) + u_xlat25.xyz);
  u_xlat115 = (u_xlat115 * 0.69999998807907104492f);
  u_xlat115 = min(u_xlat115, 1.0f);
  u_xlat12 = vec4f((((x_142.x_DeepColor.xyz * u_xlat27.xyz) + -(u_xlat26.xyz))).xyz, u_xlat12.w);
  u_xlat12 = vec4f((((vec3f(u_xlat115) * u_xlat12.xyz) + u_xlat26.xyz)).xyz, u_xlat12.w);
  u_xlat11 = (u_xlat11 * u_xlat12.xyz);
  u_xlat11 = (u_xlat2.xxx * u_xlat11);
  let x_4719 = ((u_xlat5.xyw * u_xlat9.xyz) + u_xlat11);
  u_xlat5 = vec4f(x_4719.xy, u_xlat5.z, x_4719.z);
  u_xlat115 = dot(u_xlat3, u_xlat38);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat2.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat2.x = ((x_81.x_B612SunDirection.w * u_xlat2.x) + 1.0f);
  u_xlat40 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_142.x_F0);
  u_xlat80 = (-(x_142.x_F0) + 1.0f);
  u_xlat44.x = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat80);
  u_xlat115 = (-(u_xlat115) + 1.0f);
  u_xlat120 = (u_xlat115 * u_xlat115);
  u_xlat120 = (u_xlat120 * u_xlat120);
  u_xlat115 = (u_xlat115 * u_xlat120);
  u_xlat115 = ((u_xlat44.x * u_xlat115) + u_xlat40);
  u_xlat115 = clamp(u_xlat115, 0.0f, 1.0f);
  u_xlat40 = dot(-(u_xlat38), u_xlat3);
  u_xlat40 = (u_xlat40 + u_xlat40);
  u_xlat9 = vec4f((((u_xlat3 * -(vec3f(u_xlat40))) + -(u_xlat38))).xyz, u_xlat9.w);
  u_xlat9.w = abs(u_xlat9.y);
  u_xlat40 = ((-(x_142.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat40 = (u_xlat40 * x_142.x_Roughness);
  u_xlat40 = (u_xlat40 * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu82 = vec2u(x_81.x_FPParams1.zw);
  u_xlati6 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu82.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu6.x = (u_xlatu82.y * bitcast<u32>(u_xlati6));
  u_xlat1.x = dot(-(u_xlat1), u_xlat24.xyz);
  u_xlat39.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_4861 = u_xlat39.x;
  } else {
    x_4861 = u_xlat1.x;
  }
  u_xlat0.x = x_4861;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati39 = (bitcast<i32>(u_xlatu82.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati39))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_4923 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_4930 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_4931 = vec2i(x_4923, x_4930);
  u_xlati1 = vec3i(x_4931.x, u_xlati1.y, x_4931.y);
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  let x_4955 = ~(u_xlati1.xz);
  u_xlati45 = vec3i(x_4955.x, u_xlati45.y, x_4955.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati45.xx) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati44 = bitcast<vec2i>((bitcast<vec2u>(u_xlati44) | bitcast<vec2u>(u_xlati11)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati44.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati45.z) & bitcast<u32>(u_xlati44.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb44 = ((vec4f() < u_xlat9.xwzz)).xyz;
  u_xlatu11.x = u_xlatu6.x;
  u_xlatu11.y = u_xlatu1.y;
  u_xlati87 = 0i;
  u_xlatu125 = u_xlatu0;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat77.x = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu45 = (u_xlatu125 >> 16u);
    u_xlati121 = u_xlati87;
    u_xlatu122 = u_xlatu125;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb47 = (u_xlati121 == 0i);
      u_xlatu126 = (u_xlatu122 & 65535u);
      u_xlatb126 = (u_xlatu45 >= u_xlatu126);
      u_xlatb47 = (u_xlatb47 & u_xlatb126);
      if (!(u_xlatb47)) {
        break;
      }
      param_6 = u_xlatu122;
      param_7 = 5i;
      param_8 = 11i;
      let x_5069 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu47 = x_5069;
      u_xlatu13 = (vec4u(u_xlatu47) + u_xlatu11.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_5090 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_5097 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_5104 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_5111 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_5090, x_5097, x_5104, x_5111);
      u_xlati90 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_5120.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_5120.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_5152 = bitcast<vec2i>((bitcast<vec2u>(u_xlati90) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec3i(x_5152.x, u_xlati14.y, x_5152.y);
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) | bitcast<u32>(u_xlati13.x)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_4943.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati51 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati51) | bitcast<u32>(u_xlati13.x)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu122) & 31i)));
      u_xlati126 = bitcast<i32>((bitcast<u32>(u_xlati126) & bitcast<u32>(u_xlati13.x)));
      u_xlati47 = (bitcast<i32>(u_xlatu47) << bitcast<u32>(5i));
      u_xlatu47 = (u_xlatu45 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati47)))));
      u_xlatu47 = min(u_xlatu47, 31u);
      u_xlatu47 = (bitcast<u32>(-(bitcast<i32>(u_xlatu47))) + 31u);
      u_xlatu47 = (4294967295u >> (u_xlatu47 & 31u));
      u_xlati121 = bitcast<i32>((u_xlatu47 & bitcast<u32>(u_xlati126)));
      u_xlati47 = (bitcast<i32>(u_xlatu122) + 32i);
      u_xlatu122 = (bitcast<u32>(u_xlati47) & 4294967264u);
    }
    u_xlatu125 = u_xlatu122;
    u_xlatb45 = (u_xlati121 != 0i);
    u_xlatb47 = (u_xlat77.x < 0.99000000953674316406f);
    u_xlatb45 = (u_xlatb45 & u_xlatb47);
    if (!(u_xlatb45)) {
      break;
    }
    u_xlati45.x = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati121)));
    u_xlati47 = (1i << bitcast<u32>((u_xlati45.x & 31i)));
    u_xlati87 = bitcast<i32>((bitcast<u32>(u_xlati121) ^ bitcast<u32>(u_xlati47)));
    u_xlati47 = (bitcast<i32>(u_xlatu125) + -32i);
    u_xlati47 = bitcast<i32>((bitcast<u32>(u_xlati47) & 65504u));
    u_xlati45.x = (u_xlati45.x + u_xlati47);
    u_xlati45.x = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati45.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].xyz))).xyz, u_xlat13.w);
    u_xlat14 = (-(vs_TEXCOORD0) + x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].xyz);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].www)).xyz, u_xlat13.w);
    u_xlat47.x = min(u_xlat13.z, u_xlat13.y);
    u_xlat47.x = min(u_xlat47.x, u_xlat13.x);
    u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
    u_xlat126 = (-(u_xlat77.x) + 1.0f);
    u_xlat47.x = min(u_xlat47.x, u_xlat126);
    u_xlatb126 = (0.0f < x_5355.urp_ReflProbes_ProbePosition[u_xlati45.x].w);
    if (u_xlatb44.x) {
      x_5421 = x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].x;
    } else {
      x_5421 = x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].x;
    }
    u_xlat13.x = x_5421;
    if (u_xlatb44.y) {
      x_5437 = x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].y;
    } else {
      x_5437 = x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].y;
    }
    u_xlat13.y = x_5437;
    if (u_xlatb44.z) {
      x_5453 = x_5355.urp_ReflProbes_BoxMax[u_xlati45.x].z;
    } else {
      x_5453 = x_5355.urp_ReflProbes_BoxMin[u_xlati45.x].z;
    }
    u_xlat13.z = x_5453;
    u_xlat13 = vec4f(((u_xlat13.xyz + -(vs_TEXCOORD0))).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat9.xwz)).xyz, u_xlat13.w);
    u_xlat13.x = min(u_xlat13.y, u_xlat13.x);
    u_xlat13.x = min(u_xlat13.z, u_xlat13.x);
    u_xlat51 = (vs_TEXCOORD0 + -(x_5355.urp_ReflProbes_ProbePosition[u_xlati45.x].xyz));
    u_xlat13 = vec4f((((u_xlat9.xwz * u_xlat13.xxx) + u_xlat51)).xyz, u_xlat13.w);
    if (u_xlatb126) {
      x_5512 = u_xlat13.xyz;
    } else {
      x_5512 = u_xlat9.xwz;
    }
    u_xlat13 = vec4f(x_5512.xyz, u_xlat13.w);
    u_xlatu126 = u32(abs(x_5355.urp_ReflProbes_ProbePosition[u_xlati45.x].w));
    u_xlatu126 = (u_xlatu126 + 4294967295u);
    u_xlat126 = f32(u_xlatu126);
    u_xlat126 = min(u_xlat40, u_xlat126);
    u_xlat127 = dot(abs(u_xlat13.xyz), x_3998);
    u_xlat127 = max(u_xlat127, 0.00000099999999747524f);
    u_xlat127 = (1.0f / u_xlat127);
    u_xlat14 = (vec3f(u_xlat127) * u_xlat13.zxy);
    u_xlat14.x = -(u_xlat14.x);
    u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
    u_xlatb52 = ((u_xlat14.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat14;
    if (u_xlatb52.x) {
      x_5568 = u_xlat14.x;
    } else {
      x_5568 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.x = x_5568;
    if (u_xlatb52.y) {
      x_5581 = u_xlat14.x;
    } else {
      x_5581 = -(u_xlat14.x);
    }
    hlslcc_movcTemp.y = x_5581;
    u_xlat14 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * vec2f(u_xlat127)) + u_xlat14.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_361) + x_361)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat89.x = floor(u_xlat126);
    u_xlat89.y = (u_xlat89.x + 1.0f);
    u_xlat126 = (u_xlat126 + -(u_xlat89.x));
    u_xlatu89 = vec2u(u_xlat89);
    u_xlati89 = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.x));
    u_xlati45.x = ((u_xlati45.x * 7i) + bitcast<i32>(u_xlatu89.y));
    u_xlat89 = ((u_xlat13.xy * x_5355.urp_ReflProbes_MipScaleOffset[u_xlati89].xy) + x_5355.urp_ReflProbes_MipScaleOffset[u_xlati89].zw);
    u_xlat14 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat89, 0.0f).xyz;
    u_xlat13 = vec4f((((u_xlat13.xy * x_5355.urp_ReflProbes_MipScaleOffset[u_xlati45.x].xy) + x_5355.urp_ReflProbes_MipScaleOffset[u_xlati45.x].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat126) * u_xlat13.xyz) + u_xlat14)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((u_xlat47.xxx * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat77.x = (u_xlat77.x + u_xlat47.x);
  }
  u_xlatb0 = (u_xlat77.x < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat9.xwz, u_xlat40);
    u_xlat0.x = (-(u_xlat77.x) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    u_xlat12 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  u_xlat0.x = (u_xlat2.x * x_142.x_ReflectionStrength);
  u_xlat1 = ((u_xlat12.xyz * u_xlat0.xxx) + -(u_xlat5.xyw));
  u_xlat1 = ((vec3f(u_xlat115) * u_xlat1) + u_xlat5.xyw);
  let x_5823 = (u_xlat38 + x_81.x_MainLightPosition.xyz);
  u_xlat5 = vec4f(x_5823.xy, u_xlat5.z, x_5823.z);
  u_xlat0.x = dot(u_xlat5.xyw, u_xlat5.xyw);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_5845 = (u_xlat0.xxx * u_xlat5.xyw);
  u_xlat5 = vec4f(x_5845.xy, u_xlat5.z, x_5845.z);
  u_xlat0.x = dot(u_xlat3, u_xlat5.xyw);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat115 = (x_142.x_Roughness * x_142.x_Roughness);
  u_xlat115 = max(u_xlat115, 0.00009999999747378752f);
  u_xlat2.x = (u_xlat115 * u_xlat115);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat115 = ((u_xlat115 * u_xlat115) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat115) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat2.x / u_xlat0.x);
  u_xlat38.x = dot(u_xlat5.xyw, u_xlat38);
  u_xlat38.x = clamp(u_xlat38.x, 0.0f, 1.0f);
  u_xlat38.x = (-(u_xlat38.x) + 1.0f);
  u_xlat76 = (u_xlat38.x * u_xlat38.x);
  u_xlat76 = (u_xlat76 * u_xlat76);
  u_xlat38.x = (u_xlat76 * u_xlat38.x);
  u_xlat38.x = ((u_xlat80 * u_xlat38.x) + x_142.x_F0);
  u_xlat0.x = (u_xlat38.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 40.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat48);
  let x_5964 = vec3f(x_142.x_SunSpecular, x_142.x_SunSpecular, x_142.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_5964.x, x_5964.y, x_5964.z));
  u_xlat114 = dot(u_xlat3, x_81.x_MainLightPosition.xyz);
  u_xlat114 = (u_xlat114 * 4.0f);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat114)) + u_xlat1);
  u_xlat1 = vec3f(((vs_TEXCOORD0.xz / vec2f(x_142.x_FleckTile))).xy, u_xlat1.z);
  u_xlat77 = (u_xlat8 / vec2f(x_142.x_FleckTile));
  u_xlat77 = (-(u_xlat77) + u_xlat1.xy);
  let x_6007 = u_xlat77;
  let x_6009 = x_81.x_GlobalMipBias.x;
  let x_6010 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6007, x_6009);
  u_xlat114 = x_6010.x;
  u_xlat77 = (u_xlat42.xz / vec2f(x_142.x_FleckTile));
  u_xlat1 = vec3f(((-(u_xlat77) + u_xlat1.xy)).xy, u_xlat1.z);
  u_xlat1 = vec3f(((u_xlat1.xy + vec2f(0.43000000715255737305f))).xy, u_xlat1.z);
  let x_6035 = u_xlat1;
  let x_6038 = x_81.x_GlobalMipBias.x;
  let x_6039 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6035.xy, x_6038);
  u_xlat1.x = x_6039.x;
  u_xlat1.x = (u_xlat83.x * u_xlat1.x);
  u_xlat114 = ((u_xlat114 * u_xlat7.x) + u_xlat1.x);
  u_xlat1.x = ((u_xlat4.x * 30.0f) + 0.34999999403953552246f);
  u_xlat1.x = min(u_xlat1.x, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_142.x_FleckAmount);
  u_xlat39.x = (-(u_xlat84.x) + 1.0f);
  u_xlat1.x = (u_xlat39.x * u_xlat1.x);
  u_xlat39 = (u_xlat2.zw * vec2f(2.85714292526245117188f));
  let x_6089 = u_xlat39;
  let x_6091 = x_81.x_GlobalMipBias.x;
  let x_6092 = textureSampleBias(x_FleckTex, sampler_FleckTex, x_6089, x_6091);
  u_xlat39.x = x_6092.y;
  u_xlat77.x = (u_xlat10.x * 16.666667938232421875f);
  u_xlat77.x = (u_xlat77.x * u_xlat77.x);
  u_xlat77.x = (u_xlat77.x * -1.44269502162933349609f);
  u_xlat77.x = exp2(u_xlat77.x);
  u_xlat77.x = ((u_xlat84.x * 0.34999999403953552246f) + u_xlat77.x);
  u_xlat39.x = (u_xlat77.x * u_xlat39.x);
  u_xlat39.x = (u_xlat81 * u_xlat39.x);
  u_xlat39.x = (u_xlat39.x * 0.89999997615814208984f);
  u_xlat114 = ((u_xlat114 * u_xlat1.x) + u_xlat39.x);
  u_xlat114 = clamp(u_xlat114, 0.0f, 1.0f);
  u_xlat1 = ((u_xlat48 * vec3f(0.69999998807907104492f)) + u_xlat25.xyz);
  u_xlat114 = (u_xlat114 * 0.69999998807907104492f);
  u_xlat1 = ((u_xlat1 * vec3f(0.93000000715255737305f, 0.92000001668930053711f, 0.86000001430511474609f)) + -(u_xlat0));
  u_xlat0 = ((vec3f(u_xlat114) * u_xlat1) + u_xlat0);
  SV_Target0.w = (u_xlat117 / x_142.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat114 = (vs_TEXCOORD1 * -(vs_TEXCOORD1));
  u_xlat114 = exp2(u_xlat114);
  u_xlat0 = (u_xlat0 + -(x_81.unity_FogColor.xyz));
  SV_Target0 = vec4f((((vec3f(u_xlat114) * u_xlat0) + x_81.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

