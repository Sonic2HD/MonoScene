﻿//-----------------------------------------------------
//         Autogenerated code - DO NOT EDIT -
//       Edit VertexShadersStructs.tt and save.
//-----------------------------------------------------

float4x4 World;

#define SKINNED_EFFECT_MAX_BONES   128

float4x3 Bones[SKINNED_EFFECT_MAX_BONES]; // 4x3 is enough, and saves constants 

float4x3 CalculateBoneMatrix(float4 BlendIndices, float4 BlendWeights)
{
    float sum = BlendWeights.x + BlendWeights.y + BlendWeights.z + BlendWeights.w;

    float4x3 mbones =
        Bones[BlendIndices.x] * (float)BlendWeights.x / sum +
        Bones[BlendIndices.y] * (float)BlendWeights.y / sum +
        Bones[BlendIndices.z] * (float)BlendWeights.z / sum +
        Bones[BlendIndices.w] * (float)BlendWeights.w / sum;

    return mbones;
}


struct VsInRigid_C1
{
    float3 Position : POSITION0;

       
     
    float4 Color: COLOR0; 
      
    
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

        
};

struct VsInSkinned_C1
{
    float3 Position : POSITION0;

       
     
    float4 Color: COLOR0; 
      
      

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_C1 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_C1 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

          
           

        output.Color = this.Color; 
           
           

        return output;
    }
};


struct VsInRigid_N_C1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
     
    float4 Color: COLOR0; 
      
    
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

    float3x3 GetTangentBasis()
    {
        float3 normalW = mul(float4(this.Normal, 0.0), World).xyz;
        normalW = normalize(normalW);
        return float3x3(float3(0, 0, 0), float3(0, 0, 0), normalW);
    }    
};

struct VsInSkinned_N_C1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
     
    float4 Color: COLOR0; 
      
      

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_N_C1 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_N_C1 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

        output.Normal = mul(float4(this.Normal, 0), mbones).xyz;  
           

        output.Color = this.Color; 
           
           

        return output;
    }
};


struct VsInRigid_NT_C1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
    float4 Tangent: Tangent0; 
    float4 Color: COLOR0; 
      
    
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

    float3x3 GetTangentBasis()
    {
        // https://github.com/KhronosGroup/glTF-Sample-Viewer/blob/35df3ff146e88cc585401db546fb9ee3366607d2/src/shaders/primitive.vert#L103

        float3 normalW = mul(float4(this.Normal, 0.0), World).xyz;
        float3 tangentW = mul(float4(this.Tangent.xyz, 0.0), World).xyz;

        normalW = normalize(normalW);
        tangentW = normalize(tangentW);

        float3 bitangentW = cross(normalW, tangentW) * this.Tangent.w;

        return float3x3(tangentW, bitangentW, normalW);
    }
        
};

struct VsInSkinned_NT_C1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
    float4 Tangent: Tangent0; 
    float4 Color: COLOR0; 
      
      

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_NT_C1 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_NT_C1 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

        output.Normal = mul(float4(this.Normal, 0), mbones).xyz;  
        float3 tgt = mul(float4(this.Tangent.xyz, 0), mbones).xyz;
        output.Tangent = float4(tgt, this.Tangent.w);   

        output.Color = this.Color; 
           
           

        return output;
    }
};


struct VsInRigid_UV1
{
    float3 Position : POSITION0;

       
     
     
    float2 TextureCoordinate0 : TEXCOORD0;  
    
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

        
};

struct VsInSkinned_UV1
{
    float3 Position : POSITION0;

       
     
     
    float2 TextureCoordinate0 : TEXCOORD0;  
      

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_UV1 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_UV1 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

          
           

         
        output.TextureCoordinate0 = this.TextureCoordinate0;   
           

        return output;
    }
};


struct VsInRigid_N_UV1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
     
     
    float2 TextureCoordinate0 : TEXCOORD0;  
    
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

    float3x3 GetTangentBasis()
    {
        float3 normalW = mul(float4(this.Normal, 0.0), World).xyz;
        normalW = normalize(normalW);
        return float3x3(float3(0, 0, 0), float3(0, 0, 0), normalW);
    }    
};

struct VsInSkinned_N_UV1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
     
     
    float2 TextureCoordinate0 : TEXCOORD0;  
      

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_N_UV1 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_N_UV1 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

        output.Normal = mul(float4(this.Normal, 0), mbones).xyz;  
           

         
        output.TextureCoordinate0 = this.TextureCoordinate0;   
           

        return output;
    }
};


struct VsInRigid_NT_UV1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
    float4 Tangent: Tangent0; 
     
    float2 TextureCoordinate0 : TEXCOORD0;  
    
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

    float3x3 GetTangentBasis()
    {
        // https://github.com/KhronosGroup/glTF-Sample-Viewer/blob/35df3ff146e88cc585401db546fb9ee3366607d2/src/shaders/primitive.vert#L103

        float3 normalW = mul(float4(this.Normal, 0.0), World).xyz;
        float3 tangentW = mul(float4(this.Tangent.xyz, 0.0), World).xyz;

        normalW = normalize(normalW);
        tangentW = normalize(tangentW);

        float3 bitangentW = cross(normalW, tangentW) * this.Tangent.w;

        return float3x3(tangentW, bitangentW, normalW);
    }
        
};

struct VsInSkinned_NT_UV1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
    float4 Tangent: Tangent0; 
     
    float2 TextureCoordinate0 : TEXCOORD0;  
      

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_NT_UV1 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_NT_UV1 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

        output.Normal = mul(float4(this.Normal, 0), mbones).xyz;  
        float3 tgt = mul(float4(this.Tangent.xyz, 0), mbones).xyz;
        output.Tangent = float4(tgt, this.Tangent.w);   

         
        output.TextureCoordinate0 = this.TextureCoordinate0;   
           

        return output;
    }
};


struct VsInRigid_C1_UV1
{
    float3 Position : POSITION0;

       
     
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
    
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

        
};

struct VsInSkinned_C1_UV1
{
    float3 Position : POSITION0;

       
     
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
      

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_C1_UV1 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_C1_UV1 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

          
           

        output.Color = this.Color; 
        output.TextureCoordinate0 = this.TextureCoordinate0;   
           

        return output;
    }
};


struct VsInRigid_N_C1_UV1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
     
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
    
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

    float3x3 GetTangentBasis()
    {
        float3 normalW = mul(float4(this.Normal, 0.0), World).xyz;
        normalW = normalize(normalW);
        return float3x3(float3(0, 0, 0), float3(0, 0, 0), normalW);
    }    
};

struct VsInSkinned_N_C1_UV1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
     
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
      

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_N_C1_UV1 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_N_C1_UV1 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

        output.Normal = mul(float4(this.Normal, 0), mbones).xyz;  
           

        output.Color = this.Color; 
        output.TextureCoordinate0 = this.TextureCoordinate0;   
           

        return output;
    }
};


struct VsInRigid_NT_C1_UV1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
    float4 Tangent: Tangent0; 
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
    
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

    float3x3 GetTangentBasis()
    {
        // https://github.com/KhronosGroup/glTF-Sample-Viewer/blob/35df3ff146e88cc585401db546fb9ee3366607d2/src/shaders/primitive.vert#L103

        float3 normalW = mul(float4(this.Normal, 0.0), World).xyz;
        float3 tangentW = mul(float4(this.Tangent.xyz, 0.0), World).xyz;

        normalW = normalize(normalW);
        tangentW = normalize(tangentW);

        float3 bitangentW = cross(normalW, tangentW) * this.Tangent.w;

        return float3x3(tangentW, bitangentW, normalW);
    }
        
};

struct VsInSkinned_NT_C1_UV1
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
    float4 Tangent: Tangent0; 
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
      

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_NT_C1_UV1 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_NT_C1_UV1 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

        output.Normal = mul(float4(this.Normal, 0), mbones).xyz;  
        float3 tgt = mul(float4(this.Tangent.xyz, 0), mbones).xyz;
        output.Tangent = float4(tgt, this.Tangent.w);   

        output.Color = this.Color; 
        output.TextureCoordinate0 = this.TextureCoordinate0;   
           

        return output;
    }
};


struct VsInRigid_C1_UV2
{
    float3 Position : POSITION0;

       
     
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
    float2 TextureCoordinate1 : TEXCOORD1;
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

        
};

struct VsInSkinned_C1_UV2
{
    float3 Position : POSITION0;

       
     
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
    float2 TextureCoordinate1 : TEXCOORD1;  

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_C1_UV2 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_C1_UV2 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

          
           

        output.Color = this.Color; 
        output.TextureCoordinate0 = this.TextureCoordinate0;   
        output.TextureCoordinate1 = this.TextureCoordinate1;   

        return output;
    }
};


struct VsInRigid_N_C1_UV2
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
     
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
    float2 TextureCoordinate1 : TEXCOORD1;
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

    float3x3 GetTangentBasis()
    {
        float3 normalW = mul(float4(this.Normal, 0.0), World).xyz;
        normalW = normalize(normalW);
        return float3x3(float3(0, 0, 0), float3(0, 0, 0), normalW);
    }    
};

struct VsInSkinned_N_C1_UV2
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
     
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
    float2 TextureCoordinate1 : TEXCOORD1;  

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_N_C1_UV2 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_N_C1_UV2 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

        output.Normal = mul(float4(this.Normal, 0), mbones).xyz;  
           

        output.Color = this.Color; 
        output.TextureCoordinate0 = this.TextureCoordinate0;   
        output.TextureCoordinate1 = this.TextureCoordinate1;   

        return output;
    }
};


struct VsInRigid_NT_C1_UV2
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
    float4 Tangent: Tangent0; 
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
    float2 TextureCoordinate1 : TEXCOORD1;
    float4 GetWorldPosition()
    {
        return mul(float4(this.Position, 1.0f), World);
    }

    float3x3 GetTangentBasis()
    {
        // https://github.com/KhronosGroup/glTF-Sample-Viewer/blob/35df3ff146e88cc585401db546fb9ee3366607d2/src/shaders/primitive.vert#L103

        float3 normalW = mul(float4(this.Normal, 0.0), World).xyz;
        float3 tangentW = mul(float4(this.Tangent.xyz, 0.0), World).xyz;

        normalW = normalize(normalW);
        tangentW = normalize(tangentW);

        float3 bitangentW = cross(normalW, tangentW) * this.Tangent.w;

        return float3x3(tangentW, bitangentW, normalW);
    }
        
};

struct VsInSkinned_NT_C1_UV2
{
    float3 Position : POSITION0;

    float3 Normal : Normal0;   
    float4 Tangent: Tangent0; 
    float4 Color: COLOR0; 
    float2 TextureCoordinate0 : TEXCOORD0;  
    float2 TextureCoordinate1 : TEXCOORD1;  

    uint4 BlendIndices : BLENDINDICES0;
    float4 BlendWeights : BLENDWEIGHT0;

    VsInRigid_NT_C1_UV2 GetTransformedByBones()    
    {
        float4x3 mbones = CalculateBoneMatrix(this.BlendIndices, this.BlendWeights);

        VsInRigid_NT_C1_UV2 output;

        output.Position = mul(float4(this.Position, 1.0f), mbones).xyz;

        output.Normal = mul(float4(this.Normal, 0), mbones).xyz;  
        float3 tgt = mul(float4(this.Tangent.xyz, 0), mbones).xyz;
        output.Tangent = float4(tgt, this.Tangent.w);   

        output.Color = this.Color; 
        output.TextureCoordinate0 = this.TextureCoordinate0;   
        output.TextureCoordinate1 = this.TextureCoordinate1;   

        return output;
    }
};




