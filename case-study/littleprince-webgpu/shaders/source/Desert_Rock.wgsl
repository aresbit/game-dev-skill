//Assets/Levels/Desert/Shaders/Desert_Rock.shader
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
  unity_WorldTransformParams : vec4f,
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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_BaseColor : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_WarmTint : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_CoolTint : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_SandColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BumpScale : f32,
  /* @offset(100) */
  Xhlslcc_UnusedX_Smoothness : f32,
  /* @offset(104) */
  Xhlslcc_UnusedX_OcclusionStrength : f32,
  /* @offset(108) */
  Xhlslcc_UnusedX_Metallic : f32,
  /* @offset(112) */
  Xhlslcc_UnusedX_DetailTile : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DetailFade : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_MacroScale : f32,
  /* @offset(124) */
  Xhlslcc_UnusedX_SandSkirt : f32,
  /* @offset(128) */
  Xhlslcc_UnusedX_DetailAlbedoStrength : f32,
  /* @offset(132) */
  Xhlslcc_UnusedX_DetailNormalStrength : f32,
  /* @offset(136) */
  Xhlslcc_UnusedX_Saturation : f32,
  /* @offset(140) */
  Xhlslcc_UnusedX_Brightness : f32,
  /* @offset(144) */
  Xhlslcc_UnusedX_VariationAmount : f32,
  /* @offset(148) */
  Xhlslcc_UnusedX_SandAmount : f32,
  /* @offset(152) */
  Xhlslcc_UnusedX_Wrap : f32,
  /* @offset(156) */
  Xhlslcc_UnusedX_FarFade : f32,
  /* @offset(160) */
  Xhlslcc_UnusedX_StoneVariation : f32,
  /* @offset(164) */
  Xhlslcc_UnusedX_CreviceAO : f32,
  /* @offset(168) */
  Xhlslcc_UnusedX_VertexSand : f32,
  /* @offset(172) */
  Xhlslcc_UnusedX_BounceScale : f32,
  /* @offset(176) */
  Xhlslcc_UnusedX_Cull : f32,
  /* @offset(192) */
  Xhlslcc_UnusedX_SandTop : vec4f,
  /* @offset(208) */
  Xhlslcc_UnusedX_DesertCamFade : f32,
  /* @offset(224) */
  Xhlslcc_UnusedX_DesertCamFadeC : vec4f,
  /* @offset(240) */
  Xhlslcc_UnusedX_DesertCamFadeX : vec4f,
  /* @offset(256) */
  Xhlslcc_UnusedX_DesertCamFadeY : vec4f,
  /* @offset(272) */
  Xhlslcc_UnusedX_DesertCamFadeZ : vec4f,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(5) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(8) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

@group(1) @binding(6) var<uniform> x_104 : UnityPerMaterial;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> in_TANGENT0 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

var<private> vs_TEXCOORD4 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD5 : vec4f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb0 : bool;
  var u_xlat4 : f32;
  var u_xlat2 : f32;
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
  vs_TEXCOORD1 = u_xlat0;
  gl_Position = (u_xlat1 + x_64.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD0 = ((in_TEXCOORD0 * x_104.x_BaseMap_ST.xy) + x_104.x_BaseMap_ST.zw);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD2 = (vec3f(u_xlat6) * u_xlat0);
  u_xlat0 = (in_TANGENT0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_TANGENT0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_TANGENT0.zzz) + u_xlat0);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD3 = vec4f(((vec3f(u_xlat6) * u_xlat0)).xyz, vs_TEXCOORD3.w);
  u_xlatb0 = (x_25.unity_WorldTransformParams.w >= 0.0f);
  u_xlat0.x = select(-1.0f, 1.0f, u_xlatb0);
  vs_TEXCOORD3.w = (u_xlat0.x * in_TANGENT0.w);
  vs_TEXCOORD4 = in_COLOR0;
  u_xlat0 = (x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xzy * vec3f(1.37000000476837158203f, 1.37000000476837158203f, 0.70999997854232788086f));
  u_xlat0 = vec3f(((u_xlat0.zz + u_xlat0.xy)).xy, u_xlat0.z);
  u_xlat0 = vec3f(((u_xlat0.xy * vec2f(0.10310000181198120117f))).xy, u_xlat0.z);
  u_xlat0 = vec3f(fract(u_xlat0.xy).xy, u_xlat0.z);
  u_xlat1 = vec4f(((u_xlat0.yxx + vec3f(33.3300018310546875f))).xyz, u_xlat1.w);
  u_xlat4 = dot(u_xlat0.xyx, u_xlat1.xyz);
  u_xlat0 = vec3f(((vec2f(u_xlat4) + u_xlat0.xy)).xy, u_xlat0.z);
  u_xlat2 = (u_xlat0.y + u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat2);
  vs_TEXCOORD5.w = fract(u_xlat0.x);
  vs_TEXCOORD5 = vec4f(x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz.xyz, vs_TEXCOORD5.w);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(2)
  vs_TEXCOORD2_1 : vec3f,
  @location(3)
  vs_TEXCOORD3_1 : vec4f,
  @location(5)
  vs_TEXCOORD4_1 : vec4f,
  @location(4)
  vs_TEXCOORD5_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(3) in_TEXCOORD0_param : vec2f, @location(1) in_NORMAL0_param : vec3f, @location(2) in_TANGENT0_param : vec4f, @location(4) in_COLOR0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

//Assets/Levels/Desert/Shaders/Desert_Rock.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(16) */
  x_BaseColor : vec4f,
  /* @offset(32) */
  x_WarmTint : vec4f,
  /* @offset(48) */
  x_CoolTint : vec4f,
  /* @offset(64) */
  x_SandColor : vec4f,
  /* @offset(80) */
  x_EmissionColor : vec4f,
  /* @offset(96) */
  x_BumpScale : f32,
  /* @offset(100) */
  x_Smoothness : f32,
  /* @offset(104) */
  x_OcclusionStrength : f32,
  /* @offset(108) */
  x_Metallic : f32,
  /* @offset(112) */
  x_DetailTile : f32,
  /* @offset(116) */
  x_DetailFade : f32,
  /* @offset(120) */
  x_MacroScale : f32,
  /* @offset(124) */
  x_SandSkirt : f32,
  /* @offset(128) */
  x_DetailAlbedoStrength : f32,
  /* @offset(132) */
  x_DetailNormalStrength : f32,
  /* @offset(136) */
  x_Saturation : f32,
  /* @offset(140) */
  x_Brightness : f32,
  /* @offset(144) */
  x_VariationAmount : f32,
  /* @offset(148) */
  x_SandAmount : f32,
  /* @offset(152) */
  Xhlslcc_UnusedX_Wrap : f32,
  /* @offset(156) */
  Xhlslcc_UnusedX_FarFade : f32,
  /* @offset(160) */
  Xhlslcc_UnusedX_StoneVariation : f32,
  /* @offset(164) */
  Xhlslcc_UnusedX_CreviceAO : f32,
  /* @offset(168) */
  Xhlslcc_UnusedX_VertexSand : f32,
  /* @offset(172) */
  x_BounceScale : f32,
  /* @offset(176) */
  Xhlslcc_UnusedX_Cull : f32,
  /* @offset(192) */
  x_SandTop : vec4f,
  /* @offset(208) */
  x_DesertCamFade : f32,
  /* @offset(224) */
  x_DesertCamFadeC : vec4f,
  /* @offset(240) */
  x_DesertCamFadeX : vec4f,
  /* @offset(256) */
  x_DesertCamFadeY : vec4f,
  /* @offset(272) */
  x_DesertCamFadeZ : vec4f,
}

alias Arr = array<vec4f, 4u>;

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
  x_AmbientOcclusionParam : vec4f,
  /* @offset(96) */
  x_FPParams0 : vec4f,
  /* @offset(112) */
  x_FPParams1 : vec4f,
  /* @offset(128) */
  x_FPParams2 : vec4f,
  /* @offset(144) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(160) */
  unity_OrthoParams : vec4f,
  /* @offset(176) */
  x_ScaleBiasRt : vec4f,
  /* @offset(192) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(256) */
  x_DesertSunDir : vec4f,
  /* @offset(272) */
  x_DesertSunColor : vec4f,
  /* @offset(288) */
  x_DesertHaze : vec4f,
  /* @offset(304) */
  x_DesertHaze2 : vec4f,
  /* @offset(320) */
  x_DesertHazeTint : vec4f,
  /* @offset(336) */
  x_DesertSkyGrade0 : vec4f,
  /* @offset(352) */
  x_DesertSkyGrade1 : vec4f,
  /* @offset(368) */
  x_DesertSkyGrade2 : vec4f,
  /* @offset(384) */
  x_DesertSkyGrade3 : vec4f,
  /* @offset(400) */
  x_DesertBounce : vec4f,
  /* @offset(416) */
  x_DesertGroundHeightRect : vec4f,
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

alias Arr_9 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_9,
}

alias Arr_10 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_10,
}

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 32u>;

alias Arr_14 = array<vec4f, 224u>;

alias Arr_15 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_11,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_12,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_13,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_14,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_15,
}

alias Arr_16 = array<vec4f, 32u>;

alias Arr_17 = array<vec4f, 32u>;

alias Arr_18 = array<vec4f, 32u>;

alias Arr_19 = array<vec4f, 32u>;

alias Arr_20 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_21 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_16,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_17,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_18,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_19,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_20,
  /* @offset(2560) */
  Xhlslcc_UnusedX_AdditionalLightsLayerMasks : Arr_21,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(6) var<uniform> x_110 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(0) var<uniform> x_290 : PGlobals;

@group(0) @binding(6) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(0) @binding(8) var x_MaskMap : texture_2d<f32>;

@group(0) @binding(19) var sampler_MaskMap : sampler;

var<private> vs_TEXCOORD2 : vec3f;

var<private> gl_FrontFacing : bool;

var<private> vs_TEXCOORD3 : vec4f;

@group(0) @binding(7) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(18) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD5 : vec4f;

@group(0) @binding(11) var x_MacroNoise : texture_2d<f32>;

@group(0) @binding(22) var sampler_MacroNoise : sampler;

@group(0) @binding(10) var x_DetailNormal : texture_2d<f32>;

@group(0) @binding(21) var sampler_DetailNormal : sampler;

@group(0) @binding(9) var x_DetailAlbedo : texture_2d<f32>;

@group(0) @binding(20) var sampler_DetailAlbedo : sampler;

@group(0) @binding(12) var x_DesertGroundHeight : texture_2d<f32>;

@group(0) @binding(23) var sampler_DesertGroundHeight : sampler;

@group(1) @binding(7) var<uniform> x_1468 : LightShadows;

@group(1) @binding(5) var<uniform> x_1513 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(2) var<uniform> x_2006 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2188 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2418 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(14) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3014 : AdditionalLights;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var x_DesertHorizonRing : texture_2d<f32>;

@group(0) @binding(16) var sampler_DesertHorizonRing : sampler;

var<private> SV_Target0 : vec4f;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  mask = bitcast<u32>((~((-1i << bitcast<u32>(*(bits)))) << bitcast<u32>(*(offset_1))));
  let x_39 = *(base);
  let x_41 = mask;
  let x_44 = *(insert);
  let x_46 = *(offset_1);
  let x_49 = mask;
  return bitcast<i32>(((bitcast<u32>(x_39) & ~(x_41)) | ((bitcast<u32>(x_44) << bitcast<u32>(x_46)) & x_49)));
}

fn int_bitfieldExtract_i1_i1_i1_(value : ptr<function, i32>, offset_2 : ptr<function, i32>, bits_1 : ptr<function, i32>) -> i32 {
  var x_63 : i32;
  let x_55 = *(value);
  let x_56 = *(offset_2);
  if (((*(offset_2) + *(bits_1)) < 32i)) {
    x_63 = *(bits_1);
  } else {
    x_63 = (32i - *(offset_2));
  }
  let x_70 = x_63;
  return extractBits(x_55, u32(x_56), u32(x_70));
}

fn uint_bitfieldExtract_u1_i1_i1_(value_1 : ptr<function, u32>, offset_3 : ptr<function, i32>, bits_2 : ptr<function, i32>) -> u32 {
  let x_74 = *(value_1);
  let x_75 = *(offset_3);
  let x_78 = *(bits_2);
  return ((x_74 >> bitcast<u32>(x_75)) & bitcast<u32>(~((-1i << bitcast<u32>(x_78)))));
}

const x_159 = vec4f(1.0f, 1.0f, 0.0f, 0.0f);

const x_441 = vec2f(2.0f);

const x_443 = vec2f(-1.0f);

const x_602 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_2149 = vec2u(2u);

const x_2563 = vec3f(1.0f);

const x_2625 = vec2f(0.5f);

const x_4648 = vec3f(-1.0f);

const x_4716 = vec2f(0.00000999999974737875f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlatb0 : bool;
  var u_xlat20 : vec3f;
  var u_xlat1 : vec2f;
  var u_xlatb1 : vec2<bool>;
  var u_xlatb20 : bool;
  var u_xlatu0 : vec2u;
  var u_xlati20 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlati0 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var param_6 : i32;
  var param_7 : i32;
  var u_xlat0 : vec4f;
  var indexable : array<vec4u, 16u>;
  var u_xlat60 : f32;
  var u_xlat21 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat62 : f32;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec3f;
  var u_xlat63 : f32;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat64 : f32;
  var u_xlat42 : vec2f;
  var u_xlatb42 : bool;
  var u_xlat46 : vec2f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec3f;
  var u_xlat49 : vec2f;
  var u_xlat65 : f32;
  var u_xlat11 : vec3f;
  var u_xlat67 : f32;
  var u_xlatb63 : bool;
  var u_xlatb46 : vec2<bool>;
  var u_xlatb6 : vec2<bool>;
  var u_xlat22 : vec3f;
  var u_xlatb22 : bool;
  var x_1450 : vec3f;
  var u_xlat23 : vec3f;
  var u_xlat43 : f32;
  var txVec0 : vec3f;
  var u_xlat66 : f32;
  var u_xlatb66 : bool;
  var u_xlatb7 : bool;
  var u_xlat12 : vec4f;
  var u_xlatu9 : vec2u;
  var u_xlatu49 : vec2u;
  var u_xlati67 : i32;
  var u_xlatu67 : u32;
  var u_xlat26 : f32;
  var x_1924 : f32;
  var u_xlatu22 : u32;
  var u_xlatu6 : u32;
  var u_xlati26 : i32;
  var u_xlatu26 : vec2u;
  var u_xlati9 : vec3i;
  var param_8 : i32;
  var param_9 : i32;
  var param_10 : i32;
  var param_11 : i32;
  var param_12 : i32;
  var param_13 : i32;
  var u_xlati49 : vec2i;
  var u_xlati13 : vec4i;
  var u_xlati22 : vec2i;
  var u_xlatb13 : vec3<bool>;
  var u_xlatu14 : vec2u;
  var u_xlatu54 : vec2u;
  var u_xlat15 : vec4f;
  var u_xlatu68 : u32;
  var u_xlatb70 : bool;
  var u_xlatu71 : u32;
  var u_xlatb71 : bool;
  var u_xlatu70 : u32;
  var param_14 : u32;
  var param_15 : i32;
  var param_16 : i32;
  var u_xlatu16 : vec4u;
  var u_xlatu17 : vec2u;
  var u_xlati16 : vec4i;
  var param_17 : i32;
  var param_18 : i32;
  var param_19 : i32;
  var param_20 : i32;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var param_27 : i32;
  var param_28 : i32;
  var u_xlati57 : vec2i;
  var u_xlati18 : vec4i;
  var u_xlati19 : vec2i;
  var u_xlati17 : vec3i;
  var u_xlati71 : i32;
  var u_xlati72 : i32;
  var u_xlati73 : i32;
  var u_xlati70 : i32;
  var u_xlatb68 : bool;
  var u_xlati68 : i32;
  var u_xlat16 : vec3f;
  var u_xlat17 : vec3f;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var x_2467 : f32;
  var x_2481 : f32;
  var x_2495 : f32;
  var u_xlat72 : f32;
  var x_2540 : vec3f;
  var u_xlatb56 : vec2<bool>;
  var u_xlat56 : vec2f;
  var x_2590 : f32;
  var x_2603 : f32;
  var u_xlat73 : f32;
  var u_xlatu72 : u32;
  var u_xlatu73 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlat13 : vec3f;
  var u_xlatb26 : bool;
  var u_xlati66 : i32;
  var u_xlatb14 : vec4<bool>;
  var u_xlat14 : vec4f;
  var u_xlat68 : f32;
  var x_3179 : f32;
  var x_3188 : f32;
  var txVec1 : vec3f;
  var u_xlati6 : vec4i;
  var param_29 : i32;
  var param_30 : i32;
  var param_31 : i32;
  var param_32 : i32;
  var param_33 : i32;
  var param_34 : i32;
  var u_xlati12 : vec2i;
  var u_xlatu12 : vec2u;
  var u_xlati52 : i32;
  var u_xlatu42 : u32;
  var u_xlati23 : i32;
  var u_xlatu65 : u32;
  var param_35 : u32;
  var param_36 : i32;
  var param_37 : i32;
  var u_xlatu13 : vec4u;
  var param_38 : i32;
  var param_39 : i32;
  var param_40 : i32;
  var param_41 : i32;
  var param_42 : i32;
  var param_43 : i32;
  var param_44 : i32;
  var param_45 : i32;
  var param_46 : i32;
  var param_47 : i32;
  var param_48 : i32;
  var param_49 : i32;
  var u_xlati54 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati14 : vec3i;
  var u_xlati42 : i32;
  var u_xlatb73 : bool;
  var u_xlatb15 : vec4<bool>;
  var u_xlat74 : f32;
  var x_3912 : f32;
  var x_3921 : f32;
  var txVec2 : vec3f;
  var u_xlatb74 : bool;
  var u_xlatb60 : bool;
  var u_xlat40 : vec2f;
  var x_4315 : f32;
  var u_xlatb4 : bool;
  var u_xlatb3 : bool;
  var x_4511 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_94 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_94.x, x_94.y, x_94.z, (1.0f / gl_FragCoord.w));
  u_xlatb0 = (0.00100000004749745131f < x_110.x_DesertCamFade);
  if (u_xlatb0) {
    u_xlatb0 = (0.5f < x_110.x_DesertCamFadeC.w);
    u_xlat20 = (vs_TEXCOORD1 + -(x_110.x_DesertCamFadeC.xyz));
    u_xlat1.x = dot(u_xlat20, x_110.x_DesertCamFadeX.xyz);
    u_xlat1.y = dot(u_xlat20, x_110.x_DesertCamFadeY.xyz);
    u_xlatb1 = ((x_159 < abs(u_xlat1.xyxx))).xy;
    u_xlatb1.x = (u_xlatb1.y | u_xlatb1.x);
    u_xlat20.x = dot(u_xlat20, x_110.x_DesertCamFadeZ.xyz);
    u_xlatb20 = (1.0f < abs(u_xlat20.x));
    u_xlatb20 = (u_xlatb20 | u_xlatb1.x);
    u_xlatb0 = (u_xlatb20 & u_xlatb0);
    if (!(u_xlatb0)) {
      u_xlatu0 = vec2u(hlslcc_FragCoord.xy);
      let x_203 = u_xlatu0.y;
      param = 0i;
      param_1 = bitcast<i32>(x_203);
      param_2 = 2i;
      param_3 = 2i;
      let x_210 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
      u_xlati20 = x_210;
      let x_213 = u_xlatu0.x;
      param_4 = u_xlati20;
      param_5 = bitcast<i32>(x_213);
      param_6 = 0i;
      param_7 = 2i;
      let x_220 = int_bitfieldInsert_i1_i1_i1_i1_(&(param_4), &(param_5), &(param_6), &(param_7));
      u_xlati0 = x_220;
      let x_257 = u_xlati0;
      indexable = array<vec4u, 16u>(vec4u(), vec4u(1090519040u, 0u, 0u, 0u), vec4u(1073741824u, 0u, 0u, 0u), vec4u(1092616192u, 0u, 0u, 0u), vec4u(1094713344u, 0u, 0u, 0u), vec4u(1082130432u, 0u, 0u, 0u), vec4u(1096810496u, 0u, 0u, 0u), vec4u(1086324736u, 0u, 0u, 0u), vec4u(1077936128u, 0u, 0u, 0u), vec4u(1093664768u, 0u, 0u, 0u), vec4u(1065353216u, 0u, 0u, 0u), vec4u(1091567616u, 0u, 0u, 0u), vec4u(1097859072u, 0u, 0u, 0u), vec4u(1088421888u, 0u, 0u, 0u), vec4u(1095761920u, 0u, 0u, 0u), vec4u(1084227584u, 0u, 0u, 0u));
      u_xlat0.x = (0.5f + bitcast<f32>(indexable[x_257].x));
      u_xlat0.x = ((u_xlat0.x * 0.0625f) + -(x_110.x_DesertCamFade));
      u_xlatb0 = (u_xlat0.x < 0.0f);
      if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
        discard;
      }
    }
  }
  u_xlat0 = vec4f(((vs_TEXCOORD1 + -(x_290.x_WorldSpaceCameraPos))).xyz, u_xlat0.w);
  u_xlat60 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat1.x = sqrt(u_xlat60);
  let x_321 = vs_TEXCOORD0;
  let x_323 = x_290.x_GlobalMipBias.x;
  let x_324 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_321, x_323);
  u_xlat21 = x_324.xyz;
  u_xlat2 = vec4f(((u_xlat21 * x_110.x_BaseColor.xyz)).xyz, u_xlat2.w);
  let x_340 = vs_TEXCOORD0;
  let x_342 = x_290.x_GlobalMipBias.x;
  let x_343 = textureSampleBias(x_MaskMap, sampler_MaskMap, x_340, x_342);
  u_xlat3 = vec4f(x_343.xyw.xyz, u_xlat3.w);
  u_xlat62 = dot(vs_TEXCOORD2, vs_TEXCOORD2);
  u_xlat62 = inverseSqrt(u_xlat62);
  u_xlat4 = vec4f(((vec3f(u_xlat62) * vs_TEXCOORD2)).xyz, u_xlat4.w);
  u_xlat62 = select(-1.0f, 1.0f, (select(0u, 4294967295u, gl_FrontFacing) != 0u));
  u_xlat5 = (vec3f(u_xlat62) * u_xlat4.xyz);
  u_xlat63 = dot(vs_TEXCOORD3.xyz, vs_TEXCOORD3.xyz);
  u_xlat63 = inverseSqrt(u_xlat63);
  u_xlat6 = vec4f(((vec3f(u_xlat63) * vs_TEXCOORD3.xyz)).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((u_xlat5.zxy * u_xlat6.yzx)).xyz, u_xlat7.w);
  u_xlat7 = vec4f((((u_xlat5.yzx * u_xlat6.zxy) + -(u_xlat7.xyz))).xyz, u_xlat7.w);
  u_xlat7 = vec4f(((u_xlat7.xyz * vs_TEXCOORD3.www)).xyz, u_xlat7.w);
  let x_424 = vs_TEXCOORD0;
  let x_426 = x_290.x_GlobalMipBias.x;
  let x_427 = textureSampleBias(x_BumpMap, sampler_BumpMap, x_424, x_426);
  u_xlat8 = vec4f(x_427.xyw.xyz, u_xlat8.w);
  u_xlat8.x = (u_xlat8.x * u_xlat8.z);
  u_xlat8 = vec4f((((u_xlat8.xy * x_441) + x_443)).xy, u_xlat8.zw);
  u_xlat63 = dot(u_xlat8.xy, u_xlat8.xy);
  u_xlat63 = min(u_xlat63, 1.0f);
  u_xlat63 = (-(u_xlat63) + 1.0f);
  u_xlat63 = sqrt(u_xlat63);
  u_xlat63 = max(u_xlat63, 0.0000000000000001f);
  u_xlat8 = vec4f(((u_xlat8.xy * vec2f(x_110.x_BumpScale))).xy, u_xlat8.zw);
  u_xlat7 = vec4f(((u_xlat7.xyz * u_xlat8.yyy)).xyz, u_xlat7.w);
  u_xlat6 = vec4f((((u_xlat8.xxx * u_xlat6.xyz) + u_xlat7.xyz)).xyz, u_xlat6.w);
  u_xlat5 = ((vec3f(u_xlat63) * u_xlat5) + u_xlat6.xyz);
  u_xlat63 = dot(u_xlat5, u_xlat5);
  u_xlat63 = inverseSqrt(u_xlat63);
  u_xlat5 = (vec3f(u_xlat63) * u_xlat5.xzy);
  u_xlat6 = vec4f((((vs_TEXCOORD5.xz * vec2f(0.37000000476837158203f)) + vs_TEXCOORD5.yy)).xy, u_xlat6.zw);
  u_xlat6 = vec4f(((u_xlat6.xy * vec2f(0.10310000181198120117f))).xy, u_xlat6.zw);
  u_xlat6 = vec4f(fract(u_xlat6.xy).xy, u_xlat6.zw);
  u_xlat7 = vec4f(((u_xlat6.yxx + vec3f(33.3300018310546875f))).xyz, u_xlat7.w);
  u_xlat63 = dot(u_xlat6.xyx, u_xlat7.xyz);
  u_xlat6 = vec4f(((vec2f(u_xlat63) + u_xlat6.xy)).xy, u_xlat6.zw);
  u_xlat63 = (u_xlat6.y + u_xlat6.x);
  u_xlat63 = (u_xlat6.x * u_xlat63);
  u_xlat63 = fract(u_xlat63);
  u_xlat63 = (u_xlat63 + vs_TEXCOORD5.w);
  u_xlat63 = fract(u_xlat63);
  let x_571 = vec2f(x_110.x_MacroScale, x_110.x_MacroScale);
  u_xlat6 = vec4f(((vs_TEXCOORD1.xz / vec2f(x_571.x, x_571.y))).xy, u_xlat6.zw);
  u_xlat6 = vec4f(((vec2f(u_xlat63) + u_xlat6.xy)).xy, u_xlat6.zw);
  let x_591 = u_xlat6;
  let x_594 = x_290.x_GlobalMipBias.x;
  let x_595 = textureSampleBias(x_MacroNoise, sampler_MacroNoise, x_591.xy, x_594);
  u_xlat64 = x_595.x;
  u_xlat2.x = dot(u_xlat2.xyz, x_602);
  u_xlat21 = ((u_xlat21 * x_110.x_BaseColor.xyz) + -(u_xlat2.xxx));
  let x_621 = vec3f(x_110.x_Saturation, x_110.x_Saturation, x_110.x_Saturation);
  u_xlat21 = ((vec3f(x_621.x, x_621.y, x_621.z) * u_xlat21) + u_xlat2.xxx);
  let x_639 = vec3f(x_110.x_Brightness, x_110.x_Brightness, x_110.x_Brightness);
  u_xlat21 = (u_xlat21 * vec3f(x_639.x, x_639.y, x_639.z));
  u_xlat2 = vec4f(((vec2f(u_xlat64) + vec2f(-0.5f, 0.60000002384185791016f))).xy, u_xlat2.zw);
  u_xlat42.x = (u_xlat2.x + u_xlat2.x);
  u_xlat63 = (u_xlat63 + -0.5f);
  u_xlat63 = (u_xlat63 * x_110.x_VariationAmount);
  u_xlat42.x = ((u_xlat42.x * x_110.x_VariationAmount) + u_xlat63);
  u_xlat42.x = (u_xlat42.x + 0.5f);
  u_xlat42.x = clamp(u_xlat42.x, 0.0f, 1.0f);
  u_xlat6 = vec4f(((x_110.x_WarmTint.xyz + -(x_110.x_CoolTint.xyz))).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat42.xxx * u_xlat6.xyz) + x_110.x_CoolTint.xyz)).xyz, u_xlat6.w);
  u_xlat21 = (u_xlat21 * u_xlat6.xyz);
  u_xlat42.x = (x_110.x_DetailAlbedoStrength + x_110.x_DetailNormalStrength);
  u_xlatb42 = (0.00100000004749745131f < u_xlat42.x);
  if (u_xlatb42) {
    u_xlat42.x = (x_110.x_DetailFade * 0.5f);
    u_xlat63 = ((-(x_110.x_DetailFade) * 0.5f) + u_xlat1.x);
    u_xlat42.x = (1.0f / u_xlat42.x);
    u_xlat42.x = (u_xlat42.x * u_xlat63);
    u_xlat42.x = clamp(u_xlat42.x, 0.0f, 1.0f);
    u_xlat63 = ((u_xlat42.x * -2.0f) + 3.0f);
    u_xlat42.x = (u_xlat42.x * u_xlat42.x);
    u_xlat42.x = ((-(u_xlat63) * u_xlat42.x) + 1.0f);
    u_xlat6 = vec4f(((u_xlat42.xx * vec2f(x_110.x_DetailNormalStrength, x_110.x_DetailAlbedoStrength))).xy, u_xlat6.zw);
    u_xlat7 = vec4f(((abs(u_xlat5.xzy) * abs(u_xlat5.xzy))).xyz, u_xlat7.w);
    let x_791 = (u_xlat7.xyz * u_xlat7.xyz);
    u_xlat7 = vec4f(x_791.xy, u_xlat7.z, x_791.z);
    u_xlat42.x = (u_xlat7.y + u_xlat7.x);
    u_xlat42.x = ((u_xlat7.z * u_xlat7.z) + u_xlat42.x);
    u_xlat7 = vec4f(((u_xlat7.xyw / u_xlat42.xxx)).xyz, u_xlat7.w);
    u_xlat8 = (vs_TEXCOORD1.zyxz / vec4f(x_110.x_DetailTile));
    u_xlat46 = (vs_TEXCOORD1.xy / vec2f(x_110.x_DetailTile));
    let x_836 = u_xlat8;
    let x_839 = x_290.x_GlobalMipBias.x;
    let x_840 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_836.xy, x_839);
    let x_841 = x_840.xyw;
    u_xlat9 = vec4f(x_841.xy, u_xlat9.z, x_841.z);
    u_xlat9.z = (u_xlat9.x * u_xlat9.w);
    u_xlat9 = vec4f((((u_xlat9.yz * x_441) + x_443)).xy, u_xlat9.zw);
    u_xlat42.x = dot(u_xlat9.xy, u_xlat9.xy);
    u_xlat42.x = min(u_xlat42.x, 1.0f);
    u_xlat42.x = (-(u_xlat42.x) + 1.0f);
    u_xlat42.x = sqrt(u_xlat42.x);
    u_xlat42.x = max(u_xlat42.x, 0.0000000000000001f);
    let x_883 = u_xlat8;
    let x_886 = x_290.x_GlobalMipBias.x;
    let x_887 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_883.zw, x_886);
    u_xlat10 = x_887.xyw;
    u_xlat10.x = (u_xlat10.x * u_xlat10.z);
    u_xlat49 = ((u_xlat10.xy * x_441) + x_443);
    u_xlat63 = dot(u_xlat49, u_xlat49);
    u_xlat63 = min(u_xlat63, 1.0f);
    u_xlat63 = (-(u_xlat63) + 1.0f);
    u_xlat63 = sqrt(u_xlat63);
    u_xlat63 = max(u_xlat63, 0.0000000000000001f);
    let x_915 = u_xlat46;
    let x_917 = x_290.x_GlobalMipBias.x;
    let x_918 = textureSampleBias(x_DetailNormal, sampler_DetailNormal, x_915, x_917);
    u_xlat10 = x_918.xyw;
    u_xlat10.x = (u_xlat10.x * u_xlat10.z);
    u_xlat10 = vec3f((((u_xlat10.xy * x_441) + x_443)).xy, u_xlat10.z);
    u_xlat65 = dot(u_xlat10.xy, u_xlat10.xy);
    u_xlat65 = min(u_xlat65, 1.0f);
    u_xlat65 = (-(u_xlat65) + 1.0f);
    u_xlat65 = sqrt(u_xlat65);
    u_xlat65 = max(u_xlat65, 0.0000000000000001f);
    let x_953 = u_xlat8;
    let x_956 = x_290.x_GlobalMipBias.x;
    let x_957 = textureSampleBias(x_DetailAlbedo, sampler_DetailAlbedo, x_953.xy, x_956);
    u_xlat11 = x_957.xyz;
    u_xlat67 = dot(u_xlat11, x_602);
    let x_965 = u_xlat8;
    let x_968 = x_290.x_GlobalMipBias.x;
    let x_969 = textureSampleBias(x_DetailAlbedo, sampler_DetailAlbedo, x_965.zw, x_968);
    u_xlat8 = vec4f(x_969.xyz.xyz, u_xlat8.w);
    u_xlat8.x = dot(u_xlat8.xyz, x_602);
    u_xlat8.x = (u_xlat7.y * u_xlat8.x);
    u_xlat67 = ((u_xlat67 * u_xlat7.x) + u_xlat8.x);
    let x_993 = u_xlat46;
    let x_995 = x_290.x_GlobalMipBias.x;
    let x_996 = textureSampleBias(x_DetailAlbedo, sampler_DetailAlbedo, x_993, x_995);
    u_xlat8 = vec4f(x_996.xyz.xyz, u_xlat8.w);
    u_xlat46.x = dot(u_xlat8.xyz, x_602);
    u_xlat46.x = ((u_xlat46.x * u_xlat7.z) + u_xlat67);
    u_xlat8 = vec4f(u_xlat8.x, (((u_xlat9.xy * u_xlat6.xx) + u_xlat5.zy)).xy, u_xlat8.w);
    u_xlat8.x = (u_xlat5.x * u_xlat42.x);
    let x_1034 = ((u_xlat49 * u_xlat6.xx) + u_xlat5.xy);
    u_xlat9 = vec4f(x_1034.x, u_xlat9.y, x_1034.y, u_xlat9.w);
    u_xlat9.y = (u_xlat5.z * u_xlat63);
    u_xlat10 = vec3f((((u_xlat10.xy * u_xlat6.xx) + u_xlat5.xz)).xy, u_xlat10.z);
    u_xlat10.z = (u_xlat5.y * u_xlat65);
    u_xlat9 = vec4f(((u_xlat7.yyy * u_xlat9.xyz)).xyz, u_xlat9.w);
    let x_1071 = ((u_xlat8.xyz * u_xlat7.xxx) + u_xlat9.xyz);
    u_xlat7 = vec4f(x_1071.xy, u_xlat7.z, x_1071.z);
    u_xlat7 = vec4f((((u_xlat10 * u_xlat7.zzz) + u_xlat7.xyw)).xyz, u_xlat7.w);
    u_xlat42.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat42.x = inverseSqrt(u_xlat42.x);
    u_xlat5 = (u_xlat42.xxx * u_xlat7.xzy);
    u_xlat42.x = (u_xlat46.x * 2.09999990463256835938f);
    u_xlat42.x = clamp(u_xlat42.x, 0.0f, 1.0f);
    u_xlat42.x = (u_xlat42.x + -1.0f);
    u_xlat42.x = ((u_xlat6.y * u_xlat42.x) + 1.0f);
    u_xlat21 = (u_xlat21 * u_xlat42.xxx);
  }
  u_xlat2.x = ((u_xlat2.x * 0.25f) + u_xlat5.z);
  u_xlat42.x = (-(x_110.x_SandTop.y) + x_110.x_SandTop.x);
  u_xlat63 = (x_110.x_SandTop.y + x_110.x_SandTop.x);
  u_xlat63 = (-(u_xlat42.x) + u_xlat63);
  u_xlat2.x = (-(u_xlat42.x) + u_xlat2.x);
  u_xlat42.x = (1.0f / u_xlat63);
  u_xlat2.x = (u_xlat42.x * u_xlat2.x);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat42.x = ((u_xlat2.x * -2.0f) + 3.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat42.x);
  u_xlat2.x = (u_xlat2.x * x_110.x_SandAmount);
  u_xlat6 = vec4f(((vs_TEXCOORD1.xz + -(x_290.x_DesertGroundHeightRect.xy))).xy, u_xlat6.zw);
  u_xlat6 = vec4f(((u_xlat6.xy * x_290.x_DesertGroundHeightRect.zw)).xy, u_xlat6.zw);
  u_xlat42.x = textureSampleLevel(x_DesertGroundHeight, sampler_DesertGroundHeight, u_xlat6.xy, 0.0f).x;
  u_xlatb63 = (x_290.x_DesertGroundHeightRect.z >= 0.00000099999999747524f);
  u_xlat63 = select(0.0f, 1.0f, u_xlatb63);
  u_xlatb46 = ((u_xlat6.xyxy >= vec4f())).xy;
  u_xlat46.x = select(0.0f, 1.0f, u_xlatb46.x);
  u_xlat46.y = select(0.0f, 1.0f, u_xlatb46.y);
  u_xlat63 = (u_xlat63 * u_xlat46.x);
  u_xlatb6 = ((x_159 >= u_xlat6.xyxx)).xy;
  u_xlat6.x = select(0.0f, 1.0f, u_xlatb6.x);
  u_xlat6.y = select(0.0f, 1.0f, u_xlatb6.y);
  u_xlat63 = (u_xlat63 * u_xlat6.x);
  u_xlat63 = (u_xlat46.y * u_xlat63);
  u_xlat63 = (u_xlat6.y * u_xlat63);
  u_xlat42.x = (-(u_xlat42.x) + vs_TEXCOORD1.y);
  u_xlat22.x = (u_xlat2.y * x_110.x_SandSkirt);
  u_xlat22.x = (1.0f / u_xlat22.x);
  u_xlat22.x = (u_xlat22.x * u_xlat42.x);
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat65 = ((u_xlat22.x * -2.0f) + 3.0f);
  u_xlat22.x = (u_xlat22.x * u_xlat22.x);
  u_xlat22.x = ((-(u_xlat65) * u_xlat22.x) + 1.0f);
  u_xlat65 = (x_110.x_SandSkirt * -1.5f);
  u_xlatb42 = (u_xlat42.x >= u_xlat65);
  u_xlat42.x = select(0.0f, 1.0f, u_xlatb42);
  u_xlat22.x = (u_xlat42.x * u_xlat22.x);
  u_xlat22.x = (u_xlat63 * u_xlat22.x);
  u_xlatb42 = (x_110.x_SandSkirt >= 0.00100000004749745131f);
  u_xlat42.x = select(0.0f, 1.0f, u_xlatb42);
  u_xlat22.x = (u_xlat42.x * u_xlat22.x);
  u_xlat2.x = max(u_xlat22.x, u_xlat2.x);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat22.x = ((u_xlat64 * 0.20000000298023223877f) + 0.89999997615814208984f);
  u_xlat6 = vec4f((((x_110.x_SandColor.xyz * u_xlat22.xxx) + -(u_xlat21))).xyz, u_xlat6.w);
  u_xlat21 = ((u_xlat2.xxx * u_xlat6.xyz) + u_xlat21);
  u_xlat22.x = (u_xlat2.x * 0.60000002384185791016f);
  u_xlat4 = vec4f((((u_xlat4.xyz * vec3f(u_xlat62)) + -(u_xlat5.xzy))).xyz, u_xlat4.w);
  u_xlat22 = ((u_xlat22.xxx * u_xlat4.xyz) + u_xlat5.xzy);
  u_xlat63 = dot(u_xlat22, u_xlat22);
  u_xlat63 = inverseSqrt(u_xlat63);
  u_xlat4 = vec4f(((u_xlat22 * vec3f(u_xlat63))).xyz, u_xlat4.w);
  u_xlatb22 = (x_290.unity_OrthoParams.w == 0.0f);
  u_xlat5 = (-(vs_TEXCOORD1) + x_290.x_WorldSpaceCameraPos);
  u_xlat42.x = dot(u_xlat5, u_xlat5);
  u_xlat42.x = inverseSqrt(u_xlat42.x);
  u_xlat5 = (u_xlat42.xxx * u_xlat5);
  u_xlat6.x = x_290.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat6.y = x_290.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat6.z = x_290.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb22) {
    x_1450 = u_xlat5;
  } else {
    x_1450 = u_xlat6.xyz;
  }
  u_xlat5 = x_1450;
  u_xlat7 = vec4f(((vs_TEXCOORD1.yyy * x_1468.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f((((x_1468.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * vs_TEXCOORD1.xxx) + u_xlat7.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f((((x_1468.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * vs_TEXCOORD1.zzz) + u_xlat7.xyz)).xyz, u_xlat7.w);
  u_xlat7 = vec4f(((u_xlat7.xyz + x_1468.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz)).xyz, u_xlat7.w);
  u_xlat4.w = 1.0f;
  u_xlat8.x = dot(x_1513.unity_SHAr, u_xlat4);
  u_xlat8.y = dot(x_1513.unity_SHAg, u_xlat4);
  u_xlat8.z = dot(x_1513.unity_SHAb, u_xlat4);
  u_xlat9 = (u_xlat4.yzzx * u_xlat4.xyzz);
  u_xlat10.x = dot(x_1513.unity_SHBr, u_xlat9);
  u_xlat10.y = dot(x_1513.unity_SHBg, u_xlat9);
  u_xlat10.z = dot(x_1513.unity_SHBb, u_xlat9);
  u_xlat42.x = (u_xlat4.y * u_xlat4.y);
  u_xlat42.x = ((u_xlat4.x * u_xlat4.x) + -(u_xlat42.x));
  u_xlat9 = vec4f((((x_1513.unity_SHC.xyz * u_xlat42.xxx) + u_xlat10)).xyz, u_xlat9.w);
  u_xlat8 = vec4f(((u_xlat8.xyz + u_xlat9.xyz)).xyz, u_xlat8.w);
  let x_1591 = x_290.x_ScaledScreenParams.xy;
  u_xlat42 = (vec2f(1.0f) / vec2f(x_1591.x, x_1591.y));
  u_xlat9 = vec4f(((u_xlat42 * hlslcc_FragCoord.xy)).xy, u_xlat9.zw);
  u_xlat42.x = ((u_xlat9.y * x_290.x_ScaleBiasRt.x) + x_290.x_ScaleBiasRt.y);
  u_xlat9.z = (-(u_xlat42.x) + 1.0f);
  u_xlat42 = (u_xlat3.zx * vec2f(x_110.x_Smoothness, x_110.x_Metallic));
  u_xlat2.x = (-(u_xlat2.x) + 1.0f);
  u_xlat62 = (u_xlat2.x * u_xlat42.y);
  u_xlat42.x = u_xlat42.x;
  u_xlat42.x = clamp(u_xlat42.x, 0.0f, 1.0f);
  u_xlat3.x = (u_xlat3.y + -1.0f);
  u_xlat3.x = ((x_110.x_OcclusionStrength * u_xlat3.x) + 1.0f);
  u_xlat23.x = ((-(u_xlat62) * 0.95999997854232788086f) + 0.95999997854232788086f);
  u_xlat43 = ((u_xlat42.x * u_xlat2.x) + -(u_xlat23.x));
  u_xlat10 = (u_xlat21 * u_xlat23.xxx);
  u_xlat11 = (u_xlat21 + vec3f(-0.03999999910593032837f));
  u_xlat11 = ((vec3f(u_xlat62) * u_xlat11) + vec3f(0.03999999910593032837f));
  u_xlat2.x = ((-(u_xlat42.x) * u_xlat2.x) + 1.0f);
  u_xlat42.x = (u_xlat2.x * u_xlat2.x);
  u_xlat42.x = max(u_xlat42.x, 0.0078125f);
  u_xlat62 = (u_xlat42.x * u_xlat42.x);
  u_xlat23.x = (u_xlat43 + 1.0f);
  u_xlat23.x = clamp(u_xlat23.x, 0.0f, 1.0f);
  u_xlat43 = ((u_xlat42.x * 4.0f) + 2.0f);
  let x_1727 = u_xlat9;
  let x_1730 = x_290.x_GlobalMipBias.x;
  let x_1731 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_1727.xz, x_1730);
  u_xlat63 = x_1731.x;
  u_xlat63 = (u_xlat63 + -(x_290.x_AmbientOcclusionParam.x));
  u_xlat63 = (u_xlat63 + 1.0f);
  u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
  u_xlat64 = (u_xlat63 + -1.0f);
  u_xlat64 = ((x_290.x_AmbientOcclusionParam.w * u_xlat64) + 1.0f);
  u_xlat63 = min(u_xlat3.x, u_xlat63);
  let x_1756 = u_xlat7.xy;
  txVec0 = vec3f(x_1756.x, x_1756.y, u_xlat7.z);
  u_xlat65 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat66 = (-(x_1468.x_MainLightShadowParams.x) + 1.0f);
  u_xlat65 = ((u_xlat65 * x_1468.x_MainLightShadowParams.x) + u_xlat66);
  u_xlatb66 = (0.0f >= u_xlat7.z);
  u_xlatb7 = (u_xlat7.z >= 1.0f);
  u_xlatb66 = (u_xlatb66 | u_xlatb7);
  u_xlat65 = select(u_xlat65, 1.0f, u_xlatb66);
  u_xlat66 = ((u_xlat60 * x_1468.x_MainLightShadowParams.z) + x_1468.x_MainLightShadowParams.w);
  u_xlat66 = clamp(u_xlat66, 0.0f, 1.0f);
  u_xlat7.x = (-(u_xlat65) + 1.0f);
  u_xlat65 = ((u_xlat66 * u_xlat7.x) + u_xlat65);
  u_xlat7 = vec4f(((vec3f(u_xlat64) * x_290.x_MainLightColor.xyz)).xyz, u_xlat7.w);
  u_xlat66 = dot(-(u_xlat5), u_xlat4.xyz);
  u_xlat66 = (u_xlat66 + u_xlat66);
  u_xlat12 = vec4f((((u_xlat4.xyz * -(vec3f(u_xlat66))) + -(u_xlat5))).xyz, u_xlat12.w);
  u_xlat66 = dot(u_xlat4.xyz, u_xlat5);
  u_xlat66 = clamp(u_xlat66, 0.0f, 1.0f);
  u_xlat66 = (-(u_xlat66) + 1.0f);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat66 = (u_xlat66 * u_xlat66);
  u_xlat67 = ((-(u_xlat2.x) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat2.x = (u_xlat2.x * u_xlat67);
  u_xlat2.x = (u_xlat2.x * 6.0f);
  u_xlat9 = vec4f(((u_xlat9.xz * x_290.x_FPParams1.xy)).xy, u_xlat9.zw);
  u_xlatu9 = vec2u(u_xlat9.xy);
  u_xlatu49 = vec2u(x_290.x_FPParams1.zw);
  u_xlati67 = ((bitcast<i32>(u_xlatu9.y) * bitcast<i32>(u_xlatu49.x)) + bitcast<i32>(u_xlatu9.x));
  u_xlatu67 = (u_xlatu49.y * bitcast<u32>(u_xlati67));
  u_xlat6.x = dot(-(u_xlat6.xyz), u_xlat0.xyz);
  u_xlat26 = log2(u_xlat6.x);
  if (u_xlatb22) {
    x_1924 = u_xlat26;
  } else {
    x_1924 = u_xlat6.x;
  }
  u_xlat22.x = x_1924;
  u_xlat22.x = ((u_xlat22.x * x_290.x_FPParams0.x) + x_290.x_FPParams0.y);
  u_xlatu22 = u32(u_xlat22.x);
  u_xlatu6 = u32(x_290.x_FPParams2.x);
  u_xlatu6 = (u_xlatu6 + 4294967295u);
  u_xlati26 = (bitcast<i32>(u_xlatu49.y) + 2i);
  u_xlatu22 = min(u_xlatu22, u_xlatu6);
  u_xlatu6 = (bitcast<u32>(u_xlati26) * u_xlatu22);
  u_xlatu26 = ((vec2u(u_xlatu22) * vec2u(bitcast<u32>(u_xlati26))) + vec2u(1u, 2u));
  u_xlatu22 = (u_xlatu26.x >> 2u);
  param_8 = bitcast<i32>(u_xlatu26.x);
  param_9 = 0i;
  param_10 = 1i;
  let x_1985 = int_bitfieldExtract_i1_i1_i1_(&(param_8), &(param_9), &(param_10));
  param_11 = bitcast<i32>(u_xlatu26.x);
  param_12 = 1i;
  param_13 = 1i;
  let x_1992 = int_bitfieldExtract_i1_i1_i1_(&(param_11), &(param_12), &(param_13));
  u_xlati9 = vec3i(vec2i(x_1985, x_1992).xy, u_xlati9.z);
  u_xlati49 = bitcast<vec2i>((bitcast<vec2u>(u_xlati9.xx) & bitcast<vec2u>(x_2006.urp_ZBins[bitcast<i32>(u_xlatu22)].wy)));
  u_xlati13 = vec4i((~(u_xlati9.xy)).xy, u_xlati13.zw);
  let x_2033 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2006.urp_ZBins[bitcast<i32>(u_xlatu22)].zx)));
  u_xlati13 = vec4i(x_2033.x, u_xlati13.y, x_2033.y, u_xlati13.w);
  let x_2042 = bitcast<vec2i>((bitcast<vec2u>(u_xlati49) | bitcast<vec2u>(u_xlati13.xz)));
  u_xlati9 = vec3i(x_2042.x, u_xlati9.y, x_2042.y);
  u_xlati22.x = bitcast<i32>((bitcast<u32>(u_xlati9.y) & bitcast<u32>(u_xlati9.x)));
  u_xlati26 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati9.z)));
  u_xlatu22 = (bitcast<u32>(u_xlati22.x) | bitcast<u32>(u_xlati26));
  u_xlatu9 = vec2u(x_290.x_FPParams0.zw);
  u_xlatb13 = ((vec4f() < u_xlat12.xyzx)).xyz;
  u_xlatu14.x = u_xlatu67;
  u_xlatu14.y = u_xlatu26.y;
  u_xlatu54.x = 0u;
  u_xlatu54.y = u_xlatu22;
  u_xlat15.x = 0.0f;
  u_xlat15.y = 0.0f;
  u_xlat15.z = 0.0f;
  u_xlat26 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu68 = (u_xlatu54.y >> 16u);
    u_xlatu49 = u_xlatu54;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb70 = (bitcast<i32>(u_xlatu49.x) == 0i);
      u_xlatu71 = (u_xlatu49.y & 65535u);
      u_xlatb71 = (u_xlatu68 >= u_xlatu71);
      u_xlatb70 = (u_xlatb70 & u_xlatb71);
      if (!(u_xlatb70)) {
        break;
      }
      param_14 = u_xlatu49.y;
      param_15 = 5i;
      param_16 = 11i;
      let x_2138 = uint_bitfieldExtract_u1_i1_i1_(&(param_14), &(param_15), &(param_16));
      u_xlatu70 = x_2138;
      u_xlatu16 = (vec4u(u_xlatu70) + u_xlatu14.xxyy);
      u_xlatu17 = (u_xlatu16.yw >> x_2149);
      param_17 = bitcast<i32>(u_xlatu16.x);
      param_18 = 0i;
      param_19 = 1i;
      let x_2158 = int_bitfieldExtract_i1_i1_i1_(&(param_17), &(param_18), &(param_19));
      param_20 = bitcast<i32>(u_xlatu16.y);
      param_21 = 1i;
      param_22 = 1i;
      let x_2165 = int_bitfieldExtract_i1_i1_i1_(&(param_20), &(param_21), &(param_22));
      param_23 = bitcast<i32>(u_xlatu16.z);
      param_24 = 0i;
      param_25 = 1i;
      let x_2172 = int_bitfieldExtract_i1_i1_i1_(&(param_23), &(param_24), &(param_25));
      param_26 = bitcast<i32>(u_xlatu16.w);
      param_27 = 1i;
      param_28 = 1i;
      let x_2179 = int_bitfieldExtract_i1_i1_i1_(&(param_26), &(param_27), &(param_28));
      u_xlati16 = vec4i(x_2158, x_2165, x_2172, x_2179);
      u_xlati57 = bitcast<vec2i>((bitcast<vec2u>(u_xlati16.xx) & bitcast<vec2u>(x_2188.urp_Tiles[bitcast<i32>(u_xlatu17.x)].wy)));
      u_xlati18 = ~(u_xlati16);
      u_xlati19 = bitcast<vec2i>((bitcast<vec2u>(u_xlati18.xx) & bitcast<vec2u>(x_2188.urp_Tiles[bitcast<i32>(u_xlatu17.x)].zx)));
      let x_2220 = bitcast<vec2i>((bitcast<vec2u>(u_xlati57) | bitcast<vec2u>(u_xlati19)));
      u_xlati17 = vec3i(x_2220.x, u_xlati17.y, x_2220.y);
      u_xlati71 = bitcast<i32>((bitcast<u32>(u_xlati16.y) & bitcast<u32>(u_xlati17.x)));
      u_xlati72 = bitcast<i32>((bitcast<u32>(u_xlati18.y) & bitcast<u32>(u_xlati17.z)));
      u_xlati71 = bitcast<i32>((bitcast<u32>(u_xlati71) | bitcast<u32>(u_xlati72)));
      u_xlati16 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati16.zz) & bitcast<vec2u>(x_2006.urp_ZBins[bitcast<i32>(u_xlatu17.y)].wy))).xy, u_xlati16.zw);
      u_xlati17 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati18.zz) & bitcast<vec2u>(x_2006.urp_ZBins[bitcast<i32>(u_xlatu17.y)].zx))).xy, u_xlati17.z);
      u_xlati16 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati16.xy) | bitcast<vec2u>(u_xlati17.xy))).xy, u_xlati16.zw);
      u_xlati72 = bitcast<i32>((bitcast<u32>(u_xlati16.w) & bitcast<u32>(u_xlati16.x)));
      u_xlati73 = bitcast<i32>((bitcast<u32>(u_xlati18.w) & bitcast<u32>(u_xlati16.y)));
      u_xlati72 = bitcast<i32>((bitcast<u32>(u_xlati72) | bitcast<u32>(u_xlati73)));
      u_xlati71 = bitcast<i32>((bitcast<u32>(u_xlati71) & bitcast<u32>(u_xlati72)));
      u_xlati72 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu49.y) & 31i)));
      u_xlati71 = bitcast<i32>((bitcast<u32>(u_xlati71) & bitcast<u32>(u_xlati72)));
      u_xlati70 = (bitcast<i32>(u_xlatu70) << bitcast<u32>(5i));
      u_xlatu70 = (u_xlatu68 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati70)))));
      u_xlatu70 = min(u_xlatu70, 31u);
      u_xlatu70 = (bitcast<u32>(-(bitcast<i32>(u_xlatu70))) + 31u);
      u_xlatu70 = (4294967295u >> (u_xlatu70 & 31u));
      u_xlatu49.x = (u_xlatu70 & bitcast<u32>(u_xlati71));
      u_xlati70 = (bitcast<i32>(u_xlatu49.y) + 32i);
      u_xlatu49.y = (bitcast<u32>(u_xlati70) & 4294967264u);
    }
    u_xlatu54.y = u_xlatu49.y;
    u_xlatb68 = (bitcast<i32>(u_xlatu49.x) != 0i);
    u_xlatb70 = (u_xlat26 < 0.99000000953674316406f);
    u_xlatb68 = (u_xlatb68 & u_xlatb70);
    if (!(u_xlatb68)) {
      break;
    }
    u_xlati68 = bitcast<i32>(firstTrailingBit(u_xlatu49.x));
    u_xlati70 = (1i << bitcast<u32>((u_xlati68 & 31i)));
    u_xlatu54.x = (u_xlatu49.x ^ bitcast<u32>(u_xlati70));
    u_xlati70 = (bitcast<i32>(u_xlatu54.y) + -32i);
    u_xlati70 = bitcast<i32>((bitcast<u32>(u_xlati70) & 65504u));
    u_xlati68 = (u_xlati68 + u_xlati70);
    u_xlati68 = (-(bitcast<i32>(u_xlatu9.x)) + u_xlati68);
    u_xlat16 = (vs_TEXCOORD1 + -(x_2418.urp_ReflProbes_BoxMin[u_xlati68].xyz));
    u_xlat17 = (-(vs_TEXCOORD1) + x_2418.urp_ReflProbes_BoxMax[u_xlati68].xyz);
    u_xlat16 = min(u_xlat16, u_xlat17);
    u_xlat16 = (u_xlat16 / x_2418.urp_ReflProbes_BoxMax[u_xlati68].www);
    u_xlat70 = min(u_xlat16.z, u_xlat16.y);
    u_xlat70 = min(u_xlat70, u_xlat16.x);
    u_xlat70 = clamp(u_xlat70, 0.0f, 1.0f);
    u_xlat71 = (-(u_xlat26) + 1.0f);
    u_xlat70 = min(u_xlat70, u_xlat71);
    u_xlatb71 = (0.0f < x_2418.urp_ReflProbes_ProbePosition[u_xlati68].w);
    if (u_xlatb13.x) {
      x_2467 = x_2418.urp_ReflProbes_BoxMax[u_xlati68].x;
    } else {
      x_2467 = x_2418.urp_ReflProbes_BoxMin[u_xlati68].x;
    }
    u_xlat16.x = x_2467;
    if (u_xlatb13.y) {
      x_2481 = x_2418.urp_ReflProbes_BoxMax[u_xlati68].y;
    } else {
      x_2481 = x_2418.urp_ReflProbes_BoxMin[u_xlati68].y;
    }
    u_xlat16.y = x_2481;
    if (u_xlatb13.z) {
      x_2495 = x_2418.urp_ReflProbes_BoxMax[u_xlati68].z;
    } else {
      x_2495 = x_2418.urp_ReflProbes_BoxMin[u_xlati68].z;
    }
    u_xlat16.z = x_2495;
    u_xlat16 = (u_xlat16 + -(vs_TEXCOORD1));
    u_xlat16 = (u_xlat16 / u_xlat12.xyz);
    u_xlat72 = min(u_xlat16.y, u_xlat16.x);
    u_xlat72 = min(u_xlat16.z, u_xlat72);
    u_xlat16 = (vs_TEXCOORD1 + -(x_2418.urp_ReflProbes_ProbePosition[u_xlati68].xyz));
    u_xlat16 = ((u_xlat12.xyz * vec3f(u_xlat72)) + u_xlat16);
    if (u_xlatb71) {
      x_2540 = u_xlat16;
    } else {
      x_2540 = u_xlat12.xyz;
    }
    u_xlat16 = x_2540;
    u_xlatu71 = u32(abs(x_2418.urp_ReflProbes_ProbePosition[u_xlati68].w));
    u_xlatu71 = (u_xlatu71 + 4294967295u);
    u_xlat71 = f32(u_xlatu71);
    u_xlat71 = min(u_xlat2.x, u_xlat71);
    u_xlat72 = dot(abs(u_xlat16), x_2563);
    u_xlat72 = max(u_xlat72, 0.00000099999999747524f);
    u_xlat72 = (1.0f / u_xlat72);
    u_xlat17 = (vec3f(u_xlat72) * u_xlat16.zxy);
    u_xlat17.x = -(u_xlat17.x);
    u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
    u_xlatb56 = ((u_xlat17.yzyz >= vec4f())).xy;
    if (u_xlatb56.x) {
      x_2590 = u_xlat17.x;
    } else {
      x_2590 = -(u_xlat17.x);
    }
    u_xlat56.x = x_2590;
    if (u_xlatb56.y) {
      x_2603 = u_xlat17.x;
    } else {
      x_2603 = -(u_xlat17.x);
    }
    u_xlat56.y = x_2603;
    u_xlat16 = vec3f((((u_xlat16.xy * vec2f(u_xlat72)) + u_xlat56)).xy, u_xlat16.z);
    u_xlat16 = vec3f((((u_xlat16.xy * x_2625) + x_2625)).xy, u_xlat16.z);
    u_xlat16 = vec3f(clamp(u_xlat16.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat16.z);
    u_xlat72 = floor(u_xlat71);
    u_xlat73 = (u_xlat72 + 1.0f);
    u_xlat71 = (u_xlat71 + -(u_xlat72));
    u_xlatu72 = u32(u_xlat72);
    u_xlati72 = ((u_xlati68 * 7i) + bitcast<i32>(u_xlatu72));
    u_xlatu73 = u32(u_xlat73);
    u_xlati68 = ((u_xlati68 * 7i) + bitcast<i32>(u_xlatu73));
    u_xlat56 = ((u_xlat16.xy * x_2418.urp_ReflProbes_MipScaleOffset[u_xlati72].xy) + x_2418.urp_ReflProbes_MipScaleOffset[u_xlati72].zw);
    u_xlat17 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat56, 0.0f).xyz;
    u_xlat16 = vec3f((((u_xlat16.xy * x_2418.urp_ReflProbes_MipScaleOffset[u_xlati68].xy) + x_2418.urp_ReflProbes_MipScaleOffset[u_xlati68].zw)).xy, u_xlat16.z);
    u_xlat16 = textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat16.xy, 0.0f).xyz;
    u_xlat16 = (-(u_xlat17) + u_xlat16);
    u_xlat16 = ((vec3f(u_xlat71) * u_xlat16) + u_xlat17);
    u_xlat15 = vec4f((((vec3f(u_xlat70) * u_xlat16) + u_xlat15.xyz)).xyz, u_xlat15.w);
    u_xlat26 = (u_xlat26 + u_xlat70);
  }
  u_xlatb22 = (u_xlat26 < 0.99000000953674316406f);
  if (u_xlatb22) {
    u_xlat12 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat12.xyz, u_xlat2.x);
    u_xlat2.x = (-(u_xlat26) + 1.0f);
    u_xlat22.x = (u_xlat12.w + -1.0f);
    u_xlat22.x = ((x_290.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat22.x) + 1.0f);
    u_xlat22.x = max(u_xlat22.x, 0.0f);
    u_xlat22.x = log2(u_xlat22.x);
    u_xlat22.x = (u_xlat22.x * x_290.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat22.x = exp2(u_xlat22.x);
    u_xlat22.x = (u_xlat22.x * x_290.x_GlossyEnvironmentCubeMap_HDR.x);
    let x_2785 = (u_xlat12.xyz * u_xlat22.xxx);
    u_xlat9 = vec4f(x_2785.x, u_xlat9.y, x_2785.yz);
    u_xlat15 = vec4f((((u_xlat2.xxx * u_xlat9.xzw) + u_xlat15.xyz)).xyz, u_xlat15.w);
  }
  u_xlat2 = vec4f((((u_xlat42.xx * u_xlat42.xx) + vec2f(-1.0f, 1.0f))).xy, u_xlat2.zw);
  u_xlat22.x = (1.0f / u_xlat2.y);
  let x_2815 = (-(u_xlat11) + u_xlat23.xxx);
  u_xlat9 = vec4f(x_2815.x, u_xlat9.y, x_2815.yz);
  let x_2824 = ((vec3f(u_xlat66) * u_xlat9.xzw) + u_xlat11);
  u_xlat9 = vec4f(x_2824.x, u_xlat9.y, x_2824.yz);
  let x_2831 = (u_xlat22.xxx * u_xlat9.xzw);
  u_xlat9 = vec4f(x_2831.x, u_xlat9.y, x_2831.yz);
  let x_2838 = (u_xlat9.xzw * u_xlat15.xyz);
  u_xlat9 = vec4f(x_2838.x, u_xlat9.y, x_2838.yz);
  u_xlat8 = vec4f((((u_xlat8.xyz * u_xlat10) + u_xlat9.xzw)).xyz, u_xlat8.w);
  u_xlat22.x = dot(u_xlat4.xyz, x_290.x_MainLightPosition.xyz);
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat22.x = (u_xlat22.x * u_xlat65);
  u_xlat7 = vec4f(((u_xlat22.xxx * u_xlat7.xyz)).xyz, u_xlat7.w);
  let x_2877 = (u_xlat5 + x_290.x_MainLightPosition.xyz);
  u_xlat9 = vec4f(x_2877.x, u_xlat9.y, x_2877.yz);
  u_xlat22.x = dot(u_xlat9.xzw, u_xlat9.xzw);
  u_xlat22.x = max(u_xlat22.x, 1.17549435e-38f);
  u_xlat22.x = inverseSqrt(u_xlat22.x);
  let x_2899 = (u_xlat22.xxx * u_xlat9.xzw);
  u_xlat9 = vec4f(x_2899.x, u_xlat9.y, x_2899.yz);
  u_xlat22.x = dot(u_xlat4.xyz, u_xlat9.xzw);
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat22.y = dot(x_290.x_MainLightPosition.xyz, u_xlat9.xzw);
  u_xlat22.y = clamp(u_xlat22.y, 0.0f, 1.0f);
  u_xlat22 = vec3f(((u_xlat22.xy * u_xlat22.xy)).xy, u_xlat22.z);
  u_xlat22.x = ((u_xlat22.x * u_xlat2.x) + 1.00001001358032226562f);
  u_xlat22.x = (u_xlat22.x * u_xlat22.x);
  u_xlat42.x = max(u_xlat22.y, 0.10000000149011611938f);
  u_xlat22.x = (u_xlat42.x * u_xlat22.x);
  u_xlat22.x = (u_xlat43 * u_xlat22.x);
  u_xlat22.x = (u_xlat62 / u_xlat22.x);
  let x_2970 = ((u_xlat11 * u_xlat22.xxx) + u_xlat10);
  u_xlat9 = vec4f(x_2970.x, u_xlat9.y, x_2970.yz);
  u_xlat7 = vec4f(((u_xlat7.xyz * u_xlat9.xzw)).xyz, u_xlat7.w);
  u_xlatu22 = min(u_xlatu9.y, 32u);
  u_xlat60 = ((u_xlat60 * x_1468.x_AdditionalShadowFadeParams.x) + x_1468.x_AdditionalShadowFadeParams.y);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat9.x = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlat9.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu22)) {
    } else {
      break;
    }
    u_xlat12 = vec4f((((-(vs_TEXCOORD1) * x_3014.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3014.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat12.w);
    u_xlat23.x = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat23.x = max(u_xlat23.x, 0.00006103515625f);
    u_xlat65 = inverseSqrt(u_xlat23.x);
    u_xlat13 = (vec3f(u_xlat65) * u_xlat12.xyz);
    u_xlat26 = (1.0f / u_xlat23.x);
    u_xlat23.x = (u_xlat23.x * x_3014.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat23.x = ((-(u_xlat23.x) * u_xlat23.x) + 1.0f);
    u_xlat23.x = max(u_xlat23.x, 0.0f);
    u_xlat23.x = (u_xlat23.x * u_xlat23.x);
    u_xlat23.x = (u_xlat23.x * u_xlat26);
    u_xlat26 = dot(x_3014.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat13);
    u_xlat26 = ((u_xlat26 * x_3014.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3014.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
    u_xlat26 = (u_xlat26 * u_xlat26);
    u_xlat23.x = (u_xlat23.x * u_xlat26);
    u_xlatb26 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati66 = i32(x_1468.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati26 = select(u_xlati66, -1i, u_xlatb26);
    u_xlatb66 = (u_xlati26 >= 0i);
    if (u_xlatb66) {
      u_xlatb66 = any(!((vec4f() == vec4f(x_1468.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb66) {
        u_xlatb14 = vec4<bool>(((abs(u_xlat13.zzyz) >= abs(u_xlat13.xyxx))).xyz.xyz, u_xlatb14.w);
        u_xlatb66 = (u_xlatb14.y & u_xlatb14.x);
        let x_3160 = ((-(u_xlat13.zyzx) < vec4f())).xyw;
        u_xlatb14 = vec4<bool>(x_3160.xy, u_xlatb14.z, x_3160.z);
        u_xlat14.x = select(4.0f, 5.0f, u_xlatb14.x);
        u_xlat14.y = select(2.0f, 3.0f, u_xlatb14.y);
        u_xlat68 = select(0.0f, 1.0f, u_xlatb14.w);
        if (u_xlatb14.z) {
          x_3179 = u_xlat14.y;
        } else {
          x_3179 = u_xlat68;
        }
        u_xlat68 = x_3179;
        if (u_xlatb66) {
          x_3188 = u_xlat14.x;
        } else {
          x_3188 = u_xlat68;
        }
        u_xlat66 = x_3188;
        u_xlati66 = i32(u_xlat66);
        u_xlati26 = (u_xlati66 + u_xlati26);
      }
      u_xlati26 = (u_xlati26 << bitcast<u32>(2i));
      u_xlat14 = (vs_TEXCOORD1.yyyy * x_1468.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati26 + 1i)]);
      u_xlat14 = ((x_1468.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati26] * vs_TEXCOORD1.xxxx) + u_xlat14);
      u_xlat14 = ((x_1468.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati26 + 2i)] * vs_TEXCOORD1.zzzz) + u_xlat14);
      u_xlat14 = (u_xlat14 + x_1468.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati26 + 3i)]);
      u_xlat14 = vec4f(((u_xlat14.xyz / u_xlat14.www)).xyz, u_xlat14.w);
      let x_3242 = u_xlat14.xy;
      txVec1 = vec3f(x_3242.x, x_3242.y, u_xlat14.z);
      u_xlat26 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat66 = (1.0f + -(x_1468.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat26 = ((u_xlat26 * x_1468.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat66);
      u_xlatb66 = (0.0f >= u_xlat14.z);
      u_xlatb68 = (u_xlat14.z >= 1.0f);
      u_xlatb66 = (u_xlatb66 | u_xlatb68);
      u_xlat26 = select(u_xlat26, 1.0f, u_xlatb66);
    } else {
      u_xlat26 = 1.0f;
    }
    u_xlat66 = (-(u_xlat26) + 1.0f);
    u_xlat26 = ((u_xlat60 * u_xlat66) + u_xlat26);
    u_xlat14 = vec4f(((vec3f(u_xlat64) * x_3014.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat14.w);
    u_xlat23.x = (u_xlat23.x * u_xlat26);
    u_xlat26 = dot(u_xlat4.xyz, u_xlat13);
    u_xlat26 = clamp(u_xlat26, 0.0f, 1.0f);
    u_xlat23.x = (u_xlat23.x * u_xlat26);
    u_xlat14 = vec4f(((u_xlat23.xxx * u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlat12 = vec4f((((u_xlat12.xyz * vec3f(u_xlat65)) + u_xlat5)).xyz, u_xlat12.w);
    u_xlat23.x = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat23.x = max(u_xlat23.x, 1.17549435e-38f);
    u_xlat23.x = inverseSqrt(u_xlat23.x);
    u_xlat12 = vec4f(((u_xlat23.xxx * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat23.x = dot(u_xlat4.xyz, u_xlat12.xyz);
    u_xlat23.x = clamp(u_xlat23.x, 0.0f, 1.0f);
    u_xlat65 = dot(u_xlat13, u_xlat12.xyz);
    u_xlat65 = clamp(u_xlat65, 0.0f, 1.0f);
    u_xlat23.x = (u_xlat23.x * u_xlat23.x);
    u_xlat23.x = ((u_xlat23.x * u_xlat2.x) + 1.00001001358032226562f);
    u_xlat65 = (u_xlat65 * u_xlat65);
    u_xlat23.x = (u_xlat23.x * u_xlat23.x);
    u_xlat65 = max(u_xlat65, 0.10000000149011611938f);
    u_xlat23.x = (u_xlat23.x * u_xlat65);
    u_xlat23.x = (u_xlat43 * u_xlat23.x);
    u_xlat23.x = (u_xlat62 / u_xlat23.x);
    u_xlat12 = vec4f((((u_xlat11 * u_xlat23.xxx) + u_xlat10)).xyz, u_xlat12.w);
    let x_3423 = ((u_xlat12.xyz * u_xlat14.xyz) + u_xlat9.xzw);
    u_xlat9 = vec4f(x_3423.x, u_xlat9.y, x_3423.yz);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu22 = (u_xlatu6 >> 2u);
  param_29 = bitcast<i32>(u_xlatu6);
  param_30 = 0i;
  param_31 = 1i;
  let x_3436 = int_bitfieldExtract_i1_i1_i1_(&(param_29), &(param_30), &(param_31));
  param_32 = bitcast<i32>(u_xlatu6);
  param_33 = 1i;
  param_34 = 1i;
  let x_3442 = int_bitfieldExtract_i1_i1_i1_(&(param_32), &(param_33), &(param_34));
  u_xlati6 = vec4i(vec2i(x_3436, x_3442).xy, u_xlati6.zw);
  u_xlati12 = bitcast<vec2i>((bitcast<vec2u>(u_xlati6.xx) & bitcast<vec2u>(x_2006.urp_ZBins[bitcast<i32>(u_xlatu22)].wy)));
  let x_3460 = ~(u_xlati6.xy);
  u_xlati6 = vec4i(x_3460.x, u_xlati6.yz, x_3460.y);
  u_xlati22 = bitcast<vec2i>((bitcast<vec2u>(u_xlati6.xx) & bitcast<vec2u>(x_2006.urp_ZBins[bitcast<i32>(u_xlatu22)].zx)));
  u_xlati22 = bitcast<vec2i>((bitcast<vec2u>(u_xlati22) | bitcast<vec2u>(u_xlati12)));
  u_xlati22 = bitcast<vec2i>((bitcast<vec2u>(u_xlati6.yw) & bitcast<vec2u>(u_xlati22)));
  u_xlatu22 = (bitcast<u32>(u_xlati22.y) | bitcast<u32>(u_xlati22.x));
  u_xlatu12.x = u_xlatu67;
  u_xlatu12.y = u_xlatu26.y;
  u_xlati52 = 0i;
  u_xlatu72 = u_xlatu22;
  let x_3503 = u_xlat9.xzw;
  u_xlat6 = vec4f(x_3503.xy, u_xlat6.z, x_3503.z);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu42 = (u_xlatu72 >> 16u);
    u_xlati23 = u_xlati52;
    u_xlatu65 = u_xlatu72;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb68 = (u_xlati23 == 0i);
      u_xlatu70 = (u_xlatu65 & 65535u);
      u_xlatb70 = (u_xlatu42 >= u_xlatu70);
      u_xlatb68 = (u_xlatb68 & u_xlatb70);
      if (!(u_xlatb68)) {
        break;
      }
      param_35 = u_xlatu65;
      param_36 = 5i;
      param_37 = 11i;
      let x_3542 = uint_bitfieldExtract_u1_i1_i1_(&(param_35), &(param_36), &(param_37));
      u_xlatu68 = x_3542;
      u_xlatu13 = (vec4u(u_xlatu68) + u_xlatu12.xxyy);
      u_xlatu14 = (u_xlatu13.yw >> x_2149);
      param_38 = bitcast<i32>(u_xlatu13.x);
      param_39 = 0i;
      param_40 = 1i;
      let x_3558 = int_bitfieldExtract_i1_i1_i1_(&(param_38), &(param_39), &(param_40));
      param_41 = bitcast<i32>(u_xlatu13.y);
      param_42 = 1i;
      param_43 = 1i;
      let x_3565 = int_bitfieldExtract_i1_i1_i1_(&(param_41), &(param_42), &(param_43));
      param_44 = bitcast<i32>(u_xlatu13.z);
      param_45 = 0i;
      param_46 = 1i;
      let x_3572 = int_bitfieldExtract_i1_i1_i1_(&(param_44), &(param_45), &(param_46));
      param_47 = bitcast<i32>(u_xlatu13.w);
      param_48 = 1i;
      param_49 = 1i;
      let x_3579 = int_bitfieldExtract_i1_i1_i1_(&(param_47), &(param_48), &(param_49));
      u_xlati13 = vec4i(x_3558, x_3565, x_3572, x_3579);
      u_xlati54 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2188.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2188.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx))).xy, u_xlati16.zw);
      let x_3618 = bitcast<vec2i>((bitcast<vec2u>(u_xlati54) | bitcast<vec2u>(u_xlati16.xy)));
      u_xlati14 = vec3i(x_3618.x, u_xlati14.y, x_3618.y);
      u_xlati70 = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati71 = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati70 = bitcast<i32>((bitcast<u32>(u_xlati70) | bitcast<u32>(u_xlati71)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2006.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_2006.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.z);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati71 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati71 = bitcast<i32>((bitcast<u32>(u_xlati71) | bitcast<u32>(u_xlati13.x)));
      u_xlati70 = bitcast<i32>((bitcast<u32>(u_xlati70) & bitcast<u32>(u_xlati71)));
      u_xlati71 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu65) & 31i)));
      u_xlati70 = bitcast<i32>((bitcast<u32>(u_xlati70) & bitcast<u32>(u_xlati71)));
      u_xlati68 = (bitcast<i32>(u_xlatu68) << bitcast<u32>(5i));
      u_xlatu68 = (u_xlatu42 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati68)))));
      u_xlatu68 = min(u_xlatu68, 31u);
      u_xlatu68 = (bitcast<u32>(-(bitcast<i32>(u_xlatu68))) + 31u);
      u_xlatu68 = (4294967295u >> (u_xlatu68 & 31u));
      u_xlati23 = bitcast<i32>((u_xlatu68 & bitcast<u32>(u_xlati70)));
      u_xlati68 = (bitcast<i32>(u_xlatu65) + 32i);
      u_xlatu65 = (bitcast<u32>(u_xlati68) & 4294967264u);
    }
    u_xlatu72 = u_xlatu65;
    if ((u_xlati23 == 0i)) {
      break;
    }
    u_xlati42 = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati23)));
    u_xlati68 = (1i << bitcast<u32>((u_xlati42 & 31i)));
    u_xlati52 = bitcast<i32>((bitcast<u32>(u_xlati23) ^ bitcast<u32>(u_xlati68)));
    u_xlati68 = (bitcast<i32>(u_xlatu72) + -32i);
    u_xlati68 = bitcast<i32>((bitcast<u32>(u_xlati68) & 65504u));
    u_xlati42 = (u_xlati42 + u_xlati68);
    u_xlati42 = (bitcast<i32>(u_xlatu9.y) + u_xlati42);
    u_xlat13 = ((-(vs_TEXCOORD1) * x_3014.x_AdditionalLightsPosition[u_xlati42].www) + x_3014.x_AdditionalLightsPosition[u_xlati42].xyz);
    u_xlat68 = dot(u_xlat13, u_xlat13);
    u_xlat68 = max(u_xlat68, 0.00006103515625f);
    u_xlat70 = inverseSqrt(u_xlat68);
    u_xlat14 = vec4f(((vec3f(u_xlat70) * u_xlat13)).xyz, u_xlat14.w);
    u_xlat71 = (1.0f / u_xlat68);
    u_xlat68 = (u_xlat68 * x_3014.x_AdditionalLightsAttenuation[u_xlati42].x);
    u_xlat68 = ((-(u_xlat68) * u_xlat68) + 1.0f);
    u_xlat68 = max(u_xlat68, 0.0f);
    u_xlat68 = (u_xlat68 * u_xlat68);
    u_xlat68 = (u_xlat68 * u_xlat71);
    u_xlat71 = dot(x_3014.x_AdditionalLightsSpotDir[u_xlati42].xyz, u_xlat14.xyz);
    u_xlat71 = ((u_xlat71 * x_3014.x_AdditionalLightsAttenuation[u_xlati42].z) + x_3014.x_AdditionalLightsAttenuation[u_xlati42].w);
    u_xlat71 = clamp(u_xlat71, 0.0f, 1.0f);
    u_xlat71 = (u_xlat71 * u_xlat71);
    u_xlat68 = (u_xlat68 * u_xlat71);
    u_xlatb71 = (u_xlati42 < 0i);
    u_xlati73 = i32(x_1468.x_AdditionalShadowParams[u_xlati42].w);
    u_xlati71 = select(u_xlati73, -1i, u_xlatb71);
    u_xlatb73 = (u_xlati71 >= 0i);
    if (u_xlatb73) {
      u_xlatb73 = any(!((vec4f() == vec4f(x_1468.x_AdditionalShadowParams[u_xlati42].z))));
      if (u_xlatb73) {
        u_xlatb15 = vec4<bool>(((abs(u_xlat14.zzyz) >= abs(u_xlat14.xyxx))).xyz.xyz, u_xlatb15.w);
        u_xlatb73 = (u_xlatb15.y & u_xlatb15.x);
        let x_3895 = ((-(u_xlat14.zyzx) < vec4f())).xyw;
        u_xlatb15 = vec4<bool>(x_3895.xy, u_xlatb15.z, x_3895.z);
        u_xlat15.x = select(4.0f, 5.0f, u_xlatb15.x);
        u_xlat15.y = select(2.0f, 3.0f, u_xlatb15.y);
        u_xlat74 = select(0.0f, 1.0f, u_xlatb15.w);
        if (u_xlatb15.z) {
          x_3912 = u_xlat15.y;
        } else {
          x_3912 = u_xlat74;
        }
        u_xlat74 = x_3912;
        if (u_xlatb73) {
          x_3921 = u_xlat15.x;
        } else {
          x_3921 = u_xlat74;
        }
        u_xlat73 = x_3921;
        u_xlati73 = i32(u_xlat73);
        u_xlati71 = (u_xlati71 + u_xlati73);
      }
      u_xlati71 = (u_xlati71 << bitcast<u32>(2i));
      u_xlat15 = (vs_TEXCOORD1.yyyy * x_1468.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati71 + 1i)]);
      u_xlat15 = ((x_1468.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati71] * vs_TEXCOORD1.xxxx) + u_xlat15);
      u_xlat15 = ((x_1468.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati71 + 2i)] * vs_TEXCOORD1.zzzz) + u_xlat15);
      u_xlat15 = (u_xlat15 + x_1468.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati71 + 3i)]);
      u_xlat15 = vec4f(((u_xlat15.xyz / u_xlat15.www)).xyz, u_xlat15.w);
      let x_3975 = u_xlat15.xy;
      txVec2 = vec3f(x_3975.x, x_3975.y, u_xlat15.z);
      u_xlat71 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      u_xlat73 = (1.0f + -(x_1468.x_AdditionalShadowParams[u_xlati42].x));
      u_xlat71 = ((u_xlat71 * x_1468.x_AdditionalShadowParams[u_xlati42].x) + u_xlat73);
      u_xlatb73 = (0.0f >= u_xlat15.z);
      u_xlatb74 = (u_xlat15.z >= 1.0f);
      u_xlatb73 = (u_xlatb73 | u_xlatb74);
      u_xlat71 = select(u_xlat71, 1.0f, u_xlatb73);
    } else {
      u_xlat71 = 1.0f;
    }
    u_xlat73 = (-(u_xlat71) + 1.0f);
    u_xlat71 = ((u_xlat60 * u_xlat73) + u_xlat71);
    u_xlat15 = vec4f(((vec3f(u_xlat64) * x_3014.x_AdditionalLightsColor[u_xlati42].xyz)).xyz, u_xlat15.w);
    u_xlat42.x = (u_xlat68 * u_xlat71);
    u_xlat68 = dot(u_xlat4.xyz, u_xlat14.xyz);
    u_xlat68 = clamp(u_xlat68, 0.0f, 1.0f);
    u_xlat42.x = (u_xlat42.x * u_xlat68);
    u_xlat15 = vec4f(((u_xlat42.xxx * u_xlat15.xyz)).xyz, u_xlat15.w);
    u_xlat13 = ((u_xlat13 * vec3f(u_xlat70)) + u_xlat5);
    u_xlat42.x = dot(u_xlat13, u_xlat13);
    u_xlat42.x = max(u_xlat42.x, 1.17549435e-38f);
    u_xlat42.x = inverseSqrt(u_xlat42.x);
    u_xlat13 = (u_xlat42.xxx * u_xlat13);
    u_xlat42.x = dot(u_xlat4.xyz, u_xlat13);
    u_xlat42.x = clamp(u_xlat42.x, 0.0f, 1.0f);
    u_xlat68 = dot(u_xlat14.xyz, u_xlat13);
    u_xlat68 = clamp(u_xlat68, 0.0f, 1.0f);
    u_xlat42.x = (u_xlat42.x * u_xlat42.x);
    u_xlat42.x = ((u_xlat42.x * u_xlat2.x) + 1.00001001358032226562f);
    u_xlat68 = (u_xlat68 * u_xlat68);
    u_xlat42.x = (u_xlat42.x * u_xlat42.x);
    u_xlat68 = max(u_xlat68, 0.10000000149011611938f);
    u_xlat42.x = (u_xlat42.x * u_xlat68);
    u_xlat42.x = (u_xlat43 * u_xlat42.x);
    u_xlat42.x = (u_xlat62 / u_xlat42.x);
    u_xlat13 = ((u_xlat11 * u_xlat42.xxx) + u_xlat10);
    let x_4141 = ((u_xlat13 * u_xlat15.xyz) + u_xlat6.xyw);
    u_xlat6 = vec4f(x_4141.xy, u_xlat6.z, x_4141.z);
  }
  u_xlat2 = vec4f((((u_xlat8.xyz * vec3f(u_xlat63)) + u_xlat7.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat6.xyw + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat60 = ((-(u_xlat4.y) * 0.44999998807907104492f) + 0.55000001192092895508f);
  u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
  u_xlat23 = (vec3f(u_xlat60) * x_290.x_DesertBounce.xyz);
  u_xlat21 = (u_xlat21 * u_xlat23);
  let x_4186 = vec3f(x_110.x_BounceScale, x_110.x_BounceScale, x_110.x_BounceScale);
  u_xlat21 = (u_xlat21 * vec3f(x_4186.x, x_4186.y, x_4186.z));
  u_xlat21 = ((u_xlat21 * u_xlat3.xxx) + u_xlat2.xyz);
  u_xlat21 = (u_xlat21 + x_110.x_EmissionColor.xyz);
  u_xlatb60 = (x_290.x_DesertSunDir.w >= 0.5f);
  if (u_xlatb60) {
    u_xlat60 = max(u_xlat1.x, 0.00009999999747378752f);
    u_xlat2 = vec4f(((u_xlat0.xyz / vec3f(u_xlat60))).xyz, u_xlat2.w);
    u_xlat0.x = (u_xlat1.x + -(x_290.x_DesertHaze.z));
    u_xlat0.x = max(u_xlat0.x, 0.0f);
    u_xlat40.x = (x_290.x_WorldSpaceCameraPos.y + -(x_290.x_DesertHaze2.x));
    u_xlat60 = (u_xlat0.x / u_xlat60);
    u_xlat20.x = (u_xlat60 * u_xlat0.y);
    u_xlat40.x = max(u_xlat40.x, -20.0f);
    u_xlat40.x = (u_xlat40.x * -(x_290.x_DesertHaze.y));
    u_xlat40.x = (u_xlat40.x * 1.44269502162933349609f);
    u_xlat40.x = exp2(u_xlat40.x);
    u_xlatb60 = (0.00999999977648258209f < abs(u_xlat20.x));
    u_xlat1.x = (u_xlat20.x * -(x_290.x_DesertHaze.y));
    u_xlat1.x = (u_xlat1.x * 1.44269502162933349609f);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = (-(u_xlat1.x) + 1.0f);
    u_xlat1.x = (u_xlat40.x * u_xlat1.x);
    u_xlat20.x = (u_xlat20.x * x_290.x_DesertHaze.y);
    u_xlat20.x = (u_xlat1.x / u_xlat20.x);
    if (u_xlatb60) {
      x_4315 = u_xlat20.x;
    } else {
      x_4315 = u_xlat40.x;
    }
    u_xlat20.x = x_4315;
    u_xlat40.x = (u_xlat0.x * x_290.x_DesertHaze.x);
    u_xlat0.x = (u_xlat0.x * x_290.x_DesertHazeTint.w);
    u_xlat0.x = ((u_xlat40.x * u_xlat20.x) + u_xlat0.x);
    u_xlat20.x = (u_xlat0.x * -1.44269502162933349609f);
    u_xlat20.x = exp2(u_xlat20.x);
    u_xlat20.x = (-(u_xlat20.x) + 1.0f);
    u_xlat20.x = min(u_xlat20.x, x_290.x_DesertHaze.w);
    u_xlat2.w = 0.03500000014901161194f;
    u_xlat40.x = dot(u_xlat2.xzw, u_xlat2.xzw);
    u_xlat40.x = inverseSqrt(u_xlat40.x);
    u_xlat3 = vec4f(((u_xlat40.xxx * u_xlat2.xwz)).xyz, u_xlat3.w);
    u_xlat60 = min(abs(u_xlat3.z), abs(u_xlat3.x));
    u_xlat1.x = max(abs(u_xlat3.z), abs(u_xlat3.x));
    u_xlat1.x = (1.0f / u_xlat1.x);
    u_xlat60 = (u_xlat60 * u_xlat1.x);
    u_xlat1.x = (u_xlat60 * u_xlat60);
    u_xlat63 = ((u_xlat1.x * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat63 = ((u_xlat1.x * u_xlat63) + 0.18014100193977355957f);
    u_xlat63 = ((u_xlat1.x * u_xlat63) + -0.33029949665069580078f);
    u_xlat1.x = ((u_xlat1.x * u_xlat63) + 0.99986600875854492188f);
    u_xlat63 = (u_xlat60 * u_xlat1.x);
    u_xlatb4 = (abs(u_xlat3.z) < abs(u_xlat3.x));
    u_xlat63 = ((u_xlat63 * -2.0f) + 1.57079637050628662109f);
    u_xlat63 = select(0.0f, u_xlat63, u_xlatb4);
    u_xlat60 = ((u_xlat60 * u_xlat1.x) + u_xlat63);
    u_xlatb1.x = (u_xlat3.z < -(u_xlat3.z));
    u_xlat1.x = select(0.0f, -3.14159274101257324219f, u_xlatb1.x);
    u_xlat60 = (u_xlat60 + u_xlat1.x);
    u_xlat1.x = min(u_xlat3.z, u_xlat3.x);
    u_xlat3.x = max(u_xlat3.z, u_xlat3.x);
    u_xlatb1.x = (u_xlat1.x < -(u_xlat1.x));
    u_xlatb3 = (u_xlat3.x >= -(u_xlat3.x));
    u_xlatb1.x = (u_xlatb1.x & u_xlatb3);
    if (u_xlatb1.x) {
      x_4511 = -(u_xlat60);
    } else {
      x_4511 = u_xlat60;
    }
    u_xlat60 = x_4511;
    u_xlat4.x = ((u_xlat60 * 0.15915493667125701904f) + 0.5f);
    u_xlat4.y = 0.5f;
    let x_4533 = textureSampleLevel(x_DesertHorizonRing, sampler_DesertHorizonRing, u_xlat4.xy, 0.0f).xyz;
    u_xlat3 = vec4f(x_4533.x, u_xlat3.y, x_4533.yz);
    u_xlat60 = ((-(u_xlat2.w) * u_xlat40.x) + 1.0f);
    u_xlat60 = sqrt(u_xlat60);
    u_xlat1.x = ((u_xlat40.x * -0.00065552548039704561f) + 0.07426100224256515503f);
    u_xlat1.x = ((u_xlat1.x * u_xlat3.y) + -0.21211439371109008789f);
    u_xlat1.x = ((u_xlat1.x * u_xlat3.y) + 1.57072877883911132812f);
    u_xlat60 = ((-(u_xlat1.x) * u_xlat60) + 1.57079637050628662109f);
    u_xlat4 = vec4f(((vec2f(u_xlat60) * vec2f(57.295780181884765625f, -9.18448162078857421875f))).xy, u_xlat4.zw);
    u_xlat5 = (u_xlat3.xzw * x_290.x_DesertSkyGrade0.xyz);
    u_xlat1.x = dot(u_xlat5, x_602);
    u_xlat3 = vec4f((((u_xlat3.xzw * x_290.x_DesertSkyGrade0.xyz) + -(u_xlat1.xxx))).xyz, u_xlat3.w);
    u_xlat3 = vec4f((((x_290.x_DesertSkyGrade0.www * u_xlat3.xyz) + u_xlat1.xxx)).xyz, u_xlat3.w);
    u_xlat3 = vec4f(max(u_xlat3.xyz, vec3f()).xyz, u_xlat3.w);
    u_xlat1.x = max(x_290.x_DesertSkyGrade1.w, 0.10000000149011611938f);
    u_xlat1.x = (u_xlat4.x / u_xlat1.x);
    u_xlat1.x = (-(u_xlat1.x) + 1.0f);
    u_xlat1.x = max(u_xlat1.x, 0.0f);
    u_xlat1.x = (u_xlat1.x * u_xlat1.x);
    let x_4649 = (x_290.x_DesertSkyGrade1.xyz + x_4648);
    u_xlat4 = vec4f(x_4649.x, u_xlat4.y, x_4649.yz);
    let x_4657 = ((u_xlat1.xxx * u_xlat4.xzw) + x_2563);
    u_xlat4 = vec4f(x_4657.x, u_xlat4.y, x_4657.yz);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat4.xzw)).xyz, u_xlat3.w);
    u_xlat60 = ((u_xlat60 * 57.295780181884765625f) + -(x_290.x_DesertSkyGrade2.w));
    u_xlat1.x = (-(x_290.x_DesertSkyGrade2.w) + 90.0f);
    u_xlat1.x = max(u_xlat1.x, 1.0f);
    u_xlat60 = (u_xlat60 / u_xlat1.x);
    u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
    let x_4692 = (x_290.x_DesertSkyGrade2.xyz + x_4648);
    u_xlat4 = vec4f(x_4692.x, u_xlat4.y, x_4692.yz);
    let x_4700 = ((vec3f(u_xlat60) * u_xlat4.xzw) + x_2563);
    u_xlat4 = vec4f(x_4700.x, u_xlat4.y, x_4700.yz);
    u_xlat3 = vec4f(((u_xlat3.xyz * u_xlat4.xzw)).xyz, u_xlat3.w);
    u_xlat40 = ((u_xlat2.xz * u_xlat40.xx) + x_4716);
    u_xlat1.x = dot(u_xlat40, u_xlat40);
    u_xlat1.x = inverseSqrt(u_xlat1.x);
    u_xlat40 = (u_xlat40 * u_xlat1.xx);
    let x_4733 = (x_290.x_DesertSunDir.xz + x_4716);
    u_xlat4 = vec4f(x_4733.x, u_xlat4.y, x_4733.y, u_xlat4.w);
    u_xlat1.x = dot(u_xlat4.xz, u_xlat4.xz);
    u_xlat1.x = inverseSqrt(u_xlat1.x);
    let x_4750 = (u_xlat1.xx * u_xlat4.xz);
    u_xlat4 = vec4f(x_4750.x, u_xlat4.y, x_4750.y, u_xlat4.w);
    u_xlat40.x = dot(u_xlat40, u_xlat4.xz);
    u_xlat40.x = ((u_xlat40.x * 0.5f) + 0.5f);
    u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
    u_xlat60 = max(x_290.x_DesertSkyGrade3.w, 1.0f);
    u_xlat40.x = log2(u_xlat40.x);
    u_xlat40.x = (u_xlat40.x * u_xlat60);
    u_xlat40.x = exp2(u_xlat40.x);
    u_xlat60 = exp2(u_xlat4.y);
    u_xlat40.x = (u_xlat60 * u_xlat40.x);
    u_xlat60 = (u_xlat40.x * 1.5f);
    u_xlat60 = min(u_xlat60, 1.0f);
    u_xlat4 = vec4f((((vec3f(u_xlat60) * vec3f(0.0f, -0.19999998807907104492f, -0.33999997377395629883f)) + x_2563)).xyz, u_xlat4.w);
    u_xlat5 = (u_xlat40.xxx * x_290.x_DesertSkyGrade3.xyz);
    u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat4.xyz) + u_xlat5)).xyz, u_xlat3.w);
    u_xlat0.x = (u_xlat0.x * x_290.x_DesertHaze2.w);
    u_xlat0.x = (u_xlat0.x * 0.44999998807907104492f);
    u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
    u_xlat3 = vec4f(((u_xlat3.xyz + -(x_290.x_DesertHazeTint.xyz))).xyz, u_xlat3.w);
    let x_4852 = ((u_xlat0.xxx * u_xlat3.xyz) + x_290.x_DesertHazeTint.xyz);
    u_xlat0 = vec4f(x_4852.x, u_xlat0.y, x_4852.yz);
    u_xlat1.x = dot(u_xlat2.xyz, x_290.x_DesertSunDir.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
    u_xlat2 = vec4f(((x_290.x_DesertSunColor.xyz * x_290.x_DesertHaze2.yyy)).xyz, u_xlat2.w);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = (u_xlat1.x * x_290.x_DesertHaze2.z);
    u_xlat1.x = exp2(u_xlat1.x);
    let x_4896 = ((u_xlat2.xyz * u_xlat1.xxx) + u_xlat0.xzw);
    u_xlat0 = vec4f(x_4896.x, u_xlat0.y, x_4896.yz);
    let x_4903 = (-(u_xlat21) + u_xlat0.xzw);
    u_xlat0 = vec4f(x_4903.x, u_xlat0.y, x_4903.yz);
    u_xlat21 = ((u_xlat20.xxx * u_xlat0.xzw) + u_xlat21);
  }
  SV_Target0 = vec4f(u_xlat21.xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(1) vs_TEXCOORD1_param : vec3f, @location(0) vs_TEXCOORD0_param : vec2f, @location(2) vs_TEXCOORD2_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(3) vs_TEXCOORD3_param : vec4f, @location(4) vs_TEXCOORD5_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

