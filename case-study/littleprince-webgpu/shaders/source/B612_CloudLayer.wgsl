//Assets/Levels/B612/Shaders/B612_CloudLayer.shader
diagnostic(off, derivative_uniformity);

var<private> gl_VertexIndex : i32;

var<private> gl_Position : vec4f;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  mask = bitcast<u32>((~((-1i << bitcast<u32>(*(bits)))) << bitcast<u32>(*(offset_1))));
  let x_27 = *(base);
  let x_29 = mask;
  let x_32 = *(insert);
  let x_34 = *(offset_1);
  let x_37 = mask;
  return bitcast<i32>(((bitcast<u32>(x_27) & ~(x_29)) | ((bitcast<u32>(x_32) << bitcast<u32>(x_34)) & x_37)));
}

fn main_1() {
  var u_xlatu0 : vec3u;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat0 : vec2f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  param = 0i;
  param_1 = gl_VertexIndex;
  param_2 = 1i;
  param_3 = 1i;
  let x_55 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlatu0.x = bitcast<u32>(x_55);
  u_xlatu0.z = (bitcast<u32>(gl_VertexIndex) & 2u);
  u_xlat0 = vec2f(u_xlatu0.xz);
  gl_Position = vec4f((((u_xlat0 * vec2f(2.0f)) + vec2f(-1.0f))).xy, gl_Position.zw);
  gl_Position = vec4f(gl_Position.xy, vec2f(1.0f).xy);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4f,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(gl_Position);
}

//Assets/Levels/B612/Shaders/B612_CloudLayer.shader
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
  x_ZBufferParams : vec4f,
  /* @offset(64) */
  x_B612SunDirection : vec4f,
  /* @offset(80) */
  x_B612TimeParams : vec4f,
  /* @offset(96) */
  x_B612SkyZenith : vec4f,
  /* @offset(112) */
  x_B612SkyHorizon : vec4f,
  /* @offset(128) */
  x_B612SkyHorizonSun : vec4f,
  /* @offset(144) */
  x_B612SkyGround : vec4f,
  /* @offset(160) */
  x_B612SkyParams : vec4f,
  /* @offset(176) */
  x_B612HazeColor : vec4f,
  /* @offset(192) */
  x_B612HazeParams : vec4f,
  /* @offset(208) */
  x_B612SkyGlow : vec4f,
  /* @offset(224) */
  x_B612SkyAnti : vec4f,
  /* @offset(240) */
  x_B612SkyParams2 : vec4f,
  /* @offset(256) */
  x_B612CloudParams : vec4f,
  /* @offset(272) */
  x_B612SunGlow : vec4f,
  /* @offset(288) */
  x_B612HdriParams : vec4f,
  /* @offset(304) */
  x_B612HdriDay0 : vec4f,
  /* @offset(320) */
  x_B612HdriDay1 : vec4f,
  /* @offset(336) */
  x_B612HdriDay2 : vec4f,
  /* @offset(352) */
  x_B612HdriDay3 : vec4f,
  /* @offset(368) */
  x_B612HdriDusk0 : vec4f,
  /* @offset(384) */
  x_B612HdriDusk1 : vec4f,
  /* @offset(400) */
  x_B612HdriDusk2 : vec4f,
  /* @offset(416) */
  x_B612HdriDusk3 : vec4f,
  /* @offset(432) */
  x_B612SkyCloud : vec4f,
  /* @offset(448) */
  x_B612SkyCloud2 : vec4f,
  /* @offset(464) */
  x_B612SkyCloudWarm : vec4f,
  /* @offset(480) */
  x_B612SkyNight : vec4f,
  /* @offset(496) */
  x_B612SkyCloudNight : vec4f,
  /* @offset(512) */
  x_B612SkyCloudCut : vec4f,
  /* @offset(528) */
  x_Layer : vec4f,
  /* @offset(544) */
  x_Weather : vec4f,
  /* @offset(560) */
  x_Shape : vec4f,
  /* @offset(576) */
  x_ShapeB : vec4f,
  /* @offset(592) */
  x_Structure : vec4f,
  /* @offset(608) */
  x_Motion : vec4f,
  /* @offset(624) */
  x_Calm : vec4f,
  /* @offset(640) */
  x_CalmShape : vec4f,
  /* @offset(656) */
  x_Flatten : vec4f,
  /* @offset(672) */
  x_HeapCarve : f32,
  /* @offset(676) */
  x_BaseYScale : f32,
  /* @offset(688) */
  x_Breakup : vec4f,
  /* @offset(704) */
  x_LaneMist : f32,
  /* @offset(720) */
  x_Airiness : vec4f,
  /* @offset(736) */
  x_BankLayout : vec4f,
  /* @offset(752) */
  x_March : vec4f,
  /* @offset(768) */
  x_MarchB : vec4f,
  /* @offset(784) */
  x_LightMarch : vec4f,
  /* @offset(800) */
  x_LightFar : vec4f,
  /* @offset(816) */
  x_PlanetShadow : vec4f,
  /* @offset(832) */
  x_PlanetShadowB : vec4f,
  /* @offset(848) */
  x_Band : vec4f,
  /* @offset(864) */
  x_DebugView : f32,
  /* @offset(880) */
  x_LkSun : vec4f,
  /* @offset(896) */
  x_LkPhase : vec4f,
  /* @offset(912) */
  x_LkMS : vec4f,
  /* @offset(928) */
  x_LkAmb : vec4f,
  /* @offset(944) */
  x_LkHaze : vec4f,
  /* @offset(960) */
  x_LkHaze2 : vec4f,
  /* @offset(976) */
  x_LkGrade : vec4f,
  /* @offset(992) */
  x_LkGold : vec4f,
  /* @offset(1008) */
  x_LkRose : vec4f,
  /* @offset(1024) */
  x_LkLav : vec4f,
  /* @offset(1040) */
  hlslcc_mtx4x4_CloudInvVP : Arr,
  /* @offset(1104) */
  x_CloudCam : vec4f,
  /* @offset(1120) */
  x_CloudCamFwd : vec4f,
  /* @offset(1136) */
  x_CloudFullRes : vec4f,
  /* @offset(1152) */
  x_CloudFrame : vec4f,
  /* @offset(1168) */
  x_CloudJitter : vec4f,
  /* @offset(1184) */
  x_CloudWind : vec4f,
  /* @offset(1200) */
  x_CloudBoil : vec4f,
}

var<private> gl_FragCoord : vec4f;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_CloudSceneDepth : texture_2d<f32>;

var<private> SV_Target0 : vec4f;

var<private> SV_Target1 : vec2f;

@group(0) @binding(5) var x_BlueNoise : texture_2d<f32>;

@group(0) @binding(2) var x_WeatherTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

@group(0) @binding(4) var x_DetailNoise : texture_3d<f32>;

@group(0) @binding(3) var x_BaseNoise : texture_3d<f32>;

@group(0) @binding(8) var sampler_TrilinearRepeat : sampler;

@group(0) @binding(0) var x_B612HdriRingDay : texture_2d<f32>;

@group(0) @binding(1) var x_B612HdriRingDusk : texture_2d<f32>;

const x_53 = vec2f(0.5f);

const x_105 = vec2f(-1.0f);

const x_694 = vec2f(1.0f);

const x_1139 = vec3f(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f);

const x_1372 = vec3f(1.44269502162933349609f);

const x_1471 = vec4f(0.00000999999974737875f, 0.0f, 0.00000999999974737875f, 0.0f);

const x_2173 = vec2f(0.00000999999974737875f);

const x_2887 = vec3f(-0.5f);

const x_2991 = vec2f(-0.17000000178813934326f, -0.63999998569488525391f);

const x_3293 = vec3f(0.43000000715255737305f);

const x_3301 = vec2f(-1.0f, -1.5f);

const x_3416 = vec3f(0.625f, 0.25f, 0.125f);

const x_3427 = vec3f(-0.10000000149011611938f, -0.34999999403953552246f, -0.28000000119209289551f);

const x_3433 = vec3f(1.66666674613952636719f, 3.99999952316284179688f, 3.70370364189147949219f);

const x_3440 = vec3f(-2.0f);

const x_3442 = vec3f(3.0f);

const x_3808 = vec3f(-0.18000000715255737305f, -0.25f, -0.44999998807907104492f);

const x_3814 = vec3f(2.38095235824584960938f, 2.50000023841857910156f, 4.0f);

const x_6727 = vec2f(0.00000999999974737875f, 0.0f);

const x_7313 = vec3f(-1.0f);

const x_7322 = vec3f(1.0f);

const x_7338 = vec2f(1.5f, 90.0f);

fn main_1() {
  var hlslcc_FragCoord : vec4f;
  var u_xlati0 : vec2i;
  var u_xlat88 : vec2f;
  var u_xlat1 : vec4f;
  var u_xlatb88 : bool;
  var u_xlat132 : f32;
  var x_89 : f32;
  var u_xlat2 : vec4f;
  var u_xlati132 : i32;
  var u_xlat45 : vec3f;
  var u_xlati45 : vec3i;
  var u_xlati3 : vec2i;
  var u_xlati91 : vec2i;
  var u_xlatu4 : vec4u;
  var u_xlatb91 : bool;
  var u_xlat135 : f32;
  var u_xlati4 : vec4i;
  var u_xlatu5 : vec4u;
  var u_xlat91 : vec2f;
  var u_xlatb5 : bool;
  var x_328 : f32;
  var u_xlat4 : vec4f;
  var u_xlatb48 : bool;
  var x_372 : f32;
  var u_xlatb133 : bool;
  var x_433 : f32;
  var u_xlati133 : i32;
  var u_xlat3 : vec2f;
  var u_xlat47 : f32;
  var x_484 : f32;
  var u_xlatb45 : bool;
  var u_xlat133 : f32;
  var u_xlatb135 : bool;
  var u_xlat48 : f32;
  var x_648 : f32;
  var u_xlat5 : vec3f;
  var u_xlat137 : f32;
  var u_xlat6 : vec4f;
  var u_xlat94 : vec2f;
  var u_xlat7 : vec4f;
  var u_xlat50 : f32;
  var u_xlat95 : vec2f;
  var u_xlat8 : vec3f;
  var u_xlat138 : f32;
  var u_xlat96 : vec2f;
  var u_xlat9 : vec3f;
  var u_xlat51 : f32;
  var u_xlat52 : vec3f;
  var u_xlatb51 : bool;
  var x_1096 : f32;
  var u_xlat92 : f32;
  var u_xlat10 : vec3f;
  var u_xlat11 : vec4f;
  var u_xlat12 : vec4f;
  var u_xlat141 : f32;
  var u_xlat13 : vec3f;
  var u_xlat14 : vec4f;
  var u_xlat100 : vec2f;
  var u_xlat15 : vec3f;
  var u_xlat103 : vec2f;
  var u_xlat16 : vec3f;
  var u_xlat17 : vec4f;
  var u_xlat18 : vec4f;
  var u_xlat19 : vec4f;
  var u_xlat142 : f32;
  var u_xlat20 : vec3f;
  var u_xlat21 : vec3f;
  var u_xlat22 : vec3f;
  var u_xlat55 : vec3f;
  var u_xlatb92 : bool;
  var u_xlat143 : f32;
  var u_xlatu19 : vec4u;
  var u_xlat0 : vec3f;
  var u_xlat44 : f32;
  var u_xlat145 : f32;
  var u_xlat146 : f32;
  var u_xlatb146 : bool;
  var u_xlat147 : f32;
  var u_xlatb148 : bool;
  var u_xlat108 : vec2f;
  var u_xlat150 : f32;
  var u_xlat153 : f32;
  var u_xlat66 : f32;
  var u_xlat110 : f32;
  var u_xlat23 : vec2f;
  var u_xlat154 : f32;
  var u_xlat111 : f32;
  var u_xlat155 : f32;
  var u_xlat24 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat112 : f32;
  var u_xlati25 : vec3i;
  var u_xlat156 : f32;
  var u_xlati157 : i32;
  var u_xlati26 : i32;
  var u_xlati70 : i32;
  var u_xlat114 : f32;
  var u_xlat27 : vec3f;
  var u_xlat158 : f32;
  var u_xlat159 : f32;
  var u_xlat28 : f32;
  var u_xlat72 : f32;
  var u_xlat116 : f32;
  var u_xlat160 : f32;
  var u_xlat29 : vec2f;
  var u_xlat117 : f32;
  var u_xlat161 : f32;
  var u_xlat30 : vec3f;
  var u_xlat162 : f32;
  var u_xlat31 : vec2f;
  var u_xlat119 : f32;
  var u_xlat163 : f32;
  var u_xlati32 : i32;
  var u_xlatb76 : bool;
  var u_xlat76 : vec3f;
  var u_xlat33 : f32;
  var u_xlat77 : f32;
  var u_xlat121 : vec2f;
  var u_xlat34 : vec2f;
  var u_xlat122 : vec2f;
  var u_xlat35 : vec4f;
  var u_xlat166 : f32;
  var u_xlat36 : vec4f;
  var u_xlat80 : vec3f;
  var u_xlat79 : f32;
  var u_xlatb79 : bool;
  var u_xlat165 : f32;
  var u_xlat78 : f32;
  var u_xlat167 : f32;
  var u_xlatb36 : bool;
  var u_xlatb80 : bool;
  var u_xlat37 : vec4f;
  var u_xlatb37 : bool;
  var u_xlati37 : i32;
  var x_3279 : i32;
  var u_xlat38 : vec4f;
  var u_xlat82 : vec3f;
  var u_xlat81 : vec3f;
  var u_xlat124 : vec2f;
  var u_xlat168 : f32;
  var u_xlat125 : f32;
  var u_xlat169 : f32;
  var u_xlat39 : vec4f;
  var x_3964 : f32;
  var u_xlati36 : i32;
  var u_xlatb166 : bool;
  var u_xlatb124 : bool;
  var u_xlati124 : i32;
  var u_xlati168 : i32;
  var u_xlatb168 : bool;
  var u_xlati80 : i32;
  var u_xlati_loop_1 : i32;
  var u_xlatb39 : bool;
  var u_xlat127 : vec2f;
  var u_xlat40 : vec4f;
  var u_xlat171 : f32;
  var u_xlat41 : vec4f;
  var u_xlat85 : vec3f;
  var u_xlat84 : vec3f;
  var u_xlatb84 : bool;
  var u_xlat42 : vec4f;
  var u_xlat83 : vec3f;
  var u_xlat172 : f32;
  var u_xlat129 : f32;
  var u_xlatb85 : bool;
  var u_xlatb42 : bool;
  var u_xlati42 : i32;
  var x_4832 : i32;
  var u_xlat43 : vec3f;
  var u_xlat87 : f32;
  var u_xlat86 : vec3f;
  var u_xlat128 : f32;
  var u_xlat173 : f32;
  var u_xlatb83 : bool;
  var u_xlati83 : i32;
  var x_5484 : i32;
  var u_xlatb127 : bool;
  var u_xlat126 : f32;
  var u_xlat170 : f32;
  var u_xlatb82 : bool;
  var u_xlati82 : i32;
  var x_5881 : i32;
  var u_xlat120 : f32;
  var u_xlat164 : f32;
  var u_xlat123 : f32;
  var u_xlatb34 : bool;
  var u_xlatb0 : bool;
  var x_6682 : f32;
  var u_xlat134 : f32;
  var u_xlat89 : f32;
  var u_xlatb137 : bool;
  var x_7216 : f32;
  var u_xlatb143 : bool;
  var u_xlatb138 : bool;
  var x_7984 : f32;
  var u_xlat102 : vec2f;
  var u_xlatb89 : bool;
  var x_8098 : vec3f;
  var x_8274 : vec3f;
  var u_xlat90 : f32;
  var u_xlatb132 : bool;
  var u_xlat46 : vec3f;
  var u_xlatb1 : vec3<bool>;
  var x_9577 : f32;
  var x_9588 : f32;
  var x_9598 : vec3f;
  var u_xlat_precise_vec4 : vec4f;
  var u_xlat_precise_ivec4 : vec4i;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4u;
  let x_14 = gl_FragCoord.xyz;
  hlslcc_FragCoord = vec4f(x_14.x, x_14.y, x_14.z, (1.0f / gl_FragCoord.w));
  u_xlati0 = vec2i(hlslcc_FragCoord.xy);
  u_xlat88 = trunc(hlslcc_FragCoord.xy);
  u_xlat88 = (u_xlat88 + x_44.x_CloudJitter.xy);
  u_xlat88 = (u_xlat88 + x_53);
  u_xlat88 = (u_xlat88 * x_44.x_CloudFrame.ww);
  u_xlat1 = vec4f(((u_xlat88 * x_44.x_CloudFullRes.zw)).xy, u_xlat1.zw);
  u_xlatb88 = (0.5f < x_44.x_CloudCam.w);
  u_xlat132 = ((-(u_xlat88.y) * x_44.x_CloudFullRes.w) + 1.0f);
  if (u_xlatb88) {
    x_89 = u_xlat132;
  } else {
    x_89 = u_xlat1.y;
  }
  u_xlat1.z = x_89;
  u_xlat88 = ((u_xlat1.xz * vec2f(2.0f)) + x_105);
  u_xlat1 = (-(u_xlat88.yyyy) * x_44.hlslcc_mtx4x4_CloudInvVP[1i]);
  u_xlat1 = ((x_44.hlslcc_mtx4x4_CloudInvVP[0i] * u_xlat88.xxxx) + u_xlat1);
  u_xlat1 = (u_xlat1 + x_44.hlslcc_mtx4x4_CloudInvVP[2i]);
  u_xlat1 = (u_xlat1 + x_44.hlslcc_mtx4x4_CloudInvVP[3i]);
  u_xlat1 = vec4f(((u_xlat1.xyz / u_xlat1.www)).xyz, u_xlat1.w);
  u_xlat1 = vec4f(((u_xlat1.xyz + -(x_44.x_CloudCam.xyz))).xyz, u_xlat1.w);
  u_xlat88.x = dot(u_xlat1.xyz, u_xlat1.xyz);
  u_xlat88.x = inverseSqrt(u_xlat88.x);
  u_xlat2 = vec4f(((u_xlat88.xxx * u_xlat1.xyz)).xyz, u_xlat2.w);
  u_xlati132 = i32(x_44.x_CloudFrame.w);
  u_xlat45.x = ((x_44.x_CloudFrame.w * 0.5f) + -1.0f);
  u_xlat45.x = max(u_xlat45.x, 0.0f);
  u_xlati45.x = i32(u_xlat45.x);
  let x_198 = ((u_xlati0 * vec2i(u_xlati132)) + u_xlati45.xx);
  u_xlati45 = vec3i(x_198.x, u_xlati45.y, x_198.y);
  u_xlati3 = vec2i(x_44.x_CloudFullRes.xy);
  u_xlati3 = (u_xlati3 + vec2i(-1i));
  u_xlati91 = max(u_xlati45.xz, vec2i());
  u_xlatu4 = vec4u(bitcast<vec2u>(min(u_xlati3, u_xlati91)).xy, u_xlatu4.zw);
  u_xlatu4.z = 0u;
  u_xlatu4.w = 0u;
  u_xlat132 = textureLoad(x_CloudSceneDepth, bitcast<vec2i>(u_xlatu4.xy), bitcast<i32>(u_xlatu4.w)).x;
  u_xlatb91 = (0.00000010000000116861f < u_xlat132);
  u_xlat132 = ((x_44.x_ZBufferParams.z * u_xlat132) + x_44.x_ZBufferParams.w);
  u_xlat132 = (1.0f / u_xlat132);
  u_xlat135 = dot(u_xlat2.xyz, x_44.x_CloudCamFwd.xyz);
  u_xlat135 = max(u_xlat135, 0.00100000004749745131f);
  u_xlat132 = (u_xlat132 / u_xlat135);
  u_xlat132 = select(1000000.0f, u_xlat132, u_xlatb91);
  u_xlati4 = (u_xlati45.xzxz + vec4i(1i, 0i, 0i, 1i));
  u_xlati4 = max(u_xlati4, vec4i());
  u_xlatu4 = bitcast<vec4u>(min(u_xlati3.xyxy, u_xlati4.zwxy));
  u_xlatu5 = vec4u(u_xlatu4.zw.xy, u_xlatu5.zw);
  u_xlatu5.z = 0u;
  u_xlatu5.w = 0u;
  u_xlat91.x = textureLoad(x_CloudSceneDepth, bitcast<vec2i>(u_xlatu5.xy), bitcast<i32>(u_xlatu5.w)).x;
  u_xlatb5 = (0.00000010000000116861f < u_xlat91.x);
  u_xlat91.x = ((x_44.x_ZBufferParams.z * u_xlat91.x) + x_44.x_ZBufferParams.w);
  u_xlat91.x = (1.0f / u_xlat91.x);
  u_xlat91.x = (u_xlat91.x / u_xlat135);
  if (u_xlatb5) {
    x_328 = u_xlat91.x;
  } else {
    x_328 = 1000000.0f;
  }
  u_xlat91.x = x_328;
  u_xlatu4.z = 0u;
  u_xlatu4.w = 0u;
  u_xlat4.x = textureLoad(x_CloudSceneDepth, bitcast<vec2i>(u_xlatu4.xy), bitcast<i32>(u_xlatu4.w)).x;
  u_xlatb48 = (0.00000010000000116861f < u_xlat4.x);
  u_xlat4.x = ((x_44.x_ZBufferParams.z * u_xlat4.x) + x_44.x_ZBufferParams.w);
  u_xlat4.x = (1.0f / u_xlat4.x);
  u_xlat4.x = (u_xlat4.x / u_xlat135);
  if (u_xlatb48) {
    x_372 = u_xlat4.x;
  } else {
    x_372 = 1000000.0f;
  }
  u_xlat4.x = x_372;
  let x_383 = (u_xlati45.xz + vec2i(1i));
  u_xlati45 = vec3i(x_383.x, u_xlati45.y, x_383.y);
  let x_388 = max(u_xlati45.xz, vec2i());
  u_xlati45 = vec3i(x_388.x, u_xlati45.y, x_388.y);
  u_xlatu5 = vec4u(bitcast<vec2u>(min(u_xlati3, u_xlati45.xz)).xy, u_xlatu5.zw);
  u_xlatu5.z = 0u;
  u_xlatu5.w = 0u;
  u_xlat45.x = textureLoad(x_CloudSceneDepth, bitcast<vec2i>(u_xlatu5.xy), bitcast<i32>(u_xlatu5.w)).x;
  u_xlatb133 = (0.00000010000000116861f < u_xlat45.x);
  u_xlat45.x = ((x_44.x_ZBufferParams.z * u_xlat45.x) + x_44.x_ZBufferParams.w);
  u_xlat45.x = (1.0f / u_xlat45.x);
  u_xlat45.x = (u_xlat45.x / u_xlat135);
  if (u_xlatb133) {
    x_433 = u_xlat45.x;
  } else {
    x_433 = 1000000.0f;
  }
  u_xlat45.x = x_433;
  u_xlati133 = (u_xlati0.y + u_xlati0.x);
  u_xlati133 = bitcast<i32>((bitcast<u32>(u_xlati133) & 1u));
  u_xlat3.x = max(u_xlat132, u_xlat91.x);
  u_xlat47 = max(u_xlat45.x, u_xlat4.x);
  u_xlat3.x = max(u_xlat47, u_xlat3.x);
  u_xlat132 = min(u_xlat132, u_xlat91.x);
  u_xlat45.x = min(u_xlat45.x, u_xlat4.x);
  u_xlat132 = min(u_xlat132, u_xlat45.x);
  if ((u_xlati133 != 0i)) {
    x_484 = u_xlat3.x;
  } else {
    x_484 = u_xlat132;
  }
  u_xlat132 = x_484;
  u_xlat3.y = min(u_xlat132, 60000.0f);
  u_xlatb45 = (-0.00009999999747378752f < u_xlat2.y);
  u_xlat133 = (x_44.x_Layer.x + -200.0f);
  u_xlatb133 = (x_44.x_CloudCam.y < u_xlat133);
  u_xlatb45 = (u_xlatb133 | u_xlatb45);
  if (u_xlatb45) {
    SV_Target0 = vec4f();
    SV_Target1 = u_xlat3.yy;
    return;
  }
  u_xlat45.x = (x_44.x_Layer.w + x_44.x_Layer.x);
  u_xlat45.x = ((abs(x_44.x_ShapeB.x) * 0.5f) + u_xlat45.x);
  u_xlat45.x = (u_xlat45.x + 0.5f);
  u_xlat133 = (u_xlat45.x + -(x_44.x_CloudCam.y));
  u_xlat133 = (u_xlat133 / u_xlat2.y);
  u_xlat133 = max(u_xlat133, 0.0f);
  u_xlatb91 = (u_xlat133 >= u_xlat132);
  if (u_xlatb91) {
    SV_Target0 = vec4f();
    SV_Target1 = u_xlat3.yy;
    return;
  }
  u_xlat91.x = min(u_xlat132, x_44.x_March.w);
  u_xlatb135 = (x_44.x_Breakup.x >= 0.99900001287460327148f);
  u_xlat4.x = (-(abs(x_44.x_Layer.w)) + x_44.x_Layer.x);
  u_xlat4.x = ((-(abs(x_44.x_ShapeB.x)) * 0.5f) + u_xlat4.x);
  u_xlat4.x = (u_xlat4.x + -(x_44.x_CalmShape.x));
  u_xlat48 = max(x_44.x_CalmShape.w, 1.0f);
  u_xlat4.x = ((-(x_44.x_Layer.y) * u_xlat48) + u_xlat4.x);
  u_xlat48 = max(x_44.x_Breakup.w, 2.0f);
  u_xlat4.x = (-(u_xlat48) + u_xlat4.x);
  u_xlat4.x = (u_xlat4.x + -(x_44.x_CloudCam.y));
  u_xlat4.x = (u_xlat4.x / u_xlat2.y);
  u_xlat4.x = max(u_xlat4.x, 0.0f);
  u_xlat4.x = min(u_xlat91.x, u_xlat4.x);
  if (u_xlatb135) {
    x_648 = u_xlat4.x;
  } else {
    x_648 = u_xlat91.x;
  }
  u_xlat91.x = x_648;
  let x_663 = (x_44.x_MainLightPosition.xyz + vec3f(0.0f, 0.00000999999974737875f, 0.0f));
  u_xlat4 = vec4f(x_663.x, u_xlat4.y, x_663.yz);
  u_xlat135 = dot(u_xlat4.xzw, u_xlat4.xzw);
  u_xlat135 = inverseSqrt(u_xlat135);
  u_xlat5 = (vec3f(u_xlat135) * u_xlat4.xzw);
  u_xlat137 = dot(u_xlat2.xyz, u_xlat5);
  u_xlat6 = vec4f((((-(x_44.x_LkPhase.yx) * x_44.x_LkPhase.yx) + x_694)).xy, u_xlat6.zw);
  u_xlat94 = ((x_44.x_LkPhase.yx * x_44.x_LkPhase.yx) + x_694);
  u_xlat7.x = dot(vec2f(u_xlat137), x_44.x_LkPhase.yy);
  u_xlat94.x = (u_xlat94.x + -(u_xlat7.x));
  u_xlat94.x = max(u_xlat94.x, 0.00009999999747378752f);
  u_xlat94.x = log2(u_xlat94.x);
  u_xlat94.x = (u_xlat94.x * 1.5f);
  u_xlat94.x = exp2(u_xlat94.x);
  u_xlat6.x = (u_xlat6.x / u_xlat94.x);
  u_xlat94.x = dot(vec2f(u_xlat137), x_44.x_LkPhase.xx);
  u_xlat94.x = (-(u_xlat94.x) + u_xlat94.y);
  u_xlat94.x = max(u_xlat94.x, 0.00009999999747378752f);
  u_xlat94.x = log2(u_xlat94.x);
  u_xlat94.x = (u_xlat94.x * 1.5f);
  u_xlat94.x = exp2(u_xlat94.x);
  u_xlat50 = (u_xlat6.y / u_xlat94.x);
  u_xlat50 = (-(u_xlat6.x) + u_xlat50);
  u_xlat6.x = ((x_44.x_LkPhase.z * u_xlat50) + u_xlat6.x);
  u_xlat7 = vec4f(((x_44.x_LkPhase.yx * x_44.x_LkMS.zz)).xy, u_xlat7.zw);
  u_xlat95 = ((-(u_xlat7.xy) * u_xlat7.xy) + x_694);
  u_xlat8 = vec3f((((u_xlat7.xy * u_xlat7.xy) + x_694)).xy, u_xlat8.z);
  u_xlat138 = dot(vec2f(u_xlat137), u_xlat7.xx);
  u_xlat138 = (-(u_xlat138) + u_xlat8.x);
  u_xlat138 = max(u_xlat138, 0.00009999999747378752f);
  u_xlat138 = log2(u_xlat138);
  u_xlat138 = (u_xlat138 * 1.5f);
  u_xlat138 = exp2(u_xlat138);
  u_xlat138 = (u_xlat95.x / u_xlat138);
  u_xlat7.x = dot(vec2f(u_xlat137), u_xlat7.yy);
  u_xlat7.x = (-(u_xlat7.x) + u_xlat8.y);
  u_xlat7.x = max(u_xlat7.x, 0.00009999999747378752f);
  u_xlat7.x = log2(u_xlat7.x);
  u_xlat7.x = (u_xlat7.x * 1.5f);
  u_xlat7.x = exp2(u_xlat7.x);
  u_xlat7.x = (u_xlat95.y / u_xlat7.x);
  u_xlat7.x = (-(u_xlat138) + u_xlat7.x);
  u_xlat6.w = ((x_44.x_LkPhase.z * u_xlat7.x) + u_xlat138);
  let x_899 = min(u_xlat6.xw, x_44.x_LkPhase.ww);
  u_xlat6 = vec4f(x_899.x, u_xlat6.yz, x_899.y);
  u_xlat6.y = (u_xlat6.w * x_44.x_LkMS.x);
  u_xlat7 = vec4f(((x_44.x_LkMS.xzy * x_44.x_LkMS.xzy)).xyz, u_xlat7.w);
  u_xlat8 = vec3f(((u_xlat7.yy * x_44.x_LkPhase.yx)).xy, u_xlat8.z);
  u_xlat96 = ((-(u_xlat8.xy) * u_xlat8.xy) + x_694);
  u_xlat9 = vec3f((((u_xlat8.xy * u_xlat8.xy) + x_694)).xy, u_xlat9.z);
  u_xlat138 = dot(vec2f(u_xlat137), u_xlat8.xx);
  u_xlat138 = (-(u_xlat138) + u_xlat9.x);
  u_xlat138 = max(u_xlat138, 0.00009999999747378752f);
  u_xlat138 = log2(u_xlat138);
  u_xlat138 = (u_xlat138 * 1.5f);
  u_xlat138 = exp2(u_xlat138);
  u_xlat138 = (u_xlat96.x / u_xlat138);
  u_xlat51 = dot(vec2f(u_xlat137), u_xlat8.yy);
  u_xlat51 = (-(u_xlat51) + u_xlat9.y);
  u_xlat51 = max(u_xlat51, 0.00009999999747378752f);
  u_xlat51 = log2(u_xlat51);
  u_xlat51 = (u_xlat51 * 1.5f);
  u_xlat51 = exp2(u_xlat51);
  u_xlat51 = (u_xlat96.y / u_xlat51);
  u_xlat51 = (-(u_xlat138) + u_xlat51);
  u_xlat138 = ((x_44.x_LkPhase.z * u_xlat51) + u_xlat138);
  u_xlat138 = min(u_xlat138, x_44.x_LkPhase.w);
  u_xlat6.z = (u_xlat138 * u_xlat7.x);
  u_xlat138 = max(x_44.x_LkMS.x, 0.0f);
  u_xlat138 = min(u_xlat138, 0.85000002384185791016f);
  u_xlat7.x = (u_xlat138 * u_xlat138);
  u_xlat7.x = (u_xlat138 * u_xlat7.x);
  u_xlat138 = (-(u_xlat138) + 1.0f);
  u_xlat138 = (u_xlat7.x / u_xlat138);
  u_xlat7.x = (u_xlat7.z * x_44.x_LkMS.y);
  u_xlat7.x = max(u_xlat7.x, 0.00999999977648258209f);
  u_xlat51 = max(u_xlat2.y, -1.0f);
  u_xlat51 = min(u_xlat51, 1.0f);
  u_xlat8.x = (-(abs(u_xlat51)) + 1.0f);
  u_xlat8.x = sqrt(u_xlat8.x);
  u_xlat52.x = ((abs(u_xlat51) * -0.01872929930686950684f) + 0.07426100224256515503f);
  u_xlat52.x = ((u_xlat52.x * abs(u_xlat51)) + -0.21211439371109008789f);
  u_xlat52.x = ((u_xlat52.x * abs(u_xlat51)) + 1.57072877883911132812f);
  u_xlat96.x = (u_xlat8.x * u_xlat52.x);
  u_xlat96.x = ((u_xlat96.x * -2.0f) + 3.14159274101257324219f);
  u_xlatb51 = (u_xlat51 < -(u_xlat51));
  if (u_xlatb51) {
    x_1096 = u_xlat96.x;
  } else {
    x_1096 = 0.0f;
  }
  u_xlat51 = x_1096;
  u_xlat51 = ((u_xlat52.x * u_xlat8.x) + u_xlat51);
  u_xlat51 = (-(u_xlat51) + 1.57079637050628662109f);
  u_xlat8.x = (u_xlat51 * 57.295780181884765625f);
  u_xlat52 = ((u_xlat4.zxw * vec3f(u_xlat135)) + vec3f(-0.10000000149011611938f, 0.00000999999974737875f, 0.0f));
  u_xlat92 = (u_xlat52.x * 2.85714292526245117188f);
  u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
  u_xlat52.x = dot(x_44.x_MainLightColor.xyz, x_1139);
  u_xlat92 = (u_xlat92 * x_44.x_LkSun.y);
  u_xlat9 = (u_xlat52.xxx + -(x_44.x_MainLightColor.xyz));
  u_xlat9 = ((vec3f(u_xlat92) * u_xlat9) + x_44.x_MainLightColor.xyz);
  u_xlat10 = (u_xlat9 * x_44.x_LkSun.xxx);
  u_xlat92 = dot(u_xlat52.yz, u_xlat52.yz);
  u_xlat92 = inverseSqrt(u_xlat92);
  u_xlat11 = (vec4f(u_xlat92) * u_xlat52.zyzy);
  u_xlat52 = (x_44.x_B612SunDirection.xxz + vec3f(0.00000999999974737875f, 0.00000999999974737875f, 0.0f));
  u_xlat92 = dot(u_xlat52.yz, u_xlat52.yz);
  u_xlat92 = inverseSqrt(u_xlat92);
  u_xlat52 = (vec3f(u_xlat92) * u_xlat52);
  u_xlat92 = ((u_xlat52.x * 0.5f) + 0.5f);
  u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
  u_xlat12 = vec4f(max(x_44.x_B612SkyParams.yw, vec2f(0.00999999977648258209f, 0.0f)).xy, u_xlat12.zw);
  u_xlat52.x = log2(u_xlat92);
  u_xlat141 = (u_xlat52.x * u_xlat12.x);
  u_xlat141 = exp2(u_xlat141);
  u_xlat13 = (-(x_44.x_B612SkyHorizon.xyz) + x_44.x_B612SkyHorizonSun.xyz);
  u_xlat14 = vec4f((((vec3f(u_xlat141) * u_xlat13) + x_44.x_B612SkyHorizon.xyz)).xyz, u_xlat14.w);
  u_xlat141 = (x_44.x_B612SkyParams.x * 0.44999998807907104492f);
  u_xlat141 = max(u_xlat141, 0.00999999977648258209f);
  u_xlat100 = (vec2f(-1.0f, -0.42300000786781311035f) / vec2f(u_xlat141));
  u_xlat100 = (u_xlat100 * vec2f(1.44269502162933349609f));
  u_xlat100 = exp2(u_xlat100);
  u_xlat100 = (-(u_xlat100) + x_694);
  u_xlat15 = (-(u_xlat14.xyz) + x_44.x_B612SkyZenith.xyz);
  u_xlat14 = vec4f((((u_xlat100.xxx * u_xlat15) + u_xlat14.xyz)).xyz, u_xlat14.w);
  u_xlat15 = vec3f(max(x_44.x_B612HazeParams.xy, vec2f(0.10000000149011611938f, 1.0f)).xy, u_xlat15.z);
  u_xlat103 = (u_xlat15.xx * vec2f(-1.44269502162933349609f, -0.610260009765625f));
  u_xlat103 = exp2(u_xlat103);
  u_xlat103 = (u_xlat103 * x_44.x_B612HazeColor.ww);
  u_xlat103 = clamp(u_xlat103, vec2f(0.0f), vec2f(1.0f));
  u_xlat16 = (-(u_xlat14.xyz) + x_44.x_B612HazeColor.xyz);
  u_xlat14 = vec4f((((u_xlat103.xxx * u_xlat16) + u_xlat14.xyz)).xyz, u_xlat14.w);
  u_xlat16 = max(x_44.x_B612SkyParams2.xyz, vec3f(0.00999999977648258209f, 0.10000000149011611938f, 0.00999999977648258209f));
  u_xlat52.x = (u_xlat52.x * u_xlat16.x);
  u_xlat52.x = exp2(u_xlat52.x);
  u_xlat17 = vec4f(((u_xlat52.xxx * x_44.x_B612SkyGlow.xyz)).xyz, u_xlat17.w);
  u_xlat52.x = max(x_44.x_B612SkyGlow.w, 0.10000000149011611938f);
  u_xlat18 = vec4f(((vec3f(-90.0f, -25.0268707275390625f, -0.00387021270580589771f) / u_xlat52.xxx)).xyz, u_xlat18.w);
  u_xlat18 = vec4f(((u_xlat18.xyz * x_1372)).xyz, u_xlat18.w);
  u_xlat18 = vec4f(exp2(u_xlat18.xyz).xyz, u_xlat18.w);
  u_xlat14 = vec4f((((u_xlat17.xyz * u_xlat18.xxx) + u_xlat14.xyz)).xyz, u_xlat14.w);
  u_xlat17 = vec4f(((-(x_44.x_B612SkyAnti.www) + vec3f(90.0f, 25.0268707275390625f, 0.00387021270580589771f))).xyz, u_xlat17.w);
  u_xlat17 = vec4f(((u_xlat17.xyz / u_xlat16.yyy)).xyz, u_xlat17.w);
  u_xlat92 = (-(u_xlat92) + 1.0f);
  u_xlat92 = log2(u_xlat92);
  u_xlat92 = (u_xlat92 * u_xlat16.z);
  u_xlat92 = exp2(u_xlat92);
  u_xlat19 = vec4f(((vec3f(u_xlat92) * x_44.x_B612SkyAnti.xyz)).xyz, u_xlat19.w);
  u_xlat17 = vec4f(((u_xlat17.xyz * -(u_xlat17.xyz))).xyz, u_xlat17.w);
  u_xlat17 = vec4f(((u_xlat17.xyz * x_1372)).xyz, u_xlat17.w);
  u_xlat17 = vec4f(exp2(u_xlat17.xyz).xyz, u_xlat17.w);
  u_xlat14 = vec4f((((u_xlat19.xyz * u_xlat17.xxx) + u_xlat14.xyz)).xyz, u_xlat14.w);
  u_xlat14 = vec4f(((u_xlat12.yyy * u_xlat14.xyz)).xyz, u_xlat14.w);
  u_xlat19 = ((u_xlat11.yzwx * vec4f(0.90600001811981201172f, 0.90600001811981201172f, -0.90600001811981201172f, -0.90600001811981201172f)) + x_1471);
  u_xlat92 = dot(u_xlat19.xy, u_xlat19.xy);
  u_xlat92 = inverseSqrt(u_xlat92);
  let x_1484 = (vec2f(u_xlat92) * u_xlat19.xy);
  u_xlat17 = vec4f(x_1484.x, u_xlat17.yz, x_1484.y);
  u_xlat92 = dot(u_xlat17.xw, u_xlat52.yz);
  u_xlat92 = ((u_xlat92 * 0.5f) + 0.5f);
  u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
  u_xlat142 = log2(u_xlat92);
  u_xlat100.x = (u_xlat142 * u_xlat12.x);
  u_xlat100.x = exp2(u_xlat100.x);
  u_xlat20 = ((u_xlat100.xxx * u_xlat13) + x_44.x_B612SkyHorizon.xyz);
  u_xlat21 = (-(x_44.x_B612SkyZenith.xyz) + x_44.x_B612SkyHorizonSun.xyz);
  u_xlat21 = (u_xlat21 * vec3f(0.34999999403953552246f));
  u_xlat100.x = (u_xlat100.x * x_44.x_B612SkyParams.z);
  u_xlat100.x = (u_xlat100.x * 0.57700002193450927734f);
  u_xlat22 = ((u_xlat100.xxx * u_xlat21) + x_44.x_B612SkyZenith.xyz);
  u_xlat22 = (-(u_xlat20) + u_xlat22);
  u_xlat20 = ((u_xlat100.yyy * u_xlat22) + u_xlat20);
  u_xlat22 = (-(u_xlat20) + x_44.x_B612HazeColor.xyz);
  u_xlat20 = ((u_xlat103.yyy * u_xlat22) + u_xlat20);
  u_xlat142 = (u_xlat142 * u_xlat16.x);
  u_xlat142 = exp2(u_xlat142);
  u_xlat22 = (vec3f(u_xlat142) * x_44.x_B612SkyGlow.xyz);
  u_xlat20 = ((u_xlat22 * u_xlat18.yyy) + u_xlat20);
  u_xlat92 = (-(u_xlat92) + 1.0f);
  u_xlat92 = log2(u_xlat92);
  u_xlat92 = (u_xlat92 * u_xlat16.z);
  u_xlat92 = exp2(u_xlat92);
  u_xlat22 = (vec3f(u_xlat92) * x_44.x_B612SkyAnti.xyz);
  u_xlat20 = ((u_xlat22 * u_xlat17.yyy) + u_xlat20);
  u_xlat92 = dot(u_xlat19.zw, u_xlat19.zw);
  u_xlat92 = inverseSqrt(u_xlat92);
  let x_1625 = (vec2f(u_xlat92) * u_xlat19.zw);
  u_xlat17 = vec4f(x_1625.x, u_xlat17.yz, x_1625.y);
  u_xlat92 = dot(u_xlat17.xw, u_xlat52.yz);
  u_xlat92 = ((u_xlat92 * 0.5f) + 0.5f);
  u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
  u_xlat142 = log2(u_xlat92);
  u_xlat100.x = (u_xlat142 * u_xlat12.x);
  u_xlat100.x = exp2(u_xlat100.x);
  u_xlat19 = vec4f((((u_xlat100.xxx * u_xlat13) + x_44.x_B612SkyHorizon.xyz)).xyz, u_xlat19.w);
  u_xlat100.x = (u_xlat100.x * x_44.x_B612SkyParams.z);
  u_xlat100.x = (u_xlat100.x * 0.57700002193450927734f);
  u_xlat22 = ((u_xlat100.xxx * u_xlat21) + x_44.x_B612SkyZenith.xyz);
  u_xlat22 = (-(u_xlat19.xyz) + u_xlat22);
  u_xlat19 = vec4f((((u_xlat100.yyy * u_xlat22) + u_xlat19.xyz)).xyz, u_xlat19.w);
  u_xlat22 = (-(u_xlat19.xyz) + x_44.x_B612HazeColor.xyz);
  u_xlat19 = vec4f((((u_xlat103.yyy * u_xlat22) + u_xlat19.xyz)).xyz, u_xlat19.w);
  u_xlat142 = (u_xlat142 * u_xlat16.x);
  u_xlat142 = exp2(u_xlat142);
  u_xlat22 = (vec3f(u_xlat142) * x_44.x_B612SkyGlow.xyz);
  u_xlat19 = vec4f((((u_xlat22 * u_xlat18.yyy) + u_xlat19.xyz)).xyz, u_xlat19.w);
  u_xlat92 = (-(u_xlat92) + 1.0f);
  u_xlat92 = log2(u_xlat92);
  u_xlat92 = (u_xlat92 * u_xlat16.z);
  u_xlat92 = exp2(u_xlat92);
  u_xlat22 = (vec3f(u_xlat92) * x_44.x_B612SkyAnti.xyz);
  u_xlat19 = vec4f((((u_xlat22 * u_xlat17.yyy) + u_xlat19.xyz)).xyz, u_xlat19.w);
  u_xlat19 = vec4f(((u_xlat12.yyy * u_xlat19.xyz)).xyz, u_xlat19.w);
  u_xlat19 = vec4f((((u_xlat20 * u_xlat12.yyy) + u_xlat19.xyz)).xyz, u_xlat19.w);
  u_xlat11 = ((u_xlat11 * vec4f(-0.90600001811981201172f, 0.90600001811981201172f, 0.90600001811981201172f, -0.90600001811981201172f)) + x_1471);
  u_xlat92 = dot(u_xlat11.xy, u_xlat11.xy);
  u_xlat92 = inverseSqrt(u_xlat92);
  u_xlat11 = vec4f(((vec2f(u_xlat92) * u_xlat11.xy)).xy, u_xlat11.zw);
  u_xlat92 = dot(u_xlat11.xy, u_xlat52.yz);
  u_xlat92 = ((u_xlat92 * 0.5f) + 0.5f);
  u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
  u_xlat142 = log2(u_xlat92);
  u_xlat11.x = (u_xlat142 * u_xlat12.x);
  u_xlat11.x = exp2(u_xlat11.x);
  u_xlat20 = ((u_xlat11.xxx * u_xlat13) + x_44.x_B612SkyHorizon.xyz);
  u_xlat11.x = (u_xlat11.x * x_44.x_B612SkyParams.z);
  u_xlat11.x = (u_xlat11.x * 0.57700002193450927734f);
  u_xlat22 = ((u_xlat11.xxx * u_xlat21) + x_44.x_B612SkyZenith.xyz);
  u_xlat22 = (-(u_xlat20) + u_xlat22);
  u_xlat20 = ((u_xlat100.yyy * u_xlat22) + u_xlat20);
  u_xlat22 = (-(u_xlat20) + x_44.x_B612HazeColor.xyz);
  u_xlat20 = ((u_xlat103.yyy * u_xlat22) + u_xlat20);
  u_xlat142 = (u_xlat142 * u_xlat16.x);
  u_xlat142 = exp2(u_xlat142);
  u_xlat22 = (vec3f(u_xlat142) * x_44.x_B612SkyGlow.xyz);
  u_xlat20 = ((u_xlat22 * u_xlat18.yyy) + u_xlat20);
  u_xlat92 = (-(u_xlat92) + 1.0f);
  u_xlat92 = log2(u_xlat92);
  u_xlat92 = (u_xlat92 * u_xlat16.z);
  u_xlat92 = exp2(u_xlat92);
  u_xlat22 = (vec3f(u_xlat92) * x_44.x_B612SkyAnti.xyz);
  u_xlat20 = ((u_xlat22 * u_xlat17.yyy) + u_xlat20);
  u_xlat19 = vec4f((((u_xlat20 * u_xlat12.yyy) + u_xlat19.xyz)).xyz, u_xlat19.w);
  u_xlat92 = dot(u_xlat11.zw, u_xlat11.zw);
  u_xlat92 = inverseSqrt(u_xlat92);
  u_xlat11 = vec4f(((vec2f(u_xlat92) * u_xlat11.zw)).xy, u_xlat11.zw);
  u_xlat92 = dot(u_xlat11.xy, u_xlat52.yz);
  u_xlat92 = ((u_xlat92 * 0.5f) + 0.5f);
  u_xlat92 = clamp(u_xlat92, 0.0f, 1.0f);
  u_xlat142 = log2(u_xlat92);
  u_xlat11.x = (u_xlat142 * u_xlat12.x);
  u_xlat11.x = exp2(u_xlat11.x);
  u_xlat55 = ((u_xlat11.xxx * u_xlat13) + x_44.x_B612SkyHorizon.xyz);
  u_xlat11.x = (u_xlat11.x * x_44.x_B612SkyParams.z);
  u_xlat11.x = (u_xlat11.x * 0.57700002193450927734f);
  u_xlat20 = ((u_xlat11.xxx * u_xlat21) + x_44.x_B612SkyZenith.xyz);
  u_xlat20 = (-(u_xlat55) + u_xlat20);
  u_xlat11 = vec4f((((u_xlat100.yyy * u_xlat20) + u_xlat55)).xyz, u_xlat11.w);
  u_xlat20 = (-(u_xlat11.xyz) + x_44.x_B612HazeColor.xyz);
  u_xlat11 = vec4f((((u_xlat103.yyy * u_xlat20) + u_xlat11.xyz)).xyz, u_xlat11.w);
  u_xlat142 = (u_xlat142 * u_xlat16.x);
  u_xlat142 = exp2(u_xlat142);
  u_xlat20 = (vec3f(u_xlat142) * x_44.x_B612SkyGlow.xyz);
  u_xlat11 = vec4f((((u_xlat20 * u_xlat18.yyy) + u_xlat11.xyz)).xyz, u_xlat11.w);
  u_xlat92 = (-(u_xlat92) + 1.0f);
  u_xlat92 = log2(u_xlat92);
  u_xlat92 = (u_xlat92 * u_xlat16.z);
  u_xlat92 = exp2(u_xlat92);
  let x_2034 = (vec3f(u_xlat92) * x_44.x_B612SkyAnti.xyz);
  u_xlat18 = vec4f(x_2034.xy, u_xlat18.z, x_2034.z);
  u_xlat11 = vec4f((((u_xlat18.xyw * u_xlat17.yyy) + u_xlat11.xyz)).xyz, u_xlat11.w);
  u_xlat11 = vec4f((((u_xlat11.xyz * u_xlat12.yyy) + u_xlat19.xyz)).xyz, u_xlat11.w);
  u_xlat11 = vec4f(((u_xlat11.xyz * vec3f(0.1875f))).xyz, u_xlat11.w);
  u_xlat11 = vec4f((((u_xlat14.xyz * vec3f(0.25f)) + u_xlat11.xyz)).xyz, u_xlat11.w);
  u_xlat14 = vec4f(((u_xlat11.xyz * x_44.x_LkSun.www)).xyz, u_xlat14.w);
  u_xlat92 = dot(u_xlat14.xyz, x_1139);
  u_xlat142 = x_44.x_Structure.x;
  u_xlat142 = clamp(u_xlat142, 0.0f, 1.0f);
  u_xlat100 = ((vec2f(u_xlat142) * vec2f(-0.35000002384185791016f, 0.10000002384185791016f)) + vec2f(1.0f, 0.89999997615814208984f));
  u_xlat11 = vec4f((((u_xlat11.xyz * x_44.x_LkSun.www) + -(vec3f(u_xlat92)))).xyz, u_xlat11.w);
  u_xlat11 = vec4f((((u_xlat100.xxx * u_xlat11.xyz) + vec3f(u_xlat92))).xyz, u_xlat11.w);
  u_xlat92 = max(u_xlat5.y, 0.0f);
  u_xlat92 = ((u_xlat92 * 0.5f) + 0.07999999821186065674f);
  u_xlat14 = vec4f(((u_xlat11.xyz * vec3f(0.5f))).xyz, u_xlat14.w);
  u_xlat14 = vec4f((((u_xlat10 * vec3f(u_xlat92)) + u_xlat14.xyz)).xyz, u_xlat14.w);
  u_xlat14 = vec4f(((u_xlat14.xyz * x_44.x_LkSun.zzz)).xyz, u_xlat14.w);
  let x_2157 = (u_xlat14.xyz * x_44.x_LkAmb.yyy);
  u_xlat17 = vec4f(x_2157.xy, u_xlat17.z, x_2157.z);
  u_xlatb92 = (0.00100000004749745131f < x_44.x_LkGrade.x);
  if (u_xlatb92) {
    u_xlat103 = ((u_xlat1.xz * u_xlat88.xx) + x_2173);
    u_xlat92 = dot(u_xlat103, u_xlat103);
    u_xlat92 = inverseSqrt(u_xlat92);
    u_xlat103 = (vec2f(u_xlat92) * u_xlat103);
    let x_2189 = ((u_xlat4.xw * vec2f(u_xlat135)) + x_2173);
    u_xlat4 = vec4f(x_2189.x, u_xlat4.y, x_2189.y, u_xlat4.w);
    u_xlat135 = dot(u_xlat4.xz, u_xlat4.xz);
    u_xlat135 = inverseSqrt(u_xlat135);
    let x_2203 = (vec2f(u_xlat135) * u_xlat4.xz);
    u_xlat4 = vec4f(x_2203.x, u_xlat4.y, x_2203.y, u_xlat4.w);
    u_xlat135 = dot(u_xlat103, u_xlat4.xz);
    u_xlat135 = clamp(u_xlat135, 0.0f, 1.0f);
    u_xlat4.x = (u_xlat135 * u_xlat135);
    let x_2225 = (x_44.x_LkGold.xyz + -(x_44.x_LkRose.xyz));
    u_xlat18 = vec4f(x_2225.xy, u_xlat18.z, x_2225.z);
    let x_2236 = ((u_xlat4.xxx * u_xlat18.xyw) + x_44.x_LkRose.xyz);
    u_xlat4 = vec4f(x_2236.x, u_xlat4.y, x_2236.yz);
    u_xlat143 = dot(u_xlat4.xzw, x_1139);
    u_xlat143 = max(u_xlat143, 0.00100000004749745131f);
    let x_2249 = (u_xlat4.xzw / vec3f(u_xlat143));
    u_xlat4 = vec4f(x_2249.x, u_xlat4.y, x_2249.yz);
    u_xlat143 = dot(u_xlat10, x_1139);
    let x_2261 = ((u_xlat4.xzw * vec3f(u_xlat143)) + -(u_xlat10));
    u_xlat4 = vec4f(x_2261.x, u_xlat4.y, x_2261.yz);
    u_xlat10 = ((x_44.x_LkGrade.xxx * u_xlat4.xzw) + u_xlat10);
    u_xlat4.x = dot(x_44.x_LkLav.xyz, x_1139);
    u_xlat4.x = max(u_xlat4.x, 0.00100000004749745131f);
    let x_2287 = (x_44.x_LkLav.xyz / u_xlat4.xxx);
    u_xlat4 = vec4f(x_2287.x, u_xlat4.y, x_2287.yz);
    u_xlat143 = dot(u_xlat11.xyz, x_1139);
    u_xlat135 = ((-(u_xlat135) * u_xlat135) + 1.0f);
    u_xlat135 = (u_xlat135 * x_44.x_LkGrade.x);
    let x_2310 = ((u_xlat4.xzw * vec3f(u_xlat143)) + -(u_xlat11.xyz));
    u_xlat4 = vec4f(x_2310.x, u_xlat4.y, x_2310.yz);
    u_xlat11 = vec4f((((vec3f(u_xlat135) * u_xlat4.xzw) + u_xlat11.xyz)).xyz, u_xlat11.w);
  }
  u_xlat135 = max(x_44.x_CloudJitter.z, 0.00000999999974737875f);
  let x_2333 = (x_44.x_Shape.xy * vec2f(0.0078125f, 0.03125f));
  u_xlat4 = vec4f(x_2333.x, u_xlat4.y, x_2333.y, u_xlat4.w);
  u_xlatu19 = vec4u(((bitcast<vec2u>(u_xlati0) & vec2u(127u))).xy, u_xlatu19.zw);
  u_xlatu19.z = 0u;
  u_xlatu19.w = 0u;
  u_xlat0.x = textureLoad(x_BlueNoise, bitcast<vec2i>(u_xlatu19.xy), bitcast<i32>(u_xlatu19.w)).x;
  u_xlat0.x = (u_xlat0.x + x_44.x_CloudFrame.z);
  u_xlat0.x = fract(u_xlat0.x);
  u_xlat44 = (u_xlat133 * x_44.x_March.z);
  u_xlat44 = max(u_xlat44, x_44.x_March.y);
  u_xlat44 = ((u_xlat0.x * u_xlat44) + u_xlat133);
  u_xlati133 = i32(x_44.x_March.x);
  u_xlat4.w = (x_44.x_Weather.x * 0.0009765625f);
  let x_2396 = -(x_44.x_Calm.zxy);
  u_xlat19 = vec4f(x_2396.xy, u_xlat19.z, x_2396.z);
  u_xlat19.z = -(x_44.x_PlanetShadow.x);
  u_xlat143 = (u_xlat19.x + x_44.x_Calm.w);
  u_xlat143 = (1.0f / u_xlat143);
  u_xlat100.x = (-(x_44.x_Flatten.x) + x_44.x_Flatten.y);
  u_xlat100.x = (1.0f / u_xlat100.x);
  u_xlat145 = (x_44.x_Airiness.z + 1.0f);
  u_xlat145 = max(u_xlat145, x_44.x_Airiness.w);
  u_xlat145 = (u_xlat145 + -(x_44.x_Airiness.z));
  u_xlat145 = (1.0f / u_xlat145);
  u_xlat146 = (x_44.x_Breakup.x * x_44.x_Airiness.x);
  u_xlatb146 = (0.00100000004749745131f < u_xlat146);
  u_xlat103.x = max(x_44.x_BankLayout.x, 0.00999999977648258209f);
  u_xlat103.x = log2(u_xlat103.x);
  u_xlat18 = vec4f(((x_44.x_CalmShape.yw + x_105)).xy, u_xlat18.zw);
  u_xlat20 = vec3f(((x_44.x_Flatten.wz + x_105)).xy, u_xlat20.z);
  u_xlat147 = max(x_44.x_Layer.z, 0.10000000149011611938f);
  u_xlatb148 = (x_44.x_Structure.x < 0.00100000004749745131f);
  u_xlat108 = max(vec2f(x_44.x_BaseYScale, x_44.x_HeapCarve), x_694);
  u_xlat150 = (x_44.x_Structure.y / x_44.x_Shape.x);
  u_xlat153 = log2(u_xlat108.x);
  u_xlat22.x = (-(x_44.x_ShapeB.y) + x_44.x_ShapeB.z);
  u_xlat66 = max(x_44.x_ShapeB.w, 0.0f);
  u_xlat108 = (u_xlat108 + x_105);
  u_xlat110 = max(x_44.x_Structure.w, 0.10000000149011611938f);
  u_xlat23 = (x_44.x_Breakup.yy + vec2f(0.00999999977648258209f, 0.07999999821186065674f));
  u_xlat154 = max(u_xlat23.x, x_44.x_Breakup.z);
  u_xlat154 = (u_xlat154 + -(x_44.x_Breakup.y));
  u_xlat154 = (1.0f / u_xlat154);
  u_xlat23.x = (u_xlat48 + -1.0f);
  u_xlat23.x = (1.0f / u_xlat23.x);
  u_xlat111 = x_44.x_Breakup.x;
  u_xlat111 = clamp(u_xlat111, 0.0f, 1.0f);
  u_xlat155 = x_44.x_Airiness.y;
  u_xlat155 = clamp(u_xlat155, 0.0f, 1.0f);
  u_xlat24 = (-(u_xlat155) + 1.0f);
  u_xlat67 = ((-(x_44.x_Breakup.y) * 0.64999997615814208984f) + u_xlat23.y);
  u_xlat67 = (1.0f / u_xlat67);
  u_xlat68 = (u_xlat111 * x_44.x_LaneMist);
  u_xlat112 = ((u_xlat142 * 0.85000002384185791016f) + -(u_xlat2.y));
  u_xlat112 = (u_xlat112 + 0.25f);
  u_xlati25 = bitcast<vec3i>((select(vec3u(), vec3u(1u), ((vec4f(0.00100000004749745131f, 0.5f, 0.00100000004749745131f, 0.0f) < x_44.x_Structure.yxzy)).xyz) * vec3u(4294967295u)));
  u_xlat156 = (-(x_44.x_LightFar.y) + 0.05000000074505805969f);
  u_xlat156 = ((u_xlat142 * u_xlat156) + x_44.x_LightFar.y);
  u_xlati157 = ~(u_xlati25.y);
  u_xlati26 = i32(x_44.x_LightMarch.x);
  u_xlati70 = i32(x_44.x_LightFar.x);
  u_xlat0.x = ((u_xlat0.x * 1.618000030517578125f) + 0.25f);
  u_xlat114 = log2(x_44.x_LightMarch.z);
  u_xlat27 = (u_xlat5 / x_44.x_PlanetShadow.yzy);
  u_xlat158 = dot(u_xlat27, u_xlat27);
  u_xlat158 = max(u_xlat158, 0.00000099999999747524f);
  u_xlat159 = (u_xlat103.x + 1.0f);
  u_xlat159 = max(u_xlat159, 0.0f);
  u_xlat28 = (-(x_44.x_PlanetShadowB.x) + 1.0f);
  u_xlat72 = (-(x_44.x_PlanetShadow.w) + 1.0f);
  u_xlat116 = (x_44.x_PlanetShadow.w + 1.0f);
  u_xlat116 = (-(u_xlat72) + u_xlat116);
  u_xlat116 = (1.0f / u_xlat116);
  u_xlat160 = (-(u_xlat28) + 1.0f);
  u_xlat137 = ((-(u_xlat137) * 0.5f) + 0.5f);
  u_xlat137 = clamp(u_xlat137, 0.0f, 1.0f);
  u_xlat137 = (u_xlat137 * x_44.x_LkMS.w);
  u_xlat14 = vec4f((((-(u_xlat14.xyz) * x_44.x_LkAmb.yyy) + u_xlat11.xyz)).xyz, u_xlat14.w);
  u_xlat29 = (-(x_44.x_LkAmb.xw) + x_694);
  u_xlat7.w = x_44.x_LkMS.y;
  u_xlat117 = u_xlat44;
  u_xlat161 = 1.0f;
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlat162 = 0.0f;
  u_xlat31.x = 0.0f;
  u_xlat31.y = 0.0f;
  u_xlat119 = 1.0f;
  u_xlat163 = 0.0f;
  u_xlati32 = 0i;
  loop {
    if (true) {
    } else {
      break;
    }
    u_xlatb76 = (u_xlati32 >= u_xlati133);
    if (u_xlatb76) {
      break;
    }
    u_xlatb76 = (u_xlat117 >= u_xlat91.x);
    if (u_xlatb76) {
      break;
    }
    u_xlat76 = ((u_xlat2.xyz * vec3f(u_xlat117)) + x_44.x_CloudCam.xyz);
    u_xlat33 = (u_xlat117 * x_44.x_March.z);
    u_xlat33 = max(u_xlat33, x_44.x_March.y);
    u_xlat77 = (u_xlat135 * u_xlat117);
    u_xlat121 = (vec2f(u_xlat77) / u_xlat4.xw);
    u_xlat121.x = log2(u_xlat121.x);
    u_xlat121.y = log2(u_xlat121.y);
    u_xlat121 = max(u_xlat121, vec2f());
    u_xlat34 = (u_xlat76.xz + x_44.x_CloudWind.xy);
    u_xlat122 = (u_xlat34 / x_44.x_Weather.xx);
    u_xlat35 = textureSampleLevel(x_WeatherTex, sampler_LinearRepeat, u_xlat122, u_xlat121.y);
    u_xlat122 = (u_xlat19.yw + u_xlat76.xz);
    u_xlat122.x = dot(u_xlat122, u_xlat122);
    u_xlat122.x = sqrt(u_xlat122.x);
    u_xlat166 = (u_xlat19.x + u_xlat122.x);
    u_xlat166 = (u_xlat143 * u_xlat166);
    u_xlat166 = clamp(u_xlat166, 0.0f, 1.0f);
    u_xlat36.x = ((u_xlat166 * -2.0f) + 3.0f);
    u_xlat166 = (u_xlat166 * u_xlat166);
    u_xlat166 = ((-(u_xlat36.x) * u_xlat166) + 1.0f);
    u_xlat36.x = (u_xlat122.x + -(x_44.x_Flatten.x));
    u_xlat36.x = (u_xlat100.x * u_xlat36.x);
    u_xlat36.x = clamp(u_xlat36.x, 0.0f, 1.0f);
    u_xlat80.x = ((u_xlat36.x * -2.0f) + 3.0f);
    u_xlat36.x = (u_xlat36.x * u_xlat36.x);
    u_xlat36.x = (u_xlat36.x * u_xlat80.x);
    u_xlat80 = (u_xlat35.xyw + x_2887);
    u_xlat35.x = ((u_xlat80.x * x_44.x_Weather.w) + x_44.x_Weather.z);
    u_xlat35.x = (u_xlat35.x + 0.5f);
    u_xlat35.x = clamp(u_xlat35.x, 0.0f, 1.0f);
    u_xlat122.x = (u_xlat122.x + -(x_44.x_Airiness.z));
    u_xlat122.x = (u_xlat145 * u_xlat122.x);
    u_xlat122.x = clamp(u_xlat122.x, 0.0f, 1.0f);
    u_xlat79 = ((u_xlat122.x * -2.0f) + 3.0f);
    u_xlat122.x = (u_xlat122.x * u_xlat122.x);
    u_xlat122.x = (u_xlat122.x * u_xlat79);
    u_xlatb79 = (0.00100000004749745131f < u_xlat122.x);
    u_xlatb79 = (u_xlatb146 & u_xlatb79);
    if (u_xlatb79) {
      u_xlat34 = (u_xlat34 * x_44.x_BankLayout.xx);
      u_xlat34 = (u_xlat34 / x_44.x_Weather.xx);
      u_xlat34 = (u_xlat34 + x_44.x_BankLayout.yz);
      u_xlat165 = (u_xlat103.x + u_xlat121.y);
      u_xlat165 = max(u_xlat165, 0.0f);
      u_xlat165 = textureSampleLevel(x_WeatherTex, sampler_LinearRepeat, u_xlat34, u_xlat165).x;
      u_xlat165 = (u_xlat165 + -0.5f);
      u_xlat165 = ((u_xlat165 * 1.5f) + x_44.x_BankLayout.w);
      u_xlat165 = clamp(u_xlat165, 0.0f, 1.0f);
      u_xlat34 = (u_xlat35.xx + x_2991);
      u_xlat34.x = max(u_xlat34.x, 0.0f);
      u_xlat165 = min(u_xlat165, u_xlat34.x);
      u_xlat34.x = (u_xlat34.y * 4.16666650772094726562f);
      u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
      u_xlat78 = ((u_xlat34.x * -2.0f) + 3.0f);
      u_xlat34.x = (u_xlat34.x * u_xlat34.x);
      u_xlat34.x = (u_xlat34.x * u_xlat78);
      u_xlat78 = (u_xlat35.w + -0.12999999523162841797f);
      u_xlat78 = (u_xlat78 * 5.26315784454345703125f);
      u_xlat78 = clamp(u_xlat78, 0.0f, 1.0f);
      u_xlat79 = ((u_xlat78 * -2.0f) + 3.0f);
      u_xlat78 = (u_xlat78 * u_xlat78);
      u_xlat78 = (u_xlat78 * u_xlat79);
      u_xlat34.x = (u_xlat78 * u_xlat34.x);
      u_xlat78 = (u_xlat35.x * 0.94999998807907104492f);
      u_xlat78 = max(u_xlat165, u_xlat78);
      u_xlat34.x = (u_xlat34.x * 0.64999997615814208984f);
      u_xlat78 = (-(u_xlat165) + u_xlat78);
      u_xlat165 = ((u_xlat34.x * u_xlat78) + u_xlat165);
      u_xlat34.x = (u_xlat122.x * x_44.x_Airiness.x);
      u_xlat34.x = (u_xlat34.x * x_44.x_Breakup.x);
      u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
      u_xlat165 = (-(u_xlat35.x) + u_xlat165);
      u_xlat35.x = ((u_xlat34.x * u_xlat165) + u_xlat35.x);
    }
    u_xlat165 = max(u_xlat35.x, x_44.x_CalmShape.z);
    u_xlat165 = (-(u_xlat35.x) + u_xlat165);
    u_xlat165 = ((u_xlat166 * u_xlat165) + u_xlat35.x);
    u_xlat34 = ((vec2f(u_xlat166) * u_xlat18.xy) + x_694);
    u_xlat122.x = (u_xlat34.x * u_xlat35.z);
    u_xlat35 = vec4f((((u_xlat36.xx * u_xlat20.xy) + x_694)).xy, u_xlat35.zw);
    u_xlat167 = dot(u_xlat80.yy, x_44.x_Layer.ww);
    u_xlat36.x = (u_xlat80.z * x_44.x_ShapeB.x);
    u_xlat80.x = ((u_xlat166 * -0.60000002384185791016f) + 1.0f);
    u_xlat167 = ((u_xlat36.x * u_xlat80.x) + u_xlat167);
    u_xlat35.x = ((u_xlat167 * u_xlat35.x) + x_44.x_Layer.x);
    u_xlat166 = ((-(u_xlat166) * x_44.x_CalmShape.x) + u_xlat35.x);
    u_xlat35.x = ((u_xlat122.x * 0.44999998807907104492f) + 0.55000001192092895508f);
    u_xlat35.x = (u_xlat35.x * x_44.x_Layer.y);
    u_xlat78 = (u_xlat34.y * u_xlat35.x);
    u_xlat35.x = (u_xlat35.y * u_xlat78);
    u_xlat78 = ((-(u_xlat78) * u_xlat35.y) + u_xlat166);
    u_xlat79 = (u_xlat76.y + -(u_xlat78));
    u_xlat167 = (u_xlat79 / u_xlat35.x);
    u_xlatb36 = (u_xlat167 < 1.0f);
    if (u_xlatb36) {
      u_xlat36.x = (-(u_xlat76.y) + u_xlat78);
      u_xlat36.x = (u_xlat36.x / u_xlat147);
      u_xlat36.x = (u_xlat36.x + 0.25f);
      u_xlat36.x = clamp(u_xlat36.x, 0.0f, 1.0f);
      u_xlatb80 = (u_xlat36.x >= 1.0f);
      u_xlatb80 = (u_xlatb148 & u_xlatb80);
      if (!(u_xlatb80)) {
        u_xlat37.y = (u_xlat76.y + -(x_44.x_CloudBoil.x));
        let x_3264 = (u_xlat76.xz + x_44.x_CloudWind.xy);
        u_xlat37 = vec4f(x_3264.x, u_xlat37.y, x_3264.y, u_xlat37.w);
        u_xlat80 = (u_xlat37.xzy / x_44.x_Shape.xxx);
        u_xlatb37 = (u_xlat121.x < 2.0f);
        if (u_xlatb37) {
          x_3279 = u_xlati25.x;
        } else {
          x_3279 = 0i;
        }
        u_xlati37 = x_3279;
        if ((u_xlati37 != 0i)) {
          let x_3294 = (u_xlat80.xzy * x_3293);
          u_xlat37 = vec4f(x_3294.x, u_xlat37.y, x_3294.yz);
          u_xlat38 = vec4f(((u_xlat121.xx + x_3301)).xy, u_xlat38.zw);
          u_xlat38.x = max(u_xlat38.x, 0.0f);
          let x_3321 = textureSampleLevel(x_DetailNoise, sampler_LinearRepeat, u_xlat37.xzw, u_xlat38.x).xyz;
          u_xlat37 = vec4f(x_3321.x, u_xlat37.y, x_3321.yz);
          let x_3326 = (u_xlat37.xzw + x_2887);
          u_xlat37 = vec4f(x_3326.x, u_xlat37.y, x_3326.yz);
          let x_3333 = (vec3f(u_xlat150) * u_xlat37.xzw);
          u_xlat37 = vec4f(x_3333.x, u_xlat37.y, x_3333.yz);
          u_xlat38.x = (u_xlat38.y + u_xlat38.y);
          u_xlat38.x = clamp(u_xlat38.x, 0.0f, 1.0f);
          u_xlat82.x = ((u_xlat38.x * -2.0f) + 3.0f);
          u_xlat38.x = (u_xlat38.x * u_xlat38.x);
          u_xlat38.x = ((-(u_xlat82.x) * u_xlat38.x) + 1.0f);
          u_xlat80 = ((u_xlat37.xwz * u_xlat38.xxx) + u_xlat80);
        }
        u_xlat37.x = (u_xlat37.y + -(x_44.x_Layer.x));
        u_xlat37.x = (u_xlat108.x * u_xlat37.x);
        u_xlat37.x = (u_xlat37.x / x_44.x_Shape.x);
        u_xlat80.z = (u_xlat80.z + u_xlat37.x);
        u_xlat37.x = (u_xlat153 + u_xlat121.x);
        u_xlat37 = textureSampleLevel(x_BaseNoise, sampler_LinearRepeat, u_xlat80.xzy, u_xlat37.x);
        u_xlat80.x = dot(u_xlat37.yzw, x_3416);
        u_xlat81 = ((u_xlat35.zzz * u_xlat34.xxx) + x_3427);
        u_xlat81 = (u_xlat81 * x_3433);
        u_xlat81 = clamp(u_xlat81, vec3f(0.0f), vec3f(1.0f));
        u_xlat38 = vec4f((((u_xlat81 * x_3440) + x_3442)).xyz, u_xlat38.w);
        u_xlat81 = (u_xlat81 * u_xlat81);
        u_xlat81 = (u_xlat81 * u_xlat38.xyz);
        u_xlat124.x = (u_xlat81.z * 0.11999999731779098511f);
        u_xlat168 = ((u_xlat81.x * 0.47000002861022949219f) + 0.64999997615814208984f);
        u_xlat80.x = (-(u_xlat80.x) + 1.0f);
        u_xlat168 = ((u_xlat80.x * u_xlat168) + u_xlat80.x);
        u_xlat80.x = ((u_xlat142 * u_xlat168) + -(u_xlat80.x));
        u_xlat168 = (-(u_xlat80.x) + u_xlat37.x);
        u_xlat80.x = (-(u_xlat80.x) + 1.0f);
        u_xlat80.x = (u_xlat168 / u_xlat80.x);
        u_xlat80.x = clamp(u_xlat80.x, 0.0f, 1.0f);
        u_xlat168 = u_xlat122.x;
        u_xlat168 = clamp(u_xlat168, 0.0f, 1.0f);
        u_xlat168 = ((u_xlat168 * u_xlat22.x) + x_44.x_ShapeB.y);
        u_xlat37.x = ((u_xlat81.y * u_xlat108.y) + 1.0f);
        u_xlat37.x = (u_xlat66 * u_xlat37.x);
        u_xlat81.x = max(u_xlat35.x, 0.10000000149011611938f);
        u_xlat37.x = (u_xlat37.x / u_xlat81.x);
        u_xlat81.x = (-(u_xlat80.x) + 1.0f);
        u_xlat37.x = (u_xlat81.x * u_xlat37.x);
        u_xlat81.x = (u_xlat167 + -0.20000000298023223877f);
        u_xlat81.x = (u_xlat81.x * 2.22222232818603515625f);
        u_xlat81.x = clamp(u_xlat81.x, 0.0f, 1.0f);
        u_xlat125 = ((u_xlat81.x * -2.0f) + 3.0f);
        u_xlat81.x = (u_xlat81.x * u_xlat81.x);
        u_xlat81.x = (u_xlat81.x * u_xlat125);
        u_xlat37.x = (u_xlat81.x * u_xlat37.x);
        u_xlat37.x = ((u_xlat37.x * u_xlat142) + u_xlat167);
        u_xlat37.x = (u_xlat37.x + -1.0f);
        u_xlat168 = (u_xlat168 + -1.0f);
        u_xlat168 = (u_xlat37.x / u_xlat168);
        u_xlat168 = clamp(u_xlat168, 0.0f, 1.0f);
        u_xlat37.x = (-(u_xlat165) + 1.0f);
        u_xlat81.x = ((u_xlat80.x * u_xlat168) + -(u_xlat37.x));
        u_xlat125 = (-(u_xlat37.x) + 1.0f);
        u_xlat37.y = (u_xlat81.x / u_xlat125);
        u_xlat37.y = clamp(u_xlat37.y, 0.0f, 1.0f);
        u_xlat37.x = (u_xlat80.x + -(u_xlat37.x));
        u_xlat37.x = (u_xlat37.x / u_xlat125);
        u_xlat37.x = clamp(u_xlat37.x, 0.0f, 1.0f);
        u_xlat37 = vec4f(((vec2f(u_xlat165) * u_xlat37.xy)).xy, u_xlat37.zw);
        u_xlat168 = log2(u_xlat168);
        u_xlat168 = (u_xlat110 * u_xlat168);
        u_xlat168 = exp2(u_xlat168);
        u_xlat168 = (u_xlat168 * u_xlat37.x);
        u_xlat37.x = ((u_xlat80.x * 0.77999997138977050781f) + 0.21999999880790710449f);
        u_xlat125 = ((u_xlat165 * 0.25f) + 0.75f);
        u_xlat169 = (u_xlat36.x + -0.10000000149011611938f);
        u_xlat169 = (u_xlat169 * 1.11111116409301757812f);
        u_xlat169 = max(u_xlat169, 0.0f);
        u_xlat38.x = ((u_xlat169 * -2.0f) + 3.0f);
        u_xlat169 = (u_xlat169 * u_xlat169);
        u_xlat169 = (u_xlat169 * u_xlat38.x);
        u_xlat37.x = ((u_xlat37.x * u_xlat125) + -(u_xlat168));
        u_xlat168 = ((u_xlat169 * u_xlat37.x) + u_xlat168);
        u_xlat37.x = (u_xlat165 + -(x_44.x_Breakup.y));
        u_xlat37.x = (u_xlat154 * u_xlat37.x);
        u_xlat37.x = clamp(u_xlat37.x, 0.0f, 1.0f);
        u_xlat125 = ((u_xlat37.x * -2.0f) + 3.0f);
        u_xlat37.x = (u_xlat37.x * u_xlat37.x);
        u_xlat169 = (u_xlat37.x * u_xlat125);
        u_xlat38.x = (u_xlat48 + u_xlat79);
        u_xlat38.x = (u_xlat23.x * u_xlat38.x);
        u_xlat38.x = clamp(u_xlat38.x, 0.0f, 1.0f);
        u_xlat82.x = ((u_xlat38.x * -2.0f) + 3.0f);
        u_xlat38.x = (u_xlat38.x * u_xlat38.x);
        u_xlat38.x = (u_xlat38.x * u_xlat82.x);
        u_xlat36.x = max(u_xlat36.x, u_xlat37.y);
        u_xlat168 = (-(u_xlat36.x) + u_xlat168);
        u_xlat36.x = ((u_xlat142 * u_xlat168) + u_xlat36.x);
        u_xlat168 = (u_xlat169 * u_xlat169);
        u_xlat168 = ((u_xlat168 * u_xlat38.x) + -1.0f);
        u_xlat168 = ((u_xlat111 * u_xlat168) + 1.0f);
        u_xlat36.x = (u_xlat168 * u_xlat36.x);
        u_xlat82 = (u_xlat80.xxx + x_3808);
        u_xlat82 = (u_xlat82 * x_3814);
        u_xlat82 = clamp(u_xlat82, vec3f(0.0f), vec3f(1.0f));
        u_xlat39 = vec4f((((u_xlat82 * x_3440) + x_3442)).xyz, u_xlat39.w);
        u_xlat82 = (u_xlat82 * u_xlat82);
        u_xlat38 = vec4f(u_xlat38.x, ((u_xlat82 * u_xlat39.xyz)).xyz);
        u_xlat80.x = ((u_xlat38.y * u_xlat24) + u_xlat155);
        u_xlat168 = ((u_xlat169 * 0.5f) + 0.5f);
        u_xlat80.x = ((u_xlat80.x * u_xlat168) + -1.0f);
        u_xlat80.x = ((u_xlat111 * u_xlat80.x) + 1.0f);
        u_xlat168 = ((-(u_xlat125) * u_xlat37.x) + 1.0f);
        u_xlat124.y = (u_xlat168 * u_xlat38.z);
        u_xlat124 = (u_xlat124 * u_xlat38.wx);
        u_xlat79 = (u_xlat79 + 4.0f);
        u_xlat79 = (u_xlat79 * 0.20000000298023223877f);
        u_xlat79 = clamp(u_xlat79, 0.0f, 1.0f);
        u_xlat37.x = ((u_xlat79 * -2.0f) + 3.0f);
        u_xlat79 = (u_xlat79 * u_xlat79);
        u_xlat79 = ((-(u_xlat37.x) * u_xlat79) + 1.0f);
        u_xlat79 = (u_xlat79 * u_xlat124.y);
        u_xlat168 = ((-(x_44.x_Breakup.y) * 0.64999997615814208984f) + u_xlat165);
        u_xlat168 = (u_xlat67 * u_xlat168);
        u_xlat168 = clamp(u_xlat168, 0.0f, 1.0f);
        u_xlat37.x = ((u_xlat168 * -2.0f) + 3.0f);
        u_xlat168 = (u_xlat168 * u_xlat168);
        u_xlat168 = (u_xlat168 * u_xlat37.x);
        u_xlat124.x = max(u_xlat124.x, u_xlat168);
        u_xlat79 = (u_xlat79 * u_xlat124.x);
        u_xlat79 = (u_xlat68 * u_xlat79);
        u_xlat79 = ((u_xlat36.x * u_xlat80.x) + u_xlat79);
      } else {
        u_xlat79 = 1.0f;
      }
    } else {
      u_xlat79 = 0.0f;
    }
    u_xlatb36 = (0.0f >= u_xlat79);
    if (u_xlatb36) {
      u_xlat166 = (u_xlat76.y + -(u_xlat166));
      u_xlatb36 = (0.0f < u_xlat166);
      u_xlat166 = (u_xlat166 / u_xlat112);
      u_xlat166 = max(u_xlat33, u_xlat166);
      u_xlat80.x = (u_xlat33 * x_44.x_MarchB.z);
      if (u_xlatb36) {
        x_3964 = u_xlat166;
      } else {
        x_3964 = u_xlat80.x;
      }
      u_xlat166 = x_3964;
      u_xlat166 = (u_xlat117 + u_xlat166);
      u_xlati36 = (u_xlati32 + 1i);
      u_xlat117 = u_xlat166;
      u_xlati32 = u_xlati36;
      continue;
    }
    u_xlatb166 = (u_xlat79 < 0.99900001287460327148f);
    u_xlatb36 = (u_xlat117 < x_44.x_MarchB.y);
    u_xlatb166 = (u_xlatb166 & u_xlatb36);
    u_xlatb36 = (-0.30000001192092895508f < u_xlat167);
    u_xlatb36 = (u_xlatb148 | u_xlatb36);
    u_xlatb166 = (u_xlatb166 & u_xlatb36);
    if (u_xlatb166) {
      u_xlat166 = (u_xlat77 / u_xlat4.z);
      u_xlat166 = log2(u_xlat166);
      u_xlat166 = max(u_xlat166, 0.0f);
      u_xlat36 = vec4f(u_xlat36.xy, (((x_44.x_CloudWind.xy * x_44.x_Motion.yy) + u_xlat76.xz)).xy);
      u_xlat36.x = (u_xlat36.z + x_44.x_CloudBoil.y);
      u_xlat36.y = ((-(x_44.x_CloudBoil.x) * 2.0f) + u_xlat76.y);
      u_xlat36 = vec4f(((u_xlat36.xyw / x_44.x_Shape.yyy)).xyz, u_xlat36.w);
      u_xlat36 = vec4f(textureSampleLevel(x_DetailNoise, sampler_TrilinearRepeat, u_xlat36.xyz, u_xlat166).xyz.xyz, u_xlat36.w);
      u_xlat166 = dot(u_xlat36.xyz, x_3416);
      u_xlat36.x = (u_xlat167 * 4.0f);
      u_xlat36.x = clamp(u_xlat36.x, 0.0f, 1.0f);
      u_xlat80.x = ((u_xlat166 * -2.0f) + 1.0f);
      u_xlat166 = ((u_xlat36.x * u_xlat80.x) + u_xlat166);
      u_xlat36.x = ((-(u_xlat166) * x_44.x_Shape.z) + u_xlat79);
      u_xlat166 = ((-(u_xlat166) * x_44.x_Shape.z) + 1.0f);
      u_xlat166 = (u_xlat36.x / u_xlat166);
      u_xlat166 = clamp(u_xlat166, 0.0f, 1.0f);
      u_xlat36.x = (-(u_xlat117) + x_44.x_MarchB.y);
      u_xlat36.x = (u_xlat36.x * 0.00666666682809591293f);
      u_xlat36.x = clamp(u_xlat36.x, 0.0f, 1.0f);
      u_xlat166 = (-(u_xlat79) + u_xlat166);
      u_xlat79 = ((u_xlat36.x * u_xlat166) + u_xlat79);
    }
    u_xlat166 = (u_xlat79 * x_44.x_Shape.w);
    u_xlatb79 = (u_xlat166 < 0.00009999999747378752f);
    if (u_xlatb79) {
      u_xlat79 = (u_xlat117 + u_xlat33);
      u_xlati36 = (u_xlati32 + 1i);
      u_xlat117 = u_xlat79;
      u_xlati32 = u_xlati36;
      continue;
    }
    u_xlat79 = ((x_44.x_LightFar.z * u_xlat163) + 1.0f);
    u_xlat79 = min(u_xlat79, x_44.x_LightFar.w);
    u_xlat36.x = (u_xlat33 * u_xlat79);
    u_xlat163 = (u_xlat163 + 1.0f);
    u_xlatb80 = (u_xlat156 < u_xlat161);
    u_xlatb124 = (u_xlat163 < 2.0f);
    u_xlati124 = bitcast<i32>((bitcast<u32>(u_xlati157) | (select(0u, 1u, u_xlatb124) * 4294967295u)));
    u_xlati168 = i32(u_xlat163);
    u_xlati168 = bitcast<i32>((bitcast<u32>(u_xlati168) & 1u));
    u_xlatb168 = (u_xlati168 == 0i);
    u_xlati124 = bitcast<i32>(((select(0u, 1u, u_xlatb168) * 4294967295u) | bitcast<u32>(u_xlati124)));
    u_xlati80 = select(0i, u_xlati124, u_xlatb80);
    if ((u_xlati80 != 0i)) {
      u_xlat80.x = (u_xlat121.x + 0.5f);
      u_xlat77 = (u_xlat77 / u_xlat4.z);
      u_xlat77 = log2(u_xlat77);
      u_xlat77 = max(u_xlat77, 0.0f);
      u_xlatb124 = (u_xlat117 < x_44.x_MarchB.x);
      u_xlati124 = select(u_xlati70, u_xlati26, u_xlatb124);
      u_xlat168 = ((u_xlat163 * 0.3819999992847442627f) + u_xlat0.x);
      u_xlat168 = fract(u_xlat168);
      u_xlat37.x = f32(u_xlati124);
      u_xlat37.x = (-(u_xlat37.x) + x_44.x_LightMarch.x);
      u_xlat37.x = max(u_xlat37.x, 0.0f);
      u_xlat37.x = (u_xlat114 * u_xlat37.x);
      u_xlat37.x = exp2(u_xlat37.x);
      u_xlat37.x = (u_xlat37.x * x_44.x_LightMarch.y);
      u_xlat81.x = 0.0f;
      u_xlat169 = 0.0f;
      u_xlat125 = u_xlat37.x;
      u_xlati_loop_1 = 0i;
      loop {
        if ((u_xlati_loop_1 < u_xlati124)) {
        } else {
          break;
        }
        u_xlat82.x = ((u_xlat125 * u_xlat168) + u_xlat169);
        u_xlat82 = ((u_xlat5 * u_xlat82.xxx) + u_xlat76);
        u_xlatb39 = (u_xlat45.x < u_xlat82.y);
        if (u_xlatb39) {
          break;
        }
        u_xlat39 = vec4f(((u_xlat82.xz + x_44.x_CloudWind.xy)).xy, u_xlat39.zw);
        u_xlat127 = (u_xlat39.xy / x_44.x_Weather.xx);
        u_xlat40 = textureSampleLevel(x_WeatherTex, sampler_LinearRepeat, u_xlat127, 1.0f);
        u_xlat127 = (u_xlat19.yw + u_xlat82.xz);
        u_xlat127.x = dot(u_xlat127, u_xlat127);
        u_xlat127.x = sqrt(u_xlat127.x);
        u_xlat171 = (u_xlat19.x + u_xlat127.x);
        u_xlat171 = (u_xlat143 * u_xlat171);
        u_xlat171 = clamp(u_xlat171, 0.0f, 1.0f);
        u_xlat41.x = ((u_xlat171 * -2.0f) + 3.0f);
        u_xlat171 = (u_xlat171 * u_xlat171);
        u_xlat171 = ((-(u_xlat41.x) * u_xlat171) + 1.0f);
        u_xlat41.x = (u_xlat127.x + -(x_44.x_Flatten.x));
        u_xlat41.x = (u_xlat100.x * u_xlat41.x);
        u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
        u_xlat85.x = ((u_xlat41.x * -2.0f) + 3.0f);
        u_xlat41.x = (u_xlat41.x * u_xlat41.x);
        u_xlat41.x = (u_xlat41.x * u_xlat85.x);
        u_xlat85 = (u_xlat40.xyw + x_2887);
        u_xlat40.x = ((u_xlat85.x * x_44.x_Weather.w) + x_44.x_Weather.z);
        u_xlat40.x = (u_xlat40.x + 0.5f);
        u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
        u_xlat127.x = (u_xlat127.x + -(x_44.x_Airiness.z));
        u_xlat127.x = (u_xlat145 * u_xlat127.x);
        u_xlat127.x = clamp(u_xlat127.x, 0.0f, 1.0f);
        u_xlat84.x = ((u_xlat127.x * -2.0f) + 3.0f);
        u_xlat127.x = (u_xlat127.x * u_xlat127.x);
        u_xlat127.x = (u_xlat127.x * u_xlat84.x);
        u_xlatb84 = (0.00100000004749745131f < u_xlat127.x);
        u_xlatb84 = (u_xlatb146 & u_xlatb84);
        if (u_xlatb84) {
          u_xlat39 = vec4f(((u_xlat39.xy * x_44.x_BankLayout.xx)).xy, u_xlat39.zw);
          u_xlat39 = vec4f(((u_xlat39.xy / x_44.x_Weather.xx)).xy, u_xlat39.zw);
          u_xlat39 = vec4f(((u_xlat39.xy + x_44.x_BankLayout.yz)).xy, u_xlat39.zw);
          u_xlat39.x = textureSampleLevel(x_WeatherTex, sampler_LinearRepeat, u_xlat39.xy, u_xlat159).x;
          u_xlat39.x = (u_xlat39.x + -0.5f);
          u_xlat39.x = ((u_xlat39.x * 1.5f) + x_44.x_BankLayout.w);
          u_xlat39.x = clamp(u_xlat39.x, 0.0f, 1.0f);
          u_xlat42 = vec4f(((u_xlat40.xx + x_2991)).xy, u_xlat42.zw);
          u_xlat83.x = max(u_xlat42.x, 0.0f);
          u_xlat39.x = min(u_xlat83.x, u_xlat39.x);
          u_xlat83.x = (u_xlat42.y * 4.16666650772094726562f);
          u_xlat83.x = clamp(u_xlat83.x, 0.0f, 1.0f);
          u_xlat84.x = ((u_xlat83.x * -2.0f) + 3.0f);
          u_xlat83.x = (u_xlat83.x * u_xlat83.x);
          u_xlat83.x = (u_xlat83.x * u_xlat84.x);
          u_xlat84.x = (u_xlat40.w + -0.12999999523162841797f);
          u_xlat84.x = (u_xlat84.x * 5.26315784454345703125f);
          u_xlat84.x = clamp(u_xlat84.x, 0.0f, 1.0f);
          u_xlat172 = ((u_xlat84.x * -2.0f) + 3.0f);
          u_xlat84.x = (u_xlat84.x * u_xlat84.x);
          u_xlat84.x = (u_xlat84.x * u_xlat172);
          u_xlat83.x = (u_xlat83.x * u_xlat84.x);
          u_xlat84.x = (u_xlat40.x * 0.94999998807907104492f);
          u_xlat84.x = max(u_xlat39.x, u_xlat84.x);
          u_xlat83.x = (u_xlat83.x * 0.64999997615814208984f);
          u_xlat84.x = (-(u_xlat39.x) + u_xlat84.x);
          u_xlat39.x = ((u_xlat83.x * u_xlat84.x) + u_xlat39.x);
          u_xlat83.x = (u_xlat127.x * x_44.x_Airiness.x);
          u_xlat83.x = (u_xlat83.x * x_44.x_Breakup.x);
          u_xlat83.x = clamp(u_xlat83.x, 0.0f, 1.0f);
          u_xlat39.x = (-(u_xlat40.x) + u_xlat39.x);
          u_xlat40.x = ((u_xlat83.x * u_xlat39.x) + u_xlat40.x);
        }
        u_xlat39 = vec4f((((vec2f(u_xlat171) * u_xlat18.xy) + x_694)).xy, u_xlat39.zw);
        u_xlat127.x = (u_xlat39.x * u_xlat40.z);
        let x_4648 = ((u_xlat41.xx * u_xlat20.xy) + x_694);
        u_xlat84 = vec3f(x_4648.x, u_xlat84.y, x_4648.y);
        u_xlat41.x = dot(u_xlat85.yy, x_44.x_Layer.ww);
        u_xlat85.x = (u_xlat85.z * x_44.x_ShapeB.x);
        u_xlat129 = ((u_xlat171 * -0.60000002384185791016f) + 1.0f);
        u_xlat41.x = ((u_xlat85.x * u_xlat129) + u_xlat41.x);
        u_xlat84.x = ((u_xlat41.x * u_xlat84.x) + x_44.x_Layer.x);
        u_xlat84.x = ((-(u_xlat171) * x_44.x_CalmShape.x) + u_xlat84.x);
        u_xlat41.x = ((u_xlat127.x * 0.44999998807907104492f) + 0.55000001192092895508f);
        u_xlat41.x = (u_xlat41.x * x_44.x_Layer.y);
        u_xlat83.x = (u_xlat39.y * u_xlat41.x);
        u_xlat41.x = (u_xlat84.z * u_xlat83.x);
        u_xlat83.x = ((-(u_xlat83.x) * u_xlat84.z) + u_xlat84.x);
        u_xlat84.x = (u_xlat82.y + -(u_xlat83.x));
        u_xlat172 = (u_xlat84.x / u_xlat41.x);
        u_xlatb85 = (u_xlat172 < 1.0f);
        if (u_xlatb85) {
          u_xlat83.x = (-(u_xlat82.y) + u_xlat83.x);
          u_xlat83.x = (u_xlat83.x / u_xlat147);
          u_xlat83.x = (u_xlat83.x + 0.25f);
          u_xlat83.x = clamp(u_xlat83.x, 0.0f, 1.0f);
          u_xlatb85 = (u_xlat83.x >= 1.0f);
          u_xlatb85 = (u_xlatb148 & u_xlatb85);
          if (!(u_xlatb85)) {
            u_xlat85.x = max(u_xlat40.x, x_44.x_CalmShape.z);
            u_xlat85.x = (-(u_xlat40.x) + u_xlat85.x);
            u_xlat171 = ((u_xlat171 * u_xlat85.x) + u_xlat40.x);
            u_xlat40.x = f32(u_xlati_loop_1);
            u_xlat40.x = ((u_xlat40.x * 0.34999999403953552246f) + u_xlat80.x);
            u_xlat42.y = (u_xlat82.y + -(x_44.x_CloudBoil.x));
            let x_4817 = (u_xlat82.xz + x_44.x_CloudWind.xy);
            u_xlat42 = vec4f(x_4817.x, u_xlat42.y, x_4817.y, u_xlat42.w);
            u_xlat85 = (u_xlat42.xzy / x_44.x_Shape.xxx);
            u_xlatb42 = (u_xlat40.x < 2.0f);
            if (u_xlatb42) {
              x_4832 = u_xlati25.x;
            } else {
              x_4832 = 0i;
            }
            u_xlati42 = x_4832;
            if ((u_xlati42 != 0i)) {
              let x_4845 = (u_xlat85.xzy * x_3293);
              u_xlat42 = vec4f(x_4845.x, u_xlat42.y, x_4845.yz);
              u_xlat43 = vec3f(((u_xlat40.xx + x_3301)).xy, u_xlat43.z);
              u_xlat43.x = max(u_xlat43.x, 0.0f);
              let x_4866 = textureSampleLevel(x_DetailNoise, sampler_LinearRepeat, u_xlat42.xzw, u_xlat43.x).xyz;
              u_xlat42 = vec4f(x_4866.x, u_xlat42.y, x_4866.yz);
              let x_4871 = (u_xlat42.xzw + x_2887);
              u_xlat42 = vec4f(x_4871.x, u_xlat42.y, x_4871.yz);
              let x_4878 = (vec3f(u_xlat150) * u_xlat42.xzw);
              u_xlat42 = vec4f(x_4878.x, u_xlat42.y, x_4878.yz);
              u_xlat43.x = (u_xlat43.y + u_xlat43.y);
              u_xlat43.x = clamp(u_xlat43.x, 0.0f, 1.0f);
              u_xlat87 = ((u_xlat43.x * -2.0f) + 3.0f);
              u_xlat43.x = (u_xlat43.x * u_xlat43.x);
              u_xlat43.x = ((-(u_xlat87) * u_xlat43.x) + 1.0f);
              u_xlat85 = ((u_xlat42.xwz * u_xlat43.xxx) + u_xlat85);
            }
            u_xlat42.x = (u_xlat42.y + -(x_44.x_Layer.x));
            u_xlat42.x = (u_xlat108.x * u_xlat42.x);
            u_xlat42.x = (u_xlat42.x / x_44.x_Shape.x);
            u_xlat85.z = (u_xlat85.z + u_xlat42.x);
            u_xlat40.x = (u_xlat153 + u_xlat40.x);
            u_xlat42 = textureSampleLevel(x_BaseNoise, sampler_LinearRepeat, u_xlat85.xzy, u_xlat40.x);
            u_xlat40.x = dot(u_xlat42.yzw, x_3416);
            u_xlat85 = ((u_xlat40.zzz * u_xlat39.xxx) + x_3427);
            u_xlat85 = (u_xlat85 * x_3433);
            u_xlat85 = clamp(u_xlat85, vec3f(0.0f), vec3f(1.0f));
            u_xlat86 = ((u_xlat85 * x_3440) + x_3442);
            u_xlat85 = (u_xlat85 * u_xlat85);
            u_xlat85 = (u_xlat85 * u_xlat86);
            u_xlat39.x = (u_xlat85.z * 0.11999999731779098511f);
            u_xlat128 = ((u_xlat85.x * 0.47000002861022949219f) + 0.64999997615814208984f);
            u_xlat40.x = (-(u_xlat40.x) + 1.0f);
            u_xlat128 = ((u_xlat40.x * u_xlat128) + u_xlat40.x);
            u_xlat40.x = ((u_xlat142 * u_xlat128) + -(u_xlat40.x));
            u_xlat128 = (-(u_xlat40.x) + u_xlat42.x);
            u_xlat40.x = (-(u_xlat40.x) + 1.0f);
            u_xlat40.x = (u_xlat128 / u_xlat40.x);
            u_xlat40.x = clamp(u_xlat40.x, 0.0f, 1.0f);
            u_xlat127.x = u_xlat127.x;
            u_xlat127.x = clamp(u_xlat127.x, 0.0f, 1.0f);
            u_xlat127.x = ((u_xlat127.x * u_xlat22.x) + x_44.x_ShapeB.y);
            u_xlat128 = ((u_xlat85.y * u_xlat108.y) + 1.0f);
            u_xlat128 = (u_xlat66 * u_xlat128);
            u_xlat41.x = max(u_xlat41.x, 0.10000000149011611938f);
            u_xlat128 = (u_xlat128 / u_xlat41.x);
            u_xlat41.x = (-(u_xlat40.x) + 1.0f);
            u_xlat128 = (u_xlat128 * u_xlat41.x);
            u_xlat41.x = (u_xlat172 + -0.20000000298023223877f);
            u_xlat41.x = (u_xlat41.x * 2.22222232818603515625f);
            u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
            u_xlat85.x = ((u_xlat41.x * -2.0f) + 3.0f);
            u_xlat41.x = (u_xlat41.x * u_xlat41.x);
            u_xlat41.x = (u_xlat41.x * u_xlat85.x);
            u_xlat128 = (u_xlat128 * u_xlat41.x);
            u_xlat128 = ((u_xlat128 * u_xlat142) + u_xlat172);
            u_xlat128 = (u_xlat128 + -1.0f);
            u_xlat127.x = (u_xlat127.x + -1.0f);
            u_xlat127.x = (u_xlat128 / u_xlat127.x);
            u_xlat127.x = clamp(u_xlat127.x, 0.0f, 1.0f);
            u_xlat128 = (-(u_xlat171) + 1.0f);
            u_xlat41.x = ((u_xlat40.x * u_xlat127.x) + -(u_xlat128));
            u_xlat85.x = (-(u_xlat128) + 1.0f);
            u_xlat41.x = (u_xlat41.x / u_xlat85.x);
            u_xlat41.x = clamp(u_xlat41.x, 0.0f, 1.0f);
            u_xlat41.x = (u_xlat171 * u_xlat41.x);
            u_xlat128 = (-(u_xlat128) + u_xlat40.x);
            u_xlat128 = (u_xlat128 / u_xlat85.x);
            u_xlat128 = clamp(u_xlat128, 0.0f, 1.0f);
            u_xlat128 = (u_xlat171 * u_xlat128);
            u_xlat127.x = log2(u_xlat127.x);
            u_xlat127.x = (u_xlat110 * u_xlat127.x);
            u_xlat127.x = exp2(u_xlat127.x);
            u_xlat127.x = (u_xlat127.x * u_xlat128);
            u_xlat128 = ((u_xlat40.x * 0.77999997138977050781f) + 0.21999999880790710449f);
            u_xlat85.x = ((u_xlat171 * 0.25f) + 0.75f);
            u_xlat129 = (u_xlat83.x + -0.10000000149011611938f);
            u_xlat129 = (u_xlat129 * 1.11111116409301757812f);
            u_xlat129 = max(u_xlat129, 0.0f);
            u_xlat173 = ((u_xlat129 * -2.0f) + 3.0f);
            u_xlat129 = (u_xlat129 * u_xlat129);
            u_xlat129 = (u_xlat129 * u_xlat173);
            u_xlat128 = ((u_xlat128 * u_xlat85.x) + -(u_xlat127.x));
            u_xlat127.x = ((u_xlat129 * u_xlat128) + u_xlat127.x);
            u_xlat128 = (u_xlat171 + -(x_44.x_Breakup.y));
            u_xlat128 = (u_xlat154 * u_xlat128);
            u_xlat128 = clamp(u_xlat128, 0.0f, 1.0f);
            u_xlat85.x = ((u_xlat128 * -2.0f) + 3.0f);
            u_xlat128 = (u_xlat128 * u_xlat128);
            u_xlat129 = (u_xlat128 * u_xlat85.x);
            u_xlat173 = (u_xlat48 + u_xlat84.x);
            u_xlat173 = (u_xlat23.x * u_xlat173);
            u_xlat173 = clamp(u_xlat173, 0.0f, 1.0f);
            u_xlat42.x = ((u_xlat173 * -2.0f) + 3.0f);
            u_xlat173 = (u_xlat173 * u_xlat173);
            u_xlat173 = (u_xlat173 * u_xlat42.x);
            u_xlat83.x = max(u_xlat83.x, u_xlat41.x);
            u_xlat127.x = (-(u_xlat83.x) + u_xlat127.x);
            u_xlat83.x = ((u_xlat142 * u_xlat127.x) + u_xlat83.x);
            u_xlat127.x = (u_xlat129 * u_xlat129);
            u_xlat127.x = ((u_xlat127.x * u_xlat173) + -1.0f);
            u_xlat127.x = ((u_xlat111 * u_xlat127.x) + 1.0f);
            u_xlat83.x = (u_xlat127.x * u_xlat83.x);
            u_xlat42 = vec4f(((u_xlat40.xxx + x_3808)).xyz, u_xlat42.w);
            u_xlat42 = vec4f(((u_xlat42.xyz * x_3814)).xyz, u_xlat42.w);
            u_xlat42 = vec4f(clamp(u_xlat42.xyz, vec3f(0.0f), vec3f(1.0f)).xyz, u_xlat42.w);
            u_xlat43 = ((u_xlat42.xyz * x_3440) + x_3442);
            u_xlat42 = vec4f(((u_xlat42.xyz * u_xlat42.xyz)).xyz, u_xlat42.w);
            u_xlat42 = vec4f(((u_xlat42.xyz * u_xlat43)).xyz, u_xlat42.w);
            u_xlat127.x = ((u_xlat42.x * u_xlat24) + u_xlat155);
            u_xlat40.x = ((u_xlat129 * 0.5f) + 0.5f);
            u_xlat127.x = ((u_xlat127.x * u_xlat40.x) + -1.0f);
            u_xlat127.x = ((u_xlat111 * u_xlat127.x) + 1.0f);
            u_xlat40.x = ((-(u_xlat85.x) * u_xlat128) + 1.0f);
            u_xlat40.x = (u_xlat40.x * u_xlat42.y);
            u_xlat40.x = (u_xlat173 * u_xlat40.x);
            u_xlat84.x = (u_xlat84.x + 4.0f);
            u_xlat84.x = (u_xlat84.x * 0.20000000298023223877f);
            u_xlat84.x = clamp(u_xlat84.x, 0.0f, 1.0f);
            u_xlat128 = ((u_xlat84.x * -2.0f) + 3.0f);
            u_xlat84.x = (u_xlat84.x * u_xlat84.x);
            u_xlat84.x = ((-(u_xlat128) * u_xlat84.x) + 1.0f);
            u_xlat40.x = (u_xlat84.x * u_xlat40.x);
            u_xlat171 = ((-(x_44.x_Breakup.y) * 0.64999997615814208984f) + u_xlat171);
            u_xlat171 = (u_xlat67 * u_xlat171);
            u_xlat171 = clamp(u_xlat171, 0.0f, 1.0f);
            u_xlat84.x = ((u_xlat171 * -2.0f) + 3.0f);
            u_xlat171 = (u_xlat171 * u_xlat171);
            u_xlat171 = (u_xlat171 * u_xlat84.x);
            u_xlat39.x = (u_xlat39.x * u_xlat42.z);
            u_xlat39.x = max(u_xlat39.x, u_xlat171);
            u_xlat39.x = (u_xlat39.x * u_xlat40.x);
            u_xlat39.x = (u_xlat68 * u_xlat39.x);
            u_xlat39.x = ((u_xlat83.x * u_xlat127.x) + u_xlat39.x);
          } else {
            u_xlat39.x = 1.0f;
          }
        } else {
          u_xlat39.x = 0.0f;
        }
        u_xlatb83 = (u_xlati_loop_1 < 2i);
        if (u_xlatb83) {
          x_5484 = u_xlati25.z;
        } else {
          x_5484 = 0i;
        }
        u_xlati83 = x_5484;
        u_xlatb127 = (0.0f < u_xlat39.x);
        u_xlati83 = select(0i, u_xlati83, u_xlatb127);
        u_xlatb127 = (u_xlat39.x < 1.0f);
        u_xlati83 = select(0i, u_xlati83, u_xlatb127);
        u_xlatb127 = (-0.30000001192092895508f < u_xlat172);
        u_xlati83 = select(0i, u_xlati83, u_xlatb127);
        u_xlat127 = (u_xlat82.xz + -(x_44.x_CloudCam.xz));
        u_xlat127.x = dot(u_xlat127, u_xlat127);
        u_xlat127.x = sqrt(u_xlat127.x);
        u_xlatb127 = (u_xlat127.x < x_44.x_MarchB.y);
        u_xlati83 = select(0i, u_xlati83, u_xlatb127);
        if ((u_xlati83 != 0i)) {
          u_xlat41 = vec4f(u_xlat41.xy, (((x_44.x_CloudWind.xy * x_44.x_Motion.yy) + u_xlat82.xz)).xy);
          u_xlat41.x = (u_xlat41.z + x_44.x_CloudBoil.y);
          u_xlat41.y = ((-(x_44.x_CloudBoil.x) * 2.0f) + u_xlat82.y);
          u_xlat82 = (u_xlat41.xyw / x_44.x_Shape.yyy);
          u_xlat82 = textureSampleLevel(x_DetailNoise, sampler_TrilinearRepeat, u_xlat82, u_xlat77).xyz;
          u_xlat82.x = dot(u_xlat82, x_3416);
          u_xlat126 = (u_xlat172 * 4.0f);
          u_xlat126 = clamp(u_xlat126, 0.0f, 1.0f);
          u_xlat170 = ((u_xlat82.x * -2.0f) + 1.0f);
          u_xlat82.x = ((u_xlat126 * u_xlat170) + u_xlat82.x);
          u_xlat126 = ((-(u_xlat82.x) * x_44.x_Shape.z) + u_xlat39.x);
          u_xlat82.x = ((-(u_xlat82.x) * x_44.x_Shape.z) + 1.0f);
          u_xlat82.x = (u_xlat126 / u_xlat82.x);
          u_xlat82.x = clamp(u_xlat82.x, 0.0f, 1.0f);
          u_xlat82.x = (-(u_xlat39.x) + u_xlat82.x);
          u_xlat39.x = ((x_44.x_Structure.z * u_xlat82.x) + u_xlat39.x);
        }
        u_xlat81.x = ((u_xlat39.x * u_xlat125) + u_xlat81.x);
        u_xlat169 = (u_xlat125 + u_xlat169);
        u_xlat125 = (u_xlat125 * x_44.x_LightMarch.z);

        continuing {
          u_xlati_loop_1 = (u_xlati_loop_1 + 1i);
        }
      }
      u_xlat77 = (u_xlat81.x * x_44.x_Shape.w);
      u_xlat38.x = (u_xlat77 * x_44.x_LightMarch.w);
    } else {
      u_xlat77 = (u_xlat166 * u_xlat36.x);
      u_xlat77 = ((u_xlat77 * 0.5f) + u_xlat162);
      u_xlat38.x = select(u_xlat77, u_xlat162, (u_xlati25.y != 0i));
    }
    u_xlat80 = (u_xlat19.yzw + u_xlat76);
    u_xlat80 = (u_xlat80 / x_44.x_PlanetShadow.yzy);
    u_xlat77 = dot(u_xlat80, u_xlat27);
    u_xlat77 = (-(u_xlat77) / u_xlat158);
    u_xlatb37 = (0.0f < u_xlat77);
    u_xlat80 = ((u_xlat27 * vec3f(u_xlat77)) + u_xlat80);
    u_xlat77 = dot(u_xlat80, u_xlat80);
    u_xlat77 = sqrt(u_xlat77);
    u_xlat77 = (-(u_xlat72) + u_xlat77);
    u_xlat77 = (u_xlat116 * u_xlat77);
    u_xlat77 = clamp(u_xlat77, 0.0f, 1.0f);
    u_xlat80.x = ((u_xlat77 * -2.0f) + 3.0f);
    u_xlat77 = (u_xlat77 * u_xlat77);
    u_xlat77 = (u_xlat77 * u_xlat80.x);
    u_xlat77 = ((u_xlat77 * u_xlat160) + u_xlat28);
    u_xlat77 = select(1.0f, u_xlat77, u_xlatb37);
    u_xlat38 = vec4f(u_xlat38.x, ((u_xlat7.wz * -(u_xlat38.xx))).xy, u_xlat38.w);
    u_xlat80 = (u_xlat38.xyz * vec3f(-1.44269502162933349609f, 1.44269502162933349609f, 1.44269502162933349609f));
    u_xlat80 = exp2(u_xlat80);
    u_xlat80.x = dot(u_xlat6.xyz, u_xlat80);
    u_xlat124.x = (u_xlat7.x * -(u_xlat38.x));
    u_xlat124.x = (u_xlat124.x * 1.44269502162933349609f);
    u_xlat124.x = exp2(u_xlat124.x);
    u_xlat124.x = (u_xlat138 * u_xlat124.x);
    u_xlat168 = ((u_xlat77 * 0.35000002384185791016f) + 0.64999997615814208984f);
    u_xlat124.x = (u_xlat168 * u_xlat124.x);
    u_xlat77 = ((u_xlat80.x * u_xlat77) + u_xlat124.x);
    u_xlat80 = (u_xlat10 * vec3f(u_xlat77));
    u_xlat77 = (u_xlat166 * -8.656169891357421875f);
    u_xlat77 = exp2(u_xlat77);
    u_xlat77 = ((u_xlat137 * -(u_xlat77)) + 1.0f);
    u_xlatb37 = (0.40000000596046447754f < u_xlat161);
    if (u_xlatb37) {
      u_xlat76 = (u_xlat76 + vec3f(0.0f, 3.0f, 0.0f));
      u_xlat37.x = (u_xlat121.x + 1.0f);
      u_xlat125 = (-(u_xlat78) + u_xlat76.y);
      u_xlat169 = (u_xlat125 / u_xlat35.x);
      u_xlatb82 = (u_xlat169 < 1.0f);
      if (u_xlatb82) {
        u_xlat78 = (-(u_xlat76.y) + u_xlat78);
        u_xlat78 = (u_xlat78 / u_xlat147);
        u_xlat78 = (u_xlat78 + 0.25f);
        u_xlat78 = clamp(u_xlat78, 0.0f, 1.0f);
        u_xlatb82 = (u_xlat78 >= 1.0f);
        u_xlatb82 = (u_xlatb148 & u_xlatb82);
        if (!(u_xlatb82)) {
          u_xlat39.y = (u_xlat76.y + -(x_44.x_CloudBoil.x));
          let x_5867 = (u_xlat76.xz + x_44.x_CloudWind.xy);
          u_xlat39 = vec4f(x_5867.x, u_xlat39.y, x_5867.y, u_xlat39.w);
          u_xlat76 = (u_xlat39.xzy / x_44.x_Shape.xxx);
          u_xlatb82 = (u_xlat37.x < 2.0f);
          if (u_xlatb82) {
            x_5881 = u_xlati25.x;
          } else {
            x_5881 = 0i;
          }
          u_xlati82 = x_5881;
          if ((u_xlati82 != 0i)) {
            u_xlat82 = (u_xlat76.xzy * x_3293);
            u_xlat82 = textureSampleLevel(x_DetailNoise, sampler_LinearRepeat, u_xlat82, u_xlat121.x).xyz;
            u_xlat82 = (u_xlat82 + x_2887);
            u_xlat82 = (vec3f(u_xlat150) * u_xlat82);
            u_xlat121.x = (u_xlat121.x + -0.5f);
            u_xlat121.x = (u_xlat121.x + u_xlat121.x);
            u_xlat121.x = clamp(u_xlat121.x, 0.0f, 1.0f);
            u_xlat39.x = ((u_xlat121.x * -2.0f) + 3.0f);
            u_xlat121.x = (u_xlat121.x * u_xlat121.x);
            u_xlat121.x = ((-(u_xlat39.x) * u_xlat121.x) + 1.0f);
            u_xlat76 = ((u_xlat82.xzy * u_xlat121.xxx) + u_xlat76);
          }
          u_xlat121.x = (u_xlat39.y + -(x_44.x_Layer.x));
          u_xlat121.x = (u_xlat108.x * u_xlat121.x);
          u_xlat121.x = (u_xlat121.x / x_44.x_Shape.x);
          u_xlat76.z = (u_xlat76.z + u_xlat121.x);
          u_xlat121.x = (u_xlat153 + u_xlat37.x);
          u_xlat39 = textureSampleLevel(x_BaseNoise, sampler_LinearRepeat, u_xlat76.xzy, u_xlat121.x);
          u_xlat76.x = dot(u_xlat39.yzw, x_3416);
          u_xlat82 = ((u_xlat35.zzz * u_xlat34.xxx) + x_3427);
          u_xlat82 = (u_xlat82 * x_3433);
          u_xlat82 = clamp(u_xlat82, vec3f(0.0f), vec3f(1.0f));
          u_xlat83 = ((u_xlat82 * x_3440) + x_3442);
          u_xlat82 = (u_xlat82 * u_xlat82);
          u_xlat82 = (u_xlat82 * u_xlat83);
          u_xlat120 = (u_xlat82.z * 0.11999999731779098511f);
          u_xlat164 = ((u_xlat82.x * 0.47000002861022949219f) + 0.64999997615814208984f);
          u_xlat76.x = (-(u_xlat76.x) + 1.0f);
          u_xlat164 = ((u_xlat76.x * u_xlat164) + u_xlat76.x);
          u_xlat76.x = ((u_xlat142 * u_xlat164) + -(u_xlat76.x));
          u_xlat164 = (-(u_xlat76.x) + u_xlat39.x);
          u_xlat76.x = (-(u_xlat76.x) + 1.0f);
          u_xlat76.x = (u_xlat164 / u_xlat76.x);
          u_xlat76.x = clamp(u_xlat76.x, 0.0f, 1.0f);
          u_xlat122.x = u_xlat122.x;
          u_xlat122.x = clamp(u_xlat122.x, 0.0f, 1.0f);
          u_xlat164 = ((u_xlat122.x * u_xlat22.x) + x_44.x_ShapeB.y);
          u_xlat121.x = ((u_xlat82.y * u_xlat108.y) + 1.0f);
          u_xlat121.x = (u_xlat66 * u_xlat121.x);
          u_xlat34.x = max(u_xlat35.x, 0.10000000149011611938f);
          u_xlat121.x = (u_xlat121.x / u_xlat34.x);
          u_xlat34.x = (-(u_xlat76.x) + 1.0f);
          u_xlat121.x = (u_xlat121.x * u_xlat34.x);
          u_xlat34.x = (u_xlat169 + -0.20000000298023223877f);
          u_xlat34.x = (u_xlat34.x * 2.22222232818603515625f);
          u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
          u_xlat122.x = ((u_xlat34.x * -2.0f) + 3.0f);
          u_xlat34.x = (u_xlat34.x * u_xlat34.x);
          u_xlat34.x = (u_xlat34.x * u_xlat122.x);
          u_xlat121.x = (u_xlat121.x * u_xlat34.x);
          u_xlat121.x = ((u_xlat121.x * u_xlat142) + u_xlat169);
          u_xlat121.x = (u_xlat121.x + -1.0f);
          u_xlat164 = (u_xlat164 + -1.0f);
          u_xlat164 = (u_xlat121.x / u_xlat164);
          u_xlat164 = clamp(u_xlat164, 0.0f, 1.0f);
          u_xlat121.x = (-(u_xlat165) + 1.0f);
          u_xlat34.x = ((u_xlat76.x * u_xlat164) + -(u_xlat121.x));
          u_xlat122.x = (-(u_xlat121.x) + 1.0f);
          u_xlat34.x = (u_xlat34.x / u_xlat122.x);
          u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
          u_xlat34.x = (u_xlat165 * u_xlat34.x);
          u_xlat121.x = (u_xlat76.x + -(u_xlat121.x));
          u_xlat121.x = (u_xlat121.x / u_xlat122.x);
          u_xlat121.x = clamp(u_xlat121.x, 0.0f, 1.0f);
          u_xlat121.x = (u_xlat165 * u_xlat121.x);
          u_xlat164 = log2(u_xlat164);
          u_xlat164 = (u_xlat110 * u_xlat164);
          u_xlat164 = exp2(u_xlat164);
          u_xlat164 = (u_xlat164 * u_xlat121.x);
          u_xlat121.x = ((u_xlat76.x * 0.77999997138977050781f) + 0.21999999880790710449f);
          u_xlat122.x = ((u_xlat165 * 0.25f) + 0.75f);
          u_xlat35.x = (u_xlat78 + -0.10000000149011611938f);
          u_xlat35.x = (u_xlat35.x * 1.11111116409301757812f);
          u_xlat35.x = max(u_xlat35.x, 0.0f);
          u_xlat123 = ((u_xlat35.x * -2.0f) + 3.0f);
          u_xlat35.x = (u_xlat35.x * u_xlat35.x);
          u_xlat35.x = (u_xlat35.x * u_xlat123);
          u_xlat121.x = ((u_xlat121.x * u_xlat122.x) + -(u_xlat164));
          u_xlat164 = ((u_xlat35.x * u_xlat121.x) + u_xlat164);
          u_xlat121.x = (u_xlat165 + -(x_44.x_Breakup.y));
          u_xlat121.x = (u_xlat154 * u_xlat121.x);
          u_xlat121.x = clamp(u_xlat121.x, 0.0f, 1.0f);
          u_xlat122.x = ((u_xlat121.x * -2.0f) + 3.0f);
          u_xlat121.x = (u_xlat121.x * u_xlat121.x);
          u_xlat35.x = (u_xlat121.x * u_xlat122.x);
          u_xlat123 = (u_xlat48 + u_xlat125);
          u_xlat123 = (u_xlat23.x * u_xlat123);
          u_xlat123 = clamp(u_xlat123, 0.0f, 1.0f);
          u_xlat37.x = ((u_xlat123 * -2.0f) + 3.0f);
          u_xlat123 = (u_xlat123 * u_xlat123);
          u_xlat123 = (u_xlat123 * u_xlat37.x);
          u_xlat34.x = max(u_xlat78, u_xlat34.x);
          u_xlat164 = (u_xlat164 + -(u_xlat34.x));
          u_xlat164 = ((u_xlat142 * u_xlat164) + u_xlat34.x);
          u_xlat34.x = (u_xlat35.x * u_xlat35.x);
          u_xlat34.x = ((u_xlat34.x * u_xlat123) + -1.0f);
          u_xlat34.x = ((u_xlat111 * u_xlat34.x) + 1.0f);
          u_xlat164 = (u_xlat164 * u_xlat34.x);
          u_xlat82 = (u_xlat76.xxx + x_3808);
          u_xlat82 = (u_xlat82 * x_3814);
          u_xlat82 = clamp(u_xlat82, vec3f(0.0f), vec3f(1.0f));
          u_xlat39 = vec4f((((u_xlat82 * x_3440) + x_3442)).xyz, u_xlat39.w);
          u_xlat82 = (u_xlat82 * u_xlat82);
          u_xlat82 = (u_xlat82 * u_xlat39.xyz);
          u_xlat76.x = ((u_xlat82.x * u_xlat24) + u_xlat155);
          u_xlat34.x = ((u_xlat35.x * 0.5f) + 0.5f);
          u_xlat76.x = ((u_xlat76.x * u_xlat34.x) + -1.0f);
          u_xlat76.x = ((u_xlat111 * u_xlat76.x) + 1.0f);
          u_xlat121.x = ((-(u_xlat122.x) * u_xlat121.x) + 1.0f);
          u_xlat121.x = (u_xlat121.x * u_xlat82.y);
          u_xlat121.x = (u_xlat123 * u_xlat121.x);
          u_xlat34.x = (u_xlat125 + 4.0f);
          u_xlat34.x = (u_xlat34.x * 0.20000000298023223877f);
          u_xlat34.x = clamp(u_xlat34.x, 0.0f, 1.0f);
          u_xlat78 = ((u_xlat34.x * -2.0f) + 3.0f);
          u_xlat34.x = (u_xlat34.x * u_xlat34.x);
          u_xlat34.x = ((-(u_xlat78) * u_xlat34.x) + 1.0f);
          u_xlat121.x = (u_xlat121.x * u_xlat34.x);
          u_xlat165 = ((-(x_44.x_Breakup.y) * 0.64999997615814208984f) + u_xlat165);
          u_xlat165 = (u_xlat67 * u_xlat165);
          u_xlat165 = clamp(u_xlat165, 0.0f, 1.0f);
          u_xlat34.x = ((u_xlat165 * -2.0f) + 3.0f);
          u_xlat165 = (u_xlat165 * u_xlat165);
          u_xlat165 = (u_xlat165 * u_xlat34.x);
          u_xlat120 = (u_xlat120 * u_xlat82.z);
          u_xlat120 = max(u_xlat120, u_xlat165);
          u_xlat120 = (u_xlat120 * u_xlat121.x);
          u_xlat120 = (u_xlat68 * u_xlat120);
          u_xlat76.x = ((u_xlat164 * u_xlat76.x) + u_xlat120);
        } else {
          u_xlat76.x = 1.0f;
        }
      } else {
        u_xlat76.x = 0.0f;
      }
      u_xlat76.x = (u_xlat76.x * x_44.x_Shape.w);
      u_xlat76.x = (u_xlat76.x * x_44.x_LkAmb.z);
      u_xlat76.x = (u_xlat76.x * -4.3280849456787109375f);
      u_xlat119 = exp2(u_xlat76.x);
    } else {
      u_xlat119 = (u_xlat100.y * u_xlat119);
    }
    u_xlat76.x = u_xlat167;
    u_xlat76.x = clamp(u_xlat76.x, 0.0f, 1.0f);
    u_xlat76.x = (u_xlat119 * u_xlat76.x);
    u_xlat76.x = ((u_xlat76.x * u_xlat29.x) + x_44.x_LkAmb.x);
    u_xlat76 = ((u_xlat76.xxx * u_xlat14.xyz) + u_xlat17.xyw);
    u_xlat121.x = (u_xlat167 + 0.30000001192092895508f);
    u_xlat121.x = clamp(u_xlat121.x, 0.0f, 1.0f);
    u_xlat121.x = ((u_xlat121.x * u_xlat29.y) + x_44.x_LkAmb.w);
    u_xlat76 = (u_xlat76 * u_xlat121.xxx);
    u_xlat76 = ((u_xlat80 * vec3f(u_xlat77)) + u_xlat76);
    u_xlat76 = (u_xlat76 * x_44.x_LkSun.zzz);
    u_xlat77 = (-(u_xlat166) * u_xlat36.x);
    u_xlat77 = (u_xlat77 * 1.44269502162933349609f);
    u_xlat77 = exp2(u_xlat77);
    u_xlat77 = (-(u_xlat77) + 1.0f);
    u_xlat121.x = (u_xlat161 * u_xlat77);
    u_xlat76 = ((u_xlat121.xxx * u_xlat76) + u_xlat30);
    u_xlat121.y = ((u_xlat161 * u_xlat77) + u_xlat31.x);
    u_xlat121.x = ((u_xlat121.x * u_xlat117) + u_xlat31.y);
    u_xlat77 = (-(u_xlat77) + 1.0f);
    u_xlat77 = (u_xlat161 * u_xlat77);
    u_xlatb34 = (u_xlat77 < x_44.x_MarchB.w);
    if (u_xlatb34) {
      u_xlat30 = u_xlat76;
      u_xlat161 = u_xlat77;
      u_xlat162 = u_xlat38.x;
      u_xlat31 = u_xlat121.yx;
      break;
    }
    u_xlat117 = ((u_xlat33 * u_xlat79) + u_xlat117);
    u_xlat30 = u_xlat76;
    u_xlat161 = u_xlat77;
    u_xlat162 = u_xlat38.x;
    u_xlat31 = u_xlat121.yx;
    u_xlati32 = (u_xlati32 + 1i);
  }
  u_xlatb0 = (0.00009999999747378752f < u_xlat31.x);
  u_xlat44 = (u_xlat31.y / u_xlat31.x);
  if (u_xlatb0) {
    x_6682 = u_xlat44;
  } else {
    x_6682 = u_xlat91.x;
  }
  u_xlat3.x = x_6682;
  u_xlat4.w = (-(u_xlat161) + 1.0f);
  u_xlat2.w = 0.01999999955296516418f;
  u_xlat0.x = dot(u_xlat2.xzw, u_xlat2.xzw);
  u_xlat0.x = inverseSqrt(u_xlat0.x);
  u_xlat6 = vec4f(((u_xlat0.xxx * u_xlat2.xwz)).xyz, u_xlat6.w);
  u_xlat44 = ((-(u_xlat5.y) * 2.20000004768371582031f) + 1.0f);
  u_xlat44 = clamp(u_xlat44, 0.0f, 1.0f);
  u_xlat1 = vec4f((((u_xlat1.xz * u_xlat88.xx) + x_6727)).xy, u_xlat1.zw);
  u_xlat88.x = dot(u_xlat1.xy, u_xlat1.xy);
  u_xlat88.x = inverseSqrt(u_xlat88.x);
  u_xlat1 = vec4f(((u_xlat88.xx * u_xlat1.xy)).xy, u_xlat1.zw);
  u_xlatb88 = (1.5f < x_44.x_B612HdriParams.x);
  if (u_xlatb88) {
    u_xlat1.z = 0.02600000053644180298f;
    u_xlat88.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat88.x = inverseSqrt(u_xlat88.x);
    let x_6771 = (u_xlat88.xxx * u_xlat1.xzy);
    u_xlat7 = vec4f(x_6771.x, u_xlat7.y, x_6771.yz);
    u_xlat134 = dot(u_xlat7.xzw, x_44.x_B612SunDirection.xyz);
    u_xlat134 = clamp(u_xlat134, 0.0f, 1.0f);
    u_xlat89 = ((-(u_xlat1.z) * u_xlat88.x) + 1.0f);
    u_xlat91.x = sqrt(u_xlat89);
    u_xlat135 = ((u_xlat88.x * -0.00048696179874241352f) + 0.07426100224256515503f);
    u_xlat135 = ((u_xlat135 * u_xlat7.z) + -0.21211439371109008789f);
    u_xlat135 = ((u_xlat135 * u_xlat7.z) + 1.57072877883911132812f);
    u_xlat91.x = ((-(u_xlat135) * u_xlat91.x) + 1.57079637050628662109f);
    u_xlat135 = (u_xlat91.x * 57.295780181884765625f);
    let x_6824 = ((u_xlat1.xy * u_xlat88.xx) + x_6727);
    u_xlat7 = vec4f(x_6824.x, u_xlat7.yz, x_6824.y);
    u_xlat88.x = dot(u_xlat7.xw, u_xlat7.xw);
    u_xlat88.x = inverseSqrt(u_xlat88.x);
    let x_6841 = (u_xlat88.xx * u_xlat7.xw);
    u_xlat7 = vec4f(x_6841.x, u_xlat7.yz, x_6841.y);
    u_xlat88.x = dot(u_xlat7.xw, u_xlat52.yz);
    u_xlat88.x = ((u_xlat88.x * 0.5f) + 0.5f);
    u_xlat88.x = clamp(u_xlat88.x, 0.0f, 1.0f);
    u_xlat137 = log2(u_xlat88.x);
    u_xlat138 = (u_xlat137 * u_xlat12.x);
    u_xlat138 = exp2(u_xlat138);
    u_xlat14 = vec4f((((vec3f(u_xlat138) * u_xlat13) + x_44.x_B612SkyHorizon.xyz)).xyz, u_xlat14.w);
    u_xlat7.x = (-(u_xlat7.z) / u_xlat141);
    u_xlat7.x = (u_xlat7.x * 1.44269502162933349609f);
    u_xlat7.x = exp2(u_xlat7.x);
    u_xlat7.x = (-(u_xlat7.x) + 1.0f);
    u_xlat138 = (u_xlat138 * x_44.x_B612SkyParams.z);
    u_xlat89 = (u_xlat89 * u_xlat138);
    let x_6911 = ((vec3f(u_xlat89) * u_xlat21) + x_44.x_B612SkyZenith.xyz);
    u_xlat17 = vec4f(x_6911.xy, u_xlat17.z, x_6911.z);
    let x_6919 = (-(u_xlat14.xyz) + u_xlat17.xyw);
    u_xlat17 = vec4f(x_6919.xy, u_xlat17.z, x_6919.z);
    u_xlat14 = vec4f((((u_xlat7.xxx * u_xlat17.xyw) + u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlat89 = (u_xlat15.x * -(u_xlat7.z));
    u_xlat89 = (u_xlat89 * 1.44269502162933349609f);
    u_xlat89 = exp2(u_xlat89);
    u_xlat89 = (u_xlat89 * x_44.x_B612HazeColor.w);
    u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
    let x_6954 = (-(u_xlat14.xyz) + x_44.x_B612HazeColor.xyz);
    u_xlat7 = vec4f(x_6954.x, u_xlat7.y, x_6954.yz);
    let x_6964 = ((vec3f(u_xlat89) * u_xlat7.xzw) + u_xlat14.xyz);
    u_xlat7 = vec4f(x_6964.x, u_xlat7.y, x_6964.yz);
    u_xlat89 = (u_xlat137 * u_xlat16.x);
    u_xlat89 = exp2(u_xlat89);
    u_xlat14 = vec4f(((vec3f(u_xlat89) * x_44.x_B612SkyGlow.xyz)).xyz, u_xlat14.w);
    u_xlat89 = (-(u_xlat135) / u_xlat52.x);
    u_xlat89 = (u_xlat89 * 1.44269502162933349609f);
    u_xlat89 = exp2(u_xlat89);
    let x_6997 = ((u_xlat14.xyz * vec3f(u_xlat89)) + u_xlat7.xzw);
    u_xlat7 = vec4f(x_6997.x, u_xlat7.y, x_6997.yz);
    u_xlat89 = ((u_xlat91.x * 57.295780181884765625f) + -(x_44.x_B612SkyAnti.w));
    u_xlat89 = (u_xlat89 / u_xlat16.y);
    u_xlat88.x = (-(u_xlat88.x) + 1.0f);
    u_xlat88.x = log2(u_xlat88.x);
    u_xlat88.x = (u_xlat88.x * u_xlat16.z);
    u_xlat88.x = exp2(u_xlat88.x);
    u_xlat14 = vec4f(((u_xlat88.xxx * x_44.x_B612SkyAnti.xyz)).xyz, u_xlat14.w);
    u_xlat88.x = (u_xlat89 * -(u_xlat89));
    u_xlat88.x = (u_xlat88.x * 1.44269502162933349609f);
    u_xlat88.x = exp2(u_xlat88.x);
    let x_7058 = ((u_xlat14.xyz * u_xlat88.xxx) + u_xlat7.xzw);
    u_xlat7 = vec4f(x_7058.x, u_xlat7.y, x_7058.yz);
    u_xlat88.x = max(x_44.x_B612SunGlow.w, 1.0f);
    u_xlat89 = log2(u_xlat134);
    u_xlat88.x = (u_xlat88.x * u_xlat89);
    u_xlat88.x = exp2(u_xlat88.x);
    let x_7085 = ((x_44.x_B612SunGlow.xyz * u_xlat88.xxx) + u_xlat7.xzw);
    u_xlat7 = vec4f(x_7085.x, u_xlat7.y, x_7085.yz);
    u_xlat88.x = x_44.x_B612TimeParams.x;
    u_xlat88.x = clamp(u_xlat88.x, 0.0f, 1.0f);
    u_xlat89 = x_44.x_B612SkyCloud.z;
    u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
    u_xlat134 = min(abs(u_xlat1.y), abs(u_xlat1.x));
    u_xlat91.x = max(abs(u_xlat1.y), abs(u_xlat1.x));
    u_xlat91.x = (1.0f / u_xlat91.x);
    u_xlat134 = (u_xlat134 * u_xlat91.x);
    u_xlat91.x = (u_xlat134 * u_xlat134);
    u_xlat135 = ((u_xlat91.x * 0.02083509974181652069f) + -0.08513300120830535889f);
    u_xlat135 = ((u_xlat91.x * u_xlat135) + 0.18014100193977355957f);
    u_xlat135 = ((u_xlat91.x * u_xlat135) + -0.33029949665069580078f);
    u_xlat91.x = ((u_xlat91.x * u_xlat135) + 0.99986600875854492188f);
    u_xlat135 = (u_xlat134 * u_xlat91.x);
    u_xlatb137 = (abs(u_xlat1.y) < abs(u_xlat1.x));
    u_xlat135 = ((u_xlat135 * -2.0f) + 1.57079637050628662109f);
    u_xlat135 = select(0.0f, u_xlat135, u_xlatb137);
    u_xlat134 = ((u_xlat134 * u_xlat91.x) + u_xlat135);
    u_xlatb91 = (u_xlat1.y < -(u_xlat1.y));
    u_xlat91.x = select(0.0f, -3.14159274101257324219f, u_xlatb91);
    u_xlat134 = (u_xlat134 + u_xlat91.x);
    u_xlat91.x = min(u_xlat1.y, u_xlat1.x);
    u_xlat135 = max(u_xlat1.y, u_xlat1.x);
    u_xlatb91 = (u_xlat91.x < -(u_xlat91.x));
    u_xlatb135 = (u_xlat135 >= -(u_xlat135));
    u_xlatb91 = (u_xlatb135 & u_xlatb91);
    if (u_xlatb91) {
      x_7216 = -(u_xlat134);
    } else {
      x_7216 = u_xlat134;
    }
    u_xlat134 = x_7216;
    u_xlat91 = ((vec2f(u_xlat134) * vec2f(57.295780181884765625f)) + -(x_44.x_B612SkyCloud.xy));
    u_xlat14 = vec4f((((u_xlat91 * vec2f(0.00277777784503996372f)) + x_53)).xy, u_xlat14.zw);
    u_xlat14.z = 0.5f;
    u_xlat19 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat14.xz, 0.0f);
    u_xlat14 = textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat14.yz, 0.0f);
    let x_7261 = (u_xlat19.xyz * x_44.x_B612HdriDay0.xyz);
    u_xlat17 = vec4f(x_7261.xy, u_xlat17.z, x_7261.z);
    u_xlat134 = dot(u_xlat17.xyw, x_1139);
    let x_7276 = ((u_xlat19.xyz * x_44.x_B612HdriDay0.xyz) + -(vec3f(u_xlat134)));
    u_xlat17 = vec4f(x_7276.xy, u_xlat17.z, x_7276.z);
    let x_7287 = ((x_44.x_B612HdriDay0.www * u_xlat17.xyw) + vec3f(u_xlat134));
    u_xlat17 = vec4f(x_7287.xy, u_xlat17.z, x_7287.z);
    let x_7293 = max(u_xlat17.xyw, vec3f());
    u_xlat17 = vec4f(x_7293.xy, u_xlat17.z, x_7293.z);
    u_xlat134 = max(x_44.x_B612HdriDay1.w, 0.10000000149011611938f);
    u_xlat134 = (1.5f / u_xlat134);
    u_xlat134 = (-(u_xlat134) + 1.0f);
    u_xlat134 = max(u_xlat134, 0.0f);
    u_xlat134 = (u_xlat134 * u_xlat134);
    let x_7314 = (x_44.x_B612HdriDay1.xyz + x_7313);
    u_xlat18 = vec4f(x_7314.xy, u_xlat18.z, x_7314.z);
    let x_7323 = ((vec3f(u_xlat134) * u_xlat18.xyw) + x_7322);
    u_xlat18 = vec4f(x_7323.xy, u_xlat18.z, x_7323.z);
    let x_7330 = (u_xlat17.xyw * u_xlat18.xyw);
    u_xlat17 = vec4f(x_7330.xy, u_xlat17.z, x_7330.z);
    u_xlat91 = (-(x_44.x_B612HdriDay2.ww) + x_7338);
    u_xlat134 = max(u_xlat91.y, 1.0f);
    u_xlat134 = (u_xlat91.x / u_xlat134);
    u_xlat134 = clamp(u_xlat134, 0.0f, 1.0f);
    let x_7352 = (x_44.x_B612HdriDay2.xyz + x_7313);
    u_xlat18 = vec4f(x_7352.xy, u_xlat18.z, x_7352.z);
    let x_7360 = ((vec3f(u_xlat134) * u_xlat18.xyw) + x_7322);
    u_xlat18 = vec4f(x_7360.xy, u_xlat18.z, x_7360.z);
    let x_7367 = (u_xlat17.xyw * u_xlat18.xyw);
    u_xlat17 = vec4f(x_7367.xy, u_xlat17.z, x_7367.z);
    let x_7375 = max(x_44.x_B612SkyCloudWarm.xyz, vec3f(0.00100000004749745131f));
    u_xlat18 = vec4f(x_7375.xy, u_xlat18.z, x_7375.z);
    let x_7380 = log2(u_xlat18.xyw);
    u_xlat18 = vec4f(x_7380.xy, u_xlat18.z, x_7380.z);
    let x_7387 = (u_xlat88.xxx * u_xlat18.xyw);
    u_xlat18 = vec4f(x_7387.xy, u_xlat18.z, x_7387.z);
    let x_7392 = exp2(u_xlat18.xyw);
    u_xlat18 = vec4f(x_7392.xy, u_xlat18.z, x_7392.z);
    let x_7399 = (u_xlat17.xyw * u_xlat18.xyw);
    u_xlat17 = vec4f(x_7399.xy, u_xlat17.z, x_7399.z);
    u_xlat134 = (x_44.x_B612SkyCloudWarm.w + -1.0f);
    u_xlat88.x = ((u_xlat88.x * u_xlat134) + 1.0f);
    let x_7415 = (u_xlat88.xxx * u_xlat17.xyw);
    u_xlat17 = vec4f(x_7415.xy, u_xlat17.z, x_7415.z);
    let x_7424 = (u_xlat14.xyz * x_44.x_B612HdriDusk0.xyz);
    u_xlat18 = vec4f(x_7424.xy, u_xlat18.z, x_7424.z);
    u_xlat88.x = dot(u_xlat18.xyw, x_1139);
    u_xlat14 = vec4f((((u_xlat14.xyz * x_44.x_B612HdriDusk0.xyz) + -(u_xlat88.xxx))).xyz, u_xlat14.w);
    u_xlat14 = vec4f((((x_44.x_B612HdriDusk0.www * u_xlat14.xyz) + u_xlat88.xxx)).xyz, u_xlat14.w);
    u_xlat14 = vec4f(max(u_xlat14.xyz, vec3f()).xyz, u_xlat14.w);
    u_xlat88.x = max(x_44.x_B612HdriDusk1.w, 0.10000000149011611938f);
    u_xlat88.x = (1.5f / u_xlat88.x);
    u_xlat88.x = (-(u_xlat88.x) + 1.0f);
    u_xlat88.x = max(u_xlat88.x, 0.0f);
    u_xlat88.x = (u_xlat88.x * u_xlat88.x);
    let x_7486 = (x_44.x_B612HdriDusk1.xyz + x_7313);
    u_xlat18 = vec4f(x_7486.xy, u_xlat18.z, x_7486.z);
    let x_7494 = ((u_xlat88.xxx * u_xlat18.xyw) + x_7322);
    u_xlat18 = vec4f(x_7494.xy, u_xlat18.z, x_7494.z);
    u_xlat14 = vec4f(((u_xlat14.xyz * u_xlat18.xyw)).xyz, u_xlat14.w);
    u_xlat91 = (-(x_44.x_B612HdriDusk2.ww) + x_7338);
    u_xlat88.x = max(u_xlat91.y, 1.0f);
    u_xlat88.x = (u_xlat91.x / u_xlat88.x);
    u_xlat88.x = clamp(u_xlat88.x, 0.0f, 1.0f);
    let x_7527 = (x_44.x_B612HdriDusk2.xyz + x_7313);
    u_xlat18 = vec4f(x_7527.xy, u_xlat18.z, x_7527.z);
    let x_7535 = ((u_xlat88.xxx * u_xlat18.xyw) + x_7322);
    u_xlat18 = vec4f(x_7535.xy, u_xlat18.z, x_7535.z);
    u_xlat14 = vec4f(((u_xlat14.xyz * u_xlat18.xyw)).xyz, u_xlat14.w);
    u_xlat88.x = (-(x_44.x_B612SkyCloud2.x) + x_44.x_B612SkyCloud2.y);
    u_xlat134 = (-(x_44.x_B612SkyCloud2.x) + 1.5f);
    u_xlat88.x = (1.0f / u_xlat88.x);
    u_xlat88.x = (u_xlat88.x * u_xlat134);
    u_xlat88.x = clamp(u_xlat88.x, 0.0f, 1.0f);
    u_xlat134 = ((u_xlat88.x * -2.0f) + 3.0f);
    u_xlat88.x = (u_xlat88.x * u_xlat88.x);
    u_xlat88.x = (u_xlat88.x * u_xlat134);
    let x_7588 = x_44.x_B612SkyCloudCut.xyz;
    u_xlat18 = vec4f(x_7588.xy, u_xlat18.z, x_7588.z);
    let x_7595 = clamp(u_xlat18.xyw, vec3f(0.0f), vec3f(1.0f));
    u_xlat18 = vec4f(x_7595.xy, u_xlat18.z, x_7595.z);
    u_xlat91 = (-(u_xlat18.xy) + x_694);
    u_xlat134 = max(x_44.x_B612SkyCloudCut.w, 0.10000000149011611938f);
    u_xlat134 = (1.0f / u_xlat134);
    u_xlat134 = (u_xlat134 * 1.5f);
    u_xlat134 = min(u_xlat134, 1.0f);
    u_xlat137 = ((u_xlat134 * -2.0f) + 3.0f);
    u_xlat134 = (u_xlat134 * u_xlat134);
    u_xlat134 = ((-(u_xlat137) * u_xlat134) + 1.0f);
    u_xlat134 = ((-(u_xlat18.w) * u_xlat134) + 1.0f);
    u_xlat134 = (u_xlat134 * u_xlat91.y);
    u_xlat135 = (u_xlat91.x * u_xlat19.w);
    u_xlat137 = ((u_xlat14.w * u_xlat134) + -(u_xlat135));
    u_xlat135 = ((u_xlat89 * u_xlat137) + u_xlat135);
    u_xlat135 = (u_xlat88.x * u_xlat135);
    let x_7657 = (u_xlat91.xxx * u_xlat17.xyw);
    u_xlat17 = vec4f(x_7657.xy, u_xlat17.z, x_7657.z);
    u_xlat14 = vec4f((((u_xlat14.xyz * vec3f(u_xlat134)) + -(u_xlat17.xyw))).xyz, u_xlat14.w);
    u_xlat14 = vec4f((((vec3f(u_xlat89) * u_xlat14.xyz) + u_xlat17.xyw)).xyz, u_xlat14.w);
    let x_7685 = (u_xlat88.xxx * u_xlat14.xyz);
    u_xlat17 = vec4f(x_7685.xy, u_xlat17.z, x_7685.z);
    u_xlat89 = x_44.x_B612SkyNight.w;
    u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
    u_xlat134 = dot(u_xlat17.xyw, x_1139);
    u_xlat14 = vec4f((((-(u_xlat14.xyz) * u_xlat88.xxx) + vec3f(u_xlat134))).xyz, u_xlat14.w);
    u_xlat14 = vec4f((((vec3f(u_xlat89) * u_xlat14.xyz) + u_xlat17.xyw)).xyz, u_xlat14.w);
    u_xlat88.x = ((u_xlat134 * 1.5f) + 1.0f);
    u_xlat88.x = (1.0f / u_xlat88.x);
    u_xlat88.x = (u_xlat88.x + -1.0f);
    u_xlat88.x = ((u_xlat89 * u_xlat88.x) + 1.0f);
    u_xlat14 = vec4f(((u_xlat88.xxx * u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlat19 = (-(x_44.x_B612SkyCloudNight.wxyz) + vec4f(1.0f));
    let x_7753 = (u_xlat19.xxx * u_xlat19.yzw);
    u_xlat17 = vec4f(x_7753.xy, u_xlat17.z, x_7753.z);
    u_xlat14 = vec4f(((u_xlat14.xyz * u_xlat17.xyw)).xyz, u_xlat14.w);
    u_xlat88.x = (u_xlat135 * u_xlat19.x);
    u_xlat89 = x_44.x_B612SkyCloud2.z;
    u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
    let x_7780 = ((u_xlat7.xzw * u_xlat88.xxx) + -(u_xlat14.xyz));
    u_xlat17 = vec4f(x_7780.xy, u_xlat17.z, x_7780.z);
    u_xlat14 = vec4f((((vec3f(u_xlat89) * u_xlat17.xyw) + u_xlat14.xyz)).xyz, u_xlat14.w);
    u_xlat88.x = ((-(u_xlat135) * u_xlat19.x) + 1.0f);
    let x_7807 = ((u_xlat7.xzw * u_xlat88.xxx) + u_xlat14.xyz);
    u_xlat7 = vec4f(x_7807.x, u_xlat7.y, x_7807.yz);
    let x_7814 = (u_xlat12.yyy * u_xlat7.xzw);
    u_xlat7 = vec4f(x_7814.x, u_xlat7.y, x_7814.yz);
  } else {
    u_xlatb88 = (0.5f < x_44.x_B612HdriParams.x);
    if (u_xlatb88) {
      u_xlat88.x = x_44.x_B612TimeParams.x;
      u_xlat88.x = clamp(u_xlat88.x, 0.0f, 1.0f);
      u_xlat91 = max(x_44.x_B612HdriParams.zw, vec2f(10.0f, 0.0f));
      u_xlat89 = (u_xlat91.x * x_44.x_B612CloudParams.x);
      u_xlat89 = (u_xlat89 * 0.15915493667125701904f);
      u_xlat134 = (x_44.x_Time.y * 6.28318548202514648438f);
      u_xlat134 = (u_xlat134 / u_xlat91.x);
      u_xlat134 = sin(u_xlat134);
      u_xlat91.x = ((u_xlat89 * u_xlat134) + x_44.x_B612HdriDay3.x);
      u_xlat91.x = ((-(u_xlat88.x) * x_44.x_B612HdriParams.y) + u_xlat91.x);
      u_xlat89 = ((u_xlat89 * u_xlat134) + x_44.x_B612HdriDusk3.x);
      u_xlat134 = (-(u_xlat88.x) + 1.0f);
      u_xlat89 = ((u_xlat134 * x_44.x_B612HdriParams.y) + u_xlat89);
      u_xlat134 = min(abs(u_xlat1.y), abs(u_xlat1.x));
      u_xlat137 = max(abs(u_xlat1.y), abs(u_xlat1.x));
      u_xlat137 = (1.0f / u_xlat137);
      u_xlat134 = (u_xlat134 * u_xlat137);
      u_xlat137 = (u_xlat134 * u_xlat134);
      u_xlat138 = ((u_xlat137 * 0.02083509974181652069f) + -0.08513300120830535889f);
      u_xlat138 = ((u_xlat137 * u_xlat138) + 0.18014100193977355957f);
      u_xlat138 = ((u_xlat137 * u_xlat138) + -0.33029949665069580078f);
      u_xlat137 = ((u_xlat137 * u_xlat138) + 0.99986600875854492188f);
      u_xlat138 = (u_xlat134 * u_xlat137);
      u_xlatb143 = (abs(u_xlat1.y) < abs(u_xlat1.x));
      u_xlat138 = ((u_xlat138 * -2.0f) + 1.57079637050628662109f);
      u_xlat138 = select(0.0f, u_xlat138, u_xlatb143);
      u_xlat134 = ((u_xlat134 * u_xlat137) + u_xlat138);
      u_xlatb137 = (u_xlat1.y < -(u_xlat1.y));
      u_xlat137 = select(0.0f, -3.14159274101257324219f, u_xlatb137);
      u_xlat134 = (u_xlat134 + u_xlat137);
      u_xlat137 = min(u_xlat1.y, u_xlat1.x);
      u_xlat138 = max(u_xlat1.y, u_xlat1.x);
      u_xlatb137 = (u_xlat137 < -(u_xlat137));
      u_xlatb138 = (u_xlat138 >= -(u_xlat138));
      u_xlatb137 = (u_xlatb137 & u_xlatb138);
      if (u_xlatb137) {
        x_7984 = -(u_xlat134);
      } else {
        x_7984 = u_xlat134;
      }
      u_xlat134 = x_7984;
      u_xlat91.x = ((u_xlat134 * 57.295780181884765625f) + -(u_xlat91.x));
      u_xlat14.x = ((u_xlat91.x * 0.00277777784503996372f) + 0.5f);
      u_xlat14.y = 0.5f;
      u_xlat102.y = 0.5f;
      let x_8013 = textureSampleLevel(x_B612HdriRingDay, sampler_LinearRepeat, u_xlat14.xy, 0.0f).xyz;
      u_xlat17 = vec4f(x_8013.xy, u_xlat17.z, x_8013.z);
      u_xlat89 = ((u_xlat134 * 57.295780181884765625f) + -(u_xlat89));
      u_xlat102.x = ((u_xlat89 * 0.00277777784503996372f) + 0.5f);
      u_xlat14 = vec4f(textureSampleLevel(x_B612HdriRingDusk, sampler_LinearRepeat, u_xlat102, 0.0f).xyz.xyz, u_xlat14.w);
      let x_8038 = (u_xlat17.xyw * x_44.x_B612HdriDay0.xyz);
      u_xlat17 = vec4f(x_8038.xy, u_xlat17.z, x_8038.z);
      u_xlatb89 = (0.0f < x_44.x_B612HdriDay3.z);
      u_xlat134 = max(u_xlat17.y, u_xlat17.x);
      u_xlat134 = max(u_xlat17.w, u_xlat134);
      u_xlat91.x = (u_xlat134 + -(x_44.x_B612HdriDay3.y));
      u_xlat91.x = max(u_xlat91.x, 0.0f);
      u_xlat137 = (u_xlat91.x / x_44.x_B612HdriDay3.z);
      u_xlat137 = (u_xlat137 + 1.0f);
      u_xlat91.x = (u_xlat91.x / u_xlat137);
      u_xlat91.x = (u_xlat91.x + x_44.x_B612HdriDay3.y);
      u_xlat134 = max(u_xlat134, x_44.x_B612HdriDay3.y);
      u_xlat134 = (u_xlat91.x / u_xlat134);
      let x_8094 = (vec3f(u_xlat134) * u_xlat17.xyw);
      u_xlat18 = vec4f(x_8094.xy, u_xlat18.z, x_8094.z);
      if (u_xlatb89) {
        x_8098 = u_xlat18.xyw;
      } else {
        x_8098 = u_xlat17.xyw;
      }
      u_xlat17 = vec4f(x_8098.xy, u_xlat17.z, x_8098.z);
      u_xlat89 = dot(u_xlat17.xyw, x_1139);
      let x_8117 = (-(vec3f(u_xlat89)) + u_xlat17.xyw);
      u_xlat17 = vec4f(x_8117.xy, u_xlat17.z, x_8117.z);
      let x_8128 = ((x_44.x_B612HdriDay0.www * u_xlat17.xyw) + vec3f(u_xlat89));
      u_xlat17 = vec4f(x_8128.xy, u_xlat17.z, x_8128.z);
      let x_8133 = max(u_xlat17.xyw, vec3f());
      u_xlat17 = vec4f(x_8133.xy, u_xlat17.z, x_8133.z);
      u_xlat89 = max(x_44.x_B612HdriDay1.w, 0.10000000149011611938f);
      u_xlat89 = (u_xlat91.y / u_xlat89);
      u_xlat89 = (-(u_xlat89) + 1.0f);
      u_xlat89 = max(u_xlat89, 0.0f);
      u_xlat89 = (u_xlat89 * u_xlat89);
      let x_8154 = (x_44.x_B612HdriDay1.xyz + x_7313);
      u_xlat18 = vec4f(x_8154.xy, u_xlat18.z, x_8154.z);
      let x_8162 = ((vec3f(u_xlat89) * u_xlat18.xyw) + x_7322);
      u_xlat18 = vec4f(x_8162.xy, u_xlat18.z, x_8162.z);
      let x_8169 = (u_xlat17.xyw * u_xlat18.xyw);
      u_xlat17 = vec4f(x_8169.xy, u_xlat17.z, x_8169.z);
      u_xlat89 = (x_44.x_B612HdriParams.w + -(x_44.x_B612HdriDay2.w));
      u_xlat134 = (-(x_44.x_B612HdriDay2.w) + 90.0f);
      u_xlat134 = max(u_xlat134, 1.0f);
      u_xlat89 = (u_xlat89 / u_xlat134);
      u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
      let x_8192 = (x_44.x_B612HdriDay2.xyz + x_7313);
      u_xlat18 = vec4f(x_8192.xy, u_xlat18.z, x_8192.z);
      let x_8200 = ((vec3f(u_xlat89) * u_xlat18.xyw) + x_7322);
      u_xlat18 = vec4f(x_8200.xy, u_xlat18.z, x_8200.z);
      let x_8207 = (u_xlat17.xyw * u_xlat18.xyw);
      u_xlat17 = vec4f(x_8207.xy, u_xlat17.z, x_8207.z);
      u_xlat14 = vec4f(((u_xlat14.xyz * x_44.x_B612HdriDusk0.xyz)).xyz, u_xlat14.w);
      u_xlatb89 = (0.0f < x_44.x_B612HdriDusk3.z);
      u_xlat134 = max(u_xlat14.y, u_xlat14.x);
      u_xlat134 = max(u_xlat14.z, u_xlat134);
      u_xlat91.x = (u_xlat134 + -(x_44.x_B612HdriDusk3.y));
      u_xlat91.x = max(u_xlat91.x, 0.0f);
      u_xlat137 = (u_xlat91.x / x_44.x_B612HdriDusk3.z);
      u_xlat137 = (u_xlat137 + 1.0f);
      u_xlat91.x = (u_xlat91.x / u_xlat137);
      u_xlat91.x = (u_xlat91.x + x_44.x_B612HdriDusk3.y);
      u_xlat134 = max(u_xlat134, x_44.x_B612HdriDusk3.y);
      u_xlat134 = (u_xlat91.x / u_xlat134);
      let x_8270 = (vec3f(u_xlat134) * u_xlat14.xyz);
      u_xlat18 = vec4f(x_8270.xy, u_xlat18.z, x_8270.z);
      if (u_xlatb89) {
        x_8274 = u_xlat18.xyw;
      } else {
        x_8274 = u_xlat14.xyz;
      }
      u_xlat14 = vec4f(x_8274.xyz, u_xlat14.w);
      u_xlat89 = dot(u_xlat14.xyz, x_1139);
      u_xlat14 = vec4f(((-(vec3f(u_xlat89)) + u_xlat14.xyz)).xyz, u_xlat14.w);
      u_xlat14 = vec4f((((x_44.x_B612HdriDusk0.www * u_xlat14.xyz) + vec3f(u_xlat89))).xyz, u_xlat14.w);
      u_xlat14 = vec4f(max(u_xlat14.xyz, vec3f()).xyz, u_xlat14.w);
      u_xlat89 = max(x_44.x_B612HdriDusk1.w, 0.10000000149011611938f);
      u_xlat89 = (u_xlat91.y / u_xlat89);
      u_xlat89 = (-(u_xlat89) + 1.0f);
      u_xlat89 = max(u_xlat89, 0.0f);
      u_xlat89 = (u_xlat89 * u_xlat89);
      let x_8330 = (x_44.x_B612HdriDusk1.xyz + x_7313);
      u_xlat18 = vec4f(x_8330.xy, u_xlat18.z, x_8330.z);
      let x_8338 = ((vec3f(u_xlat89) * u_xlat18.xyw) + x_7322);
      u_xlat18 = vec4f(x_8338.xy, u_xlat18.z, x_8338.z);
      u_xlat14 = vec4f(((u_xlat14.xyz * u_xlat18.xyw)).xyz, u_xlat14.w);
      u_xlat89 = (x_44.x_B612HdriParams.w + -(x_44.x_B612HdriDusk2.w));
      u_xlat134 = (-(x_44.x_B612HdriDusk2.w) + 90.0f);
      u_xlat134 = max(u_xlat134, 1.0f);
      u_xlat89 = (u_xlat89 / u_xlat134);
      u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
      let x_8368 = (x_44.x_B612HdriDusk2.xyz + x_7313);
      u_xlat18 = vec4f(x_8368.xy, u_xlat18.z, x_8368.z);
      let x_8376 = ((vec3f(u_xlat89) * u_xlat18.xyw) + x_7322);
      u_xlat18 = vec4f(x_8376.xy, u_xlat18.z, x_8376.z);
      u_xlat14 = vec4f((((u_xlat14.xyz * u_xlat18.xyw) + -(u_xlat17.xyw))).xyz, u_xlat14.w);
      let x_8397 = ((u_xlat88.xxx * u_xlat14.xyz) + u_xlat17.xyw);
      u_xlat7 = vec4f(x_8397.x, u_xlat7.y, x_8397.yz);
    } else {
      u_xlat1.w = 0.02600000053644180298f;
      u_xlat88.x = dot(u_xlat1.xyw, u_xlat1.xyw);
      u_xlat88.x = inverseSqrt(u_xlat88.x);
      u_xlat89 = (u_xlat88.x * u_xlat1.w);
      u_xlat133 = ((-(u_xlat1.w) * u_xlat88.x) + 1.0f);
      u_xlat134 = sqrt(u_xlat133);
      u_xlat91.x = ((u_xlat88.x * -0.00048696179874241352f) + 0.07426100224256515503f);
      u_xlat91.x = ((u_xlat91.x * u_xlat89) + -0.21211439371109008789f);
      u_xlat91.x = ((u_xlat91.x * u_xlat89) + 1.57072877883911132812f);
      u_xlat134 = ((-(u_xlat91.x) * u_xlat134) + 1.57079637050628662109f);
      u_xlat91.x = (u_xlat134 * 57.295780181884765625f);
      u_xlat100 = ((u_xlat1.xy * u_xlat88.xx) + x_6727);
      u_xlat88.x = dot(u_xlat100, u_xlat100);
      u_xlat88.x = inverseSqrt(u_xlat88.x);
      u_xlat100 = (u_xlat88.xx * u_xlat100);
      u_xlat88.x = dot(u_xlat100, u_xlat52.yz);
      u_xlat88.x = ((u_xlat88.x * 0.5f) + 0.5f);
      u_xlat88.x = clamp(u_xlat88.x, 0.0f, 1.0f);
      u_xlat135 = log2(u_xlat88.x);
      u_xlat137 = (u_xlat135 * u_xlat12.x);
      u_xlat137 = exp2(u_xlat137);
      u_xlat14 = vec4f((((vec3f(u_xlat137) * u_xlat13) + x_44.x_B612SkyHorizon.xyz)).xyz, u_xlat14.w);
      u_xlat138 = (-(u_xlat89) / u_xlat141);
      u_xlat138 = (u_xlat138 * 1.44269502162933349609f);
      u_xlat138 = exp2(u_xlat138);
      u_xlat138 = (-(u_xlat138) + 1.0f);
      u_xlat137 = (u_xlat137 * x_44.x_B612SkyParams.z);
      u_xlat133 = (u_xlat133 * u_xlat137);
      let x_8528 = ((vec3f(u_xlat133) * u_xlat21) + x_44.x_B612SkyZenith.xyz);
      u_xlat17 = vec4f(x_8528.xy, u_xlat17.z, x_8528.z);
      let x_8536 = (-(u_xlat14.xyz) + u_xlat17.xyw);
      u_xlat17 = vec4f(x_8536.xy, u_xlat17.z, x_8536.z);
      u_xlat14 = vec4f((((vec3f(u_xlat138) * u_xlat17.xyw) + u_xlat14.xyz)).xyz, u_xlat14.w);
      u_xlat89 = (u_xlat15.x * -(u_xlat89));
      u_xlat89 = (u_xlat89 * 1.44269502162933349609f);
      u_xlat89 = exp2(u_xlat89);
      u_xlat89 = (u_xlat89 * x_44.x_B612HazeColor.w);
      u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
      let x_8570 = (-(u_xlat14.xyz) + x_44.x_B612HazeColor.xyz);
      u_xlat17 = vec4f(x_8570.xy, u_xlat17.z, x_8570.z);
      u_xlat14 = vec4f((((vec3f(u_xlat89) * u_xlat17.xyw) + u_xlat14.xyz)).xyz, u_xlat14.w);
      u_xlat89 = (u_xlat135 * u_xlat16.x);
      u_xlat89 = exp2(u_xlat89);
      let x_8594 = (vec3f(u_xlat89) * x_44.x_B612SkyGlow.xyz);
      u_xlat17 = vec4f(x_8594.xy, u_xlat17.z, x_8594.z);
      u_xlat89 = (-(u_xlat91.x) / u_xlat52.x);
      u_xlat89 = (u_xlat89 * 1.44269502162933349609f);
      u_xlat89 = exp2(u_xlat89);
      u_xlat14 = vec4f((((u_xlat17.xyw * vec3f(u_xlat89)) + u_xlat14.xyz)).xyz, u_xlat14.w);
      u_xlat89 = ((u_xlat134 * 57.295780181884765625f) + -(x_44.x_B612SkyAnti.w));
      u_xlat89 = (u_xlat89 / u_xlat16.y);
      u_xlat88.x = (-(u_xlat88.x) + 1.0f);
      u_xlat88.x = log2(u_xlat88.x);
      u_xlat88.x = (u_xlat88.x * u_xlat16.z);
      u_xlat88.x = exp2(u_xlat88.x);
      let x_8651 = (u_xlat88.xxx * x_44.x_B612SkyAnti.xyz);
      u_xlat17 = vec4f(x_8651.xy, u_xlat17.z, x_8651.z);
      u_xlat88.x = (u_xlat89 * -(u_xlat89));
      u_xlat88.x = (u_xlat88.x * 1.44269502162933349609f);
      u_xlat88.x = exp2(u_xlat88.x);
      u_xlat14 = vec4f((((u_xlat17.xyw * u_xlat88.xxx) + u_xlat14.xyz)).xyz, u_xlat14.w);
      let x_8681 = (u_xlat12.yyy * u_xlat14.xyz);
      u_xlat7 = vec4f(x_8681.x, u_xlat7.y, x_8681.yz);
    }
  }
  let x_8689 = ((u_xlat2.xz * u_xlat0.xx) + x_6727);
  u_xlat0 = vec3f(x_8689.x, u_xlat0.y, x_8689.y);
  u_xlat89 = dot(u_xlat0.xz, u_xlat0.xz);
  u_xlat89 = inverseSqrt(u_xlat89);
  let x_8703 = (u_xlat0.xz * vec2f(u_xlat89));
  u_xlat0 = vec3f(x_8703.x, u_xlat0.y, x_8703.y);
  u_xlat0.x = dot(u_xlat0.xz, u_xlat52.yz);
  u_xlat0.x = ((u_xlat0.x * 0.5f) + 0.5f);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat88.x = log2(u_xlat0.x);
  u_xlat89 = (u_xlat88.x * u_xlat12.x);
  u_xlat89 = exp2(u_xlat89);
  let x_8739 = ((vec3f(u_xlat89) * u_xlat13) + x_44.x_B612SkyHorizon.xyz);
  u_xlat2 = vec4f(x_8739.x, u_xlat2.y, x_8739.yz);
  u_xlat89 = x_44.x_B612HazeColor.w;
  u_xlat89 = clamp(u_xlat89, 0.0f, 1.0f);
  u_xlat14 = vec4f(((-(u_xlat2.xzw) + x_44.x_B612HazeColor.xyz)).xyz, u_xlat14.w);
  let x_8762 = ((vec3f(u_xlat89) * u_xlat14.xyz) + u_xlat2.xzw);
  u_xlat2 = vec4f(x_8762.x, u_xlat2.y, x_8762.yz);
  u_xlat88.x = (u_xlat88.x * u_xlat16.x);
  u_xlat88.x = exp2(u_xlat88.x);
  u_xlat14 = vec4f(((u_xlat88.xxx * x_44.x_B612SkyGlow.xyz)).xyz, u_xlat14.w);
  let x_8790 = ((u_xlat14.xyz * u_xlat18.zzz) + u_xlat2.xzw);
  u_xlat2 = vec4f(x_8790.x, u_xlat2.y, x_8790.yz);
  u_xlat0.x = (-(u_xlat0.x) + 1.0f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat16.z);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat14 = vec4f(((u_xlat0.xxx * x_44.x_B612SkyAnti.xyz)).xyz, u_xlat14.w);
  let x_8827 = ((u_xlat14.xyz * u_xlat17.zzz) + u_xlat2.xzw);
  u_xlat2 = vec4f(x_8827.x, u_xlat2.y, x_8827.yz);
  let x_8838 = ((u_xlat2.xzw * u_xlat12.yyy) + -(u_xlat7.xzw));
  u_xlat2 = vec4f(x_8838.x, u_xlat2.y, x_8838.yz);
  let x_8848 = ((vec3f(u_xlat142) * u_xlat2.xzw) + u_xlat7.xzw);
  u_xlat2 = vec4f(x_8848.x, u_xlat2.y, x_8848.yz);
  u_xlat0.x = u_xlat2.y;
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat88.x = dot(u_xlat1.xy, u_xlat52.yz);
  u_xlat88.x = ((u_xlat88.x * 0.5f) + 0.5f);
  u_xlat88.x = clamp(u_xlat88.x, 0.0f, 1.0f);
  u_xlat1.x = log2(u_xlat88.x);
  u_xlat45.x = (u_xlat1.x * u_xlat12.x);
  u_xlat45.x = exp2(u_xlat45.x);
  let x_8894 = ((u_xlat45.xxx * u_xlat13) + x_44.x_B612SkyHorizon.xyz);
  u_xlat7 = vec4f(x_8894.x, u_xlat7.y, x_8894.yz);
  u_xlat89 = (-(u_xlat0.x) / u_xlat141);
  u_xlat89 = (u_xlat89 * 1.44269502162933349609f);
  u_xlat89 = exp2(u_xlat89);
  u_xlat89 = (-(u_xlat89) + 1.0f);
  u_xlat45.x = (u_xlat45.x * x_44.x_B612SkyParams.z);
  u_xlat133 = (-(u_xlat0.x) + 1.0f);
  u_xlat45.x = (u_xlat133 * u_xlat45.x);
  let x_8931 = ((u_xlat45.xxx * u_xlat21) + x_44.x_B612SkyZenith.xyz);
  u_xlat12 = vec4f(x_8931.x, u_xlat12.y, x_8931.yz);
  let x_8939 = (-(u_xlat7.xzw) + u_xlat12.xzw);
  u_xlat12 = vec4f(x_8939.x, u_xlat12.y, x_8939.yz);
  u_xlat45 = ((vec3f(u_xlat89) * u_xlat12.xzw) + u_xlat7.xzw);
  u_xlat0.x = (u_xlat15.x * -(u_xlat0.x));
  u_xlat0.x = (u_xlat0.x * 1.44269502162933349609f);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * x_44.x_B612HazeColor.w);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  let x_8980 = (-(u_xlat45) + x_44.x_B612HazeColor.xyz);
  u_xlat7 = vec4f(x_8980.x, u_xlat7.y, x_8980.yz);
  u_xlat45 = ((u_xlat0.xxx * u_xlat7.xzw) + u_xlat45);
  u_xlat0.x = max(u_xlat8.x, 0.0f);
  u_xlat1.x = (u_xlat1.x * u_xlat16.x);
  u_xlat1.x = exp2(u_xlat1.x);
  let x_9009 = (u_xlat1.xxx * x_44.x_B612SkyGlow.xyz);
  u_xlat7 = vec4f(x_9009.x, u_xlat7.y, x_9009.yz);
  u_xlat0.x = (-(u_xlat0.x) / u_xlat52.x);
  u_xlat0.x = (u_xlat0.x * 1.44269502162933349609f);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat1 = vec4f((((u_xlat7.xzw * u_xlat0.xxx) + u_xlat45)).xyz, u_xlat1.w);
  u_xlat0.x = ((u_xlat51 * 57.295780181884765625f) + -(x_44.x_B612SkyAnti.w));
  u_xlat0.x = (u_xlat0.x / u_xlat16.y);
  u_xlat88.x = (-(u_xlat88.x) + 1.0f);
  u_xlat88.x = log2(u_xlat88.x);
  u_xlat88.x = (u_xlat88.x * u_xlat16.z);
  u_xlat88.x = exp2(u_xlat88.x);
  let x_9073 = (u_xlat88.xxx * x_44.x_B612SkyAnti.xyz);
  u_xlat7 = vec4f(x_9073.x, u_xlat7.y, x_9073.yz);
  u_xlat0.x = (u_xlat0.x * -(u_xlat0.x));
  u_xlat0.x = (u_xlat0.x * 1.44269502162933349609f);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat1 = vec4f((((u_xlat7.xzw * u_xlat0.xxx) + u_xlat1.xyz)).xyz, u_xlat1.w);
  u_xlat0.x = (-(u_xlat2.y) * u_xlat15.y);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  let x_9119 = (-(u_xlat1.xyz) + x_44.x_B612SkyGround.xyz);
  u_xlat7 = vec4f(x_9119.x, u_xlat7.y, x_9119.yz);
  u_xlat1 = vec4f((((u_xlat0.xxx * u_xlat7.xzw) + u_xlat1.xyz)).xyz, u_xlat1.w);
  let x_9136 = (u_xlat12.yyy * u_xlat1.xyz);
  u_xlat7 = vec4f(x_9136.x, u_xlat7.y, x_9136.yz);
  u_xlat0.x = max(x_44.x_Band.x, 0.10000000149011611938f);
  u_xlat0.x = (u_xlat0.x + 0.5f);
  u_xlat88.x = ((u_xlat51 * 57.295780181884765625f) + 0.5f);
  u_xlat0.x = (1.0f / u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat88.x);
  u_xlat0.x = clamp(u_xlat0.x, 0.0f, 1.0f);
  u_xlat88.x = ((u_xlat0.x * -2.0f) + 3.0f);
  u_xlat0.x = (u_xlat0.x * u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * u_xlat88.x);
  u_xlat8 = ((u_xlat1.xyz * u_xlat12.yyy) + -(u_xlat2.xzw));
  let x_9198 = ((u_xlat0.xxx * u_xlat8) + u_xlat2.xzw);
  u_xlat2 = vec4f(x_9198.x, u_xlat2.y, x_9198.yz);
  u_xlat0.x = dot(u_xlat6.xyz, u_xlat5);
  u_xlat88.x = ((-(x_44.x_LkHaze2.x) * x_44.x_LkHaze2.x) + 1.0f);
  u_xlat133 = ((x_44.x_LkHaze2.x * x_44.x_LkHaze2.x) + 1.0f);
  u_xlat0.x = dot(u_xlat0.xx, x_44.x_LkHaze2.xx);
  u_xlat0.x = (-(u_xlat0.x) + u_xlat133);
  u_xlat0.x = max(u_xlat0.x, 0.00009999999747378752f);
  u_xlat0.x = log2(u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * 1.5f);
  u_xlat0.x = exp2(u_xlat0.x);
  u_xlat0.x = (u_xlat88.x / u_xlat0.x);
  u_xlat0.x = (u_xlat0.x * x_44.x_LkHaze.w);
  u_xlat0.x = (u_xlat0.x * 0.07959999889135360718f);
  u_xlat44 = ((x_44.x_LkHaze2.y * u_xlat44) + 1.0f);
  u_xlat0.x = (u_xlat44 * u_xlat0.x);
  u_xlat0 = ((u_xlat9 * u_xlat0.xxx) + u_xlat2.xzw);
  u_xlat133 = (u_xlat3.x + -(x_44.x_LkHaze.y));
  u_xlat133 = max(u_xlat133, 0.0f);
  u_xlat133 = (-(u_xlat133) * x_44.x_LkHaze.x);
  u_xlat133 = (u_xlat133 * 1.44269502162933349609f);
  u_xlat133 = exp2(u_xlat133);
  u_xlat133 = (-(u_xlat133) + 1.0f);
  u_xlat2.x = (-(x_44.x_LkHaze.z) + -0.5f);
  u_xlat90 = ((u_xlat51 * 57.295780181884765625f) + -(x_44.x_LkHaze.z));
  u_xlat2.x = (1.0f / u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat90);
  u_xlat2.x = clamp(u_xlat2.x, 0.0f, 1.0f);
  u_xlat90 = ((u_xlat2.x * -2.0f) + 3.0f);
  u_xlat2.x = (u_xlat2.x * u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * u_xlat90);
  u_xlat2.x = log2(u_xlat2.x);
  u_xlat2.x = (u_xlat2.x * 1.60000002384185791016f);
  u_xlat2.x = exp2(u_xlat2.x);
  u_xlat90 = (-(u_xlat142) + 1.0f);
  u_xlat2.x = (u_xlat90 * u_xlat2.x);
  u_xlat133 = max(u_xlat133, u_xlat2.x);
  u_xlat133 = min(u_xlat133, 1.0f);
  u_xlat5 = ((u_xlat0 * u_xlat4.www) + -(u_xlat30));
  u_xlat4 = vec4f((((vec3f(u_xlat133) * u_xlat5) + u_xlat30)).xyz, u_xlat4.w);
  u_xlatb132 = (u_xlat132 >= x_44.x_March.w);
  if (u_xlatb132) {
    u_xlat132 = (x_44.x_Layer.x + -(x_44.x_CloudCam.y));
    u_xlat133 = min(u_xlat2.y, -0.00009999999747378752f);
    u_xlat132 = (u_xlat132 / u_xlat133);
    u_xlat133 = max(u_xlat117, u_xlat132);
    u_xlat46 = (u_xlat11.xyz * vec3f(0.89999997615814208984f));
    u_xlat46 = ((u_xlat10 * vec3f(0.44999998807907104492f)) + u_xlat46);
    u_xlat5 = (u_xlat46 * x_44.x_LkSun.zzz);
    u_xlat133 = (u_xlat133 + -(x_44.x_LkHaze.y));
    u_xlat133 = max(u_xlat133, 0.0f);
    u_xlat133 = (-(u_xlat133) * x_44.x_LkHaze.x);
    u_xlat133 = (u_xlat133 * 1.44269502162933349609f);
    u_xlat133 = exp2(u_xlat133);
    u_xlat133 = (-(u_xlat133) + 1.0f);
    u_xlat133 = max(u_xlat2.x, u_xlat133);
    u_xlat133 = min(u_xlat133, 1.0f);
    u_xlat2 = vec4f((((-(x_44.x_LkSun.zzz) * u_xlat46) + u_xlat0)).xyz, u_xlat2.w);
    u_xlat2 = vec4f((((vec3f(u_xlat133) * u_xlat2.xyz) + u_xlat5)).xyz, u_xlat2.w);
    u_xlat132 = max(u_xlat132, 0.0f);
    u_xlat132 = (-(u_xlat132) * x_44.x_LkHaze.x);
    u_xlat132 = (u_xlat132 * 1.44269502162933349609f);
    u_xlat132 = exp2(u_xlat132);
    u_xlat132 = (-(u_xlat132) + 1.0f);
    u_xlat132 = (u_xlat132 * 0.75f);
    u_xlat0 = ((-(u_xlat1.xyz) * u_xlat12.yyy) + u_xlat0);
    u_xlat0 = ((vec3f(u_xlat132) * u_xlat0) + u_xlat7.xzw);
    u_xlat0 = (-(u_xlat2.xyz) + u_xlat0);
    u_xlat0 = ((vec3f(u_xlat111) * u_xlat0) + u_xlat2.xyz);
    u_xlat4 = vec4f((((vec3f(u_xlat161) * u_xlat0) + u_xlat4.xyz)).xyz, u_xlat4.w);
    u_xlat0.x = max(u_xlat117, 600.0f);
    u_xlat0.x = ((u_xlat161 * u_xlat0.x) + u_xlat31.y);
    u_xlat44 = (u_xlat161 + u_xlat31.x);
    u_xlat44 = max(u_xlat44, 0.00009999999747378752f);
    u_xlat3.x = (u_xlat0.x / u_xlat44);
    u_xlat4.w = 1.0f;
  }
  u_xlatb0 = (0.5f < x_44.x_DebugView);
  u_xlat44 = f32(u_xlati32);
  u_xlat88.x = max(x_44.x_March.x, 1.0f);
  u_xlat44 = (u_xlat44 / u_xlat88.x);
  u_xlatb1 = ((vec4f(x_44.x_DebugView) < vec4f(1.5f, 2.5f, 3.5f, 0.0f))).xyz;
  u_xlat88.x = (u_xlat3.x * 0.00100000004749745131f);
  u_xlat132 = (u_xlat162 * 0.125f);
  if (u_xlatb1.z) {
    x_9577 = u_xlat88.x;
  } else {
    x_9577 = u_xlat132;
  }
  u_xlat88.x = x_9577;
  if (u_xlatb1.y) {
    x_9588 = u_xlat44;
  } else {
    x_9588 = u_xlat88.x;
  }
  u_xlat44 = x_9588;
  if (u_xlatb1.x) {
    x_9598 = u_xlat4.www;
  } else {
    x_9598 = vec3f(u_xlat44);
  }
  u_xlat1 = vec4f(x_9598.xyz, u_xlat1.w);
  u_xlat1.w = 1.0f;
  SV_Target0 = select(u_xlat4, u_xlat1, vec4<bool>(u_xlatb0));
  SV_Target1 = u_xlat3;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4f,
  @location(1)
  SV_Target1_1 : vec2f,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4f) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}



/* ================= variant ================= */

