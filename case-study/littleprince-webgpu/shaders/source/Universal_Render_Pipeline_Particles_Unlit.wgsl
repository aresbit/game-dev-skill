//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
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
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_65 : VGlobals;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var x_175 : f32;
  var x_186 : f32;
  var x_197 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1 = (u_xlat0.yyyy * x_65.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat1 + x_65.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD0 = in_TEXCOORD0;
  vs_COLOR0 = in_COLOR0;
  vs_TEXCOORD1 = vec4f(u_xlat0.xyz, vs_TEXCOORD1.w);
  u_xlat0 = (-(u_xlat0) + x_65.x_WorldSpaceCameraPos);
  vs_TEXCOORD1.w = 0.0f;
  u_xlat1.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD2 = (vec3f(u_xlat6) * u_xlat1.xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = inverseSqrt(u_xlat6);
  u_xlat0 = (vec3f(u_xlat6) * u_xlat0);
  u_xlatb6 = (x_65.unity_OrthoParams.w == 0.0f);
  if (u_xlatb6) {
    x_175 = u_xlat0.x;
  } else {
    x_175 = x_65.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_175;
  if (u_xlatb6) {
    x_186 = u_xlat0.y;
  } else {
    x_186 = x_65.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_186;
  if (u_xlatb6) {
    x_197 = u_xlat0.z;
  } else {
    x_197 = x_65.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_197;
  vs_TEXCOORD8 = vec3f();
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(48) */
  x_ScaleBiasRt : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(0) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_133 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> SV_Target0 : vec4f;

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat2 : f32;
  var u_xlat1 : vec4f;
  var u_xlatb0 : bool;
  var x_159 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  let x_38 = x_32.x_ScaledScreenParams.xy;
  u_xlat0 = vec3f(((vec2f(1.0f) / vec2f(x_38.x, x_38.y))).xy, u_xlat0.z);
  u_xlat0 = vec3f(((u_xlat0.xy * hlslcc_FragCoord.xy)).xy, u_xlat0.z);
  u_xlat2 = ((u_xlat0.y * x_32.x_ScaleBiasRt.x) + x_32.x_ScaleBiasRt.y);
  u_xlat0.z = (-(u_xlat2) + 1.0f);
  let x_81 = u_xlat0;
  let x_85 = x_32.x_GlobalMipBias.x;
  let x_86 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_81.xz, x_85);
  u_xlat0.x = x_86.x;
  u_xlat0.x = (u_xlat0.x + -(x_32.x_AmbientOcclusionParam.x));
  u_xlat0.x = (u_xlat0.x + 1.0f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x + -1.0f);
  u_xlat0.x = ((x_32.x_AmbientOcclusionParam.w * u_xlat0.x) + 1.0f);
  let x_126 = vs_TEXCOORD0;
  let x_128 = x_32.x_GlobalMipBias.x;
  let x_129 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_126, x_128);
  u_xlat1 = x_129;
  u_xlat1 = (u_xlat1 * x_133.x_BaseColor);
  u_xlat1 = (u_xlat1 * vs_COLOR0);
  SV_Target0 = vec4f(((u_xlat0.xxx * u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlatb0 = (x_133.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_159 = u_xlat1.w;
  } else {
    x_159 = 1.0f;
  }
  SV_Target0.w = x_159;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
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
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_65 : VGlobals;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var x_175 : f32;
  var x_186 : f32;
  var x_197 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1 = (u_xlat0.yyyy * x_65.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat1 + x_65.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD0 = in_TEXCOORD0;
  vs_COLOR0 = in_COLOR0;
  vs_TEXCOORD1 = vec4f(u_xlat0.xyz, vs_TEXCOORD1.w);
  u_xlat0 = (-(u_xlat0) + x_65.x_WorldSpaceCameraPos);
  vs_TEXCOORD1.w = 0.0f;
  u_xlat1.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD2 = (vec3f(u_xlat6) * u_xlat1.xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = inverseSqrt(u_xlat6);
  u_xlat0 = (vec3f(u_xlat6) * u_xlat0);
  u_xlatb6 = (x_65.unity_OrthoParams.w == 0.0f);
  if (u_xlatb6) {
    x_175 = u_xlat0.x;
  } else {
    x_175 = x_65.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_175;
  if (u_xlatb6) {
    x_186 = u_xlat0.y;
  } else {
    x_186 = x_65.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_186;
  if (u_xlatb6) {
    x_197 = u_xlat0.z;
  } else {
    x_197 = x_65.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_197;
  vs_TEXCOORD8 = vec3f();
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(1) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(1) @binding(1) var<uniform> x_38 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var x_61 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_23 = vs_TEXCOORD0;
  let x_33 = x_26.x_GlobalMipBias.x;
  let x_34 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_33);
  u_xlat0 = x_34;
  u_xlat0 = (u_xlat0 * x_38.x_BaseColor);
  u_xlat0 = (u_xlat0 * vs_COLOR0);
  u_xlatb1 = (x_38.x_Surface == 1.0f);
  if (u_xlatb1) {
    x_61 = u_xlat0.w;
  } else {
    x_61 = 1.0f;
  }
  SV_Target0.w = x_61;
  SV_Target0 = vec4f(u_xlat0.xyz.xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
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
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_65 : VGlobals;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var x_175 : f32;
  var x_186 : f32;
  var x_197 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1 = (u_xlat0.yyyy * x_65.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat1 + x_65.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD0 = in_TEXCOORD0;
  vs_COLOR0 = in_COLOR0;
  vs_TEXCOORD1 = vec4f(u_xlat0.xyz, vs_TEXCOORD1.w);
  u_xlat0 = (-(u_xlat0) + x_65.x_WorldSpaceCameraPos);
  vs_TEXCOORD1.w = 0.0f;
  u_xlat1.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD2 = (vec3f(u_xlat6) * u_xlat1.xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = inverseSqrt(u_xlat6);
  u_xlat0 = (vec3f(u_xlat6) * u_xlat0);
  u_xlatb6 = (x_65.unity_OrthoParams.w == 0.0f);
  if (u_xlatb6) {
    x_175 = u_xlat0.x;
  } else {
    x_175 = x_65.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_175;
  if (u_xlatb6) {
    x_186 = u_xlat0.y;
  } else {
    x_186 = x_65.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_186;
  if (u_xlatb6) {
    x_197 = u_xlat0.z;
  } else {
    x_197 = x_65.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_197;
  vs_TEXCOORD8 = vec3f();
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(48) */
  x_ProjectionParams : vec4f,
  /* @offset(64) */
  x_ScaleBiasRt : vec4f,
  /* @offset(80) */
  unity_FogParams : vec4f,
  /* @offset(96) */
  unity_FogColor : vec4f,
  /* @offset(112) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

@group(0) @binding(0) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_135 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> SV_Target0 : vec4f;

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat2 : f32;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb0 : bool;
  var x_225 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  let x_40 = x_34.x_ScaledScreenParams.xy;
  u_xlat0 = vec3f(((vec2f(1.0f) / vec2f(x_40.x, x_40.y))).xy, u_xlat0.z);
  u_xlat0 = vec3f(((u_xlat0.xy * hlslcc_FragCoord.xy)).xy, u_xlat0.z);
  u_xlat2 = ((u_xlat0.y * x_34.x_ScaleBiasRt.x) + x_34.x_ScaleBiasRt.y);
  u_xlat0.z = (-(u_xlat2) + 1.0f);
  let x_83 = u_xlat0;
  let x_87 = x_34.x_GlobalMipBias.x;
  let x_88 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_83.xz, x_87);
  u_xlat0.x = x_88.x;
  u_xlat0.x = (u_xlat0.x + -(x_34.x_AmbientOcclusionParam.x));
  u_xlat0.x = (u_xlat0.x + 1.0f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x + -1.0f);
  u_xlat0.x = ((x_34.x_AmbientOcclusionParam.w * u_xlat0.x) + 1.0f);
  let x_128 = vs_TEXCOORD0;
  let x_130 = x_34.x_GlobalMipBias.x;
  let x_131 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_128, x_130);
  u_xlat1 = x_131;
  u_xlat1 = (u_xlat1 * x_135.x_BaseColor);
  u_xlat1 = (u_xlat1 * vs_COLOR0);
  u_xlat0 = (u_xlat0.xxx * u_xlat1.xyz);
  u_xlat6 = (vs_TEXCOORD1.y * x_34.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat6 = ((x_34.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD1.x) + u_xlat6);
  u_xlat6 = ((x_34.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD1.z) + u_xlat6);
  u_xlat6 = (u_xlat6 + x_34.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat6 = (-(u_xlat6) + -(x_34.x_ProjectionParams.y));
  u_xlat6 = max(u_xlat6, 0.0f);
  u_xlat6 = (u_xlat6 * x_34.unity_FogParams.x);
  u_xlat6 = exp2(-(u_xlat6));
  u_xlat6 = min(u_xlat6, 1.0f);
  u_xlat1.x = (-(u_xlat6) + 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xxx * x_34.unity_FogColor.xyz)).xyz, u_xlat1.w);
  SV_Target0 = vec4f((((u_xlat0 * vec3f(u_xlat6)) + u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlatb0 = (x_135.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_225 = u_xlat1.w;
  } else {
    x_225 = 1.0f;
  }
  SV_Target0.w = x_225;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f, @location(2) vs_TEXCOORD1_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
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
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_65 : VGlobals;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var x_175 : f32;
  var x_186 : f32;
  var x_197 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1 = (u_xlat0.yyyy * x_65.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat1 + x_65.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD0 = in_TEXCOORD0;
  vs_COLOR0 = in_COLOR0;
  vs_TEXCOORD1 = vec4f(u_xlat0.xyz, vs_TEXCOORD1.w);
  u_xlat0 = (-(u_xlat0) + x_65.x_WorldSpaceCameraPos);
  vs_TEXCOORD1.w = 0.0f;
  u_xlat1.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD2 = (vec3f(u_xlat6) * u_xlat1.xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = inverseSqrt(u_xlat6);
  u_xlat0 = (vec3f(u_xlat6) * u_xlat0);
  u_xlatb6 = (x_65.unity_OrthoParams.w == 0.0f);
  if (u_xlatb6) {
    x_175 = u_xlat0.x;
  } else {
    x_175 = x_65.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_175;
  if (u_xlatb6) {
    x_186 = u_xlat0.y;
  } else {
    x_186 = x_65.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_186;
  if (u_xlatb6) {
    x_197 = u_xlat0.z;
  } else {
    x_197 = x_65.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_197;
  vs_TEXCOORD8 = vec3f();
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(16) */
  x_ProjectionParams : vec4f,
  /* @offset(32) */
  unity_FogParams : vec4f,
  /* @offset(48) */
  unity_FogColor : vec4f,
  /* @offset(64) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

var<private> vs_TEXCOORD1 : vec4f;

@group(1) @binding(0) var<uniform> x_22 : PGlobals;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(1) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_107 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat2 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlatb0 : bool;
  var x_134 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (vs_TEXCOORD1.y * x_22.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD1.x) + u_xlat0);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD1.z) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_22.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat0 = (-(u_xlat0) + -(x_22.x_ProjectionParams.y));
  u_xlat0 = max(u_xlat0, 0.0f);
  u_xlat0 = (u_xlat0 * x_22.unity_FogParams.x);
  u_xlat0 = exp2(-(u_xlat0));
  u_xlat0 = min(u_xlat0, 1.0f);
  u_xlat2.x = (-(u_xlat0) + 1.0f);
  u_xlat2 = (u_xlat2.xxx * x_22.unity_FogColor.xyz);
  let x_100 = vs_TEXCOORD0;
  let x_102 = x_22.x_GlobalMipBias.x;
  let x_103 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_100, x_102);
  u_xlat1 = x_103;
  u_xlat1 = (u_xlat1 * x_107.x_BaseColor);
  u_xlat1 = (u_xlat1 * vs_COLOR0);
  SV_Target0 = vec4f((((u_xlat1.xyz * vec3f(u_xlat0)) + u_xlat2)).xyz, SV_Target0.w);
  u_xlatb0 = (x_107.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_134 = u_xlat1.w;
  } else {
    x_134 = 1.0f;
  }
  SV_Target0.w = x_134;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
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
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_65 : VGlobals;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var x_175 : f32;
  var x_186 : f32;
  var x_197 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1 = (u_xlat0.yyyy * x_65.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat1 + x_65.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD0 = in_TEXCOORD0;
  vs_COLOR0 = in_COLOR0;
  vs_TEXCOORD1 = vec4f(u_xlat0.xyz, vs_TEXCOORD1.w);
  u_xlat0 = (-(u_xlat0) + x_65.x_WorldSpaceCameraPos);
  vs_TEXCOORD1.w = 0.0f;
  u_xlat1.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD2 = (vec3f(u_xlat6) * u_xlat1.xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = inverseSqrt(u_xlat6);
  u_xlat0 = (vec3f(u_xlat6) * u_xlat0);
  u_xlatb6 = (x_65.unity_OrthoParams.w == 0.0f);
  if (u_xlatb6) {
    x_175 = u_xlat0.x;
  } else {
    x_175 = x_65.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_175;
  if (u_xlatb6) {
    x_186 = u_xlat0.y;
  } else {
    x_186 = x_65.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_186;
  if (u_xlatb6) {
    x_197 = u_xlat0.z;
  } else {
    x_197 = x_65.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_197;
  vs_TEXCOORD8 = vec3f();
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(48) */
  x_ProjectionParams : vec4f,
  /* @offset(64) */
  x_ScaleBiasRt : vec4f,
  /* @offset(80) */
  unity_FogParams : vec4f,
  /* @offset(96) */
  unity_FogColor : vec4f,
  /* @offset(112) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

@group(0) @binding(0) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_135 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> SV_Target0 : vec4f;

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat2 : f32;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb0 : bool;
  var x_226 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  let x_40 = x_34.x_ScaledScreenParams.xy;
  u_xlat0 = vec3f(((vec2f(1.0f) / vec2f(x_40.x, x_40.y))).xy, u_xlat0.z);
  u_xlat0 = vec3f(((u_xlat0.xy * hlslcc_FragCoord.xy)).xy, u_xlat0.z);
  u_xlat2 = ((u_xlat0.y * x_34.x_ScaleBiasRt.x) + x_34.x_ScaleBiasRt.y);
  u_xlat0.z = (-(u_xlat2) + 1.0f);
  let x_83 = u_xlat0;
  let x_87 = x_34.x_GlobalMipBias.x;
  let x_88 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_83.xz, x_87);
  u_xlat0.x = x_88.x;
  u_xlat0.x = (u_xlat0.x + -(x_34.x_AmbientOcclusionParam.x));
  u_xlat0.x = (u_xlat0.x + 1.0f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x + -1.0f);
  u_xlat0.x = ((x_34.x_AmbientOcclusionParam.w * u_xlat0.x) + 1.0f);
  let x_128 = vs_TEXCOORD0;
  let x_130 = x_34.x_GlobalMipBias.x;
  let x_131 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_128, x_130);
  u_xlat1 = x_131;
  u_xlat1 = (u_xlat1 * x_135.x_BaseColor);
  u_xlat1 = (u_xlat1 * vs_COLOR0);
  u_xlat0 = (u_xlat0.xxx * u_xlat1.xyz);
  u_xlat6 = (vs_TEXCOORD1.y * x_34.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat6 = ((x_34.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD1.x) + u_xlat6);
  u_xlat6 = ((x_34.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD1.z) + u_xlat6);
  u_xlat6 = (u_xlat6 + x_34.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat6 = (-(u_xlat6) + -(x_34.x_ProjectionParams.y));
  u_xlat6 = max(u_xlat6, 0.0f);
  u_xlat6 = (u_xlat6 * x_34.unity_FogParams.x);
  u_xlat6 = (u_xlat6 * -(u_xlat6));
  u_xlat6 = exp2(u_xlat6);
  u_xlat1.x = (-(u_xlat6) + 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xxx * x_34.unity_FogColor.xyz)).xyz, u_xlat1.w);
  SV_Target0 = vec4f((((u_xlat0 * vec3f(u_xlat6)) + u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlatb0 = (x_135.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_226 = u_xlat1.w;
  } else {
    x_226 = 1.0f;
  }
  SV_Target0.w = x_226;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f, @location(2) vs_TEXCOORD1_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
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
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_65 : VGlobals;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var x_175 : f32;
  var x_186 : f32;
  var x_197 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1 = (u_xlat0.yyyy * x_65.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat1 + x_65.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_TEXCOORD0 = in_TEXCOORD0;
  vs_COLOR0 = in_COLOR0;
  vs_TEXCOORD1 = vec4f(u_xlat0.xyz, vs_TEXCOORD1.w);
  u_xlat0 = (-(u_xlat0) + x_65.x_WorldSpaceCameraPos);
  vs_TEXCOORD1.w = 0.0f;
  u_xlat1.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD2 = (vec3f(u_xlat6) * u_xlat1.xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = inverseSqrt(u_xlat6);
  u_xlat0 = (vec3f(u_xlat6) * u_xlat0);
  u_xlatb6 = (x_65.unity_OrthoParams.w == 0.0f);
  if (u_xlatb6) {
    x_175 = u_xlat0.x;
  } else {
    x_175 = x_65.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_175;
  if (u_xlatb6) {
    x_186 = u_xlat0.y;
  } else {
    x_186 = x_65.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_186;
  if (u_xlatb6) {
    x_197 = u_xlat0.z;
  } else {
    x_197 = x_65.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_197;
  vs_TEXCOORD8 = vec3f();
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(16) */
  x_ProjectionParams : vec4f,
  /* @offset(32) */
  unity_FogParams : vec4f,
  /* @offset(48) */
  unity_FogColor : vec4f,
  /* @offset(64) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

var<private> vs_TEXCOORD1 : vec4f;

@group(1) @binding(0) var<uniform> x_22 : PGlobals;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(1) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_108 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat2 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlatb0 : bool;
  var x_135 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (vs_TEXCOORD1.y * x_22.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD1.x) + u_xlat0);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD1.z) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_22.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat0 = (-(u_xlat0) + -(x_22.x_ProjectionParams.y));
  u_xlat0 = max(u_xlat0, 0.0f);
  u_xlat0 = (u_xlat0 * x_22.unity_FogParams.x);
  u_xlat0 = (u_xlat0 * -(u_xlat0));
  u_xlat0 = exp2(u_xlat0);
  u_xlat2.x = (-(u_xlat0) + 1.0f);
  u_xlat2 = (u_xlat2.xxx * x_22.unity_FogColor.xyz);
  let x_101 = vs_TEXCOORD0;
  let x_103 = x_22.x_GlobalMipBias.x;
  let x_104 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_101, x_103);
  u_xlat1 = x_104;
  u_xlat1 = (u_xlat1 * x_108.x_BaseColor);
  u_xlat1 = (u_xlat1 * vs_COLOR0);
  SV_Target0 = vec4f((((u_xlat1.xyz * vec3f(u_xlat0)) + u_xlat2)).xyz, SV_Target0.w);
  u_xlatb0 = (x_108.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_135 = u_xlat1.w;
  } else {
    x_135 = 1.0f;
  }
  SV_Target0.w = x_135;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

alias Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  /* @offset(0) */
  unity_ParticleInstanceData_buf : RTArr,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_1,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_2,
  /* @offset(160) */
  unity_ParticleUVShiftData : vec4f,
  /* @offset(176) */
  unity_ParticleUseMeshColors : f32,
}

var<private> in_POSITION0 : vec4f;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(3) var<uniform> x_50 : UnityDrawCallInfo;

@group(0) @binding(4) var<storage, read> x_63 : unity_ParticleInstanceData;

@group(1) @binding(2) var<uniform> x_181 : VGlobals;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4f;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 = *(value);
  let x_17 = *(offset_1);
  let x_21 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & bitcast<u32>(~((-1i << bitcast<u32>(x_21)))));
}

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlati1 : i32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : f32;
  var u_xlatb16 : bool;
  var x_301 : vec2f;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec3u;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_521 : f32;
  var x_532 : f32;
  var x_543 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(in_POSITION0.xyz.xyz, u_xlat0.w);
  u_xlat0.w = 1.0f;
  u_xlati1 = (gl_InstanceIndex + x_50.unity_BaseInstanceID);
  u_xlat2 = vec4f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[9i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[10i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[11i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[12i]));
  u_xlat3.w = u_xlat2.y;
  u_xlat9 = vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[3i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[4i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[5i]));
  u_xlat3.y = u_xlat9.y;
  u_xlat4 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[7i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[8i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[6i])).xyz, u_xlat4.w);
  u_xlat3.z = u_xlat4.x;
  u_xlat5 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[2i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[0i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[1i])).xyz, u_xlat5.w);
  u_xlat1.x = bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[13i]);
  u_xlat1.x = floor(u_xlat1.x);
  u_xlat3.x = u_xlat5.z;
  u_xlat6.y = dot(u_xlat3, u_xlat0);
  u_xlat7 = (u_xlat6.yyyy * x_181.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat4.w = u_xlat2.x;
  u_xlat5.z = u_xlat4.y;
  u_xlat4.x = u_xlat5.y;
  u_xlat4.y = u_xlat9.x;
  u_xlat5.y = u_xlat9.z;
  u_xlat6.x = dot(u_xlat4, u_xlat0);
  u_xlat7 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat6.xxxx) + u_xlat7);
  u_xlat5.w = u_xlat2.z;
  u_xlat6.z = dot(u_xlat5, u_xlat0);
  u_xlat0 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat6.zzzz) + u_xlat7);
  gl_Position = (u_xlat0 + x_181.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat0.x = (u_xlat1.x / x_181.unity_ParticleUVShiftData.y);
  u_xlat0.x = floor(u_xlat0.x);
  u_xlat8 = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.y) + u_xlat1.x);
  u_xlat8 = floor(u_xlat8);
  u_xlat1.x = (u_xlat8 * x_181.unity_ParticleUVShiftData.z);
  u_xlat8 = (-(x_181.unity_ParticleUVShiftData.w) + 1.0f);
  u_xlat1.y = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.w) + u_xlat8);
  u_xlat0 = vec4f((((in_TEXCOORD0 * x_181.unity_ParticleUVShiftData.zw) + u_xlat1.xy)).xy, u_xlat0.zw);
  u_xlatb16 = !((x_181.unity_ParticleUVShiftData.x == 0.0f));
  if (u_xlatb16) {
    x_301 = u_xlat0.xy;
  } else {
    x_301 = in_TEXCOORD0;
  }
  vs_TEXCOORD0 = x_301;
  u_xlatu0 = (bitcast<u32>(u_xlat2.w) & 255u);
  u_xlat0.x = f32(u_xlatu0);
  param = bitcast<u32>(u_xlat2.w);
  param_1 = 8i;
  param_2 = 8i;
  let x_327 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<u32>(u_xlat2.w);
  param_4 = 16i;
  param_5 = 8i;
  let x_335 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu1 = vec3u(vec2u(x_327, x_335).xy, u_xlatu1.z);
  u_xlatu1.z = (bitcast<u32>(u_xlat2.w) >> 24u);
  u_xlat0 = vec4f(u_xlat0.x, vec3f(u_xlatu1).xyz);
  u_xlat0 = (u_xlat0 * vec4f(0.0039215688593685627f));
  u_xlat1 = (in_COLOR0 + vec4f(-1.0f));
  u_xlat1 = ((vec4f(x_181.unity_ParticleUseMeshColors) * u_xlat1) + vec4f(1.0f));
  vs_COLOR0 = (u_xlat0 * u_xlat1);
  vs_TEXCOORD1.w = 0.0f;
  vs_TEXCOORD1 = vec4f(u_xlat6.xyz, vs_TEXCOORD1.w);
  u_xlat0 = vec4f(((-(u_xlat6) + x_181.x_WorldSpaceCameraPos)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat4.zxy * u_xlat5.yzx) + -(u_xlat1.xyz))).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((u_xlat3.zxy * u_xlat5.yzx)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat3.yzx * u_xlat5.zxy) + -(u_xlat2.xyz))).xyz, u_xlat2.w);
  u_xlat24 = dot(u_xlat4.xyz, u_xlat2.xyz);
  u_xlat24 = (1.0f / u_xlat24);
  u_xlat1 = vec4f(((vec3f(u_xlat24) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.y = dot(in_NORMAL0, u_xlat1.xyz);
  u_xlat5 = vec4f(((u_xlat3.yzx * u_xlat4.zxy)).xyz, u_xlat5.w);
  u_xlat3 = vec4f((((u_xlat4.yzx * u_xlat3.zxy) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((vec3f(u_xlat24) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((vec3f(u_xlat24) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat1.x = dot(in_NORMAL0, u_xlat2.xyz);
  u_xlat1.z = dot(in_NORMAL0, u_xlat3.xyz);
  u_xlat24 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat24 = max(u_xlat24, 1.17549435e-38f);
  u_xlat24 = inverseSqrt(u_xlat24);
  vs_TEXCOORD2 = (vec3f(u_xlat24) * u_xlat1.xyz);
  u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat24 = inverseSqrt(u_xlat24);
  u_xlat0 = vec4f(((vec3f(u_xlat24) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlatb24 = (x_181.unity_OrthoParams.w == 0.0f);
  if (u_xlatb24) {
    x_521 = u_xlat0.x;
  } else {
    x_521 = x_181.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_521;
  if (u_xlatb24) {
    x_532 = u_xlat0.y;
  } else {
    x_532 = x_181.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_532;
  if (u_xlatb24) {
    x_543 = u_xlat0.z;
  } else {
    x_543 = x_181.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_543;
  vs_TEXCOORD8 = vec3f();
  vs_SV_InstanceID0 = bitcast<u32>(gl_InstanceIndex);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8, vs_SV_InstanceID0);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(48) */
  x_ScaleBiasRt : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(0) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_133 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> SV_Target0 : vec4f;

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat2 : f32;
  var u_xlat1 : vec4f;
  var u_xlatb0 : bool;
  var x_159 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  let x_38 = x_32.x_ScaledScreenParams.xy;
  u_xlat0 = vec3f(((vec2f(1.0f) / vec2f(x_38.x, x_38.y))).xy, u_xlat0.z);
  u_xlat0 = vec3f(((u_xlat0.xy * hlslcc_FragCoord.xy)).xy, u_xlat0.z);
  u_xlat2 = ((u_xlat0.y * x_32.x_ScaleBiasRt.x) + x_32.x_ScaleBiasRt.y);
  u_xlat0.z = (-(u_xlat2) + 1.0f);
  let x_81 = u_xlat0;
  let x_85 = x_32.x_GlobalMipBias.x;
  let x_86 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_81.xz, x_85);
  u_xlat0.x = x_86.x;
  u_xlat0.x = (u_xlat0.x + -(x_32.x_AmbientOcclusionParam.x));
  u_xlat0.x = (u_xlat0.x + 1.0f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x + -1.0f);
  u_xlat0.x = ((x_32.x_AmbientOcclusionParam.w * u_xlat0.x) + 1.0f);
  let x_126 = vs_TEXCOORD0;
  let x_128 = x_32.x_GlobalMipBias.x;
  let x_129 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_126, x_128);
  u_xlat1 = x_129;
  u_xlat1 = (u_xlat1 * x_133.x_BaseColor);
  u_xlat1 = (u_xlat1 * vs_COLOR0);
  SV_Target0 = vec4f(((u_xlat0.xxx * u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlatb0 = (x_133.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_159 = u_xlat1.w;
  } else {
    x_159 = 1.0f;
  }
  SV_Target0.w = x_159;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

alias Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  /* @offset(0) */
  unity_ParticleInstanceData_buf : RTArr,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_1,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_2,
  /* @offset(160) */
  unity_ParticleUVShiftData : vec4f,
  /* @offset(176) */
  unity_ParticleUseMeshColors : f32,
}

var<private> in_POSITION0 : vec4f;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(3) var<uniform> x_50 : UnityDrawCallInfo;

@group(0) @binding(2) var<storage, read> x_63 : unity_ParticleInstanceData;

@group(1) @binding(2) var<uniform> x_181 : VGlobals;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4f;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 = *(value);
  let x_17 = *(offset_1);
  let x_21 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & bitcast<u32>(~((-1i << bitcast<u32>(x_21)))));
}

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlati1 : i32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : f32;
  var u_xlatb16 : bool;
  var x_301 : vec2f;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec3u;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_521 : f32;
  var x_532 : f32;
  var x_543 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(in_POSITION0.xyz.xyz, u_xlat0.w);
  u_xlat0.w = 1.0f;
  u_xlati1 = (gl_InstanceIndex + x_50.unity_BaseInstanceID);
  u_xlat2 = vec4f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[9i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[10i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[11i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[12i]));
  u_xlat3.w = u_xlat2.y;
  u_xlat9 = vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[3i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[4i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[5i]));
  u_xlat3.y = u_xlat9.y;
  u_xlat4 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[7i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[8i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[6i])).xyz, u_xlat4.w);
  u_xlat3.z = u_xlat4.x;
  u_xlat5 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[2i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[0i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[1i])).xyz, u_xlat5.w);
  u_xlat1.x = bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[13i]);
  u_xlat1.x = floor(u_xlat1.x);
  u_xlat3.x = u_xlat5.z;
  u_xlat6.y = dot(u_xlat3, u_xlat0);
  u_xlat7 = (u_xlat6.yyyy * x_181.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat4.w = u_xlat2.x;
  u_xlat5.z = u_xlat4.y;
  u_xlat4.x = u_xlat5.y;
  u_xlat4.y = u_xlat9.x;
  u_xlat5.y = u_xlat9.z;
  u_xlat6.x = dot(u_xlat4, u_xlat0);
  u_xlat7 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat6.xxxx) + u_xlat7);
  u_xlat5.w = u_xlat2.z;
  u_xlat6.z = dot(u_xlat5, u_xlat0);
  u_xlat0 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat6.zzzz) + u_xlat7);
  gl_Position = (u_xlat0 + x_181.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat0.x = (u_xlat1.x / x_181.unity_ParticleUVShiftData.y);
  u_xlat0.x = floor(u_xlat0.x);
  u_xlat8 = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.y) + u_xlat1.x);
  u_xlat8 = floor(u_xlat8);
  u_xlat1.x = (u_xlat8 * x_181.unity_ParticleUVShiftData.z);
  u_xlat8 = (-(x_181.unity_ParticleUVShiftData.w) + 1.0f);
  u_xlat1.y = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.w) + u_xlat8);
  u_xlat0 = vec4f((((in_TEXCOORD0 * x_181.unity_ParticleUVShiftData.zw) + u_xlat1.xy)).xy, u_xlat0.zw);
  u_xlatb16 = !((x_181.unity_ParticleUVShiftData.x == 0.0f));
  if (u_xlatb16) {
    x_301 = u_xlat0.xy;
  } else {
    x_301 = in_TEXCOORD0;
  }
  vs_TEXCOORD0 = x_301;
  u_xlatu0 = (bitcast<u32>(u_xlat2.w) & 255u);
  u_xlat0.x = f32(u_xlatu0);
  param = bitcast<u32>(u_xlat2.w);
  param_1 = 8i;
  param_2 = 8i;
  let x_327 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<u32>(u_xlat2.w);
  param_4 = 16i;
  param_5 = 8i;
  let x_335 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu1 = vec3u(vec2u(x_327, x_335).xy, u_xlatu1.z);
  u_xlatu1.z = (bitcast<u32>(u_xlat2.w) >> 24u);
  u_xlat0 = vec4f(u_xlat0.x, vec3f(u_xlatu1).xyz);
  u_xlat0 = (u_xlat0 * vec4f(0.0039215688593685627f));
  u_xlat1 = (in_COLOR0 + vec4f(-1.0f));
  u_xlat1 = ((vec4f(x_181.unity_ParticleUseMeshColors) * u_xlat1) + vec4f(1.0f));
  vs_COLOR0 = (u_xlat0 * u_xlat1);
  vs_TEXCOORD1.w = 0.0f;
  vs_TEXCOORD1 = vec4f(u_xlat6.xyz, vs_TEXCOORD1.w);
  u_xlat0 = vec4f(((-(u_xlat6) + x_181.x_WorldSpaceCameraPos)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat4.zxy * u_xlat5.yzx) + -(u_xlat1.xyz))).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((u_xlat3.zxy * u_xlat5.yzx)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat3.yzx * u_xlat5.zxy) + -(u_xlat2.xyz))).xyz, u_xlat2.w);
  u_xlat24 = dot(u_xlat4.xyz, u_xlat2.xyz);
  u_xlat24 = (1.0f / u_xlat24);
  u_xlat1 = vec4f(((vec3f(u_xlat24) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.y = dot(in_NORMAL0, u_xlat1.xyz);
  u_xlat5 = vec4f(((u_xlat3.yzx * u_xlat4.zxy)).xyz, u_xlat5.w);
  u_xlat3 = vec4f((((u_xlat4.yzx * u_xlat3.zxy) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((vec3f(u_xlat24) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((vec3f(u_xlat24) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat1.x = dot(in_NORMAL0, u_xlat2.xyz);
  u_xlat1.z = dot(in_NORMAL0, u_xlat3.xyz);
  u_xlat24 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat24 = max(u_xlat24, 1.17549435e-38f);
  u_xlat24 = inverseSqrt(u_xlat24);
  vs_TEXCOORD2 = (vec3f(u_xlat24) * u_xlat1.xyz);
  u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat24 = inverseSqrt(u_xlat24);
  u_xlat0 = vec4f(((vec3f(u_xlat24) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlatb24 = (x_181.unity_OrthoParams.w == 0.0f);
  if (u_xlatb24) {
    x_521 = u_xlat0.x;
  } else {
    x_521 = x_181.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_521;
  if (u_xlatb24) {
    x_532 = u_xlat0.y;
  } else {
    x_532 = x_181.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_532;
  if (u_xlatb24) {
    x_543 = u_xlat0.z;
  } else {
    x_543 = x_181.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_543;
  vs_TEXCOORD8 = vec3f();
  vs_SV_InstanceID0 = bitcast<u32>(gl_InstanceIndex);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8, vs_SV_InstanceID0);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(1) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(1) @binding(1) var<uniform> x_38 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlatb1 : bool;
  var x_61 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_23 = vs_TEXCOORD0;
  let x_33 = x_26.x_GlobalMipBias.x;
  let x_34 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_33);
  u_xlat0 = x_34;
  u_xlat0 = (u_xlat0 * x_38.x_BaseColor);
  u_xlat0 = (u_xlat0 * vs_COLOR0);
  u_xlatb1 = (x_38.x_Surface == 1.0f);
  if (u_xlatb1) {
    x_61 = u_xlat0.w;
  } else {
    x_61 = 1.0f;
  }
  SV_Target0.w = x_61;
  SV_Target0 = vec4f(u_xlat0.xyz.xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

alias Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  /* @offset(0) */
  unity_ParticleInstanceData_buf : RTArr,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_1,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_2,
  /* @offset(160) */
  unity_ParticleUVShiftData : vec4f,
  /* @offset(176) */
  unity_ParticleUseMeshColors : f32,
}

var<private> in_POSITION0 : vec4f;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(3) var<uniform> x_50 : UnityDrawCallInfo;

@group(0) @binding(4) var<storage, read> x_63 : unity_ParticleInstanceData;

@group(1) @binding(2) var<uniform> x_181 : VGlobals;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4f;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 = *(value);
  let x_17 = *(offset_1);
  let x_21 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & bitcast<u32>(~((-1i << bitcast<u32>(x_21)))));
}

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlati1 : i32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : f32;
  var u_xlatb16 : bool;
  var x_301 : vec2f;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec3u;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_521 : f32;
  var x_532 : f32;
  var x_543 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(in_POSITION0.xyz.xyz, u_xlat0.w);
  u_xlat0.w = 1.0f;
  u_xlati1 = (gl_InstanceIndex + x_50.unity_BaseInstanceID);
  u_xlat2 = vec4f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[9i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[10i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[11i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[12i]));
  u_xlat3.w = u_xlat2.y;
  u_xlat9 = vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[3i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[4i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[5i]));
  u_xlat3.y = u_xlat9.y;
  u_xlat4 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[7i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[8i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[6i])).xyz, u_xlat4.w);
  u_xlat3.z = u_xlat4.x;
  u_xlat5 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[2i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[0i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[1i])).xyz, u_xlat5.w);
  u_xlat1.x = bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[13i]);
  u_xlat1.x = floor(u_xlat1.x);
  u_xlat3.x = u_xlat5.z;
  u_xlat6.y = dot(u_xlat3, u_xlat0);
  u_xlat7 = (u_xlat6.yyyy * x_181.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat4.w = u_xlat2.x;
  u_xlat5.z = u_xlat4.y;
  u_xlat4.x = u_xlat5.y;
  u_xlat4.y = u_xlat9.x;
  u_xlat5.y = u_xlat9.z;
  u_xlat6.x = dot(u_xlat4, u_xlat0);
  u_xlat7 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat6.xxxx) + u_xlat7);
  u_xlat5.w = u_xlat2.z;
  u_xlat6.z = dot(u_xlat5, u_xlat0);
  u_xlat0 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat6.zzzz) + u_xlat7);
  gl_Position = (u_xlat0 + x_181.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat0.x = (u_xlat1.x / x_181.unity_ParticleUVShiftData.y);
  u_xlat0.x = floor(u_xlat0.x);
  u_xlat8 = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.y) + u_xlat1.x);
  u_xlat8 = floor(u_xlat8);
  u_xlat1.x = (u_xlat8 * x_181.unity_ParticleUVShiftData.z);
  u_xlat8 = (-(x_181.unity_ParticleUVShiftData.w) + 1.0f);
  u_xlat1.y = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.w) + u_xlat8);
  u_xlat0 = vec4f((((in_TEXCOORD0 * x_181.unity_ParticleUVShiftData.zw) + u_xlat1.xy)).xy, u_xlat0.zw);
  u_xlatb16 = !((x_181.unity_ParticleUVShiftData.x == 0.0f));
  if (u_xlatb16) {
    x_301 = u_xlat0.xy;
  } else {
    x_301 = in_TEXCOORD0;
  }
  vs_TEXCOORD0 = x_301;
  u_xlatu0 = (bitcast<u32>(u_xlat2.w) & 255u);
  u_xlat0.x = f32(u_xlatu0);
  param = bitcast<u32>(u_xlat2.w);
  param_1 = 8i;
  param_2 = 8i;
  let x_327 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<u32>(u_xlat2.w);
  param_4 = 16i;
  param_5 = 8i;
  let x_335 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu1 = vec3u(vec2u(x_327, x_335).xy, u_xlatu1.z);
  u_xlatu1.z = (bitcast<u32>(u_xlat2.w) >> 24u);
  u_xlat0 = vec4f(u_xlat0.x, vec3f(u_xlatu1).xyz);
  u_xlat0 = (u_xlat0 * vec4f(0.0039215688593685627f));
  u_xlat1 = (in_COLOR0 + vec4f(-1.0f));
  u_xlat1 = ((vec4f(x_181.unity_ParticleUseMeshColors) * u_xlat1) + vec4f(1.0f));
  vs_COLOR0 = (u_xlat0 * u_xlat1);
  vs_TEXCOORD1.w = 0.0f;
  vs_TEXCOORD1 = vec4f(u_xlat6.xyz, vs_TEXCOORD1.w);
  u_xlat0 = vec4f(((-(u_xlat6) + x_181.x_WorldSpaceCameraPos)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat4.zxy * u_xlat5.yzx) + -(u_xlat1.xyz))).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((u_xlat3.zxy * u_xlat5.yzx)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat3.yzx * u_xlat5.zxy) + -(u_xlat2.xyz))).xyz, u_xlat2.w);
  u_xlat24 = dot(u_xlat4.xyz, u_xlat2.xyz);
  u_xlat24 = (1.0f / u_xlat24);
  u_xlat1 = vec4f(((vec3f(u_xlat24) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.y = dot(in_NORMAL0, u_xlat1.xyz);
  u_xlat5 = vec4f(((u_xlat3.yzx * u_xlat4.zxy)).xyz, u_xlat5.w);
  u_xlat3 = vec4f((((u_xlat4.yzx * u_xlat3.zxy) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((vec3f(u_xlat24) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((vec3f(u_xlat24) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat1.x = dot(in_NORMAL0, u_xlat2.xyz);
  u_xlat1.z = dot(in_NORMAL0, u_xlat3.xyz);
  u_xlat24 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat24 = max(u_xlat24, 1.17549435e-38f);
  u_xlat24 = inverseSqrt(u_xlat24);
  vs_TEXCOORD2 = (vec3f(u_xlat24) * u_xlat1.xyz);
  u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat24 = inverseSqrt(u_xlat24);
  u_xlat0 = vec4f(((vec3f(u_xlat24) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlatb24 = (x_181.unity_OrthoParams.w == 0.0f);
  if (u_xlatb24) {
    x_521 = u_xlat0.x;
  } else {
    x_521 = x_181.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_521;
  if (u_xlatb24) {
    x_532 = u_xlat0.y;
  } else {
    x_532 = x_181.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_532;
  if (u_xlatb24) {
    x_543 = u_xlat0.z;
  } else {
    x_543 = x_181.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_543;
  vs_TEXCOORD8 = vec3f();
  vs_SV_InstanceID0 = bitcast<u32>(gl_InstanceIndex);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8, vs_SV_InstanceID0);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(48) */
  x_ProjectionParams : vec4f,
  /* @offset(64) */
  x_ScaleBiasRt : vec4f,
  /* @offset(80) */
  unity_FogParams : vec4f,
  /* @offset(96) */
  unity_FogColor : vec4f,
  /* @offset(112) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

@group(0) @binding(0) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_135 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> SV_Target0 : vec4f;

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat2 : f32;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb0 : bool;
  var x_225 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  let x_40 = x_34.x_ScaledScreenParams.xy;
  u_xlat0 = vec3f(((vec2f(1.0f) / vec2f(x_40.x, x_40.y))).xy, u_xlat0.z);
  u_xlat0 = vec3f(((u_xlat0.xy * hlslcc_FragCoord.xy)).xy, u_xlat0.z);
  u_xlat2 = ((u_xlat0.y * x_34.x_ScaleBiasRt.x) + x_34.x_ScaleBiasRt.y);
  u_xlat0.z = (-(u_xlat2) + 1.0f);
  let x_83 = u_xlat0;
  let x_87 = x_34.x_GlobalMipBias.x;
  let x_88 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_83.xz, x_87);
  u_xlat0.x = x_88.x;
  u_xlat0.x = (u_xlat0.x + -(x_34.x_AmbientOcclusionParam.x));
  u_xlat0.x = (u_xlat0.x + 1.0f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x + -1.0f);
  u_xlat0.x = ((x_34.x_AmbientOcclusionParam.w * u_xlat0.x) + 1.0f);
  let x_128 = vs_TEXCOORD0;
  let x_130 = x_34.x_GlobalMipBias.x;
  let x_131 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_128, x_130);
  u_xlat1 = x_131;
  u_xlat1 = (u_xlat1 * x_135.x_BaseColor);
  u_xlat1 = (u_xlat1 * vs_COLOR0);
  u_xlat0 = (u_xlat0.xxx * u_xlat1.xyz);
  u_xlat6 = (vs_TEXCOORD1.y * x_34.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat6 = ((x_34.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD1.x) + u_xlat6);
  u_xlat6 = ((x_34.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD1.z) + u_xlat6);
  u_xlat6 = (u_xlat6 + x_34.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat6 = (-(u_xlat6) + -(x_34.x_ProjectionParams.y));
  u_xlat6 = max(u_xlat6, 0.0f);
  u_xlat6 = (u_xlat6 * x_34.unity_FogParams.x);
  u_xlat6 = exp2(-(u_xlat6));
  u_xlat6 = min(u_xlat6, 1.0f);
  u_xlat1.x = (-(u_xlat6) + 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xxx * x_34.unity_FogColor.xyz)).xyz, u_xlat1.w);
  SV_Target0 = vec4f((((u_xlat0 * vec3f(u_xlat6)) + u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlatb0 = (x_135.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_225 = u_xlat1.w;
  } else {
    x_225 = 1.0f;
  }
  SV_Target0.w = x_225;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f, @location(2) vs_TEXCOORD1_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

alias Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  /* @offset(0) */
  unity_ParticleInstanceData_buf : RTArr,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_1,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_2,
  /* @offset(160) */
  unity_ParticleUVShiftData : vec4f,
  /* @offset(176) */
  unity_ParticleUseMeshColors : f32,
}

var<private> in_POSITION0 : vec4f;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(3) var<uniform> x_50 : UnityDrawCallInfo;

@group(0) @binding(2) var<storage, read> x_63 : unity_ParticleInstanceData;

@group(1) @binding(2) var<uniform> x_181 : VGlobals;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4f;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 = *(value);
  let x_17 = *(offset_1);
  let x_21 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & bitcast<u32>(~((-1i << bitcast<u32>(x_21)))));
}

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlati1 : i32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : f32;
  var u_xlatb16 : bool;
  var x_301 : vec2f;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec3u;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_521 : f32;
  var x_532 : f32;
  var x_543 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(in_POSITION0.xyz.xyz, u_xlat0.w);
  u_xlat0.w = 1.0f;
  u_xlati1 = (gl_InstanceIndex + x_50.unity_BaseInstanceID);
  u_xlat2 = vec4f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[9i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[10i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[11i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[12i]));
  u_xlat3.w = u_xlat2.y;
  u_xlat9 = vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[3i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[4i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[5i]));
  u_xlat3.y = u_xlat9.y;
  u_xlat4 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[7i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[8i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[6i])).xyz, u_xlat4.w);
  u_xlat3.z = u_xlat4.x;
  u_xlat5 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[2i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[0i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[1i])).xyz, u_xlat5.w);
  u_xlat1.x = bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[13i]);
  u_xlat1.x = floor(u_xlat1.x);
  u_xlat3.x = u_xlat5.z;
  u_xlat6.y = dot(u_xlat3, u_xlat0);
  u_xlat7 = (u_xlat6.yyyy * x_181.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat4.w = u_xlat2.x;
  u_xlat5.z = u_xlat4.y;
  u_xlat4.x = u_xlat5.y;
  u_xlat4.y = u_xlat9.x;
  u_xlat5.y = u_xlat9.z;
  u_xlat6.x = dot(u_xlat4, u_xlat0);
  u_xlat7 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat6.xxxx) + u_xlat7);
  u_xlat5.w = u_xlat2.z;
  u_xlat6.z = dot(u_xlat5, u_xlat0);
  u_xlat0 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat6.zzzz) + u_xlat7);
  gl_Position = (u_xlat0 + x_181.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat0.x = (u_xlat1.x / x_181.unity_ParticleUVShiftData.y);
  u_xlat0.x = floor(u_xlat0.x);
  u_xlat8 = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.y) + u_xlat1.x);
  u_xlat8 = floor(u_xlat8);
  u_xlat1.x = (u_xlat8 * x_181.unity_ParticleUVShiftData.z);
  u_xlat8 = (-(x_181.unity_ParticleUVShiftData.w) + 1.0f);
  u_xlat1.y = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.w) + u_xlat8);
  u_xlat0 = vec4f((((in_TEXCOORD0 * x_181.unity_ParticleUVShiftData.zw) + u_xlat1.xy)).xy, u_xlat0.zw);
  u_xlatb16 = !((x_181.unity_ParticleUVShiftData.x == 0.0f));
  if (u_xlatb16) {
    x_301 = u_xlat0.xy;
  } else {
    x_301 = in_TEXCOORD0;
  }
  vs_TEXCOORD0 = x_301;
  u_xlatu0 = (bitcast<u32>(u_xlat2.w) & 255u);
  u_xlat0.x = f32(u_xlatu0);
  param = bitcast<u32>(u_xlat2.w);
  param_1 = 8i;
  param_2 = 8i;
  let x_327 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<u32>(u_xlat2.w);
  param_4 = 16i;
  param_5 = 8i;
  let x_335 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu1 = vec3u(vec2u(x_327, x_335).xy, u_xlatu1.z);
  u_xlatu1.z = (bitcast<u32>(u_xlat2.w) >> 24u);
  u_xlat0 = vec4f(u_xlat0.x, vec3f(u_xlatu1).xyz);
  u_xlat0 = (u_xlat0 * vec4f(0.0039215688593685627f));
  u_xlat1 = (in_COLOR0 + vec4f(-1.0f));
  u_xlat1 = ((vec4f(x_181.unity_ParticleUseMeshColors) * u_xlat1) + vec4f(1.0f));
  vs_COLOR0 = (u_xlat0 * u_xlat1);
  vs_TEXCOORD1.w = 0.0f;
  vs_TEXCOORD1 = vec4f(u_xlat6.xyz, vs_TEXCOORD1.w);
  u_xlat0 = vec4f(((-(u_xlat6) + x_181.x_WorldSpaceCameraPos)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat4.zxy * u_xlat5.yzx) + -(u_xlat1.xyz))).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((u_xlat3.zxy * u_xlat5.yzx)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat3.yzx * u_xlat5.zxy) + -(u_xlat2.xyz))).xyz, u_xlat2.w);
  u_xlat24 = dot(u_xlat4.xyz, u_xlat2.xyz);
  u_xlat24 = (1.0f / u_xlat24);
  u_xlat1 = vec4f(((vec3f(u_xlat24) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.y = dot(in_NORMAL0, u_xlat1.xyz);
  u_xlat5 = vec4f(((u_xlat3.yzx * u_xlat4.zxy)).xyz, u_xlat5.w);
  u_xlat3 = vec4f((((u_xlat4.yzx * u_xlat3.zxy) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((vec3f(u_xlat24) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((vec3f(u_xlat24) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat1.x = dot(in_NORMAL0, u_xlat2.xyz);
  u_xlat1.z = dot(in_NORMAL0, u_xlat3.xyz);
  u_xlat24 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat24 = max(u_xlat24, 1.17549435e-38f);
  u_xlat24 = inverseSqrt(u_xlat24);
  vs_TEXCOORD2 = (vec3f(u_xlat24) * u_xlat1.xyz);
  u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat24 = inverseSqrt(u_xlat24);
  u_xlat0 = vec4f(((vec3f(u_xlat24) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlatb24 = (x_181.unity_OrthoParams.w == 0.0f);
  if (u_xlatb24) {
    x_521 = u_xlat0.x;
  } else {
    x_521 = x_181.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_521;
  if (u_xlatb24) {
    x_532 = u_xlat0.y;
  } else {
    x_532 = x_181.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_532;
  if (u_xlatb24) {
    x_543 = u_xlat0.z;
  } else {
    x_543 = x_181.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_543;
  vs_TEXCOORD8 = vec3f();
  vs_SV_InstanceID0 = bitcast<u32>(gl_InstanceIndex);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8, vs_SV_InstanceID0);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(16) */
  x_ProjectionParams : vec4f,
  /* @offset(32) */
  unity_FogParams : vec4f,
  /* @offset(48) */
  unity_FogColor : vec4f,
  /* @offset(64) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

var<private> vs_TEXCOORD1 : vec4f;

@group(1) @binding(0) var<uniform> x_22 : PGlobals;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(1) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_107 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat2 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlatb0 : bool;
  var x_134 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (vs_TEXCOORD1.y * x_22.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD1.x) + u_xlat0);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD1.z) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_22.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat0 = (-(u_xlat0) + -(x_22.x_ProjectionParams.y));
  u_xlat0 = max(u_xlat0, 0.0f);
  u_xlat0 = (u_xlat0 * x_22.unity_FogParams.x);
  u_xlat0 = exp2(-(u_xlat0));
  u_xlat0 = min(u_xlat0, 1.0f);
  u_xlat2.x = (-(u_xlat0) + 1.0f);
  u_xlat2 = (u_xlat2.xxx * x_22.unity_FogColor.xyz);
  let x_100 = vs_TEXCOORD0;
  let x_102 = x_22.x_GlobalMipBias.x;
  let x_103 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_100, x_102);
  u_xlat1 = x_103;
  u_xlat1 = (u_xlat1 * x_107.x_BaseColor);
  u_xlat1 = (u_xlat1 * vs_COLOR0);
  SV_Target0 = vec4f((((u_xlat1.xyz * vec3f(u_xlat0)) + u_xlat2)).xyz, SV_Target0.w);
  u_xlatb0 = (x_107.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_134 = u_xlat1.w;
  } else {
    x_134 = 1.0f;
  }
  SV_Target0.w = x_134;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

alias Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  /* @offset(0) */
  unity_ParticleInstanceData_buf : RTArr,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_1,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_2,
  /* @offset(160) */
  unity_ParticleUVShiftData : vec4f,
  /* @offset(176) */
  unity_ParticleUseMeshColors : f32,
}

var<private> in_POSITION0 : vec4f;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(3) var<uniform> x_50 : UnityDrawCallInfo;

@group(0) @binding(4) var<storage, read> x_63 : unity_ParticleInstanceData;

@group(1) @binding(2) var<uniform> x_181 : VGlobals;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4f;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 = *(value);
  let x_17 = *(offset_1);
  let x_21 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & bitcast<u32>(~((-1i << bitcast<u32>(x_21)))));
}

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlati1 : i32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : f32;
  var u_xlatb16 : bool;
  var x_301 : vec2f;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec3u;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_521 : f32;
  var x_532 : f32;
  var x_543 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(in_POSITION0.xyz.xyz, u_xlat0.w);
  u_xlat0.w = 1.0f;
  u_xlati1 = (gl_InstanceIndex + x_50.unity_BaseInstanceID);
  u_xlat2 = vec4f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[9i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[10i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[11i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[12i]));
  u_xlat3.w = u_xlat2.y;
  u_xlat9 = vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[3i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[4i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[5i]));
  u_xlat3.y = u_xlat9.y;
  u_xlat4 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[7i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[8i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[6i])).xyz, u_xlat4.w);
  u_xlat3.z = u_xlat4.x;
  u_xlat5 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[2i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[0i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[1i])).xyz, u_xlat5.w);
  u_xlat1.x = bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[13i]);
  u_xlat1.x = floor(u_xlat1.x);
  u_xlat3.x = u_xlat5.z;
  u_xlat6.y = dot(u_xlat3, u_xlat0);
  u_xlat7 = (u_xlat6.yyyy * x_181.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat4.w = u_xlat2.x;
  u_xlat5.z = u_xlat4.y;
  u_xlat4.x = u_xlat5.y;
  u_xlat4.y = u_xlat9.x;
  u_xlat5.y = u_xlat9.z;
  u_xlat6.x = dot(u_xlat4, u_xlat0);
  u_xlat7 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat6.xxxx) + u_xlat7);
  u_xlat5.w = u_xlat2.z;
  u_xlat6.z = dot(u_xlat5, u_xlat0);
  u_xlat0 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat6.zzzz) + u_xlat7);
  gl_Position = (u_xlat0 + x_181.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat0.x = (u_xlat1.x / x_181.unity_ParticleUVShiftData.y);
  u_xlat0.x = floor(u_xlat0.x);
  u_xlat8 = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.y) + u_xlat1.x);
  u_xlat8 = floor(u_xlat8);
  u_xlat1.x = (u_xlat8 * x_181.unity_ParticleUVShiftData.z);
  u_xlat8 = (-(x_181.unity_ParticleUVShiftData.w) + 1.0f);
  u_xlat1.y = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.w) + u_xlat8);
  u_xlat0 = vec4f((((in_TEXCOORD0 * x_181.unity_ParticleUVShiftData.zw) + u_xlat1.xy)).xy, u_xlat0.zw);
  u_xlatb16 = !((x_181.unity_ParticleUVShiftData.x == 0.0f));
  if (u_xlatb16) {
    x_301 = u_xlat0.xy;
  } else {
    x_301 = in_TEXCOORD0;
  }
  vs_TEXCOORD0 = x_301;
  u_xlatu0 = (bitcast<u32>(u_xlat2.w) & 255u);
  u_xlat0.x = f32(u_xlatu0);
  param = bitcast<u32>(u_xlat2.w);
  param_1 = 8i;
  param_2 = 8i;
  let x_327 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<u32>(u_xlat2.w);
  param_4 = 16i;
  param_5 = 8i;
  let x_335 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu1 = vec3u(vec2u(x_327, x_335).xy, u_xlatu1.z);
  u_xlatu1.z = (bitcast<u32>(u_xlat2.w) >> 24u);
  u_xlat0 = vec4f(u_xlat0.x, vec3f(u_xlatu1).xyz);
  u_xlat0 = (u_xlat0 * vec4f(0.0039215688593685627f));
  u_xlat1 = (in_COLOR0 + vec4f(-1.0f));
  u_xlat1 = ((vec4f(x_181.unity_ParticleUseMeshColors) * u_xlat1) + vec4f(1.0f));
  vs_COLOR0 = (u_xlat0 * u_xlat1);
  vs_TEXCOORD1.w = 0.0f;
  vs_TEXCOORD1 = vec4f(u_xlat6.xyz, vs_TEXCOORD1.w);
  u_xlat0 = vec4f(((-(u_xlat6) + x_181.x_WorldSpaceCameraPos)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat4.zxy * u_xlat5.yzx) + -(u_xlat1.xyz))).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((u_xlat3.zxy * u_xlat5.yzx)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat3.yzx * u_xlat5.zxy) + -(u_xlat2.xyz))).xyz, u_xlat2.w);
  u_xlat24 = dot(u_xlat4.xyz, u_xlat2.xyz);
  u_xlat24 = (1.0f / u_xlat24);
  u_xlat1 = vec4f(((vec3f(u_xlat24) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.y = dot(in_NORMAL0, u_xlat1.xyz);
  u_xlat5 = vec4f(((u_xlat3.yzx * u_xlat4.zxy)).xyz, u_xlat5.w);
  u_xlat3 = vec4f((((u_xlat4.yzx * u_xlat3.zxy) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((vec3f(u_xlat24) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((vec3f(u_xlat24) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat1.x = dot(in_NORMAL0, u_xlat2.xyz);
  u_xlat1.z = dot(in_NORMAL0, u_xlat3.xyz);
  u_xlat24 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat24 = max(u_xlat24, 1.17549435e-38f);
  u_xlat24 = inverseSqrt(u_xlat24);
  vs_TEXCOORD2 = (vec3f(u_xlat24) * u_xlat1.xyz);
  u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat24 = inverseSqrt(u_xlat24);
  u_xlat0 = vec4f(((vec3f(u_xlat24) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlatb24 = (x_181.unity_OrthoParams.w == 0.0f);
  if (u_xlatb24) {
    x_521 = u_xlat0.x;
  } else {
    x_521 = x_181.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_521;
  if (u_xlatb24) {
    x_532 = u_xlat0.y;
  } else {
    x_532 = x_181.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_532;
  if (u_xlatb24) {
    x_543 = u_xlat0.z;
  } else {
    x_543 = x_181.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_543;
  vs_TEXCOORD8 = vec3f();
  vs_SV_InstanceID0 = bitcast<u32>(gl_InstanceIndex);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8, vs_SV_InstanceID0);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4f,
  /* @offset(16) */
  x_GlobalMipBias : vec2f,
  /* @offset(32) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(48) */
  x_ProjectionParams : vec4f,
  /* @offset(64) */
  x_ScaleBiasRt : vec4f,
  /* @offset(80) */
  unity_FogParams : vec4f,
  /* @offset(96) */
  unity_FogColor : vec4f,
  /* @offset(112) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_34 : PGlobals;

@group(0) @binding(0) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_135 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> SV_Target0 : vec4f;

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlat2 : f32;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb0 : bool;
  var x_226 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  let x_40 = x_34.x_ScaledScreenParams.xy;
  u_xlat0 = vec3f(((vec2f(1.0f) / vec2f(x_40.x, x_40.y))).xy, u_xlat0.z);
  u_xlat0 = vec3f(((u_xlat0.xy * hlslcc_FragCoord.xy)).xy, u_xlat0.z);
  u_xlat2 = ((u_xlat0.y * x_34.x_ScaleBiasRt.x) + x_34.x_ScaleBiasRt.y);
  u_xlat0.z = (-(u_xlat2) + 1.0f);
  let x_83 = u_xlat0;
  let x_87 = x_34.x_GlobalMipBias.x;
  let x_88 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_83.xz, x_87);
  u_xlat0.x = x_88.x;
  u_xlat0.x = (u_xlat0.x + -(x_34.x_AmbientOcclusionParam.x));
  u_xlat0.x = (u_xlat0.x + 1.0f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x + -1.0f);
  u_xlat0.x = ((x_34.x_AmbientOcclusionParam.w * u_xlat0.x) + 1.0f);
  let x_128 = vs_TEXCOORD0;
  let x_130 = x_34.x_GlobalMipBias.x;
  let x_131 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_128, x_130);
  u_xlat1 = x_131;
  u_xlat1 = (u_xlat1 * x_135.x_BaseColor);
  u_xlat1 = (u_xlat1 * vs_COLOR0);
  u_xlat0 = (u_xlat0.xxx * u_xlat1.xyz);
  u_xlat6 = (vs_TEXCOORD1.y * x_34.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat6 = ((x_34.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD1.x) + u_xlat6);
  u_xlat6 = ((x_34.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD1.z) + u_xlat6);
  u_xlat6 = (u_xlat6 + x_34.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat6 = (-(u_xlat6) + -(x_34.x_ProjectionParams.y));
  u_xlat6 = max(u_xlat6, 0.0f);
  u_xlat6 = (u_xlat6 * x_34.unity_FogParams.x);
  u_xlat6 = (u_xlat6 * -(u_xlat6));
  u_xlat6 = exp2(u_xlat6);
  u_xlat1.x = (-(u_xlat6) + 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xxx * x_34.unity_FogColor.xyz)).xyz, u_xlat1.w);
  SV_Target0 = vec4f((((u_xlat0 * vec3f(u_xlat6)) + u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlatb0 = (x_135.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_226 = u_xlat1.w;
  } else {
    x_226 = 1.0f;
  }
  SV_Target0.w = x_226;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f, @location(2) vs_TEXCOORD1_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

alias Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  /* @offset(0) */
  unity_ParticleInstanceData_buf : RTArr,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_1,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_2,
  /* @offset(160) */
  unity_ParticleUVShiftData : vec4f,
  /* @offset(176) */
  unity_ParticleUseMeshColors : f32,
}

var<private> in_POSITION0 : vec4f;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(3) var<uniform> x_50 : UnityDrawCallInfo;

@group(0) @binding(2) var<storage, read> x_63 : unity_ParticleInstanceData;

@group(1) @binding(2) var<uniform> x_181 : VGlobals;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD8 : vec3f;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4f;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 = *(value);
  let x_17 = *(offset_1);
  let x_21 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & bitcast<u32>(~((-1i << bitcast<u32>(x_21)))));
}

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlati1 : i32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat9 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : f32;
  var u_xlatb16 : bool;
  var x_301 : vec2f;
  var u_xlatu0 : u32;
  var u_xlatu1 : vec3u;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_521 : f32;
  var x_532 : f32;
  var x_543 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(in_POSITION0.xyz.xyz, u_xlat0.w);
  u_xlat0.w = 1.0f;
  u_xlati1 = (gl_InstanceIndex + x_50.unity_BaseInstanceID);
  u_xlat2 = vec4f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[9i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[10i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[11i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[12i]));
  u_xlat3.w = u_xlat2.y;
  u_xlat9 = vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[3i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[4i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[5i]));
  u_xlat3.y = u_xlat9.y;
  u_xlat4 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[7i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[8i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[6i])).xyz, u_xlat4.w);
  u_xlat3.z = u_xlat4.x;
  u_xlat5 = vec4f(vec3f(bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[2i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[0i]), bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[1i])).xyz, u_xlat5.w);
  u_xlat1.x = bitcast<f32>(x_63.unity_ParticleInstanceData_buf[u_xlati1].value[13i]);
  u_xlat1.x = floor(u_xlat1.x);
  u_xlat3.x = u_xlat5.z;
  u_xlat6.y = dot(u_xlat3, u_xlat0);
  u_xlat7 = (u_xlat6.yyyy * x_181.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat4.w = u_xlat2.x;
  u_xlat5.z = u_xlat4.y;
  u_xlat4.x = u_xlat5.y;
  u_xlat4.y = u_xlat9.x;
  u_xlat5.y = u_xlat9.z;
  u_xlat6.x = dot(u_xlat4, u_xlat0);
  u_xlat7 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat6.xxxx) + u_xlat7);
  u_xlat5.w = u_xlat2.z;
  u_xlat6.z = dot(u_xlat5, u_xlat0);
  u_xlat0 = ((x_181.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat6.zzzz) + u_xlat7);
  gl_Position = (u_xlat0 + x_181.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat0.x = (u_xlat1.x / x_181.unity_ParticleUVShiftData.y);
  u_xlat0.x = floor(u_xlat0.x);
  u_xlat8 = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.y) + u_xlat1.x);
  u_xlat8 = floor(u_xlat8);
  u_xlat1.x = (u_xlat8 * x_181.unity_ParticleUVShiftData.z);
  u_xlat8 = (-(x_181.unity_ParticleUVShiftData.w) + 1.0f);
  u_xlat1.y = ((-(u_xlat0.x) * x_181.unity_ParticleUVShiftData.w) + u_xlat8);
  u_xlat0 = vec4f((((in_TEXCOORD0 * x_181.unity_ParticleUVShiftData.zw) + u_xlat1.xy)).xy, u_xlat0.zw);
  u_xlatb16 = !((x_181.unity_ParticleUVShiftData.x == 0.0f));
  if (u_xlatb16) {
    x_301 = u_xlat0.xy;
  } else {
    x_301 = in_TEXCOORD0;
  }
  vs_TEXCOORD0 = x_301;
  u_xlatu0 = (bitcast<u32>(u_xlat2.w) & 255u);
  u_xlat0.x = f32(u_xlatu0);
  param = bitcast<u32>(u_xlat2.w);
  param_1 = 8i;
  param_2 = 8i;
  let x_327 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<u32>(u_xlat2.w);
  param_4 = 16i;
  param_5 = 8i;
  let x_335 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu1 = vec3u(vec2u(x_327, x_335).xy, u_xlatu1.z);
  u_xlatu1.z = (bitcast<u32>(u_xlat2.w) >> 24u);
  u_xlat0 = vec4f(u_xlat0.x, vec3f(u_xlatu1).xyz);
  u_xlat0 = (u_xlat0 * vec4f(0.0039215688593685627f));
  u_xlat1 = (in_COLOR0 + vec4f(-1.0f));
  u_xlat1 = ((vec4f(x_181.unity_ParticleUseMeshColors) * u_xlat1) + vec4f(1.0f));
  vs_COLOR0 = (u_xlat0 * u_xlat1);
  vs_TEXCOORD1.w = 0.0f;
  vs_TEXCOORD1 = vec4f(u_xlat6.xyz, vs_TEXCOORD1.w);
  u_xlat0 = vec4f(((-(u_xlat6) + x_181.x_WorldSpaceCameraPos)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat4.zxy * u_xlat5.yzx) + -(u_xlat1.xyz))).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((u_xlat3.zxy * u_xlat5.yzx)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((u_xlat3.yzx * u_xlat5.zxy) + -(u_xlat2.xyz))).xyz, u_xlat2.w);
  u_xlat24 = dot(u_xlat4.xyz, u_xlat2.xyz);
  u_xlat24 = (1.0f / u_xlat24);
  u_xlat1 = vec4f(((vec3f(u_xlat24) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1.y = dot(in_NORMAL0, u_xlat1.xyz);
  u_xlat5 = vec4f(((u_xlat3.yzx * u_xlat4.zxy)).xyz, u_xlat5.w);
  u_xlat3 = vec4f((((u_xlat4.yzx * u_xlat3.zxy) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((vec3f(u_xlat24) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat2 = vec4f(((vec3f(u_xlat24) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat1.x = dot(in_NORMAL0, u_xlat2.xyz);
  u_xlat1.z = dot(in_NORMAL0, u_xlat3.xyz);
  u_xlat24 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat24 = max(u_xlat24, 1.17549435e-38f);
  u_xlat24 = inverseSqrt(u_xlat24);
  vs_TEXCOORD2 = (vec3f(u_xlat24) * u_xlat1.xyz);
  u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat24 = inverseSqrt(u_xlat24);
  u_xlat0 = vec4f(((vec3f(u_xlat24) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlatb24 = (x_181.unity_OrthoParams.w == 0.0f);
  if (u_xlatb24) {
    x_521 = u_xlat0.x;
  } else {
    x_521 = x_181.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_521;
  if (u_xlatb24) {
    x_532 = u_xlat0.y;
  } else {
    x_532 = x_181.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_532;
  if (u_xlatb24) {
    x_543 = u_xlat0.z;
  } else {
    x_543 = x_181.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_543;
  vs_TEXCOORD8 = vec3f();
  vs_SV_InstanceID0 = bitcast<u32>(gl_InstanceIndex);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(1)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec3f,
  @location(4)
  vs_TEXCOORD3_1 : vec3f,
  @location(5)
  vs_TEXCOORD8_1 : vec3f,
  @location(6) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(2) in_TEXCOORD0_param : vec2f, @location(1) in_COLOR0_param : vec4f, @location(3) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD8, vs_SV_InstanceID0);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(16) */
  x_ProjectionParams : vec4f,
  /* @offset(32) */
  unity_FogParams : vec4f,
  /* @offset(48) */
  unity_FogColor : vec4f,
  /* @offset(64) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_SoftParticleFadeParams : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_CameraFadeParams : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(64) */
  x_BaseColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BaseColorAddSubDiff : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_DistortionStrengthScaled : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_DistortionBlend : f32,
  /* @offset(124) */
  x_Surface : f32,
}

var<private> vs_TEXCOORD1 : vec4f;

@group(1) @binding(0) var<uniform> x_22 : PGlobals;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(1) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_108 : UnityPerMaterial;

var<private> vs_COLOR0 : vec4f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat2 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlatb0 : bool;
  var x_135 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (vs_TEXCOORD1.y * x_22.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD1.x) + u_xlat0);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD1.z) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_22.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat0 = (-(u_xlat0) + -(x_22.x_ProjectionParams.y));
  u_xlat0 = max(u_xlat0, 0.0f);
  u_xlat0 = (u_xlat0 * x_22.unity_FogParams.x);
  u_xlat0 = (u_xlat0 * -(u_xlat0));
  u_xlat0 = exp2(u_xlat0);
  u_xlat2.x = (-(u_xlat0) + 1.0f);
  u_xlat2 = (u_xlat2.xxx * x_22.unity_FogColor.xyz);
  let x_101 = vs_TEXCOORD0;
  let x_103 = x_22.x_GlobalMipBias.x;
  let x_104 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_101, x_103);
  u_xlat1 = x_104;
  u_xlat1 = (u_xlat1 * x_108.x_BaseColor);
  u_xlat1 = (u_xlat1 * vs_COLOR0);
  SV_Target0 = vec4f((((u_xlat1.xyz * vec3f(u_xlat0)) + u_xlat2)).xyz, SV_Target0.w);
  u_xlatb0 = (x_108.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_135 = u_xlat1.w;
  } else {
    x_135 = 1.0f;
  }
  SV_Target0.w = x_135;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4f, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
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

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_74 : VGlobals;

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
  u_xlat0 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat0 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
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

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

var<private> gl_FragCoord : vec4f;

var<private> SV_TARGET0 : f32;

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  SV_TARGET0 = hlslcc_FragCoord.z;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : f32,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

alias Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  /* @offset(0) */
  unity_ParticleInstanceData_buf : RTArr,
}

alias Arr_1 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_1,
}

var<private> in_POSITION0 : vec4f;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(1) var<uniform> x_30 : UnityDrawCallInfo;

@group(0) @binding(0) var<storage, read> x_43 : unity_ParticleInstanceData;

@group(1) @binding(0) var<uniform> x_142 : VGlobals;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlati1 : i32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec4f;
  var u_xlat7 : vec3f;
  var u_xlat5 : vec3f;
  var u_xlat1 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(in_POSITION0.xyz.xyz, u_xlat0.w);
  u_xlat0.w = 1.0f;
  u_xlati1 = (gl_InstanceIndex + x_30.unity_BaseInstanceID);
  u_xlat2 = vec4f(vec3f(bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[2i]), bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[0i]), bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[1i])).xyz, u_xlat2.w);
  u_xlat3.x = u_xlat2.z;
  u_xlat4 = vec4f(vec3f(bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[4i]), bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[3i]), bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[5i])).xyz, u_xlat4.w);
  u_xlat3.y = u_xlat4.x;
  u_xlat7 = vec3f(bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[6i]), bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[7i]), bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[8i]));
  u_xlat5 = vec3f(bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[9i]), bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[10i]), bitcast<f32>(x_43.unity_ParticleInstanceData_buf[u_xlati1].value[11i]));
  u_xlat3.z = u_xlat7.y;
  u_xlat3.w = u_xlat5.y;
  u_xlat1 = dot(u_xlat3, u_xlat0);
  u_xlat3 = (vec4f(u_xlat1) * x_142.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat4.x = u_xlat2.y;
  u_xlat2.y = u_xlat4.z;
  u_xlat4.z = u_xlat7.x;
  u_xlat2.z = u_xlat7.z;
  u_xlat4.w = u_xlat5.x;
  u_xlat2.w = u_xlat5.z;
  u_xlat1 = dot(u_xlat2, u_xlat0);
  u_xlat0.x = dot(u_xlat4, u_xlat0);
  u_xlat0 = ((x_142.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat3);
  u_xlat0 = ((x_142.hlslcc_mtx4x4unity_MatrixVP[2i] * vec4f(u_xlat1)) + u_xlat0);
  gl_Position = (u_xlat0 + x_142.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_SV_InstanceID0 = bitcast<u32>(gl_InstanceIndex);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @builtin(instance_index) gl_InstanceIndex_param : u32) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  main_1();
  return main_out(gl_Position, vs_SV_InstanceID0);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

var<private> gl_FragCoord : vec4f;

var<private> SV_TARGET0 : f32;

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  SV_TARGET0 = hlslcc_FragCoord.z;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : f32,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
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
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_5,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_6,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_65 : VGlobals;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var x_160 : f32;
  var x_172 : f32;
  var x_183 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1 = (u_xlat0.yyyy * x_65.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_65.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  u_xlat0 = (-(u_xlat0) + x_65.x_WorldSpaceCameraPos);
  gl_Position = (u_xlat1 + x_65.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat1.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD2 = (vec3f(u_xlat6) * u_xlat1.xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = inverseSqrt(u_xlat6);
  u_xlat0 = (vec3f(u_xlat6) * u_xlat0);
  u_xlatb6 = (x_65.unity_OrthoParams.w == 0.0f);
  if (u_xlatb6) {
    x_160 = u_xlat0.x;
  } else {
    x_160 = x_65.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_160;
  if (u_xlatb6) {
    x_172 = u_xlat0.y;
  } else {
    x_172 = x_65.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_172;
  if (u_xlatb6) {
    x_183 = u_xlat0.z;
  } else {
    x_183 = x_65.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_183;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD2_1 : vec3f,
  @location(1)
  vs_TEXCOORD3_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD2, vs_TEXCOORD3);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

var<private> vs_TEXCOORD2 : vec3f;

var<private> SV_TARGET0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = dot(vs_TEXCOORD2, vs_TEXCOORD2);
  u_xlat0 = inverseSqrt(u_xlat0);
  SV_TARGET0 = vec4f(((vec3f(u_xlat0) * vs_TEXCOORD2)).xyz, SV_TARGET0.w);
  SV_TARGET0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4f,
}

@fragment
fn main(@location(0) vs_TEXCOORD2_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

alias Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  /* @offset(0) */
  value : Arr,
}

alias RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  /* @offset(0) */
  unity_ParticleInstanceData_buf : RTArr,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_1,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_2,
}

var<private> in_POSITION0 : vec4f;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(1) var<uniform> x_30 : UnityDrawCallInfo;

@group(0) @binding(0) var<storage, read> x_44 : unity_ParticleInstanceData;

@group(1) @binding(0) var<uniform> x_145 : VGlobals;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlati1 : i32;
  var u_xlat9 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat1 : vec3f;
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_338 : f32;
  var x_350 : f32;
  var x_361 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(in_POSITION0.xyz.xyz, u_xlat0.w);
  u_xlat0.w = 1.0f;
  u_xlati1 = (gl_InstanceIndex + x_30.unity_BaseInstanceID);
  u_xlat9 = vec3f(bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[9i]), bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[10i]), bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[11i]));
  u_xlat2.w = u_xlat9.y;
  u_xlat3 = vec3f(bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[3i]), bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[4i]), bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[5i]));
  u_xlat2.y = u_xlat3.y;
  u_xlat4 = vec4f(vec3f(bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[7i]), bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[8i]), bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[6i])).xyz, u_xlat4.w);
  u_xlat5 = vec4f(vec3f(bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[2i]), bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[0i]), bitcast<f32>(x_44.unity_ParticleInstanceData_buf[u_xlati1].value[1i])).xyz, u_xlat5.w);
  u_xlat2.z = u_xlat4.x;
  u_xlat2.x = u_xlat5.z;
  u_xlat6.y = dot(u_xlat2, u_xlat0);
  u_xlat7 = (u_xlat6.yyyy * x_145.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat4.w = u_xlat9.x;
  u_xlat5.w = u_xlat9.z;
  u_xlat5.z = u_xlat4.y;
  u_xlat4.x = u_xlat5.y;
  u_xlat4.y = u_xlat3.x;
  u_xlat5.y = u_xlat3.z;
  u_xlat6.x = dot(u_xlat4, u_xlat0);
  u_xlat6.z = dot(u_xlat5, u_xlat0);
  u_xlat0 = ((x_145.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat6.xxxx) + u_xlat7);
  u_xlat1 = (-(u_xlat6) + x_145.x_WorldSpaceCameraPos);
  u_xlat0 = ((x_145.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat6.zzzz) + u_xlat0);
  gl_Position = (u_xlat0 + x_145.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat0 = vec4f(((u_xlat4.yzx * u_xlat5.zxy)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((u_xlat4.zxy * u_xlat5.yzx) + -(u_xlat0.xyz))).xyz, u_xlat0.w);
  u_xlat3 = (u_xlat2.zxy * u_xlat5.yzx);
  u_xlat3 = ((u_xlat2.yzx * u_xlat5.zxy) + -(u_xlat3));
  u_xlat24 = dot(u_xlat4.xyz, u_xlat3);
  u_xlat24 = (1.0f / u_xlat24);
  u_xlat0 = vec4f(((vec3f(u_xlat24) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0.y = dot(in_NORMAL0, u_xlat0.xyz);
  u_xlat5 = vec4f(((u_xlat2.yzx * u_xlat4.zxy)).xyz, u_xlat5.w);
  u_xlat2 = vec4f((((u_xlat4.yzx * u_xlat2.zxy) + -(u_xlat5.xyz))).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((vec3f(u_xlat24) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat3 = (vec3f(u_xlat24) * u_xlat3);
  u_xlat0.x = dot(in_NORMAL0, u_xlat3);
  u_xlat0.z = dot(in_NORMAL0, u_xlat2.xyz);
  u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat24 = max(u_xlat24, 1.17549435e-38f);
  u_xlat24 = inverseSqrt(u_xlat24);
  vs_TEXCOORD2 = (vec3f(u_xlat24) * u_xlat0.xyz);
  u_xlat0.x = dot(u_xlat1, u_xlat1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * u_xlat1)).xyz, u_xlat0.w);
  u_xlatb24 = (x_145.unity_OrthoParams.w == 0.0f);
  if (u_xlatb24) {
    x_338 = u_xlat0.x;
  } else {
    x_338 = x_145.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.x = x_338;
  if (u_xlatb24) {
    x_350 = u_xlat0.y;
  } else {
    x_350 = x_145.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD3.y = x_350;
  if (u_xlatb24) {
    x_361 = u_xlat0.z;
  } else {
    x_361 = x_145.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD3.z = x_361;
  vs_SV_InstanceID0 = bitcast<u32>(gl_InstanceIndex);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD2_1 : vec3f,
  @location(1)
  vs_TEXCOORD3_1 : vec3f,
  @location(2) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD2, vs_TEXCOORD3, vs_SV_InstanceID0);
}

//Packages/com.unity.render-pipelines.universal/Shaders/Particles/ParticlesUnlit.shader
diagnostic(off, derivative_uniformity);

var<private> vs_TEXCOORD2 : vec3f;

var<private> SV_TARGET0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = dot(vs_TEXCOORD2, vs_TEXCOORD2);
  u_xlat0 = inverseSqrt(u_xlat0);
  SV_TARGET0 = vec4f(((vec3f(u_xlat0) * vs_TEXCOORD2)).xyz, SV_TARGET0.w);
  SV_TARGET0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4f,
}

@fragment
fn main(@location(0) vs_TEXCOORD2_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}

