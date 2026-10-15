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
  x_MainLightShadowOffset0 : vec4f,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4f,
  /* @offset(432) */
  x_MainLightShadowParams : vec4f,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4f,
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

@group(1) @binding(1) var<uniform> x_3859 : LightShadows;

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

const x_4005 = vec2f(0.5f);

const x_4026 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_4051 = vec2f(1.0f);

const x_4087 = vec2f(0.15999999642372131348f);

const x_4157 = vec3f(-2.5f, -0.5f, 1.5f);

const x_4533 = vec2f(2.0f);

const x_4565 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_4568 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_4575 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_4613 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_6638 = vec2f(1.29999995231628417969f);

const x_6820 = vec3f(1.0f);

const x_7070 = vec3f(0.89999997615814208984f);

const x_7339 = vec2f(0.00000999999974737875f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat69 : f32;
  var u_xlat1 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat24 : vec2f;
  var u_xlat47 : vec2f;
  var u_xlat70 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat25 : vec3f;
  var u_xlat4 : vec3f;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlat50 : f32;
  var u_xlat5 : vec3f;
  var u_xlat73 : f32;
  var u_xlat74 : f32;
  var u_xlat29 : vec3f;
  var u_xlati6 : i32;
  var u_xlati52 : i32;
  var u_xlatb75 : bool;
  var u_xlat7 : vec4f;
  var u_xlat75 : f32;
  var u_xlat76 : f32;
  var u_xlat8 : vec4f;
  var u_xlat54 : vec2f;
  var u_xlat31 : vec3f;
  var u_xlat77 : f32;
  var u_xlat9 : vec4f;
  var u_xlat53 : vec2f;
  var u_xlatb30 : bool;
  var u_xlat30 : vec2f;
  var u_xlatb53 : bool;
  var u_xlat6 : vec4f;
  var u_xlat52 : f32;
  var u_xlatb47 : bool;
  var x_1041 : vec2f;
  var x_1406 : vec2f;
  var x_1749 : vec2f;
  var x_2092 : vec2f;
  var x_2435 : vec2f;
  var u_xlat28 : f32;
  var x_2808 : f32;
  var u_xlat32 : vec2f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat55 : vec2f;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb70 : bool;
  var u_xlat57 : vec2f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat33 : vec3f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
  var u_xlat34 : vec2f;
  var u_xlat63 : vec2f;
  var u_xlat58 : vec2f;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
  var txVec13 : vec3f;
  var txVec14 : vec3f;
  var txVec15 : vec3f;
  var txVec16 : vec3f;
  var txVec17 : vec3f;
  var txVec18 : vec3f;
  var txVec19 : vec3f;
  var txVec20 : vec3f;
  var txVec21 : vec3f;
  var txVec22 : vec3f;
  var txVec23 : vec3f;
  var txVec24 : vec3f;
  var txVec25 : vec3f;
  var txVec26 : vec3f;
  var txVec27 : vec3f;
  var txVec28 : vec3f;
  var txVec29 : vec3f;
  var x_5141 : f32;
  var u_xlat48 : vec2f;
  var u_xlat56 : vec2f;
  var u_xlat78 : f32;
  var u_xlat27 : f32;
  var u_xlat49 : f32;
  var u_xlatb48 : bool;
  var u_xlat26 : f32;
  var u_xlatb71 : bool;
  var u_xlatu2 : vec4u;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (vs_TEXCOORD0 + -(x_19.x_WorldSpaceCameraPos));
  u_xlat69 = dot(u_xlat0, u_xlat0);
  u_xlat69 = sqrt(u_xlat69);
  u_xlat1.x = max(u_xlat69, 0.00009999999747378752f);
  u_xlat0 = (u_xlat0 / u_xlat1.xxx);
  u_xlatb1 = (-0.00009999999747378752f < u_xlat0.y);
  if (((select(0i, 1i, u_xlatb1) * -1i) != 0i)) {
    discard;
  }
  u_xlat1.x = (-(x_65.x_BaseY) + x_65.x_TopY);
  u_xlat24.x = (-(vs_TEXCOORD0.y) + x_65.x_BaseY);
  u_xlat24.x = (u_xlat24.x / u_xlat0.y);
  u_xlat24.x = min(u_xlat24.x, x_65.x_MaxMarch);
  u_xlat47.x = (u_xlat69 * x_65.x_StepScale);
  u_xlat47.x = max(u_xlat47.x, 0.34999999403953552246f);
  u_xlat70 = (u_xlat47.x * 0.5f);
  u_xlat2.x = (x_19.x_Time.y + x_19.x_GeoCloudCentre.w);
  u_xlat3 = vec4f(((u_xlat2.xxx * x_19.x_GeoCloudWind.xyz)).xyz, u_xlat3.w);
  u_xlat25 = vec3f(((u_xlat3.xy * vec2f(0.69999998807907104492f))).xy, u_xlat25.z);
  u_xlat3.w = -(u_xlat3.y);
  u_xlat4 = vec3f(((u_xlat3.wx * x_19.x_GeoCloudWind.zz)).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_162) + u_xlat25.xy)).xy, u_xlat4.z);
  u_xlat71 = (-(x_65.x_ClearCentre.z) + x_65.x_ClearCentre.w);
  u_xlat71 = (1.0f / u_xlat71);
  u_xlat72 = (-(x_65.x_PuffSwell) + 1.0f);
  u_xlat50 = (-(u_xlat72) + 1.0f);
  u_xlat5.z = u_xlat70;
  u_xlat73 = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat74 = 0.0f;
  u_xlat29.x = u_xlat47.x;
  u_xlati6 = 0i;
  u_xlati52 = 0i;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatb75 = (u_xlati52 >= 64i);
    if (u_xlatb75) {
      break;
    }
    u_xlat7 = vec4f((((u_xlat0 * u_xlat5.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat75 = (u_xlat69 + u_xlat5.z);
    u_xlat76 = ((u_xlat75 * x_65.x_LodScale) + 1.0f);
    u_xlat76 = log2(u_xlat76);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat4.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat54 = ((u_xlat8.zw * x_273) + x_277);
    u_xlat54.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat54, u_xlat76).x;
    u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat76).y;
    let x_312 = ((-(u_xlat3.xy) * x_308) + u_xlat7.xz);
    u_xlat31 = vec3f(x_312.x, u_xlat31.y, x_312.y);
    let x_320 = (u_xlat31.xz / vec2f(x_65.x_TileSize));
    u_xlat31 = vec3f(x_320.x, u_xlat31.y, x_320.y);
    let x_330 = ((u_xlat31.xz * x_326) + x_329);
    u_xlat31 = vec3f(x_330.x, u_xlat31.y, x_330.y);
    u_xlat76 = (u_xlat76 + 0.30000001192092895508f);
    u_xlat76 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat31.xz, u_xlat76).z;
    u_xlat31.x = (u_xlat54.x + -0.34999999403953552246f);
    u_xlat31.x = (u_xlat31.x + u_xlat31.x);
    u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
    u_xlat77 = ((u_xlat31.x * -2.0f) + 3.0f);
    u_xlat31.x = (u_xlat31.x * u_xlat31.x);
    u_xlat31.x = (u_xlat31.x * u_xlat77);
    u_xlat9 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
    u_xlat77 = dot(u_xlat9.xy, u_xlat9.xy);
    u_xlat77 = sqrt(u_xlat77);
    u_xlat77 = (u_xlat77 + -(x_65.x_ClearCentre.z));
    u_xlat77 = (u_xlat71 * u_xlat77);
    u_xlat77 = clamp(u_xlat77, 0.0f, 1.0f);
    u_xlat9.x = ((u_xlat77 * -2.0f) + 3.0f);
    u_xlat77 = (u_xlat77 * u_xlat77);
    u_xlat77 = ((-(u_xlat9.x) * u_xlat77) + 1.0f);
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
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat77) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat53.x = ((u_xlat54.x * 2.0f) + -1.0f);
    u_xlat7.x = ((x_65.x_SwellAmp * u_xlat53.x) + u_xlat7.x);
    u_xlat53.x = (u_xlat8.x * x_65.x_PuffAmp);
    u_xlat8.x = ((u_xlat31.x * u_xlat50) + u_xlat72);
    u_xlat7.x = ((u_xlat53.x * u_xlat8.x) + u_xlat7.x);
    u_xlat53.x = (u_xlat76 * x_65.x_SmallAmp);
    u_xlat76 = ((u_xlat31.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat53.x * u_xlat76) + u_xlat7.x);
    u_xlat7.x = ((u_xlat7.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat7.x = (-(u_xlat7.x) + u_xlat7.y);
    u_xlatb30 = (u_xlat7.x < 0.0f);
    if (u_xlatb30) {
      u_xlati6 = -1i;
      break;
    }
    u_xlat30.x = (-(u_xlat7.x) / x_65.x_FuzzHeight);
    u_xlat30.x = (u_xlat30.x * 1.44269502162933349609f);
    u_xlat30.x = exp2(u_xlat30.x);
    u_xlat30.x = ((u_xlat30.x * u_xlat29.x) + u_xlat73);
    u_xlat53.x = (u_xlat75 * 0.01200000010430812836f);
    u_xlat53.x = max(u_xlat53.x, x_65.x_EdgeSkin);
    u_xlat7.x = (u_xlat7.x / u_xlat53.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.x = (-(u_xlat7.x) + 1.0f);
    u_xlat7.x = max(u_xlat74, u_xlat7.x);
    u_xlat75 = (u_xlat75 * x_65.x_StepScale);
    u_xlat29.x = max(u_xlat75, 0.34999999403953552246f);
    u_xlat75 = (u_xlat5.z + u_xlat29.x);
    u_xlatb53 = (u_xlat24.x < u_xlat75);
    if (u_xlatb53) {
      u_xlat5.x = u_xlat5.z;
      u_xlat73 = u_xlat30.x;
      u_xlat74 = u_xlat7.x;
      u_xlati6 = 0i;
      u_xlat5.z = u_xlat75;
      break;
    }
    u_xlat5.x = u_xlat5.z;
    u_xlat73 = u_xlat30.x;
    u_xlat74 = u_xlat7.x;
    u_xlat5.z = u_xlat75;
    u_xlati52 = (u_xlati52 + 1i);
    u_xlati6 = 0i;
  }
  if ((u_xlati6 != 0i)) {
    u_xlat47.x = (u_xlat5.z + u_xlat5.x);
    u_xlat5.y = (u_xlat47.x * 0.5f);
    u_xlat6 = vec4f((((u_xlat0 * u_xlat5.yyy) + vs_TEXCOORD0)).xyz, u_xlat6.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat7 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(u_xlat7.xy, ((-(u_xlat4.xy) + u_xlat6.xz)).xy);
    u_xlat7 = (u_xlat7 / vec4f(x_65.x_TileSize));
    u_xlat53 = ((u_xlat7.zw * x_273) + x_277);
    u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat53, u_xlat47.x).x;
    u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat47.x).y;
    u_xlat7 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(((u_xlat7.xy / vec2f(x_65.x_TileSize))).xy, u_xlat7.zw);
    u_xlat7 = vec4f((((u_xlat7.xy * x_326) + x_329)).xy, u_xlat7.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat47.x).z;
    u_xlat7.x = (u_xlat70 + -0.34999999403953552246f);
    u_xlat7.x = (u_xlat7.x + u_xlat7.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat30.x = ((u_xlat7.x * -2.0f) + 3.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat30.x);
    u_xlat30 = (u_xlat6.xz + -(x_65.x_ClearCentre.xy));
    u_xlat30.x = dot(u_xlat30, u_xlat30);
    u_xlat30.x = sqrt(u_xlat30.x);
    u_xlat30.x = (u_xlat30.x + -(x_65.x_ClearCentre.z));
    u_xlat30.x = (u_xlat71 * u_xlat30.x);
    u_xlat30.x = clamp(u_xlat30.x, 0.0f, 1.0f);
    u_xlat53.x = ((u_xlat30.x * -2.0f) + 3.0f);
    u_xlat30.x = (u_xlat30.x * u_xlat30.x);
    u_xlat30.x = ((-(u_xlat53.x) * u_xlat30.x) + 1.0f);
    u_xlat53.x = dot(u_xlat6.xz, x_421);
    u_xlat53.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat53.x);
    u_xlat53.x = sin(u_xlat53.x);
    u_xlat6.x = dot(u_xlat6.xz, x_440);
    u_xlat6.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + 1.29999995231628417969f);
    u_xlat6.x = sin(u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * u_xlat53.x);
    u_xlat6.x = (u_xlat6.x * 0.40000000596046447754f);
    u_xlat6.x = ((u_xlat53.x * 0.60000002384185791016f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * x_19.x_GeoCloudWind.w);
    u_xlat6.x = (u_xlat6.x / u_xlat1.x);
    u_xlat6.x = ((-(x_65.x_ClearDepth) * u_xlat30.x) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + x_65.x_Blanket);
    u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
    u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat6.x);
    u_xlat6.x = (u_xlat75 * x_65.x_PuffAmp);
    u_xlat52 = ((u_xlat7.x * u_xlat50) + u_xlat72);
    u_xlat70 = ((u_xlat6.x * u_xlat52) + u_xlat70);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat6.x = ((u_xlat7.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat6.x) + u_xlat70);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat6.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_1041 = u_xlat5.xy;
    } else {
      x_1041 = u_xlat5.yz;
    }
    u_xlat6 = vec4f(x_1041.xy, u_xlat6.zw);
    u_xlat47.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat47.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat5 = vec3f(((u_xlat3.yx * x_1089)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy * x_19.x_GeoCloudWind.zz)).xy, u_xlat5.z);
    u_xlat5 = vec3f((((u_xlat5.xy * x_162) + u_xlat25.xy)).xy, u_xlat5.z);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat5.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat54 = ((u_xlat8.zw * x_273) + x_277);
    u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat54, u_xlat47.x).x;
    u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_326) + x_329)).xy, u_xlat8.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).z;
    u_xlat76 = (u_xlat70 + -0.34999999403953552246f);
    u_xlat76 = (u_xlat76 + u_xlat76);
    u_xlat76 = clamp(u_xlat76, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat76 * -2.0f) + 3.0f);
    u_xlat76 = (u_xlat76 * u_xlat76);
    u_xlat76 = (u_xlat76 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat71 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat31.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat31.x) * u_xlat8.x) + 1.0f);
    u_xlat31.x = dot(u_xlat7.xz, x_421);
    u_xlat31.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat31.x);
    u_xlat31.x = sin(u_xlat31.x);
    u_xlat7.x = dot(u_xlat7.xz, x_440);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat31.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat31.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
    u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat7.x);
    u_xlat75 = (u_xlat75 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat76 * u_xlat50) + u_xlat72);
    u_xlat70 = ((u_xlat75 * u_xlat7.x) + u_xlat70);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat75 = ((u_xlat76 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat75) + u_xlat70);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat7.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_1406 = u_xlat6.xz;
    } else {
      x_1406 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_1406.xy, u_xlat6.zw);
    u_xlat47.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat47.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat5.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat54 = ((u_xlat8.zw * x_273) + x_277);
    u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat54, u_xlat47.x).x;
    u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_326) + x_329)).xy, u_xlat8.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).z;
    u_xlat76 = (u_xlat70 + -0.34999999403953552246f);
    u_xlat76 = (u_xlat76 + u_xlat76);
    u_xlat76 = clamp(u_xlat76, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat76 * -2.0f) + 3.0f);
    u_xlat76 = (u_xlat76 * u_xlat76);
    u_xlat76 = (u_xlat76 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat71 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat31.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat31.x) * u_xlat8.x) + 1.0f);
    u_xlat31.x = dot(u_xlat7.xz, x_421);
    u_xlat31.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat31.x);
    u_xlat31.x = sin(u_xlat31.x);
    u_xlat7.x = dot(u_xlat7.xz, x_440);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat31.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat31.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
    u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat7.x);
    u_xlat75 = (u_xlat75 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat76 * u_xlat50) + u_xlat72);
    u_xlat70 = ((u_xlat75 * u_xlat7.x) + u_xlat70);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat75 = ((u_xlat76 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat75) + u_xlat70);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat7.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_1749 = u_xlat6.xz;
    } else {
      x_1749 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_1749.xy, u_xlat6.zw);
    u_xlat47.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat47.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat5.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat54 = ((u_xlat8.zw * x_273) + x_277);
    u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat54, u_xlat47.x).x;
    u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_326) + x_329)).xy, u_xlat8.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).z;
    u_xlat76 = (u_xlat70 + -0.34999999403953552246f);
    u_xlat76 = (u_xlat76 + u_xlat76);
    u_xlat76 = clamp(u_xlat76, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat76 * -2.0f) + 3.0f);
    u_xlat76 = (u_xlat76 * u_xlat76);
    u_xlat76 = (u_xlat76 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat71 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat31.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat31.x) * u_xlat8.x) + 1.0f);
    u_xlat31.x = dot(u_xlat7.xz, x_421);
    u_xlat31.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat31.x);
    u_xlat31.x = sin(u_xlat31.x);
    u_xlat7.x = dot(u_xlat7.xz, x_440);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat31.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat31.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
    u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat7.x);
    u_xlat75 = (u_xlat75 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat76 * u_xlat50) + u_xlat72);
    u_xlat70 = ((u_xlat75 * u_xlat7.x) + u_xlat70);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat75 = ((u_xlat76 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat75) + u_xlat70);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat7.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_2092 = u_xlat6.xz;
    } else {
      x_2092 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_2092.xy, u_xlat6.zw);
    u_xlat47.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat47.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat5.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat54 = ((u_xlat8.zw * x_273) + x_277);
    u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat54, u_xlat47.x).x;
    u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_326) + x_329)).xy, u_xlat8.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).z;
    u_xlat76 = (u_xlat70 + -0.34999999403953552246f);
    u_xlat76 = (u_xlat76 + u_xlat76);
    u_xlat76 = clamp(u_xlat76, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat76 * -2.0f) + 3.0f);
    u_xlat76 = (u_xlat76 * u_xlat76);
    u_xlat76 = (u_xlat76 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat71 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat31.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat31.x) * u_xlat8.x) + 1.0f);
    u_xlat31.x = dot(u_xlat7.xz, x_421);
    u_xlat31.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat31.x);
    u_xlat31.x = sin(u_xlat31.x);
    u_xlat7.x = dot(u_xlat7.xz, x_440);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat31.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat31.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
    u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat7.x);
    u_xlat75 = (u_xlat75 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat76 * u_xlat50) + u_xlat72);
    u_xlat70 = ((u_xlat75 * u_xlat7.x) + u_xlat70);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat75 = ((u_xlat76 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat75) + u_xlat70);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat7.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_2435 = u_xlat6.xz;
    } else {
      x_2435 = u_xlat6.zy;
    }
    u_xlat47 = x_2435;
    u_xlat47.x = (u_xlat47.y + u_xlat47.x);
    u_xlat6.x = (u_xlat47.x * 0.5f);
    u_xlat29 = ((u_xlat0 * u_xlat6.xxx) + vs_TEXCOORD0);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat7 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat29.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(((u_xlat7.xy / vec2f(x_65.x_TileSize))).xy, u_xlat7.zw);
    u_xlat5 = vec3f(((-(u_xlat5.xy) + u_xlat29.xz)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy / vec2f(x_65.x_TileSize))).xy, u_xlat5.z);
    u_xlat5 = vec3f((((u_xlat5.xy * x_273) + x_277)).xy, u_xlat5.z);
    u_xlat5.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat5.xy, u_xlat47.x).x;
    u_xlat28 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat47.x).y;
    u_xlat7 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat29.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(((u_xlat7.xy / vec2f(x_65.x_TileSize))).xy, u_xlat7.zw);
    u_xlat7 = vec4f((((u_xlat7.xy * x_326) + x_329)).xy, u_xlat7.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat47.x).z;
    u_xlat7.x = (u_xlat5.x + -0.34999999403953552246f);
    u_xlat7.x = (u_xlat7.x + u_xlat7.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat30.x = ((u_xlat7.x * -2.0f) + 3.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat30.x);
    u_xlat30 = (u_xlat29.xz + -(x_65.x_ClearCentre.xy));
    u_xlat30.x = dot(u_xlat30, u_xlat30);
    u_xlat30.x = sqrt(u_xlat30.x);
    u_xlat30.x = (u_xlat30.x + -(x_65.x_ClearCentre.z));
    u_xlat30.x = (u_xlat71 * u_xlat30.x);
    u_xlat30.x = clamp(u_xlat30.x, 0.0f, 1.0f);
    u_xlat53.x = ((u_xlat30.x * -2.0f) + 3.0f);
    u_xlat30.x = (u_xlat30.x * u_xlat30.x);
    u_xlat30.x = ((-(u_xlat53.x) * u_xlat30.x) + 1.0f);
    u_xlat53.x = dot(u_xlat29.xz, x_421);
    u_xlat53.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat53.x);
    u_xlat53.x = sin(u_xlat53.x);
    u_xlat29.x = dot(u_xlat29.xz, x_440);
    u_xlat29.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat29.x);
    u_xlat29.x = (u_xlat29.x + 1.29999995231628417969f);
    u_xlat29.x = sin(u_xlat29.x);
    u_xlat29.x = (u_xlat29.x * u_xlat53.x);
    u_xlat29.x = (u_xlat29.x * 0.40000000596046447754f);
    u_xlat29.x = ((u_xlat53.x * 0.60000002384185791016f) + u_xlat29.x);
    u_xlat29.x = (u_xlat29.x * x_19.x_GeoCloudWind.w);
    u_xlat29.x = (u_xlat29.x / u_xlat1.x);
    u_xlat29.x = ((-(x_65.x_ClearDepth) * u_xlat30.x) + u_xlat29.x);
    u_xlat29.x = (u_xlat29.x + x_65.x_Blanket);
    u_xlat5.x = ((u_xlat5.x * 2.0f) + -1.0f);
    u_xlat5.x = ((x_65.x_SwellAmp * u_xlat5.x) + u_xlat29.x);
    u_xlat28 = (u_xlat28 * x_65.x_PuffAmp);
    u_xlat29.x = ((u_xlat7.x * u_xlat50) + u_xlat72);
    u_xlat5.x = ((u_xlat28 * u_xlat29.x) + u_xlat5.x);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat28 = ((u_xlat7.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat28) + u_xlat5.x);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat29.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_2808 = u_xlat6.x;
    } else {
      x_2808 = u_xlat47.y;
    }
    u_xlat47.x = x_2808;
  } else {
    u_xlat47.x = min(u_xlat24.x, u_xlat5.z);
  }
  u_xlat5 = ((u_xlat0 * u_xlat47.xxx) + vs_TEXCOORD0);
  u_xlat69 = (u_xlat69 + u_xlat47.x);
  u_xlat24.x = ((u_xlat69 * x_65.x_LodScale) + 1.0f);
  u_xlat24.x = log2(u_xlat24.x);
  u_xlat47.x = (u_xlat69 * 0.00400000018998980522f);
  u_xlat6.y = max(u_xlat47.x, 0.40000000596046447754f);
  u_xlat7 = ((-(x_19.x_GeoCloudWind.xyxy) * u_xlat2.xxxx) + u_xlat5.xzxz);
  u_xlat7 = (u_xlat7 / vec4f(x_65.x_TileSize));
  u_xlat47 = (-(u_xlat4.xy) + u_xlat5.xz);
  u_xlat47 = (u_xlat47 / vec2f(x_65.x_TileSize));
  u_xlat47 = ((u_xlat47 * x_273) + x_277);
  u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat47, u_xlat24.x).x;
  u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.zw, u_xlat24.x).y;
  u_xlat8 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat5.xz)).xy, u_xlat8.zw);
  u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
  u_xlat8 = vec4f((((u_xlat8.xy * x_326) + x_329)).xy, u_xlat8.zw);
  u_xlat54.x = (u_xlat24.x + 0.30000001192092895508f);
  u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat54.x).z;
  u_xlat31.x = (u_xlat47.x + -0.34999999403953552246f);
  u_xlat31.x = (u_xlat31.x + u_xlat31.x);
  u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
  u_xlat77 = ((u_xlat31.x * -2.0f) + 3.0f);
  u_xlat31.x = (u_xlat31.x * u_xlat31.x);
  u_xlat31.x = (u_xlat31.x * u_xlat77);
  u_xlat9 = vec4f(((u_xlat5.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
  u_xlat77 = dot(u_xlat9.xy, u_xlat9.xy);
  u_xlat77 = sqrt(u_xlat77);
  u_xlat77 = (u_xlat77 + -(x_65.x_ClearCentre.z));
  u_xlat77 = (u_xlat71 * u_xlat77);
  u_xlat77 = clamp(u_xlat77, 0.0f, 1.0f);
  u_xlat9.x = ((u_xlat77 * -2.0f) + 3.0f);
  u_xlat77 = (u_xlat77 * u_xlat77);
  u_xlat77 = ((-(u_xlat9.x) * u_xlat77) + 1.0f);
  u_xlat9.x = dot(u_xlat5.xz, x_421);
  u_xlat9.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat9.x);
  u_xlat32.x = dot(u_xlat5.xz, x_440);
  u_xlat32.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat32.x);
  u_xlat9.y = (u_xlat32.x + 1.29999995231628417969f);
  u_xlat9 = vec4f(sin(u_xlat9.xy).xy, u_xlat9.zw);
  u_xlat32.x = (u_xlat9.y * u_xlat9.x);
  u_xlat32.x = (u_xlat32.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat9.x * 0.60000002384185791016f) + u_xlat32.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat77 = ((-(x_65.x_ClearDepth) * u_xlat77) + u_xlat9.x);
  u_xlat77 = (u_xlat77 + x_65.x_Blanket);
  u_xlat47.x = ((u_xlat47.x * 2.0f) + -1.0f);
  u_xlat47.x = ((x_65.x_SwellAmp * u_xlat47.x) + u_xlat77);
  u_xlat70 = (u_xlat70 * x_65.x_PuffAmp);
  u_xlat77 = ((u_xlat31.x * u_xlat50) + u_xlat72);
  u_xlat47.x = ((u_xlat70 * u_xlat77) + u_xlat47.x);
  u_xlat70 = (u_xlat8.x * x_65.x_SmallAmp);
  u_xlat8.x = ((u_xlat31.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat47.x = ((u_xlat70 * u_xlat8.x) + u_xlat47.x);
  u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat6.z = 0.0f;
  u_xlat9 = (u_xlat5.xzxz + u_xlat6.yzzy);
  u_xlat10 = ((-(x_19.x_GeoCloudWind.xyxy) * u_xlat2.xxxx) + u_xlat9);
  u_xlat10 = (u_xlat10 / vec4f(x_65.x_TileSize));
  u_xlat11 = (-(u_xlat4.xyxy) + u_xlat9);
  u_xlat11 = (u_xlat11 / vec4f(x_65.x_TileSize));
  u_xlat11 = ((u_xlat11 * vec4f(0.37000000476837158203f)) + vec4f(0.12999999523162841797f, 0.61000001430511474609f, 0.12999999523162841797f, 0.61000001430511474609f));
  u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat11.xy, u_xlat24.x).x;
  u_xlat52 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat24.x).y;
  u_xlat12 = ((-(u_xlat3.xyxy) * vec4f(1.10000002384185791016f)) + u_xlat9);
  u_xlat12 = (u_xlat12 / vec4f(x_65.x_TileSize));
  u_xlat12 = ((u_xlat12 * vec4f(2.70000004768371582031f)) + vec4f(0.37000000476837158203f, 0.18999999761581420898f, 0.37000000476837158203f, 0.18999999761581420898f));
  u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat12.xy, u_xlat54.x).z;
  u_xlat31.x = (u_xlat70 + -0.34999999403953552246f);
  u_xlat31.x = (u_xlat31.x + u_xlat31.x);
  u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
  u_xlat77 = ((u_xlat31.x * -2.0f) + 3.0f);
  u_xlat31.x = (u_xlat31.x * u_xlat31.x);
  u_xlat31.x = (u_xlat31.x * u_xlat77);
  u_xlat13 = (u_xlat9 + -(x_65.x_ClearCentre.xyxy));
  u_xlat77 = dot(u_xlat13.xy, u_xlat13.xy);
  u_xlat77 = sqrt(u_xlat77);
  u_xlat77 = (u_xlat77 + -(x_65.x_ClearCentre.z));
  u_xlat77 = (u_xlat71 * u_xlat77);
  u_xlat77 = clamp(u_xlat77, 0.0f, 1.0f);
  u_xlat10.x = ((u_xlat77 * -2.0f) + 3.0f);
  u_xlat77 = (u_xlat77 * u_xlat77);
  u_xlat77 = ((-(u_xlat10.x) * u_xlat77) + 1.0f);
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
  u_xlat77 = ((-(x_65.x_ClearDepth) * u_xlat77) + u_xlat9.x);
  u_xlat77 = (u_xlat77 + x_65.x_Blanket);
  u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
  u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat77);
  u_xlat52 = (u_xlat52 * x_65.x_PuffAmp);
  u_xlat77 = ((u_xlat31.x * u_xlat50) + u_xlat72);
  u_xlat70 = ((u_xlat52 * u_xlat77) + u_xlat70);
  u_xlat52 = (u_xlat8.x * x_65.x_SmallAmp);
  u_xlat8.x = ((u_xlat31.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat70 = ((u_xlat52 * u_xlat8.x) + u_xlat70);
  u_xlat70 = ((u_xlat70 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat52 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat11.zw, u_xlat24.x).x;
  u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.zw, u_xlat24.x).y;
  u_xlat31.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat12.zw, u_xlat54.x).z;
  u_xlat77 = (u_xlat52 + -0.34999999403953552246f);
  u_xlat77 = (u_xlat77 + u_xlat77);
  u_xlat77 = clamp(u_xlat77, 0.0f, 1.0f);
  u_xlat9.x = ((u_xlat77 * -2.0f) + 3.0f);
  u_xlat77 = (u_xlat77 * u_xlat77);
  u_xlat77 = (u_xlat77 * u_xlat9.x);
  u_xlat9.x = dot(u_xlat13.zw, u_xlat13.zw);
  u_xlat9.x = sqrt(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + -(x_65.x_ClearCentre.z));
  u_xlat9.x = (u_xlat71 * u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat32.x = ((u_xlat9.x * -2.0f) + 3.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat9.x = ((-(u_xlat32.x) * u_xlat9.x) + 1.0f);
  u_xlat32.x = dot(u_xlat9.zw, x_421);
  u_xlat32.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat32.x);
  u_xlat55.x = dot(u_xlat9.zw, x_440);
  u_xlat55.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat55.x);
  u_xlat32.y = (u_xlat55.x + 1.29999995231628417969f);
  u_xlat32 = sin(u_xlat32);
  u_xlat55.x = (u_xlat32.y * u_xlat32.x);
  u_xlat55.x = (u_xlat55.x * 0.40000000596046447754f);
  u_xlat32.x = ((u_xlat32.x * 0.60000002384185791016f) + u_xlat55.x);
  u_xlat32.x = (u_xlat32.x * x_19.x_GeoCloudWind.w);
  u_xlat32.x = (u_xlat32.x / u_xlat1.x);
  u_xlat9.x = ((-(x_65.x_ClearDepth) * u_xlat9.x) + u_xlat32.x);
  u_xlat9.x = (u_xlat9.x + x_65.x_Blanket);
  u_xlat52 = ((u_xlat52 * 2.0f) + -1.0f);
  u_xlat52 = ((x_65.x_SwellAmp * u_xlat52) + u_xlat9.x);
  u_xlat8.x = (u_xlat8.x * x_65.x_PuffAmp);
  u_xlat9.x = ((u_xlat77 * u_xlat50) + u_xlat72);
  u_xlat52 = ((u_xlat8.x * u_xlat9.x) + u_xlat52);
  u_xlat8.x = (u_xlat31.x * x_65.x_SmallAmp);
  u_xlat31.x = ((u_xlat77 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat52 = ((u_xlat8.x * u_xlat31.x) + u_xlat52);
  u_xlat52 = ((u_xlat52 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat6.x = (-(u_xlat70) + u_xlat47.x);
  u_xlat6.w = (u_xlat47.x + -(u_xlat52));
  u_xlat47.x = dot(u_xlat6.xyw, u_xlat6.xyw);
  u_xlat47.x = inverseSqrt(u_xlat47.x);
  u_xlat9 = ((-(u_xlat3.xyxy) * vec4f(1.20000004768371582031f)) + u_xlat5.xzxz);
  u_xlat9 = (u_xlat9 / vec4f(x_65.x_TileSize));
  u_xlat8 = vec4f(((u_xlat9.zw * vec2f(x_65.x_DetailScale))).xy, u_xlat8.zw);
  u_xlat70 = (x_65.x_DetailScale * 0.5f);
  u_xlat70 = max(u_xlat70, 1.0f);
  u_xlat70 = log2(u_xlat70);
  u_xlat70 = (u_xlat70 + u_xlat24.x);
  u_xlat52 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat70).w;
  u_xlat52 = ((u_xlat52 * 2.0f) + -1.0f);
  u_xlat9 = ((u_xlat9 * vec4f(x_65.x_DetailScale)) + vec4f(0.0029296875f, 0.0f, 0.0f, 0.0029296875f));
  u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat70).w;
  u_xlat8.x = ((u_xlat8.x * 2.0f) + -1.0f);
  u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.zw, u_xlat70).w;
  u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
  u_xlat31.x = (u_xlat69 / x_65.x_DetailFade);
  u_xlat31.x = (-(u_xlat31.x) + 1.0f);
  u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
  u_xlat9.x = (abs(u_xlat52) + -(abs(u_xlat8.x)));
  u_xlat9.z = (-(abs(u_xlat70)) + abs(u_xlat52));
  let x_3764 = vec2f(x_65.x_DetailStrength, x_65.x_DetailStrength);
  let x_3768 = (u_xlat9.xz * vec2f(x_3764.x, x_3764.y));
  u_xlat8 = vec4f(x_3768.x, u_xlat8.yz, x_3768.y);
  let x_3775 = (u_xlat31.xx * u_xlat8.xw);
  u_xlat9 = vec4f(x_3775.x, u_xlat9.y, x_3775.y, u_xlat9.w);
  u_xlat9.y = 0.0f;
  u_xlat6 = vec4f((((u_xlat6.xyw * u_xlat47.xxx) + u_xlat9.xyz)).xyz, u_xlat6.w);
  u_xlat47.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat47.x = inverseSqrt(u_xlat47.x);
  let x_3803 = (u_xlat47.xxx * u_xlat6.xyz);
  u_xlat8 = vec4f(x_3803.xy, u_xlat8.z, x_3803.z);
  u_xlat6 = vec4f((((-(u_xlat6.xyz) * u_xlat47.xxx) + vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat6.w);
  let x_3823 = vec3f(x_65.x_NormalSoft, x_65.x_NormalSoft, x_65.x_NormalSoft);
  u_xlat6 = vec4f((((vec3f(x_3823.x, x_3823.y, x_3823.z) * u_xlat6.xyz) + u_xlat8.xyw)).xyz, u_xlat6.w);
  u_xlat47.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat47.x = inverseSqrt(u_xlat47.x);
  u_xlat6 = vec4f(((u_xlat47.xxx * u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_3863 = (u_xlat5.yyy * x_3859.hlslcc_mtx4x4_MainLightWorldToShadow[1i].xyz);
  u_xlat8 = vec4f(x_3863.xy, u_xlat8.z, x_3863.z);
  let x_3874 = ((x_3859.hlslcc_mtx4x4_MainLightWorldToShadow[0i].xyz * u_xlat5.xxx) + u_xlat8.xyw);
  u_xlat8 = vec4f(x_3874.xy, u_xlat8.z, x_3874.z);
  let x_3885 = ((x_3859.hlslcc_mtx4x4_MainLightWorldToShadow[2i].xyz * u_xlat5.zzz) + u_xlat8.xyw);
  u_xlat8 = vec4f(x_3885.xy, u_xlat8.z, x_3885.z);
  let x_3893 = (u_xlat8.xyw + x_3859.hlslcc_mtx4x4_MainLightWorldToShadow[3i].xyz);
  u_xlat8 = vec4f(x_3893.xy, u_xlat8.z, x_3893.z);
  u_xlatb47 = (0.0f < x_3859.x_MainLightShadowParams.y);
  if (u_xlatb47) {
    u_xlatb47 = (x_3859.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb47) {
      u_xlat9 = (u_xlat8.xyxy + x_3859.x_MainLightShadowOffset0);
      let x_3917 = u_xlat9.xy;
      txVec0 = vec3f(x_3917.x, x_3917.y, u_xlat8.w);
      u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_3937 = u_xlat9.zw;
      txVec1 = vec3f(x_3937.x, x_3937.y, u_xlat8.w);
      u_xlat10.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat9 = (u_xlat8.xyxy + x_3859.x_MainLightShadowOffset1);
      let x_3958 = u_xlat9.xy;
      txVec2 = vec3f(x_3958.x, x_3958.y, u_xlat8.w);
      u_xlat10.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_3973 = u_xlat9.zw;
      txVec3 = vec3f(x_3973.x, x_3973.y, u_xlat8.w);
      u_xlat10.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat47.x = dot(u_xlat10, vec4f(0.25f));
    } else {
      u_xlatb70 = (x_3859.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb70) {
        u_xlat9 = vec4f((((u_xlat8.xy * x_3859.x_MainLightShadowmapSize.zw) + x_4005)).xy, u_xlat9.zw);
        u_xlat9 = vec4f(floor(u_xlat9.xy).xy, u_xlat9.zw);
        u_xlat55 = ((u_xlat8.xy * x_3859.x_MainLightShadowmapSize.zw) + -(u_xlat9.xy));
        u_xlat10 = (u_xlat55.xxyy + x_4026);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        let x_4037 = (u_xlat11.yw * vec2f(0.07999999821186065674f));
        u_xlat10 = vec4f(x_4037.x, u_xlat10.y, x_4037.y, u_xlat10.w);
        u_xlat11 = vec4f((((u_xlat11.xz * x_4005) + -(u_xlat55))).xy, u_xlat11.zw);
        u_xlat57 = (-(u_xlat55) + x_4051);
        u_xlat12 = vec4f(min(u_xlat55, vec2f()).xy, u_xlat12.zw);
        u_xlat12 = vec4f((((-(u_xlat12.xy) * u_xlat12.xy) + u_xlat57)).xy, u_xlat12.zw);
        u_xlat55 = max(u_xlat55, vec2f());
        u_xlat55 = ((-(u_xlat55) * u_xlat55) + u_xlat10.yw);
        u_xlat12 = vec4f(((u_xlat12.xy + x_4051)).xy, u_xlat12.zw);
        u_xlat55 = (u_xlat55 + x_4051);
        u_xlat13 = vec4f(((u_xlat11.xy * x_4087)).xy, u_xlat13.zw);
        u_xlat11 = vec4f(((u_xlat57 * x_4087)).xy, u_xlat11.zw);
        u_xlat12 = vec4f(((u_xlat12.xy * x_4087)).xy, u_xlat12.zw);
        u_xlat14 = vec4f(((u_xlat55 * x_4087)).xy, u_xlat14.zw);
        u_xlat55 = (u_xlat10.yw * x_4087);
        u_xlat13.z = u_xlat12.x;
        u_xlat13.w = u_xlat55.x;
        u_xlat11.z = u_xlat14.x;
        u_xlat11.w = u_xlat10.x;
        u_xlat15 = (u_xlat11.zwxz + u_xlat13.zwxz);
        u_xlat12.z = u_xlat13.y;
        u_xlat12.w = u_xlat55.y;
        u_xlat14.z = u_xlat11.y;
        u_xlat14.w = u_xlat10.z;
        u_xlat10 = vec4f(((u_xlat12.zyw + u_xlat14.zyw)).xyz, u_xlat10.w);
        u_xlat11 = vec4f(((u_xlat11.xzw / u_xlat15.zwy)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_4157)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat14.zyw / u_xlat10.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_4157)).xyz, u_xlat12.w);
        u_xlat11 = vec4f(((u_xlat11.yxz * x_3859.x_MainLightShadowmapSize.xxx)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_3859.x_MainLightShadowmapSize.yyy)).xyz, u_xlat12.w);
        u_xlat11.w = u_xlat12.x;
        u_xlat13 = ((u_xlat9.xyxy * x_3859.x_MainLightShadowmapSize.xyxy) + u_xlat11.ywxw);
        u_xlat55 = ((u_xlat9.xy * x_3859.x_MainLightShadowmapSize.xy) + u_xlat11.zw);
        u_xlat12.w = u_xlat11.y;
        let x_4214 = u_xlat12.yz;
        u_xlat11 = vec4f(u_xlat11.x, x_4214.x, u_xlat11.z, x_4214.y);
        u_xlat14 = ((u_xlat9.xyxy * x_3859.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat12 = ((u_xlat9.xyxy * x_3859.x_MainLightShadowmapSize.xyxy) + u_xlat12.wywz);
        u_xlat11 = ((u_xlat9.xyxy * x_3859.x_MainLightShadowmapSize.xyxy) + u_xlat11.xwzw);
        u_xlat16 = (u_xlat10.xxxy * u_xlat15.zwyz);
        u_xlat17 = (u_xlat10.yyzz * u_xlat15);
        u_xlat70 = (u_xlat10.z * u_xlat15.y);
        let x_4262 = u_xlat13.xy;
        txVec4 = vec3f(x_4262.x, x_4262.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_4276 = u_xlat13.zw;
        txVec5 = vec3f(x_4276.x, x_4276.y, u_xlat8.w);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat9.x = (u_xlat9.x * u_xlat16.y);
        u_xlat75 = ((u_xlat16.x * u_xlat75) + u_xlat9.x);
        txVec6 = vec3f(u_xlat55.x, u_xlat55.y, u_xlat8.w);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat75 = ((u_xlat16.z * u_xlat9.x) + u_xlat75);
        let x_4325 = u_xlat12.xy;
        txVec7 = vec3f(x_4325.x, x_4325.y, u_xlat8.w);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat75 = ((u_xlat16.w * u_xlat9.x) + u_xlat75);
        let x_4347 = u_xlat14.xy;
        txVec8 = vec3f(x_4347.x, x_4347.y, u_xlat8.w);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat75 = ((u_xlat17.x * u_xlat9.x) + u_xlat75);
        let x_4369 = u_xlat14.zw;
        txVec9 = vec3f(x_4369.x, x_4369.y, u_xlat8.w);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat75 = ((u_xlat17.y * u_xlat9.x) + u_xlat75);
        let x_4391 = u_xlat12.zw;
        txVec10 = vec3f(x_4391.x, x_4391.y, u_xlat8.w);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat75 = ((u_xlat17.z * u_xlat9.x) + u_xlat75);
        let x_4413 = u_xlat11.xy;
        txVec11 = vec3f(x_4413.x, x_4413.y, u_xlat8.w);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat75 = ((u_xlat17.w * u_xlat9.x) + u_xlat75);
        let x_4435 = u_xlat11.zw;
        txVec12 = vec3f(x_4435.x, x_4435.y, u_xlat8.w);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat47.x = ((u_xlat70 * u_xlat9.x) + u_xlat75);
      } else {
        u_xlat9 = vec4f((((u_xlat8.xy * x_3859.x_MainLightShadowmapSize.zw) + x_4005)).xy, u_xlat9.zw);
        u_xlat9 = vec4f(floor(u_xlat9.xy).xy, u_xlat9.zw);
        u_xlat55 = ((u_xlat8.xy * x_3859.x_MainLightShadowmapSize.zw) + -(u_xlat9.xy));
        u_xlat10 = (u_xlat55.xxyy + x_4026);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        let x_4492 = (u_xlat11.yw * vec2f(0.04081600159406661987f));
        u_xlat12 = vec4f(u_xlat12.x, x_4492.x, u_xlat12.z, x_4492.y);
        let x_4500 = ((u_xlat11.xz * x_4005) + -(u_xlat55));
        u_xlat10 = vec4f(x_4500.x, u_xlat10.y, x_4500.y, u_xlat10.w);
        u_xlat11 = vec4f(((-(u_xlat55) + x_4051)).xy, u_xlat11.zw);
        u_xlat57 = min(u_xlat55, vec2f());
        u_xlat11 = vec4f((((-(u_xlat57) * u_xlat57) + u_xlat11.xy)).xy, u_xlat11.zw);
        u_xlat57 = max(u_xlat55, vec2f());
        let x_4528 = ((-(u_xlat57) * u_xlat57) + u_xlat10.yw);
        u_xlat33 = vec3f(x_4528.x, u_xlat33.y, x_4528.y);
        u_xlat11 = vec4f(((u_xlat11.xy + x_4533)).xy, u_xlat11.zw);
        let x_4539 = (u_xlat33.xz + x_4533);
        u_xlat10 = vec4f(u_xlat10.x, x_4539.x, u_xlat10.z, x_4539.y);
        u_xlat13.z = (u_xlat10.y * 0.08163200318813323975f);
        u_xlat14 = vec4f(((u_xlat10.zxw * vec3f(0.08163200318813323975f))).xyz, u_xlat14.w);
        u_xlat10 = vec4f(((u_xlat11.xy * vec2f(0.08163200318813323975f))).xy, u_xlat10.zw);
        u_xlat13.x = u_xlat14.y;
        let x_4569 = ((u_xlat55.xx * x_4565) + x_4568);
        u_xlat13 = vec4f(u_xlat13.x, x_4569.x, u_xlat13.z, x_4569.y);
        let x_4576 = ((u_xlat55.xx * x_4565) + x_4575);
        u_xlat11 = vec4f(x_4576.x, u_xlat11.y, x_4576.y, u_xlat11.w);
        u_xlat11.y = u_xlat10.x;
        u_xlat11.w = u_xlat12.y;
        u_xlat13 = (u_xlat11 + u_xlat13);
        let x_4591 = ((u_xlat55.yy * x_4565) + x_4568);
        u_xlat14 = vec4f(u_xlat14.x, x_4591.x, u_xlat14.z, x_4591.y);
        let x_4597 = ((u_xlat55.yy * x_4565) + x_4575);
        u_xlat12 = vec4f(x_4597.x, u_xlat12.y, x_4597.y, u_xlat12.w);
        u_xlat12.y = u_xlat10.y;
        u_xlat10 = (u_xlat12 + u_xlat14);
        u_xlat11 = (u_xlat11 / u_xlat13);
        u_xlat11 = (u_xlat11 + x_4613);
        u_xlat12 = (u_xlat12 / u_xlat10);
        u_xlat12 = (u_xlat12 + x_4613);
        u_xlat11 = (u_xlat11.wxyz * x_3859.x_MainLightShadowmapSize.xxxx);
        u_xlat12 = (u_xlat12.xwyz * x_3859.x_MainLightShadowmapSize.yyyy);
        let x_4633 = u_xlat11.yzw;
        u_xlat14 = vec4f(x_4633.x, u_xlat14.y, x_4633.yz);
        u_xlat14.y = u_xlat12.x;
        u_xlat15 = ((u_xlat9.xyxy * x_3859.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat55 = ((u_xlat9.xy * x_3859.x_MainLightShadowmapSize.xy) + u_xlat14.wy);
        u_xlat11.y = u_xlat14.y;
        u_xlat14.y = u_xlat12.z;
        u_xlat16 = ((u_xlat9.xyxy * x_3859.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat17 = vec4f((((u_xlat9.xy * x_3859.x_MainLightShadowmapSize.xy) + u_xlat14.wy)).xy, u_xlat17.zw);
        u_xlat11.z = u_xlat14.y;
        u_xlat18 = ((u_xlat9.xyxy * x_3859.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyxz);
        u_xlat14.y = u_xlat12.w;
        u_xlat19 = ((u_xlat9.xyxy * x_3859.x_MainLightShadowmapSize.xyxy) + u_xlat14.xyzy);
        u_xlat34 = ((u_xlat9.xy * x_3859.x_MainLightShadowmapSize.xy) + u_xlat14.wy);
        u_xlat11.w = u_xlat14.y;
        u_xlat63 = ((u_xlat9.xy * x_3859.x_MainLightShadowmapSize.xy) + u_xlat11.xw);
        let x_4733 = u_xlat14.xzw;
        u_xlat12 = vec4f(x_4733.x, u_xlat12.y, x_4733.yz);
        u_xlat14 = ((u_xlat9.xyxy * x_3859.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat58 = ((u_xlat9.xy * x_3859.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat12.x = u_xlat11.x;
        u_xlat9 = vec4f((((u_xlat9.xy * x_3859.x_MainLightShadowmapSize.xy) + u_xlat12.xy)).xy, u_xlat9.zw);
        u_xlat20 = (u_xlat10.xxxx * u_xlat13);
        u_xlat21 = (u_xlat10.yyyy * u_xlat13);
        u_xlat22 = (u_xlat10.zzzz * u_xlat13);
        u_xlat10 = (u_xlat10.wwww * u_xlat13);
        let x_4790 = u_xlat15.xy;
        txVec13 = vec3f(x_4790.x, x_4790.y, u_xlat8.w);
        u_xlat70 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_4804 = u_xlat15.zw;
        txVec14 = vec3f(x_4804.x, x_4804.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat75 = (u_xlat75 * u_xlat20.y);
        u_xlat70 = ((u_xlat20.x * u_xlat70) + u_xlat75);
        txVec15 = vec3f(u_xlat55.x, u_xlat55.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat70 = ((u_xlat20.z * u_xlat75) + u_xlat70);
        let x_4847 = u_xlat18.xy;
        txVec16 = vec3f(x_4847.x, x_4847.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat70 = ((u_xlat20.w * u_xlat75) + u_xlat70);
        let x_4867 = u_xlat16.xy;
        txVec17 = vec3f(x_4867.x, x_4867.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat70 = ((u_xlat21.x * u_xlat75) + u_xlat70);
        let x_4887 = u_xlat16.zw;
        txVec18 = vec3f(x_4887.x, x_4887.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat70 = ((u_xlat21.y * u_xlat75) + u_xlat70);
        let x_4907 = u_xlat17.xy;
        txVec19 = vec3f(x_4907.x, x_4907.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat70 = ((u_xlat21.z * u_xlat75) + u_xlat70);
        let x_4927 = u_xlat18.zw;
        txVec20 = vec3f(x_4927.x, x_4927.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat70 = ((u_xlat21.w * u_xlat75) + u_xlat70);
        let x_4947 = u_xlat19.xy;
        txVec21 = vec3f(x_4947.x, x_4947.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat70 = ((u_xlat22.x * u_xlat75) + u_xlat70);
        let x_4967 = u_xlat19.zw;
        txVec22 = vec3f(x_4967.x, x_4967.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat70 = ((u_xlat22.y * u_xlat75) + u_xlat70);
        txVec23 = vec3f(u_xlat34.x, u_xlat34.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat70 = ((u_xlat22.z * u_xlat75) + u_xlat70);
        txVec24 = vec3f(u_xlat63.x, u_xlat63.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat70 = ((u_xlat22.w * u_xlat75) + u_xlat70);
        let x_5025 = u_xlat14.xy;
        txVec25 = vec3f(x_5025.x, x_5025.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat70 = ((u_xlat10.x * u_xlat75) + u_xlat70);
        let x_5045 = u_xlat14.zw;
        txVec26 = vec3f(x_5045.x, x_5045.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat70 = ((u_xlat10.y * u_xlat75) + u_xlat70);
        txVec27 = vec3f(u_xlat58.x, u_xlat58.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat70 = ((u_xlat10.z * u_xlat75) + u_xlat70);
        let x_5084 = u_xlat9.xy;
        txVec28 = vec3f(x_5084.x, x_5084.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat47.x = ((u_xlat10.w * u_xlat75) + u_xlat70);
      }
    }
  } else {
    let x_5106 = u_xlat8.xy;
    txVec29 = vec3f(x_5106.x, x_5106.y, u_xlat8.w);
    u_xlat47.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat70 = (-(x_3859.x_MainLightShadowParams.x) + 1.0f);
  u_xlat47.x = ((u_xlat47.x * x_3859.x_MainLightShadowParams.x) + u_xlat70);
  u_xlatb70 = (0.0f >= u_xlat8.w);
  u_xlatb75 = (u_xlat8.w >= 1.0f);
  u_xlatb70 = (u_xlatb70 | u_xlatb75);
  if (u_xlatb70) {
    x_5141 = 1.0f;
  } else {
    x_5141 = u_xlat47.x;
  }
  u_xlat47.x = x_5141;
  let x_5153 = (u_xlat5 + -(x_19.x_WorldSpaceCameraPos));
  u_xlat8 = vec4f(x_5153.xy, u_xlat8.z, x_5153.z);
  u_xlat70 = dot(u_xlat8.xyw, u_xlat8.xyw);
  u_xlat70 = ((u_xlat70 * x_3859.x_MainLightShadowParams.z) + x_3859.x_MainLightShadowParams.w);
  u_xlat70 = clamp(u_xlat70, 0.0f, 1.0f);
  u_xlat75 = (-(u_xlat47.x) + 1.0f);
  u_xlat47.x = ((u_xlat70 * u_xlat75) + u_xlat47.x);
  let x_5186 = (x_19.x_MainLightPosition.xyz * vec3f(2.59999990463256835938f));
  u_xlat8 = vec4f(x_5186.xy, u_xlat8.z, x_5186.z);
  u_xlat70 = (x_65.x_TileSize * 0.00249999994412064552f);
  let x_5199 = ((u_xlat8.xyw * vec3f(u_xlat70)) + u_xlat5);
  u_xlat8 = vec4f(x_5199.xy, u_xlat8.z, x_5199.z);
  u_xlat9 = vec4f(((u_xlat3.yx * x_1089)).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat9.xy * x_19.x_GeoCloudWind.zz)).xy, u_xlat9.zw);
  u_xlat25 = vec3f((((u_xlat9.xy * x_162) + u_xlat25.xy)).xy, u_xlat25.z);
  u_xlat9 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat8.xw)).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_65.x_TileSize))).xy, u_xlat9.zw);
  u_xlat25 = vec3f(((-(u_xlat25.xy) + u_xlat8.xw)).xy, u_xlat25.z);
  u_xlat25 = vec3f(((u_xlat25.xy / vec2f(x_65.x_TileSize))).xy, u_xlat25.z);
  u_xlat25 = vec3f((((u_xlat25.xy * x_273) + x_277)).xy, u_xlat25.z);
  u_xlat25.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat25.xy, u_xlat24.x).x;
  u_xlat48.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat24.x).y;
  u_xlat9 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat8.xw)).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_65.x_TileSize))).xy, u_xlat9.zw);
  u_xlat9 = vec4f((((u_xlat9.xy * x_326) + x_329)).xy, u_xlat9.zw);
  u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat54.x).z;
  u_xlat9.x = (u_xlat25.x + -0.34999999403953552246f);
  u_xlat9.x = (u_xlat9.x + u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat32.x = ((u_xlat9.x * -2.0f) + 3.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat32.x);
  u_xlat32 = (u_xlat8.xw + -(x_65.x_ClearCentre.xy));
  u_xlat32.x = dot(u_xlat32, u_xlat32);
  u_xlat32.x = sqrt(u_xlat32.x);
  u_xlat32.x = (u_xlat32.x + -(x_65.x_ClearCentre.z));
  u_xlat32.x = (u_xlat71 * u_xlat32.x);
  u_xlat32.x = clamp(u_xlat32.x, 0.0f, 1.0f);
  u_xlat55.x = ((u_xlat32.x * -2.0f) + 3.0f);
  u_xlat32.x = (u_xlat32.x * u_xlat32.x);
  u_xlat32.x = ((-(u_xlat55.x) * u_xlat32.x) + 1.0f);
  u_xlat55.x = dot(u_xlat8.xw, x_421);
  u_xlat55.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat55.x);
  u_xlat55.x = sin(u_xlat55.x);
  u_xlat8.x = dot(u_xlat8.xw, x_440);
  u_xlat8.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x + 1.29999995231628417969f);
  u_xlat8.x = sin(u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * u_xlat55.x);
  u_xlat8.x = (u_xlat8.x * 0.40000000596046447754f);
  u_xlat8.x = ((u_xlat55.x * 0.60000002384185791016f) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * x_19.x_GeoCloudWind.w);
  u_xlat8.x = (u_xlat8.x / u_xlat1.x);
  u_xlat8.x = ((-(x_65.x_ClearDepth) * u_xlat32.x) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x + x_65.x_Blanket);
  u_xlat25.x = ((u_xlat25.x * 2.0f) + -1.0f);
  u_xlat25.x = ((x_65.x_SwellAmp * u_xlat25.x) + u_xlat8.x);
  u_xlat48.x = (u_xlat48.x * x_65.x_PuffAmp);
  u_xlat8.x = ((u_xlat9.x * u_xlat50) + u_xlat72);
  u_xlat25.x = ((u_xlat48.x * u_xlat8.x) + u_xlat25.x);
  u_xlat48.x = (u_xlat75 * x_65.x_SmallAmp);
  u_xlat75 = ((u_xlat9.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat25.x = ((u_xlat48.x * u_xlat75) + u_xlat25.x);
  u_xlat25.x = ((u_xlat25.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat25.x = (-(u_xlat8.y) + u_xlat25.x);
  u_xlat25.x = max(u_xlat25.x, 0.0f);
  let x_5557 = (vec3f(u_xlat70) * x_19.x_MainLightPosition.xyz);
  u_xlat8 = vec4f(x_5557.xy, u_xlat8.z, x_5557.z);
  u_xlat9 = vec4f((((u_xlat8.xyw * vec3f(7.40000009536743164062f)) + u_xlat5)).xyz, u_xlat9.w);
  u_xlat10 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(u_xlat10.xy, ((-(u_xlat4.xy) + u_xlat9.xz)).xy);
  u_xlat10 = (u_xlat10 / vec4f(x_65.x_TileSize));
  u_xlat56 = ((u_xlat10.zw * x_273) + x_277);
  u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat56, u_xlat24.x).x;
  u_xlat48.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat24.x).y;
  u_xlat10 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_326) + x_329)).xy, u_xlat10.zw);
  u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat54.x).z;
  u_xlat78 = (u_xlat70 + -0.34999999403953552246f);
  u_xlat78 = (u_xlat78 + u_xlat78);
  u_xlat78 = clamp(u_xlat78, 0.0f, 1.0f);
  u_xlat10.x = ((u_xlat78 * -2.0f) + 3.0f);
  u_xlat78 = (u_xlat78 * u_xlat78);
  u_xlat78 = (u_xlat78 * u_xlat10.x);
  u_xlat10 = vec4f(((u_xlat9.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat10.zw);
  u_xlat10.x = dot(u_xlat10.xy, u_xlat10.xy);
  u_xlat10.x = sqrt(u_xlat10.x);
  u_xlat10.x = (u_xlat10.x + -(x_65.x_ClearCentre.z));
  u_xlat10.x = (u_xlat71 * u_xlat10.x);
  u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
  u_xlat33.x = ((u_xlat10.x * -2.0f) + 3.0f);
  u_xlat10.x = (u_xlat10.x * u_xlat10.x);
  u_xlat10.x = ((-(u_xlat33.x) * u_xlat10.x) + 1.0f);
  u_xlat33.x = dot(u_xlat9.xz, x_421);
  u_xlat33.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat33.x);
  u_xlat33.x = sin(u_xlat33.x);
  u_xlat9.x = dot(u_xlat9.xz, x_440);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat33.x);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat33.x * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat9.x = ((-(x_65.x_ClearDepth) * u_xlat10.x) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + x_65.x_Blanket);
  u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
  u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat9.x);
  u_xlat48.x = (u_xlat48.x * x_65.x_PuffAmp);
  u_xlat9.x = ((u_xlat78 * u_xlat50) + u_xlat72);
  u_xlat70 = ((u_xlat48.x * u_xlat9.x) + u_xlat70);
  u_xlat48.x = (u_xlat75 * x_65.x_SmallAmp);
  u_xlat75 = ((u_xlat78 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat70 = ((u_xlat48.x * u_xlat75) + u_xlat70);
  u_xlat70 = ((u_xlat70 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat70 = (-(u_xlat9.y) + u_xlat70);
  u_xlat70 = max(u_xlat70, 0.0f);
  u_xlat70 = (u_xlat70 + u_xlat25.x);
  u_xlat9 = vec4f((((u_xlat8.xyw * vec3f(15.40000057220458984375f)) + u_xlat5)).xyz, u_xlat9.w);
  u_xlat25 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat9.xz)).xy, u_xlat25.z);
  u_xlat25 = vec3f(((u_xlat25.xy / vec2f(x_65.x_TileSize))).xy, u_xlat25.z);
  u_xlat10 = vec4f(((-(u_xlat4.xy) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_273) + x_277)).xy, u_xlat10.zw);
  u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat24.x).x;
  u_xlat25.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat25.xy, u_xlat24.x).y;
  u_xlat10 = vec4f((((-(u_xlat3.xy) * x_308) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_326) + x_329)).xy, u_xlat10.zw);
  u_xlat25.y = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat54.x).z;
  u_xlat78 = (u_xlat75 + -0.34999999403953552246f);
  u_xlat78 = (u_xlat78 + u_xlat78);
  u_xlat78 = clamp(u_xlat78, 0.0f, 1.0f);
  u_xlat10.x = ((u_xlat78 * -2.0f) + 3.0f);
  u_xlat78 = (u_xlat78 * u_xlat78);
  u_xlat78 = (u_xlat78 * u_xlat10.x);
  u_xlat10 = vec4f(((u_xlat9.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat10.zw);
  u_xlat10.x = dot(u_xlat10.xy, u_xlat10.xy);
  u_xlat10.x = sqrt(u_xlat10.x);
  u_xlat10.x = (u_xlat10.x + -(x_65.x_ClearCentre.z));
  u_xlat10.x = (u_xlat71 * u_xlat10.x);
  u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
  u_xlat33.x = ((u_xlat10.x * -2.0f) + 3.0f);
  u_xlat10.x = (u_xlat10.x * u_xlat10.x);
  u_xlat10.x = ((-(u_xlat33.x) * u_xlat10.x) + 1.0f);
  u_xlat33.x = dot(u_xlat9.xz, x_421);
  u_xlat33.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat33.x);
  u_xlat33.x = sin(u_xlat33.x);
  u_xlat9.x = dot(u_xlat9.xz, x_440);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat33.x);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat33.x * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat9.x = ((-(x_65.x_ClearDepth) * u_xlat10.x) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + x_65.x_Blanket);
  u_xlat75 = ((u_xlat75 * 2.0f) + -1.0f);
  u_xlat75 = ((x_65.x_SwellAmp * u_xlat75) + u_xlat9.x);
  u_xlat25 = vec3f(((u_xlat25.xy * vec2f(x_65.x_PuffAmp, x_65.x_SmallAmp))).xy, u_xlat25.z);
  u_xlat9.x = ((u_xlat78 * u_xlat50) + u_xlat72);
  u_xlat25.x = ((u_xlat25.x * u_xlat9.x) + u_xlat75);
  u_xlat75 = ((u_xlat78 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat25.x = ((u_xlat25.y * u_xlat75) + u_xlat25.x);
  u_xlat25.x = ((u_xlat25.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat25.x = (-(u_xlat9.y) + u_xlat25.x);
  u_xlat25.x = max(u_xlat25.x, 0.0f);
  u_xlat70 = (u_xlat70 + u_xlat25.x);
  let x_6193 = ((u_xlat8.xyw * vec3f(26.6000003814697265625f)) + u_xlat5);
  u_xlat8 = vec4f(x_6193.xy, u_xlat8.z, x_6193.z);
  u_xlat2 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat8.xw)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy / vec2f(x_65.x_TileSize))).xy, u_xlat2.zw);
  u_xlat4 = vec3f(((-(u_xlat4.xy) + u_xlat8.xw)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_273) + x_277)).xy, u_xlat4.z);
  u_xlat48.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat24.x).x;
  u_xlat2.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat2.xy, u_xlat24.x).y;
  u_xlat4 = vec3f((((-(u_xlat3.xy) * x_308) + u_xlat8.xw)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_326) + x_329)).xy, u_xlat4.z);
  u_xlat2.y = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat54.x).z;
  u_xlat4.x = (u_xlat48.x + -0.34999999403953552246f);
  u_xlat4.x = (u_xlat4.x + u_xlat4.x);
  u_xlat4.x = clamp(u_xlat4.x, 0.0f, 1.0f);
  u_xlat27 = ((u_xlat4.x * -2.0f) + 3.0f);
  u_xlat4.x = (u_xlat4.x * u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * u_xlat27);
  u_xlat9 = vec4f(((u_xlat8.xw + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
  u_xlat27 = dot(u_xlat9.xy, u_xlat9.xy);
  u_xlat27 = sqrt(u_xlat27);
  u_xlat27 = (u_xlat27 + -(x_65.x_ClearCentre.z));
  u_xlat71 = (u_xlat71 * u_xlat27);
  u_xlat71 = clamp(u_xlat71, 0.0f, 1.0f);
  u_xlat27 = ((u_xlat71 * -2.0f) + 3.0f);
  u_xlat71 = (u_xlat71 * u_xlat71);
  u_xlat71 = ((-(u_xlat27) * u_xlat71) + 1.0f);
  u_xlat27 = dot(u_xlat8.xw, x_421);
  u_xlat27 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat27);
  u_xlat27 = sin(u_xlat27);
  u_xlat75 = dot(u_xlat8.xw, x_440);
  u_xlat49 = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat75);
  u_xlat49 = (u_xlat49 + 1.29999995231628417969f);
  u_xlat49 = sin(u_xlat49);
  u_xlat49 = (u_xlat49 * u_xlat27);
  u_xlat49 = (u_xlat49 * 0.40000000596046447754f);
  u_xlat49 = ((u_xlat27 * 0.60000002384185791016f) + u_xlat49);
  u_xlat49 = (u_xlat49 * x_19.x_GeoCloudWind.w);
  u_xlat49 = (u_xlat49 / u_xlat1.x);
  u_xlat71 = ((-(x_65.x_ClearDepth) * u_xlat71) + u_xlat49);
  u_xlat71 = (u_xlat71 + x_65.x_Blanket);
  u_xlat48.x = ((u_xlat48.x * 2.0f) + -1.0f);
  u_xlat48.x = ((x_65.x_SwellAmp * u_xlat48.x) + u_xlat71);
  u_xlat2 = vec4f(((u_xlat2.xy * vec2f(x_65.x_PuffAmp, x_65.x_SmallAmp))).xy, u_xlat2.zw);
  u_xlat71 = ((u_xlat4.x * u_xlat50) + u_xlat72);
  u_xlat2.x = ((u_xlat2.x * u_xlat71) + u_xlat48.x);
  u_xlat48.x = ((u_xlat4.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat2.x = ((u_xlat2.y * u_xlat48.x) + u_xlat2.x);
  u_xlat2.x = ((u_xlat2.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat2.x = (-(u_xlat8.y) + u_xlat2.x);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  u_xlat70 = (u_xlat70 + u_xlat2.x);
  u_xlat70 = (-(u_xlat70) * x_65.x_ShadowDensity);
  u_xlat70 = (u_xlat70 * 1.44269502162933349609f);
  u_xlat70 = exp2(u_xlat70);
  u_xlat2.x = (u_xlat5.y + -(x_65.x_BaseY));
  u_xlat1.x = (u_xlat2.x / u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat2.x = (-(x_65.x_CreaseDark) + 1.0f);
  u_xlat1.x = (u_xlat1.x + -0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * 1.42857146263122558594f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat25.x = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat25.x);
  u_xlat25.x = (-(u_xlat2.x) + 1.0f);
  u_xlat1.x = ((u_xlat1.x * u_xlat25.x) + u_xlat2.x);
  u_xlat2.x = dot(u_xlat6.xyz, x_19.x_MainLightPosition.xyz);
  u_xlat25.x = (u_xlat2.x + x_65.x_Wrap);
  u_xlat48.x = (x_65.x_Wrap + 1.0f);
  u_xlat25.x = (u_xlat25.x / u_xlat48.x);
  u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
  u_xlat4 = (x_19.x_MainLightColor.xyz * x_65.x_SunTint.xyz);
  u_xlat4 = (u_xlat4 * vec3f(x_65.x_SunStrength));
  u_xlatb48 = (0.0f < x_19.x_GeoCloudShadow.x);
  if (u_xlatb48) {
    u_xlat48.x = max(x_19.x_MainLightPosition.y, 0.20000000298023223877f);
    u_xlat48 = (x_19.x_MainLightPosition.xz / u_xlat48.xx);
    u_xlat49 = (-(u_xlat5.y) + 450.0f);
    u_xlat48 = ((u_xlat48 * vec2f(u_xlat49)) + u_xlat5.xz);
    u_xlat48 = ((-(u_xlat3.xy) * x_6638) + u_xlat48);
    u_xlat48 = (u_xlat48 / x_19.x_GeoCloudShadow.yy);
    u_xlat48.x = textureSampleLevel(x_GeoCloudNoise, sampler_GeoCloudNoise, u_xlat48, 0.0f).x;
    u_xlat71 = (-(x_19.x_GeoCloudShadow.z) + 1.0f);
    u_xlat48.x = (-(u_xlat71) + u_xlat48.x);
    u_xlat48.x = (u_xlat48.x * 6.25f);
    u_xlat48.x = clamp(u_xlat48.x, 0.0f, 1.0f);
    u_xlat71 = ((u_xlat48.x * -2.0f) + 3.0f);
    u_xlat48.x = (u_xlat48.x * u_xlat48.x);
    u_xlat48.x = (u_xlat48.x * u_xlat71);
    u_xlat3 = vec4f(((u_xlat5.xz + -(x_19.x_GeoCloudCentre.xy))).xy, u_xlat3.zw);
    u_xlat71 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat71 = sqrt(u_xlat71);
    u_xlat3.x = (x_19.x_GeoCloudShadow.w * 0.79999995231628417969f);
    u_xlat71 = (u_xlat71 + -(x_19.x_GeoCloudShadow.w));
    u_xlat3.x = (1.0f / u_xlat3.x);
    u_xlat71 = (u_xlat71 * u_xlat3.x);
    u_xlat71 = clamp(u_xlat71, 0.0f, 1.0f);
    u_xlat3.x = ((u_xlat71 * -2.0f) + 3.0f);
    u_xlat71 = (u_xlat71 * u_xlat71);
    u_xlat71 = (u_xlat71 * u_xlat3.x);
    u_xlat48.x = (u_xlat48.x * x_19.x_GeoCloudShadow.x);
    u_xlat48.x = ((-(u_xlat48.x) * u_xlat71) + 1.0f);
  } else {
    u_xlat48.x = 1.0f;
  }
  u_xlat3 = vec4f(((u_xlat25.xxx * u_xlat4)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((vec3f(u_xlat70) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((u_xlat47.xxx * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat47.x = ((u_xlat6.y * 0.5f) + 0.5f);
  u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
  u_xlat8 = vec4f(((x_65.x_AmbientTop.xyz + -(x_65.x_AmbientBottom.xyz))).xyz, u_xlat8.w);
  u_xlat8 = vec4f((((u_xlat47.xxx * u_xlat8.xyz) + x_65.x_AmbientBottom.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((u_xlat1.xxx * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat1.x = (-(u_xlat48.x) + 1.0f);
  u_xlat9 = vec4f((((-(u_xlat1.xxx) * vec3f(0.60000002384185791016f, 0.47999998927116394043f, 0.30000001192092895508f)) + x_6820)).xyz, u_xlat9.w);
  u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat9.xyz)).xyz, u_xlat8.w);
  u_xlat1.x = dot(u_xlat0, x_19.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * x_65.x_ScatterPower);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat47.x = dot(u_xlat6.xyz, -(u_xlat0));
  u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
  u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat48.xxx) + u_xlat8.xyz)).xyz, u_xlat3.w);
  u_xlat6 = vec4f(((x_19.x_MainLightColor.xyz * x_65.x_ScatterColor.xyz)).xyz, u_xlat6.w);
  let x_6895 = vec3f(x_65.x_ScatterStrength, x_65.x_ScatterStrength, x_65.x_ScatterStrength);
  u_xlat6 = vec4f(((u_xlat6.xyz * vec3f(x_6895.x, x_6895.y, x_6895.z))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat1.xxx * u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_6915 = (-(u_xlat47.xx) + vec2f(1.0f, 1.35000002384185791016f));
  u_xlat1 = vec4f(x_6915.x, u_xlat1.y, x_6915.y, u_xlat1.w);
  u_xlat6 = vec4f(((u_xlat1.zzz * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat3 = vec4f((((x_65.x_Albedo.xyz * u_xlat3.xyz) + u_xlat6.xyz)).xyz, u_xlat3.w);
  u_xlat47.x = ((u_xlat2.x * 0.5f) + 0.5f);
  u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * 2.5f);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat2 = vec4f((((-(vec2f(u_xlat69)) * vec2f(0.00083333335351198912f, 0.00071428570663556457f)) + x_4051)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(clamp(u_xlat2.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat2.zw);
  u_xlat1.x = (u_xlat1.x * u_xlat2.x);
  u_xlat6 = vec4f(((x_19.x_MainLightColor.xyz * x_65.x_GoldColor.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat6.xyz * vec3f(x_65.x_GoldRim))).xyz, u_xlat6.w);
  u_xlat8 = vec4f(((u_xlat1.xxx * u_xlat6.xyz)).xyz, u_xlat8.w);
  u_xlat2.x = (u_xlat47.x * u_xlat47.x);
  u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat2.xxx)).xyz, u_xlat8.w);
  u_xlat3 = vec4f((((u_xlat8.xyz * vec3f(u_xlat70)) + u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat1.x = (u_xlat1.x * x_65.x_RimShade);
  u_xlat47.x = (-(u_xlat47.x) + 1.0f);
  u_xlat1.x = (u_xlat47.x * u_xlat1.x);
  u_xlat8 = vec4f(((x_65.x_RimColor.xyz + vec3f(-1.0f))).xyz, u_xlat8.w);
  let x_7058 = ((u_xlat1.xxx * u_xlat8.xyz) + x_6820);
  u_xlat1 = vec4f(x_7058.x, u_xlat1.y, x_7058.yz);
  u_xlat8 = vec4f(((u_xlat1.xzw * u_xlat3.xyz)).xyz, u_xlat8.w);
  u_xlat4 = (u_xlat4 * x_7070);
  let x_7079 = ((u_xlat4 * u_xlat48.xxx) + x_65.x_AmbientTop.xyz);
  u_xlat2 = vec4f(x_7079.x, u_xlat2.y, x_7079.yz);
  u_xlat4 = (u_xlat6.xyz * vec3f(0.25f));
  let x_7093 = ((x_65.x_Albedo.xyz * u_xlat2.xzw) + u_xlat4);
  u_xlat2 = vec4f(x_7093.x, u_xlat2.y, x_7093.yz);
  u_xlat72 = (-(u_xlat73) * x_65.x_FuzzStrength);
  u_xlat72 = (u_xlat72 * 1.44269502162933349609f);
  u_xlat72 = exp2(u_xlat72);
  u_xlat72 = (-(u_xlat72) + 1.0f);
  u_xlat72 = ((u_xlat74 * 0.20000000298023223877f) + u_xlat72);
  u_xlat72 = clamp(u_xlat72, 0.0f, 1.0f);
  let x_7123 = ((-(u_xlat3.xyz) * u_xlat1.xzw) + u_xlat2.xzw);
  u_xlat1 = vec4f(x_7123.x, u_xlat1.y, x_7123.yz);
  let x_7133 = ((vec3f(u_xlat72) * u_xlat1.xzw) + u_xlat8.xyz);
  u_xlat1 = vec4f(x_7133.x, u_xlat1.y, x_7133.yz);
  let x_7138 = (u_xlat7.xy * x_6638);
  u_xlat2 = vec4f(x_7138.x, u_xlat2.y, x_7138.y, u_xlat2.w);
  u_xlat2.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat2.xz, u_xlat24.x).y;
  u_xlat48 = ((u_xlat7.zw * vec2f(3.70000004768371582031f)) + vec2f(0.31000000238418579102f));
  u_xlat24.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat48, u_xlat24.x).z;
  u_xlat24.x = (u_xlat24.x * 0.40000000596046447754f);
  u_xlat24.x = ((u_xlat2.x * 0.60000002384185791016f) + u_xlat24.x);
  u_xlat24.x = (u_xlat24.x + -0.05000000074505805969f);
  u_xlat24.x = (u_xlat24.x * 1.17647063732147216797f);
  u_xlat24.x = clamp(u_xlat24.x, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat24.x * -2.0f) + 3.0f);
  u_xlat24.x = (u_xlat24.x * u_xlat24.x);
  u_xlat24.x = (u_xlat24.x * u_xlat2.x);
  u_xlat2.x = (-(x_65.x_CottonAmount) + 1.0f);
  u_xlat48.x = ((x_65.x_CottonAmount * 0.25f) + 1.0f);
  u_xlat48.x = (-(u_xlat2.x) + u_xlat48.x);
  u_xlat24.x = ((u_xlat24.x * u_xlat48.x) + u_xlat2.x);
  u_xlat24.x = (u_xlat24.x + -1.0f);
  u_xlat24.x = ((u_xlat2.y * u_xlat24.x) + 1.0f);
  u_xlat1 = vec4f(((u_xlat24.xxx * u_xlat1.xzw)).xyz, u_xlat1.w);
  u_xlat70 = (-(u_xlat69) / x_65.x_MidHazeDistance);
  u_xlat70 = (u_xlat70 * 1.44269502162933349609f);
  u_xlat70 = exp2(u_xlat70);
  u_xlat70 = (-(u_xlat70) + 1.0f);
  u_xlat70 = (u_xlat70 * x_65.x_MidHazeMax);
  u_xlat2 = vec4f(((x_65.x_AmbientTop.xyz * x_7070)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_19.x_MainLightColor.xyz * vec3f(0.18000000715255737305f)) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_65.x_MidHazeColor.xyz * u_xlat2.xyz) + -(u_xlat1.xyz))).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((vec3f(u_xlat70) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat70 = (u_xlat69 / x_65.x_HazeDistance);
  u_xlat70 = max(u_xlat70, 0.0f);
  u_xlat70 = log2(u_xlat70);
  u_xlat70 = (u_xlat70 * x_65.x_HazePower);
  u_xlat70 = exp2(u_xlat70);
  u_xlat70 = (u_xlat70 * -1.44269502162933349609f);
  u_xlat70 = exp2(u_xlat70);
  u_xlat70 = (-(u_xlat70) + 1.0f);
  u_xlat2 = vec4f(((u_xlat0.xz + x_7339)).xy, u_xlat2.zw);
  u_xlat48.x = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat48.x = inverseSqrt(u_xlat48.x);
  u_xlat2 = vec4f(((u_xlat48.xx * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat48 = (x_19.x_MainLightPosition.xz + x_7339);
  u_xlat3.x = dot(u_xlat48, u_xlat48);
  u_xlat3.x = inverseSqrt(u_xlat3.x);
  u_xlat48 = (u_xlat48 * u_xlat3.xx);
  u_xlat2.x = dot(u_xlat2.xy, u_xlat48);
  u_xlat2.x = ((u_xlat2.x * 0.5f) + 0.5f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat2.x = log2(u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * x_65.x_HorizonWarmth);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat25 = (-(x_65.x_HorizonColor.xyz) + x_65.x_SunHorizonColor.xyz);
  u_xlat2 = vec4f((((u_xlat2.xxx * u_xlat25) + x_65.x_HorizonColor.xyz)).xyz, u_xlat2.w);
  u_xlat71 = max(u_xlat0.y, -1.0f);
  u_xlat71 = min(u_xlat71, 1.0f);
  u_xlat3.x = (-(abs(u_xlat71)) + 1.0f);
  u_xlat3.x = sqrt(u_xlat3.x);
  u_xlat26 = ((abs(u_xlat71) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat26 = ((u_xlat26 * abs(u_xlat71)) + -0.21211439371109008789f);
  u_xlat26 = ((u_xlat26 * abs(u_xlat71)) + 1.57072877883911132812f);
  u_xlat49 = (u_xlat3.x * u_xlat26);
  u_xlat49 = ((u_xlat49 * -2.0f) + 3.14159274101257324219f);
  u_xlatb71 = (u_xlat71 < -(u_xlat71));
  u_xlat71 = select(0.0f, u_xlat49, u_xlatb71);
  u_xlat71 = ((u_xlat26 * u_xlat3.x) + u_xlat71);
  u_xlat71 = (-(u_xlat71) + 1.57079637050628662109f);
  u_xlat3 = vec4f(((-(u_xlat2.xyz) + x_65.x_BelowColor.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((u_xlat3.xyz * vec3f(0.64999997615814208984f))).xyz, u_xlat3.w);
  u_xlat71 = ((u_xlat71 * 57.295780181884765625f) + -0.20000000298023223877f);
  u_xlat71 = (u_xlat71 * -0.37037035822868347168f);
  u_xlat71 = clamp(u_xlat71, 0.0f, 1.0f);
  u_xlat72 = ((u_xlat71 * -2.0f) + 3.0f);
  u_xlat71 = (u_xlat71 * u_xlat71);
  u_xlat71 = (u_xlat71 * u_xlat72);
  u_xlat2 = vec4f((((vec3f(u_xlat71) * u_xlat3.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((-(u_xlat1.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  SV_Target0 = vec4f((((vec3f(u_xlat70) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlat1.x = (x_65.x_FadeRadius * 0.19999998807907104492f);
  u_xlat24.x = dot(u_xlat5.xz, u_xlat5.xz);
  u_xlat24.x = sqrt(u_xlat24.x);
  u_xlat24.x = ((-(x_65.x_FadeRadius) * 0.80000001192092895508f) + u_xlat24.x);
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat24.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat24.x = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat24.x) * u_xlat1.x) + 1.0f);
  u_xlat24 = (vs_TEXCOORD1.xy / vs_TEXCOORD1.ww);
  u_xlat2 = vec4f((((-(x_19.x_CameraDepthTexture_TexelSize.xy) * x_4005) + x_4051)).xy, u_xlat2.zw);
  u_xlat24 = min(u_xlat24, u_xlat2.xy);
  u_xlat24 = (u_xlat24 * x_19.x_RTHandleScale.xy);
  u_xlat24 = (u_xlat24 * x_19.x_ScreenSize.xy);
  u_xlatu2 = vec4u(vec2u(u_xlat24).xy, u_xlatu2.zw);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  u_xlat24.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu2.xy), bitcast<i32>(u_xlatu2.w)).x;
  u_xlat24.x = ((x_19.x_ZBufferParams.z * u_xlat24.x) + x_19.x_ZBufferParams.w);
  u_xlat24.x = (1.0f / u_xlat24.x);
  u_xlat2.x = -(x_19.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat2.y = -(x_19.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat2.z = -(x_19.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat0.x = dot(u_xlat0, u_xlat2.xyz);
  u_xlat0.x = max(u_xlat0.x, 0.00009999999747378752f);
  u_xlat0.x = (u_xlat24.x / u_xlat0.x);
  u_xlat0.x = (-(u_xlat69) + u_xlat0.x);
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
  x_CascadeShadowSplitSpheres0 : vec4f,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4f,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4f,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4f,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4f,
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

@group(1) @binding(1) var<uniform> x_3842 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(0) @binding(2) var x_GeoCloudNoise : texture_2d<f32>;

@group(0) @binding(5) var sampler_GeoCloudNoise : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

var<private> gl_FragCoord : vec4f;

const x_162 = vec2f(0.11999999731779098511f);

const x_272 = vec2f(0.37000000476837158203f);

const x_276 = vec2f(0.12999999523162841797f, 0.61000001430511474609f);

const x_307 = vec2f(1.10000002384185791016f);

const x_325 = vec2f(2.70000004768371582031f);

const x_328 = vec2f(0.37000000476837158203f, 0.18999999761581420898f);

const x_420 = vec2f(0.0043000001460313797f, 0.002099999925121665f);

const x_439 = vec2f(-0.00170000002253800631f, 0.00350000010803341866f);

const x_1085 = vec2f(-1.0f, 1.0f);

const x_5465 = vec2f(1.29999995231628417969f);

const x_5647 = vec3f(1.0f);

const x_5791 = vec2f(1.0f);

const x_5898 = vec3f(0.89999997615814208984f);

const x_6168 = vec2f(0.00000999999974737875f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat42 : f32;
  var u_xlat1 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat15 : vec2f;
  var u_xlat29 : vec2f;
  var u_xlat43 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat16 : vec3f;
  var u_xlat4 : vec3f;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat32 : f32;
  var u_xlat5 : vec3f;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var u_xlati6 : i32;
  var u_xlati34 : i32;
  var u_xlatb48 : bool;
  var u_xlat7 : vec4f;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat8 : vec4f;
  var u_xlat36 : vec2f;
  var u_xlat22 : vec3f;
  var u_xlat50 : f32;
  var u_xlat9 : vec4f;
  var u_xlat35 : vec2f;
  var u_xlatb21 : bool;
  var u_xlat21 : vec2f;
  var u_xlatb35 : bool;
  var u_xlat6 : vec4f;
  var u_xlat34 : f32;
  var u_xlatb29 : bool;
  var x_1037 : vec2f;
  var x_1402 : vec2f;
  var x_1745 : vec2f;
  var x_2088 : vec2f;
  var u_xlat19 : f32;
  var x_2421 : vec2f;
  var x_2774 : f32;
  var u_xlat18 : f32;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlatb9 : vec4<bool>;
  var u_xlatu29 : u32;
  var u_xlati29 : i32;
  var txVec0 : vec3f;
  var u_xlatb43 : bool;
  var u_xlatb4 : bool;
  var x_4039 : f32;
  var u_xlat23 : vec2f;
  var u_xlat37 : f32;
  var u_xlat38 : vec2f;
  var u_xlat51 : f32;
  var u_xlat24 : f32;
  var u_xlat30 : vec2f;
  var u_xlat31 : f32;
  var u_xlatb30 : bool;
  var u_xlat17 : f32;
  var u_xlatb44 : bool;
  var u_xlatu2 : vec4u;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (vs_TEXCOORD0 + -(x_19.x_WorldSpaceCameraPos));
  u_xlat42 = dot(u_xlat0, u_xlat0);
  u_xlat42 = sqrt(u_xlat42);
  u_xlat1.x = max(u_xlat42, 0.00009999999747378752f);
  u_xlat0 = (u_xlat0 / u_xlat1.xxx);
  u_xlatb1 = (-0.00009999999747378752f < u_xlat0.y);
  if (((select(0i, 1i, u_xlatb1) * -1i) != 0i)) {
    discard;
  }
  u_xlat1.x = (-(x_65.x_BaseY) + x_65.x_TopY);
  u_xlat15.x = (-(vs_TEXCOORD0.y) + x_65.x_BaseY);
  u_xlat15.x = (u_xlat15.x / u_xlat0.y);
  u_xlat15.x = min(u_xlat15.x, x_65.x_MaxMarch);
  u_xlat29.x = (u_xlat42 * x_65.x_StepScale);
  u_xlat29.x = max(u_xlat29.x, 0.34999999403953552246f);
  u_xlat43 = (u_xlat29.x * 0.5f);
  u_xlat2.x = (x_19.x_Time.y + x_19.x_GeoCloudCentre.w);
  u_xlat3 = vec4f(((u_xlat2.xxx * x_19.x_GeoCloudWind.xyz)).xyz, u_xlat3.w);
  u_xlat16 = vec3f(((u_xlat3.xy * vec2f(0.69999998807907104492f))).xy, u_xlat16.z);
  u_xlat3.w = -(u_xlat3.y);
  u_xlat4 = vec3f(((u_xlat3.wx * x_19.x_GeoCloudWind.zz)).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_162) + u_xlat16.xy)).xy, u_xlat4.z);
  u_xlat44 = (-(x_65.x_ClearCentre.z) + x_65.x_ClearCentre.w);
  u_xlat44 = (1.0f / u_xlat44);
  u_xlat45 = (-(x_65.x_PuffSwell) + 1.0f);
  u_xlat32 = (-(u_xlat45) + 1.0f);
  u_xlat5.z = u_xlat43;
  u_xlat46 = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat47 = 0.0f;
  u_xlat20 = u_xlat29.x;
  u_xlati6 = 0i;
  u_xlati34 = 0i;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatb48 = (u_xlati34 >= 64i);
    if (u_xlatb48) {
      break;
    }
    u_xlat7 = vec4f((((u_xlat0 * u_xlat5.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat48 = (u_xlat42 + u_xlat5.z);
    u_xlat49 = ((u_xlat48 * x_65.x_LodScale) + 1.0f);
    u_xlat49 = log2(u_xlat49);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat4.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat36 = ((u_xlat8.zw * x_272) + x_276);
    u_xlat36.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat36, u_xlat49).x;
    u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat49).y;
    let x_311 = ((-(u_xlat3.xy) * x_307) + u_xlat7.xz);
    u_xlat22 = vec3f(x_311.x, u_xlat22.y, x_311.y);
    let x_319 = (u_xlat22.xz / vec2f(x_65.x_TileSize));
    u_xlat22 = vec3f(x_319.x, u_xlat22.y, x_319.y);
    let x_329 = ((u_xlat22.xz * x_325) + x_328);
    u_xlat22 = vec3f(x_329.x, u_xlat22.y, x_329.y);
    u_xlat49 = (u_xlat49 + 0.30000001192092895508f);
    u_xlat49 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat22.xz, u_xlat49).z;
    u_xlat22.x = (u_xlat36.x + -0.34999999403953552246f);
    u_xlat22.x = (u_xlat22.x + u_xlat22.x);
    u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
    u_xlat50 = ((u_xlat22.x * -2.0f) + 3.0f);
    u_xlat22.x = (u_xlat22.x * u_xlat22.x);
    u_xlat22.x = (u_xlat22.x * u_xlat50);
    u_xlat9 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
    u_xlat50 = dot(u_xlat9.xy, u_xlat9.xy);
    u_xlat50 = sqrt(u_xlat50);
    u_xlat50 = (u_xlat50 + -(x_65.x_ClearCentre.z));
    u_xlat50 = (u_xlat44 * u_xlat50);
    u_xlat50 = clamp(u_xlat50, 0.0f, 1.0f);
    u_xlat9.x = ((u_xlat50 * -2.0f) + 3.0f);
    u_xlat50 = (u_xlat50 * u_xlat50);
    u_xlat50 = ((-(u_xlat9.x) * u_xlat50) + 1.0f);
    u_xlat9.x = dot(u_xlat7.xz, x_420);
    u_xlat9.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat9.x);
    u_xlat9.x = sin(u_xlat9.x);
    u_xlat7.x = dot(u_xlat7.xz, x_439);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat9.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat9.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat50) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat35.x = ((u_xlat36.x * 2.0f) + -1.0f);
    u_xlat7.x = ((x_65.x_SwellAmp * u_xlat35.x) + u_xlat7.x);
    u_xlat35.x = (u_xlat8.x * x_65.x_PuffAmp);
    u_xlat8.x = ((u_xlat22.x * u_xlat32) + u_xlat45);
    u_xlat7.x = ((u_xlat35.x * u_xlat8.x) + u_xlat7.x);
    u_xlat35.x = (u_xlat49 * x_65.x_SmallAmp);
    u_xlat49 = ((u_xlat22.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat35.x * u_xlat49) + u_xlat7.x);
    u_xlat7.x = ((u_xlat7.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat7.x = (-(u_xlat7.x) + u_xlat7.y);
    u_xlatb21 = (u_xlat7.x < 0.0f);
    if (u_xlatb21) {
      u_xlati6 = -1i;
      break;
    }
    u_xlat21.x = (-(u_xlat7.x) / x_65.x_FuzzHeight);
    u_xlat21.x = (u_xlat21.x * 1.44269502162933349609f);
    u_xlat21.x = exp2(u_xlat21.x);
    u_xlat21.x = ((u_xlat21.x * u_xlat20) + u_xlat46);
    u_xlat35.x = (u_xlat48 * 0.01200000010430812836f);
    u_xlat35.x = max(u_xlat35.x, x_65.x_EdgeSkin);
    u_xlat7.x = (u_xlat7.x / u_xlat35.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.x = (-(u_xlat7.x) + 1.0f);
    u_xlat7.x = max(u_xlat47, u_xlat7.x);
    u_xlat48 = (u_xlat48 * x_65.x_StepScale);
    u_xlat20 = max(u_xlat48, 0.34999999403953552246f);
    u_xlat48 = (u_xlat5.z + u_xlat20);
    u_xlatb35 = (u_xlat15.x < u_xlat48);
    if (u_xlatb35) {
      u_xlat5.x = u_xlat5.z;
      u_xlat46 = u_xlat21.x;
      u_xlat47 = u_xlat7.x;
      u_xlati6 = 0i;
      u_xlat5.z = u_xlat48;
      break;
    }
    u_xlat5.x = u_xlat5.z;
    u_xlat46 = u_xlat21.x;
    u_xlat47 = u_xlat7.x;
    u_xlat5.z = u_xlat48;
    u_xlati34 = (u_xlati34 + 1i);
    u_xlati6 = 0i;
  }
  if ((u_xlati6 != 0i)) {
    u_xlat29.x = (u_xlat5.z + u_xlat5.x);
    u_xlat5.y = (u_xlat29.x * 0.5f);
    u_xlat6 = vec4f((((u_xlat0 * u_xlat5.yyy) + vs_TEXCOORD0)).xyz, u_xlat6.w);
    u_xlat29.x = ((u_xlat29.x * 0.5f) + u_xlat42);
    u_xlat29.x = ((u_xlat29.x * x_65.x_LodScale) + 1.0f);
    u_xlat29.x = log2(u_xlat29.x);
    u_xlat7 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(u_xlat7.xy, ((-(u_xlat4.xy) + u_xlat6.xz)).xy);
    u_xlat7 = (u_xlat7 / vec4f(x_65.x_TileSize));
    u_xlat35 = ((u_xlat7.zw * x_272) + x_276);
    u_xlat43 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat35, u_xlat29.x).x;
    u_xlat48 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat29.x).y;
    u_xlat7 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(((u_xlat7.xy / vec2f(x_65.x_TileSize))).xy, u_xlat7.zw);
    u_xlat7 = vec4f((((u_xlat7.xy * x_325) + x_328)).xy, u_xlat7.zw);
    u_xlat29.x = (u_xlat29.x + 0.30000001192092895508f);
    u_xlat29.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat29.x).z;
    u_xlat7.x = (u_xlat43 + -0.34999999403953552246f);
    u_xlat7.x = (u_xlat7.x + u_xlat7.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat21.x = ((u_xlat7.x * -2.0f) + 3.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat21.x);
    u_xlat21 = (u_xlat6.xz + -(x_65.x_ClearCentre.xy));
    u_xlat21.x = dot(u_xlat21, u_xlat21);
    u_xlat21.x = sqrt(u_xlat21.x);
    u_xlat21.x = (u_xlat21.x + -(x_65.x_ClearCentre.z));
    u_xlat21.x = (u_xlat44 * u_xlat21.x);
    u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
    u_xlat35.x = ((u_xlat21.x * -2.0f) + 3.0f);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat21.x = ((-(u_xlat35.x) * u_xlat21.x) + 1.0f);
    u_xlat35.x = dot(u_xlat6.xz, x_420);
    u_xlat35.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat35.x);
    u_xlat35.x = sin(u_xlat35.x);
    u_xlat6.x = dot(u_xlat6.xz, x_439);
    u_xlat6.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + 1.29999995231628417969f);
    u_xlat6.x = sin(u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * u_xlat35.x);
    u_xlat6.x = (u_xlat6.x * 0.40000000596046447754f);
    u_xlat6.x = ((u_xlat35.x * 0.60000002384185791016f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * x_19.x_GeoCloudWind.w);
    u_xlat6.x = (u_xlat6.x / u_xlat1.x);
    u_xlat6.x = ((-(x_65.x_ClearDepth) * u_xlat21.x) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + x_65.x_Blanket);
    u_xlat43 = ((u_xlat43 * 2.0f) + -1.0f);
    u_xlat43 = ((x_65.x_SwellAmp * u_xlat43) + u_xlat6.x);
    u_xlat6.x = (u_xlat48 * x_65.x_PuffAmp);
    u_xlat34 = ((u_xlat7.x * u_xlat32) + u_xlat45);
    u_xlat43 = ((u_xlat6.x * u_xlat34) + u_xlat43);
    u_xlat29.x = (u_xlat29.x * x_65.x_SmallAmp);
    u_xlat6.x = ((u_xlat7.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat29.x = ((u_xlat29.x * u_xlat6.x) + u_xlat43);
    u_xlat29.x = ((u_xlat29.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat29.x = (-(u_xlat29.x) + u_xlat6.y);
    u_xlatb29 = (u_xlat29.x < 0.0f);
    if (u_xlatb29) {
      x_1037 = u_xlat5.xy;
    } else {
      x_1037 = u_xlat5.yz;
    }
    u_xlat6 = vec4f(x_1037.xy, u_xlat6.zw);
    u_xlat29.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat29.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat29.x = ((u_xlat29.x * 0.5f) + u_xlat42);
    u_xlat29.x = ((u_xlat29.x * x_65.x_LodScale) + 1.0f);
    u_xlat29.x = log2(u_xlat29.x);
    u_xlat5 = vec3f(((u_xlat3.yx * x_1085)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy * x_19.x_GeoCloudWind.zz)).xy, u_xlat5.z);
    u_xlat5 = vec3f((((u_xlat5.xy * x_162) + u_xlat16.xy)).xy, u_xlat5.z);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat5.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat36 = ((u_xlat8.zw * x_272) + x_276);
    u_xlat43 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat36, u_xlat29.x).x;
    u_xlat48 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat29.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_325) + x_328)).xy, u_xlat8.zw);
    u_xlat29.x = (u_xlat29.x + 0.30000001192092895508f);
    u_xlat29.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat29.x).z;
    u_xlat49 = (u_xlat43 + -0.34999999403953552246f);
    u_xlat49 = (u_xlat49 + u_xlat49);
    u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat49 * -2.0f) + 3.0f);
    u_xlat49 = (u_xlat49 * u_xlat49);
    u_xlat49 = (u_xlat49 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat44 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat22.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat22.x) * u_xlat8.x) + 1.0f);
    u_xlat22.x = dot(u_xlat7.xz, x_420);
    u_xlat22.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat22.x);
    u_xlat22.x = sin(u_xlat22.x);
    u_xlat7.x = dot(u_xlat7.xz, x_439);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat22.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat22.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat43 = ((u_xlat43 * 2.0f) + -1.0f);
    u_xlat43 = ((x_65.x_SwellAmp * u_xlat43) + u_xlat7.x);
    u_xlat48 = (u_xlat48 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat49 * u_xlat32) + u_xlat45);
    u_xlat43 = ((u_xlat48 * u_xlat7.x) + u_xlat43);
    u_xlat29.x = (u_xlat29.x * x_65.x_SmallAmp);
    u_xlat48 = ((u_xlat49 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat29.x = ((u_xlat29.x * u_xlat48) + u_xlat43);
    u_xlat29.x = ((u_xlat29.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat29.x = (-(u_xlat29.x) + u_xlat7.y);
    u_xlatb29 = (u_xlat29.x < 0.0f);
    if (u_xlatb29) {
      x_1402 = u_xlat6.xz;
    } else {
      x_1402 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_1402.xy, u_xlat6.zw);
    u_xlat29.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat29.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat29.x = ((u_xlat29.x * 0.5f) + u_xlat42);
    u_xlat29.x = ((u_xlat29.x * x_65.x_LodScale) + 1.0f);
    u_xlat29.x = log2(u_xlat29.x);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat5.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat36 = ((u_xlat8.zw * x_272) + x_276);
    u_xlat43 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat36, u_xlat29.x).x;
    u_xlat48 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat29.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_325) + x_328)).xy, u_xlat8.zw);
    u_xlat29.x = (u_xlat29.x + 0.30000001192092895508f);
    u_xlat29.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat29.x).z;
    u_xlat49 = (u_xlat43 + -0.34999999403953552246f);
    u_xlat49 = (u_xlat49 + u_xlat49);
    u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat49 * -2.0f) + 3.0f);
    u_xlat49 = (u_xlat49 * u_xlat49);
    u_xlat49 = (u_xlat49 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat44 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat22.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat22.x) * u_xlat8.x) + 1.0f);
    u_xlat22.x = dot(u_xlat7.xz, x_420);
    u_xlat22.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat22.x);
    u_xlat22.x = sin(u_xlat22.x);
    u_xlat7.x = dot(u_xlat7.xz, x_439);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat22.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat22.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat43 = ((u_xlat43 * 2.0f) + -1.0f);
    u_xlat43 = ((x_65.x_SwellAmp * u_xlat43) + u_xlat7.x);
    u_xlat48 = (u_xlat48 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat49 * u_xlat32) + u_xlat45);
    u_xlat43 = ((u_xlat48 * u_xlat7.x) + u_xlat43);
    u_xlat29.x = (u_xlat29.x * x_65.x_SmallAmp);
    u_xlat48 = ((u_xlat49 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat29.x = ((u_xlat29.x * u_xlat48) + u_xlat43);
    u_xlat29.x = ((u_xlat29.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat29.x = (-(u_xlat29.x) + u_xlat7.y);
    u_xlatb29 = (u_xlat29.x < 0.0f);
    if (u_xlatb29) {
      x_1745 = u_xlat6.xz;
    } else {
      x_1745 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_1745.xy, u_xlat6.zw);
    u_xlat29.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat29.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat29.x = ((u_xlat29.x * 0.5f) + u_xlat42);
    u_xlat29.x = ((u_xlat29.x * x_65.x_LodScale) + 1.0f);
    u_xlat29.x = log2(u_xlat29.x);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat5.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat36 = ((u_xlat8.zw * x_272) + x_276);
    u_xlat43 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat36, u_xlat29.x).x;
    u_xlat48 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat29.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_325) + x_328)).xy, u_xlat8.zw);
    u_xlat29.x = (u_xlat29.x + 0.30000001192092895508f);
    u_xlat29.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat29.x).z;
    u_xlat49 = (u_xlat43 + -0.34999999403953552246f);
    u_xlat49 = (u_xlat49 + u_xlat49);
    u_xlat49 = clamp(u_xlat49, 0.0f, 1.0f);
    u_xlat8.x = ((u_xlat49 * -2.0f) + 3.0f);
    u_xlat49 = (u_xlat49 * u_xlat49);
    u_xlat49 = (u_xlat49 * u_xlat8.x);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat8.x = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
    u_xlat8.x = (u_xlat44 * u_xlat8.x);
    u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
    u_xlat22.x = ((u_xlat8.x * -2.0f) + 3.0f);
    u_xlat8.x = (u_xlat8.x * u_xlat8.x);
    u_xlat8.x = ((-(u_xlat22.x) * u_xlat8.x) + 1.0f);
    u_xlat22.x = dot(u_xlat7.xz, x_420);
    u_xlat22.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat22.x);
    u_xlat22.x = sin(u_xlat22.x);
    u_xlat7.x = dot(u_xlat7.xz, x_439);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat22.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat22.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat43 = ((u_xlat43 * 2.0f) + -1.0f);
    u_xlat43 = ((x_65.x_SwellAmp * u_xlat43) + u_xlat7.x);
    u_xlat48 = (u_xlat48 * x_65.x_PuffAmp);
    u_xlat7.x = ((u_xlat49 * u_xlat32) + u_xlat45);
    u_xlat43 = ((u_xlat48 * u_xlat7.x) + u_xlat43);
    u_xlat29.x = (u_xlat29.x * x_65.x_SmallAmp);
    u_xlat48 = ((u_xlat49 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat29.x = ((u_xlat29.x * u_xlat48) + u_xlat43);
    u_xlat29.x = ((u_xlat29.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat29.x = (-(u_xlat29.x) + u_xlat7.y);
    u_xlatb29 = (u_xlat29.x < 0.0f);
    if (u_xlatb29) {
      x_2088 = u_xlat6.xz;
    } else {
      x_2088 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_2088.xy, u_xlat6.zw);
    u_xlat29.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat29.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat29.x = ((u_xlat29.x * 0.5f) + u_xlat42);
    u_xlat29.x = ((u_xlat29.x * x_65.x_LodScale) + 1.0f);
    u_xlat29.x = log2(u_xlat29.x);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat5 = vec3f(((-(u_xlat5.xy) + u_xlat7.xz)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy / vec2f(x_65.x_TileSize))).xy, u_xlat5.z);
    u_xlat5 = vec3f((((u_xlat5.xy * x_272) + x_276)).xy, u_xlat5.z);
    u_xlat43 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat5.xy, u_xlat29.x).x;
    u_xlat5.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat29.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_325) + x_328)).xy, u_xlat8.zw);
    u_xlat29.x = (u_xlat29.x + 0.30000001192092895508f);
    u_xlat29.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat29.x).z;
    u_xlat19 = (u_xlat43 + -0.34999999403953552246f);
    u_xlat19 = (u_xlat19 + u_xlat19);
    u_xlat19 = clamp(u_xlat19, 0.0f, 1.0f);
    u_xlat48 = ((u_xlat19 * -2.0f) + 3.0f);
    u_xlat19 = (u_xlat19 * u_xlat19);
    u_xlat19 = (u_xlat19 * u_xlat48);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat48 = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat48 = sqrt(u_xlat48);
    u_xlat48 = (u_xlat48 + -(x_65.x_ClearCentre.z));
    u_xlat48 = (u_xlat44 * u_xlat48);
    u_xlat48 = clamp(u_xlat48, 0.0f, 1.0f);
    u_xlat49 = ((u_xlat48 * -2.0f) + 3.0f);
    u_xlat48 = (u_xlat48 * u_xlat48);
    u_xlat48 = ((-(u_xlat49) * u_xlat48) + 1.0f);
    u_xlat49 = dot(u_xlat7.xz, x_420);
    u_xlat7.w = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat49);
    u_xlat7.x = dot(u_xlat7.xz, x_439);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    let x_2313 = sin(u_xlat7.xw);
    u_xlat7 = vec4f(x_2313.x, u_xlat7.yz, x_2313.y);
    u_xlat7.x = (u_xlat7.x * u_xlat7.w);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat7.w * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat48 = ((-(x_65.x_ClearDepth) * u_xlat48) + u_xlat7.x);
    u_xlat48 = (u_xlat48 + x_65.x_Blanket);
    u_xlat43 = ((u_xlat43 * 2.0f) + -1.0f);
    u_xlat43 = ((x_65.x_SwellAmp * u_xlat43) + u_xlat48);
    u_xlat5.x = (u_xlat5.x * x_65.x_PuffAmp);
    u_xlat48 = ((u_xlat19 * u_xlat32) + u_xlat45);
    u_xlat43 = ((u_xlat5.x * u_xlat48) + u_xlat43);
    u_xlat29.x = (u_xlat29.x * x_65.x_SmallAmp);
    u_xlat5.x = ((u_xlat19 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat29.x = ((u_xlat29.x * u_xlat5.x) + u_xlat43);
    u_xlat29.x = ((u_xlat29.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat29.x = (-(u_xlat29.x) + u_xlat7.y);
    u_xlatb29 = (u_xlat29.x < 0.0f);
    if (u_xlatb29) {
      x_2421 = u_xlat6.xz;
    } else {
      x_2421 = u_xlat6.zy;
    }
    u_xlat29 = x_2421;
    u_xlat29.x = (u_xlat29.y + u_xlat29.x);
    u_xlat5.x = (u_xlat29.x * 0.5f);
    u_xlat6 = vec4f((((u_xlat0 * u_xlat5.xxx) + vs_TEXCOORD0)).xyz, u_xlat6.w);
    u_xlat29.x = ((u_xlat29.x * 0.5f) + u_xlat42);
    u_xlat29.x = ((u_xlat29.x * x_65.x_LodScale) + 1.0f);
    u_xlat29.x = log2(u_xlat29.x);
    u_xlat7 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(u_xlat7.xy, ((-(u_xlat4.xy) + u_xlat6.xz)).xy);
    u_xlat7 = (u_xlat7 / vec4f(x_65.x_TileSize));
    u_xlat35 = ((u_xlat7.zw * x_272) + x_276);
    u_xlat19 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat35, u_xlat29.x).x;
    u_xlat48 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat29.x).y;
    u_xlat7 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(((u_xlat7.xy / vec2f(x_65.x_TileSize))).xy, u_xlat7.zw);
    u_xlat7 = vec4f((((u_xlat7.xy * x_325) + x_328)).xy, u_xlat7.zw);
    u_xlat29.x = (u_xlat29.x + 0.30000001192092895508f);
    u_xlat29.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat29.x).z;
    u_xlat7.x = (u_xlat19 + -0.34999999403953552246f);
    u_xlat7.x = (u_xlat7.x + u_xlat7.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat21.x = ((u_xlat7.x * -2.0f) + 3.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat21.x);
    u_xlat21 = (u_xlat6.xz + -(x_65.x_ClearCentre.xy));
    u_xlat21.x = dot(u_xlat21, u_xlat21);
    u_xlat21.x = sqrt(u_xlat21.x);
    u_xlat21.x = (u_xlat21.x + -(x_65.x_ClearCentre.z));
    u_xlat21.x = (u_xlat44 * u_xlat21.x);
    u_xlat21.x = clamp(u_xlat21.x, 0.0f, 1.0f);
    u_xlat35.x = ((u_xlat21.x * -2.0f) + 3.0f);
    u_xlat21.x = (u_xlat21.x * u_xlat21.x);
    u_xlat21.x = ((-(u_xlat35.x) * u_xlat21.x) + 1.0f);
    u_xlat35.x = dot(u_xlat6.xz, x_420);
    u_xlat35.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat35.x);
    u_xlat35.x = sin(u_xlat35.x);
    u_xlat6.x = dot(u_xlat6.xz, x_439);
    u_xlat6.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + 1.29999995231628417969f);
    u_xlat6.x = sin(u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * u_xlat35.x);
    u_xlat6.x = (u_xlat6.x * 0.40000000596046447754f);
    u_xlat6.x = ((u_xlat35.x * 0.60000002384185791016f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * x_19.x_GeoCloudWind.w);
    u_xlat6.x = (u_xlat6.x / u_xlat1.x);
    u_xlat6.x = ((-(x_65.x_ClearDepth) * u_xlat21.x) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + x_65.x_Blanket);
    u_xlat19 = ((u_xlat19 * 2.0f) + -1.0f);
    u_xlat19 = ((x_65.x_SwellAmp * u_xlat19) + u_xlat6.x);
    u_xlat6.x = (u_xlat48 * x_65.x_PuffAmp);
    u_xlat34 = ((u_xlat7.x * u_xlat32) + u_xlat45);
    u_xlat19 = ((u_xlat6.x * u_xlat34) + u_xlat19);
    u_xlat29.x = (u_xlat29.x * x_65.x_SmallAmp);
    u_xlat6.x = ((u_xlat7.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat29.x = ((u_xlat29.x * u_xlat6.x) + u_xlat19);
    u_xlat29.x = ((u_xlat29.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat29.x = (-(u_xlat29.x) + u_xlat6.y);
    u_xlatb29 = (u_xlat29.x < 0.0f);
    if (u_xlatb29) {
      x_2774 = u_xlat5.x;
    } else {
      x_2774 = u_xlat29.y;
    }
    u_xlat29.x = x_2774;
  } else {
    u_xlat29.x = min(u_xlat15.x, u_xlat5.z);
  }
  u_xlat5 = ((u_xlat0 * u_xlat29.xxx) + vs_TEXCOORD0);
  u_xlat42 = (u_xlat42 + u_xlat29.x);
  u_xlat15.x = ((u_xlat42 * x_65.x_LodScale) + 1.0f);
  u_xlat15.x = log2(u_xlat15.x);
  u_xlat29.x = (u_xlat42 * 0.00400000018998980522f);
  u_xlat6.y = max(u_xlat29.x, 0.40000000596046447754f);
  u_xlat7 = ((-(x_19.x_GeoCloudWind.xyxy) * u_xlat2.xxxx) + u_xlat5.xzxz);
  u_xlat7 = (u_xlat7 / vec4f(x_65.x_TileSize));
  u_xlat29 = (-(u_xlat4.xy) + u_xlat5.xz);
  u_xlat29 = (u_xlat29 / vec2f(x_65.x_TileSize));
  u_xlat29 = ((u_xlat29 * x_272) + x_276);
  u_xlat29.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat29, u_xlat15.x).x;
  u_xlat43 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.zw, u_xlat15.x).y;
  u_xlat4 = vec3f((((-(u_xlat3.xy) * x_307) + u_xlat5.xz)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_325) + x_328)).xy, u_xlat4.z);
  u_xlat8.x = (u_xlat15.x + 0.30000001192092895508f);
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat8.x).z;
  u_xlat18 = (u_xlat29.x + -0.34999999403953552246f);
  u_xlat18 = (u_xlat18 + u_xlat18);
  u_xlat18 = clamp(u_xlat18, 0.0f, 1.0f);
  u_xlat22.x = ((u_xlat18 * -2.0f) + 3.0f);
  u_xlat18 = (u_xlat18 * u_xlat18);
  u_xlat18 = (u_xlat18 * u_xlat22.x);
  u_xlat22 = vec3f(((u_xlat5.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat22.z);
  u_xlat22.x = dot(u_xlat22.xy, u_xlat22.xy);
  u_xlat22.x = sqrt(u_xlat22.x);
  u_xlat22.x = (u_xlat22.x + -(x_65.x_ClearCentre.z));
  u_xlat22.x = (u_xlat44 * u_xlat22.x);
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat36.x = ((u_xlat22.x * -2.0f) + 3.0f);
  u_xlat22.x = (u_xlat22.x * u_xlat22.x);
  u_xlat22.x = ((-(u_xlat36.x) * u_xlat22.x) + 1.0f);
  u_xlat36.x = dot(u_xlat5.xz, x_420);
  u_xlat36.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat36.x);
  u_xlat50 = dot(u_xlat5.xz, x_439);
  u_xlat50 = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat50);
  u_xlat36.y = (u_xlat50 + 1.29999995231628417969f);
  u_xlat36 = sin(u_xlat36);
  u_xlat50 = (u_xlat36.y * u_xlat36.x);
  u_xlat50 = (u_xlat50 * 0.40000000596046447754f);
  u_xlat36.x = ((u_xlat36.x * 0.60000002384185791016f) + u_xlat50);
  u_xlat36.x = (u_xlat36.x * x_19.x_GeoCloudWind.w);
  u_xlat36.x = (u_xlat36.x / u_xlat1.x);
  u_xlat22.x = ((-(x_65.x_ClearDepth) * u_xlat22.x) + u_xlat36.x);
  u_xlat22.x = (u_xlat22.x + x_65.x_Blanket);
  u_xlat29.x = ((u_xlat29.x * 2.0f) + -1.0f);
  u_xlat29.x = ((x_65.x_SwellAmp * u_xlat29.x) + u_xlat22.x);
  u_xlat43 = (u_xlat43 * x_65.x_PuffAmp);
  u_xlat22.x = ((u_xlat18 * u_xlat32) + u_xlat45);
  u_xlat29.x = ((u_xlat43 * u_xlat22.x) + u_xlat29.x);
  u_xlat43 = (u_xlat4.x * x_65.x_SmallAmp);
  u_xlat4.x = ((u_xlat18 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat29.x = ((u_xlat43 * u_xlat4.x) + u_xlat29.x);
  u_xlat29.x = ((u_xlat29.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat6.z = 0.0f;
  u_xlat9 = (u_xlat5.xzxz + u_xlat6.yzzy);
  u_xlat4 = vec3f(((u_xlat3.yx * x_1085)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy * x_19.x_GeoCloudWind.zz)).xy, u_xlat4.z);
  u_xlat16 = vec3f((((u_xlat4.xy * x_162) + u_xlat16.xy)).xy, u_xlat16.z);
  u_xlat10 = ((-(x_19.x_GeoCloudWind.xyxy) * u_xlat2.xxxx) + u_xlat9);
  u_xlat10 = (u_xlat10 / vec4f(x_65.x_TileSize));
  u_xlat11 = (-(u_xlat16.xyxy) + u_xlat9);
  u_xlat11 = (u_xlat11 / vec4f(x_65.x_TileSize));
  u_xlat11 = ((u_xlat11 * vec4f(0.37000000476837158203f)) + vec4f(0.12999999523162841797f, 0.61000001430511474609f, 0.12999999523162841797f, 0.61000001430511474609f));
  u_xlat43 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat11.xy, u_xlat15.x).x;
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat15.x).y;
  u_xlat12 = ((-(u_xlat3.xyxy) * vec4f(1.10000002384185791016f)) + u_xlat9);
  u_xlat12 = (u_xlat12 / vec4f(x_65.x_TileSize));
  u_xlat12 = ((u_xlat12 * vec4f(2.70000004768371582031f)) + vec4f(0.37000000476837158203f, 0.18999999761581420898f, 0.37000000476837158203f, 0.18999999761581420898f));
  u_xlat18 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat12.xy, u_xlat8.x).z;
  u_xlat34 = (u_xlat43 + -0.34999999403953552246f);
  u_xlat34 = (u_xlat34 + u_xlat34);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat22.x = ((u_xlat34 * -2.0f) + 3.0f);
  u_xlat34 = (u_xlat34 * u_xlat34);
  u_xlat34 = (u_xlat34 * u_xlat22.x);
  u_xlat13 = (u_xlat9 + -(x_65.x_ClearCentre.xyxy));
  u_xlat22.x = dot(u_xlat13.xy, u_xlat13.xy);
  u_xlat22.x = sqrt(u_xlat22.x);
  u_xlat22.x = (u_xlat22.x + -(x_65.x_ClearCentre.z));
  u_xlat22.x = (u_xlat44 * u_xlat22.x);
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat36.x = ((u_xlat22.x * -2.0f) + 3.0f);
  u_xlat22.x = (u_xlat22.x * u_xlat22.x);
  u_xlat22.x = ((-(u_xlat36.x) * u_xlat22.x) + 1.0f);
  u_xlat36.x = dot(u_xlat9.xy, x_420);
  u_xlat36.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat36.x);
  u_xlat50 = dot(u_xlat9.xy, x_439);
  u_xlat50 = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat50);
  u_xlat36.y = (u_xlat50 + 1.29999995231628417969f);
  u_xlat36 = sin(u_xlat36);
  u_xlat50 = (u_xlat36.y * u_xlat36.x);
  u_xlat50 = (u_xlat50 * 0.40000000596046447754f);
  u_xlat36.x = ((u_xlat36.x * 0.60000002384185791016f) + u_xlat50);
  u_xlat36.x = (u_xlat36.x * x_19.x_GeoCloudWind.w);
  u_xlat36.x = (u_xlat36.x / u_xlat1.x);
  u_xlat22.x = ((-(x_65.x_ClearDepth) * u_xlat22.x) + u_xlat36.x);
  u_xlat22.x = (u_xlat22.x + x_65.x_Blanket);
  u_xlat43 = ((u_xlat43 * 2.0f) + -1.0f);
  u_xlat43 = ((x_65.x_SwellAmp * u_xlat43) + u_xlat22.x);
  u_xlat4.x = (u_xlat4.x * x_65.x_PuffAmp);
  u_xlat22.x = ((u_xlat34 * u_xlat32) + u_xlat45);
  u_xlat43 = ((u_xlat4.x * u_xlat22.x) + u_xlat43);
  u_xlat4.x = (u_xlat18 * x_65.x_SmallAmp);
  u_xlat18 = ((u_xlat34 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat43 = ((u_xlat4.x * u_xlat18) + u_xlat43);
  u_xlat43 = ((u_xlat43 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat11.zw, u_xlat15.x).x;
  u_xlat18 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.zw, u_xlat15.x).y;
  u_xlat34 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat12.zw, u_xlat8.x).z;
  u_xlat22.x = (u_xlat4.x + -0.34999999403953552246f);
  u_xlat22.x = (u_xlat22.x + u_xlat22.x);
  u_xlat22.x = clamp(u_xlat22.x, 0.0f, 1.0f);
  u_xlat36.x = ((u_xlat22.x * -2.0f) + 3.0f);
  u_xlat22.x = (u_xlat22.x * u_xlat22.x);
  u_xlat22.x = (u_xlat22.x * u_xlat36.x);
  u_xlat36.x = dot(u_xlat13.zw, u_xlat13.zw);
  u_xlat36.x = sqrt(u_xlat36.x);
  u_xlat36.x = (u_xlat36.x + -(x_65.x_ClearCentre.z));
  u_xlat36.x = (u_xlat44 * u_xlat36.x);
  u_xlat36.x = clamp(u_xlat36.x, 0.0f, 1.0f);
  u_xlat50 = ((u_xlat36.x * -2.0f) + 3.0f);
  u_xlat36.x = (u_xlat36.x * u_xlat36.x);
  u_xlat36.x = ((-(u_xlat50) * u_xlat36.x) + 1.0f);
  u_xlat50 = dot(u_xlat9.zw, x_420);
  u_xlat50 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat50);
  u_xlat50 = sin(u_xlat50);
  u_xlat9.x = dot(u_xlat9.zw, x_439);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat50 * u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat50 = ((u_xlat50 * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat50 = (u_xlat50 * x_19.x_GeoCloudWind.w);
  u_xlat50 = (u_xlat50 / u_xlat1.x);
  u_xlat36.x = ((-(x_65.x_ClearDepth) * u_xlat36.x) + u_xlat50);
  u_xlat36.x = (u_xlat36.x + x_65.x_Blanket);
  u_xlat4.x = ((u_xlat4.x * 2.0f) + -1.0f);
  u_xlat4.x = ((x_65.x_SwellAmp * u_xlat4.x) + u_xlat36.x);
  u_xlat18 = (u_xlat18 * x_65.x_PuffAmp);
  u_xlat36.x = ((u_xlat22.x * u_xlat32) + u_xlat45);
  u_xlat4.x = ((u_xlat18 * u_xlat36.x) + u_xlat4.x);
  u_xlat18 = (u_xlat34 * x_65.x_SmallAmp);
  u_xlat34 = ((u_xlat22.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat4.x = ((u_xlat18 * u_xlat34) + u_xlat4.x);
  u_xlat4.x = ((u_xlat4.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat6.x = (-(u_xlat43) + u_xlat29.x);
  u_xlat6.w = (u_xlat29.x + -(u_xlat4.x));
  u_xlat29.x = dot(u_xlat6.xyw, u_xlat6.xyw);
  u_xlat29.x = inverseSqrt(u_xlat29.x);
  u_xlat9 = ((-(u_xlat3.xyxy) * vec4f(1.20000004768371582031f)) + u_xlat5.xzxz);
  u_xlat9 = (u_xlat9 / vec4f(x_65.x_TileSize));
  u_xlat4 = vec3f(((u_xlat9.zw * vec2f(x_65.x_DetailScale))).xy, u_xlat4.z);
  u_xlat43 = (x_65.x_DetailScale * 0.5f);
  u_xlat43 = max(u_xlat43, 1.0f);
  u_xlat43 = log2(u_xlat43);
  u_xlat43 = (u_xlat43 + u_xlat15.x);
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat43).w;
  u_xlat4.x = ((u_xlat4.x * 2.0f) + -1.0f);
  u_xlat9 = ((u_xlat9 * vec4f(x_65.x_DetailScale)) + vec4f(0.0029296875f, 0.0f, 0.0f, 0.0029296875f));
  u_xlat18 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat43).w;
  u_xlat18 = ((u_xlat18 * 2.0f) + -1.0f);
  u_xlat43 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.zw, u_xlat43).w;
  u_xlat43 = ((u_xlat43 * 2.0f) + -1.0f);
  u_xlat34 = (u_xlat42 / x_65.x_DetailFade);
  u_xlat34 = (-(u_xlat34) + 1.0f);
  u_xlat34 = clamp(u_xlat34, 0.0f, 1.0f);
  u_xlat9.x = (-(abs(u_xlat18)) + abs(u_xlat4.x));
  u_xlat9.z = (-(abs(u_xlat43)) + abs(u_xlat4.x));
  let x_3751 = vec2f(x_65.x_DetailStrength, x_65.x_DetailStrength);
  u_xlat4 = vec3f(((u_xlat9.xz * vec2f(x_3751.x, x_3751.y))).xy, u_xlat4.z);
  let x_3762 = (vec2f(u_xlat34) * u_xlat4.xy);
  u_xlat9 = vec4f(x_3762.x, u_xlat9.y, x_3762.y, u_xlat9.w);
  u_xlat9.y = 0.0f;
  u_xlat6 = vec4f((((u_xlat6.xyw * u_xlat29.xxx) + u_xlat9.xyz)).xyz, u_xlat6.w);
  u_xlat29.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat29.x = inverseSqrt(u_xlat29.x);
  u_xlat22 = (u_xlat29.xxx * u_xlat6.xyz);
  u_xlat6 = vec4f((((-(u_xlat6.xyz) * u_xlat29.xxx) + vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat6.w);
  let x_3808 = vec3f(x_65.x_NormalSoft, x_65.x_NormalSoft, x_65.x_NormalSoft);
  u_xlat6 = vec4f((((vec3f(x_3808.x, x_3808.y, x_3808.z) * u_xlat6.xyz) + u_xlat22)).xyz, u_xlat6.w);
  u_xlat29.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat29.x = inverseSqrt(u_xlat29.x);
  u_xlat6 = vec4f(((u_xlat29.xxx * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat22 = (u_xlat5 + -(x_3842.x_CascadeShadowSplitSpheres0.xyz));
  u_xlat9 = vec4f(((u_xlat5 + -(x_3842.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat9.w);
  u_xlat10 = vec4f(((u_xlat5 + -(x_3842.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat10.w);
  u_xlat11 = vec4f(((u_xlat5 + -(x_3842.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat11.w);
  u_xlat12.x = dot(u_xlat22, u_xlat22);
  u_xlat12.y = dot(u_xlat9.xyz, u_xlat9.xyz);
  u_xlat12.z = dot(u_xlat10.xyz, u_xlat10.xyz);
  u_xlat12.w = dot(u_xlat11.xyz, u_xlat11.xyz);
  u_xlatb9 = (u_xlat12 < x_3842.x_CascadeShadowSplitSphereRadii);
  u_xlat10.x = select(0.0f, 1.0f, u_xlatb9.x);
  u_xlat10.y = select(0.0f, 1.0f, u_xlatb9.y);
  u_xlat10.z = select(0.0f, 1.0f, u_xlatb9.z);
  u_xlat10.w = select(0.0f, 1.0f, u_xlatb9.w);
  u_xlat22.x = select(-0.0f, -1.0f, u_xlatb9.x);
  u_xlat22.y = select(-0.0f, -1.0f, u_xlatb9.y);
  u_xlat22.z = select(-0.0f, -1.0f, u_xlatb9.z);
  u_xlat22 = (u_xlat22 + u_xlat10.yzw);
  u_xlat10 = vec4f(u_xlat10.x, max(u_xlat22, vec3f()).xyz);
  u_xlat29.x = dot(u_xlat10, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat29.x = (-(u_xlat29.x) + 4.0f);
  u_xlatu29 = u32(u_xlat29.x);
  u_xlati29 = (bitcast<i32>(u_xlatu29) << bitcast<u32>(2i));
  u_xlat22 = (u_xlat5.yyy * x_3842.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati29 + 1i)].xyz);
  u_xlat22 = ((x_3842.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati29].xyz * u_xlat5.xxx) + u_xlat22);
  u_xlat22 = ((x_3842.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati29 + 2i)].xyz * u_xlat5.zzz) + u_xlat22);
  u_xlat22 = (u_xlat22 + x_3842.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati29 + 3i)].xyz);
  let x_3996 = u_xlat22.xy;
  txVec0 = vec3f(x_3996.x, x_3996.y, u_xlat22.z);
  u_xlat29.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
  u_xlat43 = (-(x_3842.x_MainLightShadowParams.x) + 1.0f);
  u_xlat29.x = ((u_xlat29.x * x_3842.x_MainLightShadowParams.x) + u_xlat43);
  u_xlatb43 = (0.0f >= u_xlat22.z);
  u_xlatb4 = (u_xlat22.z >= 1.0f);
  u_xlatb43 = (u_xlatb43 | u_xlatb4);
  if (u_xlatb43) {
    x_4039 = 1.0f;
  } else {
    x_4039 = u_xlat29.x;
  }
  u_xlat29.x = x_4039;
  u_xlat22 = (u_xlat5 + -(x_19.x_WorldSpaceCameraPos));
  u_xlat43 = dot(u_xlat22, u_xlat22);
  u_xlat43 = ((u_xlat43 * x_3842.x_MainLightShadowParams.z) + x_3842.x_MainLightShadowParams.w);
  u_xlat43 = clamp(u_xlat43, 0.0f, 1.0f);
  u_xlat4.x = (-(u_xlat29.x) + 1.0f);
  u_xlat29.x = ((u_xlat43 * u_xlat4.x) + u_xlat29.x);
  u_xlat22 = (x_19.x_MainLightPosition.xyz * vec3f(2.59999990463256835938f));
  u_xlat43 = (x_65.x_TileSize * 0.00249999994412064552f);
  u_xlat22 = ((u_xlat22 * vec3f(u_xlat43)) + u_xlat5);
  u_xlat4 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat22.xz)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat9 = vec4f(((-(u_xlat16.xy) + u_xlat22.xz)).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_65.x_TileSize))).xy, u_xlat9.zw);
  u_xlat9 = vec4f((((u_xlat9.xy * x_272) + x_276)).xy, u_xlat9.zw);
  u_xlat48 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat15.x).x;
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat15.x).y;
  u_xlat9 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat22.xz)).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_65.x_TileSize))).xy, u_xlat9.zw);
  u_xlat9 = vec4f((((u_xlat9.xy * x_325) + x_328)).xy, u_xlat9.zw);
  u_xlat4.y = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat8.x).z;
  u_xlat9.x = (u_xlat48 + -0.34999999403953552246f);
  u_xlat9.x = (u_xlat9.x + u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat23.x = ((u_xlat9.x * -2.0f) + 3.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat23.x);
  u_xlat23 = (u_xlat22.xz + -(x_65.x_ClearCentre.xy));
  u_xlat23.x = dot(u_xlat23, u_xlat23);
  u_xlat23.x = sqrt(u_xlat23.x);
  u_xlat23.x = (u_xlat23.x + -(x_65.x_ClearCentre.z));
  u_xlat23.x = (u_xlat44 * u_xlat23.x);
  u_xlat23.x = clamp(u_xlat23.x, 0.0f, 1.0f);
  u_xlat37 = ((u_xlat23.x * -2.0f) + 3.0f);
  u_xlat23.x = (u_xlat23.x * u_xlat23.x);
  u_xlat23.x = ((-(u_xlat37) * u_xlat23.x) + 1.0f);
  u_xlat37 = dot(u_xlat22.xz, x_420);
  u_xlat37 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat37);
  u_xlat37 = sin(u_xlat37);
  u_xlat22.x = dot(u_xlat22.xz, x_439);
  u_xlat22.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat22.x);
  u_xlat22.x = (u_xlat22.x + 1.29999995231628417969f);
  u_xlat22.x = sin(u_xlat22.x);
  u_xlat22.x = (u_xlat22.x * u_xlat37);
  u_xlat22.x = (u_xlat22.x * 0.40000000596046447754f);
  u_xlat22.x = ((u_xlat37 * 0.60000002384185791016f) + u_xlat22.x);
  u_xlat22.x = (u_xlat22.x * x_19.x_GeoCloudWind.w);
  u_xlat22.x = (u_xlat22.x / u_xlat1.x);
  u_xlat22.x = ((-(x_65.x_ClearDepth) * u_xlat23.x) + u_xlat22.x);
  u_xlat22.x = (u_xlat22.x + x_65.x_Blanket);
  u_xlat48 = ((u_xlat48 * 2.0f) + -1.0f);
  u_xlat48 = ((x_65.x_SwellAmp * u_xlat48) + u_xlat22.x);
  u_xlat4 = vec3f(((u_xlat4.xy * vec2f(x_65.x_PuffAmp, x_65.x_SmallAmp))).xy, u_xlat4.z);
  u_xlat22.x = ((u_xlat9.x * u_xlat32) + u_xlat45);
  u_xlat4.x = ((u_xlat4.x * u_xlat22.x) + u_xlat48);
  u_xlat48 = ((u_xlat9.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat4.x = ((u_xlat4.y * u_xlat48) + u_xlat4.x);
  u_xlat4.x = ((u_xlat4.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat4.x = (-(u_xlat22.y) + u_xlat4.x);
  u_xlat4.x = max(u_xlat4.x, 0.0f);
  u_xlat22 = (vec3f(u_xlat43) * x_19.x_MainLightPosition.xyz);
  u_xlat9 = vec4f((((u_xlat22 * vec3f(7.40000009536743164062f)) + u_xlat5)).xyz, u_xlat9.w);
  u_xlat10 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(u_xlat10.xy, ((-(u_xlat16.xy) + u_xlat9.xz)).xy);
  u_xlat10 = (u_xlat10 / vec4f(x_65.x_TileSize));
  u_xlat38 = ((u_xlat10.zw * x_272) + x_276);
  u_xlat43 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat38, u_xlat15.x).x;
  u_xlat18 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat15.x).y;
  u_xlat10 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_325) + x_328)).xy, u_xlat10.zw);
  u_xlat48 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat8.x).z;
  u_xlat51 = (u_xlat43 + -0.34999999403953552246f);
  u_xlat51 = (u_xlat51 + u_xlat51);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat10.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat10.x);
  u_xlat10 = vec4f(((u_xlat9.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat10.zw);
  u_xlat10.x = dot(u_xlat10.xy, u_xlat10.xy);
  u_xlat10.x = sqrt(u_xlat10.x);
  u_xlat10.x = (u_xlat10.x + -(x_65.x_ClearCentre.z));
  u_xlat10.x = (u_xlat44 * u_xlat10.x);
  u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
  u_xlat24 = ((u_xlat10.x * -2.0f) + 3.0f);
  u_xlat10.x = (u_xlat10.x * u_xlat10.x);
  u_xlat10.x = ((-(u_xlat24) * u_xlat10.x) + 1.0f);
  u_xlat24 = dot(u_xlat9.xz, x_420);
  u_xlat24 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat24);
  u_xlat24 = sin(u_xlat24);
  u_xlat9.x = dot(u_xlat9.xz, x_439);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat24);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat24 * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat9.x = ((-(x_65.x_ClearDepth) * u_xlat10.x) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + x_65.x_Blanket);
  u_xlat43 = ((u_xlat43 * 2.0f) + -1.0f);
  u_xlat43 = ((x_65.x_SwellAmp * u_xlat43) + u_xlat9.x);
  u_xlat18 = (u_xlat18 * x_65.x_PuffAmp);
  u_xlat9.x = ((u_xlat51 * u_xlat32) + u_xlat45);
  u_xlat43 = ((u_xlat18 * u_xlat9.x) + u_xlat43);
  u_xlat18 = (u_xlat48 * x_65.x_SmallAmp);
  u_xlat48 = ((u_xlat51 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat43 = ((u_xlat18 * u_xlat48) + u_xlat43);
  u_xlat43 = ((u_xlat43 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat43 = (-(u_xlat9.y) + u_xlat43);
  u_xlat43 = max(u_xlat43, 0.0f);
  u_xlat43 = (u_xlat43 + u_xlat4.x);
  u_xlat9 = vec4f((((u_xlat22 * vec3f(15.40000057220458984375f)) + u_xlat5)).xyz, u_xlat9.w);
  u_xlat4 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat9.xz)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat10 = vec4f(((-(u_xlat16.xy) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_272) + x_276)).xy, u_xlat10.zw);
  u_xlat48 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat15.x).x;
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat15.x).y;
  u_xlat10 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_325) + x_328)).xy, u_xlat10.zw);
  u_xlat4.y = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat8.x).z;
  u_xlat51 = (u_xlat48 + -0.34999999403953552246f);
  u_xlat51 = (u_xlat51 + u_xlat51);
  u_xlat51 = clamp(u_xlat51, 0.0f, 1.0f);
  u_xlat10.x = ((u_xlat51 * -2.0f) + 3.0f);
  u_xlat51 = (u_xlat51 * u_xlat51);
  u_xlat51 = (u_xlat51 * u_xlat10.x);
  u_xlat10 = vec4f(((u_xlat9.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat10.zw);
  u_xlat10.x = dot(u_xlat10.xy, u_xlat10.xy);
  u_xlat10.x = sqrt(u_xlat10.x);
  u_xlat10.x = (u_xlat10.x + -(x_65.x_ClearCentre.z));
  u_xlat10.x = (u_xlat44 * u_xlat10.x);
  u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
  u_xlat24 = ((u_xlat10.x * -2.0f) + 3.0f);
  u_xlat10.x = (u_xlat10.x * u_xlat10.x);
  u_xlat10.x = ((-(u_xlat24) * u_xlat10.x) + 1.0f);
  u_xlat24 = dot(u_xlat9.xz, x_420);
  u_xlat24 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat24);
  u_xlat24 = sin(u_xlat24);
  u_xlat9.x = dot(u_xlat9.xz, x_439);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat24);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat24 * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat9.x = ((-(x_65.x_ClearDepth) * u_xlat10.x) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + x_65.x_Blanket);
  u_xlat48 = ((u_xlat48 * 2.0f) + -1.0f);
  u_xlat48 = ((x_65.x_SwellAmp * u_xlat48) + u_xlat9.x);
  u_xlat4 = vec3f(((u_xlat4.xy * vec2f(x_65.x_PuffAmp, x_65.x_SmallAmp))).xy, u_xlat4.z);
  u_xlat9.x = ((u_xlat51 * u_xlat32) + u_xlat45);
  u_xlat4.x = ((u_xlat4.x * u_xlat9.x) + u_xlat48);
  u_xlat48 = ((u_xlat51 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat4.x = ((u_xlat4.y * u_xlat48) + u_xlat4.x);
  u_xlat4.x = ((u_xlat4.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat4.x = (-(u_xlat9.y) + u_xlat4.x);
  u_xlat4.x = max(u_xlat4.x, 0.0f);
  u_xlat43 = (u_xlat43 + u_xlat4.x);
  u_xlat22 = ((u_xlat22 * vec3f(26.6000003814697265625f)) + u_xlat5);
  u_xlat4 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat22.xz)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat2 = vec4f(((-(u_xlat16.xy) + u_xlat22.xz)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy / vec2f(x_65.x_TileSize))).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * x_272) + x_276)).xy, u_xlat2.zw);
  u_xlat2.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat2.xy, u_xlat15.x).x;
  u_xlat16.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat15.x).y;
  u_xlat4 = vec3f((((-(u_xlat3.xy) * x_307) + u_xlat22.xz)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_325) + x_328)).xy, u_xlat4.z);
  u_xlat30.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat8.x).z;
  u_xlat4.x = (u_xlat2.x + -0.34999999403953552246f);
  u_xlat4.x = (u_xlat4.x + u_xlat4.x);
  u_xlat4.x = clamp(u_xlat4.x, 0.0f, 1.0f);
  u_xlat18 = ((u_xlat4.x * -2.0f) + 3.0f);
  u_xlat4.x = (u_xlat4.x * u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * u_xlat18);
  u_xlat9 = vec4f(((u_xlat22.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
  u_xlat18 = dot(u_xlat9.xy, u_xlat9.xy);
  u_xlat18 = sqrt(u_xlat18);
  u_xlat18 = (u_xlat18 + -(x_65.x_ClearCentre.z));
  u_xlat44 = (u_xlat44 * u_xlat18);
  u_xlat44 = clamp(u_xlat44, 0.0f, 1.0f);
  u_xlat18 = ((u_xlat44 * -2.0f) + 3.0f);
  u_xlat44 = (u_xlat44 * u_xlat44);
  u_xlat44 = ((-(u_xlat18) * u_xlat44) + 1.0f);
  u_xlat18 = dot(u_xlat22.xz, x_420);
  u_xlat18 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat18);
  u_xlat18 = sin(u_xlat18);
  u_xlat48 = dot(u_xlat22.xz, x_439);
  u_xlat31 = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat48);
  u_xlat31 = (u_xlat31 + 1.29999995231628417969f);
  u_xlat31 = sin(u_xlat31);
  u_xlat31 = (u_xlat31 * u_xlat18);
  u_xlat31 = (u_xlat31 * 0.40000000596046447754f);
  u_xlat31 = ((u_xlat18 * 0.60000002384185791016f) + u_xlat31);
  u_xlat31 = (u_xlat31 * x_19.x_GeoCloudWind.w);
  u_xlat31 = (u_xlat31 / u_xlat1.x);
  u_xlat44 = ((-(x_65.x_ClearDepth) * u_xlat44) + u_xlat31);
  u_xlat44 = (u_xlat44 + x_65.x_Blanket);
  u_xlat2.x = ((u_xlat2.x * 2.0f) + -1.0f);
  u_xlat2.x = ((x_65.x_SwellAmp * u_xlat2.x) + u_xlat44);
  u_xlat16.x = (u_xlat16.x * x_65.x_PuffAmp);
  u_xlat44 = ((u_xlat4.x * u_xlat32) + u_xlat45);
  u_xlat2.x = ((u_xlat16.x * u_xlat44) + u_xlat2.x);
  u_xlat16.x = (u_xlat30.x * x_65.x_SmallAmp);
  u_xlat30.x = ((u_xlat4.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat2.x = ((u_xlat16.x * u_xlat30.x) + u_xlat2.x);
  u_xlat2.x = ((u_xlat2.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat2.x = (-(u_xlat22.y) + u_xlat2.x);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  u_xlat43 = (u_xlat43 + u_xlat2.x);
  u_xlat43 = (-(u_xlat43) * x_65.x_ShadowDensity);
  u_xlat43 = (u_xlat43 * 1.44269502162933349609f);
  u_xlat43 = exp2(u_xlat43);
  u_xlat2.x = (u_xlat5.y + -(x_65.x_BaseY));
  u_xlat1.x = (u_xlat2.x / u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat2.x = (-(x_65.x_CreaseDark) + 1.0f);
  u_xlat1.x = (u_xlat1.x + -0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * 1.42857146263122558594f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat16.x = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat16.x);
  u_xlat16.x = (-(u_xlat2.x) + 1.0f);
  u_xlat1.x = ((u_xlat1.x * u_xlat16.x) + u_xlat2.x);
  u_xlat2.x = dot(u_xlat6.xyz, x_19.x_MainLightPosition.xyz);
  u_xlat16.x = (u_xlat2.x + x_65.x_Wrap);
  u_xlat30.x = (x_65.x_Wrap + 1.0f);
  u_xlat16.x = (u_xlat16.x / u_xlat30.x);
  u_xlat16.x = clamp(u_xlat16.x, 0.0f, 1.0f);
  u_xlat4 = (x_19.x_MainLightColor.xyz * x_65.x_SunTint.xyz);
  u_xlat4 = (u_xlat4 * vec3f(x_65.x_SunStrength));
  u_xlatb30 = (0.0f < x_19.x_GeoCloudShadow.x);
  if (u_xlatb30) {
    u_xlat30.x = max(x_19.x_MainLightPosition.y, 0.20000000298023223877f);
    u_xlat30 = (x_19.x_MainLightPosition.xz / u_xlat30.xx);
    u_xlat31 = (-(u_xlat5.y) + 450.0f);
    u_xlat30 = ((u_xlat30 * vec2f(u_xlat31)) + u_xlat5.xz);
    u_xlat30 = ((-(u_xlat3.xy) * x_5465) + u_xlat30);
    u_xlat30 = (u_xlat30 / x_19.x_GeoCloudShadow.yy);
    u_xlat30.x = textureSampleLevel(x_GeoCloudNoise, sampler_GeoCloudNoise, u_xlat30, 0.0f).x;
    u_xlat44 = (-(x_19.x_GeoCloudShadow.z) + 1.0f);
    u_xlat30.x = (-(u_xlat44) + u_xlat30.x);
    u_xlat30.x = (u_xlat30.x * 6.25f);
    u_xlat30.x = clamp(u_xlat30.x, 0.0f, 1.0f);
    u_xlat44 = ((u_xlat30.x * -2.0f) + 3.0f);
    u_xlat30.x = (u_xlat30.x * u_xlat30.x);
    u_xlat30.x = (u_xlat30.x * u_xlat44);
    u_xlat3 = vec4f(((u_xlat5.xz + -(x_19.x_GeoCloudCentre.xy))).xy, u_xlat3.zw);
    u_xlat44 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat44 = sqrt(u_xlat44);
    u_xlat3.x = (x_19.x_GeoCloudShadow.w * 0.79999995231628417969f);
    u_xlat44 = (u_xlat44 + -(x_19.x_GeoCloudShadow.w));
    u_xlat3.x = (1.0f / u_xlat3.x);
    u_xlat44 = (u_xlat44 * u_xlat3.x);
    u_xlat44 = clamp(u_xlat44, 0.0f, 1.0f);
    u_xlat3.x = ((u_xlat44 * -2.0f) + 3.0f);
    u_xlat44 = (u_xlat44 * u_xlat44);
    u_xlat44 = (u_xlat44 * u_xlat3.x);
    u_xlat30.x = (u_xlat30.x * x_19.x_GeoCloudShadow.x);
    u_xlat30.x = ((-(u_xlat30.x) * u_xlat44) + 1.0f);
  } else {
    u_xlat30.x = 1.0f;
  }
  u_xlat3 = vec4f(((u_xlat16.xxx * u_xlat4)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((vec3f(u_xlat43) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((u_xlat29.xxx * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat29.x = ((u_xlat6.y * 0.5f) + 0.5f);
  u_xlat29.x = clamp(u_xlat29.x, 0.0f, 1.0f);
  u_xlat8 = vec4f(((x_65.x_AmbientTop.xyz + -(x_65.x_AmbientBottom.xyz))).xyz, u_xlat8.w);
  u_xlat8 = vec4f((((u_xlat29.xxx * u_xlat8.xyz) + x_65.x_AmbientBottom.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((u_xlat1.xxx * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat1.x = (-(u_xlat30.x) + 1.0f);
  u_xlat9 = vec4f((((-(u_xlat1.xxx) * vec3f(0.60000002384185791016f, 0.47999998927116394043f, 0.30000001192092895508f)) + x_5647)).xyz, u_xlat9.w);
  u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat9.xyz)).xyz, u_xlat8.w);
  u_xlat1.x = dot(u_xlat0, x_19.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * x_65.x_ScatterPower);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat29.x = dot(u_xlat6.xyz, -(u_xlat0));
  u_xlat29.x = clamp(u_xlat29.x, 0.0f, 1.0f);
  u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat30.xxx) + u_xlat8.xyz)).xyz, u_xlat3.w);
  u_xlat6 = vec4f(((x_19.x_MainLightColor.xyz * x_65.x_ScatterColor.xyz)).xyz, u_xlat6.w);
  let x_5721 = vec3f(x_65.x_ScatterStrength, x_65.x_ScatterStrength, x_65.x_ScatterStrength);
  u_xlat6 = vec4f(((u_xlat6.xyz * vec3f(x_5721.x, x_5721.y, x_5721.z))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat1.xxx * u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_5741 = (-(u_xlat29.xx) + vec2f(1.0f, 1.35000002384185791016f));
  u_xlat1 = vec4f(x_5741.x, u_xlat1.y, x_5741.y, u_xlat1.w);
  u_xlat6 = vec4f(((u_xlat1.zzz * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat3 = vec4f((((x_65.x_Albedo.xyz * u_xlat3.xyz) + u_xlat6.xyz)).xyz, u_xlat3.w);
  u_xlat29.x = ((u_xlat2.x * 0.5f) + 0.5f);
  u_xlat29.x = clamp(u_xlat29.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * 2.5f);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat2 = vec4f((((-(vec2f(u_xlat42)) * vec2f(0.00083333335351198912f, 0.00071428570663556457f)) + x_5791)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(clamp(u_xlat2.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat2.zw);
  u_xlat1.x = (u_xlat1.x * u_xlat2.x);
  u_xlat6 = vec4f(((x_19.x_MainLightColor.xyz * x_65.x_GoldColor.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat6.xyz * vec3f(x_65.x_GoldRim))).xyz, u_xlat6.w);
  u_xlat8 = vec4f(((u_xlat1.xxx * u_xlat6.xyz)).xyz, u_xlat8.w);
  u_xlat2.x = (u_xlat29.x * u_xlat29.x);
  u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat2.xxx)).xyz, u_xlat8.w);
  u_xlat3 = vec4f((((u_xlat8.xyz * vec3f(u_xlat43)) + u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat1.x = (u_xlat1.x * x_65.x_RimShade);
  u_xlat29.x = (-(u_xlat29.x) + 1.0f);
  u_xlat1.x = (u_xlat29.x * u_xlat1.x);
  u_xlat8 = vec4f(((x_65.x_RimColor.xyz + vec3f(-1.0f))).xyz, u_xlat8.w);
  let x_5886 = ((u_xlat1.xxx * u_xlat8.xyz) + x_5647);
  u_xlat1 = vec4f(x_5886.x, u_xlat1.y, x_5886.yz);
  u_xlat8 = vec4f(((u_xlat1.xzw * u_xlat3.xyz)).xyz, u_xlat8.w);
  u_xlat4 = (u_xlat4 * x_5898);
  let x_5907 = ((u_xlat4 * u_xlat30.xxx) + x_65.x_AmbientTop.xyz);
  u_xlat2 = vec4f(x_5907.x, u_xlat2.y, x_5907.yz);
  u_xlat4 = (u_xlat6.xyz * vec3f(0.25f));
  let x_5922 = ((x_65.x_Albedo.xyz * u_xlat2.xzw) + u_xlat4);
  u_xlat2 = vec4f(x_5922.x, u_xlat2.y, x_5922.yz);
  u_xlat45 = (-(u_xlat46) * x_65.x_FuzzStrength);
  u_xlat45 = (u_xlat45 * 1.44269502162933349609f);
  u_xlat45 = exp2(u_xlat45);
  u_xlat45 = (-(u_xlat45) + 1.0f);
  u_xlat45 = ((u_xlat47 * 0.20000000298023223877f) + u_xlat45);
  u_xlat45 = clamp(u_xlat45, 0.0f, 1.0f);
  let x_5952 = ((-(u_xlat3.xyz) * u_xlat1.xzw) + u_xlat2.xzw);
  u_xlat1 = vec4f(x_5952.x, u_xlat1.y, x_5952.yz);
  let x_5962 = ((vec3f(u_xlat45) * u_xlat1.xzw) + u_xlat8.xyz);
  u_xlat1 = vec4f(x_5962.x, u_xlat1.y, x_5962.yz);
  let x_5967 = (u_xlat7.xy * x_5465);
  u_xlat2 = vec4f(x_5967.x, u_xlat2.y, x_5967.y, u_xlat2.w);
  u_xlat2.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat2.xz, u_xlat15.x).y;
  u_xlat30 = ((u_xlat7.zw * vec2f(3.70000004768371582031f)) + vec2f(0.31000000238418579102f));
  u_xlat15.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat30, u_xlat15.x).z;
  u_xlat15.x = (u_xlat15.x * 0.40000000596046447754f);
  u_xlat15.x = ((u_xlat2.x * 0.60000002384185791016f) + u_xlat15.x);
  u_xlat15.x = (u_xlat15.x + -0.05000000074505805969f);
  u_xlat15.x = (u_xlat15.x * 1.17647063732147216797f);
  u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat15.x * -2.0f) + 3.0f);
  u_xlat15.x = (u_xlat15.x * u_xlat15.x);
  u_xlat15.x = (u_xlat15.x * u_xlat2.x);
  u_xlat2.x = (-(x_65.x_CottonAmount) + 1.0f);
  u_xlat30.x = ((x_65.x_CottonAmount * 0.25f) + 1.0f);
  u_xlat30.x = (-(u_xlat2.x) + u_xlat30.x);
  u_xlat15.x = ((u_xlat15.x * u_xlat30.x) + u_xlat2.x);
  u_xlat15.x = (u_xlat15.x + -1.0f);
  u_xlat15.x = ((u_xlat2.y * u_xlat15.x) + 1.0f);
  u_xlat1 = vec4f(((u_xlat15.xxx * u_xlat1.xzw)).xyz, u_xlat1.w);
  u_xlat43 = (-(u_xlat42) / x_65.x_MidHazeDistance);
  u_xlat43 = (u_xlat43 * 1.44269502162933349609f);
  u_xlat43 = exp2(u_xlat43);
  u_xlat43 = (-(u_xlat43) + 1.0f);
  u_xlat43 = (u_xlat43 * x_65.x_MidHazeMax);
  u_xlat2 = vec4f(((x_65.x_AmbientTop.xyz * x_5898)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_19.x_MainLightColor.xyz * vec3f(0.18000000715255737305f)) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_65.x_MidHazeColor.xyz * u_xlat2.xyz) + -(u_xlat1.xyz))).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((vec3f(u_xlat43) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat43 = (u_xlat42 / x_65.x_HazeDistance);
  u_xlat43 = max(u_xlat43, 0.0f);
  u_xlat43 = log2(u_xlat43);
  u_xlat43 = (u_xlat43 * x_65.x_HazePower);
  u_xlat43 = exp2(u_xlat43);
  u_xlat43 = (u_xlat43 * -1.44269502162933349609f);
  u_xlat43 = exp2(u_xlat43);
  u_xlat43 = (-(u_xlat43) + 1.0f);
  u_xlat2 = vec4f(((u_xlat0.xz + x_6168)).xy, u_xlat2.zw);
  u_xlat30.x = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat30.x = inverseSqrt(u_xlat30.x);
  u_xlat2 = vec4f(((u_xlat30.xx * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat30 = (x_19.x_MainLightPosition.xz + x_6168);
  u_xlat3.x = dot(u_xlat30, u_xlat30);
  u_xlat3.x = inverseSqrt(u_xlat3.x);
  u_xlat30 = (u_xlat30 * u_xlat3.xx);
  u_xlat2.x = dot(u_xlat2.xy, u_xlat30);
  u_xlat2.x = ((u_xlat2.x * 0.5f) + 0.5f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat2.x = log2(u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * x_65.x_HorizonWarmth);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat16 = (-(x_65.x_HorizonColor.xyz) + x_65.x_SunHorizonColor.xyz);
  u_xlat2 = vec4f((((u_xlat2.xxx * u_xlat16) + x_65.x_HorizonColor.xyz)).xyz, u_xlat2.w);
  u_xlat44 = max(u_xlat0.y, -1.0f);
  u_xlat44 = min(u_xlat44, 1.0f);
  u_xlat3.x = (-(abs(u_xlat44)) + 1.0f);
  u_xlat3.x = sqrt(u_xlat3.x);
  u_xlat17 = ((abs(u_xlat44) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat17 = ((u_xlat17 * abs(u_xlat44)) + -0.21211439371109008789f);
  u_xlat17 = ((u_xlat17 * abs(u_xlat44)) + 1.57072877883911132812f);
  u_xlat31 = (u_xlat3.x * u_xlat17);
  u_xlat31 = ((u_xlat31 * -2.0f) + 3.14159274101257324219f);
  u_xlatb44 = (u_xlat44 < -(u_xlat44));
  u_xlat44 = select(0.0f, u_xlat31, u_xlatb44);
  u_xlat44 = ((u_xlat17 * u_xlat3.x) + u_xlat44);
  u_xlat44 = (-(u_xlat44) + 1.57079637050628662109f);
  u_xlat3 = vec4f(((-(u_xlat2.xyz) + x_65.x_BelowColor.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((u_xlat3.xyz * vec3f(0.64999997615814208984f))).xyz, u_xlat3.w);
  u_xlat44 = ((u_xlat44 * 57.295780181884765625f) + -0.20000000298023223877f);
  u_xlat44 = (u_xlat44 * -0.37037035822868347168f);
  u_xlat44 = clamp(u_xlat44, 0.0f, 1.0f);
  u_xlat45 = ((u_xlat44 * -2.0f) + 3.0f);
  u_xlat44 = (u_xlat44 * u_xlat44);
  u_xlat44 = (u_xlat44 * u_xlat45);
  u_xlat2 = vec4f((((vec3f(u_xlat44) * u_xlat3.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((-(u_xlat1.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  SV_Target0 = vec4f((((vec3f(u_xlat43) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlat1.x = (x_65.x_FadeRadius * 0.19999998807907104492f);
  u_xlat15.x = dot(u_xlat5.xz, u_xlat5.xz);
  u_xlat15.x = sqrt(u_xlat15.x);
  u_xlat15.x = ((-(x_65.x_FadeRadius) * 0.80000001192092895508f) + u_xlat15.x);
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat15.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat15.x = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat15.x) * u_xlat1.x) + 1.0f);
  u_xlat15 = (vs_TEXCOORD1.xy / vs_TEXCOORD1.ww);
  u_xlat2 = vec4f((((-(x_19.x_CameraDepthTexture_TexelSize.xy) * vec2f(0.5f)) + x_5791)).xy, u_xlat2.zw);
  u_xlat15 = min(u_xlat15, u_xlat2.xy);
  u_xlat15 = (u_xlat15 * x_19.x_RTHandleScale.xy);
  u_xlat15 = (u_xlat15 * x_19.x_ScreenSize.xy);
  u_xlatu2 = vec4u(vec2u(u_xlat15).xy, u_xlatu2.zw);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  u_xlat15.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu2.xy), bitcast<i32>(u_xlatu2.w)).x;
  u_xlat15.x = ((x_19.x_ZBufferParams.z * u_xlat15.x) + x_19.x_ZBufferParams.w);
  u_xlat15.x = (1.0f / u_xlat15.x);
  u_xlat2.x = -(x_19.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat2.y = -(x_19.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat2.z = -(x_19.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat0.x = dot(u_xlat0, u_xlat2.xyz);
  u_xlat0.x = max(u_xlat0.x, 0.00009999999747378752f);
  u_xlat0.x = (u_xlat15.x / u_xlat0.x);
  u_xlat0.x = (-(u_xlat42) + u_xlat0.x);
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
  x_CascadeShadowSplitSpheres0 : vec4f,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4f,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4f,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4f,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4f,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4f,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4f,
  /* @offset(432) */
  x_MainLightShadowParams : vec4f,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4f,
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

@group(1) @binding(1) var<uniform> x_3845 : LightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(0) @binding(2) var x_GeoCloudNoise : texture_2d<f32>;

@group(0) @binding(5) var sampler_GeoCloudNoise : sampler;

var<private> SV_Target0 : vec4f;

var<private> vs_TEXCOORD1 : vec4f;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

var<private> gl_FragCoord : vec4f;

const x_162 = vec2f(0.11999999731779098511f);

const x_272 = vec2f(0.37000000476837158203f);

const x_276 = vec2f(0.12999999523162841797f, 0.61000001430511474609f);

const x_307 = vec2f(1.10000002384185791016f);

const x_325 = vec2f(2.70000004768371582031f);

const x_328 = vec2f(0.37000000476837158203f, 0.18999999761581420898f);

const x_420 = vec2f(0.0043000001460313797f, 0.002099999925121665f);

const x_439 = vec2f(-0.00170000002253800631f, 0.00350000010803341866f);

const x_1750 = vec2f(-1.0f, 1.0f);

const x_4125 = vec2f(0.5f);

const x_4148 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_4173 = vec2f(1.0f);

const x_4215 = vec2f(0.15999999642372131348f);

const x_4288 = vec3f(-2.5f, -0.5f, 1.5f);

const x_4685 = vec2f(0.08163200318813323975f);

const x_4702 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_4705 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_4712 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_4750 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_6747 = vec2f(1.29999995231628417969f);

const x_6929 = vec3f(1.0f);

const x_7178 = vec3f(0.89999997615814208984f);

const x_7447 = vec2f(0.00000999999974737875f);

fn main_1() {
  var u_xlat0 : vec3f;
  var u_xlat69 : f32;
  var u_xlat1 : vec4f;
  var u_xlatb1 : bool;
  var u_xlat24 : vec2f;
  var u_xlat47 : vec2f;
  var u_xlat70 : f32;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat25 : vec3f;
  var u_xlat4 : vec3f;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlat50 : f32;
  var u_xlat5 : vec3f;
  var u_xlat73 : f32;
  var u_xlat74 : f32;
  var u_xlat29 : f32;
  var u_xlati6 : i32;
  var u_xlati52 : i32;
  var u_xlatb75 : bool;
  var u_xlat7 : vec4f;
  var u_xlat75 : f32;
  var u_xlat76 : f32;
  var u_xlat8 : vec4f;
  var u_xlat54 : vec2f;
  var u_xlat31 : vec3f;
  var u_xlat77 : f32;
  var u_xlat9 : vec4f;
  var u_xlat53 : vec2f;
  var u_xlatb30 : bool;
  var u_xlat30 : vec2f;
  var u_xlatb53 : bool;
  var u_xlat6 : vec4f;
  var u_xlat52 : f32;
  var u_xlatb47 : bool;
  var x_1037 : vec2f;
  var u_xlat28 : f32;
  var x_1370 : vec2f;
  var x_1702 : vec2f;
  var x_2056 : vec2f;
  var x_2388 : vec2f;
  var x_2741 : f32;
  var u_xlat32 : vec2f;
  var u_xlat10 : vec4f;
  var u_xlat11 : vec4f;
  var u_xlat27 : f32;
  var u_xlat12 : vec4f;
  var u_xlatb9 : vec4<bool>;
  var u_xlatu47 : u32;
  var u_xlati47 : i32;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb70 : bool;
  var u_xlat55 : vec2f;
  var u_xlat57 : vec2f;
  var u_xlat13 : vec4f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat61 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat33 : vec2f;
  var u_xlat19 : vec2f;
  var u_xlat58 : vec2f;
  var u_xlat20 : vec4f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
  var txVec13 : vec3f;
  var txVec14 : vec3f;
  var txVec15 : vec3f;
  var txVec16 : vec3f;
  var txVec17 : vec3f;
  var txVec18 : vec3f;
  var txVec19 : vec3f;
  var txVec20 : vec3f;
  var txVec21 : vec3f;
  var txVec22 : vec3f;
  var txVec23 : vec3f;
  var txVec24 : vec3f;
  var txVec25 : vec3f;
  var txVec26 : vec3f;
  var txVec27 : vec3f;
  var txVec28 : vec3f;
  var txVec29 : vec3f;
  var u_xlatb4 : bool;
  var x_5281 : f32;
  var u_xlat56 : vec2f;
  var u_xlat78 : f32;
  var u_xlat48 : vec2f;
  var u_xlat49 : f32;
  var u_xlatb48 : bool;
  var u_xlat26 : f32;
  var u_xlatb71 : bool;
  var u_xlatu2 : vec4u;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlat0 = (vs_TEXCOORD0 + -(x_19.x_WorldSpaceCameraPos));
  u_xlat69 = dot(u_xlat0, u_xlat0);
  u_xlat69 = sqrt(u_xlat69);
  u_xlat1.x = max(u_xlat69, 0.00009999999747378752f);
  u_xlat0 = (u_xlat0 / u_xlat1.xxx);
  u_xlatb1 = (-0.00009999999747378752f < u_xlat0.y);
  if (((select(0i, 1i, u_xlatb1) * -1i) != 0i)) {
    discard;
  }
  u_xlat1.x = (-(x_65.x_BaseY) + x_65.x_TopY);
  u_xlat24.x = (-(vs_TEXCOORD0.y) + x_65.x_BaseY);
  u_xlat24.x = (u_xlat24.x / u_xlat0.y);
  u_xlat24.x = min(u_xlat24.x, x_65.x_MaxMarch);
  u_xlat47.x = (u_xlat69 * x_65.x_StepScale);
  u_xlat47.x = max(u_xlat47.x, 0.34999999403953552246f);
  u_xlat70 = (u_xlat47.x * 0.5f);
  u_xlat2.x = (x_19.x_Time.y + x_19.x_GeoCloudCentre.w);
  u_xlat3 = vec4f(((u_xlat2.xxx * x_19.x_GeoCloudWind.xyz)).xyz, u_xlat3.w);
  u_xlat25 = vec3f(((u_xlat3.xy * vec2f(0.69999998807907104492f))).xy, u_xlat25.z);
  u_xlat3.w = -(u_xlat3.y);
  u_xlat4 = vec3f(((u_xlat3.wx * x_19.x_GeoCloudWind.zz)).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_162) + u_xlat25.xy)).xy, u_xlat4.z);
  u_xlat71 = (-(x_65.x_ClearCentre.z) + x_65.x_ClearCentre.w);
  u_xlat71 = (1.0f / u_xlat71);
  u_xlat72 = (-(x_65.x_PuffSwell) + 1.0f);
  u_xlat50 = (-(u_xlat72) + 1.0f);
  u_xlat5.z = u_xlat70;
  u_xlat73 = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat74 = 0.0f;
  u_xlat29 = u_xlat47.x;
  u_xlati6 = 0i;
  u_xlati52 = 0i;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatb75 = (u_xlati52 >= 64i);
    if (u_xlatb75) {
      break;
    }
    u_xlat7 = vec4f((((u_xlat0 * u_xlat5.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat75 = (u_xlat69 + u_xlat5.z);
    u_xlat76 = ((u_xlat75 * x_65.x_LodScale) + 1.0f);
    u_xlat76 = log2(u_xlat76);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(u_xlat8.xy, ((-(u_xlat4.xy) + u_xlat7.xz)).xy);
    u_xlat8 = (u_xlat8 / vec4f(x_65.x_TileSize));
    u_xlat54 = ((u_xlat8.zw * x_272) + x_276);
    u_xlat54.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat54, u_xlat76).x;
    u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat76).y;
    let x_311 = ((-(u_xlat3.xy) * x_307) + u_xlat7.xz);
    u_xlat31 = vec3f(x_311.x, u_xlat31.y, x_311.y);
    let x_319 = (u_xlat31.xz / vec2f(x_65.x_TileSize));
    u_xlat31 = vec3f(x_319.x, u_xlat31.y, x_319.y);
    let x_329 = ((u_xlat31.xz * x_325) + x_328);
    u_xlat31 = vec3f(x_329.x, u_xlat31.y, x_329.y);
    u_xlat76 = (u_xlat76 + 0.30000001192092895508f);
    u_xlat76 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat31.xz, u_xlat76).z;
    u_xlat31.x = (u_xlat54.x + -0.34999999403953552246f);
    u_xlat31.x = (u_xlat31.x + u_xlat31.x);
    u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
    u_xlat77 = ((u_xlat31.x * -2.0f) + 3.0f);
    u_xlat31.x = (u_xlat31.x * u_xlat31.x);
    u_xlat31.x = (u_xlat31.x * u_xlat77);
    u_xlat9 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
    u_xlat77 = dot(u_xlat9.xy, u_xlat9.xy);
    u_xlat77 = sqrt(u_xlat77);
    u_xlat77 = (u_xlat77 + -(x_65.x_ClearCentre.z));
    u_xlat77 = (u_xlat71 * u_xlat77);
    u_xlat77 = clamp(u_xlat77, 0.0f, 1.0f);
    u_xlat9.x = ((u_xlat77 * -2.0f) + 3.0f);
    u_xlat77 = (u_xlat77 * u_xlat77);
    u_xlat77 = ((-(u_xlat9.x) * u_xlat77) + 1.0f);
    u_xlat9.x = dot(u_xlat7.xz, x_420);
    u_xlat9.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat9.x);
    u_xlat9.x = sin(u_xlat9.x);
    u_xlat7.x = dot(u_xlat7.xz, x_439);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    u_xlat7.x = sin(u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat9.x);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat9.x * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat7.x = ((-(x_65.x_ClearDepth) * u_xlat77) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + x_65.x_Blanket);
    u_xlat53.x = ((u_xlat54.x * 2.0f) + -1.0f);
    u_xlat7.x = ((x_65.x_SwellAmp * u_xlat53.x) + u_xlat7.x);
    u_xlat53.x = (u_xlat8.x * x_65.x_PuffAmp);
    u_xlat8.x = ((u_xlat31.x * u_xlat50) + u_xlat72);
    u_xlat7.x = ((u_xlat53.x * u_xlat8.x) + u_xlat7.x);
    u_xlat53.x = (u_xlat76 * x_65.x_SmallAmp);
    u_xlat76 = ((u_xlat31.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat53.x * u_xlat76) + u_xlat7.x);
    u_xlat7.x = ((u_xlat7.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat7.x = (-(u_xlat7.x) + u_xlat7.y);
    u_xlatb30 = (u_xlat7.x < 0.0f);
    if (u_xlatb30) {
      u_xlati6 = -1i;
      break;
    }
    u_xlat30.x = (-(u_xlat7.x) / x_65.x_FuzzHeight);
    u_xlat30.x = (u_xlat30.x * 1.44269502162933349609f);
    u_xlat30.x = exp2(u_xlat30.x);
    u_xlat30.x = ((u_xlat30.x * u_xlat29) + u_xlat73);
    u_xlat53.x = (u_xlat75 * 0.01200000010430812836f);
    u_xlat53.x = max(u_xlat53.x, x_65.x_EdgeSkin);
    u_xlat7.x = (u_xlat7.x / u_xlat53.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.x = (-(u_xlat7.x) + 1.0f);
    u_xlat7.x = max(u_xlat74, u_xlat7.x);
    u_xlat75 = (u_xlat75 * x_65.x_StepScale);
    u_xlat29 = max(u_xlat75, 0.34999999403953552246f);
    u_xlat75 = (u_xlat5.z + u_xlat29);
    u_xlatb53 = (u_xlat24.x < u_xlat75);
    if (u_xlatb53) {
      u_xlat5.x = u_xlat5.z;
      u_xlat73 = u_xlat30.x;
      u_xlat74 = u_xlat7.x;
      u_xlati6 = 0i;
      u_xlat5.z = u_xlat75;
      break;
    }
    u_xlat5.x = u_xlat5.z;
    u_xlat73 = u_xlat30.x;
    u_xlat74 = u_xlat7.x;
    u_xlat5.z = u_xlat75;
    u_xlati52 = (u_xlati52 + 1i);
    u_xlati6 = 0i;
  }
  if ((u_xlati6 != 0i)) {
    u_xlat47.x = (u_xlat5.z + u_xlat5.x);
    u_xlat5.y = (u_xlat47.x * 0.5f);
    u_xlat6 = vec4f((((u_xlat0 * u_xlat5.yyy) + vs_TEXCOORD0)).xyz, u_xlat6.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat7 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(u_xlat7.xy, ((-(u_xlat4.xy) + u_xlat6.xz)).xy);
    u_xlat7 = (u_xlat7 / vec4f(x_65.x_TileSize));
    u_xlat53 = ((u_xlat7.zw * x_272) + x_276);
    u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat53, u_xlat47.x).x;
    u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat47.x).y;
    u_xlat7 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(((u_xlat7.xy / vec2f(x_65.x_TileSize))).xy, u_xlat7.zw);
    u_xlat7 = vec4f((((u_xlat7.xy * x_325) + x_328)).xy, u_xlat7.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat47.x).z;
    u_xlat7.x = (u_xlat70 + -0.34999999403953552246f);
    u_xlat7.x = (u_xlat7.x + u_xlat7.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat30.x = ((u_xlat7.x * -2.0f) + 3.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat30.x);
    u_xlat30 = (u_xlat6.xz + -(x_65.x_ClearCentre.xy));
    u_xlat30.x = dot(u_xlat30, u_xlat30);
    u_xlat30.x = sqrt(u_xlat30.x);
    u_xlat30.x = (u_xlat30.x + -(x_65.x_ClearCentre.z));
    u_xlat30.x = (u_xlat71 * u_xlat30.x);
    u_xlat30.x = clamp(u_xlat30.x, 0.0f, 1.0f);
    u_xlat53.x = ((u_xlat30.x * -2.0f) + 3.0f);
    u_xlat30.x = (u_xlat30.x * u_xlat30.x);
    u_xlat30.x = ((-(u_xlat53.x) * u_xlat30.x) + 1.0f);
    u_xlat53.x = dot(u_xlat6.xz, x_420);
    u_xlat53.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat53.x);
    u_xlat53.x = sin(u_xlat53.x);
    u_xlat6.x = dot(u_xlat6.xz, x_439);
    u_xlat6.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + 1.29999995231628417969f);
    u_xlat6.x = sin(u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * u_xlat53.x);
    u_xlat6.x = (u_xlat6.x * 0.40000000596046447754f);
    u_xlat6.x = ((u_xlat53.x * 0.60000002384185791016f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * x_19.x_GeoCloudWind.w);
    u_xlat6.x = (u_xlat6.x / u_xlat1.x);
    u_xlat6.x = ((-(x_65.x_ClearDepth) * u_xlat30.x) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + x_65.x_Blanket);
    u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
    u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat6.x);
    u_xlat6.x = (u_xlat75 * x_65.x_PuffAmp);
    u_xlat52 = ((u_xlat7.x * u_xlat50) + u_xlat72);
    u_xlat70 = ((u_xlat6.x * u_xlat52) + u_xlat70);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat6.x = ((u_xlat7.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat6.x) + u_xlat70);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat6.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_1037 = u_xlat5.xy;
    } else {
      x_1037 = u_xlat5.yz;
    }
    u_xlat6 = vec4f(x_1037.xy, u_xlat6.zw);
    u_xlat47.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat47.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat5 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy / vec2f(x_65.x_TileSize))).xy, u_xlat5.z);
    u_xlat8 = vec4f(((-(u_xlat4.xy) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_272) + x_276)).xy, u_xlat8.zw);
    u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).x;
    u_xlat5.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat5.xy, u_xlat47.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_325) + x_328)).xy, u_xlat8.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).z;
    u_xlat28 = (u_xlat70 + -0.34999999403953552246f);
    u_xlat28 = (u_xlat28 + u_xlat28);
    u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
    u_xlat75 = ((u_xlat28 * -2.0f) + 3.0f);
    u_xlat28 = (u_xlat28 * u_xlat28);
    u_xlat28 = (u_xlat28 * u_xlat75);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat75 = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat75 = sqrt(u_xlat75);
    u_xlat75 = (u_xlat75 + -(x_65.x_ClearCentre.z));
    u_xlat75 = (u_xlat71 * u_xlat75);
    u_xlat75 = clamp(u_xlat75, 0.0f, 1.0f);
    u_xlat76 = ((u_xlat75 * -2.0f) + 3.0f);
    u_xlat75 = (u_xlat75 * u_xlat75);
    u_xlat75 = ((-(u_xlat76) * u_xlat75) + 1.0f);
    u_xlat76 = dot(u_xlat7.xz, x_420);
    u_xlat7.w = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat76);
    u_xlat7.x = dot(u_xlat7.xz, x_439);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    let x_1262 = sin(u_xlat7.xw);
    u_xlat7 = vec4f(x_1262.x, u_xlat7.yz, x_1262.y);
    u_xlat7.x = (u_xlat7.x * u_xlat7.w);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat7.w * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat75 = ((-(x_65.x_ClearDepth) * u_xlat75) + u_xlat7.x);
    u_xlat75 = (u_xlat75 + x_65.x_Blanket);
    u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
    u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat75);
    u_xlat5.x = (u_xlat5.x * x_65.x_PuffAmp);
    u_xlat75 = ((u_xlat28 * u_xlat50) + u_xlat72);
    u_xlat70 = ((u_xlat5.x * u_xlat75) + u_xlat70);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat5.x = ((u_xlat28 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat5.x) + u_xlat70);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat7.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_1370 = u_xlat6.xz;
    } else {
      x_1370 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_1370.xy, u_xlat6.zw);
    u_xlat47.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat47.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat5 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy / vec2f(x_65.x_TileSize))).xy, u_xlat5.z);
    u_xlat8 = vec4f(((-(u_xlat4.xy) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_272) + x_276)).xy, u_xlat8.zw);
    u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).x;
    u_xlat5.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat5.xy, u_xlat47.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_325) + x_328)).xy, u_xlat8.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).z;
    u_xlat28 = (u_xlat70 + -0.34999999403953552246f);
    u_xlat28 = (u_xlat28 + u_xlat28);
    u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
    u_xlat75 = ((u_xlat28 * -2.0f) + 3.0f);
    u_xlat28 = (u_xlat28 * u_xlat28);
    u_xlat28 = (u_xlat28 * u_xlat75);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat75 = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat75 = sqrt(u_xlat75);
    u_xlat75 = (u_xlat75 + -(x_65.x_ClearCentre.z));
    u_xlat75 = (u_xlat71 * u_xlat75);
    u_xlat75 = clamp(u_xlat75, 0.0f, 1.0f);
    u_xlat76 = ((u_xlat75 * -2.0f) + 3.0f);
    u_xlat75 = (u_xlat75 * u_xlat75);
    u_xlat75 = ((-(u_xlat76) * u_xlat75) + 1.0f);
    u_xlat76 = dot(u_xlat7.xz, x_420);
    u_xlat7.w = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat76);
    u_xlat7.x = dot(u_xlat7.xz, x_439);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    let x_1594 = sin(u_xlat7.xw);
    u_xlat7 = vec4f(x_1594.x, u_xlat7.yz, x_1594.y);
    u_xlat7.x = (u_xlat7.x * u_xlat7.w);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat7.w * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat75 = ((-(x_65.x_ClearDepth) * u_xlat75) + u_xlat7.x);
    u_xlat75 = (u_xlat75 + x_65.x_Blanket);
    u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
    u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat75);
    u_xlat5.x = (u_xlat5.x * x_65.x_PuffAmp);
    u_xlat75 = ((u_xlat28 * u_xlat50) + u_xlat72);
    u_xlat70 = ((u_xlat5.x * u_xlat75) + u_xlat70);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat5.x = ((u_xlat28 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat5.x) + u_xlat70);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat7.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_1702 = u_xlat6.xz;
    } else {
      x_1702 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_1702.xy, u_xlat6.zw);
    u_xlat47.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat47.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat5 = vec3f(((u_xlat3.yx * x_1750)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy * x_19.x_GeoCloudWind.zz)).xy, u_xlat5.z);
    u_xlat5 = vec3f((((u_xlat5.xy * x_162) + u_xlat25.xy)).xy, u_xlat5.z);
    u_xlat8 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat5 = vec3f(((-(u_xlat5.xy) + u_xlat7.xz)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy / vec2f(x_65.x_TileSize))).xy, u_xlat5.z);
    u_xlat5 = vec3f((((u_xlat5.xy * x_272) + x_276)).xy, u_xlat5.z);
    u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat5.xy, u_xlat47.x).x;
    u_xlat5.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_325) + x_328)).xy, u_xlat8.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).z;
    u_xlat28 = (u_xlat70 + -0.34999999403953552246f);
    u_xlat28 = (u_xlat28 + u_xlat28);
    u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
    u_xlat75 = ((u_xlat28 * -2.0f) + 3.0f);
    u_xlat28 = (u_xlat28 * u_xlat28);
    u_xlat28 = (u_xlat28 * u_xlat75);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat75 = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat75 = sqrt(u_xlat75);
    u_xlat75 = (u_xlat75 + -(x_65.x_ClearCentre.z));
    u_xlat75 = (u_xlat71 * u_xlat75);
    u_xlat75 = clamp(u_xlat75, 0.0f, 1.0f);
    u_xlat76 = ((u_xlat75 * -2.0f) + 3.0f);
    u_xlat75 = (u_xlat75 * u_xlat75);
    u_xlat75 = ((-(u_xlat76) * u_xlat75) + 1.0f);
    u_xlat76 = dot(u_xlat7.xz, x_420);
    u_xlat7.w = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat76);
    u_xlat7.x = dot(u_xlat7.xz, x_439);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    let x_1948 = sin(u_xlat7.xw);
    u_xlat7 = vec4f(x_1948.x, u_xlat7.yz, x_1948.y);
    u_xlat7.x = (u_xlat7.x * u_xlat7.w);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat7.w * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat75 = ((-(x_65.x_ClearDepth) * u_xlat75) + u_xlat7.x);
    u_xlat75 = (u_xlat75 + x_65.x_Blanket);
    u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
    u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat75);
    u_xlat5.x = (u_xlat5.x * x_65.x_PuffAmp);
    u_xlat75 = ((u_xlat28 * u_xlat50) + u_xlat72);
    u_xlat70 = ((u_xlat5.x * u_xlat75) + u_xlat70);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat5.x = ((u_xlat28 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat5.x) + u_xlat70);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat7.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_2056 = u_xlat6.xz;
    } else {
      x_2056 = u_xlat6.zy;
    }
    u_xlat6 = vec4f(x_2056.xy, u_xlat6.zw);
    u_xlat47.x = (u_xlat6.y + u_xlat6.x);
    u_xlat6.z = (u_xlat47.x * 0.5f);
    u_xlat7 = vec4f((((u_xlat0 * u_xlat6.zzz) + vs_TEXCOORD0)).xyz, u_xlat7.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat5 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat7.xz)).xy, u_xlat5.z);
    u_xlat5 = vec3f(((u_xlat5.xy / vec2f(x_65.x_TileSize))).xy, u_xlat5.z);
    u_xlat8 = vec4f(((-(u_xlat4.xy) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_272) + x_276)).xy, u_xlat8.zw);
    u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).x;
    u_xlat5.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat5.xy, u_xlat47.x).y;
    u_xlat8 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat7.xz)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_325) + x_328)).xy, u_xlat8.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat47.x).z;
    u_xlat28 = (u_xlat70 + -0.34999999403953552246f);
    u_xlat28 = (u_xlat28 + u_xlat28);
    u_xlat28 = clamp(u_xlat28, 0.0f, 1.0f);
    u_xlat75 = ((u_xlat28 * -2.0f) + 3.0f);
    u_xlat28 = (u_xlat28 * u_xlat28);
    u_xlat28 = (u_xlat28 * u_xlat75);
    u_xlat8 = vec4f(((u_xlat7.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat8.zw);
    u_xlat75 = dot(u_xlat8.xy, u_xlat8.xy);
    u_xlat75 = sqrt(u_xlat75);
    u_xlat75 = (u_xlat75 + -(x_65.x_ClearCentre.z));
    u_xlat75 = (u_xlat71 * u_xlat75);
    u_xlat75 = clamp(u_xlat75, 0.0f, 1.0f);
    u_xlat76 = ((u_xlat75 * -2.0f) + 3.0f);
    u_xlat75 = (u_xlat75 * u_xlat75);
    u_xlat75 = ((-(u_xlat76) * u_xlat75) + 1.0f);
    u_xlat76 = dot(u_xlat7.xz, x_420);
    u_xlat7.w = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat76);
    u_xlat7.x = dot(u_xlat7.xz, x_439);
    u_xlat7.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x + 1.29999995231628417969f);
    let x_2280 = sin(u_xlat7.xw);
    u_xlat7 = vec4f(x_2280.x, u_xlat7.yz, x_2280.y);
    u_xlat7.x = (u_xlat7.x * u_xlat7.w);
    u_xlat7.x = (u_xlat7.x * 0.40000000596046447754f);
    u_xlat7.x = ((u_xlat7.w * 0.60000002384185791016f) + u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * x_19.x_GeoCloudWind.w);
    u_xlat7.x = (u_xlat7.x / u_xlat1.x);
    u_xlat75 = ((-(x_65.x_ClearDepth) * u_xlat75) + u_xlat7.x);
    u_xlat75 = (u_xlat75 + x_65.x_Blanket);
    u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
    u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat75);
    u_xlat5.x = (u_xlat5.x * x_65.x_PuffAmp);
    u_xlat75 = ((u_xlat28 * u_xlat50) + u_xlat72);
    u_xlat70 = ((u_xlat5.x * u_xlat75) + u_xlat70);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat5.x = ((u_xlat28 * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat5.x) + u_xlat70);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat7.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_2388 = u_xlat6.xz;
    } else {
      x_2388 = u_xlat6.zy;
    }
    u_xlat47 = x_2388;
    u_xlat47.x = (u_xlat47.y + u_xlat47.x);
    u_xlat5.x = (u_xlat47.x * 0.5f);
    u_xlat6 = vec4f((((u_xlat0 * u_xlat5.xxx) + vs_TEXCOORD0)).xyz, u_xlat6.w);
    u_xlat47.x = ((u_xlat47.x * 0.5f) + u_xlat69);
    u_xlat47.x = ((u_xlat47.x * x_65.x_LodScale) + 1.0f);
    u_xlat47.x = log2(u_xlat47.x);
    u_xlat7 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(u_xlat7.xy, ((-(u_xlat4.xy) + u_xlat6.xz)).xy);
    u_xlat7 = (u_xlat7 / vec4f(x_65.x_TileSize));
    u_xlat53 = ((u_xlat7.zw * x_272) + x_276);
    u_xlat28 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat53, u_xlat47.x).x;
    u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat47.x).y;
    u_xlat7 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat6.xz)).xy, u_xlat7.zw);
    u_xlat7 = vec4f(((u_xlat7.xy / vec2f(x_65.x_TileSize))).xy, u_xlat7.zw);
    u_xlat7 = vec4f((((u_xlat7.xy * x_325) + x_328)).xy, u_xlat7.zw);
    u_xlat47.x = (u_xlat47.x + 0.30000001192092895508f);
    u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.xy, u_xlat47.x).z;
    u_xlat7.x = (u_xlat28 + -0.34999999403953552246f);
    u_xlat7.x = (u_xlat7.x + u_xlat7.x);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat30.x = ((u_xlat7.x * -2.0f) + 3.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat7.x = (u_xlat7.x * u_xlat30.x);
    u_xlat30 = (u_xlat6.xz + -(x_65.x_ClearCentre.xy));
    u_xlat30.x = dot(u_xlat30, u_xlat30);
    u_xlat30.x = sqrt(u_xlat30.x);
    u_xlat30.x = (u_xlat30.x + -(x_65.x_ClearCentre.z));
    u_xlat30.x = (u_xlat71 * u_xlat30.x);
    u_xlat30.x = clamp(u_xlat30.x, 0.0f, 1.0f);
    u_xlat53.x = ((u_xlat30.x * -2.0f) + 3.0f);
    u_xlat30.x = (u_xlat30.x * u_xlat30.x);
    u_xlat30.x = ((-(u_xlat53.x) * u_xlat30.x) + 1.0f);
    u_xlat53.x = dot(u_xlat6.xz, x_420);
    u_xlat53.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat53.x);
    u_xlat53.x = sin(u_xlat53.x);
    u_xlat6.x = dot(u_xlat6.xz, x_439);
    u_xlat6.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + 1.29999995231628417969f);
    u_xlat6.x = sin(u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * u_xlat53.x);
    u_xlat6.x = (u_xlat6.x * 0.40000000596046447754f);
    u_xlat6.x = ((u_xlat53.x * 0.60000002384185791016f) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x * x_19.x_GeoCloudWind.w);
    u_xlat6.x = (u_xlat6.x / u_xlat1.x);
    u_xlat6.x = ((-(x_65.x_ClearDepth) * u_xlat30.x) + u_xlat6.x);
    u_xlat6.x = (u_xlat6.x + x_65.x_Blanket);
    u_xlat28 = ((u_xlat28 * 2.0f) + -1.0f);
    u_xlat28 = ((x_65.x_SwellAmp * u_xlat28) + u_xlat6.x);
    u_xlat6.x = (u_xlat75 * x_65.x_PuffAmp);
    u_xlat52 = ((u_xlat7.x * u_xlat50) + u_xlat72);
    u_xlat28 = ((u_xlat6.x * u_xlat52) + u_xlat28);
    u_xlat47.x = (u_xlat47.x * x_65.x_SmallAmp);
    u_xlat6.x = ((u_xlat7.x * 0.60000002384185791016f) + 0.40000000596046447754f);
    u_xlat47.x = ((u_xlat47.x * u_xlat6.x) + u_xlat28);
    u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
    u_xlat47.x = (-(u_xlat47.x) + u_xlat6.y);
    u_xlatb47 = (u_xlat47.x < 0.0f);
    if (u_xlatb47) {
      x_2741 = u_xlat5.x;
    } else {
      x_2741 = u_xlat47.y;
    }
    u_xlat47.x = x_2741;
  } else {
    u_xlat47.x = min(u_xlat24.x, u_xlat5.z);
  }
  u_xlat5 = ((u_xlat0 * u_xlat47.xxx) + vs_TEXCOORD0);
  u_xlat69 = (u_xlat69 + u_xlat47.x);
  u_xlat24.x = ((u_xlat69 * x_65.x_LodScale) + 1.0f);
  u_xlat24.x = log2(u_xlat24.x);
  u_xlat47.x = (u_xlat69 * 0.00400000018998980522f);
  u_xlat6.y = max(u_xlat47.x, 0.40000000596046447754f);
  u_xlat7 = ((-(x_19.x_GeoCloudWind.xyxy) * u_xlat2.xxxx) + u_xlat5.xzxz);
  u_xlat7 = (u_xlat7 / vec4f(x_65.x_TileSize));
  u_xlat47 = (-(u_xlat4.xy) + u_xlat5.xz);
  u_xlat47 = (u_xlat47 / vec2f(x_65.x_TileSize));
  u_xlat47 = ((u_xlat47 * x_272) + x_276);
  u_xlat47.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat47, u_xlat24.x).x;
  u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat7.zw, u_xlat24.x).y;
  u_xlat8 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat5.xz)).xy, u_xlat8.zw);
  u_xlat8 = vec4f(((u_xlat8.xy / vec2f(x_65.x_TileSize))).xy, u_xlat8.zw);
  u_xlat8 = vec4f((((u_xlat8.xy * x_325) + x_328)).xy, u_xlat8.zw);
  u_xlat54.x = (u_xlat24.x + 0.30000001192092895508f);
  u_xlat8.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat8.xy, u_xlat54.x).z;
  u_xlat31.x = (u_xlat47.x + -0.34999999403953552246f);
  u_xlat31.x = (u_xlat31.x + u_xlat31.x);
  u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
  u_xlat77 = ((u_xlat31.x * -2.0f) + 3.0f);
  u_xlat31.x = (u_xlat31.x * u_xlat31.x);
  u_xlat31.x = (u_xlat31.x * u_xlat77);
  u_xlat9 = vec4f(((u_xlat5.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
  u_xlat77 = dot(u_xlat9.xy, u_xlat9.xy);
  u_xlat77 = sqrt(u_xlat77);
  u_xlat77 = (u_xlat77 + -(x_65.x_ClearCentre.z));
  u_xlat77 = (u_xlat71 * u_xlat77);
  u_xlat77 = clamp(u_xlat77, 0.0f, 1.0f);
  u_xlat9.x = ((u_xlat77 * -2.0f) + 3.0f);
  u_xlat77 = (u_xlat77 * u_xlat77);
  u_xlat77 = ((-(u_xlat9.x) * u_xlat77) + 1.0f);
  u_xlat9.x = dot(u_xlat5.xz, x_420);
  u_xlat9.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat9.x);
  u_xlat32.x = dot(u_xlat5.xz, x_439);
  u_xlat32.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat32.x);
  u_xlat9.y = (u_xlat32.x + 1.29999995231628417969f);
  u_xlat9 = vec4f(sin(u_xlat9.xy).xy, u_xlat9.zw);
  u_xlat32.x = (u_xlat9.y * u_xlat9.x);
  u_xlat32.x = (u_xlat32.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat9.x * 0.60000002384185791016f) + u_xlat32.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat77 = ((-(x_65.x_ClearDepth) * u_xlat77) + u_xlat9.x);
  u_xlat77 = (u_xlat77 + x_65.x_Blanket);
  u_xlat47.x = ((u_xlat47.x * 2.0f) + -1.0f);
  u_xlat47.x = ((x_65.x_SwellAmp * u_xlat47.x) + u_xlat77);
  u_xlat70 = (u_xlat70 * x_65.x_PuffAmp);
  u_xlat77 = ((u_xlat31.x * u_xlat50) + u_xlat72);
  u_xlat47.x = ((u_xlat70 * u_xlat77) + u_xlat47.x);
  u_xlat70 = (u_xlat8.x * x_65.x_SmallAmp);
  u_xlat8.x = ((u_xlat31.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat47.x = ((u_xlat70 * u_xlat8.x) + u_xlat47.x);
  u_xlat47.x = ((u_xlat47.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat6.z = 0.0f;
  u_xlat9 = (u_xlat5.xzxz + u_xlat6.yzzy);
  u_xlat10 = ((-(x_19.x_GeoCloudWind.xyxy) * u_xlat2.xxxx) + u_xlat9);
  u_xlat10 = (u_xlat10 / vec4f(x_65.x_TileSize));
  u_xlat4 = vec3f(((-(u_xlat4.xy) + u_xlat9.xy)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_272) + x_276)).xy, u_xlat4.z);
  u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat24.x).x;
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat24.x).y;
  u_xlat11 = ((-(u_xlat3.xyxy) * vec4f(1.10000002384185791016f)) + u_xlat9);
  u_xlat11 = (u_xlat11 / vec4f(x_65.x_TileSize));
  u_xlat11 = ((u_xlat11 * vec4f(2.70000004768371582031f)) + vec4f(0.37000000476837158203f, 0.18999999761581420898f, 0.37000000476837158203f, 0.18999999761581420898f));
  u_xlat27 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat11.xy, u_xlat54.x).z;
  u_xlat52 = (u_xlat70 + -0.34999999403953552246f);
  u_xlat52 = (u_xlat52 + u_xlat52);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat8.x = ((u_xlat52 * -2.0f) + 3.0f);
  u_xlat52 = (u_xlat52 * u_xlat52);
  u_xlat52 = (u_xlat52 * u_xlat8.x);
  u_xlat12 = (u_xlat9 + -(x_65.x_ClearCentre.xyxy));
  u_xlat8.x = dot(u_xlat12.xy, u_xlat12.xy);
  u_xlat8.x = sqrt(u_xlat8.x);
  u_xlat8.x = (u_xlat8.x + -(x_65.x_ClearCentre.z));
  u_xlat8.x = (u_xlat71 * u_xlat8.x);
  u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
  u_xlat31.x = ((u_xlat8.x * -2.0f) + 3.0f);
  u_xlat8.x = (u_xlat8.x * u_xlat8.x);
  u_xlat8.x = ((-(u_xlat31.x) * u_xlat8.x) + 1.0f);
  u_xlat31.x = dot(u_xlat9.xy, x_420);
  u_xlat31.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat31.x);
  u_xlat77 = dot(u_xlat9.xy, x_439);
  u_xlat77 = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat77);
  u_xlat31.z = (u_xlat77 + 1.29999995231628417969f);
  let x_3254 = sin(u_xlat31.xz);
  u_xlat31 = vec3f(x_3254.x, u_xlat31.y, x_3254.y);
  u_xlat77 = (u_xlat31.z * u_xlat31.x);
  u_xlat77 = (u_xlat77 * 0.40000000596046447754f);
  u_xlat31.x = ((u_xlat31.x * 0.60000002384185791016f) + u_xlat77);
  u_xlat31.x = (u_xlat31.x * x_19.x_GeoCloudWind.w);
  u_xlat31.x = (u_xlat31.x / u_xlat1.x);
  u_xlat8.x = ((-(x_65.x_ClearDepth) * u_xlat8.x) + u_xlat31.x);
  u_xlat8.x = (u_xlat8.x + x_65.x_Blanket);
  u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
  u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat8.x);
  u_xlat4.x = (u_xlat4.x * x_65.x_PuffAmp);
  u_xlat8.x = ((u_xlat52 * u_xlat50) + u_xlat72);
  u_xlat70 = ((u_xlat4.x * u_xlat8.x) + u_xlat70);
  u_xlat4.x = (u_xlat27 * x_65.x_SmallAmp);
  u_xlat27 = ((u_xlat52 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat70 = ((u_xlat4.x * u_xlat27) + u_xlat70);
  u_xlat70 = ((u_xlat70 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat4 = vec3f(((u_xlat3.yx * x_1750)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy * x_19.x_GeoCloudWind.zz)).xy, u_xlat4.z);
  u_xlat25 = vec3f((((u_xlat4.xy * x_162) + u_xlat25.xy)).xy, u_xlat25.z);
  u_xlat4 = vec3f(((-(u_xlat25.xy) + u_xlat9.zw)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_272) + x_276)).xy, u_xlat4.z);
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat24.x).x;
  u_xlat27 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.zw, u_xlat24.x).y;
  u_xlat52 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat11.zw, u_xlat54.x).z;
  u_xlat8.x = (u_xlat4.x + -0.34999999403953552246f);
  u_xlat8.x = (u_xlat8.x + u_xlat8.x);
  u_xlat8.x = clamp(u_xlat8.x, 0.0f, 1.0f);
  u_xlat31.x = ((u_xlat8.x * -2.0f) + 3.0f);
  u_xlat8.x = (u_xlat8.x * u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * u_xlat31.x);
  u_xlat31.x = dot(u_xlat12.zw, u_xlat12.zw);
  u_xlat31.x = sqrt(u_xlat31.x);
  u_xlat31.x = (u_xlat31.x + -(x_65.x_ClearCentre.z));
  u_xlat31.x = (u_xlat71 * u_xlat31.x);
  u_xlat31.x = clamp(u_xlat31.x, 0.0f, 1.0f);
  u_xlat77 = ((u_xlat31.x * -2.0f) + 3.0f);
  u_xlat31.x = (u_xlat31.x * u_xlat31.x);
  u_xlat31.x = ((-(u_xlat77) * u_xlat31.x) + 1.0f);
  u_xlat77 = dot(u_xlat9.zw, x_420);
  u_xlat77 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat77);
  u_xlat77 = sin(u_xlat77);
  u_xlat9.x = dot(u_xlat9.zw, x_439);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat77 * u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat77 = ((u_xlat77 * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat77 = (u_xlat77 * x_19.x_GeoCloudWind.w);
  u_xlat77 = (u_xlat77 / u_xlat1.x);
  u_xlat31.x = ((-(x_65.x_ClearDepth) * u_xlat31.x) + u_xlat77);
  u_xlat31.x = (u_xlat31.x + x_65.x_Blanket);
  u_xlat4.x = ((u_xlat4.x * 2.0f) + -1.0f);
  u_xlat4.x = ((x_65.x_SwellAmp * u_xlat4.x) + u_xlat31.x);
  u_xlat27 = (u_xlat27 * x_65.x_PuffAmp);
  u_xlat31.x = ((u_xlat8.x * u_xlat50) + u_xlat72);
  u_xlat4.x = ((u_xlat27 * u_xlat31.x) + u_xlat4.x);
  u_xlat27 = (u_xlat52 * x_65.x_SmallAmp);
  u_xlat52 = ((u_xlat8.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat4.x = ((u_xlat27 * u_xlat52) + u_xlat4.x);
  u_xlat4.x = ((u_xlat4.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat6.x = (-(u_xlat70) + u_xlat47.x);
  u_xlat6.w = (u_xlat47.x + -(u_xlat4.x));
  u_xlat47.x = dot(u_xlat6.xyw, u_xlat6.xyw);
  u_xlat47.x = inverseSqrt(u_xlat47.x);
  u_xlat9 = ((-(u_xlat3.xyxy) * vec4f(1.20000004768371582031f)) + u_xlat5.xzxz);
  u_xlat9 = (u_xlat9 / vec4f(x_65.x_TileSize));
  u_xlat4 = vec3f(((u_xlat9.zw * vec2f(x_65.x_DetailScale))).xy, u_xlat4.z);
  u_xlat70 = (x_65.x_DetailScale * 0.5f);
  u_xlat70 = max(u_xlat70, 1.0f);
  u_xlat70 = log2(u_xlat70);
  u_xlat70 = (u_xlat70 + u_xlat24.x);
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat70).w;
  u_xlat4.x = ((u_xlat4.x * 2.0f) + -1.0f);
  u_xlat9 = ((u_xlat9 * vec4f(x_65.x_DetailScale)) + vec4f(0.0029296875f, 0.0f, 0.0f, 0.0029296875f));
  u_xlat27 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat70).w;
  u_xlat27 = ((u_xlat27 * 2.0f) + -1.0f);
  u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.zw, u_xlat70).w;
  u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
  u_xlat52 = (u_xlat69 / x_65.x_DetailFade);
  u_xlat52 = (-(u_xlat52) + 1.0f);
  u_xlat52 = clamp(u_xlat52, 0.0f, 1.0f);
  u_xlat9.x = (-(abs(u_xlat27)) + abs(u_xlat4.x));
  u_xlat9.z = (-(abs(u_xlat70)) + abs(u_xlat4.x));
  let x_3751 = vec2f(x_65.x_DetailStrength, x_65.x_DetailStrength);
  u_xlat4 = vec3f(((u_xlat9.xz * vec2f(x_3751.x, x_3751.y))).xy, u_xlat4.z);
  let x_3762 = (vec2f(u_xlat52) * u_xlat4.xy);
  u_xlat9 = vec4f(x_3762.x, u_xlat9.y, x_3762.y, u_xlat9.w);
  u_xlat9.y = 0.0f;
  u_xlat6 = vec4f((((u_xlat6.xyw * u_xlat47.xxx) + u_xlat9.xyz)).xyz, u_xlat6.w);
  u_xlat47.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat47.x = inverseSqrt(u_xlat47.x);
  let x_3790 = (u_xlat47.xxx * u_xlat6.xyz);
  u_xlat8 = vec4f(x_3790.xy, u_xlat8.z, x_3790.z);
  u_xlat6 = vec4f((((-(u_xlat6.xyz) * u_xlat47.xxx) + vec3f(0.0f, 1.0f, 0.0f))).xyz, u_xlat6.w);
  let x_3810 = vec3f(x_65.x_NormalSoft, x_65.x_NormalSoft, x_65.x_NormalSoft);
  u_xlat6 = vec4f((((vec3f(x_3810.x, x_3810.y, x_3810.z) * u_xlat6.xyz) + u_xlat8.xyw)).xyz, u_xlat6.w);
  u_xlat47.x = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlat47.x = inverseSqrt(u_xlat47.x);
  u_xlat6 = vec4f(((u_xlat47.xxx * u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_3850 = (u_xlat5 + -(x_3845.x_CascadeShadowSplitSpheres0.xyz));
  u_xlat8 = vec4f(x_3850.xy, u_xlat8.z, x_3850.z);
  u_xlat9 = vec4f(((u_xlat5 + -(x_3845.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat9.w);
  u_xlat10 = vec4f(((u_xlat5 + -(x_3845.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat10.w);
  u_xlat11 = vec4f(((u_xlat5 + -(x_3845.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat11.w);
  u_xlat12.x = dot(u_xlat8.xyw, u_xlat8.xyw);
  u_xlat12.y = dot(u_xlat9.xyz, u_xlat9.xyz);
  u_xlat12.z = dot(u_xlat10.xyz, u_xlat10.xyz);
  u_xlat12.w = dot(u_xlat11.xyz, u_xlat11.xyz);
  u_xlatb9 = (u_xlat12 < x_3845.x_CascadeShadowSplitSphereRadii);
  u_xlat10.x = select(0.0f, 1.0f, u_xlatb9.x);
  u_xlat10.y = select(0.0f, 1.0f, u_xlatb9.y);
  u_xlat10.z = select(0.0f, 1.0f, u_xlatb9.z);
  u_xlat10.w = select(0.0f, 1.0f, u_xlatb9.w);
  u_xlat8.x = select(-0.0f, -1.0f, u_xlatb9.x);
  u_xlat8.y = select(-0.0f, -1.0f, u_xlatb9.y);
  u_xlat8.w = select(-0.0f, -1.0f, u_xlatb9.z);
  let x_3943 = (u_xlat8.xyw + u_xlat10.yzw);
  u_xlat8 = vec4f(x_3943.xy, u_xlat8.z, x_3943.z);
  u_xlat10 = vec4f(u_xlat10.x, max(u_xlat8.xyw, vec3f()).xyz);
  u_xlat47.x = dot(u_xlat10, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat47.x = (-(u_xlat47.x) + 4.0f);
  u_xlatu47 = u32(u_xlat47.x);
  u_xlati47 = (bitcast<i32>(u_xlatu47) << bitcast<u32>(2i));
  let x_3978 = (u_xlat5.yyy * x_3845.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati47 + 1i)].xyz);
  u_xlat8 = vec4f(x_3978.xy, u_xlat8.z, x_3978.z);
  let x_3990 = ((x_3845.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati47].xyz * u_xlat5.xxx) + u_xlat8.xyw);
  u_xlat8 = vec4f(x_3990.xy, u_xlat8.z, x_3990.z);
  let x_4003 = ((x_3845.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati47 + 2i)].xyz * u_xlat5.zzz) + u_xlat8.xyw);
  u_xlat8 = vec4f(x_4003.xy, u_xlat8.z, x_4003.z);
  let x_4013 = (u_xlat8.xyw + x_3845.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati47 + 3i)].xyz);
  u_xlat8 = vec4f(x_4013.xy, u_xlat8.z, x_4013.z);
  u_xlatb47 = (0.0f < x_3845.x_MainLightShadowParams.y);
  if (u_xlatb47) {
    u_xlatb47 = (x_3845.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb47) {
      u_xlat9 = (u_xlat8.xyxy + x_3845.x_MainLightShadowOffset0);
      let x_4037 = u_xlat9.xy;
      txVec0 = vec3f(x_4037.x, x_4037.y, u_xlat8.w);
      u_xlat10.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_4057 = u_xlat9.zw;
      txVec1 = vec3f(x_4057.x, x_4057.y, u_xlat8.w);
      u_xlat10.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat9 = (u_xlat8.xyxy + x_3845.x_MainLightShadowOffset1);
      let x_4078 = u_xlat9.xy;
      txVec2 = vec3f(x_4078.x, x_4078.y, u_xlat8.w);
      u_xlat10.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_4093 = u_xlat9.zw;
      txVec3 = vec3f(x_4093.x, x_4093.y, u_xlat8.w);
      u_xlat10.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat47.x = dot(u_xlat10, vec4f(0.25f));
    } else {
      u_xlatb70 = (x_3845.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb70) {
        u_xlat4 = vec3f((((u_xlat8.xy * x_3845.x_MainLightShadowmapSize.zw) + x_4125)).xy, u_xlat4.z);
        u_xlat4 = vec3f(floor(u_xlat4.xy).xy, u_xlat4.z);
        u_xlat9 = vec4f((((u_xlat8.xy * x_3845.x_MainLightShadowmapSize.zw) + -(u_xlat4.xy))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_4148);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        u_xlat55 = (u_xlat11.yw * vec2f(0.07999999821186065674f));
        let x_4167 = ((u_xlat11.xz * x_4125) + -(u_xlat9.xy));
        u_xlat10 = vec4f(x_4167.x, u_xlat10.y, x_4167.y, u_xlat10.w);
        u_xlat11 = vec4f(((-(u_xlat9.xy) + x_4173)).xy, u_xlat11.zw);
        u_xlat57 = min(u_xlat9.xy, vec2f());
        u_xlat57 = ((-(u_xlat57) * u_xlat57) + u_xlat11.xy);
        u_xlat9 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat9.zw);
        u_xlat9 = vec4f((((-(u_xlat9.xy) * u_xlat9.xy) + u_xlat10.yw)).xy, u_xlat9.zw);
        u_xlat57 = (u_xlat57 + x_4173);
        u_xlat9 = vec4f(((u_xlat9.xy + x_4173)).xy, u_xlat9.zw);
        u_xlat12 = vec4f(((u_xlat10.xz * x_4215)).xy, u_xlat12.zw);
        u_xlat13 = vec4f(((u_xlat11.xy * x_4215)).xy, u_xlat13.zw);
        u_xlat11 = vec4f(((u_xlat57 * x_4215)).xy, u_xlat11.zw);
        u_xlat14 = vec4f(((u_xlat9.xy * x_4215)).xy, u_xlat14.zw);
        u_xlat9 = vec4f(((u_xlat10.yw * x_4215)).xy, u_xlat9.zw);
        u_xlat12.z = u_xlat11.x;
        u_xlat12.w = u_xlat9.x;
        u_xlat13.z = u_xlat14.x;
        u_xlat13.w = u_xlat55.x;
        u_xlat10 = (u_xlat12.zwxz + u_xlat13.zwxz);
        u_xlat11.z = u_xlat12.y;
        u_xlat11.w = u_xlat9.y;
        u_xlat14.z = u_xlat13.y;
        u_xlat14.w = u_xlat55.y;
        u_xlat9 = vec4f(((u_xlat11.zyw + u_xlat14.zyw)).xyz, u_xlat9.w);
        u_xlat11 = vec4f(((u_xlat13.xzw / u_xlat10.zwy)).xyz, u_xlat11.w);
        u_xlat11 = vec4f(((u_xlat11.xyz + x_4288)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat14.zyw / u_xlat9.xyz)).xyz, u_xlat12.w);
        u_xlat12 = vec4f(((u_xlat12.xyz + x_4288)).xyz, u_xlat12.w);
        u_xlat11 = vec4f(((u_xlat11.yxz * x_3845.x_MainLightShadowmapSize.xxx)).xyz, u_xlat11.w);
        u_xlat12 = vec4f(((u_xlat12.xyz * x_3845.x_MainLightShadowmapSize.yyy)).xyz, u_xlat12.w);
        u_xlat11.w = u_xlat12.x;
        u_xlat13 = ((u_xlat4.xyxy * x_3845.x_MainLightShadowmapSize.xyxy) + u_xlat11.ywxw);
        u_xlat14 = vec4f((((u_xlat4.xy * x_3845.x_MainLightShadowmapSize.xy) + u_xlat11.zw)).xy, u_xlat14.zw);
        u_xlat12.w = u_xlat11.y;
        let x_4347 = u_xlat12.yz;
        u_xlat11 = vec4f(u_xlat11.x, x_4347.x, u_xlat11.z, x_4347.y);
        u_xlat15 = ((u_xlat4.xyxy * x_3845.x_MainLightShadowmapSize.xyxy) + u_xlat11.xyzy);
        u_xlat12 = ((u_xlat4.xyxy * x_3845.x_MainLightShadowmapSize.xyxy) + u_xlat12.wywz);
        u_xlat11 = ((u_xlat4.xyxy * x_3845.x_MainLightShadowmapSize.xyxy) + u_xlat11.xwzw);
        u_xlat16 = (u_xlat9.xxxy * u_xlat10.zwyz);
        u_xlat17 = (u_xlat9.yyzz * u_xlat10);
        u_xlat70 = (u_xlat9.z * u_xlat10.y);
        let x_4396 = u_xlat13.xy;
        txVec4 = vec3f(x_4396.x, x_4396.y, u_xlat8.w);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_4411 = u_xlat13.zw;
        txVec5 = vec3f(x_4411.x, x_4411.y, u_xlat8.w);
        u_xlat27 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat27 = (u_xlat27 * u_xlat16.y);
        u_xlat4.x = ((u_xlat16.x * u_xlat4.x) + u_xlat27);
        let x_4437 = u_xlat14.xy;
        txVec6 = vec3f(x_4437.x, x_4437.y, u_xlat8.w);
        u_xlat27 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat4.x = ((u_xlat16.z * u_xlat27) + u_xlat4.x);
        let x_4459 = u_xlat12.xy;
        txVec7 = vec3f(x_4459.x, x_4459.y, u_xlat8.w);
        u_xlat27 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat4.x = ((u_xlat16.w * u_xlat27) + u_xlat4.x);
        let x_4481 = u_xlat15.xy;
        txVec8 = vec3f(x_4481.x, x_4481.y, u_xlat8.w);
        u_xlat27 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat4.x = ((u_xlat17.x * u_xlat27) + u_xlat4.x);
        let x_4503 = u_xlat15.zw;
        txVec9 = vec3f(x_4503.x, x_4503.y, u_xlat8.w);
        u_xlat27 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat4.x = ((u_xlat17.y * u_xlat27) + u_xlat4.x);
        let x_4525 = u_xlat12.zw;
        txVec10 = vec3f(x_4525.x, x_4525.y, u_xlat8.w);
        u_xlat27 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat4.x = ((u_xlat17.z * u_xlat27) + u_xlat4.x);
        let x_4547 = u_xlat11.xy;
        txVec11 = vec3f(x_4547.x, x_4547.y, u_xlat8.w);
        u_xlat27 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat4.x = ((u_xlat17.w * u_xlat27) + u_xlat4.x);
        let x_4569 = u_xlat11.zw;
        txVec12 = vec3f(x_4569.x, x_4569.y, u_xlat8.w);
        u_xlat27 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat47.x = ((u_xlat70 * u_xlat27) + u_xlat4.x);
      } else {
        u_xlat4 = vec3f((((u_xlat8.xy * x_3845.x_MainLightShadowmapSize.zw) + x_4125)).xy, u_xlat4.z);
        u_xlat4 = vec3f(floor(u_xlat4.xy).xy, u_xlat4.z);
        u_xlat9 = vec4f((((u_xlat8.xy * x_3845.x_MainLightShadowmapSize.zw) + -(u_xlat4.xy))).xy, u_xlat9.zw);
        u_xlat10 = (u_xlat9.xxyy + x_4148);
        u_xlat11 = (u_xlat10.xxzz * u_xlat10.xxzz);
        let x_4627 = (u_xlat11.yw * vec2f(0.04081600159406661987f));
        u_xlat12 = vec4f(u_xlat12.x, x_4627.x, u_xlat12.z, x_4627.y);
        u_xlat55 = ((u_xlat11.xz * x_4125) + -(u_xlat9.xy));
        let x_4640 = (-(u_xlat9.xy) + x_4173);
        u_xlat10 = vec4f(x_4640.x, u_xlat10.y, x_4640.y, u_xlat10.w);
        u_xlat11 = vec4f(min(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_4656 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.xz);
        u_xlat10 = vec4f(x_4656.x, u_xlat10.y, x_4656.y, u_xlat10.w);
        u_xlat11 = vec4f(max(u_xlat9.xy, vec2f()).xy, u_xlat11.zw);
        let x_4672 = ((-(u_xlat11.xy) * u_xlat11.xy) + u_xlat10.yw);
        u_xlat10 = vec4f(u_xlat10.x, x_4672.x, u_xlat10.z, x_4672.y);
        u_xlat10 = (u_xlat10 + vec4f(2.0f));
        u_xlat11.z = (u_xlat10.y * 0.08163200318813323975f);
        u_xlat13 = vec4f(((u_xlat55.yx * x_4685)).xy, u_xlat13.zw);
        u_xlat55 = (u_xlat10.xz * x_4685);
        u_xlat13.z = (u_xlat10.w * 0.08163200318813323975f);
        u_xlat11.x = u_xlat13.y;
        let x_4706 = ((u_xlat9.xx * x_4702) + x_4705);
        u_xlat11 = vec4f(u_xlat11.x, x_4706.x, u_xlat11.z, x_4706.y);
        let x_4713 = ((u_xlat9.xx * x_4702) + x_4712);
        u_xlat10 = vec4f(x_4713.x, u_xlat10.y, x_4713.y, u_xlat10.w);
        u_xlat10.y = u_xlat55.x;
        u_xlat10.w = u_xlat12.y;
        u_xlat11 = (u_xlat10 + u_xlat11);
        let x_4728 = ((u_xlat9.yy * x_4702) + x_4705);
        u_xlat13 = vec4f(u_xlat13.x, x_4728.x, u_xlat13.z, x_4728.y);
        let x_4734 = ((u_xlat9.yy * x_4702) + x_4712);
        u_xlat12 = vec4f(x_4734.x, u_xlat12.y, x_4734.y, u_xlat12.w);
        u_xlat12.y = u_xlat55.y;
        u_xlat9 = (u_xlat12 + u_xlat13);
        u_xlat10 = (u_xlat10 / u_xlat11);
        u_xlat10 = (u_xlat10 + x_4750);
        u_xlat12 = (u_xlat12 / u_xlat9);
        u_xlat12 = (u_xlat12 + x_4750);
        u_xlat10 = (u_xlat10.wxyz * x_3845.x_MainLightShadowmapSize.xxxx);
        u_xlat12 = (u_xlat12.xwyz * x_3845.x_MainLightShadowmapSize.yyyy);
        let x_4770 = u_xlat10.yzw;
        u_xlat13 = vec4f(x_4770.x, u_xlat13.y, x_4770.yz);
        u_xlat13.y = u_xlat12.x;
        u_xlat14 = ((u_xlat4.xyxy * x_3845.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat15 = vec4f((((u_xlat4.xy * x_3845.x_MainLightShadowmapSize.xy) + u_xlat13.wy)).xy, u_xlat15.zw);
        u_xlat10.y = u_xlat13.y;
        u_xlat13.y = u_xlat12.z;
        u_xlat16 = ((u_xlat4.xyxy * x_3845.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat61 = ((u_xlat4.xy * x_3845.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.z = u_xlat13.y;
        u_xlat17 = ((u_xlat4.xyxy * x_3845.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyxz);
        u_xlat13.y = u_xlat12.w;
        u_xlat18 = ((u_xlat4.xyxy * x_3845.x_MainLightShadowmapSize.xyxy) + u_xlat13.xyzy);
        u_xlat33 = ((u_xlat4.xy * x_3845.x_MainLightShadowmapSize.xy) + u_xlat13.wy);
        u_xlat10.w = u_xlat13.y;
        u_xlat19 = ((u_xlat4.xy * x_3845.x_MainLightShadowmapSize.xy) + u_xlat10.xw);
        let x_4870 = u_xlat13.xzw;
        u_xlat12 = vec4f(x_4870.x, u_xlat12.y, x_4870.yz);
        u_xlat13 = ((u_xlat4.xyxy * x_3845.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat58 = ((u_xlat4.xy * x_3845.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat12.x = u_xlat10.x;
        u_xlat4 = vec3f((((u_xlat4.xy * x_3845.x_MainLightShadowmapSize.xy) + u_xlat12.xy)).xy, u_xlat4.z);
        u_xlat20 = (u_xlat9.xxxx * u_xlat11);
        u_xlat21 = (u_xlat9.yyyy * u_xlat11);
        u_xlat22 = (u_xlat9.zzzz * u_xlat11);
        u_xlat9 = (u_xlat9.wwww * u_xlat11);
        let x_4927 = u_xlat14.xy;
        txVec13 = vec3f(x_4927.x, x_4927.y, u_xlat8.w);
        u_xlat70 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_4941 = u_xlat14.zw;
        txVec14 = vec3f(x_4941.x, x_4941.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat75 = (u_xlat75 * u_xlat20.y);
        u_xlat70 = ((u_xlat20.x * u_xlat70) + u_xlat75);
        let x_4965 = u_xlat15.xy;
        txVec15 = vec3f(x_4965.x, x_4965.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat70 = ((u_xlat20.z * u_xlat75) + u_xlat70);
        let x_4985 = u_xlat17.xy;
        txVec16 = vec3f(x_4985.x, x_4985.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat70 = ((u_xlat20.w * u_xlat75) + u_xlat70);
        let x_5005 = u_xlat16.xy;
        txVec17 = vec3f(x_5005.x, x_5005.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat70 = ((u_xlat21.x * u_xlat75) + u_xlat70);
        let x_5025 = u_xlat16.zw;
        txVec18 = vec3f(x_5025.x, x_5025.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat70 = ((u_xlat21.y * u_xlat75) + u_xlat70);
        txVec19 = vec3f(u_xlat61.x, u_xlat61.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat70 = ((u_xlat21.z * u_xlat75) + u_xlat70);
        let x_5064 = u_xlat17.zw;
        txVec20 = vec3f(x_5064.x, x_5064.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat70 = ((u_xlat21.w * u_xlat75) + u_xlat70);
        let x_5084 = u_xlat18.xy;
        txVec21 = vec3f(x_5084.x, x_5084.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat70 = ((u_xlat22.x * u_xlat75) + u_xlat70);
        let x_5104 = u_xlat18.zw;
        txVec22 = vec3f(x_5104.x, x_5104.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat70 = ((u_xlat22.y * u_xlat75) + u_xlat70);
        txVec23 = vec3f(u_xlat33.x, u_xlat33.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat70 = ((u_xlat22.z * u_xlat75) + u_xlat70);
        txVec24 = vec3f(u_xlat19.x, u_xlat19.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat70 = ((u_xlat22.w * u_xlat75) + u_xlat70);
        let x_5162 = u_xlat13.xy;
        txVec25 = vec3f(x_5162.x, x_5162.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat70 = ((u_xlat9.x * u_xlat75) + u_xlat70);
        let x_5182 = u_xlat13.zw;
        txVec26 = vec3f(x_5182.x, x_5182.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat70 = ((u_xlat9.y * u_xlat75) + u_xlat70);
        txVec27 = vec3f(u_xlat58.x, u_xlat58.y, u_xlat8.w);
        u_xlat75 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat70 = ((u_xlat9.z * u_xlat75) + u_xlat70);
        let x_5221 = u_xlat4.xy;
        txVec28 = vec3f(x_5221.x, x_5221.y, u_xlat8.w);
        u_xlat4.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat47.x = ((u_xlat9.w * u_xlat4.x) + u_xlat70);
      }
    }
  } else {
    let x_5245 = u_xlat8.xy;
    txVec29 = vec3f(x_5245.x, x_5245.y, u_xlat8.w);
    u_xlat47.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat70 = (-(x_3845.x_MainLightShadowParams.x) + 1.0f);
  u_xlat47.x = ((u_xlat47.x * x_3845.x_MainLightShadowParams.x) + u_xlat70);
  u_xlatb70 = (0.0f >= u_xlat8.w);
  u_xlatb4 = (u_xlat8.w >= 1.0f);
  u_xlatb70 = (u_xlatb70 | u_xlatb4);
  if (u_xlatb70) {
    x_5281 = 1.0f;
  } else {
    x_5281 = u_xlat47.x;
  }
  u_xlat47.x = x_5281;
  let x_5293 = (u_xlat5 + -(x_19.x_WorldSpaceCameraPos));
  u_xlat8 = vec4f(x_5293.xy, u_xlat8.z, x_5293.z);
  u_xlat70 = dot(u_xlat8.xyw, u_xlat8.xyw);
  u_xlat70 = ((u_xlat70 * x_3845.x_MainLightShadowParams.z) + x_3845.x_MainLightShadowParams.w);
  u_xlat70 = clamp(u_xlat70, 0.0f, 1.0f);
  u_xlat4.x = (-(u_xlat47.x) + 1.0f);
  u_xlat47.x = ((u_xlat70 * u_xlat4.x) + u_xlat47.x);
  let x_5328 = (x_19.x_MainLightPosition.xyz * vec3f(2.59999990463256835938f));
  u_xlat8 = vec4f(x_5328.xy, u_xlat8.z, x_5328.z);
  u_xlat70 = (x_65.x_TileSize * 0.00249999994412064552f);
  let x_5341 = ((u_xlat8.xyw * vec3f(u_xlat70)) + u_xlat5);
  u_xlat8 = vec4f(x_5341.xy, u_xlat8.z, x_5341.z);
  u_xlat4 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat8.xw)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat9 = vec4f(((-(u_xlat25.xy) + u_xlat8.xw)).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_65.x_TileSize))).xy, u_xlat9.zw);
  u_xlat9 = vec4f((((u_xlat9.xy * x_272) + x_276)).xy, u_xlat9.zw);
  u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat24.x).x;
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat24.x).y;
  u_xlat9 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat8.xw)).xy, u_xlat9.zw);
  u_xlat9 = vec4f(((u_xlat9.xy / vec2f(x_65.x_TileSize))).xy, u_xlat9.zw);
  u_xlat9 = vec4f((((u_xlat9.xy * x_325) + x_328)).xy, u_xlat9.zw);
  u_xlat4.y = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat9.xy, u_xlat54.x).z;
  u_xlat9.x = (u_xlat75 + -0.34999999403953552246f);
  u_xlat9.x = (u_xlat9.x + u_xlat9.x);
  u_xlat9.x = clamp(u_xlat9.x, 0.0f, 1.0f);
  u_xlat32.x = ((u_xlat9.x * -2.0f) + 3.0f);
  u_xlat9.x = (u_xlat9.x * u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat32.x);
  u_xlat32 = (u_xlat8.xw + -(x_65.x_ClearCentre.xy));
  u_xlat32.x = dot(u_xlat32, u_xlat32);
  u_xlat32.x = sqrt(u_xlat32.x);
  u_xlat32.x = (u_xlat32.x + -(x_65.x_ClearCentre.z));
  u_xlat32.x = (u_xlat71 * u_xlat32.x);
  u_xlat32.x = clamp(u_xlat32.x, 0.0f, 1.0f);
  u_xlat55.x = ((u_xlat32.x * -2.0f) + 3.0f);
  u_xlat32.x = (u_xlat32.x * u_xlat32.x);
  u_xlat32.x = ((-(u_xlat55.x) * u_xlat32.x) + 1.0f);
  u_xlat55.x = dot(u_xlat8.xw, x_420);
  u_xlat55.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat55.x);
  u_xlat55.x = sin(u_xlat55.x);
  u_xlat8.x = dot(u_xlat8.xw, x_439);
  u_xlat8.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x + 1.29999995231628417969f);
  u_xlat8.x = sin(u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * u_xlat55.x);
  u_xlat8.x = (u_xlat8.x * 0.40000000596046447754f);
  u_xlat8.x = ((u_xlat55.x * 0.60000002384185791016f) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * x_19.x_GeoCloudWind.w);
  u_xlat8.x = (u_xlat8.x / u_xlat1.x);
  u_xlat8.x = ((-(x_65.x_ClearDepth) * u_xlat32.x) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x + x_65.x_Blanket);
  u_xlat75 = ((u_xlat75 * 2.0f) + -1.0f);
  u_xlat75 = ((x_65.x_SwellAmp * u_xlat75) + u_xlat8.x);
  u_xlat4 = vec3f(((u_xlat4.xy * vec2f(x_65.x_PuffAmp, x_65.x_SmallAmp))).xy, u_xlat4.z);
  u_xlat8.x = ((u_xlat9.x * u_xlat50) + u_xlat72);
  u_xlat4.x = ((u_xlat4.x * u_xlat8.x) + u_xlat75);
  u_xlat75 = ((u_xlat9.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat4.x = ((u_xlat4.y * u_xlat75) + u_xlat4.x);
  u_xlat4.x = ((u_xlat4.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat4.x = (-(u_xlat8.y) + u_xlat4.x);
  u_xlat4.x = max(u_xlat4.x, 0.0f);
  let x_5670 = (vec3f(u_xlat70) * x_19.x_MainLightPosition.xyz);
  u_xlat8 = vec4f(x_5670.xy, u_xlat8.z, x_5670.z);
  u_xlat9 = vec4f((((u_xlat8.xyw * vec3f(7.40000009536743164062f)) + u_xlat5)).xyz, u_xlat9.w);
  u_xlat10 = vec4f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(u_xlat10.xy, ((-(u_xlat25.xy) + u_xlat9.xz)).xy);
  u_xlat10 = (u_xlat10 / vec4f(x_65.x_TileSize));
  u_xlat56 = ((u_xlat10.zw * x_272) + x_276);
  u_xlat70 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat56, u_xlat24.x).x;
  u_xlat27 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat24.x).y;
  u_xlat10 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_325) + x_328)).xy, u_xlat10.zw);
  u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat54.x).z;
  u_xlat78 = (u_xlat70 + -0.34999999403953552246f);
  u_xlat78 = (u_xlat78 + u_xlat78);
  u_xlat78 = clamp(u_xlat78, 0.0f, 1.0f);
  u_xlat10.x = ((u_xlat78 * -2.0f) + 3.0f);
  u_xlat78 = (u_xlat78 * u_xlat78);
  u_xlat78 = (u_xlat78 * u_xlat10.x);
  u_xlat10 = vec4f(((u_xlat9.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat10.zw);
  u_xlat10.x = dot(u_xlat10.xy, u_xlat10.xy);
  u_xlat10.x = sqrt(u_xlat10.x);
  u_xlat10.x = (u_xlat10.x + -(x_65.x_ClearCentre.z));
  u_xlat10.x = (u_xlat71 * u_xlat10.x);
  u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
  u_xlat33.x = ((u_xlat10.x * -2.0f) + 3.0f);
  u_xlat10.x = (u_xlat10.x * u_xlat10.x);
  u_xlat10.x = ((-(u_xlat33.x) * u_xlat10.x) + 1.0f);
  u_xlat33.x = dot(u_xlat9.xz, x_420);
  u_xlat33.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat33.x);
  u_xlat33.x = sin(u_xlat33.x);
  u_xlat9.x = dot(u_xlat9.xz, x_439);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat33.x);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat33.x * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat9.x = ((-(x_65.x_ClearDepth) * u_xlat10.x) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + x_65.x_Blanket);
  u_xlat70 = ((u_xlat70 * 2.0f) + -1.0f);
  u_xlat70 = ((x_65.x_SwellAmp * u_xlat70) + u_xlat9.x);
  u_xlat27 = (u_xlat27 * x_65.x_PuffAmp);
  u_xlat9.x = ((u_xlat78 * u_xlat50) + u_xlat72);
  u_xlat70 = ((u_xlat27 * u_xlat9.x) + u_xlat70);
  u_xlat27 = (u_xlat75 * x_65.x_SmallAmp);
  u_xlat75 = ((u_xlat78 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat70 = ((u_xlat27 * u_xlat75) + u_xlat70);
  u_xlat70 = ((u_xlat70 * u_xlat1.x) + x_65.x_BaseY);
  u_xlat70 = (-(u_xlat9.y) + u_xlat70);
  u_xlat70 = max(u_xlat70, 0.0f);
  u_xlat70 = (u_xlat70 + u_xlat4.x);
  u_xlat9 = vec4f((((u_xlat8.xyw * vec3f(15.40000057220458984375f)) + u_xlat5)).xyz, u_xlat9.w);
  u_xlat4 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat9.xz)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat10 = vec4f(((-(u_xlat25.xy) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_272) + x_276)).xy, u_xlat10.zw);
  u_xlat75 = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat24.x).x;
  u_xlat4.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat24.x).y;
  u_xlat10 = vec4f((((-(u_xlat3.xy) * x_307) + u_xlat9.xz)).xy, u_xlat10.zw);
  u_xlat10 = vec4f(((u_xlat10.xy / vec2f(x_65.x_TileSize))).xy, u_xlat10.zw);
  u_xlat10 = vec4f((((u_xlat10.xy * x_325) + x_328)).xy, u_xlat10.zw);
  u_xlat4.y = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat10.xy, u_xlat54.x).z;
  u_xlat78 = (u_xlat75 + -0.34999999403953552246f);
  u_xlat78 = (u_xlat78 + u_xlat78);
  u_xlat78 = clamp(u_xlat78, 0.0f, 1.0f);
  u_xlat10.x = ((u_xlat78 * -2.0f) + 3.0f);
  u_xlat78 = (u_xlat78 * u_xlat78);
  u_xlat78 = (u_xlat78 * u_xlat10.x);
  u_xlat10 = vec4f(((u_xlat9.xz + -(x_65.x_ClearCentre.xy))).xy, u_xlat10.zw);
  u_xlat10.x = dot(u_xlat10.xy, u_xlat10.xy);
  u_xlat10.x = sqrt(u_xlat10.x);
  u_xlat10.x = (u_xlat10.x + -(x_65.x_ClearCentre.z));
  u_xlat10.x = (u_xlat71 * u_xlat10.x);
  u_xlat10.x = clamp(u_xlat10.x, 0.0f, 1.0f);
  u_xlat33.x = ((u_xlat10.x * -2.0f) + 3.0f);
  u_xlat10.x = (u_xlat10.x * u_xlat10.x);
  u_xlat10.x = ((-(u_xlat33.x) * u_xlat10.x) + 1.0f);
  u_xlat33.x = dot(u_xlat9.xz, x_420);
  u_xlat33.x = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat33.x);
  u_xlat33.x = sin(u_xlat33.x);
  u_xlat9.x = dot(u_xlat9.xz, x_439);
  u_xlat9.x = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + 1.29999995231628417969f);
  u_xlat9.x = sin(u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * u_xlat33.x);
  u_xlat9.x = (u_xlat9.x * 0.40000000596046447754f);
  u_xlat9.x = ((u_xlat33.x * 0.60000002384185791016f) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x * x_19.x_GeoCloudWind.w);
  u_xlat9.x = (u_xlat9.x / u_xlat1.x);
  u_xlat9.x = ((-(x_65.x_ClearDepth) * u_xlat10.x) + u_xlat9.x);
  u_xlat9.x = (u_xlat9.x + x_65.x_Blanket);
  u_xlat75 = ((u_xlat75 * 2.0f) + -1.0f);
  u_xlat75 = ((x_65.x_SwellAmp * u_xlat75) + u_xlat9.x);
  u_xlat4 = vec3f(((u_xlat4.xy * vec2f(x_65.x_PuffAmp, x_65.x_SmallAmp))).xy, u_xlat4.z);
  u_xlat9.x = ((u_xlat78 * u_xlat50) + u_xlat72);
  u_xlat4.x = ((u_xlat4.x * u_xlat9.x) + u_xlat75);
  u_xlat75 = ((u_xlat78 * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat4.x = ((u_xlat4.y * u_xlat75) + u_xlat4.x);
  u_xlat4.x = ((u_xlat4.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat4.x = (-(u_xlat9.y) + u_xlat4.x);
  u_xlat4.x = max(u_xlat4.x, 0.0f);
  u_xlat70 = (u_xlat70 + u_xlat4.x);
  let x_6300 = ((u_xlat8.xyw * vec3f(26.6000003814697265625f)) + u_xlat5);
  u_xlat8 = vec4f(x_6300.xy, u_xlat8.z, x_6300.z);
  u_xlat4 = vec3f((((-(x_19.x_GeoCloudWind.xy) * u_xlat2.xx) + u_xlat8.xw)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat2 = vec4f(((-(u_xlat25.xy) + u_xlat8.xw)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(((u_xlat2.xy / vec2f(x_65.x_TileSize))).xy, u_xlat2.zw);
  u_xlat2 = vec4f((((u_xlat2.xy * x_272) + x_276)).xy, u_xlat2.zw);
  u_xlat2.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat2.xy, u_xlat24.x).x;
  u_xlat25.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat24.x).y;
  u_xlat4 = vec3f((((-(u_xlat3.xy) * x_307) + u_xlat8.xw)).xy, u_xlat4.z);
  u_xlat4 = vec3f(((u_xlat4.xy / vec2f(x_65.x_TileSize))).xy, u_xlat4.z);
  u_xlat4 = vec3f((((u_xlat4.xy * x_325) + x_328)).xy, u_xlat4.z);
  u_xlat48.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat4.xy, u_xlat54.x).z;
  u_xlat4.x = (u_xlat2.x + -0.34999999403953552246f);
  u_xlat4.x = (u_xlat4.x + u_xlat4.x);
  u_xlat4.x = clamp(u_xlat4.x, 0.0f, 1.0f);
  u_xlat27 = ((u_xlat4.x * -2.0f) + 3.0f);
  u_xlat4.x = (u_xlat4.x * u_xlat4.x);
  u_xlat4.x = (u_xlat4.x * u_xlat27);
  u_xlat9 = vec4f(((u_xlat8.xw + -(x_65.x_ClearCentre.xy))).xy, u_xlat9.zw);
  u_xlat27 = dot(u_xlat9.xy, u_xlat9.xy);
  u_xlat27 = sqrt(u_xlat27);
  u_xlat27 = (u_xlat27 + -(x_65.x_ClearCentre.z));
  u_xlat71 = (u_xlat71 * u_xlat27);
  u_xlat71 = clamp(u_xlat71, 0.0f, 1.0f);
  u_xlat27 = ((u_xlat71 * -2.0f) + 3.0f);
  u_xlat71 = (u_xlat71 * u_xlat71);
  u_xlat71 = ((-(u_xlat27) * u_xlat71) + 1.0f);
  u_xlat27 = dot(u_xlat8.xw, x_420);
  u_xlat27 = ((u_xlat3.z * 0.08900000154972076416f) + u_xlat27);
  u_xlat27 = sin(u_xlat27);
  u_xlat75 = dot(u_xlat8.xw, x_439);
  u_xlat49 = ((-(u_xlat3.z) * 0.05700000002980232239f) + u_xlat75);
  u_xlat49 = (u_xlat49 + 1.29999995231628417969f);
  u_xlat49 = sin(u_xlat49);
  u_xlat49 = (u_xlat49 * u_xlat27);
  u_xlat49 = (u_xlat49 * 0.40000000596046447754f);
  u_xlat49 = ((u_xlat27 * 0.60000002384185791016f) + u_xlat49);
  u_xlat49 = (u_xlat49 * x_19.x_GeoCloudWind.w);
  u_xlat49 = (u_xlat49 / u_xlat1.x);
  u_xlat71 = ((-(x_65.x_ClearDepth) * u_xlat71) + u_xlat49);
  u_xlat71 = (u_xlat71 + x_65.x_Blanket);
  u_xlat2.x = ((u_xlat2.x * 2.0f) + -1.0f);
  u_xlat2.x = ((x_65.x_SwellAmp * u_xlat2.x) + u_xlat71);
  u_xlat25.x = (u_xlat25.x * x_65.x_PuffAmp);
  u_xlat71 = ((u_xlat4.x * u_xlat50) + u_xlat72);
  u_xlat2.x = ((u_xlat25.x * u_xlat71) + u_xlat2.x);
  u_xlat25.x = (u_xlat48.x * x_65.x_SmallAmp);
  u_xlat48.x = ((u_xlat4.x * 0.60000002384185791016f) + 0.40000000596046447754f);
  u_xlat2.x = ((u_xlat25.x * u_xlat48.x) + u_xlat2.x);
  u_xlat2.x = ((u_xlat2.x * u_xlat1.x) + x_65.x_BaseY);
  u_xlat2.x = (-(u_xlat8.y) + u_xlat2.x);
  u_xlat2.x = max(u_xlat2.x, 0.0f);
  u_xlat70 = (u_xlat70 + u_xlat2.x);
  u_xlat70 = (-(u_xlat70) * x_65.x_ShadowDensity);
  u_xlat70 = (u_xlat70 * 1.44269502162933349609f);
  u_xlat70 = exp2(u_xlat70);
  u_xlat2.x = (u_xlat5.y + -(x_65.x_BaseY));
  u_xlat1.x = (u_xlat2.x / u_xlat1.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat2.x = (-(x_65.x_CreaseDark) + 1.0f);
  u_xlat1.x = (u_xlat1.x + -0.10000000149011611938f);
  u_xlat1.x = (u_xlat1.x * 1.42857146263122558594f);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat25.x = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat25.x);
  u_xlat25.x = (-(u_xlat2.x) + 1.0f);
  u_xlat1.x = ((u_xlat1.x * u_xlat25.x) + u_xlat2.x);
  u_xlat2.x = dot(u_xlat6.xyz, x_19.x_MainLightPosition.xyz);
  u_xlat25.x = (u_xlat2.x + x_65.x_Wrap);
  u_xlat48.x = (x_65.x_Wrap + 1.0f);
  u_xlat25.x = (u_xlat25.x / u_xlat48.x);
  u_xlat25.x = clamp(u_xlat25.x, 0.0f, 1.0f);
  u_xlat4 = (x_19.x_MainLightColor.xyz * x_65.x_SunTint.xyz);
  u_xlat4 = (u_xlat4 * vec3f(x_65.x_SunStrength));
  u_xlatb48 = (0.0f < x_19.x_GeoCloudShadow.x);
  if (u_xlatb48) {
    u_xlat48.x = max(x_19.x_MainLightPosition.y, 0.20000000298023223877f);
    u_xlat48 = (x_19.x_MainLightPosition.xz / u_xlat48.xx);
    u_xlat49 = (-(u_xlat5.y) + 450.0f);
    u_xlat48 = ((u_xlat48 * vec2f(u_xlat49)) + u_xlat5.xz);
    u_xlat48 = ((-(u_xlat3.xy) * x_6747) + u_xlat48);
    u_xlat48 = (u_xlat48 / x_19.x_GeoCloudShadow.yy);
    u_xlat48.x = textureSampleLevel(x_GeoCloudNoise, sampler_GeoCloudNoise, u_xlat48, 0.0f).x;
    u_xlat71 = (-(x_19.x_GeoCloudShadow.z) + 1.0f);
    u_xlat48.x = (-(u_xlat71) + u_xlat48.x);
    u_xlat48.x = (u_xlat48.x * 6.25f);
    u_xlat48.x = clamp(u_xlat48.x, 0.0f, 1.0f);
    u_xlat71 = ((u_xlat48.x * -2.0f) + 3.0f);
    u_xlat48.x = (u_xlat48.x * u_xlat48.x);
    u_xlat48.x = (u_xlat48.x * u_xlat71);
    u_xlat3 = vec4f(((u_xlat5.xz + -(x_19.x_GeoCloudCentre.xy))).xy, u_xlat3.zw);
    u_xlat71 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat71 = sqrt(u_xlat71);
    u_xlat3.x = (x_19.x_GeoCloudShadow.w * 0.79999995231628417969f);
    u_xlat71 = (u_xlat71 + -(x_19.x_GeoCloudShadow.w));
    u_xlat3.x = (1.0f / u_xlat3.x);
    u_xlat71 = (u_xlat71 * u_xlat3.x);
    u_xlat71 = clamp(u_xlat71, 0.0f, 1.0f);
    u_xlat3.x = ((u_xlat71 * -2.0f) + 3.0f);
    u_xlat71 = (u_xlat71 * u_xlat71);
    u_xlat71 = (u_xlat71 * u_xlat3.x);
    u_xlat48.x = (u_xlat48.x * x_19.x_GeoCloudShadow.x);
    u_xlat48.x = ((-(u_xlat48.x) * u_xlat71) + 1.0f);
  } else {
    u_xlat48.x = 1.0f;
  }
  u_xlat3 = vec4f(((u_xlat25.xxx * u_xlat4)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((vec3f(u_xlat70) * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((u_xlat47.xxx * u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat47.x = ((u_xlat6.y * 0.5f) + 0.5f);
  u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
  u_xlat8 = vec4f(((x_65.x_AmbientTop.xyz + -(x_65.x_AmbientBottom.xyz))).xyz, u_xlat8.w);
  u_xlat8 = vec4f((((u_xlat47.xxx * u_xlat8.xyz) + x_65.x_AmbientBottom.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((u_xlat1.xxx * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat1.x = (-(u_xlat48.x) + 1.0f);
  u_xlat9 = vec4f((((-(u_xlat1.xxx) * vec3f(0.60000002384185791016f, 0.47999998927116394043f, 0.30000001192092895508f)) + x_6929)).xyz, u_xlat9.w);
  u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat9.xyz)).xyz, u_xlat8.w);
  u_xlat1.x = dot(u_xlat0, x_19.x_MainLightPosition.xyz);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * x_65.x_ScatterPower);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat47.x = dot(u_xlat6.xyz, -(u_xlat0));
  u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
  u_xlat3 = vec4f((((u_xlat3.xyz * u_xlat48.xxx) + u_xlat8.xyz)).xyz, u_xlat3.w);
  u_xlat6 = vec4f(((x_19.x_MainLightColor.xyz * x_65.x_ScatterColor.xyz)).xyz, u_xlat6.w);
  let x_7003 = vec3f(x_65.x_ScatterStrength, x_65.x_ScatterStrength, x_65.x_ScatterStrength);
  u_xlat6 = vec4f(((u_xlat6.xyz * vec3f(x_7003.x, x_7003.y, x_7003.z))).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat1.xxx * u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_7023 = (-(u_xlat47.xx) + vec2f(1.0f, 1.35000002384185791016f));
  u_xlat1 = vec4f(x_7023.x, u_xlat1.y, x_7023.y, u_xlat1.w);
  u_xlat6 = vec4f(((u_xlat1.zzz * u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat3 = vec4f((((x_65.x_Albedo.xyz * u_xlat3.xyz) + u_xlat6.xyz)).xyz, u_xlat3.w);
  u_xlat47.x = ((u_xlat2.x * 0.5f) + 0.5f);
  u_xlat47.x = clamp(u_xlat47.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * 2.5f);
  u_xlat1.x = exp2(u_xlat1.x);
  u_xlat2 = vec4f((((-(vec2f(u_xlat69)) * vec2f(0.00083333335351198912f, 0.00071428570663556457f)) + x_4173)).xy, u_xlat2.zw);
  u_xlat2 = vec4f(clamp(u_xlat2.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat2.zw);
  u_xlat1.x = (u_xlat1.x * u_xlat2.x);
  u_xlat6 = vec4f(((x_19.x_MainLightColor.xyz * x_65.x_GoldColor.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f(((u_xlat6.xyz * vec3f(x_65.x_GoldRim))).xyz, u_xlat6.w);
  u_xlat8 = vec4f(((u_xlat1.xxx * u_xlat6.xyz)).xyz, u_xlat8.w);
  u_xlat2.x = (u_xlat47.x * u_xlat47.x);
  u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat2.xxx)).xyz, u_xlat8.w);
  u_xlat3 = vec4f((((u_xlat8.xyz * vec3f(u_xlat70)) + u_xlat3.xyz)).xyz, u_xlat3.w);
  u_xlat1.x = (u_xlat1.x * x_65.x_RimShade);
  u_xlat47.x = (-(u_xlat47.x) + 1.0f);
  u_xlat1.x = (u_xlat47.x * u_xlat1.x);
  u_xlat8 = vec4f(((x_65.x_RimColor.xyz + vec3f(-1.0f))).xyz, u_xlat8.w);
  let x_7166 = ((u_xlat1.xxx * u_xlat8.xyz) + x_6929);
  u_xlat1 = vec4f(x_7166.x, u_xlat1.y, x_7166.yz);
  u_xlat8 = vec4f(((u_xlat1.xzw * u_xlat3.xyz)).xyz, u_xlat8.w);
  u_xlat4 = (u_xlat4 * x_7178);
  let x_7187 = ((u_xlat4 * u_xlat48.xxx) + x_65.x_AmbientTop.xyz);
  u_xlat2 = vec4f(x_7187.x, u_xlat2.y, x_7187.yz);
  u_xlat4 = (u_xlat6.xyz * vec3f(0.25f));
  let x_7201 = ((x_65.x_Albedo.xyz * u_xlat2.xzw) + u_xlat4);
  u_xlat2 = vec4f(x_7201.x, u_xlat2.y, x_7201.yz);
  u_xlat72 = (-(u_xlat73) * x_65.x_FuzzStrength);
  u_xlat72 = (u_xlat72 * 1.44269502162933349609f);
  u_xlat72 = exp2(u_xlat72);
  u_xlat72 = (-(u_xlat72) + 1.0f);
  u_xlat72 = ((u_xlat74 * 0.20000000298023223877f) + u_xlat72);
  u_xlat72 = clamp(u_xlat72, 0.0f, 1.0f);
  let x_7231 = ((-(u_xlat3.xyz) * u_xlat1.xzw) + u_xlat2.xzw);
  u_xlat1 = vec4f(x_7231.x, u_xlat1.y, x_7231.yz);
  let x_7241 = ((vec3f(u_xlat72) * u_xlat1.xzw) + u_xlat8.xyz);
  u_xlat1 = vec4f(x_7241.x, u_xlat1.y, x_7241.yz);
  let x_7246 = (u_xlat7.xy * x_6747);
  u_xlat2 = vec4f(x_7246.x, u_xlat2.y, x_7246.y, u_xlat2.w);
  u_xlat2.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat2.xz, u_xlat24.x).y;
  u_xlat48 = ((u_xlat7.zw * vec2f(3.70000004768371582031f)) + vec2f(0.31000000238418579102f));
  u_xlat24.x = textureSampleLevel(x_NoiseTex, sampler_NoiseTex, u_xlat48, u_xlat24.x).z;
  u_xlat24.x = (u_xlat24.x * 0.40000000596046447754f);
  u_xlat24.x = ((u_xlat2.x * 0.60000002384185791016f) + u_xlat24.x);
  u_xlat24.x = (u_xlat24.x + -0.05000000074505805969f);
  u_xlat24.x = (u_xlat24.x * 1.17647063732147216797f);
  u_xlat24.x = clamp(u_xlat24.x, 0.0f, 1.0f);
  u_xlat2.x = ((u_xlat24.x * -2.0f) + 3.0f);
  u_xlat24.x = (u_xlat24.x * u_xlat24.x);
  u_xlat24.x = (u_xlat24.x * u_xlat2.x);
  u_xlat2.x = (-(x_65.x_CottonAmount) + 1.0f);
  u_xlat48.x = ((x_65.x_CottonAmount * 0.25f) + 1.0f);
  u_xlat48.x = (-(u_xlat2.x) + u_xlat48.x);
  u_xlat24.x = ((u_xlat24.x * u_xlat48.x) + u_xlat2.x);
  u_xlat24.x = (u_xlat24.x + -1.0f);
  u_xlat24.x = ((u_xlat2.y * u_xlat24.x) + 1.0f);
  u_xlat1 = vec4f(((u_xlat24.xxx * u_xlat1.xzw)).xyz, u_xlat1.w);
  u_xlat70 = (-(u_xlat69) / x_65.x_MidHazeDistance);
  u_xlat70 = (u_xlat70 * 1.44269502162933349609f);
  u_xlat70 = exp2(u_xlat70);
  u_xlat70 = (-(u_xlat70) + 1.0f);
  u_xlat70 = (u_xlat70 * x_65.x_MidHazeMax);
  u_xlat2 = vec4f(((x_65.x_AmbientTop.xyz * x_7178)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_19.x_MainLightColor.xyz * vec3f(0.18000000715255737305f)) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_65.x_MidHazeColor.xyz * u_xlat2.xyz) + -(u_xlat1.xyz))).xyz, u_xlat2.w);
  u_xlat1 = vec4f((((vec3f(u_xlat70) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat70 = (u_xlat69 / x_65.x_HazeDistance);
  u_xlat70 = max(u_xlat70, 0.0f);
  u_xlat70 = log2(u_xlat70);
  u_xlat70 = (u_xlat70 * x_65.x_HazePower);
  u_xlat70 = exp2(u_xlat70);
  u_xlat70 = (u_xlat70 * -1.44269502162933349609f);
  u_xlat70 = exp2(u_xlat70);
  u_xlat70 = (-(u_xlat70) + 1.0f);
  u_xlat2 = vec4f(((u_xlat0.xz + x_7447)).xy, u_xlat2.zw);
  u_xlat48.x = dot(u_xlat2.xy, u_xlat2.xy);
  u_xlat48.x = inverseSqrt(u_xlat48.x);
  u_xlat2 = vec4f(((u_xlat48.xx * u_xlat2.xy)).xy, u_xlat2.zw);
  u_xlat48 = (x_19.x_MainLightPosition.xz + x_7447);
  u_xlat3.x = dot(u_xlat48, u_xlat48);
  u_xlat3.x = inverseSqrt(u_xlat3.x);
  u_xlat48 = (u_xlat48 * u_xlat3.xx);
  u_xlat2.x = dot(u_xlat2.xy, u_xlat48);
  u_xlat2.x = ((u_xlat2.x * 0.5f) + 0.5f);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat2.x = log2(u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * x_65.x_HorizonWarmth);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat25 = (-(x_65.x_HorizonColor.xyz) + x_65.x_SunHorizonColor.xyz);
  u_xlat2 = vec4f((((u_xlat2.xxx * u_xlat25) + x_65.x_HorizonColor.xyz)).xyz, u_xlat2.w);
  u_xlat71 = max(u_xlat0.y, -1.0f);
  u_xlat71 = min(u_xlat71, 1.0f);
  u_xlat3.x = (-(abs(u_xlat71)) + 1.0f);
  u_xlat3.x = sqrt(u_xlat3.x);
  u_xlat26 = ((abs(u_xlat71) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat26 = ((u_xlat26 * abs(u_xlat71)) + -0.21211439371109008789f);
  u_xlat26 = ((u_xlat26 * abs(u_xlat71)) + 1.57072877883911132812f);
  u_xlat49 = (u_xlat3.x * u_xlat26);
  u_xlat49 = ((u_xlat49 * -2.0f) + 3.14159274101257324219f);
  u_xlatb71 = (u_xlat71 < -(u_xlat71));
  u_xlat71 = select(0.0f, u_xlat49, u_xlatb71);
  u_xlat71 = ((u_xlat26 * u_xlat3.x) + u_xlat71);
  u_xlat71 = (-(u_xlat71) + 1.57079637050628662109f);
  u_xlat3 = vec4f(((-(u_xlat2.xyz) + x_65.x_BelowColor.xyz)).xyz, u_xlat3.w);
  u_xlat3 = vec4f(((u_xlat3.xyz * vec3f(0.64999997615814208984f))).xyz, u_xlat3.w);
  u_xlat71 = ((u_xlat71 * 57.295780181884765625f) + -0.20000000298023223877f);
  u_xlat71 = (u_xlat71 * -0.37037035822868347168f);
  u_xlat71 = clamp(u_xlat71, 0.0f, 1.0f);
  u_xlat72 = ((u_xlat71 * -2.0f) + 3.0f);
  u_xlat71 = (u_xlat71 * u_xlat71);
  u_xlat71 = (u_xlat71 * u_xlat72);
  u_xlat2 = vec4f((((vec3f(u_xlat71) * u_xlat3.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((-(u_xlat1.xyz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  SV_Target0 = vec4f((((vec3f(u_xlat70) * u_xlat2.xyz) + u_xlat1.xyz)).xyz, SV_Target0.w);
  u_xlat1.x = (x_65.x_FadeRadius * 0.19999998807907104492f);
  u_xlat24.x = dot(u_xlat5.xz, u_xlat5.xz);
  u_xlat24.x = sqrt(u_xlat24.x);
  u_xlat24.x = ((-(x_65.x_FadeRadius) * 0.80000001192092895508f) + u_xlat24.x);
  u_xlat1.x = (1.0f / u_xlat1.x);
  u_xlat1.x = (u_xlat1.x * u_xlat24.x);
  u_xlat1.x = clamp(u_xlat1.x, 0.0f, 1.0f);
  u_xlat24.x = ((u_xlat1.x * -2.0f) + 3.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat1.x);
  u_xlat1.x = ((-(u_xlat24.x) * u_xlat1.x) + 1.0f);
  u_xlat24 = (vs_TEXCOORD1.xy / vs_TEXCOORD1.ww);
  u_xlat2 = vec4f((((-(x_19.x_CameraDepthTexture_TexelSize.xy) * x_4125) + x_4173)).xy, u_xlat2.zw);
  u_xlat24 = min(u_xlat24, u_xlat2.xy);
  u_xlat24 = (u_xlat24 * x_19.x_RTHandleScale.xy);
  u_xlat24 = (u_xlat24 * x_19.x_ScreenSize.xy);
  u_xlatu2 = vec4u(vec2u(u_xlat24).xy, u_xlatu2.zw);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  u_xlat24.x = textureLoad(x_CameraDepthTexture, bitcast<vec2i>(u_xlatu2.xy), bitcast<i32>(u_xlatu2.w)).x;
  u_xlat24.x = ((x_19.x_ZBufferParams.z * u_xlat24.x) + x_19.x_ZBufferParams.w);
  u_xlat24.x = (1.0f / u_xlat24.x);
  u_xlat2.x = -(x_19.hlslcc_mtx4x4unity_MatrixV[0i].z);
  u_xlat2.y = -(x_19.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat2.z = -(x_19.hlslcc_mtx4x4unity_MatrixV[2i].z);
  u_xlat0.x = dot(u_xlat0, u_xlat2.xyz);
  u_xlat0.x = max(u_xlat0.x, 0.00009999999747378752f);
  u_xlat0.x = (u_xlat24.x / u_xlat0.x);
  u_xlat0.x = (-(u_xlat69) + u_xlat0.x);
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

