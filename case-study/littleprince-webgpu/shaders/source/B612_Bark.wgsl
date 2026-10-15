//Assets/Shared/Rendering/Shaders/B612_Bark.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct unity_Builtins0Array_Type {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorldArray : Arr,
  /* @offset(64) */
  hlslcc_mtx4x4unity_WorldToObjectArray : Arr_1,
  /* @offset(128) */
  unity_LODFadeArray : vec2f,
}

alias Arr_2 = array<unity_Builtins0Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw0 {
  /* @offset(0) */
  unity_Builtins0Array : Arr_2,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4f,
  /* @offset(16) */
  x_DetailNormalMap_ST : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_BaseColor : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BumpScale : f32,
  /* @offset(52) */
  Xhlslcc_UnusedX_OcclusionStrength : f32,
  /* @offset(56) */
  Xhlslcc_UnusedX_Smoothness : f32,
  /* @offset(60) */
  Xhlslcc_UnusedX_DetailNormalScale : f32,
  /* @offset(64) */
  x_WindMode : f32,
  /* @offset(68) */
  x_WindBend : f32,
  /* @offset(72) */
  x_WindBranch : f32,
  /* @offset(76) */
  x_WindFrequency : f32,
}

alias Arr_3 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  unity_FogParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_3,
  /* @offset(96) */
  x_B612WindDirection : vec4f,
  /* @offset(112) */
  x_B612WindGust : vec4f,
  /* @offset(128) */
  x_B612WindTime : vec4f,
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
  unity_WorldTransformParams : vec4f,
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

var<private> gl_InstanceIndex : i32;

@group(1) @binding(5) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4f;

@group(1) @binding(6) var<uniform> x_42 : UnityInstancing_PerDraw0;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

@group(1) @binding(10) var<uniform> x_141 : UnityPerMaterial;

@group(1) @binding(11) var<uniform> x_154 : VGlobals;

@group(0) @binding(21) var x_B612WindNoise : texture_2d<f32>;

@group(0) @binding(22) var sampler_B612WindNoise : sampler;

var<private> in_COLOR0 : vec4f;

var<private> in_TANGENT0 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

@group(1) @binding(12) var<uniform> x_508 : UnityPerDraw;

var<private> vs_TEXCOORD3 : vec4f;

var<private> in_TEXCOORD0 : vec2f;

var<private> phase0_Output0_1 : vec4f;

var<private> vs_SV_InstanceID0 : u32;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD4 : f32;

var<private> gl_Position : vec4f;

const x_181 = vec2f(-1.0f, 1.0f);

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat5 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlatb5 : bool;
  var u_xlat10 : vec2f;
  var u_xlat3 : vec3f;
  var u_xlat17 : f32;
  var u_xlat8 : vec3f;
  var u_xlat4 : vec3f;
  var u_xlat15 : f32;
  var u_xlat0 : vec3f;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlati0 = (gl_InstanceIndex + x_14.unity_BaseInstanceID);
  u_xlati0 = (u_xlati0 * 9i);
  u_xlat5 = (in_POSITION0.yyy * x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[1i].xyz);
  u_xlat5 = ((x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[0i].xyz * in_POSITION0.xxx) + u_xlat5);
  u_xlat5 = ((x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[2i].xyz * in_POSITION0.zzz) + u_xlat5);
  u_xlat1 = vec4f(((u_xlat5 + x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[3i].xyz)).xyz, u_xlat1.w);
  u_xlat2.x = dot(in_NORMAL0, x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_WorldToObjectArray[0i].xyz);
  u_xlat2.y = dot(in_NORMAL0, x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_WorldToObjectArray[1i].xyz);
  u_xlat2.z = dot(in_NORMAL0, x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_WorldToObjectArray[2i].xyz);
  u_xlat5.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat5.x = max(u_xlat5.x, 1.17549435e-38f);
  u_xlat5.x = inverseSqrt(u_xlat5.x);
  vs_TEXCOORD1 = (u_xlat5.xxx * u_xlat2.xyz);
  u_xlatb5 = (x_141.x_WindMode < 0.5f);
  if (u_xlatb5) {
    u_xlat5.x = (x_154.x_B612WindDirection.w * x_154.x_B612WindTime.z);
    u_xlat10 = ((u_xlat1.xz * vec2f(0.05000000074505805969f)) + x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[3i].xz);
    u_xlat2 = vec4f(((x_154.x_B612WindDirection.zx * x_181)).xy, u_xlat2.zw);
    u_xlat2.x = dot(u_xlat10, u_xlat2.xy);
    u_xlat10.x = dot(u_xlat10, x_154.x_B612WindDirection.xz);
    u_xlat2.y = (u_xlat10.x + -(x_154.x_B612WindTime.x));
    u_xlat10 = (u_xlat2.xy * x_154.x_B612WindGust.yy);
    u_xlat10 = textureSampleLevel(x_B612WindNoise, sampler_B612WindNoise, u_xlat10, 0.0f).xy;
    u_xlat10 = (u_xlat10 + vec2f(-0.5f));
    u_xlat2.x = ((x_154.x_B612WindGust.x * 1.20000004768371582031f) + 0.60000002384185791016f);
    u_xlat10.x = ((u_xlat10.x * u_xlat2.x) + 0.5f);
    u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
    u_xlat2 = vec4f(((u_xlat5.xx * vec2f(x_141.x_WindBend, x_141.x_WindBranch))).xy, u_xlat2.zw);
    u_xlat5 = vec3f((((u_xlat10.xx * vec2f(0.89999997615814208984f, 0.80000001192092895508f)) + vec2f(0.25f, 0.34999999403953552246f))).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy * u_xlat2.xy)).xy, u_xlat5.z);
    u_xlat2.x = in_COLOR0.x;
    u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
    u_xlat2.x = log2(u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * 1.5f);
    u_xlat2.x = exp2(u_xlat2.x);
    u_xlat5.x = (u_xlat5.x * u_xlat2.x);
    let x_306 = x_154.x_B612WindDirection.xz;
    u_xlat2 = vec4f(x_306.x, u_xlat2.y, x_306.y, u_xlat2.w);
    u_xlat2.y = 0.0f;
    u_xlat3 = vec3f(((in_COLOR0.yy * vec2f(6.28318548202514648438f, 8.60796451568603515625f))).xy, u_xlat3.z);
    u_xlat17 = (x_154.x_B612WindTime.y * x_141.x_WindFrequency);
    u_xlat3.x = ((x_154.x_B612WindTime.y * x_141.x_WindFrequency) + u_xlat3.x);
    u_xlat3.x = sin(u_xlat3.x);
    u_xlat17 = ((u_xlat17 * 1.71000003814697265625f) + u_xlat3.y);
    u_xlat17 = (u_xlat17 + 1.29999995231628417969f);
    u_xlat17 = sin(u_xlat17);
    u_xlat10.x = (u_xlat5.y * in_COLOR0.x);
    u_xlat8 = (u_xlat10.xxx * u_xlat2.xyz);
    u_xlat3.x = ((u_xlat3.x * 0.44999998807907104492f) + 0.55000001192092895508f);
    let x_373 = (x_154.x_B612WindDirection.zx * x_181);
    u_xlat4 = vec3f(x_373.x, u_xlat4.y, x_373.y);
    u_xlat4.y = 0.0f;
    u_xlat4 = (u_xlat10.xxx * u_xlat4);
    u_xlat15 = (u_xlat10.y * x_154.x_B612WindGust.z);
    u_xlat15 = (u_xlat15 * 0.40000000596046447754f);
    u_xlat15 = ((u_xlat17 * 0.34999999403953552246f) + u_xlat15);
    u_xlat4 = (vec3f(u_xlat15) * u_xlat4);
    u_xlat3 = ((u_xlat8 * u_xlat3.xxx) + u_xlat4);
    u_xlat10.x = (u_xlat10.x * u_xlat17);
    u_xlat4.y = (u_xlat10.x * 0.21999999880790710449f);
    u_xlat4.x = 0.0f;
    u_xlat4.z = 0.0f;
    u_xlat3 = (u_xlat3 + u_xlat4);
    u_xlat5 = ((u_xlat2.xyz * u_xlat5.xxx) + u_xlat3);
    u_xlat1 = vec4f(((u_xlat5 + u_xlat1.xyz)).xyz, u_xlat1.w);
  }
  u_xlat2 = (u_xlat1.yyyy * x_154.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat2 = ((x_154.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat1.xxxx) + u_xlat2);
  u_xlat2 = ((x_154.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat1.zzzz) + u_xlat2);
  u_xlat2 = (u_xlat2 + x_154.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat5 = (in_TANGENT0.yyy * x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[1i].xyz);
  u_xlat5 = ((x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[0i].xyz * in_TANGENT0.xxx) + u_xlat5);
  u_xlat0 = ((x_42.unity_Builtins0Array[(u_xlati0 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[2i].xyz * in_TANGENT0.zzz) + u_xlat5);
  u_xlat15 = dot(u_xlat0, u_xlat0);
  u_xlat15 = max(u_xlat15, 1.17549435e-38f);
  u_xlat15 = inverseSqrt(u_xlat15);
  vs_TEXCOORD2 = vec4f(((vec3f(u_xlat15) * u_xlat0)).xyz, vs_TEXCOORD2.w);
  u_xlatb0 = (x_508.unity_WorldTransformParams.w >= 0.0f);
  u_xlat0.x = select(-1.0f, 1.0f, u_xlatb0);
  vs_TEXCOORD2.w = (u_xlat0.x * in_TANGENT0.w);
  vs_TEXCOORD3 = vec4f((((in_TEXCOORD0 * x_141.x_BaseMap_ST.xy) + x_141.x_BaseMap_ST.zw)).xy, vs_TEXCOORD3.zw);
  vs_TEXCOORD3 = vec4f(vs_TEXCOORD3.xy, (((in_TEXCOORD0 * x_141.x_DetailNormalMap_ST.xy) + x_141.x_DetailNormalMap_ST.zw)).xy);
  u_xlat0.x = (u_xlat2.z / x_154.x_ProjectionParams.y);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x * x_154.x_ProjectionParams.z);
  u_xlat0.x = max(u_xlat0.x, 0.0f);
  u_xlat1.w = (u_xlat0.x * x_154.unity_FogParams.x);
  gl_Position = u_xlat2;
  phase0_Output0_1 = u_xlat1;
  vs_SV_InstanceID0 = bitcast<u32>(gl_InstanceIndex);
  vs_TEXCOORD0 = phase0_Output0_1.xyz;
  vs_TEXCOORD4 = phase0_Output0_1.w;
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD1_1 : vec3f,
  @location(3)
  vs_TEXCOORD2_1 : vec4f,
  @location(4)
  vs_TEXCOORD3_1 : vec4f,
  @builtin(position)
  gl_Position : vec4f,
  @location(5) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @location(1)
  vs_TEXCOORD4_1 : f32,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(3) in_COLOR0_param : vec4f, @location(2) in_TANGENT0_param : vec4f, @location(4) in_TEXCOORD0_param : vec2f) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, gl_Position, vs_SV_InstanceID0, vs_TEXCOORD0, vs_TEXCOORD4);
}


override UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
//Assets/Shared/Rendering/Shaders/B612_Bark.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
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
  unity_FogColor : vec4f,
  /* @offset(208) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(272) */
  x_DitheringTextureInvSize : f32,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

struct unity_Builtins0Array_Type {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorldArray : Arr_1,
  /* @offset(64) */
  hlslcc_mtx4x4unity_WorldToObjectArray : Arr_2,
  /* @offset(128) */
  unity_LODFadeArray : vec2f,
}

alias Arr_3 = array<unity_Builtins0Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw0 {
  /* @offset(0) */
  unity_Builtins0Array : Arr_3,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_DetailNormalMap_ST : vec4f,
  /* @offset(32) */
  x_BaseColor : vec4f,
  /* @offset(48) */
  x_BumpScale : f32,
  /* @offset(52) */
  x_OcclusionStrength : f32,
  /* @offset(56) */
  x_Smoothness : f32,
  /* @offset(60) */
  x_DetailNormalScale : f32,
  /* @offset(64) */
  Xhlslcc_UnusedX_WindMode : f32,
  /* @offset(68) */
  Xhlslcc_UnusedX_WindBend : f32,
  /* @offset(72) */
  Xhlslcc_UnusedX_WindBranch : f32,
  /* @offset(76) */
  Xhlslcc_UnusedX_WindFrequency : f32,
}

alias Arr_4 = array<vec4f, 20u>;

alias Arr_5 = array<vec4f, 32u>;

alias Arr_6 = array<vec4f, 128u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_4,
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
  x_AdditionalShadowOffset0 : vec4f,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4f,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4f,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4f,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_5,
  /* @offset(1040) */
  hlslcc_mtx4x4_AdditionalLightsWorldToShadow : Arr_6,
}

struct unity_Builtins2Array_Type {
  /* @offset(0) */
  unity_SHArArray : vec4f,
  /* @offset(16) */
  unity_SHAgArray : vec4f,
  /* @offset(32) */
  unity_SHAbArray : vec4f,
  /* @offset(48) */
  unity_SHBrArray : vec4f,
  /* @offset(64) */
  unity_SHBgArray : vec4f,
  /* @offset(80) */
  unity_SHBbArray : vec4f,
  /* @offset(96) */
  unity_SHCArray : vec4f,
}

alias Arr_7 = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  /* @offset(0) */
  unity_Builtins2Array : Arr_7,
}

alias Arr_8 = array<vec4f, 4u>;

alias Arr_9 = array<vec4f, 128u>;

alias Arr_10 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_11 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToLight : Arr_8,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  hlslcc_mtx4x4_AdditionalLightsWorldToLights : Arr_9,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_10,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_11,
}

alias Arr_12 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_12,
}

alias Arr_13 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_13,
}

alias Arr_14 = array<vec4f, 32u>;

alias Arr_15 = array<vec4f, 32u>;

alias Arr_16 = array<vec4f, 32u>;

alias Arr_17 = array<vec4f, 224u>;

alias Arr_18 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_14,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_15,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_16,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_17,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_18,
}

alias Arr_19 = array<vec4f, 32u>;

alias Arr_20 = array<vec4f, 32u>;

alias Arr_21 = array<vec4f, 32u>;

alias Arr_22 = array<vec4f, 32u>;

alias Arr_23 = array<vec4f, 32u>;

alias Arr_24 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_19,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_20,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_21,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_22,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_23,
  /* @offset(2560) */
  Xhlslcc_UnusedX_AdditionalLightsLayerMasks : Arr_24,
}

var<private> gl_FragCoord : vec4f;

var<private> vs_SV_InstanceID0 : u32;

@group(1) @binding(5) var<uniform> x_82 : UnityDrawCallInfo;

@group(1) @binding(0) var<uniform> x_99 : PGlobals;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_PointRepeat : sampler;

@group(1) @binding(6) var<uniform> x_142 : UnityInstancing_PerDraw0;

@group(0) @binding(8) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD3 : vec4f;

@group(1) @binding(10) var<uniform> x_207 : UnityPerMaterial;

@group(0) @binding(10) var x_MaskMap : texture_2d<f32>;

@group(0) @binding(19) var sampler_MaskMap : sampler;

@group(0) @binding(9) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(18) var sampler_BumpMap : sampler;

@group(0) @binding(11) var x_DetailNormalMap : texture_2d<f32>;

@group(0) @binding(20) var sampler_DetailNormalMap : sampler;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(8) var<uniform> x_486 : LightShadows;

@group(1) @binding(7) var<uniform> x_661 : UnityInstancing_PerDraw2;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(9) var<uniform> x_2200 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_2504 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2678 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2912 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(14) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3537 : AdditionalLights;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

var<private> vs_TEXCOORD4 : f32;

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

const x_248 = vec2f(2.0f);

const x_251 = vec2f(-1.0f);

const x_749 = vec2f(1.0f);

const x_979 = vec4f(0.25f);

const x_997 = vec2f(0.5f);

const x_1020 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1032 = vec2f(0.07999999821186065674f);

const x_1088 = vec2f(0.15999999642372131348f);

const x_1161 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1502 = vec2f(0.04081600159406661987f);

const x_1561 = vec2f(0.08163200318813323975f);

const x_1578 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1581 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1588 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1626 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2637 = vec2u(2u);

const x_3079 = vec3f(1.0f);

const x_4353 = vec3f(0.08163200318813323975f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlati0 : vec3i;
  var u_xlat29 : vec2f;
  var u_xlatb87 : bool;
  var x_151 : f32;
  var u_xlat0 : vec4f;
  var u_xlatb0 : bool;
  var u_xlat1 : vec3f;
  var u_xlat2 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat88 : f32;
  var u_xlat4 : vec3f;
  var u_xlat61 : vec2f;
  var u_xlat89 : f32;
  var u_xlat5 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlatb88 : bool;
  var x_470 : vec3f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu89 : u32;
  var u_xlati89 : i32;
  var u_xlat58 : f32;
  var u_xlat31 : f32;
  var u_xlat60 : f32;
  var u_xlat90 : f32;
  var u_xlat91 : f32;
  var u_xlat92 : f32;
  var u_xlatb91 : bool;
  var txVec0 : vec3f;
  var u_xlat10 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb93 : bool;
  var u_xlat37 : vec3f;
  var u_xlat11 : vec4f;
  var u_xlat67 : vec2f;
  var u_xlat69 : vec2f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat93 : f32;
  var txVec4 : vec3f;
  var u_xlat94 : f32;
  var txVec5 : vec3f;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat73 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat39 : vec2f;
  var u_xlat19 : vec4f;
  var u_xlat70 : vec2f;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
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
  var u_xlatb35 : bool;
  var u_xlatb94 : bool;
  var u_xlatb37 : vec3<bool>;
  var x_2286 : f32;
  var x_2297 : vec3f;
  var u_xlatu8 : vec2u;
  var u_xlatu66 : vec2u;
  var u_xlati8 : i32;
  var u_xlat34 : f32;
  var x_2428 : f32;
  var u_xlatu88 : u32;
  var u_xlatu5 : u32;
  var u_xlati34 : i32;
  var u_xlatu34 : vec2u;
  var u_xlati6 : vec3i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati37 : vec2i;
  var u_xlati11 : vec2i;
  var u_xlati88 : i32;
  var u_xlatu6 : vec2u;
  var u_xlatu11 : vec2u;
  var u_xlati69 : i32;
  var u_xlatu98 : u32;
  var u_xlatu64 : u32;
  var u_xlati96 : i32;
  var u_xlatu97 : u32;
  var u_xlatb99 : bool;
  var u_xlatu13 : vec4u;
  var u_xlatb13 : bool;
  var u_xlatu99 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
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
  var u_xlati72 : vec2i;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec2i;
  var u_xlati14 : vec4i;
  var u_xlati42 : vec2i;
  var u_xlati71 : vec2i;
  var u_xlati99 : i32;
  var u_xlatb64 : bool;
  var u_xlati64 : i32;
  var u_xlat99 : f32;
  var u_xlat42 : vec3f;
  var x_2973 : f32;
  var x_2987 : f32;
  var x_3001 : f32;
  var x_3051 : vec3f;
  var u_xlatu100 : u32;
  var u_xlat100 : f32;
  var u_xlat43 : vec3f;
  var u_xlatb72 : vec2<bool>;
  var hlslcc_movcTemp : vec3f;
  var x_3115 : f32;
  var x_3128 : f32;
  var u_xlat71 : vec2f;
  var u_xlatu71 : u32;
  var u_xlatu58 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlati94 : i32;
  var u_xlati93 : i32;
  var u_xlatb12 : vec4<bool>;
  var u_xlat96 : f32;
  var x_3683 : f32;
  var x_3692 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat97 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat44 : vec2f;
  var u_xlat79 : vec2f;
  var u_xlat74 : vec2f;
  var u_xlat24 : vec4f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec4f;
  var txVec43 : vec3f;
  var txVec44 : vec3f;
  var txVec45 : vec3f;
  var txVec46 : vec3f;
  var txVec47 : vec3f;
  var txVec48 : vec3f;
  var txVec49 : vec3f;
  var txVec50 : vec3f;
  var txVec51 : vec3f;
  var txVec52 : vec3f;
  var txVec53 : vec3f;
  var txVec54 : vec3f;
  var txVec55 : vec3f;
  var txVec56 : vec3f;
  var txVec57 : vec3f;
  var txVec58 : vec3f;
  var txVec59 : vec3f;
  var u_xlatb96 : bool;
  var u_xlati97 : i32;
  var u_xlatb70 : vec2<bool>;
  var x_5203 : f32;
  var x_5216 : f32;
  var x_5265 : f32;
  var x_5276 : vec3f;
  var u_xlati5 : vec2i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati10 : vec2i;
  var u_xlati68 : vec2i;
  var u_xlati58 : i32;
  var u_xlati60 : i32;
  var u_xlatu10 : vec2u;
  var u_xlatu60 : u32;
  var u_xlati91 : i32;
  var u_xlatb34 : bool;
  var u_xlatu93 : u32;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlatu12 : vec4u;
  var u_xlati12 : vec4i;
  var param_30 : i32;
  var param_31 : i32;
  var param_32 : i32;
  var param_33 : i32;
  var param_34 : i32;
  var param_35 : i32;
  var param_36 : i32;
  var param_37 : i32;
  var param_38 : i32;
  var param_39 : i32;
  var param_40 : i32;
  var param_41 : i32;
  var u_xlatb14 : vec4<bool>;
  var u_xlat98 : f32;
  var x_5917 : f32;
  var x_5926 : f32;
  var txVec60 : vec3f;
  var txVec61 : vec3f;
  var txVec62 : vec3f;
  var txVec63 : vec3f;
  var u_xlat75 : vec2f;
  var txVec64 : vec3f;
  var txVec65 : vec3f;
  var txVec66 : vec3f;
  var txVec67 : vec3f;
  var txVec68 : vec3f;
  var txVec69 : vec3f;
  var txVec70 : vec3f;
  var txVec71 : vec3f;
  var txVec72 : vec3f;
  var u_xlat45 : vec3f;
  var u_xlat46 : vec2f;
  var u_xlat81 : vec2f;
  var u_xlat76 : vec2f;
  var u_xlat27 : vec4f;
  var u_xlat28 : vec4f;
  var txVec73 : vec3f;
  var txVec74 : vec3f;
  var txVec75 : vec3f;
  var txVec76 : vec3f;
  var txVec77 : vec3f;
  var txVec78 : vec3f;
  var txVec79 : vec3f;
  var txVec80 : vec3f;
  var txVec81 : vec3f;
  var txVec82 : vec3f;
  var txVec83 : vec3f;
  var txVec84 : vec3f;
  var txVec85 : vec3f;
  var txVec86 : vec3f;
  var txVec87 : vec3f;
  var txVec88 : vec3f;
  var txVec89 : vec3f;
  var u_xlatb98 : bool;
  var u_xlati98 : i32;
  var u_xlat72 : vec2f;
  var x_7421 : f32;
  var x_7434 : f32;
  var x_7480 : f32;
  var x_7491 : vec3f;
  var u_xlat87 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlati0.x = (bitcast<i32>(vs_SV_InstanceID0) + x_82.unity_BaseInstanceID);
  u_xlat29 = (hlslcc_FragCoord.xy * vec2f(x_99.x_DitheringTextureInvSize));
  let x_116 = u_xlat29;
  let x_119 = x_99.x_GlobalMipBias.x;
  let x_120 = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, x_116, x_119);
  u_xlat29.x = x_120.w;
  let x_130 = (u_xlati0.xx * vec2i(9i, 7i));
  u_xlati0 = vec3i(x_130.x, u_xlati0.y, x_130.y);
  u_xlatb87 = (x_142.unity_Builtins0Array[(u_xlati0.x / 9i)].unity_LODFadeArray.x >= 0.0f);
  if (u_xlatb87) {
    x_151 = abs(u_xlat29.x);
  } else {
    x_151 = -(abs(u_xlat29.x));
  }
  u_xlat29.x = x_151;
  u_xlat0.x = (-(u_xlat29.x) + x_142.unity_Builtins0Array[(u_xlati0.x / 9i)].unity_LODFadeArray.x);
  u_xlatb0 = (u_xlat0.x < 0.0f);
  if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
    discard;
  }
  let x_193 = vs_TEXCOORD3;
  let x_196 = x_99.x_GlobalMipBias.x;
  let x_197 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_193.xy, x_196);
  let x_198 = x_197.xyz;
  u_xlat0 = vec4f(x_198.xy, u_xlat0.z, x_198.z);
  u_xlat1 = (u_xlat0.xyw * x_207.x_BaseColor.xyz);
  let x_219 = vs_TEXCOORD3;
  let x_222 = x_99.x_GlobalMipBias.x;
  let x_223 = textureSampleBias(x_MaskMap, sampler_MaskMap, x_219.xy, x_222);
  u_xlat2 = x_223.xyw;
  let x_231 = vs_TEXCOORD3;
  let x_234 = x_99.x_GlobalMipBias.x;
  let x_235 = textureSampleBias(x_BumpMap, sampler_BumpMap, x_231.xy, x_234);
  u_xlat3 = vec4f(x_235.xyw.xyz, u_xlat3.w);
  u_xlat3.x = (u_xlat3.x * u_xlat3.z);
  u_xlat3 = vec4f((((u_xlat3.xy * x_248) + x_251)).xy, u_xlat3.zw);
  u_xlat88 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat88 = min(u_xlat88, 1.0f);
  u_xlat88 = (-(u_xlat88) + 1.0f);
  u_xlat88 = sqrt(u_xlat88);
  u_xlat88 = max(u_xlat88, 0.0000000000000001f);
  let x_277 = vs_TEXCOORD3;
  let x_280 = x_99.x_GlobalMipBias.x;
  let x_281 = textureSampleBias(x_DetailNormalMap, sampler_DetailNormalMap, x_277.zw, x_280);
  u_xlat4 = x_281.xyw;
  u_xlat4.x = (u_xlat4.x * u_xlat4.z);
  u_xlat61 = ((u_xlat4.xy * x_248) + x_251);
  u_xlat89 = dot(u_xlat61, u_xlat61);
  u_xlat89 = min(u_xlat89, 1.0f);
  u_xlat89 = (-(u_xlat89) + 1.0f);
  u_xlat89 = sqrt(u_xlat89);
  u_xlat89 = max(u_xlat89, 0.0000000000000001f);
  let x_313 = vec2f(x_207.x_DetailNormalScale, x_207.x_DetailNormalScale);
  u_xlat61 = (u_xlat61 * vec2f(x_313.x, x_313.y));
  u_xlat3 = vec4f((((u_xlat3.xy * vec2f(x_207.x_BumpScale)) + u_xlat61)).xy, u_xlat3.zw);
  u_xlat3.z = (u_xlat88 * u_xlat89);
  u_xlat88 = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat88 = inverseSqrt(u_xlat88);
  u_xlat3 = vec4f(((vec3f(u_xlat88) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat88 = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat88 = inverseSqrt(u_xlat88);
  u_xlat4 = (vec3f(u_xlat88) * vs_TEXCOORD1);
  u_xlat88 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
  u_xlat88 = inverseSqrt(u_xlat88);
  u_xlat5 = (vec3f(u_xlat88) * vs_TEXCOORD2.xyz);
  u_xlat6 = vec4f(((u_xlat4.zxy * u_xlat5.yzx)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat4.yzx * u_xlat5.zxy) + -(u_xlat6.xyz))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat6.xyz * vs_TEXCOORD2.www)).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat3.yyy * u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_411 = ((u_xlat3.xxx * u_xlat5) + u_xlat6.xyz);
  u_xlat3 = vec4f(x_411.xy, u_xlat3.z, x_411.z);
  u_xlat3 = vec4f((((u_xlat3.zzz * u_xlat4) + u_xlat3.xyw)).xyz, u_xlat3.w);
  u_xlat88 = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat88 = inverseSqrt(u_xlat88);
  u_xlat3 = vec4f(((vec3f(u_xlat88) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlatb88 = (x_99.unity_OrthoParams.w == 0.0f);
  u_xlat4 = (-(vs_TEXCOORD0) + x_99.x_WorldSpaceCameraPos);
  u_xlat89 = dot(u_xlat4, u_xlat4);
  u_xlat89 = inverseSqrt(u_xlat89);
  u_xlat4 = (vec3f(u_xlat89) * u_xlat4);
  u_xlat5.x = x_99.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat5.y = x_99.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat5.z = x_99.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb88) {
    x_470 = u_xlat4;
  } else {
    x_470 = u_xlat5;
  }
  u_xlat4 = x_470;
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_486.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD0 + -(x_486.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat7.w);
  u_xlat8 = vec4f(((vs_TEXCOORD0 + -(x_486.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat8.w);
  u_xlat9 = vec4f(((vs_TEXCOORD0 + -(x_486.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat9.w);
  u_xlat6.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat6.y = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat6.z = dot(u_xlat8.xyz, u_xlat8.xyz);
  u_xlat6.w = dot(u_xlat9.xyz, u_xlat9.xyz);
  u_xlatb6 = (u_xlat6 < x_486.x_CascadeShadowSplitSphereRadii);
  u_xlat7.x = select(0.0f, 1.0f, u_xlatb6.x);
  u_xlat7.y = select(0.0f, 1.0f, u_xlatb6.y);
  u_xlat7.z = select(0.0f, 1.0f, u_xlatb6.z);
  u_xlat7.w = select(0.0f, 1.0f, u_xlatb6.w);
  u_xlat6.x = select(-0.0f, -1.0f, u_xlatb6.x);
  u_xlat6.y = select(-0.0f, -1.0f, u_xlatb6.y);
  u_xlat6.z = select(-0.0f, -1.0f, u_xlatb6.z);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.yzw)).xyz, u_xlat6.w);
  u_xlat7 = vec4f(u_xlat7.x, max(u_xlat6.xyz, vec3f()).xyz);
  u_xlat89 = dot(u_xlat7, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat89 = (-(u_xlat89) + 4.0f);
  u_xlatu89 = u32(u_xlat89);
  u_xlati89 = (bitcast<i32>(u_xlatu89) << bitcast<u32>(2i));
  u_xlat6 = vec4f(((vs_TEXCOORD0.yyy * x_486.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati89 + 1i)].xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((x_486.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati89].xyz * vs_TEXCOORD0.xxx) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((x_486.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati89 + 2i)].xyz * vs_TEXCOORD0.zzz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + x_486.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati89 + 3i)].xyz)).xyz, u_xlat6.w);
  u_xlat3.w = 1.0f;
  u_xlat7.x = dot(x_661.unity_Builtins2Array[(u_xlati0.z / 7i)].unity_SHArArray, u_xlat3);
  u_xlat7.y = dot(x_661.unity_Builtins2Array[(u_xlati0.z / 7i)].unity_SHAgArray, u_xlat3);
  u_xlat7.z = dot(x_661.unity_Builtins2Array[(u_xlati0.z / 7i)].unity_SHAbArray, u_xlat3);
  u_xlat8 = (u_xlat3.yzzx * u_xlat3.xyzz);
  u_xlat9.x = dot(x_661.unity_Builtins2Array[(u_xlati0.z / 7i)].unity_SHBrArray, u_xlat8);
  u_xlat9.y = dot(x_661.unity_Builtins2Array[(u_xlati0.z / 7i)].unity_SHBgArray, u_xlat8);
  u_xlat9.z = dot(x_661.unity_Builtins2Array[(u_xlati0.z / 7i)].unity_SHBbArray, u_xlat8);
  u_xlat89 = (u_xlat3.y * u_xlat3.y);
  u_xlat89 = ((u_xlat3.x * u_xlat3.x) + -(u_xlat89));
  u_xlat8 = vec4f((((x_661.unity_Builtins2Array[(u_xlati0.z / 7i)].unity_SHCArray.xyz * vec3f(u_xlat89)) + u_xlat9.xyz)).xyz, u_xlat8.w);
  u_xlat7 = vec4f(((u_xlat7.xyz + u_xlat8.xyz)).xyz, u_xlat7.w);
  let x_752 = x_99.x_ScaledScreenParams.xy;
  u_xlat8 = vec4f(((x_749 / vec2f(x_752.x, x_752.y))).xy, u_xlat8.zw);
  u_xlat8 = vec4f(((u_xlat8.xy * hlslcc_FragCoord.xy)).xy, u_xlat8.zw);
  u_xlat58 = ((u_xlat8.y * x_99.x_ScaleBiasRt.x) + x_99.x_ScaleBiasRt.y);
  u_xlat8.z = (-(u_xlat58) + 1.0f);
  u_xlat58 = (u_xlat2.z * x_207.x_Smoothness);
  u_xlat58 = clamp(u_xlat58, 0.0f, 1.0f);
  u_xlat31 = (u_xlat2.y + -1.0f);
  u_xlat31 = ((x_207.x_OcclusionStrength * u_xlat31) + 1.0f);
  u_xlat60 = ((-(u_xlat2.x) * 0.95999997854232788086f) + 0.95999997854232788086f);
  u_xlat89 = (-(u_xlat60) + 1.0f);
  u_xlat1 = (u_xlat1 * vec3f(u_xlat60));
  let x_818 = ((u_xlat0.xyw * x_207.x_BaseColor.xyz) + vec3f(-0.03999999910593032837f));
  u_xlat0 = vec4f(x_818.xy, u_xlat0.z, x_818.z);
  let x_828 = ((u_xlat2.xxx * u_xlat0.xyw) + vec3f(0.03999999910593032837f));
  u_xlat0 = vec4f(x_828.xy, u_xlat0.z, x_828.z);
  u_xlat2.x = (-(u_xlat58) + 1.0f);
  u_xlat60 = (u_xlat2.x * u_xlat2.x);
  u_xlat60 = max(u_xlat60, 0.0078125f);
  u_xlat90 = (u_xlat60 * u_xlat60);
  u_xlat58 = (u_xlat58 + u_xlat89);
  u_xlat58 = clamp(u_xlat58, 0.0f, 1.0f);
  u_xlat89 = ((u_xlat60 * 4.0f) + 2.0f);
  let x_861 = u_xlat8;
  let x_864 = x_99.x_GlobalMipBias.x;
  let x_865 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_861.xz, x_864);
  u_xlat91 = x_865.x;
  u_xlat92 = (-(x_99.x_AmbientOcclusionParam.x) + 1.0f);
  u_xlat91 = (u_xlat91 + u_xlat92);
  u_xlat91 = clamp(u_xlat91, 0.0f, 1.0f);
  u_xlat92 = (u_xlat91 + -1.0f);
  u_xlat92 = ((x_99.x_AmbientOcclusionParam.w * u_xlat92) + 1.0f);
  u_xlat31 = min(u_xlat31, u_xlat91);
  u_xlatb91 = (0.0f < x_486.x_MainLightShadowParams.y);
  if (u_xlatb91) {
    u_xlatb91 = (x_486.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb91) {
      u_xlat9 = (u_xlat6.xyxy + x_486.x_MainLightShadowOffset0);
      let x_908 = u_xlat9.xy;
      txVec0 = vec3f(x_908.x, x_908.y, u_xlat6.z);
      u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_929 = u_xlat9.zw;
      txVec1 = vec3f(x_929.x, x_929.y, u_xlat6.z);
      u_xlat10.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat9 = (u_xlat6.xyxy + x_486.x_MainLightShadowOffset1);
      let x_949 = u_xlat9.xy;
      txVec2 = vec3f(x_949.x, x_949.y, u_xlat6.z);
      u_xlat10.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_964 = u_xlat9.zw;
      txVec3 = vec3f(x_964.x, x_964.y, u_xlat6.z);
      u_xlat10.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat91 = dot(u_xlat10, x_979);
    } else {
      u_xlatb93 = (x_486.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb93) {
        let x_998 = ((u_xlat6.xy * x_486.x_MainLightShadowmapSize.zw) + x_997);
        u_xlat37 = vec3f(x_998.x, u_xlat37.y, x_998.y);
        let x_1003 = floor(u_xlat37.xz);
        u_xlat37 = vec3f(x_1003.x, u_xlat37.y, x_1003.y);
        u_xlat9 = vec4f((((u_xlat6.xy * x_486.x_MainLightShadowmapSize.zw) + -(u_xlat37.xz))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_1020);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        u_xlat67 = (u_xlat11.yw * x_1032);
        let x_1040 = ((u_xlat11.xz * x_997) + -(u_xlat9.xy));
        u_xlat10 = vec4f(x_1040.x, u_xlat10.y, x_1040.y, u_xlat10.w);
        u_xlat11 = vec4f(((-(u_xlat9.xy) + x_749)).xy, u_xlat11.zw);
        u_xlat69 = min(u_xlat9.xy, vec2f());
        u_xlat69 = ((-(u_xlat69) * u_xlat69) + u_xlat11.xy);
        u_xlat9 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat9.zw);
        u_xlat9 = vec4f((((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat10.yw)).xy, u_xlat9.zw);
        u_xlat69 = (u_xlat69 + x_749);
        u_xlat9 = vec4f(((u_xlat9.xy + x_749)).xy, u_xlat9.zw);
        u_xlat12 = vec4f(((u_xlat10.xz * x_1088)).xy, u_xlat12.zw);
        u_xlat13 = vec4f(((u_xlat11.xy * x_1088)).xy, u_xlat13.zw);
        u_xlat11 = vec4f(((u_xlat69 * x_1088)).xy, u_xlat11.zw);
        u_xlat14 = vec4f(((u_xlat9.xy * x_1088)).xy, u_xlat14.zw);
        u_xlat9 = vec4f(((u_xlat10.yw * x_1088)).xy, u_xlat9.zw);
        u_xlat12.z = u_xlat11.x;
        u_xlat12.w = u_xlat9.x;
        u_xlat13.z = u_xlat14.x;
        u_xlat13.w = u_xlat67.x;
        u_xlat10 = (u_xlat12.zwxz + u_xlat13.zwxz);
        u_xlat11.z = u_xlat12.y;
        u_xlat11.w = u_xlat9.y;
        u_xlat14.z = u_xlat13.y;
        u_xlat14.w = u_xlat67.y;
        u_xlat9 = vec4f(((u_xlat11.zyw + u_xlat14.zyw)).xyz, u_xlat9.w);
        u_xlat11 = vec4f(((u_xlat13.xzw / u_xlat10.zwy)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_1161)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat14.zyw / u_xlat9.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_1161)).xyz, u_xlat12.w);
        u_xlat11 = vec4f(((u_xlat11.yxz * x_486.x_MainLightShadowmapSize.xxx)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_486.x_MainLightShadowmapSize.yyy)).xyz, u_xlat12.w);
        u_xlat11.w = u_xlat12.x;
        u_xlat13 = ((u_xlat37.xzxz * x_486.x_MainLightShadowmapSize.xyxy) + u_xlat11.ywxw);
        u_xlat14 = vec4f((((u_xlat37.xz * x_486.x_MainLightShadowmapSize.xy) + u_xlat11.zw)).xy, u_xlat14.zw);
        u_xlat12.w = u_xlat11.y;
        let x_1220 = u_xlat12.yz;
        u_xlat11 = vec4f(u_xlat11.x, x_1220.x, u_xlat11.z, x_1220.y);
        u_xlat15 = ((u_xlat37.xzxz * x_486.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat12 = ((u_xlat37.xzxz * x_486.x_MainLightShadowmapSize.xyxy) + u_xlat12.wywz);
        u_xlat11 = ((u_xlat37.xzxz * x_486.x_MainLightShadowmapSize.xyxy) + u_xlat11.xwzw);
        u_xlat16 = (u_xlat9.xxxy * u_xlat10.zwyz);
        u_xlat17 = (u_xlat9.yyzz * u_xlat10);
        u_xlat93 = (u_xlat9.z * u_xlat10.y);
        let x_1270 = u_xlat13.xy;
        txVec4 = vec3f(x_1270.x, x_1270.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1285 = u_xlat13.zw;
        txVec5 = vec3f(x_1285.x, x_1285.y, u_xlat6.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat37.x = (u_xlat37.x * u_xlat16.y);
        u_xlat94 = ((u_xlat16.x * u_xlat94) + u_xlat37.x);
        let x_1313 = u_xlat14.xy;
        txVec6 = vec3f(x_1313.x, x_1313.y, u_xlat6.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat94 = ((u_xlat16.z * u_xlat37.x) + u_xlat94);
        let x_1335 = u_xlat12.xy;
        txVec7 = vec3f(x_1335.x, x_1335.y, u_xlat6.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat94 = ((u_xlat16.w * u_xlat37.x) + u_xlat94);
        let x_1357 = u_xlat15.xy;
        txVec8 = vec3f(x_1357.x, x_1357.y, u_xlat6.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat94 = ((u_xlat17.x * u_xlat37.x) + u_xlat94);
        let x_1379 = u_xlat15.zw;
        txVec9 = vec3f(x_1379.x, x_1379.y, u_xlat6.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat94 = ((u_xlat17.y * u_xlat37.x) + u_xlat94);
        let x_1401 = u_xlat12.zw;
        txVec10 = vec3f(x_1401.x, x_1401.y, u_xlat6.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat94 = ((u_xlat17.z * u_xlat37.x) + u_xlat94);
        let x_1423 = u_xlat11.xy;
        txVec11 = vec3f(x_1423.x, x_1423.y, u_xlat6.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat94 = ((u_xlat17.w * u_xlat37.x) + u_xlat94);
        let x_1445 = u_xlat11.zw;
        txVec12 = vec3f(x_1445.x, x_1445.y, u_xlat6.z);
        u_xlat37.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat91 = ((u_xlat93 * u_xlat37.x) + u_xlat94);
      } else {
        let x_1471 = ((u_xlat6.xy * x_486.x_MainLightShadowmapSize.zw) + x_997);
        u_xlat37 = vec3f(x_1471.x, u_xlat37.y, x_1471.y);
        let x_1476 = floor(u_xlat37.xz);
        u_xlat37 = vec3f(x_1476.x, u_xlat37.y, x_1476.y);
        u_xlat9 = vec4f((((u_xlat6.xy * x_486.x_MainLightShadowmapSize.zw) + -(u_xlat37.xz))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_1020);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        let x_1503 = (u_xlat11.yw * x_1502);
        u_xlat12 = vec4f(u_xlat12.x, x_1503.x, u_xlat12.z, x_1503.y);
        u_xlat67 = ((u_xlat11.xz * x_997) + -(u_xlat9.xy));
        let x_1516 = (-(u_xlat9.xy) + x_749);
        u_xlat10 = vec4f(x_1516.x, u_xlat10.y, x_1516.y, u_xlat10.w);
        u_xlat11 = vec4f(min(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_1532 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.xz);
        u_xlat10 = vec4f(x_1532.x, u_xlat10.y, x_1532.y, u_xlat10.w);
        u_xlat11 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_1548 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.yw);
        u_xlat10 = vec4f(u_xlat10.x, x_1548.x, u_xlat10.z, x_1548.y);
        u_xlat10 = (u_xlat10 + vec4f(2.0f));
        u_xlat11.z = (u_xlat10.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat67.yx * x_1561)).xy, u_xlat13.zw);
        u_xlat67 = (u_xlat10.xz * x_1561);
        u_xlat13.z = (u_xlat10.w * 0.08163200318813323975f);
        u_xlat11.x = u_xlat13.y;
        let x_1582 = ((u_xlat9.xx * x_1578) + x_1581);
        u_xlat11 = vec4f(u_xlat11.x, x_1582.x, u_xlat11.z, x_1582.y);
        let x_1589 = ((u_xlat9.xx * x_1578) + x_1588);
        u_xlat10 = vec4f(x_1589.x, u_xlat10.y, x_1589.y, u_xlat10.w);
        u_xlat10.y = u_xlat67.x;
        u_xlat10.w = u_xlat12.y;
        u_xlat11 = (u_xlat10 + u_xlat11);
        let x_1604 = ((u_xlat9.yy * x_1578) + x_1581);
        u_xlat13 = vec4f(u_xlat13.x, x_1604.x, u_xlat13.z, x_1604.y);
        let x_1610 = ((u_xlat9.yy * x_1578) + x_1588);
        u_xlat12 = vec4f(x_1610.x, u_xlat12.y, x_1610.y, u_xlat12.w);
        u_xlat12.y = u_xlat67.y;
        u_xlat9 = (u_xlat12 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat11);
        u_xlat10 = (u_xlat10 + x_1626);
        u_xlat12 = (u_xlat12 / u_xlat9);
        u_xlat12 = (u_xlat12 + x_1626);
        u_xlat10 = (u_xlat10.wxyz * x_486.x_MainLightShadowmapSize.xxxx);
        u_xlat12 = (u_xlat12.xwyz * x_486.x_MainLightShadowmapSize.yyyy);
        let x_1646 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_1646.x, u_xlat13.y, x_1646.yz);
        u_xlat13.y = u_xlat12.x;
        u_xlat14 = ((u_xlat37.xzxz * x_486.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat15 = vec4f((((u_xlat37.xz * x_486.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat15.zw);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat12.z;
        u_xlat16 = ((u_xlat37.xzxz * x_486.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat73 = ((u_xlat37.xz * x_486.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat37.xzxz * x_486.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat12.w;
        u_xlat18 = ((u_xlat37.xzxz * x_486.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat39 = ((u_xlat37.xz * x_486.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.w = u_xlat13.y;
        u_xlat19 = vec4f((((u_xlat37.xz * x_486.x_MainLightShadowmapSize.xy) + u_xlat10.xw)).xy, u_xlat19.zw);
        let x_1748 = u_xlat13.xzw;
        u_xlat12 = vec4f(x_1748.x, u_xlat12.y, x_1748.yz);
        u_xlat13 = ((u_xlat37.xzxz * x_486.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat70 = ((u_xlat37.xz * x_486.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat12.x = u_xlat10.x;
        let x_1781 = ((u_xlat37.xz * x_486.x_MainLightShadowmapSize.xy) + u_xlat12.xy);
        u_xlat37 = vec3f(x_1781.x, u_xlat37.y, x_1781.y);
        u_xlat20 = (u_xlat9.xxxx * u_xlat11);
        u_xlat21 = (u_xlat9.yyyy * u_xlat11);
        u_xlat22 = (u_xlat9.zzzz * u_xlat11);
        u_xlat9 = (u_xlat9.wwww * u_xlat11);
        let x_1805 = u_xlat14.xy;
        txVec13 = vec3f(x_1805.x, x_1805.y, u_xlat6.z);
        u_xlat93 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1819 = u_xlat14.zw;
        txVec14 = vec3f(x_1819.x, x_1819.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat94 = (u_xlat94 * u_xlat20.y);
        u_xlat93 = ((u_xlat20.x * u_xlat93) + u_xlat94);
        let x_1843 = u_xlat15.xy;
        txVec15 = vec3f(x_1843.x, x_1843.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat93 = ((u_xlat20.z * u_xlat94) + u_xlat93);
        let x_1863 = u_xlat17.xy;
        txVec16 = vec3f(x_1863.x, x_1863.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat93 = ((u_xlat20.w * u_xlat94) + u_xlat93);
        let x_1883 = u_xlat16.xy;
        txVec17 = vec3f(x_1883.x, x_1883.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat93 = ((u_xlat21.x * u_xlat94) + u_xlat93);
        let x_1903 = u_xlat16.zw;
        txVec18 = vec3f(x_1903.x, x_1903.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat93 = ((u_xlat21.y * u_xlat94) + u_xlat93);
        txVec19 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat93 = ((u_xlat21.z * u_xlat94) + u_xlat93);
        let x_1942 = u_xlat17.zw;
        txVec20 = vec3f(x_1942.x, x_1942.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat93 = ((u_xlat21.w * u_xlat94) + u_xlat93);
        let x_1962 = u_xlat18.xy;
        txVec21 = vec3f(x_1962.x, x_1962.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat93 = ((u_xlat22.x * u_xlat94) + u_xlat93);
        let x_1982 = u_xlat18.zw;
        txVec22 = vec3f(x_1982.x, x_1982.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat93 = ((u_xlat22.y * u_xlat94) + u_xlat93);
        txVec23 = vec3f(u_xlat39.x, u_xlat39.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat93 = ((u_xlat22.z * u_xlat94) + u_xlat93);
        let x_2021 = u_xlat19.xy;
        txVec24 = vec3f(x_2021.x, x_2021.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat93 = ((u_xlat22.w * u_xlat94) + u_xlat93);
        let x_2041 = u_xlat13.xy;
        txVec25 = vec3f(x_2041.x, x_2041.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat93 = ((u_xlat9.x * u_xlat94) + u_xlat93);
        let x_2061 = u_xlat13.zw;
        txVec26 = vec3f(x_2061.x, x_2061.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat93 = ((u_xlat9.y * u_xlat94) + u_xlat93);
        txVec27 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat93 = ((u_xlat9.z * u_xlat94) + u_xlat93);
        let x_2100 = u_xlat37.xz;
        txVec28 = vec3f(x_2100.x, x_2100.y, u_xlat6.z);
        u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat91 = ((u_xlat9.w * u_xlat94) + u_xlat93);
      }
    }
  } else {
    let x_2121 = u_xlat6.xy;
    txVec29 = vec3f(x_2121.x, x_2121.y, u_xlat6.z);
    u_xlat91 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat6.x = (-(x_486.x_MainLightShadowParams.x) + 1.0f);
  u_xlat91 = ((u_xlat91 * x_486.x_MainLightShadowParams.x) + u_xlat6.x);
  u_xlatb6.x = (0.0f >= u_xlat6.z);
  u_xlatb35 = (u_xlat6.z >= 1.0f);
  u_xlatb6.x = (u_xlatb35 | u_xlatb6.x);
  u_xlat91 = select(u_xlat91, 1.0f, u_xlatb6.x);
  u_xlat6 = vec4f(((vs_TEXCOORD0 + -(x_99.x_WorldSpaceCameraPos))).xyz, u_xlat6.w);
  u_xlat93 = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat94 = ((u_xlat93 * x_486.x_MainLightShadowParams.z) + x_486.x_MainLightShadowParams.w);
  u_xlat94 = clamp(u_xlat94, 0.0f, 1.0f);
  u_xlat37.x = (-(u_xlat91) + 1.0f);
  u_xlat91 = ((u_xlat94 * u_xlat37.x) + u_xlat91);
  u_xlatb94 = !((x_2200.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb94) {
    let x_2212 = (vs_TEXCOORD0.yy * x_2200.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy);
    u_xlat37 = vec3f(x_2212.x, u_xlat37.y, x_2212.y);
    let x_2223 = ((x_2200.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD0.xx) + u_xlat37.xz);
    u_xlat37 = vec3f(x_2223.x, u_xlat37.y, x_2223.y);
    let x_2234 = ((x_2200.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD0.zz) + u_xlat37.xz);
    u_xlat37 = vec3f(x_2234.x, u_xlat37.y, x_2234.y);
    let x_2242 = (u_xlat37.xz + x_2200.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy);
    u_xlat37 = vec3f(x_2242.x, u_xlat37.y, x_2242.y);
    let x_2248 = ((u_xlat37.xz * x_997) + x_997);
    u_xlat37 = vec3f(x_2248.x, u_xlat37.y, x_2248.y);
    let x_2256 = u_xlat37;
    let x_2259 = x_99.x_GlobalMipBias.x;
    let x_2260 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2256.xz, x_2259);
    u_xlat9 = x_2260;
    let x_2272 = vec4f(x_2200.x_MainLightCookieTextureFormat, x_2200.x_MainLightCookieTextureFormat, x_2200.x_MainLightCookieTextureFormat, x_2200.x_MainLightCookieTextureFormat);
    let x_2281 = ((vec4f(x_2272.x, x_2272.y, x_2272.z, x_2272.w) == vec4f(0.0f, 0.0f, 1.0f, 1.0f))).xz;
    u_xlatb37 = vec3<bool>(x_2281.x, u_xlatb37.y, x_2281.y);
    if (u_xlatb37.z) {
      x_2286 = u_xlat9.w;
    } else {
      x_2286 = u_xlat9.x;
    }
    u_xlat94 = x_2286;
    if (u_xlatb37.x) {
      x_2297 = u_xlat9.xyz;
    } else {
      x_2297 = vec3f(u_xlat94);
    }
    u_xlat9 = vec4f(x_2297.xyz, u_xlat9.w);
  } else {
    u_xlat9.x = 1.0f;
    u_xlat9.y = 1.0f;
    u_xlat9.z = 1.0f;
  }
  u_xlat9 = vec4f(((u_xlat9.xyz * x_99.x_MainLightColor.xyz)).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((vec3f(u_xlat92) * u_xlat9.xyz)).xyz, u_xlat9.w);
  u_xlat94 = dot(-(u_xlat4), u_xlat3.xyz);
  u_xlat94 = (u_xlat94 + u_xlat94);
  u_xlat10 = vec4f((((u_xlat3.xyz * -(vec3f(u_xlat94))) + -(u_xlat4))).xyz, u_xlat10.w);
  u_xlat94 = dot(u_xlat3.xyz, u_xlat4);
  u_xlat94 = clamp(u_xlat94, 0.0f, 1.0f);
  u_xlat94 = (-(u_xlat94) + 1.0f);
  u_xlat94 = (u_xlat94 * u_xlat94);
  u_xlat94 = (u_xlat94 * u_xlat94);
  u_xlat37.x = ((-(u_xlat2.x) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat2.x = (u_xlat2.x * u_xlat37.x);
  u_xlat2.x = (u_xlat2.x * 6.0f);
  u_xlat8 = vec4f(((u_xlat8.xz * x_99.x_FPParams1.xy)).xy, u_xlat8.zw);
  u_xlatu8 = vec2u(u_xlat8.xy);
  u_xlatu66 = vec2u(x_99.x_FPParams1.zw);
  u_xlati8 = ((bitcast<i32>(u_xlatu8.y) * bitcast<i32>(u_xlatu66.x)) + bitcast<i32>(u_xlatu8.x));
  u_xlatu8.x = (u_xlatu66.y * bitcast<u32>(u_xlati8));
  u_xlat5.x = dot(-(u_xlat5), u_xlat6.xyz);
  u_xlat34 = log2(u_xlat5.x);
  if (u_xlatb88) {
    x_2428 = u_xlat34;
  } else {
    x_2428 = u_xlat5.x;
  }
  u_xlat88 = x_2428;
  u_xlat88 = ((u_xlat88 * x_99.x_FPParams0.x) + x_99.x_FPParams0.y);
  u_xlatu88 = u32(u_xlat88);
  u_xlatu5 = u32(x_99.x_FPParams2.x);
  u_xlatu5 = (u_xlatu5 + 4294967295u);
  u_xlati34 = (bitcast<i32>(u_xlatu66.y) + 2i);
  u_xlatu88 = min(u_xlatu88, u_xlatu5);
  u_xlatu5 = (bitcast<u32>(u_xlati34) * u_xlatu88);
  u_xlatu34 = ((vec2u(u_xlatu88) * vec2u(bitcast<u32>(u_xlati34))) + vec2u(1u, 2u));
  u_xlatu88 = (u_xlatu34.x >> 2u);
  param = bitcast<i32>(u_xlatu34.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2484 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu34.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2491 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati6 = vec3i(vec2i(x_2484, x_2491).xy, u_xlati6.z);
  u_xlati37 = bitcast<vec2i>((bitcast<vec2u>(u_xlati6.xx) & bitcast<vec2u>(x_2504.urp_ZBins[bitcast<i32>(u_xlatu88)].wy)));
  let x_2515 = ~(u_xlati6.xy);
  u_xlati6 = vec3i(x_2515.x, u_xlati6.y, x_2515.y);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati6.xx) & bitcast<vec2u>(x_2504.urp_ZBins[bitcast<i32>(u_xlatu88)].zx)));
  u_xlati37 = bitcast<vec2i>((bitcast<vec2u>(u_xlati37) | bitcast<vec2u>(u_xlati11)));
  u_xlati88 = bitcast<i32>((bitcast<u32>(u_xlati6.y) & bitcast<u32>(u_xlati37.x)));
  u_xlati34 = bitcast<i32>((bitcast<u32>(u_xlati6.z) & bitcast<u32>(u_xlati37.y)));
  u_xlatu88 = (bitcast<u32>(u_xlati88) | bitcast<u32>(u_xlati34));
  u_xlatu6 = vec2u(x_99.x_FPParams0.zw);
  u_xlatb37 = ((vec4f() < u_xlat10.xyzz)).xyz;
  u_xlatu11.x = u_xlatu8.x;
  u_xlatu11.y = u_xlatu34.y;
  u_xlati69 = 0i;
  u_xlatu98 = u_xlatu88;
  u_xlat12.x = 0.0f;
  u_xlat12.y = 0.0f;
  u_xlat12.z = 0.0f;
  u_xlat34 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu64 = (u_xlatu98 >> 16u);
    u_xlati96 = u_xlati69;
    u_xlatu97 = u_xlatu98;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb99 = (u_xlati96 == 0i);
      u_xlatu13.x = (u_xlatu97 & 65535u);
      u_xlatb13 = (u_xlatu64 >= u_xlatu13.x);
      u_xlatb99 = (u_xlatb99 & u_xlatb13);
      if (!(u_xlatb99)) {
        break;
      }
      param_6 = u_xlatu97;
      param_7 = 5i;
      param_8 = 11i;
      let x_2628 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu99 = x_2628;
      u_xlatu13 = (u_xlatu11.xxyy + vec4u(u_xlatu99));
      u_xlatu14 = (u_xlatu13.yw >> x_2637);
      param_9 = bitcast<i32>(u_xlatu13.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2648 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu13.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2655 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu13.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2662 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu13.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2669 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati13 = vec4i(x_2648, x_2655, x_2662, x_2669);
      u_xlati72 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_2678.urp_Tiles[bitcast<i32>(u_xlatu14.x)].wy)));
      u_xlati15 = ~(u_xlati13);
      u_xlati16 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_2678.urp_Tiles[bitcast<i32>(u_xlatu14.x)].zx)));
      let x_2710 = bitcast<vec2i>((bitcast<vec2u>(u_xlati72) | bitcast<vec2u>(u_xlati16)));
      u_xlati14 = vec4i(x_2710.x, u_xlati14.y, x_2710.y, u_xlati14.w);
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati42.x = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.z)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati42.x) | bitcast<u32>(u_xlati13.x)));
      u_xlati42 = bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2504.urp_ZBins[bitcast<i32>(u_xlatu14.y)].wy)));
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_2504.urp_ZBins[bitcast<i32>(u_xlatu14.y)].zx))).xy, u_xlati14.zw);
      u_xlati42 = bitcast<vec2i>((bitcast<vec2u>(u_xlati42) | bitcast<vec2u>(u_xlati14.xy)));
      u_xlati42.x = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati42.x)));
      u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati42.y)));
      u_xlati42.x = bitcast<i32>((bitcast<u32>(u_xlati71.x) | bitcast<u32>(u_xlati42.x)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati42.x) & bitcast<u32>(u_xlati13.x)));
      u_xlati42.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu97) & 31i)));
      u_xlati13.x = bitcast<i32>((bitcast<u32>(u_xlati42.x) & bitcast<u32>(u_xlati13.x)));
      u_xlati99 = (bitcast<i32>(u_xlatu99) << bitcast<u32>(5i));
      u_xlatu99 = (u_xlatu64 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati99)))));
      u_xlatu99 = min(u_xlatu99, 31u);
      u_xlatu99 = (bitcast<u32>(-(bitcast<i32>(u_xlatu99))) + 31u);
      u_xlatu99 = (4294967295u >> (u_xlatu99 & 31u));
      u_xlati96 = bitcast<i32>((u_xlatu99 & bitcast<u32>(u_xlati13.x)));
      u_xlati99 = (bitcast<i32>(u_xlatu97) + 32i);
      u_xlatu97 = (bitcast<u32>(u_xlati99) & 4294967264u);
    }
    u_xlatu98 = u_xlatu97;
    u_xlatb64 = (u_xlati96 != 0i);
    u_xlatb99 = (u_xlat34 < 0.99000000953674316406f);
    u_xlatb64 = (u_xlatb64 & u_xlatb99);
    if (!(u_xlatb64)) {
      break;
    }
    u_xlati64 = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati96)));
    u_xlati99 = (1i << bitcast<u32>((u_xlati64 & 31i)));
    u_xlati69 = bitcast<i32>((bitcast<u32>(u_xlati96) ^ bitcast<u32>(u_xlati99)));
    u_xlati99 = (bitcast<i32>(u_xlatu98) + -32i);
    u_xlati99 = bitcast<i32>((bitcast<u32>(u_xlati99) & 65504u));
    u_xlati64 = (u_xlati64 + u_xlati99);
    u_xlati64 = (-(bitcast<i32>(u_xlatu6.x)) + u_xlati64);
    u_xlat13 = vec4f(((vs_TEXCOORD0 + -(x_2912.urp_ReflProbes_BoxMin[u_xlati64].xyz))).xyz, u_xlat13.w);
    u_xlat14 = vec4f(((-(vs_TEXCOORD0) + x_2912.urp_ReflProbes_BoxMax[u_xlati64].xyz)).xyz, u_xlat14.w);
    u_xlat13 = vec4f(min(u_xlat13.xyz, u_xlat14.xyz).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((u_xlat13.xyz / x_2912.urp_ReflProbes_BoxMax[u_xlati64].www)).xyz, u_xlat13.w);
    u_xlat99 = min(u_xlat13.z, u_xlat13.y);
    u_xlat99 = min(u_xlat99, u_xlat13.x);
    u_xlat99 = clamp(u_xlat99, 0.0f, 1.0f);
    u_xlat13.x = (-(u_xlat34) + 1.0f);
    u_xlat99 = min(u_xlat99, u_xlat13.x);
    u_xlatb13 = (0.0f < x_2912.urp_ReflProbes_ProbePosition[u_xlati64].w);
    if (u_xlatb37.x) {
      x_2973 = x_2912.urp_ReflProbes_BoxMax[u_xlati64].x;
    } else {
      x_2973 = x_2912.urp_ReflProbes_BoxMin[u_xlati64].x;
    }
    u_xlat42.x = x_2973;
    if (u_xlatb37.y) {
      x_2987 = x_2912.urp_ReflProbes_BoxMax[u_xlati64].y;
    } else {
      x_2987 = x_2912.urp_ReflProbes_BoxMin[u_xlati64].y;
    }
    u_xlat42.y = x_2987;
    if (u_xlatb37.z) {
      x_3001 = x_2912.urp_ReflProbes_BoxMax[u_xlati64].z;
    } else {
      x_3001 = x_2912.urp_ReflProbes_BoxMin[u_xlati64].z;
    }
    u_xlat42.z = x_3001;
    u_xlat42 = (u_xlat42 + -(vs_TEXCOORD0));
    u_xlat42 = (u_xlat42 / u_xlat10.xyz);
    u_xlat42.x = min(u_xlat42.y, u_xlat42.x);
    u_xlat42.x = min(u_xlat42.z, u_xlat42.x);
    u_xlat14 = vec4f(((vs_TEXCOORD0 + -(x_2912.urp_ReflProbes_ProbePosition[u_xlati64].xyz))).xyz, u_xlat14.w);
    u_xlat42 = ((u_xlat10.xyz * u_xlat42.xxx) + u_xlat14.xyz);
    if (u_xlatb13) {
      x_3051 = u_xlat42;
    } else {
      x_3051 = u_xlat10.xyz;
    }
    u_xlat13 = vec4f(x_3051.xyz, u_xlat13.w);
    u_xlatu100 = u32(abs(x_2912.urp_ReflProbes_ProbePosition[u_xlati64].w));
    u_xlatu100 = (u_xlatu100 + 4294967295u);
    u_xlat100 = f32(u_xlatu100);
    u_xlat100 = min(u_xlat2.x, u_xlat100);
    u_xlat14.x = dot(abs(u_xlat13.xyz), x_3079);
    u_xlat14.x = max(u_xlat14.x, 0.00000099999999747524f);
    u_xlat14.x = (1.0f / u_xlat14.x);
    u_xlat43 = (u_xlat13.zxy * u_xlat14.xxx);
    u_xlat43.x = -(u_xlat43.x);
    u_xlat43.x = clamp(u_xlat43.x, 0.0f, 1.0f);
    u_xlatb72 = ((u_xlat43.yzyz >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat43;
    if (u_xlatb72.x) {
      x_3115 = u_xlat43.x;
    } else {
      x_3115 = -(u_xlat43.x);
    }
    hlslcc_movcTemp.x = x_3115;
    if (u_xlatb72.y) {
      x_3128 = u_xlat43.x;
    } else {
      x_3128 = -(u_xlat43.x);
    }
    hlslcc_movcTemp.y = x_3128;
    u_xlat43 = hlslcc_movcTemp;
    u_xlat13 = vec4f((((u_xlat13.xy * u_xlat14.xx) + u_xlat43.xy)).xy, u_xlat13.zw);
    u_xlat13 = vec4f((((u_xlat13.xy * x_997) + x_997)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
    u_xlat71.x = floor(u_xlat100);
    u_xlat14.x = (u_xlat71.x + 1.0f);
    u_xlat100 = (-(u_xlat71.x) + u_xlat100);
    u_xlatu71 = u32(u_xlat71.x);
    u_xlati71.x = ((u_xlati64 * 7i) + bitcast<i32>(u_xlatu71));
    u_xlatu14.x = u32(u_xlat14.x);
    u_xlati64 = ((u_xlati64 * 7i) + bitcast<i32>(u_xlatu14.x));
    u_xlat14 = vec4f((((u_xlat13.xy * x_2912.urp_ReflProbes_MipScaleOffset[u_xlati71.x].xy) + x_2912.urp_ReflProbes_MipScaleOffset[u_xlati71.x].zw)).xy, u_xlat14.zw);
    u_xlat14 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat14.xy, 0.0f).xyz.xyz, u_xlat14.w);
    u_xlat13 = vec4f((((u_xlat13.xy * x_2912.urp_ReflProbes_MipScaleOffset[u_xlati64].xy) + x_2912.urp_ReflProbes_MipScaleOffset[u_xlati64].zw)).xy, u_xlat13.zw);
    u_xlat13 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat13.xy, 0.0f).xyz.xyz, u_xlat13.w);
    u_xlat13 = vec4f(((-(u_xlat14.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((vec3f(u_xlat100) * u_xlat13.xyz) + u_xlat14.xyz)).xyz, u_xlat13.w);
    u_xlat12 = vec4f((((vec3f(u_xlat99) * u_xlat13.xyz) + u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat34 = (u_xlat34 + u_xlat99);
  }
  u_xlatb88 = (u_xlat34 < 0.99000000953674316406f);
  if (u_xlatb88) {
    u_xlat10 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xyz, u_xlat2.x);
    u_xlat88 = (-(u_xlat34) + 1.0f);
    u_xlat2.x = (u_xlat10.w + -1.0f);
    u_xlat2.x = ((x_99.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat2.x) + 1.0f);
    u_xlat2.x = max(u_xlat2.x, 0.0f);
    u_xlat2.x = log2(u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * x_99.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat2.x = exp2(u_xlat2.x);
    u_xlat2.x = (u_xlat2.x * x_99.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat37 = (u_xlat10.xyz * u_xlat2.xxx);
    u_xlat12 = vec4f((((vec3f(u_xlat88) * u_xlat37) + u_xlat12.xyz)).xyz, u_xlat12.w);
  }
  let x_3352 = ((vec2f(u_xlat60) * vec2f(u_xlat60)) + vec2f(-1.0f, 1.0f));
  u_xlat2 = vec3f(x_3352.x, u_xlat2.y, x_3352.y);
  u_xlat88 = (1.0f / u_xlat2.z);
  u_xlat37 = (-(u_xlat0.xyw) + vec3f(u_xlat58));
  u_xlat37 = ((vec3f(u_xlat94) * u_xlat37) + u_xlat0.xyw);
  u_xlat37 = (vec3f(u_xlat88) * u_xlat37);
  u_xlat37 = (u_xlat37 * u_xlat12.xyz);
  u_xlat7 = vec4f((((u_xlat7.xyz * u_xlat1) + u_xlat37)).xyz, u_xlat7.w);
  u_xlat58 = dot(u_xlat3.xyz, x_99.x_MainLightPosition.xyz);
  u_xlat58 = clamp(u_xlat58, 0.0f, 1.0f);
  u_xlat58 = (u_xlat58 * u_xlat91);
  u_xlat37 = (vec3f(u_xlat58) * u_xlat9.xyz);
  u_xlat9 = vec4f(((u_xlat4 + x_99.x_MainLightPosition.xyz)).xyz, u_xlat9.w);
  u_xlat58 = dot(u_xlat9.xyz, u_xlat9.xyz);
  u_xlat58 = max(u_xlat58, 1.17549435e-38f);
  u_xlat58 = inverseSqrt(u_xlat58);
  u_xlat9 = vec4f(((vec3f(u_xlat58) * u_xlat9.xyz)).xyz, u_xlat9.w);
  u_xlat58 = dot(u_xlat3.xyz, u_xlat9.xyz);
  u_xlat58 = clamp(u_xlat58, 0.0f, 1.0f);
  u_xlat88 = dot(x_99.x_MainLightPosition.xyz, u_xlat9.xyz);
  u_xlat88 = clamp(u_xlat88, 0.0f, 1.0f);
  u_xlat58 = (u_xlat58 * u_xlat58);
  u_xlat58 = ((u_xlat58 * u_xlat2.x) + 1.00001001358032226562f);
  u_xlat88 = (u_xlat88 * u_xlat88);
  u_xlat58 = (u_xlat58 * u_xlat58);
  u_xlat88 = max(u_xlat88, 0.10000000149011611938f);
  u_xlat58 = (u_xlat58 * u_xlat88);
  u_xlat58 = (u_xlat89 * u_xlat58);
  u_xlat58 = (u_xlat90 / u_xlat58);
  u_xlat9 = vec4f((((u_xlat0.xyw * vec3f(u_xlat58)) + u_xlat1)).xyz, u_xlat9.w);
  u_xlat37 = (u_xlat37 * u_xlat9.xyz);
  u_xlatu58 = min(u_xlatu6.y, 32u);
  u_xlat88 = ((u_xlat93 * x_486.x_AdditionalShadowFadeParams.x) + x_486.x_AdditionalShadowFadeParams.y);
  u_xlat88 = clamp(u_xlat88, 0.0f, 1.0f);
  let x_3504 = vec4f(x_2200.x_AdditionalLightsCookieAtlasTextureFormat, x_2200.x_AdditionalLightsCookieAtlasTextureFormat, x_2200.x_AdditionalLightsCookieAtlasTextureFormat, x_2200.x_AdditionalLightsCookieAtlasTextureFormat);
  let x_3512 = ((vec4f(x_3504.x, x_3504.y, x_3504.z, x_3504.w) == vec4f(0.0f, 0.0f, 1.0f, 0.0f))).xz;
  u_xlatb6 = vec4<bool>(x_3512.x, u_xlatb6.y, x_3512.y, u_xlatb6.w);
  u_xlat9.x = 0.0f;
  u_xlat9.y = 0.0f;
  u_xlat9.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu58)) {
    } else {
      break;
    }
    u_xlat10 = vec4f((((-(vs_TEXCOORD0) * x_3537.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3537.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlat91 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat91 = max(u_xlat91, 0.00006103515625f);
    u_xlat34 = inverseSqrt(u_xlat91);
    u_xlat11 = vec4f(((vec3f(u_xlat34) * u_xlat10.xyz)).xyz, u_xlat11.w);
    u_xlat93 = (1.0f / u_xlat91);
    u_xlat91 = (u_xlat91 * x_3537.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat91 = ((-(u_xlat91) * u_xlat91) + 1.0f);
    u_xlat91 = max(u_xlat91, 0.0f);
    u_xlat91 = (u_xlat91 * u_xlat91);
    u_xlat91 = (u_xlat91 * u_xlat93);
    u_xlat93 = dot(x_3537.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat11.xyz);
    u_xlat93 = ((u_xlat93 * x_3537.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3537.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat93 = clamp(u_xlat93, 0.0f, 1.0f);
    u_xlat93 = (u_xlat93 * u_xlat93);
    u_xlat91 = (u_xlat91 * u_xlat93);
    u_xlatb93 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati94 = i32(x_486.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati93 = select(u_xlati94, -1i, u_xlatb93);
    u_xlatb94 = (u_xlati93 >= 0i);
    if (u_xlatb94) {
      u_xlatb94 = any(!((vec4f() == vec4f(x_486.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb94) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb94 = (u_xlatb12.y & u_xlatb12.x);
        let x_3665 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_3665.xy, u_xlatb12.z, x_3665.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat96 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_3683 = u_xlat12.y;
        } else {
          x_3683 = u_xlat96;
        }
        u_xlat96 = x_3683;
        if (u_xlatb94) {
          x_3692 = u_xlat12.x;
        } else {
          x_3692 = u_xlat96;
        }
        u_xlat94 = x_3692;
        u_xlati94 = i32(u_xlat94);
        u_xlati93 = (u_xlati93 + u_xlati94);
      }
      u_xlati93 = (u_xlati93 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD0.yyyy * x_486.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati93 + 1i)]);
      u_xlat12 = ((x_486.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati93] * vs_TEXCOORD0.xxxx) + u_xlat12);
      u_xlat12 = ((x_486.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati93 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_486.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati93 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      u_xlatb93 = (0.0f < x_486.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb93) {
        u_xlatb93 = (1.0f == x_486.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb93) {
          u_xlat13 = (u_xlat12.xyxy + x_486.x_AdditionalShadowOffset0);
          let x_3768 = u_xlat13.xy;
          txVec30 = vec3f(x_3768.x, x_3768.y, u_xlat12.z);
          u_xlat14.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_3784 = u_xlat13.zw;
          txVec31 = vec3f(x_3784.x, x_3784.y, u_xlat12.z);
          u_xlat14.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat13 = (u_xlat12.xyxy + x_486.x_AdditionalShadowOffset1);
          let x_3804 = u_xlat13.xy;
          txVec32 = vec3f(x_3804.x, x_3804.y, u_xlat12.z);
          u_xlat14.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_3819 = u_xlat13.zw;
          txVec33 = vec3f(x_3819.x, x_3819.y, u_xlat12.z);
          u_xlat14.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat93 = dot(u_xlat14, x_979);
        } else {
          u_xlatb94 = (2.0f == x_486.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb94) {
            u_xlat13 = vec4f((((u_xlat12.xy * x_486.x_AdditionalShadowmapSize.zw) + x_997)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat71 = ((u_xlat12.xy * x_486.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat71.xxyy + x_1020);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_3877 = (u_xlat15.yw * x_1032);
            u_xlat14 = vec4f(x_3877.x, u_xlat14.y, x_3877.y, u_xlat14.w);
            u_xlat15 = vec4f((((u_xlat15.xz * x_997) + -(u_xlat71))).xy, u_xlat15.zw);
            u_xlat73 = (-(u_xlat71) + x_749);
            u_xlat16 = vec4f(min(u_xlat71, vec2f()).xy, u_xlat16.zw);
            u_xlat16 = vec4f((((-(u_xlat16.xy) * u_xlat16.xy) + u_xlat73)).xy, u_xlat16.zw);
            u_xlat71 = max(u_xlat71, vec2f());
            u_xlat71 = ((-(u_xlat71) * u_xlat71) + u_xlat14.yw);
            u_xlat16 = vec4f(((u_xlat16.xy + x_749)).xy, u_xlat16.zw);
            u_xlat71 = (u_xlat71 + x_749);
            u_xlat17 = vec4f(((u_xlat15.xy * x_1088)).xy, u_xlat17.zw);
            u_xlat15 = vec4f(((u_xlat73 * x_1088)).xy, u_xlat15.zw);
            u_xlat16 = vec4f(((u_xlat16.xy * x_1088)).xy, u_xlat16.zw);
            u_xlat18 = vec4f(((u_xlat71 * x_1088)).xy, u_xlat18.zw);
            u_xlat71 = (u_xlat14.yw * x_1088);
            u_xlat17.z = u_xlat16.x;
            u_xlat17.w = u_xlat71.x;
            u_xlat15.z = u_xlat18.x;
            u_xlat15.w = u_xlat14.x;
            u_xlat19 = (u_xlat15.zwxz + u_xlat17.zwxz);
            u_xlat16.z = u_xlat17.y;
            u_xlat16.w = u_xlat71.y;
            u_xlat18.z = u_xlat15.y;
            u_xlat18.w = u_xlat14.z;
            u_xlat14 = vec4f(((u_xlat16.zyw + u_xlat18.zyw)).xyz, u_xlat14.w);
            u_xlat15 = vec4f(((u_xlat15.xzw / u_xlat19.zwy)).xyz, u_xlat15.w);
            u_xlat15 = vec4f(((u_xlat15.xyz + x_1161)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat18.zyw / u_xlat14.xyz)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_1161)).xyz, u_xlat16.w);
            u_xlat15 = vec4f(((u_xlat15.yxz * x_486.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xyz * x_486.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat16.w);
            u_xlat15.w = u_xlat16.x;
            u_xlat17 = ((u_xlat13.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat15.ywxw);
            u_xlat71 = ((u_xlat13.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat15.zw);
            u_xlat16.w = u_xlat15.y;
            let x_4043 = u_xlat16.yz;
            u_xlat15 = vec4f(u_xlat15.x, x_4043.x, u_xlat15.z, x_4043.y);
            u_xlat18 = ((u_xlat13.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat16 = ((u_xlat13.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat16.wywz);
            u_xlat15 = ((u_xlat13.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xwzw);
            u_xlat20 = (u_xlat14.xxxy * u_xlat19.zwyz);
            u_xlat21 = (u_xlat14.yyzz * u_xlat19);
            u_xlat94 = (u_xlat14.z * u_xlat19.y);
            let x_4089 = u_xlat17.xy;
            txVec34 = vec3f(x_4089.x, x_4089.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_4103 = u_xlat17.zw;
            txVec35 = vec3f(x_4103.x, x_4103.y, u_xlat12.z);
            u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat97 = (u_xlat97 * u_xlat20.y);
            u_xlat96 = ((u_xlat20.x * u_xlat96) + u_xlat97);
            txVec36 = vec3f(u_xlat71.x, u_xlat71.y, u_xlat12.z);
            u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat96 = ((u_xlat20.z * u_xlat97) + u_xlat96);
            let x_4147 = u_xlat16.xy;
            txVec37 = vec3f(x_4147.x, x_4147.y, u_xlat12.z);
            u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat96 = ((u_xlat20.w * u_xlat97) + u_xlat96);
            let x_4167 = u_xlat18.xy;
            txVec38 = vec3f(x_4167.x, x_4167.y, u_xlat12.z);
            u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat96 = ((u_xlat21.x * u_xlat97) + u_xlat96);
            let x_4187 = u_xlat18.zw;
            txVec39 = vec3f(x_4187.x, x_4187.y, u_xlat12.z);
            u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat96 = ((u_xlat21.y * u_xlat97) + u_xlat96);
            let x_4207 = u_xlat16.zw;
            txVec40 = vec3f(x_4207.x, x_4207.y, u_xlat12.z);
            u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat96 = ((u_xlat21.z * u_xlat97) + u_xlat96);
            let x_4227 = u_xlat15.xy;
            txVec41 = vec3f(x_4227.x, x_4227.y, u_xlat12.z);
            u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat96 = ((u_xlat21.w * u_xlat97) + u_xlat96);
            let x_4247 = u_xlat15.zw;
            txVec42 = vec3f(x_4247.x, x_4247.y, u_xlat12.z);
            u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat93 = ((u_xlat94 * u_xlat97) + u_xlat96);
          } else {
            u_xlat13 = vec4f((((u_xlat12.xy * x_486.x_AdditionalShadowmapSize.zw) + x_997)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat71 = ((u_xlat12.xy * x_486.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat71.xxyy + x_1020);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_4299 = (u_xlat15.yw * x_1502);
            u_xlat16 = vec4f(u_xlat16.x, x_4299.x, u_xlat16.z, x_4299.y);
            let x_4307 = ((u_xlat15.xz * x_997) + -(u_xlat71));
            u_xlat14 = vec4f(x_4307.x, u_xlat14.y, x_4307.y, u_xlat14.w);
            u_xlat15 = vec4f(((-(u_xlat71) + x_749)).xy, u_xlat15.zw);
            u_xlat73 = min(u_xlat71, vec2f());
            u_xlat15 = vec4f((((-(u_xlat73) * u_xlat73) + u_xlat15.xy)).xy, u_xlat15.zw);
            u_xlat73 = max(u_xlat71, vec2f());
            let x_4334 = ((-(u_xlat73) * u_xlat73) + u_xlat14.yw);
            u_xlat43 = vec3f(x_4334.x, u_xlat43.y, x_4334.y);
            u_xlat15 = vec4f(((u_xlat15.xy + x_248)).xy, u_xlat15.zw);
            let x_4344 = (u_xlat43.xz + x_248);
            u_xlat14 = vec4f(u_xlat14.x, x_4344.x, u_xlat14.z, x_4344.y);
            u_xlat17.z = (u_xlat14.y * 0.08163200318813323975f);
            u_xlat18 = vec4f(((u_xlat14.zxw * x_4353)).xyz, u_xlat18.w);
            u_xlat14 = vec4f(((u_xlat15.xy * x_1561)).xy, u_xlat14.zw);
            u_xlat17.x = u_xlat18.y;
            let x_4368 = ((u_xlat71.xx * x_1578) + x_1581);
            u_xlat17 = vec4f(u_xlat17.x, x_4368.x, u_xlat17.z, x_4368.y);
            let x_4374 = ((u_xlat71.xx * x_1578) + x_1588);
            u_xlat15 = vec4f(x_4374.x, u_xlat15.y, x_4374.y, u_xlat15.w);
            u_xlat15.y = u_xlat14.x;
            u_xlat15.w = u_xlat16.y;
            u_xlat17 = (u_xlat15 + u_xlat17);
            let x_4389 = ((u_xlat71.yy * x_1578) + x_1581);
            u_xlat18 = vec4f(u_xlat18.x, x_4389.x, u_xlat18.z, x_4389.y);
            let x_4395 = ((u_xlat71.yy * x_1578) + x_1588);
            u_xlat16 = vec4f(x_4395.x, u_xlat16.y, x_4395.y, u_xlat16.w);
            u_xlat16.y = u_xlat14.y;
            u_xlat14 = (u_xlat16 + u_xlat18);
            u_xlat15 = (u_xlat15 / u_xlat17);
            u_xlat15 = (u_xlat15 + x_1626);
            u_xlat16 = (u_xlat16 / u_xlat14);
            u_xlat16 = (u_xlat16 + x_1626);
            u_xlat15 = (u_xlat15.wxyz * x_486.x_AdditionalShadowmapSize.xxxx);
            u_xlat16 = (u_xlat16.xwyz * x_486.x_AdditionalShadowmapSize.yyyy);
            let x_4427 = u_xlat15.yzw;
            u_xlat18 = vec4f(x_4427.x, u_xlat18.y, x_4427.yz);
            u_xlat18.y = u_xlat16.x;
            u_xlat19 = ((u_xlat13.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat71 = ((u_xlat13.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.y = u_xlat18.y;
            u_xlat18.y = u_xlat16.z;
            u_xlat20 = ((u_xlat13.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat21 = vec4f((((u_xlat13.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat18.wy)).xy, u_xlat21.zw);
            u_xlat15.z = u_xlat18.y;
            u_xlat22 = ((u_xlat13.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyxz);
            u_xlat18.y = u_xlat16.w;
            u_xlat23 = ((u_xlat13.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat44 = ((u_xlat13.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.w = u_xlat18.y;
            u_xlat79 = ((u_xlat13.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat15.xw);
            let x_4526 = u_xlat18.xzw;
            u_xlat16 = vec4f(x_4526.x, u_xlat16.y, x_4526.yz);
            u_xlat18 = ((u_xlat13.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat74 = ((u_xlat13.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat16.x = u_xlat15.x;
            u_xlat13 = vec4f((((u_xlat13.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat16.xy)).xy, u_xlat13.zw);
            u_xlat24 = (u_xlat14.xxxx * u_xlat17);
            u_xlat25 = (u_xlat14.yyyy * u_xlat17);
            u_xlat26 = (u_xlat14.zzzz * u_xlat17);
            u_xlat14 = (u_xlat14.wwww * u_xlat17);
            let x_4583 = u_xlat19.xy;
            txVec43 = vec3f(x_4583.x, x_4583.y, u_xlat12.z);
            u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_4597 = u_xlat19.zw;
            txVec44 = vec3f(x_4597.x, x_4597.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat96 = (u_xlat96 * u_xlat24.y);
            u_xlat94 = ((u_xlat24.x * u_xlat94) + u_xlat96);
            txVec45 = vec3f(u_xlat71.x, u_xlat71.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat94 = ((u_xlat24.z * u_xlat96) + u_xlat94);
            let x_4640 = u_xlat22.xy;
            txVec46 = vec3f(x_4640.x, x_4640.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat94 = ((u_xlat24.w * u_xlat96) + u_xlat94);
            let x_4660 = u_xlat20.xy;
            txVec47 = vec3f(x_4660.x, x_4660.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat94 = ((u_xlat25.x * u_xlat96) + u_xlat94);
            let x_4680 = u_xlat20.zw;
            txVec48 = vec3f(x_4680.x, x_4680.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat94 = ((u_xlat25.y * u_xlat96) + u_xlat94);
            let x_4700 = u_xlat21.xy;
            txVec49 = vec3f(x_4700.x, x_4700.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat94 = ((u_xlat25.z * u_xlat96) + u_xlat94);
            let x_4720 = u_xlat22.zw;
            txVec50 = vec3f(x_4720.x, x_4720.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat94 = ((u_xlat25.w * u_xlat96) + u_xlat94);
            let x_4740 = u_xlat23.xy;
            txVec51 = vec3f(x_4740.x, x_4740.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat94 = ((u_xlat26.x * u_xlat96) + u_xlat94);
            let x_4760 = u_xlat23.zw;
            txVec52 = vec3f(x_4760.x, x_4760.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat94 = ((u_xlat26.y * u_xlat96) + u_xlat94);
            txVec53 = vec3f(u_xlat44.x, u_xlat44.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat94 = ((u_xlat26.z * u_xlat96) + u_xlat94);
            txVec54 = vec3f(u_xlat79.x, u_xlat79.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat94 = ((u_xlat26.w * u_xlat96) + u_xlat94);
            let x_4818 = u_xlat18.xy;
            txVec55 = vec3f(x_4818.x, x_4818.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat94 = ((u_xlat14.x * u_xlat96) + u_xlat94);
            let x_4838 = u_xlat18.zw;
            txVec56 = vec3f(x_4838.x, x_4838.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat94 = ((u_xlat14.y * u_xlat96) + u_xlat94);
            txVec57 = vec3f(u_xlat74.x, u_xlat74.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat94 = ((u_xlat14.z * u_xlat96) + u_xlat94);
            let x_4877 = u_xlat13.xy;
            txVec58 = vec3f(x_4877.x, x_4877.y, u_xlat12.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat93 = ((u_xlat14.w * u_xlat96) + u_xlat94);
          }
        }
      } else {
        let x_4898 = u_xlat12.xy;
        txVec59 = vec3f(x_4898.x, x_4898.y, u_xlat12.z);
        u_xlat93 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat94 = (1.0f + -(x_486.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat93 = ((u_xlat93 * x_486.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat94);
      u_xlatb94 = (0.0f >= u_xlat12.z);
      u_xlatb96 = (u_xlat12.z >= 1.0f);
      u_xlatb94 = (u_xlatb94 | u_xlatb96);
      u_xlat93 = select(u_xlat93, 1.0f, u_xlatb94);
    } else {
      u_xlat93 = 1.0f;
    }
    u_xlat94 = (-(u_xlat93) + 1.0f);
    u_xlat93 = ((u_xlat88 * u_xlat94) + u_xlat93);
    u_xlati94 = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati94 = bitcast<i32>((bitcast<u32>(u_xlati94) & bitcast<u32>(x_2200.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati94 != 0i)) {
      u_xlati94 = i32(x_2200.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati96 = select(1i, 0i, (u_xlati94 != 0i));
      u_xlati97 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati96 != 0i)) {
        u_xlat12 = vec4f(((vs_TEXCOORD0.yyy * x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati97 + 1i)].xyw)).xyz, u_xlat12.w);
        u_xlat12 = vec4f((((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati97].xyw * vs_TEXCOORD0.xxx) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f((((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati97 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat12.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati97 + 3i)].xyw)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xy / u_xlat12.zz)).xy, u_xlat12.zw);
        u_xlat12 = vec4f((((u_xlat12.xy * x_997) + x_997)).xy, u_xlat12.zw);
        u_xlat12 = vec4f(clamp(u_xlat12.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat12.zw);
        u_xlat12 = vec4f((((x_2200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat12.xy) + x_2200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat12.zw);
      } else {
        u_xlatb94 = (u_xlati94 == 1i);
        u_xlati94 = select(0i, 1i, u_xlatb94);
        if ((u_xlati94 != 0i)) {
          u_xlat70 = (vs_TEXCOORD0.yy * x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati97 + 1i)].xy);
          u_xlat70 = ((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati97].xy * vs_TEXCOORD0.xx) + u_xlat70);
          u_xlat70 = ((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati97 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat70);
          u_xlat70 = (u_xlat70 + x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati97 + 3i)].xy);
          u_xlat70 = ((u_xlat70 * x_997) + x_997);
          u_xlat70 = fract(u_xlat70);
          u_xlat12 = vec4f((((x_2200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat70) + x_2200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat12.zw);
        } else {
          u_xlat13 = (vs_TEXCOORD0.yyyy * x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati97 + 1i)]);
          u_xlat13 = ((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati97] * vs_TEXCOORD0.xxxx) + u_xlat13);
          u_xlat13 = ((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati97 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat13);
          u_xlat13 = (u_xlat13 + x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati97 + 3i)]);
          u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
          u_xlat94 = dot(u_xlat13.xyz, u_xlat13.xyz);
          u_xlat94 = inverseSqrt(u_xlat94);
          u_xlat13 = vec4f(((vec3f(u_xlat94) * u_xlat13.xyz)).xyz, u_xlat13.w);
          u_xlat94 = dot(abs(u_xlat13.xyz), x_3079);
          u_xlat94 = max(u_xlat94, 0.00000099999999747524f);
          u_xlat94 = (1.0f / u_xlat94);
          u_xlat14 = vec4f(((vec3f(u_xlat94) * u_xlat13.zxy)).xyz, u_xlat14.w);
          u_xlat14.x = -(u_xlat14.x);
          u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
          u_xlatb70 = ((u_xlat14.yzyz >= vec4f())).xy;
          if (u_xlatb70.x) {
            x_5203 = u_xlat14.x;
          } else {
            x_5203 = -(u_xlat14.x);
          }
          u_xlat70.x = x_5203;
          if (u_xlatb70.y) {
            x_5216 = u_xlat14.x;
          } else {
            x_5216 = -(u_xlat14.x);
          }
          u_xlat70.y = x_5216;
          u_xlat70 = ((u_xlat13.xy * vec2f(u_xlat94)) + u_xlat70);
          u_xlat70 = ((u_xlat70 * x_997) + x_997);
          u_xlat70 = clamp(u_xlat70, vec2f(0.0f), vec2f(1.0f));
          u_xlat12 = vec4f((((x_2200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat70) + x_2200.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat12.zw);
        }
      }
      u_xlat12 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat12.xy, 0.0f);
      if (u_xlatb6.z) {
        x_5265 = u_xlat12.w;
      } else {
        x_5265 = u_xlat12.x;
      }
      u_xlat94 = x_5265;
      if (u_xlatb6.x) {
        x_5276 = u_xlat12.xyz;
      } else {
        x_5276 = vec3f(u_xlat94);
      }
      u_xlat12 = vec4f(x_5276.xyz, u_xlat12.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    u_xlat12 = vec4f(((u_xlat12.xyz * x_3537.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat12.w);
    u_xlat12 = vec4f(((vec3f(u_xlat92) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat91 = (u_xlat91 * u_xlat93);
    u_xlat93 = dot(u_xlat3.xyz, u_xlat11.xyz);
    u_xlat93 = clamp(u_xlat93, 0.0f, 1.0f);
    u_xlat91 = (u_xlat91 * u_xlat93);
    u_xlat12 = vec4f(((vec3f(u_xlat91) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat34)) + u_xlat4)).xyz, u_xlat10.w);
    u_xlat91 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat91 = max(u_xlat91, 1.17549435e-38f);
    u_xlat91 = inverseSqrt(u_xlat91);
    u_xlat10 = vec4f(((vec3f(u_xlat91) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat91 = dot(u_xlat3.xyz, u_xlat10.xyz);
    u_xlat91 = clamp(u_xlat91, 0.0f, 1.0f);
    u_xlat34 = dot(u_xlat11.xyz, u_xlat10.xyz);
    u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
    u_xlat91 = (u_xlat91 * u_xlat91);
    u_xlat91 = ((u_xlat91 * u_xlat2.x) + 1.00001001358032226562f);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat91 = (u_xlat91 * u_xlat91);
    u_xlat34 = max(u_xlat34, 0.10000000149011611938f);
    u_xlat91 = (u_xlat91 * u_xlat34);
    u_xlat91 = (u_xlat89 * u_xlat91);
    u_xlat91 = (u_xlat90 / u_xlat91);
    u_xlat10 = vec4f((((u_xlat0.xyw * vec3f(u_xlat91)) + u_xlat1)).xyz, u_xlat10.w);
    u_xlat9 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat9.xyz)).xyz, u_xlat9.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu58 = (u_xlatu5 >> 2u);
  param_21 = bitcast<i32>(u_xlatu5);
  param_22 = 0i;
  param_23 = 1i;
  let x_5421 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu5);
  param_25 = 1i;
  param_26 = 1i;
  let x_5427 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati5 = vec2i(x_5421, x_5427);
  u_xlati10 = bitcast<vec2i>((bitcast<vec2u>(u_xlati5.xx) & bitcast<vec2u>(x_2504.urp_ZBins[bitcast<i32>(u_xlatu58)].wy)));
  u_xlati68 = ~(u_xlati5);
  u_xlati11 = bitcast<vec2i>((bitcast<vec2u>(u_xlati68.xx) & bitcast<vec2u>(x_2504.urp_ZBins[bitcast<i32>(u_xlatu58)].zx)));
  u_xlati10 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10) | bitcast<vec2u>(u_xlati11)));
  u_xlati58 = bitcast<i32>((bitcast<u32>(u_xlati5.y) & bitcast<u32>(u_xlati10.x)));
  u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati68.y) & bitcast<u32>(u_xlati10.y)));
  u_xlatu58 = (bitcast<u32>(u_xlati58) | bitcast<u32>(u_xlati60));
  u_xlatu10.x = u_xlatu8.x;
  u_xlatu10.y = u_xlatu34.y;
  u_xlati68.x = 0i;
  u_xlatu97 = u_xlatu58;
  u_xlat11 = vec4f(u_xlat9.xyz.xyz, u_xlat11.w);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu60 = (u_xlatu97 >> 16u);
    u_xlati91 = u_xlati68.x;
    u_xlatu5 = u_xlatu97;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb34 = (u_xlati91 == 0i);
      u_xlatu93 = (u_xlatu5 & 65535u);
      u_xlatb93 = (u_xlatu60 >= u_xlatu93);
      u_xlatb34 = (u_xlatb34 & u_xlatb93);
      if (!(u_xlatb34)) {
        break;
      }
      param_27 = u_xlatu5;
      param_28 = 5i;
      param_29 = 11i;
      let x_5535 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu34.x = x_5535;
      u_xlatu12 = (u_xlatu34.xxxx + u_xlatu10.xxyy);
      u_xlatu13 = vec4u(((u_xlatu12.yw >> x_2637)).xy, u_xlatu13.zw);
      param_30 = bitcast<i32>(u_xlatu12.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_5555 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu12.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_5562 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu12.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_5569 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu12.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_5576 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati12 = vec4i(x_5555, x_5562, x_5569, x_5576);
      u_xlati71 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2678.urp_Tiles[bitcast<i32>(u_xlatu13.x)].wy)));
      u_xlati14 = ~(u_xlati12);
      u_xlati15 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_2678.urp_Tiles[bitcast<i32>(u_xlatu13.x)].zx))).xy, u_xlati15.zw);
      let x_5612 = bitcast<vec2i>((bitcast<vec2u>(u_xlati71) | bitcast<vec2u>(u_xlati15.xy)));
      u_xlati13 = vec4i(x_5612.x, u_xlati13.y, x_5612.y, u_xlati13.w);
      u_xlati93 = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati13.x)));
      u_xlati94 = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati13.z)));
      u_xlati93 = bitcast<i32>((bitcast<u32>(u_xlati93) | bitcast<u32>(u_xlati94)));
      u_xlati12 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_2504.urp_ZBins[bitcast<i32>(u_xlatu13.y)].wy))).xy, u_xlati12.zw);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_2504.urp_ZBins[bitcast<i32>(u_xlatu13.y)].zx))).xy, u_xlati13.zw);
      u_xlati12 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xy) | bitcast<vec2u>(u_xlati13.xy))).xy, u_xlati12.zw);
      u_xlati94 = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati12.x)));
      u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati12.y)));
      u_xlati94 = bitcast<i32>((bitcast<u32>(u_xlati94) | bitcast<u32>(u_xlati96)));
      u_xlati93 = bitcast<i32>((bitcast<u32>(u_xlati93) & bitcast<u32>(u_xlati94)));
      u_xlati94 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu5) & 31i)));
      u_xlati93 = bitcast<i32>((bitcast<u32>(u_xlati93) & bitcast<u32>(u_xlati94)));
      u_xlati34 = (bitcast<i32>(u_xlatu34.x) << bitcast<u32>(5i));
      u_xlatu34.x = (u_xlatu60 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati34)))));
      u_xlatu34.x = min(u_xlatu34.x, 31u);
      u_xlatu34.x = (bitcast<u32>(-(bitcast<i32>(u_xlatu34.x))) + 31u);
      u_xlatu34.x = (4294967295u >> (u_xlatu34.x & 31u));
      u_xlati91 = bitcast<i32>((u_xlatu34.x & bitcast<u32>(u_xlati93)));
      u_xlati34 = (bitcast<i32>(u_xlatu5) + 32i);
      u_xlatu5 = (bitcast<u32>(u_xlati34) & 4294967264u);
    }
    u_xlatu97 = u_xlatu5;
    if ((u_xlati91 == 0i)) {
      break;
    }
    u_xlati60 = bitcast<i32>(firstTrailingBit(bitcast<u32>(u_xlati91)));
    u_xlati34 = (1i << bitcast<u32>((u_xlati60 & 31i)));
    u_xlati68.x = bitcast<i32>((bitcast<u32>(u_xlati91) ^ bitcast<u32>(u_xlati34)));
    u_xlati34 = (bitcast<i32>(u_xlatu97) + -32i);
    u_xlati34 = bitcast<i32>((bitcast<u32>(u_xlati34) & 65504u));
    u_xlati60 = (u_xlati60 + u_xlati34);
    u_xlati60 = (bitcast<i32>(u_xlatu6.y) + u_xlati60);
    u_xlat12 = vec4f((((-(vs_TEXCOORD0) * x_3537.x_AdditionalLightsPosition[u_xlati60].www) + x_3537.x_AdditionalLightsPosition[u_xlati60].xyz)).xyz, u_xlat12.w);
    u_xlat34 = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat34 = max(u_xlat34, 0.00006103515625f);
    u_xlat93 = inverseSqrt(u_xlat34);
    u_xlat13 = vec4f(((vec3f(u_xlat93) * u_xlat12.xyz)).xyz, u_xlat13.w);
    u_xlat94 = (1.0f / u_xlat34);
    u_xlat34 = (u_xlat34 * x_3537.x_AdditionalLightsAttenuation[u_xlati60].x);
    u_xlat34 = ((-(u_xlat34) * u_xlat34) + 1.0f);
    u_xlat34 = max(u_xlat34, 0.0f);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat34 = (u_xlat34 * u_xlat94);
    u_xlat94 = dot(x_3537.x_AdditionalLightsSpotDir[u_xlati60].xyz, u_xlat13.xyz);
    u_xlat94 = ((u_xlat94 * x_3537.x_AdditionalLightsAttenuation[u_xlati60].z) + x_3537.x_AdditionalLightsAttenuation[u_xlati60].w);
    u_xlat94 = clamp(u_xlat94, 0.0f, 1.0f);
    u_xlat94 = (u_xlat94 * u_xlat94);
    u_xlat34 = (u_xlat34 * u_xlat94);
    u_xlatb94 = (u_xlati60 < 0i);
    u_xlati96 = i32(x_486.x_AdditionalShadowParams[u_xlati60].w);
    u_xlati94 = select(u_xlati96, -1i, u_xlatb94);
    u_xlatb96 = (u_xlati94 >= 0i);
    if (u_xlatb96) {
      u_xlatb96 = any(!((vec4f() == vec4f(x_486.x_AdditionalShadowParams[u_xlati60].z))));
      if (u_xlatb96) {
        u_xlatb14 = vec4<bool>(((abs(u_xlat13.zzyz) >= abs(u_xlat13.xyxx))).xyz.xyz, u_xlatb14.w);
        u_xlatb96 = (u_xlatb14.y & u_xlatb14.x);
        let x_5900 = ((-(u_xlat13.zyzx) < vec4f())).xyw;
        u_xlatb14 = vec4<bool>(x_5900.xy, u_xlatb14.z, x_5900.z);
        u_xlat14.x = select(4.0f, 5.0f, u_xlatb14.x);
        u_xlat14.y = select(2.0f, 3.0f, u_xlatb14.y);
        u_xlat98 = select(0.0f, 1.0f, u_xlatb14.w);
        if (u_xlatb14.z) {
          x_5917 = u_xlat14.y;
        } else {
          x_5917 = u_xlat98;
        }
        u_xlat98 = x_5917;
        if (u_xlatb96) {
          x_5926 = u_xlat14.x;
        } else {
          x_5926 = u_xlat98;
        }
        u_xlat96 = x_5926;
        u_xlati96 = i32(u_xlat96);
        u_xlati94 = (u_xlati94 + u_xlati96);
      }
      u_xlati94 = (u_xlati94 << bitcast<u32>(2i));
      u_xlat14 = (vs_TEXCOORD0.yyyy * x_486.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati94 + 1i)]);
      u_xlat14 = ((x_486.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati94] * vs_TEXCOORD0.xxxx) + u_xlat14);
      u_xlat14 = ((x_486.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati94 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat14);
      u_xlat14 = (u_xlat14 + x_486.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati94 + 3i)]);
      u_xlat14 = vec4f(((u_xlat14.xyz / u_xlat14.www)).xyz, u_xlat14.w);
      u_xlatb94 = (0.0f < x_486.x_AdditionalShadowParams[u_xlati60].y);
      if (u_xlatb94) {
        u_xlatb94 = (1.0f == x_486.x_AdditionalShadowParams[u_xlati60].y);
        if (u_xlatb94) {
          u_xlat15 = (u_xlat14.xyxy + x_486.x_AdditionalShadowOffset0);
          let x_5999 = u_xlat15.xy;
          txVec60 = vec3f(x_5999.x, x_5999.y, u_xlat14.z);
          u_xlat16.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_6014 = u_xlat15.zw;
          txVec61 = vec3f(x_6014.x, x_6014.y, u_xlat14.z);
          u_xlat16.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat15 = (u_xlat14.xyxy + x_486.x_AdditionalShadowOffset1);
          let x_6034 = u_xlat15.xy;
          txVec62 = vec3f(x_6034.x, x_6034.y, u_xlat14.z);
          u_xlat16.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_6049 = u_xlat15.zw;
          txVec63 = vec3f(x_6049.x, x_6049.y, u_xlat14.z);
          u_xlat16.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat94 = dot(u_xlat16, x_979);
        } else {
          u_xlatb96 = (2.0f == x_486.x_AdditionalShadowParams[u_xlati60].y);
          if (u_xlatb96) {
            u_xlat15 = vec4f((((u_xlat14.xy * x_486.x_AdditionalShadowmapSize.zw) + x_997)).xy, u_xlat15.zw);
            u_xlat15 = vec4f(floor(u_xlat15.xy).xy, u_xlat15.zw);
            u_xlat73 = ((u_xlat14.xy * x_486.x_AdditionalShadowmapSize.zw) + -(u_xlat15.xy));
            u_xlat16 = (u_xlat73.xxyy + x_1020);
            u_xlat17 = (u_xlat16.xxzz * u_xlat16.xxzz);
            let x_6106 = (u_xlat17.yw * x_1032);
            u_xlat16 = vec4f(x_6106.x, u_xlat16.y, x_6106.y, u_xlat16.w);
            u_xlat17 = vec4f((((u_xlat17.xz * x_997) + -(u_xlat73))).xy, u_xlat17.zw);
            u_xlat75 = (-(u_xlat73) + x_749);
            u_xlat18 = vec4f(min(u_xlat73, vec2f()).xy, u_xlat18.zw);
            u_xlat18 = vec4f((((-(u_xlat18.xy) * u_xlat18.xy) + u_xlat75)).xy, u_xlat18.zw);
            u_xlat73 = max(u_xlat73, vec2f());
            u_xlat73 = ((-(u_xlat73) * u_xlat73) + u_xlat16.yw);
            u_xlat18 = vec4f(((u_xlat18.xy + x_749)).xy, u_xlat18.zw);
            u_xlat73 = (u_xlat73 + x_749);
            u_xlat19 = vec4f(((u_xlat17.xy * x_1088)).xy, u_xlat19.zw);
            u_xlat17 = vec4f(((u_xlat75 * x_1088)).xy, u_xlat17.zw);
            u_xlat18 = vec4f(((u_xlat18.xy * x_1088)).xy, u_xlat18.zw);
            u_xlat20 = vec4f(((u_xlat73 * x_1088)).xy, u_xlat20.zw);
            u_xlat73 = (u_xlat16.yw * x_1088);
            u_xlat19.z = u_xlat18.x;
            u_xlat19.w = u_xlat73.x;
            u_xlat17.z = u_xlat20.x;
            u_xlat17.w = u_xlat16.x;
            u_xlat21 = (u_xlat17.zwxz + u_xlat19.zwxz);
            u_xlat18.z = u_xlat19.y;
            u_xlat18.w = u_xlat73.y;
            u_xlat20.z = u_xlat17.y;
            u_xlat20.w = u_xlat16.z;
            u_xlat16 = vec4f(((u_xlat18.zyw + u_xlat20.zyw)).xyz, u_xlat16.w);
            u_xlat17 = vec4f(((u_xlat17.xzw / u_xlat21.zwy)).xyz, u_xlat17.w);
            u_xlat17 = vec4f(((u_xlat17.xyz + x_1161)).xyz, u_xlat17.w);
            u_xlat18 = vec4f(((u_xlat20.zyw / u_xlat16.xyz)).xyz, u_xlat18.w);
            u_xlat18 = vec4f(((u_xlat18.xyz + x_1161)).xyz, u_xlat18.w);
            u_xlat17 = vec4f(((u_xlat17.yxz * x_486.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat17.w);
            u_xlat18 = vec4f(((u_xlat18.xyz * x_486.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat18.w);
            u_xlat17.w = u_xlat18.x;
            u_xlat19 = ((u_xlat15.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat17.ywxw);
            u_xlat73 = ((u_xlat15.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat17.zw);
            u_xlat18.w = u_xlat17.y;
            let x_6273 = u_xlat18.yz;
            u_xlat17 = vec4f(u_xlat17.x, x_6273.x, u_xlat17.z, x_6273.y);
            u_xlat20 = ((u_xlat15.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyzy);
            u_xlat18 = ((u_xlat15.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat18.wywz);
            u_xlat17 = ((u_xlat15.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xwzw);
            u_xlat22 = (u_xlat16.xxxy * u_xlat21.zwyz);
            u_xlat23 = (u_xlat16.yyzz * u_xlat21);
            u_xlat96 = (u_xlat16.z * u_xlat21.y);
            let x_6319 = u_xlat19.xy;
            txVec64 = vec3f(x_6319.x, x_6319.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_6333 = u_xlat19.zw;
            txVec65 = vec3f(x_6333.x, x_6333.y, u_xlat14.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat99 = (u_xlat99 * u_xlat22.y);
            u_xlat98 = ((u_xlat22.x * u_xlat98) + u_xlat99);
            txVec66 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat14.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat98 = ((u_xlat22.z * u_xlat99) + u_xlat98);
            let x_6376 = u_xlat18.xy;
            txVec67 = vec3f(x_6376.x, x_6376.y, u_xlat14.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat98 = ((u_xlat22.w * u_xlat99) + u_xlat98);
            let x_6396 = u_xlat20.xy;
            txVec68 = vec3f(x_6396.x, x_6396.y, u_xlat14.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat98 = ((u_xlat23.x * u_xlat99) + u_xlat98);
            let x_6416 = u_xlat20.zw;
            txVec69 = vec3f(x_6416.x, x_6416.y, u_xlat14.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat98 = ((u_xlat23.y * u_xlat99) + u_xlat98);
            let x_6436 = u_xlat18.zw;
            txVec70 = vec3f(x_6436.x, x_6436.y, u_xlat14.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat98 = ((u_xlat23.z * u_xlat99) + u_xlat98);
            let x_6456 = u_xlat17.xy;
            txVec71 = vec3f(x_6456.x, x_6456.y, u_xlat14.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat98 = ((u_xlat23.w * u_xlat99) + u_xlat98);
            let x_6476 = u_xlat17.zw;
            txVec72 = vec3f(x_6476.x, x_6476.y, u_xlat14.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat94 = ((u_xlat96 * u_xlat99) + u_xlat98);
          } else {
            u_xlat15 = vec4f((((u_xlat14.xy * x_486.x_AdditionalShadowmapSize.zw) + x_997)).xy, u_xlat15.zw);
            u_xlat15 = vec4f(floor(u_xlat15.xy).xy, u_xlat15.zw);
            u_xlat73 = ((u_xlat14.xy * x_486.x_AdditionalShadowmapSize.zw) + -(u_xlat15.xy));
            u_xlat16 = (u_xlat73.xxyy + x_1020);
            u_xlat17 = (u_xlat16.xxzz * u_xlat16.xxzz);
            let x_6528 = (u_xlat17.yw * x_1502);
            u_xlat18 = vec4f(u_xlat18.x, x_6528.x, u_xlat18.z, x_6528.y);
            let x_6536 = ((u_xlat17.xz * x_997) + -(u_xlat73));
            u_xlat16 = vec4f(x_6536.x, u_xlat16.y, x_6536.y, u_xlat16.w);
            u_xlat17 = vec4f(((-(u_xlat73) + x_749)).xy, u_xlat17.zw);
            u_xlat75 = min(u_xlat73, vec2f());
            u_xlat17 = vec4f((((-(u_xlat75) * u_xlat75) + u_xlat17.xy)).xy, u_xlat17.zw);
            u_xlat75 = max(u_xlat73, vec2f());
            let x_6564 = ((-(u_xlat75) * u_xlat75) + u_xlat16.yw);
            u_xlat45 = vec3f(x_6564.x, u_xlat45.y, x_6564.y);
            u_xlat17 = vec4f(((u_xlat17.xy + x_248)).xy, u_xlat17.zw);
            let x_6574 = (u_xlat45.xz + x_248);
            u_xlat16 = vec4f(u_xlat16.x, x_6574.x, u_xlat16.z, x_6574.y);
            u_xlat19.z = (u_xlat16.y * 0.08163200318813323975f);
            u_xlat20 = vec4f(((u_xlat16.zxw * x_4353)).xyz, u_xlat20.w);
            u_xlat16 = vec4f(((u_xlat17.xy * x_1561)).xy, u_xlat16.zw);
            u_xlat19.x = u_xlat20.y;
            let x_6597 = ((u_xlat73.xx * x_1578) + x_1581);
            u_xlat19 = vec4f(u_xlat19.x, x_6597.x, u_xlat19.z, x_6597.y);
            let x_6603 = ((u_xlat73.xx * x_1578) + x_1588);
            u_xlat17 = vec4f(x_6603.x, u_xlat17.y, x_6603.y, u_xlat17.w);
            u_xlat17.y = u_xlat16.x;
            u_xlat17.w = u_xlat18.y;
            u_xlat19 = (u_xlat17 + u_xlat19);
            let x_6618 = ((u_xlat73.yy * x_1578) + x_1581);
            u_xlat20 = vec4f(u_xlat20.x, x_6618.x, u_xlat20.z, x_6618.y);
            let x_6624 = ((u_xlat73.yy * x_1578) + x_1588);
            u_xlat18 = vec4f(x_6624.x, u_xlat18.y, x_6624.y, u_xlat18.w);
            u_xlat18.y = u_xlat16.y;
            u_xlat16 = (u_xlat18 + u_xlat20);
            u_xlat17 = (u_xlat17 / u_xlat19);
            u_xlat17 = (u_xlat17 + x_1626);
            u_xlat18 = (u_xlat18 / u_xlat16);
            u_xlat18 = (u_xlat18 + x_1626);
            u_xlat17 = (u_xlat17.wxyz * x_486.x_AdditionalShadowmapSize.xxxx);
            u_xlat18 = (u_xlat18.xwyz * x_486.x_AdditionalShadowmapSize.yyyy);
            let x_6656 = u_xlat17.yzw;
            u_xlat20 = vec4f(x_6656.x, u_xlat20.y, x_6656.yz);
            u_xlat20.y = u_xlat18.x;
            u_xlat21 = ((u_xlat15.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat20.xyzy);
            u_xlat73 = ((u_xlat15.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat20.wy);
            u_xlat17.y = u_xlat20.y;
            u_xlat20.y = u_xlat18.z;
            u_xlat22 = ((u_xlat15.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat20.xyzy);
            u_xlat23 = vec4f((((u_xlat15.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat20.wy)).xy, u_xlat23.zw);
            u_xlat17.z = u_xlat20.y;
            u_xlat24 = ((u_xlat15.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyxz);
            u_xlat20.y = u_xlat18.w;
            u_xlat25 = ((u_xlat15.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat20.xyzy);
            u_xlat46 = ((u_xlat15.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat20.wy);
            u_xlat17.w = u_xlat20.y;
            u_xlat81 = ((u_xlat15.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat17.xw);
            let x_6754 = u_xlat20.xzw;
            u_xlat18 = vec4f(x_6754.x, u_xlat18.y, x_6754.yz);
            u_xlat20 = ((u_xlat15.xyxy * x_486.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat76 = ((u_xlat15.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat18.x = u_xlat17.x;
            u_xlat15 = vec4f((((u_xlat15.xy * x_486.x_AdditionalShadowmapSize.xy) + u_xlat18.xy)).xy, u_xlat15.zw);
            u_xlat26 = (u_xlat16.xxxx * u_xlat19);
            u_xlat27 = (u_xlat16.yyyy * u_xlat19);
            u_xlat28 = (u_xlat16.zzzz * u_xlat19);
            u_xlat16 = (u_xlat16.wwww * u_xlat19);
            let x_6810 = u_xlat21.xy;
            txVec73 = vec3f(x_6810.x, x_6810.y, u_xlat14.z);
            u_xlat96 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_6824 = u_xlat21.zw;
            txVec74 = vec3f(x_6824.x, x_6824.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat98 = (u_xlat98 * u_xlat26.y);
            u_xlat96 = ((u_xlat26.x * u_xlat96) + u_xlat98);
            txVec75 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat96 = ((u_xlat26.z * u_xlat98) + u_xlat96);
            let x_6867 = u_xlat24.xy;
            txVec76 = vec3f(x_6867.x, x_6867.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat96 = ((u_xlat26.w * u_xlat98) + u_xlat96);
            let x_6887 = u_xlat22.xy;
            txVec77 = vec3f(x_6887.x, x_6887.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat96 = ((u_xlat27.x * u_xlat98) + u_xlat96);
            let x_6907 = u_xlat22.zw;
            txVec78 = vec3f(x_6907.x, x_6907.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat96 = ((u_xlat27.y * u_xlat98) + u_xlat96);
            let x_6927 = u_xlat23.xy;
            txVec79 = vec3f(x_6927.x, x_6927.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat96 = ((u_xlat27.z * u_xlat98) + u_xlat96);
            let x_6947 = u_xlat24.zw;
            txVec80 = vec3f(x_6947.x, x_6947.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat96 = ((u_xlat27.w * u_xlat98) + u_xlat96);
            let x_6967 = u_xlat25.xy;
            txVec81 = vec3f(x_6967.x, x_6967.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat96 = ((u_xlat28.x * u_xlat98) + u_xlat96);
            let x_6987 = u_xlat25.zw;
            txVec82 = vec3f(x_6987.x, x_6987.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat96 = ((u_xlat28.y * u_xlat98) + u_xlat96);
            txVec83 = vec3f(u_xlat46.x, u_xlat46.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat96 = ((u_xlat28.z * u_xlat98) + u_xlat96);
            txVec84 = vec3f(u_xlat81.x, u_xlat81.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat96 = ((u_xlat28.w * u_xlat98) + u_xlat96);
            let x_7045 = u_xlat20.xy;
            txVec85 = vec3f(x_7045.x, x_7045.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat96 = ((u_xlat16.x * u_xlat98) + u_xlat96);
            let x_7065 = u_xlat20.zw;
            txVec86 = vec3f(x_7065.x, x_7065.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat96 = ((u_xlat16.y * u_xlat98) + u_xlat96);
            txVec87 = vec3f(u_xlat76.x, u_xlat76.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat96 = ((u_xlat16.z * u_xlat98) + u_xlat96);
            let x_7104 = u_xlat15.xy;
            txVec88 = vec3f(x_7104.x, x_7104.y, u_xlat14.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat94 = ((u_xlat16.w * u_xlat98) + u_xlat96);
          }
        }
      } else {
        let x_7125 = u_xlat14.xy;
        txVec89 = vec3f(x_7125.x, x_7125.y, u_xlat14.z);
        u_xlat94 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat96 = (1.0f + -(x_486.x_AdditionalShadowParams[u_xlati60].x));
      u_xlat94 = ((u_xlat94 * x_486.x_AdditionalShadowParams[u_xlati60].x) + u_xlat96);
      u_xlatb96 = (0.0f >= u_xlat14.z);
      u_xlatb98 = (u_xlat14.z >= 1.0f);
      u_xlatb96 = (u_xlatb96 | u_xlatb98);
      u_xlat94 = select(u_xlat94, 1.0f, u_xlatb96);
    } else {
      u_xlat94 = 1.0f;
    }
    u_xlat96 = (-(u_xlat94) + 1.0f);
    u_xlat94 = ((u_xlat88 * u_xlat96) + u_xlat94);
    u_xlati96 = (1i << bitcast<u32>((u_xlati60 & 31i)));
    u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & bitcast<u32>(x_2200.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati96 != 0i)) {
      u_xlati96 = i32(x_2200.x_AdditionalLightsLightTypes[u_xlati60].el);
      u_xlati98 = select(1i, 0i, (u_xlati96 != 0i));
      u_xlati99 = (u_xlati60 << bitcast<u32>(2i));
      if ((u_xlati98 != 0i)) {
        u_xlat14 = vec4f(((vs_TEXCOORD0.yyy * x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 1i)].xyw)).xyz, u_xlat14.w);
        u_xlat14 = vec4f((((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati99].xyw * vs_TEXCOORD0.xxx) + u_xlat14.xyz)).xyz, u_xlat14.w);
        u_xlat14 = vec4f((((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 2i)].xyw * vs_TEXCOORD0.zzz) + u_xlat14.xyz)).xyz, u_xlat14.w);
        u_xlat14 = vec4f(((u_xlat14.xyz + x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 3i)].xyw)).xyz, u_xlat14.w);
        u_xlat14 = vec4f(((u_xlat14.xy / u_xlat14.zz)).xy, u_xlat14.zw);
        u_xlat14 = vec4f((((u_xlat14.xy * x_997) + x_997)).xy, u_xlat14.zw);
        u_xlat14 = vec4f(clamp(u_xlat14.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat14.zw);
        u_xlat14 = vec4f((((x_2200.x_AdditionalLightsCookieAtlasUVRects[u_xlati60].xy * u_xlat14.xy) + x_2200.x_AdditionalLightsCookieAtlasUVRects[u_xlati60].zw)).xy, u_xlat14.zw);
      } else {
        u_xlatb96 = (u_xlati96 == 1i);
        u_xlati96 = select(0i, 1i, u_xlatb96);
        if ((u_xlati96 != 0i)) {
          u_xlat72 = (vs_TEXCOORD0.yy * x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 1i)].xy);
          u_xlat72 = ((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati99].xy * vs_TEXCOORD0.xx) + u_xlat72);
          u_xlat72 = ((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 2i)].xy * vs_TEXCOORD0.zz) + u_xlat72);
          u_xlat72 = (u_xlat72 + x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 3i)].xy);
          u_xlat72 = ((u_xlat72 * x_997) + x_997);
          u_xlat72 = fract(u_xlat72);
          u_xlat14 = vec4f((((x_2200.x_AdditionalLightsCookieAtlasUVRects[u_xlati60].xy * u_xlat72) + x_2200.x_AdditionalLightsCookieAtlasUVRects[u_xlati60].zw)).xy, u_xlat14.zw);
        } else {
          u_xlat15 = (vs_TEXCOORD0.yyyy * x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 1i)]);
          u_xlat15 = ((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati99] * vs_TEXCOORD0.xxxx) + u_xlat15);
          u_xlat15 = ((x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 2i)] * vs_TEXCOORD0.zzzz) + u_xlat15);
          u_xlat15 = (u_xlat15 + x_2200.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 3i)]);
          u_xlat15 = vec4f(((u_xlat15.xyz / u_xlat15.www)).xyz, u_xlat15.w);
          u_xlat96 = dot(u_xlat15.xyz, u_xlat15.xyz);
          u_xlat96 = inverseSqrt(u_xlat96);
          u_xlat15 = vec4f(((vec3f(u_xlat96) * u_xlat15.xyz)).xyz, u_xlat15.w);
          u_xlat96 = dot(abs(u_xlat15.xyz), x_3079);
          u_xlat96 = max(u_xlat96, 0.00000099999999747524f);
          u_xlat96 = (1.0f / u_xlat96);
          u_xlat16 = vec4f(((vec3f(u_xlat96) * u_xlat15.zxy)).xyz, u_xlat16.w);
          u_xlat16.x = -(u_xlat16.x);
          u_xlat16.x = clamp(u_xlat16.x, 0.0f, 1.0f);
          u_xlatb72 = ((u_xlat16.yzyz >= vec4f())).xy;
          if (u_xlatb72.x) {
            x_7421 = u_xlat16.x;
          } else {
            x_7421 = -(u_xlat16.x);
          }
          u_xlat72.x = x_7421;
          if (u_xlatb72.y) {
            x_7434 = u_xlat16.x;
          } else {
            x_7434 = -(u_xlat16.x);
          }
          u_xlat72.y = x_7434;
          u_xlat72 = ((u_xlat15.xy * vec2f(u_xlat96)) + u_xlat72);
          u_xlat72 = ((u_xlat72 * x_997) + x_997);
          u_xlat72 = clamp(u_xlat72, vec2f(0.0f), vec2f(1.0f));
          u_xlat14 = vec4f((((x_2200.x_AdditionalLightsCookieAtlasUVRects[u_xlati60].xy * u_xlat72) + x_2200.x_AdditionalLightsCookieAtlasUVRects[u_xlati60].zw)).xy, u_xlat14.zw);
        }
      }
      u_xlat14 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat14.xy, 0.0f);
      if (u_xlatb6.z) {
        x_7480 = u_xlat14.w;
      } else {
        x_7480 = u_xlat14.x;
      }
      u_xlat96 = x_7480;
      if (u_xlatb6.x) {
        x_7491 = u_xlat14.xyz;
      } else {
        x_7491 = vec3f(u_xlat96);
      }
      u_xlat14 = vec4f(x_7491.xyz, u_xlat14.w);
    } else {
      u_xlat14.x = 1.0f;
      u_xlat14.y = 1.0f;
      u_xlat14.z = 1.0f;
    }
    u_xlat14 = vec4f(((u_xlat14.xyz * x_3537.x_AdditionalLightsColor[u_xlati60].xyz)).xyz, u_xlat14.w);
    u_xlat14 = vec4f(((vec3f(u_xlat92) * u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlat60 = (u_xlat34 * u_xlat94);
    u_xlat34 = dot(u_xlat3.xyz, u_xlat13.xyz);
    u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
    u_xlat60 = (u_xlat60 * u_xlat34);
    u_xlat14 = vec4f(((vec3f(u_xlat60) * u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlat12 = vec4f((((u_xlat12.xyz * vec3f(u_xlat93)) + u_xlat4)).xyz, u_xlat12.w);
    u_xlat60 = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat60 = max(u_xlat60, 1.17549435e-38f);
    u_xlat60 = inverseSqrt(u_xlat60);
    u_xlat12 = vec4f(((vec3f(u_xlat60) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat60 = dot(u_xlat3.xyz, u_xlat12.xyz);
    u_xlat60 = clamp(u_xlat60, 0.0f, 1.0f);
    u_xlat34 = dot(u_xlat13.xyz, u_xlat12.xyz);
    u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
    u_xlat60 = (u_xlat60 * u_xlat60);
    u_xlat60 = ((u_xlat60 * u_xlat2.x) + 1.00001001358032226562f);
    u_xlat34 = (u_xlat34 * u_xlat34);
    u_xlat60 = (u_xlat60 * u_xlat60);
    u_xlat34 = max(u_xlat34, 0.10000000149011611938f);
    u_xlat60 = (u_xlat60 * u_xlat34);
    u_xlat60 = (u_xlat89 * u_xlat60);
    u_xlat60 = (u_xlat90 / u_xlat60);
    u_xlat12 = vec4f((((u_xlat0.xyw * vec3f(u_xlat60)) + u_xlat1)).xyz, u_xlat12.w);
    u_xlat11 = vec4f((((u_xlat12.xyz * u_xlat14.xyz) + u_xlat11.xyz)).xyz, u_xlat11.w);
  }
  u_xlat0 = vec4f((((u_xlat7.xyz * vec3f(u_xlat31)) + u_xlat37)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat11.xyz + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat87 = (vs_TEXCOORD4 * -(vs_TEXCOORD4));
  u_xlat87 = exp2(u_xlat87);
  u_xlat1.x = (-(u_xlat87) + 1.0f);
  u_xlat1 = (u_xlat1.xxx * x_99.unity_FogColor.xyz);
  SV_Target0 = vec4f((((u_xlat0.xyz * vec3f(u_xlat87)) + u_xlat1)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(5) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(4) vs_TEXCOORD3_param : vec4f, @location(2) vs_TEXCOORD1_param : vec3f, @location(3) vs_TEXCOORD2_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD4_param : f32) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  main_1();
  return main_out(SV_Target0);
}


override UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;


/* ================= variant ================= */

