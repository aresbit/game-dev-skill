//Packages/com.unity.shadergraph/Editor/Resources/Shaders/FallbackError.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr,
  /* @offset(64) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_1,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(0) var<uniform> x_20 : VGlobals;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyyy * x_20.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat0 = ((x_20.hlslcc_mtx4x4unity_ObjectToWorld[0i] * in_POSITION0.xxxx) + u_xlat0);
  u_xlat0 = ((x_20.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_20.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat1 = (u_xlat0.yyyy * x_20.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_20.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_20.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = ((x_20.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat0.wwww) + u_xlat1);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

//Packages/com.unity.shadergraph/Editor/Resources/Shaders/FallbackError.shader
diagnostic(off, derivative_uniformity);

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  SV_Target0 = vec4f(1.0f, 0.0f, 1.0f, 1.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

