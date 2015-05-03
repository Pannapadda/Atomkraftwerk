//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
//   fxc /T ps_5_0 /O1 /E RSMPS /Fo
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\Shaders\Cache\Object\Release\RSMPS.obj
//    /Fe
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\Shaders\Cache\Error\RSMPS.txt
//    /Fc
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\Shaders\Cache\Assembly\82e36081.asm
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\shaders\source\reflectiveshadowmaps.hlsl
//
//
// Buffer Definitions: 
//
// cbuffer TexInfo
// {
//
//   float4 f4ColorAmbient;             // Offset:    0 Size:    16 [unused]
//   float fA;                          // Offset:   16 Size:     4 [unused]
//   float fH;                          // Offset:   20 Size:     4 [unused]
//   float fBumpStrength;               // Offset:   24 Size:     4
//   float frTransparency;              // Offset:   28 Size:     4 [unused]
//   float4 f4ColorSSS;                 // Offset:   32 Size:    16 [unused]
//   float4 f4SSSBRDFParams;            // Offset:   48 Size:    16 [unused]
//   uint uImage;                       // Offset:   64 Size:     4 [unused]
//   uint uGlow;                        // Offset:   68 Size:     4 [unused]
//   uint uSpecular;                    // Offset:   72 Size:     4 [unused]
//   uint uBump;                        // Offset:   76 Size:     4
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
//   uint uChromaKeying;                // Offset:  120 Size:     4 [unused]
//   uint uEnvironment;                 // Offset:  124 Size:     4 [unused]
//   uint uPOM;                         // Offset:  128 Size:     4 [unused]
//   uint uTexBRDF;                     // Offset:  132 Size:     4 [unused]
//   uint uTexSSS;                      // Offset:  136 Size:     4 [unused]
//   uint uReflectionMap;               // Offset:  140 Size:     4 [unused]
//   uint uixPos;                       // Offset:  144 Size:     4 [unused]
//   uint uiyPos;                       // Offset:  148 Size:     4 [unused]
//   uint uixPics;                      // Offset:  152 Size:     4 [unused]
//   uint uiyPics;                      // Offset:  156 Size:     4 [unused]
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
// tex2D[3]                          texture  float4          2d   18        1
// TexInfo                           cbuffer      NA          NA    5        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// NORMAL                   0   xyz         0     NONE  float   xyz 
// TEXCOORD                 0   xy          1     NONE  float   xy  
// TEXCOORD                 1   xyz         2     NONE  float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_TARGET                0   xyzw        0   TARGET  float   xyzw
// SV_TARGET                1   xyzw        1   TARGET  float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb5[5], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t15
dcl_resource_texture2d (float,float,float,float) t18
dcl_input_ps linear v0.xyz
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 3
dp3 r0.x, v0.xyzx, v0.xyzx
rsq r0.x, r0.x
mul r0.yzw, r0.xxxx, v0.xxyz
mul r1.xyz, r0.zwyz, l(0.000000, 0.000000, 1.000000, 0.000000)
mad r2.xyz, r0.zwyz, l(1.000000, 0.000000, 0.000000, 0.000000), -r1.yzxy
mad r1.xyz, -r0.wyzw, l(1.000000, 0.000000, 0.000000, 0.000000), r1.xyzx
dp2 r1.w, r2.xyxx, r2.xyxx
sqrt r1.w, r1.w
dp2 r2.w, r1.xzxx, r1.xzxx
sqrt r2.w, r2.w
lt r1.w, r2.w, r1.w
if_nz r1.w
  mov r1.xyz, r2.xyzx
endif 
if_nz cb5[4].w
  mul r2.xyz, r0.wyzw, r1.yzxy
  mad r0.yzw, r0.zzwy, r1.zzxy, -r2.xxyz
  dp3 r1.w, -r0.yzwy, -r0.yzwy
  rsq r1.w, r1.w
  mul r0.yzw, -r0.yyzw, r1.wwww
  sample_indexable(texture2d)(float,float,float,float) r2.xy, v1.xyxx, t18.xyzw, s0
  mad r2.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
  mul r2.xy, r2.xyxx, cb5[1].zzzz
  mul r0.yzw, r0.yyzw, r2.yyyy
  mad r0.yzw, r2.xxxx, r1.xxyz, r0.yyzw
  add r0.yzw, r0.yyzw, v0.xxyz
  dp3 r1.x, r0.yzwy, r0.yzwy
  rsq r1.x, r1.x
  mul r0.yzw, r0.yyzw, r1.xxxx
else 
  mad r1.xyz, v0.xyzx, r0.xxxx, l(1.000000, 1.000000, 1.000000, 0.000000)
  mul r1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
  dp3 r0.x, r1.xyzx, r1.xyzx
  rsq r0.x, r0.x
  mul r0.yzw, r0.xxxx, r1.xxyz
endif 
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t15.xyzw, s0
mov o0.xyz, r0.yzwy
mov o0.w, l(0)
mov o1.xyz, r1.xyzx
mov o1.w, l(1.000000)
ret 
// Approximately 42 instruction slots used
