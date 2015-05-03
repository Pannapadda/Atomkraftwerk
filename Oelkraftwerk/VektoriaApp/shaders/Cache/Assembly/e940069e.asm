//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
// Buffer Definitions: 
//
// cbuffer cbPerFrame
// {
//
//   float4x4 g_mView;                  // Offset:    0 Size:    64 [unused]
//   float4x4 g_mViewInv;               // Offset:   64 Size:    64 [unused]
//   float4x4 g_mProjection;            // Offset:  128 Size:    64 [unused]
//   float4x4 g_mProjectionInv;         // Offset:  192 Size:    64 [unused]
//   float4x4 g_mProjectionInvViewport; // Offset:  256 Size:    64 [unused]
//   float4 g_f4AmbientColorUp;         // Offset:  320 Size:    16 [unused]
//   float4 g_f4AmbientColorDown;       // Offset:  336 Size:    16 [unused]
//   float3 g_f3CameraPos;              // Offset:  352 Size:    12 [unused]
//   float g_fAlphaTest;                // Offset:  364 Size:     4
//   uint g_uNumLights;                 // Offset:  368 Size:     4 [unused]
//   uint g_uNumSpotLights;             // Offset:  372 Size:     4 [unused]
//   uint g_uWindowWidth;               // Offset:  376 Size:     4 [unused]
//   uint g_uWindowHeight;              // Offset:  380 Size:     4 [unused]
//   uint g_uMaxNumLightsPerTile;       // Offset:  384 Size:     4 [unused]
//   uint g_uMaxNumElementsPerTile;     // Offset:  388 Size:     4 [unused]
//   uint g_uNumTilesX;                 // Offset:  392 Size:     4 [unused]
//   uint g_uNumTilesY;                 // Offset:  396 Size:     4 [unused]
//   uint g_uMaxVPLs;                   // Offset:  400 Size:     4 [unused]
//   uint g_uMaxNumVPLsPerTile;         // Offset:  404 Size:     4 [unused]
//   uint g_uMaxNumVPLElementsPerTile;  // Offset:  408 Size:     4 [unused]
//   float g_fVPLSpotStrength;          // Offset:  412 Size:     4 [unused]
//   float g_fVPLSpotRadius;            // Offset:  416 Size:     4 [unused]
//   float g_fVPLPointStrength;         // Offset:  420 Size:     4 [unused]
//   float g_fVPLPointRadius;           // Offset:  424 Size:     4 [unused]
//   float g_fVPLRemoveBackFaceContrib; // Offset:  428 Size:     4 [unused]
//   float g_fVPLColorThreshold;        // Offset:  432 Size:     4 [unused]
//   float g_fVPLBrightnessThreshold;   // Offset:  436 Size:     4 [unused]
//   float g_fPerFramePad1;             // Offset:  440 Size:     4 [unused]
//   float g_fPerFramePad2;             // Offset:  444 Size:     4 [unused]
//
// }
//
// cbuffer TexInfo
// {
//
//   float4 f4ColorAmbient;             // Offset:    0 Size:    16 [unused]
//   float fA;                          // Offset:   16 Size:     4 [unused]
//   float fH;                          // Offset:   20 Size:     4 [unused]
//   float fBumpStrength;               // Offset:   24 Size:     4 [unused]
//   float frTransparency;              // Offset:   28 Size:     4 [unused]
//   float4 f4ColorSSS;                 // Offset:   32 Size:    16 [unused]
//   float4 f4SSSBRDFParams;            // Offset:   48 Size:    16 [unused]
//   uint uImage;                       // Offset:   64 Size:     4 [unused]
//   uint uGlow;                        // Offset:   68 Size:     4 [unused]
//   uint uSpecular;                    // Offset:   72 Size:     4 [unused]
//   uint uBump;                        // Offset:   76 Size:     4 [unused]
//   uint uImageBlack;                  // Offset:   80 Size:     4 [unused]
//   uint uGlowAsImage;                 // Offset:   84 Size:     4 [unused]
//   uint uSpecularAsImage;             // Offset:   88 Size:     4 [unused]
//   uint uHeightAsImage;               // Offset:   92 Size:     4 [unused]
//   uint uImageWhite;                  // Offset:   96 Size:     4 [unused]
//   uint uGlowWhite;                   // Offset:  100 Size:     4 [unused]
//   uint uSpecularWhite;               // Offset:  104 Size:     4 [unused]
//   uint uHeight;                      // Offset:  108 Size:     4 [unused]
//   uint uShadingOn;                   // Offset:  112 Size:     4 [unused]
//   uint uGlowAsAmbient;               // Offset:  116 Size:     4 [unused]
//   uint uChromaKeying;                // Offset:  120 Size:     4
//   uint uEnvironment;                 // Offset:  124 Size:     4 [unused]
//   uint uPOM;                         // Offset:  128 Size:     4 [unused]
//   uint uTexBRDF;                     // Offset:  132 Size:     4 [unused]
//   uint uTexSSS;                      // Offset:  136 Size:     4 [unused]
//   uint uReflectionMap;               // Offset:  140 Size:     4 [unused]
//   uint uixPos;                       // Offset:  144 Size:     4
//   uint uiyPos;                       // Offset:  148 Size:     4
//   uint uixPics;                      // Offset:  152 Size:     4
//   uint uiyPics;                      // Offset:  156 Size:     4
//   float fSpecularRoughness;          // Offset:  160 Size:     4 [unused]
//   float fSpecularIOR;                // Offset:  164 Size:     4 [unused]
//   uint uPad1;                        // Offset:  168 Size:     4 [unused]
//   uint uPad2;                        // Offset:  172 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// g_Sampler                         sampler      NA          NA    0        1
// tex2D[0]                          texture  float4          2d   15        1
// cbPerFrame                        cbuffer      NA          NA    2        1
// TexInfo                           cbuffer      NA          NA    5        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_POSITION              0   xyzw        0      POS  float       
// TEXCOORD                 0   xy          1     NONE  float   xy  
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
dcl_constantbuffer cb2[23], immediateIndexed
dcl_constantbuffer cb5[10], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t15
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 8
ult r0.xy, l(1, 1, 0, 0), cb5[9].ywyy
or r0.x, r0.y, r0.x
utof r1.xyzw, cb5[9].xyzw
div r2.xyzw, r1.xyxy, r1.zwzw
div r1.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000), r1.zwzw
mad r1.xyzw, v1.xyxy, r1.xyzw, r2.xyzw
movc r0.xyzw, r0.xxxx, r1.xyzw, v1.xyxy
if_nz cb5[7].z
  resinfo_indexable(texture2d)(float,float,float,float)_uint r1.xy, l(0), t15.xyzw
  utof r1.xyzw, r1.xyxy
  ld_indexable(texture2d)(float,float,float,float) r2.xyz, l(0, 0, 0, 0), t15.xyzw
  mad r1.xyzw, r0.xyzw, r1.xyzw, l(-0.500000, -0.500000, 0.500000, 0.500000)
  ftoi r3.xyzw, r1.zyxy
  mov r4.xy, r3.zwzz
  mov r4.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r4.xyzw, t15.xyzw
  mov r3.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.xyzw, t15.xyzw
  ftoi r5.xyzw, r1.zwxw
  mov r6.xy, r5.zwzz
  mov r6.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r6.xyzw, t15.xyzw
  mov r5.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r5.xyzw, r5.xyzw, t15.xyzw
  eq r7.xyz, r4.xyzx, r2.xyzx
  and r0.x, r7.y, r7.x
  and r0.x, r7.z, r0.x
  movc r4.xyzw, r0.xxxx, l(0,0,0,0), r4.xyzw
  eq r7.xyz, r3.xyzx, r2.xyzx
  and r0.x, r7.y, r7.x
  and r0.x, r7.z, r0.x
  movc r3.xyzw, r0.xxxx, l(0,0,0,0), r3.xyzw
  eq r7.xyz, r6.xyzx, r2.xyzx
  and r0.x, r7.y, r7.x
  and r0.x, r7.z, r0.x
  movc r6.xyzw, r0.xxxx, l(0,0,0,0), r6.xyzw
  eq r2.xyz, r5.xyzx, r2.xyzx
  and r0.x, r2.y, r2.x
  and r0.x, r2.z, r0.x
  movc r2.xyzw, r0.xxxx, l(0,0,0,0), r5.xyzw
  frc r0.xy, r1.xyxx
  add r1.xyzw, -r4.xyzw, r3.xyzw
  mad r1.xyzw, r1.xyzw, r0.xxxx, r4.xyzw
  add r2.xyzw, -r6.xyzw, r2.xyzw
  mad r2.xyzw, r2.xyzw, r0.xxxx, r6.xyzw
  add r2.xyzw, -r1.xyzw, r2.xyzw
  mad r1.xyzw, r2.xyzw, r0.yyyy, r1.xyzw
else 
  sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.zwzz, t15.xyzw, s0
endif 
lt r0.x, r1.w, cb2[22].w
discard r0.x
mov o0.xyzw, r1.xyzw
ret 
// Approximately 54 instruction slots used
