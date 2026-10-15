//Assets/Shared/Rendering/Shaders/B612_Water.shader
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

var<private> vs_TEXCOORD3 : f32;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> in_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD1 : vec2f;

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
  vs_TEXCOORD3 = (u_xlat0.x * x_74.unity_FogParams.x);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0.xyz);
  vs_TEXCOORD2 = vec4f(in_TEXCOORD0.xy, vs_TEXCOORD2.zw);
  vs_TEXCOORD2 = vec4f(vs_TEXCOORD2.xy, in_TEXCOORD1.xy);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD3_1 : f32,
  @location(2)
  vs_TEXCOORD1_1 : vec3f,
  @location(3)
  vs_TEXCOORD2_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(2) in_TEXCOORD0_param : vec2f, @location(3) in_TEXCOORD1_param : vec2f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD3, vs_TEXCOORD1, vs_TEXCOORD2);
}

//Assets/Shared/Rendering/Shaders/B612_Water.shader
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
  x_RibbonWidth : f32,
  /* @offset(12) */
  x_FlowSpeed : f32,
  /* @offset(16) */
  x_DefaultFlow : f32,
  /* @offset(20) */
  x_FoamTile : f32,
  /* @offset(24) */
  x_CausticsTile : f32,
  /* @offset(28) */
  x_NormalStrengthA : f32,
  /* @offset(32) */
  x_NormalStrengthB : f32,
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
  x_FoamDepth : f32,
  /* @offset(148) */
  x_FoamEdge : f32,
  /* @offset(152) */
  x_FoamAmount : f32,
  /* @offset(156) */
  x_EdgeSoftness : f32,
  /* @offset(160) */
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

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec4f;

@group(1) @binding(6) var<uniform> x_176 : UnityPerMaterial;

@group(0) @binding(5) var x_NormalA : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalA : sampler;

@group(0) @binding(6) var x_NormalB : texture_2d<f32>;

@group(0) @binding(14) var sampler_NormalB : sampler;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var x_CameraOpaqueTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraOpaqueTexture : sampler;

@group(1) @binding(5) var<uniform> x_915 : LightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2411 : UnityPerDraw;

@group(0) @binding(8) var x_CausticsTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_CausticsTex : sampler;

@group(1) @binding(1) var<uniform> x_2978 : urp_ZBinBuffer;

@group(1) @binding(2) var<uniform> x_3152 : urp_TileBuffer;

@group(1) @binding(3) var<uniform> x_3385 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(10) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(0) @binding(7) var x_FoamTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_FoamTex : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD3 : f32;

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

const x_391 = vec2f(2.0f);

const x_394 = vec2f(-1.0f);

const x_534 = vec2f(1.0f);

const x_582 = vec2f(0.5f);

const x_1217 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1292 = vec2f(0.15999999642372131348f);

const x_1365 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1779 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1782 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1789 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1827 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2443 = vec3f(-1.0f);

const x_2453 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat22 : vec3f;
  var u_xlat1 : vec3f;
  var x_130 : vec3f;
  var u_xlat67 : f32;
  var u_xlat2 : vec4f;
  var u_xlatb67 : bool;
  var u_xlat68 : f32;
  var x_169 : f32;
  var u_xlat3 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec3f;
  var u_xlat69 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat6 : vec4f;
  var u_xlat28 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat25 : vec3f;
  var u_xlat24 : f32;
  var u_xlat26 : vec3f;
  var u_xlatu8 : vec4u;
  var u_xlat46 : f32;
  var u_xlatb68 : bool;
  var x_799 : vec3f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlatb8 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlatb2 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb24 : bool;
  var u_xlat54 : vec2f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat31 : vec3f;
  var u_xlat17 : vec4f;
  var u_xlat18 : vec4f;
  var u_xlat32 : vec2f;
  var u_xlat60 : vec2f;
  var u_xlat55 : vec2f;
  var u_xlat19 : vec4f;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var txVec13 : vec3f;
  var txVec14 : vec3f;
  var u_xlat48 : f32;
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
  var u_xlatb25 : bool;
  var x_2362 : f32;
  var u_xlatu6 : vec2u;
  var u_xlatu50 : vec2u;
  var u_xlati70 : i32;
  var u_xlatu70 : u32;
  var u_xlat23 : f32;
  var u_xlat0 : vec3f;
  var x_2897 : f32;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec2u;
  var u_xlati23 : i32;
  var u_xlati1 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati6 : vec2i;
  var u_xlati50 : vec2i;
  var u_xlati7 : vec2i;
  var u_xlati0 : i32;
  var u_xlatb6 : vec3<bool>;
  var u_xlati52 : i32;
  var u_xlatu74 : u32;
  var u_xlat45 : f32;
  var u_xlatu71 : u32;
  var u_xlati72 : i32;
  var u_xlatu75 : u32;
  var u_xlatb32 : bool;
  var u_xlatu11 : vec4u;
  var u_xlatb11 : bool;
  var u_xlatu32 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu13 : vec2u;
  var u_xlati11 : vec4i;
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
  var u_xlati57 : vec2i;
  var u_xlati14 : vec4i;
  var u_xlati15 : vec2i;
  var u_xlati13 : vec3i;
  var u_xlati33 : vec2i;
  var u_xlati55 : i32;
  var u_xlati32 : i32;
  var u_xlatb71 : bool;
  var u_xlati71 : i32;
  var u_xlat33 : vec3f;
  var x_3452 : f32;
  var x_3466 : f32;
  var x_3480 : f32;
  var x_3530 : vec3f;
  var u_xlatu77 : u32;
  var u_xlat77 : f32;
  var u_xlat78 : f32;
  var u_xlatb35 : vec2<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_3591 : f32;
  var x_3604 : f32;
  var u_xlatu55 : u32;
  var u_xlatu78 : u32;
  var u_xlat44 : f32;
  var u_xlat66 : f32;
  var x_4059 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (x_81.unity_OrthoParams.w == 0.0f);
  u_xlat22 = (-(vs_TEXCOORD0) + x_81.x_WorldSpaceCameraPos);
  u_xlat1.x = dot(u_xlat22, u_xlat22);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat22 = (u_xlat22 * u_xlat1.xxx);
  u_xlat1.x = x_81.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat1.y = x_81.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat1.z = x_81.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb0) {
    x_130 = u_xlat22;
  } else {
    x_130 = u_xlat1;
  }
  u_xlat22 = x_130;
  u_xlat67 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat67 = inverseSqrt(u_xlat67);
  u_xlat2 = vec4f(((vec3f(u_xlat67) * vs_TEXCOORD1)).xyz, u_xlat2.w);
  u_xlat67 = (abs(vs_TEXCOORD2.w) + abs(vs_TEXCOORD2.z));
  u_xlatb67 = (0.00009999999747378752f < u_xlat67);
  u_xlat68 = max(vs_TEXCOORD2.w, 0.01999999955296516418f);
  if (u_xlatb67) {
    x_169 = u_xlat68;
  } else {
    x_169 = x_176.x_DefaultFlow;
  }
  u_xlat68 = x_169;
  u_xlat68 = (u_xlat68 * x_176.x_FlowSpeed);
  u_xlat3.x = (vs_TEXCOORD2.x * x_176.x_RibbonWidth);
  let x_194 = vs_TEXCOORD0;
  let x_196 = dpdxCoarse(x_194.yzx);
  u_xlat4 = vec4f(x_196.xyz, u_xlat4.w);
  let x_200 = vs_TEXCOORD0;
  u_xlat5 = dpdyCoarse(x_200.zxy);
  let x_205 = u_xlat3.x;
  u_xlat69 = dpdxCoarse(x_205);
  let x_209 = vs_TEXCOORD2.y;
  u_xlat70 = dpdxCoarse(x_209);
  let x_213 = u_xlat3.x;
  u_xlat71 = dpdyCoarse(x_213);
  let x_217 = vs_TEXCOORD2.y;
  u_xlat6.x = dpdyCoarse(x_217);
  u_xlat28 = (u_xlat2.yzx * u_xlat5);
  u_xlat5 = ((u_xlat5.zxy * u_xlat2.zxy) + -(u_xlat28));
  u_xlat28 = (u_xlat2.zxy * u_xlat4.xyz);
  u_xlat4 = vec4f((((u_xlat2.yzx * u_xlat4.yzx) + -(u_xlat28))).xyz, u_xlat4.w);
  u_xlat28 = (vec3f(u_xlat71) * u_xlat4.xyz);
  u_xlat28 = ((u_xlat5 * vec3f(u_xlat69)) + u_xlat28);
  u_xlat4 = vec4f(((u_xlat6.xxx * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((u_xlat5 * vec3f(u_xlat70)) + u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat69 = dot(u_xlat28, u_xlat28);
  u_xlat70 = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat69 = max(u_xlat69, u_xlat70);
  u_xlat69 = max(u_xlat69, 0.000000000001f);
  u_xlat69 = inverseSqrt(u_xlat69);
  u_xlat5 = (vec3f(u_xlat69) * u_xlat28);
  u_xlat4 = vec4f(((vec3f(u_xlat69) * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat69 = (u_xlat68 * x_81.x_Time.y);
  u_xlat3.y = ((-(u_xlat68) * x_81.x_Time.y) + vs_TEXCOORD2.y);
  u_xlat6 = vec4f(((u_xlat3.xy / vec2f(x_176.x_TileA))).xy, u_xlat6.zw);
  u_xlat68 = (x_81.x_Time.y * 0.20999999344348907471f);
  u_xlat68 = sin(u_xlat68);
  u_xlat7.x = ((u_xlat68 * 0.12999999523162841797f) + u_xlat3.x);
  u_xlat7 = vec4f(u_xlat7.x, (((-(vec2f(u_xlat69)) * vec2f(1.39999997615814208984f, 0.89999997615814208984f)) + vs_TEXCOORD2.yy)).xy, u_xlat7.w);
  let x_357 = vec2f(x_176.x_TileB, x_176.x_TileB);
  let x_361 = (u_xlat7.xy / vec2f(x_357.x, x_357.y));
  u_xlat25 = vec3f(x_361.x, u_xlat25.y, x_361.y);
  let x_374 = u_xlat6;
  let x_377 = x_81.x_GlobalMipBias.x;
  let x_378 = textureSampleBias(x_NormalA, sampler_NormalA, x_374.xy, x_377);
  u_xlat6 = vec4f(x_378.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat6 = vec4f((((u_xlat6.xy * x_391) + x_394)).xy, u_xlat6.zw);
  u_xlat68 = dot(u_xlat6.xy, u_xlat6.xy);
  u_xlat68 = min(u_xlat68, 1.0f);
  u_xlat68 = (-(u_xlat68) + 1.0f);
  u_xlat68 = sqrt(u_xlat68);
  u_xlat68 = max(u_xlat68, 0.0000000000000001f);
  let x_418 = u_xlat25;
  let x_421 = x_81.x_GlobalMipBias.x;
  let x_422 = textureSampleBias(x_NormalB, sampler_NormalB, x_418.xz, x_421);
  let x_423 = x_422.xyw;
  u_xlat7 = vec4f(x_423.xy, u_xlat7.z, x_423.z);
  u_xlat7.x = (u_xlat7.x * u_xlat7.w);
  let x_435 = ((u_xlat7.xy * x_391) + x_394);
  u_xlat25 = vec3f(x_435.x, u_xlat25.y, x_435.y);
  u_xlat70 = dot(u_xlat25.xz, u_xlat25.xz);
  u_xlat70 = min(u_xlat70, 1.0f);
  u_xlat70 = (-(u_xlat70) + 1.0f);
  u_xlat70 = sqrt(u_xlat70);
  u_xlat70 = max(u_xlat70, 0.0000000000000001f);
  let x_457 = (u_xlat25.xz * vec2f(x_176.x_NormalStrengthB));
  u_xlat25 = vec3f(x_457.x, u_xlat25.y, x_457.y);
  let x_467 = vec2f(x_176.x_NormalStrengthA, x_176.x_NormalStrengthA);
  u_xlat6 = vec4f((((u_xlat6.xy * vec2f(x_467.x, x_467.y)) + u_xlat25.xz)).xy, u_xlat6.zw);
  u_xlat6.z = (u_xlat68 * u_xlat70);
  u_xlat68 = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat68 = inverseSqrt(u_xlat68);
  u_xlat6 = vec4f(((vec3f(u_xlat68) * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat6.yyy)).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((u_xlat5 * u_xlat6.xxx) + u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((u_xlat2.xyz * u_xlat6.zzz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat24 = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat24 = inverseSqrt(u_xlat24);
  u_xlat5 = (vec3f(u_xlat24) * u_xlat4.xyz);
  let x_538 = x_81.x_ScaledScreenParams.xy;
  let x_542 = (x_534 / vec2f(x_538.x, x_538.y));
  u_xlat25 = vec3f(x_542.x, u_xlat25.y, x_542.y);
  u_xlat6 = vec4f(((u_xlat25.xz * hlslcc_FragCoord.xy)).xy, u_xlat6.zw);
  u_xlat68 = ((u_xlat6.y * x_81.x_ScaleBiasRt.x) + x_81.x_ScaleBiasRt.y);
  u_xlat6.z = (-(u_xlat68) + 1.0f);
  u_xlat68 = ((x_81.x_ZBufferParams.z * hlslcc_FragCoord.z) + x_81.x_ZBufferParams.w);
  u_xlat68 = (1.0f / u_xlat68);
  let x_584 = ((-(x_81.x_CameraDepthTexture_TexelSize.xy) * x_582) + x_534);
  u_xlat25 = vec3f(x_584.x, u_xlat25.y, x_584.y);
  let x_592 = min(u_xlat25.xz, u_xlat6.xz);
  u_xlat26 = vec3f(x_592.x, u_xlat26.y, x_592.y);
  let x_601 = (u_xlat26.xz * x_81.x_RTHandleScale.xy);
  u_xlat26 = vec3f(x_601.x, u_xlat26.y, x_601.y);
  let x_610 = (u_xlat26.xz * x_81.x_ScreenSize.xy);
  u_xlat26 = vec3f(x_610.x, u_xlat26.y, x_610.y);
  u_xlatu8 = vec4u(vec2u(u_xlat26.xz).xy, u_xlatu8.zw);
  u_xlatu8.z = 0u;
  u_xlatu8.w = 0u;
  u_xlat6.w = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu8.xy), bitcast<i32>(u_xlatu8.w)).x;
  let x_639 = ((u_xlat6.xz * x_391) + x_394);
  u_xlat26 = vec3f(x_639.x, u_xlat26.y, x_639.y);
  u_xlat7 = vec4f(((-(u_xlat26.zz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i].yw)).xy, u_xlat7.zw);
  let x_660 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i].yw * u_xlat26.xx) + u_xlat7.xy);
  u_xlat26 = vec3f(x_660.x, u_xlat26.y, x_660.y);
  let x_671 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i].yw * u_xlat6.ww) + u_xlat26.xz);
  u_xlat26 = vec3f(x_671.x, u_xlat26.y, x_671.y);
  let x_679 = (u_xlat26.xz + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i].yw);
  u_xlat26 = vec3f(x_679.x, u_xlat26.y, x_679.y);
  u_xlat26.x = (u_xlat26.x / u_xlat26.z);
  u_xlat26.x = (-(u_xlat26.x) + vs_TEXCOORD0.y);
  u_xlat26.x = max(u_xlat26.x, 0.0f);
  u_xlat2 = vec4f((((u_xlat4.xz * vec2f(u_xlat24)) + -(u_xlat2.xz))).xy, u_xlat2.zw);
  let x_716 = vec2f(x_176.x_Refraction, x_176.x_Refraction);
  u_xlat2 = vec4f(((u_xlat2.xy * vec2f(x_716.x, x_716.y))).xy, u_xlat2.zw);
  u_xlat46 = (u_xlat26.x * 4.0f);
  u_xlat46 = min(u_xlat46, 1.0f);
  u_xlat2 = vec4f((((u_xlat2.xy * vec2f(u_xlat46)) + u_xlat6.xz)).xy, u_xlat2.zw);
  let x_744 = min(u_xlat25.xz, u_xlat2.xy);
  u_xlat25 = vec3f(x_744.x, u_xlat25.y, x_744.y);
  let x_752 = (u_xlat25.xz * x_81.x_RTHandleScale.xy);
  u_xlat25 = vec3f(x_752.x, u_xlat25.y, x_752.y);
  let x_760 = (u_xlat25.xz * x_81.x_ScreenSize.xy);
  u_xlat25 = vec3f(x_760.x, u_xlat25.y, x_760.y);
  u_xlatu8 = vec4u(vec2u(u_xlat25.xz).xy, u_xlatu8.zw);
  u_xlatu8.z = 0u;
  u_xlatu8.w = 0u;
  u_xlat2.z = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu8.xy), bitcast<i32>(u_xlatu8.w)).x;
  u_xlat25.x = ((x_81.x_ZBufferParams.z * u_xlat2.z) + x_81.x_ZBufferParams.w);
  u_xlat25.x = (1.0f / u_xlat25.x);
  u_xlatb68 = (u_xlat25.x < u_xlat68);
  if (u_xlatb68) {
    x_799 = u_xlat6.xzw;
  } else {
    x_799 = u_xlat2.xyz;
  }
  u_xlat2 = vec4f(x_799.xyz, u_xlat2.w);
  let x_813 = ((u_xlat2.xy * x_391) + x_394);
  u_xlat25 = vec3f(x_813.x, u_xlat25.y, x_813.y);
  u_xlat8 = (-(u_xlat25.zzzz) * x_81.hlslcc_mtx4x4unity_MatrixInvVP[1i]);
  u_xlat8 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[0i] * u_xlat25.xxxx) + u_xlat8);
  u_xlat8 = ((x_81.hlslcc_mtx4x4unity_MatrixInvVP[2i] * u_xlat2.zzzz) + u_xlat8);
  u_xlat8 = (u_xlat8 + x_81.hlslcc_mtx4x4unity_MatrixInvVP[3i]);
  let x_845 = (u_xlat8.xyz / u_xlat8.www);
  u_xlat4 = vec4f(x_845.x, u_xlat4.y, x_845.yz);
  let x_852 = (u_xlat4.xzw + -(vs_TEXCOORD0));
  u_xlat7 = vec4f(x_852.xy, u_xlat7.z, x_852.z);
  u_xlat46 = dot(u_xlat7.xyw, u_xlat7.xyw);
  u_xlat46 = sqrt(u_xlat46);
  u_xlat46 = min(u_xlat46, 20.0f);
  u_xlat68 = (-(u_xlat4.z) + vs_TEXCOORD0.y);
  u_xlat68 = max(u_xlat68, 0.0f);
  let x_879 = ((-(x_81.x_CameraOpaqueTexture_TexelSize.xy) * x_582) + x_534);
  u_xlat25 = vec3f(x_879.x, u_xlat25.y, x_879.y);
  u_xlat2 = vec4f(min(u_xlat2.xy, u_xlat25.xz).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * x_81.x_RTHandleScale.xy)).xy, u_xlat2.zw);
  let x_902 = u_xlat2;
  let x_905 = x_81.x_GlobalMipBias.x;
  let x_906 = textureSampleBias(x_CameraOpaqueTexture, sampler_CameraOpaqueTexture, x_902.xy, x_905);
  let x_907 = x_906.xyz;
  u_xlat7 = vec4f(x_907.xy, u_xlat7.z, x_907.z);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_915.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat8.w);
  u_xlat9 = vec4f(((vs_TEXCOORD0 + -(x_915.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat9.w);
  u_xlat10 = vec4f(((vs_TEXCOORD0 + -(x_915.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat10.w);
  u_xlat11 = vec4f(((vs_TEXCOORD0 + -(x_915.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat11.w);
  u_xlat8.x = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat8.y = dot(u_xlat9.xyz, u_xlat9.xyz);
  u_xlat8.z = dot(u_xlat10.xyz, u_xlat10.xyz);
  u_xlat8.w = dot(u_xlat11.xyz, u_xlat11.xyz);
  u_xlatb8 = (u_xlat8 < x_915.x_CascadeShadowSplitSphereRadii);
  u_xlat9.x = select(0.0f, 1.0f, u_xlatb8.x);
  u_xlat9.y = select(0.0f, 1.0f, u_xlatb8.y);
  u_xlat9.z = select(0.0f, 1.0f, u_xlatb8.z);
  u_xlat9.w = select(0.0f, 1.0f, u_xlatb8.w);
  u_xlat8.x = select(-0.0f, -1.0f, u_xlatb8.x);
  u_xlat8.y = select(-0.0f, -1.0f, u_xlatb8.y);
  u_xlat8.z = select(-0.0f, -1.0f, u_xlatb8.z);
  u_xlat8 = vec4f(((u_xlat8.xyz + u_xlat9.yzw)).xyz, u_xlat8.w);
  u_xlat9 = vec4f(u_xlat9.x, max(u_xlat8.xyz, vec3f()).xyz);
  u_xlat2.x = dot(u_xlat9, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat2.x = (-(u_xlat2.x) + 4.0f);
  u_xlatu2 = u32(u_xlat2.x);
  u_xlati2 = (bitcast<i32>(u_xlatu2) << bitcast<u32>(2i));
  u_xlat8 = vec4f(((vs_TEXCOORD0.yyy * x_915.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 1i)].xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f((((x_915.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati2].xyz * vs_TEXCOORD0.xxx) + u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f((((x_915.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((u_xlat8.xyz + x_915.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati2 + 3i)].xyz)).xyz, u_xlat8.w);
  u_xlatb2 = (0.0f < x_915.x_MainLightShadowParams.y);
  if (u_xlatb2) {
    u_xlatb2 = (x_915.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb2) {
      u_xlat9 = (u_xlat8.xyxy + x_915.x_MainLightShadowOffset0);
      let x_1108 = u_xlat9.xy;
      txVec0 = vec3f(x_1108.x, x_1108.y, u_xlat8.z);
      u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1128 = u_xlat9.zw;
      txVec1 = vec3f(x_1128.x, x_1128.y, u_xlat8.z);
      u_xlat10.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat9 = (u_xlat8.xyxy + x_915.x_MainLightShadowOffset1);
      let x_1148 = u_xlat9.xy;
      txVec2 = vec3f(x_1148.x, x_1148.y, u_xlat8.z);
      u_xlat10.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1163 = u_xlat9.zw;
      txVec3 = vec3f(x_1163.x, x_1163.y, u_xlat8.z);
      u_xlat10.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat2.x = dot(u_xlat10, vec4f(0.25f));
    } else {
      u_xlatb24 = (x_915.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb24) {
        let x_1195 = ((u_xlat8.xy * x_915.x_MainLightShadowmapSize.zw) + x_582);
        u_xlat25 = vec3f(x_1195.x, u_xlat25.y, x_1195.y);
        let x_1200 = floor(u_xlat25.xz);
        u_xlat25 = vec3f(x_1200.x, u_xlat25.y, x_1200.y);
        let x_1212 = ((u_xlat8.xy * x_915.x_MainLightShadowmapSize.zw) + -(u_xlat25.xz));
        u_xlat28 = vec3f(x_1212.x, u_xlat28.y, x_1212.y);
        u_xlat9 = (u_xlat28.xxzz + x_1217);
        u_xlat10 = (u_xlat9.xxzz * u_xlat9.xxzz);
        let x_1228 = (u_xlat10.yw * vec2f(0.07999999821186065674f));
        u_xlat9 = vec4f(x_1228.x, u_xlat9.y, x_1228.y, u_xlat9.w);
        u_xlat10 = vec4f((((u_xlat10.xz * x_582) + -(u_xlat28.xz))).xy, u_xlat10.zw);
        u_xlat54 = (-(u_xlat28.xz) + x_534);
        u_xlat11 = vec4f(min(u_xlat28.xz, vec2f()).xy, u_xlat11.zw);
        u_xlat11 = vec4f((((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat54)).xy, u_xlat11.zw);
        let x_1264 = max(u_xlat28.xz, vec2f());
        u_xlat28 = vec3f(x_1264.x, u_xlat28.y, x_1264.y);
        let x_1275 = ((-(u_xlat28.xz) * u_xlat28.xz) + u_xlat9.yw);
        u_xlat28 = vec3f(x_1275.x, u_xlat28.y, x_1275.y);
        u_xlat11 = vec4f(((u_xlat11.xy + x_534)).xy, u_xlat11.zw);
        let x_1285 = (u_xlat28.xz + x_534);
        u_xlat28 = vec3f(x_1285.x, u_xlat28.y, x_1285.y);
        u_xlat12 = vec4f(((u_xlat10.xy * x_1292)).xy, u_xlat12.zw);
        u_xlat10 = vec4f(((u_xlat54 * x_1292)).xy, u_xlat10.zw);
        u_xlat11 = vec4f(((u_xlat11.xy * x_1292)).xy, u_xlat11.zw);
        u_xlat13 = vec4f(((u_xlat28.xz * x_1292)).xy, u_xlat13.zw);
        let x_1313 = (u_xlat9.yw * x_1292);
        u_xlat28 = vec3f(x_1313.x, u_xlat28.y, x_1313.y);
        u_xlat12.z = u_xlat11.x;
        u_xlat12.w = u_xlat28.x;
        u_xlat10.z = u_xlat13.x;
        u_xlat10.w = u_xlat9.x;
        u_xlat14 = (u_xlat10.zwxz + u_xlat12.zwxz);
        u_xlat11.z = u_xlat12.y;
        u_xlat11.w = u_xlat28.z;
        u_xlat13.z = u_xlat10.y;
        u_xlat13.w = u_xlat9.z;
        u_xlat9 = vec4f(((u_xlat11.zyw + u_xlat13.zyw)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat10.xzw / u_xlat14.zwy)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz + x_1365)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat13.zyw / u_xlat9.xyz)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_1365)).xyz, u_xlat11.w);
        u_xlat10 = vec4f(((u_xlat10.yxz * x_915.x_MainLightShadowmapSize.xxx)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat11.xyz * x_915.x_MainLightShadowmapSize.yyy)).xyz, u_xlat11.w);
        u_xlat10.w = u_xlat11.x;
        u_xlat12 = ((u_xlat25.xzxz * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat10.ywxw);
        let x_1417 = ((u_xlat25.xz * x_915.x_MainLightShadowmapSize.xy) + u_xlat10.zw);
        u_xlat28 = vec3f(x_1417.x, u_xlat28.y, x_1417.y);
        u_xlat11.w = u_xlat10.y;
        let x_1424 = u_xlat11.yz;
        u_xlat10 = vec4f(u_xlat10.x, x_1424.x, u_xlat10.z, x_1424.y);
        u_xlat13 = ((u_xlat25.xzxz * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyzy);
        u_xlat11 = ((u_xlat25.xzxz * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat11.wywz);
        u_xlat10 = ((u_xlat25.xzxz * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat10.xwzw);
        u_xlat15 = (u_xlat9.xxxy * u_xlat14.zwyz);
        u_xlat16 = (u_xlat9.yyzz * u_xlat14);
        u_xlat24 = (u_xlat9.z * u_xlat14.y);
        let x_1472 = u_xlat12.xy;
        txVec4 = vec3f(x_1472.x, x_1472.y, u_xlat8.z);
        u_xlat25.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1487 = u_xlat12.zw;
        txVec5 = vec3f(x_1487.x, x_1487.y, u_xlat8.z);
        u_xlat69 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat69 = (u_xlat69 * u_xlat15.y);
        u_xlat25.x = ((u_xlat15.x * u_xlat25.x) + u_xlat69);
        let x_1513 = u_xlat28.xz;
        txVec6 = vec3f(x_1513.x, x_1513.y, u_xlat8.z);
        u_xlat69 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat25.x = ((u_xlat15.z * u_xlat69) + u_xlat25.x);
        let x_1535 = u_xlat11.xy;
        txVec7 = vec3f(x_1535.x, x_1535.y, u_xlat8.z);
        u_xlat69 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat25.x = ((u_xlat15.w * u_xlat69) + u_xlat25.x);
        let x_1557 = u_xlat13.xy;
        txVec8 = vec3f(x_1557.x, x_1557.y, u_xlat8.z);
        u_xlat69 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat25.x = ((u_xlat16.x * u_xlat69) + u_xlat25.x);
        let x_1579 = u_xlat13.zw;
        txVec9 = vec3f(x_1579.x, x_1579.y, u_xlat8.z);
        u_xlat69 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat25.x = ((u_xlat16.y * u_xlat69) + u_xlat25.x);
        let x_1601 = u_xlat11.zw;
        txVec10 = vec3f(x_1601.x, x_1601.y, u_xlat8.z);
        u_xlat69 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat25.x = ((u_xlat16.z * u_xlat69) + u_xlat25.x);
        let x_1623 = u_xlat10.xy;
        txVec11 = vec3f(x_1623.x, x_1623.y, u_xlat8.z);
        u_xlat69 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat25.x = ((u_xlat16.w * u_xlat69) + u_xlat25.x);
        let x_1645 = u_xlat10.zw;
        txVec12 = vec3f(x_1645.x, x_1645.y, u_xlat8.z);
        u_xlat69 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat2.x = ((u_xlat24 * u_xlat69) + u_xlat25.x);
      } else {
        let x_1671 = ((u_xlat8.xy * x_915.x_MainLightShadowmapSize.zw) + x_582);
        u_xlat25 = vec3f(x_1671.x, u_xlat25.y, x_1671.y);
        let x_1676 = floor(u_xlat25.xz);
        u_xlat25 = vec3f(x_1676.x, u_xlat25.y, x_1676.y);
        let x_1688 = ((u_xlat8.xy * x_915.x_MainLightShadowmapSize.zw) + -(u_xlat25.xz));
        u_xlat28 = vec3f(x_1688.x, u_xlat28.y, x_1688.y);
        u_xlat9 = (u_xlat28.xxzz + x_1217);
        u_xlat10 = (u_xlat9.xxzz * u_xlat9.xxzz);
        let x_1703 = (u_xlat10.yw * vec2f(0.04081600159406661987f));
        u_xlat11 = vec4f(u_xlat11.x, x_1703.x, u_xlat11.z, x_1703.y);
        let x_1712 = ((u_xlat10.xz * x_582) + -(u_xlat28.xz));
        u_xlat9 = vec4f(x_1712.x, u_xlat9.y, x_1712.y, u_xlat9.w);
        u_xlat10 = vec4f(((-(u_xlat28.xz) + x_534)).xy, u_xlat10.zw);
        u_xlat54 = min(u_xlat28.xz, vec2f());
        u_xlat10 = vec4f((((-(u_xlat54) * u_xlat54) + u_xlat10.xy)).xy, u_xlat10.zw);
        u_xlat54 = max(u_xlat28.xz, vec2f());
        let x_1743 = ((-(u_xlat54) * u_xlat54) + u_xlat9.yw);
        u_xlat31 = vec3f(x_1743.x, u_xlat31.y, x_1743.y);
        u_xlat10 = vec4f(((u_xlat10.xy + x_391)).xy, u_xlat10.zw);
        let x_1753 = (u_xlat31.xz + x_391);
        u_xlat9 = vec4f(u_xlat9.x, x_1753.x, u_xlat9.z, x_1753.y);
        u_xlat12.z = (u_xlat9.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat9.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat13.w);
        u_xlat9 = vec4f(((u_xlat10.xy * vec2f(0.08163200318813323975f))).xy, u_xlat9.zw);
        u_xlat12.x = u_xlat13.y;
        let x_1783 = ((u_xlat28.xx * x_1779) + x_1782);
        u_xlat12 = vec4f(u_xlat12.x, x_1783.x, u_xlat12.z, x_1783.y);
        let x_1790 = ((u_xlat28.xx * x_1779) + x_1789);
        u_xlat10 = vec4f(x_1790.x, u_xlat10.y, x_1790.y, u_xlat10.w);
        u_xlat10.y = u_xlat9.x;
        u_xlat10.w = u_xlat11.y;
        u_xlat12 = (u_xlat10 + u_xlat12);
        let x_1805 = ((u_xlat28.zz * x_1779) + x_1782);
        u_xlat13 = vec4f(u_xlat13.x, x_1805.x, u_xlat13.z, x_1805.y);
        let x_1811 = ((u_xlat28.zz * x_1779) + x_1789);
        u_xlat11 = vec4f(x_1811.x, u_xlat11.y, x_1811.y, u_xlat11.w);
        u_xlat11.y = u_xlat9.y;
        u_xlat9 = (u_xlat11 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat12);
        u_xlat10 = (u_xlat10 + x_1827);
        u_xlat11 = (u_xlat11 / u_xlat9);
        u_xlat11 = (u_xlat11 + x_1827);
        u_xlat10 = (u_xlat10.wxyz * x_915.x_MainLightShadowmapSize.xxxx);
        u_xlat11 = (u_xlat11.xwyz * x_915.x_MainLightShadowmapSize.yyyy);
        let x_1847 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_1847.x, u_xlat13.y, x_1847.yz);
        u_xlat13.y = u_xlat11.x;
        u_xlat14 = ((u_xlat25.xzxz * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        let x_1870 = ((u_xlat25.xz * x_915.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat28 = vec3f(x_1870.x, u_xlat28.y, x_1870.y);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat11.z;
        u_xlat15 = ((u_xlat25.xzxz * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat16 = vec4f((((u_xlat25.xz * x_915.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat16.zw);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat25.xzxz * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat11.w;
        u_xlat18 = ((u_xlat25.xzxz * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat32 = ((u_xlat25.xz * x_915.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.w = u_xlat13.y;
        u_xlat60 = ((u_xlat25.xz * x_915.x_MainLightShadowmapSize.xy) + u_xlat10.xw);
        let x_1949 = u_xlat13.xzw;
        u_xlat11 = vec4f(x_1949.x, u_xlat11.y, x_1949.yz);
        u_xlat13 = ((u_xlat25.xzxz * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat55 = ((u_xlat25.xz * x_915.x_MainLightShadowmapSize.xy) + u_xlat11.wy);
        u_xlat11.x = u_xlat10.x;
        let x_1982 = ((u_xlat25.xz * x_915.x_MainLightShadowmapSize.xy) + u_xlat11.xy);
        u_xlat25 = vec3f(x_1982.x, u_xlat25.y, x_1982.y);
        u_xlat19 = (u_xlat9.xxxx * u_xlat12);
        u_xlat20 = (u_xlat9.yyyy * u_xlat12);
        u_xlat21 = (u_xlat9.zzzz * u_xlat12);
        u_xlat9 = (u_xlat9.wwww * u_xlat12);
        let x_2006 = u_xlat14.xy;
        txVec13 = vec3f(x_2006.x, x_2006.y, u_xlat8.z);
        u_xlat24 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_2020 = u_xlat14.zw;
        txVec14 = vec3f(x_2020.x, x_2020.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat48 = (u_xlat48 * u_xlat19.y);
        u_xlat24 = ((u_xlat19.x * u_xlat24) + u_xlat48);
        let x_2045 = u_xlat28.xz;
        txVec15 = vec3f(x_2045.x, x_2045.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat24 = ((u_xlat19.z * u_xlat48) + u_xlat24);
        let x_2065 = u_xlat17.xy;
        txVec16 = vec3f(x_2065.x, x_2065.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat24 = ((u_xlat19.w * u_xlat48) + u_xlat24);
        let x_2085 = u_xlat15.xy;
        txVec17 = vec3f(x_2085.x, x_2085.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat24 = ((u_xlat20.x * u_xlat48) + u_xlat24);
        let x_2105 = u_xlat15.zw;
        txVec18 = vec3f(x_2105.x, x_2105.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat24 = ((u_xlat20.y * u_xlat48) + u_xlat24);
        let x_2125 = u_xlat16.xy;
        txVec19 = vec3f(x_2125.x, x_2125.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat24 = ((u_xlat20.z * u_xlat48) + u_xlat24);
        let x_2145 = u_xlat17.zw;
        txVec20 = vec3f(x_2145.x, x_2145.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat24 = ((u_xlat20.w * u_xlat48) + u_xlat24);
        let x_2165 = u_xlat18.xy;
        txVec21 = vec3f(x_2165.x, x_2165.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat24 = ((u_xlat21.x * u_xlat48) + u_xlat24);
        let x_2185 = u_xlat18.zw;
        txVec22 = vec3f(x_2185.x, x_2185.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat24 = ((u_xlat21.y * u_xlat48) + u_xlat24);
        txVec23 = vec3f(u_xlat32.x, u_xlat32.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat24 = ((u_xlat21.z * u_xlat48) + u_xlat24);
        txVec24 = vec3f(u_xlat60.x, u_xlat60.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat24 = ((u_xlat21.w * u_xlat48) + u_xlat24);
        let x_2243 = u_xlat13.xy;
        txVec25 = vec3f(x_2243.x, x_2243.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat24 = ((u_xlat9.x * u_xlat48) + u_xlat24);
        let x_2263 = u_xlat13.zw;
        txVec26 = vec3f(x_2263.x, x_2263.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat24 = ((u_xlat9.y * u_xlat48) + u_xlat24);
        txVec27 = vec3f(u_xlat55.x, u_xlat55.y, u_xlat8.z);
        u_xlat48 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat24 = ((u_xlat9.z * u_xlat48) + u_xlat24);
        let x_2302 = u_xlat25.xz;
        txVec28 = vec3f(x_2302.x, x_2302.y, u_xlat8.z);
        u_xlat25.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat2.x = ((u_xlat9.w * u_xlat25.x) + u_xlat24);
      }
    }
  } else {
    let x_2326 = u_xlat8.xy;
    txVec29 = vec3f(x_2326.x, x_2326.y, u_xlat8.z);
    u_xlat2.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat24 = (-(x_915.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat2.x * x_915.x_MainLightShadowParams.x) + u_xlat24);
  u_xlatb24 = (0.0f >= u_xlat8.z);
  u_xlatb25 = (u_xlat8.z >= 1.0f);
  u_xlatb24 = (u_xlatb24 | u_xlatb25);
  if (u_xlatb24) {
    x_2362 = 1.0f;
  } else {
    x_2362 = u_xlat2.x;
  }
  u_xlat2.x = x_2362;
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_81.x_WorldSpaceCameraPos))).xyz, u_xlat8.w);
  u_xlat24 = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat24 = ((u_xlat24 * x_915.x_MainLightShadowParams.z) + x_915.x_MainLightShadowParams.w);
  u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
  u_xlat25.x = (-(u_xlat2.x) + 1.0f);
  u_xlat2.x = ((u_xlat24 * u_xlat25.x) + u_xlat2.x);
  u_xlat9.x = dot(x_2411.unity_SHAr.yw, x_534);
  u_xlat9.y = dot(x_2411.unity_SHAg.yw, x_534);
  u_xlat9.z = dot(x_2411.unity_SHAb.yw, x_534);
  u_xlat9 = vec4f(((u_xlat9.xyz + -(x_2411.unity_SHC.xyz))).xyz, u_xlat9.w);
  u_xlat10 = vec4f(((x_81.x_B612WaterShallow.xyz + x_2443)).xyz, u_xlat10.w);
  u_xlat10 = vec4f((((x_81.x_B612SunDirection.www * u_xlat10.xyz) + x_2453)).xyz, u_xlat10.w);
  u_xlat10 = vec4f(((u_xlat10.xyz * x_176.x_ScatterColor.xyz)).xyz, u_xlat10.w);
  u_xlat11 = vec4f(((x_81.x_B612WaterDeep.xyz + x_2443)).xyz, u_xlat11.w);
  u_xlat11 = vec4f((((x_81.x_B612SunDirection.www * u_xlat11.xyz) + x_2453)).xyz, u_xlat11.w);
  let x_2486 = vec2f(x_176.x_CausticsTile, x_176.x_CausticsTile);
  let x_2490 = (u_xlat4.xw / vec2f(x_2486.x, x_2486.y));
  u_xlat25 = vec3f(x_2490.x, u_xlat25.y, x_2490.y);
  let x_2502 = ((x_81.x_Time.yy * vec2f(0.03099999949336051941f, 0.01700000092387199402f)) + u_xlat25.xz);
  u_xlat4 = vec4f(x_2502.x, u_xlat4.y, x_2502.y, u_xlat4.w);
  let x_2510 = u_xlat4;
  let x_2513 = x_81.x_GlobalMipBias.x;
  let x_2514 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2510.xz, x_2513);
  u_xlat24 = x_2514.x;
  let x_2522 = (x_81.x_Time.yy * vec2f(-0.02300000004470348358f, 0.02899999916553497314f));
  u_xlat4 = vec4f(x_2522.x, u_xlat4.y, x_2522.y, u_xlat4.w);
  let x_2532 = ((u_xlat25.xz * vec2f(1.12999999523162841797f)) + u_xlat4.xz);
  u_xlat25 = vec3f(x_2532.x, u_xlat25.y, x_2532.y);
  let x_2538 = u_xlat25;
  let x_2541 = x_81.x_GlobalMipBias.x;
  let x_2542 = textureSampleBias(x_CausticsTex, sampler_CausticsTex, x_2538.xz, x_2541);
  u_xlat25.x = x_2542.x;
  u_xlat24 = min(u_xlat24, u_xlat25.x);
  u_xlat24 = (u_xlat24 * 2.5f);
  u_xlat24 = (u_xlat24 * x_176.x_CausticsStrength);
  let x_2561 = (vec2f(u_xlat68) * vec2f(6.0f, -2.88539004325866699219f));
  u_xlat25 = vec3f(x_2561.x, u_xlat25.y, x_2561.y);
  u_xlat68 = min(u_xlat25.x, 1.0f);
  u_xlat24 = (u_xlat68 * u_xlat24);
  u_xlat68 = exp2(u_xlat25.z);
  u_xlat24 = (u_xlat68 * u_xlat24);
  let x_2581 = (vec3f(u_xlat24) * x_81.x_MainLightColor.xyz);
  u_xlat4 = vec4f(x_2581.x, u_xlat4.y, x_2581.yz);
  let x_2588 = (u_xlat2.xxx * u_xlat4.xzw);
  u_xlat4 = vec4f(x_2588.x, u_xlat4.y, x_2588.yz);
  u_xlat24 = (x_81.x_MainLightPosition.y * 3.0f);
  u_xlat24 = clamp(u_xlat24, 0.0f, 1.0f);
  let x_2601 = ((u_xlat4.xzw * vec3f(u_xlat24)) + x_2453);
  u_xlat4 = vec4f(x_2601.x, u_xlat4.y, x_2601.yz);
  let x_2608 = (u_xlat4.xzw * u_xlat7.xyw);
  u_xlat4 = vec4f(x_2608.x, u_xlat4.y, x_2608.yz);
  let x_2618 = (vec3f(u_xlat46) * -(x_176.x_Absorption.xyz));
  u_xlat7 = vec4f(x_2618.xy, u_xlat7.z, x_2618.z);
  let x_2625 = (u_xlat7.xyw * vec3f(1.44269502162933349609f));
  u_xlat7 = vec4f(x_2625.xy, u_xlat7.z, x_2625.z);
  let x_2630 = exp2(u_xlat7.xyw);
  u_xlat7 = vec4f(x_2630.xy, u_xlat7.z, x_2630.z);
  u_xlat24 = (u_xlat46 * -(x_176.x_ScatterDensity));
  u_xlat24 = (u_xlat24 * 1.44269502162933349609f);
  u_xlat24 = exp2(u_xlat24);
  u_xlat24 = (-(u_xlat24) + 1.0f);
  u_xlat12 = vec4f(((u_xlat2.xxx * x_81.x_MainLightColor.xyz)).xyz, u_xlat12.w);
  let x_2659 = (x_81.x_MainLightPosition.yy + vec2f(0.20000000298023223877f, 0.30000001192092895508f));
  u_xlat2 = vec4f(x_2659.x, u_xlat2.yz, x_2659.y);
  let x_2666 = clamp(u_xlat2.xw, vec2f(0.0f), vec2f(1.0f));
  u_xlat2 = vec4f(x_2666.x, u_xlat2.yz, x_2666.y);
  u_xlat13 = vec4f(((u_xlat2.xxx * u_xlat12.xyz)).xyz, u_xlat13.w);
  u_xlat13 = vec4f((((u_xlat13.xyz * vec3f(0.60000002384185791016f)) + u_xlat9.xyz)).xyz, u_xlat13.w);
  u_xlat2.x = (u_xlat46 * 0.60000002384185791016f);
  u_xlat2.x = min(u_xlat2.x, 1.0f);
  u_xlat11 = vec4f((((x_176.x_DeepColor.xyz * u_xlat11.xyz) + -(u_xlat10.xyz))).xyz, u_xlat11.w);
  u_xlat10 = vec4f((((u_xlat2.xxx * u_xlat11.xyz) + u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat10 = vec4f(((u_xlat13.xyz * u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat2 = vec4f(((vec3f(u_xlat24) * u_xlat10.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat4.xzw * u_xlat7.xyw) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat25.x = dot(u_xlat5, u_xlat22);
  u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
  u_xlat69 = (x_81.x_B612WaterParams.x + -1.0f);
  u_xlat69 = ((x_81.x_B612SunDirection.w * u_xlat69) + 1.0f);
  u_xlat4.x = ((x_81.x_B612WaterParams.y * x_81.x_B612SunDirection.w) + x_176.x_F0);
  u_xlat48 = (-(x_176.x_F0) + 1.0f);
  u_xlat70 = ((-(x_81.x_B612WaterParams.y) * x_81.x_B612SunDirection.w) + u_xlat48);
  u_xlat25.x = (-(u_xlat25.x) + 1.0f);
  u_xlat71 = (u_xlat25.x * u_xlat25.x);
  u_xlat71 = (u_xlat71 * u_xlat71);
  u_xlat25.x = (u_xlat25.x * u_xlat71);
  u_xlat25.x = ((u_xlat70 * u_xlat25.x) + u_xlat4.x);
  u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
  u_xlat4.x = dot(-(u_xlat22), u_xlat5);
  u_xlat4.x = (u_xlat4.x + u_xlat4.x);
  u_xlat10 = vec4f((((u_xlat5 * -(u_xlat4.xxx)) + -(u_xlat22))).xyz, u_xlat10.w);
  u_xlat10.w = abs(u_xlat10.y);
  u_xlat4.x = ((-(x_176.x_Roughness) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat4.x = (u_xlat4.x * x_176.x_Roughness);
  u_xlat4.x = (u_xlat4.x * 6.0f);
  u_xlat6 = vec4f(((u_xlat6.xz * x_81.x_FPParams1.xy)).xy, u_xlat6.zw);
  u_xlatu6 = vec2u(u_xlat6.xy);
  u_xlatu50 = vec2u(x_81.x_FPParams1.zw);
  u_xlati70 = ((bitcast<i32>(u_xlatu6.y) * bitcast<i32>(u_xlatu50.x)) + bitcast<i32>(u_xlatu6.x));
  u_xlatu70 = (u_xlatu50.y * bitcast<u32>(u_xlati70));
  u_xlat1.x = dot(-(u_xlat1), u_xlat8.xyz);
  u_xlat23 = log2(u_xlat1.x);
  if (u_xlatb0) {
    x_2897 = u_xlat23;
  } else {
    x_2897 = u_xlat1.x;
  }
  u_xlat0.x = x_2897;
  u_xlat0.x = ((u_xlat0.x * x_81.x_FPParams0.x) + x_81.x_FPParams0.y);
  u_xlatu0 = u32(u_xlat0.x);
  u_xlatu1.x = u32(x_81.x_FPParams2.x);
  u_xlatu1.x = (u_xlatu1.x + 4294967295u);
  u_xlati23 = (bitcast<i32>(u_xlatu50.y) + 2i);
  u_xlatu0 = min(u_xlatu0, u_xlatu1.x);
  u_xlatu1 = ((vec2u(u_xlatu0) * vec2u(bitcast<u32>(u_xlati23))) + vec2u(1u, 2u));
  u_xlatu0 = (u_xlatu1.x >> 2u);
  param = bitcast<i32>(u_xlatu1.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2958 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu1.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2965 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_2966 = vec2i(x_2958, x_2965);
  u_xlati1 = vec3i(x_2966.x, u_xlati1.y, x_2966.y);
  u_xlati6 = bitcast<vec2i>((bitcast<vec2u>(u_xlati1.xx) & bitcast<vec2u>(x_2978.urp_ZBins[bitcast<i32>(u_xlatu0)].wy)));
  u_xlati50 = ~(u_xlati1.xz);
  u_xlati7 = bitcast<vec2i>((bitcast<vec2u>(u_xlati50.xx) & bitcast<vec2u>(x_2978.urp_ZBins[bitcast<i32>(u_xlatu0)].zx)));
  u_xlati6 = bitcast<vec2i>((bitcast<vec2u>(u_xlati6) | bitcast<vec2u>(u_xlati7)));
  u_xlati0 = bitcast<i32>((bitcast<u32>(u_xlati1.z) & bitcast<u32>(u_xlati6.x)));
  u_xlati1.x = bitcast<i32>((bitcast<u32>(u_xlati50.y) & bitcast<u32>(u_xlati6.y)));
  u_xlatu0 = (bitcast<u32>(u_xlati0) | bitcast<u32>(u_xlati1.x));
  u_xlatu1.x = u32(x_81.x_FPParams0.z);
  u_xlatb6 = ((vec4f() < u_xlat10.xwzx)).xyz;
  u_xlatu8.x = u_xlatu70;
  u_xlatu8.y = u_xlatu1.y;
  u_xlati52 = 0i;
  u_xlatu74 = u_xlatu0;
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.w = 0.0f;
  u_xlat45 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu71 = (u_xlatu74 >> 16u);
    u_xlati72 = u_xlati52;
    u_xlatu75 = u_xlatu74;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb32 = (u_xlati72 == 0i);
      u_xlatu11.x = (u_xlatu75 & 65535u);
      u_xlatb11 = (u_xlatu71 >= u_xlatu11.x);
      u_xlatb32 = (u_xlatb32 & u_xlatb11);
      if (!(u_xlatb32)) {
        break;
      }
      param_6 = u_xlatu75;
      param_7 = 5i;
      param_8 = 11i;
      let x_3102 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu32 = x_3102;
      u_xlatu11 = (u_xlatu8.xxyy + vec4u(u_xlatu32));
      u_xlatu13 = (u_xlatu11.yw >> vec2u(2u));
      param_9 = bitcast<i32>(u_xlatu11.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3122 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu11.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3129 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu11.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3136 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu11.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3143 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati11 = vec4i(x_3122, x_3129, x_3136, x_3143);
      u_xlati57 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_3152.urp_Tiles[bitcast<i32>(u_xlatu13.x)].wy)));
      u_xlati14 = ~(u_xlati11);
      u_xlati15 = bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_3152.urp_Tiles[bitcast<i32>(u_xlatu13.x)].zx)));
      let x_3184 = bitcast<vec2i>((bitcast<vec2u>(u_xlati57) | bitcast<vec2u>(u_xlati15)));
      u_xlati13 = vec3i(x_3184.x, u_xlati13.y, x_3184.y);
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati13.x)));
      u_xlati33.x = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati13.z)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati33.x) | bitcast<u32>(u_xlati11.x)));
      u_xlati33 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.zz) & bitcast<vec2u>(x_2978.urp_ZBins[bitcast<i32>(u_xlatu13.y)].wy)));
      u_xlati13 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_2978.urp_ZBins[bitcast<i32>(u_xlatu13.y)].zx))).xy, u_xlati13.z);
      u_xlati33 = bitcast<vec2i>((bitcast<vec2u>(u_xlati33) | bitcast<vec2u>(u_xlati13.xy)));
      u_xlati33.x = bitcast<i32>((bitcast<u32>(u_xlati11.w) & bitcast<u32>(u_xlati33.x)));
      u_xlati55 = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati33.y)));
      u_xlati33.x = bitcast<i32>((bitcast<u32>(u_xlati55) | bitcast<u32>(u_xlati33.x)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati33.x) & bitcast<u32>(u_xlati11.x)));
      u_xlati33.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu75) & 31i)));
      u_xlati11.x = bitcast<i32>((bitcast<u32>(u_xlati33.x) & bitcast<u32>(u_xlati11.x)));
      u_xlati32 = (bitcast<i32>(u_xlatu32) << bitcast<u32>(5i));
      u_xlatu32 = (u_xlatu71 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati32)))));
      u_xlatu32 = min(u_xlatu32, 31u);
      u_xlatu32 = (bitcast<u32>(-(bitcast<i32>(u_xlatu32))) + 31u);
      u_xlatu32 = (4294967295u >> (u_xlatu32 & 31u));
      u_xlati72 = bitcast<i32>((u_xlatu32 & bitcast<u32>(u_xlati11.x)));
      u_xlati32 = (bitcast<i32>(u_xlatu75) + 32i);
      u_xlatu75 = (bitcast<u32>(u_xlati32) & 4294967264u);
    }
    u_xlatu74 = u_xlatu75;
    u_xlatb71 = (u_xlati72 != 0i);
    u_xlatb32 = (u_xlat45 < 0.99000000953674316406f);
    u_xlatb71 = (u_xlatb71 & u_xlatb32);
    if (!(u_xlatb71)) {
      break;
    }
    u_xlati71 = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati72)));
    u_xlati32 = (1i << bitcast<u32>((u_xlati71 & 31i)));
    u_xlati52 = bitcast<i32>((bitcast<u32>(u_xlati72) ^ bitcast<u32>(u_xlati32)));
    u_xlati32 = (bitcast<i32>(u_xlatu74) + -32i);
    u_xlati32 = bitcast<i32>((bitcast<u32>(u_xlati32) & 65504u));
    u_xlati71 = (u_xlati71 + u_xlati32);
    u_xlati71 = (-(bitcast<i32>(u_xlatu1.x)) + u_xlati71);
    u_xlat11 = vec4f(((vs_TEXCOORD0 + -(x_3385.urp_ReflProbes_BoxMin[u_xlati71].xyz))).xyz, u_xlat11.w);
    u_xlat13 = vec4f(((-(vs_TEXCOORD0) + x_3385.urp_ReflProbes_BoxMax[u_xlati71].xyz)).xyz, u_xlat13.w);
    u_xlat11 = vec4f(min(u_xlat11.xyz, u_xlat13.xyz).xyz, u_xlat11.w);
    u_xlat11 = vec4f(((u_xlat11.xyz / x_3385.urp_ReflProbes_BoxMax[u_xlati71].www)).xyz, u_xlat11.w);
    u_xlat32.x = min(u_xlat11.z, u_xlat11.y);
    u_xlat32.x = min(u_xlat32.x, u_xlat11.x);
    u_xlat32.x = clamp(u_xlat32.x, 0.0f, 1.0f);
    u_xlat11.x = (-(u_xlat45) + 1.0f);
    u_xlat32.x = min(u_xlat32.x, u_xlat11.x);
    u_xlatb11 = (0.0f < x_3385.urp_ReflProbes_ProbePosition[u_xlati71].w);
    if (u_xlatb6.x) {
      x_3452 = x_3385.urp_ReflProbes_BoxMax[u_xlati71].x;
    } else {
      x_3452 = x_3385.urp_ReflProbes_BoxMin[u_xlati71].x;
    }
    u_xlat33.x = x_3452;
    if (u_xlatb6.y) {
      x_3466 = x_3385.urp_ReflProbes_BoxMax[u_xlati71].y;
    } else {
      x_3466 = x_3385.urp_ReflProbes_BoxMin[u_xlati71].y;
    }
    u_xlat33.y = x_3466;
    if (u_xlatb6.z) {
      x_3480 = x_3385.urp_ReflProbes_BoxMax[u_xlati71].z;
    } else {
      x_3480 = x_3385.urp_ReflProbes_BoxMin[u_xlati71].z;
    }
    u_xlat33.z = x_3480;
    u_xlat33 = (u_xlat33 + -(vs_TEXCOORD0));
    u_xlat33 = (u_xlat33 / u_xlat10.xwz);
    u_xlat33.x = min(u_xlat33.y, u_xlat33.x);
    u_xlat33.x = min(u_xlat33.z, u_xlat33.x);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_3385.urp_ReflProbes_ProbePosition[u_xlati71].xyz))).xyz, u_xlat13.w);
    u_xlat33 = ((u_xlat10.xwz * u_xlat33.xxx) + u_xlat13.xyz);
    if (u_xlatb11) {
      x_3530 = u_xlat33;
    } else {
      x_3530 = u_xlat10.xwz;
    }
    u_xlat11 = vec4f(x_3530.xyz, u_xlat11.w);
    u_xlatu77 = u32(abs(x_3385.urp_ReflProbes_ProbePosition[u_xlati71].w));
    u_xlatu77 = (u_xlatu77 + 4294967295u);
    u_xlat77 = f32(u_xlatu77);
    u_xlat77 = min(u_xlat4.x, u_xlat77);
    u_xlat78 = dot(abs(u_xlat11.xyz), x_2453);
    u_xlat78 = max(u_xlat78, 0.00000099999999747524f);
    u_xlat78 = (1.0f / u_xlat78);
    u_xlat13 = vec4f(((u_xlat11.zxy * vec3f(u_xlat78))).xyz, u_xlat13.w);
    u_xlat13.x = -(u_xlat13.x);
    u_xlat13.x = clamp(u_xlat13.x, 0.0f, 1.0f);
    u_xlatb35 = ((u_xlat13.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat13;
    if (u_xlatb35.x) {
      x_3591 = u_xlat13.x;
    } else {
      x_3591 = -(u_xlat13.x);
    }
    hlslcc_movcTemp.x = x_3591;
    if (u_xlatb35.y) {
      x_3604 = u_xlat13.x;
    } else {
      x_3604 = -(u_xlat13.x);
    }
    hlslcc_movcTemp.y = x_3604;
    u_xlat13 = hlslcc_movcTemp;
    u_xlat11 = vec4f((((u_xlat11.xy * vec2f(u_xlat78)) + u_xlat13.xy)).xy, u_xlat11.zw);
    u_xlat11 = vec4f((((u_xlat11.xy * x_582) + x_582)).xy, u_xlat11.zw);
    u_xlat11 = vec4f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.zw);
    u_xlat55.x = floor(u_xlat77);
    u_xlat78 = (u_xlat55.x + 1.0f);
    u_xlat77 = (-(u_xlat55.x) + u_xlat77);
    u_xlatu55 = u32(u_xlat55.x);
    u_xlati55 = ((u_xlati71 * 7i) + bitcast<i32>(u_xlatu55));
    u_xlatu78 = u32(u_xlat78);
    u_xlati71 = ((u_xlati71 * 7i) + bitcast<i32>(u_xlatu78));
    u_xlat13 = vec4f((((u_xlat11.xy * x_3385.urp_ReflProbes_MipScaleOffset[u_xlati55].xy) + x_3385.urp_ReflProbes_MipScaleOffset[u_xlati55].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat11 = vec4f((((u_xlat11.xy * x_3385.urp_ReflProbes_MipScaleOffset[u_xlati71].xy) + x_3385.urp_ReflProbes_MipScaleOffset[u_xlati71].zw)).xy, u_xlat11.zw);
    u_xlat11 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat11.xy, 0.0f).xyz.xyz, u_xlat11.w);
    u_xlat11 = vec4f(((-(u_xlat13.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat11 = vec4f((((vec3f(u_xlat77) * u_xlat11.xyz) + u_xlat13.xyz)).xyz, u_xlat11.w);
    let x_3740 = ((u_xlat32.xxx * u_xlat11.xyz) + u_xlat7.xyw);
    u_xlat7 = vec4f(x_3740.xy, u_xlat7.z, x_3740.z);
    u_xlat45 = (u_xlat45 + u_xlat32.x);
  }
  u_xlatb0 = (u_xlat45 < 0.99000000953674316406f);
  if (u_xlatb0) {
    u_xlat6 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xwz, u_xlat4.x);
    u_xlat0.x = (-(u_xlat45) + 1.0f);
    u_xlat1.x = (u_xlat6.w + -1.0f);
    u_xlat1.x = ((x_81.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_81.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat1 = (u_xlat6.xyz * u_xlat1.xxx);
    let x_3815 = ((u_xlat0.xxx * u_xlat1) + u_xlat7.xyw);
    u_xlat7 = vec4f(x_3815.xy, u_xlat7.z, x_3815.z);
  }
  u_xlat0.x = (u_xlat69 * x_176.x_ReflectionStrength);
  u_xlat1 = ((u_xlat7.xyw * u_xlat0.xxx) + -(u_xlat2.xyz));
  u_xlat1 = ((u_xlat25.xxx * u_xlat1) + u_xlat2.xyz);
  u_xlat2 = vec4f(((u_xlat22 + x_81.x_MainLightPosition.xyz)).xyz, u_xlat2.w);
  u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat0.x = max(u_xlat0.x, 1.17549435e-38f);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat2 = vec4f(((u_xlat0.xxx * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat0.x = dot(u_xlat5, u_xlat2.xyz);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat25.x = (x_176.x_Roughness * x_176.x_Roughness);
  u_xlat25.x = max(u_xlat25.x, 0.00009999999747378752f);
  u_xlat69 = (u_xlat25.x * u_xlat25.x);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat25.x = ((u_xlat25.x * u_xlat25.x) + -1.0f);
  u_xlat0.x = ((u_xlat0.x * u_xlat25.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 3.14159274101257324219f);
  u_xlat0.x = (u_xlat69 / u_xlat0.x);
  u_xlat22.x = dot(u_xlat2.xyz, u_xlat22);
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat22.x = (-(u_xlat22.x) + 1.0f);
  u_xlat44 = (u_xlat22.x * u_xlat22.x);
  u_xlat44 = (u_xlat44 * u_xlat44);
  u_xlat22.x = (u_xlat44 * u_xlat22.x);
  u_xlat22.x = ((u_xlat48 * u_xlat22.x) + x_176.x_F0);
  u_xlat0.x = (u_xlat22.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 0.25f);
  u_xlat0.x = min(u_xlat0.x, 60.0f);
  u_xlat0 = (u_xlat0.xxx * u_xlat12.xyz);
  let x_3991 = vec3f(x_176.x_SunSpecular, x_176.x_SunSpecular, x_176.x_SunSpecular);
  u_xlat0 = (u_xlat0 * vec3f(x_3991.x, x_3991.y, x_3991.z));
  u_xlat66 = dot(u_xlat5, x_81.x_MainLightPosition.xyz);
  u_xlat66 = (u_xlat66 * 4.0f);
  u_xlat66 = clamp(u_xlat66, 0.0f, 1.0f);
  u_xlat0 = ((u_xlat0 * vec3f(u_xlat66)) + u_xlat1);
  u_xlat1 = vec3f(max(vec2f(x_176.x_FoamDepth, x_176.x_FoamEdge), vec2f(0.00100000004749745131f)).xy, u_xlat1.z);
  u_xlat66 = (u_xlat26.x / u_xlat1.x);
  u_xlat66 = (-(u_xlat66) + 1.0f);
  u_xlat66 = max(u_xlat66, 0.0f);
  u_xlat1.x = (vs_TEXCOORD2.z / u_xlat1.y);
  u_xlat1.x = (-(u_xlat1.x) + 1.0f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = (u_xlat1.x * 0.80000001192092895508f);
  u_xlat1.x = max(u_xlat66, u_xlat1.x);
  if (u_xlatb67) {
    x_4059 = u_xlat1.x;
  } else {
    x_4059 = u_xlat66;
  }
  u_xlat66 = x_4059;
  u_xlat3.z = u_xlat7.z;
  let x_4076 = vec2f(x_176.x_FoamTile, x_176.x_FoamTile);
  u_xlat1 = vec3f(((u_xlat3.xz / vec2f(x_4076.x, x_4076.y))).xy, u_xlat1.z);
  let x_4088 = u_xlat1;
  let x_4091 = x_81.x_GlobalMipBias.x;
  let x_4092 = textureSampleBias(x_FoamTex, sampler_FoamTex, x_4088.xy, x_4091);
  u_xlat1.x = x_4092.x;
  u_xlat23 = ((-(u_xlat66) * x_176.x_FoamAmount) + 1.0f);
  u_xlat1.x = (-(u_xlat23) + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * 8.3333339691162109375f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat66 = (u_xlat66 * u_xlat1.x);
  u_xlat1 = ((u_xlat12.xyz * u_xlat2.www) + u_xlat9.xyz);
  u_xlat66 = (u_xlat66 * 0.85000002384185791016f);
  u_xlat1 = ((x_176.x_FoamColor.xyz * u_xlat1) + -(u_xlat0));
  u_xlat0 = ((vec3f(u_xlat66) * u_xlat1) + u_xlat0);
  SV_Target0.w = (u_xlat26.x / x_176.x_EdgeSoftness);
  SV_Target0.w = clamp(SV_Target0.w, 0.0f, 1.0f);
  u_xlat66 = (vs_TEXCOORD3 * -(vs_TEXCOORD3));
  u_xlat66 = exp2(u_xlat66);
  u_xlat0 = (u_xlat0 + -(x_81.unity_FogColor.xyz));
  SV_Target0 = vec4f((((vec3f(u_xlat66) * u_xlat0) + x_81.unity_FogColor.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(2) vs_TEXCOORD1_param : vec3f, @location(3) vs_TEXCOORD2_param : vec4f, @location(1) vs_TEXCOORD3_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

