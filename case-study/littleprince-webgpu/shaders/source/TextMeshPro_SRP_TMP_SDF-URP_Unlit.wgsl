//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-URP Unlit.shadergraph
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

var<private> in_POSITION0 : vec3f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_64 : VGlobals;

var<private> vs_INTERP3 : vec3f;

var<private> vs_INTERP0 : vec4f;

var<private> in_TEXCOORD0 : vec4f;

var<private> vs_INTERP1 : vec4f;

var<private> in_TEXCOORD1 : vec4f;

var<private> vs_INTERP2 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_INTERP4 : vec3f;

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
  vs_INTERP3 = u_xlat0;
  gl_Position = (u_xlat1 + x_64.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_INTERP0 = in_TEXCOORD0;
  vs_INTERP1 = in_TEXCOORD1;
  vs_INTERP2 = in_COLOR0;
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_INTERP4 = (vec3f(u_xlat6) * u_xlat0);
  return;
}

struct main_out {
  @location(3)
  vs_INTERP3_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_INTERP0_1 : vec4f,
  @location(1)
  vs_INTERP1_1 : vec4f,
  @location(2)
  vs_INTERP2_1 : vec4f,
  @location(4)
  vs_INTERP4_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3f, @location(2) in_TEXCOORD0_param : vec4f, @location(3) in_TEXCOORD1_param : vec4f, @location(4) in_COLOR0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_INTERP3, gl_Position, vs_INTERP0, vs_INTERP1, vs_INTERP2, vs_INTERP4);
}

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-URP Unlit.shadergraph
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_FaceColor : vec4f,
  /* @offset(16) */
  x_IsoPerimeter : vec4f,
  /* @offset(32) */
  x_OutlineColor1 : vec4f,
  /* @offset(48) */
  x_OutlineColor2 : vec4f,
  /* @offset(64) */
  x_OutlineColor3 : vec4f,
  /* @offset(80) */
  x_OutlineOffset1 : vec2f,
  /* @offset(88) */
  x_OutlineOffset2 : vec2f,
  /* @offset(96) */
  x_OutlineOffset3 : vec2f,
  /* @offset(104) */
  x_OutlineMode : f32,
  /* @offset(112) */
  x_Softness : vec4f,
  /* @offset(128) */
  Xhlslcc_UnusedX_FaceTex_TexelSize : vec4f,
  /* @offset(144) */
  x_FaceUVSpeed : vec2f,
  /* @offset(160) */
  x_FaceTex_ST : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedX_OutlineTex_TexelSize : vec4f,
  /* @offset(192) */
  x_OutlineTex_ST : vec4f,
  /* @offset(208) */
  x_OutlineUVSpeed : vec2f,
  /* @offset(224) */
  x_UnderlayColor : vec4f,
  /* @offset(240) */
  x_UnderlayOffset : vec2f,
  /* @offset(248) */
  x_UnderlayDilate : f32,
  /* @offset(252) */
  x_UnderlaySoftness : f32,
  /* @offset(256) */
  x_BevelType : f32,
  /* @offset(260) */
  x_BevelAmount : f32,
  /* @offset(264) */
  x_BevelOffset : f32,
  /* @offset(268) */
  x_BevelWidth : f32,
  /* @offset(272) */
  x_BevelRoundness : f32,
  /* @offset(276) */
  x_BevelClamp : f32,
  /* @offset(288) */
  x_SpecularColor : vec4f,
  /* @offset(304) */
  x_LightAngle : f32,
  /* @offset(308) */
  x_SpecularPower : f32,
  /* @offset(312) */
  x_Reflectivity : f32,
  /* @offset(316) */
  x_Diffuse : f32,
  /* @offset(320) */
  x_Ambient : f32,
  /* @offset(336) */
  x_MainTex_TexelSize : vec4f,
  /* @offset(352) */
  x_GradientScale : f32,
  /* @offset(356) */
  Xhlslcc_UnusedX_ScaleRatioA : f32,
  /* @offset(368) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_ST : vec4f,
  /* @offset(384) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_TexelSize : vec4f,
  /* @offset(400) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_MipInfo : vec4f,
  /* @offset(416) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_StreamInfo : vec4f,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_Time : vec4f,
}

@group(1) @binding(1) var<uniform> x_15 : UnityPerMaterial;

var<private> vs_INTERP0 : vec4f;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var samplerSamplerState_Linear_Clamp : sampler;

@group(1) @binding(0) var<uniform> x_59 : PGlobals;

var<private> gl_FrontFacing : bool;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_INTERP1 : vec4f;

@group(0) @binding(1) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_OutlineTex : sampler;

@group(0) @binding(0) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> vs_INTERP2 : vec4f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

const x_119 = vec4f(-0.5f);

const x_152 = vec4f(0.5f);

const x_160 = vec4f(2.0f);

const x_168 = vec4f(1.0f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlatb6 : bool;
  var u_xlat6 : f32;
  var u_xlat15 : f32;
  var u_xlat10 : f32;
  var u_xlat16 : f32;
  var u_xlat5 : f32;
  var u_xlat3 : vec4f;
  var u_xlatb16 : bool;
  var x_559 : f32;
  var u_xlat13 : vec2f;
  var u_xlat4 : vec4f;
  var u_xlat12 : vec2f;
  var u_xlat7 : vec2f;
  var u_xlat11 : f32;
  var x_983 : f32;
  var x_995 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((vec2f(1.0f) / x_15.x_MainTex_TexelSize.zw)).xy, u_xlat0.zw);
  u_xlat0.z = 0.0f;
  u_xlat1 = (-(u_xlat0.xzzy) + vs_INTERP0.xyxy);
  u_xlat0 = (u_xlat0.xzzy + vs_INTERP0.xyxy);
  let x_55 = u_xlat1;
  let x_64 = x_59.x_GlobalMipBias.x;
  let x_65 = textureSampleBias(x_MainTex, samplerSamplerState_Linear_Clamp, x_55.xy, x_64);
  u_xlat2.x = x_65.w;
  let x_72 = u_xlat1;
  let x_75 = x_59.x_GlobalMipBias.x;
  let x_76 = textureSampleBias(x_MainTex, samplerSamplerState_Linear_Clamp, x_72.zw, x_75);
  u_xlat2.z = x_76.w;
  let x_82 = u_xlat0;
  let x_85 = x_59.x_GlobalMipBias.x;
  let x_86 = textureSampleBias(x_MainTex, samplerSamplerState_Linear_Clamp, x_82.xy, x_85);
  u_xlat2.y = x_86.w;
  let x_93 = u_xlat0;
  let x_96 = x_59.x_GlobalMipBias.x;
  let x_97 = textureSampleBias(x_MainTex, samplerSamplerState_Linear_Clamp, x_93.zw, x_96);
  u_xlat2.w = x_97.w;
  let x_110 = vec4f(x_15.x_BevelOffset, x_15.x_BevelOffset, x_15.x_BevelOffset, x_15.x_BevelOffset);
  u_xlat0 = (u_xlat2 + vec4f(x_110.x, x_110.y, x_110.z, x_110.w));
  u_xlat0 = (u_xlat0 + x_119);
  u_xlat1.x = max(x_15.x_BevelWidth, 0.00999999977648258209f);
  u_xlat0 = (u_xlat0 / u_xlat1.xxxx);
  u_xlat1.x = (u_xlat1.x * x_15.x_BevelAmount);
  u_xlat1.x = (u_xlat1.x * x_15.x_GradientScale);
  u_xlat1.x = (u_xlat1.x * -2.0f);
  u_xlat0 = (u_xlat0 + x_152);
  u_xlat0 = clamp(u_xlat0, vec4f(0.0f), vec4f(1.0f));
  u_xlat2 = ((u_xlat0 * x_160) + vec4f(-1.0f));
  u_xlat2 = (-(abs(u_xlat2)) + x_168);
  u_xlatb6 = any(!((vec4f() == vec4f(x_15.x_BevelType))));
  u_xlat0 = select(u_xlat0, u_xlat2, vec4<bool>(u_xlatb6));
  u_xlat2 = (u_xlat0 * vec4f(1.57079601287841796875f));
  u_xlat2 = sin(u_xlat2);
  u_xlat2 = (-(u_xlat0) + u_xlat2);
  u_xlat0 = ((vec4f(x_15.x_BevelRoundness) * u_xlat2) + u_xlat0);
  u_xlat6 = (-(x_15.x_BevelClamp) + 1.0f);
  u_xlat0 = min(u_xlat0, vec4f(u_xlat6));
  let x_218 = (u_xlat1.xx * u_xlat0.xz);
  u_xlat0 = vec4f(x_218.x, u_xlat0.y, x_218.y, u_xlat0.w);
  u_xlat0 = vec4f(u_xlat0.x, (((u_xlat0.wy * u_xlat1.xx) + -(u_xlat0.zx))).xy, u_xlat0.w);
  u_xlat0.x = 1.0f;
  u_xlat0.w = -1.0f;
  u_xlat1.x = dot(u_xlat0.xy, u_xlat0.xy);
  u_xlat1.x = inverseSqrt(u_xlat1.x);
  u_xlat15 = dot(u_xlat0.zw, u_xlat0.zw);
  u_xlat15 = inverseSqrt(u_xlat15);
  u_xlat2.x = (u_xlat15 * u_xlat0.z);
  u_xlat2 = vec4f(u_xlat2.x, ((vec2f(u_xlat15) * vec2f(-1.0f, 0.0f))).xy, u_xlat2.w);
  u_xlat0.z = 0.0f;
  u_xlat0 = vec4f(((u_xlat1.xxx * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat0.xyz * u_xlat2.xyz)).xyz, u_xlat1.w);
  u_xlat0 = vec4f((((u_xlat2.zxy * u_xlat0.yzx) + -(u_xlat1.xyz))).xyz, u_xlat0.w);
  u_xlat1 = vec4f(select(vec3f(1.0f), vec3f(1.0f, 1.0f, -1.0f), vec3<bool>((select(0u, 4294967295u, gl_FrontFacing) != 0u))).xyz, u_xlat1.w);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat1.xyz)).xyz, u_xlat0.w);
  u_xlat0.w = abs(u_xlat0.z);
  u_xlat10 = (u_xlat0.w * u_xlat0.w);
  u_xlat1.x = (-(x_15.x_Ambient) + 1.0f);
  u_xlat10 = ((u_xlat10 * u_xlat1.x) + x_15.x_Ambient);
  u_xlat1.x = sin(x_15.x_LightAngle);
  u_xlat2.x = cos(x_15.x_LightAngle);
  u_xlat1.y = u_xlat2.x;
  u_xlat1.z = 1.0f;
  u_xlat16 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat16 = inverseSqrt(u_xlat16);
  u_xlat1 = vec4f(((vec3f(u_xlat16) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat0.x = dot(u_xlat0.xyw, u_xlat1.xyz);
  u_xlat5 = ((-(u_xlat0.x) * x_15.x_Diffuse) + 1.0f);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * x_15.x_Reflectivity);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat1 = vec4f(((u_xlat0.xxx * x_15.x_SpecularColor.xyz)).xyz, u_xlat1.w);
  let x_413 = vec3f(x_15.x_SpecularPower, x_15.x_SpecularPower, x_15.x_SpecularPower);
  u_xlat1 = vec4f(((u_xlat1.xyz * vec3f(x_413.x, x_413.y, x_413.z))).xyz, u_xlat1.w);
  let x_425 = vs_INTERP0;
  let x_428 = x_59.x_GlobalMipBias.x;
  let x_429 = textureSampleBias(x_MainTex, sampler_MainTex, x_425.xy, x_428);
  u_xlat2.x = x_429.w;
  let x_438 = (vec2f(x_15.x_GradientScale) / x_15.x_MainTex_TexelSize.zw);
  u_xlat0 = vec4f(x_438.x, u_xlat0.yz, x_438.y);
  u_xlat3 = vec4f((((-(x_15.x_OutlineOffset3) * u_xlat0.xw) + vs_INTERP0.xy)).xy, u_xlat3.zw);
  let x_458 = u_xlat3;
  let x_461 = x_59.x_GlobalMipBias.x;
  let x_462 = textureSampleBias(x_MainTex, sampler_MainTex, x_458.xy, x_461);
  u_xlat2.w = x_462.w;
  u_xlat3 = ((-(vec4f(x_15.x_OutlineOffset1.x, x_15.x_OutlineOffset1.y, x_15.x_OutlineOffset2.x, x_15.x_OutlineOffset2.y)) * u_xlat0.xwxw) + vs_INTERP0.xyxy);
  let x_492 = ((-(x_15.x_UnderlayOffset) * u_xlat0.xw) + vs_INTERP0.xy);
  u_xlat0 = vec4f(x_492.x, u_xlat0.yz, x_492.y);
  let x_498 = u_xlat0;
  let x_501 = x_59.x_GlobalMipBias.x;
  let x_502 = textureSampleBias(x_MainTex, sampler_MainTex, x_498.xw, x_501);
  u_xlat0.x = x_502.w;
  u_xlat0.x = (u_xlat0.x + -0.5f);
  u_xlat0.x = (u_xlat0.x * x_15.x_GradientScale);
  let x_518 = u_xlat3;
  let x_521 = x_59.x_GlobalMipBias.x;
  let x_522 = textureSampleBias(x_MainTex, sampler_MainTex, x_518.xy, x_521);
  u_xlat2.y = x_522.w;
  let x_528 = u_xlat3;
  let x_531 = x_59.x_GlobalMipBias.x;
  let x_532 = textureSampleBias(x_MainTex, sampler_MainTex, x_528.zw, x_531);
  u_xlat2.z = x_532.w;
  u_xlat2 = (u_xlat2 + x_119);
  u_xlat2 = (u_xlat2 * vec4f(x_15.x_GradientScale));
  u_xlat15 = max(u_xlat2.y, u_xlat2.x);
  u_xlat15 = max(u_xlat2.z, u_xlat15);
  u_xlatb16 = any(!((vec4f() == vec4f(x_15.x_OutlineMode))));
  if (u_xlatb16) {
    x_559 = u_xlat15;
  } else {
    x_559 = u_xlat2.w;
  }
  u_xlat2.w = x_559;
  let x_568 = vs_INTERP0;
  let x_570 = dpdxCoarse(x_568.xy);
  u_xlat3 = vec4f(x_570.xy, u_xlat3.zw);
  let x_575 = vs_INTERP0;
  u_xlat13 = dpdyCoarse(x_575.yx);
  u_xlat15 = (u_xlat13.y * u_xlat3.y);
  u_xlat15 = ((u_xlat3.x * u_xlat13.x) + -(u_xlat15));
  u_xlat15 = inverseSqrt(abs(u_xlat15));
  u_xlat15 = (u_xlat15 / x_15.x_MainTex_TexelSize.z);
  u_xlat2 = (vec4f(u_xlat15) * u_xlat2);
  u_xlat2 = ((u_xlat2 * x_160) + x_152);
  u_xlat3 = (x_15.x_IsoPerimeter * vec4f(x_15.x_GradientScale));
  u_xlat2 = ((u_xlat3 * vec4f(u_xlat15)) + u_xlat2);
  u_xlat16 = (u_xlat15 * x_15.x_GradientScale);
  u_xlat3 = (vec4f(u_xlat16) * x_15.x_Softness);
  u_xlat2 = ((u_xlat3 * x_152) + u_xlat2);
  u_xlat3 = ((x_15.x_Softness * vec4f(u_xlat16)) + x_168);
  u_xlat2 = (u_xlat2 / u_xlat3);
  u_xlat2 = clamp(u_xlat2, vec4f(0.0f), vec4f(1.0f));
  u_xlat3.w = (u_xlat2.w * x_15.x_OutlineColor3.w);
  u_xlat3 = vec4f(((u_xlat3.www * x_15.x_OutlineColor3.xyz)).xyz, u_xlat3.w);
  u_xlat4 = vec4f(((x_15.x_OutlineColor2.www * x_15.x_OutlineColor2.xyz)).xyz, u_xlat4.w);
  u_xlat4.w = x_15.x_OutlineColor2.w;
  u_xlat4 = (-(u_xlat3) + u_xlat4);
  u_xlat3 = ((u_xlat2.zzzz * u_xlat4) + u_xlat3);
  u_xlat12 = ((vs_INTERP1.xy * x_15.x_OutlineTex_ST.xy) + x_15.x_OutlineTex_ST.zw);
  u_xlat12 = ((x_15.x_OutlineUVSpeed * x_59.x_Time.yy) + u_xlat12);
  let x_712 = u_xlat12;
  let x_714 = x_59.x_GlobalMipBias.x;
  let x_715 = textureSampleBias(x_OutlineTex, sampler_OutlineTex, x_712, x_714);
  u_xlat4 = x_715;
  u_xlat4 = (u_xlat4 * x_15.x_OutlineColor1);
  u_xlat4 = vec4f(((u_xlat4.www * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat4 = (-(u_xlat3) + u_xlat4);
  u_xlat3 = ((u_xlat2.yyyy * u_xlat4) + u_xlat3);
  u_xlat7 = ((vs_INTERP1.xy * x_15.x_FaceTex_ST.xy) + x_15.x_FaceTex_ST.zw);
  u_xlat7 = ((x_15.x_FaceUVSpeed * x_59.x_Time.yy) + u_xlat7);
  let x_763 = u_xlat7;
  let x_765 = x_59.x_GlobalMipBias.x;
  let x_766 = textureSampleBias(x_FaceTex, sampler_FaceTex, x_763, x_765);
  u_xlat4 = x_766;
  u_xlat4 = (u_xlat4 * x_15.x_FaceColor);
  u_xlat4 = (u_xlat4 * vs_INTERP2);
  u_xlat4 = vec4f(((u_xlat4.www * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat4 = (-(u_xlat3) + u_xlat4);
  u_xlat2 = ((u_xlat2.xxxx * u_xlat4) + u_xlat3);
  u_xlat2 = vec4f(((u_xlat2.xyz / u_xlat2.www)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(max(u_xlat2.xyz, vec3f()).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((u_xlat1.xyz * u_xlat2.www) + u_xlat2.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((vec3f(u_xlat5) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((vec3f(u_xlat10) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat0.x = dot(u_xlat0.xx, vec2f(u_xlat15));
  u_xlat0.x = (u_xlat0.x + 0.5f);
  u_xlat5 = (x_15.x_UnderlayDilate * x_15.x_GradientScale);
  u_xlat0.x = ((u_xlat5 * u_xlat15) + u_xlat0.x);
  u_xlat5 = (u_xlat16 * x_15.x_UnderlaySoftness);
  u_xlat10 = ((x_15.x_UnderlaySoftness * u_xlat16) + 1.0f);
  u_xlat0.x = ((u_xlat5 * 0.5f) + u_xlat0.x);
  u_xlat0.x = (u_xlat0.x / u_xlat10);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat5 = (u_xlat0.x * x_15.x_UnderlayColor.w);
  u_xlat0.x = ((-(x_15.x_UnderlayColor.w) * u_xlat0.x) + 1.0f);
  u_xlat3.w = ((u_xlat0.x * u_xlat2.w) + u_xlat5);
  u_xlat0 = vec4f(((vec3f(u_xlat5) * x_15.x_UnderlayColor.xyz)).xyz, u_xlat0.w);
  u_xlat15 = (-(u_xlat2.w) + 1.0f);
  u_xlat0 = vec4f(((u_xlat0.xyz * vec3f(u_xlat15))).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((u_xlat1.xyz * u_xlat2.www) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat3 = vec4f(((u_xlat0.xyz / u_xlat3.www)).xyz, u_xlat3.w);
  u_xlat0 = (u_xlat3 * vs_INTERP2.wwww);
  u_xlat1.x = ((u_xlat3.w * vs_INTERP2.w) + -0.00100000004749745131f);
  let x_949 = u_xlat0.w;
  u_xlat6 = dpdxCoarse(x_949);
  let x_953 = u_xlat0.w;
  u_xlat11 = dpdyCoarse(x_953);
  u_xlat6 = (abs(u_xlat11) + abs(u_xlat6));
  u_xlat11 = ((-(u_xlat6) * 0.5f) + u_xlat1.x);
  u_xlat6 = max(u_xlat6, 0.00009999999747378752f);
  u_xlat6 = (u_xlat11 / u_xlat6);
  u_xlat6 = (u_xlat6 + 1.0f);
  u_xlat6 = clamp(u_xlat6, 0.0f, 1.0f);
  u_xlat11 = (u_xlat6 + -0.00009999999747378752f);
  u_xlatb16 = !((x_59.x_AlphaToMaskAvailable == 0.0f));
  if (u_xlatb16) {
    x_983 = u_xlat11;
  } else {
    x_983 = u_xlat1.x;
  }
  u_xlat1.x = x_983;
  if (u_xlatb16) {
    x_995 = u_xlat6;
  } else {
    x_995 = u_xlat0.w;
  }
  SV_Target0.w = x_995;
  SV_Target0 = vec4f(u_xlat0.xyz.xyz, SV_Target0.w);
  u_xlatb0 = (u_xlat1.x < 0.0f);
  if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec4f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(1) vs_INTERP1_param : vec4f, @location(2) vs_INTERP2_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

