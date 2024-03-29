//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// transparentDepthTex               texture   float          2d   22        1
// opaqueDepthTex                    texture   float          2d   23        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_POSITION              0   xyzw        0      POS  float   xy  
// TEXCOORD                 0   xy          1     NONE  float       
// TEXCOORD                 1     zw        1     NONE  float       
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
dcl_resource_texture2d (float,float,float,float) t22
dcl_resource_texture2d (float,float,float,float) t23
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_output o0.xyzw
dcl_temps 2
ftoi r0.xy, v0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.x, r0.xyww, t23.xyzw
ld_indexable(texture2d)(float,float,float,float) r0.x, r0.xyzw, t22.xyzw
max r0.x, r1.x, r0.x
mad r0.x, -r0.x, l(1000.000000), l(1.000000)
mov_sat o0.xyz, r0.xxxx
mov o0.w, l(1.000000)
ret 
// Approximately 9 instruction slots used
