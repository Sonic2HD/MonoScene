﻿//-----------------------------------------------------
//         Autogenerated code - DO NOT EDIT -
//         Edit VertexShadersCode.tt and save.
//-----------------------------------------------------

#include "Unlit.fx"
#include "VertexShadersStructs.fx"
#include "VertexShadersCode.fx"


float4 Ps_PShader(VsOutTexNorm input) : COLOR0
{
	return PsShader(input, false, false, false);
}


float4 PsPrimary_PShader(VsOutTexNorm input) : COLOR0
{
	return PsShader(input, true, false, false);
}


float4 PsEmissive_PShader(VsOutTexNorm input) : COLOR0
{
	return PsShader(input, false, true, false);
}


float4 PsPrimaryEmissive_PShader(VsOutTexNorm input) : COLOR0
{
	return PsShader(input, true, true, false);
}


float4 PsOpacity_PShader(VsOutTexNorm input) : COLOR0
{
	return PsShader(input, false, false, true);
}


float4 PsPrimaryOpacity_PShader(VsOutTexNorm input) : COLOR0
{
	return PsShader(input, true, false, true);
}


float4 PsEmissiveOpacity_PShader(VsOutTexNorm input) : COLOR0
{
	return PsShader(input, false, true, true);
}


float4 PsPrimaryEmissiveOpacity_PShader(VsOutTexNorm input) : COLOR0
{
	return PsShader(input, true, true, true);
}


// Technique Index =
//   Bit0 : Rigid / Skinned
//   Bit1 : \
//           0=Color, 1=UV0, 2=Color+UV0, 3=Color+UV0+UV1
//   Bit2 : /
//   Bit3 : Primary Texture
//   Bit4 : Emissive
//   Bit5 : Opacity


// 0
TECHNIQUE(VsInRigid_C1_Ps, VsInRigid_C1_VShader, Ps_PShader );

// 1
TECHNIQUE(VsInSkinned_C1_Ps, VsInSkinned_C1_VShader, Ps_PShader );


// 2
TECHNIQUE(VsInRigid_UV1_Ps, VsInRigid_UV1_VShader, Ps_PShader );

// 3
TECHNIQUE(VsInSkinned_UV1_Ps, VsInSkinned_UV1_VShader, Ps_PShader );


// 4
TECHNIQUE(VsInRigid_C1_UV1_Ps, VsInRigid_C1_UV1_VShader, Ps_PShader );

// 5
TECHNIQUE(VsInSkinned_C1_UV1_Ps, VsInSkinned_C1_UV1_VShader, Ps_PShader );


// 6
TECHNIQUE(VsInRigid_C1_UV2_Ps, VsInRigid_C1_UV2_VShader, Ps_PShader );

// 7
TECHNIQUE(VsInSkinned_C1_UV2_Ps, VsInSkinned_C1_UV2_VShader, Ps_PShader );


// 8
TECHNIQUE(VsInRigid_C1_PsPrimary, VsInRigid_C1_VShader, PsPrimary_PShader );

// 9
TECHNIQUE(VsInSkinned_C1_PsPrimary, VsInSkinned_C1_VShader, PsPrimary_PShader );


// 10
TECHNIQUE(VsInRigid_UV1_PsPrimary, VsInRigid_UV1_VShader, PsPrimary_PShader );

// 11
TECHNIQUE(VsInSkinned_UV1_PsPrimary, VsInSkinned_UV1_VShader, PsPrimary_PShader );


// 12
TECHNIQUE(VsInRigid_C1_UV1_PsPrimary, VsInRigid_C1_UV1_VShader, PsPrimary_PShader );

// 13
TECHNIQUE(VsInSkinned_C1_UV1_PsPrimary, VsInSkinned_C1_UV1_VShader, PsPrimary_PShader );


// 14
TECHNIQUE(VsInRigid_C1_UV2_PsPrimary, VsInRigid_C1_UV2_VShader, PsPrimary_PShader );

// 15
TECHNIQUE(VsInSkinned_C1_UV2_PsPrimary, VsInSkinned_C1_UV2_VShader, PsPrimary_PShader );


// 16
TECHNIQUE(VsInRigid_C1_PsEmissive, VsInRigid_C1_VShader, PsEmissive_PShader );

// 17
TECHNIQUE(VsInSkinned_C1_PsEmissive, VsInSkinned_C1_VShader, PsEmissive_PShader );


// 18
TECHNIQUE(VsInRigid_UV1_PsEmissive, VsInRigid_UV1_VShader, PsEmissive_PShader );

// 19
TECHNIQUE(VsInSkinned_UV1_PsEmissive, VsInSkinned_UV1_VShader, PsEmissive_PShader );


// 20
TECHNIQUE(VsInRigid_C1_UV1_PsEmissive, VsInRigid_C1_UV1_VShader, PsEmissive_PShader );

// 21
TECHNIQUE(VsInSkinned_C1_UV1_PsEmissive, VsInSkinned_C1_UV1_VShader, PsEmissive_PShader );


// 22
TECHNIQUE(VsInRigid_C1_UV2_PsEmissive, VsInRigid_C1_UV2_VShader, PsEmissive_PShader );

// 23
TECHNIQUE(VsInSkinned_C1_UV2_PsEmissive, VsInSkinned_C1_UV2_VShader, PsEmissive_PShader );


// 24
TECHNIQUE(VsInRigid_C1_PsPrimaryEmissive, VsInRigid_C1_VShader, PsPrimaryEmissive_PShader );

// 25
TECHNIQUE(VsInSkinned_C1_PsPrimaryEmissive, VsInSkinned_C1_VShader, PsPrimaryEmissive_PShader );


// 26
TECHNIQUE(VsInRigid_UV1_PsPrimaryEmissive, VsInRigid_UV1_VShader, PsPrimaryEmissive_PShader );

// 27
TECHNIQUE(VsInSkinned_UV1_PsPrimaryEmissive, VsInSkinned_UV1_VShader, PsPrimaryEmissive_PShader );


// 28
TECHNIQUE(VsInRigid_C1_UV1_PsPrimaryEmissive, VsInRigid_C1_UV1_VShader, PsPrimaryEmissive_PShader );

// 29
TECHNIQUE(VsInSkinned_C1_UV1_PsPrimaryEmissive, VsInSkinned_C1_UV1_VShader, PsPrimaryEmissive_PShader );


// 30
TECHNIQUE(VsInRigid_C1_UV2_PsPrimaryEmissive, VsInRigid_C1_UV2_VShader, PsPrimaryEmissive_PShader );

// 31
TECHNIQUE(VsInSkinned_C1_UV2_PsPrimaryEmissive, VsInSkinned_C1_UV2_VShader, PsPrimaryEmissive_PShader );


// 32
TECHNIQUE(VsInRigid_C1_PsOpacity, VsInRigid_C1_VShader, PsOpacity_PShader );

// 33
TECHNIQUE(VsInSkinned_C1_PsOpacity, VsInSkinned_C1_VShader, PsOpacity_PShader );


// 34
TECHNIQUE(VsInRigid_UV1_PsOpacity, VsInRigid_UV1_VShader, PsOpacity_PShader );

// 35
TECHNIQUE(VsInSkinned_UV1_PsOpacity, VsInSkinned_UV1_VShader, PsOpacity_PShader );


// 36
TECHNIQUE(VsInRigid_C1_UV1_PsOpacity, VsInRigid_C1_UV1_VShader, PsOpacity_PShader );

// 37
TECHNIQUE(VsInSkinned_C1_UV1_PsOpacity, VsInSkinned_C1_UV1_VShader, PsOpacity_PShader );


// 38
TECHNIQUE(VsInRigid_C1_UV2_PsOpacity, VsInRigid_C1_UV2_VShader, PsOpacity_PShader );

// 39
TECHNIQUE(VsInSkinned_C1_UV2_PsOpacity, VsInSkinned_C1_UV2_VShader, PsOpacity_PShader );


// 40
TECHNIQUE(VsInRigid_C1_PsPrimaryOpacity, VsInRigid_C1_VShader, PsPrimaryOpacity_PShader );

// 41
TECHNIQUE(VsInSkinned_C1_PsPrimaryOpacity, VsInSkinned_C1_VShader, PsPrimaryOpacity_PShader );


// 42
TECHNIQUE(VsInRigid_UV1_PsPrimaryOpacity, VsInRigid_UV1_VShader, PsPrimaryOpacity_PShader );

// 43
TECHNIQUE(VsInSkinned_UV1_PsPrimaryOpacity, VsInSkinned_UV1_VShader, PsPrimaryOpacity_PShader );


// 44
TECHNIQUE(VsInRigid_C1_UV1_PsPrimaryOpacity, VsInRigid_C1_UV1_VShader, PsPrimaryOpacity_PShader );

// 45
TECHNIQUE(VsInSkinned_C1_UV1_PsPrimaryOpacity, VsInSkinned_C1_UV1_VShader, PsPrimaryOpacity_PShader );


// 46
TECHNIQUE(VsInRigid_C1_UV2_PsPrimaryOpacity, VsInRigid_C1_UV2_VShader, PsPrimaryOpacity_PShader );

// 47
TECHNIQUE(VsInSkinned_C1_UV2_PsPrimaryOpacity, VsInSkinned_C1_UV2_VShader, PsPrimaryOpacity_PShader );


// 48
TECHNIQUE(VsInRigid_C1_PsEmissiveOpacity, VsInRigid_C1_VShader, PsEmissiveOpacity_PShader );

// 49
TECHNIQUE(VsInSkinned_C1_PsEmissiveOpacity, VsInSkinned_C1_VShader, PsEmissiveOpacity_PShader );


// 50
TECHNIQUE(VsInRigid_UV1_PsEmissiveOpacity, VsInRigid_UV1_VShader, PsEmissiveOpacity_PShader );

// 51
TECHNIQUE(VsInSkinned_UV1_PsEmissiveOpacity, VsInSkinned_UV1_VShader, PsEmissiveOpacity_PShader );


// 52
TECHNIQUE(VsInRigid_C1_UV1_PsEmissiveOpacity, VsInRigid_C1_UV1_VShader, PsEmissiveOpacity_PShader );

// 53
TECHNIQUE(VsInSkinned_C1_UV1_PsEmissiveOpacity, VsInSkinned_C1_UV1_VShader, PsEmissiveOpacity_PShader );


// 54
TECHNIQUE(VsInRigid_C1_UV2_PsEmissiveOpacity, VsInRigid_C1_UV2_VShader, PsEmissiveOpacity_PShader );

// 55
TECHNIQUE(VsInSkinned_C1_UV2_PsEmissiveOpacity, VsInSkinned_C1_UV2_VShader, PsEmissiveOpacity_PShader );


// 56
TECHNIQUE(VsInRigid_C1_PsPrimaryEmissiveOpacity, VsInRigid_C1_VShader, PsPrimaryEmissiveOpacity_PShader );

// 57
TECHNIQUE(VsInSkinned_C1_PsPrimaryEmissiveOpacity, VsInSkinned_C1_VShader, PsPrimaryEmissiveOpacity_PShader );


// 58
TECHNIQUE(VsInRigid_UV1_PsPrimaryEmissiveOpacity, VsInRigid_UV1_VShader, PsPrimaryEmissiveOpacity_PShader );

// 59
TECHNIQUE(VsInSkinned_UV1_PsPrimaryEmissiveOpacity, VsInSkinned_UV1_VShader, PsPrimaryEmissiveOpacity_PShader );


// 60
TECHNIQUE(VsInRigid_C1_UV1_PsPrimaryEmissiveOpacity, VsInRigid_C1_UV1_VShader, PsPrimaryEmissiveOpacity_PShader );

// 61
TECHNIQUE(VsInSkinned_C1_UV1_PsPrimaryEmissiveOpacity, VsInSkinned_C1_UV1_VShader, PsPrimaryEmissiveOpacity_PShader );


// 62
TECHNIQUE(VsInRigid_C1_UV2_PsPrimaryEmissiveOpacity, VsInRigid_C1_UV2_VShader, PsPrimaryEmissiveOpacity_PShader );

// 63
TECHNIQUE(VsInSkinned_C1_UV2_PsPrimaryEmissiveOpacity, VsInSkinned_C1_UV2_VShader, PsPrimaryEmissiveOpacity_PShader );





