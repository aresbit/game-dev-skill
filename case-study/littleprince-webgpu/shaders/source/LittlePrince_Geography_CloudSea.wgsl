//Assets/Levels/Geography/Materials/Shaders/GeoCloudSea.shader
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_1,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
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
  x_ProjectionParams : vec4f,
  /* @offset(16) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_5,
}

var<private> in_POSITION0 : vec4f;

@group(1) @binding(4) var<uniform> x_25 : UnityPerDraw;

@group(1) @binding(3) var<uniform> x_74 : VGlobals;

var<private> vs_TEXCOORD0 : vec3f;

var<private> vs_TEXCOORD1 : vec4f;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlat0 : vec4f;
  var u_xlat1 : vec4f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = vec4f(((in_POSITION0.yyy * x_25.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * in_POSITION0.xxx) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f((((x_25.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * in_POSITION0.zzz) + u_xlat0.xyz)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_25.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat1 = (u_xlat0.yyyy * x_74.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat1 = ((x_74.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  vs_TEXCOORD0 = u_xlat0.xyz;
  u_xlat0 = (u_xlat1 + x_74.hlslcc_mtx4x4unity_MatrixVP[3i]);
  gl_Position = u_xlat0;
  u_xlat0.y = (u_xlat0.y * x_74.x_ProjectionParams.x);
  let x_121 = (u_xlat0.xwy * vec3f(0.5f));
  u_xlat1 = vec4f(x_121.x, u_xlat1.y, x_121.yz);
  vs_TEXCOORD1 = vec4f(vs_TEXCOORD1.xy, u_xlat0.zw.xy);
  vs_TEXCOORD1 = vec4f(((u_xlat1.zz + u_xlat1.xw)).xy, vs_TEXCOORD1.zw);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec3f,
  @builtin(position)
  gl_Position : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec4f,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4f) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

//Assets/Levels/Geography/Materials/Shaders/GeoCloudSea.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_MainLightPosition : vec4f,
  /* @offset(16) */
  x_MainLightColor : vec4f,
  /* @offset(32) */
  x_Time : vec4f,
  /* @offset(48) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(64) */
  x_ZBufferParams : vec4f,
  /* @offset(80) */
  x_RTHandleScale : vec4f,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
  /* @offset(160) */
  x_ScreenSize : vec4f,
  /* @offset(176) */
  x_CameraDepthTexture_TexelSize : vec4f,
  /* @offset(192) */
  x_GeoCloudWind : vec4f,
  /* @offset(208) */
  x_GeoCloudShadow : vec4f,
  /* @offset(224) */
  x_GeoCloudCentre : vec4f,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_Albedo : vec4f,
  /* @offset(16) */
  x_SunTint : vec4f,
  /* @offset(32) */
  x_AmbientTop : vec4f,
  /* @offset(48) */
  x_AmbientBottom : vec4f,
  /* @offset(64) */
  x_ScatterColor : vec4f,
  /* @offset(80) */
  x_HorizonColor : vec4f,
  /* @offset(96) */
  x_SunHorizonColor : vec4f,
  /* @offset(112) */
  x_BelowColor : vec4f,
  /* @offset(128) */
  x_RimColor : vec4f,
  /* @offset(144) */
  x_GoldColor : vec4f,
  /* @offset(160) */
  x_MidHazeColor : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedX_Wind : vec4f,
  /* @offset(192) */
  x_ClearCentre : vec4f,
  /* @offset(208) */
  x_TileSize : f32,
  /* @offset(212) */
  x_TopY : f32,
  /* @offset(216) */
  x_BaseY : f32,
  /* @offset(220) */
  x_Blanket : f32,
  /* @offset(224) */
  x_SwellAmp : f32,
  /* @offset(228) */
  x_PuffAmp : f32,
  /* @offset(232) */
  x_PuffSwell : f32,
  /* @offset(236) */
  x_SmallAmp : f32,
  /* @offset(240) */
  x_SunStrength : f32,
  /* @offset(244) */
  x_Wrap : f32,
  /* @offset(248) */
  x_ShadowDensity : f32,
  /* @offset(252) */
  x_CreaseDark : f32,
  /* @offset(256) */
  x_ScatterPower : f32,
  /* @offset(260) */
  x_ScatterStrength : f32,
  /* @offset(264) */
  x_FuzzHeight : f32,
  /* @offset(268) */
  x_FuzzStrength : f32,
  /* @offset(272) */
  x_HorizonWarmth : f32,
  /* @offset(276) */
  x_HazeDistance : f32,
  /* @offset(280) */
  x_HazePower : f32,
  /* @offset(284) */
  x_FadeRadius : f32,
  /* @offset(288) */
  x_MaxMarch : f32,
  /* @offset(292) */
  x_StepScale : f32,
  /* @offset(296) */
  x_SoftDepth : f32,
  /* @offset(300) */
  x_LodScale : f32,
  /* @offset(304) */
  x_DetailScale : f32,
  /* @offset(308) */
  x_DetailStrength : f32,
  /* @offset(312) */
  x_DetailFade : f32,
  /* @offset(316) */
  x_RimShade : f32,
  /* @offset(320) */
  x_GoldRim : f32,
  /* @offset(324) */
  x_NormalSoft : f32,
  /* @offset(328) */
  x_EdgeSkin : f32,
  /* @offset(332) */
  x_MidHazeDistance : f32,
  /* @offset(336) */
  x_MidHazeMax : f32,
  /* @offset(340) */
  x_ClearDepth : f32,
  /* @offset(344) */
  x_CottonAmount : f32,
}

alias Arr_1 = array<vec4f, 20u>;

struct LightShadows {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  Xhlslcc_UnusedX_CascadeShadowSplitSpheres0 : vec4f,
  /* @offset(336) */
  Xhlslcc_UnusedX_CascadeShadowSplitSpheres1 : vec4f,
  /* @offset(352) */
  Xhlslcc_UnusedX_CascadeShadowSplitSpheres2 : vec4f,
  /* @offset(368) */
  Xhlslcc_UnusedX_CascadeShadowSplitSpheres3 : vec4f,
  /* @offset(384) */
  Xhlslcc_UnusedX_CascadeShadowSplitSphereRadii : vec4f,
  /* @offset(400) */
  Xhlslcc_UnusedX_MainLightShadowOffset0 : vec4f,
  /* @offset(416) */
  Xhlslcc_UnusedX_MainLightShadowOffset1 : vec4f,
  /* @offset(432) */
  x_MainLightShadowParams : vec4f,
  /* @offset(448) */
  Xhlslcc_UnusedX_MainLightShadowmapSize : vec4f,
  /* @offset(464) */
  Xhlslcc_UnusedX_AdditionalShadowOffset0 : vec4f,
  /* @offset(480) */
  Xhlslcc_UnusedX_AdditionalShadowOffset1 : vec4f,
  /* @offset(496) */
  Xhlslcc_UnusedX_AdditionalShadowFadeParams : vec4f,
  /* @offset(512) */
  Xhlslcc_UnusedX_AdditionalShadowmapSize : vec4f,
}

var<private> vs_TEXCOORD0 : vec3f;

@group(1) @binding(0) var<uniform> x_19 : PGlobals;

@group(1) @binding(2) var<uniform> x_65 : UnityPerMaterial;

@group(0) @binding(3) var x_NoiseTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_NoiseTex : sampler;

@group(1) @binding(1) var<uniform> x_3908 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(0) @binding(2) var x_GeoCloudNoise : texture_2d<f32>;

@group(0) @binding(5) var sampler_GeoCloudNoise : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

var<private> gl_FragCoord : vec4f;

const x_162 = vec2f(0.11999999731779098511f);

const x_273 = vec2f(0.37000000476837158203f);

const x_277 = vec2f(0.12999999523162841797f, 0.61000001430511474609f);

const x_308 = vec2f(1.10000002384185791016f);

const x_326 = vec2f(2.70000004768371582031f);

const x_329 = vec2f(0.37000000476837158203f, 0.18999999761581420898f);

const x_421 = vec2f(0.0043000001460313797f, 0.002099999925121665f);

const x_440 = vec2f(-0.00170000002253800631f, 0.00350000010803341866f);

const x_1089 = vec2f(-1.0f, 1.0f);

const x_5396 = vec2f(1.29999995231628417969f);

const x_5578 = vec3f(1.0f);

const x_5723 = vec2f(1.0f);

const x_5830 = vec3f(0.89999997615814208984f);

const x_6100 = vec2f(0.00000999999974737875f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat39 : f32;
  var u_xlat1 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat14 : vec2f;
  var u_xlat27 : vec2f;
  var u_xlat40 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat15 : vec3f;
  var u_xlat4 : vec3f;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat30 : f32;
  var u_xlat5 : vec3f;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var u_xlat19 : vec3f;
  var u_xlati6 : i32;
  var u_xlati32 : i32;
  var u_xlatb45 : bool;
  var u_xlat7 : vec4f;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat8 : vec4f;
  var u_xlat34 : vec2f;
  var u_xlat21 : vec3f;
  var u_xlat47 : f32;
  var u_xlat9 : vec4f;
  var u_xlat33 : vec2f;
  var u_xlatb20 : bool;
  var u_xlat20 : vec2f;
  var u_xlatb33 : bool;
  var u_xlat6 : vec4f;
  var u_xlat32 : f32;
  var u_xlatb27 : bool;
  var x_1041 : vec2f;
  var x_1406 : vec2f;
  var x_1749 : vec2f;
  var x_2092 : vec2f;
  var x_2435 : vec2f;
  var u_xlat18 : f32;
  var x_2808 : f32;
  var u_xlat22 : vec2f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat35 : vec2f;
  var txVec0 : vec3f;
  var u_xlatb40 : bool;
  var x_3989 : f32;
  var u_xlat48 : f32;
  var u_xlat36 : vec2f;
  var u_xlat23 : f32;
  var u_xlat49 : f32;
  var u_xlat17 : f32;
  var u_xlat28 : vec2f;
  var u_xlat29 : f32;
  var u_xlatb28 : bool;
  var u_xlat16 : f32;
  var u_xlatb41 : bool;
  var u_xlatu2 : vec4u;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (vs_TEXCOORD0 + -(x_19.x_WorldSpaceCameraPos));
  u_xlat39 = dot(u_xlat0, u_xlat0);
  u_xlat39 = sqrt(u_xlat39);
  u_xlat1.x = max(u_xlat39, 0.00009999999747378752f);
  u_xlat0 = (u_xlat0 / u_xlat1.xxx);
  u_xlatb1 = (-0.00009999999747378752f < u_xlat0.y);
  if (((select(0i, 1i, u_xlatb1) * -1i) != 0i)) {
    discard;
  }
  u_xlat1.x = (-(x_65.x_BaseY) + x_65.x_TopY);
  u_xlat14.x = (-(vs_TEXCOORD0.y) + x_65.x_BaseY);
  u_xlat14.x = (u_xlat14.x / u_xlat0.y);
  u_xlat14.x = min(u_xlat14.x, x_65.x_MaxMarch);
  u_xlat27.x = (u_xlat39 * x_65.x_StepScale);
  u_xlat27.x = max(u_xlat27.x, 0.34999999403953552246f);
  u_xlat40 = (u_xlat27.x * 0.5f);
  u_xlat2.x = (x_19.x_Time.y + x_19.x_GeoCloudCentre.w);
  u_xlat3 = vec4f(((u_xlat2.xxx * x_19.x_GeoCloudWind.xyz)).xyz, u_xlat3.w);
  u_xlat15 = vec3f(((u_xlat3.xy * vec2f(0.69999998807907104492f))).xy, u_xlat15.z);
  u_xlat3.w = -(u_xlat3.y);
  u_xlat4 = vec3f(((u_xlat3.wx * x_19.x_GeoCloudWind.zz)).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_162) + u_xlat15.xy)).xy, u_xlat4.z);
  u_xlat41 = (-(x_65.x_ClearCentre.z) + x_65.x_ClearCentre.w);
  u_xlat41 = (1.0f / u_xlat41);
  u_xlat42 = (-(x_65.x_PuffSwell) + 1.0f);
  u_xlat30 = (-(u_xlat42) + 1.0f);
  u_xlat5.z = u_xlat40;
  u_xlat43 = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat44 = 0.0f;
  u_xlat19.x = u_xlat27.x;
  u_xlati6 = 0i;
  u_xlati32 = 0i;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatb45 = (u_xlati32 >= 64i);
    if (u_xlatb45) {
      break;
    }
    u_xlat7 = vec4f((((u_xlat0 * u_xlat5.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat45 = (u_xlat39 + u_xlat5.z);
    u_xlat46 = ((u_xlat45 * x_65.x_LodScale) + 1.0f);
    u_xlat46 = log2(u_xlat46);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat4.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat34 = ((u_xlat8.zw * x_273) + x_277);
    u_xlat34.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat34, u_xlat46).x;
    u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat46).y;
    let x_312 = ((-(u_xlat3.xy) * x_308) + u_xlat7.xz);
    u_xlat21 = vec3f(x_312.x, u_xlat21.y, x_312.y);
    let x_320 = (u_xlat21.xz / vec2f(x_65.x_TileSize));
    u_xlat21 = vec3f(x_320.x, u_xlat21.y, x_320.y);
    let x_330 = ((u_xlat21.xz * x_326) + x_329);
    u_xlat21 = vec3f(x_330.x, u_xlat21.y, x_330.y);
    u_xlat46 = (u_xlat46 + 0.30000001192092895508f);
    u_xlat46 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat21.xz, u_xlat46).z;
    u_xlat21.x = (u_xlat34.x + -0.34999999403953552246f);
    u_xlat21.x = (u_xlat21.x + u_xlat21.x);
    u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
    u_xlat47 = ((u_xlat21.x * -2.0f) + 3.0f);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat21.x = (u_xlat21.x * u_xlat47);
    u_xlat9 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
    u_xlat47 = dot(u_xlat9.xy, u_xlat9.xy);
    u_xlat47 = sqrt(u_xlat47);
    u_xlat47 = (u_xlat47 + -(x_65.x_ClearCentre.z));
    u_xlat47 = (u_xlat41 * u_xlat47);
    u_xlat47 = clamp(u_xlat47, 0.0f, 1.0f);
    u_xlat9.x = ((u_xlat47 * -2.0f) + 3.0f);
    u_xlat47 = (u_xlat47 * u_xlat47);
    u_xlat47 = ((-(u_xlat9.x) * u_xlat47) + 1.0f);
    u_xlat9.x = dot(u_xlat7.xz, x_421);
    u_xlat9.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat9.x);
    u_xlat9.x = sin(u_xlat9.x);
    u_xlat7.x = dot(u_xlat7.xz, x_440);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat9.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat9.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat47) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat33.x = ((u_xlat34.x * 2.0f) + -1.0f);
    u_xlat7.x = ((x_65.x_SwellAmp * u_xlat33.x) + u_xlat7.x);
    u_xlat33.x = (u_xlat8.x * x_65.x_PuffAmp);
    u_xlat8.x = ((u_xlat21.x * u_xlat30) + u_xlat42);
    u_xlat7.x = ((u_xlat33.x * u_xlat8.x) + u_xlat7.x);
    u_xlat33.x = (u_xlat46 * x_65.x_SmallAmp);
    u_xlat46 = ((u_xlat21.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat33.x * u_xlat46) + u_xlat7.x);
    u_xlat7.x = ((u_xlat7.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat7.x = (-(u_xlat7.x) + u_xlat7.y);
    u_xlatb20 = (u_xlat7.x < 0.0f);
    if (u_xlatb20) {
      u_xlati6 = -1i;
      break;
    }
    u_xlat20.x = (-(u_xlat7.x) / x_65.x_FuzzHeight);
    u_xlat20.x = (u_xlat20.x * 1.44269502162933349609f);
    u_xlat20.x = exp2(u_xlat20.x);
    u_xlat20.x = ((u_xlat20.x * u_xlat19.x) + u_xlat43);
    u_xlat33.x = (u_xlat45 * 0.01200000010430812836f);
    u_xlat33.x = max(u_xlat33.x, x_65.x_EdgeSkin);
    u_xlat7.x = (u_xlat7.x / u_xlat33.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.x = (-(u_xlat7.x) + 1.0f);
    u_xlat7.x = max(u_xlat44, u_xlat7.x);
    u_xlat45 = (u_xlat45 * x_65.x_StepScale);
    u_xlat19.x = max(u_xlat45, 0.34999999403953552246f);
    u_xlat45 = (u_xlat5.z + u_xlat19.x);
    u_xlatb33 = (u_xlat14.x < u_xlat45);
    if (u_xlatb33) {
      u_xlat5.x = u_xlat5.z;
      u_xlat43 = u_xlat20.x;
      u_xlat44 = u_xlat7.x;
      u_xlati6 = 0i;
      u_xlat5.z = u_xlat45;
      break;
    }
    u_xlat5.x = u_xlat5.z;
    u_xlat43 = u_xlat20.x;
    u_xlat44 = u_xlat7.x;
    u_xlat5.z = u_xlat45;
    u_xlati32 = (u_xlati32 + 1i);
    u_xlati6 = 0i;
  }
  if ((u_xlati6 != 0i)) {
    u_xlat27.x = (u_xlat5.z + u_xlat5.x);
    u_xlat5.y = (u_xlat27.x * 0.5f);
    u_xlat6 = vec4f((((u_xlat0 * u_xlat5.yyy) + vs_TEXCOORD0)).xyz, u_xlat6.w);
    u_xlat27.x = ((u_xlat27.x * 0.5f) + u_xlat39);
    u_xlat27.x = ((u_xlat27.x * x_65.x_LodScale) + 1.0f);
    u_xlat27.x = log2(u_xlat27.x);
    u_xlat7 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(u_xlat7.xy, ((-(u_xlat4.xy) + u_xlat6.xz)).xy);
    u_xlat7 = (u_xlat7 / vec4f(x_65.x_TileSize));
    u_xlat33 = ((u_xlat7.zw * x_273) + x_277);
    u_xlat40 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat33, u_xlat27.x).x;
    u_xlat45 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat27.x).y;
    u_xlat7 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(((u_xlat7.xy / vec2f(x_65.x_TileSize))).xy, u_xlat7.zw);
    u_xlat7 = vec4f((((u_xlat7.xy * x_326) + x_329)).xy, u_xlat7.zw);
    u_xlat27.x = (u_xlat27.x + 0.30000001192092895508f);
    u_xlat27.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat27.x).z;
    u_xlat7.x = (u_xlat40 + -0.34999999403953552246f);
    u_xlat7.x = (u_xlat7.x + u_xlat7.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat20.x = ((u_xlat7.x * -2.0f) + 3.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat20.x);
    u_xlat20 = (u_xlat6.xz + -(x_65.x_ClearCentre.xy));
    u_xlat20.x = dot(u_xlat20, u_xlat20);
    u_xlat20.x = sqrt(u_xlat20.x);
    u_xlat20.x = (u_xlat20.x + -(x_65.x_ClearCentre.z));
    u_xlat20.x = (u_xlat41 * u_xlat20.x);
    u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
    u_xlat33.x = ((u_xlat20.x * -2.0f) + 3.0f);
    u_xlat20.x = (u_xlat20.x * u_xlat20.x);
    u_xlat20.x = ((-(u_xlat33.x) * u_xlat20.x) + 1.0f);
    u_xlat33.x = dot(u_xlat6.xz, x_421);
    u_xlat33.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat33.x);
    u_xlat33.x = sin(u_xlat33.x);
    u_xlat6.x = dot(u_xlat6.xz, x_440);
    u_xlat6.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + 1.29999995231628417969f);
    u_xlat6.x = sin(u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * u_xlat33.x);
    u_xlat6.x = (u_xlat6.x * 0.40000000596046447754f);
    u_xlat6.x = ((u_xlat33.x * 0.60000002384185791016f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * x_19.x_GeoCloudWind.w);
    u_xlat6.x = (u_xlat6.x / u_xlat1.x);
    u_xlat6.x = ((-(x_65.x_ClearDepth) * u_xlat20.x) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + x_65.x_Blanket);
    u_xlat40 = ((u_xlat40 * 2.0f) + -1.0f);
    u_xlat40 = ((x_65.x_SwellAmp * u_xlat40) + u_xlat6.x);
    u_xlat6.x = (u_xlat45 * x_65.x_PuffAmp);
    u_xlat32 = ((u_xlat7.x * u_xlat30) + u_xlat42);
    u_xlat40 = ((u_xlat6.x * u_xlat32) + u_xlat40);
    u_xlat27.x = (u_xlat27.x * x_65.x_SmallAmp);
    u_xlat6.x = ((u_xlat7.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat27.x = ((u_xlat27.x * u_xlat6.x) + u_xlat40);
    u_xlat27.x = ((u_xlat27.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat27.x = (-(u_xlat27.x) + u_xlat6.y);
    u_xlatb27 = (u_xlat27.x < 0.0f);
    if (u_xlatb27) {
      x_1041 = u_xlat5.xy;
    } else {
      x_1041 = u_xlat5.yz;
    }
    u_xlat6 = vec4f(x_1041.xy, u_xlat6.zw);
    u_xlat27.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat27.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat27.x = ((u_xlat27.x * 0.5f) + u_xlat39);
    u_xlat27.x = ((u_xlat27.x * x_65.x_LodScale) + 1.0f);
    u_xlat27.x = log2(u_xlat27.x);
    u_xlat5 = vec3f(((u_xlat3.yx * x_1089)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy * x_19.x_GeoCloudWind.zz)).xy, u_xlat5.z);
    u_xlat5 = vec3f((((u_xlat5.xy * x_162) + u_xlat15.xy)).xy, u_xlat5.z);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat5.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat34 = ((u_xlat8.zw * x_273) + x_277);
    u_xlat40 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat34, u_xlat27.x).x;
    u_xlat45 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat27.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_326) + x_329)).xy, u_xlat8.zw);
    u_xlat27.x = (u_xlat27.x + 0.30000001192092895508f);
    u_xlat27.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat27.x).z;
    u_xlat46 = (u_xlat40 + -0.34999999403953552246f);
    u_xlat46 = (u_xlat46 + u_xlat46);
    u_xlat46 = clamp(u_xlat46, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat46 * -2.0f) + 3.0f);
    u_xlat46 = (u_xlat46 * u_xlat46);
    u_xlat46 = (u_xlat46 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat41 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat21.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat21.x) * u_xlat8.x) + 1.0f);
    u_xlat21.x = dot(u_xlat7.xz, x_421);
    u_xlat21.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat21.x);
    u_xlat21.x = sin(u_xlat21.x);
    u_xlat7.x = dot(u_xlat7.xz, x_440);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat21.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat21.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat40 = ((u_xlat40 * 2.0f) + -1.0f);
    u_xlat40 = ((x_65.x_SwellAmp * u_xlat40) + u_xlat7.x);
    u_xlat45 = (u_xlat45 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat46 * u_xlat30) + u_xlat42);
    u_xlat40 = ((u_xlat45 * u_xlat7.x) + u_xlat40);
    u_xlat27.x = (u_xlat27.x * x_65.x_SmallAmp);
    u_xlat45 = ((u_xlat46 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat27.x = ((u_xlat27.x * u_xlat45) + u_xlat40);
    u_xlat27.x = ((u_xlat27.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat27.x = (-(u_xlat27.x) + u_xlat7.y);
    u_xlatb27 = (u_xlat27.x < 0.0f);
    if (u_xlatb27) {
      x_1406 = u_xlat6.xz;
    } else {
      x_1406 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_1406.xy, u_xlat6.zw);
    u_xlat27.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat27.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat27.x = ((u_xlat27.x * 0.5f) + u_xlat39);
    u_xlat27.x = ((u_xlat27.x * x_65.x_LodScale) + 1.0f);
    u_xlat27.x = log2(u_xlat27.x);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat4.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat34 = ((u_xlat8.zw * x_273) + x_277);
    u_xlat40 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat34, u_xlat27.x).x;
    u_xlat45 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat27.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_326) + x_329)).xy, u_xlat8.zw);
    u_xlat27.x = (u_xlat27.x + 0.30000001192092895508f);
    u_xlat27.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat27.x).z;
    u_xlat46 = (u_xlat40 + -0.34999999403953552246f);
    u_xlat46 = (u_xlat46 + u_xlat46);
    u_xlat46 = clamp(u_xlat46, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat46 * -2.0f) + 3.0f);
    u_xlat46 = (u_xlat46 * u_xlat46);
    u_xlat46 = (u_xlat46 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat41 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat21.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat21.x) * u_xlat8.x) + 1.0f);
    u_xlat21.x = dot(u_xlat7.xz, x_421);
    u_xlat21.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat21.x);
    u_xlat21.x = sin(u_xlat21.x);
    u_xlat7.x = dot(u_xlat7.xz, x_440);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat21.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat21.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat40 = ((u_xlat40 * 2.0f) + -1.0f);
    u_xlat40 = ((x_65.x_SwellAmp * u_xlat40) + u_xlat7.x);
    u_xlat45 = (u_xlat45 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat46 * u_xlat30) + u_xlat42);
    u_xlat40 = ((u_xlat45 * u_xlat7.x) + u_xlat40);
    u_xlat27.x = (u_xlat27.x * x_65.x_SmallAmp);
    u_xlat45 = ((u_xlat46 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat27.x = ((u_xlat27.x * u_xlat45) + u_xlat40);
    u_xlat27.x = ((u_xlat27.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat27.x = (-(u_xlat27.x) + u_xlat7.y);
    u_xlatb27 = (u_xlat27.x < 0.0f);
    if (u_xlatb27) {
      x_1749 = u_xlat6.xz;
    } else {
      x_1749 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_1749.xy, u_xlat6.zw);
    u_xlat27.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat27.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat27.x = ((u_xlat27.x * 0.5f) + u_xlat39);
    u_xlat27.x = ((u_xlat27.x * x_65.x_LodScale) + 1.0f);
    u_xlat27.x = log2(u_xlat27.x);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat5.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat34 = ((u_xlat8.zw * x_273) + x_277);
    u_xlat40 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat34, u_xlat27.x).x;
    u_xlat45 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat27.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_326) + x_329)).xy, u_xlat8.zw);
    u_xlat27.x = (u_xlat27.x + 0.30000001192092895508f);
    u_xlat27.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat27.x).z;
    u_xlat46 = (u_xlat40 + -0.34999999403953552246f);
    u_xlat46 = (u_xlat46 + u_xlat46);
    u_xlat46 = clamp(u_xlat46, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat46 * -2.0f) + 3.0f);
    u_xlat46 = (u_xlat46 * u_xlat46);
    u_xlat46 = (u_xlat46 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat41 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat21.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat21.x) * u_xlat8.x) + 1.0f);
    u_xlat21.x = dot(u_xlat7.xz, x_421);
    u_xlat21.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat21.x);
    u_xlat21.x = sin(u_xlat21.x);
    u_xlat7.x = dot(u_xlat7.xz, x_440);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat21.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat21.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat40 = ((u_xlat40 * 2.0f) + -1.0f);
    u_xlat40 = ((x_65.x_SwellAmp * u_xlat40) + u_xlat7.x);
    u_xlat45 = (u_xlat45 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat46 * u_xlat30) + u_xlat42);
    u_xlat40 = ((u_xlat45 * u_xlat7.x) + u_xlat40);
    u_xlat27.x = (u_xlat27.x * x_65.x_SmallAmp);
    u_xlat45 = ((u_xlat46 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat27.x = ((u_xlat27.x * u_xlat45) + u_xlat40);
    u_xlat27.x = ((u_xlat27.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat27.x = (-(u_xlat27.x) + u_xlat7.y);
    u_xlatb27 = (u_xlat27.x < 0.0f);
    if (u_xlatb27) {
      x_2092 = u_xlat6.xz;
    } else {
      x_2092 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_2092.xy, u_xlat6.zw);
    u_xlat27.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat27.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat27.x = ((u_xlat27.x * 0.5f) + u_xlat39);
    u_xlat27.x = ((u_xlat27.x * x_65.x_LodScale) + 1.0f);
    u_xlat27.x = log2(u_xlat27.x);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat4.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat34 = ((u_xlat8.zw * x_273) + x_277);
    u_xlat40 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat34, u_xlat27.x).x;
    u_xlat45 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat27.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_326) + x_329)).xy, u_xlat8.zw);
    u_xlat27.x = (u_xlat27.x + 0.30000001192092895508f);
    u_xlat27.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat27.x).z;
    u_xlat46 = (u_xlat40 + -0.34999999403953552246f);
    u_xlat46 = (u_xlat46 + u_xlat46);
    u_xlat46 = clamp(u_xlat46, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat46 * -2.0f) + 3.0f);
    u_xlat46 = (u_xlat46 * u_xlat46);
    u_xlat46 = (u_xlat46 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat41 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat21.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat21.x) * u_xlat8.x) + 1.0f);
    u_xlat21.x = dot(u_xlat7.xz, x_421);
    u_xlat21.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat21.x);
    u_xlat21.x = sin(u_xlat21.x);
    u_xlat7.x = dot(u_xlat7.xz, x_440);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat21.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat21.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat40 = ((u_xlat40 * 2.0f) + -1.0f);
    u_xlat40 = ((x_65.x_SwellAmp * u_xlat40) + u_xlat7.x);
    u_xlat45 = (u_xlat45 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat46 * u_xlat30) + u_xlat42);
    u_xlat40 = ((u_xlat45 * u_xlat7.x) + u_xlat40);
    u_xlat27.x = (u_xlat27.x * x_65.x_SmallAmp);
    u_xlat45 = ((u_xlat46 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat27.x = ((u_xlat27.x * u_xlat45) + u_xlat40);
    u_xlat27.x = ((u_xlat27.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat27.x = (-(u_xlat27.x) + u_xlat7.y);
    u_xlatb27 = (u_xlat27.x < 0.0f);
    if (u_xlatb27) {
      x_2435 = u_xlat6.xz;
    } else {
      x_2435 = u_xlat6.zy;
    }
    u_xlat27 = x_2435;
    u_xlat27.x = (u_xlat27.y + u_xlat27.x);
    u_xlat6.x = (u_xlat27.x * 0.5f);
    u_xlat19 = ((u_xlat0 * u_xlat6.xxx) + vs_TEXCOORD0);
    u_xlat27.x = ((u_xlat27.x * 0.5f) + u_xlat39);
    u_xlat27.x = ((u_xlat27.x * x_65.x_LodScale) + 1.0f);
    u_xlat27.x = log2(u_xlat27.x);
    u_xlat7 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat19.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(((u_xlat7.xy / vec2f(x_65.x_TileSize))).xy, u_xlat7.zw);
    u_xlat5 = vec3f(((-(u_xlat5.xy) + u_xlat19.xz)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy / vec2f(x_65.x_TileSize))).xy, u_xlat5.z);
    u_xlat5 = vec3f((((u_xlat5.xy * x_273) + x_277)).xy, u_xlat5.z);
    u_xlat5.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat5.xy, u_xlat27.x).x;
    u_xlat18 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat27.x).y;
    u_xlat7 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat19.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(((u_xlat7.xy / vec2f(x_65.x_TileSize))).xy, u_xlat7.zw);
    u_xlat7 = vec4f((((u_xlat7.xy * x_326) + x_329)).xy, u_xlat7.zw);
    u_xlat27.x = (u_xlat27.x + 0.30000001192092895508f);
    u_xlat27.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat27.x).z;
    u_xlat7.x = (u_xlat5.x + -0.34999999403953552246f);
    u_xlat7.x = (u_xlat7.x + u_xlat7.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat20.x = ((u_xlat7.x * -2.0f) + 3.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat20.x);
    u_xlat20 = (u_xlat19.xz + -(x_65.x_ClearCentre.xy));
    u_xlat20.x = dot(u_xlat20, u_xlat20);
    u_xlat20.x = sqrt(u_xlat20.x);
    u_xlat20.x = (u_xlat20.x + -(x_65.x_ClearCentre.z));
    u_xlat20.x = (u_xlat41 * u_xlat20.x);
    u_xlat20.x = clamp(u_xlat20.x, 0.0f, 1.0f);
    u_xlat33.x = ((u_xlat20.x * -2.0f) + 3.0f);
    u_xlat20.x = (u_xlat20.x * u_xlat20.x);
    u_xlat20.x = ((-(u_xlat33.x) * u_xlat20.x) + 1.0f);
    u_xlat33.x = dot(u_xlat19.xz, x_421);
    u_xlat33.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat33.x);
    u_xlat33.x = sin(u_xlat33.x);
    u_xlat19.x = dot(u_xlat19.xz, x_440);
    u_xlat19.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat19.x);
    u_xlat19.x = (u_xlat19.x + 1.29999995231628417969f);
    u_xlat19.x = sin(u_xlat19.x);
    u_xlat19.x = (u_xlat19.x * u_xlat33.x);
    u_xlat19.x = (u_xlat19.x * 0.40000000596046447754f);
    u_xlat19.x = ((u_xlat33.x * 0.60000002384185791016f) + u_xlat19.x);
    u_xlat19.x = (u_xlat19.x * x_19.x_GeoCloudWind.w);
    u_xlat19.x = (u_xlat19.x / u_xlat1.x);
    u_xlat19.x = ((-(x_65.x_ClearDepth) * u_xlat20.x) + u_xlat19.x);
    u_xlat19.x = (u_xlat19.x + x_65.x_Blanket);
    u_xlat5.x = ((u_xlat5.x * 2.0f) + -1.0f);
    u_xlat5.x = ((x_65.x_SwellAmp * u_xlat5.x) + u_xlat19.x);
    u_xlat18 = (u_xlat18 * x_65.x_PuffAmp);
    u_xlat19.x = ((u_xlat7.x * u_xlat30) + u_xlat42);
    u_xlat5.x = ((u_xlat18 * u_xlat19.x) + u_xlat5.x);
    u_xlat27.x = (u_xlat27.x * x_65.x_SmallAmp);
    u_xlat18 = ((u_xlat7.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat27.x = ((u_xlat27.x * u_xlat18) + u_xlat5.x);
    u_xlat27.x = ((u_xlat27.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat27.x = (-(u_xlat27.x) + u_xlat19.y);
    u_xlatb27 = (u_xlat27.x < 0.0f);
    if (u_xlatb27) {
      x_2808 = u_xlat6.x;
    } else {
      x_2808 = u_xlat27.y;
    }
    u_xlat27.x = x_2808;
  } else {
    u_xlat27.x = min(u_xlat14.x, u_xlat5.z);
  }
  u_xlat5 = ((u_xlat0 * u_xlat27.xxx) + vs_TEXCOORD0);
  u_xlat39 = (u_xlat39 + u_xlat27.x);
  u_xlat14.x = ((u_xlat39 * x_65.x_LodScale) + 1.0f);
  u_xlat14.x = log2(u_xlat14.x);
  u_xlat27.x = (u_xlat39 * 0.00400000018998980522f);
  u_xlat6.y = max(u_xlat27.x, 0.40000000596046447754f);
  u_xlat7 = ((-(x_19.x_GeoCloudWind.xyxy) * u_xlat2.xxxx) + u_xlat5.xzxz);
  u_xlat7 = (u_xlat7 / vec4f(x_65.x_TileSize));
  u_xlat27 = (-(u_xlat4.xy) + u_xlat5.xz);
  u_xlat27 = (u_xlat27 / vec2f(x_65.x_TileSize));
  u_xlat27 = ((u_xlat27 * x_273) + x_277);
  u_xlat27.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat27, u_xlat14.x).x;
  u_xlat40 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.zw, u_xlat14.x).y;
  u_xlat8 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat5.xz)).xy, u_xlat8.zw);
  u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
  u_xlat8 = vec4f((((u_xlat8.xy * x_326) + x_329)).xy, u_xlat8.zw);
  u_xlat34.x = (u_xlat14.x + 0.30000001192092895508f);
  u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat34.x).z;
  u_xlat21.x = (u_xlat27.x + -0.34999999403953552246f);
  u_xlat21.x = (u_xlat21.x + u_xlat21.x);
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat47 = ((u_xlat21.x * -2.0f) + 3.0f);
  u_xlat21.x = (u_xlat21.x * u_xlat21.x);
  u_xlat21.x = (u_xlat21.x * u_xlat47);
  u_xlat9 = vec4f(((u_xlat5.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
  u_xlat47 = dot(u_xlat9.xy, u_xlat9.xy);
  u_xlat47 = sqrt(u_xlat47);
  u_xlat47 = (u_xlat47 + -(x_65.x_ClearCentre.z));
  u_xlat47 = (u_xlat41 * u_xlat47);
  u_xlat47 = clamp(u_xlat47, 0.0f, 1.0f);
  u_xlat9.x = ((u_xlat47 * -2.0f) + 3.0f);
  u_xlat47 = (u_xlat47 * u_xlat47);
  u_xlat47 = ((-(u_xlat9.x) * u_xlat47) + 1.0f);
  u_xlat9.x = dot(u_xlat5.xz, x_421);
  u_xlat9.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat9.x);
  u_xlat22.x = dot(u_xlat5.xz, x_440);
  u_xlat22.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat22.x);
  u_xlat9.y = (u_xlat22.x + 1.29999995231628417969f);
  u_xlat9 = vec4f(sin(u_xlat9.xy).xy, u_xlat9.zw);
  u_xlat22.x = (u_xlat9.y * u_xlat9.x);
  u_xlat22.x = (u_xlat22.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat9.x * 0.60000002384185791016f) + u_xlat22.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat47 = ((-(x_65.x_ClearDepth) * u_xlat47) + u_xlat9.x);
  u_xlat47 = (u_xlat47 + x_65.x_Blanket);
  u_xlat27.x = ((u_xlat27.x * 2.0f) + -1.0f);
  u_xlat27.x = ((x_65.x_SwellAmp * u_xlat27.x) + u_xlat47);
  u_xlat40 = (u_xlat40 * x_65.x_PuffAmp);
  u_xlat47 = ((u_xlat21.x * u_xlat30) + u_xlat42);
  u_xlat27.x = ((u_xlat40 * u_xlat47) + u_xlat27.x);
  u_xlat40 = (u_xlat8.x * x_65.x_SmallAmp);
  u_xlat8.x = ((u_xlat21.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat27.x = ((u_xlat40 * u_xlat8.x) + u_xlat27.x);
  u_xlat27.x = ((u_xlat27.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat6.z = 0.0f;
  u_xlat9 = (u_xlat5.xzxz + u_xlat6.yzzy);
  u_xlat10 = ((-(x_19.x_GeoCloudWind.xyxy) * u_xlat2.xxxx) + u_xlat9);
  u_xlat10 = (u_xlat10 / vec4f(x_65.x_TileSize));
  u_xlat8 = vec4f(((-(u_xlat4.xy) + u_xlat9.xy)).xy, u_xlat8.zw);
  u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
  u_xlat8 = vec4f((((u_xlat8.xy * x_273) + x_277)).xy, u_xlat8.zw);
  u_xlat40 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat14.x).x;
  u_xlat32 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat14.x).y;
  u_xlat11 = ((-(u_xlat3.xyxy) * vec4f(1.10000002384185791016f)) + u_xlat9);
  u_xlat11 = (u_xlat11 / vec4f(x_65.x_TileSize));
  u_xlat11 = ((u_xlat11 * vec4f(2.70000004768371582031f)) + vec4f(0.37000000476837158203f, 0.18999999761581420898f, 0.37000000476837158203f, 0.18999999761581420898f));
  u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat11.xy, u_xlat34.x).z;
  u_xlat21.x = (u_xlat40 + -0.34999999403953552246f);
  u_xlat21.x = (u_xlat21.x + u_xlat21.x);
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat47 = ((u_xlat21.x * -2.0f) + 3.0f);
  u_xlat21.x = (u_xlat21.x * u_xlat21.x);
  u_xlat21.x = (u_xlat21.x * u_xlat47);
  u_xlat12 = (u_xlat9 + -(x_65.x_ClearCentre.xyxy));
  u_xlat47 = dot(u_xlat12.xy, u_xlat12.xy);
  u_xlat47 = sqrt(u_xlat47);
  u_xlat47 = (u_xlat47 + -(x_65.x_ClearCentre.z));
  u_xlat47 = (u_xlat41 * u_xlat47);
  u_xlat47 = clamp(u_xlat47, 0.0f, 1.0f);
  u_xlat10.x = ((u_xlat47 * -2.0f) + 3.0f);
  u_xlat47 = (u_xlat47 * u_xlat47);
  u_xlat47 = ((-(u_xlat10.x) * u_xlat47) + 1.0f);
  u_xlat10.x = dot(u_xlat9.xy, x_421);
  u_xlat10.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat10.x);
  u_xlat10.x = sin(u_xlat10.x);
  u_xlat9.x = dot(u_xlat9.xy, x_440);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat10.x);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat10.x * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat47 = ((-(x_65.x_ClearDepth) * u_xlat47) + u_xlat9.x);
  u_xlat47 = (u_xlat47 + x_65.x_Blanket);
  u_xlat40 = ((u_xlat40 * 2.0f) + -1.0f);
  u_xlat40 = ((x_65.x_SwellAmp * u_xlat40) + u_xlat47);
  u_xlat32 = (u_xlat32 * x_65.x_PuffAmp);
  u_xlat47 = ((u_xlat21.x * u_xlat30) + u_xlat42);
  u_xlat40 = ((u_xlat32 * u_xlat47) + u_xlat40);
  u_xlat32 = (u_xlat8.x * x_65.x_SmallAmp);
  u_xlat8.x = ((u_xlat21.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat40 = ((u_xlat32 * u_xlat8.x) + u_xlat40);
  u_xlat40 = ((u_xlat40 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat8 = vec4f(((u_xlat3.yx * x_1089)).xy, u_xlat8.zw);
  u_xlat8 = vec4f(((u_xlat8.xy * x_19.x_GeoCloudWind.zz)).xy, u_xlat8.zw);
  u_xlat15 = vec3f((((u_xlat8.xy * x_162) + u_xlat15.xy)).xy, u_xlat15.z);
  u_xlat8 = vec4f(((-(u_xlat15.xy) + u_xlat9.zw)).xy, u_xlat8.zw);
  u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
  u_xlat8 = vec4f((((u_xlat8.xy * x_273) + x_277)).xy, u_xlat8.zw);
  u_xlat32 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat14.x).x;
  u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.zw, u_xlat14.x).y;
  u_xlat21.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat11.zw, u_xlat34.x).z;
  u_xlat47 = (u_xlat32 + -0.34999999403953552246f);
  u_xlat47 = (u_xlat47 + u_xlat47);
  u_xlat47 = clamp(u_xlat47, 0.0f, 1.0f);
  u_xlat9.x = ((u_xlat47 * -2.0f) + 3.0f);
  u_xlat47 = (u_xlat47 * u_xlat47);
  u_xlat47 = (u_xlat47 * u_xlat9.x);
  u_xlat9.x = dot(u_xlat12.zw, u_xlat12.zw);
  u_xlat9.x = sqrt(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + -(x_65.x_ClearCentre.z));
  u_xlat9.x = (u_xlat41 * u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat22.x = ((u_xlat9.x * -2.0f) + 3.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat9.x = ((-(u_xlat22.x) * u_xlat9.x) + 1.0f);
  u_xlat22.x = dot(u_xlat9.zw, x_421);
  u_xlat22.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat22.x);
  u_xlat35.x = dot(u_xlat9.zw, x_440);
  u_xlat35.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat35.x);
  u_xlat22.y = (u_xlat35.x + 1.29999995231628417969f);
  u_xlat22 = sin(u_xlat22);
  u_xlat35.x = (u_xlat22.y * u_xlat22.x);
  u_xlat35.x = (u_xlat35.x * 0.40000000596046447754f);
  u_xlat22.x = ((u_xlat22.x * 0.60000002384185791016f) + u_xlat35.x);
  u_xlat22.x = (u_xlat22.x * x_19.x_GeoCloudWind.w);
  u_xlat22.x = (u_xlat22.x / u_xlat1.x);
  u_xlat9.x = ((-(x_65.x_ClearDepth) * u_xlat9.x) + u_xlat22.x);
  u_xlat9.x = (u_xlat9.x + x_65.x_Blanket);
  u_xlat32 = ((u_xlat32 * 2.0f) + -1.0f);
  u_xlat32 = ((x_65.x_SwellAmp * u_xlat32) + u_xlat9.x);
  u_xlat8.x = (u_xlat8.x * x_65.x_PuffAmp);
  u_xlat9.x = ((u_xlat47 * u_xlat30) + u_xlat42);
  u_xlat32 = ((u_xlat8.x * u_xlat9.x) + u_xlat32);
  u_xlat8.x = (u_xlat21.x * x_65.x_SmallAmp);
  u_xlat21.x = ((u_xlat47 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat32 = ((u_xlat8.x * u_xlat21.x) + u_xlat32);
  u_xlat32 = ((u_xlat32 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat6.x = (-(u_xlat40) + u_xlat27.x);
  u_xlat6.w = (u_xlat27.x + -(u_xlat32));
  u_xlat27.x = dot(u_xlat6.xyw, u_xlat6.xyw);
  u_xlat27.x = inverseSqrt(u_xlat27.x);
  u_xlat9 = ((-(u_xlat3.xyxy) * vec4f(1.20000004768371582031f)) + u_xlat5.xzxz);
  u_xlat9 = (u_xlat9 / vec4f(x_65.x_TileSize));
  u_xlat8 = vec4f(((u_xlat9.zw * vec2f(x_65.x_DetailScale))).xy, u_xlat8.zw);
  u_xlat40 = (x_65.x_DetailScale * 0.5f);
  u_xlat40 = max(u_xlat40, 1.0f);
  u_xlat40 = log2(u_xlat40);
  u_xlat40 = (u_xlat40 + u_xlat14.x);
  u_xlat32 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat40).w;
  u_xlat32 = ((u_xlat32 * 2.0f) + -1.0f);
  u_xlat9 = ((u_xlat9 * vec4f(x_65.x_DetailScale)) + vec4f(0.0029296875f, 0.0f, 0.0f, 0.0029296875f));
  u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat40).w;
  u_xlat8.x = ((u_xlat8.x * 2.0f) + -1.0f);
  u_xlat40 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.zw, u_xlat40).w;
  u_xlat40 = ((u_xlat40 * 2.0f) + -1.0f);
  u_xlat21.x = (u_xlat39 / x_65.x_DetailFade);
  u_xlat21.x = (-(u_xlat21.x) + 1.0f);
  u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
  u_xlat9.x = (abs(u_xlat32) + -(abs(u_xlat8.x)));
  u_xlat9.z = (-(abs(u_xlat40)) + abs(u_xlat32));
  let x_3813 = vec2f(x_65.x_DetailStrength, x_65.x_DetailStrength);
  let x_3817 = (u_xlat9.xz * vec2f(x_3813.x, x_3813.y));
  u_xlat8 = vec4f(x_3817.x, u_xlat8.yz, x_3817.y);
  let x_3824 = (u_xlat21.xx * u_xlat8.xw);
  u_xlat9 = vec4f(x_3824.x, u_xlat9.y, x_3824.y, u_xlat9.w);
  u_xlat9.y = 0.0f;
  u_xlat6 = vec4f((((u_xlat6.xyw * u_xlat27.xxx) + u_xlat9.xyz)).xyz, u_xlat6.w);
  u_xlat27.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat27.x = inverseSqrt(u_xlat27.x);
  let x_3852 = (u_xlat27.xxx * u_xlat6.xyz);
  u_xlat8 = vec4f(x_3852.xy, u_xlat8.z, x_3852.z);
  u_xlat6 = vec4f((((-(u_xlat6.xyz) * u_xlat27.xxx) + vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat6.w);
  let x_3872 = vec3f(x_65.x_NormalSoft, x_65.x_NormalSoft, x_65.x_NormalSoft);
  u_xlat6 = vec4f((((vec3f(x_3872.x, x_3872.y, x_3872.z) * u_xlat6.xyz) + u_xlat8.xyw)).xyz, u_xlat6.w);
  u_xlat27.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat27.x = inverseSqrt(u_xlat27.x);
  u_xlat6 = vec4f(((u_xlat27.xxx * u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_3912 = (u_xlat5.yyy * x_3908.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz);
  u_xlat8 = vec4f(x_3912.xy, u_xlat8.z, x_3912.z);
  let x_3923 = ((x_3908.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * u_xlat5.xxx) + u_xlat8.xyw);
  u_xlat8 = vec4f(x_3923.xy, u_xlat8.z, x_3923.z);
  let x_3934 = ((x_3908.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * u_xlat5.zzz) + u_xlat8.xyw);
  u_xlat8 = vec4f(x_3934.xy, u_xlat8.z, x_3934.z);
  let x_3942 = (u_xlat8.xyw + x_3908.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz);
  u_xlat8 = vec4f(x_3942.xy, u_xlat8.z, x_3942.z);
  let x_3947 = u_xlat8.xy;
  txVec0 = vec3f(x_3947.x, x_3947.y, u_xlat8.w);
  u_xlat27.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat40 = (-(x_3908.x_MainLightShadowParams.x) + 1.0f);
  u_xlat27.x = ((u_xlat27.x * x_3908.x_MainLightShadowParams.x) + u_xlat40);
  u_xlatb40 = (0.0f >= u_xlat8.w);
  u_xlatb45 = (u_xlat8.w >= 1.0f);
  u_xlatb40 = (u_xlatb40 | u_xlatb45);
  if (u_xlatb40) {
    x_3989 = 1.0f;
  } else {
    x_3989 = u_xlat27.x;
  }
  u_xlat27.x = x_3989;
  let x_4001 = (u_xlat5 + -(x_19.x_WorldSpaceCameraPos));
  u_xlat8 = vec4f(x_4001.xy, u_xlat8.z, x_4001.z);
  u_xlat40 = dot(u_xlat8.xyw, u_xlat8.xyw);
  u_xlat40 = ((u_xlat40 * x_3908.x_MainLightShadowParams.z) + x_3908.x_MainLightShadowParams.w);
  u_xlat40 = clamp(u_xlat40, 0.0f, 1.0f);
  u_xlat45 = (-(u_xlat27.x) + 1.0f);
  u_xlat27.x = ((u_xlat40 * u_xlat45) + u_xlat27.x);
  let x_4034 = (x_19.x_MainLightPosition.xyz * vec3f(2.59999990463256835938f));
  u_xlat8 = vec4f(x_4034.xy, u_xlat8.z, x_4034.z);
  u_xlat40 = (x_65.x_TileSize * 0.00249999994412064552f);
  let x_4047 = ((u_xlat8.xyw * vec3f(u_xlat40)) + u_xlat5);
  u_xlat8 = vec4f(x_4047.xy, u_xlat8.z, x_4047.z);
  u_xlat9 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat8.xw)).xy, u_xlat9.zw);
  u_xlat9 = vec4f(u_xlat9.xy, ((-(u_xlat15.xy) + u_xlat8.xw)).xy);
  u_xlat9 = (u_xlat9 / vec4f(x_65.x_TileSize));
  u_xlat35 = ((u_xlat9.zw * x_273) + x_277);
  u_xlat45 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat35, u_xlat14.x).x;
  u_xlat9.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat14.x).y;
  u_xlat22 = ((-(u_xlat3.xy) * x_308) + u_xlat8.xw);
  u_xlat22 = (u_xlat22 / vec2f(x_65.x_TileSize));
  u_xlat22 = ((u_xlat22 * x_326) + x_329);
  u_xlat22.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat22, u_xlat34.x).z;
  u_xlat35.x = (u_xlat45 + -0.34999999403953552246f);
  u_xlat35.x = (u_xlat35.x + u_xlat35.x);
  u_xlat35.x = clamp(u_xlat35.x, 0.0f, 1.0f);
  u_xlat48 = ((u_xlat35.x * -2.0f) + 3.0f);
  u_xlat35.x = (u_xlat35.x * u_xlat35.x);
  u_xlat35.x = (u_xlat35.x * u_xlat48);
  u_xlat10 = vec4f(((u_xlat8.xw + -(x_65.x_ClearCentre.xy))).xy, u_xlat10.zw);
  u_xlat48 = dot(u_xlat10.xy, u_xlat10.xy);
  u_xlat48 = sqrt(u_xlat48);
  u_xlat48 = (u_xlat48 + -(x_65.x_ClearCentre.z));
  u_xlat48 = (u_xlat41 * u_xlat48);
  u_xlat48 = clamp(u_xlat48, 0.0f, 1.0f);
  u_xlat10.x = ((u_xlat48 * -2.0f) + 3.0f);
  u_xlat48 = (u_xlat48 * u_xlat48);
  u_xlat48 = ((-(u_xlat10.x) * u_xlat48) + 1.0f);
  u_xlat10.x = dot(u_xlat8.xw, x_421);
  u_xlat10.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat10.x);
  u_xlat10.x = sin(u_xlat10.x);
  u_xlat8.x = dot(u_xlat8.xw, x_440);
  u_xlat8.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x + 1.29999995231628417969f);
  u_xlat8.x = sin(u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * u_xlat10.x);
  u_xlat8.x = (u_xlat8.x * 0.40000000596046447754f);
  u_xlat8.x = ((u_xlat10.x * 0.60000002384185791016f) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * x_19.x_GeoCloudWind.w);
  u_xlat8.x = (u_xlat8.x / u_xlat1.x);
  u_xlat8.x = ((-(x_65.x_ClearDepth) * u_xlat48) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x + x_65.x_Blanket);
  u_xlat45 = ((u_xlat45 * 2.0f) + -1.0f);
  u_xlat45 = ((x_65.x_SwellAmp * u_xlat45) + u_xlat8.x);
  u_xlat8.x = (u_xlat9.x * x_65.x_PuffAmp);
  u_xlat47 = ((u_xlat35.x * u_xlat30) + u_xlat42);
  u_xlat45 = ((u_xlat8.x * u_xlat47) + u_xlat45);
  u_xlat8.x = (u_xlat22.x * x_65.x_SmallAmp);
  u_xlat47 = ((u_xlat35.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat45 = ((u_xlat8.x * u_xlat47) + u_xlat45);
  u_xlat45 = ((u_xlat45 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat45 = (-(u_xlat8.y) + u_xlat45);
  u_xlat45 = max(u_xlat45, 0.0f);
  let x_4331 = (vec3f(u_xlat40) * x_19.x_MainLightPosition.xyz);
  u_xlat8 = vec4f(x_4331.xy, u_xlat8.z, x_4331.z);
  u_xlat9 = vec4f((((u_xlat8.xyw * vec3f(7.40000009536743164062f)) + u_xlat5)).xyz, u_xlat9.w);
  u_xlat10 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(u_xlat10.xy, ((-(u_xlat4.xy) + u_xlat9.xz)).xy);
  u_xlat10 = (u_xlat10 / vec4f(x_65.x_TileSize));
  u_xlat36 = ((u_xlat10.zw * x_273) + x_277);
  u_xlat40 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat36, u_xlat14.x).x;
  u_xlat48 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat14.x).y;
  u_xlat10 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_326) + x_329)).xy, u_xlat10.zw);
  u_xlat10.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat34.x).z;
  u_xlat23 = (u_xlat40 + -0.34999999403953552246f);
  u_xlat23 = (u_xlat23 + u_xlat23);
  u_xlat23 = clamp(u_xlat23, 0.0f, 1.0f);
  u_xlat36.x = ((u_xlat23 * -2.0f) + 3.0f);
  u_xlat23 = (u_xlat23 * u_xlat23);
  u_xlat23 = (u_xlat23 * u_xlat36.x);
  u_xlat36 = (u_xlat9.xz + -(x_65.x_ClearCentre.xy));
  u_xlat36.x = dot(u_xlat36, u_xlat36);
  u_xlat36.x = sqrt(u_xlat36.x);
  u_xlat36.x = (u_xlat36.x + -(x_65.x_ClearCentre.z));
  u_xlat36.x = (u_xlat41 * u_xlat36.x);
  u_xlat36.x = clamp(u_xlat36.x, 0.0f, 1.0f);
  u_xlat49 = ((u_xlat36.x * -2.0f) + 3.0f);
  u_xlat36.x = (u_xlat36.x * u_xlat36.x);
  u_xlat36.x = ((-(u_xlat49) * u_xlat36.x) + 1.0f);
  u_xlat49 = dot(u_xlat9.xz, x_421);
  u_xlat49 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat49);
  u_xlat49 = sin(u_xlat49);
  u_xlat9.x = dot(u_xlat9.xz, x_440);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat49);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat49 * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat9.x = ((-(x_65.x_ClearDepth) * u_xlat36.x) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + x_65.x_Blanket);
  u_xlat40 = ((u_xlat40 * 2.0f) + -1.0f);
  u_xlat40 = ((x_65.x_SwellAmp * u_xlat40) + u_xlat9.x);
  u_xlat9.x = (u_xlat48 * x_65.x_PuffAmp);
  u_xlat35.x = ((u_xlat23 * u_xlat30) + u_xlat42);
  u_xlat40 = ((u_xlat9.x * u_xlat35.x) + u_xlat40);
  u_xlat9.x = (u_xlat10.x * x_65.x_SmallAmp);
  u_xlat35.x = ((u_xlat23 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat40 = ((u_xlat9.x * u_xlat35.x) + u_xlat40);
  u_xlat40 = ((u_xlat40 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat40 = (-(u_xlat9.y) + u_xlat40);
  u_xlat40 = max(u_xlat40, 0.0f);
  u_xlat40 = (u_xlat40 + u_xlat45);
  u_xlat9 = vec4f((((u_xlat8.xyw * vec3f(15.40000057220458984375f)) + u_xlat5)).xyz, u_xlat9.w);
  u_xlat10 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat4 = vec3f(((-(u_xlat4.xy) + u_xlat9.xz)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_273) + x_277)).xy, u_xlat4.z);
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat14.x).x;
  u_xlat17 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat14.x).y;
  u_xlat10 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_326) + x_329)).xy, u_xlat10.zw);
  u_xlat45 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat34.x).z;
  u_xlat48 = (u_xlat4.x + -0.34999999403953552246f);
  u_xlat48 = (u_xlat48 + u_xlat48);
  u_xlat48 = clamp(u_xlat48, 0.0f, 1.0f);
  u_xlat10.x = ((u_xlat48 * -2.0f) + 3.0f);
  u_xlat48 = (u_xlat48 * u_xlat48);
  u_xlat48 = (u_xlat48 * u_xlat10.x);
  u_xlat10 = vec4f(((u_xlat9.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat10.zw);
  u_xlat10.x = dot(u_xlat10.xy, u_xlat10.xy);
  u_xlat10.x = sqrt(u_xlat10.x);
  u_xlat10.x = (u_xlat10.x + -(x_65.x_ClearCentre.z));
  u_xlat10.x = (u_xlat41 * u_xlat10.x);
  u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
  u_xlat23 = ((u_xlat10.x * -2.0f) + 3.0f);
  u_xlat10.x = (u_xlat10.x * u_xlat10.x);
  u_xlat10.x = ((-(u_xlat23) * u_xlat10.x) + 1.0f);
  u_xlat23 = dot(u_xlat9.xz, x_421);
  u_xlat23 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat23);
  u_xlat23 = sin(u_xlat23);
  u_xlat9.x = dot(u_xlat9.xz, x_440);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat23);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat23 * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat9.x = ((-(x_65.x_ClearDepth) * u_xlat10.x) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + x_65.x_Blanket);
  u_xlat4.x = ((u_xlat4.x * 2.0f) + -1.0f);
  u_xlat4.x = ((x_65.x_SwellAmp * u_xlat4.x) + u_xlat9.x);
  u_xlat17 = (u_xlat17 * x_65.x_PuffAmp);
  u_xlat9.x = ((u_xlat48 * u_xlat30) + u_xlat42);
  u_xlat4.x = ((u_xlat17 * u_xlat9.x) + u_xlat4.x);
  u_xlat17 = (u_xlat45 * x_65.x_SmallAmp);
  u_xlat45 = ((u_xlat48 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat4.x = ((u_xlat17 * u_xlat45) + u_xlat4.x);
  u_xlat4.x = ((u_xlat4.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat4.x = (-(u_xlat9.y) + u_xlat4.x);
  u_xlat4.x = max(u_xlat4.x, 0.0f);
  u_xlat40 = (u_xlat40 + u_xlat4.x);
  let x_4949 = ((u_xlat8.xyw * vec3f(26.6000003814697265625f)) + u_xlat5);
  u_xlat8 = vec4f(x_4949.xy, u_xlat8.z, x_4949.z);
  u_xlat4 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat8.xw)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat2 = vec4f(((-(u_xlat15.xy) + u_xlat8.xw)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy / vec2f(x_65.x_TileSize))).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * x_273) + x_277)).xy, u_xlat2.zw);
  u_xlat2.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat2.xy, u_xlat14.x).x;
  u_xlat15.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat14.x).y;
  u_xlat4 = vec3f((((-(u_xlat3.xy) * x_308) + u_xlat8.xw)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_326) + x_329)).xy, u_xlat4.z);
  u_xlat28.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat34.x).z;
  u_xlat4.x = (u_xlat2.x + -0.34999999403953552246f);
  u_xlat4.x = (u_xlat4.x + u_xlat4.x);
  u_xlat4.x = clamp(u_xlat4.x, 0.0f, 1.0f);
  u_xlat17 = ((u_xlat4.x * -2.0f) + 3.0f);
  u_xlat4.x = (u_xlat4.x * u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * u_xlat17);
  u_xlat9 = vec4f(((u_xlat8.xw + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
  u_xlat17 = dot(u_xlat9.xy, u_xlat9.xy);
  u_xlat17 = sqrt(u_xlat17);
  u_xlat17 = (u_xlat17 + -(x_65.x_ClearCentre.z));
  u_xlat41 = (u_xlat41 * u_xlat17);
  u_xlat41 = clamp(u_xlat41, 0.0f, 1.0f);
  u_xlat17 = ((u_xlat41 * -2.0f) + 3.0f);
  u_xlat41 = (u_xlat41 * u_xlat41);
  u_xlat41 = ((-(u_xlat17) * u_xlat41) + 1.0f);
  u_xlat17 = dot(u_xlat8.xw, x_421);
  u_xlat17 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat17);
  u_xlat17 = sin(u_xlat17);
  u_xlat45 = dot(u_xlat8.xw, x_440);
  u_xlat29 = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat45);
  u_xlat29 = (u_xlat29 + 1.29999995231628417969f);
  u_xlat29 = sin(u_xlat29);
  u_xlat29 = (u_xlat29 * u_xlat17);
  u_xlat29 = (u_xlat29 * 0.40000000596046447754f);
  u_xlat29 = ((u_xlat17 * 0.60000002384185791016f) + u_xlat29);
  u_xlat29 = (u_xlat29 * x_19.x_GeoCloudWind.w);
  u_xlat29 = (u_xlat29 / u_xlat1.x);
  u_xlat41 = ((-(x_65.x_ClearDepth) * u_xlat41) + u_xlat29);
  u_xlat41 = (u_xlat41 + x_65.x_Blanket);
  u_xlat2.x = ((u_xlat2.x * 2.0f) + -1.0f);
  u_xlat2.x = ((x_65.x_SwellAmp * u_xlat2.x) + u_xlat41);
  u_xlat15.x = (u_xlat15.x * x_65.x_PuffAmp);
  u_xlat41 = ((u_xlat4.x * u_xlat30) + u_xlat42);
  u_xlat2.x = ((u_xlat15.x * u_xlat41) + u_xlat2.x);
  u_xlat15.x = (u_xlat28.x * x_65.x_SmallAmp);
  u_xlat28.x = ((u_xlat4.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat2.x = ((u_xlat15.x * u_xlat28.x) + u_xlat2.x);
  u_xlat2.x = ((u_xlat2.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat2.x = (-(u_xlat8.y) + u_xlat2.x);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  u_xlat40 = (u_xlat40 + u_xlat2.x);
  u_xlat40 = (-(u_xlat40) * x_65.x_ShadowDensity);
  u_xlat40 = (u_xlat40 * 1.44269502162933349609f);
  u_xlat40 = exp2(u_xlat40);
  u_xlat2.x = (u_xlat5.y + -(x_65.x_BaseY));
  u_xlat1.x = (u_xlat2.x / u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat2.x = (-(x_65.x_CreaseDark) + 1.0f);
  u_xlat1.x = (u_xlat1.x + -0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * 1.42857146263122558594f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat15.x = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat15.x);
  u_xlat15.x = (-(u_xlat2.x) + 1.0f);
  u_xlat1.x = ((u_xlat1.x * u_xlat15.x) + u_xlat2.x);
  u_xlat2.x = dot(u_xlat6.xyz, x_19.x_MainLightPosition.xyz);
  u_xlat15.x = (u_xlat2.x + x_65.x_Wrap);
  u_xlat28.x = (x_65.x_Wrap + 1.0f);
  u_xlat15.x = (u_xlat15.x / u_xlat28.x);
  u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
  u_xlat4 = (x_19.x_MainLightColor.xyz * x_65.x_SunTint.xyz);
  u_xlat4 = (u_xlat4 * vec3f(x_65.x_SunStrength));
  u_xlatb28 = (0.0f < x_19.x_GeoCloudShadow.x);
  if (u_xlatb28) {
    u_xlat28.x = max(x_19.x_MainLightPosition.y, 0.20000000298023223877f);
    u_xlat28 = (x_19.x_MainLightPosition.xz / u_xlat28.xx);
    u_xlat29 = (-(u_xlat5.y) + 450.0f);
    u_xlat28 = ((u_xlat28 * vec2f(u_xlat29)) + u_xlat5.xz);
    u_xlat28 = ((-(u_xlat3.xy) * x_5396) + u_xlat28);
    u_xlat28 = (u_xlat28 / x_19.x_GeoCloudShadow.yy);
    u_xlat28.x = textureSampleLevel(x_GeoCloudNoise, sampler_GeoCloudNoise, u_xlat28, 0.0f).x;
    u_xlat41 = (-(x_19.x_GeoCloudShadow.z) + 1.0f);
    u_xlat28.x = (-(u_xlat41) + u_xlat28.x);
    u_xlat28.x = (u_xlat28.x * 6.25f);
    u_xlat28.x = clamp(u_xlat28.x, 0.0f, 1.0f);
    u_xlat41 = ((u_xlat28.x * -2.0f) + 3.0f);
    u_xlat28.x = (u_xlat28.x * u_xlat28.x);
    u_xlat28.x = (u_xlat28.x * u_xlat41);
    u_xlat3 = vec4f(((u_xlat5.xz + -(x_19.x_GeoCloudCentre.xy))).xy, u_xlat3.zw);
    u_xlat41 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat41 = sqrt(u_xlat41);
    u_xlat3.x = (x_19.x_GeoCloudShadow.w * 0.79999995231628417969f);
    u_xlat41 = (u_xlat41 + -(x_19.x_GeoCloudShadow.w));
    u_xlat3.x = (1.0f / u_xlat3.x);
    u_xlat41 = (u_xlat41 * u_xlat3.x);
    u_xlat41 = clamp(u_xlat41, 0.0f, 1.0f);
    u_xlat3.x = ((u_xlat41 * -2.0f) + 3.0f);
    u_xlat41 = (u_xlat41 * u_xlat41);
    u_xlat41 = (u_xlat41 * u_xlat3.x);
    u_xlat28.x = (u_xlat28.x * x_19.x_GeoCloudShadow.x);
    u_xlat28.x = ((-(u_xlat28.x) * u_xlat41) + 1.0f);
  } else {
    u_xlat28.x = 1.0f;
  }
  u_xlat3 = vec4f(((u_xlat15.xxx * u_xlat4)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((vec3f(u_xlat40) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((u_xlat27.xxx * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat27.x = ((u_xlat6.y * 0.5f) + 0.5f);
  u_xlat27.x = clamp(u_xlat27.x, 0.0f, 1.0f);
  u_xlat8 = vec4f(((x_65.x_AmbientTop.xyz + -(x_65.x_AmbientBottom.xyz))).xyz, u_xlat8.w);
  u_xlat8 = vec4f((((u_xlat27.xxx * u_xlat8.xyz) + x_65.x_AmbientBottom.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((u_xlat1.xxx * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat1.x = (-(u_xlat28.x) + 1.0f);
  u_xlat9 = vec4f((((-(u_xlat1.xxx) * vec3f(0.60000002384185791016f, 0.47999998927116394043f, 0.30000001192092895508f)) + x_5578)).xyz, u_xlat9.w);
  u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat9.xyz)).xyz, u_xlat8.w);
  u_xlat1.x = dot(u_xlat0, x_19.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * x_65.x_ScatterPower);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat27.x = dot(u_xlat6.xyz, -(u_xlat0));
  u_xlat27.x = clamp(u_xlat27.x, 0.0f, 1.0f);
  u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat28.xxx) + u_xlat8.xyz)).xyz, u_xlat3.w);
  u_xlat6 = vec4f(((x_19.x_MainLightColor.xyz * x_65.x_ScatterColor.xyz)).xyz, u_xlat6.w);
  let x_5653 = vec3f(x_65.x_ScatterStrength, x_65.x_ScatterStrength, x_65.x_ScatterStrength);
  u_xlat6 = vec4f(((u_xlat6.xyz * vec3f(x_5653.x, x_5653.y, x_5653.z))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat1.xxx * u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_5673 = (-(u_xlat27.xx) + vec2f(1.0f, 1.35000002384185791016f));
  u_xlat1 = vec4f(x_5673.x, u_xlat1.y, x_5673.y, u_xlat1.w);
  u_xlat6 = vec4f(((u_xlat1.zzz * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat3 = vec4f((((x_65.x_Albedo.xyz * u_xlat3.xyz) + u_xlat6.xyz)).xyz, u_xlat3.w);
  u_xlat27.x = ((u_xlat2.x * 0.5f) + 0.5f);
  u_xlat27.x = clamp(u_xlat27.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * 2.5f);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat2 = vec4f((((-(vec2f(u_xlat39)) * vec2f(0.00083333335351198912f, 0.00071428570663556457f)) + x_5723)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(clamp(u_xlat2.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat2.zw);
  u_xlat1.x = (u_xlat1.x * u_xlat2.x);
  u_xlat6 = vec4f(((x_19.x_MainLightColor.xyz * x_65.x_GoldColor.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat6.xyz * vec3f(x_65.x_GoldRim))).xyz, u_xlat6.w);
  u_xlat8 = vec4f(((u_xlat1.xxx * u_xlat6.xyz)).xyz, u_xlat8.w);
  u_xlat2.x = (u_xlat27.x * u_xlat27.x);
  u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat2.xxx)).xyz, u_xlat8.w);
  u_xlat3 = vec4f((((u_xlat8.xyz * vec3f(u_xlat40)) + u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat1.x = (u_xlat1.x * x_65.x_RimShade);
  u_xlat27.x = (-(u_xlat27.x) + 1.0f);
  u_xlat1.x = (u_xlat27.x * u_xlat1.x);
  u_xlat8 = vec4f(((x_65.x_RimColor.xyz + vec3f(-1.0f))).xyz, u_xlat8.w);
  let x_5818 = ((u_xlat1.xxx * u_xlat8.xyz) + x_5578);
  u_xlat1 = vec4f(x_5818.x, u_xlat1.y, x_5818.yz);
  u_xlat8 = vec4f(((u_xlat1.xzw * u_xlat3.xyz)).xyz, u_xlat8.w);
  u_xlat4 = (u_xlat4 * x_5830);
  let x_5839 = ((u_xlat4 * u_xlat28.xxx) + x_65.x_AmbientTop.xyz);
  u_xlat2 = vec4f(x_5839.x, u_xlat2.y, x_5839.yz);
  u_xlat4 = (u_xlat6.xyz * vec3f(0.25f));
  let x_5854 = ((x_65.x_Albedo.xyz * u_xlat2.xzw) + u_xlat4);
  u_xlat2 = vec4f(x_5854.x, u_xlat2.y, x_5854.yz);
  u_xlat42 = (-(u_xlat43) * x_65.x_FuzzStrength);
  u_xlat42 = (u_xlat42 * 1.44269502162933349609f);
  u_xlat42 = exp2(u_xlat42);
  u_xlat42 = (-(u_xlat42) + 1.0f);
  u_xlat42 = ((u_xlat44 * 0.20000000298023223877f) + u_xlat42);
  u_xlat42 = clamp(u_xlat42, 0.0f, 1.0f);
  let x_5884 = ((-(u_xlat3.xyz) * u_xlat1.xzw) + u_xlat2.xzw);
  u_xlat1 = vec4f(x_5884.x, u_xlat1.y, x_5884.yz);
  let x_5894 = ((vec3f(u_xlat42) * u_xlat1.xzw) + u_xlat8.xyz);
  u_xlat1 = vec4f(x_5894.x, u_xlat1.y, x_5894.yz);
  let x_5899 = (u_xlat7.xy * x_5396);
  u_xlat2 = vec4f(x_5899.x, u_xlat2.y, x_5899.y, u_xlat2.w);
  u_xlat2.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat2.xz, u_xlat14.x).y;
  u_xlat28 = ((u_xlat7.zw * vec2f(3.70000004768371582031f)) + vec2f(0.31000000238418579102f));
  u_xlat14.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat28, u_xlat14.x).z;
  u_xlat14.x = (u_xlat14.x * 0.40000000596046447754f);
  u_xlat14.x = ((u_xlat2.x * 0.60000002384185791016f) + u_xlat14.x);
  u_xlat14.x = (u_xlat14.x + -0.05000000074505805969f);
  u_xlat14.x = (u_xlat14.x * 1.17647063732147216797f);
  u_xlat14.x = clamp(u_xlat14.x, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat14.x * -2.0f) + 3.0f);
  u_xlat14.x = (u_xlat14.x * u_xlat14.x);
  u_xlat14.x = (u_xlat14.x * u_xlat2.x);
  u_xlat2.x = (-(x_65.x_CottonAmount) + 1.0f);
  u_xlat28.x = ((x_65.x_CottonAmount * 0.25f) + 1.0f);
  u_xlat28.x = (-(u_xlat2.x) + u_xlat28.x);
  u_xlat14.x = ((u_xlat14.x * u_xlat28.x) + u_xlat2.x);
  u_xlat14.x = (u_xlat14.x + -1.0f);
  u_xlat14.x = ((u_xlat2.y * u_xlat14.x) + 1.0f);
  u_xlat1 = vec4f(((u_xlat14.xxx * u_xlat1.xzw)).xyz, u_xlat1.w);
  u_xlat40 = (-(u_xlat39) / x_65.x_MidHazeDistance);
  u_xlat40 = (u_xlat40 * 1.44269502162933349609f);
  u_xlat40 = exp2(u_xlat40);
  u_xlat40 = (-(u_xlat40) + 1.0f);
  u_xlat40 = (u_xlat40 * x_65.x_MidHazeMax);
  u_xlat2 = vec4f(((x_65.x_AmbientTop.xyz * x_5830)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_19.x_MainLightColor.xyz * vec3f(0.18000000715255737305f)) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_65.x_MidHazeColor.xyz * u_xlat2.xyz) + -(u_xlat1.xyz))).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((vec3f(u_xlat40) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat40 = (u_xlat39 / x_65.x_HazeDistance);
  u_xlat40 = max(u_xlat40, 0.0f);
  u_xlat40 = log2(u_xlat40);
  u_xlat40 = (u_xlat40 * x_65.x_HazePower);
  u_xlat40 = exp2(u_xlat40);
  u_xlat40 = (u_xlat40 * -1.44269502162933349609f);
  u_xlat40 = exp2(u_xlat40);
  u_xlat40 = (-(u_xlat40) + 1.0f);
  u_xlat2 = vec4f(((u_xlat0.xz + x_6100)).xy, u_xlat2.zw);
  u_xlat28.x = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat28.x = inverseSqrt(u_xlat28.x);
  u_xlat2 = vec4f(((u_xlat28.xx * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat28 = (x_19.x_MainLightPosition.xz + x_6100);
  u_xlat3.x = dot(u_xlat28, u_xlat28);
  u_xlat3.x = inverseSqrt(u_xlat3.x);
  u_xlat28 = (u_xlat28 * u_xlat3.xx);
  u_xlat2.x = dot(u_xlat2.xy, u_xlat28);
  u_xlat2.x = ((u_xlat2.x * 0.5f) + 0.5f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat2.x = log2(u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * x_65.x_HorizonWarmth);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat15 = (-(x_65.x_HorizonColor.xyz) + x_65.x_SunHorizonColor.xyz);
  u_xlat2 = vec4f((((u_xlat2.xxx * u_xlat15) + x_65.x_HorizonColor.xyz)).xyz, u_xlat2.w);
  u_xlat41 = max(u_xlat0.y, -1.0f);
  u_xlat41 = min(u_xlat41, 1.0f);
  u_xlat3.x = (-(abs(u_xlat41)) + 1.0f);
  u_xlat3.x = sqrt(u_xlat3.x);
  u_xlat16 = ((abs(u_xlat41) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat16 = ((u_xlat16 * abs(u_xlat41)) + -0.21211439371109008789f);
  u_xlat16 = ((u_xlat16 * abs(u_xlat41)) + 1.57072877883911132812f);
  u_xlat29 = (u_xlat3.x * u_xlat16);
  u_xlat29 = ((u_xlat29 * -2.0f) + 3.14159274101257324219f);
  u_xlatb41 = (u_xlat41 < -(u_xlat41));
  u_xlat41 = select(0.0f, u_xlat29, u_xlatb41);
  u_xlat41 = ((u_xlat16 * u_xlat3.x) + u_xlat41);
  u_xlat41 = (-(u_xlat41) + 1.57079637050628662109f);
  u_xlat3 = vec4f(((-(u_xlat2.xyz) + x_65.x_BelowColor.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((u_xlat3.xyz * vec3f(0.64999997615814208984f))).xyz, u_xlat3.w);
  u_xlat41 = ((u_xlat41 * 57.295780181884765625f) + -0.20000000298023223877f);
  u_xlat41 = (u_xlat41 * -0.37037035822868347168f);
  u_xlat41 = clamp(u_xlat41, 0.0f, 1.0f);
  u_xlat42 = ((u_xlat41 * -2.0f) + 3.0f);
  u_xlat41 = (u_xlat41 * u_xlat41);
  u_xlat41 = (u_xlat41 * u_xlat42);
  u_xlat2 = vec4f((((vec3f(u_xlat41) * u_xlat3.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((-(u_xlat1.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  SV_Target0 = vec4f((((vec3f(u_xlat40) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlat1.x = (x_65.x_FadeRadius * 0.19999998807907104492f);
  u_xlat14.x = dot(u_xlat5.xz, u_xlat5.xz);
  u_xlat14.x = sqrt(u_xlat14.x);
  u_xlat14.x = ((-(x_65.x_FadeRadius) * 0.80000001192092895508f) + u_xlat14.x);
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat14.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat14.x = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat14.x) * u_xlat1.x) + 1.0f);
  u_xlat14 = (vs_TEXCOORD1.xy / vs_TEXCOORD1.ww);
  u_xlat2 = vec4f((((-(x_19.x_CameraDepthTexture_TexelSize.xy) * vec2f(0.5f)) + x_5723)).xy, u_xlat2.zw);
  u_xlat14 = min(u_xlat14, u_xlat2.xy);
  u_xlat14 = (u_xlat14 * x_19.x_RTHandleScale.xy);
  u_xlat14 = (u_xlat14 * x_19.x_ScreenSize.xy);
  u_xlatu2 = vec4u(vec2u(u_xlat14).xy, u_xlatu2.zw);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  u_xlat14.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu2.xy), bitcast<i32>(u_xlatu2.w)).x;
  u_xlat14.x = ((x_19.x_ZBufferParams.z * u_xlat14.x) + x_19.x_ZBufferParams.w);
  u_xlat14.x = (1.0f / u_xlat14.x);
  u_xlat2.x = -(x_19.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat2.y = -(x_19.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat2.z = -(x_19.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat0.x = dot(u_xlat0, u_xlat2.xyz);
  u_xlat0.x = max(u_xlat0.x, 0.00009999999747378752f);
  u_xlat0.x = (u_xlat14.x / u_xlat0.x);
  u_xlat0.x = (-(u_xlat39) + u_xlat0.x);
  u_xlat0.x = (u_xlat0.x + x_65.x_SoftDepth);
  u_xlat0.x = (u_xlat0.x / x_65.x_SoftDepth);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  SV_Target0.w = (u_xlat0.x * u_xlat1.x);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec3f, @location(1) vs_TEXCOORD1_param : vec4f, @builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

