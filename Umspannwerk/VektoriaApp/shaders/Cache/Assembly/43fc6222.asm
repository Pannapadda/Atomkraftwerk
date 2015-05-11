//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
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
dcl_temps 2

#line 43 "\\?\C:\Users\admin\Documents\Visual Studio 2010\Projects\Vektoria_2015-02-12a\Vektoria\trunk\VektoriaApp\shaders\source\BloomPost.hlsl"
mov r0.xy, v2.xyxx  // output<4,5>
dp4 r1.x, v0.xyzw, cb0[0].xyzw  // output<0:NaN:Inf>
dp4 r1.y, v0.xyzw, cb0[1].xyzw  // output<1:NaN:Inf>
dp4 r1.z, v0.xyzw, cb0[2].xyzw  // output<2:NaN:Inf>
dp4 r1.w, v0.xyzw, cb0[3].xyzw  // output<3:NaN:Inf>
mov o0.xyzw, r1.xyzw  // VS_BLOOMBLUR<0:NaN:Inf,1:NaN:Inf,2:NaN:Inf,3:NaN:Inf>
mov o1.xy, r0.xyxx  // VS_BLOOMBLUR<4,5>
mov o2.xyzw, l(0,0,0,0)  // VS_BLOOMBLUR<6: 0f,7: 0f,8: 0f,9: 0f>
ret 
// Approximately 9 instruction slots used
