//Assets/Levels/Geography/Materials/Shaders/GeoLitWind.shader
diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_DetailAlbedoMap_ST : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_BaseColor : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_SpecColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(100) */
  Xhlslcc_UnusedX_Smoothness : f32,
  /* @offset(104) */
  Xhlslcc_UnusedX_Metallic : f32,
  /* @offset(108) */
  Xhlslcc_UnusedX_BumpScale : f32,
  /* @offset(112) */
  Xhlslcc_UnusedX_Parallax : f32,
  /* @offset(116) */
  Xhlslcc_UnusedX_OcclusionStrength : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_ClearCoatMask : f32,
  /* @offset(124) */
  Xhlslcc_UnusedX_ClearCoatSmoothness : f32,
  /* @offset(128) */
  Xhlslcc_UnusedX_DetailAlbedoMapScale : f32,
  /* @offset(132) */
  Xhlslcc_UnusedX_DetailNormalMapScale : f32,
  /* @offset(136) */
  Xhlslcc_UnusedX_Surface : f32,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_ST : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_TexelSize : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_MipInfo : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_StreamInfo : vec4f,
}

alias Arr = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_Time : vec4f,
  /* @offset(16) */
  hlslcc_mtx4x4unity_MatrixVP : Arr,
  /* @offset(80) */
  x_GeoWind : vec4f,
  /* @offset(96) */
  x_GeoWindGust : vec4f,
}

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

struct unity_Builtins2Array_Type {
  /* @offset(0) */
  unity_LightmapSTArray : vec4f,
  /* @offset(16) */
  unity_LightmapIndexArray : vec4f,
}

alias Arr_1 = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  /* @offset(0) */
  unity_Builtins2Array : Arr_1,
}

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 4u>;

struct unity_Builtins0Array_Type {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorldArray : Arr_2,
  /* @offset(64) */
  hlslcc_mtx4x4unity_WorldToObjectArray : Arr_3,
  /* @offset(128) */
  unity_LODFadeArray : vec2f,
  /* @offset(136) */
  unity_RenderingLayerArray : f32,
  /* @offset(140) */
  unity_RendererUserValueArray : f32,
}

alias Arr_4 = array<unity_Builtins0Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw0 {
  /* @offset(0) */
  unity_Builtins0Array : Arr_4,
}

alias Arr_5 = array<vec4f, 4u>;

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 2u>;

alias Arr_8 = array<vec4f, 4u>;

alias Arr_9 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_5,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_6,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  unity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_7,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_8,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_9,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

@group(1) @binding(7) var<uniform> x_16 : UnityPerMaterial;

var<private> vs_TEXCOORD5 : f32;

@group(1) @binding(10) var<uniform> x_39 : VGlobals;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(5) var<uniform> x_96 : UnityDrawCallInfo;

var<private> vs_TEXCOORD8 : vec2f;

var<private> in_TEXCOORD1 : vec2f;

@group(1) @binding(12) var<uniform> x_115 : UnityInstancing_PerDraw2;

var<private> in_POSITION0 : vec4f;

@group(1) @binding(6) var<uniform> x_141 : UnityInstancing_PerDraw0;

var<private> vs_TEXCOORD1 : vec3f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> in_TANGENT0 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

@group(1) @binding(11) var<uniform> x_592 : UnityPerDraw;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat4 : vec2f;
  var x_49 : vec2f;
  var u_xlat8 : f32;
  var u_xlat1 : vec4f;
  var x_70 : vec4f;
  var u_xlat12 : f32;
  var u_xlati13 : i32;
  var u_xlati2 : i32;
  var u_xlat6 : vec3f;
  var u_xlat13 : f32;
  var u_xlat5 : f32;
  var u_xlat9 : vec2f;
  var x_273 : vec2f;
  var u_xlat0 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlatb12 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  vs_TEXCOORD0 = ((in_TEXCOORD0 * x_16.x_BaseMap_ST.xy) + x_16.x_BaseMap_ST.zw);
  vs_TEXCOORD5 = 0.0f;
  u_xlatb0 = (0.0f >= x_39.x_GeoWind.z);
  if (u_xlatb0) {
    x_49 = vec2f(1.0f);
  } else {
    x_49 = x_39.x_GeoWind.zw;
  }
  u_xlat4 = x_49;
  u_xlat8 = (u_xlat4.y * x_39.x_Time.y);
  if (u_xlatb0) {
    x_70 = vec4f(0.20000000298023223877f, 0.01200000010430812836f, 11.0f, 1.0f);
  } else {
    x_70 = x_39.x_GeoWindGust.xzyw;
  }
  u_xlat1 = x_70;
  u_xlat12 = (u_xlat8 * u_xlat1.w);
  u_xlati13 = (gl_InstanceIndex + x_96.unity_BaseInstanceID);
  u_xlati2 = (u_xlati13 * 9i);
  u_xlati13 = (u_xlati13 << bitcast<u32>(1i));
  vs_TEXCOORD8 = ((in_TEXCOORD1 * x_115.unity_Builtins2Array[(u_xlati13 / 2i)].unity_LightmapSTArray.xy) + x_115.unity_Builtins2Array[(u_xlati13 / 2i)].unity_LightmapSTArray.zw);
  u_xlat6 = (in_POSITION0.yyy * x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[1i].xyz);
  u_xlat6 = ((x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[0i].xyz * in_POSITION0.xxx) + u_xlat6);
  u_xlat6 = ((x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[2i].xyz * in_POSITION0.zzz) + u_xlat6);
  u_xlat6 = (u_xlat6 + x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[3i].xyz);
  u_xlat13 = dot(u_xlat6, vec3f(1.70000004768371582031f, 2.29999995231628417969f, 1.29999995231628417969f));
  u_xlat6.x = dot(u_xlat6, vec3f(-2.09999990463256835938f, 1.10000002384185791016f, 2.90000009536743164062f));
  u_xlat6.x = ((u_xlat12 * 3.29999995231628417969f) + u_xlat6.x);
  u_xlat12 = ((u_xlat12 * 5.09999990463256835938f) + u_xlat13);
  u_xlat12 = sin(u_xlat12);
  u_xlat13 = cos(u_xlat6.x);
  u_xlat12 = (u_xlat12 * u_xlat13);
  u_xlat12 = (u_xlat1.y * u_xlat12);
  u_xlat12 = (u_xlat4.x * u_xlat12);
  u_xlat5 = max(u_xlat1.z, 0.10000000149011611938f);
  u_xlat9.x = dot(x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[1i].xyz, x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[1i].xyz);
  u_xlat9.x = sqrt(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * in_POSITION0.y);
  u_xlat5 = (u_xlat9.x / u_xlat5);
  u_xlat5 = clamp(u_xlat5, 0.0f, 1.0f);
  u_xlat9.x = ((u_xlat5 * 0.69999998807907104492f) + 0.30000001192092895508f);
  u_xlat5 = (u_xlat5 * u_xlat5);
  u_xlat12 = (u_xlat12 * u_xlat9.x);
  u_xlat9 = (x_39.x_GeoWind.xy + vec2f(0.00000999999974737875f));
  if (u_xlatb0) {
    x_273 = vec2f(0.87001001834869384766f, 0.49001002311706542969f);
  } else {
    x_273 = u_xlat9;
  }
  u_xlat9 = x_273;
  u_xlat0.x = dot(u_xlat9, u_xlat9);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat9 = (u_xlat0.xx * u_xlat9);
  u_xlat0.x = dot(x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[3i].xz, vec2f(0.13099999725818634033f, 0.07699999958276748657f));
  u_xlat6.x = ((u_xlat8 * 0.55000001192092895508f) + u_xlat0.x);
  u_xlat8 = (u_xlat8 * 1.30999994277954101562f);
  u_xlat0.x = ((u_xlat0.x * 1.70000004768371582031f) + u_xlat8);
  u_xlat0.x = sin(u_xlat0.x);
  u_xlat8 = sin(u_xlat6.x);
  u_xlat8 = ((u_xlat8 * 0.40000000596046447754f) + 0.44999998807907104492f);
  u_xlat0.x = ((u_xlat0.x * 0.15000000596046447754f) + u_xlat8);
  u_xlat8 = (u_xlat5 * u_xlat0.x);
  u_xlat5 = (u_xlat1.x * u_xlat5);
  u_xlat8 = (u_xlat1.x * u_xlat8);
  u_xlat8 = (u_xlat4.x * u_xlat8);
  u_xlat4.x = (u_xlat4.x * u_xlat5);
  u_xlat0.x = (u_xlat0.x * u_xlat4.x);
  u_xlat0.x = (u_xlat0.x * 0.07999999821186065674f);
  u_xlat3.y = -(u_xlat0.x);
  let x_380 = (vec2f(u_xlat8) * u_xlat9);
  u_xlat3 = vec3f(x_380.x, u_xlat3.y, x_380.y);
  u_xlat0 = vec4f((((vec3f(u_xlat12) * vec3f(0.60000002384185791016f, 0.34999999403953552246f, 0.5f)) + u_xlat3)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat0.yyy * x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_WorldToObjectArray[1i].xyz)).xyz, u_xlat1.w);
  let x_414 = ((x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_WorldToObjectArray[0i].xyz * u_xlat0.xxx) + u_xlat1.xyz);
  u_xlat0 = vec4f(x_414.xy, u_xlat0.z, x_414.z);
  u_xlat0 = vec4f((((x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_WorldToObjectArray[2i].xyz * u_xlat0.zzz) + u_xlat0.xyw)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + in_POSITION0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((u_xlat0.yyy * x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[1i].xyz)).xyz, u_xlat1.w);
  let x_457 = ((x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[0i].xyz * u_xlat0.xxx) + u_xlat1.xyz);
  u_xlat0 = vec4f(x_457.xy, u_xlat0.z, x_457.z);
  u_xlat0 = vec4f((((x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[2i].xyz * u_xlat0.zzz) + u_xlat0.xyw)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[3i].xyz)).xyz, u_xlat0.w);
  vs_TEXCOORD1 = u_xlat0.xyz;
  u_xlat1.x = dot(in_NORMAL0, x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_WorldToObjectArray[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_WorldToObjectArray[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_WorldToObjectArray[2i].xyz);
  u_xlat12 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat12 = max(u_xlat12, 1.17549435e-38f);
  u_xlat12 = inverseSqrt(u_xlat12);
  vs_TEXCOORD2 = (vec3f(u_xlat12) * u_xlat1.xyz);
  u_xlat1 = vec4f(((in_TANGENT0.yyy * x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[1i].xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[0i].xyz * in_TANGENT0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((x_141.unity_Builtins0Array[(u_xlati2 / 9i)].hlslcc_mtx4x4unity_ObjectToWorldArray[2i].xyz * in_TANGENT0.zzz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat12 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat12 = max(u_xlat12, 1.17549435e-38f);
  u_xlat12 = inverseSqrt(u_xlat12);
  vs_TEXCOORD3 = vec4f(((vec3f(u_xlat12) * u_xlat1.xyz)).xyz, vs_TEXCOORD3.w);
  u_xlatb12 = (x_592.unity_WorldTransformParams.w >= 0.0f);
  u_xlat12 = select(-1.0f, 1.0f, u_xlatb12);
  vs_TEXCOORD3.w = (u_xlat12 * in_TANGENT0.w);
  u_xlat1 = (u_xlat0.yyyy * x_39.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_39.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat0 = ((x_39.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat0 + x_39.hlslcc_mtx4x4unity_MatrixVP[3i]);
  vs_SV_InstanceID0 = bitcast<u32>(gl_InstanceIndex);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2f,
  @location(6)
  vs_TEXCOORD5_1 : f32,
  @location(4)
  vs_TEXCOORD8_1 : vec2f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec3f,
  @location(3)
  vs_TEXCOORD3_1 : vec4f,
  @builtin(position)
  gl_Position : vec4f,
  @location(5) @interpolate(flat)
  vs_SV_InstanceID0_1 : u32,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec2f, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(4) in_TEXCOORD1_param : vec2f, @location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(2) in_TANGENT0_param : vec4f) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD5, vs_TEXCOORD8, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, gl_Position, vs_SV_InstanceID0);
}


override UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
//Assets/Levels/Geography/Materials/Shaders/GeoLitWind.shader
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
  x_MainLightLayerMask : u32,
  /* @offset(96) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(112) */
  x_FPParams0 : vec4f,
  /* @offset(128) */
  x_FPParams1 : vec4f,
  /* @offset(144) */
  x_FPParams2 : vec4f,
  /* @offset(160) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(176) */
  x_ProjectionParams : vec4f,
  /* @offset(192) */
  unity_OrthoParams : vec4f,
  /* @offset(208) */
  x_ScaleBiasRt : vec4f,
  /* @offset(224) */
  unity_FogParams : vec4f,
  /* @offset(240) */
  unity_FogColor : vec4f,
  /* @offset(256) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(320) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_BaseMap_TexelSize : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_DetailAlbedoMap_ST : vec4f,
  /* @offset(48) */
  x_BaseColor : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_SpecColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_EmissionColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(100) */
  x_Smoothness : f32,
  /* @offset(104) */
  Xhlslcc_UnusedX_Metallic : f32,
  /* @offset(108) */
  x_BumpScale : f32,
  /* @offset(112) */
  Xhlslcc_UnusedX_Parallax : f32,
  /* @offset(116) */
  x_OcclusionStrength : f32,
  /* @offset(120) */
  Xhlslcc_UnusedX_ClearCoatMask : f32,
  /* @offset(124) */
  Xhlslcc_UnusedX_ClearCoatSmoothness : f32,
  /* @offset(128) */
  Xhlslcc_UnusedX_DetailAlbedoMapScale : f32,
  /* @offset(132) */
  Xhlslcc_UnusedX_DetailNormalMapScale : f32,
  /* @offset(136) */
  x_Surface : f32,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_ST : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_TexelSize : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_MipInfo : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_MipmapStreaming_DebugTex_StreamInfo : vec4f,
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
  /* @offset(136) */
  unity_RenderingLayerArray : f32,
  /* @offset(140) */
  unity_RendererUserValueArray : f32,
}

alias Arr_3 = array<unity_Builtins0Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw0 {
  /* @offset(0) */
  unity_Builtins0Array : Arr_3,
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

alias Arr_7 = array<vec4f, 4u>;

alias Arr_8 = array<vec4f, 128u>;

alias Arr_9 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_10 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToLight : Arr_7,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  hlslcc_mtx4x4_AdditionalLightsWorldToLights : Arr_8,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_10,
}

alias Arr_11 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_11,
}

alias Arr_12 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_12,
}

alias Arr_13 = array<vec4f, 32u>;

alias Arr_14 = array<vec4f, 32u>;

alias Arr_15 = array<vec4f, 32u>;

alias Arr_16 = array<vec4f, 224u>;

alias Arr_17 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_13,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_14,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_15,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_16,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_17,
}

alias Arr_18 = array<vec4f, 32u>;

alias Arr_19 = array<vec4f, 32u>;

alias Arr_20 = array<vec4f, 32u>;

alias Arr_21 = array<vec4f, 32u>;

alias Arr_22 = array<vec4f, 32u>;

alias Arr_23 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_18,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_19,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_20,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_21,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_22,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_23,
}

var<private> gl_FragCoord : vec4f;

var<private> vs_SV_InstanceID0 : u32;

@group(1) @binding(5) var<uniform> x_80 : UnityDrawCallInfo;

@group(0) @binding(4) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(18) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(0) var<uniform> x_105 : PGlobals;

@group(0) @binding(7) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(21) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(7) var<uniform> x_129 : UnityPerMaterial;

@group(0) @binding(5) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(19) var sampler_BumpMap : sampler;

@group(0) @binding(6) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(20) var sampler_OcclusionMap : sampler;

@group(0) @binding(13) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_PointRepeat : sampler;

@group(1) @binding(6) var<uniform> x_251 : UnityInstancing_PerDraw0;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec3f;

var<private> vs_TEXCOORD3 : vec4f;

@group(1) @binding(8) var<uniform> x_414 : LightShadows;

@group(0) @binding(2) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(17) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2f;

@group(0) @binding(3) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(9) var<uniform> x_2122 : LightCookies;

@group(0) @binding(11) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_2428 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_2602 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_2846 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(16) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(1) var<uniform> x_3530 : AdditionalLights;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

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

const x_160 = vec2f(2.0f);

const x_616 = vec2f(1.0f);

const x_889 = vec4f(0.25f);

const x_905 = vec2f(0.5f);

const x_927 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_938 = vec2f(0.07999999821186065674f);

const x_990 = vec2f(0.15999999642372131348f);

const x_1059 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1392 = vec2f(0.04081600159406661987f);

const x_1449 = vec3f(0.08163200318813323975f);

const x_1455 = vec2f(0.08163200318813323975f);

const x_1465 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1468 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1475 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1513 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2563 = vec2u(2u);

const x_3017 = vec3f(1.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlati0 : i32;
  var u_xlat1 : vec4f;
  var u_xlat29 : vec2f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat87 : f32;
  var u_xlat88 : f32;
  var u_xlat61 : vec2f;
  var u_xlatb90 : bool;
  var x_259 : f32;
  var u_xlatb61 : bool;
  var u_xlat4 : vec3f;
  var u_xlat90 : f32;
  var u_xlat5 : vec3f;
  var x_330 : vec3f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec3f;
  var u_xlat9 : vec4f;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu87 : u32;
  var u_xlati87 : i32;
  var u_xlat91 : f32;
  var u_xlat92 : f32;
  var u_xlat31 : vec3f;
  var u_xlat58 : f32;
  var u_xlat93 : f32;
  var u_xlat36 : f32;
  var u_xlat94 : f32;
  var u_xlatb36 : bool;
  var txVec0 : vec3f;
  var u_xlat10 : vec4f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb95 : bool;
  var u_xlat67 : vec2f;
  var u_xlat11 : vec4f;
  var u_xlat69 : vec2f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat95 : f32;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat38 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat39 : vec3f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
  var u_xlat40 : vec2f;
  var u_xlat75 : vec2f;
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
  var u_xlatb64 : bool;
  var x_2074 : f32;
  var u_xlat35 : f32;
  var u_xlat64 : f32;
  var u_xlatb11 : vec2<bool>;
  var x_2205 : f32;
  var x_2216 : vec3f;
  var u_xlatu7 : vec2u;
  var u_xlatu12 : vec4u;
  var u_xlati7 : i32;
  var u_xlat34 : f32;
  var x_2349 : f32;
  var u_xlatu61 : u32;
  var u_xlatu5 : u32;
  var u_xlati34 : i32;
  var u_xlatu34 : vec2u;
  var u_xlati36 : vec2i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati9 : vec2i;
  var u_xlati67 : vec2i;
  var u_xlati12 : vec4i;
  var u_xlati61 : i32;
  var u_xlatu36 : vec2u;
  var u_xlatb9 : vec3<bool>;
  var u_xlati70 : i32;
  var u_xlatu99 : u32;
  var u_xlatu95 : u32;
  var u_xlati96 : i32;
  var u_xlatu97 : u32;
  var u_xlatb98 : bool;
  var u_xlatu100 : u32;
  var u_xlatb100 : bool;
  var u_xlatu98 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu14 : vec4u;
  var u_xlatu15 : vec2u;
  var u_xlati14 : vec4i;
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
  var u_xlati73 : vec2i;
  var u_xlati16 : vec4i;
  var u_xlati17 : vec2i;
  var u_xlati15 : vec3i;
  var u_xlati100 : i32;
  var u_xlati43 : i32;
  var u_xlati98 : i32;
  var u_xlati95 : i32;
  var u_xlat98 : f32;
  var u_xlat100 : f32;
  var x_2905 : f32;
  var x_2919 : f32;
  var x_2933 : f32;
  var u_xlat43 : vec3f;
  var x_2989 : vec3f;
  var u_xlat101 : f32;
  var u_xlatb44 : vec2<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_3048 : f32;
  var x_3061 : f32;
  var u_xlat72 : vec2f;
  var u_xlatu72 : vec2u;
  var u_xlati72 : i32;
  var u_xlati58 : i32;
  var x_3463 : vec3f;
  var u_xlatu58 : u32;
  var u_xlatb34 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlat96 : f32;
  var u_xlat97 : f32;
  var u_xlatb97 : bool;
  var u_xlati97 : i32;
  var u_xlatb12 : vec4<bool>;
  var u_xlat99 : f32;
  var u_xlat41 : vec3f;
  var x_3679 : f32;
  var x_3689 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var u_xlat71 : vec2f;
  var u_xlat73 : vec2f;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
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
  var u_xlati41 : i32;
  var u_xlatb41 : vec3<bool>;
  var x_5243 : f32;
  var x_5256 : f32;
  var x_5315 : f32;
  var x_5326 : vec3f;
  var x_5475 : vec3f;
  var u_xlati10 : vec3i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlati68 : vec2i;
  var u_xlati11 : vec3i;
  var u_xlati5 : i32;
  var u_xlatu10 : vec2u;
  var u_xlatb96 : bool;
  var u_xlatu96 : u32;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlatu13 : vec2u;
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
  var u_xlati71 : vec2i;
  var u_xlati13 : vec3i;
  var u_xlatb99 : bool;
  var u_xlati99 : i32;
  var u_xlatb14 : vec4<bool>;
  var x_6018 : f32;
  var x_6028 : f32;
  var txVec60 : vec3f;
  var txVec61 : vec3f;
  var txVec62 : vec3f;
  var txVec63 : vec3f;
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
  var u_xlatb43 : vec3<bool>;
  var x_7564 : f32;
  var x_7577 : f32;
  var x_7633 : f32;
  var x_7644 : vec3f;
  var x_7791 : vec3f;
  var u_xlat0 : vec3f;
  var u_xlatb0 : bool;
  var x_7848 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  u_xlati0 = (bitcast<i32>(vs_SV_InstanceID0) + x_80.unity_BaseInstanceID);
  let x_100 = vs_TEXCOORD0;
  let x_110 = x_105.x_GlobalMipBias.x;
  let x_111 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_100, x_110);
  u_xlat1 = x_111;
  let x_119 = vs_TEXCOORD0;
  let x_121 = x_105.x_GlobalMipBias.x;
  let x_122 = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_119, x_121);
  u_xlat29 = x_122.xw;
  u_xlat2 = (u_xlat1.wxyz * x_129.x_BaseColor.wxyz);
  let x_142 = vs_TEXCOORD0;
  let x_144 = x_105.x_GlobalMipBias.x;
  let x_145 = textureSampleBias(x_BumpMap, sampler_BumpMap, x_142, x_144);
  u_xlat3 = vec4f(x_145.xyw.xyz, u_xlat3.w);
  u_xlat3.x = (u_xlat3.x * u_xlat3.z);
  u_xlat3 = vec4f((((u_xlat3.xy * x_160) + vec2f(-1.0f))).xy, u_xlat3.zw);
  u_xlat87 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat87 = min(u_xlat87, 1.0f);
  u_xlat87 = (-(u_xlat87) + 1.0f);
  u_xlat87 = sqrt(u_xlat87);
  u_xlat87 = max(u_xlat87, 0.0000000000000001f);
  let x_190 = vec2f(x_129.x_BumpScale, x_129.x_BumpScale);
  u_xlat3 = vec4f(((u_xlat3.xy * vec2f(x_190.x, x_190.y))).xy, u_xlat3.zw);
  let x_203 = vs_TEXCOORD0;
  let x_205 = x_105.x_GlobalMipBias.x;
  let x_206 = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_203, x_205);
  u_xlat88 = x_206.y;
  u_xlat61.x = (-(x_129.x_OcclusionStrength) + 1.0f);
  u_xlat88 = ((u_xlat88 * x_129.x_OcclusionStrength) + u_xlat61.x);
  u_xlat61 = (hlslcc_FragCoord.xy * vec2f(x_105.x_DitheringTextureInvSize));
  let x_235 = u_xlat61;
  let x_237 = x_105.x_GlobalMipBias.x;
  let x_238 = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, x_235, x_237);
  u_xlat61.x = x_238.w;
  u_xlati0 = (u_xlati0 * 9i);
  u_xlatb90 = (x_251.unity_Builtins0Array[(u_xlati0 / 9i)].unity_LODFadeArray.x >= 0.0f);
  if (u_xlatb90) {
    x_259 = abs(u_xlat61.x);
  } else {
    x_259 = -(abs(u_xlat61.x));
  }
  u_xlat61.x = x_259;
  u_xlat61.x = (-(u_xlat61.x) + x_251.unity_Builtins0Array[(u_xlati0 / 9i)].unity_LODFadeArray.x);
  u_xlatb61 = (u_xlat61.x < 0.0f);
  if (((select(0i, 1i, u_xlatb61) * -1i) != 0i)) {
    discard;
  }
  u_xlatb61 = (x_105.unity_OrthoParams.w == 0.0f);
  u_xlat4 = (-(vs_TEXCOORD1) + x_105.x_WorldSpaceCameraPos);
  u_xlat90 = dot(u_xlat4, u_xlat4);
  u_xlat90 = inverseSqrt(u_xlat90);
  u_xlat4 = (vec3f(u_xlat90) * u_xlat4);
  u_xlat5.x = x_105.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat5.y = x_105.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat5.z = x_105.hlslcc_mtx4x4unity_MatrixV[2i].z;
  if (u_xlatb61) {
    x_330 = u_xlat4;
  } else {
    x_330 = u_xlat5;
  }
  u_xlat4 = x_330;
  u_xlat6 = vec4f(((vs_TEXCOORD2.zxy * vs_TEXCOORD3.yzx)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((vs_TEXCOORD2.yzx * vs_TEXCOORD3.zxy) + -(u_xlat6.xyz))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat6.xyz * vs_TEXCOORD3.www)).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat3.yyy * u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_379 = ((u_xlat3.xxx * vs_TEXCOORD3.xyz) + u_xlat6.xyz);
  u_xlat3 = vec4f(x_379.xy, u_xlat3.z, x_379.z);
  let x_388 = ((vec3f(u_xlat87) * vs_TEXCOORD2) + u_xlat3.xyw);
  u_xlat3 = vec4f(x_388.xy, u_xlat3.z, x_388.z);
  u_xlat87 = dot(u_xlat3.xyw, u_xlat3.xyw);
  u_xlat87 = inverseSqrt(u_xlat87);
  let x_402 = (vec3f(u_xlat87) * u_xlat3.xyw);
  u_xlat3 = vec4f(x_402.xy, u_xlat3.z, x_402.z);
  u_xlat6 = vec4f(((vs_TEXCOORD1 + -(x_414.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat6.w);
  u_xlat7 = vec4f(((vs_TEXCOORD1 + -(x_414.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat7.w);
  u_xlat8 = (vs_TEXCOORD1 + -(x_414.x_CascadeShadowSplitSpheres2.xyz));
  u_xlat9 = vec4f(((vs_TEXCOORD1 + -(x_414.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat9.w);
  u_xlat6.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat6.y = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat6.z = dot(u_xlat8, u_xlat8);
  u_xlat6.w = dot(u_xlat9.xyz, u_xlat9.xyz);
  u_xlatb6 = (u_xlat6 < x_414.x_CascadeShadowSplitSphereRadii);
  u_xlat7.x = select(0.0f, 1.0f, u_xlatb6.x);
  u_xlat7.y = select(0.0f, 1.0f, u_xlatb6.y);
  u_xlat7.z = select(0.0f, 1.0f, u_xlatb6.z);
  u_xlat7.w = select(0.0f, 1.0f, u_xlatb6.w);
  u_xlat6.x = select(-0.0f, -1.0f, u_xlatb6.x);
  u_xlat6.y = select(-0.0f, -1.0f, u_xlatb6.y);
  u_xlat6.z = select(-0.0f, -1.0f, u_xlatb6.z);
  u_xlat6 = vec4f(((u_xlat6.xyz + u_xlat7.yzw)).xyz, u_xlat6.w);
  u_xlat7 = vec4f(u_xlat7.x, max(u_xlat6.xyz, vec3f()).xyz);
  u_xlat87 = dot(u_xlat7, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat87 = (-(u_xlat87) + 4.0f);
  u_xlatu87 = u32(u_xlat87);
  u_xlati87 = (bitcast<i32>(u_xlatu87) << bitcast<u32>(2i));
  u_xlat6 = vec4f(((vs_TEXCOORD1.yyy * x_414.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati87 + 1i)].xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((x_414.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati87].xyz * vs_TEXCOORD1.xxx) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((x_414.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati87 + 2i)].xyz * vs_TEXCOORD1.zzz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat6.xyz + x_414.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati87 + 3i)].xyz)).xyz, u_xlat6.w);
  u_xlat87 = (vs_TEXCOORD1.y * x_105.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat87 = ((x_105.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD1.x) + u_xlat87);
  u_xlat87 = ((x_105.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD1.z) + u_xlat87);
  u_xlat87 = (u_xlat87 + x_105.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat87 = (-(u_xlat87) + -(x_105.x_ProjectionParams.y));
  u_xlat87 = max(u_xlat87, 0.0f);
  u_xlat87 = (u_xlat87 * x_105.unity_FogParams.x);
  let x_619 = x_105.x_ScaledScreenParams.xy;
  u_xlat7 = vec4f(((x_616 / vec2f(x_619.x, x_619.y))).xy, u_xlat7.zw);
  u_xlat7 = vec4f(((u_xlat7.xy * hlslcc_FragCoord.xy)).xy, u_xlat7.zw);
  u_xlat91 = ((u_xlat7.y * x_105.x_ScaleBiasRt.x) + x_105.x_ScaleBiasRt.y);
  u_xlat7.z = (-(u_xlat91) + 1.0f);
  let x_653 = vs_TEXCOORD8;
  let x_655 = x_105.x_GlobalMipBias.x;
  let x_656 = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_653, x_655);
  u_xlat8 = x_656.xyz;
  let x_662 = vs_TEXCOORD8;
  let x_664 = x_105.x_GlobalMipBias.x;
  let x_665 = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_662, x_664);
  u_xlat9 = x_665;
  u_xlat9 = vec4f(((u_xlat9.xyz + vec3f(-0.5f))).xyz, u_xlat9.w);
  u_xlat91 = dot(u_xlat3.xyw, u_xlat9.xyz);
  u_xlat91 = (u_xlat91 + 0.5f);
  u_xlat8 = (vec3f(u_xlat91) * u_xlat8);
  u_xlat91 = max(u_xlat9.w, 0.00009999999747378752f);
  u_xlat8 = (u_xlat8 / vec3f(u_xlat91));
  u_xlat91 = ((-(u_xlat29.x) * 0.95999997854232788086f) + 0.95999997854232788086f);
  u_xlat92 = ((u_xlat29.y * x_129.x_Smoothness) + -(u_xlat91));
  u_xlat31 = (u_xlat2.yzw * vec3f(u_xlat91));
  u_xlat1 = vec4f((((u_xlat1.xyz * x_129.x_BaseColor.xyz) + vec3f(-0.03999999910593032837f))).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat29.xxx * u_xlat1.xyz) + vec3f(0.03999999910593032837f))).xyz, u_xlat1.w);
  u_xlat29.x = ((-(u_xlat29.y) * x_129.x_Smoothness) + 1.0f);
  u_xlat58 = (u_xlat29.x * u_xlat29.x);
  u_xlat58 = max(u_xlat58, 0.0078125f);
  u_xlat91 = (u_xlat58 * u_xlat58);
  u_xlat92 = (u_xlat92 + 1.0f);
  u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
  u_xlat93 = ((u_xlat58 * 4.0f) + 2.0f);
  let x_770 = u_xlat7;
  let x_773 = x_105.x_GlobalMipBias.x;
  let x_774 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_770.xz, x_773);
  u_xlat36 = x_774.x;
  u_xlat36 = (u_xlat36 + -(x_105.x_AmbientOcclusionParam.x));
  u_xlat36 = (u_xlat36 + 1.0f);
  u_xlat36 = clamp(u_xlat36, 0.0f, 1.0f);
  u_xlat94 = (u_xlat36 + -1.0f);
  u_xlat94 = ((x_105.x_AmbientOcclusionParam.w * u_xlat94) + 1.0f);
  u_xlat88 = min(u_xlat88, u_xlat36);
  u_xlatb36 = (0.0f < x_414.x_MainLightShadowParams.y);
  if (u_xlatb36) {
    u_xlatb36 = (x_414.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb36) {
      u_xlat9 = (u_xlat6.xyxy + x_414.x_MainLightShadowOffset0);
      let x_818 = u_xlat9.xy;
      txVec0 = vec3f(x_818.x, x_818.y, u_xlat6.z);
      u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_839 = u_xlat9.zw;
      txVec1 = vec3f(x_839.x, x_839.y, u_xlat6.z);
      u_xlat10.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat9 = (u_xlat6.xyxy + x_414.x_MainLightShadowOffset1);
      let x_859 = u_xlat9.xy;
      txVec2 = vec3f(x_859.x, x_859.y, u_xlat6.z);
      u_xlat10.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_874 = u_xlat9.zw;
      txVec3 = vec3f(x_874.x, x_874.y, u_xlat6.z);
      u_xlat10.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat36 = dot(u_xlat10, x_889);
    } else {
      u_xlatb95 = (x_414.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb95) {
        u_xlat9 = vec4f((((u_xlat6.xy * x_414.x_MainLightShadowmapSize.zw) + x_905)).xy, u_xlat9.zw);
        u_xlat9 = vec4f(floor(u_xlat9.xy).xy, u_xlat9.zw);
        u_xlat67 = ((u_xlat6.xy * x_414.x_MainLightShadowmapSize.zw) + -(u_xlat9.xy));
        u_xlat10 = (u_xlat67.xxyy + x_927);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        let x_939 = (u_xlat11.yw * x_938);
        u_xlat10 = vec4f(x_939.x, u_xlat10.y, x_939.y, u_xlat10.w);
        u_xlat11 = vec4f((((u_xlat11.xz * x_905) + -(u_xlat67))).xy, u_xlat11.zw);
        u_xlat69 = (-(u_xlat67) + x_616);
        u_xlat12 = vec4f(min(u_xlat67, vec2f()).xy, u_xlat12.zw);
        u_xlat12 = vec4f((((-(u_xlat12.xy) * u_xlat12.xy) + u_xlat69)).xy, u_xlat12.zw);
        u_xlat67 = max(u_xlat67, vec2f());
        u_xlat67 = ((-(u_xlat67) * u_xlat67) + u_xlat10.yw);
        u_xlat12 = vec4f(((u_xlat12.xy + x_616)).xy, u_xlat12.zw);
        u_xlat67 = (u_xlat67 + x_616);
        u_xlat13 = vec4f(((u_xlat11.xy * x_990)).xy, u_xlat13.zw);
        u_xlat11 = vec4f(((u_xlat69 * x_990)).xy, u_xlat11.zw);
        u_xlat12 = vec4f(((u_xlat12.xy * x_990)).xy, u_xlat12.zw);
        u_xlat14 = vec4f(((u_xlat67 * x_990)).xy, u_xlat14.zw);
        u_xlat67 = (u_xlat10.yw * x_990);
        u_xlat13.z = u_xlat12.x;
        u_xlat13.w = u_xlat67.x;
        u_xlat11.z = u_xlat14.x;
        u_xlat11.w = u_xlat10.x;
        u_xlat15 = (u_xlat11.zwxz + u_xlat13.zwxz);
        u_xlat12.z = u_xlat13.y;
        u_xlat12.w = u_xlat67.y;
        u_xlat14.z = u_xlat11.y;
        u_xlat14.w = u_xlat10.z;
        u_xlat10 = vec4f(((u_xlat12.zyw + u_xlat14.zyw)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat11.xzw / u_xlat15.zwy)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_1059)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat14.zyw / u_xlat10.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_1059)).xyz, u_xlat12.w);
        u_xlat11 = vec4f(((u_xlat11.yxz * x_414.x_MainLightShadowmapSize.xxx)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_414.x_MainLightShadowmapSize.yyy)).xyz, u_xlat12.w);
        u_xlat11.w = u_xlat12.x;
        u_xlat13 = ((u_xlat9.xyxy * x_414.x_MainLightShadowmapSize.xyxy) + u_xlat11.ywxw);
        u_xlat67 = ((u_xlat9.xy * x_414.x_MainLightShadowmapSize.xy) + u_xlat11.zw);
        u_xlat12.w = u_xlat11.y;
        let x_1116 = u_xlat12.yz;
        u_xlat11 = vec4f(u_xlat11.x, x_1116.x, u_xlat11.z, x_1116.y);
        u_xlat14 = ((u_xlat9.xyxy * x_414.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat12 = ((u_xlat9.xyxy * x_414.x_MainLightShadowmapSize.xyxy) + u_xlat12.wywz);
        u_xlat11 = ((u_xlat9.xyxy * x_414.x_MainLightShadowmapSize.xyxy) + u_xlat11.xwzw);
        u_xlat16 = (u_xlat10.xxxy * u_xlat15.zwyz);
        u_xlat17 = (u_xlat10.yyzz * u_xlat15);
        u_xlat95 = (u_xlat10.z * u_xlat15.y);
        let x_1165 = u_xlat13.xy;
        txVec4 = vec3f(x_1165.x, x_1165.y, u_xlat6.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1180 = u_xlat13.zw;
        txVec5 = vec3f(x_1180.x, x_1180.y, u_xlat6.z);
        u_xlat38 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat38 = (u_xlat38 * u_xlat16.y);
        u_xlat9.x = ((u_xlat16.x * u_xlat9.x) + u_xlat38);
        txVec6 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat6.z);
        u_xlat38 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat9.x = ((u_xlat16.z * u_xlat38) + u_xlat9.x);
        let x_1228 = u_xlat12.xy;
        txVec7 = vec3f(x_1228.x, x_1228.y, u_xlat6.z);
        u_xlat38 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat9.x = ((u_xlat16.w * u_xlat38) + u_xlat9.x);
        let x_1250 = u_xlat14.xy;
        txVec8 = vec3f(x_1250.x, x_1250.y, u_xlat6.z);
        u_xlat38 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat9.x = ((u_xlat17.x * u_xlat38) + u_xlat9.x);
        let x_1272 = u_xlat14.zw;
        txVec9 = vec3f(x_1272.x, x_1272.y, u_xlat6.z);
        u_xlat38 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat9.x = ((u_xlat17.y * u_xlat38) + u_xlat9.x);
        let x_1294 = u_xlat12.zw;
        txVec10 = vec3f(x_1294.x, x_1294.y, u_xlat6.z);
        u_xlat38 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat9.x = ((u_xlat17.z * u_xlat38) + u_xlat9.x);
        let x_1316 = u_xlat11.xy;
        txVec11 = vec3f(x_1316.x, x_1316.y, u_xlat6.z);
        u_xlat38 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat9.x = ((u_xlat17.w * u_xlat38) + u_xlat9.x);
        let x_1338 = u_xlat11.zw;
        txVec12 = vec3f(x_1338.x, x_1338.y, u_xlat6.z);
        u_xlat38 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat36 = ((u_xlat95 * u_xlat38) + u_xlat9.x);
      } else {
        u_xlat9 = vec4f((((u_xlat6.xy * x_414.x_MainLightShadowmapSize.zw) + x_905)).xy, u_xlat9.zw);
        u_xlat9 = vec4f(floor(u_xlat9.xy).xy, u_xlat9.zw);
        u_xlat67 = ((u_xlat6.xy * x_414.x_MainLightShadowmapSize.zw) + -(u_xlat9.xy));
        u_xlat10 = (u_xlat67.xxyy + x_927);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        let x_1393 = (u_xlat11.yw * x_1392);
        u_xlat12 = vec4f(u_xlat12.x, x_1393.x, u_xlat12.z, x_1393.y);
        let x_1401 = ((u_xlat11.xz * x_905) + -(u_xlat67));
        u_xlat10 = vec4f(x_1401.x, u_xlat10.y, x_1401.y, u_xlat10.w);
        u_xlat11 = vec4f(((-(u_xlat67) + x_616)).xy, u_xlat11.zw);
        u_xlat69 = min(u_xlat67, vec2f());
        u_xlat11 = vec4f((((-(u_xlat69) * u_xlat69) + u_xlat11.xy)).xy, u_xlat11.zw);
        u_xlat69 = max(u_xlat67, vec2f());
        let x_1429 = ((-(u_xlat69) * u_xlat69) + u_xlat10.yw);
        u_xlat39 = vec3f(x_1429.x, u_xlat39.y, x_1429.y);
        u_xlat11 = vec4f(((u_xlat11.xy + x_160)).xy, u_xlat11.zw);
        let x_1439 = (u_xlat39.xz + x_160);
        u_xlat10 = vec4f(u_xlat10.x, x_1439.x, u_xlat10.z, x_1439.y);
        u_xlat13.z = (u_xlat10.y * 0.08163200318813323975f);
        u_xlat14 = vec4f(((u_xlat10.zxw * x_1449)).xyz, u_xlat14.w);
        u_xlat10 = vec4f(((u_xlat11.xy * x_1455)).xy, u_xlat10.zw);
        u_xlat13.x = u_xlat14.y;
        let x_1469 = ((u_xlat67.xx * x_1465) + x_1468);
        u_xlat13 = vec4f(u_xlat13.x, x_1469.x, u_xlat13.z, x_1469.y);
        let x_1476 = ((u_xlat67.xx * x_1465) + x_1475);
        u_xlat11 = vec4f(x_1476.x, u_xlat11.y, x_1476.y, u_xlat11.w);
        u_xlat11.y = u_xlat10.x;
        u_xlat11.w = u_xlat12.y;
        u_xlat13 = (u_xlat11 + u_xlat13);
        let x_1491 = ((u_xlat67.yy * x_1465) + x_1468);
        u_xlat14 = vec4f(u_xlat14.x, x_1491.x, u_xlat14.z, x_1491.y);
        let x_1497 = ((u_xlat67.yy * x_1465) + x_1475);
        u_xlat12 = vec4f(x_1497.x, u_xlat12.y, x_1497.y, u_xlat12.w);
        u_xlat12.y = u_xlat10.y;
        u_xlat10 = (u_xlat12 + u_xlat14);
        u_xlat11 = (u_xlat11 / u_xlat13);
        u_xlat11 = (u_xlat11 + x_1513);
        u_xlat12 = (u_xlat12 / u_xlat10);
        u_xlat12 = (u_xlat12 + x_1513);
        u_xlat11 = (u_xlat11.wxyz * x_414.x_MainLightShadowmapSize.xxxx);
        u_xlat12 = (u_xlat12.xwyz * x_414.x_MainLightShadowmapSize.yyyy);
        let x_1533 = u_xlat11.yzw;
        u_xlat14 = vec4f(x_1533.x, u_xlat14.y, x_1533.yz);
        u_xlat14.y = u_xlat12.x;
        u_xlat15 = ((u_xlat9.xyxy * x_414.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat67 = ((u_xlat9.xy * x_414.x_MainLightShadowmapSize.xy) + u_xlat14.wy);
        u_xlat11.y = u_xlat14.y;
        u_xlat14.y = u_xlat12.z;
        u_xlat16 = ((u_xlat9.xyxy * x_414.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat17 = vec4f((((u_xlat9.xy * x_414.x_MainLightShadowmapSize.xy) + u_xlat14.wy)).xy, u_xlat17.zw);
        u_xlat11.z = u_xlat14.y;
        u_xlat18 = ((u_xlat9.xyxy * x_414.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyxz);
        u_xlat14.y = u_xlat12.w;
        u_xlat19 = ((u_xlat9.xyxy * x_414.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat40 = ((u_xlat9.xy * x_414.x_MainLightShadowmapSize.xy) + u_xlat14.wy);
        u_xlat11.w = u_xlat14.y;
        u_xlat75 = ((u_xlat9.xy * x_414.x_MainLightShadowmapSize.xy) + u_xlat11.xw);
        let x_1633 = u_xlat14.xzw;
        u_xlat12 = vec4f(x_1633.x, u_xlat12.y, x_1633.yz);
        u_xlat14 = ((u_xlat9.xyxy * x_414.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat70 = ((u_xlat9.xy * x_414.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat12.x = u_xlat11.x;
        u_xlat9 = vec4f((((u_xlat9.xy * x_414.x_MainLightShadowmapSize.xy) + u_xlat12.xy)).xy, u_xlat9.zw);
        u_xlat20 = (u_xlat10.xxxx * u_xlat13);
        u_xlat21 = (u_xlat10.yyyy * u_xlat13);
        u_xlat22 = (u_xlat10.zzzz * u_xlat13);
        u_xlat10 = (u_xlat10.wwww * u_xlat13);
        let x_1690 = u_xlat15.xy;
        txVec13 = vec3f(x_1690.x, x_1690.y, u_xlat6.z);
        u_xlat95 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_1704 = u_xlat15.zw;
        txVec14 = vec3f(x_1704.x, x_1704.y, u_xlat6.z);
        u_xlat11.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat11.x = (u_xlat11.x * u_xlat20.y);
        u_xlat95 = ((u_xlat20.x * u_xlat95) + u_xlat11.x);
        txVec15 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat95 = ((u_xlat20.z * u_xlat67.x) + u_xlat95);
        let x_1753 = u_xlat18.xy;
        txVec16 = vec3f(x_1753.x, x_1753.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat95 = ((u_xlat20.w * u_xlat67.x) + u_xlat95);
        let x_1775 = u_xlat16.xy;
        txVec17 = vec3f(x_1775.x, x_1775.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat95 = ((u_xlat21.x * u_xlat67.x) + u_xlat95);
        let x_1797 = u_xlat16.zw;
        txVec18 = vec3f(x_1797.x, x_1797.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat95 = ((u_xlat21.y * u_xlat67.x) + u_xlat95);
        let x_1819 = u_xlat17.xy;
        txVec19 = vec3f(x_1819.x, x_1819.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat95 = ((u_xlat21.z * u_xlat67.x) + u_xlat95);
        let x_1841 = u_xlat18.zw;
        txVec20 = vec3f(x_1841.x, x_1841.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat95 = ((u_xlat21.w * u_xlat67.x) + u_xlat95);
        let x_1863 = u_xlat19.xy;
        txVec21 = vec3f(x_1863.x, x_1863.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat95 = ((u_xlat22.x * u_xlat67.x) + u_xlat95);
        let x_1885 = u_xlat19.zw;
        txVec22 = vec3f(x_1885.x, x_1885.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat95 = ((u_xlat22.y * u_xlat67.x) + u_xlat95);
        txVec23 = vec3f(u_xlat40.x, u_xlat40.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat95 = ((u_xlat22.z * u_xlat67.x) + u_xlat95);
        txVec24 = vec3f(u_xlat75.x, u_xlat75.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat95 = ((u_xlat22.w * u_xlat67.x) + u_xlat95);
        let x_1949 = u_xlat14.xy;
        txVec25 = vec3f(x_1949.x, x_1949.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat95 = ((u_xlat10.x * u_xlat67.x) + u_xlat95);
        let x_1971 = u_xlat14.zw;
        txVec26 = vec3f(x_1971.x, x_1971.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat95 = ((u_xlat10.y * u_xlat67.x) + u_xlat95);
        txVec27 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat6.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat95 = ((u_xlat10.z * u_xlat67.x) + u_xlat95);
        let x_2014 = u_xlat9.xy;
        txVec28 = vec3f(x_2014.x, x_2014.y, u_xlat6.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat36 = ((u_xlat10.w * u_xlat9.x) + u_xlat95);
      }
    }
  } else {
    let x_2037 = u_xlat6.xy;
    txVec29 = vec3f(x_2037.x, x_2037.y, u_xlat6.z);
    u_xlat36 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat6.x = (-(x_414.x_MainLightShadowParams.x) + 1.0f);
  u_xlat6.x = ((u_xlat36 * x_414.x_MainLightShadowParams.x) + u_xlat6.x);
  u_xlatb35 = (0.0f >= u_xlat6.z);
  u_xlatb64 = (u_xlat6.z >= 1.0f);
  u_xlatb35 = (u_xlatb64 | u_xlatb35);
  if (u_xlatb35) {
    x_2074 = 1.0f;
  } else {
    x_2074 = u_xlat6.x;
  }
  u_xlat6.x = x_2074;
  u_xlat9 = vec4f(((vs_TEXCOORD1 + -(x_105.x_WorldSpaceCameraPos))).xyz, u_xlat9.w);
  u_xlat35 = dot(u_xlat9.xyz, u_xlat9.xyz);
  u_xlat64 = ((u_xlat35 * x_414.x_MainLightShadowParams.z) + x_414.x_MainLightShadowParams.w);
  u_xlat64 = clamp(u_xlat64, 0.0f, 1.0f);
  u_xlat36 = (-(u_xlat6.x) + 1.0f);
  u_xlat6.x = ((u_xlat64 * u_xlat36) + u_xlat6.x);
  u_xlatb64 = !((x_2122.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb64) {
    u_xlat10 = vec4f(((vs_TEXCOORD1.yy * x_2122.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy)).xy, u_xlat10.zw);
    u_xlat10 = vec4f((((x_2122.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD1.xx) + u_xlat10.xy)).xy, u_xlat10.zw);
    u_xlat10 = vec4f((((x_2122.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD1.zz) + u_xlat10.xy)).xy, u_xlat10.zw);
    u_xlat10 = vec4f(((u_xlat10.xy + x_2122.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy)).xy, u_xlat10.zw);
    u_xlat10 = vec4f((((u_xlat10.xy * x_905) + x_905)).xy, u_xlat10.zw);
    let x_2178 = u_xlat10;
    let x_2181 = x_105.x_GlobalMipBias.x;
    let x_2182 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2178.xy, x_2181);
    u_xlat10 = x_2182;
    let x_2194 = vec4f(x_2122.x_MainLightCookieTextureFormat, x_2122.x_MainLightCookieTextureFormat, x_2122.x_MainLightCookieTextureFormat, x_2122.x_MainLightCookieTextureFormat);
    u_xlatb11 = ((vec4f(x_2194.x, x_2194.y, x_2194.z, x_2194.w) == vec4f(0.0f, 1.0f, 0.0f, 0.0f))).xy;
    if (u_xlatb11.y) {
      x_2205 = u_xlat10.w;
    } else {
      x_2205 = u_xlat10.x;
    }
    u_xlat64 = x_2205;
    if (u_xlatb11.x) {
      x_2216 = u_xlat10.xyz;
    } else {
      x_2216 = vec3f(u_xlat64);
    }
    u_xlat10 = vec4f(x_2216.xyz, u_xlat10.w);
  } else {
    u_xlat10.x = 1.0f;
    u_xlat10.y = 1.0f;
    u_xlat10.z = 1.0f;
  }
  u_xlat10 = vec4f(((u_xlat10.xyz * x_105.x_MainLightColor.xyz)).xyz, u_xlat10.w);
  u_xlat10 = vec4f(((vec3f(u_xlat94) * u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat64 = dot(-(u_xlat4), u_xlat3.xyw);
  u_xlat64 = (u_xlat64 + u_xlat64);
  u_xlat11 = vec4f((((u_xlat3.xyw * -(vec3f(u_xlat64))) + -(u_xlat4))).xyz, u_xlat11.w);
  u_xlat64 = dot(u_xlat3.xyw, u_xlat4);
  u_xlat64 = clamp(u_xlat64, 0.0f, 1.0f);
  u_xlat64 = (-(u_xlat64) + 1.0f);
  u_xlat64 = (u_xlat64 * u_xlat64);
  u_xlat64 = (u_xlat64 * u_xlat64);
  u_xlat36 = ((-(u_xlat29.x) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat29.x = (u_xlat29.x * u_xlat36);
  u_xlat29.x = (u_xlat29.x * 6.0f);
  u_xlat7 = vec4f(((u_xlat7.xz * x_105.x_FPParams1.xy)).xy, u_xlat7.zw);
  u_xlatu7 = vec2u(u_xlat7.xy);
  u_xlatu12 = vec4u(vec2u(x_105.x_FPParams1.zw).xy, u_xlatu12.zw);
  u_xlati7 = ((bitcast<i32>(u_xlatu7.y) * bitcast<i32>(u_xlatu12.x)) + bitcast<i32>(u_xlatu7.x));
  u_xlatu7.x = (u_xlatu12.y * bitcast<u32>(u_xlati7));
  u_xlat5.x = dot(-(u_xlat5), u_xlat9.xyz);
  u_xlat34 = log2(u_xlat5.x);
  if (u_xlatb61) {
    x_2349 = u_xlat34;
  } else {
    x_2349 = u_xlat5.x;
  }
  u_xlat61.x = x_2349;
  u_xlat61.x = ((u_xlat61.x * x_105.x_FPParams0.x) + x_105.x_FPParams0.y);
  u_xlatu61 = u32(u_xlat61.x);
  u_xlatu5 = u32(x_105.x_FPParams2.x);
  u_xlatu5 = (u_xlatu5 + 4294967295u);
  u_xlati34 = (bitcast<i32>(u_xlatu12.y) + 2i);
  u_xlatu61 = min(u_xlatu61, u_xlatu5);
  u_xlatu5 = (bitcast<u32>(u_xlati34) * u_xlatu61);
  u_xlatu34 = ((vec2u(u_xlatu61) * vec2u(bitcast<u32>(u_xlati34))) + vec2u(1u, 2u));
  u_xlatu61 = (u_xlatu34.x >> 2u);
  param = bitcast<i32>(u_xlatu34.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2411 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu34.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2418 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlati36 = vec2i(x_2411, x_2418);
  u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati36.xx) & bitcast<vec2u>(x_2428.urp_ZBins[bitcast<i32>(u_xlatu61)].wy)));
  u_xlati67 = ~(u_xlati36);
  u_xlati12 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati67.xx) & bitcast<vec2u>(x_2428.urp_ZBins[bitcast<i32>(u_xlatu61)].zx))).xy, u_xlati12.zw);
  u_xlati9 = bitcast<vec2i>((bitcast<vec2u>(u_xlati9) | bitcast<vec2u>(u_xlati12.xy)));
  u_xlati61 = bitcast<i32>((bitcast<u32>(u_xlati36.y) & bitcast<u32>(u_xlati9.x)));
  u_xlati34 = bitcast<i32>((bitcast<u32>(u_xlati67.y) & bitcast<u32>(u_xlati9.y)));
  u_xlatu61 = (bitcast<u32>(u_xlati61) | bitcast<u32>(u_xlati34));
  u_xlatu36 = vec2u(x_105.x_FPParams0.zw);
  u_xlatb9 = ((vec4f() < u_xlat11.xyzx)).xyz;
  u_xlatu12.x = u_xlatu7.x;
  u_xlatu12.y = u_xlatu34.y;
  u_xlati70 = 0i;
  u_xlatu99 = u_xlatu61;
  u_xlat13.x = 0.0f;
  u_xlat13.y = 0.0f;
  u_xlat13.z = 0.0f;
  u_xlat34 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu95 = (u_xlatu99 >> 16u);
    u_xlati96 = u_xlati70;
    u_xlatu97 = u_xlatu99;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb98 = (u_xlati96 == 0i);
      u_xlatu100 = (u_xlatu97 & 65535u);
      u_xlatb100 = (u_xlatu95 >= u_xlatu100);
      u_xlatb98 = (u_xlatb98 & u_xlatb100);
      if (!(u_xlatb98)) {
        break;
      }
      param_6 = u_xlatu97;
      param_7 = 5i;
      param_8 = 11i;
      let x_2553 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu98 = x_2553;
      u_xlatu14 = (vec4u(u_xlatu98) + u_xlatu12.xxyy);
      u_xlatu15 = (u_xlatu14.yw >> x_2563);
      param_9 = bitcast<i32>(u_xlatu14.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_2572 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu14.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_2579 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu14.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_2586 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu14.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_2593 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati14 = vec4i(x_2572, x_2579, x_2586, x_2593);
      u_xlati73 = bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_2602.urp_Tiles[bitcast<i32>(u_xlatu15.x)].wy)));
      u_xlati16 = ~(u_xlati14);
      u_xlati17 = bitcast<vec2i>((bitcast<vec2u>(u_xlati16.xx) & bitcast<vec2u>(x_2602.urp_Tiles[bitcast<i32>(u_xlatu15.x)].zx)));
      let x_2636 = bitcast<vec2i>((bitcast<vec2u>(u_xlati73) | bitcast<vec2u>(u_xlati17)));
      u_xlati15 = vec3i(x_2636.x, u_xlati15.y, x_2636.y);
      u_xlati100 = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati15.x)));
      u_xlati14.x = bitcast<i32>((bitcast<u32>(u_xlati16.y) & bitcast<u32>(u_xlati15.z)));
      u_xlati100 = bitcast<i32>((bitcast<u32>(u_xlati100) | bitcast<u32>(u_xlati14.x)));
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_2428.urp_ZBins[bitcast<i32>(u_xlatu15.y)].wy))).xy, u_xlati14.zw);
      u_xlati15 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati16.zz) & bitcast<vec2u>(x_2428.urp_ZBins[bitcast<i32>(u_xlatu15.y)].zx))).xy, u_xlati15.z);
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xy) | bitcast<vec2u>(u_xlati15.xy))).xy, u_xlati14.zw);
      u_xlati14.x = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati14.x)));
      u_xlati43 = bitcast<i32>((bitcast<u32>(u_xlati16.w) & bitcast<u32>(u_xlati14.y)));
      u_xlati14.x = bitcast<i32>((bitcast<u32>(u_xlati43) | bitcast<u32>(u_xlati14.x)));
      u_xlati100 = bitcast<i32>((bitcast<u32>(u_xlati100) & bitcast<u32>(u_xlati14.x)));
      u_xlati14.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu97) & 31i)));
      u_xlati100 = bitcast<i32>((bitcast<u32>(u_xlati100) & bitcast<u32>(u_xlati14.x)));
      u_xlati98 = (bitcast<i32>(u_xlatu98) << bitcast<u32>(5i));
      u_xlatu98 = (u_xlatu95 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati98)))));
      u_xlatu98 = min(u_xlatu98, 31u);
      u_xlatu98 = (bitcast<u32>(-(bitcast<i32>(u_xlatu98))) + 31u);
      u_xlatu98 = (4294967295u >> (u_xlatu98 & 31u));
      u_xlati96 = bitcast<i32>((u_xlatu98 & bitcast<u32>(u_xlati100)));
      u_xlati98 = (bitcast<i32>(u_xlatu97) + 32i);
      u_xlatu97 = (bitcast<u32>(u_xlati98) & 4294967264u);
    }
    u_xlatu99 = u_xlatu97;
    u_xlatb95 = (u_xlati96 != 0i);
    u_xlatb98 = (u_xlat34 < 0.99000000953674316406f);
    u_xlatb95 = (u_xlatb95 & u_xlatb98);
    if (!(u_xlatb95)) {
      break;
    }
    u_xlati95 = (0i - u_xlati96);
    u_xlatu95 = (bitcast<u32>(u_xlati95) & bitcast<u32>(u_xlati96));
    u_xlat95 = f32(u_xlatu95);
    u_xlatu95 = (bitcast<u32>(u_xlat95) >> 23u);
    u_xlati95 = (bitcast<i32>(u_xlatu95) + -127i);
    u_xlati98 = (1i << bitcast<u32>((u_xlati95 & 31i)));
    u_xlati70 = bitcast<i32>((bitcast<u32>(u_xlati96) ^ bitcast<u32>(u_xlati98)));
    u_xlati98 = (bitcast<i32>(u_xlatu99) + -32i);
    u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati98) & 65504u));
    u_xlati95 = (u_xlati95 + u_xlati98);
    u_xlati95 = (-(bitcast<i32>(u_xlatu36.x)) + u_xlati95);
    u_xlat14 = vec4f(((vs_TEXCOORD1 + -(x_2846.urp_ReflProbes_BoxMin[u_xlati95].xyz))).xyz, u_xlat14.w);
    u_xlat15 = vec4f(((-(vs_TEXCOORD1) + x_2846.urp_ReflProbes_BoxMax[u_xlati95].xyz)).xyz, u_xlat15.w);
    u_xlat14 = vec4f(min(u_xlat14.xyz, u_xlat15.xyz).xyz, u_xlat14.w);
    u_xlat14 = vec4f(((u_xlat14.xyz / x_2846.urp_ReflProbes_BoxMax[u_xlati95].www)).xyz, u_xlat14.w);
    u_xlat98 = min(u_xlat14.z, u_xlat14.y);
    u_xlat98 = min(u_xlat98, u_xlat14.x);
    u_xlat98 = clamp(u_xlat98, 0.0f, 1.0f);
    u_xlat100 = (-(u_xlat34) + 1.0f);
    u_xlat98 = min(u_xlat98, u_xlat100);
    u_xlatb100 = (0.0f < x_2846.urp_ReflProbes_ProbePosition[u_xlati95].w);
    if (u_xlatb9.x) {
      x_2905 = x_2846.urp_ReflProbes_BoxMax[u_xlati95].x;
    } else {
      x_2905 = x_2846.urp_ReflProbes_BoxMin[u_xlati95].x;
    }
    u_xlat14.x = x_2905;
    if (u_xlatb9.y) {
      x_2919 = x_2846.urp_ReflProbes_BoxMax[u_xlati95].y;
    } else {
      x_2919 = x_2846.urp_ReflProbes_BoxMin[u_xlati95].y;
    }
    u_xlat14.y = x_2919;
    if (u_xlatb9.z) {
      x_2933 = x_2846.urp_ReflProbes_BoxMax[u_xlati95].z;
    } else {
      x_2933 = x_2846.urp_ReflProbes_BoxMin[u_xlati95].z;
    }
    u_xlat14.z = x_2933;
    u_xlat14 = vec4f(((u_xlat14.xyz + -(vs_TEXCOORD1))).xyz, u_xlat14.w);
    u_xlat14 = vec4f(((u_xlat14.xyz / u_xlat11.xyz)).xyz, u_xlat14.w);
    u_xlat14.x = min(u_xlat14.y, u_xlat14.x);
    u_xlat14.x = min(u_xlat14.z, u_xlat14.x);
    u_xlat43 = (vs_TEXCOORD1 + -(x_2846.urp_ReflProbes_ProbePosition[u_xlati95].xyz));
    u_xlat14 = vec4f((((u_xlat11.xyz * u_xlat14.xxx) + u_xlat43)).xyz, u_xlat14.w);
    if (u_xlatb100) {
      x_2989 = u_xlat14.xyz;
    } else {
      x_2989 = u_xlat11.xyz;
    }
    u_xlat14 = vec4f(x_2989.xyz, u_xlat14.w);
    u_xlatu100 = u32(abs(x_2846.urp_ReflProbes_ProbePosition[u_xlati95].w));
    u_xlatu100 = (u_xlatu100 + 4294967295u);
    u_xlat100 = f32(u_xlatu100);
    u_xlat100 = min(u_xlat29.x, u_xlat100);
    u_xlat101 = dot(abs(u_xlat14.xyz), x_3017);
    u_xlat101 = max(u_xlat101, 0.00000099999999747524f);
    u_xlat101 = (1.0f / u_xlat101);
    u_xlat15 = vec4f(((vec3f(u_xlat101) * u_xlat14.zxy)).xyz, u_xlat15.w);
    u_xlat15.x = -(u_xlat15.x);
    u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
    u_xlatb44 = ((u_xlat15.yzyy >= vec4f())).xy;
    hlslcc_movcTemp = u_xlat15;
    if (u_xlatb44.x) {
      x_3048 = u_xlat15.x;
    } else {
      x_3048 = -(u_xlat15.x);
    }
    hlslcc_movcTemp.x = x_3048;
    if (u_xlatb44.y) {
      x_3061 = u_xlat15.x;
    } else {
      x_3061 = -(u_xlat15.x);
    }
    hlslcc_movcTemp.y = x_3061;
    u_xlat15 = hlslcc_movcTemp;
    u_xlat14 = vec4f((((u_xlat14.xy * vec2f(u_xlat101)) + u_xlat15.xy)).xy, u_xlat14.zw);
    u_xlat14 = vec4f((((u_xlat14.xy * x_905) + x_905)).xy, u_xlat14.zw);
    u_xlat14 = vec4f(clamp(u_xlat14.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat14.zw);
    u_xlat72.x = floor(u_xlat100);
    u_xlat72.y = (u_xlat72.x + 1.0f);
    u_xlat100 = (u_xlat100 + -(u_xlat72.x));
    u_xlatu72 = vec2u(u_xlat72);
    u_xlati72 = ((u_xlati95 * 7i) + bitcast<i32>(u_xlatu72.x));
    u_xlati95 = ((u_xlati95 * 7i) + bitcast<i32>(u_xlatu72.y));
    u_xlat72 = ((u_xlat14.xy * x_2846.urp_ReflProbes_MipScaleOffset[u_xlati72].xy) + x_2846.urp_ReflProbes_MipScaleOffset[u_xlati72].zw);
    u_xlat15 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat72, 0.0f).xyz.xyz, u_xlat15.w);
    u_xlat14 = vec4f((((u_xlat14.xy * x_2846.urp_ReflProbes_MipScaleOffset[u_xlati95].xy) + x_2846.urp_ReflProbes_MipScaleOffset[u_xlati95].zw)).xy, u_xlat14.zw);
    u_xlat14 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat14.xy, 0.0f).xyz.xyz, u_xlat14.w);
    u_xlat14 = vec4f(((-(u_xlat15.xyz) + u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlat14 = vec4f((((vec3f(u_xlat100) * u_xlat14.xyz) + u_xlat15.xyz)).xyz, u_xlat14.w);
    u_xlat13 = vec4f((((vec3f(u_xlat98) * u_xlat14.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat34 = (u_xlat34 + u_xlat98);
  }
  u_xlatb61 = (u_xlat34 < 0.99000000953674316406f);
  if (u_xlatb61) {
    u_xlat9 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat11.xyz, u_xlat29.x);
    u_xlat29.x = (-(u_xlat34) + 1.0f);
    u_xlat61.x = (u_xlat9.w + -1.0f);
    u_xlat61.x = ((x_105.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat61.x) + 1.0f);
    u_xlat61.x = max(u_xlat61.x, 0.0f);
    u_xlat61.x = log2(u_xlat61.x);
    u_xlat61.x = (u_xlat61.x * x_105.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat61.x = exp2(u_xlat61.x);
    u_xlat61.x = (u_xlat61.x * x_105.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat9 = vec4f(((u_xlat9.xyz * u_xlat61.xxx)).xyz, u_xlat9.w);
    u_xlat13 = vec4f((((u_xlat29.xxx * u_xlat9.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
  }
  u_xlat29 = ((vec2f(u_xlat58) * vec2f(u_xlat58)) + vec2f(-1.0f, 1.0f));
  u_xlat58 = (1.0f / u_xlat29.y);
  u_xlat9 = vec4f(((-(u_xlat1.xyz) + vec3f(u_xlat92))).xyz, u_xlat9.w);
  u_xlat9 = vec4f((((vec3f(u_xlat64) * u_xlat9.xyz) + u_xlat1.xyz)).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((vec3f(u_xlat58) * u_xlat9.xyz)).xyz, u_xlat9.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * u_xlat13.xyz)).xyz, u_xlat9.w);
  u_xlat8 = ((u_xlat8 * u_xlat31) + u_xlat9.xyz);
  u_xlati58 = bitcast<i32>((x_105.x_MainLightLayerMask & bitcast<u32>(x_251.unity_Builtins0Array[(u_xlati0 / 9i)].unity_RenderingLayerArray)));
  u_xlat61.x = dot(u_xlat3.xyw, x_105.x_MainLightPosition.xyz);
  u_xlat61.x = clamp(u_xlat61.x, 0.0f, 1.0f);
  u_xlat61.x = (u_xlat61.x * u_xlat6.x);
  u_xlat9 = vec4f(((u_xlat61.xxx * u_xlat10.xyz)).xyz, u_xlat9.w);
  u_xlat10 = vec4f(((u_xlat4 + x_105.x_MainLightPosition.xyz)).xyz, u_xlat10.w);
  u_xlat61.x = dot(u_xlat10.xyz, u_xlat10.xyz);
  u_xlat61.x = max(u_xlat61.x, 1.17549435e-38f);
  u_xlat61.x = inverseSqrt(u_xlat61.x);
  u_xlat10 = vec4f(((u_xlat61.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat61.x = dot(u_xlat3.xyw, u_xlat10.xyz);
  u_xlat61.x = clamp(u_xlat61.x, 0.0f, 1.0f);
  u_xlat34 = dot(x_105.x_MainLightPosition.xyz, u_xlat10.xyz);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat61.x = (u_xlat61.x * u_xlat61.x);
  u_xlat61.x = ((u_xlat61.x * u_xlat29.x) + 1.00001001358032226562f);
  u_xlat34 = (u_xlat34 * u_xlat34);
  u_xlat61.x = (u_xlat61.x * u_xlat61.x);
  u_xlat34 = max(u_xlat34, 0.10000000149011611938f);
  u_xlat61.x = (u_xlat61.x * u_xlat34);
  u_xlat61.x = (u_xlat93 * u_xlat61.x);
  u_xlat61.x = (u_xlat91 / u_xlat61.x);
  u_xlat10 = vec4f((((u_xlat1.xyz * u_xlat61.xxx) + u_xlat31)).xyz, u_xlat10.w);
  u_xlat9 = vec4f(((u_xlat9.xyz * u_xlat10.xyz)).xyz, u_xlat9.w);
  if ((u_xlati58 != 0i)) {
    x_3463 = u_xlat9.xyz;
  } else {
    x_3463 = vec3f();
  }
  u_xlat9 = vec4f(x_3463.xyz, u_xlat9.w);
  u_xlatu58 = min(u_xlatu36.y, 32u);
  u_xlat61.x = ((u_xlat35 * x_414.x_AdditionalShadowFadeParams.x) + x_414.x_AdditionalShadowFadeParams.y);
  u_xlat61.x = clamp(u_xlat61.x, 0.0f, 1.0f);
  let x_3497 = vec4f(x_2122.x_AdditionalLightsCookieAtlasTextureFormat, x_2122.x_AdditionalLightsCookieAtlasTextureFormat, x_2122.x_AdditionalLightsCookieAtlasTextureFormat, x_2122.x_AdditionalLightsCookieAtlasTextureFormat);
  let x_3505 = ((vec4f(x_3497.x, x_3497.y, x_3497.z, x_3497.w) == vec4f(0.0f, 0.0f, 1.0f, 1.0f))).xz;
  u_xlatb34 = vec3<bool>(x_3505.x, u_xlatb34.y, x_3505.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu58)) {
    } else {
      break;
    }
    u_xlat10 = vec4f((((-(vs_TEXCOORD1) * x_3530.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3530.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat10.w);
    u_xlat95 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat95 = max(u_xlat95, 0.00006103515625f);
    u_xlat96 = inverseSqrt(u_xlat95);
    u_xlat11 = vec4f(((vec3f(u_xlat96) * u_xlat10.xyz)).xyz, u_xlat11.w);
    u_xlat97 = (1.0f / u_xlat95);
    u_xlat95 = (u_xlat95 * x_3530.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat95 = ((-(u_xlat95) * u_xlat95) + 1.0f);
    u_xlat95 = max(u_xlat95, 0.0f);
    u_xlat95 = (u_xlat95 * u_xlat95);
    u_xlat95 = (u_xlat95 * u_xlat97);
    u_xlat97 = dot(x_3530.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat11.xyz);
    u_xlat97 = ((u_xlat97 * x_3530.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3530.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat97 = clamp(u_xlat97, 0.0f, 1.0f);
    u_xlat97 = (u_xlat97 * u_xlat97);
    u_xlat95 = (u_xlat95 * u_xlat97);
    u_xlatb97 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati98 = i32(x_414.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati97 = select(u_xlati98, -1i, u_xlatb97);
    u_xlatb98 = (u_xlati97 >= 0i);
    if (u_xlatb98) {
      u_xlatb98 = any(!((vec4f() == vec4f(x_414.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb98) {
        u_xlatb12 = vec4<bool>(((abs(u_xlat11.zzyz) >= abs(u_xlat11.xyxx))).xyz.xyz, u_xlatb12.w);
        u_xlatb98 = (u_xlatb12.y & u_xlatb12.x);
        let x_3660 = ((-(u_xlat11.zyzx) < vec4f())).xyw;
        u_xlatb12 = vec4<bool>(x_3660.xy, u_xlatb12.z, x_3660.z);
        u_xlat12.x = select(4.0f, 5.0f, u_xlatb12.x);
        u_xlat12.y = select(2.0f, 3.0f, u_xlatb12.y);
        u_xlat99 = select(0.0f, 1.0f, u_xlatb12.w);
        if (u_xlatb12.z) {
          x_3679 = u_xlat12.y;
        } else {
          x_3679 = u_xlat99;
        }
        u_xlat41.x = x_3679;
        if (u_xlatb98) {
          x_3689 = u_xlat12.x;
        } else {
          x_3689 = u_xlat41.x;
        }
        u_xlat98 = x_3689;
        u_xlati98 = i32(u_xlat98);
        u_xlati97 = (u_xlati97 + u_xlati98);
      }
      u_xlati97 = (u_xlati97 << bitcast<u32>(2i));
      u_xlat12 = (vs_TEXCOORD1.yyyy * x_414.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati97 + 1i)]);
      u_xlat12 = ((x_414.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati97] * vs_TEXCOORD1.xxxx) + u_xlat12);
      u_xlat12 = ((x_414.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati97 + 2i)] * vs_TEXCOORD1.zzzz) + u_xlat12);
      u_xlat12 = (u_xlat12 + x_414.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati97 + 3i)]);
      u_xlat12 = vec4f(((u_xlat12.xyz / u_xlat12.www)).xyz, u_xlat12.w);
      u_xlatb97 = (0.0f < x_414.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb97) {
        u_xlatb97 = (1.0f == x_414.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb97) {
          u_xlat13 = (u_xlat12.xyxy + x_414.x_AdditionalShadowOffset0);
          let x_3766 = u_xlat13.xy;
          txVec30 = vec3f(x_3766.x, x_3766.y, u_xlat12.z);
          u_xlat14.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_3782 = u_xlat13.zw;
          txVec31 = vec3f(x_3782.x, x_3782.y, u_xlat12.z);
          u_xlat14.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat13 = (u_xlat12.xyxy + x_414.x_AdditionalShadowOffset1);
          let x_3802 = u_xlat13.xy;
          txVec32 = vec3f(x_3802.x, x_3802.y, u_xlat12.z);
          u_xlat14.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_3817 = u_xlat13.zw;
          txVec33 = vec3f(x_3817.x, x_3817.y, u_xlat12.z);
          u_xlat14.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat97 = dot(u_xlat14, x_889);
        } else {
          u_xlatb98 = (2.0f == x_414.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb98) {
            u_xlat13 = vec4f((((u_xlat12.xy * x_414.x_AdditionalShadowmapSize.zw) + x_905)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat71 = ((u_xlat12.xy * x_414.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat71.xxyy + x_927);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_3876 = (u_xlat15.yw * x_938);
            u_xlat14 = vec4f(x_3876.x, u_xlat14.y, x_3876.y, u_xlat14.w);
            u_xlat15 = vec4f((((u_xlat15.xz * x_905) + -(u_xlat71))).xy, u_xlat15.zw);
            u_xlat73 = (-(u_xlat71) + x_616);
            u_xlat16 = vec4f(min(u_xlat71, vec2f()).xy, u_xlat16.zw);
            u_xlat16 = vec4f((((-(u_xlat16.xy) * u_xlat16.xy) + u_xlat73)).xy, u_xlat16.zw);
            u_xlat71 = max(u_xlat71, vec2f());
            u_xlat71 = ((-(u_xlat71) * u_xlat71) + u_xlat14.yw);
            u_xlat16 = vec4f(((u_xlat16.xy + x_616)).xy, u_xlat16.zw);
            u_xlat71 = (u_xlat71 + x_616);
            u_xlat17 = vec4f(((u_xlat15.xy * x_990)).xy, u_xlat17.zw);
            u_xlat15 = vec4f(((u_xlat73 * x_990)).xy, u_xlat15.zw);
            u_xlat16 = vec4f(((u_xlat16.xy * x_990)).xy, u_xlat16.zw);
            u_xlat18 = vec4f(((u_xlat71 * x_990)).xy, u_xlat18.zw);
            u_xlat71 = (u_xlat14.yw * x_990);
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
            u_xlat15 = vec4f(((u_xlat15.xyz + x_1059)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat18.zyw / u_xlat14.xyz)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_1059)).xyz, u_xlat16.w);
            u_xlat15 = vec4f(((u_xlat15.yxz * x_414.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xyz * x_414.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat16.w);
            u_xlat15.w = u_xlat16.x;
            u_xlat17 = ((u_xlat13.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat15.ywxw);
            u_xlat71 = ((u_xlat13.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat15.zw);
            u_xlat16.w = u_xlat15.y;
            let x_4043 = u_xlat16.yz;
            u_xlat15 = vec4f(u_xlat15.x, x_4043.x, u_xlat15.z, x_4043.y);
            u_xlat18 = ((u_xlat13.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyzy);
            u_xlat16 = ((u_xlat13.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat16.wywz);
            u_xlat15 = ((u_xlat13.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xwzw);
            u_xlat20 = (u_xlat14.xxxy * u_xlat19.zwyz);
            u_xlat21 = (u_xlat14.yyzz * u_xlat19);
            u_xlat98 = (u_xlat14.z * u_xlat19.y);
            let x_4089 = u_xlat17.xy;
            txVec34 = vec3f(x_4089.x, x_4089.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_4103 = u_xlat17.zw;
            txVec35 = vec3f(x_4103.x, x_4103.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat13.x = (u_xlat13.x * u_xlat20.y);
            u_xlat99 = ((u_xlat20.x * u_xlat99) + u_xlat13.x);
            txVec36 = vec3f(u_xlat71.x, u_xlat71.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat99 = ((u_xlat20.z * u_xlat13.x) + u_xlat99);
            let x_4152 = u_xlat16.xy;
            txVec37 = vec3f(x_4152.x, x_4152.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat99 = ((u_xlat20.w * u_xlat13.x) + u_xlat99);
            let x_4174 = u_xlat18.xy;
            txVec38 = vec3f(x_4174.x, x_4174.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat99 = ((u_xlat21.x * u_xlat13.x) + u_xlat99);
            let x_4196 = u_xlat18.zw;
            txVec39 = vec3f(x_4196.x, x_4196.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat99 = ((u_xlat21.y * u_xlat13.x) + u_xlat99);
            let x_4218 = u_xlat16.zw;
            txVec40 = vec3f(x_4218.x, x_4218.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat99 = ((u_xlat21.z * u_xlat13.x) + u_xlat99);
            let x_4240 = u_xlat15.xy;
            txVec41 = vec3f(x_4240.x, x_4240.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat99 = ((u_xlat21.w * u_xlat13.x) + u_xlat99);
            let x_4262 = u_xlat15.zw;
            txVec42 = vec3f(x_4262.x, x_4262.y, u_xlat12.z);
            u_xlat13.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat97 = ((u_xlat98 * u_xlat13.x) + u_xlat99);
          } else {
            u_xlat13 = vec4f((((u_xlat12.xy * x_414.x_AdditionalShadowmapSize.zw) + x_905)).xy, u_xlat13.zw);
            u_xlat13 = vec4f(floor(u_xlat13.xy).xy, u_xlat13.zw);
            u_xlat71 = ((u_xlat12.xy * x_414.x_AdditionalShadowmapSize.zw) + -(u_xlat13.xy));
            u_xlat14 = (u_xlat71.xxyy + x_927);
            u_xlat15 = (u_xlat14.xxzz * u_xlat14.xxzz);
            let x_4316 = (u_xlat15.yw * x_1392);
            u_xlat16 = vec4f(u_xlat16.x, x_4316.x, u_xlat16.z, x_4316.y);
            let x_4324 = ((u_xlat15.xz * x_905) + -(u_xlat71));
            u_xlat14 = vec4f(x_4324.x, u_xlat14.y, x_4324.y, u_xlat14.w);
            u_xlat15 = vec4f(((-(u_xlat71) + x_616)).xy, u_xlat15.zw);
            u_xlat73 = min(u_xlat71, vec2f());
            u_xlat15 = vec4f((((-(u_xlat73) * u_xlat73) + u_xlat15.xy)).xy, u_xlat15.zw);
            u_xlat73 = max(u_xlat71, vec2f());
            let x_4351 = ((-(u_xlat73) * u_xlat73) + u_xlat14.yw);
            u_xlat43 = vec3f(x_4351.x, u_xlat43.y, x_4351.y);
            u_xlat15 = vec4f(((u_xlat15.xy + x_160)).xy, u_xlat15.zw);
            let x_4361 = (u_xlat43.xz + x_160);
            u_xlat14 = vec4f(u_xlat14.x, x_4361.x, u_xlat14.z, x_4361.y);
            u_xlat17.z = (u_xlat14.y * 0.08163200318813323975f);
            u_xlat18 = vec4f(((u_xlat14.zxw * x_1449)).xyz, u_xlat18.w);
            u_xlat14 = vec4f(((u_xlat15.xy * x_1455)).xy, u_xlat14.zw);
            u_xlat17.x = u_xlat18.y;
            let x_4384 = ((u_xlat71.xx * x_1465) + x_1468);
            u_xlat17 = vec4f(u_xlat17.x, x_4384.x, u_xlat17.z, x_4384.y);
            let x_4390 = ((u_xlat71.xx * x_1465) + x_1475);
            u_xlat15 = vec4f(x_4390.x, u_xlat15.y, x_4390.y, u_xlat15.w);
            u_xlat15.y = u_xlat14.x;
            u_xlat15.w = u_xlat16.y;
            u_xlat17 = (u_xlat15 + u_xlat17);
            let x_4405 = ((u_xlat71.yy * x_1465) + x_1468);
            u_xlat18 = vec4f(u_xlat18.x, x_4405.x, u_xlat18.z, x_4405.y);
            let x_4411 = ((u_xlat71.yy * x_1465) + x_1475);
            u_xlat16 = vec4f(x_4411.x, u_xlat16.y, x_4411.y, u_xlat16.w);
            u_xlat16.y = u_xlat14.y;
            u_xlat14 = (u_xlat16 + u_xlat18);
            u_xlat15 = (u_xlat15 / u_xlat17);
            u_xlat15 = (u_xlat15 + x_1513);
            u_xlat16 = (u_xlat16 / u_xlat14);
            u_xlat16 = (u_xlat16 + x_1513);
            u_xlat15 = (u_xlat15.wxyz * x_414.x_AdditionalShadowmapSize.xxxx);
            u_xlat16 = (u_xlat16.xwyz * x_414.x_AdditionalShadowmapSize.yyyy);
            let x_4443 = u_xlat15.yzw;
            u_xlat18 = vec4f(x_4443.x, u_xlat18.y, x_4443.yz);
            u_xlat18.y = u_xlat16.x;
            u_xlat19 = ((u_xlat13.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat71 = ((u_xlat13.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.y = u_xlat18.y;
            u_xlat18.y = u_xlat16.z;
            u_xlat20 = ((u_xlat13.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat21 = vec4f((((u_xlat13.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat18.wy)).xy, u_xlat21.zw);
            u_xlat15.z = u_xlat18.y;
            u_xlat22 = ((u_xlat13.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat15.xyxz);
            u_xlat18.y = u_xlat16.w;
            u_xlat23 = ((u_xlat13.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat44 = ((u_xlat13.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat15.w = u_xlat18.y;
            u_xlat79 = ((u_xlat13.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat15.xw);
            let x_4542 = u_xlat18.xzw;
            u_xlat16 = vec4f(x_4542.x, u_xlat16.y, x_4542.yz);
            u_xlat18 = ((u_xlat13.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat74 = ((u_xlat13.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat16.wy);
            u_xlat16.x = u_xlat15.x;
            u_xlat13 = vec4f((((u_xlat13.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat16.xy)).xy, u_xlat13.zw);
            u_xlat24 = (u_xlat14.xxxx * u_xlat17);
            u_xlat25 = (u_xlat14.yyyy * u_xlat17);
            u_xlat26 = (u_xlat14.zzzz * u_xlat17);
            u_xlat14 = (u_xlat14.wwww * u_xlat17);
            let x_4599 = u_xlat19.xy;
            txVec43 = vec3f(x_4599.x, x_4599.y, u_xlat12.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_4613 = u_xlat19.zw;
            txVec44 = vec3f(x_4613.x, x_4613.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat99 = (u_xlat99 * u_xlat24.y);
            u_xlat98 = ((u_xlat24.x * u_xlat98) + u_xlat99);
            txVec45 = vec3f(u_xlat71.x, u_xlat71.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat98 = ((u_xlat24.z * u_xlat99) + u_xlat98);
            let x_4656 = u_xlat22.xy;
            txVec46 = vec3f(x_4656.x, x_4656.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat98 = ((u_xlat24.w * u_xlat99) + u_xlat98);
            let x_4676 = u_xlat20.xy;
            txVec47 = vec3f(x_4676.x, x_4676.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat98 = ((u_xlat25.x * u_xlat99) + u_xlat98);
            let x_4696 = u_xlat20.zw;
            txVec48 = vec3f(x_4696.x, x_4696.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat98 = ((u_xlat25.y * u_xlat99) + u_xlat98);
            let x_4716 = u_xlat21.xy;
            txVec49 = vec3f(x_4716.x, x_4716.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat98 = ((u_xlat25.z * u_xlat99) + u_xlat98);
            let x_4736 = u_xlat22.zw;
            txVec50 = vec3f(x_4736.x, x_4736.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat98 = ((u_xlat25.w * u_xlat99) + u_xlat98);
            let x_4756 = u_xlat23.xy;
            txVec51 = vec3f(x_4756.x, x_4756.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat98 = ((u_xlat26.x * u_xlat99) + u_xlat98);
            let x_4776 = u_xlat23.zw;
            txVec52 = vec3f(x_4776.x, x_4776.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat98 = ((u_xlat26.y * u_xlat99) + u_xlat98);
            txVec53 = vec3f(u_xlat44.x, u_xlat44.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat98 = ((u_xlat26.z * u_xlat99) + u_xlat98);
            txVec54 = vec3f(u_xlat79.x, u_xlat79.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat98 = ((u_xlat26.w * u_xlat99) + u_xlat98);
            let x_4834 = u_xlat18.xy;
            txVec55 = vec3f(x_4834.x, x_4834.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat98 = ((u_xlat14.x * u_xlat99) + u_xlat98);
            let x_4854 = u_xlat18.zw;
            txVec56 = vec3f(x_4854.x, x_4854.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat98 = ((u_xlat14.y * u_xlat99) + u_xlat98);
            txVec57 = vec3f(u_xlat74.x, u_xlat74.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat98 = ((u_xlat14.z * u_xlat99) + u_xlat98);
            let x_4893 = u_xlat13.xy;
            txVec58 = vec3f(x_4893.x, x_4893.y, u_xlat12.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat97 = ((u_xlat14.w * u_xlat99) + u_xlat98);
          }
        }
      } else {
        let x_4914 = u_xlat12.xy;
        txVec59 = vec3f(x_4914.x, x_4914.y, u_xlat12.z);
        u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat98 = (1.0f + -(x_414.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat97 = ((u_xlat97 * x_414.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat98);
      u_xlatb98 = (0.0f >= u_xlat12.z);
      u_xlatb12.x = (u_xlat12.z >= 1.0f);
      u_xlatb98 = (u_xlatb98 | u_xlatb12.x);
      u_xlat97 = select(u_xlat97, 1.0f, u_xlatb98);
    } else {
      u_xlat97 = 1.0f;
    }
    u_xlat98 = (-(u_xlat97) + 1.0f);
    u_xlat97 = ((u_xlat61.x * u_xlat98) + u_xlat97);
    u_xlati98 = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati98) & bitcast<u32>(x_2122.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati98 != 0i)) {
      u_xlati98 = i32(x_2122.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati12.x = select(1i, 0i, (u_xlati98 != 0i));
      u_xlati41 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati12.x != 0i)) {
        let x_5004 = (vs_TEXCOORD1.yyy * x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati41 + 1i)].xyw);
        u_xlat12 = vec4f(x_5004.x, u_xlat12.y, x_5004.yz);
        let x_5016 = ((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati41].xyw * vs_TEXCOORD1.xxx) + u_xlat12.xzw);
        u_xlat12 = vec4f(x_5016.x, u_xlat12.y, x_5016.yz);
        let x_5029 = ((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati41 + 2i)].xyw * vs_TEXCOORD1.zzz) + u_xlat12.xzw);
        u_xlat12 = vec4f(x_5029.x, u_xlat12.y, x_5029.yz);
        let x_5039 = (u_xlat12.xzw + x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati41 + 3i)].xyw);
        u_xlat12 = vec4f(x_5039.x, u_xlat12.y, x_5039.yz);
        let x_5046 = (u_xlat12.xz / u_xlat12.ww);
        u_xlat12 = vec4f(x_5046.x, u_xlat12.y, x_5046.y, u_xlat12.w);
        let x_5052 = ((u_xlat12.xz * x_905) + x_905);
        u_xlat12 = vec4f(x_5052.x, u_xlat12.y, x_5052.y, u_xlat12.w);
        let x_5059 = clamp(u_xlat12.xz, vec2f(0.0f), vec2f(1.0f));
        u_xlat12 = vec4f(x_5059.x, u_xlat12.y, x_5059.y, u_xlat12.w);
        let x_5075 = ((x_2122.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat12.xz) + x_2122.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
        u_xlat12 = vec4f(x_5075.x, u_xlat12.y, x_5075.y, u_xlat12.w);
      } else {
        u_xlatb98 = (u_xlati98 == 1i);
        u_xlati98 = select(0i, 1i, u_xlatb98);
        if ((u_xlati98 != 0i)) {
          u_xlat13 = vec4f(((vs_TEXCOORD1.yy * x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati41 + 1i)].xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati41].xy * vs_TEXCOORD1.xx) + u_xlat13.xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati41 + 2i)].xy * vs_TEXCOORD1.zz) + u_xlat13.xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f(((u_xlat13.xy + x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati41 + 3i)].xy)).xy, u_xlat13.zw);
          u_xlat13 = vec4f((((u_xlat13.xy * x_905) + x_905)).xy, u_xlat13.zw);
          u_xlat13 = vec4f(fract(u_xlat13.xy).xy, u_xlat13.zw);
          let x_5156 = ((x_2122.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat13.xy) + x_2122.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
          u_xlat12 = vec4f(x_5156.x, u_xlat12.y, x_5156.y, u_xlat12.w);
        } else {
          u_xlat13 = (vs_TEXCOORD1.yyyy * x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati41 + 1i)]);
          u_xlat13 = ((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati41] * vs_TEXCOORD1.xxxx) + u_xlat13);
          u_xlat13 = ((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati41 + 2i)] * vs_TEXCOORD1.zzzz) + u_xlat13);
          u_xlat13 = (u_xlat13 + x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati41 + 3i)]);
          u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
          u_xlat98 = dot(u_xlat13.xyz, u_xlat13.xyz);
          u_xlat98 = inverseSqrt(u_xlat98);
          u_xlat13 = vec4f(((vec3f(u_xlat98) * u_xlat13.xyz)).xyz, u_xlat13.w);
          u_xlat98 = dot(abs(u_xlat13.xyz), x_3017);
          u_xlat98 = max(u_xlat98, 0.00000099999999747524f);
          u_xlat98 = (1.0f / u_xlat98);
          u_xlat14 = vec4f(((vec3f(u_xlat98) * u_xlat13.zxy)).xyz, u_xlat14.w);
          u_xlat14.x = -(u_xlat14.x);
          u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
          let x_5238 = ((u_xlat14.yyzz >= vec4f())).xz;
          u_xlatb41 = vec3<bool>(x_5238.x, u_xlatb41.y, x_5238.y);
          if (u_xlatb41.x) {
            x_5243 = u_xlat14.x;
          } else {
            x_5243 = -(u_xlat14.x);
          }
          u_xlat41.x = x_5243;
          if (u_xlatb41.z) {
            x_5256 = u_xlat14.x;
          } else {
            x_5256 = -(u_xlat14.x);
          }
          u_xlat41.z = x_5256;
          let x_5274 = ((u_xlat13.xy * vec2f(u_xlat98)) + u_xlat41.xz);
          u_xlat41 = vec3f(x_5274.x, u_xlat41.y, x_5274.y);
          let x_5280 = ((u_xlat41.xz * x_905) + x_905);
          u_xlat41 = vec3f(x_5280.x, u_xlat41.y, x_5280.y);
          let x_5287 = clamp(u_xlat41.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat41 = vec3f(x_5287.x, u_xlat41.y, x_5287.y);
          let x_5303 = ((x_2122.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat41.xz) + x_2122.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw);
          u_xlat12 = vec4f(x_5303.x, u_xlat12.y, x_5303.y, u_xlat12.w);
        }
      }
      u_xlat12 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat12.xz, 0.0f);
      if (u_xlatb34.z) {
        x_5315 = u_xlat12.w;
      } else {
        x_5315 = u_xlat12.x;
      }
      u_xlat98 = x_5315;
      if (u_xlatb34.x) {
        x_5326 = u_xlat12.xyz;
      } else {
        x_5326 = vec3f(u_xlat98);
      }
      u_xlat12 = vec4f(x_5326.xyz, u_xlat12.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    u_xlat12 = vec4f(((u_xlat12.xyz * x_3530.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat12.w);
    u_xlat12 = vec4f(((vec3f(u_xlat94) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlati98 = bitcast<i32>((bitcast<u32>(x_3530.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el) & bitcast<u32>(x_251.unity_Builtins0Array[(u_xlati0 / 9i)].unity_RenderingLayerArray)));
    u_xlat95 = (u_xlat95 * u_xlat97);
    u_xlat97 = dot(u_xlat3.xyw, u_xlat11.xyz);
    u_xlat97 = clamp(u_xlat97, 0.0f, 1.0f);
    u_xlat95 = (u_xlat95 * u_xlat97);
    u_xlat12 = vec4f(((vec3f(u_xlat95) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * vec3f(u_xlat96)) + u_xlat4)).xyz, u_xlat10.w);
    u_xlat95 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat95 = max(u_xlat95, 1.17549435e-38f);
    u_xlat95 = inverseSqrt(u_xlat95);
    u_xlat10 = vec4f(((vec3f(u_xlat95) * u_xlat10.xyz)).xyz, u_xlat10.w);
    u_xlat95 = dot(u_xlat3.xyw, u_xlat10.xyz);
    u_xlat95 = clamp(u_xlat95, 0.0f, 1.0f);
    u_xlat96 = dot(u_xlat11.xyz, u_xlat10.xyz);
    u_xlat96 = clamp(u_xlat96, 0.0f, 1.0f);
    u_xlat95 = (u_xlat95 * u_xlat95);
    u_xlat95 = ((u_xlat95 * u_xlat29.x) + 1.00001001358032226562f);
    u_xlat96 = (u_xlat96 * u_xlat96);
    u_xlat95 = (u_xlat95 * u_xlat95);
    u_xlat96 = max(u_xlat96, 0.10000000149011611938f);
    u_xlat95 = (u_xlat95 * u_xlat96);
    u_xlat95 = (u_xlat93 * u_xlat95);
    u_xlat95 = (u_xlat91 / u_xlat95);
    u_xlat10 = vec4f((((u_xlat1.xyz * vec3f(u_xlat95)) + u_xlat31)).xyz, u_xlat10.w);
    u_xlat10 = vec4f((((u_xlat10.xyz * u_xlat12.xyz) + u_xlat6.xyz)).xyz, u_xlat10.w);
    if ((u_xlati98 != 0i)) {
      x_5475 = u_xlat10.xyz;
    } else {
      x_5475 = u_xlat6.xyz;
    }
    u_xlat6 = vec4f(x_5475.xyz, u_xlat6.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu58 = (u_xlatu5 >> 2u);
  param_21 = bitcast<i32>(u_xlatu5);
  param_22 = 0i;
  param_23 = 1i;
  let x_5496 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu5);
  param_25 = 1i;
  param_26 = 1i;
  let x_5502 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati10 = vec3i(vec2i(x_5496, x_5502).xy, u_xlati10.z);
  u_xlati68 = bitcast<vec2i>((bitcast<vec2u>(u_xlati10.xx) & bitcast<vec2u>(x_2428.urp_ZBins[bitcast<i32>(u_xlatu58)].wy)));
  u_xlati11 = vec3i((~(u_xlati10.xy)).xy, u_xlati11.z);
  let x_5534 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_2428.urp_ZBins[bitcast<i32>(u_xlatu58)].zx)));
  u_xlati11 = vec3i(x_5534.x, u_xlati11.y, x_5534.y);
  let x_5543 = bitcast<vec2i>((bitcast<vec2u>(u_xlati68) | bitcast<vec2u>(u_xlati11.xz)));
  u_xlati10 = vec3i(x_5543.x, u_xlati10.y, x_5543.y);
  u_xlati58 = bitcast<i32>((bitcast<u32>(u_xlati10.y) & bitcast<u32>(u_xlati10.x)));
  u_xlati5 = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati10.z)));
  u_xlatu58 = (bitcast<u32>(u_xlati58) | bitcast<u32>(u_xlati5));
  u_xlatu10.x = u_xlatu7.x;
  u_xlatu10.y = u_xlatu34.y;
  u_xlati68.x = 0i;
  u_xlatu97 = u_xlatu58;
  u_xlat11 = vec4f(u_xlat6.xyz.xyz, u_xlat11.w);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu5 = (u_xlatu97 >> 16u);
    u_xlati36.x = u_xlati68.x;
    u_xlatu95 = u_xlatu97;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb96 = (u_xlati36.x == 0i);
      u_xlatu98 = (u_xlatu95 & 65535u);
      u_xlatb98 = (u_xlatu5 >= u_xlatu98);
      u_xlatb96 = (u_xlatb96 & u_xlatb98);
      if (!(u_xlatb96)) {
        break;
      }
      param_27 = u_xlatu95;
      param_28 = 5i;
      param_29 = 11i;
      let x_5619 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu96 = x_5619;
      u_xlatu12 = (vec4u(u_xlatu96) + u_xlatu10.xxyy);
      u_xlatu13 = (u_xlatu12.yw >> x_2563);
      param_30 = bitcast<i32>(u_xlatu12.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_5635 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu12.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_5642 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu12.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_5649 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu12.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_5656 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati12 = vec4i(x_5635, x_5642, x_5649, x_5656);
      u_xlati71 = bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xx) & bitcast<vec2u>(x_2602.urp_Tiles[bitcast<i32>(u_xlatu13.x)].wy)));
      u_xlati14 = ~(u_xlati12);
      u_xlati15 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_2602.urp_Tiles[bitcast<i32>(u_xlatu13.x)].zx))).xy, u_xlati15.z);
      let x_5694 = bitcast<vec2i>((bitcast<vec2u>(u_xlati71) | bitcast<vec2u>(u_xlati15.xy)));
      u_xlati13 = vec3i(x_5694.x, u_xlati13.y, x_5694.y);
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati12.y) & bitcast<u32>(u_xlati13.x)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati13.z)));
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati98) | bitcast<u32>(u_xlati12.x)));
      u_xlati12 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.zz) & bitcast<vec2u>(x_2428.urp_ZBins[bitcast<i32>(u_xlatu13.y)].wy))).xy, u_xlati12.zw);
      u_xlati13 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_2428.urp_ZBins[bitcast<i32>(u_xlatu13.y)].zx))).xy, u_xlati13.z);
      u_xlati12 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati12.xy) | bitcast<vec2u>(u_xlati13.xy))).xy, u_xlati12.zw);
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati12.w) & bitcast<u32>(u_xlati12.x)));
      u_xlati41 = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati12.y)));
      u_xlati12.x = bitcast<i32>((bitcast<u32>(u_xlati41) | bitcast<u32>(u_xlati12.x)));
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati98) & bitcast<u32>(u_xlati12.x)));
      u_xlati12.x = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu95) & 31i)));
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati98) & bitcast<u32>(u_xlati12.x)));
      u_xlati96 = (bitcast<i32>(u_xlatu96) << bitcast<u32>(5i));
      u_xlatu96 = (u_xlatu5 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati96)))));
      u_xlatu96 = min(u_xlatu96, 31u);
      u_xlatu96 = (bitcast<u32>(-(bitcast<i32>(u_xlatu96))) + 31u);
      u_xlatu96 = (4294967295u >> (u_xlatu96 & 31u));
      u_xlati36.x = bitcast<i32>((u_xlatu96 & bitcast<u32>(u_xlati98)));
      u_xlati96 = (bitcast<i32>(u_xlatu95) + 32i);
      u_xlatu95 = (bitcast<u32>(u_xlati96) & 4294967264u);
    }
    u_xlatu97 = u_xlatu95;
    if ((u_xlati36.x == 0i)) {
      break;
    }
    u_xlati5 = (0i - u_xlati36.x);
    u_xlatu5 = (bitcast<u32>(u_xlati5) & bitcast<u32>(u_xlati36.x));
    u_xlat5.x = f32(u_xlatu5);
    u_xlatu5 = (bitcast<u32>(u_xlat5.x) >> 23u);
    u_xlati5 = (bitcast<i32>(u_xlatu5) + -127i);
    u_xlati96 = (1i << bitcast<u32>((u_xlati5 & 31i)));
    u_xlati68.x = bitcast<i32>((bitcast<u32>(u_xlati36.x) ^ bitcast<u32>(u_xlati96)));
    u_xlati96 = (bitcast<i32>(u_xlatu97) + -32i);
    u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & 65504u));
    u_xlati5 = (u_xlati5 + u_xlati96);
    u_xlati5 = (bitcast<i32>(u_xlatu36.y) + u_xlati5);
    u_xlat12 = vec4f((((-(vs_TEXCOORD1) * x_3530.x_AdditionalLightsPosition[u_xlati5].www) + x_3530.x_AdditionalLightsPosition[u_xlati5].xyz)).xyz, u_xlat12.w);
    u_xlat96 = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat96 = max(u_xlat96, 0.00006103515625f);
    u_xlat98 = inverseSqrt(u_xlat96);
    u_xlat13 = vec4f(((vec3f(u_xlat98) * u_xlat12.xyz)).xyz, u_xlat13.w);
    u_xlat99 = (1.0f / u_xlat96);
    u_xlat96 = (u_xlat96 * x_3530.x_AdditionalLightsAttenuation[u_xlati5].x);
    u_xlat96 = ((-(u_xlat96) * u_xlat96) + 1.0f);
    u_xlat96 = max(u_xlat96, 0.0f);
    u_xlat96 = (u_xlat96 * u_xlat96);
    u_xlat96 = (u_xlat96 * u_xlat99);
    u_xlat99 = dot(x_3530.x_AdditionalLightsSpotDir[u_xlati5].xyz, u_xlat13.xyz);
    u_xlat99 = ((u_xlat99 * x_3530.x_AdditionalLightsAttenuation[u_xlati5].z) + x_3530.x_AdditionalLightsAttenuation[u_xlati5].w);
    u_xlat99 = clamp(u_xlat99, 0.0f, 1.0f);
    u_xlat99 = (u_xlat99 * u_xlat99);
    u_xlat96 = (u_xlat96 * u_xlat99);
    u_xlatb99 = (u_xlati5 < 0i);
    u_xlati100 = i32(x_414.x_AdditionalShadowParams[u_xlati5].w);
    u_xlati99 = select(u_xlati100, -1i, u_xlatb99);
    u_xlatb100 = (u_xlati99 >= 0i);
    if (u_xlatb100) {
      u_xlatb100 = any(!((vec4f() == vec4f(x_414.x_AdditionalShadowParams[u_xlati5].z))));
      if (u_xlatb100) {
        u_xlatb14 = vec4<bool>(((abs(u_xlat13.zzyz) >= abs(u_xlat13.xyxx))).xyz.xyz, u_xlatb14.w);
        u_xlatb100 = (u_xlatb14.y & u_xlatb14.x);
        let x_6002 = ((-(u_xlat13.zyzx) < vec4f())).xyw;
        u_xlatb14 = vec4<bool>(x_6002.xy, u_xlatb14.z, x_6002.z);
        u_xlat14.x = select(4.0f, 5.0f, u_xlatb14.x);
        u_xlat14.y = select(2.0f, 3.0f, u_xlatb14.y);
        u_xlat101 = select(0.0f, 1.0f, u_xlatb14.w);
        if (u_xlatb14.z) {
          x_6018 = u_xlat14.y;
        } else {
          x_6018 = u_xlat101;
        }
        u_xlat43.x = x_6018;
        if (u_xlatb100) {
          x_6028 = u_xlat14.x;
        } else {
          x_6028 = u_xlat43.x;
        }
        u_xlat100 = x_6028;
        u_xlati100 = i32(u_xlat100);
        u_xlati99 = (u_xlati99 + u_xlati100);
      }
      u_xlati99 = (u_xlati99 << bitcast<u32>(2i));
      u_xlat14 = (vs_TEXCOORD1.yyyy * x_414.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati99 + 1i)]);
      u_xlat14 = ((x_414.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati99] * vs_TEXCOORD1.xxxx) + u_xlat14);
      u_xlat14 = ((x_414.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati99 + 2i)] * vs_TEXCOORD1.zzzz) + u_xlat14);
      u_xlat14 = (u_xlat14 + x_414.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati99 + 3i)]);
      u_xlat14 = vec4f(((u_xlat14.xyz / u_xlat14.www)).xyz, u_xlat14.w);
      u_xlatb99 = (0.0f < x_414.x_AdditionalShadowParams[u_xlati5].y);
      if (u_xlatb99) {
        u_xlatb99 = (1.0f == x_414.x_AdditionalShadowParams[u_xlati5].y);
        if (u_xlatb99) {
          u_xlat15 = (u_xlat14.xyxy + x_414.x_AdditionalShadowOffset0);
          let x_6102 = u_xlat15.xy;
          txVec60 = vec3f(x_6102.x, x_6102.y, u_xlat14.z);
          u_xlat16.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_6117 = u_xlat15.zw;
          txVec61 = vec3f(x_6117.x, x_6117.y, u_xlat14.z);
          u_xlat16.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat15 = (u_xlat14.xyxy + x_414.x_AdditionalShadowOffset1);
          let x_6137 = u_xlat15.xy;
          txVec62 = vec3f(x_6137.x, x_6137.y, u_xlat14.z);
          u_xlat16.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_6152 = u_xlat15.zw;
          txVec63 = vec3f(x_6152.x, x_6152.y, u_xlat14.z);
          u_xlat16.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat99 = dot(u_xlat16, x_889);
        } else {
          u_xlatb100 = (2.0f == x_414.x_AdditionalShadowParams[u_xlati5].y);
          if (u_xlatb100) {
            u_xlat15 = vec4f((((u_xlat14.xy * x_414.x_AdditionalShadowmapSize.zw) + x_905)).xy, u_xlat15.zw);
            u_xlat15 = vec4f(floor(u_xlat15.xy).xy, u_xlat15.zw);
            u_xlat73 = ((u_xlat14.xy * x_414.x_AdditionalShadowmapSize.zw) + -(u_xlat15.xy));
            u_xlat16 = (u_xlat73.xxyy + x_927);
            u_xlat17 = (u_xlat16.xxzz * u_xlat16.xxzz);
            let x_6209 = (u_xlat17.yw * x_938);
            u_xlat16 = vec4f(x_6209.x, u_xlat16.y, x_6209.y, u_xlat16.w);
            u_xlat17 = vec4f((((u_xlat17.xz * x_905) + -(u_xlat73))).xy, u_xlat17.zw);
            u_xlat75 = (-(u_xlat73) + x_616);
            u_xlat18 = vec4f(min(u_xlat73, vec2f()).xy, u_xlat18.zw);
            u_xlat18 = vec4f((((-(u_xlat18.xy) * u_xlat18.xy) + u_xlat75)).xy, u_xlat18.zw);
            u_xlat73 = max(u_xlat73, vec2f());
            u_xlat73 = ((-(u_xlat73) * u_xlat73) + u_xlat16.yw);
            u_xlat18 = vec4f(((u_xlat18.xy + x_616)).xy, u_xlat18.zw);
            u_xlat73 = (u_xlat73 + x_616);
            u_xlat19 = vec4f(((u_xlat17.xy * x_990)).xy, u_xlat19.zw);
            u_xlat17 = vec4f(((u_xlat75 * x_990)).xy, u_xlat17.zw);
            u_xlat18 = vec4f(((u_xlat18.xy * x_990)).xy, u_xlat18.zw);
            u_xlat20 = vec4f(((u_xlat73 * x_990)).xy, u_xlat20.zw);
            u_xlat73 = (u_xlat16.yw * x_990);
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
            u_xlat17 = vec4f(((u_xlat17.xyz + x_1059)).xyz, u_xlat17.w);
            u_xlat18 = vec4f(((u_xlat20.zyw / u_xlat16.xyz)).xyz, u_xlat18.w);
            u_xlat18 = vec4f(((u_xlat18.xyz + x_1059)).xyz, u_xlat18.w);
            u_xlat17 = vec4f(((u_xlat17.yxz * x_414.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat17.w);
            u_xlat18 = vec4f(((u_xlat18.xyz * x_414.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat18.w);
            u_xlat17.w = u_xlat18.x;
            u_xlat19 = ((u_xlat15.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat17.ywxw);
            u_xlat73 = ((u_xlat15.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat17.zw);
            u_xlat18.w = u_xlat17.y;
            let x_6375 = u_xlat18.yz;
            u_xlat17 = vec4f(u_xlat17.x, x_6375.x, u_xlat17.z, x_6375.y);
            u_xlat20 = ((u_xlat15.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyzy);
            u_xlat18 = ((u_xlat15.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat18.wywz);
            u_xlat17 = ((u_xlat15.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xwzw);
            u_xlat22 = (u_xlat16.xxxy * u_xlat21.zwyz);
            u_xlat23 = (u_xlat16.yyzz * u_xlat21);
            u_xlat100 = (u_xlat16.z * u_xlat21.y);
            let x_6421 = u_xlat19.xy;
            txVec64 = vec3f(x_6421.x, x_6421.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_6435 = u_xlat19.zw;
            txVec65 = vec3f(x_6435.x, x_6435.y, u_xlat14.z);
            u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat15.x = (u_xlat15.x * u_xlat22.y);
            u_xlat101 = ((u_xlat22.x * u_xlat101) + u_xlat15.x);
            txVec66 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat14.z);
            u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat101 = ((u_xlat22.z * u_xlat15.x) + u_xlat101);
            let x_6484 = u_xlat18.xy;
            txVec67 = vec3f(x_6484.x, x_6484.y, u_xlat14.z);
            u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat101 = ((u_xlat22.w * u_xlat15.x) + u_xlat101);
            let x_6506 = u_xlat20.xy;
            txVec68 = vec3f(x_6506.x, x_6506.y, u_xlat14.z);
            u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat101 = ((u_xlat23.x * u_xlat15.x) + u_xlat101);
            let x_6528 = u_xlat20.zw;
            txVec69 = vec3f(x_6528.x, x_6528.y, u_xlat14.z);
            u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat101 = ((u_xlat23.y * u_xlat15.x) + u_xlat101);
            let x_6550 = u_xlat18.zw;
            txVec70 = vec3f(x_6550.x, x_6550.y, u_xlat14.z);
            u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat101 = ((u_xlat23.z * u_xlat15.x) + u_xlat101);
            let x_6572 = u_xlat17.xy;
            txVec71 = vec3f(x_6572.x, x_6572.y, u_xlat14.z);
            u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat101 = ((u_xlat23.w * u_xlat15.x) + u_xlat101);
            let x_6594 = u_xlat17.zw;
            txVec72 = vec3f(x_6594.x, x_6594.y, u_xlat14.z);
            u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat99 = ((u_xlat100 * u_xlat15.x) + u_xlat101);
          } else {
            u_xlat15 = vec4f((((u_xlat14.xy * x_414.x_AdditionalShadowmapSize.zw) + x_905)).xy, u_xlat15.zw);
            u_xlat15 = vec4f(floor(u_xlat15.xy).xy, u_xlat15.zw);
            u_xlat73 = ((u_xlat14.xy * x_414.x_AdditionalShadowmapSize.zw) + -(u_xlat15.xy));
            u_xlat16 = (u_xlat73.xxyy + x_927);
            u_xlat17 = (u_xlat16.xxzz * u_xlat16.xxzz);
            let x_6648 = (u_xlat17.yw * x_1392);
            u_xlat18 = vec4f(u_xlat18.x, x_6648.x, u_xlat18.z, x_6648.y);
            let x_6656 = ((u_xlat17.xz * x_905) + -(u_xlat73));
            u_xlat16 = vec4f(x_6656.x, u_xlat16.y, x_6656.y, u_xlat16.w);
            u_xlat17 = vec4f(((-(u_xlat73) + x_616)).xy, u_xlat17.zw);
            u_xlat75 = min(u_xlat73, vec2f());
            u_xlat17 = vec4f((((-(u_xlat75) * u_xlat75) + u_xlat17.xy)).xy, u_xlat17.zw);
            u_xlat75 = max(u_xlat73, vec2f());
            let x_6684 = ((-(u_xlat75) * u_xlat75) + u_xlat16.yw);
            u_xlat45 = vec3f(x_6684.x, u_xlat45.y, x_6684.y);
            u_xlat17 = vec4f(((u_xlat17.xy + x_160)).xy, u_xlat17.zw);
            let x_6694 = (u_xlat45.xz + x_160);
            u_xlat16 = vec4f(u_xlat16.x, x_6694.x, u_xlat16.z, x_6694.y);
            u_xlat19.z = (u_xlat16.y * 0.08163200318813323975f);
            u_xlat20 = vec4f(((u_xlat16.zxw * x_1449)).xyz, u_xlat20.w);
            u_xlat16 = vec4f(((u_xlat17.xy * x_1455)).xy, u_xlat16.zw);
            u_xlat19.x = u_xlat20.y;
            let x_6717 = ((u_xlat73.xx * x_1465) + x_1468);
            u_xlat19 = vec4f(u_xlat19.x, x_6717.x, u_xlat19.z, x_6717.y);
            let x_6723 = ((u_xlat73.xx * x_1465) + x_1475);
            u_xlat17 = vec4f(x_6723.x, u_xlat17.y, x_6723.y, u_xlat17.w);
            u_xlat17.y = u_xlat16.x;
            u_xlat17.w = u_xlat18.y;
            u_xlat19 = (u_xlat17 + u_xlat19);
            let x_6738 = ((u_xlat73.yy * x_1465) + x_1468);
            u_xlat20 = vec4f(u_xlat20.x, x_6738.x, u_xlat20.z, x_6738.y);
            let x_6744 = ((u_xlat73.yy * x_1465) + x_1475);
            u_xlat18 = vec4f(x_6744.x, u_xlat18.y, x_6744.y, u_xlat18.w);
            u_xlat18.y = u_xlat16.y;
            u_xlat16 = (u_xlat18 + u_xlat20);
            u_xlat17 = (u_xlat17 / u_xlat19);
            u_xlat17 = (u_xlat17 + x_1513);
            u_xlat18 = (u_xlat18 / u_xlat16);
            u_xlat18 = (u_xlat18 + x_1513);
            u_xlat17 = (u_xlat17.wxyz * x_414.x_AdditionalShadowmapSize.xxxx);
            u_xlat18 = (u_xlat18.xwyz * x_414.x_AdditionalShadowmapSize.yyyy);
            let x_6776 = u_xlat17.yzw;
            u_xlat20 = vec4f(x_6776.x, u_xlat20.y, x_6776.yz);
            u_xlat20.y = u_xlat18.x;
            u_xlat21 = ((u_xlat15.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat20.xyzy);
            u_xlat73 = ((u_xlat15.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat20.wy);
            u_xlat17.y = u_xlat20.y;
            u_xlat20.y = u_xlat18.z;
            u_xlat22 = ((u_xlat15.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat20.xyzy);
            u_xlat23 = vec4f((((u_xlat15.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat20.wy)).xy, u_xlat23.zw);
            u_xlat17.z = u_xlat20.y;
            u_xlat24 = ((u_xlat15.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyxz);
            u_xlat20.y = u_xlat18.w;
            u_xlat25 = ((u_xlat15.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat20.xyzy);
            u_xlat46 = ((u_xlat15.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat20.wy);
            u_xlat17.w = u_xlat20.y;
            u_xlat81 = ((u_xlat15.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat17.xw);
            let x_6874 = u_xlat20.xzw;
            u_xlat18 = vec4f(x_6874.x, u_xlat18.y, x_6874.yz);
            u_xlat20 = ((u_xlat15.xyxy * x_414.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat76 = ((u_xlat15.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat18.wy);
            u_xlat18.x = u_xlat17.x;
            u_xlat15 = vec4f((((u_xlat15.xy * x_414.x_AdditionalShadowmapSize.xy) + u_xlat18.xy)).xy, u_xlat15.zw);
            u_xlat26 = (u_xlat16.xxxx * u_xlat19);
            u_xlat27 = (u_xlat16.yyyy * u_xlat19);
            u_xlat28 = (u_xlat16.zzzz * u_xlat19);
            u_xlat16 = (u_xlat16.wwww * u_xlat19);
            let x_6930 = u_xlat21.xy;
            txVec73 = vec3f(x_6930.x, x_6930.y, u_xlat14.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_6944 = u_xlat21.zw;
            txVec74 = vec3f(x_6944.x, x_6944.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat101 = (u_xlat101 * u_xlat26.y);
            u_xlat100 = ((u_xlat26.x * u_xlat100) + u_xlat101);
            txVec75 = vec3f(u_xlat73.x, u_xlat73.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat100 = ((u_xlat26.z * u_xlat101) + u_xlat100);
            let x_6987 = u_xlat24.xy;
            txVec76 = vec3f(x_6987.x, x_6987.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat100 = ((u_xlat26.w * u_xlat101) + u_xlat100);
            let x_7007 = u_xlat22.xy;
            txVec77 = vec3f(x_7007.x, x_7007.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat100 = ((u_xlat27.x * u_xlat101) + u_xlat100);
            let x_7027 = u_xlat22.zw;
            txVec78 = vec3f(x_7027.x, x_7027.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat100 = ((u_xlat27.y * u_xlat101) + u_xlat100);
            let x_7047 = u_xlat23.xy;
            txVec79 = vec3f(x_7047.x, x_7047.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat100 = ((u_xlat27.z * u_xlat101) + u_xlat100);
            let x_7067 = u_xlat24.zw;
            txVec80 = vec3f(x_7067.x, x_7067.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat100 = ((u_xlat27.w * u_xlat101) + u_xlat100);
            let x_7087 = u_xlat25.xy;
            txVec81 = vec3f(x_7087.x, x_7087.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat100 = ((u_xlat28.x * u_xlat101) + u_xlat100);
            let x_7107 = u_xlat25.zw;
            txVec82 = vec3f(x_7107.x, x_7107.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat100 = ((u_xlat28.y * u_xlat101) + u_xlat100);
            txVec83 = vec3f(u_xlat46.x, u_xlat46.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat100 = ((u_xlat28.z * u_xlat101) + u_xlat100);
            txVec84 = vec3f(u_xlat81.x, u_xlat81.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat100 = ((u_xlat28.w * u_xlat101) + u_xlat100);
            let x_7165 = u_xlat20.xy;
            txVec85 = vec3f(x_7165.x, x_7165.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat100 = ((u_xlat16.x * u_xlat101) + u_xlat100);
            let x_7185 = u_xlat20.zw;
            txVec86 = vec3f(x_7185.x, x_7185.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat100 = ((u_xlat16.y * u_xlat101) + u_xlat100);
            txVec87 = vec3f(u_xlat76.x, u_xlat76.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat100 = ((u_xlat16.z * u_xlat101) + u_xlat100);
            let x_7224 = u_xlat15.xy;
            txVec88 = vec3f(x_7224.x, x_7224.y, u_xlat14.z);
            u_xlat101 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat99 = ((u_xlat16.w * u_xlat101) + u_xlat100);
          }
        }
      } else {
        let x_7245 = u_xlat14.xy;
        txVec89 = vec3f(x_7245.x, x_7245.y, u_xlat14.z);
        u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat100 = (1.0f + -(x_414.x_AdditionalShadowParams[u_xlati5].x));
      u_xlat99 = ((u_xlat99 * x_414.x_AdditionalShadowParams[u_xlati5].x) + u_xlat100);
      u_xlatb100 = (0.0f >= u_xlat14.z);
      u_xlatb14.x = (u_xlat14.z >= 1.0f);
      u_xlatb100 = (u_xlatb100 | u_xlatb14.x);
      u_xlat99 = select(u_xlat99, 1.0f, u_xlatb100);
    } else {
      u_xlat99 = 1.0f;
    }
    u_xlat100 = (-(u_xlat99) + 1.0f);
    u_xlat99 = ((u_xlat61.x * u_xlat100) + u_xlat99);
    u_xlati100 = (1i << bitcast<u32>((u_xlati5 & 31i)));
    u_xlati100 = bitcast<i32>((bitcast<u32>(u_xlati100) & bitcast<u32>(x_2122.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati100 != 0i)) {
      u_xlati100 = i32(x_2122.x_AdditionalLightsLightTypes[u_xlati5].el);
      u_xlati14.x = select(1i, 0i, (u_xlati100 != 0i));
      u_xlati43 = (u_xlati5 << bitcast<u32>(2i));
      if ((u_xlati14.x != 0i)) {
        let x_7329 = (vs_TEXCOORD1.yyy * x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati43 + 1i)].xyw);
        u_xlat14 = vec4f(x_7329.x, u_xlat14.y, x_7329.yz);
        let x_7341 = ((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati43].xyw * vs_TEXCOORD1.xxx) + u_xlat14.xzw);
        u_xlat14 = vec4f(x_7341.x, u_xlat14.y, x_7341.yz);
        let x_7354 = ((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati43 + 2i)].xyw * vs_TEXCOORD1.zzz) + u_xlat14.xzw);
        u_xlat14 = vec4f(x_7354.x, u_xlat14.y, x_7354.yz);
        let x_7364 = (u_xlat14.xzw + x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati43 + 3i)].xyw);
        u_xlat14 = vec4f(x_7364.x, u_xlat14.y, x_7364.yz);
        let x_7371 = (u_xlat14.xz / u_xlat14.ww);
        u_xlat14 = vec4f(x_7371.x, u_xlat14.y, x_7371.y, u_xlat14.w);
        let x_7377 = ((u_xlat14.xz * x_905) + x_905);
        u_xlat14 = vec4f(x_7377.x, u_xlat14.y, x_7377.y, u_xlat14.w);
        let x_7384 = clamp(u_xlat14.xz, vec2f(0.0f), vec2f(1.0f));
        u_xlat14 = vec4f(x_7384.x, u_xlat14.y, x_7384.y, u_xlat14.w);
        let x_7398 = ((x_2122.x_AdditionalLightsCookieAtlasUVRects[u_xlati5].xy * u_xlat14.xz) + x_2122.x_AdditionalLightsCookieAtlasUVRects[u_xlati5].zw);
        u_xlat14 = vec4f(x_7398.x, u_xlat14.y, x_7398.y, u_xlat14.w);
      } else {
        u_xlatb100 = (u_xlati100 == 1i);
        u_xlati100 = select(0i, 1i, u_xlatb100);
        if ((u_xlati100 != 0i)) {
          u_xlat15 = vec4f(((vs_TEXCOORD1.yy * x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati43 + 1i)].xy)).xy, u_xlat15.zw);
          u_xlat15 = vec4f((((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati43].xy * vs_TEXCOORD1.xx) + u_xlat15.xy)).xy, u_xlat15.zw);
          u_xlat15 = vec4f((((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati43 + 2i)].xy * vs_TEXCOORD1.zz) + u_xlat15.xy)).xy, u_xlat15.zw);
          u_xlat15 = vec4f(((u_xlat15.xy + x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati43 + 3i)].xy)).xy, u_xlat15.zw);
          u_xlat15 = vec4f((((u_xlat15.xy * x_905) + x_905)).xy, u_xlat15.zw);
          u_xlat15 = vec4f(fract(u_xlat15.xy).xy, u_xlat15.zw);
          let x_7477 = ((x_2122.x_AdditionalLightsCookieAtlasUVRects[u_xlati5].xy * u_xlat15.xy) + x_2122.x_AdditionalLightsCookieAtlasUVRects[u_xlati5].zw);
          u_xlat14 = vec4f(x_7477.x, u_xlat14.y, x_7477.y, u_xlat14.w);
        } else {
          u_xlat15 = (vs_TEXCOORD1.yyyy * x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati43 + 1i)]);
          u_xlat15 = ((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati43] * vs_TEXCOORD1.xxxx) + u_xlat15);
          u_xlat15 = ((x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati43 + 2i)] * vs_TEXCOORD1.zzzz) + u_xlat15);
          u_xlat15 = (u_xlat15 + x_2122.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati43 + 3i)]);
          u_xlat15 = vec4f(((u_xlat15.xyz / u_xlat15.www)).xyz, u_xlat15.w);
          u_xlat100 = dot(u_xlat15.xyz, u_xlat15.xyz);
          u_xlat100 = inverseSqrt(u_xlat100);
          u_xlat15 = vec4f(((vec3f(u_xlat100) * u_xlat15.xyz)).xyz, u_xlat15.w);
          u_xlat100 = dot(abs(u_xlat15.xyz), x_3017);
          u_xlat100 = max(u_xlat100, 0.00000099999999747524f);
          u_xlat100 = (1.0f / u_xlat100);
          u_xlat16 = vec4f(((vec3f(u_xlat100) * u_xlat15.zxy)).xyz, u_xlat16.w);
          u_xlat16.x = -(u_xlat16.x);
          u_xlat16.x = clamp(u_xlat16.x, 0.0f, 1.0f);
          let x_7559 = ((u_xlat16.yyzz >= vec4f())).xz;
          u_xlatb43 = vec3<bool>(x_7559.x, u_xlatb43.y, x_7559.y);
          if (u_xlatb43.x) {
            x_7564 = u_xlat16.x;
          } else {
            x_7564 = -(u_xlat16.x);
          }
          u_xlat43.x = x_7564;
          if (u_xlatb43.z) {
            x_7577 = u_xlat16.x;
          } else {
            x_7577 = -(u_xlat16.x);
          }
          u_xlat43.z = x_7577;
          let x_7595 = ((u_xlat15.xy * vec2f(u_xlat100)) + u_xlat43.xz);
          u_xlat43 = vec3f(x_7595.x, u_xlat43.y, x_7595.y);
          let x_7601 = ((u_xlat43.xz * x_905) + x_905);
          u_xlat43 = vec3f(x_7601.x, u_xlat43.y, x_7601.y);
          let x_7608 = clamp(u_xlat43.xz, vec2f(0.0f), vec2f(1.0f));
          u_xlat43 = vec3f(x_7608.x, u_xlat43.y, x_7608.y);
          let x_7622 = ((x_2122.x_AdditionalLightsCookieAtlasUVRects[u_xlati5].xy * u_xlat43.xz) + x_2122.x_AdditionalLightsCookieAtlasUVRects[u_xlati5].zw);
          u_xlat14 = vec4f(x_7622.x, u_xlat14.y, x_7622.y, u_xlat14.w);
        }
      }
      u_xlat14 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat14.xz, 0.0f);
      if (u_xlatb34.z) {
        x_7633 = u_xlat14.w;
      } else {
        x_7633 = u_xlat14.x;
      }
      u_xlat100 = x_7633;
      if (u_xlatb34.x) {
        x_7644 = u_xlat14.xyz;
      } else {
        x_7644 = vec3f(u_xlat100);
      }
      u_xlat14 = vec4f(x_7644.xyz, u_xlat14.w);
    } else {
      u_xlat14.x = 1.0f;
      u_xlat14.y = 1.0f;
      u_xlat14.z = 1.0f;
    }
    u_xlat14 = vec4f(((u_xlat14.xyz * x_3530.x_AdditionalLightsColor[u_xlati5].xyz)).xyz, u_xlat14.w);
    u_xlat14 = vec4f(((vec3f(u_xlat94) * u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlati5 = bitcast<i32>((bitcast<u32>(x_3530.x_AdditionalLightsLayerMasks[u_xlati5].el) & bitcast<u32>(x_251.unity_Builtins0Array[(u_xlati0 / 9i)].unity_RenderingLayerArray)));
    u_xlat96 = (u_xlat96 * u_xlat99);
    u_xlat99 = dot(u_xlat3.xyw, u_xlat13.xyz);
    u_xlat99 = clamp(u_xlat99, 0.0f, 1.0f);
    u_xlat96 = (u_xlat96 * u_xlat99);
    u_xlat14 = vec4f(((vec3f(u_xlat96) * u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlat12 = vec4f((((u_xlat12.xyz * vec3f(u_xlat98)) + u_xlat4)).xyz, u_xlat12.w);
    u_xlat96 = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat96 = max(u_xlat96, 1.17549435e-38f);
    u_xlat96 = inverseSqrt(u_xlat96);
    u_xlat12 = vec4f(((vec3f(u_xlat96) * u_xlat12.xyz)).xyz, u_xlat12.w);
    u_xlat96 = dot(u_xlat3.xyw, u_xlat12.xyz);
    u_xlat96 = clamp(u_xlat96, 0.0f, 1.0f);
    u_xlat98 = dot(u_xlat13.xyz, u_xlat12.xyz);
    u_xlat98 = clamp(u_xlat98, 0.0f, 1.0f);
    u_xlat96 = (u_xlat96 * u_xlat96);
    u_xlat96 = ((u_xlat96 * u_xlat29.x) + 1.00001001358032226562f);
    u_xlat98 = (u_xlat98 * u_xlat98);
    u_xlat96 = (u_xlat96 * u_xlat96);
    u_xlat98 = max(u_xlat98, 0.10000000149011611938f);
    u_xlat96 = (u_xlat96 * u_xlat98);
    u_xlat96 = (u_xlat93 * u_xlat96);
    u_xlat96 = (u_xlat91 / u_xlat96);
    u_xlat12 = vec4f((((u_xlat1.xyz * vec3f(u_xlat96)) + u_xlat31)).xyz, u_xlat12.w);
    u_xlat12 = vec4f((((u_xlat12.xyz * u_xlat14.xyz) + u_xlat11.xyz)).xyz, u_xlat12.w);
    if ((u_xlati5 != 0i)) {
      x_7791 = u_xlat12.xyz;
    } else {
      x_7791 = u_xlat11.xyz;
    }
    u_xlat11 = vec4f(x_7791.xyz, u_xlat11.w);
  }
  u_xlat0 = ((u_xlat8 * vec3f(u_xlat88)) + u_xlat9.xyz);
  u_xlat0 = (u_xlat11.xyz + u_xlat0);
  u_xlat87 = (u_xlat87 * -(u_xlat87));
  u_xlat87 = exp2(u_xlat87);
  u_xlat1.x = (-(u_xlat87) + 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xxx * x_105.unity_FogColor.xyz)).xyz, u_xlat1.w);
  SV_Target0 = vec4f((((u_xlat0 * vec3f(u_xlat87)) + u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlatb0 = (x_129.x_Surface == 1.0f);
  if (u_xlatb0) {
    x_7848 = u_xlat2.x;
  } else {
    x_7848 = 1.0f;
  }
  SV_Target0.w = x_7848;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(5) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(0) vs_TEXCOORD0_param : vec2f, @location(1) vs_TEXCOORD1_param : vec3f, @location(2) vs_TEXCOORD2_param : vec3f, @location(3) vs_TEXCOORD3_param : vec4f, @location(4) vs_TEXCOORD8_param : vec2f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}


override UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;


/* ================= variant ================= */

