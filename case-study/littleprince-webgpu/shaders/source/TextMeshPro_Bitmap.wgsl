//Assets/ThirdParty/TextMeshPro/Shaders/TMP_Bitmap.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_ScreenParams : vec4f,
  /* @offset(16) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr,
  /* @offset(80) */
  hlslcc_mtx4x4glstate_matrix_projection : Arr_1,
  /* @offset(144) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_2,
  /* @offset(208) */
  x_FaceTex_ST : vec4f,
  /* @offset(224) */
  x_FaceColor : vec4f,
  /* @offset(240) */
  x_VertexOffsetX : f32,
  /* @offset(244) */
  x_VertexOffsetY : f32,
  /* @offset(256) */
  x_ClipRect : vec4f,
  /* @offset(272) */
  x_MaskSoftnessX : f32,
  /* @offset(276) */
  x_MaskSoftnessY : f32,
  /* @offset(280) */
  x_UIMaskSoftnessX : f32,
  /* @offset(284) */
  x_UIMaskSoftnessY : f32,
  /* @offset(288) */
  x_UIVertexColorAlwaysGammaSpace : i32,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(0) var<uniform> x_32 : VGlobals;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD1 : vec2f;

var<private> in_TEXCOORD1 : vec2f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> gl_Position : vec4f;

const x_348 = vec2f(0.25f);

fn main_1() {
  var u_xlat0 : vec2f;
  var u_xlat8 : vec2f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_208 : f32;
  var x_220 : f32;
  var x_233 : f32;
  var x_250 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0.x = (in_POSITION0.w * 0.5f);
  u_xlat0 = (u_xlat0.xx / x_32.x_ScreenParams.xy);
  u_xlat8 = (in_POSITION0.xy + vec2f(x_32.x_VertexOffsetX, x_32.x_VertexOffsetY));
  u_xlat0 = (u_xlat0 + u_xlat8);
  u_xlat1 = (u_xlat0.yyyy * x_32.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat1 = ((x_32.hlslcc_mtx4x4unity_ObjectToWorld[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_32.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat1);
  u_xlat1 = (u_xlat1 + x_32.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat2 = (u_xlat1.yyyy * x_32.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat2 = ((x_32.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat1.xxxx) + u_xlat2);
  u_xlat2 = ((x_32.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat1.zzzz) + u_xlat2);
  u_xlat1 = ((x_32.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat1.wwww) + u_xlat2);
  u_xlat8 = (u_xlat1.xy / u_xlat1.ww);
  u_xlat1 = vec4f(((x_32.x_ScreenParams.xy * vec2f(0.5f))).xy, u_xlat1.zw);
  u_xlat8 = (u_xlat8 * u_xlat1.xy);
  u_xlat8 = round(u_xlat8);
  u_xlat8 = (u_xlat8 / u_xlat1.xy);
  gl_Position = vec4f(((u_xlat1.ww * u_xlat8)).xy, gl_Position.zw);
  gl_Position = vec4f(gl_Position.xy, u_xlat1.zw.xy);
  u_xlat1 = vec4f((((in_COLOR0.xyz * vec3f(0.26588499546051025391f)) + vec3f(0.73658400774002075195f))).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((in_COLOR0.xyz * u_xlat1.xyz) + vec3f(-0.0098018404096364975f))).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((in_COLOR0.xyz * u_xlat1.xyz) + vec3f(0.00319697009399533272f))).xyz, u_xlat1.w);
  u_xlat2 = vec4f((((in_COLOR0.xyz * vec3f(0.08497100323438644409f)) + vec3f(-0.00016302900621667504f))).xyz, u_xlat2.w);
  u_xlatb3 = ((in_COLOR0.xyzx < vec4f(0.07254900038242340088f, 0.07254900038242340088f, 0.07254900038242340088f, 0.0f))).xyz;
  hlslcc_movcTemp = u_xlat1;
  if (u_xlatb3.x) {
    x_208 = u_xlat2.x;
  } else {
    x_208 = u_xlat1.x;
  }
  hlslcc_movcTemp.x = x_208;
  if (u_xlatb3.y) {
    x_220 = u_xlat2.y;
  } else {
    x_220 = u_xlat1.y;
  }
  hlslcc_movcTemp.y = x_220;
  if (u_xlatb3.z) {
    x_233 = u_xlat2.z;
  } else {
    x_233 = u_xlat1.z;
  }
  hlslcc_movcTemp.z = x_233;
  u_xlat1 = hlslcc_movcTemp;
  if ((x_32.x_UIVertexColorAlwaysGammaSpace != 0i)) {
    x_250 = u_xlat1.xyz;
  } else {
    x_250 = in_COLOR0.xyz;
  }
  u_xlat2 = vec4f(x_250.xyz, u_xlat2.w);
  u_xlat2.w = in_COLOR0.w;
  vs_COLOR0 = (u_xlat2 * x_32.x_FaceColor);
  vs_TEXCOORD1 = ((in_TEXCOORD1 * x_32.x_FaceTex_ST.xy) + x_32.x_FaceTex_ST.zw);
  vs_TEXCOORD0 = in_TEXCOORD0.xy;
  u_xlat2 = max(x_32.x_ClipRect, vec4f(-20000000000.0f));
  u_xlat2 = min(u_xlat2, vec4f(20000000000.0f));
  u_xlat0 = ((u_xlat0 * vec2f(2.0f)) + -(u_xlat2.xy));
  vs_TEXCOORD2 = vec4f(((-(u_xlat2.zw) + u_xlat0)).xy, vs_TEXCOORD2.zw);
  u_xlat8.x = (x_32.x_ScreenParams.x * x_32.hlslcc_mtx4x4glstate_matrix_projection[0i].x);
  u_xlat8.y = (x_32.x_ScreenParams.y * x_32.hlslcc_mtx4x4glstate_matrix_projection[1i].y);
  u_xlat0 = (u_xlat1.ww / abs(u_xlat8));
  u_xlat8 = max(vec2f(x_32.x_MaskSoftnessX, x_32.x_MaskSoftnessY), vec2f(x_32.x_UIMaskSoftnessX, x_32.x_UIMaskSoftnessY));
  u_xlat0 = ((u_xlat8 * x_348) + u_xlat0);
  vs_TEXCOORD2 = vec4f(vs_TEXCOORD2.xy, ((x_348 / u_xlat0)).xy);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_COLOR0_1 : vec4f,
  @location(2)
  vs_TEXCOORD1_1 : vec2f,
  @location(1)
  vs_TEXCOORD0_1 : vec2f,
  @location(3)
  vs_TEXCOORD2_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_COLOR0_param : vec4f, @location(3) in_TEXCOORD1_param : vec2f, @location(2) in_TEXCOORD0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2);
}

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_Bitmap.shader
diagnostic(off, derivative_uniformity);

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2f;

var<private> SV_Target0 : vec4f;

var<private> vs_COLOR0 : vec4f;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_23 = vs_TEXCOORD1;
  let x_25 = textureSample(x_FaceTex, sampler_FaceTex, x_23);
  u_xlat0 = x_25.xyz;
  SV_Target0 = vec4f(((u_xlat0 * vs_COLOR0.xyz)).xyz, SV_Target0.w);
  let x_43 = vs_TEXCOORD0;
  let x_44 = textureSample(x_MainTex, sampler_MainTex, x_43);
  u_xlat0.x = x_44.w;
  SV_Target0.w = (u_xlat0.x * vs_COLOR0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec2f, @location(0) vs_COLOR0_param : vec4f, @location(1) vs_TEXCOORD0_param : vec2f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

