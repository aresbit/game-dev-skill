//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-Mobile SSD.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr,
  /* @offset(64) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_1,
  /* @offset(128) */
  x_FaceColor : vec4f,
  /* @offset(144) */
  x_FaceDilate : f32,
  /* @offset(160) */
  x_OutlineColor : vec4f,
  /* @offset(176) */
  x_OutlineWidth : f32,
  /* @offset(180) */
  x_WeightNormal : f32,
  /* @offset(184) */
  x_WeightBold : f32,
  /* @offset(188) */
  x_ScaleRatioA : f32,
  /* @offset(192) */
  x_VertexOffsetX : f32,
  /* @offset(196) */
  x_VertexOffsetY : f32,
  /* @offset(208) */
  x_ClipRect : vec4f,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_21 : VGlobals;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_COLOR1 : vec4f;

var<private> vs_TEXCOORD0 : vec4f;

var<private> in_TEXCOORD0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> vs_TEXCOORD2 : vec2f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec2f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat6 : vec2f;
  var u_xlatb0 : bool;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.xy + vec2f(x_21.x_VertexOffsetX, x_21.x_VertexOffsetY));
  u_xlat1 = (u_xlat0.yyyy * x_21.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat1 = ((x_21.hlslcc_mtx4x4unity_ObjectToWorld[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_21.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat1);
  u_xlat1 = (u_xlat1 + x_21.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat2 = (u_xlat1.yyyy * x_21.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat2 = ((x_21.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat1.xxxx) + u_xlat2);
  u_xlat2 = ((x_21.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat1.zzzz) + u_xlat2);
  gl_Position = ((x_21.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat1.wwww) + u_xlat2);
  u_xlat1 = (in_COLOR0 * x_21.x_FaceColor);
  vs_COLOR0 = vec4f(((u_xlat1.www * u_xlat1.xyz)).xyz, vs_COLOR0.w);
  vs_COLOR0.w = u_xlat1.w;
  u_xlat6.x = (in_COLOR0.w * x_21.x_OutlineColor.w);
  vs_COLOR1 = vec4f(((u_xlat6.xxx * x_21.x_OutlineColor.xyz)).xyz, vs_COLOR1.w);
  vs_COLOR1.w = u_xlat6.x;
  u_xlat1 = max(x_21.x_ClipRect, vec4f(-20000000000.0f));
  u_xlat1 = min(u_xlat1, vec4f(20000000000.0f));
  u_xlat0 = (u_xlat0 + -(u_xlat1.xy));
  u_xlat6 = (-(u_xlat1.xy) + u_xlat1.zw);
  vs_TEXCOORD0 = vec4f(vs_TEXCOORD0.xy, ((u_xlat0 / u_xlat6)).xy);
  vs_TEXCOORD0 = vec4f(in_TEXCOORD0.xy.xy, vs_TEXCOORD0.zw);
  u_xlatb0 = (0.0f >= in_TEXCOORD0.w);
  u_xlat0.x = select(0.0f, 1.0f, u_xlatb0);
  u_xlat3 = (-(x_21.x_WeightNormal) + x_21.x_WeightBold);
  u_xlat0.x = ((u_xlat0.x * u_xlat3) + x_21.x_WeightNormal);
  u_xlat0.x = ((u_xlat0.x * 0.25f) + x_21.x_FaceDilate);
  u_xlat0.x = (u_xlat0.x * x_21.x_ScaleRatioA);
  vs_TEXCOORD1.x = ((-(u_xlat0.x) * 0.5f) + 0.5f);
  u_xlat0.x = (x_21.x_OutlineWidth * x_21.x_ScaleRatioA);
  vs_TEXCOORD1.z = (u_xlat0.x * 0.5f);
  vs_TEXCOORD1 = vec4f(vs_TEXCOORD1.x, vec2f().x, vs_TEXCOORD1.z, vec2f().y);
  vs_TEXCOORD2 = vec2f();
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_COLOR0_1 : vec4f,
  @location(3)
  vs_COLOR1_1 : vec4f,
  @location(1)
  vs_TEXCOORD0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec4f,
  @location(4)
  vs_TEXCOORD2_1 : vec2f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_COLOR0_param : vec4f, @location(2) in_TEXCOORD0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_COLOR1, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2);
}

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-Mobile SSD.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_OutlineSoftness : f32,
  /* @offset(4) */
  x_ScaleRatioA : f32,
  /* @offset(8) */
  x_TextureHeight : f32,
  /* @offset(12) */
  x_GradientScale : f32,
  /* @offset(16) */
  x_Sharpness : f32,
}

var<private> vs_TEXCOORD0 : vec4f;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec4f;

var<private> SV_Target0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_16 = vs_TEXCOORD0.y;
  u_xlat0 = dpdxCoarse(x_16);
  let x_20 = vs_TEXCOORD0.y;
  u_xlat1 = dpdyCoarse(x_20);
  u_xlat0 = (abs(u_xlat1) + abs(u_xlat0));
  u_xlat0 = (u_xlat0 * x_30.x_TextureHeight);
  u_xlat0 = (u_xlat0 * 0.75f);
  u_xlat0 = (1.0f / u_xlat0);
  u_xlat0 = (u_xlat0 * x_30.x_GradientScale);
  u_xlat1 = (x_30.x_Sharpness + 1.0f);
  u_xlat0 = (u_xlat1 * u_xlat0);
  u_xlat1 = (x_30.x_OutlineSoftness * x_30.x_ScaleRatioA);
  u_xlat1 = ((u_xlat1 * u_xlat0) + 1.0f);
  u_xlat0 = (u_xlat0 / u_xlat1);
  let x_80 = vs_TEXCOORD0;
  let x_82 = textureSample(x_MainTex, sampler_MainTex, x_80.xy);
  u_xlat1 = x_82.w;
  u_xlat1 = (u_xlat1 + -(vs_TEXCOORD1.x));
  u_xlat0 = ((u_xlat1 * u_xlat0) + 0.5f);
  u_xlat0 = clamp(u_xlat0, 0.0f, 1.0f);
  SV_Target0 = (vec4f(u_xlat0) * vs_COLOR0);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec4f, @location(2) vs_TEXCOORD1_param : vec4f, @location(0) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

