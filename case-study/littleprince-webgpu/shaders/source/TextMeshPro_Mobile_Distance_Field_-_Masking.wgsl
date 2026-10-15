//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-Mobile Masking.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 4u>;

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
  x_FaceColor : vec4f,
  /* @offset(304) */
  x_FaceDilate : f32,
  /* @offset(308) */
  x_OutlineSoftness : f32,
  /* @offset(320) */
  x_OutlineColor : vec4f,
  /* @offset(336) */
  x_OutlineWidth : f32,
  /* @offset(340) */
  x_WeightNormal : f32,
  /* @offset(344) */
  x_WeightBold : f32,
  /* @offset(348) */
  x_ScaleRatioA : f32,
  /* @offset(352) */
  x_VertexOffsetX : f32,
  /* @offset(356) */
  x_VertexOffsetY : f32,
  /* @offset(368) */
  x_ClipRect : vec4f,
  /* @offset(384) */
  x_MaskSoftnessX : f32,
  /* @offset(388) */
  x_MaskSoftnessY : f32,
  /* @offset(392) */
  x_GradientScale : f32,
  /* @offset(396) */
  x_ScaleX : f32,
  /* @offset(400) */
  x_ScaleY : f32,
  /* @offset(404) */
  x_PerspectiveFilter : f32,
  /* @offset(408) */
  x_Sharpness : f32,
  /* @offset(412) */
  x_UIMaskSoftnessX : f32,
  /* @offset(416) */
  x_UIMaskSoftnessY : f32,
  /* @offset(420) */
  x_UIVertexColorAlwaysGammaSpace : i32,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_25 : VGlobals;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> in_TEXCOORD0 : vec4f;

var<private> vs_COLOR1 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> vs_TEXCOORD0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> gl_Position : vec4f;

const x_610 = vec2f(0.25f);

fn main_1() {
  var u_xlat0 : vec2f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlatb4 : vec3<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_182 : f32;
  var x_194 : f32;
  var x_207 : f32;
  var x_224 : vec3f;
  var u_xlat4 : vec4f;
  var u_xlat10 : f32;
  var u_xlat15 : f32;
  var u_xlat11 : vec2f;
  var u_xlat16 : f32;
  var u_xlatb15 : bool;
  var u_xlatb0 : bool;
  var u_xlat5 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.xy + vec2f(x_25.x_VertexOffsetX, x_25.x_VertexOffsetY));
  u_xlat1 = (u_xlat0.yyyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat1 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat1);
  u_xlat2 = (u_xlat1 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat1 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz * in_POSITION0.www) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((-(u_xlat1.xyz) + x_25.x_WorldSpaceCameraPos)).xyz, u_xlat1.w);
  u_xlat3 = (u_xlat2.yyyy * x_25.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat3 = ((x_25.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat2.xxxx) + u_xlat3);
  u_xlat3 = ((x_25.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat2.zzzz) + u_xlat3);
  u_xlat2 = ((x_25.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat2.wwww) + u_xlat3);
  gl_Position = u_xlat2;
  u_xlat2 = vec4f((((in_COLOR0.xyz * vec3f(0.26588499546051025391f)) + vec3f(0.73658400774002075195f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((in_COLOR0.xyz * u_xlat2.xyz) + vec3f(-0.0098018404096364975f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((in_COLOR0.xyz * u_xlat2.xyz) + vec3f(0.00319697009399533272f))).xyz, u_xlat2.w);
  u_xlat3 = vec4f((((in_COLOR0.xyz * vec3f(0.08497100323438644409f)) + vec3f(-0.00016302900621667504f))).xyz, u_xlat3.w);
  u_xlatb4 = ((in_COLOR0.xyzx < vec4f(0.07254900038242340088f, 0.07254900038242340088f, 0.07254900038242340088f, 0.0f))).xyz;
  hlslcc_movcTemp = u_xlat2;
  if (u_xlatb4.x) {
    x_182 = u_xlat3.x;
  } else {
    x_182 = u_xlat2.x;
  }
  hlslcc_movcTemp.x = x_182;
  if (u_xlatb4.y) {
    x_194 = u_xlat3.y;
  } else {
    x_194 = u_xlat2.y;
  }
  hlslcc_movcTemp.y = x_194;
  if (u_xlatb4.z) {
    x_207 = u_xlat3.z;
  } else {
    x_207 = u_xlat2.z;
  }
  hlslcc_movcTemp.z = x_207;
  u_xlat2 = hlslcc_movcTemp;
  if ((x_25.x_UIVertexColorAlwaysGammaSpace != 0i)) {
    x_224 = u_xlat2.xyz;
  } else {
    x_224 = in_COLOR0.xyz;
  }
  u_xlat3 = vec4f(x_224.xyz, u_xlat3.w);
  u_xlat3.w = in_COLOR0.w;
  u_xlat3 = (u_xlat3 * x_25.x_FaceColor);
  u_xlat3 = vec4f(((u_xlat3.www * u_xlat3.xyz)).xyz, u_xlat3.w);
  vs_COLOR0 = u_xlat3;
  u_xlat4.w = (in_COLOR0.w * x_25.x_OutlineColor.w);
  u_xlat4 = vec4f(((u_xlat4.www * x_25.x_OutlineColor.xyz)).xyz, u_xlat4.w);
  u_xlat4 = (-(u_xlat3) + u_xlat4);
  u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat10 = inverseSqrt(u_xlat10);
  u_xlat1 = vec4f(((vec3f(u_xlat10) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat2.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat2.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat2.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat10 = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat10 = inverseSqrt(u_xlat10);
  u_xlat2 = vec4f(((vec3f(u_xlat10) * u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat10 = dot(u_xlat2.xyz, u_xlat1.xyz);
  u_xlat1 = vec4f(((x_25.x_ScreenParams.yy * x_25.hlslcc_mtx4x4glstate_matrix_projection[1i].xy)).xy, u_xlat1.zw);
  u_xlat1 = vec4f((((x_25.hlslcc_mtx4x4glstate_matrix_projection[0i].xy * x_25.x_ScreenParams.xx) + u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((abs(u_xlat1.xy) * vec2f(x_25.x_ScaleX, x_25.x_ScaleY))).xy, u_xlat1.zw);
  u_xlat1 = vec4f(((u_xlat2.ww / u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlat15 = dot(u_xlat1.xy, u_xlat1.xy);
  u_xlat15 = inverseSqrt(u_xlat15);
  u_xlat11.x = (abs(in_TEXCOORD0.w) * x_25.x_GradientScale);
  u_xlat16 = (x_25.x_Sharpness + 1.0f);
  u_xlat11.x = (u_xlat16 * u_xlat11.x);
  u_xlat16 = (u_xlat15 * u_xlat11.x);
  u_xlat2.x = (-(x_25.x_PerspectiveFilter) + 1.0f);
  u_xlat2.x = (abs(u_xlat16) * u_xlat2.x);
  u_xlat15 = ((u_xlat15 * u_xlat11.x) + -(u_xlat2.x));
  u_xlat10 = ((abs(u_xlat10) * u_xlat15) + u_xlat2.x);
  u_xlatb15 = (x_25.hlslcc_mtx4x4glstate_matrix_projection[3i].w == 0.0f);
  u_xlat10 = select(u_xlat16, u_xlat10, u_xlatb15);
  u_xlat15 = (x_25.x_OutlineSoftness * x_25.x_ScaleRatioA);
  u_xlat15 = ((u_xlat15 * u_xlat10) + 1.0f);
  u_xlat2.x = (u_xlat10 / u_xlat15);
  u_xlat10 = (x_25.x_OutlineWidth * x_25.x_ScaleRatioA);
  u_xlat10 = (u_xlat2.x * u_xlat10);
  u_xlat15 = min(u_xlat10, 1.0f);
  u_xlat15 = sqrt(u_xlat15);
  vs_COLOR1 = ((vec4f(u_xlat15) * u_xlat4) + u_xlat3);
  u_xlat3 = max(x_25.x_ClipRect, vec4f(-20000000000.0f));
  u_xlat3 = min(u_xlat3, vec4f(20000000000.0f));
  u_xlat11 = (u_xlat0 + -(u_xlat3.xy));
  u_xlat0 = ((u_xlat0 * vec2f(2.0f)) + -(u_xlat3.xy));
  vs_TEXCOORD2 = vec4f(((-(u_xlat3.zw) + u_xlat0)).xy, vs_TEXCOORD2.zw);
  u_xlat0 = (-(u_xlat3.xy) + u_xlat3.zw);
  vs_TEXCOORD0 = vec4f(vs_TEXCOORD0.xy, ((u_xlat11 / u_xlat0)).xy);
  vs_TEXCOORD0 = vec4f(in_TEXCOORD0.xy.xy, vs_TEXCOORD0.zw);
  u_xlatb0 = (0.0f >= in_TEXCOORD0.w);
  u_xlat0.x = select(0.0f, 1.0f, u_xlatb0);
  u_xlat5 = (-(x_25.x_WeightNormal) + x_25.x_WeightBold);
  u_xlat0.x = ((u_xlat0.x * u_xlat5) + x_25.x_WeightNormal);
  u_xlat0.x = ((u_xlat0.x * 0.25f) + x_25.x_FaceDilate);
  u_xlat0.x = (u_xlat0.x * x_25.x_ScaleRatioA);
  u_xlat0.x = ((-(u_xlat0.x) * 0.5f) + 0.5f);
  u_xlat2.w = ((u_xlat0.x * u_xlat2.x) + -0.5f);
  let x_577 = u_xlat2.xw;
  vs_TEXCOORD1 = vec4f(x_577.x, vs_TEXCOORD1.yz, x_577.y);
  vs_TEXCOORD1.y = ((-(u_xlat10) * 0.5f) + u_xlat2.w);
  vs_TEXCOORD1.z = ((u_xlat10 * 0.5f) + u_xlat2.w);
  u_xlat0 = max(vec2f(x_25.x_MaskSoftnessX, x_25.x_MaskSoftnessY), vec2f(x_25.x_UIMaskSoftnessX, x_25.x_UIMaskSoftnessY));
  u_xlat0 = ((u_xlat0 * x_610) + u_xlat1.xy);
  vs_TEXCOORD2 = vec4f(vs_TEXCOORD2.xy, ((x_610 / u_xlat0)).xy);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_COLOR0_1 : vec4f,
  @location(4)
  vs_COLOR1_1 : vec4f,
  @location(3)
  vs_TEXCOORD2_1 : vec4f,
  @location(1)
  vs_TEXCOORD0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(2) in_COLOR0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(3) in_TEXCOORD0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_COLOR1, vs_TEXCOORD2, vs_TEXCOORD0, vs_TEXCOORD1);
}

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-Mobile Masking.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ClipRect : vec4f,
  /* @offset(16) */
  x_MaskWipeControl : f32,
  /* @offset(20) */
  x_MaskEdgeSoftness : f32,
  /* @offset(32) */
  x_MaskEdgeColor : vec4f,
  /* @offset(48) */
  x_MaskInverse : i32,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

@group(0) @binding(1) var x_MaskTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MaskTex : sampler;

var<private> vs_TEXCOORD0 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat4 : vec3f;
  var u_xlat8 : f32;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = select(0.0f, 1.0f, (x_13.x_MaskInverse != 0i));
  let x_40 = vs_TEXCOORD0;
  let x_42 = textureSample(x_MaskTex, sampler_MaskTex, x_40.zw);
  u_xlat4.x = x_42.w;
  u_xlat0 = (-(u_xlat4.x) + u_xlat0);
  u_xlat4.x = (-(x_13.x_MaskWipeControl) + 1.0f);
  u_xlat0 = ((u_xlat4.x * x_13.x_MaskEdgeSoftness) + abs(u_xlat0));
  u_xlat0 = (u_xlat0 + -(x_13.x_MaskWipeControl));
  u_xlat0 = (u_xlat0 / x_13.x_MaskEdgeSoftness);
  u_xlat0 = clamp(u_xlat0, 0.0f, 1.0f);
  u_xlat4 = vec3f(((-(x_13.x_ClipRect.xy) + x_13.x_ClipRect.zw)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy + -(abs(vs_TEXCOORD2.xy)))).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy * vs_TEXCOORD2.zw)).xy, u_xlat4.z);
  u_xlat4 = vec3f(clamp(u_xlat4.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat4.z);
  u_xlat4.x = (u_xlat4.y * u_xlat4.x);
  let x_128 = vs_TEXCOORD0;
  let x_130 = textureSample(x_MainTex, sampler_MainTex, x_128.xy);
  u_xlat8 = x_130.w;
  u_xlat8 = ((u_xlat8 * vs_TEXCOORD1.x) + -(vs_TEXCOORD1.w));
  u_xlat8 = clamp(u_xlat8, 0.0f, 1.0f);
  u_xlat1 = (vec4f(u_xlat8) * vs_COLOR0);
  u_xlat2.w = (u_xlat4.x * u_xlat1.w);
  u_xlat3 = (u_xlat2.www * x_13.x_MaskEdgeColor.xyz);
  u_xlat4 = ((u_xlat1.xyz * u_xlat4.xxx) + -(u_xlat3));
  u_xlat2 = vec4f((((vec3f(u_xlat0) * u_xlat4) + u_xlat3)).xyz, u_xlat2.w);
  SV_Target0 = (vec4f(u_xlat0) * u_xlat2);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec4f, @location(3) vs_TEXCOORD2_param : vec4f, @location(2) vs_TEXCOORD1_param : vec4f, @location(0) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

