//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-Surface-Mobile.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  x_ScreenParams : vec4f,
  /* @offset(32) */
  unity_SHBr : vec4f,
  /* @offset(48) */
  unity_SHBg : vec4f,
  /* @offset(64) */
  unity_SHBb : vec4f,
  /* @offset(80) */
  unity_SHC : vec4f,
  /* @offset(96) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr,
  /* @offset(160) */
  hlslcc_mtx4x4unity_WorldToObject : Arr_1,
  /* @offset(224) */
  unity_WorldTransformParams : vec4f,
  /* @offset(240) */
  hlslcc_mtx4x4glstate_matrix_projection : Arr_2,
  /* @offset(304) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_3,
  /* @offset(368) */
  x_FaceDilate : f32,
  /* @offset(384) */
  hlslcc_mtx4x4_EnvMatrix : Arr_4,
  /* @offset(448) */
  x_WeightNormal : f32,
  /* @offset(452) */
  x_WeightBold : f32,
  /* @offset(456) */
  x_ScaleRatioA : f32,
  /* @offset(460) */
  x_VertexOffsetX : f32,
  /* @offset(464) */
  x_VertexOffsetY : f32,
  /* @offset(468) */
  x_GradientScale : f32,
  /* @offset(472) */
  x_ScaleX : f32,
  /* @offset(476) */
  x_ScaleY : f32,
  /* @offset(480) */
  x_PerspectiveFilter : f32,
  /* @offset(484) */
  x_Sharpness : f32,
  /* @offset(496) */
  x_MainTex_ST : vec4f,
  /* @offset(512) */
  x_FaceTex_ST : vec4f,
  /* @offset(528) */
  x_OutlineTex_ST : vec4f,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : VGlobals;

var<private> vs_TEXCOORD0 : vec4f;

var<private> in_TEXCOORD0 : vec4f;

var<private> in_TEXCOORD1 : vec4f;

var<private> vs_TEXCOORD5 : vec2f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec2f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> in_TANGENT0 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

var<private> vs_TEXCOORD4 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> in_COLOR0 : vec4f;

var<private> vs_TEXCOORD6 : vec3f;

var<private> vs_TEXCOORD7 : vec3f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat16 : f32;
  var u_xlat7 : vec3f;
  var u_xlati5 : i32;
  var u_xlati0 : i32;
  var u_xlat4 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.xy + vec2f(x_25.x_VertexOffsetX, x_25.x_VertexOffsetY))).xy, u_xlat0.zw);
  u_xlat1 = (u_xlat0.yyyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat1 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat1);
  u_xlat2 = (u_xlat1 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat1 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz * in_POSITION0.www) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat3 = (u_xlat2.yyyy * x_25.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat3 = ((x_25.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat2.xxxx) + u_xlat3);
  u_xlat3 = ((x_25.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat2.zzzz) + u_xlat3);
  gl_Position = ((x_25.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat2.wwww) + u_xlat3);
  vs_TEXCOORD0 = vec4f((((in_TEXCOORD0.xy * x_25.x_MainTex_ST.xy) + x_25.x_MainTex_ST.zw)).xy, vs_TEXCOORD0.zw);
  vs_TEXCOORD0 = vec4f(vs_TEXCOORD0.xy, (((in_TEXCOORD1.xy * x_25.x_FaceTex_ST.xy) + x_25.x_FaceTex_ST.zw)).xy);
  u_xlatb15 = (0.0f >= in_TEXCOORD0.w);
  u_xlat15 = select(0.0f, 1.0f, u_xlatb15);
  u_xlat16 = (-(x_25.x_WeightNormal) + x_25.x_WeightBold);
  u_xlat15 = ((u_xlat15 * u_xlat16) + x_25.x_WeightNormal);
  u_xlat15 = ((u_xlat15 * 0.25f) + x_25.x_FaceDilate);
  u_xlat15 = (u_xlat15 * x_25.x_ScaleRatioA);
  vs_TEXCOORD5.x = (u_xlat15 * 0.5f);
  u_xlat15 = (u_xlat2.y * x_25.hlslcc_mtx4x4unity_MatrixVP[1i].w);
  u_xlat15 = ((x_25.hlslcc_mtx4x4unity_MatrixVP[0i].w * u_xlat2.x) + u_xlat15);
  u_xlat15 = ((x_25.hlslcc_mtx4x4unity_MatrixVP[2i].w * u_xlat2.z) + u_xlat15);
  u_xlat15 = ((x_25.hlslcc_mtx4x4unity_MatrixVP[3i].w * u_xlat2.w) + u_xlat15);
  u_xlat2 = vec4f(((x_25.x_ScreenParams.yy * x_25.hlslcc_mtx4x4glstate_matrix_projection[1i].xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((x_25.hlslcc_mtx4x4glstate_matrix_projection[0i].xy * x_25.x_ScreenParams.xx) + u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy * vec2f(x_25.x_ScaleX, x_25.x_ScaleY))).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((vec2f(u_xlat15) / u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat15 = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat15 = inverseSqrt(u_xlat15);
  u_xlat16 = (abs(in_TEXCOORD0.w) * x_25.x_GradientScale);
  u_xlat2.x = (x_25.x_Sharpness + 1.0f);
  u_xlat16 = (u_xlat16 * u_xlat2.x);
  u_xlat2.x = (u_xlat15 * u_xlat16);
  u_xlat7.x = (-(x_25.x_PerspectiveFilter) + 1.0f);
  u_xlat2.x = (u_xlat7.x * u_xlat2.x);
  u_xlat15 = ((u_xlat15 * u_xlat16) + -(u_xlat2.x));
  u_xlat7 = (x_25.x_WorldSpaceCameraPos.yyy * x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat7 = ((x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz * x_25.x_WorldSpaceCameraPos.xxx) + u_xlat7);
  u_xlat7 = ((x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz * x_25.x_WorldSpaceCameraPos.zzz) + u_xlat7);
  u_xlat7 = (u_xlat7 + x_25.hlslcc_mtx4x4unity_WorldToObject[3i].xyz);
  u_xlat0.z = in_POSITION0.z;
  u_xlat0 = vec4f(((-(u_xlat0.xyz) + u_xlat7)).xyz, u_xlat0.w);
  u_xlat0.x = dot(in_NORMAL0, u_xlat0.xyz);
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < u_xlat0.x)));
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (u_xlat0.x < 0.0f)));
  u_xlati0 = (-(u_xlati5) + u_xlati0);
  u_xlat0.x = f32(u_xlati0);
  u_xlat0 = vec4f(((u_xlat0.xxx * in_NORMAL0)).xyz, u_xlat0.w);
  u_xlat3.x = dot(u_xlat0.xyz, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat3.y = dot(u_xlat0.xyz, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat3.z = dot(u_xlat0.xyz, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat0.x = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat3 = (u_xlat0.xxxx * u_xlat3.xyzz);
  u_xlat0 = vec4f(((-(u_xlat1.xyz) + x_25.x_WorldSpaceCameraPos)).xyz, u_xlat0.w);
  u_xlat16 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat16 = inverseSqrt(u_xlat16);
  u_xlat7 = (u_xlat0.xyz * vec3f(u_xlat16));
  u_xlat16 = dot(u_xlat3.xyw, u_xlat7);
  vs_TEXCOORD5.y = ((abs(u_xlat16) * u_xlat15) + u_xlat2.x);
  vs_TEXCOORD1 = ((in_TEXCOORD1.xy * x_25.x_OutlineTex_ST.xy) + x_25.x_OutlineTex_ST.zw);
  vs_TEXCOORD2.w = u_xlat1.x;
  u_xlat2 = vec4f(((in_TANGENT0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].yzx)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].yzx * in_TANGENT0.xxx) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].yzx * in_TANGENT0.zzz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat15 = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat15 = inverseSqrt(u_xlat15);
  u_xlat2 = vec4f(((vec3f(u_xlat15) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat4 = (u_xlat2.xyz * u_xlat3.wxy);
  u_xlat4 = ((u_xlat3.ywx * u_xlat2.yzx) + -(u_xlat4));
  u_xlat15 = (in_TANGENT0.w * x_25.unity_WorldTransformParams.w);
  u_xlat4 = (vec3f(u_xlat15) * u_xlat4);
  vs_TEXCOORD2.y = u_xlat4.x;
  vs_TEXCOORD2.z = u_xlat3.x;
  vs_TEXCOORD2.x = u_xlat2.z;
  vs_TEXCOORD3.x = u_xlat2.x;
  vs_TEXCOORD4.x = u_xlat2.y;
  vs_TEXCOORD3.w = u_xlat1.y;
  vs_TEXCOORD4.w = u_xlat1.z;
  vs_TEXCOORD3.z = u_xlat3.y;
  vs_TEXCOORD3.y = u_xlat4.y;
  vs_TEXCOORD4.y = u_xlat4.z;
  vs_TEXCOORD4.z = u_xlat3.w;
  vs_COLOR0 = in_COLOR0;
  u_xlat1 = vec4f(((u_xlat0.yyy * x_25.hlslcc_mtx4x4_EnvMatrix[1i].xyz)).xyz, u_xlat1.w);
  let x_593 = ((x_25.hlslcc_mtx4x4_EnvMatrix[0i].xyz * u_xlat0.xxx) + u_xlat1.xyz);
  u_xlat0 = vec4f(x_593.xy, u_xlat0.z, x_593.z);
  vs_TEXCOORD6 = ((x_25.hlslcc_mtx4x4_EnvMatrix[2i].xyz * u_xlat0.zzz) + u_xlat0.xyw);
  u_xlat0.x = (u_xlat3.y * u_xlat3.y);
  u_xlat0.x = ((u_xlat3.x * u_xlat3.x) + -(u_xlat0.x));
  u_xlat1 = (u_xlat3.ywzx * u_xlat3);
  u_xlat2.x = dot(x_25.unity_SHBr, u_xlat1);
  u_xlat2.y = dot(x_25.unity_SHBg, u_xlat1);
  u_xlat2.z = dot(x_25.unity_SHBb, u_xlat1);
  vs_TEXCOORD7 = ((x_25.unity_SHC.xyz * u_xlat0.xxx) + u_xlat2.xyz);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_TEXCOORD0_1 : vec4f,
  @location(2)
  vs_TEXCOORD5_1 : vec2f,
  @location(1)
  vs_TEXCOORD1_1 : vec2f,
  @location(3)
  vs_TEXCOORD2_1 : vec4f,
  @location(4)
  vs_TEXCOORD3_1 : vec4f,
  @location(5)
  vs_TEXCOORD4_1 : vec4f,
  @location(6)
  vs_COLOR0_1 : vec4f,
  @location(8)
  vs_TEXCOORD6_1 : vec3f,
  @location(7)
  vs_TEXCOORD7_1 : vec3f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(3) in_TEXCOORD0_param : vec4f, @location(4) in_TEXCOORD1_param : vec4f, @location(2) in_NORMAL0_param : vec3f, @location(1) in_TANGENT0_param : vec4f, @location(5) in_COLOR0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD5, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0, vs_TEXCOORD6, vs_TEXCOORD7);
}

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-Surface-Mobile.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_Time : vec4f,
  /* @offset(16) */
  x_WorldSpaceLightPos0 : vec4f,
  /* @offset(32) */
  unity_SHAr : vec4f,
  /* @offset(48) */
  unity_SHAg : vec4f,
  /* @offset(64) */
  unity_SHAb : vec4f,
  /* @offset(80) */
  unity_OcclusionMaskSelector : vec4f,
  /* @offset(96) */
  unity_ProbeVolumeParams : vec4f,
  /* @offset(112) */
  hlslcc_mtx4x4unity_ProbeVolumeWorldToObject : Arr,
  /* @offset(176) */
  unity_ProbeVolumeSizeInv : vec3f,
  /* @offset(192) */
  unity_ProbeVolumeMin : vec3f,
  /* @offset(208) */
  x_LightColor0 : vec4f,
  /* @offset(224) */
  x_FaceUVSpeedX : f32,
  /* @offset(228) */
  x_FaceUVSpeedY : f32,
  /* @offset(240) */
  x_FaceColor : vec4f,
  /* @offset(256) */
  x_OutlineSoftness : f32,
  /* @offset(260) */
  x_OutlineUVSpeedX : f32,
  /* @offset(264) */
  x_OutlineUVSpeedY : f32,
  /* @offset(272) */
  x_OutlineColor : vec4f,
  /* @offset(288) */
  x_OutlineWidth : f32,
  /* @offset(292) */
  x_ScaleRatioA : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4f;

var<private> vs_TEXCOORD5 : vec2f;

@group(1) @binding(0) var<uniform> x_63 : PGlobals;

var<private> vs_COLOR0 : vec4f;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2f;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_OutlineTex : sampler;

var<private> vs_TEXCOORD3 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> vs_TEXCOORD4 : vec4f;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec3f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat6 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat8 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat18 : f32;
  var u_xlat12 : f32;
  var u_xlatb1 : bool;
  var u_xlatb7 : bool;
  var u_xlat9 : vec3f;
  var u_xlat7 : vec3f;
  var x_338 : vec3f;
  var u_xlat13 : f32;
  var u_xlat10 : vec3f;
  var x_488 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_23 = vs_TEXCOORD0;
  let x_25 = textureSample(x_MainTex, sampler_MainTex, x_23.xy);
  u_xlat0.x = x_25.w;
  u_xlat0.x = (-(u_xlat0.x) + 0.5f);
  u_xlat0.x = (u_xlat0.x + -(vs_TEXCOORD5.x));
  u_xlat0.x = ((u_xlat0.x * vs_TEXCOORD5.y) + 0.5f);
  u_xlat6.x = (x_63.x_OutlineWidth * x_63.x_ScaleRatioA);
  u_xlat6.y = (x_63.x_OutlineSoftness * x_63.x_ScaleRatioA);
  let x_85 = (u_xlat6.xy * vs_TEXCOORD5.yy);
  u_xlat6 = vec3f(x_85.x, u_xlat6.y, x_85.y);
  u_xlat1 = (vs_COLOR0 * x_63.x_FaceColor);
  u_xlat2.x = (vs_COLOR0.w * x_63.x_OutlineColor.w);
  u_xlat8 = vec3f((((vec2f(x_63.x_FaceUVSpeedX, x_63.x_FaceUVSpeedY) * x_63.x_Time.yy) + vs_TEXCOORD0.zw)).xy, u_xlat8.z);
  let x_128 = u_xlat8;
  let x_130 = textureSample(x_FaceTex, sampler_FaceTex, x_128.xy);
  u_xlat3 = x_130;
  u_xlat1 = (u_xlat1 * u_xlat3);
  u_xlat8 = vec3f((((vec2f(x_63.x_OutlineUVSpeedX, x_63.x_OutlineUVSpeedY) * x_63.x_Time.yy) + vs_TEXCOORD1)).xy, u_xlat8.z);
  let x_155 = u_xlat8;
  let x_157 = textureSample(x_OutlineTex, sampler_OutlineTex, x_155.xy);
  u_xlat3 = x_157;
  u_xlat8 = (u_xlat3.xyz * x_63.x_OutlineColor.xyz);
  u_xlat3.w = (u_xlat2.x * u_xlat3.w);
  u_xlat2.x = ((-(u_xlat6.x) * 0.5f) + u_xlat0.x);
  u_xlat18 = ((u_xlat6.z * 0.5f) + u_xlat2.x);
  u_xlat12 = ((u_xlat6.y * vs_TEXCOORD5.y) + 1.0f);
  u_xlat12 = (u_xlat18 / u_xlat12);
  u_xlat12 = clamp(u_xlat12, 0.0f, 1.0f);
  u_xlat12 = (-(u_xlat12) + 1.0f);
  u_xlat0.x = ((u_xlat6.x * 0.5f) + u_xlat0.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat6.x = min(u_xlat6.x, 1.0f);
  u_xlat6.x = sqrt(u_xlat6.x);
  u_xlat0.x = (u_xlat6.x * u_xlat0.x);
  u_xlat1 = vec4f(((u_xlat1.www * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat3 = vec4f(((u_xlat8 * u_xlat3.www)).xyz, u_xlat3.w);
  u_xlat2 = (-(u_xlat1) + u_xlat3);
  u_xlat1 = ((u_xlat0.xxxx * u_xlat2) + u_xlat1);
  u_xlat0 = (vec4f(u_xlat12) * u_xlat1);
  u_xlat1.x = max(u_xlat0.w, 0.00009999999747378752f);
  u_xlat0 = vec4f(((u_xlat0.xyz / u_xlat1.xxx)).xyz, u_xlat0.w);
  u_xlatb1 = (x_63.unity_ProbeVolumeParams.x == 1.0f);
  if (u_xlatb1) {
    u_xlatb7 = (x_63.unity_ProbeVolumeParams.y == 1.0f);
    u_xlat2 = vec4f(((vs_TEXCOORD3.www * x_63.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[1i].xyz)).xyz, u_xlat2.w);
    u_xlat2 = vec4f((((x_63.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[0i].xyz * vs_TEXCOORD2.www) + u_xlat2.xyz)).xyz, u_xlat2.w);
    u_xlat2 = vec4f((((x_63.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[2i].xyz * vs_TEXCOORD4.www) + u_xlat2.xyz)).xyz, u_xlat2.w);
    u_xlat2 = vec4f(((u_xlat2.xyz + x_63.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[3i].xyz)).xyz, u_xlat2.w);
    u_xlat9.x = vs_TEXCOORD2.w;
    u_xlat9.y = vs_TEXCOORD3.w;
    u_xlat9.z = vs_TEXCOORD4.w;
    if (u_xlatb7) {
      x_338 = u_xlat2.xyz;
    } else {
      x_338 = u_xlat9;
    }
    u_xlat7 = x_338;
    u_xlat7 = (u_xlat7 + -(x_63.unity_ProbeVolumeMin));
    u_xlat2 = vec4f(u_xlat2.x, ((u_xlat7 * x_63.unity_ProbeVolumeSizeInv)).xyz);
    u_xlat7.x = ((u_xlat2.y * 0.25f) + 0.75f);
    u_xlat13 = ((x_63.unity_ProbeVolumeParams.z * 0.5f) + 0.75f);
    u_xlat2.x = max(u_xlat13, u_xlat7.x);
    let x_385 = u_xlat2;
    let x_387 = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_385.xzw);
    u_xlat2 = x_387;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  u_xlat7.x = dot(u_xlat2, x_63.unity_OcclusionMaskSelector);
  u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
  u_xlat2.x = vs_TEXCOORD2.z;
  u_xlat2.y = vs_TEXCOORD3.z;
  u_xlat2.z = vs_TEXCOORD4.z;
  u_xlat13 = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat13 = inverseSqrt(u_xlat13);
  u_xlat2 = vec4f(((vec3f(u_xlat13) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat7 = (u_xlat7.xxx * x_63.x_LightColor0.xyz);
  if (u_xlatb1) {
    u_xlatb1 = (x_63.unity_ProbeVolumeParams.y == 1.0f);
    u_xlat3 = vec4f(((vs_TEXCOORD3.www * x_63.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[1i].xyz)).xyz, u_xlat3.w);
    u_xlat3 = vec4f((((x_63.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[0i].xyz * vs_TEXCOORD2.www) + u_xlat3.xyz)).xyz, u_xlat3.w);
    u_xlat3 = vec4f((((x_63.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[2i].xyz * vs_TEXCOORD4.www) + u_xlat3.xyz)).xyz, u_xlat3.w);
    u_xlat3 = vec4f(((u_xlat3.xyz + x_63.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[3i].xyz)).xyz, u_xlat3.w);
    u_xlat10.x = vs_TEXCOORD2.w;
    u_xlat10.y = vs_TEXCOORD3.w;
    u_xlat10.z = vs_TEXCOORD4.w;
    if (u_xlatb1) {
      x_488 = u_xlat3.xyz;
    } else {
      x_488 = u_xlat10;
    }
    u_xlat3 = vec4f(x_488.xyz, u_xlat3.w);
    u_xlat3 = vec4f(((u_xlat3.xyz + -(x_63.unity_ProbeVolumeMin))).xyz, u_xlat3.w);
    u_xlat3 = vec4f(u_xlat3.x, ((u_xlat3.xyz * x_63.unity_ProbeVolumeSizeInv)).xyz);
    u_xlat1.x = (u_xlat3.y * 0.25f);
    u_xlat9.x = (x_63.unity_ProbeVolumeParams.z * 0.5f);
    u_xlat4.x = ((-(x_63.unity_ProbeVolumeParams.z) * 0.5f) + 0.25f);
    u_xlat1.x = max(u_xlat1.x, u_xlat9.x);
    u_xlat3.x = min(u_xlat4.x, u_xlat1.x);
    let x_543 = u_xlat3;
    let x_545 = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_543.xzw);
    u_xlat4 = x_545;
    u_xlat5 = vec4f(((u_xlat3.xzw + vec3f(0.25f, 0.0f, 0.0f))).xyz, u_xlat5.w);
    let x_556 = u_xlat5;
    let x_558 = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_556.xyz);
    u_xlat5 = x_558;
    u_xlat3 = vec4f(((u_xlat3.xzw + vec3f(0.5f, 0.0f, 0.0f))).xyz, u_xlat3.w);
    let x_568 = u_xlat3;
    let x_570 = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_568.xyz);
    u_xlat3 = x_570;
    u_xlat2.w = 1.0f;
    u_xlat4.x = dot(u_xlat4, u_xlat2);
    u_xlat4.y = dot(u_xlat5, u_xlat2);
    u_xlat4.z = dot(u_xlat3, u_xlat2);
  } else {
    u_xlat2.w = 1.0f;
    u_xlat4.x = dot(x_63.unity_SHAr, u_xlat2);
    u_xlat4.y = dot(x_63.unity_SHAg, u_xlat2);
    u_xlat4.z = dot(x_63.unity_SHAb, u_xlat2);
  }
  u_xlat3 = vec4f(((u_xlat4.xyz + vs_TEXCOORD7)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(max(u_xlat3.xyz, vec3f()).xyz, u_xlat3.w);
  u_xlat1.x = dot(u_xlat2.xyz, x_63.x_WorldSpaceLightPos0.xyz);
  u_xlat1.x = max(u_xlat1.x, 0.0f);
  u_xlat7 = (u_xlat0.xyz * u_xlat7);
  u_xlat0 = vec4f(((u_xlat0.xyz * u_xlat3.xyz)).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((u_xlat7 * u_xlat1.xxx) + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat0.w;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4f, @location(2) vs_TEXCOORD5_param : vec2f, @location(6) vs_COLOR0_param : vec4f, @location(1) vs_TEXCOORD1_param : vec2f, @location(4) vs_TEXCOORD3_param : vec4f, @location(3) vs_TEXCOORD2_param : vec4f, @location(5) vs_TEXCOORD4_param : vec4f, @location(7) vs_TEXCOORD7_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

