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
//   float fTimeDelta;                  // Offset:   64 Size:     4
//   float fBloomBlurDistance;          // Offset:   68 Size:     4 [unused]
//   float fDoFFar;                     // Offset:   72 Size:     4 [unused]
//   float fDoFNear;                    // Offset:   76 Size:     4 [unused]
//   float2 f2RayLightPos;              // Offset:   80 Size:     8 [unused]
//   float2 f2rcpFrame;                 // Offset:   88 Size:     8 [unused]
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
// pointSampler                      sampler      NA          NA    2        1
// lumTex                            texture  float4          2d   25        1
// lumTex1                           texture  float4          2d   26        1
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
dcl_constantbuffer cb7[5], immediateIndexed
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t25
dcl_resource_texture2d (float,float,float,float) t26
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 1
mul r0.x, l(-0.360674), cb7[4].x
exp r0.x, r0.x
add r0.x, -r0.x, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r0.y, v1.xyxx, t26.yxzw, s2
mul r0.y, r0.y, l(1.442695)
exp r0.y, r0.y
sample_indexable(texture2d)(float,float,float,float) r0.z, v1.xyxx, t25.yzxw, s2
add r0.z, -r0.y, r0.z
mad r0.x, r0.z, r0.x, r0.y
log r0.x, r0.x
mul o0.x, r0.x, l(0.693147)
mov o0.yzw, l(0,1.000000,1.000000,1.000000)
ret 
// Approximately 13 instruction slots used