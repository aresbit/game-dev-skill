//Packages/com.unity.render-pipelines.universal/Shaders/Terrain/TerrainLit.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

struct TerrainArray_Type {
  /* @offset(0) */
  x_TerrainPatchInstanceData : vec4f,
}

alias Arr = array<TerrainArray_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_Terrain {
  /* @offset(0) */
  TerrainArray : Arr,
}

struct x_Terrain {
  /* @offset(0) */
  Xhlslcc_UnusedX_NormalScale0 : f32,
  /* @offset(4) */
  Xhlslcc_UnusedX_NormalScale1 : f32,
  /* @offset(8) */
  Xhlslcc_UnusedX_NormalScale2 : f32,
  /* @offset(12) */
  Xhlslcc_UnusedX_NormalScale3 : f32,
  /* @offset(16) */
  Xhlslcc_UnusedX_Metallic0 : f32,
  /* @offset(20) */
  Xhlslcc_UnusedX_Metallic1 : f32,
  /* @offset(24) */
  Xhlslcc_UnusedX_Metallic2 : f32,
  /* @offset(28) */
  Xhlslcc_UnusedX_Metallic3 : f32,
  /* @offset(32) */
  Xhlslcc_UnusedX_Smoothness0 : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_Smoothness1 : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_Smoothness2 : f32,
  /* @offset(44) */
  Xhlslcc_UnusedX_Smoothness3 : f32,
  /* @offset(48) */
  Xhlslcc_UnusedX_DiffuseRemapScale0 : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_DiffuseRemapScale1 : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_DiffuseRemapScale2 : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_DiffuseRemapScale3 : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_MaskMapRemapOffset0 : vec4f,
  /* @offset(128) */
  Xhlslcc_UnusedX_MaskMapRemapOffset1 : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedX_MaskMapRemapOffset2 : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedX_MaskMapRemapOffset3 : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedX_MaskMapRemapScale0 : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedX_MaskMapRemapScale1 : vec4f,
  /* @offset(208) */
  Xhlslcc_UnusedX_MaskMapRemapScale2 : vec4f,
  /* @offset(224) */
  Xhlslcc_UnusedX_MaskMapRemapScale3 : vec4f,
  /* @offset(240) */
  Xhlslcc_UnusedX_Control_ST : vec4f,
  /* @offset(256) */
  Xhlslcc_UnusedX_Control_TexelSize : vec4f,
  /* @offset(272) */
  Xhlslcc_UnusedX_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  Xhlslcc_UnusedX_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  Xhlslcc_UnusedX_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  Xhlslcc_UnusedX_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  Xhlslcc_UnusedX_LayerHasMask0 : f32,
  /* @offset(292) */
  Xhlslcc_UnusedX_LayerHasMask1 : f32,
  /* @offset(296) */
  Xhlslcc_UnusedX_LayerHasMask2 : f32,
  /* @offset(300) */
  Xhlslcc_UnusedX_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4f,
  /* @offset(320) */
  x_Splat1_ST : vec4f,
  /* @offset(336) */
  x_Splat2_ST : vec4f,
  /* @offset(352) */
  x_Splat3_ST : vec4f,
  /* @offset(368) */
  Xhlslcc_UnusedX_HeightTransition : f32,
  /* @offset(372) */
  Xhlslcc_UnusedX_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4f,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4f,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 2u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr_1,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_2,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  unity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_3,
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
  unity_LightmapST : vec4f,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_4,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_5,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_6,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_7,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(10) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4f;

@group(1) @binding(11) var<uniform> x_35 : UnityInstancing_Terrain;

@group(1) @binding(6) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4f;

@group(1) @binding(5) var<uniform> x_74 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

@group(0) @binding(33) var x_TerrainHeightmapTexture : texture_2d<f32>;

@group(0) @binding(34) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(1) @binding(9) var<uniform> x_267 : VGlobals;

var<private> vs_TEXCOORD3 : vec4f;

var<private> vs_TEXCOORD4 : vec4f;

var<private> vs_TEXCOORD5 : vec4f;

var<private> vs_TEXCOORD7 : vec3f;

var<private> vs_TEXCOORD6 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat4 : vec2f;
  var u_xlat0 : vec4f;
  var u_xlat8 : vec2f;
  var u_xlatu1 : vec4u;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec3f;
  var u_xlat12 : f32;
  var u_xlatb12 : bool;
  var x_291 : f32;
  var u_xlat3 : vec3f;
  var u_xlat9 : vec2f;
  var u_xlat5 : vec3f;
  var u_xlat13 : f32;
  var x_400 : f32;
  var x_412 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlati0 = (gl_InstanceIndex + x_14.unity_BaseInstanceID);
  u_xlat4 = (in_POSITION0.xy + x_35.TerrainArray[u_xlati0].x_TerrainPatchInstanceData.xy);
  u_xlat0 = vec4f(((u_xlat4 * x_35.TerrainArray[u_xlati0].x_TerrainPatchInstanceData.zz)).xy, u_xlat0.zw);
  u_xlat8 = (u_xlat0.xy * x_57.x_TerrainHeightmapRecipSize.zw);
  vs_TEXCOORD0 = vec4f(vs_TEXCOORD0.xy, (((u_xlat8 * x_74.unity_LightmapST.xy) + x_74.unity_LightmapST.zw)).xy);
  vs_TEXCOORD0 = vec4f(u_xlat8.xy, vs_TEXCOORD0.zw);
  vs_TEXCOORD1 = vec4f((((u_xlat8 * x_57.x_Splat0_ST.xy) + x_57.x_Splat0_ST.zw)).xy, vs_TEXCOORD1.zw);
  vs_TEXCOORD1 = vec4f(vs_TEXCOORD1.xy, (((u_xlat8 * x_57.x_Splat1_ST.xy) + x_57.x_Splat1_ST.zw)).xy);
  vs_TEXCOORD2 = vec4f((((u_xlat8 * x_57.x_Splat2_ST.xy) + x_57.x_Splat2_ST.zw)).xy, vs_TEXCOORD2.zw);
  vs_TEXCOORD2 = vec4f(vs_TEXCOORD2.xy, (((u_xlat8 * x_57.x_Splat3_ST.xy) + x_57.x_Splat3_ST.zw)).xy);
  u_xlatu1 = vec4u(bitcast<vec2u>(vec2i(u_xlat0.xy)).xy, u_xlatu1.zw);
  u_xlat0 = vec4f(((u_xlat0.xy * x_57.x_TerrainHeightmapScale.xz)).xy, u_xlat0.zw);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  u_xlat8 = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2i>(u_xlatu1.xy), bitcast<i32>(u_xlatu1.w)).xy;
  u_xlat1 = vec4f(textureLoad(x_TerrainNormalmapTexture, bitcast<vec2i>(u_xlatu1.xy), bitcast<i32>(u_xlatu1.w)).xyz.xyz, u_xlat1.w);
  u_xlat1 = ((u_xlat1.zxyz * vec4f(2.0f)) + vec4f(-1.0f));
  u_xlat8.x = ((u_xlat8.y * 256.0f) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * x_57.x_TerrainHeightmapScale.y);
  u_xlat8.x = (u_xlat8.x * 0.00389105058275163174f);
  u_xlat2 = (u_xlat8.xxx * x_74.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  let x_236 = ((x_74.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * u_xlat0.xxx) + u_xlat2);
  u_xlat0 = vec4f(x_236.x, u_xlat0.y, x_236.yz);
  u_xlat0 = vec4f((((x_74.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * u_xlat0.yyy) + u_xlat0.xzw)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_74.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat2 = (-(u_xlat0.xyz) + x_267.x_WorldSpaceCameraPos);
  u_xlat12 = dot(u_xlat2, u_xlat2);
  u_xlat12 = inverseSqrt(u_xlat12);
  u_xlat2 = (vec3f(u_xlat12) * u_xlat2);
  u_xlatb12 = (x_267.unity_OrthoParams.w == 0.0f);
  if (u_xlatb12) {
    x_291 = u_xlat2.x;
  } else {
    x_291 = x_267.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.w = x_291;
  u_xlat3 = (u_xlat1.zzz * x_74.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat3 = ((x_74.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * u_xlat1.yyy) + u_xlat3);
  u_xlat3 = ((x_74.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * u_xlat1.www) + u_xlat3);
  u_xlat2.x = dot(u_xlat3, u_xlat3);
  u_xlat2.x = max(u_xlat2.x, 1.17549435e-38f);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  u_xlat3 = (u_xlat2.xxx * u_xlat3);
  vs_TEXCOORD3 = vec4f(u_xlat3.xyz, vs_TEXCOORD3.w);
  u_xlat9 = (u_xlat1.zw * vec2f(1.0f, 0.0f));
  u_xlat1 = vec4f((((u_xlat1.xy * vec2f(0.0f, 1.0f)) + -(u_xlat9))).xy, u_xlat1.zw);
  u_xlat5 = (u_xlat1.yyy * x_74.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat1 = vec4f((((x_74.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * u_xlat1.xxx) + u_xlat5)).xyz, u_xlat1.w);
  u_xlat13 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat13 = max(u_xlat13, 1.17549435e-38f);
  u_xlat13 = inverseSqrt(u_xlat13);
  u_xlat1 = vec4f(((vec3f(u_xlat13) * u_xlat1.xyz)).xyz, u_xlat1.w);
  vs_TEXCOORD4 = vec4f(u_xlat1.xyz.xyz, vs_TEXCOORD4.w);
  if (u_xlatb12) {
    x_400 = u_xlat2.y;
  } else {
    x_400 = x_267.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD4.w = x_400;
  if (u_xlatb12) {
    x_412 = u_xlat2.z;
  } else {
    x_412 = x_267.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD5.w = x_412;
  u_xlat2 = (u_xlat1.yzx * u_xlat3.zxy);
  u_xlat1 = vec4f((((u_xlat3.yzx * u_xlat1.zxy) + -(u_xlat2))).xyz, u_xlat1.w);
  u_xlatb12 = (x_74.unity_WorldTransformParams.w >= 0.0f);
  u_xlat12 = select(-1.0f, 1.0f, u_xlatb12);
  vs_TEXCOORD5 = vec4f(((vec3f(u_xlat12) * u_xlat1.xyz)).xyz, vs_TEXCOORD5.w);
  vs_TEXCOORD7 = u_xlat0.xyz;
  vs_TEXCOORD6 = 0.0f;
  u_xlat1 = (u_xlat0.yyyy * x_267.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_267.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat0 = ((x_267.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat0 + x_267.hlslcc_mtx4x4unity_MatrixVP[3i]);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec4f,
  @location(2)
  vs_TEXCOORD2_1 : vec4f,
  @location(3)
  vs_TEXCOORD3_1 : vec4f,
  @location(4)
  vs_TEXCOORD4_1 : vec4f,
  @location(5)
  vs_TEXCOORD5_1 : vec4f,
  @location(6)
  vs_TEXCOORD7_1 : vec3f,
  @location(7)
  vs_TEXCOORD6_1 : f32,
  @builtin(position)
  gl_Position : vec4f,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4f) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, vs_TEXCOORD6, gl_Position);
}


override UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
//Packages/com.unity.render-pipelines.universal/Shaders/Terrain/TerrainLit.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_MainLightLayerMask : u32,
  /* @offset(96) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(112) */
  x_FPParams0 : vec4f,
  /* @offset(128) */
  x_FPParams1 : vec4f,
  /* @offset(144) */
  x_FPParams2 : vec4f,
  /* @offset(160) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(176) */
  x_ProjectionParams : vec4f,
  /* @offset(192) */
  unity_OrthoParams : vec4f,
  /* @offset(208) */
  x_ScaleBiasRt : vec4f,
  /* @offset(224) */
  unity_FogParams : vec4f,
  /* @offset(240) */
  unity_FogColor : vec4f,
  /* @offset(256) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4f,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4f,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4f,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4f,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4f,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4f,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4f,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4f,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4f,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4f,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4f,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4f,
  /* @offset(240) */
  Xhlslcc_UnusedX_Control_ST : vec4f,
  /* @offset(256) */
  x_Control_TexelSize : vec4f,
  /* @offset(272) */
  Xhlslcc_UnusedX_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  Xhlslcc_UnusedX_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  Xhlslcc_UnusedX_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  Xhlslcc_UnusedX_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  Xhlslcc_UnusedX_Splat0_ST : vec4f,
  /* @offset(320) */
  Xhlslcc_UnusedX_Splat1_ST : vec4f,
  /* @offset(336) */
  Xhlslcc_UnusedX_Splat2_ST : vec4f,
  /* @offset(352) */
  Xhlslcc_UnusedX_Splat3_ST : vec4f,
  /* @offset(368) */
  Xhlslcc_UnusedX_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  Xhlslcc_UnusedX_TerrainHeightmapRecipSize : vec4f,
  /* @offset(400) */
  Xhlslcc_UnusedX_TerrainHeightmapScale : vec4f,
}

alias Arr_1 = array<vec4f, 20u>;

alias Arr_2 = array<vec4f, 32u>;

alias Arr_3 = array<vec4f, 128u>;

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
  x_AdditionalShadowOffset0 : vec4f,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4f,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4f,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4f,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_2,
  /* @offset(1040) */
  hlslcc_mtx4x4_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 128u>;

alias Arr_6 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToLight : Arr_4,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  hlslcc_mtx4x4_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_6,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

alias Arr_15 = array<vec4f, 4u>;

alias Arr_16 = array<vec4f, 4u>;

alias Arr_17 = array<vec4f, 2u>;

alias Arr_18 = array<vec4f, 4u>;

alias Arr_19 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_15,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_16,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  unity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_17,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_18,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_19,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_20 = array<vec4f, 32u>;

alias Arr_21 = array<vec4f, 32u>;

alias Arr_22 = array<vec4f, 32u>;

alias Arr_23 = array<vec4f, 32u>;

alias Arr_24 = array<vec4f, 32u>;

alias Arr_25 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_20,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_21,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_22,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_23,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_24,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_25,
}

var<private> gl_FragCoord : vec4f;

@group(0) @binding(17) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(30) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4f;

@group(1) @binding(0) var<uniform> x_93 : PGlobals;

@group(0) @binding(13) var x_Mask0 : texture_2d<f32>;

@group(0) @binding(29) var sampler_Mask0 : sampler;

var<private> vs_TEXCOORD1 : vec4f;

@group(1) @binding(6) var<uniform> x_136 : x_Terrain;

@group(0) @binding(14) var x_Mask1 : texture_2d<f32>;

@group(0) @binding(15) var x_Mask2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4f;

@group(0) @binding(16) var x_Mask3 : texture_2d<f32>;

@group(0) @binding(4) var x_Control : texture_2d<f32>;

@group(0) @binding(26) var sampler_Control : sampler;

@group(0) @binding(5) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(27) var sampler_Splat0 : sampler;

@group(0) @binding(6) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(7) var x_Splat2 : texture_2d<f32>;

@group(0) @binding(8) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(28) var sampler_Normal0 : sampler;

@group(0) @binding(10) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(12) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4f;

var<private> vs_TEXCOORD4 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

var<private> vs_TEXCOORD7 : vec3f;

@group(1) @binding(7) var<uniform> x_1045 : LightShadows;

@group(0) @binding(2) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(25) var samplerunity_Lightmap : sampler;

@group(0) @binding(3) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(18) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_LinearClamp : sampler;

@group(0) @binding(19) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(31) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(8) var<uniform> x_2740 : LightCookies;

@group(0) @binding(21) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(32) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_3067 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_3324 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_3571 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(24) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(5) var<uniform> x_3872 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_4071 : AdditionalLights;

@group(0) @binding(20) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(0) @binding(22) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4f;

fn int_bitfieldExtract_i1_i1_i1_(value : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var x_30 : i32;
  let x_22 = *(value);
  let x_23 = *(offset_1);
  if (((*(offset_1) + *(bits)) < 32i)) {
    x_30 = *(bits);
  } else {
    x_30 = (32i - *(offset_1));
  }
  let x_37 = x_30;
  return extractBits(x_22, u32(x_23), u32(x_37));
}

fn uint_bitfieldExtract_u1_i1_i1_(value_1 : ptr<function, u32>, offset_2 : ptr<function, i32>, bits_1 : ptr<function, i32>) -> u32 {
  let x_41 = *(value_1);
  let x_42 = *(offset_2);
  let x_46 = *(bits_1);
  return ((x_41 >> bitcast<u32>(x_42)) & bitcast<u32>(~((-1i << bitcast<u32>(x_46)))));
}

const x_132 = vec3f(-0.5f);

const x_144 = vec3f(0.5f);

const x_314 = vec2f(-1.0f);

const x_323 = vec2f(0.5f);

const x_347 = vec4f(1.0f);

const x_594 = vec2f(2.0f);

const x_1243 = vec2f(1.0f);

const x_1505 = vec4f(0.25f);

const x_1543 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1553 = vec2f(0.07999999821186065674f);

const x_1603 = vec2f(0.15999999642372131348f);

const x_1670 = vec3f(-2.5f, -0.5f, 1.5f);

const x_2003 = vec2f(0.04081600159406661987f);

const x_2060 = vec3f(0.08163200318813323975f);

const x_2066 = vec2f(0.08163200318813323975f);

const x_2076 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_2079 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_2086 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_2124 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2816 = vec4f(0.0f, 1.0f, 0.0f, 0.0f);

const x_3137 = vec3f(1.0f);

const x_3285 = vec2u(2u);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlatb0 : bool;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec4f;
  var u_xlat90 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlatb91 : bool;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat91 : f32;
  var u_xlat60 : f32;
  var u_xlat30 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu91 : u32;
  var u_xlati91 : i32;
  var u_xlat92 : f32;
  var u_xlat33 : f32;
  var u_xlat93 : f32;
  var u_xlat94 : f32;
  var u_xlat95 : f32;
  var u_xlatb94 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb96 : bool;
  var u_xlat67 : vec2f;
  var u_xlat69 : vec2f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat96 : f32;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat37 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat38 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat39 : vec2f;
  var u_xlat75 : vec2f;
  var u_xlat70 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
  var u_xlat20 : vec4f;
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
  var u_xlatb32 : vec2<bool>;
  var u_xlatb62 : bool;
  var x_2691 : f32;
  var u_xlat32 : f32;
  var u_xlat62 : f32;
  var u_xlatb9 : vec2<bool>;
  var x_2821 : f32;
  var x_2832 : vec3f;
  var u_xlatu3 : vec3u;
  var u_xlatu11 : vec2u;
  var u_xlati3 : i32;
  var u_xlat63 : f32;
  var u_xlatu63 : u32;
  var u_xlatu94 : u32;
  var u_xlati96 : i32;
  var u_xlatu7 : vec4u;
  var u_xlati7 : vec4i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati11 : vec3i;
  var u_xlati71 : vec2i;
  var u_xlati63 : i32;
  var u_xlatb41 : vec2<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_3169 : f32;
  var x_3182 : f32;
  var u_xlatu12 : vec4u;
  var u_xlati72 : i32;
  var u_xlatu97 : u32;
  var u_xlati98 : i32;
  var u_xlatu99 : u32;
  var u_xlatb100 : bool;
  var u_xlatu71 : vec2u;
  var u_xlatb71 : bool;
  var u_xlatu100 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu14 : vec4u;
  var u_xlati14 : vec4i;
  var param_9 : i32;
  var param_10 : i32;
  var param_11 : i32;
  var param_12 : i32;
  var param_13 : i32;
  var param_14 : i32;
  var param_15 : i32;
  var param_16 : i32;
  var param_17 : i32;
  var param_18 : i32;
  var param_19 : i32;
  var param_20 : i32;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec4i;
  var u_xlati75 : vec2i;
  var u_xlati103 : i32;
  var u_xlati101 : i32;
  var u_xlati100 : i32;
  var u_xlatb97 : bool;
  var u_xlati97 : i32;
  var u_xlat97 : f32;
  var u_xlat100 : f32;
  var u_xlat71 : f32;
  var u_xlat101 : f32;
  var u_xlat103 : f32;
  var u_xlatu101 : u32;
  var u_xlatu103 : u32;
  var u_xlatb63 : bool;
  var u_xlati60 : i32;
  var x_4008 : vec3f;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatb7 : bool;
  var u_xlatb13 : vec4<bool>;
  var u_xlat98 : f32;
  var x_4229 : f32;
  var x_4238 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var u_xlat74 : vec2f;
  var u_xlat76 : vec2f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat99 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat45 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat24 : vec4f;
  var u_xlat46 : vec2f;
  var u_xlat82 : vec2f;
  var u_xlat77 : vec2f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec4f;
  var u_xlat27 : vec4f;
  var txVec43 : vec3f;
  var txVec44 : vec3f;
  var txVec45 : vec3f;
  var txVec46 : vec3f;
  var txVec47 : vec3f;
  var txVec48 : vec3f;
  var txVec49 : vec3f;
  var txVec50 : vec3f;
  var txVec51 : vec3f;
  var txVec52 : vec3f;
  var txVec53 : vec3f;
  var txVec54 : vec3f;
  var txVec55 : vec3f;
  var txVec56 : vec3f;
  var txVec57 : vec3f;
  var txVec58 : vec3f;
  var txVec59 : vec3f;
  var u_xlatb98 : bool;
  var x_5499 : f32;
  var u_xlati99 : i32;
  var u_xlat73 : vec2f;
  var u_xlatb73 : vec2<bool>;
  var x_5779 : f32;
  var x_5792 : f32;
  var x_5841 : f32;
  var x_5852 : vec3f;
  var x_6006 : vec3f;
  var u_xlati33 : vec2i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlatu33 : u32;
  var u_xlatu96 : u32;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlatu13 : vec4u;
  var u_xlati13 : vec4i;
  var param_30 : i32;
  var param_31 : i32;
  var param_32 : i32;
  var param_33 : i32;
  var param_34 : i32;
  var param_35 : i32;
  var param_36 : i32;
  var param_37 : i32;
  var param_38 : i32;
  var param_39 : i32;
  var param_40 : i32;
  var param_41 : i32;
  var u_xlati74 : vec2i;
  var u_xlatb15 : vec4<bool>;
  var x_6558 : f32;
  var x_6567 : f32;
  var txVec60 : vec3f;
  var txVec61 : vec3f;
  var txVec62 : vec3f;
  var txVec63 : vec3f;
  var u_xlat78 : vec2f;
  var txVec64 : vec3f;
  var txVec65 : vec3f;
  var txVec66 : vec3f;
  var txVec67 : vec3f;
  var txVec68 : vec3f;
  var txVec69 : vec3f;
  var txVec70 : vec3f;
  var txVec71 : vec3f;
  var txVec72 : vec3f;
  var u_xlat47 : vec3f;
  var u_xlat48 : vec2f;
  var u_xlat84 : vec2f;
  var u_xlat79 : vec2f;
  var u_xlat28 : vec4f;
  var u_xlat29 : vec4f;
  var txVec73 : vec3f;
  var txVec74 : vec3f;
  var txVec75 : vec3f;
  var txVec76 : vec3f;
  var txVec77 : vec3f;
  var txVec78 : vec3f;
  var txVec79 : vec3f;
  var txVec80 : vec3f;
  var txVec81 : vec3f;
  var txVec82 : vec3f;
  var txVec83 : vec3f;
  var txVec84 : vec3f;
  var txVec85 : vec3f;
  var txVec86 : vec3f;
  var txVec87 : vec3f;
  var txVec88 : vec3f;
  var txVec89 : vec3f;
  var u_xlatb99 : bool;
  var u_xlatb75 : vec2<bool>;
  var x_8074 : f32;
  var x_8087 : f32;
  var x_8135 : f32;
  var x_8146 : vec3f;
  var x_8306 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  let x_87 = vs_TEXCOORD0;
  let x_98 = x_93.x_GlobalMipBias.x;
  let x_99 = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, x_87.xy, x_98);
  u_xlat0.x = x_99.x;
  u_xlatb0 = (u_xlat0.x < 0.00050000002374872565f);
  if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
    discard;
  }
  let x_124 = vs_TEXCOORD1;
  let x_127 = x_93.x_GlobalMipBias.x;
  let x_128 = textureSampleBias(x_Mask0, sampler_Mask0, x_124.xy, x_127);
  u_xlat0 = x_128.xyw;
  u_xlat0 = (u_xlat0 + x_132);
  u_xlat0 = ((vec3f(x_136.x_LayerHasMask0) * u_xlat0) + x_144);
  let x_151 = vs_TEXCOORD1;
  let x_154 = x_93.x_GlobalMipBias.x;
  let x_155 = textureSampleBias(x_Mask1, sampler_Mask0, x_151.zw, x_154);
  u_xlat1 = vec4f(x_155.xyw.xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + x_132)).xyz, u_xlat1.w);
  let x_171 = vec3f(x_136.x_LayerHasMask1, x_136.x_LayerHasMask1, x_136.x_LayerHasMask1);
  u_xlat1 = vec4f((((vec3f(x_171.x, x_171.y, x_171.z) * u_xlat1.xyz) + x_144)).xyz, u_xlat1.w);
  let x_188 = vs_TEXCOORD2;
  let x_191 = x_93.x_GlobalMipBias.x;
  let x_192 = textureSampleBias(x_Mask2, sampler_Mask0, x_188.xy, x_191);
  u_xlat2 = vec4f(x_192.xyw.xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + x_132)).xyz, u_xlat2.w);
  let x_207 = vec3f(x_136.x_LayerHasMask2, x_136.x_LayerHasMask2, x_136.x_LayerHasMask2);
  u_xlat2 = vec4f((((vec3f(x_207.x, x_207.y, x_207.z) * u_xlat2.xyz) + x_144)).xyz, u_xlat2.w);
  let x_223 = vs_TEXCOORD2;
  let x_226 = x_93.x_GlobalMipBias.x;
  let x_227 = textureSampleBias(x_Mask3, sampler_Mask0, x_223.zw, x_226);
  u_xlat3 = vec4f(x_227.xyw.xyz, u_xlat3.w);
  u_xlat3 = vec4f(((u_xlat3.xyz + x_132)).xyz, u_xlat3.w);
  let x_243 = vec3f(x_136.x_LayerHasMask3, x_136.x_LayerHasMask3, x_136.x_LayerHasMask3);
  u_xlat3 = vec4f((((vec3f(x_243.x, x_243.y, x_243.z) * u_xlat3.xyz) + x_144)).xyz, u_xlat3.w);
  u_xlat0 = ((u_xlat0 * x_136.x_MaskMapRemapScale0.xyw) + x_136.x_MaskMapRemapOffset0.xyw);
  u_xlat1 = vec4f((((u_xlat1.xyz * x_136.x_MaskMapRemapScale1.xyw) + x_136.x_MaskMapRemapOffset1.xyw)).xyz, u_xlat1.w);
  u_xlat2 = vec4f((((u_xlat2.xyz * x_136.x_MaskMapRemapScale2.xyw) + x_136.x_MaskMapRemapOffset2.xyw)).xyz, u_xlat2.w);
  let x_305 = ((u_xlat3.xzy * x_136.x_MaskMapRemapScale3.xwy) + x_136.x_MaskMapRemapOffset3.xwy);
  u_xlat3 = vec4f(x_305.xy, u_xlat3.z, x_305.z);
  u_xlat4 = vec4f(((x_136.x_Control_TexelSize.zw + x_314)).xy, u_xlat4.zw);
  u_xlat4 = vec4f((((vs_TEXCOORD0.xy * u_xlat4.xy) + x_323)).xy, u_xlat4.zw);
  u_xlat4 = vec4f(((u_xlat4.xy * x_136.x_Control_TexelSize.xy)).xy, u_xlat4.zw);
  let x_340 = u_xlat4;
  let x_343 = x_93.x_GlobalMipBias.x;
  let x_344 = textureSampleBias(x_Control, sampler_Control, x_340.xy, x_343);
  u_xlat4 = x_344;
  u_xlat90 = dot(u_xlat4, x_347);
  let x_355 = vs_TEXCOORD1;
  let x_358 = x_93.x_GlobalMipBias.x;
  let x_359 = textureSampleBias(x_Splat0, sampler_Splat0, x_355.xy, x_358);
  u_xlat5 = x_359;
  let x_365 = vs_TEXCOORD1;
  let x_368 = x_93.x_GlobalMipBias.x;
  let x_369 = textureSampleBias(x_Splat1, sampler_Splat0, x_365.zw, x_368);
  u_xlat6 = x_369;
  let x_375 = vs_TEXCOORD2;
  let x_378 = x_93.x_GlobalMipBias.x;
  let x_379 = textureSampleBias(x_Splat2, sampler_Splat0, x_375.xy, x_378);
  u_xlat7 = x_379;
  let x_385 = vs_TEXCOORD2;
  let x_388 = x_93.x_GlobalMipBias.x;
  let x_389 = textureSampleBias(x_Splat3, sampler_Splat0, x_385.zw, x_388);
  u_xlat8 = x_389;
  u_xlat9.x = u_xlat5.w;
  u_xlat9.y = u_xlat6.w;
  u_xlat9.z = u_xlat7.w;
  u_xlat9.w = u_xlat8.w;
  u_xlat10 = (u_xlat9 * vec4f(x_136.x_Smoothness0, x_136.x_Smoothness1, x_136.x_Smoothness2, x_136.x_Smoothness3));
  u_xlatb91 = (4.0f >= x_136.x_NumLayersCount);
  u_xlat11 = (-(u_xlat4) + x_347);
  u_xlat11 = (u_xlat9 + -(u_xlat11));
  u_xlat11 = (u_xlat11 * vec4f(20.0f));
  u_xlat11 = clamp(u_xlat11, vec4f(0.0f), vec4f(1.0f));
  u_xlat11 = ((u_xlat4 * vec4f(0.00100000004749745131f)) + u_xlat11);
  u_xlat12 = (u_xlat4 + -(u_xlat11));
  u_xlat13.x = (u_xlat12.x * x_136.x_DiffuseRemapScale0.w);
  u_xlat13.y = (u_xlat12.y * x_136.x_DiffuseRemapScale1.w);
  u_xlat13.z = (u_xlat12.z * x_136.x_DiffuseRemapScale2.w);
  u_xlat13.w = (u_xlat12.w * x_136.x_DiffuseRemapScale3.w);
  u_xlat11 = (u_xlat11 + u_xlat13);
  u_xlat4 = select(u_xlat4, u_xlat11, vec4<bool>(u_xlatb91));
  u_xlat91 = dot(u_xlat4, x_347);
  u_xlat91 = (u_xlat91 + 0.00006103515625f);
  u_xlat4 = (u_xlat4 / vec4f(u_xlat91));
  u_xlat11 = vec4f(((u_xlat4.xxx * x_136.x_DiffuseRemapScale0.xyz)).xyz, u_xlat11.w);
  u_xlat12 = vec4f(((u_xlat4.yyy * x_136.x_DiffuseRemapScale1.xyz)).xyz, u_xlat12.w);
  u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat12.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat11.xyz) + u_xlat6.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((u_xlat4.zzz * x_136.x_DiffuseRemapScale2.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat7.xyz * u_xlat6.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((u_xlat4.www * x_136.x_DiffuseRemapScale3.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat8.xyz * u_xlat6.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  let x_577 = vs_TEXCOORD1;
  let x_580 = x_93.x_GlobalMipBias.x;
  let x_581 = textureSampleBias(x_Normal0, sampler_Normal0, x_577.xy, x_580);
  u_xlat6 = vec4f(x_581.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat6 = vec4f((((u_xlat6.xy * x_594) + x_314)).xy, u_xlat6.zw);
  u_xlat91 = dot(u_xlat6.xy, u_xlat6.xy);
  u_xlat91 = min(u_xlat91, 1.0f);
  u_xlat91 = (-(u_xlat91) + 1.0f);
  u_xlat91 = sqrt(u_xlat91);
  u_xlat7.z = max(u_xlat91, 0.0000000000000001f);
  u_xlat7 = vec4f(((u_xlat6.xy * vec2f(x_136.x_NormalScale0))).xy, u_xlat7.zw);
  let x_627 = vs_TEXCOORD1;
  let x_630 = x_93.x_GlobalMipBias.x;
  let x_631 = textureSampleBias(x_Normal1, sampler_Normal0, x_627.zw, x_630);
  u_xlat6 = vec4f(x_631.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat6 = vec4f((((u_xlat6.xy * x_594) + x_314)).xy, u_xlat6.zw);
  u_xlat91 = dot(u_xlat6.xy, u_xlat6.xy);
  u_xlat91 = min(u_xlat91, 1.0f);
  u_xlat91 = (-(u_xlat91) + 1.0f);
  u_xlat91 = sqrt(u_xlat91);
  u_xlat8.z = max(u_xlat91, 0.0000000000000001f);
  let x_668 = vec2f(x_136.x_NormalScale1, x_136.x_NormalScale1);
  u_xlat8 = vec4f(((u_xlat6.xy * vec2f(x_668.x, x_668.y))).xy, u_xlat8.zw);
  u_xlat6 = vec4f(((u_xlat4.yyy * u_xlat8.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat4.xxx * u_xlat7.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_696 = vs_TEXCOORD2;
  let x_699 = x_93.x_GlobalMipBias.x;
  let x_700 = textureSampleBias(x_Normal2, sampler_Normal0, x_696.xy, x_699);
  u_xlat7 = vec4f(x_700.xyw.xyz, u_xlat7.w);
  u_xlat7.x = (u_xlat7.x * u_xlat7.z);
  u_xlat7 = vec4f((((u_xlat7.xy * x_594) + x_314)).xy, u_xlat7.zw);
  u_xlat91 = dot(u_xlat7.xy, u_xlat7.xy);
  u_xlat91 = min(u_xlat91, 1.0f);
  u_xlat91 = (-(u_xlat91) + 1.0f);
  u_xlat91 = sqrt(u_xlat91);
  u_xlat8.z = max(u_xlat91, 0.0000000000000001f);
  let x_737 = vec2f(x_136.x_NormalScale2, x_136.x_NormalScale2);
  u_xlat8 = vec4f(((u_xlat7.xy * vec2f(x_737.x, x_737.y))).xy, u_xlat8.zw);
  u_xlat6 = vec4f((((u_xlat4.zzz * u_xlat8.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_758 = vs_TEXCOORD2;
  let x_761 = x_93.x_GlobalMipBias.x;
  let x_762 = textureSampleBias(x_Normal3, sampler_Normal0, x_758.zw, x_761);
  u_xlat7 = vec4f(x_762.xyw.xyz, u_xlat7.w);
  u_xlat7.x = (u_xlat7.x * u_xlat7.z);
  u_xlat7 = vec4f((((u_xlat7.xy * x_594) + x_314)).xy, u_xlat7.zw);
  u_xlat91 = dot(u_xlat7.xy, u_xlat7.xy);
  u_xlat91 = min(u_xlat91, 1.0f);
  u_xlat91 = (-(u_xlat91) + 1.0f);
  u_xlat91 = sqrt(u_xlat91);
  u_xlat8.z = max(u_xlat91, 0.0000000000000001f);
  let x_800 = vec2f(x_136.x_NormalScale3, x_136.x_NormalScale3);
  u_xlat8 = vec4f(((u_xlat7.xy * vec2f(x_800.x, x_800.y))).xy, u_xlat8.zw);
  u_xlat6 = vec4f((((u_xlat4.www * u_xlat8.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat6.w = (u_xlat6.z + 0.00000999999974737875f);
  u_xlat91 = dot(u_xlat6.xyw, u_xlat6.xyw);
  u_xlat91 = inverseSqrt(u_xlat91);
  u_xlat6 = vec4f(((vec3f(u_xlat91) * u_xlat6.xyw)).xyz, u_xlat6.w);
  u_xlat7.x = x_136.x_MaskMapRemapScale0.y;
  u_xlat7.y = x_136.x_MaskMapRemapScale1.y;
  u_xlat7.z = x_136.x_MaskMapRemapScale2.y;
  u_xlat7.w = x_136.x_MaskMapRemapScale3.y;
  u_xlat8.x = x_136.x_MaskMapRemapOffset0.y;
  u_xlat8.y = x_136.x_MaskMapRemapOffset1.y;
  u_xlat8.z = x_136.x_MaskMapRemapOffset2.y;
  u_xlat8.w = x_136.x_MaskMapRemapOffset3.y;
  u_xlat7 = (u_xlat7 + u_xlat8);
  u_xlat8.x = u_xlat0.z;
  u_xlat8.y = u_xlat1.z;
  u_xlat8.z = u_xlat2.z;
  u_xlat8.w = u_xlat3.y;
  u_xlat8 = ((-(u_xlat9) * vec4f(x_136.x_Smoothness0, x_136.x_Smoothness1, x_136.x_Smoothness2, x_136.x_Smoothness3)) + u_xlat8);
  u_xlat8 = ((vec4f(x_136.x_LayerHasMask0, x_136.x_LayerHasMask1, x_136.x_LayerHasMask2, x_136.x_LayerHasMask3) * u_xlat8) + u_xlat10);
  u_xlat60 = dot(u_xlat4, u_xlat8);
  u_xlat8.x = u_xlat0.x;
  u_xlat8.y = u_xlat1.x;
  u_xlat8.z = u_xlat2.x;
  u_xlat8.w = u_xlat3.x;
  u_xlat8 = (u_xlat8 + -(vec4f(x_136.x_Metallic0, x_136.x_Metallic1, x_136.x_Metallic2, x_136.x_Metallic3)));
  u_xlat8 = ((vec4f(x_136.x_LayerHasMask0, x_136.x_LayerHasMask1, x_136.x_LayerHasMask2, x_136.x_LayerHasMask3) * u_xlat8) + vec4f(x_136.x_Metallic0, x_136.x_Metallic1, x_136.x_Metallic2, x_136.x_Metallic3));
  u_xlat0.x = dot(u_xlat4, u_xlat8);
  u_xlat3.x = u_xlat0.y;
  u_xlat3.y = u_xlat1.y;
  u_xlat3.z = u_xlat2.y;
  u_xlat1 = (-(u_xlat7) + u_xlat3);
  u_xlat1 = ((vec4f(x_136.x_LayerHasMask0, x_136.x_LayerHasMask1, x_136.x_LayerHasMask2, x_136.x_LayerHasMask3) * u_xlat1) + u_xlat7);
  u_xlat30 = dot(u_xlat4, u_xlat1);
  u_xlat1 = vec4f(((u_xlat6.yyy * vs_TEXCOORD5.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat6.xxx * -(vs_TEXCOORD4.xyz)) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat6.zzz * vs_TEXCOORD3.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat91 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat91 = inverseSqrt(u_xlat91);
  u_xlat1 = vec4f(((vec3f(u_xlat91) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((vs_TEXCOORD7 + -(x_1045.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((vs_TEXCOORD7 + -(x_1045.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat3.w);
  u_xlat4 = vec4f(((vs_TEXCOORD7 + -(x_1045.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat4.w);
  u_xlat6 = vec4f(((vs_TEXCOORD7 + -(x_1045.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat6.w);
  u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat2.y = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat2.z = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat2.w = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlatb2 = (u_xlat2 < x_1045.x_CascadeShadowSplitSphereRadii);
  u_xlat3.x = select(0.0f, 1.0f, u_xlatb2.x);
  u_xlat3.y = select(0.0f, 1.0f, u_xlatb2.y);
  u_xlat3.z = select(0.0f, 1.0f, u_xlatb2.z);
  u_xlat3.w = select(0.0f, 1.0f, u_xlatb2.w);
  u_xlat2.x = select(-0.0f, -1.0f, u_xlatb2.x);
  u_xlat2.y = select(-0.0f, -1.0f, u_xlatb2.y);
  u_xlat2.z = select(-0.0f, -1.0f, u_xlatb2.z);
  u_xlat2 = vec4f(((u_xlat2.xyz + u_xlat3.yzw)).xyz, u_xlat2.w);
  u_xlat3 = vec4f(u_xlat3.x, max(u_xlat2.xyz, vec3f()).xyz);
  u_xlat91 = dot(u_xlat3, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat91 = (-(u_xlat91) + 4.0f);
  u_xlatu91 = u32(u_xlat91);
  u_xlati91 = (bitcast<i32>(u_xlatu91) << bitcast<u32>(2i));
  u_xlat2 = vec4f(((vs_TEXCOORD7.yyy * x_1045.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati91 + 1i)].xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_1045.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati91].xyz * vs_TEXCOORD7.xxx) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_1045.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati91 + 2i)].xyz * vs_TEXCOORD7.zzz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + x_1045.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati91 + 3i)].xyz)).xyz, u_xlat2.w);
  u_xlat91 = (vs_TEXCOORD7.y * x_93.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat91 = ((x_93.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD7.x) + u_xlat91);
  u_xlat91 = ((x_93.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD7.z) + u_xlat91);
  u_xlat91 = (u_xlat91 + x_93.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat91 = (-(u_xlat91) + -(x_93.x_ProjectionParams.y));
  u_xlat91 = max(u_xlat91, 0.0f);
  u_xlat91 = (u_xlat91 * x_93.unity_FogParams.x);
  let x_1246 = x_93.x_ScaledScreenParams.xy;
  u_xlat3 = vec4f(((x_1243 / vec2f(x_1246.x, x_1246.y))).xy, u_xlat3.zw);
  u_xlat3 = vec4f(((u_xlat3.xy * hlslcc_FragCoord.xy)).xy, u_xlat3.zw);
  u_xlat92 = ((u_xlat3.y * x_93.x_ScaleBiasRt.x) + x_93.x_ScaleBiasRt.y);
  u_xlat3.z = (-(u_xlat92) + 1.0f);
  let x_1278 = vs_TEXCOORD0;
  let x_1281 = x_93.x_GlobalMipBias.x;
  let x_1282 = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1278.zw, x_1281);
  u_xlat4 = vec4f(x_1282.xyz.xyz, u_xlat4.w);
  let x_1290 = vs_TEXCOORD0;
  let x_1293 = x_93.x_GlobalMipBias.x;
  let x_1294 = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1290.zw, x_1293);
  u_xlat6 = x_1294;
  u_xlat6 = vec4f(((u_xlat6.xyz + x_132)).xyz, u_xlat6.w);
  u_xlat92 = dot(u_xlat1.xyz, u_xlat6.xyz);
  u_xlat92 = (u_xlat92 + 0.5f);
  u_xlat4 = vec4f(((vec3f(u_xlat92) * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat92 = max(u_xlat6.w, 0.00009999999747378752f);
  u_xlat4 = vec4f(((u_xlat4.xyz / vec3f(u_xlat92))).xyz, u_xlat4.w);
  u_xlat92 = ((-(u_xlat0.x) * 0.95999997854232788086f) + 0.95999997854232788086f);
  u_xlat33 = (u_xlat60 + -(u_xlat92));
  u_xlat6 = vec4f(((vec3f(u_xlat92) * u_xlat5.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + vec3f(-0.03999999910593032837f))).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat0.xxx * u_xlat5.xyz) + vec3f(0.03999999910593032837f))).xyz, u_xlat5.w);
  u_xlat0.x = (-(u_xlat60) + 1.0f);
  u_xlat60 = (u_xlat0.x * u_xlat0.x);
  u_xlat60 = max(u_xlat60, 0.0078125f);
  u_xlat92 = (u_xlat60 * u_xlat60);
  u_xlat33 = (u_xlat33 + 1.0f);
  u_xlat33 = clamp(u_xlat33, 0.0f, 1.0f);
  u_xlat93 = ((u_xlat60 * 4.0f) + 2.0f);
  let x_1389 = u_xlat3;
  let x_1392 = x_93.x_GlobalMipBias.x;
  let x_1393 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_1389.xz, x_1392);
  u_xlat94 = x_1393.x;
  u_xlat94 = (u_xlat94 + -(x_93.x_AmbientOcclusionParam.x));
  u_xlat94 = (u_xlat94 + 1.0f);
  u_xlat94 = clamp(u_xlat94, 0.0f, 1.0f);
  u_xlat95 = (u_xlat94 + -1.0f);
  u_xlat95 = ((x_93.x_AmbientOcclusionParam.w * u_xlat95) + 1.0f);
  u_xlat30 = min(u_xlat30, u_xlat94);
  u_xlatb94 = (0.0f < x_1045.x_MainLightShadowParams.y);
  if (u_xlatb94) {
    u_xlatb94 = (x_1045.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb94) {
      u_xlat7 = (u_xlat2.xyxy + x_1045.x_MainLightShadowOffset0);
      let x_1435 = u_xlat7.xy;
      txVec0 = vec3f(x_1435.x, x_1435.y, u_xlat2.z);
      u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1455 = u_xlat7.zw;
      txVec1 = vec3f(x_1455.x, x_1455.y, u_xlat2.z);
      u_xlat8.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat7 = (u_xlat2.xyxy + x_1045.x_MainLightShadowOffset1);
      let x_1475 = u_xlat7.xy;
      txVec2 = vec3f(x_1475.x, x_1475.y, u_xlat2.z);
      u_xlat8.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1490 = u_xlat7.zw;
      txVec3 = vec3f(x_1490.x, x_1490.y, u_xlat2.z);
      u_xlat8.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat94 = dot(u_xlat8, x_1505);
    } else {
      u_xlatb96 = (x_1045.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb96) {
        u_xlat7 = vec4f((((u_xlat2.xy * x_1045.x_MainLightShadowmapSize.zw) + x_323)).xy, u_xlat7.zw);
        u_xlat7 = vec4f(floor(u_xlat7.xy).xy, u_xlat7.zw);
        u_xlat67 = ((u_xlat2.xy * x_1045.x_MainLightShadowmapSize.zw) + -(u_xlat7.xy));
        u_xlat8 = (u_xlat67.xxyy + x_1543);
        u_xlat9 = (u_xlat8.xxzz * u_xlat8.xxzz);
        let x_1554 = (u_xlat9.yw * x_1553);
        u_xlat8 = vec4f(x_1554.x, u_xlat8.y, x_1554.y, u_xlat8.w);
        u_xlat9 = vec4f((((u_xlat9.xz * x_323) + -(u_xlat67))).xy, u_xlat9.zw);
        u_xlat69 = (-(u_xlat67) + x_1243);
        u_xlat10 = vec4f(min(u_xlat67, vec2f()).xy, u_xlat10.zw);
        u_xlat10 = vec4f((((-(u_xlat10.xy) * u_xlat10.xy) + u_xlat69)).xy, u_xlat10.zw);
        u_xlat67 = max(u_xlat67, vec2f());
        u_xlat67 = ((-(u_xlat67) * u_xlat67) + u_xlat8.yw);
        u_xlat10 = vec4f(((u_xlat10.xy + x_1243)).xy, u_xlat10.zw);
        u_xlat67 = (u_xlat67 + x_1243);
        u_xlat11 = vec4f(((u_xlat9.xy * x_1603)).xy, u_xlat11.zw);
        u_xlat9 = vec4f(((u_xlat69 * x_1603)).xy, u_xlat9.zw);
        u_xlat10 = vec4f(((u_xlat10.xy * x_1603)).xy, u_xlat10.zw);
        u_xlat12 = vec4f(((u_xlat67 * x_1603)).xy, u_xlat12.zw);
        u_xlat67 = (u_xlat8.yw * x_1603);
        u_xlat11.z = u_xlat10.x;
        u_xlat11.w = u_xlat67.x;
        u_xlat9.z = u_xlat12.x;
        u_xlat9.w = u_xlat8.x;
        u_xlat13 = (u_xlat9.zwxz + u_xlat11.zwxz);
        u_xlat10.z = u_xlat11.y;
        u_xlat10.w = u_xlat67.y;
        u_xlat12.z = u_xlat9.y;
        u_xlat12.w = u_xlat8.z;
        u_xlat8 = vec4f(((u_xlat10.zyw + u_xlat12.zyw)).xyz, u_xlat8.w);
        u_xlat9 = vec4f(((u_xlat9.xzw / u_xlat13.zwy)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat9.xyz + x_1670)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat12.zyw / u_xlat8.xyz)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz + x_1670)).xyz, u_xlat10.w);
        u_xlat9 = vec4f(((u_xlat9.yxz * x_1045.x_MainLightShadowmapSize.xxx)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat10.xyz * x_1045.x_MainLightShadowmapSize.yyy)).xyz, u_xlat10.w);
        u_xlat9.w = u_xlat10.x;
        u_xlat11 = ((u_xlat7.xyxy * x_1045.x_MainLightShadowmapSize.xyxy) + u_xlat9.ywxw);
        u_xlat67 = ((u_xlat7.xy * x_1045.x_MainLightShadowmapSize.xy) + u_xlat9.zw);
        u_xlat10.w = u_xlat9.y;
        let x_1727 = u_xlat10.yz;
        u_xlat9 = vec4f(u_xlat9.x, x_1727.x, u_xlat9.z, x_1727.y);
        u_xlat12 = ((u_xlat7.xyxy * x_1045.x_MainLightShadowmapSize.xyxy) + u_xlat9.xyzy);
        u_xlat10 = ((u_xlat7.xyxy * x_1045.x_MainLightShadowmapSize.xyxy) + u_xlat10.wywz);
        u_xlat9 = ((u_xlat7.xyxy * x_1045.x_MainLightShadowmapSize.xyxy) + u_xlat9.xwzw);
        u_xlat14 = (u_xlat8.xxxy * u_xlat13.zwyz);
        u_xlat15 = (u_xlat8.yyzz * u_xlat13);
        u_xlat96 = (u_xlat8.z * u_xlat13.y);
        let x_1776 = u_xlat11.xy;
        txVec4 = vec3f(x_1776.x, x_1776.y, u_xlat2.z);
        u_xlat7.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1791 = u_xlat11.zw;
        txVec5 = vec3f(x_1791.x, x_1791.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat37 = (u_xlat37 * u_xlat14.y);
        u_xlat7.x = ((u_xlat14.x * u_xlat7.x) + u_xlat37);
        txVec6 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat7.x = ((u_xlat14.z * u_xlat37) + u_xlat7.x);
        let x_1839 = u_xlat10.xy;
        txVec7 = vec3f(x_1839.x, x_1839.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat7.x = ((u_xlat14.w * u_xlat37) + u_xlat7.x);
        let x_1861 = u_xlat12.xy;
        txVec8 = vec3f(x_1861.x, x_1861.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat7.x = ((u_xlat15.x * u_xlat37) + u_xlat7.x);
        let x_1883 = u_xlat12.zw;
        txVec9 = vec3f(x_1883.x, x_1883.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat7.x = ((u_xlat15.y * u_xlat37) + u_xlat7.x);
        let x_1905 = u_xlat10.zw;
        txVec10 = vec3f(x_1905.x, x_1905.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat7.x = ((u_xlat15.z * u_xlat37) + u_xlat7.x);
        let x_1927 = u_xlat9.xy;
        txVec11 = vec3f(x_1927.x, x_1927.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat7.x = ((u_xlat15.w * u_xlat37) + u_xlat7.x);
        let x_1949 = u_xlat9.zw;
        txVec12 = vec3f(x_1949.x, x_1949.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat94 = ((u_xlat96 * u_xlat37) + u_xlat7.x);
      } else {
        u_xlat7 = vec4f((((u_xlat2.xy * x_1045.x_MainLightShadowmapSize.zw) + x_323)).xy, u_xlat7.zw);
        u_xlat7 = vec4f(floor(u_xlat7.xy).xy, u_xlat7.zw);
        u_xlat67 = ((u_xlat2.xy * x_1045.x_MainLightShadowmapSize.zw) + -(u_xlat7.xy));
        u_xlat8 = (u_xlat67.xxyy + x_1543);
        u_xlat9 = (u_xlat8.xxzz * u_xlat8.xxzz);
        let x_2004 = (u_xlat9.yw * x_2003);
        u_xlat10 = vec4f(u_xlat10.x, x_2004.x, u_xlat10.z, x_2004.y);
        let x_2012 = ((u_xlat9.xz * x_323) + -(u_xlat67));
        u_xlat8 = vec4f(x_2012.x, u_xlat8.y, x_2012.y, u_xlat8.w);
        u_xlat9 = vec4f(((-(u_xlat67) + x_1243)).xy, u_xlat9.zw);
        u_xlat69 = min(u_xlat67, vec2f());
        u_xlat9 = vec4f((((-(u_xlat69) * u_xlat69) + u_xlat9.xy)).xy, u_xlat9.zw);
        u_xlat69 = max(u_xlat67, vec2f());
        let x_2040 = ((-(u_xlat69) * u_xlat69) + u_xlat8.yw);
        u_xlat38 = vec3f(x_2040.x, u_xlat38.y, x_2040.y);
        u_xlat9 = vec4f(((u_xlat9.xy + x_594)).xy, u_xlat9.zw);
        let x_2050 = (u_xlat38.xz + x_594);
        u_xlat8 = vec4f(u_xlat8.x, x_2050.x, u_xlat8.z, x_2050.y);
        u_xlat11.z = (u_xlat8.y * 0.08163200318813323975f);
        u_xlat12 = vec4f(((u_xlat8.zxw * x_2060)).xyz, u_xlat12.w);
        u_xlat8 = vec4f(((u_xlat9.xy * x_2066)).xy, u_xlat8.zw);
        u_xlat11.x = u_xlat12.y;
        let x_2080 = ((u_xlat67.xx * x_2076) + x_2079);
        u_xlat11 = vec4f(u_xlat11.x, x_2080.x, u_xlat11.z, x_2080.y);
        let x_2087 = ((u_xlat67.xx * x_2076) + x_2086);
        u_xlat9 = vec4f(x_2087.x, u_xlat9.y, x_2087.y, u_xlat9.w);
        u_xlat9.y = u_xlat8.x;
        u_xlat9.w = u_xlat10.y;
        u_xlat11 = (u_xlat9 + u_xlat11);
        let x_2102 = ((u_xlat67.yy * x_2076) + x_2079);
        u_xlat12 = vec4f(u_xlat12.x, x_2102.x, u_xlat12.z, x_2102.y);
        let x_2108 = ((u_xlat67.yy * x_2076) + x_2086);
        u_xlat10 = vec4f(x_2108.x, u_xlat10.y, x_2108.y, u_xlat10.w);
        u_xlat10.y = u_xlat8.y;
        u_xlat8 = (u_xlat10 + u_xlat12);
        u_xlat9 = (u_xlat9 / u_xlat11);
        u_xlat9 = (u_xlat9 + x_2124);
        u_xlat10 = (u_xlat10 / u_xlat8);
        u_xlat10 = (u_xlat10 + x_2124);
        u_xlat9 = (u_xlat9.wxyz * x_1045.x_MainLightShadowmapSize.xxxx);
        u_xlat10 = (u_xlat10.xwyz * x_1045.x_MainLightShadowmapSize.yyyy);
        let x_2144 = u_xlat9.yzw;
        u_xlat12 = vec4f(x_2144.x, u_xlat12.y, x_2144.yz);
        u_xlat12.y = u_xlat10.x;
        u_xlat13 = ((u_xlat7.xyxy * x_1045.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat67 = ((u_xlat7.xy * x_1045.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat9.y = u_xlat12.y;
        u_xlat12.y = u_xlat10.z;
        u_xlat14 = ((u_xlat7.xyxy * x_1045.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat15 = vec4f((((u_xlat7.xy * x_1045.x_MainLightShadowmapSize.xy) + u_xlat12.wy)).xy, u_xlat15.zw);
        u_xlat9.z = u_xlat12.y;
        u_xlat16 = ((u_xlat7.xyxy * x_1045.x_MainLightShadowmapSize.xyxy) + u_xlat9.xyxz);
        u_xlat12.y = u_xlat10.w;
        u_xlat17 = ((u_xlat7.xyxy * x_1045.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat39 = ((u_xlat7.xy * x_1045.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat9.w = u_xlat12.y;
        u_xlat75 = ((u_xlat7.xy * x_1045.x_MainLightShadowmapSize.xy) + u_xlat9.xw);
        let x_2244 = u_xlat12.xzw;
        u_xlat10 = vec4f(x_2244.x, u_xlat10.y, x_2244.yz);
        u_xlat12 = ((u_xlat7.xyxy * x_1045.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyzy);
        u_xlat70 = ((u_xlat7.xy * x_1045.x_MainLightShadowmapSize.xy) + u_xlat10.wy);
        u_xlat10.x = u_xlat9.x;
        u_xlat7 = vec4f((((u_xlat7.xy * x_1045.x_MainLightShadowmapSize.xy) + u_xlat10.xy)).xy, u_xlat7.zw);
        u_xlat18 = (u_xlat8.xxxx * u_xlat11);
        u_xlat19 = (u_xlat8.yyyy * u_xlat11);
        u_xlat20 = (u_xlat8.zzzz * u_xlat11);
        u_xlat8 = (u_xlat8.wwww * u_xlat11);
        let x_2301 = u_xlat13.xy;
        txVec13 = vec3f(x_2301.x, x_2301.y, u_xlat2.z);
        u_xlat96 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_2315 = u_xlat13.zw;
        txVec14 = vec3f(x_2315.x, x_2315.y, u_xlat2.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat9.x = (u_xlat9.x * u_xlat18.y);
        u_xlat96 = ((u_xlat18.x * u_xlat96) + u_xlat9.x);
        txVec15 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat96 = ((u_xlat18.z * u_xlat67.x) + u_xlat96);
        let x_2364 = u_xlat16.xy;
        txVec16 = vec3f(x_2364.x, x_2364.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat96 = ((u_xlat18.w * u_xlat67.x) + u_xlat96);
        let x_2386 = u_xlat14.xy;
        txVec17 = vec3f(x_2386.x, x_2386.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat96 = ((u_xlat19.x * u_xlat67.x) + u_xlat96);
        let x_2408 = u_xlat14.zw;
        txVec18 = vec3f(x_2408.x, x_2408.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat96 = ((u_xlat19.y * u_xlat67.x) + u_xlat96);
        let x_2430 = u_xlat15.xy;
        txVec19 = vec3f(x_2430.x, x_2430.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat96 = ((u_xlat19.z * u_xlat67.x) + u_xlat96);
        let x_2452 = u_xlat16.zw;
        txVec20 = vec3f(x_2452.x, x_2452.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat96 = ((u_xlat19.w * u_xlat67.x) + u_xlat96);
        let x_2474 = u_xlat17.xy;
        txVec21 = vec3f(x_2474.x, x_2474.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat96 = ((u_xlat20.x * u_xlat67.x) + u_xlat96);
        let x_2496 = u_xlat17.zw;
        txVec22 = vec3f(x_2496.x, x_2496.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat96 = ((u_xlat20.y * u_xlat67.x) + u_xlat96);
        txVec23 = vec3f(u_xlat39.x, u_xlat39.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat96 = ((u_xlat20.z * u_xlat67.x) + u_xlat96);
        txVec24 = vec3f(u_xlat75.x, u_xlat75.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat96 = ((u_xlat20.w * u_xlat67.x) + u_xlat96);
        let x_2560 = u_xlat12.xy;
        txVec25 = vec3f(x_2560.x, x_2560.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat96 = ((u_xlat8.x * u_xlat67.x) + u_xlat96);
        let x_2582 = u_xlat12.zw;
        txVec26 = vec3f(x_2582.x, x_2582.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat96 = ((u_xlat8.y * u_xlat67.x) + u_xlat96);
        txVec27 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat96 = ((u_xlat8.z * u_xlat67.x) + u_xlat96);
        let x_2625 = u_xlat7.xy;
        txVec28 = vec3f(x_2625.x, x_2625.y, u_xlat2.z);
        u_xlat7.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat94 = ((u_xlat8.w * u_xlat7.x) + u_xlat96);
      }
    }
  } else {
    let x_2648 = u_xlat2.xy;
    txVec29 = vec3f(x_2648.x, x_2648.y, u_xlat2.z);
    u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat2.x = (-(x_1045.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat94 * x_1045.x_MainLightShadowParams.x) + u_xlat2.x);
  u_xlatb32.x = (0.0f >= u_xlat2.z);
  u_xlatb62 = (u_xlat2.z >= 1.0f);
  u_xlatb32.x = (u_xlatb62 | u_xlatb32.x);
  if (u_xlatb32.x) {
    x_2691 = 1.0f;
  } else {
    x_2691 = u_xlat2.x;
  }
  u_xlat2.x = x_2691;
  u_xlat7 = vec4f(((vs_TEXCOORD7 + -(x_93.x_WorldSpaceCameraPos))).xyz, u_xlat7.w);
  u_xlat32 = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat62 = ((u_xlat32 * x_1045.x_MainLightShadowParams.z) + x_1045.x_MainLightShadowParams.w);
  u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
  u_xlat94 = (-(u_xlat2.x) + 1.0f);
  u_xlat2.x = ((u_xlat62 * u_xlat94) + u_xlat2.x);
  u_xlatb62 = !((x_2740.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb62) {
    u_xlat8 = vec4f(((vs_TEXCOORD7.yy * x_2740.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy)).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((x_2740.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD7.xx) + u_xlat8.xy)).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((x_2740.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD7.zz) + u_xlat8.xy)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy + x_2740.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy)).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_323) + x_323)).xy, u_xlat8.zw);
    let x_2796 = u_xlat8;
    let x_2799 = x_93.x_GlobalMipBias.x;
    let x_2800 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2796.xy, x_2799);
    u_xlat8 = x_2800;
    let x_2810 = vec4f(x_2740.x_MainLightCookieTextureFormat, x_2740.x_MainLightCookieTextureFormat, x_2740.x_MainLightCookieTextureFormat, x_2740.x_MainLightCookieTextureFormat);
    u_xlatb9 = ((vec4f(x_2810.x, x_2810.y, x_2810.z, x_2810.w) == x_2816)).xy;
    if (u_xlatb9.y) {
      x_2821 = u_xlat8.w;
    } else {
      x_2821 = u_xlat8.x;
    }
    u_xlat62 = x_2821;
    if (u_xlatb9.x) {
      x_2832 = u_xlat8.xyz;
    } else {
      x_2832 = vec3f(u_xlat62);
    }
    u_xlat8 = vec4f(x_2832.xyz, u_xlat8.w);
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
  }
  u_xlat8 = vec4f(((u_xlat8.xyz * x_93.x_MainLightColor.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((vec3f(u_xlat95) * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat9.x = vs_TEXCOORD3.w;
  u_xlat9.y = vs_TEXCOORD4.w;
  u_xlat9.z = vs_TEXCOORD5.w;
  u_xlat62 = dot(-(u_xlat9.xyz), u_xlat1.xyz);
  u_xlat62 = (u_xlat62 + u_xlat62);
  u_xlat10 = vec4f((((u_xlat1.xyz * -(vec3f(u_xlat62))) + -(u_xlat9.xyz))).xyz, u_xlat10.w);
  u_xlat62 = dot(u_xlat1.xyz, u_xlat9.xyz);
  u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
  u_xlat62 = (-(u_xlat62) + 1.0f);
  u_xlat62 = (u_xlat62 * u_xlat62);
  u_xlat62 = (u_xlat62 * u_xlat62);
  u_xlat94 = ((-(u_xlat0.x) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat0.x = (u_xlat0.x * u_xlat94);
  u_xlat0.x = (u_xlat0.x * 6.0f);
  let x_2930 = (u_xlat3.xz * x_93.x_FPParams1.xy);
  u_xlat3 = vec4f(x_2930.x, u_xlat3.y, x_2930.y, u_xlat3.w);
  let x_2939 = vec2u(u_xlat3.xz);
  u_xlatu3 = vec3u(x_2939.x, u_xlatu3.y, x_2939.y);
  u_xlatu11 = vec2u(x_93.x_FPParams1.zw);
  u_xlati3 = ((bitcast<i32>(u_xlatu3.z) * bitcast<i32>(u_xlatu11.x)) + bitcast<i32>(u_xlatu3.x));
  u_xlatu3.x = (u_xlatu11.y * bitcast<u32>(u_xlati3));
  u_xlat12.x = x_93.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat12.y = x_93.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat12.z = x_93.hlslcc_mtx4x4unity_MatrixV[2i].z;
  u_xlat63 = dot(-(u_xlat12.xyz), u_xlat7.xyz);
  u_xlatb94 = (x_93.unity_OrthoParams.w == 0.0f);
  u_xlat96 = log2(u_xlat63);
  u_xlat63 = select(u_xlat63, u_xlat96, u_xlatb94);
  u_xlat63 = ((u_xlat63 * x_93.x_FPParams0.x) + x_93.x_FPParams0.y);
  u_xlatu63 = u32(u_xlat63);
  u_xlatu94 = u32(x_93.x_FPParams2.x);
  u_xlatu94 = (u_xlatu94 + 4294967295u);
  u_xlati96 = (bitcast<i32>(u_xlatu11.y) + 2i);
  u_xlatu63 = min(u_xlatu63, u_xlatu94);
  u_xlatu94 = (bitcast<u32>(u_xlati96) * u_xlatu63);
  u_xlatu7 = vec4u((((vec2u(u_xlatu63) * vec2u(bitcast<u32>(u_xlati96))) + vec2u(1u, 2u))).xy, u_xlatu7.zw);
  u_xlatu63 = (u_xlatu7.x >> 2u);
  param = bitcast<i32>(u_xlatu7.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_3045 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu7.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_3052 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_3054 = vec2i(x_3045, x_3052);
  u_xlati7 = vec4i(x_3054.x, u_xlati7.y, x_3054.y, u_xlati7.w);
  u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_3067.urp_ZBins[bitcast<i32>(u_xlatu63)].wy))).xy, u_xlati11.z);
  let x_3080 = ~(u_xlati7.xz);
  u_xlati7 = vec4i(x_3080.x, u_xlati7.yz, x_3080.y);
  u_xlati71 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_3067.urp_ZBins[bitcast<i32>(u_xlatu63)].zx)));
  u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati71) | bitcast<vec2u>(u_xlati11.xy))).xy, u_xlati11.z);
  u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati11.x)));
  u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati7.w) & bitcast<u32>(u_xlati11.y)));
  u_xlatu3.z = (bitcast<u32>(u_xlati63) | bitcast<u32>(u_xlati96));
  let x_3131 = vec2u(x_93.x_FPParams0.zw);
  u_xlatu7 = vec4u(x_3131.x, u_xlatu7.y, x_3131.y, u_xlatu7.w);
  u_xlat96 = dot(abs(u_xlat10.xyz), x_3137);
  u_xlat96 = max(u_xlat96, 0.00000099999999747524f);
  u_xlat96 = (1.0f / u_xlat96);
  u_xlat11 = vec4f(((vec3f(u_xlat96) * u_xlat10.zxy)).xyz, u_xlat11.w);
  u_xlat11.x = -(u_xlat11.x);
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlatb41 = ((u_xlat11.yzyy >= vec4f())).xy;
  hlslcc_movcTemp = u_xlat11;
  if (u_xlatb41.x) {
    x_3169 = u_xlat11.x;
  } else {
    x_3169 = -(u_xlat11.x);
  }
  hlslcc_movcTemp.x = x_3169;
  if (u_xlatb41.y) {
    x_3182 = u_xlat11.x;
  } else {
    x_3182 = -(u_xlat11.x);
  }
  hlslcc_movcTemp.y = x_3182;
  u_xlat11 = hlslcc_movcTemp;
  u_xlat11 = vec4f((((u_xlat10.xy * vec2f(u_xlat96)) + u_xlat11.xy)).xy, u_xlat11.zw);
  u_xlat11 = vec4f((((u_xlat11.xy * x_323) + x_323)).xy, u_xlat11.zw);
  u_xlat11 = vec4f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.zw);
  u_xlatu12.y = u_xlatu7.y;
  u_xlati72 = 0i;
  let x_3223 = u_xlatu3.xz;
  u_xlatu12 = vec4u(x_3223.x, u_xlatu12.yz, x_3223.y);
  u_xlat13.x = 0.0f;
  u_xlat13.y = 0.0f;
  u_xlat13.z = 0.0f;
  u_xlat96 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu97 = (u_xlatu12.w >> 16u);
    u_xlati98 = u_xlati72;
    u_xlatu99 = u_xlatu12.w;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb100 = (u_xlati98 == 0i);
      u_xlatu71.x = (u_xlatu99 & 65535u);
      u_xlatb71 = (u_xlatu97 >= u_xlatu71.x);
      u_xlatb100 = (u_xlatb100 & u_xlatb71);
      if (!(u_xlatb100)) {
        break;
      }
      param_6 = u_xlatu99;
      param_7 = 5i;
      param_8 = 11i;
      let x_3276 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu100 = x_3276;
      u_xlatu14 = (vec4u(u_xlatu100) + u_xlatu12.xxyy);
      u_xlatu71 = (u_xlatu14.yw >> x_3285);
      param_9 = bitcast<i32>(u_xlatu14.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3294 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu14.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3301 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu14.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3308 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu14.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3315 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati14 = vec4i(x_3294, x_3301, x_3308, x_3315);
      u_xlati15 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_3324.urp_Tiles[bitcast<i32>(u_xlatu71.x)].wy))).xy, u_xlati15.zw);
      u_xlati16 = ~(u_xlati14);
      u_xlati75 = bitcast<vec2i>((bitcast<vec2u>(u_xlati16.xx) & bitcast<vec2u>(x_3324.urp_Tiles[bitcast<i32>(u_xlatu71.x)].zx)));
      u_xlati15 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati75) | bitcast<vec2u>(u_xlati15.xy))).xy, u_xlati15.zw);
      u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati15.x)));
      u_xlati103 = bitcast<i32>((bitcast<u32>(u_xlati16.y) & bitcast<u32>(u_xlati15.y)));
      u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati71.x) | bitcast<u32>(u_xlati103)));
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_3067.urp_ZBins[bitcast<i32>(u_xlatu71.y)].wy))).xy, u_xlati14.zw);
      u_xlati15 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati16.zz) & bitcast<vec2u>(x_3067.urp_ZBins[bitcast<i32>(u_xlatu71.y)].zx))).xy, u_xlati15.zw);
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xy) | bitcast<vec2u>(u_xlati15.xy))).xy, u_xlati14.zw);
      u_xlati101 = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati14.x)));
      u_xlati103 = bitcast<i32>((bitcast<u32>(u_xlati16.w) & bitcast<u32>(u_xlati14.y)));
      u_xlati101 = bitcast<i32>((bitcast<u32>(u_xlati101) | bitcast<u32>(u_xlati103)));
      u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati101) & bitcast<u32>(u_xlati71.x)));
      u_xlati101 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu99) & 31i)));
      u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati101) & bitcast<u32>(u_xlati71.x)));
      u_xlati100 = (bitcast<i32>(u_xlatu100) << bitcast<u32>(5i));
      u_xlatu100 = (u_xlatu97 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati100)))));
      u_xlatu100 = min(u_xlatu100, 31u);
      u_xlatu100 = (bitcast<u32>(-(bitcast<i32>(u_xlatu100))) + 31u);
      u_xlatu100 = (4294967295u >> (u_xlatu100 & 31u));
      u_xlati98 = bitcast<i32>((u_xlatu100 & bitcast<u32>(u_xlati71.x)));
      u_xlati100 = (bitcast<i32>(u_xlatu99) + 32i);
      u_xlatu99 = (bitcast<u32>(u_xlati100) & 4294967264u);
    }
    u_xlatu12.w = u_xlatu99;
    u_xlatb97 = (u_xlati98 != 0i);
    u_xlatb100 = (u_xlat96 < 0.99000000953674316406f);
    u_xlatb97 = (u_xlatb97 & u_xlatb100);
    if (!(u_xlatb97)) {
      break;
    }
    u_xlati97 = (0i - u_xlati98);
    u_xlatu97 = (bitcast<u32>(u_xlati97) & bitcast<u32>(u_xlati98));
    u_xlat97 = f32(u_xlatu97);
    u_xlatu97 = (bitcast<u32>(u_xlat97) >> 23u);
    u_xlati97 = (bitcast<i32>(u_xlatu97) + -127i);
    u_xlati100 = (1i << bitcast<u32>((u_xlati97 & 31i)));
    u_xlati72 = bitcast<i32>((bitcast<u32>(u_xlati98) ^ bitcast<u32>(u_xlati100)));
    u_xlati100 = (bitcast<i32>(u_xlatu12.w) + -32i);
    u_xlati100 = bitcast<i32>((bitcast<u32>(u_xlati100) & 65504u));
    u_xlati97 = (u_xlati97 + u_xlati100);
    u_xlati97 = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati97);
    u_xlat14 = vec4f(((vs_TEXCOORD7 + -(x_3571.urp_ReflProbes_BoxMin[u_xlati97].xyz))).xyz, u_xlat14.w);
    u_xlat15 = vec4f(((-(vs_TEXCOORD7) + x_3571.urp_ReflProbes_BoxMax[u_xlati97].xyz)).xyz, u_xlat15.w);
    u_xlat14 = vec4f(min(u_xlat14.xyz, u_xlat15.xyz).xyz, u_xlat14.w);
    u_xlat14 = vec4f(((u_xlat14.xyz / x_3571.urp_ReflProbes_BoxMax[u_xlati97].www)).xyz, u_xlat14.w);
    u_xlat100 = min(u_xlat14.z, u_xlat14.y);
    u_xlat100 = min(u_xlat100, u_xlat14.x);
    u_xlat100 = clamp(u_xlat100, 0.0f, 1.0f);
    u_xlat71 = (-(u_xlat96) + 1.0f);
    u_xlat100 = min(u_xlat100, u_xlat71);
    u_xlatu71.x = u32(abs(x_3571.urp_ReflProbes_ProbePosition[u_xlati97].w));
    u_xlatu71.x = (u_xlatu71.x + 4294967295u);
    u_xlat71 = f32(u_xlatu71.x);
    u_xlat71 = min(u_xlat0.x, u_xlat71);
    u_xlat101 = floor(u_xlat71);
    u_xlat103 = (u_xlat101 + 1.0f);
    u_xlat71 = (-(u_xlat101) + u_xlat71);
    u_xlatu101 = u32(u_xlat101);
    u_xlati101 = ((u_xlati97 * 7i) + bitcast<i32>(u_xlatu101));
    u_xlatu103 = u32(u_xlat103);
    u_xlati97 = ((u_xlati97 * 7i) + bitcast<i32>(u_xlatu103));
    u_xlat14 = vec4f((((u_xlat11.xy * x_3571.urp_ReflProbes_MipScaleOffset[u_xlati101].xy) + x_3571.urp_ReflProbes_MipScaleOffset[u_xlati101].zw)).xy, u_xlat14.zw);
    u_xlat14 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat14.xy, 0.0f).xyz.xyz, u_xlat14.w);
    u_xlat15 = vec4f((((u_xlat11.xy * x_3571.urp_ReflProbes_MipScaleOffset[u_xlati97].xy) + x_3571.urp_ReflProbes_MipScaleOffset[u_xlati97].zw)).xy, u_xlat15.zw);
    u_xlat15 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat15.xy, 0.0f).xyz.xyz, u_xlat15.w);
    u_xlat15 = vec4f(((-(u_xlat14.xyz) + u_xlat15.xyz)).xyz, u_xlat15.w);
    u_xlat14 = vec4f((((vec3f(u_xlat71) * u_xlat15.xyz) + u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlat13 = vec4f((((vec3f(u_xlat100) * u_xlat14.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat96 = (u_xlat96 + u_xlat100);
  }
  u_xlatb63 = (u_xlat96 < 0.99000000953674316406f);
  if (u_xlatb63) {
    u_xlat10 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xyz, u_xlat0.x);
    u_xlat0.x = (-(u_xlat96) + 1.0f);
    u_xlat63 = (u_xlat10.w + -1.0f);
    u_xlat63 = ((x_93.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat63) + 1.0f);
    u_xlat63 = max(u_xlat63, 0.0f);
    u_xlat63 = log2(u_xlat63);
    u_xlat63 = (u_xlat63 * x_93.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat63 = exp2(u_xlat63);
    u_xlat63 = (u_xlat63 * x_93.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat10 = vec4f(((u_xlat10.xyz * vec3f(u_xlat63))).xyz, u_xlat10.w);
    u_xlat13 = vec4f((((u_xlat0.xxx * u_xlat10.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
  }
  let x_3813 = ((vec2f(u_xlat60) * vec2f(u_xlat60)) + vec2f(-1.0f, 1.0f));
  u_xlat0 = vec3f(x_3813.x, u_xlat0.y, x_3813.y);
  u_xlat60 = (1.0f / u_xlat0.z);
  u_xlat10 = vec4f(((-(u_xlat5.xyz) + vec3f(u_xlat33))).xyz, u_xlat10.w);
  u_xlat10 = vec4f((((vec3f(u_xlat62) * u_xlat10.xyz) + u_xlat5.xyz)).xyz, u_xlat10.w);
  u_xlat10 = vec4f(((vec3f(u_xlat60) * u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat10 = vec4f(((u_xlat10.xyz * u_xlat13.xyz)).xyz, u_xlat10.w);
  u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat6.xyz) + u_xlat10.xyz)).xyz, u_xlat4.w);
  u_xlati60 = bitcast<i32>((x_93.x_MainLightLayerMask & bitcast<u32>(x_3872.unity_RenderingLayer.x)));
  u_xlat62 = dot(u_xlat1.xyz, x_93.x_MainLightPosition.xyz);
  u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
  u_xlat2.x = (u_xlat62 * u_xlat2.x);
  u_xlat8 = vec4f(((u_xlat2.xxx * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat10 = vec4f(((u_xlat9.xyz + x_93.x_MainLightPosition.xyz)).xyz, u_xlat10.w);
  u_xlat2.x = dot(u_xlat10.xyz, u_xlat10.xyz);
  u_xlat2.x = max(u_xlat2.x, 1.17549435e-38f);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  u_xlat10 = vec4f(((u_xlat2.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat2.x = dot(u_xlat1.xyz, u_xlat10.xyz);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat2.z = dot(x_93.x_MainLightPosition.xyz, u_xlat10.xyz);
  u_xlat2.z = clamp(u_xlat2.z, 0.0f, 1.0f);
  let x_3953 = (u_xlat2.xz * u_xlat2.xz);
  u_xlat2 = vec4f(x_3953.x, u_xlat2.y, x_3953.y, u_xlat2.w);
  u_xlat2.x = ((u_xlat2.x * u_xlat0.x) + 1.00001001358032226562f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat62 = max(u_xlat2.z, 0.10000000149011611938f);
  u_xlat2.x = (u_xlat62 * u_xlat2.x);
  u_xlat2.x = (u_xlat93 * u_xlat2.x);
  u_xlat2.x = (u_xlat92 / u_xlat2.x);
  u_xlat10 = vec4f((((u_xlat5.xyz * u_xlat2.xxx) + u_xlat6.xyz)).xyz, u_xlat10.w);
  u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat10.xyz)).xyz, u_xlat8.w);
  if ((u_xlati60 != 0i)) {
    x_4008 = u_xlat8.xyz;
  } else {
    x_4008 = vec3f();
  }
  u_xlat8 = vec4f(x_4008.xyz, u_xlat8.w);
  u_xlatu60 = min(u_xlatu7.z, 32u);
  u_xlat2.x = ((u_xlat32 * x_1045.x_AdditionalShadowFadeParams.x) + x_1045.x_AdditionalShadowFadeParams.y);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_4041 = vec4f(x_2740.x_AdditionalLightsCookieAtlasTextureFormat, x_2740.x_AdditionalLightsCookieAtlasTextureFormat, x_2740.x_AdditionalLightsCookieAtlasTextureFormat, x_2740.x_AdditionalLightsCookieAtlasTextureFormat);
  u_xlatb32 = ((vec4f(x_4041.x, x_4041.y, x_4041.z, x_4041.w) == x_2816)).xy;
  u_xlat10.x = 0.0f;
  u_xlat10.y = 0.0f;
  u_xlat10.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu60)) {
    } else {
      break;
    }
    u_xlat11 = vec4f((((-(vs_TEXCOORD7) * x_4071.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_4071.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat11.w);
    u_xlat63 = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat63 = max(u_xlat63, 0.00006103515625f);
    u_xlat96 = inverseSqrt(u_xlat63);
    u_xlat12 = vec4f(((vec3f(u_xlat96) * u_xlat11.xyz)).xyz, u_xlat12.w);
    u_xlat7.x = (1.0f / u_xlat63);
    u_xlat63 = (u_xlat63 * x_4071.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat63 = ((-(u_xlat63) * u_xlat63) + 1.0f);
    u_xlat63 = max(u_xlat63, 0.0f);
    u_xlat63 = (u_xlat63 * u_xlat63);
    u_xlat63 = (u_xlat63 * u_xlat7.x);
    u_xlat7.x = dot(x_4071.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat12.xyz);
    u_xlat7.x = ((u_xlat7.x * x_4071.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_4071.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat63 = (u_xlat63 * u_xlat7.x);
    u_xlatb7 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati97 = i32(x_1045.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati7.x = select(u_xlati97, -1i, u_xlatb7);
    u_xlatb97 = (u_xlati7.x >= 0i);
    if (u_xlatb97) {
      u_xlatb97 = any(!((vec4f() == vec4f(x_1045.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb97) {
        u_xlatb13 = vec4<bool>(((abs(u_xlat12.zzyz) >= abs(u_xlat12.xyxx))).xyz.xyz, u_xlatb13.w);
        u_xlatb97 = (u_xlatb13.y & u_xlatb13.x);
        let x_4211 = ((-(u_xlat12.zyzx) < vec4f())).xyw;
        u_xlatb13 = vec4<bool>(x_4211.xy, u_xlatb13.z, x_4211.z);
        u_xlat13.x = select(4.0f, 5.0f, u_xlatb13.x);
        u_xlat13.y = select(2.0f, 3.0f, u_xlatb13.y);
        u_xlat98 = select(0.0f, 1.0f, u_xlatb13.w);
        if (u_xlatb13.z) {
          x_4229 = u_xlat13.y;
        } else {
          x_4229 = u_xlat98;
        }
        u_xlat98 = x_4229;
        if (u_xlatb97) {
          x_4238 = u_xlat13.x;
        } else {
          x_4238 = u_xlat98;
        }
        u_xlat97 = x_4238;
        u_xlati97 = i32(u_xlat97);
        u_xlati7.x = (u_xlati97 + u_xlati7.x);
      }
      u_xlati7.x = (u_xlati7.x << bitcast<u32>(2i));
      u_xlat13 = (vs_TEXCOORD7.yyyy * x_1045.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 1i)]);
      u_xlat13 = ((x_1045.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati7.x] * vs_TEXCOORD7.xxxx) + u_xlat13);
      u_xlat13 = ((x_1045.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 2i)] * vs_TEXCOORD7.zzzz) + u_xlat13);
      u_xlat13 = (u_xlat13 + x_1045.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 3i)]);
      u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
      u_xlatb7 = (0.0f < x_1045.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb7) {
        u_xlatb7 = (1.0f == x_1045.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb7) {
          u_xlat14 = (u_xlat13.xyxy + x_1045.x_AdditionalShadowOffset0);
          let x_4321 = u_xlat14.xy;
          txVec30 = vec3f(x_4321.x, x_4321.y, u_xlat13.z);
          u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_4337 = u_xlat14.zw;
          txVec31 = vec3f(x_4337.x, x_4337.y, u_xlat13.z);
          u_xlat15.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat14 = (u_xlat13.xyxy + x_1045.x_AdditionalShadowOffset1);
          let x_4357 = u_xlat14.xy;
          txVec32 = vec3f(x_4357.x, x_4357.y, u_xlat13.z);
          u_xlat15.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_4372 = u_xlat14.zw;
          txVec33 = vec3f(x_4372.x, x_4372.y, u_xlat13.z);
          u_xlat15.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat7.x = dot(u_xlat15, x_1505);
        } else {
          u_xlatb97 = (2.0f == x_1045.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb97) {
            u_xlat14 = vec4f((((u_xlat13.xy * x_1045.x_AdditionalShadowmapSize.zw) + x_323)).xy, u_xlat14.zw);
            u_xlat14 = vec4f(floor(u_xlat14.xy).xy, u_xlat14.zw);
            u_xlat74 = ((u_xlat13.xy * x_1045.x_AdditionalShadowmapSize.zw) + -(u_xlat14.xy));
            u_xlat15 = (u_xlat74.xxyy + x_1543);
            u_xlat16 = (u_xlat15.xxzz * u_xlat15.xxzz);
            let x_4432 = (u_xlat16.yw * x_1553);
            u_xlat15 = vec4f(x_4432.x, u_xlat15.y, x_4432.y, u_xlat15.w);
            u_xlat16 = vec4f((((u_xlat16.xz * x_323) + -(u_xlat74))).xy, u_xlat16.zw);
            u_xlat76 = (-(u_xlat74) + x_1243);
            u_xlat17 = vec4f(min(u_xlat74, vec2f()).xy, u_xlat17.zw);
            u_xlat17 = vec4f((((-(u_xlat17.xy) * u_xlat17.xy) + u_xlat76)).xy, u_xlat17.zw);
            u_xlat74 = max(u_xlat74, vec2f());
            u_xlat74 = ((-(u_xlat74) * u_xlat74) + u_xlat15.yw);
            u_xlat17 = vec4f(((u_xlat17.xy + x_1243)).xy, u_xlat17.zw);
            u_xlat74 = (u_xlat74 + x_1243);
            u_xlat18 = vec4f(((u_xlat16.xy * x_1603)).xy, u_xlat18.zw);
            u_xlat16 = vec4f(((u_xlat76 * x_1603)).xy, u_xlat16.zw);
            u_xlat17 = vec4f(((u_xlat17.xy * x_1603)).xy, u_xlat17.zw);
            u_xlat19 = vec4f(((u_xlat74 * x_1603)).xy, u_xlat19.zw);
            u_xlat74 = (u_xlat15.yw * x_1603);
            u_xlat18.z = u_xlat17.x;
            u_xlat18.w = u_xlat74.x;
            u_xlat16.z = u_xlat19.x;
            u_xlat16.w = u_xlat15.x;
            u_xlat20 = (u_xlat16.zwxz + u_xlat18.zwxz);
            u_xlat17.z = u_xlat18.y;
            u_xlat17.w = u_xlat74.y;
            u_xlat19.z = u_xlat16.y;
            u_xlat19.w = u_xlat15.z;
            u_xlat15 = vec4f(((u_xlat17.zyw + u_xlat19.zyw)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xzw / u_xlat20.zwy)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_1670)).xyz, u_xlat16.w);
            u_xlat17 = vec4f(((u_xlat19.zyw / u_xlat15.xyz)).xyz, u_xlat17.w);
            u_xlat17 = vec4f(((u_xlat17.xyz + x_1670)).xyz, u_xlat17.w);
            u_xlat16 = vec4f(((u_xlat16.yxz * x_1045.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat16.w);
            u_xlat17 = vec4f(((u_xlat17.xyz * x_1045.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat17.w);
            u_xlat16.w = u_xlat17.x;
            u_xlat18 = ((u_xlat14.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat16.ywxw);
            u_xlat74 = ((u_xlat14.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat16.zw);
            u_xlat17.w = u_xlat16.y;
            let x_4599 = u_xlat17.yz;
            u_xlat16 = vec4f(u_xlat16.x, x_4599.x, u_xlat16.z, x_4599.y);
            u_xlat19 = ((u_xlat14.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat17 = ((u_xlat14.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat17.wywz);
            u_xlat16 = ((u_xlat14.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xwzw);
            u_xlat21 = (u_xlat15.xxxy * u_xlat20.zwyz);
            u_xlat22 = (u_xlat15.yyzz * u_xlat20);
            u_xlat97 = (u_xlat15.z * u_xlat20.y);
            let x_4647 = u_xlat18.xy;
            txVec34 = vec3f(x_4647.x, x_4647.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_4661 = u_xlat18.zw;
            txVec35 = vec3f(x_4661.x, x_4661.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat99 = (u_xlat99 * u_xlat21.y);
            u_xlat98 = ((u_xlat21.x * u_xlat98) + u_xlat99);
            txVec36 = vec3f(u_xlat74.x, u_xlat74.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat98 = ((u_xlat21.z * u_xlat99) + u_xlat98);
            let x_4705 = u_xlat17.xy;
            txVec37 = vec3f(x_4705.x, x_4705.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat98 = ((u_xlat21.w * u_xlat99) + u_xlat98);
            let x_4725 = u_xlat19.xy;
            txVec38 = vec3f(x_4725.x, x_4725.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat98 = ((u_xlat22.x * u_xlat99) + u_xlat98);
            let x_4745 = u_xlat19.zw;
            txVec39 = vec3f(x_4745.x, x_4745.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat98 = ((u_xlat22.y * u_xlat99) + u_xlat98);
            let x_4765 = u_xlat17.zw;
            txVec40 = vec3f(x_4765.x, x_4765.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat98 = ((u_xlat22.z * u_xlat99) + u_xlat98);
            let x_4785 = u_xlat16.xy;
            txVec41 = vec3f(x_4785.x, x_4785.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat98 = ((u_xlat22.w * u_xlat99) + u_xlat98);
            let x_4805 = u_xlat16.zw;
            txVec42 = vec3f(x_4805.x, x_4805.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat7.x = ((u_xlat97 * u_xlat99) + u_xlat98);
          } else {
            u_xlat14 = vec4f((((u_xlat13.xy * x_1045.x_AdditionalShadowmapSize.zw) + x_323)).xy, u_xlat14.zw);
            u_xlat14 = vec4f(floor(u_xlat14.xy).xy, u_xlat14.zw);
            u_xlat74 = ((u_xlat13.xy * x_1045.x_AdditionalShadowmapSize.zw) + -(u_xlat14.xy));
            u_xlat15 = (u_xlat74.xxyy + x_1543);
            u_xlat16 = (u_xlat15.xxzz * u_xlat15.xxzz);
            let x_4858 = (u_xlat16.yw * x_2003);
            u_xlat17 = vec4f(u_xlat17.x, x_4858.x, u_xlat17.z, x_4858.y);
            let x_4866 = ((u_xlat16.xz * x_323) + -(u_xlat74));
            u_xlat15 = vec4f(x_4866.x, u_xlat15.y, x_4866.y, u_xlat15.w);
            u_xlat16 = vec4f(((-(u_xlat74) + x_1243)).xy, u_xlat16.zw);
            u_xlat76 = min(u_xlat74, vec2f());
            u_xlat16 = vec4f((((-(u_xlat76) * u_xlat76) + u_xlat16.xy)).xy, u_xlat16.zw);
            u_xlat76 = max(u_xlat74, vec2f());
            let x_4894 = ((-(u_xlat76) * u_xlat76) + u_xlat15.yw);
            u_xlat45 = vec3f(x_4894.x, u_xlat45.y, x_4894.y);
            u_xlat16 = vec4f(((u_xlat16.xy + x_594)).xy, u_xlat16.zw);
            let x_4904 = (u_xlat45.xz + x_594);
            u_xlat15 = vec4f(u_xlat15.x, x_4904.x, u_xlat15.z, x_4904.y);
            u_xlat18.z = (u_xlat15.y * 0.08163200318813323975f);
            u_xlat19 = vec4f(((u_xlat15.zxw * x_2060)).xyz, u_xlat19.w);
            u_xlat15 = vec4f(((u_xlat16.xy * x_2066)).xy, u_xlat15.zw);
            u_xlat18.x = u_xlat19.y;
            let x_4927 = ((u_xlat74.xx * x_2076) + x_2079);
            u_xlat18 = vec4f(u_xlat18.x, x_4927.x, u_xlat18.z, x_4927.y);
            let x_4933 = ((u_xlat74.xx * x_2076) + x_2086);
            u_xlat16 = vec4f(x_4933.x, u_xlat16.y, x_4933.y, u_xlat16.w);
            u_xlat16.y = u_xlat15.x;
            u_xlat16.w = u_xlat17.y;
            u_xlat18 = (u_xlat16 + u_xlat18);
            let x_4948 = ((u_xlat74.yy * x_2076) + x_2079);
            u_xlat19 = vec4f(u_xlat19.x, x_4948.x, u_xlat19.z, x_4948.y);
            let x_4954 = ((u_xlat74.yy * x_2076) + x_2086);
            u_xlat17 = vec4f(x_4954.x, u_xlat17.y, x_4954.y, u_xlat17.w);
            u_xlat17.y = u_xlat15.y;
            u_xlat15 = (u_xlat17 + u_xlat19);
            u_xlat16 = (u_xlat16 / u_xlat18);
            u_xlat16 = (u_xlat16 + x_2124);
            u_xlat17 = (u_xlat17 / u_xlat15);
            u_xlat17 = (u_xlat17 + x_2124);
            u_xlat16 = (u_xlat16.wxyz * x_1045.x_AdditionalShadowmapSize.xxxx);
            u_xlat17 = (u_xlat17.xwyz * x_1045.x_AdditionalShadowmapSize.yyyy);
            let x_4986 = u_xlat16.yzw;
            u_xlat19 = vec4f(x_4986.x, u_xlat19.y, x_4986.yz);
            u_xlat19.y = u_xlat17.x;
            u_xlat20 = ((u_xlat14.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat74 = ((u_xlat14.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat19.wy);
            u_xlat16.y = u_xlat19.y;
            u_xlat19.y = u_xlat17.z;
            u_xlat21 = ((u_xlat14.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat22 = vec4f((((u_xlat14.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat19.wy)).xy, u_xlat22.zw);
            u_xlat16.z = u_xlat19.y;
            u_xlat23 = ((u_xlat14.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyxz);
            u_xlat19.y = u_xlat17.w;
            u_xlat24 = ((u_xlat14.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat46 = ((u_xlat14.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat19.wy);
            u_xlat16.w = u_xlat19.y;
            u_xlat82 = ((u_xlat14.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat16.xw);
            let x_5086 = u_xlat19.xzw;
            u_xlat17 = vec4f(x_5086.x, u_xlat17.y, x_5086.yz);
            u_xlat19 = ((u_xlat14.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyzy);
            u_xlat77 = ((u_xlat14.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat17.wy);
            u_xlat17.x = u_xlat16.x;
            u_xlat14 = vec4f((((u_xlat14.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat17.xy)).xy, u_xlat14.zw);
            u_xlat25 = (u_xlat15.xxxx * u_xlat18);
            u_xlat26 = (u_xlat15.yyyy * u_xlat18);
            u_xlat27 = (u_xlat15.zzzz * u_xlat18);
            u_xlat15 = (u_xlat15.wwww * u_xlat18);
            let x_5143 = u_xlat20.xy;
            txVec43 = vec3f(x_5143.x, x_5143.y, u_xlat13.z);
            u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_5157 = u_xlat20.zw;
            txVec44 = vec3f(x_5157.x, x_5157.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat98 = (u_xlat98 * u_xlat25.y);
            u_xlat97 = ((u_xlat25.x * u_xlat97) + u_xlat98);
            txVec45 = vec3f(u_xlat74.x, u_xlat74.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat97 = ((u_xlat25.z * u_xlat98) + u_xlat97);
            let x_5200 = u_xlat23.xy;
            txVec46 = vec3f(x_5200.x, x_5200.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat97 = ((u_xlat25.w * u_xlat98) + u_xlat97);
            let x_5220 = u_xlat21.xy;
            txVec47 = vec3f(x_5220.x, x_5220.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat97 = ((u_xlat26.x * u_xlat98) + u_xlat97);
            let x_5240 = u_xlat21.zw;
            txVec48 = vec3f(x_5240.x, x_5240.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat97 = ((u_xlat26.y * u_xlat98) + u_xlat97);
            let x_5260 = u_xlat22.xy;
            txVec49 = vec3f(x_5260.x, x_5260.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat97 = ((u_xlat26.z * u_xlat98) + u_xlat97);
            let x_5280 = u_xlat23.zw;
            txVec50 = vec3f(x_5280.x, x_5280.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat97 = ((u_xlat26.w * u_xlat98) + u_xlat97);
            let x_5300 = u_xlat24.xy;
            txVec51 = vec3f(x_5300.x, x_5300.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat97 = ((u_xlat27.x * u_xlat98) + u_xlat97);
            let x_5320 = u_xlat24.zw;
            txVec52 = vec3f(x_5320.x, x_5320.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat97 = ((u_xlat27.y * u_xlat98) + u_xlat97);
            txVec53 = vec3f(u_xlat46.x, u_xlat46.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat97 = ((u_xlat27.z * u_xlat98) + u_xlat97);
            txVec54 = vec3f(u_xlat82.x, u_xlat82.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat97 = ((u_xlat27.w * u_xlat98) + u_xlat97);
            let x_5378 = u_xlat19.xy;
            txVec55 = vec3f(x_5378.x, x_5378.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat97 = ((u_xlat15.x * u_xlat98) + u_xlat97);
            let x_5398 = u_xlat19.zw;
            txVec56 = vec3f(x_5398.x, x_5398.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat97 = ((u_xlat15.y * u_xlat98) + u_xlat97);
            txVec57 = vec3f(u_xlat77.x, u_xlat77.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat97 = ((u_xlat15.z * u_xlat98) + u_xlat97);
            let x_5437 = u_xlat14.xy;
            txVec58 = vec3f(x_5437.x, x_5437.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat7.x = ((u_xlat15.w * u_xlat98) + u_xlat97);
          }
        }
      } else {
        let x_5459 = u_xlat13.xy;
        txVec59 = vec3f(x_5459.x, x_5459.y, u_xlat13.z);
        u_xlat7.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat97 = (1.0f + -(x_1045.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat7.x = ((u_xlat7.x * x_1045.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat97);
      u_xlatb97 = (0.0f >= u_xlat13.z);
      u_xlatb98 = (u_xlat13.z >= 1.0f);
      u_xlatb97 = (u_xlatb97 | u_xlatb98);
      if (u_xlatb97) {
        x_5499 = 1.0f;
      } else {
        x_5499 = u_xlat7.x;
      }
      u_xlat7.x = x_5499;
    } else {
      u_xlat7.x = 1.0f;
    }
    u_xlat97 = (-(u_xlat7.x) + 1.0f);
    u_xlat7.x = ((u_xlat2.x * u_xlat97) + u_xlat7.x);
    u_xlati97 = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati97 = bitcast<i32>((bitcast<u32>(u_xlati97) & bitcast<u32>(x_2740.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati97 != 0i)) {
      u_xlati97 = i32(x_2740.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati98 = select(1i, 0i, (u_xlati97 != 0i));
      u_xlati99 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati98 != 0i)) {
        u_xlat13 = vec4f(((vs_TEXCOORD7.yyy * x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 1i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati99].xyw * vs_TEXCOORD7.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 2i)].xyw * vs_TEXCOORD7.zzz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 3i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xy / u_xlat13.zz)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((u_xlat13.xy * x_323) + x_323)).xy, u_xlat13.zw);
        u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((x_2740.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat13.xy) + x_2740.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat13.zw);
      } else {
        u_xlatb97 = (u_xlati97 == 1i);
        u_xlati97 = select(0i, 1i, u_xlatb97);
        if ((u_xlati97 != 0i)) {
          u_xlat73 = (vs_TEXCOORD7.yy * x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 1i)].xy);
          u_xlat73 = ((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati99].xy * vs_TEXCOORD7.xx) + u_xlat73);
          u_xlat73 = ((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 2i)].xy * vs_TEXCOORD7.zz) + u_xlat73);
          u_xlat73 = (u_xlat73 + x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 3i)].xy);
          u_xlat73 = ((u_xlat73 * x_323) + x_323);
          u_xlat73 = fract(u_xlat73);
          u_xlat13 = vec4f((((x_2740.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat73) + x_2740.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat13.zw);
        } else {
          u_xlat14 = (vs_TEXCOORD7.yyyy * x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 1i)]);
          u_xlat14 = ((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati99] * vs_TEXCOORD7.xxxx) + u_xlat14);
          u_xlat14 = ((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 2i)] * vs_TEXCOORD7.zzzz) + u_xlat14);
          u_xlat14 = (u_xlat14 + x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 3i)]);
          u_xlat14 = vec4f(((u_xlat14.xyz / u_xlat14.www)).xyz, u_xlat14.w);
          u_xlat97 = dot(u_xlat14.xyz, u_xlat14.xyz);
          u_xlat97 = inverseSqrt(u_xlat97);
          u_xlat14 = vec4f(((vec3f(u_xlat97) * u_xlat14.xyz)).xyz, u_xlat14.w);
          u_xlat97 = dot(abs(u_xlat14.xyz), x_3137);
          u_xlat97 = max(u_xlat97, 0.00000099999999747524f);
          u_xlat97 = (1.0f / u_xlat97);
          u_xlat15 = vec4f(((vec3f(u_xlat97) * u_xlat14.zxy)).xyz, u_xlat15.w);
          u_xlat15.x = -(u_xlat15.x);
          u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
          u_xlatb73 = ((u_xlat15.yzyz >= vec4f())).xy;
          if (u_xlatb73.x) {
            x_5779 = u_xlat15.x;
          } else {
            x_5779 = -(u_xlat15.x);
          }
          u_xlat73.x = x_5779;
          if (u_xlatb73.y) {
            x_5792 = u_xlat15.x;
          } else {
            x_5792 = -(u_xlat15.x);
          }
          u_xlat73.y = x_5792;
          u_xlat73 = ((u_xlat14.xy * vec2f(u_xlat97)) + u_xlat73);
          u_xlat73 = ((u_xlat73 * x_323) + x_323);
          u_xlat73 = clamp(u_xlat73, vec2f(0.0f), vec2f(1.0f));
          u_xlat13 = vec4f((((x_2740.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat73) + x_2740.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat13.zw);
        }
      }
      u_xlat13 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat13.xy, 0.0f);
      if (u_xlatb32.y) {
        x_5841 = u_xlat13.w;
      } else {
        x_5841 = u_xlat13.x;
      }
      u_xlat97 = x_5841;
      if (u_xlatb32.x) {
        x_5852 = u_xlat13.xyz;
      } else {
        x_5852 = vec3f(u_xlat97);
      }
      u_xlat13 = vec4f(x_5852.xyz, u_xlat13.w);
    } else {
      u_xlat13.x = 1.0f;
      u_xlat13.y = 1.0f;
      u_xlat13.z = 1.0f;
    }
    u_xlat13 = vec4f(((u_xlat13.xyz * x_4071.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((vec3f(u_xlat95) * u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlati97 = bitcast<i32>((bitcast<u32>(x_3872.unity_RenderingLayer.x) & bitcast<u32>(x_4071.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat63 = (u_xlat63 * u_xlat7.x);
    u_xlat7.x = dot(u_xlat1.xyz, u_xlat12.xyz);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat63 = (u_xlat63 * u_xlat7.x);
    u_xlat13 = vec4f(((vec3f(u_xlat63) * u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * vec3f(u_xlat96)) + u_xlat9.xyz)).xyz, u_xlat11.w);
    u_xlat63 = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat63 = max(u_xlat63, 1.17549435e-38f);
    u_xlat63 = inverseSqrt(u_xlat63);
    u_xlat11 = vec4f(((vec3f(u_xlat63) * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat63 = dot(u_xlat1.xyz, u_xlat11.xyz);
    u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
    u_xlat96 = dot(u_xlat12.xyz, u_xlat11.xyz);
    u_xlat96 = clamp(u_xlat96, 0.0f, 1.0f);
    u_xlat63 = (u_xlat63 * u_xlat63);
    u_xlat63 = ((u_xlat63 * u_xlat0.x) + 1.00001001358032226562f);
    u_xlat96 = (u_xlat96 * u_xlat96);
    u_xlat63 = (u_xlat63 * u_xlat63);
    u_xlat96 = max(u_xlat96, 0.10000000149011611938f);
    u_xlat63 = (u_xlat63 * u_xlat96);
    u_xlat63 = (u_xlat93 * u_xlat63);
    u_xlat63 = (u_xlat92 / u_xlat63);
    u_xlat11 = vec4f((((u_xlat5.xyz * vec3f(u_xlat63)) + u_xlat6.xyz)).xyz, u_xlat11.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * u_xlat13.xyz) + u_xlat10.xyz)).xyz, u_xlat11.w);
    if ((u_xlati97 != 0i)) {
      x_6006 = u_xlat11.xyz;
    } else {
      x_6006 = u_xlat10.xyz;
    }
    u_xlat10 = vec4f(x_6006.xyz, u_xlat10.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu60 = (u_xlatu94 >> 2u);
  param_21 = bitcast<i32>(u_xlatu94);
  param_22 = 0i;
  param_23 = 1i;
  let x_6027 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu94);
  param_25 = 1i;
  param_26 = 1i;
  let x_6033 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati33 = vec2i(x_6027, x_6033);
  let x_6045 = bitcast<vec2i>((bitcast<vec2u>(u_xlati33.xx) & bitcast<vec2u>(x_3067.urp_ZBins[bitcast<i32>(u_xlatu60)].wy)));
  u_xlati7 = vec4i(x_6045.x, u_xlati7.yz, x_6045.y);
  u_xlati11 = vec3i((~(u_xlati33)).xy, u_xlati11.z);
  let x_6062 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_3067.urp_ZBins[bitcast<i32>(u_xlatu60)].zx)));
  u_xlati11 = vec3i(x_6062.x, u_xlati11.y, x_6062.y);
  let x_6072 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xw) | bitcast<vec2u>(u_xlati11.xz)));
  u_xlati7 = vec4i(x_6072.x, u_xlati7.yz, x_6072.y);
  u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati33.y) & bitcast<u32>(u_xlati7.x)));
  u_xlati33.x = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati7.w)));
  u_xlatu60 = (bitcast<u32>(u_xlati60) | bitcast<u32>(u_xlati33.x));
  u_xlatu11.x = u_xlatu3.x;
  u_xlatu11.y = u_xlatu7.y;
  u_xlati71.x = 0i;
  u_xlatu101 = u_xlatu60;
  u_xlat12 = vec4f(u_xlat10.xyz.xyz, u_xlat12.w);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu33 = (u_xlatu101 >> 16u);
    u_xlati63 = u_xlati71.x;
    u_xlatu94 = u_xlatu101;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb96 = (u_xlati63 == 0i);
      u_xlatu7.x = (u_xlatu94 & 65535u);
      u_xlatb7 = (u_xlatu33 >= u_xlatu7.x);
      u_xlatb96 = (u_xlatb96 & u_xlatb7);
      if (!(u_xlatb96)) {
        break;
      }
      param_27 = u_xlatu94;
      param_28 = 5i;
      param_29 = 11i;
      let x_6148 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu96 = x_6148;
      u_xlatu13 = (vec4u(u_xlatu96) + u_xlatu11.xxyy);
      let x_6157 = (u_xlatu13.yw >> x_3285);
      u_xlatu7 = vec4u(x_6157.x, u_xlatu7.yz, x_6157.y);
      param_30 = bitcast<i32>(u_xlatu13.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_6167 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu13.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_6174 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu13.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_6181 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu13.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_6188 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati13 = vec4i(x_6167, x_6174, x_6181, x_6188);
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_3324.urp_Tiles[bitcast<i32>(u_xlatu7.x)].wy))).xy, u_xlati14.zw);
      u_xlati15 = ~(u_xlati13);
      u_xlati74 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_3324.urp_Tiles[bitcast<i32>(u_xlatu7.x)].zx)));
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati74) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati14.zw);
      u_xlati7.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.y)));
      u_xlati7.x = bitcast<i32>((bitcast<u32>(u_xlati7.x) | bitcast<u32>(u_xlati98)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_3067.urp_ZBins[bitcast<i32>(u_xlatu7.w)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_3067.urp_ZBins[bitcast<i32>(u_xlatu7.w)].zx))).xy, u_xlati14.zw);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati97 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati97 = bitcast<i32>((bitcast<u32>(u_xlati97) | bitcast<u32>(u_xlati98)));
      u_xlati7.x = bitcast<i32>((bitcast<u32>(u_xlati97) & bitcast<u32>(u_xlati7.x)));
      u_xlati97 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu94) & 31i)));
      u_xlati7.x = bitcast<i32>((bitcast<u32>(u_xlati97) & bitcast<u32>(u_xlati7.x)));
      u_xlati96 = (bitcast<i32>(u_xlatu96) << bitcast<u32>(5i));
      u_xlatu96 = (u_xlatu33 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati96)))));
      u_xlatu96 = min(u_xlatu96, 31u);
      u_xlatu96 = (bitcast<u32>(-(bitcast<i32>(u_xlatu96))) + 31u);
      u_xlatu96 = (4294967295u >> (u_xlatu96 & 31u));
      u_xlati63 = bitcast<i32>((u_xlatu96 & bitcast<u32>(u_xlati7.x)));
      u_xlati96 = (bitcast<i32>(u_xlatu94) + 32i);
      u_xlatu94 = (bitcast<u32>(u_xlati96) & 4294967264u);
    }
    u_xlatu101 = u_xlatu94;
    if ((u_xlati63 == 0i)) {
      break;
    }
    u_xlati33.x = (0i - u_xlati63);
    u_xlatu33 = (bitcast<u32>(u_xlati33.x) & bitcast<u32>(u_xlati63));
    u_xlat33 = f32(u_xlatu33);
    u_xlatu33 = (bitcast<u32>(u_xlat33) >> 23u);
    u_xlati33.x = (bitcast<i32>(u_xlatu33) + -127i);
    u_xlati96 = (1i << bitcast<u32>((u_xlati33.x & 31i)));
    u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati63) ^ bitcast<u32>(u_xlati96)));
    u_xlati96 = (bitcast<i32>(u_xlatu101) + -32i);
    u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & 65504u));
    u_xlati33.x = (u_xlati33.x + u_xlati96);
    u_xlati33.x = (bitcast<i32>(u_xlatu7.z) + u_xlati33.x);
    u_xlat13 = vec4f((((-(vs_TEXCOORD7) * x_4071.x_AdditionalLightsPosition[u_xlati33.x].www) + x_4071.x_AdditionalLightsPosition[u_xlati33.x].xyz)).xyz, u_xlat13.w);
    u_xlat96 = dot(u_xlat13.xyz, u_xlat13.xyz);
    u_xlat96 = max(u_xlat96, 0.00006103515625f);
    u_xlat7.x = inverseSqrt(u_xlat96);
    u_xlat14 = vec4f(((u_xlat7.xxx * u_xlat13.xyz)).xyz, u_xlat14.w);
    u_xlat97 = (1.0f / u_xlat96);
    u_xlat96 = (u_xlat96 * x_4071.x_AdditionalLightsAttenuation[u_xlati33.x].x);
    u_xlat96 = ((-(u_xlat96) * u_xlat96) + 1.0f);
    u_xlat96 = max(u_xlat96, 0.0f);
    u_xlat96 = (u_xlat96 * u_xlat96);
    u_xlat96 = (u_xlat96 * u_xlat97);
    u_xlat97 = dot(x_4071.x_AdditionalLightsSpotDir[u_xlati33.x].xyz, u_xlat14.xyz);
    u_xlat97 = ((u_xlat97 * x_4071.x_AdditionalLightsAttenuation[u_xlati33.x].z) + x_4071.x_AdditionalLightsAttenuation[u_xlati33.x].w);
    u_xlat97 = clamp(u_xlat97, 0.0f, 1.0f);
    u_xlat97 = (u_xlat97 * u_xlat97);
    u_xlat96 = (u_xlat96 * u_xlat97);
    u_xlatb97 = (u_xlati33.x < 0i);
    u_xlati98 = i32(x_1045.x_AdditionalShadowParams[u_xlati33.x].w);
    u_xlati97 = select(u_xlati98, -1i, u_xlatb97);
    u_xlatb98 = (u_xlati97 >= 0i);
    if (u_xlatb98) {
      u_xlatb98 = any(!((vec4f() == vec4f(x_1045.x_AdditionalShadowParams[u_xlati33.x].z))));
      if (u_xlatb98) {
        u_xlatb15 = vec4<bool>(((abs(u_xlat14.zzyz) >= abs(u_xlat14.xyxx))).xyz.xyz, u_xlatb15.w);
        u_xlatb98 = (u_xlatb15.y & u_xlatb15.x);
        let x_6542 = ((-(u_xlat14.zyzx) < vec4f())).xyw;
        u_xlatb15 = vec4<bool>(x_6542.xy, u_xlatb15.z, x_6542.z);
        u_xlat15.x = select(4.0f, 5.0f, u_xlatb15.x);
        u_xlat15.y = select(2.0f, 3.0f, u_xlatb15.y);
        u_xlat99 = select(0.0f, 1.0f, u_xlatb15.w);
        if (u_xlatb15.z) {
          x_6558 = u_xlat15.y;
        } else {
          x_6558 = u_xlat99;
        }
        u_xlat99 = x_6558;
        if (u_xlatb98) {
          x_6567 = u_xlat15.x;
        } else {
          x_6567 = u_xlat99;
        }
        u_xlat98 = x_6567;
        u_xlati98 = i32(u_xlat98);
        u_xlati97 = (u_xlati97 + u_xlati98);
      }
      u_xlati97 = (u_xlati97 << bitcast<u32>(2i));
      u_xlat15 = (vs_TEXCOORD7.yyyy * x_1045.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati97 + 1i)]);
      u_xlat15 = ((x_1045.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati97] * vs_TEXCOORD7.xxxx) + u_xlat15);
      u_xlat15 = ((x_1045.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati97 + 2i)] * vs_TEXCOORD7.zzzz) + u_xlat15);
      u_xlat15 = (u_xlat15 + x_1045.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati97 + 3i)]);
      u_xlat15 = vec4f(((u_xlat15.xyz / u_xlat15.www)).xyz, u_xlat15.w);
      u_xlatb97 = (0.0f < x_1045.x_AdditionalShadowParams[u_xlati33.x].y);
      if (u_xlatb97) {
        u_xlatb97 = (1.0f == x_1045.x_AdditionalShadowParams[u_xlati33.x].y);
        if (u_xlatb97) {
          u_xlat16 = (u_xlat15.xyxy + x_1045.x_AdditionalShadowOffset0);
          let x_6642 = u_xlat16.xy;
          txVec60 = vec3f(x_6642.x, x_6642.y, u_xlat15.z);
          u_xlat17.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_6657 = u_xlat16.zw;
          txVec61 = vec3f(x_6657.x, x_6657.y, u_xlat15.z);
          u_xlat17.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat16 = (u_xlat15.xyxy + x_1045.x_AdditionalShadowOffset1);
          let x_6677 = u_xlat16.xy;
          txVec62 = vec3f(x_6677.x, x_6677.y, u_xlat15.z);
          u_xlat17.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_6692 = u_xlat16.zw;
          txVec63 = vec3f(x_6692.x, x_6692.y, u_xlat15.z);
          u_xlat17.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat97 = dot(u_xlat17, x_1505);
        } else {
          u_xlatb98 = (2.0f == x_1045.x_AdditionalShadowParams[u_xlati33.x].y);
          if (u_xlatb98) {
            u_xlat16 = vec4f((((u_xlat15.xy * x_1045.x_AdditionalShadowmapSize.zw) + x_323)).xy, u_xlat16.zw);
            u_xlat16 = vec4f(floor(u_xlat16.xy).xy, u_xlat16.zw);
            u_xlat76 = ((u_xlat15.xy * x_1045.x_AdditionalShadowmapSize.zw) + -(u_xlat16.xy));
            u_xlat17 = (u_xlat76.xxyy + x_1543);
            u_xlat18 = (u_xlat17.xxzz * u_xlat17.xxzz);
            let x_6750 = (u_xlat18.yw * x_1553);
            u_xlat17 = vec4f(x_6750.x, u_xlat17.y, x_6750.y, u_xlat17.w);
            u_xlat18 = vec4f((((u_xlat18.xz * x_323) + -(u_xlat76))).xy, u_xlat18.zw);
            u_xlat78 = (-(u_xlat76) + x_1243);
            u_xlat19 = vec4f(min(u_xlat76, vec2f()).xy, u_xlat19.zw);
            u_xlat19 = vec4f((((-(u_xlat19.xy) * u_xlat19.xy) + u_xlat78)).xy, u_xlat19.zw);
            u_xlat76 = max(u_xlat76, vec2f());
            u_xlat76 = ((-(u_xlat76) * u_xlat76) + u_xlat17.yw);
            u_xlat19 = vec4f(((u_xlat19.xy + x_1243)).xy, u_xlat19.zw);
            u_xlat76 = (u_xlat76 + x_1243);
            u_xlat20 = vec4f(((u_xlat18.xy * x_1603)).xy, u_xlat20.zw);
            u_xlat18 = vec4f(((u_xlat78 * x_1603)).xy, u_xlat18.zw);
            u_xlat19 = vec4f(((u_xlat19.xy * x_1603)).xy, u_xlat19.zw);
            u_xlat21 = vec4f(((u_xlat76 * x_1603)).xy, u_xlat21.zw);
            u_xlat76 = (u_xlat17.yw * x_1603);
            u_xlat20.z = u_xlat19.x;
            u_xlat20.w = u_xlat76.x;
            u_xlat18.z = u_xlat21.x;
            u_xlat18.w = u_xlat17.x;
            u_xlat22 = (u_xlat18.zwxz + u_xlat20.zwxz);
            u_xlat19.z = u_xlat20.y;
            u_xlat19.w = u_xlat76.y;
            u_xlat21.z = u_xlat18.y;
            u_xlat21.w = u_xlat17.z;
            u_xlat17 = vec4f(((u_xlat19.zyw + u_xlat21.zyw)).xyz, u_xlat17.w);
            u_xlat18 = vec4f(((u_xlat18.xzw / u_xlat22.zwy)).xyz, u_xlat18.w);
            u_xlat18 = vec4f(((u_xlat18.xyz + x_1670)).xyz, u_xlat18.w);
            u_xlat19 = vec4f(((u_xlat21.zyw / u_xlat17.xyz)).xyz, u_xlat19.w);
            u_xlat19 = vec4f(((u_xlat19.xyz + x_1670)).xyz, u_xlat19.w);
            u_xlat18 = vec4f(((u_xlat18.yxz * x_1045.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat18.w);
            u_xlat19 = vec4f(((u_xlat19.xyz * x_1045.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat19.w);
            u_xlat18.w = u_xlat19.x;
            u_xlat20 = ((u_xlat16.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat18.ywxw);
            u_xlat76 = ((u_xlat16.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat18.zw);
            u_xlat19.w = u_xlat18.y;
            let x_6917 = u_xlat19.yz;
            u_xlat18 = vec4f(u_xlat18.x, x_6917.x, u_xlat18.z, x_6917.y);
            u_xlat21 = ((u_xlat16.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat19 = ((u_xlat16.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat19.wywz);
            u_xlat18 = ((u_xlat16.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xwzw);
            u_xlat23 = (u_xlat17.xxxy * u_xlat22.zwyz);
            u_xlat24 = (u_xlat17.yyzz * u_xlat22);
            u_xlat98 = (u_xlat17.z * u_xlat22.y);
            let x_6963 = u_xlat20.xy;
            txVec64 = vec3f(x_6963.x, x_6963.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_6977 = u_xlat20.zw;
            txVec65 = vec3f(x_6977.x, x_6977.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat100 = (u_xlat100 * u_xlat23.y);
            u_xlat99 = ((u_xlat23.x * u_xlat99) + u_xlat100);
            txVec66 = vec3f(u_xlat76.x, u_xlat76.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat99 = ((u_xlat23.z * u_xlat100) + u_xlat99);
            let x_7020 = u_xlat19.xy;
            txVec67 = vec3f(x_7020.x, x_7020.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat99 = ((u_xlat23.w * u_xlat100) + u_xlat99);
            let x_7040 = u_xlat21.xy;
            txVec68 = vec3f(x_7040.x, x_7040.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat99 = ((u_xlat24.x * u_xlat100) + u_xlat99);
            let x_7060 = u_xlat21.zw;
            txVec69 = vec3f(x_7060.x, x_7060.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat99 = ((u_xlat24.y * u_xlat100) + u_xlat99);
            let x_7080 = u_xlat19.zw;
            txVec70 = vec3f(x_7080.x, x_7080.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat99 = ((u_xlat24.z * u_xlat100) + u_xlat99);
            let x_7100 = u_xlat18.xy;
            txVec71 = vec3f(x_7100.x, x_7100.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat99 = ((u_xlat24.w * u_xlat100) + u_xlat99);
            let x_7120 = u_xlat18.zw;
            txVec72 = vec3f(x_7120.x, x_7120.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat97 = ((u_xlat98 * u_xlat100) + u_xlat99);
          } else {
            u_xlat16 = vec4f((((u_xlat15.xy * x_1045.x_AdditionalShadowmapSize.zw) + x_323)).xy, u_xlat16.zw);
            u_xlat16 = vec4f(floor(u_xlat16.xy).xy, u_xlat16.zw);
            u_xlat76 = ((u_xlat15.xy * x_1045.x_AdditionalShadowmapSize.zw) + -(u_xlat16.xy));
            u_xlat17 = (u_xlat76.xxyy + x_1543);
            u_xlat18 = (u_xlat17.xxzz * u_xlat17.xxzz);
            let x_7172 = (u_xlat18.yw * x_2003);
            u_xlat19 = vec4f(u_xlat19.x, x_7172.x, u_xlat19.z, x_7172.y);
            let x_7180 = ((u_xlat18.xz * x_323) + -(u_xlat76));
            u_xlat17 = vec4f(x_7180.x, u_xlat17.y, x_7180.y, u_xlat17.w);
            u_xlat18 = vec4f(((-(u_xlat76) + x_1243)).xy, u_xlat18.zw);
            u_xlat78 = min(u_xlat76, vec2f());
            u_xlat18 = vec4f((((-(u_xlat78) * u_xlat78) + u_xlat18.xy)).xy, u_xlat18.zw);
            u_xlat78 = max(u_xlat76, vec2f());
            let x_7208 = ((-(u_xlat78) * u_xlat78) + u_xlat17.yw);
            u_xlat47 = vec3f(x_7208.x, u_xlat47.y, x_7208.y);
            u_xlat18 = vec4f(((u_xlat18.xy + x_594)).xy, u_xlat18.zw);
            let x_7218 = (u_xlat47.xz + x_594);
            u_xlat17 = vec4f(u_xlat17.x, x_7218.x, u_xlat17.z, x_7218.y);
            u_xlat20.z = (u_xlat17.y * 0.08163200318813323975f);
            u_xlat21 = vec4f(((u_xlat17.zxw * x_2060)).xyz, u_xlat21.w);
            u_xlat17 = vec4f(((u_xlat18.xy * x_2066)).xy, u_xlat17.zw);
            u_xlat20.x = u_xlat21.y;
            let x_7241 = ((u_xlat76.xx * x_2076) + x_2079);
            u_xlat20 = vec4f(u_xlat20.x, x_7241.x, u_xlat20.z, x_7241.y);
            let x_7247 = ((u_xlat76.xx * x_2076) + x_2086);
            u_xlat18 = vec4f(x_7247.x, u_xlat18.y, x_7247.y, u_xlat18.w);
            u_xlat18.y = u_xlat17.x;
            u_xlat18.w = u_xlat19.y;
            u_xlat20 = (u_xlat18 + u_xlat20);
            let x_7262 = ((u_xlat76.yy * x_2076) + x_2079);
            u_xlat21 = vec4f(u_xlat21.x, x_7262.x, u_xlat21.z, x_7262.y);
            let x_7268 = ((u_xlat76.yy * x_2076) + x_2086);
            u_xlat19 = vec4f(x_7268.x, u_xlat19.y, x_7268.y, u_xlat19.w);
            u_xlat19.y = u_xlat17.y;
            u_xlat17 = (u_xlat19 + u_xlat21);
            u_xlat18 = (u_xlat18 / u_xlat20);
            u_xlat18 = (u_xlat18 + x_2124);
            u_xlat19 = (u_xlat19 / u_xlat17);
            u_xlat19 = (u_xlat19 + x_2124);
            u_xlat18 = (u_xlat18.wxyz * x_1045.x_AdditionalShadowmapSize.xxxx);
            u_xlat19 = (u_xlat19.xwyz * x_1045.x_AdditionalShadowmapSize.yyyy);
            let x_7300 = u_xlat18.yzw;
            u_xlat21 = vec4f(x_7300.x, u_xlat21.y, x_7300.yz);
            u_xlat21.y = u_xlat19.x;
            u_xlat22 = ((u_xlat16.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat21.xyzy);
            u_xlat76 = ((u_xlat16.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat21.wy);
            u_xlat18.y = u_xlat21.y;
            u_xlat21.y = u_xlat19.z;
            u_xlat23 = ((u_xlat16.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat21.xyzy);
            u_xlat24 = vec4f((((u_xlat16.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat21.wy)).xy, u_xlat24.zw);
            u_xlat18.z = u_xlat21.y;
            u_xlat25 = ((u_xlat16.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyxz);
            u_xlat21.y = u_xlat19.w;
            u_xlat26 = ((u_xlat16.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat21.xyzy);
            u_xlat48 = ((u_xlat16.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat21.wy);
            u_xlat18.w = u_xlat21.y;
            u_xlat84 = ((u_xlat16.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat18.xw);
            let x_7398 = u_xlat21.xzw;
            u_xlat19 = vec4f(x_7398.x, u_xlat19.y, x_7398.yz);
            u_xlat21 = ((u_xlat16.xyxy * x_1045.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat79 = ((u_xlat16.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat19.wy);
            u_xlat19.x = u_xlat18.x;
            u_xlat16 = vec4f((((u_xlat16.xy * x_1045.x_AdditionalShadowmapSize.xy) + u_xlat19.xy)).xy, u_xlat16.zw);
            u_xlat27 = (u_xlat17.xxxx * u_xlat20);
            u_xlat28 = (u_xlat17.yyyy * u_xlat20);
            u_xlat29 = (u_xlat17.zzzz * u_xlat20);
            u_xlat17 = (u_xlat17.wwww * u_xlat20);
            let x_7454 = u_xlat22.xy;
            txVec73 = vec3f(x_7454.x, x_7454.y, u_xlat15.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_7468 = u_xlat22.zw;
            txVec74 = vec3f(x_7468.x, x_7468.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat99 = (u_xlat99 * u_xlat27.y);
            u_xlat98 = ((u_xlat27.x * u_xlat98) + u_xlat99);
            txVec75 = vec3f(u_xlat76.x, u_xlat76.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat98 = ((u_xlat27.z * u_xlat99) + u_xlat98);
            let x_7511 = u_xlat25.xy;
            txVec76 = vec3f(x_7511.x, x_7511.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat98 = ((u_xlat27.w * u_xlat99) + u_xlat98);
            let x_7531 = u_xlat23.xy;
            txVec77 = vec3f(x_7531.x, x_7531.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat98 = ((u_xlat28.x * u_xlat99) + u_xlat98);
            let x_7551 = u_xlat23.zw;
            txVec78 = vec3f(x_7551.x, x_7551.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat98 = ((u_xlat28.y * u_xlat99) + u_xlat98);
            let x_7571 = u_xlat24.xy;
            txVec79 = vec3f(x_7571.x, x_7571.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat98 = ((u_xlat28.z * u_xlat99) + u_xlat98);
            let x_7591 = u_xlat25.zw;
            txVec80 = vec3f(x_7591.x, x_7591.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec80.xy, txVec80.z);
            u_xlat98 = ((u_xlat28.w * u_xlat99) + u_xlat98);
            let x_7611 = u_xlat26.xy;
            txVec81 = vec3f(x_7611.x, x_7611.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec81.xy, txVec81.z);
            u_xlat98 = ((u_xlat29.x * u_xlat99) + u_xlat98);
            let x_7631 = u_xlat26.zw;
            txVec82 = vec3f(x_7631.x, x_7631.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec82.xy, txVec82.z);
            u_xlat98 = ((u_xlat29.y * u_xlat99) + u_xlat98);
            txVec83 = vec3f(u_xlat48.x, u_xlat48.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec83.xy, txVec83.z);
            u_xlat98 = ((u_xlat29.z * u_xlat99) + u_xlat98);
            txVec84 = vec3f(u_xlat84.x, u_xlat84.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec84.xy, txVec84.z);
            u_xlat98 = ((u_xlat29.w * u_xlat99) + u_xlat98);
            let x_7689 = u_xlat21.xy;
            txVec85 = vec3f(x_7689.x, x_7689.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec85.xy, txVec85.z);
            u_xlat98 = ((u_xlat17.x * u_xlat99) + u_xlat98);
            let x_7709 = u_xlat21.zw;
            txVec86 = vec3f(x_7709.x, x_7709.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec86.xy, txVec86.z);
            u_xlat98 = ((u_xlat17.y * u_xlat99) + u_xlat98);
            txVec87 = vec3f(u_xlat79.x, u_xlat79.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec87.xy, txVec87.z);
            u_xlat98 = ((u_xlat17.z * u_xlat99) + u_xlat98);
            let x_7748 = u_xlat16.xy;
            txVec88 = vec3f(x_7748.x, x_7748.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec88.xy, txVec88.z);
            u_xlat97 = ((u_xlat17.w * u_xlat99) + u_xlat98);
          }
        }
      } else {
        let x_7769 = u_xlat15.xy;
        txVec89 = vec3f(x_7769.x, x_7769.y, u_xlat15.z);
        u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec89.xy, txVec89.z);
      }
      u_xlat98 = (1.0f + -(x_1045.x_AdditionalShadowParams[u_xlati33.x].x));
      u_xlat97 = ((u_xlat97 * x_1045.x_AdditionalShadowParams[u_xlati33.x].x) + u_xlat98);
      u_xlatb98 = (0.0f >= u_xlat15.z);
      u_xlatb99 = (u_xlat15.z >= 1.0f);
      u_xlatb98 = (u_xlatb98 | u_xlatb99);
      u_xlat97 = select(u_xlat97, 1.0f, u_xlatb98);
    } else {
      u_xlat97 = 1.0f;
    }
    u_xlat98 = (-(u_xlat97) + 1.0f);
    u_xlat97 = ((u_xlat2.x * u_xlat98) + u_xlat97);
    u_xlati98 = (1i << bitcast<u32>((u_xlati33.x & 31i)));
    u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati98) & bitcast<u32>(x_2740.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati98 != 0i)) {
      u_xlati98 = i32(x_2740.x_AdditionalLightsLightTypes[u_xlati33.x].el);
      u_xlati99 = select(1i, 0i, (u_xlati98 != 0i));
      u_xlati100 = (u_xlati33.x << bitcast<u32>(2i));
      if ((u_xlati99 != 0i)) {
        u_xlat15 = vec4f(((vs_TEXCOORD7.yyy * x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati100 + 1i)].xyw)).xyz, u_xlat15.w);
        u_xlat15 = vec4f((((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati100].xyw * vs_TEXCOORD7.xxx) + u_xlat15.xyz)).xyz, u_xlat15.w);
        u_xlat15 = vec4f((((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati100 + 2i)].xyw * vs_TEXCOORD7.zzz) + u_xlat15.xyz)).xyz, u_xlat15.w);
        u_xlat15 = vec4f(((u_xlat15.xyz + x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati100 + 3i)].xyw)).xyz, u_xlat15.w);
        u_xlat15 = vec4f(((u_xlat15.xy / u_xlat15.zz)).xy, u_xlat15.zw);
        u_xlat15 = vec4f((((u_xlat15.xy * x_323) + x_323)).xy, u_xlat15.zw);
        u_xlat15 = vec4f(clamp(u_xlat15.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat15.zw);
        u_xlat15 = vec4f((((x_2740.x_AdditionalLightsCookieAtlasUVRects[u_xlati33.x].xy * u_xlat15.xy) + x_2740.x_AdditionalLightsCookieAtlasUVRects[u_xlati33.x].zw)).xy, u_xlat15.zw);
      } else {
        u_xlatb98 = (u_xlati98 == 1i);
        u_xlati98 = select(0i, 1i, u_xlatb98);
        if ((u_xlati98 != 0i)) {
          u_xlat75 = (vs_TEXCOORD7.yy * x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati100 + 1i)].xy);
          u_xlat75 = ((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati100].xy * vs_TEXCOORD7.xx) + u_xlat75);
          u_xlat75 = ((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati100 + 2i)].xy * vs_TEXCOORD7.zz) + u_xlat75);
          u_xlat75 = (u_xlat75 + x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati100 + 3i)].xy);
          u_xlat75 = ((u_xlat75 * x_323) + x_323);
          u_xlat75 = fract(u_xlat75);
          u_xlat15 = vec4f((((x_2740.x_AdditionalLightsCookieAtlasUVRects[u_xlati33.x].xy * u_xlat75) + x_2740.x_AdditionalLightsCookieAtlasUVRects[u_xlati33.x].zw)).xy, u_xlat15.zw);
        } else {
          u_xlat16 = (vs_TEXCOORD7.yyyy * x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati100 + 1i)]);
          u_xlat16 = ((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati100] * vs_TEXCOORD7.xxxx) + u_xlat16);
          u_xlat16 = ((x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati100 + 2i)] * vs_TEXCOORD7.zzzz) + u_xlat16);
          u_xlat16 = (u_xlat16 + x_2740.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati100 + 3i)]);
          u_xlat16 = vec4f(((u_xlat16.xyz / u_xlat16.www)).xyz, u_xlat16.w);
          u_xlat98 = dot(u_xlat16.xyz, u_xlat16.xyz);
          u_xlat98 = inverseSqrt(u_xlat98);
          u_xlat16 = vec4f(((vec3f(u_xlat98) * u_xlat16.xyz)).xyz, u_xlat16.w);
          u_xlat98 = dot(abs(u_xlat16.xyz), x_3137);
          u_xlat98 = max(u_xlat98, 0.00000099999999747524f);
          u_xlat98 = (1.0f / u_xlat98);
          u_xlat17 = vec4f(((vec3f(u_xlat98) * u_xlat16.zxy)).xyz, u_xlat17.w);
          u_xlat17.x = -(u_xlat17.x);
          u_xlat17.x = clamp(u_xlat17.x, 0.0f, 1.0f);
          u_xlatb75 = ((u_xlat17.yzyz >= vec4f())).xy;
          if (u_xlatb75.x) {
            x_8074 = u_xlat17.x;
          } else {
            x_8074 = -(u_xlat17.x);
          }
          u_xlat75.x = x_8074;
          if (u_xlatb75.y) {
            x_8087 = u_xlat17.x;
          } else {
            x_8087 = -(u_xlat17.x);
          }
          u_xlat75.y = x_8087;
          u_xlat75 = ((u_xlat16.xy * vec2f(u_xlat98)) + u_xlat75);
          u_xlat75 = ((u_xlat75 * x_323) + x_323);
          u_xlat75 = clamp(u_xlat75, vec2f(0.0f), vec2f(1.0f));
          u_xlat15 = vec4f((((x_2740.x_AdditionalLightsCookieAtlasUVRects[u_xlati33.x].xy * u_xlat75) + x_2740.x_AdditionalLightsCookieAtlasUVRects[u_xlati33.x].zw)).xy, u_xlat15.zw);
        }
      }
      u_xlat15 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat15.xy, 0.0f);
      if (u_xlatb32.y) {
        x_8135 = u_xlat15.w;
      } else {
        x_8135 = u_xlat15.x;
      }
      u_xlat98 = x_8135;
      if (u_xlatb32.x) {
        x_8146 = u_xlat15.xyz;
      } else {
        x_8146 = vec3f(u_xlat98);
      }
      u_xlat15 = vec4f(x_8146.xyz, u_xlat15.w);
    } else {
      u_xlat15.x = 1.0f;
      u_xlat15.y = 1.0f;
      u_xlat15.z = 1.0f;
    }
    u_xlat15 = vec4f(((u_xlat15.xyz * x_4071.x_AdditionalLightsColor[u_xlati33.x].xyz)).xyz, u_xlat15.w);
    u_xlat15 = vec4f(((vec3f(u_xlat95) * u_xlat15.xyz)).xyz, u_xlat15.w);
    u_xlati33.x = bitcast<i32>((bitcast<u32>(x_3872.unity_RenderingLayer.x) & bitcast<u32>(x_4071.x_AdditionalLightsLayerMasks[u_xlati33.x].el)));
    u_xlat96 = (u_xlat96 * u_xlat97);
    u_xlat97 = dot(u_xlat1.xyz, u_xlat14.xyz);
    u_xlat97 = clamp(u_xlat97, 0.0f, 1.0f);
    u_xlat96 = (u_xlat96 * u_xlat97);
    u_xlat15 = vec4f(((vec3f(u_xlat96) * u_xlat15.xyz)).xyz, u_xlat15.w);
    u_xlat13 = vec4f((((u_xlat13.xyz * u_xlat7.xxx) + u_xlat9.xyz)).xyz, u_xlat13.w);
    u_xlat96 = dot(u_xlat13.xyz, u_xlat13.xyz);
    u_xlat96 = max(u_xlat96, 1.17549435e-38f);
    u_xlat96 = inverseSqrt(u_xlat96);
    u_xlat13 = vec4f(((vec3f(u_xlat96) * u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat96 = dot(u_xlat1.xyz, u_xlat13.xyz);
    u_xlat96 = clamp(u_xlat96, 0.0f, 1.0f);
    u_xlat7.x = dot(u_xlat14.xyz, u_xlat13.xyz);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat96 = (u_xlat96 * u_xlat96);
    u_xlat96 = ((u_xlat96 * u_xlat0.x) + 1.00001001358032226562f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat96 = (u_xlat96 * u_xlat96);
    u_xlat7.x = max(u_xlat7.x, 0.10000000149011611938f);
    u_xlat96 = (u_xlat96 * u_xlat7.x);
    u_xlat96 = (u_xlat93 * u_xlat96);
    u_xlat96 = (u_xlat92 / u_xlat96);
    u_xlat13 = vec4f((((u_xlat5.xyz * vec3f(u_xlat96)) + u_xlat6.xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f((((u_xlat13.xyz * u_xlat15.xyz) + u_xlat12.xyz)).xyz, u_xlat13.w);
    if ((u_xlati33.x != 0i)) {
      x_8306 = u_xlat13.xyz;
    } else {
      x_8306 = u_xlat12.xyz;
    }
    u_xlat12 = vec4f(x_8306.xyz, u_xlat12.w);
  }
  u_xlat0 = ((u_xlat4.xyz * vec3f(u_xlat30)) + u_xlat8.xyz);
  u_xlat0 = (u_xlat12.xyz + u_xlat0);
  u_xlat0 = (vec3f(u_xlat90) * u_xlat0);
  u_xlat90 = (u_xlat91 * -(u_xlat91));
  u_xlat90 = exp2(u_xlat90);
  u_xlat1.x = (-(u_xlat90) + 1.0f);
  u_xlat1 = vec4f(((u_xlat1.xxx * x_93.unity_FogColor.xyz)).xyz, u_xlat1.w);
  SV_Target0 = vec4f((((u_xlat0 * vec3f(u_xlat90)) + u_xlat1.xyz)).xyz, SV_Target0.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f, @location(0) vs_TEXCOORD0_param : vec4f, @location(1) vs_TEXCOORD1_param : vec4f, @location(2) vs_TEXCOORD2_param : vec4f, @location(5) vs_TEXCOORD5_param : vec4f, @location(4) vs_TEXCOORD4_param : vec4f, @location(3) vs_TEXCOORD3_param : vec4f, @location(6) vs_TEXCOORD7_param : vec3f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}



/* ================= variant ================= */

//Packages/com.unity.render-pipelines.universal/Shaders/Terrain/TerrainLit.shader
diagnostic(off, derivative_uniformity);

struct UnityDrawCallInfo {
  /* @offset(0) */
  unity_BaseInstanceID : i32,
  /* @offset(4) */
  Xhlslcc_UnusedXunity_InstanceCount : i32,
}

struct TerrainArray_Type {
  /* @offset(0) */
  x_TerrainPatchInstanceData : vec4f,
}

alias Arr = array<TerrainArray_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_Terrain {
  /* @offset(0) */
  TerrainArray : Arr,
}

struct x_Terrain {
  /* @offset(0) */
  Xhlslcc_UnusedX_NormalScale0 : f32,
  /* @offset(4) */
  Xhlslcc_UnusedX_NormalScale1 : f32,
  /* @offset(8) */
  Xhlslcc_UnusedX_NormalScale2 : f32,
  /* @offset(12) */
  Xhlslcc_UnusedX_NormalScale3 : f32,
  /* @offset(16) */
  Xhlslcc_UnusedX_Metallic0 : f32,
  /* @offset(20) */
  Xhlslcc_UnusedX_Metallic1 : f32,
  /* @offset(24) */
  Xhlslcc_UnusedX_Metallic2 : f32,
  /* @offset(28) */
  Xhlslcc_UnusedX_Metallic3 : f32,
  /* @offset(32) */
  Xhlslcc_UnusedX_Smoothness0 : f32,
  /* @offset(36) */
  Xhlslcc_UnusedX_Smoothness1 : f32,
  /* @offset(40) */
  Xhlslcc_UnusedX_Smoothness2 : f32,
  /* @offset(44) */
  Xhlslcc_UnusedX_Smoothness3 : f32,
  /* @offset(48) */
  Xhlslcc_UnusedX_DiffuseRemapScale0 : vec4f,
  /* @offset(64) */
  Xhlslcc_UnusedX_DiffuseRemapScale1 : vec4f,
  /* @offset(80) */
  Xhlslcc_UnusedX_DiffuseRemapScale2 : vec4f,
  /* @offset(96) */
  Xhlslcc_UnusedX_DiffuseRemapScale3 : vec4f,
  /* @offset(112) */
  Xhlslcc_UnusedX_MaskMapRemapOffset0 : vec4f,
  /* @offset(128) */
  Xhlslcc_UnusedX_MaskMapRemapOffset1 : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedX_MaskMapRemapOffset2 : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedX_MaskMapRemapOffset3 : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedX_MaskMapRemapScale0 : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedX_MaskMapRemapScale1 : vec4f,
  /* @offset(208) */
  Xhlslcc_UnusedX_MaskMapRemapScale2 : vec4f,
  /* @offset(224) */
  Xhlslcc_UnusedX_MaskMapRemapScale3 : vec4f,
  /* @offset(240) */
  Xhlslcc_UnusedX_Control_ST : vec4f,
  /* @offset(256) */
  Xhlslcc_UnusedX_Control_TexelSize : vec4f,
  /* @offset(272) */
  Xhlslcc_UnusedX_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  Xhlslcc_UnusedX_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  Xhlslcc_UnusedX_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  Xhlslcc_UnusedX_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  Xhlslcc_UnusedX_LayerHasMask0 : f32,
  /* @offset(292) */
  Xhlslcc_UnusedX_LayerHasMask1 : f32,
  /* @offset(296) */
  Xhlslcc_UnusedX_LayerHasMask2 : f32,
  /* @offset(300) */
  Xhlslcc_UnusedX_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4f,
  /* @offset(320) */
  x_Splat1_ST : vec4f,
  /* @offset(336) */
  x_Splat2_ST : vec4f,
  /* @offset(352) */
  x_Splat3_ST : vec4f,
  /* @offset(368) */
  Xhlslcc_UnusedX_HeightTransition : f32,
  /* @offset(372) */
  Xhlslcc_UnusedX_NumLayersCount : f32,
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4f,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4f,
}

alias Arr_1 = array<vec4f, 4u>;

alias Arr_2 = array<vec4f, 4u>;

alias Arr_3 = array<vec4f, 2u>;

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  hlslcc_mtx4x4unity_ObjectToWorld : Arr_1,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_2,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  unity_WorldTransformParams : vec4f,
  /* @offset(160) */
  Xhlslcc_UnusedXunity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_3,
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
  unity_LightmapST : vec4f,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_4,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_5,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_6 = array<vec4f, 4u>;

alias Arr_7 = array<vec4f, 4u>;

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(16) */
  unity_OrthoParams : vec4f,
  /* @offset(32) */
  hlslcc_mtx4x4unity_MatrixV : Arr_6,
  /* @offset(96) */
  hlslcc_mtx4x4unity_MatrixVP : Arr_7,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(10) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4f;

@group(1) @binding(11) var<uniform> x_35 : UnityInstancing_Terrain;

@group(1) @binding(6) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4f;

@group(1) @binding(5) var<uniform> x_74 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4f;

var<private> vs_TEXCOORD2 : vec4f;

@group(0) @binding(28) var x_TerrainHeightmapTexture : texture_2d<f32>;

@group(0) @binding(29) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(1) @binding(9) var<uniform> x_267 : VGlobals;

var<private> vs_TEXCOORD3 : vec4f;

var<private> vs_TEXCOORD4 : vec4f;

var<private> vs_TEXCOORD5 : vec4f;

var<private> vs_TEXCOORD7 : vec3f;

var<private> vs_TEXCOORD6 : f32;

var<private> gl_Position : vec4f;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat4 : vec2f;
  var u_xlat0 : vec4f;
  var u_xlat8 : vec2f;
  var u_xlatu1 : vec4u;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec3f;
  var u_xlat12 : f32;
  var u_xlatb12 : bool;
  var x_291 : f32;
  var u_xlat3 : vec3f;
  var u_xlat9 : vec2f;
  var u_xlat5 : vec3f;
  var u_xlat13 : f32;
  var x_400 : f32;
  var x_412 : f32;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  u_xlati0 = (gl_InstanceIndex + x_14.unity_BaseInstanceID);
  u_xlat4 = (in_POSITION0.xy + x_35.TerrainArray[u_xlati0].x_TerrainPatchInstanceData.xy);
  u_xlat0 = vec4f(((u_xlat4 * x_35.TerrainArray[u_xlati0].x_TerrainPatchInstanceData.zz)).xy, u_xlat0.zw);
  u_xlat8 = (u_xlat0.xy * x_57.x_TerrainHeightmapRecipSize.zw);
  vs_TEXCOORD0 = vec4f(vs_TEXCOORD0.xy, (((u_xlat8 * x_74.unity_LightmapST.xy) + x_74.unity_LightmapST.zw)).xy);
  vs_TEXCOORD0 = vec4f(u_xlat8.xy, vs_TEXCOORD0.zw);
  vs_TEXCOORD1 = vec4f((((u_xlat8 * x_57.x_Splat0_ST.xy) + x_57.x_Splat0_ST.zw)).xy, vs_TEXCOORD1.zw);
  vs_TEXCOORD1 = vec4f(vs_TEXCOORD1.xy, (((u_xlat8 * x_57.x_Splat1_ST.xy) + x_57.x_Splat1_ST.zw)).xy);
  vs_TEXCOORD2 = vec4f((((u_xlat8 * x_57.x_Splat2_ST.xy) + x_57.x_Splat2_ST.zw)).xy, vs_TEXCOORD2.zw);
  vs_TEXCOORD2 = vec4f(vs_TEXCOORD2.xy, (((u_xlat8 * x_57.x_Splat3_ST.xy) + x_57.x_Splat3_ST.zw)).xy);
  u_xlatu1 = vec4u(bitcast<vec2u>(vec2i(u_xlat0.xy)).xy, u_xlatu1.zw);
  u_xlat0 = vec4f(((u_xlat0.xy * x_57.x_TerrainHeightmapScale.xz)).xy, u_xlat0.zw);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  u_xlat8 = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2i>(u_xlatu1.xy), bitcast<i32>(u_xlatu1.w)).xy;
  u_xlat1 = vec4f(textureLoad(x_TerrainNormalmapTexture, bitcast<vec2i>(u_xlatu1.xy), bitcast<i32>(u_xlatu1.w)).xyz.xyz, u_xlat1.w);
  u_xlat1 = ((u_xlat1.zxyz * vec4f(2.0f)) + vec4f(-1.0f));
  u_xlat8.x = ((u_xlat8.y * 256.0f) + u_xlat8.x);
  u_xlat8.x = (u_xlat8.x * x_57.x_TerrainHeightmapScale.y);
  u_xlat8.x = (u_xlat8.x * 0.00389105058275163174f);
  u_xlat2 = (u_xlat8.xxx * x_74.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  let x_236 = ((x_74.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * u_xlat0.xxx) + u_xlat2);
  u_xlat0 = vec4f(x_236.x, u_xlat0.y, x_236.yz);
  u_xlat0 = vec4f((((x_74.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * u_xlat0.yyy) + u_xlat0.xzw)).xyz, u_xlat0.w);
  u_xlat0 = vec4f(((u_xlat0.xyz + x_74.hlslcc_mtx4x4unity_ObjectToWorld[3i].xyz)).xyz, u_xlat0.w);
  u_xlat2 = (-(u_xlat0.xyz) + x_267.x_WorldSpaceCameraPos);
  u_xlat12 = dot(u_xlat2, u_xlat2);
  u_xlat12 = inverseSqrt(u_xlat12);
  u_xlat2 = (vec3f(u_xlat12) * u_xlat2);
  u_xlatb12 = (x_267.unity_OrthoParams.w == 0.0f);
  if (u_xlatb12) {
    x_291 = u_xlat2.x;
  } else {
    x_291 = x_267.hlslcc_mtx4x4unity_MatrixV[0i].z;
  }
  vs_TEXCOORD3.w = x_291;
  u_xlat3 = (u_xlat1.zzz * x_74.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat3 = ((x_74.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * u_xlat1.yyy) + u_xlat3);
  u_xlat3 = ((x_74.hlslcc_mtx4x4unity_ObjectToWorld[2i].xyz * u_xlat1.www) + u_xlat3);
  u_xlat2.x = dot(u_xlat3, u_xlat3);
  u_xlat2.x = max(u_xlat2.x, 1.17549435e-38f);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  u_xlat3 = (u_xlat2.xxx * u_xlat3);
  vs_TEXCOORD3 = vec4f(u_xlat3.xyz, vs_TEXCOORD3.w);
  u_xlat9 = (u_xlat1.zw * vec2f(1.0f, 0.0f));
  u_xlat1 = vec4f((((u_xlat1.xy * vec2f(0.0f, 1.0f)) + -(u_xlat9))).xy, u_xlat1.zw);
  u_xlat5 = (u_xlat1.yyy * x_74.hlslcc_mtx4x4unity_ObjectToWorld[1i].xyz);
  u_xlat1 = vec4f((((x_74.hlslcc_mtx4x4unity_ObjectToWorld[0i].xyz * u_xlat1.xxx) + u_xlat5)).xyz, u_xlat1.w);
  u_xlat13 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat13 = max(u_xlat13, 1.17549435e-38f);
  u_xlat13 = inverseSqrt(u_xlat13);
  u_xlat1 = vec4f(((vec3f(u_xlat13) * u_xlat1.xyz)).xyz, u_xlat1.w);
  vs_TEXCOORD4 = vec4f(u_xlat1.xyz.xyz, vs_TEXCOORD4.w);
  if (u_xlatb12) {
    x_400 = u_xlat2.y;
  } else {
    x_400 = x_267.hlslcc_mtx4x4unity_MatrixV[1i].z;
  }
  vs_TEXCOORD4.w = x_400;
  if (u_xlatb12) {
    x_412 = u_xlat2.z;
  } else {
    x_412 = x_267.hlslcc_mtx4x4unity_MatrixV[2i].z;
  }
  vs_TEXCOORD5.w = x_412;
  u_xlat2 = (u_xlat1.yzx * u_xlat3.zxy);
  u_xlat1 = vec4f((((u_xlat3.yzx * u_xlat1.zxy) + -(u_xlat2))).xyz, u_xlat1.w);
  u_xlatb12 = (x_74.unity_WorldTransformParams.w >= 0.0f);
  u_xlat12 = select(-1.0f, 1.0f, u_xlatb12);
  vs_TEXCOORD5 = vec4f(((vec3f(u_xlat12) * u_xlat1.xyz)).xyz, vs_TEXCOORD5.w);
  vs_TEXCOORD7 = u_xlat0.xyz;
  vs_TEXCOORD6 = 0.0f;
  u_xlat1 = (u_xlat0.yyyy * x_267.hlslcc_mtx4x4unity_MatrixVP[1i]);
  u_xlat1 = ((x_267.hlslcc_mtx4x4unity_MatrixVP[0i] * u_xlat0.xxxx) + u_xlat1);
  u_xlat0 = ((x_267.hlslcc_mtx4x4unity_MatrixVP[2i] * u_xlat0.zzzz) + u_xlat1);
  gl_Position = (u_xlat0 + x_267.hlslcc_mtx4x4unity_MatrixVP[3i]);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4f,
  @location(1)
  vs_TEXCOORD1_1 : vec4f,
  @location(2)
  vs_TEXCOORD2_1 : vec4f,
  @location(3)
  vs_TEXCOORD3_1 : vec4f,
  @location(4)
  vs_TEXCOORD4_1 : vec4f,
  @location(5)
  vs_TEXCOORD5_1 : vec4f,
  @location(6)
  vs_TEXCOORD7_1 : vec3f,
  @location(7)
  vs_TEXCOORD6_1 : f32,
  @builtin(position)
  gl_Position : vec4f,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4f) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, vs_TEXCOORD6, gl_Position);
}


override UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
//Packages/com.unity.render-pipelines.universal/Shaders/Terrain/TerrainLit.shader
diagnostic(off, derivative_uniformity);

alias Arr = array<vec4f, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_GlossyEnvironmentCubeMap_HDR : vec4f,
  /* @offset(16) */
  x_ScaledScreenParams : vec4f,
  /* @offset(32) */
  x_GlobalMipBias : vec2f,
  /* @offset(48) */
  x_MainLightPosition : vec4f,
  /* @offset(64) */
  x_MainLightColor : vec4f,
  /* @offset(80) */
  x_MainLightLayerMask : u32,
  /* @offset(96) */
  x_AmbientOcclusionParam : vec4f,
  /* @offset(112) */
  x_FPParams0 : vec4f,
  /* @offset(128) */
  x_FPParams1 : vec4f,
  /* @offset(144) */
  x_FPParams2 : vec4f,
  /* @offset(160) */
  x_WorldSpaceCameraPos : vec3f,
  /* @offset(176) */
  x_ProjectionParams : vec4f,
  /* @offset(192) */
  unity_OrthoParams : vec4f,
  /* @offset(208) */
  x_ScaleBiasRt : vec4f,
  /* @offset(224) */
  unity_FogParams : vec4f,
  /* @offset(240) */
  unity_FogColor : vec4f,
  /* @offset(256) */
  hlslcc_mtx4x4unity_MatrixV : Arr,
}

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4f,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4f,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4f,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4f,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4f,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4f,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4f,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4f,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4f,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4f,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4f,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4f,
  /* @offset(240) */
  Xhlslcc_UnusedX_Control_ST : vec4f,
  /* @offset(256) */
  x_Control_TexelSize : vec4f,
  /* @offset(272) */
  Xhlslcc_UnusedX_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  Xhlslcc_UnusedX_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  Xhlslcc_UnusedX_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  Xhlslcc_UnusedX_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  Xhlslcc_UnusedX_Splat0_ST : vec4f,
  /* @offset(320) */
  Xhlslcc_UnusedX_Splat1_ST : vec4f,
  /* @offset(336) */
  Xhlslcc_UnusedX_Splat2_ST : vec4f,
  /* @offset(352) */
  Xhlslcc_UnusedX_Splat3_ST : vec4f,
  /* @offset(368) */
  Xhlslcc_UnusedX_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
  /* @offset(384) */
  Xhlslcc_UnusedX_TerrainHeightmapRecipSize : vec4f,
  /* @offset(400) */
  Xhlslcc_UnusedX_TerrainHeightmapScale : vec4f,
}

alias Arr_1 = array<vec4f, 20u>;

alias Arr_2 = array<vec4f, 32u>;

alias Arr_3 = array<vec4f, 128u>;

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
  x_AdditionalShadowOffset0 : vec4f,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4f,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4f,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4f,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_2,
  /* @offset(1040) */
  hlslcc_mtx4x4_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_4 = array<vec4f, 4u>;

alias Arr_5 = array<vec4f, 128u>;

alias Arr_6 = array<vec4f, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  hlslcc_mtx4x4_MainLightWorldToLight : Arr_4,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  hlslcc_mtx4x4_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_6,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4f, 1024u>;

struct urp_ZBinBuffer {
  /* @offset(0) */
  urp_ZBins : Arr_8,
}

alias Arr_9 = array<vec4f, 1024u>;

struct urp_TileBuffer {
  /* @offset(0) */
  urp_Tiles : Arr_9,
}

alias Arr_10 = array<vec4f, 32u>;

alias Arr_11 = array<vec4f, 32u>;

alias Arr_12 = array<vec4f, 32u>;

alias Arr_13 = array<vec4f, 224u>;

alias Arr_14 = array<vec4f, 32u>;

struct urp_ReflectionProbeBuffer {
  /* @offset(0) */
  urp_ReflProbes_BoxMax : Arr_10,
  /* @offset(512) */
  urp_ReflProbes_BoxMin : Arr_11,
  /* @offset(1024) */
  urp_ReflProbes_ProbePosition : Arr_12,
  /* @offset(1536) */
  urp_ReflProbes_MipScaleOffset : Arr_13,
  /* @offset(5120) */
  Xhlslcc_UnusedXurp_ReflProbes_Rotation : Arr_14,
}

alias Arr_15 = array<vec4f, 4u>;

alias Arr_16 = array<vec4f, 4u>;

alias Arr_17 = array<vec4f, 2u>;

alias Arr_18 = array<vec4f, 4u>;

alias Arr_19 = array<vec4f, 4u>;

struct UnityPerDraw {
  /* @offset(0) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_ObjectToWorld : Arr_15,
  /* @offset(64) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_WorldToObject : Arr_16,
  /* @offset(128) */
  Xhlslcc_UnusedXunity_LODFade : vec4f,
  /* @offset(144) */
  Xhlslcc_UnusedXunity_WorldTransformParams : vec4f,
  /* @offset(160) */
  unity_RenderingLayer : vec4f,
  /* @offset(176) */
  Xhlslcc_UnusedXunity_LightData : vec4f,
  /* @offset(192) */
  Xhlslcc_UnusedXunity_LightIndices : Arr_17,
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
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousM : Arr_18,
  /* @offset(640) */
  Xhlslcc_UnusedXhlslcc_mtx4x4unity_MatrixPreviousMI : Arr_19,
  /* @offset(704) */
  Xhlslcc_UnusedXunity_MotionVectorsParams : vec4f,
  /* @offset(720) */
  Xhlslcc_UnusedXunity_SpriteColor : vec4f,
  /* @offset(736) */
  Xhlslcc_UnusedXunity_SpriteProps : vec4f,
}

alias Arr_20 = array<vec4f, 32u>;

alias Arr_21 = array<vec4f, 32u>;

alias Arr_22 = array<vec4f, 32u>;

alias Arr_23 = array<vec4f, 32u>;

alias Arr_24 = array<vec4f, 32u>;

alias Arr_25 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_20,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_21,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_22,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_23,
  /* @offset(2048) */
  Xhlslcc_UnusedX_AdditionalLightsOcclusionProbes : Arr_24,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_25,
}

var<private> gl_FragCoord : vec4f;

@group(0) @binding(13) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(25) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4f;

@group(1) @binding(0) var<uniform> x_93 : PGlobals;

@group(1) @binding(6) var<uniform> x_120 : x_Terrain;

@group(0) @binding(4) var x_Control : texture_2d<f32>;

@group(0) @binding(22) var sampler_Control : sampler;

@group(0) @binding(5) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(23) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4f;

@group(0) @binding(6) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(7) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4f;

@group(0) @binding(8) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(24) var sampler_Normal0 : sampler;

@group(0) @binding(10) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(12) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4f;

var<private> vs_TEXCOORD4 : vec4f;

var<private> vs_TEXCOORD3 : vec4f;

var<private> vs_TEXCOORD7 : vec3f;

@group(1) @binding(7) var<uniform> x_915 : LightShadows;

@group(0) @binding(2) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(21) var samplerunity_Lightmap : sampler;

@group(0) @binding(3) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(14) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_LinearClamp : sampler;

@group(0) @binding(15) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(26) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(8) var<uniform> x_2612 : LightCookies;

@group(0) @binding(17) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(27) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_2939 : urp_ZBinBuffer;

@group(1) @binding(3) var<uniform> x_3196 : urp_TileBuffer;

@group(1) @binding(4) var<uniform> x_3443 : urp_ReflectionProbeBuffer;

@group(0) @binding(1) var urp_ReflProbes_Atlas : texture_2d<f32>;

@group(0) @binding(0) var x_GlossyEnvironmentCubeMap : texture_cube<f32>;

@group(0) @binding(20) var sampler_GlossyEnvironmentCubeMap : sampler;

@group(1) @binding(5) var<uniform> x_3744 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_3943 : AdditionalLights;

@group(0) @binding(16) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4f;

fn int_bitfieldExtract_i1_i1_i1_(value : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var x_30 : i32;
  let x_22 = *(value);
  let x_23 = *(offset_1);
  if (((*(offset_1) + *(bits)) < 32i)) {
    x_30 = *(bits);
  } else {
    x_30 = (32i - *(offset_1));
  }
  let x_37 = x_30;
  return extractBits(x_22, u32(x_23), u32(x_37));
}

fn uint_bitfieldExtract_u1_i1_i1_(value_1 : ptr<function, u32>, offset_2 : ptr<function, i32>, bits_1 : ptr<function, i32>) -> u32 {
  let x_41 = *(value_1);
  let x_42 = *(offset_2);
  let x_46 = *(bits_1);
  return ((x_41 >> bitcast<u32>(x_42)) & bitcast<u32>(~((-1i << bitcast<u32>(x_46)))));
}

const x_127 = vec3f(0.5f);

const x_179 = vec2f(-1.0f);

const x_188 = vec2f(0.5f);

const x_212 = vec4f(1.0f);

const x_461 = vec2f(2.0f);

const x_1113 = vec2f(1.0f);

const x_1377 = vec4f(0.25f);

const x_1415 = vec4f(0.5f, 1.0f, 0.5f, 1.0f);

const x_1425 = vec2f(0.07999999821186065674f);

const x_1475 = vec2f(0.15999999642372131348f);

const x_1542 = vec3f(-2.5f, -0.5f, 1.5f);

const x_1875 = vec2f(0.04081600159406661987f);

const x_1932 = vec3f(0.08163200318813323975f);

const x_1938 = vec2f(0.08163200318813323975f);

const x_1948 = vec2f(-0.08163200318813323975f, 0.08163200318813323975f);

const x_1951 = vec2f(0.16326400637626647949f, 0.08163200318813323975f);

const x_1958 = vec2f(0.08163200318813323975f, 0.16326400637626647949f);

const x_1996 = vec4f(-3.5f, -1.5f, 0.5f, 2.5f);

const x_2688 = vec4f(0.0f, 1.0f, 0.0f, 0.0f);

const x_3009 = vec3f(1.0f);

const x_3157 = vec2u(2u);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlat0 : vec3f;
  var u_xlatb0 : bool;
  var u_xlat1 : vec4f;
  var u_xlat2 : vec4f;
  var u_xlat3 : vec4f;
  var u_xlat4 : vec4f;
  var u_xlat90 : f32;
  var u_xlat5 : vec4f;
  var u_xlat6 : vec4f;
  var u_xlat7 : vec4f;
  var u_xlat8 : vec4f;
  var u_xlat9 : vec4f;
  var u_xlat10 : vec4f;
  var u_xlatb91 : bool;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat13 : vec4f;
  var u_xlat91 : f32;
  var u_xlat60 : f32;
  var u_xlat30 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu91 : u32;
  var u_xlati91 : i32;
  var u_xlat92 : f32;
  var u_xlat33 : f32;
  var u_xlat93 : f32;
  var u_xlat94 : f32;
  var u_xlat95 : f32;
  var u_xlatb94 : bool;
  var txVec0 : vec3f;
  var txVec1 : vec3f;
  var txVec2 : vec3f;
  var txVec3 : vec3f;
  var u_xlatb96 : bool;
  var u_xlat67 : vec2f;
  var u_xlat69 : vec2f;
  var u_xlat14 : vec4f;
  var u_xlat15 : vec4f;
  var u_xlat96 : f32;
  var txVec4 : vec3f;
  var txVec5 : vec3f;
  var u_xlat37 : f32;
  var txVec6 : vec3f;
  var txVec7 : vec3f;
  var txVec8 : vec3f;
  var txVec9 : vec3f;
  var txVec10 : vec3f;
  var txVec11 : vec3f;
  var txVec12 : vec3f;
  var u_xlat38 : vec3f;
  var u_xlat16 : vec4f;
  var u_xlat17 : vec4f;
  var u_xlat39 : vec2f;
  var u_xlat75 : vec2f;
  var u_xlat70 : vec2f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
  var u_xlat20 : vec4f;
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
  var u_xlatb32 : vec2<bool>;
  var u_xlatb62 : bool;
  var x_2563 : f32;
  var u_xlat32 : f32;
  var u_xlat62 : f32;
  var u_xlatb9 : vec2<bool>;
  var x_2693 : f32;
  var x_2704 : vec3f;
  var u_xlatu3 : vec3u;
  var u_xlatu11 : vec2u;
  var u_xlati3 : i32;
  var u_xlat63 : f32;
  var u_xlatu63 : u32;
  var u_xlatu94 : u32;
  var u_xlati96 : i32;
  var u_xlatu7 : vec4u;
  var u_xlati7 : vec4i;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlati11 : vec3i;
  var u_xlati71 : vec2i;
  var u_xlati63 : i32;
  var u_xlatb41 : vec2<bool>;
  var hlslcc_movcTemp : vec4f;
  var x_3041 : f32;
  var x_3054 : f32;
  var u_xlatu12 : vec4u;
  var u_xlati72 : i32;
  var u_xlatu97 : u32;
  var u_xlati98 : i32;
  var u_xlatu99 : u32;
  var u_xlatb100 : bool;
  var u_xlatu71 : vec2u;
  var u_xlatb71 : bool;
  var u_xlatu100 : u32;
  var param_6 : u32;
  var param_7 : i32;
  var param_8 : i32;
  var u_xlatu14 : vec4u;
  var u_xlati14 : vec4i;
  var param_9 : i32;
  var param_10 : i32;
  var param_11 : i32;
  var param_12 : i32;
  var param_13 : i32;
  var param_14 : i32;
  var param_15 : i32;
  var param_16 : i32;
  var param_17 : i32;
  var param_18 : i32;
  var param_19 : i32;
  var param_20 : i32;
  var u_xlati15 : vec4i;
  var u_xlati16 : vec4i;
  var u_xlati75 : vec2i;
  var u_xlati103 : i32;
  var u_xlati101 : i32;
  var u_xlati100 : i32;
  var u_xlatb97 : bool;
  var u_xlati97 : i32;
  var u_xlat97 : f32;
  var u_xlat100 : f32;
  var u_xlat71 : f32;
  var u_xlat101 : f32;
  var u_xlat103 : f32;
  var u_xlatu101 : u32;
  var u_xlatu103 : u32;
  var u_xlatb63 : bool;
  var u_xlati60 : i32;
  var x_3880 : vec3f;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatb7 : bool;
  var u_xlatb13 : vec4<bool>;
  var u_xlat98 : f32;
  var x_4101 : f32;
  var x_4110 : f32;
  var txVec30 : vec3f;
  var txVec31 : vec3f;
  var txVec32 : vec3f;
  var txVec33 : vec3f;
  var u_xlat74 : vec2f;
  var u_xlat76 : vec2f;
  var u_xlat21 : vec4f;
  var u_xlat22 : vec4f;
  var txVec34 : vec3f;
  var txVec35 : vec3f;
  var u_xlat99 : f32;
  var txVec36 : vec3f;
  var txVec37 : vec3f;
  var txVec38 : vec3f;
  var txVec39 : vec3f;
  var txVec40 : vec3f;
  var txVec41 : vec3f;
  var txVec42 : vec3f;
  var u_xlat45 : vec3f;
  var u_xlat23 : vec4f;
  var u_xlat24 : vec4f;
  var u_xlat46 : vec2f;
  var u_xlat82 : vec2f;
  var u_xlat77 : vec2f;
  var u_xlat25 : vec4f;
  var u_xlat26 : vec4f;
  var u_xlat27 : vec4f;
  var txVec43 : vec3f;
  var txVec44 : vec3f;
  var txVec45 : vec3f;
  var txVec46 : vec3f;
  var txVec47 : vec3f;
  var txVec48 : vec3f;
  var txVec49 : vec3f;
  var txVec50 : vec3f;
  var txVec51 : vec3f;
  var txVec52 : vec3f;
  var txVec53 : vec3f;
  var txVec54 : vec3f;
  var txVec55 : vec3f;
  var txVec56 : vec3f;
  var txVec57 : vec3f;
  var txVec58 : vec3f;
  var txVec59 : vec3f;
  var u_xlatb98 : bool;
  var x_5371 : f32;
  var u_xlati99 : i32;
  var u_xlat73 : vec2f;
  var u_xlatb73 : vec2<bool>;
  var x_5651 : f32;
  var x_5664 : f32;
  var x_5713 : f32;
  var x_5724 : vec3f;
  var x_5878 : vec3f;
  var u_xlati33 : vec2i;
  var param_21 : i32;
  var param_22 : i32;
  var param_23 : i32;
  var param_24 : i32;
  var param_25 : i32;
  var param_26 : i32;
  var u_xlatu33 : u32;
  var u_xlatu96 : u32;
  var param_27 : u32;
  var param_28 : i32;
  var param_29 : i32;
  var u_xlatu13 : vec4u;
  var u_xlati13 : vec4i;
  var param_30 : i32;
  var param_31 : i32;
  var param_32 : i32;
  var param_33 : i32;
  var param_34 : i32;
  var param_35 : i32;
  var param_36 : i32;
  var param_37 : i32;
  var param_38 : i32;
  var param_39 : i32;
  var param_40 : i32;
  var param_41 : i32;
  var u_xlati74 : vec2i;
  var u_xlatb15 : vec4<bool>;
  var x_6430 : f32;
  var x_6439 : f32;
  var txVec60 : vec3f;
  var txVec61 : vec3f;
  var txVec62 : vec3f;
  var txVec63 : vec3f;
  var u_xlat78 : vec2f;
  var txVec64 : vec3f;
  var txVec65 : vec3f;
  var txVec66 : vec3f;
  var txVec67 : vec3f;
  var txVec68 : vec3f;
  var txVec69 : vec3f;
  var txVec70 : vec3f;
  var txVec71 : vec3f;
  var txVec72 : vec3f;
  var u_xlat47 : vec3f;
  var u_xlat48 : vec2f;
  var u_xlat84 : vec2f;
  var u_xlat79 : vec2f;
  var u_xlat28 : vec4f;
  var u_xlat29 : vec4f;
  var txVec73 : vec3f;
  var txVec74 : vec3f;
  var txVec75 : vec3f;
  var txVec76 : vec3f;
  var txVec77 : vec3f;
  var txVec78 : vec3f;
  var txVec79 : vec3f;
  var txVec80 : vec3f;
  var txVec81 : vec3f;
  var txVec82 : vec3f;
  var txVec83 : vec3f;
  var txVec84 : vec3f;
  var txVec85 : vec3f;
  var txVec86 : vec3f;
  var txVec87 : vec3f;
  var txVec88 : vec3f;
  var txVec89 : vec3f;
  var u_xlatb99 : bool;
  var u_xlatb75 : vec2<bool>;
  var x_7946 : f32;
  var x_7959 : f32;
  var x_8007 : f32;
  var x_8018 : vec3f;
  var x_8178 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_62 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_62.x, x_62.y, x_62.z, (1.0f / gl_FragCoord.w));
  let x_87 = vs_TEXCOORD0;
  let x_98 = x_93.x_GlobalMipBias.x;
  let x_99 = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, x_87.xy, x_98);
  u_xlat0.x = x_99.x;
  u_xlatb0 = (u_xlat0.x < 0.00050000002374872565f);
  if (((select(0i, 1i, u_xlatb0) * -1i) != 0i)) {
    discard;
  }
  u_xlat0 = ((x_120.x_MaskMapRemapScale0.xyw * x_127) + x_120.x_MaskMapRemapOffset0.xyw);
  u_xlat1 = vec4f((((x_120.x_MaskMapRemapScale1.xyw * x_127) + x_120.x_MaskMapRemapOffset1.xyw)).xyz, u_xlat1.w);
  u_xlat2 = vec4f((((x_120.x_MaskMapRemapScale2.xyw * x_127) + x_120.x_MaskMapRemapOffset2.xyw)).xyz, u_xlat2.w);
  let x_170 = ((x_120.x_MaskMapRemapScale3.xwy * x_127) + x_120.x_MaskMapRemapOffset3.xwy);
  u_xlat3 = vec4f(x_170.xy, u_xlat3.z, x_170.z);
  u_xlat4 = vec4f(((x_120.x_Control_TexelSize.zw + x_179)).xy, u_xlat4.zw);
  u_xlat4 = vec4f((((vs_TEXCOORD0.xy * u_xlat4.xy) + x_188)).xy, u_xlat4.zw);
  u_xlat4 = vec4f(((u_xlat4.xy * x_120.x_Control_TexelSize.xy)).xy, u_xlat4.zw);
  let x_205 = u_xlat4;
  let x_208 = x_93.x_GlobalMipBias.x;
  let x_209 = textureSampleBias(x_Control, sampler_Control, x_205.xy, x_208);
  u_xlat4 = x_209;
  u_xlat90 = dot(u_xlat4, x_212);
  let x_221 = vs_TEXCOORD1;
  let x_224 = x_93.x_GlobalMipBias.x;
  let x_225 = textureSampleBias(x_Splat0, sampler_Splat0, x_221.xy, x_224);
  u_xlat5 = x_225;
  let x_231 = vs_TEXCOORD1;
  let x_234 = x_93.x_GlobalMipBias.x;
  let x_235 = textureSampleBias(x_Splat1, sampler_Splat0, x_231.zw, x_234);
  u_xlat6 = x_235;
  let x_242 = vs_TEXCOORD2;
  let x_245 = x_93.x_GlobalMipBias.x;
  let x_246 = textureSampleBias(x_Splat2, sampler_Splat0, x_242.xy, x_245);
  u_xlat7 = x_246;
  let x_252 = vs_TEXCOORD2;
  let x_255 = x_93.x_GlobalMipBias.x;
  let x_256 = textureSampleBias(x_Splat3, sampler_Splat0, x_252.zw, x_255);
  u_xlat8 = x_256;
  u_xlat9.x = u_xlat5.w;
  u_xlat9.y = u_xlat6.w;
  u_xlat9.z = u_xlat7.w;
  u_xlat9.w = u_xlat8.w;
  u_xlat10 = (u_xlat9 * vec4f(x_120.x_Smoothness0, x_120.x_Smoothness1, x_120.x_Smoothness2, x_120.x_Smoothness3));
  u_xlatb91 = (4.0f >= x_120.x_NumLayersCount);
  u_xlat11 = (-(u_xlat4) + x_212);
  u_xlat11 = (u_xlat9 + -(u_xlat11));
  u_xlat11 = (u_xlat11 * vec4f(20.0f));
  u_xlat11 = clamp(u_xlat11, vec4f(0.0f), vec4f(1.0f));
  u_xlat11 = ((u_xlat4 * vec4f(0.00100000004749745131f)) + u_xlat11);
  u_xlat12 = (u_xlat4 + -(u_xlat11));
  u_xlat13.x = (u_xlat12.x * x_120.x_DiffuseRemapScale0.w);
  u_xlat13.y = (u_xlat12.y * x_120.x_DiffuseRemapScale1.w);
  u_xlat13.z = (u_xlat12.z * x_120.x_DiffuseRemapScale2.w);
  u_xlat13.w = (u_xlat12.w * x_120.x_DiffuseRemapScale3.w);
  u_xlat11 = (u_xlat11 + u_xlat13);
  u_xlat4 = select(u_xlat4, u_xlat11, vec4<bool>(u_xlatb91));
  u_xlat91 = dot(u_xlat4, x_212);
  u_xlat91 = (u_xlat91 + 0.00006103515625f);
  u_xlat4 = (u_xlat4 / vec4f(u_xlat91));
  u_xlat11 = vec4f(((u_xlat4.xxx * x_120.x_DiffuseRemapScale0.xyz)).xyz, u_xlat11.w);
  u_xlat12 = vec4f(((u_xlat4.yyy * x_120.x_DiffuseRemapScale1.xyz)).xyz, u_xlat12.w);
  u_xlat6 = vec4f(((u_xlat6.xyz * u_xlat12.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat5.xyz * u_xlat11.xyz) + u_xlat6.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((u_xlat4.zzz * x_120.x_DiffuseRemapScale2.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat7.xyz * u_xlat6.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  u_xlat6 = vec4f(((u_xlat4.www * x_120.x_DiffuseRemapScale3.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f((((u_xlat8.xyz * u_xlat6.xyz) + u_xlat5.xyz)).xyz, u_xlat5.w);
  let x_444 = vs_TEXCOORD1;
  let x_447 = x_93.x_GlobalMipBias.x;
  let x_448 = textureSampleBias(x_Normal0, sampler_Normal0, x_444.xy, x_447);
  u_xlat6 = vec4f(x_448.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat6 = vec4f((((u_xlat6.xy * x_461) + x_179)).xy, u_xlat6.zw);
  u_xlat91 = dot(u_xlat6.xy, u_xlat6.xy);
  u_xlat91 = min(u_xlat91, 1.0f);
  u_xlat91 = (-(u_xlat91) + 1.0f);
  u_xlat91 = sqrt(u_xlat91);
  u_xlat7.z = max(u_xlat91, 0.0000000000000001f);
  u_xlat7 = vec4f(((u_xlat6.xy * vec2f(x_120.x_NormalScale0))).xy, u_xlat7.zw);
  let x_494 = vs_TEXCOORD1;
  let x_497 = x_93.x_GlobalMipBias.x;
  let x_498 = textureSampleBias(x_Normal1, sampler_Normal0, x_494.zw, x_497);
  u_xlat6 = vec4f(x_498.xyw.xyz, u_xlat6.w);
  u_xlat6.x = (u_xlat6.x * u_xlat6.z);
  u_xlat6 = vec4f((((u_xlat6.xy * x_461) + x_179)).xy, u_xlat6.zw);
  u_xlat91 = dot(u_xlat6.xy, u_xlat6.xy);
  u_xlat91 = min(u_xlat91, 1.0f);
  u_xlat91 = (-(u_xlat91) + 1.0f);
  u_xlat91 = sqrt(u_xlat91);
  u_xlat8.z = max(u_xlat91, 0.0000000000000001f);
  let x_535 = vec2f(x_120.x_NormalScale1, x_120.x_NormalScale1);
  u_xlat8 = vec4f(((u_xlat6.xy * vec2f(x_535.x, x_535.y))).xy, u_xlat8.zw);
  u_xlat6 = vec4f(((u_xlat4.yyy * u_xlat8.xyz)).xyz, u_xlat6.w);
  u_xlat6 = vec4f((((u_xlat4.xxx * u_xlat7.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_563 = vs_TEXCOORD2;
  let x_566 = x_93.x_GlobalMipBias.x;
  let x_567 = textureSampleBias(x_Normal2, sampler_Normal0, x_563.xy, x_566);
  u_xlat7 = vec4f(x_567.xyw.xyz, u_xlat7.w);
  u_xlat7.x = (u_xlat7.x * u_xlat7.z);
  u_xlat7 = vec4f((((u_xlat7.xy * x_461) + x_179)).xy, u_xlat7.zw);
  u_xlat91 = dot(u_xlat7.xy, u_xlat7.xy);
  u_xlat91 = min(u_xlat91, 1.0f);
  u_xlat91 = (-(u_xlat91) + 1.0f);
  u_xlat91 = sqrt(u_xlat91);
  u_xlat8.z = max(u_xlat91, 0.0000000000000001f);
  let x_604 = vec2f(x_120.x_NormalScale2, x_120.x_NormalScale2);
  u_xlat8 = vec4f(((u_xlat7.xy * vec2f(x_604.x, x_604.y))).xy, u_xlat8.zw);
  u_xlat6 = vec4f((((u_xlat4.zzz * u_xlat8.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  let x_625 = vs_TEXCOORD2;
  let x_628 = x_93.x_GlobalMipBias.x;
  let x_629 = textureSampleBias(x_Normal3, sampler_Normal0, x_625.zw, x_628);
  u_xlat7 = vec4f(x_629.xyw.xyz, u_xlat7.w);
  u_xlat7.x = (u_xlat7.x * u_xlat7.z);
  u_xlat7 = vec4f((((u_xlat7.xy * x_461) + x_179)).xy, u_xlat7.zw);
  u_xlat91 = dot(u_xlat7.xy, u_xlat7.xy);
  u_xlat91 = min(u_xlat91, 1.0f);
  u_xlat91 = (-(u_xlat91) + 1.0f);
  u_xlat91 = sqrt(u_xlat91);
  u_xlat8.z = max(u_xlat91, 0.0000000000000001f);
  let x_667 = vec2f(x_120.x_NormalScale3, x_120.x_NormalScale3);
  u_xlat8 = vec4f(((u_xlat7.xy * vec2f(x_667.x, x_667.y))).xy, u_xlat8.zw);
  u_xlat6 = vec4f((((u_xlat4.www * u_xlat8.xyz) + u_xlat6.xyz)).xyz, u_xlat6.w);
  u_xlat6.w = (u_xlat6.z + 0.00000999999974737875f);
  u_xlat91 = dot(u_xlat6.xyw, u_xlat6.xyw);
  u_xlat91 = inverseSqrt(u_xlat91);
  u_xlat6 = vec4f(((vec3f(u_xlat91) * u_xlat6.xyw)).xyz, u_xlat6.w);
  u_xlat7.x = x_120.x_MaskMapRemapScale0.y;
  u_xlat7.y = x_120.x_MaskMapRemapScale1.y;
  u_xlat7.z = x_120.x_MaskMapRemapScale2.y;
  u_xlat7.w = x_120.x_MaskMapRemapScale3.y;
  u_xlat8.x = x_120.x_MaskMapRemapOffset0.y;
  u_xlat8.y = x_120.x_MaskMapRemapOffset1.y;
  u_xlat8.z = x_120.x_MaskMapRemapOffset2.y;
  u_xlat8.w = x_120.x_MaskMapRemapOffset3.y;
  u_xlat7 = (u_xlat7 + u_xlat8);
  u_xlat8.x = u_xlat0.z;
  u_xlat8.y = u_xlat1.z;
  u_xlat8.z = u_xlat2.z;
  u_xlat8.w = u_xlat3.y;
  u_xlat8 = ((-(u_xlat9) * vec4f(x_120.x_Smoothness0, x_120.x_Smoothness1, x_120.x_Smoothness2, x_120.x_Smoothness3)) + u_xlat8);
  u_xlat8 = ((vec4f(x_120.x_LayerHasMask0, x_120.x_LayerHasMask1, x_120.x_LayerHasMask2, x_120.x_LayerHasMask3) * u_xlat8) + u_xlat10);
  u_xlat60 = dot(u_xlat4, u_xlat8);
  u_xlat8.x = u_xlat0.x;
  u_xlat8.y = u_xlat1.x;
  u_xlat8.z = u_xlat2.x;
  u_xlat8.w = u_xlat3.x;
  u_xlat8 = (u_xlat8 + -(vec4f(x_120.x_Metallic0, x_120.x_Metallic1, x_120.x_Metallic2, x_120.x_Metallic3)));
  u_xlat8 = ((vec4f(x_120.x_LayerHasMask0, x_120.x_LayerHasMask1, x_120.x_LayerHasMask2, x_120.x_LayerHasMask3) * u_xlat8) + vec4f(x_120.x_Metallic0, x_120.x_Metallic1, x_120.x_Metallic2, x_120.x_Metallic3));
  u_xlat0.x = dot(u_xlat4, u_xlat8);
  u_xlat3.x = u_xlat0.y;
  u_xlat3.y = u_xlat1.y;
  u_xlat3.z = u_xlat2.y;
  u_xlat1 = (-(u_xlat7) + u_xlat3);
  u_xlat1 = ((vec4f(x_120.x_LayerHasMask0, x_120.x_LayerHasMask1, x_120.x_LayerHasMask2, x_120.x_LayerHasMask3) * u_xlat1) + u_xlat7);
  u_xlat30 = dot(u_xlat4, u_xlat1);
  u_xlat1 = vec4f(((u_xlat6.yyy * vs_TEXCOORD5.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat6.xxx * -(vs_TEXCOORD4.xyz)) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat1 = vec4f((((u_xlat6.zzz * vs_TEXCOORD3.xyz) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat91 = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat91 = inverseSqrt(u_xlat91);
  u_xlat1 = vec4f(((vec3f(u_xlat91) * u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat2 = vec4f(((vs_TEXCOORD7 + -(x_915.x_CascadeShadowSplitSpheres0.xyz))).xyz, u_xlat2.w);
  u_xlat3 = vec4f(((vs_TEXCOORD7 + -(x_915.x_CascadeShadowSplitSpheres1.xyz))).xyz, u_xlat3.w);
  u_xlat4 = vec4f(((vs_TEXCOORD7 + -(x_915.x_CascadeShadowSplitSpheres2.xyz))).xyz, u_xlat4.w);
  u_xlat6 = vec4f(((vs_TEXCOORD7 + -(x_915.x_CascadeShadowSplitSpheres3.xyz))).xyz, u_xlat6.w);
  u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
  u_xlat2.y = dot(u_xlat3.xyz, u_xlat3.xyz);
  u_xlat2.z = dot(u_xlat4.xyz, u_xlat4.xyz);
  u_xlat2.w = dot(u_xlat6.xyz, u_xlat6.xyz);
  u_xlatb2 = (u_xlat2 < x_915.x_CascadeShadowSplitSphereRadii);
  u_xlat3.x = select(0.0f, 1.0f, u_xlatb2.x);
  u_xlat3.y = select(0.0f, 1.0f, u_xlatb2.y);
  u_xlat3.z = select(0.0f, 1.0f, u_xlatb2.z);
  u_xlat3.w = select(0.0f, 1.0f, u_xlatb2.w);
  u_xlat2.x = select(-0.0f, -1.0f, u_xlatb2.x);
  u_xlat2.y = select(-0.0f, -1.0f, u_xlatb2.y);
  u_xlat2.z = select(-0.0f, -1.0f, u_xlatb2.z);
  u_xlat2 = vec4f(((u_xlat2.xyz + u_xlat3.yzw)).xyz, u_xlat2.w);
  u_xlat3 = vec4f(u_xlat3.x, max(u_xlat2.xyz, vec3f()).xyz);
  u_xlat91 = dot(u_xlat3, vec4f(4.0f, 3.0f, 2.0f, 1.0f));
  u_xlat91 = (-(u_xlat91) + 4.0f);
  u_xlatu91 = u32(u_xlat91);
  u_xlati91 = (bitcast<i32>(u_xlatu91) << bitcast<u32>(2i));
  u_xlat2 = vec4f(((vs_TEXCOORD7.yyy * x_915.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati91 + 1i)].xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_915.hlslcc_mtx4x4_MainLightWorldToShadow[u_xlati91].xyz * vs_TEXCOORD7.xxx) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f((((x_915.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati91 + 2i)].xyz * vs_TEXCOORD7.zzz) + u_xlat2.xyz)).xyz, u_xlat2.w);
  u_xlat2 = vec4f(((u_xlat2.xyz + x_915.hlslcc_mtx4x4_MainLightWorldToShadow[(u_xlati91 + 3i)].xyz)).xyz, u_xlat2.w);
  u_xlat91 = (vs_TEXCOORD7.y * x_93.hlslcc_mtx4x4unity_MatrixV[1i].z);
  u_xlat91 = ((x_93.hlslcc_mtx4x4unity_MatrixV[0i].z * vs_TEXCOORD7.x) + u_xlat91);
  u_xlat91 = ((x_93.hlslcc_mtx4x4unity_MatrixV[2i].z * vs_TEXCOORD7.z) + u_xlat91);
  u_xlat91 = (u_xlat91 + x_93.hlslcc_mtx4x4unity_MatrixV[3i].z);
  u_xlat91 = (-(u_xlat91) + -(x_93.x_ProjectionParams.y));
  u_xlat91 = max(u_xlat91, 0.0f);
  u_xlat91 = (u_xlat91 * x_93.unity_FogParams.x);
  let x_1116 = x_93.x_ScaledScreenParams.xy;
  u_xlat3 = vec4f(((x_1113 / vec2f(x_1116.x, x_1116.y))).xy, u_xlat3.zw);
  u_xlat3 = vec4f(((u_xlat3.xy * hlslcc_FragCoord.xy)).xy, u_xlat3.zw);
  u_xlat92 = ((u_xlat3.y * x_93.x_ScaleBiasRt.x) + x_93.x_ScaleBiasRt.y);
  u_xlat3.z = (-(u_xlat92) + 1.0f);
  let x_1148 = vs_TEXCOORD0;
  let x_1151 = x_93.x_GlobalMipBias.x;
  let x_1152 = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1148.zw, x_1151);
  u_xlat4 = vec4f(x_1152.xyz.xyz, u_xlat4.w);
  let x_1160 = vs_TEXCOORD0;
  let x_1163 = x_93.x_GlobalMipBias.x;
  let x_1164 = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1160.zw, x_1163);
  u_xlat6 = x_1164;
  u_xlat6 = vec4f(((u_xlat6.xyz + vec3f(-0.5f))).xyz, u_xlat6.w);
  u_xlat92 = dot(u_xlat1.xyz, u_xlat6.xyz);
  u_xlat92 = (u_xlat92 + 0.5f);
  u_xlat4 = vec4f(((vec3f(u_xlat92) * u_xlat4.xyz)).xyz, u_xlat4.w);
  u_xlat92 = max(u_xlat6.w, 0.00009999999747378752f);
  u_xlat4 = vec4f(((u_xlat4.xyz / vec3f(u_xlat92))).xyz, u_xlat4.w);
  u_xlat92 = ((-(u_xlat0.x) * 0.95999997854232788086f) + 0.95999997854232788086f);
  u_xlat33 = (u_xlat60 + -(u_xlat92));
  u_xlat6 = vec4f(((vec3f(u_xlat92) * u_xlat5.xyz)).xyz, u_xlat6.w);
  u_xlat5 = vec4f(((u_xlat5.xyz + vec3f(-0.03999999910593032837f))).xyz, u_xlat5.w);
  u_xlat5 = vec4f((((u_xlat0.xxx * u_xlat5.xyz) + vec3f(0.03999999910593032837f))).xyz, u_xlat5.w);
  u_xlat0.x = (-(u_xlat60) + 1.0f);
  u_xlat60 = (u_xlat0.x * u_xlat0.x);
  u_xlat60 = max(u_xlat60, 0.0078125f);
  u_xlat92 = (u_xlat60 * u_xlat60);
  u_xlat33 = (u_xlat33 + 1.0f);
  u_xlat33 = clamp(u_xlat33, 0.0f, 1.0f);
  u_xlat93 = ((u_xlat60 * 4.0f) + 2.0f);
  let x_1261 = u_xlat3;
  let x_1264 = x_93.x_GlobalMipBias.x;
  let x_1265 = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_LinearClamp, x_1261.xz, x_1264);
  u_xlat94 = x_1265.x;
  u_xlat94 = (u_xlat94 + -(x_93.x_AmbientOcclusionParam.x));
  u_xlat94 = (u_xlat94 + 1.0f);
  u_xlat94 = clamp(u_xlat94, 0.0f, 1.0f);
  u_xlat95 = (u_xlat94 + -1.0f);
  u_xlat95 = ((x_93.x_AmbientOcclusionParam.w * u_xlat95) + 1.0f);
  u_xlat30 = min(u_xlat30, u_xlat94);
  u_xlatb94 = (0.0f < x_915.x_MainLightShadowParams.y);
  if (u_xlatb94) {
    u_xlatb94 = (x_915.x_MainLightShadowParams.y == 1.0f);
    if (u_xlatb94) {
      u_xlat7 = (u_xlat2.xyxy + x_915.x_MainLightShadowOffset0);
      let x_1307 = u_xlat7.xy;
      txVec0 = vec3f(x_1307.x, x_1307.y, u_xlat2.z);
      u_xlat8.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec0.xy, txVec0.z);
      let x_1327 = u_xlat7.zw;
      txVec1 = vec3f(x_1327.x, x_1327.y, u_xlat2.z);
      u_xlat8.y = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec1.xy, txVec1.z);
      u_xlat7 = (u_xlat2.xyxy + x_915.x_MainLightShadowOffset1);
      let x_1347 = u_xlat7.xy;
      txVec2 = vec3f(x_1347.x, x_1347.y, u_xlat2.z);
      u_xlat8.z = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec2.xy, txVec2.z);
      let x_1362 = u_xlat7.zw;
      txVec3 = vec3f(x_1362.x, x_1362.y, u_xlat2.z);
      u_xlat8.w = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec3.xy, txVec3.z);
      u_xlat94 = dot(u_xlat8, x_1377);
    } else {
      u_xlatb96 = (x_915.x_MainLightShadowParams.y == 2.0f);
      if (u_xlatb96) {
        u_xlat7 = vec4f((((u_xlat2.xy * x_915.x_MainLightShadowmapSize.zw) + x_188)).xy, u_xlat7.zw);
        u_xlat7 = vec4f(floor(u_xlat7.xy).xy, u_xlat7.zw);
        u_xlat67 = ((u_xlat2.xy * x_915.x_MainLightShadowmapSize.zw) + -(u_xlat7.xy));
        u_xlat8 = (u_xlat67.xxyy + x_1415);
        u_xlat9 = (u_xlat8.xxzz * u_xlat8.xxzz);
        let x_1426 = (u_xlat9.yw * x_1425);
        u_xlat8 = vec4f(x_1426.x, u_xlat8.y, x_1426.y, u_xlat8.w);
        u_xlat9 = vec4f((((u_xlat9.xz * x_188) + -(u_xlat67))).xy, u_xlat9.zw);
        u_xlat69 = (-(u_xlat67) + x_1113);
        u_xlat10 = vec4f(min(u_xlat67, vec2f()).xy, u_xlat10.zw);
        u_xlat10 = vec4f((((-(u_xlat10.xy) * u_xlat10.xy) + u_xlat69)).xy, u_xlat10.zw);
        u_xlat67 = max(u_xlat67, vec2f());
        u_xlat67 = ((-(u_xlat67) * u_xlat67) + u_xlat8.yw);
        u_xlat10 = vec4f(((u_xlat10.xy + x_1113)).xy, u_xlat10.zw);
        u_xlat67 = (u_xlat67 + x_1113);
        u_xlat11 = vec4f(((u_xlat9.xy * x_1475)).xy, u_xlat11.zw);
        u_xlat9 = vec4f(((u_xlat69 * x_1475)).xy, u_xlat9.zw);
        u_xlat10 = vec4f(((u_xlat10.xy * x_1475)).xy, u_xlat10.zw);
        u_xlat12 = vec4f(((u_xlat67 * x_1475)).xy, u_xlat12.zw);
        u_xlat67 = (u_xlat8.yw * x_1475);
        u_xlat11.z = u_xlat10.x;
        u_xlat11.w = u_xlat67.x;
        u_xlat9.z = u_xlat12.x;
        u_xlat9.w = u_xlat8.x;
        u_xlat13 = (u_xlat9.zwxz + u_xlat11.zwxz);
        u_xlat10.z = u_xlat11.y;
        u_xlat10.w = u_xlat67.y;
        u_xlat12.z = u_xlat9.y;
        u_xlat12.w = u_xlat8.z;
        u_xlat8 = vec4f(((u_xlat10.zyw + u_xlat12.zyw)).xyz, u_xlat8.w);
        u_xlat9 = vec4f(((u_xlat9.xzw / u_xlat13.zwy)).xyz, u_xlat9.w);
        u_xlat9 = vec4f(((u_xlat9.xyz + x_1542)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat12.zyw / u_xlat8.xyz)).xyz, u_xlat10.w);
        u_xlat10 = vec4f(((u_xlat10.xyz + x_1542)).xyz, u_xlat10.w);
        u_xlat9 = vec4f(((u_xlat9.yxz * x_915.x_MainLightShadowmapSize.xxx)).xyz, u_xlat9.w);
        u_xlat10 = vec4f(((u_xlat10.xyz * x_915.x_MainLightShadowmapSize.yyy)).xyz, u_xlat10.w);
        u_xlat9.w = u_xlat10.x;
        u_xlat11 = ((u_xlat7.xyxy * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat9.ywxw);
        u_xlat67 = ((u_xlat7.xy * x_915.x_MainLightShadowmapSize.xy) + u_xlat9.zw);
        u_xlat10.w = u_xlat9.y;
        let x_1599 = u_xlat10.yz;
        u_xlat9 = vec4f(u_xlat9.x, x_1599.x, u_xlat9.z, x_1599.y);
        u_xlat12 = ((u_xlat7.xyxy * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat9.xyzy);
        u_xlat10 = ((u_xlat7.xyxy * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat10.wywz);
        u_xlat9 = ((u_xlat7.xyxy * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat9.xwzw);
        u_xlat14 = (u_xlat8.xxxy * u_xlat13.zwyz);
        u_xlat15 = (u_xlat8.yyzz * u_xlat13);
        u_xlat96 = (u_xlat8.z * u_xlat13.y);
        let x_1648 = u_xlat11.xy;
        txVec4 = vec3f(x_1648.x, x_1648.y, u_xlat2.z);
        u_xlat7.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec4.xy, txVec4.z);
        let x_1663 = u_xlat11.zw;
        txVec5 = vec3f(x_1663.x, x_1663.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec5.xy, txVec5.z);
        u_xlat37 = (u_xlat37 * u_xlat14.y);
        u_xlat7.x = ((u_xlat14.x * u_xlat7.x) + u_xlat37);
        txVec6 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec6.xy, txVec6.z);
        u_xlat7.x = ((u_xlat14.z * u_xlat37) + u_xlat7.x);
        let x_1711 = u_xlat10.xy;
        txVec7 = vec3f(x_1711.x, x_1711.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec7.xy, txVec7.z);
        u_xlat7.x = ((u_xlat14.w * u_xlat37) + u_xlat7.x);
        let x_1733 = u_xlat12.xy;
        txVec8 = vec3f(x_1733.x, x_1733.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec8.xy, txVec8.z);
        u_xlat7.x = ((u_xlat15.x * u_xlat37) + u_xlat7.x);
        let x_1755 = u_xlat12.zw;
        txVec9 = vec3f(x_1755.x, x_1755.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec9.xy, txVec9.z);
        u_xlat7.x = ((u_xlat15.y * u_xlat37) + u_xlat7.x);
        let x_1777 = u_xlat10.zw;
        txVec10 = vec3f(x_1777.x, x_1777.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec10.xy, txVec10.z);
        u_xlat7.x = ((u_xlat15.z * u_xlat37) + u_xlat7.x);
        let x_1799 = u_xlat9.xy;
        txVec11 = vec3f(x_1799.x, x_1799.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec11.xy, txVec11.z);
        u_xlat7.x = ((u_xlat15.w * u_xlat37) + u_xlat7.x);
        let x_1821 = u_xlat9.zw;
        txVec12 = vec3f(x_1821.x, x_1821.y, u_xlat2.z);
        u_xlat37 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec12.xy, txVec12.z);
        u_xlat94 = ((u_xlat96 * u_xlat37) + u_xlat7.x);
      } else {
        u_xlat7 = vec4f((((u_xlat2.xy * x_915.x_MainLightShadowmapSize.zw) + x_188)).xy, u_xlat7.zw);
        u_xlat7 = vec4f(floor(u_xlat7.xy).xy, u_xlat7.zw);
        u_xlat67 = ((u_xlat2.xy * x_915.x_MainLightShadowmapSize.zw) + -(u_xlat7.xy));
        u_xlat8 = (u_xlat67.xxyy + x_1415);
        u_xlat9 = (u_xlat8.xxzz * u_xlat8.xxzz);
        let x_1876 = (u_xlat9.yw * x_1875);
        u_xlat10 = vec4f(u_xlat10.x, x_1876.x, u_xlat10.z, x_1876.y);
        let x_1884 = ((u_xlat9.xz * x_188) + -(u_xlat67));
        u_xlat8 = vec4f(x_1884.x, u_xlat8.y, x_1884.y, u_xlat8.w);
        u_xlat9 = vec4f(((-(u_xlat67) + x_1113)).xy, u_xlat9.zw);
        u_xlat69 = min(u_xlat67, vec2f());
        u_xlat9 = vec4f((((-(u_xlat69) * u_xlat69) + u_xlat9.xy)).xy, u_xlat9.zw);
        u_xlat69 = max(u_xlat67, vec2f());
        let x_1912 = ((-(u_xlat69) * u_xlat69) + u_xlat8.yw);
        u_xlat38 = vec3f(x_1912.x, u_xlat38.y, x_1912.y);
        u_xlat9 = vec4f(((u_xlat9.xy + x_461)).xy, u_xlat9.zw);
        let x_1922 = (u_xlat38.xz + x_461);
        u_xlat8 = vec4f(u_xlat8.x, x_1922.x, u_xlat8.z, x_1922.y);
        u_xlat11.z = (u_xlat8.y * 0.08163200318813323975f);
        u_xlat12 = vec4f(((u_xlat8.zxw * x_1932)).xyz, u_xlat12.w);
        u_xlat8 = vec4f(((u_xlat9.xy * x_1938)).xy, u_xlat8.zw);
        u_xlat11.x = u_xlat12.y;
        let x_1952 = ((u_xlat67.xx * x_1948) + x_1951);
        u_xlat11 = vec4f(u_xlat11.x, x_1952.x, u_xlat11.z, x_1952.y);
        let x_1959 = ((u_xlat67.xx * x_1948) + x_1958);
        u_xlat9 = vec4f(x_1959.x, u_xlat9.y, x_1959.y, u_xlat9.w);
        u_xlat9.y = u_xlat8.x;
        u_xlat9.w = u_xlat10.y;
        u_xlat11 = (u_xlat9 + u_xlat11);
        let x_1974 = ((u_xlat67.yy * x_1948) + x_1951);
        u_xlat12 = vec4f(u_xlat12.x, x_1974.x, u_xlat12.z, x_1974.y);
        let x_1980 = ((u_xlat67.yy * x_1948) + x_1958);
        u_xlat10 = vec4f(x_1980.x, u_xlat10.y, x_1980.y, u_xlat10.w);
        u_xlat10.y = u_xlat8.y;
        u_xlat8 = (u_xlat10 + u_xlat12);
        u_xlat9 = (u_xlat9 / u_xlat11);
        u_xlat9 = (u_xlat9 + x_1996);
        u_xlat10 = (u_xlat10 / u_xlat8);
        u_xlat10 = (u_xlat10 + x_1996);
        u_xlat9 = (u_xlat9.wxyz * x_915.x_MainLightShadowmapSize.xxxx);
        u_xlat10 = (u_xlat10.xwyz * x_915.x_MainLightShadowmapSize.yyyy);
        let x_2016 = u_xlat9.yzw;
        u_xlat12 = vec4f(x_2016.x, u_xlat12.y, x_2016.yz);
        u_xlat12.y = u_xlat10.x;
        u_xlat13 = ((u_xlat7.xyxy * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat67 = ((u_xlat7.xy * x_915.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat9.y = u_xlat12.y;
        u_xlat12.y = u_xlat10.z;
        u_xlat14 = ((u_xlat7.xyxy * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat15 = vec4f((((u_xlat7.xy * x_915.x_MainLightShadowmapSize.xy) + u_xlat12.wy)).xy, u_xlat15.zw);
        u_xlat9.z = u_xlat12.y;
        u_xlat16 = ((u_xlat7.xyxy * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat9.xyxz);
        u_xlat12.y = u_xlat10.w;
        u_xlat17 = ((u_xlat7.xyxy * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat12.xyzy);
        u_xlat39 = ((u_xlat7.xy * x_915.x_MainLightShadowmapSize.xy) + u_xlat12.wy);
        u_xlat9.w = u_xlat12.y;
        u_xlat75 = ((u_xlat7.xy * x_915.x_MainLightShadowmapSize.xy) + u_xlat9.xw);
        let x_2116 = u_xlat12.xzw;
        u_xlat10 = vec4f(x_2116.x, u_xlat10.y, x_2116.yz);
        u_xlat12 = ((u_xlat7.xyxy * x_915.x_MainLightShadowmapSize.xyxy) + u_xlat10.xyzy);
        u_xlat70 = ((u_xlat7.xy * x_915.x_MainLightShadowmapSize.xy) + u_xlat10.wy);
        u_xlat10.x = u_xlat9.x;
        u_xlat7 = vec4f((((u_xlat7.xy * x_915.x_MainLightShadowmapSize.xy) + u_xlat10.xy)).xy, u_xlat7.zw);
        u_xlat18 = (u_xlat8.xxxx * u_xlat11);
        u_xlat19 = (u_xlat8.yyyy * u_xlat11);
        u_xlat20 = (u_xlat8.zzzz * u_xlat11);
        u_xlat8 = (u_xlat8.wwww * u_xlat11);
        let x_2173 = u_xlat13.xy;
        txVec13 = vec3f(x_2173.x, x_2173.y, u_xlat2.z);
        u_xlat96 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec13.xy, txVec13.z);
        let x_2187 = u_xlat13.zw;
        txVec14 = vec3f(x_2187.x, x_2187.y, u_xlat2.z);
        u_xlat9.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec14.xy, txVec14.z);
        u_xlat9.x = (u_xlat9.x * u_xlat18.y);
        u_xlat96 = ((u_xlat18.x * u_xlat96) + u_xlat9.x);
        txVec15 = vec3f(u_xlat67.x, u_xlat67.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec15.xy, txVec15.z);
        u_xlat96 = ((u_xlat18.z * u_xlat67.x) + u_xlat96);
        let x_2236 = u_xlat16.xy;
        txVec16 = vec3f(x_2236.x, x_2236.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec16.xy, txVec16.z);
        u_xlat96 = ((u_xlat18.w * u_xlat67.x) + u_xlat96);
        let x_2258 = u_xlat14.xy;
        txVec17 = vec3f(x_2258.x, x_2258.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec17.xy, txVec17.z);
        u_xlat96 = ((u_xlat19.x * u_xlat67.x) + u_xlat96);
        let x_2280 = u_xlat14.zw;
        txVec18 = vec3f(x_2280.x, x_2280.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec18.xy, txVec18.z);
        u_xlat96 = ((u_xlat19.y * u_xlat67.x) + u_xlat96);
        let x_2302 = u_xlat15.xy;
        txVec19 = vec3f(x_2302.x, x_2302.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec19.xy, txVec19.z);
        u_xlat96 = ((u_xlat19.z * u_xlat67.x) + u_xlat96);
        let x_2324 = u_xlat16.zw;
        txVec20 = vec3f(x_2324.x, x_2324.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec20.xy, txVec20.z);
        u_xlat96 = ((u_xlat19.w * u_xlat67.x) + u_xlat96);
        let x_2346 = u_xlat17.xy;
        txVec21 = vec3f(x_2346.x, x_2346.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec21.xy, txVec21.z);
        u_xlat96 = ((u_xlat20.x * u_xlat67.x) + u_xlat96);
        let x_2368 = u_xlat17.zw;
        txVec22 = vec3f(x_2368.x, x_2368.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec22.xy, txVec22.z);
        u_xlat96 = ((u_xlat20.y * u_xlat67.x) + u_xlat96);
        txVec23 = vec3f(u_xlat39.x, u_xlat39.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec23.xy, txVec23.z);
        u_xlat96 = ((u_xlat20.z * u_xlat67.x) + u_xlat96);
        txVec24 = vec3f(u_xlat75.x, u_xlat75.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec24.xy, txVec24.z);
        u_xlat96 = ((u_xlat20.w * u_xlat67.x) + u_xlat96);
        let x_2432 = u_xlat12.xy;
        txVec25 = vec3f(x_2432.x, x_2432.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec25.xy, txVec25.z);
        u_xlat96 = ((u_xlat8.x * u_xlat67.x) + u_xlat96);
        let x_2454 = u_xlat12.zw;
        txVec26 = vec3f(x_2454.x, x_2454.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec26.xy, txVec26.z);
        u_xlat96 = ((u_xlat8.y * u_xlat67.x) + u_xlat96);
        txVec27 = vec3f(u_xlat70.x, u_xlat70.y, u_xlat2.z);
        u_xlat67.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec27.xy, txVec27.z);
        u_xlat96 = ((u_xlat8.z * u_xlat67.x) + u_xlat96);
        let x_2497 = u_xlat7.xy;
        txVec28 = vec3f(x_2497.x, x_2497.y, u_xlat2.z);
        u_xlat7.x = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec28.xy, txVec28.z);
        u_xlat94 = ((u_xlat8.w * u_xlat7.x) + u_xlat96);
      }
    }
  } else {
    let x_2520 = u_xlat2.xy;
    txVec29 = vec3f(x_2520.x, x_2520.y, u_xlat2.z);
    u_xlat94 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, txVec29.xy, txVec29.z);
  }
  u_xlat2.x = (-(x_915.x_MainLightShadowParams.x) + 1.0f);
  u_xlat2.x = ((u_xlat94 * x_915.x_MainLightShadowParams.x) + u_xlat2.x);
  u_xlatb32.x = (0.0f >= u_xlat2.z);
  u_xlatb62 = (u_xlat2.z >= 1.0f);
  u_xlatb32.x = (u_xlatb62 | u_xlatb32.x);
  if (u_xlatb32.x) {
    x_2563 = 1.0f;
  } else {
    x_2563 = u_xlat2.x;
  }
  u_xlat2.x = x_2563;
  u_xlat7 = vec4f(((vs_TEXCOORD7 + -(x_93.x_WorldSpaceCameraPos))).xyz, u_xlat7.w);
  u_xlat32 = dot(u_xlat7.xyz, u_xlat7.xyz);
  u_xlat62 = ((u_xlat32 * x_915.x_MainLightShadowParams.z) + x_915.x_MainLightShadowParams.w);
  u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
  u_xlat94 = (-(u_xlat2.x) + 1.0f);
  u_xlat2.x = ((u_xlat62 * u_xlat94) + u_xlat2.x);
  u_xlatb62 = !((x_2612.x_MainLightCookieTextureFormat == -1.0f));
  if (u_xlatb62) {
    u_xlat8 = vec4f(((vs_TEXCOORD7.yy * x_2612.hlslcc_mtx4x4_MainLightWorldToLight[1i].xy)).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((x_2612.hlslcc_mtx4x4_MainLightWorldToLight[0i].xy * vs_TEXCOORD7.xx) + u_xlat8.xy)).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((x_2612.hlslcc_mtx4x4_MainLightWorldToLight[2i].xy * vs_TEXCOORD7.zz) + u_xlat8.xy)).xy, u_xlat8.zw);
    u_xlat8 = vec4f(((u_xlat8.xy + x_2612.hlslcc_mtx4x4_MainLightWorldToLight[3i].xy)).xy, u_xlat8.zw);
    u_xlat8 = vec4f((((u_xlat8.xy * x_188) + x_188)).xy, u_xlat8.zw);
    let x_2668 = u_xlat8;
    let x_2671 = x_93.x_GlobalMipBias.x;
    let x_2672 = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2668.xy, x_2671);
    u_xlat8 = x_2672;
    let x_2682 = vec4f(x_2612.x_MainLightCookieTextureFormat, x_2612.x_MainLightCookieTextureFormat, x_2612.x_MainLightCookieTextureFormat, x_2612.x_MainLightCookieTextureFormat);
    u_xlatb9 = ((vec4f(x_2682.x, x_2682.y, x_2682.z, x_2682.w) == x_2688)).xy;
    if (u_xlatb9.y) {
      x_2693 = u_xlat8.w;
    } else {
      x_2693 = u_xlat8.x;
    }
    u_xlat62 = x_2693;
    if (u_xlatb9.x) {
      x_2704 = u_xlat8.xyz;
    } else {
      x_2704 = vec3f(u_xlat62);
    }
    u_xlat8 = vec4f(x_2704.xyz, u_xlat8.w);
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
  }
  u_xlat8 = vec4f(((u_xlat8.xyz * x_93.x_MainLightColor.xyz)).xyz, u_xlat8.w);
  u_xlat8 = vec4f(((vec3f(u_xlat95) * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat9.x = vs_TEXCOORD3.w;
  u_xlat9.y = vs_TEXCOORD4.w;
  u_xlat9.z = vs_TEXCOORD5.w;
  u_xlat62 = dot(-(u_xlat9.xyz), u_xlat1.xyz);
  u_xlat62 = (u_xlat62 + u_xlat62);
  u_xlat10 = vec4f((((u_xlat1.xyz * -(vec3f(u_xlat62))) + -(u_xlat9.xyz))).xyz, u_xlat10.w);
  u_xlat62 = dot(u_xlat1.xyz, u_xlat9.xyz);
  u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
  u_xlat62 = (-(u_xlat62) + 1.0f);
  u_xlat62 = (u_xlat62 * u_xlat62);
  u_xlat62 = (u_xlat62 * u_xlat62);
  u_xlat94 = ((-(u_xlat0.x) * 0.69999998807907104492f) + 1.70000004768371582031f);
  u_xlat0.x = (u_xlat0.x * u_xlat94);
  u_xlat0.x = (u_xlat0.x * 6.0f);
  let x_2802 = (u_xlat3.xz * x_93.x_FPParams1.xy);
  u_xlat3 = vec4f(x_2802.x, u_xlat3.y, x_2802.y, u_xlat3.w);
  let x_2811 = vec2u(u_xlat3.xz);
  u_xlatu3 = vec3u(x_2811.x, u_xlatu3.y, x_2811.y);
  u_xlatu11 = vec2u(x_93.x_FPParams1.zw);
  u_xlati3 = ((bitcast<i32>(u_xlatu3.z) * bitcast<i32>(u_xlatu11.x)) + bitcast<i32>(u_xlatu3.x));
  u_xlatu3.x = (u_xlatu11.y * bitcast<u32>(u_xlati3));
  u_xlat12.x = x_93.hlslcc_mtx4x4unity_MatrixV[0i].z;
  u_xlat12.y = x_93.hlslcc_mtx4x4unity_MatrixV[1i].z;
  u_xlat12.z = x_93.hlslcc_mtx4x4unity_MatrixV[2i].z;
  u_xlat63 = dot(-(u_xlat12.xyz), u_xlat7.xyz);
  u_xlatb94 = (x_93.unity_OrthoParams.w == 0.0f);
  u_xlat96 = log2(u_xlat63);
  u_xlat63 = select(u_xlat63, u_xlat96, u_xlatb94);
  u_xlat63 = ((u_xlat63 * x_93.x_FPParams0.x) + x_93.x_FPParams0.y);
  u_xlatu63 = u32(u_xlat63);
  u_xlatu94 = u32(x_93.x_FPParams2.x);
  u_xlatu94 = (u_xlatu94 + 4294967295u);
  u_xlati96 = (bitcast<i32>(u_xlatu11.y) + 2i);
  u_xlatu63 = min(u_xlatu63, u_xlatu94);
  u_xlatu94 = (bitcast<u32>(u_xlati96) * u_xlatu63);
  u_xlatu7 = vec4u((((vec2u(u_xlatu63) * vec2u(bitcast<u32>(u_xlati96))) + vec2u(1u, 2u))).xy, u_xlatu7.zw);
  u_xlatu63 = (u_xlatu7.x >> 2u);
  param = bitcast<i32>(u_xlatu7.x);
  param_1 = 0i;
  param_2 = 1i;
  let x_2917 = int_bitfieldExtract_i1_i1_i1_(&(param), &(param_1), &(param_2));
  param_3 = bitcast<i32>(u_xlatu7.x);
  param_4 = 1i;
  param_5 = 1i;
  let x_2924 = int_bitfieldExtract_i1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_2926 = vec2i(x_2917, x_2924);
  u_xlati7 = vec4i(x_2926.x, u_xlati7.y, x_2926.y, u_xlati7.w);
  u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2939.urp_ZBins[bitcast<i32>(u_xlatu63)].wy))).xy, u_xlati11.z);
  let x_2952 = ~(u_xlati7.xz);
  u_xlati7 = vec4i(x_2952.x, u_xlati7.yz, x_2952.y);
  u_xlati71 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xx) & bitcast<vec2u>(x_2939.urp_ZBins[bitcast<i32>(u_xlatu63)].zx)));
  u_xlati11 = vec3i(bitcast<vec2i>((bitcast<vec2u>(u_xlati71) | bitcast<vec2u>(u_xlati11.xy))).xy, u_xlati11.z);
  u_xlati63 = bitcast<i32>((bitcast<u32>(u_xlati7.z) & bitcast<u32>(u_xlati11.x)));
  u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati7.w) & bitcast<u32>(u_xlati11.y)));
  u_xlatu3.z = (bitcast<u32>(u_xlati63) | bitcast<u32>(u_xlati96));
  let x_3003 = vec2u(x_93.x_FPParams0.zw);
  u_xlatu7 = vec4u(x_3003.x, u_xlatu7.y, x_3003.y, u_xlatu7.w);
  u_xlat96 = dot(abs(u_xlat10.xyz), x_3009);
  u_xlat96 = max(u_xlat96, 0.00000099999999747524f);
  u_xlat96 = (1.0f / u_xlat96);
  u_xlat11 = vec4f(((vec3f(u_xlat96) * u_xlat10.zxy)).xyz, u_xlat11.w);
  u_xlat11.x = -(u_xlat11.x);
  u_xlat11.x = clamp(u_xlat11.x, 0.0f, 1.0f);
  u_xlatb41 = ((u_xlat11.yzyy >= vec4f())).xy;
  hlslcc_movcTemp = u_xlat11;
  if (u_xlatb41.x) {
    x_3041 = u_xlat11.x;
  } else {
    x_3041 = -(u_xlat11.x);
  }
  hlslcc_movcTemp.x = x_3041;
  if (u_xlatb41.y) {
    x_3054 = u_xlat11.x;
  } else {
    x_3054 = -(u_xlat11.x);
  }
  hlslcc_movcTemp.y = x_3054;
  u_xlat11 = hlslcc_movcTemp;
  u_xlat11 = vec4f((((u_xlat10.xy * vec2f(u_xlat96)) + u_xlat11.xy)).xy, u_xlat11.zw);
  u_xlat11 = vec4f((((u_xlat11.xy * x_188) + x_188)).xy, u_xlat11.zw);
  u_xlat11 = vec4f(clamp(u_xlat11.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat11.zw);
  u_xlatu12.y = u_xlatu7.y;
  u_xlati72 = 0i;
  let x_3095 = u_xlatu3.xz;
  u_xlatu12 = vec4u(x_3095.x, u_xlatu12.yz, x_3095.y);
  u_xlat13.x = 0.0f;
  u_xlat13.y = 0.0f;
  u_xlat13.z = 0.0f;
  u_xlat96 = 0.0f;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu97 = (u_xlatu12.w >> 16u);
    u_xlati98 = u_xlati72;
    u_xlatu99 = u_xlatu12.w;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb100 = (u_xlati98 == 0i);
      u_xlatu71.x = (u_xlatu99 & 65535u);
      u_xlatb71 = (u_xlatu97 >= u_xlatu71.x);
      u_xlatb100 = (u_xlatb100 & u_xlatb71);
      if (!(u_xlatb100)) {
        break;
      }
      param_6 = u_xlatu99;
      param_7 = 5i;
      param_8 = 11i;
      let x_3148 = uint_bitfieldExtract_u1_i1_i1_(&(param_6), &(param_7), &(param_8));
      u_xlatu100 = x_3148;
      u_xlatu14 = (vec4u(u_xlatu100) + u_xlatu12.xxyy);
      u_xlatu71 = (u_xlatu14.yw >> x_3157);
      param_9 = bitcast<i32>(u_xlatu14.x);
      param_10 = 0i;
      param_11 = 1i;
      let x_3166 = int_bitfieldExtract_i1_i1_i1_(&(param_9), &(param_10), &(param_11));
      param_12 = bitcast<i32>(u_xlatu14.y);
      param_13 = 1i;
      param_14 = 1i;
      let x_3173 = int_bitfieldExtract_i1_i1_i1_(&(param_12), &(param_13), &(param_14));
      param_15 = bitcast<i32>(u_xlatu14.z);
      param_16 = 0i;
      param_17 = 1i;
      let x_3180 = int_bitfieldExtract_i1_i1_i1_(&(param_15), &(param_16), &(param_17));
      param_18 = bitcast<i32>(u_xlatu14.w);
      param_19 = 1i;
      param_20 = 1i;
      let x_3187 = int_bitfieldExtract_i1_i1_i1_(&(param_18), &(param_19), &(param_20));
      u_xlati14 = vec4i(x_3166, x_3173, x_3180, x_3187);
      u_xlati15 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xx) & bitcast<vec2u>(x_3196.urp_Tiles[bitcast<i32>(u_xlatu71.x)].wy))).xy, u_xlati15.zw);
      u_xlati16 = ~(u_xlati14);
      u_xlati75 = bitcast<vec2i>((bitcast<vec2u>(u_xlati16.xx) & bitcast<vec2u>(x_3196.urp_Tiles[bitcast<i32>(u_xlatu71.x)].zx)));
      u_xlati15 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati75) | bitcast<vec2u>(u_xlati15.xy))).xy, u_xlati15.zw);
      u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati14.y) & bitcast<u32>(u_xlati15.x)));
      u_xlati103 = bitcast<i32>((bitcast<u32>(u_xlati16.y) & bitcast<u32>(u_xlati15.y)));
      u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati71.x) | bitcast<u32>(u_xlati103)));
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.zz) & bitcast<vec2u>(x_2939.urp_ZBins[bitcast<i32>(u_xlatu71.y)].wy))).xy, u_xlati14.zw);
      u_xlati15 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati16.zz) & bitcast<vec2u>(x_2939.urp_ZBins[bitcast<i32>(u_xlatu71.y)].zx))).xy, u_xlati15.zw);
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati14.xy) | bitcast<vec2u>(u_xlati15.xy))).xy, u_xlati14.zw);
      u_xlati101 = bitcast<i32>((bitcast<u32>(u_xlati14.w) & bitcast<u32>(u_xlati14.x)));
      u_xlati103 = bitcast<i32>((bitcast<u32>(u_xlati16.w) & bitcast<u32>(u_xlati14.y)));
      u_xlati101 = bitcast<i32>((bitcast<u32>(u_xlati101) | bitcast<u32>(u_xlati103)));
      u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati101) & bitcast<u32>(u_xlati71.x)));
      u_xlati101 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu99) & 31i)));
      u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati101) & bitcast<u32>(u_xlati71.x)));
      u_xlati100 = (bitcast<i32>(u_xlatu100) << bitcast<u32>(5i));
      u_xlatu100 = (u_xlatu97 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati100)))));
      u_xlatu100 = min(u_xlatu100, 31u);
      u_xlatu100 = (bitcast<u32>(-(bitcast<i32>(u_xlatu100))) + 31u);
      u_xlatu100 = (4294967295u >> (u_xlatu100 & 31u));
      u_xlati98 = bitcast<i32>((u_xlatu100 & bitcast<u32>(u_xlati71.x)));
      u_xlati100 = (bitcast<i32>(u_xlatu99) + 32i);
      u_xlatu99 = (bitcast<u32>(u_xlati100) & 4294967264u);
    }
    u_xlatu12.w = u_xlatu99;
    u_xlatb97 = (u_xlati98 != 0i);
    u_xlatb100 = (u_xlat96 < 0.99000000953674316406f);
    u_xlatb97 = (u_xlatb97 & u_xlatb100);
    if (!(u_xlatb97)) {
      break;
    }
    u_xlati97 = (0i - u_xlati98);
    u_xlatu97 = (bitcast<u32>(u_xlati97) & bitcast<u32>(u_xlati98));
    u_xlat97 = f32(u_xlatu97);
    u_xlatu97 = (bitcast<u32>(u_xlat97) >> 23u);
    u_xlati97 = (bitcast<i32>(u_xlatu97) + -127i);
    u_xlati100 = (1i << bitcast<u32>((u_xlati97 & 31i)));
    u_xlati72 = bitcast<i32>((bitcast<u32>(u_xlati98) ^ bitcast<u32>(u_xlati100)));
    u_xlati100 = (bitcast<i32>(u_xlatu12.w) + -32i);
    u_xlati100 = bitcast<i32>((bitcast<u32>(u_xlati100) & 65504u));
    u_xlati97 = (u_xlati97 + u_xlati100);
    u_xlati97 = (-(bitcast<i32>(u_xlatu7.x)) + u_xlati97);
    u_xlat14 = vec4f(((vs_TEXCOORD7 + -(x_3443.urp_ReflProbes_BoxMin[u_xlati97].xyz))).xyz, u_xlat14.w);
    u_xlat15 = vec4f(((-(vs_TEXCOORD7) + x_3443.urp_ReflProbes_BoxMax[u_xlati97].xyz)).xyz, u_xlat15.w);
    u_xlat14 = vec4f(min(u_xlat14.xyz, u_xlat15.xyz).xyz, u_xlat14.w);
    u_xlat14 = vec4f(((u_xlat14.xyz / x_3443.urp_ReflProbes_BoxMax[u_xlati97].www)).xyz, u_xlat14.w);
    u_xlat100 = min(u_xlat14.z, u_xlat14.y);
    u_xlat100 = min(u_xlat100, u_xlat14.x);
    u_xlat100 = clamp(u_xlat100, 0.0f, 1.0f);
    u_xlat71 = (-(u_xlat96) + 1.0f);
    u_xlat100 = min(u_xlat100, u_xlat71);
    u_xlatu71.x = u32(abs(x_3443.urp_ReflProbes_ProbePosition[u_xlati97].w));
    u_xlatu71.x = (u_xlatu71.x + 4294967295u);
    u_xlat71 = f32(u_xlatu71.x);
    u_xlat71 = min(u_xlat0.x, u_xlat71);
    u_xlat101 = floor(u_xlat71);
    u_xlat103 = (u_xlat101 + 1.0f);
    u_xlat71 = (-(u_xlat101) + u_xlat71);
    u_xlatu101 = u32(u_xlat101);
    u_xlati101 = ((u_xlati97 * 7i) + bitcast<i32>(u_xlatu101));
    u_xlatu103 = u32(u_xlat103);
    u_xlati97 = ((u_xlati97 * 7i) + bitcast<i32>(u_xlatu103));
    u_xlat14 = vec4f((((u_xlat11.xy * x_3443.urp_ReflProbes_MipScaleOffset[u_xlati101].xy) + x_3443.urp_ReflProbes_MipScaleOffset[u_xlati101].zw)).xy, u_xlat14.zw);
    u_xlat14 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat14.xy, 0.0f).xyz.xyz, u_xlat14.w);
    u_xlat15 = vec4f((((u_xlat11.xy * x_3443.urp_ReflProbes_MipScaleOffset[u_xlati97].xy) + x_3443.urp_ReflProbes_MipScaleOffset[u_xlati97].zw)).xy, u_xlat15.zw);
    u_xlat15 = vec4f(textureSampleLevel(urp_ReflProbes_Atlas, sampler_LinearClamp, u_xlat15.xy, 0.0f).xyz.xyz, u_xlat15.w);
    u_xlat15 = vec4f(((-(u_xlat14.xyz) + u_xlat15.xyz)).xyz, u_xlat15.w);
    u_xlat14 = vec4f((((vec3f(u_xlat71) * u_xlat15.xyz) + u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlat13 = vec4f((((vec3f(u_xlat100) * u_xlat14.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat96 = (u_xlat96 + u_xlat100);
  }
  u_xlatb63 = (u_xlat96 < 0.99000000953674316406f);
  if (u_xlatb63) {
    u_xlat10 = textureSampleLevel(x_GlossyEnvironmentCubeMap, sampler_GlossyEnvironmentCubeMap, u_xlat10.xyz, u_xlat0.x);
    u_xlat0.x = (-(u_xlat96) + 1.0f);
    u_xlat63 = (u_xlat10.w + -1.0f);
    u_xlat63 = ((x_93.x_GlossyEnvironmentCubeMap_HDR.w * u_xlat63) + 1.0f);
    u_xlat63 = max(u_xlat63, 0.0f);
    u_xlat63 = log2(u_xlat63);
    u_xlat63 = (u_xlat63 * x_93.x_GlossyEnvironmentCubeMap_HDR.y);
    u_xlat63 = exp2(u_xlat63);
    u_xlat63 = (u_xlat63 * x_93.x_GlossyEnvironmentCubeMap_HDR.x);
    u_xlat10 = vec4f(((u_xlat10.xyz * vec3f(u_xlat63))).xyz, u_xlat10.w);
    u_xlat13 = vec4f((((u_xlat0.xxx * u_xlat10.xyz) + u_xlat13.xyz)).xyz, u_xlat13.w);
  }
  let x_3685 = ((vec2f(u_xlat60) * vec2f(u_xlat60)) + vec2f(-1.0f, 1.0f));
  u_xlat0 = vec3f(x_3685.x, u_xlat0.y, x_3685.y);
  u_xlat60 = (1.0f / u_xlat0.z);
  u_xlat10 = vec4f(((-(u_xlat5.xyz) + vec3f(u_xlat33))).xyz, u_xlat10.w);
  u_xlat10 = vec4f((((vec3f(u_xlat62) * u_xlat10.xyz) + u_xlat5.xyz)).xyz, u_xlat10.w);
  u_xlat10 = vec4f(((vec3f(u_xlat60) * u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat10 = vec4f(((u_xlat10.xyz * u_xlat13.xyz)).xyz, u_xlat10.w);
  u_xlat4 = vec4f((((u_xlat4.xyz * u_xlat6.xyz) + u_xlat10.xyz)).xyz, u_xlat4.w);
  u_xlati60 = bitcast<i32>((x_93.x_MainLightLayerMask & bitcast<u32>(x_3744.unity_RenderingLayer.x)));
  u_xlat62 = dot(u_xlat1.xyz, x_93.x_MainLightPosition.xyz);
  u_xlat62 = clamp(u_xlat62, 0.0f, 1.0f);
  u_xlat2.x = (u_xlat62 * u_xlat2.x);
  u_xlat8 = vec4f(((u_xlat2.xxx * u_xlat8.xyz)).xyz, u_xlat8.w);
  u_xlat10 = vec4f(((u_xlat9.xyz + x_93.x_MainLightPosition.xyz)).xyz, u_xlat10.w);
  u_xlat2.x = dot(u_xlat10.xyz, u_xlat10.xyz);
  u_xlat2.x = max(u_xlat2.x, 1.17549435e-38f);
  u_xlat2.x = inverseSqrt(u_xlat2.x);
  u_xlat10 = vec4f(((u_xlat2.xxx * u_xlat10.xyz)).xyz, u_xlat10.w);
  u_xlat2.x = dot(u_xlat1.xyz, u_xlat10.xyz);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat2.z = dot(x_93.x_MainLightPosition.xyz, u_xlat10.xyz);
  u_xlat2.z = clamp(u_xlat2.z, 0.0f, 1.0f);
  let x_3825 = (u_xlat2.xz * u_xlat2.xz);
  u_xlat2 = vec4f(x_3825.x, u_xlat2.y, x_3825.y, u_xlat2.w);
  u_xlat2.x = ((u_xlat2.x * u_xlat0.x) + 1.00001001358032226562f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat62 = max(u_xlat2.z, 0.10000000149011611938f);
  u_xlat2.x = (u_xlat62 * u_xlat2.x);
  u_xlat2.x = (u_xlat93 * u_xlat2.x);
  u_xlat2.x = (u_xlat92 / u_xlat2.x);
  u_xlat10 = vec4f((((u_xlat5.xyz * u_xlat2.xxx) + u_xlat6.xyz)).xyz, u_xlat10.w);
  u_xlat8 = vec4f(((u_xlat8.xyz * u_xlat10.xyz)).xyz, u_xlat8.w);
  if ((u_xlati60 != 0i)) {
    x_3880 = u_xlat8.xyz;
  } else {
    x_3880 = vec3f();
  }
  u_xlat8 = vec4f(x_3880.xyz, u_xlat8.w);
  u_xlatu60 = min(u_xlatu7.z, 32u);
  u_xlat2.x = ((u_xlat32 * x_915.x_AdditionalShadowFadeParams.x) + x_915.x_AdditionalShadowFadeParams.y);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  let x_3913 = vec4f(x_2612.x_AdditionalLightsCookieAtlasTextureFormat, x_2612.x_AdditionalLightsCookieAtlasTextureFormat, x_2612.x_AdditionalLightsCookieAtlasTextureFormat, x_2612.x_AdditionalLightsCookieAtlasTextureFormat);
  u_xlatb32 = ((vec4f(x_3913.x, x_3913.y, x_3913.z, x_3913.w) == x_2688)).xy;
  u_xlat10.x = 0.0f;
  u_xlat10.y = 0.0f;
  u_xlat10.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    if ((u_xlatu_loop_1 < u_xlatu60)) {
    } else {
      break;
    }
    u_xlat11 = vec4f((((-(vs_TEXCOORD7) * x_3943.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].www) + x_3943.x_AdditionalLightsPosition[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat11.w);
    u_xlat63 = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat63 = max(u_xlat63, 0.00006103515625f);
    u_xlat96 = inverseSqrt(u_xlat63);
    u_xlat12 = vec4f(((vec3f(u_xlat96) * u_xlat11.xyz)).xyz, u_xlat12.w);
    u_xlat7.x = (1.0f / u_xlat63);
    u_xlat63 = (u_xlat63 * x_3943.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].x);
    u_xlat63 = ((-(u_xlat63) * u_xlat63) + 1.0f);
    u_xlat63 = max(u_xlat63, 0.0f);
    u_xlat63 = (u_xlat63 * u_xlat63);
    u_xlat63 = (u_xlat63 * u_xlat7.x);
    u_xlat7.x = dot(x_3943.x_AdditionalLightsSpotDir[bitcast<i32>(u_xlatu_loop_1)].xyz, u_xlat12.xyz);
    u_xlat7.x = ((u_xlat7.x * x_3943.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].z) + x_3943.x_AdditionalLightsAttenuation[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat7.x = (u_xlat7.x * u_xlat7.x);
    u_xlat63 = (u_xlat63 * u_xlat7.x);
    u_xlatb7 = (bitcast<i32>(u_xlatu_loop_1) < 0i);
    u_xlati97 = i32(x_915.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].w);
    u_xlati7.x = select(u_xlati97, -1i, u_xlatb7);
    u_xlatb97 = (u_xlati7.x >= 0i);
    if (u_xlatb97) {
      u_xlatb97 = any(!((vec4f() == vec4f(x_915.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].z))));
      if (u_xlatb97) {
        u_xlatb13 = vec4<bool>(((abs(u_xlat12.zzyz) >= abs(u_xlat12.xyxx))).xyz.xyz, u_xlatb13.w);
        u_xlatb97 = (u_xlatb13.y & u_xlatb13.x);
        let x_4083 = ((-(u_xlat12.zyzx) < vec4f())).xyw;
        u_xlatb13 = vec4<bool>(x_4083.xy, u_xlatb13.z, x_4083.z);
        u_xlat13.x = select(4.0f, 5.0f, u_xlatb13.x);
        u_xlat13.y = select(2.0f, 3.0f, u_xlatb13.y);
        u_xlat98 = select(0.0f, 1.0f, u_xlatb13.w);
        if (u_xlatb13.z) {
          x_4101 = u_xlat13.y;
        } else {
          x_4101 = u_xlat98;
        }
        u_xlat98 = x_4101;
        if (u_xlatb97) {
          x_4110 = u_xlat13.x;
        } else {
          x_4110 = u_xlat98;
        }
        u_xlat97 = x_4110;
        u_xlati97 = i32(u_xlat97);
        u_xlati7.x = (u_xlati97 + u_xlati7.x);
      }
      u_xlati7.x = (u_xlati7.x << bitcast<u32>(2i));
      u_xlat13 = (vs_TEXCOORD7.yyyy * x_915.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 1i)]);
      u_xlat13 = ((x_915.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati7.x] * vs_TEXCOORD7.xxxx) + u_xlat13);
      u_xlat13 = ((x_915.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 2i)] * vs_TEXCOORD7.zzzz) + u_xlat13);
      u_xlat13 = (u_xlat13 + x_915.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati7.x + 3i)]);
      u_xlat13 = vec4f(((u_xlat13.xyz / u_xlat13.www)).xyz, u_xlat13.w);
      u_xlatb7 = (0.0f < x_915.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
      if (u_xlatb7) {
        u_xlatb7 = (1.0f == x_915.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
        if (u_xlatb7) {
          u_xlat14 = (u_xlat13.xyxy + x_915.x_AdditionalShadowOffset0);
          let x_4193 = u_xlat14.xy;
          txVec30 = vec3f(x_4193.x, x_4193.y, u_xlat13.z);
          u_xlat15.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec30.xy, txVec30.z);
          let x_4209 = u_xlat14.zw;
          txVec31 = vec3f(x_4209.x, x_4209.y, u_xlat13.z);
          u_xlat15.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec31.xy, txVec31.z);
          u_xlat14 = (u_xlat13.xyxy + x_915.x_AdditionalShadowOffset1);
          let x_4229 = u_xlat14.xy;
          txVec32 = vec3f(x_4229.x, x_4229.y, u_xlat13.z);
          u_xlat15.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec32.xy, txVec32.z);
          let x_4244 = u_xlat14.zw;
          txVec33 = vec3f(x_4244.x, x_4244.y, u_xlat13.z);
          u_xlat15.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec33.xy, txVec33.z);
          u_xlat7.x = dot(u_xlat15, x_1377);
        } else {
          u_xlatb97 = (2.0f == x_915.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].y);
          if (u_xlatb97) {
            u_xlat14 = vec4f((((u_xlat13.xy * x_915.x_AdditionalShadowmapSize.zw) + x_188)).xy, u_xlat14.zw);
            u_xlat14 = vec4f(floor(u_xlat14.xy).xy, u_xlat14.zw);
            u_xlat74 = ((u_xlat13.xy * x_915.x_AdditionalShadowmapSize.zw) + -(u_xlat14.xy));
            u_xlat15 = (u_xlat74.xxyy + x_1415);
            u_xlat16 = (u_xlat15.xxzz * u_xlat15.xxzz);
            let x_4304 = (u_xlat16.yw * x_1425);
            u_xlat15 = vec4f(x_4304.x, u_xlat15.y, x_4304.y, u_xlat15.w);
            u_xlat16 = vec4f((((u_xlat16.xz * x_188) + -(u_xlat74))).xy, u_xlat16.zw);
            u_xlat76 = (-(u_xlat74) + x_1113);
            u_xlat17 = vec4f(min(u_xlat74, vec2f()).xy, u_xlat17.zw);
            u_xlat17 = vec4f((((-(u_xlat17.xy) * u_xlat17.xy) + u_xlat76)).xy, u_xlat17.zw);
            u_xlat74 = max(u_xlat74, vec2f());
            u_xlat74 = ((-(u_xlat74) * u_xlat74) + u_xlat15.yw);
            u_xlat17 = vec4f(((u_xlat17.xy + x_1113)).xy, u_xlat17.zw);
            u_xlat74 = (u_xlat74 + x_1113);
            u_xlat18 = vec4f(((u_xlat16.xy * x_1475)).xy, u_xlat18.zw);
            u_xlat16 = vec4f(((u_xlat76 * x_1475)).xy, u_xlat16.zw);
            u_xlat17 = vec4f(((u_xlat17.xy * x_1475)).xy, u_xlat17.zw);
            u_xlat19 = vec4f(((u_xlat74 * x_1475)).xy, u_xlat19.zw);
            u_xlat74 = (u_xlat15.yw * x_1475);
            u_xlat18.z = u_xlat17.x;
            u_xlat18.w = u_xlat74.x;
            u_xlat16.z = u_xlat19.x;
            u_xlat16.w = u_xlat15.x;
            u_xlat20 = (u_xlat16.zwxz + u_xlat18.zwxz);
            u_xlat17.z = u_xlat18.y;
            u_xlat17.w = u_xlat74.y;
            u_xlat19.z = u_xlat16.y;
            u_xlat19.w = u_xlat15.z;
            u_xlat15 = vec4f(((u_xlat17.zyw + u_xlat19.zyw)).xyz, u_xlat15.w);
            u_xlat16 = vec4f(((u_xlat16.xzw / u_xlat20.zwy)).xyz, u_xlat16.w);
            u_xlat16 = vec4f(((u_xlat16.xyz + x_1542)).xyz, u_xlat16.w);
            u_xlat17 = vec4f(((u_xlat19.zyw / u_xlat15.xyz)).xyz, u_xlat17.w);
            u_xlat17 = vec4f(((u_xlat17.xyz + x_1542)).xyz, u_xlat17.w);
            u_xlat16 = vec4f(((u_xlat16.yxz * x_915.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat16.w);
            u_xlat17 = vec4f(((u_xlat17.xyz * x_915.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat17.w);
            u_xlat16.w = u_xlat17.x;
            u_xlat18 = ((u_xlat14.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat16.ywxw);
            u_xlat74 = ((u_xlat14.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat16.zw);
            u_xlat17.w = u_xlat16.y;
            let x_4471 = u_xlat17.yz;
            u_xlat16 = vec4f(u_xlat16.x, x_4471.x, u_xlat16.z, x_4471.y);
            u_xlat19 = ((u_xlat14.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyzy);
            u_xlat17 = ((u_xlat14.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat17.wywz);
            u_xlat16 = ((u_xlat14.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xwzw);
            u_xlat21 = (u_xlat15.xxxy * u_xlat20.zwyz);
            u_xlat22 = (u_xlat15.yyzz * u_xlat20);
            u_xlat97 = (u_xlat15.z * u_xlat20.y);
            let x_4519 = u_xlat18.xy;
            txVec34 = vec3f(x_4519.x, x_4519.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec34.xy, txVec34.z);
            let x_4533 = u_xlat18.zw;
            txVec35 = vec3f(x_4533.x, x_4533.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec35.xy, txVec35.z);
            u_xlat99 = (u_xlat99 * u_xlat21.y);
            u_xlat98 = ((u_xlat21.x * u_xlat98) + u_xlat99);
            txVec36 = vec3f(u_xlat74.x, u_xlat74.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec36.xy, txVec36.z);
            u_xlat98 = ((u_xlat21.z * u_xlat99) + u_xlat98);
            let x_4577 = u_xlat17.xy;
            txVec37 = vec3f(x_4577.x, x_4577.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec37.xy, txVec37.z);
            u_xlat98 = ((u_xlat21.w * u_xlat99) + u_xlat98);
            let x_4597 = u_xlat19.xy;
            txVec38 = vec3f(x_4597.x, x_4597.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec38.xy, txVec38.z);
            u_xlat98 = ((u_xlat22.x * u_xlat99) + u_xlat98);
            let x_4617 = u_xlat19.zw;
            txVec39 = vec3f(x_4617.x, x_4617.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec39.xy, txVec39.z);
            u_xlat98 = ((u_xlat22.y * u_xlat99) + u_xlat98);
            let x_4637 = u_xlat17.zw;
            txVec40 = vec3f(x_4637.x, x_4637.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec40.xy, txVec40.z);
            u_xlat98 = ((u_xlat22.z * u_xlat99) + u_xlat98);
            let x_4657 = u_xlat16.xy;
            txVec41 = vec3f(x_4657.x, x_4657.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec41.xy, txVec41.z);
            u_xlat98 = ((u_xlat22.w * u_xlat99) + u_xlat98);
            let x_4677 = u_xlat16.zw;
            txVec42 = vec3f(x_4677.x, x_4677.y, u_xlat13.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec42.xy, txVec42.z);
            u_xlat7.x = ((u_xlat97 * u_xlat99) + u_xlat98);
          } else {
            u_xlat14 = vec4f((((u_xlat13.xy * x_915.x_AdditionalShadowmapSize.zw) + x_188)).xy, u_xlat14.zw);
            u_xlat14 = vec4f(floor(u_xlat14.xy).xy, u_xlat14.zw);
            u_xlat74 = ((u_xlat13.xy * x_915.x_AdditionalShadowmapSize.zw) + -(u_xlat14.xy));
            u_xlat15 = (u_xlat74.xxyy + x_1415);
            u_xlat16 = (u_xlat15.xxzz * u_xlat15.xxzz);
            let x_4730 = (u_xlat16.yw * x_1875);
            u_xlat17 = vec4f(u_xlat17.x, x_4730.x, u_xlat17.z, x_4730.y);
            let x_4738 = ((u_xlat16.xz * x_188) + -(u_xlat74));
            u_xlat15 = vec4f(x_4738.x, u_xlat15.y, x_4738.y, u_xlat15.w);
            u_xlat16 = vec4f(((-(u_xlat74) + x_1113)).xy, u_xlat16.zw);
            u_xlat76 = min(u_xlat74, vec2f());
            u_xlat16 = vec4f((((-(u_xlat76) * u_xlat76) + u_xlat16.xy)).xy, u_xlat16.zw);
            u_xlat76 = max(u_xlat74, vec2f());
            let x_4766 = ((-(u_xlat76) * u_xlat76) + u_xlat15.yw);
            u_xlat45 = vec3f(x_4766.x, u_xlat45.y, x_4766.y);
            u_xlat16 = vec4f(((u_xlat16.xy + x_461)).xy, u_xlat16.zw);
            let x_4776 = (u_xlat45.xz + x_461);
            u_xlat15 = vec4f(u_xlat15.x, x_4776.x, u_xlat15.z, x_4776.y);
            u_xlat18.z = (u_xlat15.y * 0.08163200318813323975f);
            u_xlat19 = vec4f(((u_xlat15.zxw * x_1932)).xyz, u_xlat19.w);
            u_xlat15 = vec4f(((u_xlat16.xy * x_1938)).xy, u_xlat15.zw);
            u_xlat18.x = u_xlat19.y;
            let x_4799 = ((u_xlat74.xx * x_1948) + x_1951);
            u_xlat18 = vec4f(u_xlat18.x, x_4799.x, u_xlat18.z, x_4799.y);
            let x_4805 = ((u_xlat74.xx * x_1948) + x_1958);
            u_xlat16 = vec4f(x_4805.x, u_xlat16.y, x_4805.y, u_xlat16.w);
            u_xlat16.y = u_xlat15.x;
            u_xlat16.w = u_xlat17.y;
            u_xlat18 = (u_xlat16 + u_xlat18);
            let x_4820 = ((u_xlat74.yy * x_1948) + x_1951);
            u_xlat19 = vec4f(u_xlat19.x, x_4820.x, u_xlat19.z, x_4820.y);
            let x_4826 = ((u_xlat74.yy * x_1948) + x_1958);
            u_xlat17 = vec4f(x_4826.x, u_xlat17.y, x_4826.y, u_xlat17.w);
            u_xlat17.y = u_xlat15.y;
            u_xlat15 = (u_xlat17 + u_xlat19);
            u_xlat16 = (u_xlat16 / u_xlat18);
            u_xlat16 = (u_xlat16 + x_1996);
            u_xlat17 = (u_xlat17 / u_xlat15);
            u_xlat17 = (u_xlat17 + x_1996);
            u_xlat16 = (u_xlat16.wxyz * x_915.x_AdditionalShadowmapSize.xxxx);
            u_xlat17 = (u_xlat17.xwyz * x_915.x_AdditionalShadowmapSize.yyyy);
            let x_4858 = u_xlat16.yzw;
            u_xlat19 = vec4f(x_4858.x, u_xlat19.y, x_4858.yz);
            u_xlat19.y = u_xlat17.x;
            u_xlat20 = ((u_xlat14.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat74 = ((u_xlat14.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat19.wy);
            u_xlat16.y = u_xlat19.y;
            u_xlat19.y = u_xlat17.z;
            u_xlat21 = ((u_xlat14.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat22 = vec4f((((u_xlat14.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat19.wy)).xy, u_xlat22.zw);
            u_xlat16.z = u_xlat19.y;
            u_xlat23 = ((u_xlat14.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat16.xyxz);
            u_xlat19.y = u_xlat17.w;
            u_xlat24 = ((u_xlat14.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat46 = ((u_xlat14.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat19.wy);
            u_xlat16.w = u_xlat19.y;
            u_xlat82 = ((u_xlat14.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat16.xw);
            let x_4958 = u_xlat19.xzw;
            u_xlat17 = vec4f(x_4958.x, u_xlat17.y, x_4958.yz);
            u_xlat19 = ((u_xlat14.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat17.xyzy);
            u_xlat77 = ((u_xlat14.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat17.wy);
            u_xlat17.x = u_xlat16.x;
            u_xlat14 = vec4f((((u_xlat14.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat17.xy)).xy, u_xlat14.zw);
            u_xlat25 = (u_xlat15.xxxx * u_xlat18);
            u_xlat26 = (u_xlat15.yyyy * u_xlat18);
            u_xlat27 = (u_xlat15.zzzz * u_xlat18);
            u_xlat15 = (u_xlat15.wwww * u_xlat18);
            let x_5015 = u_xlat20.xy;
            txVec43 = vec3f(x_5015.x, x_5015.y, u_xlat13.z);
            u_xlat97 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec43.xy, txVec43.z);
            let x_5029 = u_xlat20.zw;
            txVec44 = vec3f(x_5029.x, x_5029.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec44.xy, txVec44.z);
            u_xlat98 = (u_xlat98 * u_xlat25.y);
            u_xlat97 = ((u_xlat25.x * u_xlat97) + u_xlat98);
            txVec45 = vec3f(u_xlat74.x, u_xlat74.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec45.xy, txVec45.z);
            u_xlat97 = ((u_xlat25.z * u_xlat98) + u_xlat97);
            let x_5072 = u_xlat23.xy;
            txVec46 = vec3f(x_5072.x, x_5072.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec46.xy, txVec46.z);
            u_xlat97 = ((u_xlat25.w * u_xlat98) + u_xlat97);
            let x_5092 = u_xlat21.xy;
            txVec47 = vec3f(x_5092.x, x_5092.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec47.xy, txVec47.z);
            u_xlat97 = ((u_xlat26.x * u_xlat98) + u_xlat97);
            let x_5112 = u_xlat21.zw;
            txVec48 = vec3f(x_5112.x, x_5112.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec48.xy, txVec48.z);
            u_xlat97 = ((u_xlat26.y * u_xlat98) + u_xlat97);
            let x_5132 = u_xlat22.xy;
            txVec49 = vec3f(x_5132.x, x_5132.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec49.xy, txVec49.z);
            u_xlat97 = ((u_xlat26.z * u_xlat98) + u_xlat97);
            let x_5152 = u_xlat23.zw;
            txVec50 = vec3f(x_5152.x, x_5152.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec50.xy, txVec50.z);
            u_xlat97 = ((u_xlat26.w * u_xlat98) + u_xlat97);
            let x_5172 = u_xlat24.xy;
            txVec51 = vec3f(x_5172.x, x_5172.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec51.xy, txVec51.z);
            u_xlat97 = ((u_xlat27.x * u_xlat98) + u_xlat97);
            let x_5192 = u_xlat24.zw;
            txVec52 = vec3f(x_5192.x, x_5192.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec52.xy, txVec52.z);
            u_xlat97 = ((u_xlat27.y * u_xlat98) + u_xlat97);
            txVec53 = vec3f(u_xlat46.x, u_xlat46.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec53.xy, txVec53.z);
            u_xlat97 = ((u_xlat27.z * u_xlat98) + u_xlat97);
            txVec54 = vec3f(u_xlat82.x, u_xlat82.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec54.xy, txVec54.z);
            u_xlat97 = ((u_xlat27.w * u_xlat98) + u_xlat97);
            let x_5250 = u_xlat19.xy;
            txVec55 = vec3f(x_5250.x, x_5250.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec55.xy, txVec55.z);
            u_xlat97 = ((u_xlat15.x * u_xlat98) + u_xlat97);
            let x_5270 = u_xlat19.zw;
            txVec56 = vec3f(x_5270.x, x_5270.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec56.xy, txVec56.z);
            u_xlat97 = ((u_xlat15.y * u_xlat98) + u_xlat97);
            txVec57 = vec3f(u_xlat77.x, u_xlat77.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec57.xy, txVec57.z);
            u_xlat97 = ((u_xlat15.z * u_xlat98) + u_xlat97);
            let x_5309 = u_xlat14.xy;
            txVec58 = vec3f(x_5309.x, x_5309.y, u_xlat13.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec58.xy, txVec58.z);
            u_xlat7.x = ((u_xlat15.w * u_xlat98) + u_xlat97);
          }
        }
      } else {
        let x_5331 = u_xlat13.xy;
        txVec59 = vec3f(x_5331.x, x_5331.y, u_xlat13.z);
        u_xlat7.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec59.xy, txVec59.z);
      }
      u_xlat97 = (1.0f + -(x_915.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x));
      u_xlat7.x = ((u_xlat7.x * x_915.x_AdditionalShadowParams[bitcast<i32>(u_xlatu_loop_1)].x) + u_xlat97);
      u_xlatb97 = (0.0f >= u_xlat13.z);
      u_xlatb98 = (u_xlat13.z >= 1.0f);
      u_xlatb97 = (u_xlatb97 | u_xlatb98);
      if (u_xlatb97) {
        x_5371 = 1.0f;
      } else {
        x_5371 = u_xlat7.x;
      }
      u_xlat7.x = x_5371;
    } else {
      u_xlat7.x = 1.0f;
    }
    u_xlat97 = (-(u_xlat7.x) + 1.0f);
    u_xlat7.x = ((u_xlat2.x * u_xlat97) + u_xlat7.x);
    u_xlati97 = (1i << bitcast<u32>((bitcast<i32>(u_xlatu_loop_1) & 31i)));
    u_xlati97 = bitcast<i32>((bitcast<u32>(u_xlati97) & bitcast<u32>(x_2612.x_AdditionalLightsCookieEnableBits)));
    if ((u_xlati97 != 0i)) {
      u_xlati97 = i32(x_2612.x_AdditionalLightsLightTypes[bitcast<i32>(u_xlatu_loop_1)].el);
      u_xlati98 = select(1i, 0i, (u_xlati97 != 0i));
      u_xlati99 = (bitcast<i32>(u_xlatu_loop_1) << bitcast<u32>(2i));
      if ((u_xlati98 != 0i)) {
        u_xlat13 = vec4f(((vs_TEXCOORD7.yyy * x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 1i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati99].xyw * vs_TEXCOORD7.xxx) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f((((x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 2i)].xyw * vs_TEXCOORD7.zzz) + u_xlat13.xyz)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xyz + x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 3i)].xyw)).xyz, u_xlat13.w);
        u_xlat13 = vec4f(((u_xlat13.xy / u_xlat13.zz)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((u_xlat13.xy * x_188) + x_188)).xy, u_xlat13.zw);
        u_xlat13 = vec4f(clamp(u_xlat13.xy, vec2f(0.0f), vec2f(1.0f)).xy, u_xlat13.zw);
        u_xlat13 = vec4f((((x_2612.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat13.xy) + x_2612.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat13.zw);
      } else {
        u_xlatb97 = (u_xlati97 == 1i);
        u_xlati97 = select(0i, 1i, u_xlatb97);
        if ((u_xlati97 != 0i)) {
          u_xlat73 = (vs_TEXCOORD7.yy * x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 1i)].xy);
          u_xlat73 = ((x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati99].xy * vs_TEXCOORD7.xx) + u_xlat73);
          u_xlat73 = ((x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 2i)].xy * vs_TEXCOORD7.zz) + u_xlat73);
          u_xlat73 = (u_xlat73 + x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 3i)].xy);
          u_xlat73 = ((u_xlat73 * x_188) + x_188);
          u_xlat73 = fract(u_xlat73);
          u_xlat13 = vec4f((((x_2612.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat73) + x_2612.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat13.zw);
        } else {
          u_xlat14 = (vs_TEXCOORD7.yyyy * x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 1i)]);
          u_xlat14 = ((x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[u_xlati99] * vs_TEXCOORD7.xxxx) + u_xlat14);
          u_xlat14 = ((x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 2i)] * vs_TEXCOORD7.zzzz) + u_xlat14);
          u_xlat14 = (u_xlat14 + x_2612.hlslcc_mtx4x4_AdditionalLightsWorldToLights[(u_xlati99 + 3i)]);
          u_xlat14 = vec4f(((u_xlat14.xyz / u_xlat14.www)).xyz, u_xlat14.w);
          u_xlat97 = dot(u_xlat14.xyz, u_xlat14.xyz);
          u_xlat97 = inverseSqrt(u_xlat97);
          u_xlat14 = vec4f(((vec3f(u_xlat97) * u_xlat14.xyz)).xyz, u_xlat14.w);
          u_xlat97 = dot(abs(u_xlat14.xyz), x_3009);
          u_xlat97 = max(u_xlat97, 0.00000099999999747524f);
          u_xlat97 = (1.0f / u_xlat97);
          u_xlat15 = vec4f(((vec3f(u_xlat97) * u_xlat14.zxy)).xyz, u_xlat15.w);
          u_xlat15.x = -(u_xlat15.x);
          u_xlat15.x = clamp(u_xlat15.x, 0.0f, 1.0f);
          u_xlatb73 = ((u_xlat15.yzyz >= vec4f())).xy;
          if (u_xlatb73.x) {
            x_5651 = u_xlat15.x;
          } else {
            x_5651 = -(u_xlat15.x);
          }
          u_xlat73.x = x_5651;
          if (u_xlatb73.y) {
            x_5664 = u_xlat15.x;
          } else {
            x_5664 = -(u_xlat15.x);
          }
          u_xlat73.y = x_5664;
          u_xlat73 = ((u_xlat14.xy * vec2f(u_xlat97)) + u_xlat73);
          u_xlat73 = ((u_xlat73 * x_188) + x_188);
          u_xlat73 = clamp(u_xlat73, vec2f(0.0f), vec2f(1.0f));
          u_xlat13 = vec4f((((x_2612.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].xy * u_xlat73) + x_2612.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(u_xlatu_loop_1)].zw)).xy, u_xlat13.zw);
        }
      }
      u_xlat13 = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, u_xlat13.xy, 0.0f);
      if (u_xlatb32.y) {
        x_5713 = u_xlat13.w;
      } else {
        x_5713 = u_xlat13.x;
      }
      u_xlat97 = x_5713;
      if (u_xlatb32.x) {
        x_5724 = u_xlat13.xyz;
      } else {
        x_5724 = vec3f(u_xlat97);
      }
      u_xlat13 = vec4f(x_5724.xyz, u_xlat13.w);
    } else {
      u_xlat13.x = 1.0f;
      u_xlat13.y = 1.0f;
      u_xlat13.z = 1.0f;
    }
    u_xlat13 = vec4f(((u_xlat13.xyz * x_3943.x_AdditionalLightsColor[bitcast<i32>(u_xlatu_loop_1)].xyz)).xyz, u_xlat13.w);
    u_xlat13 = vec4f(((vec3f(u_xlat95) * u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlati97 = bitcast<i32>((bitcast<u32>(x_3744.unity_RenderingLayer.x) & bitcast<u32>(x_3943.x_AdditionalLightsLayerMasks[bitcast<i32>(u_xlatu_loop_1)].el)));
    u_xlat63 = (u_xlat63 * u_xlat7.x);
    u_xlat7.x = dot(u_xlat1.xyz, u_xlat12.xyz);
    u_xlat7.x = clamp(u_xlat7.x, 0.0f, 1.0f);
    u_xlat63 = (u_xlat63 * u_xlat7.x);
    u_xlat13 = vec4f(((vec3f(u_xlat63) * u_xlat13.xyz)).xyz, u_xlat13.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * vec3f(u_xlat96)) + u_xlat9.xyz)).xyz, u_xlat11.w);
    u_xlat63 = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat63 = max(u_xlat63, 1.17549435e-38f);
    u_xlat63 = inverseSqrt(u_xlat63);
    u_xlat11 = vec4f(((vec3f(u_xlat63) * u_xlat11.xyz)).xyz, u_xlat11.w);
    u_xlat63 = dot(u_xlat1.xyz, u_xlat11.xyz);
    u_xlat63 = clamp(u_xlat63, 0.0f, 1.0f);
    u_xlat96 = dot(u_xlat12.xyz, u_xlat11.xyz);
    u_xlat96 = clamp(u_xlat96, 0.0f, 1.0f);
    u_xlat63 = (u_xlat63 * u_xlat63);
    u_xlat63 = ((u_xlat63 * u_xlat0.x) + 1.00001001358032226562f);
    u_xlat96 = (u_xlat96 * u_xlat96);
    u_xlat63 = (u_xlat63 * u_xlat63);
    u_xlat96 = max(u_xlat96, 0.10000000149011611938f);
    u_xlat63 = (u_xlat63 * u_xlat96);
    u_xlat63 = (u_xlat93 * u_xlat63);
    u_xlat63 = (u_xlat92 / u_xlat63);
    u_xlat11 = vec4f((((u_xlat5.xyz * vec3f(u_xlat63)) + u_xlat6.xyz)).xyz, u_xlat11.w);
    u_xlat11 = vec4f((((u_xlat11.xyz * u_xlat13.xyz) + u_xlat10.xyz)).xyz, u_xlat11.w);
    if ((u_xlati97 != 0i)) {
      x_5878 = u_xlat11.xyz;
    } else {
      x_5878 = u_xlat10.xyz;
    }
    u_xlat10 = vec4f(x_5878.xyz, u_xlat10.w);

    continuing {
      u_xlatu_loop_1 = (u_xlatu_loop_1 + bitcast<u32>(1i));
    }
  }
  u_xlatu60 = (u_xlatu94 >> 2u);
  param_21 = bitcast<i32>(u_xlatu94);
  param_22 = 0i;
  param_23 = 1i;
  let x_5899 = int_bitfieldExtract_i1_i1_i1_(&(param_21), &(param_22), &(param_23));
  param_24 = bitcast<i32>(u_xlatu94);
  param_25 = 1i;
  param_26 = 1i;
  let x_5905 = int_bitfieldExtract_i1_i1_i1_(&(param_24), &(param_25), &(param_26));
  u_xlati33 = vec2i(x_5899, x_5905);
  let x_5917 = bitcast<vec2i>((bitcast<vec2u>(u_xlati33.xx) & bitcast<vec2u>(x_2939.urp_ZBins[bitcast<i32>(u_xlatu60)].wy)));
  u_xlati7 = vec4i(x_5917.x, u_xlati7.yz, x_5917.y);
  u_xlati11 = vec3i((~(u_xlati33)).xy, u_xlati11.z);
  let x_5934 = bitcast<vec2i>((bitcast<vec2u>(u_xlati11.xx) & bitcast<vec2u>(x_2939.urp_ZBins[bitcast<i32>(u_xlatu60)].zx)));
  u_xlati11 = vec3i(x_5934.x, u_xlati11.y, x_5934.y);
  let x_5944 = bitcast<vec2i>((bitcast<vec2u>(u_xlati7.xw) | bitcast<vec2u>(u_xlati11.xz)));
  u_xlati7 = vec4i(x_5944.x, u_xlati7.yz, x_5944.y);
  u_xlati60 = bitcast<i32>((bitcast<u32>(u_xlati33.y) & bitcast<u32>(u_xlati7.x)));
  u_xlati33.x = bitcast<i32>((bitcast<u32>(u_xlati11.y) & bitcast<u32>(u_xlati7.w)));
  u_xlatu60 = (bitcast<u32>(u_xlati60) | bitcast<u32>(u_xlati33.x));
  u_xlatu11.x = u_xlatu3.x;
  u_xlatu11.y = u_xlatu7.y;
  u_xlati71.x = 0i;
  u_xlatu101 = u_xlatu60;
  u_xlat12 = vec4f(u_xlat10.xyz.xyz, u_xlat12.w);
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatu33 = (u_xlatu101 >> 16u);
    u_xlati63 = u_xlati71.x;
    u_xlatu94 = u_xlatu101;
    loop {
      if (true) {
      } else {
        break;
      }
      u_xlatb96 = (u_xlati63 == 0i);
      u_xlatu7.x = (u_xlatu94 & 65535u);
      u_xlatb7 = (u_xlatu33 >= u_xlatu7.x);
      u_xlatb96 = (u_xlatb96 & u_xlatb7);
      if (!(u_xlatb96)) {
        break;
      }
      param_27 = u_xlatu94;
      param_28 = 5i;
      param_29 = 11i;
      let x_6020 = uint_bitfieldExtract_u1_i1_i1_(&(param_27), &(param_28), &(param_29));
      u_xlatu96 = x_6020;
      u_xlatu13 = (vec4u(u_xlatu96) + u_xlatu11.xxyy);
      let x_6029 = (u_xlatu13.yw >> x_3157);
      u_xlatu7 = vec4u(x_6029.x, u_xlatu7.yz, x_6029.y);
      param_30 = bitcast<i32>(u_xlatu13.x);
      param_31 = 0i;
      param_32 = 1i;
      let x_6039 = int_bitfieldExtract_i1_i1_i1_(&(param_30), &(param_31), &(param_32));
      param_33 = bitcast<i32>(u_xlatu13.y);
      param_34 = 1i;
      param_35 = 1i;
      let x_6046 = int_bitfieldExtract_i1_i1_i1_(&(param_33), &(param_34), &(param_35));
      param_36 = bitcast<i32>(u_xlatu13.z);
      param_37 = 0i;
      param_38 = 1i;
      let x_6053 = int_bitfieldExtract_i1_i1_i1_(&(param_36), &(param_37), &(param_38));
      param_39 = bitcast<i32>(u_xlatu13.w);
      param_40 = 1i;
      param_41 = 1i;
      let x_6060 = int_bitfieldExtract_i1_i1_i1_(&(param_39), &(param_40), &(param_41));
      u_xlati13 = vec4i(x_6039, x_6046, x_6053, x_6060);
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xx) & bitcast<vec2u>(x_3196.urp_Tiles[bitcast<i32>(u_xlatu7.x)].wy))).xy, u_xlati14.zw);
      u_xlati15 = ~(u_xlati13);
      u_xlati74 = bitcast<vec2i>((bitcast<vec2u>(u_xlati15.xx) & bitcast<vec2u>(x_3196.urp_Tiles[bitcast<i32>(u_xlatu7.x)].zx)));
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati74) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati14.zw);
      u_xlati7.x = bitcast<i32>((bitcast<u32>(u_xlati13.y) & bitcast<u32>(u_xlati14.x)));
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati15.y) & bitcast<u32>(u_xlati14.y)));
      u_xlati7.x = bitcast<i32>((bitcast<u32>(u_xlati7.x) | bitcast<u32>(u_xlati98)));
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.zz) & bitcast<vec2u>(x_2939.urp_ZBins[bitcast<i32>(u_xlatu7.w)].wy))).xy, u_xlati13.zw);
      u_xlati14 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati15.zz) & bitcast<vec2u>(x_2939.urp_ZBins[bitcast<i32>(u_xlatu7.w)].zx))).xy, u_xlati14.zw);
      u_xlati13 = vec4i(bitcast<vec2i>((bitcast<vec2u>(u_xlati13.xy) | bitcast<vec2u>(u_xlati14.xy))).xy, u_xlati13.zw);
      u_xlati97 = bitcast<i32>((bitcast<u32>(u_xlati13.w) & bitcast<u32>(u_xlati13.x)));
      u_xlati98 = bitcast<i32>((bitcast<u32>(u_xlati15.w) & bitcast<u32>(u_xlati13.y)));
      u_xlati97 = bitcast<i32>((bitcast<u32>(u_xlati97) | bitcast<u32>(u_xlati98)));
      u_xlati7.x = bitcast<i32>((bitcast<u32>(u_xlati97) & bitcast<u32>(u_xlati7.x)));
      u_xlati97 = (-1i << bitcast<u32>((bitcast<i32>(u_xlatu94) & 31i)));
      u_xlati7.x = bitcast<i32>((bitcast<u32>(u_xlati97) & bitcast<u32>(u_xlati7.x)));
      u_xlati96 = (bitcast<i32>(u_xlatu96) << bitcast<u32>(5i));
      u_xlatu96 = (u_xlatu33 + bitcast<u32>(-(bitcast<i32>(bitcast<u32>(u_xlati96)))));
      u_xlatu96 = min(u_xlatu96, 31u);
      u_xlatu96 = (bitcast<u32>(-(bitcast<i32>(u_xlatu96))) + 31u);
      u_xlatu96 = (4294967295u >> (u_xlatu96 & 31u));
      u_xlati63 = bitcast<i32>((u_xlatu96 & bitcast<u32>(u_xlati7.x)));
      u_xlati96 = (bitcast<i32>(u_xlatu94) + 32i);
      u_xlatu94 = (bitcast<u32>(u_xlati96) & 4294967264u);
    }
    u_xlatu101 = u_xlatu94;
    if ((u_xlati63 == 0i)) {
      break;
    }
    u_xlati33.x = (0i - u_xlati63);
    u_xlatu33 = (bitcast<u32>(u_xlati33.x) & bitcast<u32>(u_xlati63));
    u_xlat33 = f32(u_xlatu33);
    u_xlatu33 = (bitcast<u32>(u_xlat33) >> 23u);
    u_xlati33.x = (bitcast<i32>(u_xlatu33) + -127i);
    u_xlati96 = (1i << bitcast<u32>((u_xlati33.x & 31i)));
    u_xlati71.x = bitcast<i32>((bitcast<u32>(u_xlati63) ^ bitcast<u32>(u_xlati96)));
    u_xlati96 = (bitcast<i32>(u_xlatu101) + -32i);
    u_xlati96 = bitcast<i32>((bitcast<u32>(u_xlati96) & 65504u));
    u_xlati33.x = (u_xlati33.x + u_xlati96);
    u_xlati33.x = (bitcast<i32>(u_xlatu7.z) + u_xlati33.x);
    u_xlat13 = vec4f((((-(vs_TEXCOORD7) * x_3943.x_AdditionalLightsPosition[u_xlati33.x].www) + x_3943.x_AdditionalLightsPosition[u_xlati33.x].xyz)).xyz, u_xlat13.w);
    u_xlat96 = dot(u_xlat13.xyz, u_xlat13.xyz);
    u_xlat96 = max(u_xlat96, 0.00006103515625f);
    u_xlat7.x = inverseSqrt(u_xlat96);
    u_xlat14 = vec4f(((u_xlat7.xxx * u_xlat13.xyz)).xyz, u_xlat14.w);
    u_xlat97 = (1.0f / u_xlat96);
    u_xlat96 = (u_xlat96 * x_3943.x_AdditionalLightsAttenuation[u_xlati33.x].x);
    u_xlat96 = ((-(u_xlat96) * u_xlat96) + 1.0f);
    u_xlat96 = max(u_xlat96, 0.0f);
    u_xlat96 = (u_xlat96 * u_xlat96);
    u_xlat96 = (u_xlat96 * u_xlat97);
    u_xlat97 = dot(x_3943.x_AdditionalLightsSpotDir[u_xlati33.x].xyz, u_xlat14.xyz);
    u_xlat97 = ((u_xlat97 * x_3943.x_AdditionalLightsAttenuation[u_xlati33.x].z) + x_3943.x_AdditionalLightsAttenuation[u_xlati33.x].w);
    u_xlat97 = clamp(u_xlat97, 0.0f, 1.0f);
    u_xlat97 = (u_xlat97 * u_xlat97);
    u_xlat96 = (u_xlat96 * u_xlat97);
    u_xlatb97 = (u_xlati33.x < 0i);
    u_xlati98 = i32(x_915.x_AdditionalShadowParams[u_xlati33.x].w);
    u_xlati97 = select(u_xlati98, -1i, u_xlatb97);
    u_xlatb98 = (u_xlati97 >= 0i);
    if (u_xlatb98) {
      u_xlatb98 = any(!((vec4f() == vec4f(x_915.x_AdditionalShadowParams[u_xlati33.x].z))));
      if (u_xlatb98) {
        u_xlatb15 = vec4<bool>(((abs(u_xlat14.zzyz) >= abs(u_xlat14.xyxx))).xyz.xyz, u_xlatb15.w);
        u_xlatb98 = (u_xlatb15.y & u_xlatb15.x);
        let x_6414 = ((-(u_xlat14.zyzx) < vec4f())).xyw;
        u_xlatb15 = vec4<bool>(x_6414.xy, u_xlatb15.z, x_6414.z);
        u_xlat15.x = select(4.0f, 5.0f, u_xlatb15.x);
        u_xlat15.y = select(2.0f, 3.0f, u_xlatb15.y);
        u_xlat99 = select(0.0f, 1.0f, u_xlatb15.w);
        if (u_xlatb15.z) {
          x_6430 = u_xlat15.y;
        } else {
          x_6430 = u_xlat99;
        }
        u_xlat99 = x_6430;
        if (u_xlatb98) {
          x_6439 = u_xlat15.x;
        } else {
          x_6439 = u_xlat99;
        }
        u_xlat98 = x_6439;
        u_xlati98 = i32(u_xlat98);
        u_xlati97 = (u_xlati97 + u_xlati98);
      }
      u_xlati97 = (u_xlati97 << bitcast<u32>(2i));
      u_xlat15 = (vs_TEXCOORD7.yyyy * x_915.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati97 + 1i)]);
      u_xlat15 = ((x_915.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[u_xlati97] * vs_TEXCOORD7.xxxx) + u_xlat15);
      u_xlat15 = ((x_915.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati97 + 2i)] * vs_TEXCOORD7.zzzz) + u_xlat15);
      u_xlat15 = (u_xlat15 + x_915.hlslcc_mtx4x4_AdditionalLightsWorldToShadow[(u_xlati97 + 3i)]);
      u_xlat15 = vec4f(((u_xlat15.xyz / u_xlat15.www)).xyz, u_xlat15.w);
      u_xlatb97 = (0.0f < x_915.x_AdditionalShadowParams[u_xlati33.x].y);
      if (u_xlatb97) {
        u_xlatb97 = (1.0f == x_915.x_AdditionalShadowParams[u_xlati33.x].y);
        if (u_xlatb97) {
          u_xlat16 = (u_xlat15.xyxy + x_915.x_AdditionalShadowOffset0);
          let x_6514 = u_xlat16.xy;
          txVec60 = vec3f(x_6514.x, x_6514.y, u_xlat15.z);
          u_xlat17.x = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec60.xy, txVec60.z);
          let x_6529 = u_xlat16.zw;
          txVec61 = vec3f(x_6529.x, x_6529.y, u_xlat15.z);
          u_xlat17.y = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec61.xy, txVec61.z);
          u_xlat16 = (u_xlat15.xyxy + x_915.x_AdditionalShadowOffset1);
          let x_6549 = u_xlat16.xy;
          txVec62 = vec3f(x_6549.x, x_6549.y, u_xlat15.z);
          u_xlat17.z = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec62.xy, txVec62.z);
          let x_6564 = u_xlat16.zw;
          txVec63 = vec3f(x_6564.x, x_6564.y, u_xlat15.z);
          u_xlat17.w = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec63.xy, txVec63.z);
          u_xlat97 = dot(u_xlat17, x_1377);
        } else {
          u_xlatb98 = (2.0f == x_915.x_AdditionalShadowParams[u_xlati33.x].y);
          if (u_xlatb98) {
            u_xlat16 = vec4f((((u_xlat15.xy * x_915.x_AdditionalShadowmapSize.zw) + x_188)).xy, u_xlat16.zw);
            u_xlat16 = vec4f(floor(u_xlat16.xy).xy, u_xlat16.zw);
            u_xlat76 = ((u_xlat15.xy * x_915.x_AdditionalShadowmapSize.zw) + -(u_xlat16.xy));
            u_xlat17 = (u_xlat76.xxyy + x_1415);
            u_xlat18 = (u_xlat17.xxzz * u_xlat17.xxzz);
            let x_6622 = (u_xlat18.yw * x_1425);
            u_xlat17 = vec4f(x_6622.x, u_xlat17.y, x_6622.y, u_xlat17.w);
            u_xlat18 = vec4f((((u_xlat18.xz * x_188) + -(u_xlat76))).xy, u_xlat18.zw);
            u_xlat78 = (-(u_xlat76) + x_1113);
            u_xlat19 = vec4f(min(u_xlat76, vec2f()).xy, u_xlat19.zw);
            u_xlat19 = vec4f((((-(u_xlat19.xy) * u_xlat19.xy) + u_xlat78)).xy, u_xlat19.zw);
            u_xlat76 = max(u_xlat76, vec2f());
            u_xlat76 = ((-(u_xlat76) * u_xlat76) + u_xlat17.yw);
            u_xlat19 = vec4f(((u_xlat19.xy + x_1113)).xy, u_xlat19.zw);
            u_xlat76 = (u_xlat76 + x_1113);
            u_xlat20 = vec4f(((u_xlat18.xy * x_1475)).xy, u_xlat20.zw);
            u_xlat18 = vec4f(((u_xlat78 * x_1475)).xy, u_xlat18.zw);
            u_xlat19 = vec4f(((u_xlat19.xy * x_1475)).xy, u_xlat19.zw);
            u_xlat21 = vec4f(((u_xlat76 * x_1475)).xy, u_xlat21.zw);
            u_xlat76 = (u_xlat17.yw * x_1475);
            u_xlat20.z = u_xlat19.x;
            u_xlat20.w = u_xlat76.x;
            u_xlat18.z = u_xlat21.x;
            u_xlat18.w = u_xlat17.x;
            u_xlat22 = (u_xlat18.zwxz + u_xlat20.zwxz);
            u_xlat19.z = u_xlat20.y;
            u_xlat19.w = u_xlat76.y;
            u_xlat21.z = u_xlat18.y;
            u_xlat21.w = u_xlat17.z;
            u_xlat17 = vec4f(((u_xlat19.zyw + u_xlat21.zyw)).xyz, u_xlat17.w);
            u_xlat18 = vec4f(((u_xlat18.xzw / u_xlat22.zwy)).xyz, u_xlat18.w);
            u_xlat18 = vec4f(((u_xlat18.xyz + x_1542)).xyz, u_xlat18.w);
            u_xlat19 = vec4f(((u_xlat21.zyw / u_xlat17.xyz)).xyz, u_xlat19.w);
            u_xlat19 = vec4f(((u_xlat19.xyz + x_1542)).xyz, u_xlat19.w);
            u_xlat18 = vec4f(((u_xlat18.yxz * x_915.x_AdditionalShadowmapSize.xxx)).xyz, u_xlat18.w);
            u_xlat19 = vec4f(((u_xlat19.xyz * x_915.x_AdditionalShadowmapSize.yyy)).xyz, u_xlat19.w);
            u_xlat18.w = u_xlat19.x;
            u_xlat20 = ((u_xlat16.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat18.ywxw);
            u_xlat76 = ((u_xlat16.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat18.zw);
            u_xlat19.w = u_xlat18.y;
            let x_6789 = u_xlat19.yz;
            u_xlat18 = vec4f(u_xlat18.x, x_6789.x, u_xlat18.z, x_6789.y);
            u_xlat21 = ((u_xlat16.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyzy);
            u_xlat19 = ((u_xlat16.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat19.wywz);
            u_xlat18 = ((u_xlat16.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xwzw);
            u_xlat23 = (u_xlat17.xxxy * u_xlat22.zwyz);
            u_xlat24 = (u_xlat17.yyzz * u_xlat22);
            u_xlat98 = (u_xlat17.z * u_xlat22.y);
            let x_6835 = u_xlat20.xy;
            txVec64 = vec3f(x_6835.x, x_6835.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec64.xy, txVec64.z);
            let x_6849 = u_xlat20.zw;
            txVec65 = vec3f(x_6849.x, x_6849.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec65.xy, txVec65.z);
            u_xlat100 = (u_xlat100 * u_xlat23.y);
            u_xlat99 = ((u_xlat23.x * u_xlat99) + u_xlat100);
            txVec66 = vec3f(u_xlat76.x, u_xlat76.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec66.xy, txVec66.z);
            u_xlat99 = ((u_xlat23.z * u_xlat100) + u_xlat99);
            let x_6892 = u_xlat19.xy;
            txVec67 = vec3f(x_6892.x, x_6892.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec67.xy, txVec67.z);
            u_xlat99 = ((u_xlat23.w * u_xlat100) + u_xlat99);
            let x_6912 = u_xlat21.xy;
            txVec68 = vec3f(x_6912.x, x_6912.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec68.xy, txVec68.z);
            u_xlat99 = ((u_xlat24.x * u_xlat100) + u_xlat99);
            let x_6932 = u_xlat21.zw;
            txVec69 = vec3f(x_6932.x, x_6932.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec69.xy, txVec69.z);
            u_xlat99 = ((u_xlat24.y * u_xlat100) + u_xlat99);
            let x_6952 = u_xlat19.zw;
            txVec70 = vec3f(x_6952.x, x_6952.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec70.xy, txVec70.z);
            u_xlat99 = ((u_xlat24.z * u_xlat100) + u_xlat99);
            let x_6972 = u_xlat18.xy;
            txVec71 = vec3f(x_6972.x, x_6972.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec71.xy, txVec71.z);
            u_xlat99 = ((u_xlat24.w * u_xlat100) + u_xlat99);
            let x_6992 = u_xlat18.zw;
            txVec72 = vec3f(x_6992.x, x_6992.y, u_xlat15.z);
            u_xlat100 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec72.xy, txVec72.z);
            u_xlat97 = ((u_xlat98 * u_xlat100) + u_xlat99);
          } else {
            u_xlat16 = vec4f((((u_xlat15.xy * x_915.x_AdditionalShadowmapSize.zw) + x_188)).xy, u_xlat16.zw);
            u_xlat16 = vec4f(floor(u_xlat16.xy).xy, u_xlat16.zw);
            u_xlat76 = ((u_xlat15.xy * x_915.x_AdditionalShadowmapSize.zw) + -(u_xlat16.xy));
            u_xlat17 = (u_xlat76.xxyy + x_1415);
            u_xlat18 = (u_xlat17.xxzz * u_xlat17.xxzz);
            let x_7044 = (u_xlat18.yw * x_1875);
            u_xlat19 = vec4f(u_xlat19.x, x_7044.x, u_xlat19.z, x_7044.y);
            let x_7052 = ((u_xlat18.xz * x_188) + -(u_xlat76));
            u_xlat17 = vec4f(x_7052.x, u_xlat17.y, x_7052.y, u_xlat17.w);
            u_xlat18 = vec4f(((-(u_xlat76) + x_1113)).xy, u_xlat18.zw);
            u_xlat78 = min(u_xlat76, vec2f());
            u_xlat18 = vec4f((((-(u_xlat78) * u_xlat78) + u_xlat18.xy)).xy, u_xlat18.zw);
            u_xlat78 = max(u_xlat76, vec2f());
            let x_7080 = ((-(u_xlat78) * u_xlat78) + u_xlat17.yw);
            u_xlat47 = vec3f(x_7080.x, u_xlat47.y, x_7080.y);
            u_xlat18 = vec4f(((u_xlat18.xy + x_461)).xy, u_xlat18.zw);
            let x_7090 = (u_xlat47.xz + x_461);
            u_xlat17 = vec4f(u_xlat17.x, x_7090.x, u_xlat17.z, x_7090.y);
            u_xlat20.z = (u_xlat17.y * 0.08163200318813323975f);
            u_xlat21 = vec4f(((u_xlat17.zxw * x_1932)).xyz, u_xlat21.w);
            u_xlat17 = vec4f(((u_xlat18.xy * x_1938)).xy, u_xlat17.zw);
            u_xlat20.x = u_xlat21.y;
            let x_7113 = ((u_xlat76.xx * x_1948) + x_1951);
            u_xlat20 = vec4f(u_xlat20.x, x_7113.x, u_xlat20.z, x_7113.y);
            let x_7119 = ((u_xlat76.xx * x_1948) + x_1958);
            u_xlat18 = vec4f(x_7119.x, u_xlat18.y, x_7119.y, u_xlat18.w);
            u_xlat18.y = u_xlat17.x;
            u_xlat18.w = u_xlat19.y;
            u_xlat20 = (u_xlat18 + u_xlat20);
            let x_7134 = ((u_xlat76.yy * x_1948) + x_1951);
            u_xlat21 = vec4f(u_xlat21.x, x_7134.x, u_xlat21.z, x_7134.y);
            let x_7140 = ((u_xlat76.yy * x_1948) + x_1958);
            u_xlat19 = vec4f(x_7140.x, u_xlat19.y, x_7140.y, u_xlat19.w);
            u_xlat19.y = u_xlat17.y;
            u_xlat17 = (u_xlat19 + u_xlat21);
            u_xlat18 = (u_xlat18 / u_xlat20);
            u_xlat18 = (u_xlat18 + x_1996);
            u_xlat19 = (u_xlat19 / u_xlat17);
            u_xlat19 = (u_xlat19 + x_1996);
            u_xlat18 = (u_xlat18.wxyz * x_915.x_AdditionalShadowmapSize.xxxx);
            u_xlat19 = (u_xlat19.xwyz * x_915.x_AdditionalShadowmapSize.yyyy);
            let x_7172 = u_xlat18.yzw;
            u_xlat21 = vec4f(x_7172.x, u_xlat21.y, x_7172.yz);
            u_xlat21.y = u_xlat19.x;
            u_xlat22 = ((u_xlat16.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat21.xyzy);
            u_xlat76 = ((u_xlat16.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat21.wy);
            u_xlat18.y = u_xlat21.y;
            u_xlat21.y = u_xlat19.z;
            u_xlat23 = ((u_xlat16.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat21.xyzy);
            u_xlat24 = vec4f((((u_xlat16.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat21.wy)).xy, u_xlat24.zw);
            u_xlat18.z = u_xlat21.y;
            u_xlat25 = ((u_xlat16.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat18.xyxz);
            u_xlat21.y = u_xlat19.w;
            u_xlat26 = ((u_xlat16.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat21.xyzy);
            u_xlat48 = ((u_xlat16.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat21.wy);
            u_xlat18.w = u_xlat21.y;
            u_xlat84 = ((u_xlat16.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat18.xw);
            let x_7270 = u_xlat21.xzw;
            u_xlat19 = vec4f(x_7270.x, u_xlat19.y, x_7270.yz);
            u_xlat21 = ((u_xlat16.xyxy * x_915.x_AdditionalShadowmapSize.xyxy) + u_xlat19.xyzy);
            u_xlat79 = ((u_xlat16.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat19.wy);
            u_xlat19.x = u_xlat18.x;
            u_xlat16 = vec4f((((u_xlat16.xy * x_915.x_AdditionalShadowmapSize.xy) + u_xlat19.xy)).xy, u_xlat16.zw);
            u_xlat27 = (u_xlat17.xxxx * u_xlat20);
            u_xlat28 = (u_xlat17.yyyy * u_xlat20);
            u_xlat29 = (u_xlat17.zzzz * u_xlat20);
            u_xlat17 = (u_xlat17.wwww * u_xlat20);
            let x_7326 = u_xlat22.xy;
            txVec73 = vec3f(x_7326.x, x_7326.y, u_xlat15.z);
            u_xlat98 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec73.xy, txVec73.z);
            let x_7340 = u_xlat22.zw;
            txVec74 = vec3f(x_7340.x, x_7340.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec74.xy, txVec74.z);
            u_xlat99 = (u_xlat99 * u_xlat27.y);
            u_xlat98 = ((u_xlat27.x * u_xlat98) + u_xlat99);
            txVec75 = vec3f(u_xlat76.x, u_xlat76.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec75.xy, txVec75.z);
            u_xlat98 = ((u_xlat27.z * u_xlat99) + u_xlat98);
            let x_7383 = u_xlat25.xy;
            txVec76 = vec3f(x_7383.x, x_7383.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec76.xy, txVec76.z);
            u_xlat98 = ((u_xlat27.w * u_xlat99) + u_xlat98);
            let x_7403 = u_xlat23.xy;
            txVec77 = vec3f(x_7403.x, x_7403.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec77.xy, txVec77.z);
            u_xlat98 = ((u_xlat28.x * u_xlat99) + u_xlat98);
            let x_7423 = u_xlat23.zw;
            txVec78 = vec3f(x_7423.x, x_7423.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec78.xy, txVec78.z);
            u_xlat98 = ((u_xlat28.y * u_xlat99) + u_xlat98);
            let x_7443 = u_xlat24.xy;
            txVec79 = vec3f(x_7443.x, x_7443.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, txVec79.xy, txVec79.z);
            u_xlat98 = ((u_xlat28.z * u_xlat99) + u_xlat98);
            let x_7463 = u_xlat25.zw;
            txVec80 = vec3f(x_7463.x, x_7463.y, u_xlat15.z);
            u_xlat99 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture,