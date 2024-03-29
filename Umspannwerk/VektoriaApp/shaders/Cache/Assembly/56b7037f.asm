//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// cbPerObject                       cbuffer      NA          NA    0        1
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
// TEXCOORD                 2   xyzw        5     NONE  float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[4], immediateIndexed
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
dcl_output o5.xyzw
dcl_temps 5

#line 86 "\\?\C:\Users\admin\Documents\Visual Studio 2010\Projects\Vektoria_2015-02-12a\Vektoria\trunk\VektoriaApp\shaders\Source\sprites.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // output<0:NaN:Inf>
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // output<1:NaN:Inf>
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // output<2:NaN:Inf>
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // output<3:NaN:Inf>
mov r0.xyzw, r0.xyzw  // output<15:NaN:Inf,16:NaN:Inf,17:NaN:Inf,18:NaN:Inf>
dp3 r1.x, v1.xyzx, cb0[0].xyzx
dp3 r1.y, v1.xyzx, cb0[1].xyzx
dp3 r1.z, v1.xyzx, cb0[2].xyzx
dp3 r1.w, r1.xyzx, r1.xyzx
rsq r1.w, r1.w
mul r1.xyz, r1.wwww, r1.xyzx  // output<4:NaN:Inf,5:NaN:Inf,6:NaN:Inf>
dp3 r2.x, v3.xyzx, cb0[0].xyzx
dp3 r2.y, v3.xyzx, cb0[1].xyzx
dp3 r2.z, v3.xyzx, cb0[2].xyzx
dp3 r1.w, r2.xyzx, r2.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, r2.xyzx  // output<7:NaN:Inf,8:NaN:Inf,9:NaN:Inf>
dp3 r3.x, v4.xyzx, cb0[0].xyzx
dp3 r3.y, v4.xyzx, cb0[1].xyzx
dp3 r3.z, v4.xyzx, cb0[2].xyzx
dp3 r1.w, r3.xyzx, r3.xyzx
rsq r1.w, r1.w
mul r3.xyz, r1.wwww, r3.xyzx  // output<10:NaN:Inf,11:NaN:Inf,12:NaN:Inf>
mov r4.xy, v2.xyxx  // output<13,14>
mov o0.xyzw, r0.xyzw  // RenderSpritesVS<0:NaN:Inf,1:NaN:Inf,2:NaN:Inf,3:NaN:Inf>
mov o5.xyzw, r0.xyzw  // RenderSpritesVS<15:NaN:Inf,16:NaN:Inf,17:NaN:Inf,18:NaN:Inf>
mov o1.xyz, r1.xyzx  // RenderSpritesVS<4:NaN:Inf,5:NaN:Inf,6:NaN:Inf>
mov o2.xyz, r2.xyzx  // RenderSpritesVS<7:NaN:Inf,8:NaN:Inf,9:NaN:Inf>
mov o3.xyz, r3.xyzx  // RenderSpritesVS<10:NaN:Inf,11:NaN:Inf,12:NaN:Inf>
mov o4.xy, r4.xyxx  // RenderSpritesVS<13,14>
ret 
// Approximately 31 instruction slots used
