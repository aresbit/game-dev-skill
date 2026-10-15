//Assets/Levels/Geography/Materials/Shaders/GeoDistant.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 2u>;

alias Arr_3 = array<vec4f, 4u>;

alias Arr_4 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr,
  /* @offset(64) */
  hlslcc_mtx4x4unity_WorldToObject : Arr_1,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  unity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_2,
  /* @offset(224) */
  Xhlslcc_UnusedXunity_ProbesOcclusion : vec4f,
  /* @offset(240) */
  Xhlslcc_UnusedXunity_SpecCube0_HDR : vec4f,
  /* @offset(256) */
  Xhlslcc_UnusedXunity_SpecCube1_HDR : vec4f,
  /* @offset(272) */
  Xhlslcc_UnusedXunity_SpecCube0_BoxMax : vec4f,
  /* @offset(288) */
  Xhlslcc_UnusedXunity_SpecCube0_BoxMin : vec4f,
  /* @offset(304) */
  Xhlslcc_UnusedXunity_SpecCube0_ProbePosition : vec4f,
  /* @offset(320) */
  Xhlslcc_UnusedXunity_SpecCube0_Rotation : vec4f,
  /* @offset(336) */
  Xhlslcc_UnusedXunity_SpecCube1_BoxMax : vec4f,
  /* @offset(352) */
  Xhlslcc_UnusedXunity_SpecCube1_BoxMin : vec4f,
  /* @offset(368) */
  Xhlslcc_UnusedXunity_SpecCube1_ProbePosition : vec4f,
  /* @offset(384) */
  Xhlslcc_UnusedXunity_SpecCube1_Rotation : vec4f,
  /* @offset(400) */
  Xhlslcc_UnusedXunity_LightmapST : vec4f,
  /* @offset(416) */
  Xhlslcc_UnusedXunity_DynamicLightmapST : vec4f,
  /* @offset(432) */
  Xhlslcc_UnusedXunity_SHAr : vec4f,
  /* @offset(448) */
  Xhlslcc_UnusedXunity_SHAg : vec4f,
  /* @offset(464) */
  Xhlslcc_UnusedXunity_SHAb : vec4f,
  /* @offset(480) */
  Xhlslcc_UnusedXunity_SHBr : vec4f,
  /* @offset(496) */
  Xhlslcc_UnusedXunity_SHBg : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedXunity_SHBb : vec4f,
  /* @offset(528) */
  Xhlslcc_UnusedXunity_SHC : vec4f,
  /* @offset(544) */
  Xhlslcc_UnusedXunity_RendererBounds_Min : vec4f,
  /* @offset(560) */
  Xhlslcc_UnusedXunity_RendererBounds_Max : vec4f,
  /* @offset(576) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_3,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_4,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_5 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4f,
  /* @offset(16) */
  Xhlslcc_UnusedX_BaseColor : vec4f,
  /* @offset(32) */
  Xhlslcc_UnusedX_Ambient : vec4f,
  /* @offset(48) */
  Xhlslcc_UnusedX_HazeColor : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_HorizonColor : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_SunHorizonColor : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_BelowColor : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_HazeWarm : vec4f,
  /* @offset(128) */
  Xhlslcc_UnusedX_CloudColor : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedX_BumpScale : f32,
  /* @offset(148) */
  Xhlslcc_UnusedX_Cutoff : f32,
  /* @offset(152) */
  Xhlslcc_UnusedX_Lit : f32,
  /* @offset(156) */
  Xhlslcc_UnusedX_Wrap : f32,
  /* @offset(160) */
  Xhlslcc_UnusedX_SunStrength : f32,
  /* @offset(164) */
  Xhlslcc_UnusedX_UnlitBrightness : f32,
  /* @offset(168) */
  Xhlslcc_UnusedX_HazeDistance : f32,
  /* @offset(172) */
  Xhlslcc_UnusedX_HazeMax : f32,
  /* @offset(176) */
  Xhlslcc_UnusedX_HorizonWarmth : f32,
  /* @offset(180) */
  Xhlslcc_UnusedX_FarDistance : f32,
  /* @offset(184) */
  Xhlslcc_UnusedX_Cull : f32,
  /* @offset(188) */
  Xhlslcc_UnusedX_CloudTop : f32,
  /* @offset(192) */
  Xhlslcc_UnusedX_CloudFogRange : f32,
  /* @offset(196) */
  Xhlslcc_UnusedX_AlphaToMask : f32,
  /* @offset(200) */
  Xhlslcc_UnusedX_Translucency : f32,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(3) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_64 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> in_NORMAL0 : vec3f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> vs_TEXCOORD2 : vec2f;

var<private> in_TEXCOORD0 : vec2f;

@group(1) @binding(1) var<uniform> x_140 : UnityPerMaterial;

var<private> in_TANGENT0 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat1 : vec4f;
  var u_xlat6 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0);
  u_xlat0 = (u_xlat0 + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz);
  u_xlat1 = (u_xlat0.yyyy * x_64.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_64.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_64.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0;
  gl_Position = (u_xlat1 + x_64.hlslcc_mtx4x4unity_MatrixVP[3i]);
  u_xlat0.x = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[0i].xyz);
  u_xlat0.y = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[1i].xyz);
  u_xlat0.z = dot(in_NORMAL0, x_25.hlslcc_mtx4x4unity_WorldToObject[2i].xyz);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD1 = (vec3f(u_xlat6) * u_xlat0);
  vs_TEXCOORD2 = ((in_TEXCOORD0 * x_140.x_BaseMap_ST.xy) + x_140.x_BaseMap_ST.zw);
  u_xlat0 = (in_TANGENT0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_TANGENT0.xxx) + u_xlat0);
  u_xlat0 = ((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_TANGENT0.zzz) + u_xlat0);
  u_xlat6 = dot(u_xlat0, u_xlat0);
  u_xlat6 = max(u_xlat6, 1.17549435e-38f);
  u_xlat6 = inverseSqrt(u_xlat6);
  vs_TEXCOORD3 = vec4f(((vec3f(u_xlat6) * u_xlat0)).xyz, vs_TEXCOORD3.w);
  u_xlatb0 = (x_25.unity_WorldTransformParams.w >= 0.0f);
  u_xlat0.x = select(-1.0f, 1.0f, u_xlatb0);
  vs_TEXCOORD3.w = (u_xlat0.x * in_TANGENT0.w);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec3f,
  @location(2)
  vs_TEXCOORD2_1 : vec2f,
  @location(3)
  vs_TEXCOORD3_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f, @location(1) in_NORMAL0_param : vec3f, @location(3) in_TEXCOORD0_param : vec2f, @location(2) in_TANGENT0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

//Assets/Levels/Geography/Materials/Shaders/GeoDistant.shader
diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2f,
  /* @offset(16) */
  x_MainLightPosition : vec4f,
  /* @offset(32) */
  x_MainLightColor : vec4f,
  /* @offset(48) */
  x_Time : vec4f,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(80) */
  x_GeoCloudWind : vec4f,
  /* @offset(96) */
  x_GeoCloudShadow : vec4f,
  /* @offset(112) */
  x_GeoCloudCentre : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Xhlslcc_UnusedX_BaseMap_ST : vec4f,
  /* @offset(16) */
  x_BaseColor : vec4f,
  /* @offset(32) */
  x_Ambient : vec4f,
  /* @offset(48) */
  x_HazeColor : vec4f,
  /* @offset(64) */
  x_HorizonColor : vec4f,
  /* @offset(80) */
  x_SunHorizonColor : vec4f,
  /* @offset(96) */
  x_BelowColor : vec4f,
  /* @offset(112) */
  x_HazeWarm : vec4f,
  /* @offset(128) */
  x_CloudColor : vec4f,
  /* @offset(144) */
  x_BumpScale : f32,
  /* @offset(148) */
  x_Cutoff : f32,
  /* @offset(152) */
  x_Lit : f32,
  /* @offset(156) */
  x_Wrap : f32,
  /* @offset(160) */
  x_SunStrength : f32,
  /* @offset(164) */
  x_UnlitBrightness : f32,
  /* @offset(168) */
  x_HazeDistance : f32,
  /* @offset(172) */
  x_HazeMax : f32,
  /* @offset(176) */
  x_HorizonWarmth : f32,
  /* @offset(180) */
  x_FarDistance : f32,
  /* @offset(184) */
  Xhlslcc_UnusedX_Cull : f32,
  /* @offset(188) */
  x_CloudTop : f32,
  /* @offset(192) */
  x_CloudFogRange : f32,
  /* @offset(196) */
  x_AlphaToMask : f32,
  /* @offset(200) */
  x_Translucency : f32,
}

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD2 : vec2f;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(1) var<uniform> x_40 : UnityPerMaterial;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : vec3f;

var<private> gl_FrontFacing : bool;

var<private> vs_TEXCOORD3 : vec4f;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD0 : vec3f;

@group(0) @binding(0) var x_GeoCloudNoise : texture_2d<f32>;

@group(0) @binding(3) var sampler_GeoCloudNoise : sampler;

var<private> gl_FragCoord : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat5 : vec2f;
  var u_xlatb5 : bool;
  var u_xlati10 : i32;
  var u_xlati16 : i32;
  var u_xlati2 : i32;
  var u_xlat15 : f32;
  var u_xlat7 : f32;
  var u_xlatb7 : bool;
  var u_xlatb15 : bool;
  var u_xlati15 : i32;
  var x_153 : f32;
  var x_164 : f32;
  var u_xlat2 : vec3f;
  var u_xlat3 : vec3f;
  var u_xlat4 : vec3f;
  var u_xlat16 : f32;
  var u_xlat10 : vec2f;
  var u_xlat17 : f32;
  var u_xlat11 : f32;
  var u_xlat6 : f32;
  var u_xlat12 : f32;
  var u_xlatb6 : bool;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_23 = vs_TEXCOORD2;
  let x_34 = x_27.x_GlobalMipBias.x;
  let x_35 = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  u_xlat1 = (u_xlat0 * x_40.x_BaseColor);
  let x_49 = u_xlat1.w;
  u_xlat0.x = dpdxCoarse(x_49);
  let x_55 = u_xlat1.w;
  u_xlat5.x = dpdyCoarse(x_55);
  u_xlat0.x = (abs(u_xlat5.x) + abs(u_xlat0.x));
  u_xlat0.x = max(u_xlat0.x, 0.00009999999747378752f);
  u_xlatb5 = (0.0f < x_40.x_Cutoff);
  u_xlati10 = bitcast<i32>(select(0u, 4294967295u, (0.5f < x_40.x_AlphaToMask)));
  u_xlati16 = ~(u_xlati10);
  u_xlati2 = select(0i, u_xlati10, u_xlatb5);
  u_xlat15 = ((u_xlat0.w * x_40.x_BaseColor.w) + -(x_40.x_Cutoff));
  u_xlat0.x = (u_xlat15 / u_xlat0.x);
  u_xlat0.x = (u_xlat0.x + 0.5f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat7 = (u_xlat0.x + -0.00999999977648258209f);
  u_xlatb7 = (u_xlat7 < 0.0f);
  u_xlati2 = select(0i, u_xlati2, u_xlatb7);
  if ((u_xlati2 != 0i)) {
    discard;
  }
  u_xlati16 = select(0i, u_xlati16, u_xlatb5);
  u_xlatb15 = (u_xlat15 < 0.0f);
  u_xlati15 = select(0i, u_xlati16, u_xlatb15);
  if ((u_xlati15 != 0i)) {
    discard;
  }
  if ((u_xlati10 != 0i)) {
    x_153 = u_xlat0.x;
  } else {
    x_153 = 1.0f;
  }
  u_xlat0.x = x_153;
  if (u_xlatb5) {
    x_164 = u_xlat0.x;
  } else {
    x_164 = 1.0f;
  }
  SV_Target0.w = x_164;
  u_xlat0.x = dot(vs_TEXCOORD1, vs_TEXCOORD1);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat0 = vec4f(((u_xlat0.xxx * vs_TEXCOORD1)).xyz, u_xlat0.w);
  u_xlat15 = select(-1.0f, 1.0f, (select(0u, 4294967295u, gl_FrontFacing) != 0u));
  u_xlat0 = vec4f(((vec3f(u_xlat15) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat15 = dot(u_xlat0.xyz, vs_TEXCOORD3.xyz);
  u_xlat2 = ((-(u_xlat0.xyz) * vec3f(u_xlat15)) + vs_TEXCOORD3.xyz);
  u_xlat2 = (u_xlat2 + vec3f(0.00000999999974737875f));
  u_xlat15 = dot(u_xlat2, u_xlat2);
  u_xlat15 = inverseSqrt(u_xlat15);
  u_xlat2 = (vec3f(u_xlat15) * u_xlat2);
  u_xlat3 = (u_xlat0.zxy * u_xlat2.yzx);
  u_xlat3 = ((u_xlat0.yzx * u_xlat2.zxy) + -(u_xlat3));
  u_xlatb15 = (vs_TEXCOORD3.w < 0.0f);
  u_xlat15 = select(1.0f, -1.0f, u_xlatb15);
  u_xlat3 = (vec3f(u_xlat15) * u_xlat3);
  let x_264 = vs_TEXCOORD2;
  let x_266 = x_27.x_GlobalMipBias.x;
  let x_267 = textureSampleBias(x_BumpMap, sampler_BumpMap, x_264, x_266);
  u_xlat4 = x_267.xyw;
  u_xlat4.x = (u_xlat4.x * u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * vec2f(2.0f)) + vec2f(-1.0f))).xy, u_xlat4.z);
  u_xlat15 = dot(u_xlat4.xy, u_xlat4.xy);
  u_xlat15 = min(u_xlat15, 1.0f);
  u_xlat15 = (-(u_xlat15) + 1.0f);
  u_xlat15 = sqrt(u_xlat15);
  u_xlat15 = max(u_xlat15, 0.0000000000000001f);
  u_xlat4 = vec3f(((u_xlat4.xy * vec2f(x_40.x_BumpScale))).xy, u_xlat4.z);
  u_xlat3 = (u_xlat3 * u_xlat4.yyy);
  u_xlat2 = ((u_xlat2 * u_xlat4.xxx) + u_xlat3);
  u_xlat0 = vec4f((((u_xlat0.xyz * vec3f(u_xlat15)) + u_xlat2)).xyz, u_xlat0.w);
  u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
  u_xlat15 = inverseSqrt(u_xlat15);
  u_xlat0 = vec4f(((vec3f(u_xlat15) * u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat15 = dot(u_xlat0.xyz, x_27.x_MainLightPosition.xyz);
  u_xlat15 = (u_xlat15 + x_40.x_Wrap);
  u_xlat16 = (x_40.x_Wrap + 1.0f);
  u_xlat15 = (u_xlat15 / u_xlat16);
  u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
  u_xlat0.x = dot(-(u_xlat0.xyz), x_27.x_MainLightPosition.xyz);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat0.x = (u_xlat0.x * x_40.x_Translucency);
  u_xlat0.x = max(u_xlat0.x, u_xlat15);
  u_xlatb5 = (0.0f < x_27.x_GeoCloudShadow.x);
  if (u_xlatb5) {
    u_xlat5.x = max(x_27.x_MainLightPosition.y, 0.20000000298023223877f);
    u_xlat5 = (x_27.x_MainLightPosition.xz / u_xlat5.xx);
    u_xlat15 = (-(vs_TEXCOORD0.y) + 450.0f);
    u_xlat5 = ((u_xlat5 * vec2f(u_xlat15)) + vs_TEXCOORD0.xz);
    u_xlat15 = (x_27.x_Time.y + x_27.x_GeoCloudCentre.w);
    u_xlat2 = vec3f(((vec2f(u_xlat15) * x_27.x_GeoCloudWind.xy)).xy, u_xlat2.z);
    u_xlat5 = ((-(u_xlat2.xy) * vec2f(1.29999995231628417969f)) + u_xlat5);
    u_xlat5 = (u_xlat5 / x_27.x_GeoCloudShadow.yy);
    u_xlat5.x = textureSampleLevel(x_GeoCloudNoise, sampler_GeoCloudNoise, u_xlat5, 0.0f).x;
    u_xlat10.x = (-(x_27.x_GeoCloudShadow.z) + 1.0f);
    u_xlat5.x = (-(u_xlat10.x) + u_xlat5.x);
    u_xlat5.x = (u_xlat5.x * 6.25f);
    u_xlat5.x = clamp(u_xlat5.x, 0.0f, 1.0f);
    u_xlat10.x = ((u_xlat5.x * -2.0f) + 3.0f);
    u_xlat5.x = (u_xlat5.x * u_xlat5.x);
    u_xlat5.x = (u_xlat5.x * u_xlat10.x);
    u_xlat10 = (vs_TEXCOORD0.xz + -(x_27.x_GeoCloudCentre.xy));
    u_xlat10.x = dot(u_xlat10, u_xlat10);
    u_xlat10.x = sqrt(u_xlat10.x);
    u_xlat15 = (x_27.x_GeoCloudShadow.w * 0.79999995231628417969f);
    u_xlat10.x = (u_xlat10.x + -(x_27.x_GeoCloudShadow.w));
    u_xlat15 = (1.0f / u_xlat15);
    u_xlat10.x = (u_xlat15 * u_xlat10.x);
    u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
    u_xlat15 = ((u_xlat10.x * -2.0f) + 3.0f);
    u_xlat10.x = (u_xlat10.x * u_xlat10.x);
    u_xlat10.x = (u_xlat10.x * u_xlat15);
    u_xlat5.x = (u_xlat5.x * x_27.x_GeoCloudShadow.x);
    u_xlat5.x = ((-(u_xlat5.x) * u_xlat10.x) + 1.0f);
  } else {
    u_xlat5.x = 1.0f;
  }
  u_xlat2 = (x_27.x_MainLightColor.xyz * vec3f(x_40.x_SunStrength));
  let x_577 = (u_xlat0.xxx * u_xlat2);
  u_xlat0 = vec4f(x_577.x, u_xlat0.y, x_577.yz);
  let x_588 = ((u_xlat0.xzw * u_xlat5.xxx) + x_40.x_Ambient.xyz);
  u_xlat0 = vec4f(x_588.x, u_xlat0.y, x_588.yz);
  let x_600 = vec3f(x_40.x_UnlitBrightness, x_40.x_UnlitBrightness, x_40.x_UnlitBrightness);
  u_xlat2 = (u_xlat1.xyz * vec3f(x_600.x, x_600.y, x_600.z));
  u_xlat5.x = (-(u_xlat5.x) + 1.0f);
  u_xlat3 = ((-(u_xlat5.xxx) * vec3f(0.40000000596046447754f, 0.34000000357627868652f, 0.24000000953674316406f)) + vec3f(1.0f));
  u_xlat2 = (u_xlat2 * u_xlat3);
  u_xlat0 = vec4f((((u_xlat1.xyz * u_xlat0.xzw) + -(u_xlat2))).xyz, u_xlat0.w);
  let x_641 = vec3f(x_40.x_Lit, x_40.x_Lit, x_40.x_Lit);
  u_xlat0 = vec4f((((vec3f(x_641.x, x_641.y, x_641.z) * u_xlat0.xyz) + u_xlat2)).xyz, u_xlat0.w);
  u_xlat1 = vec4f(((vs_TEXCOORD0 + -(x_27.x_WorldSpaceCameraPos))).xyz, u_xlat1.w);
  u_xlat15 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat15 = sqrt(u_xlat15);
  u_xlat16 = max(u_xlat15, 0.00100000004749745131f);
  u_xlat1 = vec4f(((u_xlat1.xyz / vec3f(u_xlat16))).xyz, u_xlat1.w);
  u_xlat16 = (x_27.x_Time.y + x_27.x_GeoCloudCentre.w);
  u_xlat16 = (u_xlat16 * x_27.x_GeoCloudWind.z);
  u_xlat2.x = dot(vs_TEXCOORD0.xz, vec2f(0.0043000001460313797f, 0.002099999925121665f));
  u_xlat2.x = ((u_xlat16 * 0.08900000154972076416f) + u_xlat2.x);
  u_xlat2.x = sin(u_xlat2.x);
  u_xlat7 = dot(vs_TEXCOORD0.xz, vec2f(-0.00170000002253800631f, 0.00350000010803341866f));
  u_xlat1.w = ((-(u_xlat16) * 0.05700000002980232239f) + u_xlat7);
  let x_722 = (u_xlat1.xzw + vec3f(0.00000999999974737875f, 0.00000999999974737875f, 1.29999995231628417969f));
  u_xlat1 = vec4f(x_722.x, u_xlat1.y, x_722.yz);
  u_xlat16 = sin(u_xlat1.w);
  u_xlat16 = (u_xlat16 * u_xlat2.x);
  u_xlat16 = (u_xlat16 * 0.40000000596046447754f);
  u_xlat16 = ((u_xlat2.x * 0.60000002384185791016f) + u_xlat16);
  u_xlat16 = ((u_xlat16 * x_27.x_GeoCloudWind.w) + x_40.x_CloudTop);
  u_xlat2.x = (u_xlat16 + x_40.x_CloudFogRange);
  u_xlat16 = (u_xlat16 + -4.0f);
  u_xlat16 = (-(u_xlat2.x) + u_xlat16);
  u_xlat2.x = (-(u_xlat2.x) + vs_TEXCOORD0.y);
  u_xlat16 = (1.0f / u_xlat16);
  u_xlat16 = (u_xlat16 * u_xlat2.x);
  u_xlat16 = clamp(u_xlat16, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat16 * -2.0f) + 3.0f);
  u_xlat16 = (u_xlat16 * u_xlat16);
  u_xlat16 = (u_xlat16 * u_xlat2.x);
  u_xlat2 = ((x_27.x_MainLightColor.xyz * vec3f(0.30000001192092895508f)) + vec3f(0.75f));
  u_xlat17 = (u_xlat16 * u_xlat16);
  u_xlat16 = ((-(u_xlat16) * 2.0f) + 3.0f);
  u_xlat16 = (u_xlat16 * u_xlat17);
  u_xlat2 = ((x_40.x_CloudColor.xyz * u_xlat2) + -(u_xlat0.xyz));
  u_xlat0 = vec4f((((vec3f(u_xlat16) * u_xlat2) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat16 = dot(u_xlat1.xz, u_xlat1.xz);
  u_xlat16 = inverseSqrt(u_xlat16);
  let x_838 = (vec2f(u_xlat16) * u_xlat1.xz);
  u_xlat1 = vec4f(x_838.x, u_xlat1.y, x_838.y, u_xlat1.w);
  u_xlat2 = vec3f(((x_27.x_MainLightPosition.xz + vec2f(0.00000999999974737875f))).xy, u_xlat2.z);
  u_xlat16 = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat16 = inverseSqrt(u_xlat16);
  u_xlat2 = vec3f(((vec2f(u_xlat16) * u_xlat2.xy)).xy, u_xlat2.z);
  u_xlat1.x = dot(u_xlat1.xz, u_xlat2.xy);
  u_xlat1.x = ((u_xlat1.x * 0.5f) + 0.5f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat11 = (u_xlat1.x * u_xlat1.x);
  u_xlat11 = (u_xlat11 * u_xlat1.x);
  u_xlat2 = (-(x_40.x_HazeColor.xyz) + x_40.x_HazeWarm.xyz);
  u_xlat2 = ((vec3f(u_xlat11) * u_xlat2) + x_40.x_HazeColor.xyz);
  u_xlat3 = ((x_27.x_MainLightColor.xyz * vec3f(0.40000000596046447754f)) + vec3f(0.60000002384185791016f));
  u_xlat11 = (-(u_xlat15) / x_40.x_HazeDistance);
  u_xlat11 = (u_xlat11 * 1.44269502162933349609f);
  u_xlat11 = exp2(u_xlat11);
  u_xlat11 = (-(u_xlat11) + 1.0f);
  u_xlat11 = (u_xlat11 * x_40.x_HazeMax);
  u_xlat2 = ((u_xlat2 * u_xlat3) + -(u_xlat0.xyz));
  u_xlat0 = vec4f((((vec3f(u_xlat11) * u_xlat2) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * x_40.x_HorizonWarmth);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat2 = (-(x_40.x_HorizonColor.xyz) + x_40.x_SunHorizonColor.xyz);
  let x_975 = ((u_xlat1.xxx * u_xlat2) + x_40.x_HorizonColor.xyz);
  u_xlat1 = vec4f(x_975.x, u_xlat1.y, x_975.yz);
  u_xlat6 = max(u_xlat1.y, -1.0f);
  u_xlat6 = min(u_xlat6, 1.0f);
  u_xlat2.x = (-(abs(u_xlat6)) + 1.0f);
  u_xlat2.x = sqrt(u_xlat2.x);
  u_xlat7 = ((abs(u_xlat6) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat7 = ((u_xlat7 * abs(u_xlat6)) + -0.21211439371109008789f);
  u_xlat7 = ((u_xlat7 * abs(u_xlat6)) + 1.57072877883911132812f);
  u_xlat12 = (u_xlat2.x * u_xlat7);
  u_xlat12 = ((u_xlat12 * -2.0f) + 3.14159274101257324219f);
  u_xlatb6 = (u_xlat6 < -(u_xlat6));
  u_xlat6 = select(0.0f, u_xlat12, u_xlatb6);
  u_xlat6 = ((u_xlat7 * u_xlat2.x) + u_xlat6);
  u_xlat6 = (-(u_xlat6) + 1.57079637050628662109f);
  u_xlat2 = (-(u_xlat1.xzw) + x_40.x_BelowColor.xyz);
  u_xlat2 = (u_xlat2 * vec3f(0.64999997615814208984f));
  u_xlat6 = ((u_xlat6 * 57.295780181884765625f) + -0.20000000298023223877f);
  u_xlat6 = (u_xlat6 * -0.37037035822868347168f);
  u_xlat6 = clamp(u_xlat6, 0.0f, 1.0f);
  u_xlat17 = ((u_xlat6 * -2.0f) + 3.0f);
  u_xlat6 = (u_xlat6 * u_xlat6);
  u_xlat6 = (u_xlat6 * u_xlat17);
  u_xlat1 = vec4f((((vec3f(u_xlat6) * u_xlat2) + u_xlat1.xzw)).xyz, u_xlat1.w);
  u_xlat15 = (u_xlat15 / x_40.x_FarDistance);
  u_xlat15 = clamp(u_xlat15, 0.0f, 1.0f);
  u_xlat15 = (u_xlat15 * 0.64999997615814208984f);
  u_xlat1 = vec4f(((-(u_xlat0.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  SV_Target0 = vec4f((((vec3f(u_xlat15) * u_xlat1.xyz) + u_xlat0.xyz)).xyz, SV_Target0.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec2f, @location(1) vs_TEXCOORD1_param : vec3f, @builtin(front_facing) gl_FrontFacing_param : bool, @location(3) vs_TEXCOORD3_param : vec4f, @location(0) vs_TEXCOORD0_param : vec3f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FrontFacing = gl_FrontFacing_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

