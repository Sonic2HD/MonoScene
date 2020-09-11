﻿
// ========================================= CONSTANTS =========================================

// All Shaders
// - R : screen Red     \
// - G : screen Green    |- sRGB (*)
// - B : screen Blue    /
// - A : Unused

// (*) - PBR uses linear RGB for lighting calculations, and texture's
//       sRGB values need to be converted to linear RGB by applying a
//       2.2 Gamma Correction. See ToneMapping.fx

DECLARE_TEXTURE(EmissiveTexture, 3);

float3 EmissiveScale;
int EmissiveTextureIdx;
float3 EmissiveTransformU;
float3 EmissiveTransformV;

// ========================================= FUNCTIONS =========================================

float3 GetEmissiveSample(float2 uv0, float2 uv1)
{
    float3 uvw = float3(EmissiveTextureIdx < 1 ? uv0 : uv1, 1);
    uv0.x = dot(uvw, EmissiveTransformU);
    uv0.y = dot(uvw, EmissiveTransformV);

    return sRGBToLinear(SAMPLE_TEXTURE(EmissiveTexture, uv0).rgb);
}