//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
//   fxc /T vs_5_0 /O1 /E RenderSceneVS /Fo
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\Shaders\Cache\Object\Release\RenderSceneVS.obj
//    /Fe
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\Shaders\Cache\Error\RenderSceneVS.txt
//    /Fc
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\Shaders\Cache\Assembly\eaef763c.asm
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\shaders\Source\forwardShading.hlsl
//
//
// Buffer Definitions: 
//
// cbuffer cbPerObject
// {
//
//   float4x4 g_mWorld;                 // Offset:    0 Size:    64
//
// }
//
// cbuffer cbPerCamera
// {
//
//   float4x4 g_mViewProj;              // Offset:    0 Size:    64
//
// }
//
// cbuffer cbPerFrame
// {
//
//   float4x4 g_mView;                  // Offset:    0 Size:    64 [unused]
//   float4x4 g_mViewInv;               // Offset:   64 Size:    64
//   float4x4 g_mProjection;            // Offset:  128 Size:    64 [unused]
//   float4x4 g_mProjectionInv;         // Offset:  192 Size:    64 [unused]
//   float4x4 g_mProjectionInvViewport; // Offset:  256 Size:    64 [unused]
//   float4 g_f4AmbientColorUp;         // Offset:  320 Size:    16 [unused]
//   float4 g_f4AmbientColorDown;       // Offset:  336 Size:    16 [unused]
//   float3 g_f3CameraPos;              // Offset:  352 Size:    12 [unused]
//   float g_fAlphaTest;                // Offset:  364 Size:     4 [unused]
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// cbPerObject                       cbuffer      NA          NA    0        1
// cbPerCamera                       cbuffer      NA          NA    1        1
// cbPerFrame                        cbuffer      NA          NA    2        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// POSITION                 0   xyzw        0     NONE  float   xyzw
// NORMAL                   0   xyz         1     NONE  float   xyz 
// TEXCOORD                 0   xy          2     NONE  float   xy  
// TANGENT                  0   xyz         3     NONE  float   xyz 
// BITANGENT                0   xyz         4     NONE  float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_POSITION              0   xyzw        0      POS  float   xyzw
// NORMAL                   0   xyz         1     NONE  float   xyz 
// TANGENT                  0   xyz         2     NONE  float   xyz 
// BITANGENT                0   xyz         3     NONE  float   xyz 
// TEXCOORD                 0   xy          4     NONE  float   xy  
// TEXCOORD                 1   xyz         5     NONE  float   xyz 
// TEXCOORD                 2   xyzw        6     NONE  float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[4], immediateIndexed
dcl_constantbuffer cb1[4], immediateIndexed
dcl_constantbuffer cb2[7], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xy
dcl_input v3.xyz
dcl_input v4.xyz
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_output o2.xyz
dcl_output o3.xyz
dcl_output o4.xy
dcl_output o5.xyz
dcl_output o6.xyzw
dcl_temps 1
dp4 r0.x, v0.xyzw, cb0[0].xyzw
dp4 r0.y, v0.xyzw, cb0[1].xyzw
dp4 r0.z, v0.xyzw, cb0[2].xyzw
dp4 r0.w, v0.xyzw, cb0[3].xyzw
dp4 o0.x, r0.xyzw, cb1[0].xyzw
dp4 o0.y, r0.xyzw, cb1[1].xyzw
dp4 o0.z, r0.xyzw, cb1[2].xyzw
dp4 o0.w, r0.xyzw, cb1[3].xyzw
mov o6.xyzw, r0.xyzw
dp3 o1.x, v1.xyzx, cb0[0].xyzx
dp3 o1.y, v1.xyzx, cb0[1].xyzx
dp3 o1.z, v1.xyzx, cb0[2].xyzx
dp3 o2.x, v3.xyzx, cb0[0].xyzx
dp3 o2.y, v3.xyzx, cb0[1].xyzx
dp3 o2.z, v3.xyzx, cb0[2].xyzx
dp3 o3.x, v4.xyzx, cb0[0].xyzx
dp3 o3.y, v4.xyzx, cb0[1].xyzx
dp3 o3.z, v4.xyzx, cb0[2].xyzx
mov o4.xy, v2.xyxx
mov o5.x, cb2[4].w
mov o5.y, cb2[5].w
mov o5.z, cb2[6].w
ret 
// Approximately 23 instruction slots used
