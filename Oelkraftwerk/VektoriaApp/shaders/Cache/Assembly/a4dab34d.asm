//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
// Buffer Definitions: 
//
// cbuffer TexInfo
// {
//
//   float4 f4ColorEffect;              // Offset:    0 Size:    16 [unused]
//   float fBlurStrength;               // Offset:   16 Size:     4 [unused]
//   uint uBlur;                        // Offset:   20 Size:     4 [unused]
//   uint uEnhancedEdges;               // Offset:   24 Size:     4 [unused]
//   uint uMeanFilter;                  // Offset:   28 Size:     4 [unused]
//   float fBloomOriginalIntensity;     // Offset:   32 Size:     4 [unused]
//   float fBloomIntensity;             // Offset:   36 Size:     4 [unused]
//   float fBloomOriginalSaturation;    // Offset:   40 Size:     4 [unused]
//   float fBloomSaturation;            // Offset:   44 Size:     4 [unused]
//   float fRayExposure;                // Offset:   48 Size:     4 [unused]
//   float fRayDecay;                   // Offset:   52 Size:     4 [unused]
//   float fRayDensity;                 // Offset:   56 Size:     4 [unused]
//   float fRayWeight;                  // Offset:   60 Size:     4 [unused]
//   float fTimeDelta;                  // Offset:   64 Size:     4 [unused]
//   float fBloomBlurDistance;          // Offset:   68 Size:     4 [unused]
//   float fDoFFar;                     // Offset:   72 Size:     4 [unused]
//   float fDoFNear;                    // Offset:   76 Size:     4 [unused]
//   float2 f2RayLightPos;              // Offset:   80 Size:     8 [unused]
//   float2 f2rcpFrame;                 // Offset:   88 Size:     8
//   float4 f4rcpFrameOpt;              // Offset:   96 Size:    16 [unused]
//   float4 f4DoFParams;                // Offset:  112 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// linearSampler                     sampler      NA          NA    1        1
// pointSampler                      sampler      NA          NA    2        1
// tex2D[7]                          texture  float4          2d   22        1
// depthblurTex                      texture  float4          2d   24        1
// TexInfo                           cbuffer      NA          NA    7        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_POSITION              0   xyzw        0      POS  float       
// TEXCOORD                 0   xy          1     NONE  float   xy  
// TEXCOORD                 2   xyzw        2     NONE  float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_TARGET                0   xyzw        0   TARGET  float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 0.206984, 0.224527, 0, 0},
                              { 0.525808, -0.231082, 0, 0},
                              { 0.138394, 0.905612, 0, 0},
                              { 0.663301, 0.512984, 0, 0},
                              { -0.400279, 0.372706, 0, 0},
                              { 0.079128, -0.651292, 0, 0},
                              { -0.772607, -0.515122, 0, 0},
                              { -0.384319, -0.149413, 0, 0},
                              { -0.910778, 0.250063, 0, 0},
                              { 0.694015, -0.709893, 0, 0},
                              { -0.196467, -0.379389, 0, 0},
                              { -0.476929, 0.184086, 0, 0},
                              { -0.247328, -0.879846, 0, 0},
                              { 0.420654, -0.714772, 0, 0},
                              { 0.582935, -0.097942, 0, 0},
                              { 0.369184, 0.414064, 0, 0} }
dcl_constantbuffer cb7[6], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t22
dcl_resource_texture2d (float,float,float,float) t24
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t22.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xy, v1.xyxx, t24.xyzw, s2
lt r0.w, l(0.000000), r1.y
if_nz r0.w
  mul r0.w, r1.y, l(0.003500)
  mov r2.xyz, r0.xyzx
  mov r3.xyz, l(1.000000,1.000000,1.000000,0)
  mov r1.z, l(0)
  loop 
    uge r1.w, r1.z, l(16)
    breakc_nz r1.w
    mad r4.xy, icb[r1.z + 0].xxxx, r0.wwww, v1.xyxx
    add r4.xy, r4.xyxx, cb7[5].zwzz
    sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r4.xyxx, t22.xyzw, s1, r1.y
    sample_l_indexable(texture2d)(float,float,float,float) r4.xy, r4.xyxx, t24.xyzw, s2, l(0.000000)
    lt r1.w, r1.x, r4.x
    movc r1.w, r1.w, l(1.000000), r4.y
    mad r2.xyz, r5.xyzx, r1.wwww, r2.xyzx
    add r3.xyz, r1.wwww, r3.xyzx
    iadd r1.z, r1.z, l(1)
  endloop 
  mov r0.xyz, r2.xyzx
else 
  mov r3.xyz, l(1.000000,1.000000,1.000000,0)
endif 
div o0.xyz, r0.xyzx, r3.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 28 instruction slots used