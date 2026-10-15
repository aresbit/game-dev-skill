//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-Mobile-2-Pass.shader
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
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(0) var<uniform> x_24 : VGlobals;

var<private> in_COLOR0 : vec4f;

var<private> vs_COLOR0 : vec4f;

var<private> vs_COLOR1 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

var<private> vs_TEXCOORD0 : vec4f;

var<private> in_TEXCOORD0 : vec4f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> gl_Position : vec4f;

const x_505 = vec2f(0.25f);

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat8 : vec2f;
  var u_xlat12 : f32;
  var u_xlat4 : vec2f;
  var u_xlat5 : f32;
  var u_xlat9 : f32;
  var u_xlatb12 : bool;
  var x_374 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.xy + vec2f(x_24.x_VertexOffsetX, x_24.x_VertexOffsetY))).xy, u_xlat0.zw);
  u_xlat1 = (u_xlat0.yyyy * x_24.hlslcc_mtx4x4unity_ObjectToWorld[1i]);
  u_xlat1 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_24.hlslcc_mtx4x4unity_ObjectToWorld[2i] * in_POSITION0.zzzz) + u_xlat1);
  u_xlat2 = (u_xlat1 + x_24.hlslcc_mtx4x4unity_ObjectToWorld[3i]);
  u_xlat1 = vec4f((((x_24.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz * in_POSITION0.www) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((-(u_xlat1.xyz) + x_24.x_WorldSpaceCameraPos)).xyz, u_xlat1.w);
  u_xlat3 = (u_xlat2.yyyy * x_24.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat3 = ((x_24.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat2.xxxx) + u_xlat3);
  u_xlat3 = ((x_24.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat2.zzzz) + u_xlat3);
  u_xlat2 = ((x_24.hlslcc_mtx4x4unity_MatrixVP[3i] * u_xlat2.wwww) + u_xlat3);
  gl_Position = u_xlat2;
  u_xlat3 = (in_COLOR0 * x_24.x_FaceColor);
  vs_COLOR0 = vec4f(((u_xlat3.www * u_xlat3.xyz)).xyz, vs_COLOR0.w);
  vs_COLOR0.w = u_xlat3.w;
  u_xlat8.x = (in_COLOR0.w * x_24.x_OutlineColor.w);
  vs_COLOR1 = vec4f(((u_xlat8.xxx * x_24.x_OutlineColor.xyz)).xyz, vs_COLOR1.w);
  vs_COLOR1.w = u_xlat8.x;
  u_xlat3 = max(x_24.x_ClipRect, vec4f(-20000000000.0f));
  u_xlat3 = min(u_xlat3, vec4f(20000000000.0f));
  u_xlat8 = (u_xlat0.xy + -(u_xlat3.xy));
  u_xlat0 = vec4f((((u_xlat0.xy * vec2f(2.0f)) + -(u_xlat3.xy))).xy, u_xlat0.zw);
  vs_TEXCOORD2 = vec4f(((-(u_xlat3.zw) + u_xlat0.xy)).xy, vs_TEXCOORD2.zw);
  u_xlat0 = vec4f(((-(u_xlat3.xy) + u_xlat3.zw)).xy, u_xlat0.zw);
  vs_TEXCOORD0 = vec4f(vs_TEXCOORD0.xy, ((u_xlat8 / u_xlat0.xy)).xy);
  vs_TEXCOORD0 = vec4f(in_TEXCOORD0.xy.xy, vs_TEXCOORD0.zw);
  u_xlat0.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * u_xlat1.xyz)).xyz, u_xlat0.w);
  u_xlat1.x = dot(in_NORMAL0, x_24.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat1.y = dot(in_NORMAL0, x_24.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat1.z = dot(in_NORMAL0, x_24.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat12 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat12 = inverseSqrt(u_xlat12);
  u_xlat1 = vec4f(((vec3f(u_xlat12) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
  u_xlat4 = (x_24.x_ScreenParams.yy * x_24.hlslcc_mtx4x4glstate_matrix_projection[1i].xy);
  u_xlat4 = ((x_24.hlslcc_mtx4x4glstate_matrix_projection[0i].xy * x_24.x_ScreenParams.xx) + u_xlat4);
  u_xlat4 = (abs(u_xlat4) * vec2f(x_24.x_ScaleX, x_24.x_ScaleY));
  u_xlat4 = (u_xlat2.ww / u_xlat4);
  u_xlat12 = dot(u_xlat4, u_xlat4);
  u_xlat12 = inverseSqrt(u_xlat12);
  u_xlat1.x = (abs(in_TEXCOORD0.w) * x_24.x_GradientScale);
  u_xlat5 = (x_24.x_Sharpness + 1.0f);
  u_xlat1.x = (u_xlat5 * u_xlat1.x);
  u_xlat5 = (u_xlat12 * u_xlat1.x);
  u_xlat9 = (-(x_24.x_PerspectiveFilter) + 1.0f);
  u_xlat9 = (u_xlat9 * abs(u_xlat5));
  u_xlat12 = ((u_xlat12 * u_xlat1.x) + -(u_xlat9));
  u_xlat0.x = ((abs(u_xlat0.x) * u_xlat12) + u_xlat9);
  u_xlatb12 = (x_24.hlslcc_mtx4x4glstate_matrix_projection[3i].w == 0.0f);
  if (u_xlatb12) {
    x_374 = u_xlat0.x;
  } else {
    x_374 = u_xlat5;
  }
  u_xlat0.x = x_374;
  u_xlat12 = (x_24.x_OutlineSoftness * x_24.x_ScaleRatioA);
  u_xlat12 = ((u_xlat12 * u_xlat0.x) + 1.0f);
  u_xlat0.x = (u_xlat0.x / u_xlat12);
  u_xlatb1 = (0.0f >= in_TEXCOORD0.w);
  u_xlat1.x = select(0.0f, 1.0f, u_xlatb1);
  u_xlat5 = (-(x_24.x_WeightNormal) + x_24.x_WeightBold);
  u_xlat1.x = ((u_xlat1.x * u_xlat5) + x_24.x_WeightNormal);
  u_xlat1.x = ((u_xlat1.x * 0.25f) + x_24.x_FaceDilate);
  u_xlat1.x = (u_xlat1.x * x_24.x_ScaleRatioA);
  u_xlat1.x = ((-(u_xlat1.x) * 0.5f) + 0.5f);
  u_xlat0.w = ((u_xlat1.x * u_xlat0.x) + -0.5f);
  let x_455 = u_xlat0.xw;
  vs_TEXCOORD1 = vec4f(x_455.x, vs_TEXCOORD1.yz, x_455.y);
  u_xlat1.x = (x_24.x_OutlineWidth * x_24.x_ScaleRatioA);
  u_xlat0.x = (u_xlat0.x * u_xlat1.x);
  vs_TEXCOORD1.y = ((-(u_xlat0.x) * 0.5f) + u_xlat0.w);
  vs_TEXCOORD1.z = ((u_xlat0.x * 0.5f) + u_xlat0.w);
  let x_500 = max(vec2f(x_24.x_MaskSoftnessX, x_24.x_MaskSoftnessY), vec2f(x_24.x_UIMaskSoftnessX, x_24.x_UIMaskSoftnessY));
  u_xlat0 = vec4f(x_500.x, u_xlat0.yz, x_500.y);
  u_xlat0 = vec4f((((u_xlat0.xw * x_505) + u_xlat4)).xy, u_xlat0.zw);
  vs_TEXCOORD2 = vec4f(vs_TEXCOORD2.xy, ((x_505 / u_xlat0.xy)).xy);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
  @location(0)
  vs_COLOR0_1 : vec4f,
  @location(1)
  vs_COLOR1_1 : vec4f,
  @location(4)
  vs_TEXCOORD2_1 : vec4f,
  @location(2)
  vs_TEXCOORD0_1 : vec4f,
  @location(3)
  vs_TEXCOORD1_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(2) in_COLOR0_param : vec4f, @location(3) in_TEXCOORD0_param : vec4f, @location(1) in_NORMAL0_param : vec3f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_COLOR1, vs_TEXCOORD2, vs_TEXCOORD0, vs_TEXCOORD1);
}

//Assets/ThirdParty/TextMeshPro/Shaders/TMP_SDF-Mobile-2-Pass.shader
diagnostic(off, derivative_uniformity);

var<private> SV_Target0 : vec4f;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  SV_Target0 = vec4f();
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



/* ================= variant ================= */

