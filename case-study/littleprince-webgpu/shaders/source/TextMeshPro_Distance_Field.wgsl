//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF.shader
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
  hlslcc_mtx4x4unity_ObjectToWorld : Arr,
  /* @offset(96) */
  hlslcc_mtx4x4unity_WorldToObject : Arr_1,
  /* @offset(160) */
  hlslcc_mtx4x4glstate_matrix_projection : Arr_2,
  /* @offset(224) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_3,
  /* @offset(288) */
  x_FaceDilate : f32,
  /* @offset(292) */
  x_OutlineSoftness : f32,
  /* @offset(296) */
  x_OutlineWidth : f32,
  /* @offset(304) */
  hlslcc_mtx4x4_EnvMatrix : Arr_4,
  /* @offset(368) */
  x_WeightNormal : f32,
  /* @offset(372) */
  x_WeightBold : f32,
  /* @offset(376) */
  x_ScaleRatioA : f32,
  /* @offset(380) */
  x_VertexOffsetX : f32,
  /* @offset(384) */
  x_VertexOffsetY : f32,
  /* @offset(400) */
  x_ClipRect : vec4f,
  /* @offset(416) */
  x_MaskSoftnessX : f32,
  /* @offset(420) */
  x_MaskSoftnessY : f32,
  /* @offset(424) */
  x_GradientScale : f32,
  /* @offset(428) */
  x_ScaleX : f32,
  /* @offset(432) */
  x_ScaleY : f32,
  /* @offset(436) */
  x_PerspectiveFilter : f32,
  /* @offset(440) */
  x_Sharpness : f32,
  /* @offset(448) */
  x_FaceTex_ST : vec4f,
  /* @offset(464) */
  x_OutlineTex_ST : vec4f,
  /* @offset(480) */
  x_UIMaskSoftnessX : f32,
  /* @offset(484) */
  x_UIMaskSoftnessY : f32,
  /* @offset(488) */
  x_UIVertexColorAlwaysGammaSpace : i32,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_26 : VGlobals;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD5 : vec4f;

var<private> in_TEXCOORD1 : vec2f;

var<private> gl_Position : vec4f;

const x_551 = vec2f(0.25f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlatb4 : vec3<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_185 : f32;
  var x_197 : f32;
  var x_210 : f32;
  var x_227 : vec3f;
  var u_xlat10 : vec2f;
  var u_xlat16 : f32;
  var u_xlat7 : vec3f;
  var u_xlat12 : f32;
  var u_xlat4 : vec3f;
  var u_xlatb2 : bool;
  var x_402 : f32;
  var u_xlatb16 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec3f(((in_POSITION0.xy + vec2f(x_26.x_VertexOffsetX, x_26.x_VertexOffsetY))).xy, u_xlat0.z);
  u_xlat1 = (u_xlat0.yyyy * x_26.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat1 = ((x_26.hlslcc_mtx4x4unity_ObjectToWorld[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_26.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat1);
  u_xlat2 = (u_xlat1 + x_26.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat1 = vec4f((((x_26.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz * in_POSITION0.www) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((-(u_xlat1.xyz) + x_26.x_WorldSpaceCameraPos)).xyz, u_xlat1.w);
  u_xlat3 = (u_xlat2.yyyy * x_26.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat3 = ((x_26.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat2.xxxx) + u_xlat3);
  u_xlat3 = ((x_26.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat2.zzzz) + u_xlat3);
  u_xlat2 = ((x_26.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat2.wwww) + u_xlat3);
  gl_Position = u_xlat2;
  u_xlat2 = vec4f((((in_COLOR0.xyz * vec3f(0.26588499546051025391f)) + vec3f(0.73658400774002075195f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((in_COLOR0.xyz * u_xlat2.xyz) + vec3f(-0.0098018404096364975f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((in_COLOR0.xyz * u_xlat2.xyz) + vec3f(0.00319697009399533272f))).xyz, u_xlat2.w);
  u_xlat3 = vec4f((((in_COLOR0.xyz * vec3f(0.08497100323438644409f)) + vec3f(-0.00016302900621667504f))).xyz, u_xlat3.w);
  u_xlatb4 = ((in_COLOR0.xyzx < vec4f(0.07254900038242340088f, 0.07254900038242340088f, 0.07254900038242340088f, 0.0f))).xyz;
  hlslcc_movcTemp = u_xlat2;
  if (u_xlatb4.x) {
    x_185 = u_xlat3.x;
  } else {
    x_185 = u_xlat2.x;
  }
  hlslcc_movcTemp.x = x_185;
  if (u_xlatb4.y) {
    x_197 = u_xlat3.y;
  } else {
    x_197 = u_xlat2.y;
  }
  hlslcc_movcTemp.y = x_197;
  if (u_xlatb4.z) {
    x_210 = u_xlat3.z;
  } else {
    x_210 = u_xlat2.z;
  }
  hlslcc_movcTemp.z = x_210;
  u_xlat2 = hlslcc_movcTemp;
  if ((x_26.x_UIVertexColorAlwaysGammaSpace != 0i)) {
    x_227 = u_xlat2.xyz;
  } else {
    x_227 = in_COLOR0.xyz;
  }
  vs_COLOR0 = vec4f(x_227.xyz, vs_COLOR0.w);
  vs_COLOR0.w = in_COLOR0.w;
  vs_TEXCOORD0 = in_TEXCOORD0.xy;
  u_xlat10 = (x_26.x_ScreenParams.yy * x_26.hlslcc_mtx4x4glstate_matrix_projection[1i].xy);
  u_xlat10 = ((x_26.hlslcc_mtx4x4glstate_matrix_projection[0i].xy * x_26.x_ScreenParams.xx) + u_xlat10);
  u_xlat10 = (abs(u_xlat10) * vec2f(x_26.x_ScaleX, x_26.x_ScaleY));
  u_xlat10 = (u_xlat2.ww / u_xlat10);
  u_xlat16 = dot(u_xlat10, u_xlat10);
  u_xlat16 = inverseSqrt(u_xlat16);
  u_xlat2.x = (abs(in_TEXCOORD0.w) * x_26.x_GradientScale);
  u_xlat7.x = (x_26.x_Sharpness + 1.0f);
  u_xlat2.x = (u_xlat7.x * u_xlat2.x);
  u_xlat7.x = (u_xlat16 * u_xlat2.x);
  u_xlat12 = (-(x_26.x_PerspectiveFilter) + 1.0f);
  u_xlat12 = (u_xlat12 * abs(u_xlat7.x));
  u_xlat16 = ((u_xlat16 * u_xlat2.x) + -(u_xlat12));
  u_xlat3.x = dot(in_NORMAL0, x_26.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat3.y = dot(in_NORMAL0, x_26.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat3.z = dot(in_NORMAL0, x_26.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat2.x = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  u_xlat3 = vec4f(((u_xlat2.xxx * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat2.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  u_xlat4 = (u_xlat1.xyz * u_xlat2.xxx);
  u_xlat2.x = dot(u_xlat3.xyz, u_xlat4);
  u_xlat16 = ((abs(u_xlat2.x) * u_xlat16) + u_xlat12);
  u_xlatb2 = (x_26.hlslcc_mtx4x4glstate_matrix_projection[3i].w == 0.0f);
  if (u_xlatb2) {
    x_402 = u_xlat16;
  } else {
    x_402 = u_xlat7.x;
  }
  u_xlat7.x = x_402;
  u_xlatb16 = (0.0f >= in_TEXCOORD0.w);
  u_xlat16 = select(0.0f, 1.0f, u_xlatb16);
  u_xlat2.x = (-(x_26.x_WeightNormal) + x_26.x_WeightBold);
  u_xlat16 = ((u_xlat16 * u_xlat2.x) + x_26.x_WeightNormal);
  u_xlat16 = ((u_xlat16 * 0.25f) + x_26.x_FaceDilate);
  u_xlat16 = (u_xlat16 * x_26.x_ScaleRatioA);
  u_xlat7.z = (u_xlat16 * 0.5f);
  let x_451 = u_xlat7.xz;
  vs_TEXCOORD1 = vec4f(vs_TEXCOORD1.x, x_451.x, vs_TEXCOORD1.z, x_451.y);
  u_xlat2.x = (0.5f / u_xlat7.x);
  u_xlat7.x = ((-(x_26.x_OutlineWidth) * x_26.x_ScaleRatioA) + 1.0f);
  u_xlat7.x = ((-(x_26.x_OutlineSoftness) * x_26.x_ScaleRatioA) + u_xlat7.x);
  u_xlat7.x = ((u_xlat7.x * 0.5f) + -(u_xlat2.x));
  vs_TEXCOORD1.x = ((-(u_xlat16) * 0.5f) + u_xlat7.x);
  u_xlat16 = ((-(u_xlat16) * 0.5f) + 0.5f);
  vs_TEXCOORD1.z = (u_xlat2.x + u_xlat16);
  u_xlat2 = max(x_26.x_ClipRect, vec4f(-20000000000.0f));
  u_xlat2 = min(u_xlat2, vec4f(20000000000.0f));
  u_xlat0 = vec3f((((u_xlat0.xy * vec2f(2.0f)) + -(u_xlat2.xy))).xy, u_xlat0.z);
  vs_TEXCOORD2 = vec4f(((-(u_xlat2.zw) + u_xlat0.xy)).xy, vs_TEXCOORD2.zw);
  u_xlat0 = vec3f(max(vec2f(x_26.x_MaskSoftnessX, x_26.x_MaskSoftnessY), vec2f(x_26.x_UIMaskSoftnessX, x_26.x_UIMaskSoftnessY)).xy, u_xlat0.z);
  u_xlat0 = vec3f((((u_xlat0.xy * x_551) + u_xlat10)).xy, u_xlat0.z);
  vs_TEXCOORD2 = vec4f(vs_TEXCOORD2.xy, ((x_551 / u_xlat0.xy)).xy);
  u_xlat0 = (u_xlat1.yyy * x_26.hlslcc_mtx4x4_EnvMatrix[1i].xyz);
  u_xlat0 = ((x_26.hlslcc_mtx4x4_EnvMatrix[0i].xyz * u_xlat1.xxx) + u_xlat0);
  vs_TEXCOORD3 = ((x_26.hlslcc_mtx4x4_EnvMatrix[2i].xyz * u_xlat1.zzz) + u_xlat0);
  vs_TEXCOORD5 = vec4f((((in_TEXCOORD1 * x_26.x_FaceTex_ST.xy) + x_26.x_FaceTex_ST.zw)).xy, vs_TEXCOORD5.zw);
  vs_TEXCOORD5 = vec4f(vs_TEXCOORD5.xy, (((in_TEXCOORD1 * x_26.x_OutlineTex_ST.xy) + x_26.x_OutlineTex_ST.zw)).xy);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_COLOR0_1 : vec4f,
  @location(1)
  vs_TEXCOORD0_1 : vec2f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(4)
  vs_TEXCOORD2_1 : vec4f,
  @location(5)
  vs_TEXCOORD3_1 : vec3f,
  @location(3)
  vs_TEXCOORD5_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(2) in_COLOR0_param : vec4f, @location(3) in_TEXCOORD0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(4) in_TEXCOORD1_param : vec2f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5);
}

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_Time : vec4f,
  /* @offset(16) */
  x_FaceUVSpeedX : f32,
  /* @offset(20) */
  x_FaceUVSpeedY : f32,
  /* @offset(32) */
  x_FaceColor : vec4f,
  /* @offset(48) */
  x_OutlineSoftness : f32,
  /* @offset(52) */
  x_OutlineUVSpeedX : f32,
  /* @offset(56) */
  x_OutlineUVSpeedY : f32,
  /* @offset(64) */
  x_OutlineColor : vec4f,
  /* @offset(80) */
  x_OutlineWidth : f32,
  /* @offset(84) */
  x_ScaleRatioA : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD1 : vec4f;

@group(1) @binding(0) var<uniform> x_68 : PGlobals;

var<private> vs_TEXCOORD5 : vec4f;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_OutlineTex : sampler;

var<private> vs_COLOR0 : vec4f;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat4 : f32;
  var u_xlatb4 : bool;
  var u_xlat8 : vec2f;
  var u_xlat12 : f32;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec3f;
  var u_xlat3 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_23 = vs_TEXCOORD0;
  let x_24 = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0.x = x_24.w;
  u_xlat4 = (u_xlat0.x + -(vs_TEXCOORD1.x));
  u_xlat0.x = (-(u_xlat0.x) + vs_TEXCOORD1.z);
  u_xlatb4 = (u_xlat4 < 0.0f);
  if (((select(0i, 1i, u_xlatb4) * -1i) != 0i)) {
    discard;
  }
  u_xlat4 = (x_68.x_OutlineWidth * x_68.x_ScaleRatioA);
  u_xlat4 = (u_xlat4 * vs_TEXCOORD1.y);
  u_xlat8.x = min(u_xlat4, 1.0f);
  u_xlat4 = (u_xlat4 * 0.5f);
  u_xlat8.x = sqrt(u_xlat8.x);
  u_xlat12 = ((u_xlat0.x * vs_TEXCOORD1.y) + u_xlat4);
  u_xlat12 = clamp(u_xlat12, 0.0f, 1.0f);
  u_xlat0.x = ((u_xlat0.x * vs_TEXCOORD1.y) + -(u_xlat4));
  u_xlat4 = (u_xlat8.x * u_xlat12);
  u_xlat8 = ((vec2f(x_68.x_OutlineUVSpeedX, x_68.x_OutlineUVSpeedY) * x_68.x_Time.yy) + vs_TEXCOORD5.zw);
  let x_140 = u_xlat8;
  let x_141 = textureSample(x_OutlineTex, sampler_OutlineTex, x_140);
  u_xlat1 = x_141;
  u_xlat1 = (u_xlat1 * x_68.x_OutlineColor);
  u_xlat1 = vec4f(((u_xlat1.www * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat2 = (vs_COLOR0.xyz * x_68.x_FaceColor.xyz);
  u_xlat8 = ((vec2f(x_68.x_FaceUVSpeedX, x_68.x_FaceUVSpeedY) * x_68.x_Time.yy) + vs_TEXCOORD5.xy);
  let x_184 = u_xlat8;
  let x_185 = textureSample(x_FaceTex, sampler_FaceTex, x_184);
  u_xlat3 = x_185;
  u_xlat2 = (u_xlat2 * u_xlat3.xyz);
  u_xlat3.w = (u_xlat3.w * x_68.x_FaceColor.w);
  u_xlat3 = vec4f(((u_xlat2 * u_xlat3.www)).xyz, u_xlat3.w);
  u_xlat1 = (u_xlat1 + -(u_xlat3));
  u_xlat1 = ((vec4f(u_xlat4) * u_xlat1) + u_xlat3);
  u_xlat4 = (x_68.x_OutlineSoftness * x_68.x_ScaleRatioA);
  u_xlat8.x = (u_xlat4 * vs_TEXCOORD1.y);
  u_xlat4 = ((u_xlat4 * vs_TEXCOORD1.y) + 1.0f);
  u_xlat0.x = ((u_xlat8.x * 0.5f) + u_xlat0.x);
  u_xlat0.x = (u_xlat0.x / u_xlat4);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0 = (u_xlat0.xxxx * u_xlat1);
  SV_Target0 = (u_xlat0 * vs_COLOR0.wwww);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2f, @location(2) vs_TEXCOORD1_param : vec4f, @location(3) vs_TEXCOORD5_param : vec4f, @location(0) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

