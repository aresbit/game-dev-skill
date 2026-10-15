//Assets/Levels/B612/Shaders/B612_Stream.shader
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

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(7) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD4 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> in_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD1 : vec2f;

var<private> vs_TEXCOORD3 : vec2f;

var<private> in_TEXCOORD2 : vec2f;

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
  vs_TEXCOORD4 = (u_xlat0.x * x_74.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0.xyz);
  vs_TEXCOORD2 = vec4f(in_TEXCOORD0.xy, vs_TEXCOORD2.zw);
  vs_TEXCOORD2 = vec4f(vs_TEXCOORD2.xy, in_TEXCOORD1.xy);
  vs_TEXCOORD3 = in_TEXCOORD2;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(3)
  vs_TEXCOORD4_1 : f32,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec4f,
  @location(4)
  vs_TEXCOORD3_1 : vec2f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(2) in_TEXCOORD0_param : vec2f, @location(3) in_TEXCOORD1_param : vec2f, @location(4) in_TEXCOORD2_param : vec2f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD4, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

//Assets/Levels/B612/Shaders/B612_Stream.shader
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
  x_FlowMapST : vec4f,
  /* @offset(16) */
  x_Cycle : f32,
  /* @offset(20) */
  x_FlowSpeedScale : f32,
  /* @offset(24) */
  x_TileA : f32,
  /* @offset(28) */
  x_TileB : f32,
  /* @offset(32) */
  x_FoamTile : f32,
  /* @offset(36) */
  x_CausticsTile : f32,
  /* @offset(40) */
  x_NormalStrength : f32,
  /* @offset(44) */
  x_Standing : f32,
  /* @offset(48) */
  x_ScatterColor : vec4f,
  /* @offset(64) */
  x_DeepColor : vec4f,
  /* @offset(80) */
  x_FoamColor : vec4f,
  /* @offset(96) */
  x_ScatterDensity : f32,
  /* @offset(100) */
  x_Refraction : f32,
  /* @offset(112) */
  x_Absorption : vec4f,
  /* @offset(128) */
  x_ReflectionStrength : f32,
  /* @offset(132) */
  x_F0 : f32,
  /* @offset(136) */
  x_Roughness : f32,
  /* @offset(140) */
  x_SunSpecular : f32,
  /* @offset(144) */
  x_FoamAmount : f32,
  /* @offset(148) */
  x_FoamStones : f32,
  /* @offset(152) */
  x_Whitewater : f32,
  /* @offset(156) */
  x_EdgeSoftness : f32,
  /* @offset(160) */
  x_CausticsStrength : f32,
  /* @offset(176) */
  x_StreakTile : vec4f,
  /* @offset(192) */
  x_Streaks : f32,
  /* @offset(196) */
  x_FoamLines : f32,
  /* @offset(200) */
  x_Sparkle : f32,
  /* @offset(204) */
  x_Churn : f32,
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

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec4f;

@group(1) @binding(6) var<uniform> x_155 : UnityPerMaterial;

@group(0) @binding(5) var x_FlowMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_FlowMap : sampler;

@group(0) @binding(6) var x_NoiseTex : texture_2d<f32>;

@group(0) @binding(17) var sampler_NoiseTex : sampler;

@group(0) @binding(7) var x_NormalA : texture_2d<f32>;

@group(0) @binding(18) var sampler_NormalA : sampler;

@group(0) @binding(8) var x_NormalB : texture_2d<f32>;

@group(0) @binding(19) var sampler_NormalB : sampler;

@group(0) @binding(11) var x_StreakTex : texture_2d<f32>;

@group(0) @binding(22) var sampler_StreakTex : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_1476 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2963 : UnityPerDraw;

@group(0) @binding(10) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(21) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_3536 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_3712 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_3961 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(13) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(0) @binding(9) var x_FoamTex : texture_2d<f32>;

@group(0) @binding(20) var sampler_FoamTex : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD4 : f32;

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

const x_453 = vec2f(2.0f);

const x_455 = vec2f(-1.0f);

const x_526 = vec2f(0.20999999344348907471f, 0.37000000476837158203f);

const x_605 = vec4f(1.14999997615814208984f, 1.14999997615814208984f, 1.20000004768371582031f, 1.20000004768371582031f);

const x_831 = vec2f(1.0f);

const x_860 = vec2f(0.5f);

const x_1772 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1848 = vec2f(0.15999999642372131348f);

const x_1921 = vec3f(-2.5f, -0.5f, 1.5f);

const x_2320 = vec2f(0.08163200318813323975f);

const x_2339 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_2342 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_2349 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_2387 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2995 = vec3f(-1.0f);

const x_3005 = vec3f(1.0f);

const x_4575 = vec2f(9.09090900421142578125f);

const x_4618 = vec2f(1.39999997615814208984f);

const x_4956 = vec2f(1.60000002384185791016f);

const x_5164 = vec3f(0.75f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat28 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat85 : f32;
  var u_xlat2 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat31 : vec2f;
  var u_xlat4 : vec2f;
  var u_xlat60 : vec2f;
  var u_xlat86 : f32;
  var u_xlat88 : f32;
  var u_xlat5 : f32;
  var u_xlat33 : vec2f;
  var u_xlat6 : vec2f;
  var u_xlat7 : vec3f;
  var u_xlat8 : vec3f;
  var u_xlat89 : f32;
  var u_xlat62 : vec2f;
  var u_xlat90 : f32;
  var u_xlat91 : f32;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat66 : vec2f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat68 : vec2f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat59 : f32;
  var u_xlat30 : f32;
  var u_xlat65 : vec2f;
  var u_xlatu15 : vec4u;
  var u_xlat38 : vec3f;
  var u_xlatu10 : vec4u;
  var u_xlatb60 : bool;
  var x_1359 : vec3f;
  var u_xlat58 : vec2f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
  var u_xlatb16 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlatb2 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb30 : bool;
  var u_xlat42 : vec3f;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
  var u_xlat23 : vec4f;
  var u_xlat24 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat25 : vec4f;
  var u_xlat75 : vec2f;
  var u_xlat26 : vec4f;
  var u_xlat27 : vec4f;
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
  var u_xlatb62 : bool;
  var x_2914 : f32;
  var u_xlat92 : f32;
  var u_xlatu11 : vec2u;
  var u_xlatu13 : vec2u;
  var u_xlati65 : i32;
  var u_xlatu65 : u32;
  var u_xlat29 : vec3f;
  var u_xlat0 : vec3f;
  var x_3454 : f32;
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
  var u_xlati11 : vec2i;
  var u_xlati13 : vec2i;
  var u_xlati14 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb14 : vec3<bool>;
  var u_xlatu71 : vec2u;
  var u_xlat57 : f32;
  var u_xlatu38 : u32;
  var u_xlatb13 : bool;
  var u_xlatu41 : u32;
  var u_xlatb41 : bool;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu18 : vec4u;
  var u_xlatu19 : vec2u;
  var u_xlati18 : vec4i;
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
  var u_xlati75 : vec2i;
  var u_xlati21 : vec4i;
  var u_xlati22 : vec2i;
  var u_xlati19 : vec3i;
  var u_xlati41 : i32;
  var u_xlati98 : i32;
  var u_xlati100 : i32;
  var u_xlatb38 : bool;
  var u_xlati38 : i32;
  var u_xlat41 : f32;
  var x_4026 : f32;
  var x_4040 : f32;
  var x_4054 : f32;
  var u_xlat98 : f32;
  var x_4110 : vec3f;
  var u_xlatb74 : vec2<bool>;
  var u_xlat74 : vec2f;
  var x_4167 : f32;
  var x_4180 : f32;
  var u_xlat100 : f32;
  var u_xlatu98 : u32;
  var u_xlatu100 : u32;
  var u_xlat87 : f32;
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
  u_xlat85 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat85 = inverseSqrt(u_xlat85);
  u_xlat2 = (vec3f(u_xlat85) * vs_TEXCOORD1);
  u_xlat3 = vec4f((((vs_TEXCOORD2.xy * x_155.x_FlowMapST.xy) + x_155.x_FlowMapST.zw)).xy, u_xlat3.zw);
  let x_177 = u_xlat3;
  let x_180 = x_81.x_GlobalMipBias.x;
  let x_181 = textureSampleBias(x_FlowMap, sampler_FlowMap, x_177.xy, x_180);
  u_xlat3 = x_181.zxyw;
  let x_191 = vec2f(x_155.x_FlowSpeedScale, x_155.x_FlowSpeedScale);
  u_xlat31 = (u_xlat3.yz * vec2f(x_191.x, x_191.y));
  u_xlat85 = ((vs_TEXCOORD2.x * 2.0f) + -1.0f);
  u_xlat4.x = (u_xlat85 * vs_TEXCOORD2.w);
  u_xlat60 = (vs_TEXCOORD0.xz * vec2f(0.37000000476837158203f));
  let x_219 = u_xlat60;
  let x_221 = x_81.x_GlobalMipBias.x;
  let x_222 = textureSampleBias(x_NoiseTex, sampler_NoiseTex, x_219, x_221);
  u_xlat85 = x_222.x;
  u_xlat86 = (x_81.x_Time.y / x_155.x_Cycle);
  u_xlat86 = (u_xlat85 + u_xlat86);
  u_xlat60.x = fract(u_xlat86);
  u_xlat86 = (u_xlat86 + 0.5f);
  u_xlat86 = fract(u_xlat86);
  u_xlat88 = ((-(u_xlat60.x) * 2.0f) + 1.0f);
  u_xlat88 = (-(abs(u_xlat88)) + 1.0f);
  u_xlat5 = (-(u_xlat88) + 1.0f);
  u_xlat60.x = (u_xlat60.x * x_155.x_Cycle);
  u_xlat33 = (u_xlat31 * u_xlat60.xx);
  u_xlat86 = (u_xlat86 * x_155.x_Cycle);
  u_xlat6 = (vec2f(u_xlat86) * u_xlat31);
  let x_277 = vs_TEXCOORD0;
  u_xlat7 = dpdxCoarse(x_277.yzx);
  let x_281 = vs_TEXCOORD0;
  u_xlat8 = dpdyCoarse(x_281.zxy);
  let x_286 = u_xlat4.x;
  u_xlat89 = dpdxCoarse(x_286);
  let x_290 = vs_TEXCOORD2.y;
  u_xlat62.x = dpdxCoarse(x_290);
  let x_295 = u_xlat4.x;
  u_xlat90 = dpdyCoarse(x_295);
  let x_299 = vs_TEXCOORD2.y;
  u_xlat91 = dpdyCoarse(x_299);
  u_xlat9 = vec4f(((u_xlat2.yzx * u_xlat8)).xyz, u_xlat9.w);
  u_xlat8 = ((u_xlat8.zxy * u_xlat2.zxy) + -(u_xlat9.xyz));
  u_xlat9 = vec4f(((u_xlat2.zxy * u_xlat7)).xyz, u_xlat9.w);
  u_xlat7 = ((u_xlat2.yzx * u_xlat7.yzx) + -(u_xlat9.xyz));
  u_xlat9 = vec4f(((vec3f(u_xlat90) * u_xlat7)).xyz, u_xlat9.w);
  u_xlat9 = vec4f((((u_xlat8 * vec3f(u_xlat89)) + u_xlat9.xyz)).xyz, u_xlat9.w);
  u_xlat7 = (vec3f(u_xlat91) * u_xlat7);
  u_xlat7 = ((u_xlat8 * u_xlat62.xxx) + u_xlat7);
  u_xlat89 = dot(u_xlat9.xyz, u_xlat9.xyz);
  u_xlat62.x = dot(u_xlat7, u_xlat7);
  u_xlat89 = max(u_xlat89, u_xlat62.x);
  u_xlat89 = max(u_xlat89, 0.000000000001f);
  u_xlat89 = inverseSqrt(u_xlat89);
  u_xlat8 = (vec3f(u_xlat89) * u_xlat9.xyz);
  u_xlat7 = (vec3f(u_xlat89) * u_xlat7);
  u_xlat9.x = (u_xlat3.x * 1.5f);
  u_xlat9 = vec4f(u_xlat9.x, (((u_xlat3.xww * vec3f(1.60000002384185791016f, 0.75f, 0.39999997615814208984f)) + vec3f(0.25f, 0.25f, 0.60000002384185791016f))).xyz);
  u_xlat89 = (u_xlat9.z * x_155.x_NormalStrength);
  u_xlat4.y = vs_TEXCOORD2.y;
  u_xlat62 = ((-(u_xlat31) * u_xlat60.xx) + u_xlat4);
  let x_425 = vec2f(x_155.x_TileA, x_155.x_TileA);
  u_xlat10 = vec4f(((u_xlat62 / vec2f(x_425.x, x_425.y))).xy, u_xlat10.zw);
  let x_437 = u_xlat10;
  let x_440 = x_81.x_GlobalMipBias.x;
  let x_441 = textureSampleBias(x_NormalA, sampler_NormalA, x_437.xy, x_440);
  u_xlat10 = vec4f(x_441.xyw.xyz, u_xlat10.w);
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  u_xlat10 = vec4f((((u_xlat10.xy * x_453) + x_455)).xy, u_xlat10.zw);
  u_xlat60.x = dot(u_xlat10.xy, u_xlat10.xy);
  u_xlat60.x = min(u_xlat60.x, 1.0f);
  u_xlat60.x = (-(u_xlat60.x) + 1.0f);
  u_xlat60.x = sqrt(u_xlat60.x);
  u_xlat60.x = max(u_xlat60.x, 0.0000000000000001f);
  u_xlat10 = vec4f(((vec2f(u_xlat89) * u_xlat10.xy)).xy, u_xlat10.zw);
  u_xlat60.x = max(u_xlat60.x, 0.20000000298023223877f);
  u_xlat10 = vec4f(((u_xlat10.xy / u_xlat60.xx)).xy, u_xlat10.zw);
  u_xlat66 = ((-(u_xlat31) * vec2f(u_xlat86)) + u_xlat4);
  let x_516 = vec2f(x_155.x_TileA, x_155.x_TileA);
  u_xlat11 = vec4f(((u_xlat66 / vec2f(x_516.x, x_516.y))).xy, u_xlat11.zw);
  u_xlat11 = vec4f(((u_xlat11.xy + x_526)).xy, u_xlat11.zw);
  let x_533 = u_xlat11;
  let x_536 = x_81.x_GlobalMipBias.x;
  let x_537 = textureSampleBias(x_NormalA, sampler_NormalA, x_533.xy, x_536);
  u_xlat11 = vec4f(x_537.xyw.xyz, u_xlat11.w);
  u_xlat11.x = (u_xlat11.x * u_xlat11.z);
  u_xlat11 = vec4f((((u_xlat11.xy * x_453) + x_455)).xy, u_xlat11.zw);
  u_xlat86 = dot(u_xlat11.xy, u_xlat11.xy);
  u_xlat86 = min(u_xlat86, 1.0f);
  u_xlat86 = (-(u_xlat86) + 1.0f);
  u_xlat86 = sqrt(u_xlat86);
  u_xlat86 = max(u_xlat86, 0.0000000000000001f);
  u_xlat11 = vec4f(((vec2f(u_xlat89) * u_xlat11.xy)).xy, u_xlat11.zw);
  u_xlat86 = max(u_xlat86, 0.20000000298023223877f);
  u_xlat11 = vec4f(((u_xlat11.xy / vec2f(u_xlat86))).xy, u_xlat11.zw);
  u_xlat11 = vec4f(((vec2f(u_xlat5) * u_xlat11.xy)).xy, u_xlat11.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * vec2f(u_xlat88)) + u_xlat11.xy)).xy, u_xlat10.zw);
  u_xlat11 = ((-(u_xlat33.xyxy) * x_605) + u_xlat4.xyxy);
  let x_617 = vec2f(x_155.x_TileB, x_155.x_TileB);
  u_xlat11 = vec4f(((u_xlat11.xy / vec2f(x_617.x, x_617.y))).xy, u_xlat11.zw);
  u_xlat11 = vec4f(((u_xlat11.xy + x_526)).xy, u_xlat11.zw);
  u_xlat12 = vec4f(((vec2f(u_xlat89) * vec2f(0.80000001192092895508f, 1.29999995231628417969f))).xy, u_xlat12.zw);
  let x_644 = u_xlat11;
  let x_647 = x_81.x_GlobalMipBias.x;
  let x_648 = textureSampleBias(x_NormalB, sampler_NormalB, x_644.xy, x_647);
  u_xlat13 = vec4f(x_648.xyw.xyz, u_xlat13.w);
  u_xlat13.x = (u_xlat13.x * u_xlat13.z);
  u_xlat11 = vec4f((((u_xlat13.xy * x_453) + x_455)).xy, u_xlat11.zw);
  u_xlat86 = dot(u_xlat11.xy, u_xlat11.xy);
  u_xlat86 = min(u_xlat86, 1.0f);
  u_xlat86 = (-(u_xlat86) + 1.0f);
  u_xlat86 = sqrt(u_xlat86);
  u_xlat86 = max(u_xlat86, 0.0000000000000001f);
  u_xlat11 = vec4f(((u_xlat12.xx * u_xlat11.xy)).xy, u_xlat11.zw);
  u_xlat86 = max(u_xlat86, 0.20000000298023223877f);
  u_xlat11 = vec4f(((u_xlat11.xy / vec2f(u_xlat86))).xy, u_xlat11.zw);
  u_xlat13 = ((-(u_xlat6.xyxy) * x_605) + u_xlat4.xyxy);
  let x_708 = vec2f(x_155.x_TileB, x_155.x_TileB);
  u_xlat68 = (u_xlat13.xy / vec2f(x_708.x, x_708.y));
  let x_717 = u_xlat68;
  let x_719 = x_81.x_GlobalMipBias.x;
  let x_720 = textureSampleBias(x_NormalB, sampler_NormalB, x_717, x_719);
  u_xlat14 = vec4f(x_720.xyw.xyz, u_xlat14.w);
  u_xlat14.x = (u_xlat14.x * u_xlat14.z);
  u_xlat68 = ((u_xlat14.xy * x_453) + x_455);
  u_xlat86 = dot(u_xlat68, u_xlat68);
  u_xlat86 = min(u_xlat86, 1.0f);
  u_xlat86 = (-(u_xlat86) + 1.0f);
  u_xlat86 = sqrt(u_xlat86);
  u_xlat86 = max(u_xlat86, 0.0000000000000001f);
  let x_749 = (u_xlat12.xx * u_xlat68);
  u_xlat12 = vec4f(x_749.x, u_xlat12.y, x_749.y, u_xlat12.w);
  u_xlat86 = max(u_xlat86, 0.20000000298023223877f);
  let x_758 = (u_xlat12.xz / vec2f(u_xlat86));
  u_xlat12 = vec4f(x_758.x, u_xlat12.y, x_758.y, u_xlat12.w);
  let x_765 = (vec2f(u_xlat5) * u_xlat12.xz);
  u_xlat12 = vec4f(x_765.x, u_xlat12.y, x_765.y, u_xlat12.w);
  u_xlat11 = vec4f((((u_xlat11.xy * vec2f(u_xlat88)) + u_xlat12.xz)).xy, u_xlat11.zw);
  u_xlat86 = dot(u_xlat31, u_xlat31);
  u_xlat86 = sqrt(u_xlat86);
  u_xlat31 = (vec2f(u_xlat86) + vec2f(-0.25f, -0.15000000596046447754f));
  u_xlat31.x = (u_xlat31.x + u_xlat31.x);
  u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
  u_xlat31.x = (u_xlat31.x * x_155.x_Standing);
  let x_810 = (u_xlat3.xxx + vec3f(-0.60000002384185791016f, -0.55000001192092895508f, -0.55000001192092895508f));
  u_xlat12 = vec4f(x_810.x, u_xlat12.y, x_810.yz);
  let x_818 = (u_xlat12.xzw * vec3f(3.33333325386047363281f, 3.33333325386047363281f, 2.85714292526245117188f));
  u_xlat12 = vec4f(x_818.x, u_xlat12.y, x_818.yz);
  let x_825 = clamp(u_xlat12.xzw, vec3f(0.0f), vec3f(1.0f));
  u_xlat12 = vec4f(x_825.x, u_xlat12.y, x_825.yz);
  let x_832 = (-(u_xlat12.xz) + x_831);
  u_xlat12 = vec4f(x_832.x, u_xlat12.y, x_832.y, u_xlat12.w);
  u_xlat31.x = (u_xlat31.x * u_xlat12.x);
  u_xlat13 = vec4f(((u_xlat4 * vec2f(1.0f, 0.44999998807907104492f))).xy, u_xlat13.zw);
  u_xlat60.x = (x_155.x_TileB * 1.29999995231628417969f);
  u_xlat13 = vec4f(((u_xlat13.xy / u_xlat60.xx)).xy, u_xlat13.zw);
  u_xlat13 = vec4f(((u_xlat13.xy + x_860)).xy, u_xlat13.zw);
  let x_867 = u_xlat13;
  let x_870 = x_81.x_GlobalMipBias.x;
  let x_871 = textureSampleBias(x_NormalB, sampler_NormalB, x_867.xy, x_870);
  u_xlat14 = vec4f(x_871.xyw.xyz, u_xlat14.w);
  u_xlat14.x = (u_xlat14.x * u_xlat14.z);
  u_xlat13 = vec4f((((u_xlat14.xy * x_453) + x_455)).xy, u_xlat13.zw);
  u_xlat60.x = dot(u_xlat13.xy, u_xlat13.xy);
  u_xlat60.x = min(u_xlat60.x, 1.0f);
  u_xlat60.x = (-(u_xlat60.x) + 1.0f);
  u_xlat60.x = sqrt(u_xlat60.x);
  u_xlat60.x = max(u_xlat60.x, 0.0000000000000001f);
  u_xlat12 = vec4f(((u_xlat12.yy * u_xlat13.xy)).xy, u_xlat12.zw);
  u_xlat60.x = max(u_xlat60.x, 0.20000000298023223877f);
  u_xlat12 = vec4f(((u_xlat12.xy / u_xlat60.xx)).xy, u_xlat12.zw);
  u_xlat10 = vec4f(((u_xlat10.xy + u_xlat11.xy)).xy, u_xlat10.zw);
  u_xlat60.x = ((-(u_xlat31.x) * 0.5f) + 1.0f);
  u_xlat11 = vec4f(((u_xlat31.xx * u_xlat12.xy)).xy, u_xlat11.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * u_xlat60.xx) + u_xlat11.xy)).xy, u_xlat10.zw);
  u_xlat31.x = (u_xlat31.y * 1.66666662693023681641f);
  u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
  u_xlat14.x = (u_xlat4.x / x_155.x_StreakTile.x);
  u_xlat14.z = (u_xlat62.y / x_155.x_StreakTile.y);
  u_xlat14.y = (u_xlat66.y / x_155.x_StreakTile.y);
  u_xlat15 = (u_xlat14.xyxz + vec4f(0.20999999344348907471f, 0.37000000476837158203f, 0.00400000018998980522f, 0.0f));
  let x_998 = u_xlat14;
  let x_1001 = x_81.x_GlobalMipBias.x;
  let x_1002 = textureSampleBias(x_StreakTex, sampler_StreakTex, x_998.xz, x_1001);
  u_xlat59 = x_1002.z;
  let x_1007 = u_xlat15;
  let x_1010 = x_81.x_GlobalMipBias.x;
  let x_1011 = textureSampleBias(x_StreakTex, sampler_StreakTex, x_1007.xy, x_1010);
  u_xlat60.x = x_1011.z;
  u_xlat60.x = (u_xlat5 * u_xlat60.x);
  u_xlat59 = ((u_xlat59 * u_xlat88) + u_xlat60.x);
  let x_1028 = u_xlat15;
  let x_1031 = x_81.x_GlobalMipBias.x;
  let x_1032 = textureSampleBias(x_StreakTex, sampler_StreakTex, x_1028.zw, x_1031);
  u_xlat60.x = x_1032.z;
  u_xlat62 = (u_xlat14.xy + vec2f(0.21399998664855957031f, 0.37000000476837158203f));
  let x_1043 = u_xlat62;
  let x_1045 = x_81.x_GlobalMipBias.x;
  let x_1046 = textureSampleBias(x_StreakTex, sampler_StreakTex, x_1043, x_1045);
  u_xlat89 = x_1046.z;
  u_xlat89 = (u_xlat5 * u_xlat89);
  u_xlat60.x = ((u_xlat60.x * u_xlat88) + u_xlat89);
  u_xlat60.x = (-(u_xlat59) + u_xlat60.x);
  u_xlat60.x = (u_xlat60.x * x_155.x_Streaks);
  u_xlat60.x = (u_xlat60.x * 8.0f);
  u_xlat60.x = (u_xlat31.x * u_xlat60.x);
  u_xlat60.x = (u_xlat9.w * u_xlat60.x);
  u_xlat60.x = ((u_xlat60.x * u_xlat12.z) + u_xlat10.x);
  let x_1102 = ((u_xlat8 * u_xlat60.xxx) + u_xlat2);
  u_xlat10 = vec4f(x_1102.x, u_xlat10.y, x_1102.yz);
  u_xlat10 = vec4f((((u_xlat7 * u_xlat10.yyy) + u_xlat10.xzw)).xyz, u_xlat10.w);
  u_xlat30 = dot(u_xlat10.xyz, u_xlat10.xyz);
  u_xlat30 = inverseSqrt(u_xlat30);
  u_xlat12 = vec4f(((vec3f(u_xlat30) * u_xlat10.xyz)).xyz, u_xlat12.w);
  let x_1131 = x_81.x_ScaledScreenParams.xy;
  u_xlat62 = (x_831 / vec2f(x_1131.x, x_1131.y));
  u_xlat14 = vec4f(((u_xlat62 * hlslcc_FragCoord.xy)).xy, u_xlat14.zw);
  u_xlat60.x = ((u_xlat14.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat14.z = (-(u_xlat60.x) + 1.0f);
  u_xlat60.x = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat60.x = (1.0f / u_xlat60.x);
  u_xlat62 = ((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_860) + x_831);
  u_xlat65 = min(u_xlat62, u_xlat14.xz);
  u_xlat65 = (u_xlat65 * x_81.x_RTHandleScale.xy);
  u_xlat65 = (u_xlat65 * x_81.x_ScreenSize.xy);
  u_xlatu15 = vec4u(vec2u(u_xlat65).xy, u_xlatu15.zw);
  u_xlatu15.z = 0u;
  u_xlatu15.w = 0u;
  u_xlat14.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu15.xy), bitcast<i32>(u_xlatu15.w)).x;
  u_xlat65 = ((u_xlat14.xz * x_453) + x_455);
  let x_1229 = (-(u_xlat65.yy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw);
  u_xlat38 = vec3f(x_1229.x, u_xlat38.y, x_1229.y);
  u_xlat65 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat65.xx) + u_xlat38.xz);
  u_xlat65 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat14.ww) + u_xlat65);
  u_xlat65 = (u_xlat65 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat89 = (u_xlat65.x / u_xlat65.y);
  u_xlat89 = (-(u_xlat89) + vs_TEXCOORD0.y);
  u_xlat89 = max(u_xlat89, 0.0f);
  u_xlat2 = vec3f((((u_xlat10.xz * vec2f(u_xlat30)) + -(u_xlat2.xz))).xy, u_xlat2.z);
  let x_1283 = vec2f(x_155.x_Refraction, x_155.x_Refraction);
  u_xlat2 = vec3f(((u_xlat2.xy * vec2f(x_1283.x, x_1283.y))).xy, u_xlat2.z);
  u_xlat65 = (vec2f(u_xlat89) * vec2f(15.0f, 249.9999847412109375f));
  u_xlat65 = min(u_xlat65, x_831);
  u_xlat2 = vec3f((((u_xlat2.xy * u_xlat65.xx) + u_xlat14.xz)).xy, u_xlat2.z);
  u_xlat62 = min(u_xlat62, u_xlat2.xy);
  u_xlat62 = (u_xlat62 * x_81.x_RTHandleScale.xy);
  u_xlat62 = (u_xlat62 * x_81.x_ScreenSize.xy);
  u_xlatu10 = vec4u(vec2u(u_xlat62).xy, u_xlatu10.zw);
  u_xlatu10.z = 0u;
  u_xlatu10.w = 0u;
  u_xlat2.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu10.xy), bitcast<i32>(u_xlatu10.w)).x;
  u_xlat62.x = ((x_81.x_ZBufferParams.z * u_xlat2.z) + x_81.x_ZBufferParams.w);
  u_xlat62.x = (1.0f / u_xlat62.x);
  u_xlatb60 = (u_xlat62.x < u_xlat60.x);
  if (u_xlatb60) {
    x_1359 = u_xlat14.xzw;
  } else {
    x_1359 = u_xlat2;
  }
  u_xlat2 = x_1359;
  u_xlat62 = ((u_xlat2.xy * x_453) + x_455);
  u_xlat10 = (-(u_xlat62.yyyy) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat10 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat62.xxxx) + u_xlat10);
  u_xlat10 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat2.zzzz) + u_xlat10);
  u_xlat10 = (u_xlat10 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  u_xlat10 = vec4f(((u_xlat10.xyz / u_xlat10.www)).xyz, u_xlat10.w);
  u_xlat15 = vec4f(((u_xlat10.xyz + -(vs_TEXCOORD0))).xyz, u_xlat15.w);
  u_xlat58.x = dot(u_xlat15.xyz, u_xlat15.xyz);
  u_xlat58.x = sqrt(u_xlat58.x);
  u_xlat58.x = min(u_xlat58.x, 20.0f);
  u_xlat60.x = (-(u_xlat10.y) + vs_TEXCOORD0.y);
  u_xlat60.x = max(u_xlat60.x, 0.0f);
  u_xlat62 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_860) + x_831);
  u_xlat2 = vec3f(min(u_xlat2.xy, u_xlat62).xy, u_xlat2.z);
  u_xlat2 = vec3f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.z);
  let x_1462 = u_xlat2;
  let x_1465 = x_81.x_GlobalMipBias.x;
  let x_1466 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_1462.xy, x_1465);
  u_xlat15 = vec4f(x_1466.xyz.xyz, u_xlat15.w);
  u_xlat16 = vec4f(((vs_TEXCOORD0 + -(x_1476.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat16.w);
  u_xlat17 = vec4f(((vs_TEXCOORD0 + -(x_1476.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat17.w);
  u_xlat18 = vec4f(((vs_TEXCOORD0 + -(x_1476.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat18.w);
  u_xlat19 = vec4f(((vs_TEXCOORD0 + -(x_1476.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat19.w);
  u_xlat16.x = dot(u_xlat16.xyz, u_xlat16.xyz);
  u_xlat16.y = dot(u_xlat17.xyz, u_xlat17.xyz);
  u_xlat16.z = dot(u_xlat18.xyz, u_xlat18.xyz);
  u_xlat16.w = dot(u_xlat19.xyz, u_xlat19.xyz);
  u_xlatb16 = (u_xlat16 < x_1476.x_CascadeShadowSplitSphereRadii);
  u_xlat17.x = select(0.0f, 1.0f, u_xlatb16.x);
  u_xlat17.y = select(0.0f, 1.0f, u_xlatb16.y);
  u_xlat17.z = select(0.0f, 1.0f, u_xlatb16.z);
  u_xlat17.w = select(0.0f, 1.0f, u_xlatb16.w);
  u_xlat16.x = select(-0.0f, -1.0f, u_xlatb16.x);
  u_xlat16.y = select(-0.0f, -1.0f, u_xlatb16.y);
  u_xlat16.z = select(-0.0f, -1.0f, u_xlatb16.z);
  u_xlat16 = vec4f(((u_xlat16.xyz + u_xlat17.yzw)).xyz, u_xlat16.w);
  u_xlat17 = vec4f(u_xlat17.x, max(u_xlat16.xyz, vec3f()).xyz);
  u_xlat2.x = dot(u_xlat17, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat2.x = (-(u_xlat2.x) + 4.0f);
  u_xlatu2 = u32(u_xlat2.x);
  u_xlati2 = (bitcast<i32>(u_xlatu2) << bitcast<u32>(2i));
  u_xlat16 = vec4f(((vs_TEXCOORD0.yyy * x_1476.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 1i)].xyz)).xyz, u_xlat16.w);
  u_xlat16 = vec4f((((x_1476.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati2].xyz * vs_TEXCOORD0.xxx) + u_xlat16.xyz)).xyz, u_xlat16.w);
  u_xlat16 = vec4f((((x_1476.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat16.xyz)).xyz, u_xlat16.w);
  u_xlat16 = vec4f(((u_xlat16.xyz + x_1476.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 3i)].xyz)).xyz, u_xlat16.w);
  u_xlatb2 = (0.0f < x_1476.x_MainLightShadowParams.y);
  if (u_xlatb2) {
    u_xlatb2 = (x_1476.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb2) {
      u_xlat17 = (u_xlat16.xyxy + x_1476.x_MainLightShadowOffset0);
      let x_1670 = u_xlat17.xy;
      txVec0 = vec3f(x_1670.x, x_1670.y, u_xlat16.z);
      u_xlat18.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1690 = u_xlat17.zw;
      txVec1 = vec3f(x_1690.x, x_1690.y, u_xlat16.z);
      u_xlat18.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat17 = (u_xlat16.xyxy + x_1476.x_MainLightShadowOffset1);
      let x_1710 = u_xlat17.xy;
      txVec2 = vec3f(x_1710.x, x_1710.y, u_xlat16.z);
      u_xlat18.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1725 = u_xlat17.zw;
      txVec3 = vec3f(x_1725.x, x_1725.y, u_xlat16.z);
      u_xlat18.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat2.x = dot(u_xlat18, vec4f(0.25f));
    } else {
      u_xlatb30 = (x_1476.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb30) {
        u_xlat62 = ((u_xlat16.xy * x_1476.x_MainLightShadowmapSize.zw) + x_860);
        u_xlat62 = floor(u_xlat62);
        let x_1767 = ((u_xlat16.xy * x_1476.x_MainLightShadowmapSize.zw) + -(u_xlat62));
        u_xlat38 = vec3f(x_1767.x, u_xlat38.y, x_1767.y);
        u_xlat17 = (u_xlat38.xxzz + x_1772);
        u_xlat18 = (u_xlat17.xxzz * u_xlat17.xxzz);
        u_xlat11 = vec4f(((u_xlat18.yw * vec2f(0.07999999821186065674f))).xy, u_xlat11.zw);
        u_xlat13 = vec4f((((u_xlat18.xz * x_860) + -(u_xlat38.xz))).xy, u_xlat13.zw);
        let x_1799 = (-(u_xlat38.xz) + x_831);
        u_xlat42 = vec3f(x_1799.x, u_xlat42.y, x_1799.y);
        let x_1805 = min(u_xlat38.xz, vec2f());
        u_xlat17 = vec4f(x_1805.x, u_xlat17.y, x_1805.y, u_xlat17.w);
        let x_1816 = ((-(u_xlat17.xz) * u_xlat17.xz) + u_xlat42.xz);
        u_xlat17 = vec4f(x_1816.x, u_xlat17.y, x_1816.y, u_xlat17.w);
        let x_1821 = max(u_xlat38.xz, vec2f());
        u_xlat38 = vec3f(x_1821.x, u_xlat38.y, x_1821.y);
        let x_1832 = ((-(u_xlat38.xz) * u_xlat38.xz) + u_xlat17.yw);
        u_xlat38 = vec3f(x_1832.x, u_xlat38.y, x_1832.y);
        let x_1837 = (u_xlat17.xz + x_831);
        u_xlat17 = vec4f(x_1837.x, u_xlat17.y, x_1837.y, u_xlat17.w);
        let x_1842 = (u_xlat38.xz + x_831);
        u_xlat38 = vec3f(x_1842.x, u_xlat38.y, x_1842.y);
        u_xlat18 = vec4f(((u_xlat13.xy * x_1848)).xy, u_xlat18.zw);
        u_xlat19 = vec4f(((u_xlat42.xz * x_1848)).xy, u_xlat19.zw);
        u_xlat20 = vec4f(((u_xlat17.xz * x_1848)).xy, u_xlat20.zw);
        u_xlat21 = vec4f(((u_xlat38.xz * x_1848)).xy, u_xlat21.zw);
        let x_1871 = (u_xlat17.yw * x_1848);
        u_xlat38 = vec3f(x_1871.x, u_xlat38.y, x_1871.y);
        u_xlat18.z = u_xlat20.x;
        u_xlat18.w = u_xlat38.x;
        u_xlat19.z = u_xlat21.x;
        u_xlat19.w = u_xlat11.x;
        u_xlat17 = (u_xlat18.zwxz + u_xlat19.zwxz);
        u_xlat20.z = u_xlat18.y;
        u_xlat20.w = u_xlat38.z;
        u_xlat21.z = u_xlat19.y;
        u_xlat21.w = u_xlat11.y;
        u_xlat18 = vec4f(((u_xlat20.zyw + u_xlat21.zyw)).xyz, u_xlat18.w);
        u_xlat19 = vec4f(((u_xlat19.xzw / u_xlat17.zwy)).xyz, u_xlat19.w);
        u_xlat19 = vec4f(((u_xlat19.xyz + x_1921)).xyz, u_xlat19.w);
        u_xlat20 = vec4f(((u_xlat21.zyw / u_xlat18.xyz)).xyz, u_xlat20.w);
        u_xlat20 = vec4f(((u_xlat20.xyz + x_1921)).xyz, u_xlat20.w);
        u_xlat19 = vec4f(((u_xlat19.yxz * x_1476.x_MainLightShadowmapSize.xxx)).xyz, u_xlat19.w);
        u_xlat20 = vec4f(((u_xlat20.xyz * x_1476.x_MainLightShadowmapSize.yyy)).xyz, u_xlat20.w);
        u_xlat19.w = u_xlat20.x;
        u_xlat21 = ((u_xlat62.xyxy * x_1476.x_MainLightShadowmapSize.xyxy) + u_xlat19.ywxw);
        let x_1972 = ((u_xlat62 * x_1476.x_MainLightShadowmapSize.xy) + u_xlat19.zw);
        u_xlat38 = vec3f(x_1972.x, u_xlat38.y, x_1972.y);
        u_xlat20.w = u_xlat19.y;
        let x_1979 = u_xlat20.yz;
        u_xlat19 = vec4f(u_xlat19.x, x_1979.x, u_xlat19.z, x_1979.y);
        u_xlat22 = ((u_xlat62.xyxy * x_1476.x_MainLightShadowmapSize.xyxy) + u_xlat19.xyzy);
        u_xlat20 = ((u_xlat62.xyxy * x_1476.x_MainLightShadowmapSize.xyxy) + u_xlat20.wywz);
        u_xlat19 = ((u_xlat62.xyxy * x_1476.x_MainLightShadowmapSize.xyxy) + u_xlat19.xwzw);
        u_xlat23 = (u_xlat17.zwyz * u_xlat18.xxxy);
        u_xlat24 = (u_xlat17 * u_xlat18.yyzz);
        u_xlat30 = (u_xlat17.y * u_xlat18.z);
        let x_2028 = u_xlat21.xy;
        txVec4 = vec3f(x_2028.x, x_2028.y, u_xlat16.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_2043 = u_xlat21.zw;
        txVec5 = vec3f(x_2043.x, x_2043.y, u_xlat16.z);
        u_xlat90 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat90 = (u_xlat90 * u_xlat23.y);
        u_xlat62.x = ((u_xlat23.x * u_xlat62.x) + u_xlat90);
        let x_2069 = u_xlat38.xz;
        txVec6 = vec3f(x_2069.x, x_2069.y, u_xlat16.z);
        u_xlat90 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat62.x = ((u_xlat23.z * u_xlat90) + u_xlat62.x);
        let x_2091 = u_xlat20.xy;
        txVec7 = vec3f(x_2091.x, x_2091.y, u_xlat16.z);
        u_xlat90 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat62.x = ((u_xlat23.w * u_xlat90) + u_xlat62.x);
        let x_2113 = u_xlat22.xy;
        txVec8 = vec3f(x_2113.x, x_2113.y, u_xlat16.z);
        u_xlat90 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat62.x = ((u_xlat24.x * u_xlat90) + u_xlat62.x);
        let x_2135 = u_xlat22.zw;
        txVec9 = vec3f(x_2135.x, x_2135.y, u_xlat16.z);
        u_xlat90 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat62.x = ((u_xlat24.y * u_xlat90) + u_xlat62.x);
        let x_2157 = u_xlat20.zw;
        txVec10 = vec3f(x_2157.x, x_2157.y, u_xlat16.z);
        u_xlat90 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat62.x = ((u_xlat24.z * u_xlat90) + u_xlat62.x);
        let x_2179 = u_xlat19.xy;
        txVec11 = vec3f(x_2179.x, x_2179.y, u_xlat16.z);
        u_xlat90 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat62.x = ((u_xlat24.w * u_xlat90) + u_xlat62.x);
        let x_2201 = u_xlat19.zw;
        txVec12 = vec3f(x_2201.x, x_2201.y, u_xlat16.z);
        u_xlat90 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat2.x = ((u_xlat30 * u_xlat90) + u_xlat62.x);
      } else {
        u_xlat62 = ((u_xlat16.xy * x_1476.x_MainLightShadowmapSize.zw) + x_860);
        u_xlat62 = floor(u_xlat62);
        let x_2238 = ((u_xlat16.xy * x_1476.x_MainLightShadowmapSize.zw) + -(u_xlat62));
        u_xlat38 = vec3f(x_2238.x, u_xlat38.y, x_2238.y);
        u_xlat17 = (u_xlat38.xxzz + x_1772);
        u_xlat18 = (u_xlat17.xxzz * u_xlat17.xxzz);
        let x_2253 = (u_xlat18.yw * vec2f(0.04081600159406661987f));
        u_xlat19 = vec4f(u_xlat19.x, x_2253.x, u_xlat19.z, x_2253.y);
        u_xlat11 = vec4f((((u_xlat18.xz * x_860) + -(u_xlat38.xz))).xy, u_xlat11.zw);
        u_xlat13 = vec4f(((-(u_xlat38.xz) + x_831)).xy, u_xlat13.zw);
        let x_2273 = min(u_xlat38.xz, vec2f());
        u_xlat42 = vec3f(x_2273.x, u_xlat42.y, x_2273.y);
        u_xlat13 = vec4f((((-(u_xlat42.xz) * u_xlat42.xz) + u_xlat13.xy)).xy, u_xlat13.zw);
        let x_2289 = max(u_xlat38.xz, vec2f());
        u_xlat42 = vec3f(x_2289.x, u_xlat42.y, x_2289.y);
        let x_2300 = ((-(u_xlat42.xz) * u_xlat42.xz) + u_xlat17.yw);
        u_xlat42 = vec3f(x_2300.x, u_xlat42.y, x_2300.y);
        u_xlat13 = vec4f(((u_xlat13.xy + x_453)).xy, u_xlat13.zw);
        let x_2310 = (u_xlat42.xz + x_453);
        u_xlat42 = vec3f(x_2310.x, u_xlat42.y, x_2310.y);
        u_xlat17.z = (u_xlat42.x * 0.08163200318813323975f);
        u_xlat18 = vec4f(((u_xlat11.yx * x_2320)).xy, u_xlat18.zw);
        u_xlat11 = vec4f(((u_xlat13.xy * x_2320)).xy, u_xlat11.zw);
        u_xlat18.z = (u_xlat42.z * 0.08163200318813323975f);
        u_xlat17.x = u_xlat18.y;
        let x_2343 = ((u_xlat38.xx * x_2339) + x_2342);
        u_xlat17 = vec4f(u_xlat17.x, x_2343.x, u_xlat17.z, x_2343.y);
        let x_2350 = ((u_xlat38.xx * x_2339) + x_2349);
        u_xlat20 = vec4f(x_2350.x, u_xlat20.y, x_2350.y, u_xlat20.w);
        u_xlat20.y = u_xlat11.x;
        u_xlat20.w = u_xlat19.y;
        u_xlat17 = (u_xlat17 + u_xlat20);
        let x_2365 = ((u_xlat38.zz * x_2339) + x_2342);
        u_xlat18 = vec4f(u_xlat18.x, x_2365.x, u_xlat18.z, x_2365.y);
        let x_2371 = ((u_xlat38.zz * x_2339) + x_2349);
        u_xlat19 = vec4f(x_2371.x, u_xlat19.y, x_2371.y, u_xlat19.w);
        u_xlat19.y = u_xlat11.y;
        u_xlat18 = (u_xlat18 + u_xlat19);
        u_xlat20 = (u_xlat20 / u_xlat17);
        u_xlat20 = (u_xlat20 + x_2387);
        u_xlat19 = (u_xlat19 / u_xlat18);
        u_xlat19 = (u_xlat19 + x_2387);
        u_xlat20 = (u_xlat20.wxyz * x_1476.x_MainLightShadowmapSize.xxxx);
        u_xlat19 = (u_xlat19.xwyz * x_1476.x_MainLightShadowmapSize.yyyy);
        let x_2407 = u_xlat20.yzw;
        u_xlat21 = vec4f(x_2407.x, u_xlat21.y, x_2407.yz);
        u_xlat21.y = u_xlat19.x;
        u_xlat22 = ((u_xlat62.xyxy * x_1476.x_MainLightShadowmapSize.xyxy) + u_xlat21.xyzy);
        let x_2429 = ((u_xlat62 * x_1476.x_MainLightShadowmapSize.xy) + u_xlat21.wy);
        u_xlat38 = vec3f(x_2429.x, u_xlat38.y, x_2429.y);
        u_xlat20.y = u_xlat21.y;
        u_xlat21.y = u_xlat19.z;
        u_xlat23 = ((u_xlat62.xyxy * x_1476.x_MainLightShadowmapSize.xyxy) + u_xlat21.xyzy);
        u_xlat11 = vec4f((((u_xlat62 * x_1476.x_MainLightShadowmapSize.xy) + u_xlat21.wy)).xy, u_xlat11.zw);
        u_xlat20.z = u_xlat21.y;
        u_xlat24 = ((u_xlat62.xyxy * x_1476.x_MainLightShadowmapSize.xyxy) + u_xlat20.xyxz);
        u_xlat21.y = u_xlat19.w;
        u_xlat25 = ((u_xlat62.xyxy * x_1476.x_MainLightShadowmapSize.xyxy) + u_xlat21.xyzy);
        u_xlat13 = vec4f((((u_xlat62 * x_1476.x_MainLightShadowmapSize.xy) + u_xlat21.wy)).xy, u_xlat13.zw);
        u_xlat20.w = u_xlat21.y;
        let x_2502 = ((u_xlat62 * x_1476.x_MainLightShadowmapSize.xy) + u_xlat20.xw);
        u_xlat42 = vec3f(x_2502.x, u_xlat42.y, x_2502.y);
        let x_2506 = u_xlat21.xzw;
        u_xlat19 = vec4f(x_2506.x, u_xlat19.y, x_2506.yz);
        u_xlat21 = ((u_xlat62.xyxy * x_1476.x_MainLightShadowmapSize.xyxy) + u_xlat19.xyzy);
        u_xlat75 = ((u_xlat62 * x_1476.x_MainLightShadowmapSize.xy) + u_xlat19.wy);
        u_xlat19.x = u_xlat20.x;
        u_xlat62 = ((u_xlat62 * x_1476.x_MainLightShadowmapSize.xy) + u_xlat19.xy);
        u_xlat20 = (u_xlat17 * u_xlat18.xxxx);
        u_xlat26 = (u_xlat17 * u_xlat18.yyyy);
        u_xlat27 = (u_xlat17 * u_xlat18.zzzz);
        u_xlat17 = (u_xlat17 * u_xlat18.wwww);
        let x_2558 = u_xlat22.xy;
        txVec13 = vec3f(x_2558.x, x_2558.y, u_xlat16.z);
        u_xlat30 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_2572 = u_xlat22.zw;
        txVec14 = vec3f(x_2572.x, x_2572.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat91 = (u_xlat91 * u_xlat20.y);
        u_xlat30 = ((u_xlat20.x * u_xlat30) + u_xlat91);
        let x_2596 = u_xlat38.xz;
        txVec15 = vec3f(x_2596.x, x_2596.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat30 = ((u_xlat20.z * u_xlat91) + u_xlat30);
        let x_2616 = u_xlat24.xy;
        txVec16 = vec3f(x_2616.x, x_2616.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat30 = ((u_xlat20.w * u_xlat91) + u_xlat30);
        let x_2636 = u_xlat23.xy;
        txVec17 = vec3f(x_2636.x, x_2636.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat30 = ((u_xlat26.x * u_xlat91) + u_xlat30);
        let x_2656 = u_xlat23.zw;
        txVec18 = vec3f(x_2656.x, x_2656.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat30 = ((u_xlat26.y * u_xlat91) + u_xlat30);
        let x_2676 = u_xlat11.xy;
        txVec19 = vec3f(x_2676.x, x_2676.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat30 = ((u_xlat26.z * u_xlat91) + u_xlat30);
        let x_2696 = u_xlat24.zw;
        txVec20 = vec3f(x_2696.x, x_2696.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat30 = ((u_xlat26.w * u_xlat91) + u_xlat30);
        let x_2716 = u_xlat25.xy;
        txVec21 = vec3f(x_2716.x, x_2716.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat30 = ((u_xlat27.x * u_xlat91) + u_xlat30);
        let x_2736 = u_xlat25.zw;
        txVec22 = vec3f(x_2736.x, x_2736.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat30 = ((u_xlat27.y * u_xlat91) + u_xlat30);
        let x_2756 = u_xlat13.xy;
        txVec23 = vec3f(x_2756.x, x_2756.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat30 = ((u_xlat27.z * u_xlat91) + u_xlat30);
        let x_2776 = u_xlat42.xz;
        txVec24 = vec3f(x_2776.x, x_2776.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat30 = ((u_xlat27.w * u_xlat91) + u_xlat30);
        let x_2796 = u_xlat21.xy;
        txVec25 = vec3f(x_2796.x, x_2796.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat30 = ((u_xlat17.x * u_xlat91) + u_xlat30);
        let x_2816 = u_xlat21.zw;
        txVec26 = vec3f(x_2816.x, x_2816.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat30 = ((u_xlat17.y * u_xlat91) + u_xlat30);
        txVec27 = vec3f(u_xlat75.x, u_xlat75.y, u_xlat16.z);
        u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat30 = ((u_xlat17.z * u_xlat91) + u_xlat30);
        txVec28 = vec3f(u_xlat62.x, u_xlat62.y, u_xlat16.z);
        u_xlat62.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat2.x = ((u_xlat17.w * u_xlat62.x) + u_xlat30);
      }
    }
  } else {
    let x_2878 = u_xlat16.xy;
    txVec29 = vec3f(x_2878.x, x_2878.y, u_xlat16.z);
    u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat30 = (-(x_1476.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat2.x * x_1476.x_MainLightShadowParams.x) + u_xlat30);
  u_xlatb30 = (0.0f >= u_xlat16.z);
  u_xlatb62 = (u_xlat16.z >= 1.0f);
  u_xlatb30 = (u_xlatb30 | u_xlatb62);
  if (u_xlatb30) {
    x_2914 = 1.0f;
  } else {
    x_2914 = u_xlat2.x;
  }
  u_xlat2.x = x_2914;
  u_xlat16 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat16.w);
  u_xlat30 = dot(u_xlat16.xyz, u_xlat16.xyz);
  u_xlat30 = ((u_xlat30 * x_1476.x_MainLightShadowParams.z) + x_1476.x_MainLightShadowParams.w);
  u_xlat30 = clamp(u_xlat30, 0.0f, 1.0f);
  u_xlat62.x = (-(u_xlat2.x) + 1.0f);
  u_xlat2.x = ((u_xlat30 * u_xlat62.x) + u_xlat2.x);
  u_xlat17.x = dot(x_2963.unity_SHAr.yw, x_831);
  u_xlat17.y = dot(x_2963.unity_SHAg.yw, x_831);
  u_xlat17.z = dot(x_2963.unity_SHAb.yw, x_831);
  u_xlat17 = vec4f(((u_xlat17.xyz + -(x_2963.unity_SHC.xyz))).xyz, u_xlat17.w);
  u_xlat18 = vec4f(((x_81.x_B612WaterShallow.xyz + x_2995)).xyz, u_xlat18.w);
  u_xlat18 = vec4f((((x_81.x_B612SunDirection.www * u_xlat18.xyz) + x_3005)).xyz, u_xlat18.w);
  u_xlat18 = vec4f(((u_xlat18.xyz * x_155.x_ScatterColor.xyz)).xyz, u_xlat18.w);
  u_xlat19 = vec4f(((x_81.x_B612WaterDeep.xyz + x_2995)).xyz, u_xlat19.w);
  u_xlat19 = vec4f((((x_81.x_B612SunDirection.www * u_xlat19.xyz) + x_3005)).xyz, u_xlat19.w);
  let x_3038 = vec2f(x_155.x_CausticsTile, x_155.x_CausticsTile);
  u_xlat62 = (u_xlat10.xz / vec2f(x_3038.x, x_3038.y));
  u_xlat10 = vec4f(((x_81.x_Time.yy * vec2f(-0.03999999910593032837f, 0.05000000074505805969f))).xy, u_xlat10.zw);
  u_xlat66 = ((x_81.x_Time.yy * vec2f(0.05000000074505805969f, 0.02999999932944774628f)) + u_xlat62);
  let x_3065 = u_xlat66;
  let x_3067 = x_81.x_GlobalMipBias.x;
  let x_3068 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_3065, x_3067);
  u_xlat30 = x_3068.x;
  u_xlat62 = ((u_xlat62 * vec2f(1.12999999523162841797f)) + u_xlat10.xy);
  let x_3080 = u_xlat62;
  let x_3082 = x_81.x_GlobalMipBias.x;
  let x_3083 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_3080, x_3082);
  u_xlat62.x = x_3083.x;
  u_xlat30 = min(u_xlat30, u_xlat62.x);
  u_xlat30 = (u_xlat30 * 2.5f);
  u_xlat30 = (u_xlat30 * x_155.x_CausticsStrength);
  u_xlat62 = (u_xlat60.xx * vec2f(8.0f, -4.3280849456787109375f));
  u_xlat60.x = min(u_xlat62.x, 1.0f);
  u_xlat30 = (u_xlat30 * u_xlat60.x);
  u_xlat60.x = exp2(u_xlat62.y);
  u_xlat30 = (u_xlat30 * u_xlat60.x);
  u_xlat60.x = (-(u_xlat3.x) + 1.0f);
  u_xlat30 = (u_xlat30 * u_xlat60.x);
  u_xlat10 = vec4f(((vec3f(u_xlat30) * x_81.x_MainLightColor.xyz)).xyz, u_xlat10.w);
  u_xlat10 = vec4f(((u_xlat2.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat30 = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat30 = u_xlat30;
  u_xlat30 = clamp(u_xlat30, 0.0f, 1.0f);
  u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat30)) + x_3005)).xyz, u_xlat10.w);
  u_xlat10 = vec4f(((u_xlat10.xyz * u_xlat15.xyz)).xyz, u_xlat10.w);
  u_xlat15 = vec4f(((u_xlat58.xxx * -(x_155.x_Absorption.xyz))).xyz, u_xlat15.w);
  u_xlat15 = vec4f(((u_xlat15.xyz * vec3f(1.44269502162933349609f))).xyz, u_xlat15.w);
  u_xlat15 = vec4f(exp2(u_xlat15.xyz).xyz, u_xlat15.w);
  u_xlat30 = (u_xlat58.x * -(x_155.x_ScatterDensity));
  u_xlat30 = (u_xlat30 * 1.44269502162933349609f);
  u_xlat30 = exp2(u_xlat30);
  u_xlat30 = (-(u_xlat30) + 1.0f);
  u_xlat20 = vec4f(((u_xlat2.xxx * x_81.x_MainLightColor.xyz)).xyz, u_xlat20.w);
  u_xlat2.x = (x_81.x_MainLightPosition.y + 0.20000000298023223877f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat21 = vec4f(((u_xlat2.xxx * u_xlat20.xyz)).xyz, u_xlat21.w);
  u_xlat21 = vec4f((((u_xlat21.xyz * vec3f(0.60000002384185791016f)) + u_xlat17.xyz)).xyz, u_xlat21.w);
  u_xlat2.x = (u_xlat58.x * 0.60000002384185791016f);
  u_xlat2.x = min(u_xlat2.x, 1.0f);
  u_xlat19 = vec4f((((x_155.x_DeepColor.xyz * u_xlat19.xyz) + -(u_xlat18.xyz))).xyz, u_xlat19.w);
  u_xlat18 = vec4f((((u_xlat2.xxx * u_xlat19.xyz) + u_xlat18.xyz)).xyz, u_xlat18.w);
  u_xlat18 = vec4f(((u_xlat21.xyz * u_xlat18.xyz)).xyz, u_xlat18.w);
  u_xlat2 = (vec3f(u_xlat30) * u_xlat18.xyz);
  u_xlat2 = ((u_xlat10.xyz * u_xlat15.xyz) + u_xlat2);
  u_xlat60.x = dot(u_xlat12.xyz, u_xlat28);
  u_xlat60.x = clamp(u_xlat60.x, 0.0f, 1.0f);
  u_xlat62.x = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat62.x = ((x_81.x_B612SunDirection.w * u_xlat62.x) + 1.0f);
  u_xlat90 = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_155.x_F0);
  u_xlat91 = (-(x_155.x_F0) + 1.0f);
  u_xlat92 = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat91);
  u_xlat60.x = (-(u_xlat60.x) + 1.0f);
  u_xlat65.x = (u_xlat60.x * u_xlat60.x);
  u_xlat65.x = (u_xlat65.x * u_xlat65.x);
  u_xlat60.x = (u_xlat60.x * u_xlat65.x);
  u_xlat60.x = ((u_xlat92 * u_xlat60.x) + u_xlat90);
  u_xlat60.x = clamp(u_xlat60.x, 0.0f, 1.0f);
  u_xlat60.x = ((u_xlat31.x * 0.07999999821186065674f) + u_xlat60.x);
  u_xlat60.x = min(u_xlat60.x, 1.0f);
  u_xlat90 = dot(-(u_xlat28), u_xlat12.xyz);
  u_xlat90 = (u_xlat90 + u_xlat90);
  u_xlat10 = vec4f((((u_xlat12.xyz * -(vec3f(u_xlat90))) + -(u_xlat28))).xyz, u_xlat10.w);
  u_xlat10.w = abs(u_xlat10.y);
  u_xlat90 = (x_155.x_Roughness * 1.20000004768371582031f);
  u_xlat92 = ((-(x_155.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat92 = (u_xlat92 * x_155.x_Roughness);
  u_xlat92 = (u_xlat92 * 6.0f);
  u_xlat11 = vec4f(((u_xlat14.xz * x_81.x_FPParams1.xy)).xy, u_xlat11.zw);
  u_xlatu11 = vec2u(u_xlat11.xy);
  u_xlatu13 = vec2u(x_81.x_FPParams1.zw);
  u_xlati65 = ((bitcast<i32>(u_xlatu11.y) * bitcast<i32>(u_xlatu13.x)) + bitcast<i32>(u_xlatu11.x));
  u_xlatu65 = (u_xlatu13.y * bitcast<u32>(u_xlati65));
  u_xlat1.x = dot(-(u_xlat1), u_xlat16.xyz);
  u_xlat29.x = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_3454 = u_xlat29.x;
  } else {
    x_3454 = u_xlat1.x;
  }
  u_xlat0.x = x_3454;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati29 = (bitcast<i32>(u_xlatu13.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati29))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_3516 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_3523 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_3524 = vec2i(x_3516, x_3523);
  u_xlati1 = vec3i(x_3524.x, u_xlati1.y, x_3524.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_3536.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  u_xlati13 = ~(u_xlati1.xz);
  u_xlati14 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_3536.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11) | bitcast<vec2u>(u_xlati14)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati11.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati11.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb14 = ((vec4f() < u_xlat10.xwzx)).xyz;
  u_xlatu15.x = u_xlatu65;
  u_xlatu15.y = u_xlatu1.y;
  u_xlatu71.x = 0u;
  u_xlatu71.y = u_xlatu0;
  u_xlat16.x = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat16.z = 0.0f;
  u_xlat57 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu38 = (u_xlatu71.y >> 16u);
    u_xlatu11 = u_xlatu71;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb13 = (bitcast<i32>(u_xlatu11.x) == 0i);
      u_xlatu41 = (u_xlatu11.y & 65535u);
      u_xlatb41 = (u_xlatu38 >= u_xlatu41);
      u_xlatb13 = (u_xlatb41 & u_xlatb13);
      if (!(u_xlatb13)) {
        break;
      }
      param_6 = u_xlatu11.y;
      param_7 = 5i;
      param_8 = 11i;
      let x_3660 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu13.x = x_3660;
      u_xlatu18 = (u_xlatu13.xxxx + u_xlatu15.xxyy);
      u_xlatu19 = (u_xlatu18.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu18.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3682 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu18.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3689 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu18.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3696 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu18.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3703 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati18 = vec4i(x_3682, x_3689, x_3696, x_3703);
      u_xlati75 = bitcast<vec2i>((bitcast<vec2u>(u_xlati18.xx) & bitcast<vec2u>(x_3712.urp_Tiles[bitcast<i32>(u_xlatu19.x)].wy)));
      u_xlati21 = ~(u_xlati18);
      u_xlati22 = bitcast<vec2i>((bitcast<vec2u>(u_xlati21.xx) & bitcast<vec2u>(x_3712.urp_Tiles[bitcast<i32>(u_xlatu19.x)].zx)));
      let x_3744 = bitcast<vec2i>((bitcast<vec2u>(u_xlati75) | bitcast<vec2u>(u_xlati22)));
      u_xlati19 = vec3i(x_3744.x, u_xlati19.y, x_3744.y);
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati18.y) & bitcast<u32>(u_xlati19.x)));
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati21.y) & bitcast<u32>(u_xlati19.z)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati41) | bitcast<u32>(u_xlati98)));
      u_xlati18 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati18.zz) & bitcast<vec2u>(x_3536.urp_ZBins[bitcast<i32>(u_xlatu19.y)].wy))).xy, u_xlati18.zw);
      u_xlati19 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati21.zz) & bitcast<vec2u>(x_3536.urp_ZBins[bitcast<i32>(u_xlatu19.y)].zx))).xy, u_xlati19.z);
      u_xlati18 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati18.xy) | bitcast<vec2u>(u_xlati19.xy))).xy, u_xlati18.zw);
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati18.w) & bitcast<u32>(u_xlati18.x)));
      u_xlati100 = bitcast<i32>((bitcast<u32>(u_xlati21.w) & bitcast<u32>(u_xlati18.y)));
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati98) | bitcast<u32>(u_xlati100)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati41) & bitcast<u32>(u_xlati98)));
      u_xlati98 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu11.y) & 31i)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati41) & bitcast<u32>(u_xlati98)));
      u_xlati13.x = (bitcast<i32>(u_xlatu13.x) << bitcast<u32>(5i));
      u_xlatu13.x = (u_xlatu38 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati13.x)))));
      u_xlatu13.x = min(u_xlatu13.x, 31u);
      u_xlatu13.x = (bitcast<u32>(-(bitcast<i32>(u_xlatu13.x))) + 31u);
      u_xlatu13.x = (4294967295u >> (u_xlatu13.x & 31u));
      u_xlatu11.x = (u_xlatu13.x & bitcast<u32>(u_xlati41));
      u_xlati13.x = (bitcast<i32>(u_xlatu11.y) + 32i);
      u_xlatu11.y = (bitcast<u32>(u_xlati13.x) & 4294967264u);
    }
    u_xlatu71.y = u_xlatu11.y;
    u_xlatb38 = (bitcast<i32>(u_xlatu11.x) != 0i);
    u_xlatb13 = (u_xlat57 < 0.99000000953674316406f);
    u_xlatb38 = (u_xlatb38 & u_xlatb13);
    if (!(u_xlatb38)) {
      break;
    }
    u_xlati38 = bitcast<i32>(firstTrailingBit(u_xlatu11.x));
    u_xlati13.x = (1i << bitcast<u32>((u_xlati38 & 31i)));
    u_xlatu71.x = (u_xlatu11.x ^ bitcast<u32>(u_xlati13.x));
    u_xlati13.x = (bitcast<i32>(u_xlatu71.y) + -32i);
    u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.x) & 65504u));
    u_xlati38 = (u_xlati38 + u_xlati13.x);
    u_xlati38 = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati38);
    u_xlat18 = vec4f(((vs_TEXCOORD0 + -(x_3961.urp_ReflProbes_BoxMin[u_xlati38].xyz))).xyz, u_xlat18.w);
    u_xlat19 = vec4f(((-(vs_TEXCOORD0) + x_3961.urp_ReflProbes_BoxMax[u_xlati38].xyz)).xyz, u_xlat19.w);
    u_xlat18 = vec4f(min(u_xlat18.xyz, u_xlat19.xyz).xyz, u_xlat18.w);
    u_xlat18 = vec4f(((u_xlat18.xyz / x_3961.urp_ReflProbes_BoxMax[u_xlati38].www)).xyz, u_xlat18.w);
    u_xlat13.x = min(u_xlat18.z, u_xlat18.y);
    u_xlat13.x = min(u_xlat13.x, u_xlat18.x);
    u_xlat13.x = clamp(u_xlat13.x, 0.0f, 1.0f);
    u_xlat41 = (-(u_xlat57) + 1.0f);
    u_xlat13.x = min(u_xlat41, u_xlat13.x);
    u_xlatb41 = (0.0f < x_3961.urp_ReflProbes_ProbePosition[u_xlati38].w);
    if (u_xlatb14.x) {
      x_4026 = x_3961.urp_ReflProbes_BoxMax[u_xlati38].x;
    } else {
      x_4026 = x_3961.urp_ReflProbes_BoxMin[u_xlati38].x;
    }
    u_xlat18.x = x_4026;
    if (u_xlatb14.y) {
      x_4040 = x_3961.urp_ReflProbes_BoxMax[u_xlati38].y;
    } else {
      x_4040 = x_3961.urp_ReflProbes_BoxMin[u_xlati38].y;
    }
    u_xlat18.y = x_4040;
    if (u_xlatb14.z) {
      x_4054 = x_3961.urp_ReflProbes_BoxMax[u_xlati38].z;
    } else {
      x_4054 = x_3961.urp_ReflProbes_BoxMin[u_xlati38].z;
    }
    u_xlat18.z = x_4054;
    u_xlat18 = vec4f(((u_xlat18.xyz + -(vs_TEXCOORD0))).xyz, u_xlat18.w);
    u_xlat18 = vec4f(((u_xlat18.xyz / u_xlat10.xwz)).xyz, u_xlat18.w);
    u_xlat98 = min(u_xlat18.y, u_xlat18.x);
    u_xlat98 = min(u_xlat18.z, u_xlat98);
    u_xlat18 = vec4f(((vs_TEXCOORD0 + -(x_3961.urp_ReflProbes_ProbePosition[u_xlati38].xyz))).xyz, u_xlat18.w);
    u_xlat18 = vec4f((((u_xlat10.xwz * vec3f(u_xlat98)) + u_xlat18.xyz)).xyz, u_xlat18.w);
    if (u_xlatb41) {
      x_4110 = u_xlat18.xyz;
    } else {
      x_4110 = u_xlat10.xwz;
    }
    u_xlat18 = vec4f(x_4110.xyz, u_xlat18.w);
    u_xlatu41 = u32(abs(x_3961.urp_ReflProbes_ProbePosition[u_xlati38].w));
    u_xlatu41 = (u_xlatu41 + 4294967295u);
    u_xlat41 = f32(u_xlatu41);
    u_xlat41 = min(u_xlat92, u_xlat41);
    u_xlat98 = dot(abs(u_xlat18.xyz), x_3005);
    u_xlat98 = max(u_xlat98, 0.00000099999999747524f);
    u_xlat98 = (1.0f / u_xlat98);
    u_xlat19 = vec4f(((vec3f(u_xlat98) * u_xlat18.zxy)).xyz, u_xlat19.w);
    u_xlat19.x = -(u_xlat19.x);
    u_xlat19.x = clamp(u_xlat19.x, 0.0f, 1.0f);
    u_xlatb74 = ((u_xlat19.yzyz >= vec4f())).xy;
    if (u_xlatb74.x) {
      x_4167 = u_xlat19.x;
    } else {
      x_4167 = -(u_xlat19.x);
    }
    u_xlat74.x = x_4167;
    if (u_xlatb74.y) {
      x_4180 = u_xlat19.x;
    } else {
      x_4180 = -(u_xlat19.x);
    }
    u_xlat74.y = x_4180;
    u_xlat18 = vec4f((((u_xlat18.xy * vec2f(u_xlat98)) + u_xlat74)).xy, u_xlat18.zw);
    u_xlat18 = vec4f((((u_xlat18.xy * x_860) + x_860)).xy, u_xlat18.zw);
    u_xlat18 = vec4f(clamp(u_xlat18.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat18.zw);
    u_xlat98 = floor(u_xlat41);
    u_xlat100 = (u_xlat98 + 1.0f);
    u_xlat41 = (u_xlat41 + -(u_xlat98));
    u_xlatu98 = u32(u_xlat98);
    u_xlati98 = ((u_xlati38 * 7i) + bitcast<i32>(u_xlatu98));
    u_xlatu100 = u32(u_xlat100);
    u_xlati38 = ((u_xlati38 * 7i) + bitcast<i32>(u_xlatu100));
    u_xlat74 = ((u_xlat18.xy * x_3961.urp_ReflProbes_MipScaleOffset[u_xlati98].xy) + x_3961.urp_ReflProbes_MipScaleOffset[u_xlati98].zw);
    u_xlat19 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat74, 0.0f).xyz.xyz, u_xlat19.w);
    u_xlat18 = vec4f((((u_xlat18.xy * x_3961.urp_ReflProbes_MipScaleOffset[u_xlati38].xy) + x_3961.urp_ReflProbes_MipScaleOffset[u_xlati38].zw)).xy, u_xlat18.zw);
    u_xlat18 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat18.xy, 0.0f).xyz.xyz, u_xlat18.w);
    u_xlat18 = vec4f(((-(u_xlat19.xyz) + u_xlat18.xyz)).xyz, u_xlat18.w);
    u_xlat18 = vec4f((((vec3f(u_xlat41) * u_xlat18.xyz) + u_xlat19.xyz)).xyz, u_xlat18.w);
    u_xlat16 = vec4f((((u_xlat13.xxx * u_xlat18.xyz) + u_xlat16.xyz)).xyz, u_xlat16.w);
    u_xlat57 = (u_xlat57 + u_xlat13.x);
  }
  u_xlatb0 = (u_xlat57 < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat10 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xwz, u_xlat92);
    u_xlat0.x = (-(u_xlat57) + 1.0f);
    u_xlat1.x = (u_xlat10.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat10.xyz * u_xlat1.xxx);
    u_xlat16 = vec4f((((u_xlat0.xxx * u_xlat1) + u_xlat16.xyz)).xyz, u_xlat16.w);
  }
  u_xlat0.x = (u_xlat62.x * x_155.x_ReflectionStrength);
  u_xlat1 = ((u_xlat16.xyz * u_xlat0.xxx) + -(u_xlat2));
  u_xlat1 = ((u_xlat60.xxx * u_xlat1) + u_xlat2);
  u_xlat0.x = ((u_xlat3.w * u_xlat90) + x_155.x_Roughness);
  u_xlat2 = (u_xlat28 + x_81.x_MainLightPosition.xyz);
  u_xlat87 = dot(u_xlat2, u_xlat2);
  u_xlat87 = max(u_xlat87, 1.17549435e-38f);
  u_xlat87 = inverseSqrt(u_xlat87);
  u_xlat2 = (u_xlat2 * vec3f(u_xlat87));
  u_xlat87 = dot(u_xlat12.xyz, u_xlat2);
  u_xlat87 = clamp(u_xlat87, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = max(u_xlat0.x, 0.00009999999747378752f);
  u_xlat60.x = (u_xlat0.x * u_xlat0.x);
  u_xlat87 = (u_xlat87 * u_xlat87);
  u_xlat0.x = ((u_xlat0.x * u_xlat0.x) + -1.0f);
  u_xlat0.x = ((u_xlat87 * u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat60.x / u_xlat0.x);
  u_xlat28.x = dot(u_xlat2, u_xlat28);
  u_xlat28.x = clamp(u_xlat28.x, 0.0f, 1.0f);
  u_xlat28.x = (-(u_xlat28.x) + 1.0f);
  u_xlat56 = (u_xlat28.x * u_xlat28.x);
  u_xlat56 = (u_xlat56 * u_xlat56);
  u_xlat28.x = (u_xlat56 * u_xlat28.x);
  u_xlat28.x = ((u_xlat91 * u_xlat28.x) + x_155.x_F0);
  u_xlat0.x = (u_xlat28.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 60.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat20.xyz);
  let x_4549 = vec3f(x_155.x_SunSpecular, x_155.x_SunSpecular, x_155.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_4549.x, x_4549.y, x_4549.z));
  u_xlat84 = dot(u_xlat12.xyz, x_81.x_MainLightPosition.xyz);
  u_xlat87 = (u_xlat84 * 4.0f);
  u_xlat87 = clamp(u_xlat87, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat87)) + u_xlat1);
  u_xlat1 = vec3f((((u_xlat11.zw * x_4575) + x_526)).xy, u_xlat1.z);
  let x_4583 = u_xlat1;
  let x_4586 = x_81.x_GlobalMipBias.x;
  let x_4587 = textureSampleBias(x_NormalB, sampler_NormalB, x_4583.xy, x_4586);
  u_xlat1 = x_4587.xyw;
  u_xlat1.x = (u_xlat1.x * u_xlat1.z);
  u_xlat1 = vec3f((((u_xlat1.xy * x_453) + x_455)).xy, u_xlat1.z);
  u_xlat57 = dot(u_xlat1.xy, u_xlat1.xy);
  u_xlat57 = min(u_xlat57, 1.0f);
  u_xlat57 = (-(u_xlat57) + 1.0f);
  u_xlat57 = sqrt(u_xlat57);
  u_xlat57 = max(u_xlat57, 0.0000000000000001f);
  u_xlat1 = vec3f(((u_xlat1.xy * x_4618)).xy, u_xlat1.z);
  u_xlat57 = max(u_xlat57, 0.20000000298023223877f);
  u_xlat1 = vec3f(((u_xlat1.xy / vec2f(u_xlat57))).xy, u_xlat1.z);
  u_xlat62 = (u_xlat13.zw * x_4575);
  let x_4637 = u_xlat62;
  let x_4639 = x_81.x_GlobalMipBias.x;
  let x_4640 = textureSampleBias(x_NormalB, sampler_NormalB, x_4637, x_4639);
  u_xlat10 = vec4f(x_4640.xyw.xyz, u_xlat10.w);
  u_xlat10.x = (u_xlat10.x * u_xlat10.z);
  u_xlat62 = ((u_xlat10.xy * x_453) + x_455);
  u_xlat57 = dot(u_xlat62, u_xlat62);
  u_xlat57 = min(u_xlat57, 1.0f);
  u_xlat57 = (-(u_xlat57) + 1.0f);
  u_xlat57 = sqrt(u_xlat57);
  u_xlat57 = max(u_xlat57, 0.0000000000000001f);
  u_xlat62 = (u_xlat62 * x_4618);
  u_xlat57 = max(u_xlat57, 0.20000000298023223877f);
  u_xlat62 = (u_xlat62 / vec2f(u_xlat57));
  u_xlat62 = (vec2f(u_xlat5) * u_xlat62);
  u_xlat1 = vec3f((((u_xlat1.xy * vec2f(u_xlat88)) + u_xlat62)).xy, u_xlat1.z);
  u_xlat7 = (u_xlat1.yyy * u_xlat7);
  u_xlat1 = ((u_xlat8 * u_xlat1.xxx) + u_xlat7);
  u_xlat1 = ((u_xlat1 * vec3f(0.69999998807907104492f)) + u_xlat12.xyz);
  u_xlat87 = dot(u_xlat1, u_xlat1);
  u_xlat87 = inverseSqrt(u_xlat87);
  u_xlat1 = (u_xlat1 * vec3f(u_xlat87));
  u_xlat1.x = dot(u_xlat1, u_xlat2);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * 700.0f);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat29.x = ((u_xlat31.x * 0.80000001192092895508f) + 0.20000000298023223877f);
  u_xlat1.x = (u_xlat29.x * u_xlat1.x);
  u_xlat9 = vec4f(u_xlat9.xy.xy, u_xlat9.zw);
  u_xlat9 = vec4f(clamp(u_xlat9.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat9.zw);
  u_xlat29.x = ((u_xlat9.x * -0.60000002384185791016f) + 1.0f);
  u_xlat1.x = (u_xlat29.x * u_xlat1.x);
  u_xlat1 = (u_xlat1.xxx * u_xlat20.xyz);
  let x_4779 = vec3f(x_155.x_Sparkle, x_155.x_Sparkle, x_155.x_Sparkle);
  u_xlat1 = (u_xlat1 * vec3f(x_4779.x, x_4779.y, x_4779.z));
  u_xlat1 = (u_xlat1 * vec3f(6.0f));
  u_xlat2.x = ((x_81.x_MainLightPosition.y * 4.0f) + 0.20000000298023223877f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat1 * u_xlat2.xxx) + u_xlat0);
  u_xlat1 = vec3f(((u_xlat4 / vec2f(x_155.x_FoamTile))).xy, u_xlat1.z);
  u_xlat2 = vec3f(((u_xlat33 / vec2f(x_155.x_FoamTile))).xy, u_xlat2.z);
  u_xlat2 = vec3f(((u_xlat1.xy + -(u_xlat2.xy))).xy, u_xlat2.z);
  u_xlat2 = vec3f(((u_xlat2.xy + x_526)).xy, u_xlat2.z);
  let x_4835 = u_xlat2;
  let x_4838 = x_81.x_GlobalMipBias.x;
  let x_4839 = textureSampleBias(x_FoamTex, sampler_FoamTex, x_4835.xy, x_4838);
  u_xlat57 = x_4839.x;
  u_xlat2 = vec3f(((u_xlat6 / vec2f(x_155.x_FoamTile))).xy, u_xlat2.z);
  u_xlat1 = vec3f(((u_xlat1.xy + -(u_xlat2.xy))).xy, u_xlat1.z);
  let x_4859 = u_xlat1;
  let x_4862 = x_81.x_GlobalMipBias.x;
  let x_4863 = textureSampleBias(x_FoamTex, sampler_FoamTex, x_4859.xy, x_4862);
  u_xlat1.x = x_4863.x;
  u_xlat1.x = (u_xlat5 * u_xlat1.x);
  u_xlat1.x = ((u_xlat57 * u_xlat88) + u_xlat1.x);
  u_xlat29.x = max(x_155.x_FoamStones, 0.00100000004749745131f);
  u_xlat29.x = (u_xlat89 / u_xlat29.x);
  u_xlat29.x = (-(u_xlat29.x) + 1.0f);
  u_xlat29.x = max(u_xlat29.x, 0.0f);
  u_xlat57 = (u_xlat86 * 2.5f);
  u_xlat57 = min(u_xlat57, 1.0f);
  u_xlat29.x = (u_xlat57 * u_xlat29.x);
  u_xlat29.x = (u_xlat29.x * 0.80000001192092895508f);
  u_xlat29.x = max(u_xlat29.x, u_xlat3.x);
  u_xlat29.x = (u_xlat29.x * x_155.x_FoamAmount);
  u_xlat29.x = clamp(u_xlat29.x, 0.0f, 1.0f);
  u_xlat57 = (-(u_xlat29.x) + 1.0f);
  u_xlat57 = (-(u_xlat57) + u_xlat1.x);
  u_xlat57 = (u_xlat57 * 5.5555553436279296875f);
  u_xlat57 = clamp(u_xlat57, 0.0f, 1.0f);
  u_xlat29.x = (u_xlat29.x * u_xlat57);
  u_xlat57 = (x_155.x_FoamTile * 0.55000001192092895508f);
  u_xlat2 = vec3f(((u_xlat4 / vec2f(u_xlat57))).xy, u_xlat2.z);
  u_xlat58 = (u_xlat33 * x_4956);
  u_xlat58 = (u_xlat58 / vec2f(u_xlat57));
  u_xlat58 = (-(u_xlat58) + u_xlat2.xy);
  u_xlat58 = (u_xlat58 + vec2f(0.31000000238418579102f));
  let x_4974 = u_xlat58;
  let x_4976 = x_81.x_GlobalMipBias.x;
  let x_4977 = textureSampleBias(x_FoamTex, sampler_FoamTex, x_4974, x_4976);
  u_xlat58.x = x_4977.x;
  u_xlat4 = (u_xlat6 * x_4956);
  u_xlat4 = (u_xlat4 / vec2f(u_xlat57));
  u_xlat2 = vec3f(((u_xlat2.xy + -(u_xlat4))).xy, u_xlat2.z);
  u_xlat2 = vec3f(((u_xlat2.xy + vec2f(0.37999999523162841797f, 0.54000002145767211914f))).xy, u_xlat2.z);
  let x_5004 = u_xlat2;
  let x_5007 = x_81.x_GlobalMipBias.x;
  let x_5008 = textureSampleBias(x_FoamTex, sampler_FoamTex, x_5004.xy, x_5007);
  u_xlat57 = x_5008.x;
  u_xlat57 = (u_xlat5 * u_xlat57);
  u_xlat57 = ((u_xlat58.x * u_xlat88) + u_xlat57);
  u_xlat57 = max(u_xlat57, u_xlat1.x);
  u_xlat57 = (-(u_xlat1.x) + u_xlat57);
  u_xlat1.x = ((x_155.x_Churn * u_xlat57) + u_xlat1.x);
  u_xlat57 = (u_xlat85 * 23.0f);
  u_xlat57 = ((x_81.x_Time.y * 7.0f) + u_xlat57);
  u_xlat57 = sin(u_xlat57);
  u_xlat57 = (u_xlat57 * 0.07999999821186065674f);
  u_xlat57 = ((u_xlat57 * x_155.x_Churn) + 0.28000000119209289551f);
  u_xlat1.x = (-(u_xlat57) + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * 2.5f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat57 = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat57);
  u_xlat3.x = u_xlat3.x;
  u_xlat3.x = clamp(u_xlat3.x, 0.0f, 1.0f);
  u_xlat57 = ((u_xlat3.x * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat1.x = (u_xlat57 * u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat12.w);
  u_xlat1.x = max(u_xlat1.x, u_xlat29.x);
  u_xlat29.x = (u_xlat59 + -0.60000002384185791016f);
  u_xlat29.x = (u_xlat29.x * 7.14285707473754882812f);
  u_xlat29.x = clamp(u_xlat29.x, 0.0f, 1.0f);
  u_xlat29.x = (u_xlat29.x * x_155.x_FoamLines);
  u_xlat29.x = (u_xlat31.x * u_xlat29.x);
  u_xlat29.x = (u_xlat9.y * u_xlat29.x);
  u_xlat29.x = (u_xlat29.x * 0.75f);
  u_xlat1.x = max(u_xlat29.x, u_xlat1.x);
  u_xlat84 = u_xlat84;
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat29 = (vec3f(u_xlat84) * u_xlat20.xyz);
  u_xlat2 = (u_xlat17.xyz * x_5164);
  u_xlat29 = ((u_xlat29 * x_5164) + u_xlat2);
  u_xlat29 = (u_xlat29 * x_155.x_FoamColor.xyz);
  u_xlat2 = (u_xlat17.xyz + x_81.x_MainLightColor.xyz);
  u_xlat2 = (u_xlat2 * vec3f(0.72000002861022949219f));
  u_xlat29 = min(u_xlat29, u_xlat2);
  u_xlat84 = (u_xlat1.x * 0.85000002384185791016f);
  u_xlat29 = (-(u_xlat0) + u_xlat29);
  u_xlat0 = ((vec3f(u_xlat84) * u_xlat29) + u_xlat0);
  u_xlat84 = (u_xlat89 / x_155.x_EdgeSoftness);
  u_xlat84 = clamp(u_xlat84, 0.0f, 1.0f);
  u_xlat1.x = (u_xlat1.x * x_155.x_Whitewater);
  u_xlat1.x = (u_xlat65.y * u_xlat1.x);
  u_xlat84 = max(u_xlat84, u_xlat1.x);
  u_xlat1.x = ((vs_TEXCOORD2.z * 50.0f) + 0.30000001192092895508f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  SV_Target0.w = (u_xlat84 * u_xlat1.x);
  u_xlat84 = (vs_TEXCOORD4 * -(vs_TEXCOORD4));
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
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : vec3f, @location(2) vs_TEXCOORD2_param : vec4f, @location(3) vs_TEXCOORD4_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  main_1();
  return main_out(SV_Target0);
}

s

/* ================= variant ================= */

