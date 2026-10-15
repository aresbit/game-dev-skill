//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-Surface.shader
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
  @location(7)
  vs_TEXCOORD6_1 : vec3f,
  @location(8)
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

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-Surface.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_Time : vec4f,
  /* @offset(16) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(32) */
  x_WorldSpaceLightPos0 : vec4f,
  /* @offset(48) */
  unity_SHAr : vec4f,
  /* @offset(64) */
  unity_SHAg : vec4f,
  /* @offset(80) */
  unity_SHAb : vec4f,
  /* @offset(96) */
  unity_OcclusionMaskSelector : vec4f,
  /* @offset(112) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr,
  /* @offset(176) */
  unity_ProbeVolumeParams : vec4f,
  /* @offset(192) */
  hlslcc_mtx4x4unity_ProbeVolumeWorldToObject : Arr_1,
  /* @offset(256) */
  unity_ProbeVolumeSizeInv : vec3f,
  /* @offset(272) */
  unity_ProbeVolumeMin : vec3f,
  /* @offset(288) */
  x_LightColor0 : vec4f,
  /* @offset(304) */
  x_SpecColor : vec4f,
  /* @offset(320) */
  x_FaceUVSpeedX : f32,
  /* @offset(324) */
  x_FaceUVSpeedY : f32,
  /* @offset(336) */
  x_FaceColor : vec4f,
  /* @offset(352) */
  x_OutlineSoftness : f32,
  /* @offset(356) */
  x_OutlineUVSpeedX : f32,
  /* @offset(360) */
  x_OutlineUVSpeedY : f32,
  /* @offset(368) */
  x_OutlineColor : vec4f,
  /* @offset(384) */
  x_OutlineWidth : f32,
  /* @offset(388) */
  x_Bevel : f32,
  /* @offset(392) */
  x_BevelOffset : f32,
  /* @offset(396) */
  x_BevelWidth : f32,
  /* @offset(400) */
  x_BevelClamp : f32,
  /* @offset(404) */
  x_BevelRoundness : f32,
  /* @offset(408) */
  x_BumpOutline : f32,
  /* @offset(412) */
  x_BumpFace : f32,
  /* @offset(416) */
  x_ReflectFaceColor : vec4f,
  /* @offset(432) */
  x_ReflectOutlineColor : vec4f,
  /* @offset(448) */
  x_ShaderFlags : f32,
  /* @offset(452) */
  x_ScaleRatioA : f32,
  /* @offset(456) */
  x_TextureWidth : f32,
  /* @offset(460) */
  x_TextureHeight : f32,
  /* @offset(464) */
  x_GradientScale : f32,
  /* @offset(468) */
  x_FaceShininess : f32,
  /* @offset(472) */
  x_OutlineShininess : f32,
}

var<private> vs_TEXCOORD2 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

var<private> vs_TEXCOORD4 : vec4f;

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4f;

var<private> vs_TEXCOORD5 : vec2f;

var<private> vs_COLOR0 : vec4f;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2f;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_OutlineTex : sampler;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD6 : vec3f;

@group(0) @binding(4) var x_Cube : texture_cube<f32>;

@group(0) @binding(10) var sampler_Cube : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec3f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat9 : vec3f;
  var u_xlat1 : vec3f;
  var u_xlat0 : vec4f;
  var u_xlat28 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat29 : f32;
  var u_xlat4 : vec4f;
  var u_xlat5 : vec4f;
  var u_xlat20 : f32;
  var u_xlat11 : f32;
  var u_xlatb12 : bool;
  var x_359 : f32;
  var u_xlatb3 : bool;
  var u_xlat12 : vec2f;
  var u_xlat30 : f32;
  var u_xlatb30 : bool;
  var u_xlatb31 : bool;
  var x_815 : vec3f;
  var u_xlat31 : f32;
  var u_xlat14 : f32;
  var u_xlat6 : vec4f;
  var x_974 : vec3f;
  var u_xlat18 : f32;
  var u_xlat27 : f32;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat10 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat9.x = vs_TEXCOORD2.w;
  u_xlat9.y = vs_TEXCOORD3.w;
  u_xlat9.z = vs_TEXCOORD4.w;
  u_xlat1 = (-(u_xlat9) + x_39.x_WorldSpaceCameraPos);
  u_xlat0.x = dot(u_xlat1, u_xlat1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  let x_69 = vs_TEXCOORD0;
  let x_71 = textureSample(x_MainTex, sampler_MainTex, x_69.xy);
  u_xlat28 = x_71.w;
  u_xlat28 = (-(u_xlat28) + 0.5f);
  u_xlat28 = (u_xlat28 + -(vs_TEXCOORD5.x));
  u_xlat28 = ((u_xlat28 * vs_TEXCOORD5.y) + 0.5f);
  u_xlat2.x = (x_39.x_OutlineWidth * x_39.x_ScaleRatioA);
  u_xlat2.y = (x_39.x_OutlineSoftness * x_39.x_ScaleRatioA);
  let x_110 = (u_xlat2.xy * vs_TEXCOORD5.yy);
  u_xlat2 = vec4f(x_110.x, u_xlat2.y, x_110.y, u_xlat2.w);
  u_xlat3 = (vs_COLOR0 * x_39.x_FaceColor);
  u_xlat29 = (vs_COLOR0.w * x_39.x_OutlineColor.w);
  u_xlat4 = vec4f((((vec2f(x_39.x_FaceUVSpeedX, x_39.x_FaceUVSpeedY) * x_39.x_Time.yy) + vs_TEXCOORD0.zw)).xy, u_xlat4.zw);
  let x_151 = u_xlat4;
  let x_153 = textureSample(x_FaceTex, sampler_FaceTex, x_151.xy);
  u_xlat4 = x_153;
  u_xlat3 = (u_xlat3 * u_xlat4);
  u_xlat4 = vec4f((((vec2f(x_39.x_OutlineUVSpeedX, x_39.x_OutlineUVSpeedY) * x_39.x_Time.yy) + vs_TEXCOORD1)).xy, u_xlat4.zw);
  let x_178 = u_xlat4;
  let x_180 = textureSample(x_OutlineTex, sampler_OutlineTex, x_178.xy);
  u_xlat4 = x_180;
  u_xlat4 = vec4f(((u_xlat4.xyz * x_39.x_OutlineColor.xyz)).xyz, u_xlat4.w);
  u_xlat5.w = (u_xlat29 * u_xlat4.w);
  u_xlat29 = ((-(u_xlat2.x) * 0.5f) + u_xlat28);
  u_xlat20 = ((u_xlat2.z * 0.5f) + u_xlat29);
  u_xlat11 = ((u_xlat2.y * vs_TEXCOORD5.y) + 1.0f);
  u_xlat11 = (u_xlat20 / u_xlat11);
  u_xlat11 = clamp(u_xlat11, 0.0f, 1.0f);
  u_xlat11 = (-(u_xlat11) + 1.0f);
  u_xlat28 = ((u_xlat2.x * 0.5f) + u_xlat28);
  u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
  u_xlat2.x = min(u_xlat2.x, 1.0f);
  u_xlat2.x = sqrt(u_xlat2.x);
  u_xlat2.x = (u_xlat28 * u_xlat2.x);
  u_xlat3 = vec4f(((u_xlat3.www * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat5 = vec4f(((u_xlat4.xyz * u_xlat5.www)).xyz, u_xlat5.w);
  u_xlat4 = (-(u_xlat3) + u_xlat5);
  u_xlat3 = ((u_xlat2.xxxx * u_xlat4) + u_xlat3);
  u_xlat2 = (vec4f(u_xlat11) * u_xlat3);
  u_xlat3.x = max(u_xlat2.w, 0.00009999999747378752f);
  u_xlat2 = vec4f(((u_xlat2.xyz / u_xlat3.xxx)).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((vec2f(1.0f) / vec2f(x_39.x_TextureWidth, x_39.x_TextureHeight))).xy, u_xlat3.zw);
  u_xlat3.z = 0.0f;
  u_xlat4 = (-(u_xlat3.xzzy) + vs_TEXCOORD0.xyxy);
  let x_305 = u_xlat4;
  let x_307 = textureSample(x_MainTex, sampler_MainTex, x_305.xy);
  u_xlat5.x = x_307.w;
  u_xlat3 = (u_xlat3.xzzy + vs_TEXCOORD0.xyxy);
  let x_318 = u_xlat3;
  let x_320 = textureSample(x_MainTex, sampler_MainTex, x_318.xy);
  u_xlat5.y = x_320.w;
  let x_326 = u_xlat4;
  let x_328 = textureSample(x_MainTex, sampler_MainTex, x_326.zw);
  u_xlat5.z = x_328.w;
  let x_334 = u_xlat3;
  let x_336 = textureSample(x_MainTex, sampler_MainTex, x_334.zw);
  u_xlat5.w = x_336.w;
  u_xlat3.x = (x_39.x_ShaderFlags * 0.5f);
  u_xlatb12 = (u_xlat3.x >= -(u_xlat3.x));
  u_xlat3.x = fract(abs(u_xlat3.x));
  if (u_xlatb12) {
    x_359 = u_xlat3.x;
  } else {
    x_359 = -(u_xlat3.x);
  }
  u_xlat3.x = x_359;
  u_xlatb3 = (u_xlat3.x >= 0.5f);
  u_xlat12.x = (vs_TEXCOORD5.x + x_39.x_BevelOffset);
  u_xlat4 = (u_xlat12.xxxx + u_xlat5);
  u_xlat12.x = (x_39.x_BevelWidth + x_39.x_OutlineWidth);
  u_xlat12.x = max(u_xlat12.x, 0.00999999977648258209f);
  u_xlat4 = (u_xlat4 + vec4f(-0.5f));
  u_xlat4 = (u_xlat4 / u_xlat12.xxxx);
  u_xlat4 = (u_xlat4 + vec4f(0.5f));
  u_xlat4 = clamp(u_xlat4, vec4f(0.0f), vec4f(1.0f));
  u_xlat5 = ((u_xlat4 * vec4f(2.0f)) + vec4f(-1.0f));
  u_xlat5 = (-(abs(u_xlat5)) + vec4f(1.0f));
  u_xlat4 = select(u_xlat4, u_xlat5, vec4<bool>(u_xlatb3));
  u_xlat5 = (u_xlat4 * vec4f(1.57079601287841796875f));
  u_xlat5 = sin(u_xlat5);
  u_xlat5 = (-(u_xlat4) + u_xlat5);
  let x_451 = vec4f(x_39.x_BevelRoundness, x_39.x_BevelRoundness, x_39.x_BevelRoundness, x_39.x_BevelRoundness);
  u_xlat4 = ((vec4f(x_451.x, x_451.y, x_451.z, x_451.w) * u_xlat5) + u_xlat4);
  u_xlat3.x = (-(x_39.x_BevelClamp) + 1.0f);
  u_xlat4 = min(u_xlat3.xxxx, u_xlat4);
  u_xlat3.x = (u_xlat12.x * x_39.x_Bevel);
  u_xlat3.x = (u_xlat3.x * x_39.x_GradientScale);
  u_xlat3.x = (u_xlat3.x * -2.0f);
  u_xlat12 = (u_xlat3.xx * u_xlat4.xz);
  u_xlat3 = vec4f(u_xlat3.x, (((u_xlat4.wy * u_xlat3.xx) + -(u_xlat12.yx))).xy, u_xlat3.w);
  u_xlat3.x = -1.0f;
  u_xlat3.w = 1.0f;
  u_xlat30 = dot(u_xlat3.zw, u_xlat3.zw);
  u_xlat30 = inverseSqrt(u_xlat30);
  u_xlat4 = vec4f(u_xlat4.x, ((vec2f(u_xlat30) * vec2f(1.0f, 0.0f))).xy, u_xlat4.w);
  u_xlat4.x = (u_xlat30 * u_xlat3.z);
  u_xlat30 = dot(u_xlat3.xy, u_xlat3.xy);
  u_xlat30 = inverseSqrt(u_xlat30);
  u_xlat3.z = 0.0f;
  u_xlat3 = vec4f(((vec3f(u_xlat30) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat5 = vec4f(((u_xlat3.xyz * u_xlat4.xyz)).xyz, u_xlat5.w);
  u_xlat3 = vec4f((((u_xlat4.zxy * u_xlat3.yzx) + -(u_xlat5.xyz))).xyz, u_xlat3.w);
  let x_565 = vs_TEXCOORD0;
  let x_567 = textureSample(x_BumpMap, sampler_BumpMap, x_565.zw);
  u_xlat4 = vec4f(x_567.xyw.xyz, u_xlat4.w);
  u_xlat4.x = (u_xlat4.z * u_xlat4.x);
  u_xlat4 = vec4f((((u_xlat4.xy * vec2f(2.0f)) + vec2f(-1.0f))).xy, u_xlat4.zw);
  u_xlat30 = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat30 = min(u_xlat30, 1.0f);
  u_xlat30 = (-(u_xlat30) + 1.0f);
  u_xlat4.z = sqrt(u_xlat30);
  u_xlat30 = (-(x_39.x_BumpFace) + x_39.x_BumpOutline);
  u_xlat30 = ((u_xlat28 * u_xlat30) + x_39.x_BumpFace);
  u_xlat4 = vec4f((((u_xlat4.xyz * vec3f(u_xlat30)) + vec3f(-0.0f, -0.0f, -1.0f))).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((u_xlat2.www * u_xlat4.xyz) + vec3f(0.0f, 0.0f, 1.0f))).xyz, u_xlat4.w);
  u_xlat3 = vec4f(((u_xlat3.xyz + -(u_xlat4.xyz))).xyz, u_xlat3.w);
  u_xlat30 = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat30 = inverseSqrt(u_xlat30);
  u_xlat3 = vec4f(((vec3f(u_xlat30) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat4 = vec4f(((u_xlat3.yyy * x_39.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((x_39.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * u_xlat3.xxx) + u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat4 = vec4f((((x_39.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * u_xlat3.zzz) + u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat30 = dot(vs_TEXCOORD6, u_xlat4.xyz);
  u_xlat30 = (u_xlat30 + u_xlat30);
  u_xlat4 = vec4f((((u_xlat4.xyz * -(vec3f(u_xlat30))) + vs_TEXCOORD6)).xyz, u_xlat4.w);
  let x_712 = u_xlat4;
  let x_714 = textureSample(x_Cube, sampler_Cube, x_712.xyz);
  u_xlat4 = vec4f(x_714.xyz.xyz, u_xlat4.w);
  u_xlat5 = vec4f(((-(x_39.x_ReflectFaceColor.xyz) + x_39.x_ReflectOutlineColor.xyz)).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((vec3f(u_xlat28) * u_xlat5.xyz) + x_39.x_ReflectFaceColor.xyz)).xyz, u_xlat5.w);
  u_xlat4 = vec4f(((u_xlat4.xyz * u_xlat5.xyz)).xyz, u_xlat4.w);
  u_xlat30 = (-(x_39.x_FaceShininess) + x_39.x_OutlineShininess);
  u_xlat28 = ((u_xlat28 * u_xlat30) + x_39.x_FaceShininess);
  u_xlatb30 = (x_39.unity_ProbeVolumeParams.x == 1.0f);
  if (u_xlatb30) {
    u_xlatb31 = (x_39.unity_ProbeVolumeParams.y == 1.0f);
    u_xlat5 = vec4f(((vs_TEXCOORD3.www * x_39.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[1i].xyz)).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((x_39.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[0i].xyz * vs_TEXCOORD2.www) + u_xlat5.xyz)).xyz, u_xlat5.w);
    u_xlat5 = vec4f((((x_39.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[2i].xyz * vs_TEXCOORD4.www) + u_xlat5.xyz)).xyz, u_xlat5.w);
    u_xlat5 = vec4f(((u_xlat5.xyz + x_39.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[3i].xyz)).xyz, u_xlat5.w);
    if (u_xlatb31) {
      x_815 = u_xlat5.xyz;
    } else {
      x_815 = u_xlat9;
    }
    u_xlat5 = vec4f(x_815.xyz, u_xlat5.w);
    u_xlat5 = vec4f(((u_xlat5.xyz + -(x_39.unity_ProbeVolumeMin))).xyz, u_xlat5.w);
    u_xlat5 = vec4f(u_xlat5.x, ((u_xlat5.xyz * x_39.unity_ProbeVolumeSizeInv)).xyz);
    u_xlat31 = ((u_xlat5.y * 0.25f) + 0.75f);
    u_xlat14 = ((x_39.unity_ProbeVolumeParams.z * 0.5f) + 0.75f);
    u_xlat5.x = max(u_xlat31, u_xlat14);
    let x_866 = u_xlat5;
    let x_868 = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_866.xzw);
    u_xlat5 = x_868;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  u_xlat31 = dot(u_xlat5, x_39.unity_OcclusionMaskSelector);
  u_xlat31 = clamp(u_xlat31, 0.0f, 1.0f);
  u_xlat5.x = dot(vs_TEXCOORD2.xyz, -(u_xlat3.xyz));
  u_xlat5.y = dot(vs_TEXCOORD3.xyz, -(u_xlat3.xyz));
  u_xlat5.z = dot(vs_TEXCOORD4.xyz, -(u_xlat3.xyz));
  u_xlat3.x = dot(u_xlat5.xyz, u_xlat5.xyz);
  u_xlat3.x = inverseSqrt(u_xlat3.x);
  u_xlat5 = vec4f(((u_xlat3.xxx * u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat3 = vec4f(((vec3f(u_xlat31) * x_39.x_LightColor0.xyz)).xyz, u_xlat3.w);
  if (u_xlatb30) {
    u_xlatb30 = (x_39.unity_ProbeVolumeParams.y == 1.0f);
    u_xlat6 = vec4f(((vs_TEXCOORD3.www * x_39.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[1i].xyz)).xyz, u_xlat6.w);
    u_xlat6 = vec4f((((x_39.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[0i].xyz * vs_TEXCOORD2.www) + u_xlat6.xyz)).xyz, u_xlat6.w);
    u_xlat6 = vec4f((((x_39.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[2i].xyz * vs_TEXCOORD4.www) + u_xlat6.xyz)).xyz, u_xlat6.w);
    u_xlat6 = vec4f(((u_xlat6.xyz + x_39.hlslcc_mtx4x4unity_ProbeVolumeWorldToObject[3i].xyz)).xyz, u_xlat6.w);
    if (u_xlatb30) {
      x_974 = u_xlat6.xyz;
    } else {
      x_974 = u_xlat9;
    }
    u_xlat9 = x_974;
    u_xlat9 = (u_xlat9 + -(x_39.unity_ProbeVolumeMin));
    u_xlat6 = vec4f(u_xlat6.x, ((u_xlat9 * x_39.unity_ProbeVolumeSizeInv)).xyz);
    u_xlat9.x = (u_xlat6.y * 0.25f);
    u_xlat18 = (x_39.unity_ProbeVolumeParams.z * 0.5f);
    u_xlat27 = ((-(x_39.unity_ProbeVolumeParams.z) * 0.5f) + 0.25f);
    u_xlat9.x = max(u_xlat18, u_xlat9.x);
    u_xlat6.x = min(u_xlat27, u_xlat9.x);
    let x_1021 = u_xlat6;
    let x_1023 = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_1021.xzw);
    u_xlat7 = x_1023;
    u_xlat9 = (u_xlat6.xzw + vec3f(0.25f, 0.0f, 0.0f));
    let x_1032 = u_xlat9;
    let x_1033 = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_1032);
    u_xlat8 = x_1033;
    u_xlat9 = (u_xlat6.xzw + vec3f(0.5f, 0.0f, 0.0f));
    let x_1041 = u_xlat9;
    let x_1042 = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, x_1041);
    u_xlat6 = x_1042;
    u_xlat5.w = 1.0f;
    u_xlat7.x = dot(u_xlat7, u_xlat5);
    u_xlat7.y = dot(u_xlat8, u_xlat5);
    u_xlat7.z = dot(u_xlat6, u_xlat5);
  } else {
    u_xlat5.w = 1.0f;
    u_xlat7.x = dot(x_39.unity_SHAr, u_xlat5);
    u_xlat7.y = dot(x_39.unity_SHAg, u_xlat5);
    u_xlat7.z = dot(x_39.unity_SHAb, u_xlat5);
  }
  u_xlat0 = vec4f(u_xlat0.x, ((u_xlat7.xyz + vs_TEXCOORD7)).xyz);
  u_xlat1 = ((u_xlat1 * u_xlat0.xxx) + x_39.x_WorldSpaceLightPos0.xyz);
  u_xlat0.x = dot(u_xlat1, u_xlat1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat1 = (u_xlat0.xxx * u_xlat1);
  u_xlat0.x = dot(u_xlat5.xyz, x_39.x_WorldSpaceLightPos0.xyz);
  u_xlat0 = max(u_xlat0, vec4f());
  u_xlat1.x = dot(u_xlat5.xyz, u_xlat1);
  u_xlat1.x = max(u_xlat1.x, 0.0f);
  u_xlat10.x = (u_xlat28 * 128.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat10.x);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat10 = (u_xlat2.xyz * u_xlat3.xyz);
  u_xlat3 = vec4f(((u_xlat3.xyz * x_39.x_SpecColor.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((u_xlat1.xxx * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat1 = ((u_xlat10 * u_xlat0.xxx) + u_xlat3.xyz);
  u_xlat0 = vec4f((((u_xlat2.xyz * u_xlat0.yzw) + u_xlat1)).xyz, u_xlat0.w);
  SV_Target0 = vec4f((((u_xlat4.xyz * u_xlat2.www) + u_xlat0.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = u_xlat2.w;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4f, @location(4) vs_TEXCOORD3_param : vec4f, @location(5) vs_TEXCOORD4_param : vec4f, @location(0) vs_TEXCOORD0_param : vec4f, @location(2) vs_TEXCOORD5_param : vec2f, @location(6) vs_COLOR0_param : vec4f, @location(1) vs_TEXCOORD1_param : vec2f, @location(7) vs_TEXCOORD6_param : vec3f, @location(8) vs_TEXCOORD7_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

?

/* ================= variant ================= */

