//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
//   fxc /T vs_5_0 /O1 /E VS_BLOOMBLUR /Fo
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\Shaders\Cache\Object\Release\VS_BLOOMBLUR.obj
//    /Fe
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\Shaders\Cache\Error\VS_BLOOMBLUR.txt
//    /Fc
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\Shaders\Cache\Assembly\43fc6222.asm
//    \\?\C:\Users\Jonas\VektoriaV13_Beta\dauwilliwasmacha\VektoriaApp\shaders\source\BloomPost.hlsl
//
//
// Buffer Definitions: 
//
// cbuffer ObjectInfo
// {
//
//   float4x4 World;                    // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// ObjectInfo                        cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// POSITION                 0   xyzw        0     NONE  float   xyzw
// NORMAL                   0   xyz         1     NONE  float       
// TEXCOORD                 0   xy          2     NONE  float   xy  
// TANGENT                  0   xyz         3     NONE  float       
// BITANGENT                0   xyz         4     NONE  float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_POSITION              0   xyzw        0      POS  float   xyzw
// TEXCOORD                 0   xy          1     NONE  float   xy  
// TEXCOORD                 2   xyzw        2     NONE  float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v2.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
dcl_output o2.xyzw
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw
mov o1.xy, v2.xyxx
mov o2.xyzw, l(0,0,0,0)
ret 
// Approximately 7 instruction slots used
