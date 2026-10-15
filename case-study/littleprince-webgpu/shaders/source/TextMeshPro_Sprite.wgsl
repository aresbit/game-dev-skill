//Assets/ThirdParty/TextMeshPro/Shaders/TMP_Sprite.shader
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
  x_Color : vec4f,
  /* @offset(224) */
  x_ClipRect : vec4f,
  /* @offset(240) */
  x_MainTex_ST : vec4f,
  /* @offset(256) */
  x_UIMaskSoftnessX : f32,
  /* @offset(260) */
  x_UIMaskSoftnessY : f32,
  /* @offset(264) */
  x_UIVertexColorAlwaysGammaSpace : i32,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(1) var<uniform> x_22 : VGlobals;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_TEXCOORD0 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> gl_Position : vec4f;

const x_264 = vec2f(0.25f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlatb2 : vec3<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_145 : f32;
  var x_157 : f32;
  var x_170 : f32;
  var x_187 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyyy * x_22.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_ObjectToWorld[0i] * in_POSITION0.xxxx) + u_xlat0);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_22.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat1 = (u_xlat0.yyyy * x_22.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_22.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_22.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  u_xlat0 = ((x_22.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat0.wwww) + u_xlat1);
  gl_Position = u_xlat0;
  u_xlat0 = vec4f((((in_COLOR0.xyz * vec3f(0.26588499546051025391f)) + vec3f(0.73658400774002075195f))).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((in_COLOR0.xyz * u_xlat0.xyz) + vec3f(-0.0098018404096364975f))).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((in_COLOR0.xyz * u_xlat0.xyz) + vec3f(0.00319697009399533272f))).xyz, u_xlat0.w);
  u_xlat1 = vec4f((((in_COLOR0.xyz * vec3f(0.08497100323438644409f)) + vec3f(-0.00016302900621667504f))).xyz, u_xlat1.w);
  u_xlatb2 = ((in_COLOR0.xyzx < vec4f(0.07254900038242340088f, 0.07254900038242340088f, 0.07254900038242340088f, 0.0f))).xyz;
  hlslcc_movcTemp = u_xlat0;
  if (u_xlatb2.x) {
    x_145 = u_xlat1.x;
  } else {
    x_145 = u_xlat0.x;
  }
  hlslcc_movcTemp.x = x_145;
  if (u_xlatb2.y) {
    x_157 = u_xlat1.y;
  } else {
    x_157 = u_xlat0.y;
  }
  hlslcc_movcTemp.y = x_157;
  if (u_xlatb2.z) {
    x_170 = u_xlat1.z;
  } else {
    x_170 = u_xlat0.z;
  }
  hlslcc_movcTemp.z = x_170;
  u_xlat0 = hlslcc_movcTemp;
  if ((x_22.x_UIVertexColorAlwaysGammaSpace != 0i)) {
    x_187 = u_xlat0.xyz;
  } else {
    x_187 = in_COLOR0.xyz;
  }
  u_xlat1 = vec4f(x_187.xyz, u_xlat1.w);
  u_xlat1.w = in_COLOR0.w;
  vs_COLOR0 = (u_xlat1 * x_22.x_Color);
  vs_TEXCOORD0 = ((in_TEXCOORD0 * x_22.x_MainTex_ST.xy) + x_22.x_MainTex_ST.zw);
  vs_TEXCOORD1 = in_POSITION0;
  u_xlat0 = vec4f(((x_22.x_ScreenParams.yy * x_22.hlslcc_mtx4x4glstate_matrix_projection[1i].xy)).xy, u_xlat0.zw);
  u_xlat0 = vec4f((((x_22.hlslcc_mtx4x4glstate_matrix_projection[0i].xy * x_22.x_ScreenParams.xx) + u_xlat0.xy)).xy, u_xlat0.zw);
  u_xlat0 = vec4f(((u_xlat0.ww / abs(u_xlat0.xy))).xy, u_xlat0.zw);
  u_xlat0 = vec4f((((vec2f(x_22.x_UIMaskSoftnessX, x_22.x_UIMaskSoftnessY) * x_264) + abs(u_xlat0.xy))).xy, u_xlat0.zw);
  vs_TEXCOORD2 = vec4f(vs_TEXCOORD2.xy, ((x_264 / u_xlat0.xy)).xy);
  u_xlat0 = max(x_22.x_ClipRect, vec4f(-20000000000.0f));
  u_xlat0 = min(u_xlat0, vec4f(20000000000.0f));
  u_xlat0 = vec4f((((in_POSITION0.xy * vec2f(2.0f)) + -(u_xlat0.xy))).xy, u_xlat0.zw);
  vs_TEXCOORD2 = vec4f(((-(u_xlat0.zw) + u_xlat0.xy)).xy, vs_TEXCOORD2.zw);
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
  @location(3)
  vs_TEXCOORD2_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_COLOR0_param : vec4f, @location(2) in_TEXCOORD0_param : vec2f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2);
}

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_Sprite.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_TextureSampleAdd : vec4f,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2f;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> SV_Target0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_23 = vs_TEXCOORD0;
  let x_24 = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  u_xlat0 = (u_xlat0 + x_28.x_TextureSampleAdd);
  SV_Target0 = (u_xlat0 * vs_COLOR0);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2f, @location(0) vs_COLOR0_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

