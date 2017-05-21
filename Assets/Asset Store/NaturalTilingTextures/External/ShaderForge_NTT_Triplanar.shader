// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:631,x:33060,y:32712,varname:node_631,prsc:2|diff-5963-OUT,spec-5465-OUT,gloss-6942-OUT,normal-670-OUT,difocc-41-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2451,x:31858,y:32851,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_2451,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1427,x:32375,y:32400,varname:node_1427,prsc:2,ntxv:0,isnm:False|UVIN-6696-OUT,TEX-2451-TEX;n:type:ShaderForge.SFN_Vector1,id:5465,x:32709,y:32658,varname:node_5465,prsc:2,v1:0;n:type:ShaderForge.SFN_FragmentPosition,id:4428,x:31431,y:32506,varname:node_4428,prsc:2;n:type:ShaderForge.SFN_Append,id:8268,x:31828,y:32402,varname:node_8268,prsc:2|A-4428-Y,B-4428-Z;n:type:ShaderForge.SFN_Append,id:5109,x:31828,y:32546,varname:node_5109,prsc:2|A-4428-Z,B-4428-X;n:type:ShaderForge.SFN_Append,id:312,x:31822,y:32677,varname:node_312,prsc:2|A-4428-X,B-4428-Y;n:type:ShaderForge.SFN_Tex2d,id:2255,x:32385,y:32523,varname:node_2255,prsc:2,ntxv:0,isnm:False|UVIN-3171-OUT,TEX-2451-TEX;n:type:ShaderForge.SFN_Tex2d,id:4657,x:32372,y:32672,varname:node_4657,prsc:2,ntxv:0,isnm:False|UVIN-4158-OUT,TEX-2451-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:5963,x:32612,y:32539,varname:node_5963,prsc:2,chbt:0|M-6681-OUT,R-1427-RGB,G-2255-RGB,B-4657-RGB;n:type:ShaderForge.SFN_NormalVector,id:7001,x:32072,y:32245,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:6114,x:32280,y:32268,varname:node_6114,prsc:2|IN-7001-OUT;n:type:ShaderForge.SFN_Multiply,id:6681,x:32473,y:32265,varname:node_6681,prsc:2|A-6114-OUT,B-6114-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2513,x:31875,y:33057,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_2513,glob:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7230,x:32372,y:32830,varname:node_7230,prsc:2,ntxv:0,isnm:False|UVIN-6696-OUT,TEX-2513-TEX;n:type:ShaderForge.SFN_Tex2d,id:1521,x:32372,y:32994,varname:node_1521,prsc:2,ntxv:0,isnm:False|UVIN-3171-OUT,TEX-2513-TEX;n:type:ShaderForge.SFN_Tex2d,id:1822,x:32359,y:33146,varname:node_1822,prsc:2,ntxv:0,isnm:False|UVIN-4158-OUT,TEX-2513-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:670,x:32632,y:32804,varname:node_670,prsc:2,chbt:0|M-6681-OUT,R-7230-RGB,G-1521-RGB,B-1822-RGB;n:type:ShaderForge.SFN_Multiply,id:6696,x:32111,y:32392,varname:node_6696,prsc:2|A-4660-OUT,B-8268-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7807,x:31726,y:32215,ptovrint:False,ptlb:Scale_U,ptin:_Scale_U,varname:node_7807,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8672,x:31726,y:32290,ptovrint:False,ptlb:Scale_V,ptin:_Scale_V,varname:node_8672,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Append,id:4660,x:31906,y:32246,varname:node_4660,prsc:2|A-7807-OUT,B-8672-OUT;n:type:ShaderForge.SFN_Multiply,id:3171,x:32111,y:32518,varname:node_3171,prsc:2|A-4660-OUT,B-5109-OUT;n:type:ShaderForge.SFN_Multiply,id:4158,x:32111,y:32654,varname:node_4158,prsc:2|A-4660-OUT,B-312-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5622,x:31874,y:33309,ptovrint:False,ptlb:Occlusion,ptin:_Occlusion,varname:node_5622,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1408,x:32359,y:33294,varname:node_1408,prsc:2,ntxv:0,isnm:False|UVIN-6696-OUT,TEX-5622-TEX;n:type:ShaderForge.SFN_Tex2d,id:6662,x:32359,y:33456,varname:node_6662,prsc:2,ntxv:0,isnm:False|UVIN-3171-OUT,TEX-5622-TEX;n:type:ShaderForge.SFN_Tex2d,id:905,x:32344,y:33642,varname:node_905,prsc:2,ntxv:0,isnm:False|UVIN-4158-OUT,TEX-5622-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:41,x:32626,y:33075,varname:node_41,prsc:2,chbt:0|M-6681-OUT,R-1408-R,G-6662-R,B-905-R;n:type:ShaderForge.SFN_ValueProperty,id:6942,x:32784,y:32744,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_6942,prsc:2,glob:False,v1:0.25;proporder:2451-2513-7807-8672-5622-6942;pass:END;sub:END;*/

Shader "Shader Forge/ShaderForge_NTT_Triplanar" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Scale_U ("Scale_U", Float ) = 1
        _Scale_V ("Scale_V", Float ) = 1
        _Occlusion ("Occlusion", 2D) = "white" {}
        _Gloss ("Gloss", Float ) = 0.25
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Scale_U;
            uniform float _Scale_V;
            uniform sampler2D _Occlusion; uniform float4 _Occlusion_ST;
            uniform float _Gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
            #endif
            #ifdef DYNAMICLIGHTMAP_ON
                o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
            #endif
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = UnityObjectToClipPos(v.vertex);
            UNITY_TRANSFER_FOG(o,o.pos);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            i.normalDir = normalize(i.normalDir);
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 node_6114 = abs(i.normalDir);
            float3 node_6681 = (node_6114*node_6114);
            float2 node_4660 = float2(_Scale_U,_Scale_V);
            float2 node_6696 = (node_4660*float2(i.posWorld.g,i.posWorld.b));
            float3 node_7230 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_6696, _Normal)));
            float2 node_3171 = (node_4660*float2(i.posWorld.b,i.posWorld.r));
            float3 node_1521 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_3171, _Normal)));
            float2 node_4158 = (node_4660*float2(i.posWorld.r,i.posWorld.g));
            float3 node_1822 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_4158, _Normal)));
            float3 normalLocal = (node_6681.r*node_7230.rgb + node_6681.g*node_1521.rgb + node_6681.b*node_1822.rgb);
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
            float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float gloss = _Gloss;
            float specPow = exp2( gloss * 10.0+1.0);
/// GI Data:
            UnityLight light;
            #ifdef LIGHTMAP_OFF
                light.color = lightColor;
                light.dir = lightDirection;
                light.ndotl = LambertTerm (normalDirection, light.dir);
            #else
                light.color = half3(0.f, 0.f, 0.f);
                light.ndotl = 0.0f;
                light.dir = half3(0.f, 0.f, 0.f);
            #endif
            UnityGIInput d;
            d.light = light;
            d.worldPos = i.posWorld.xyz;
            d.worldViewDir = viewDirection;
            d.atten = attenuation;
            #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                d.ambient = 0;
                d.lightmapUV = i.ambientOrLightmapUV;
            #else
                d.ambient = i.ambientOrLightmapUV;
            #endif
            d.boxMax[0] = unity_SpecCube0_BoxMax;
            d.boxMin[0] = unity_SpecCube0_BoxMin;
            d.probePosition[0] = unity_SpecCube0_ProbePosition;
            d.probeHDR[0] = unity_SpecCube0_HDR;
            d.boxMax[1] = unity_SpecCube1_BoxMax;
            d.boxMin[1] = unity_SpecCube1_BoxMin;
            d.probePosition[1] = unity_SpecCube1_ProbePosition;
            d.probeHDR[1] = unity_SpecCube1_HDR;
            UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
            lightDirection = gi.light.dir;
            lightColor = gi.light.color;
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float4 node_1427 = tex2D(_MainTex,TRANSFORM_TEX(node_6696, _MainTex));
            float4 node_2255 = tex2D(_MainTex,TRANSFORM_TEX(node_3171, _MainTex));
            float4 node_4657 = tex2D(_MainTex,TRANSFORM_TEX(node_4158, _MainTex));
            float3 diffuseColor = (node_6681.r*node_1427.rgb + node_6681.g*node_2255.rgb + node_6681.b*node_4657.rgb); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, 0.0, specularColor, specularMonochrome );
            specularMonochrome = 1-specularMonochrome;
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            half grazingTerm = saturate( gloss + specularMonochrome );
            float3 indirectSpecular = (gi.indirect.specular);
            indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
            float3 specular = (directSpecular + indirectSpecular);
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
            float3 indirectDiffuse = float3(0,0,0);
            indirectDiffuse += gi.indirect.diffuse;
            float4 node_1408 = tex2D(_Occlusion,TRANSFORM_TEX(node_6696, _Occlusion));
            float4 node_6662 = tex2D(_Occlusion,TRANSFORM_TEX(node_3171, _Occlusion));
            float4 node_905 = tex2D(_Occlusion,TRANSFORM_TEX(node_4158, _Occlusion));
            indirectDiffuse *= (node_6681.r*node_1408.r + node_6681.g*node_6662.r + node_6681.b*node_905.r); // Diffuse AO
            float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
            fixed4 finalRGBA = fixed4(finalColor,1);
            UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
            return finalRGBA;
        }
        ENDCG
    }
    Pass {
        Name "FORWARD_DELTA"
        Tags {
            "LightMode"="ForwardAdd"
        }
        Blend One One
        
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_FORWARDADD
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #define _GLOSSYENV 1
        #include "UnityCG.cginc"
        #include "AutoLight.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #pragma multi_compile_fwdadd_fullshadows
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers gles gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
        uniform sampler2D _Normal; uniform float4 _Normal_ST;
        uniform float _Scale_U;
        uniform float _Scale_V;
        uniform float _Gloss;
        struct VertexInput {
            float4 vertex : POSITION;
            float3 normal : NORMAL;
            float4 tangent : TANGENT;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv1 : TEXCOORD0;
            float2 uv2 : TEXCOORD1;
            float4 posWorld : TEXCOORD2;
            float3 normalDir : TEXCOORD3;
            float3 tangentDir : TEXCOORD4;
            float3 bitangentDir : TEXCOORD5;
            LIGHTING_COORDS(6,7)
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = UnityObjectToClipPos(v.vertex);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            i.normalDir = normalize(i.normalDir);
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 node_6114 = abs(i.normalDir);
            float3 node_6681 = (node_6114*node_6114);
            float2 node_4660 = float2(_Scale_U,_Scale_V);
            float2 node_6696 = (node_4660*float2(i.posWorld.g,i.posWorld.b));
            float3 node_7230 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_6696, _Normal)));
            float2 node_3171 = (node_4660*float2(i.posWorld.b,i.posWorld.r));
            float3 node_1521 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_3171, _Normal)));
            float2 node_4158 = (node_4660*float2(i.posWorld.r,i.posWorld.g));
            float3 node_1822 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_4158, _Normal)));
            float3 normalLocal = (node_6681.r*node_7230.rgb + node_6681.g*node_1521.rgb + node_6681.b*node_1822.rgb);
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float gloss = _Gloss;
            float specPow = exp2( gloss * 10.0+1.0);
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float LdotH = max(0.0,dot(lightDirection, halfDirection));
            float4 node_1427 = tex2D(_MainTex,TRANSFORM_TEX(node_6696, _MainTex));
            float4 node_2255 = tex2D(_MainTex,TRANSFORM_TEX(node_3171, _MainTex));
            float4 node_4657 = tex2D(_MainTex,TRANSFORM_TEX(node_4158, _MainTex));
            float3 diffuseColor = (node_6681.r*node_1427.rgb + node_6681.g*node_2255.rgb + node_6681.b*node_4657.rgb); // Need this for specular when using metallic
            float specularMonochrome;
            float3 specularColor;
            diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, 0.0, specularColor, specularMonochrome );
            specularMonochrome = 1-specularMonochrome;
            float NdotV = max(0.0,dot( normalDirection, viewDirection ));
            float NdotH = max(0.0,dot( normalDirection, halfDirection ));
            float VdotH = max(0.0,dot( viewDirection, halfDirection ));
            float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
            float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
            float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
            float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
            float3 specular = directSpecular;
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
            float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
            float3 diffuse = directDiffuse * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
            return fixed4(finalColor * 1,0);
        }
        ENDCG
    }
    Pass {
        Name "Meta"
        Tags {
            "LightMode"="Meta"
        }
        Cull Off
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_META 1
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #define _GLOSSYENV 1
        #include "UnityCG.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #include "UnityMetaPass.cginc"
        #pragma fragmentoption ARB_precision_hint_fastest
        #pragma multi_compile_shadowcaster
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers gles gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
        uniform float _Scale_U;
        uniform float _Scale_V;
        uniform float _Gloss;
        struct VertexInput {
            float4 vertex : POSITION;
            float3 normal : NORMAL;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv1 : TEXCOORD0;
            float2 uv2 : TEXCOORD1;
            float4 posWorld : TEXCOORD2;
            float3 normalDir : TEXCOORD3;
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.posWorld = mul(unity_ObjectToWorld, v.vertex);
            o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
            return o;
        }
        float4 frag(VertexOutput i) : SV_Target {
            i.normalDir = normalize(i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 normalDirection = i.normalDir;
            UnityMetaInput o;
            UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
            
            o.Emission = 0;
            
            float3 node_6114 = abs(i.normalDir);
            float3 node_6681 = (node_6114*node_6114);
            float2 node_4660 = float2(_Scale_U,_Scale_V);
            float2 node_6696 = (node_4660*float2(i.posWorld.g,i.posWorld.b));
            float4 node_1427 = tex2D(_MainTex,TRANSFORM_TEX(node_6696, _MainTex));
            float2 node_3171 = (node_4660*float2(i.posWorld.b,i.posWorld.r));
            float4 node_2255 = tex2D(_MainTex,TRANSFORM_TEX(node_3171, _MainTex));
            float2 node_4158 = (node_4660*float2(i.posWorld.r,i.posWorld.g));
            float4 node_4657 = tex2D(_MainTex,TRANSFORM_TEX(node_4158, _MainTex));
            float3 diffColor = (node_6681.r*node_1427.rgb + node_6681.g*node_2255.rgb + node_6681.b*node_4657.rgb);
            float specularMonochrome;
            float3 specColor;
            diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
            float roughness = 1.0 - _Gloss;
            o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
            
            return UnityMetaFragment( o );
        }
        ENDCG
    }
}
FallBack "Diffuse"
CustomEditor "ShaderForgeMaterialInspector"
}
