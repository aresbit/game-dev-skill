//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF SSD.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr,
  /* @offset(80) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_1,
  /* @offset(144) */
  x_FaceDilate : f32,
  /* @offset(160) */
  hlslcc_mtx4x4_EnvMatrix : Arr_2,
  /* @offset(224) */
  x_WeightNormal : f32,
  /* @offset(228) */
  x_WeightBold : f32,
  /* @offset(232) */
  x_ScaleRatioA : f32,
  /* @offset(236) */
  x_VertexOffsetX : f32,
  /* @offset(240) */
  x_VertexOffsetY : f32,
  /* @offset(256) */
  x_ClipRect : vec4f,
  /* @offset(272) */
  x_FaceTex_ST : vec4f,
  /* @offset(288) */
  x_OutlineTex_ST : vec4f,
  /* @offset(304) */
  x_UIVertexColorAlwaysGammaSpace : i32,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_24 : VGlobals;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> in_TEXCOORD0 : vec4f;

var<private> vs_TEXCOORD1 : f32;

var<private> vs_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD2 : vec2f;

var<private> vs_TEXCOORD3 : vec3f;

var<private> vs_TEXCOORD5 : vec4f;

var<private> in_TEXCOORD1 : vec2f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlatb4 : vec3<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_181 : f32;
  var x_193 : f32;
  var x_206 : f32;
  var x_223 : vec3f;
  var u_xlatb10 : bool;
  var u_xlat10 : f32;
  var u_xlat15 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec3f(((in_POSITION0.xy + vec2f(x_24.x_VertexOffsetX, x_24.x_VertexOffsetY))).xy, u_xlat0.z);
  u_xlat1 = (u_xlat0.yyyy * x_24.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat1 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat1);
  u_xlat2 = (u_xlat1 + x_24.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat1 = vec4f((((x_24.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz * in_POSITION0.www) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((-(u_xlat1.xyz) + x_24.x_WorldSpaceCameraPos)).xyz, u_xlat1.w);
  u_xlat3 = (u_xlat2.yyyy * x_24.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat3 = ((x_24.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat2.xxxx) + u_xlat3);
  u_xlat3 = ((x_24.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat2.zzzz) + u_xlat3);
  gl_Position = ((x_24.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat2.wwww) + u_xlat3);
  u_xlat2 = vec4f((((in_COLOR0.xyz * vec3f(0.26588499546051025391f)) + vec3f(0.73658400774002075195f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((in_COLOR0.xyz * u_xlat2.xyz) + vec3f(-0.0098018404096364975f))).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((in_COLOR0.xyz * u_xlat2.xyz) + vec3f(0.00319697009399533272f))).xyz, u_xlat2.w);
  u_xlat3 = vec4f((((in_COLOR0.xyz * vec3f(0.08497100323438644409f)) + vec3f(-0.00016302900621667504f))).xyz, u_xlat3.w);
  u_xlatb4 = ((in_COLOR0.xyzx < vec4f(0.07254900038242340088f, 0.07254900038242340088f, 0.07254900038242340088f, 0.0f))).xyz;
  hlslcc_movcTemp = u_xlat2;
  if (u_xlatb4.x) {
    x_181 = u_xlat3.x;
  } else {
    x_181 = u_xlat2.x;
  }
  hlslcc_movcTemp.x = x_181;
  if (u_xlatb4.y) {
    x_193 = u_xlat3.y;
  } else {
    x_193 = u_xlat2.y;
  }
  hlslcc_movcTemp.y = x_193;
  if (u_xlatb4.z) {
    x_206 = u_xlat3.z;
  } else {
    x_206 = u_xlat2.z;
  }
  hlslcc_movcTemp.z = x_206;
  u_xlat2 = hlslcc_movcTemp;
  if ((x_24.x_UIVertexColorAlwaysGammaSpace != 0i)) {
    x_223 = u_xlat2.xyz;
  } else {
    x_223 = in_COLOR0.xyz;
  }
  vs_COLOR0 = vec4f(x_223.xyz, vs_COLOR0.w);
  vs_COLOR0.w = in_COLOR0.w;
  u_xlatb10 = (0.0f >= in_TEXCOORD0.w);
  u_xlat10 = select(0.0f, 1.0f, u_xlatb10);
  u_xlat15 = (-(x_24.x_WeightNormal) + x_24.x_WeightBold);
  u_xlat10 = ((u_xlat10 * u_xlat15) + x_24.x_WeightNormal);
  u_xlat10 = ((u_xlat10 * 0.25f) + x_24.x_FaceDilate);
  u_xlat10 = (u_xlat10 * x_24.x_ScaleRatioA);
  vs_TEXCOORD1 = (u_xlat10 * 0.5f);
  vs_TEXCOORD0 = in_TEXCOORD0.xy;
  u_xlat2 = max(x_24.x_ClipRect, vec4f(-20000000000.0f));
  u_xlat2 = min(u_xlat2, vec4f(20000000000.0f));
  u_xlat0 = vec3f((((u_xlat0.xy * vec2f(2.0f)) + -(u_xlat2.xy))).xy, u_xlat0.z);
  vs_TEXCOORD2 = (-(u_xlat2.zw) + u_xlat0.xy);
  u_xlat0 = (u_xlat1.yyy * x_24.hlslcc_mtx4x4_EnvMatrix[1i].xyz);
  u_xlat0 = ((x_24.hlslcc_mtx4x4_EnvMatrix[0i].xyz * u_xlat1.xxx) + u_xlat0);
  vs_TEXCOORD3 = ((x_24.hlslcc_mtx4x4_EnvMatrix[2i].xyz * u_xlat1.zzz) + u_xlat0);
  vs_TEXCOORD5 = vec4f((((in_TEXCOORD1 * x_24.x_FaceTex_ST.xy) + x_24.x_FaceTex_ST.zw)).xy, vs_TEXCOORD5.zw);
  vs_TEXCOORD5 = vec4f(vs_TEXCOORD5.xy, (((in_TEXCOORD1 * x_24.x_OutlineTex_ST.xy) + x_24.x_OutlineTex_ST.zw)).xy);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : f32,
  @location(1)
  vs_TEXCOORD0_1 : vec2f,
  @location(4)
  vs_TEXCOORD2_1 : vec2f,
  @location(5)
  vs_TEXCOORD3_1 : vec3f,
  @location(3)
  vs_TEXCOORD5_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_COLOR0_param : vec4f, @location(2) in_TEXCOORD0_param : vec4f, @location(3) in_TEXCOORD1_param : vec2f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5);
}

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF SSD.shader
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
  /* @offset(88) */
  x_TextureHeight : f32,
  /* @offset(92) */
  x_GradientScale : f32,
  /* @offset(96) */
  x_Sharpness : f32,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD5 : vec4f;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_OutlineTex : sampler;

var<private> vs_COLOR0 : vec4f;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : f32;

var<private> vs_TEXCOORD0 : vec2f;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec3f;
  var u_xlat2 : vec4f;
  var u_xlat5 : f32;
  var u_xlat9 : f32;
  var u_xlat13 : f32;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f((((vec2f(x_12.x_OutlineUVSpeedX, x_12.x_OutlineUVSpeedY) * x_12.x_Time.yy) + vs_TEXCOORD5.zw)).xy, u_xlat0.zw);
  let x_46 = u_xlat0;
  let x_48 = textureSample(x_OutlineTex, sampler_OutlineTex, x_46.xy);
  u_xlat0 = x_48;
  u_xlat0 = (u_xlat0 * x_12.x_OutlineColor);
  u_xlat0 = vec4f(((u_xlat0.www * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1 = (vs_COLOR0.xyz * x_12.x_FaceColor.xyz);
  u_xlat2 = vec4f((((vec2f(x_12.x_FaceUVSpeedX, x_12.x_FaceUVSpeedY) * x_12.x_Time.yy) + vs_TEXCOORD5.xy)).xy, u_xlat2.zw);
  let x_94 = u_xlat2;
  let x_96 = textureSample(x_FaceTex, sampler_FaceTex, x_94.xy);
  u_xlat2 = x_96;
  u_xlat1 = (u_xlat1 * u_xlat2.xyz);
  u_xlat2.w = (u_xlat2.w * x_12.x_FaceColor.w);
  u_xlat2 = vec4f(((u_xlat1 * u_xlat2.www)).xyz, u_xlat2.w);
  u_xlat0 = (u_xlat0 + -(u_xlat2));
  u_xlat1.x = (-(vs_TEXCOORD1) + 0.5f);
  let x_133 = vs_TEXCOORD0.y;
  u_xlat5 = dpdxCoarse(x_133);
  let x_137 = vs_TEXCOORD0.y;
  u_xlat9 = dpdyCoarse(x_137);
  u_xlat5 = (abs(u_xlat9) + abs(u_xlat5));
  u_xlat5 = (u_xlat5 * x_12.x_TextureHeight);
  u_xlat5 = (u_xlat5 * 0.75f);
  u_xlat5 = (1.0f / u_xlat5);
  u_xlat5 = (u_xlat5 * x_12.x_GradientScale);
  u_xlat9 = (x_12.x_Sharpness + 1.0f);
  u_xlat5 = (u_xlat9 * u_xlat5);
  u_xlat9 = (0.5f / u_xlat5);
  u_xlat1.x = (u_xlat9 + u_xlat1.x);
  let x_179 = vs_TEXCOORD0;
  let x_180 = textureSample(x_MainTex, sampler_MainTex, x_179);
  u_xlat9 = x_180.w;
  u_xlat1.x = (-(u_xlat9) + u_xlat1.x);
  u_xlat9 = (x_12.x_OutlineWidth * x_12.x_ScaleRatioA);
  u_xlat9 = (u_xlat5 * u_xlat9);
  u_xlat13 = (u_xlat9 * 0.5f);
  u_xlat9 = min(u_xlat9, 1.0f);
  u_xlat9 = sqrt(u_xlat9);
  u_xlat3 = ((u_xlat1.x * u_xlat5) + u_xlat13);
  u_xlat3 = clamp(u_xlat3, 0.0f, 1.0f);
  u_xlat1.x = ((u_xlat1.x * u_xlat5) + -(u_xlat13));
  u_xlat9 = (u_xlat9 * u_xlat3);
  u_xlat0 = ((vec4f(u_xlat9) * u_xlat0) + u_xlat2);
  u_xlat9 = (x_12.x_OutlineSoftness * x_12.x_ScaleRatioA);
  u_xlat13 = (u_xlat5 * u_xlat9);
  u_xlat5 = ((u_xlat9 * u_xlat5) + 1.0f);
  u_xlat1.x = ((u_xlat13 * 0.5f) + u_xlat1.x);
  u_xlat1.x = (u_xlat1.x / u_xlat5);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = (-(u_xlat1.x) + 1.0f);
  u_xlat0 = (u_xlat0 * u_xlat1.xxxx);
  SV_Target0 = (u_xlat0 * vs_COLOR0.wwww);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(3) vs_TEXCOORD5_param : vec4f, @location(0) vs_COLOR0_param : vec4f, @location(2) vs_TEXCOORD1_param : f32, @location(1) vs_TEXCOORD0_param : vec2f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

