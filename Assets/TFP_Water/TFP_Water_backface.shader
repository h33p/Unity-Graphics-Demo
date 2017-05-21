// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:1,olmd:1,culm:1,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.6768491,fgcg:0.7551224,fgcb:0.7867647,fgca:1,fgde:0.0002,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9546,x:32719,y:32712,varname:node_9546,prsc:2|normal-2586-OUT,alpha-5505-OUT,refract-3004-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9224,x:28923,y:34132,ptovrint:False,ptlb:Wave01,ptin:_Wave01,varname:node_9224,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:1217,x:29174,y:34194,varname:node_1217,prsc:2,ntxv:0,isnm:False|UVIN-3941-UVOUT,TEX-9224-TEX;n:type:ShaderForge.SFN_ComponentMask,id:1661,x:31861,y:33520,varname:node_1661,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9657-OUT;n:type:ShaderForge.SFN_Multiply,id:3004,x:32118,y:33518,varname:node_3004,prsc:2|A-1661-OUT,B-4295-OUT,C-6667-OUT;n:type:ShaderForge.SFN_Slider,id:4295,x:31644,y:33729,ptovrint:False,ptlb:Refraction Amount,ptin:_RefractionAmount,varname:node_4295,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05,max:0.1;n:type:ShaderForge.SFN_Panner,id:3941,x:28276,y:34241,varname:node_3941,prsc:2,spu:0.05,spv:0|UVIN-500-OUT;n:type:ShaderForge.SFN_TexCoord,id:9273,x:27916,y:34241,varname:node_9273,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ObjectScale,id:6865,x:27707,y:34529,varname:node_6865,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:500,x:28101,y:34241,varname:node_500,prsc:2|A-9273-UVOUT,B-6865-X;n:type:ShaderForge.SFN_Panner,id:9630,x:28284,y:34758,varname:node_9630,prsc:2,spu:-0.05,spv:-0.05|UVIN-3219-OUT;n:type:ShaderForge.SFN_TexCoord,id:2171,x:27924,y:34761,varname:node_2171,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:3219,x:28113,y:34761,varname:node_3219,prsc:2|A-2171-UVOUT,B-6865-X;n:type:ShaderForge.SFN_Add,id:9510,x:29520,y:34521,varname:node_9510,prsc:2|A-1217-RGB,B-5571-RGB;n:type:ShaderForge.SFN_Relay,id:825,x:30741,y:33367,varname:node_825,prsc:2|IN-9510-OUT;n:type:ShaderForge.SFN_Tex2d,id:5571,x:29199,y:34841,varname:node_5571,prsc:2,ntxv:0,isnm:False|UVIN-9630-UVOUT,TEX-9920-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9920,x:28954,y:34841,ptovrint:False,ptlb:Wave02,ptin:_Wave02,varname:_Wave02,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2dAsset,id:4617,x:29123,y:33345,ptovrint:False,ptlb:Water01,ptin:_Water01,varname:node_4617,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:90ff426733b42774fa4fb464cc68b2c9,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2dAsset,id:6031,x:29123,y:33556,ptovrint:False,ptlb:Water02,ptin:_Water02,varname:_Water02,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e13418555c7b85443a784514bbec2574,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:5329,x:29308,y:33345,varname:node_5329,prsc:2,tex:90ff426733b42774fa4fb464cc68b2c9,ntxv:0,isnm:False|UVIN-8616-UVOUT,TEX-4617-TEX;n:type:ShaderForge.SFN_Tex2d,id:6790,x:29308,y:33556,varname:node_6790,prsc:2,tex:e13418555c7b85443a784514bbec2574,ntxv:0,isnm:False|UVIN-7137-UVOUT,TEX-6031-TEX;n:type:ShaderForge.SFN_Add,id:4906,x:29539,y:33460,varname:node_4906,prsc:2|A-5329-RGB,B-6790-RGB;n:type:ShaderForge.SFN_Relay,id:1214,x:30741,y:33312,varname:node_1214,prsc:2|IN-4906-OUT;n:type:ShaderForge.SFN_Panner,id:8616,x:28265,y:33346,varname:node_8616,prsc:2,spu:0,spv:0.12|UVIN-8274-OUT;n:type:ShaderForge.SFN_TexCoord,id:5922,x:27905,y:33346,varname:node_5922,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ObjectScale,id:2354,x:27757,y:33537,varname:node_2354,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:8274,x:28090,y:33346,varname:node_8274,prsc:2|A-5922-UVOUT,B-2354-X,C-3186-OUT;n:type:ShaderForge.SFN_Panner,id:7137,x:28257,y:33687,varname:node_7137,prsc:2,spu:0.12,spv:-0.12|UVIN-1596-OUT;n:type:ShaderForge.SFN_TexCoord,id:9179,x:27897,y:33690,varname:node_9179,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1596,x:28086,y:33690,varname:node_1596,prsc:2|A-9179-UVOUT,B-2354-X,C-3186-OUT;n:type:ShaderForge.SFN_Lerp,id:7308,x:31179,y:33086,varname:node_7308,prsc:2|A-1214-OUT,B-825-OUT,T-3613-OUT;n:type:ShaderForge.SFN_Vector1,id:3613,x:30954,y:33281,varname:node_3613,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Panner,id:6613,x:28306,y:35355,varname:node_6613,prsc:2,spu:0.012,spv:0.008|UVIN-1630-OUT;n:type:ShaderForge.SFN_TexCoord,id:8849,x:27770,y:35355,varname:node_8849,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ObjectScale,id:3252,x:27946,y:35510,varname:node_3252,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:1630,x:28128,y:35355,varname:node_1630,prsc:2|A-8849-UVOUT,B-3252-X,C-250-OUT;n:type:ShaderForge.SFN_Panner,id:1139,x:28314,y:35872,varname:node_1139,prsc:2,spu:-0.01,spv:0|UVIN-161-OUT;n:type:ShaderForge.SFN_TexCoord,id:9812,x:27761,y:35871,varname:node_9812,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ObjectScale,id:1824,x:27954,y:36030,varname:node_1824,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:161,x:28143,y:35875,varname:node_161,prsc:2|A-9812-UVOUT,B-3252-X,C-250-OUT;n:type:ShaderForge.SFN_Vector1,id:250,x:27772,y:35716,varname:node_250,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Add,id:3547,x:29464,y:35645,varname:node_3547,prsc:2|A-4224-RGB,B-8785-RGB;n:type:ShaderForge.SFN_Tex2d,id:4224,x:29233,y:35313,varname:node_4224,prsc:2,ntxv:0,isnm:False|UVIN-6613-UVOUT,TEX-9224-TEX;n:type:ShaderForge.SFN_Tex2d,id:8785,x:29216,y:35968,varname:node_8785,prsc:2,ntxv:0,isnm:False|UVIN-1139-UVOUT,TEX-9920-TEX;n:type:ShaderForge.SFN_Vector1,id:3186,x:27582,y:33582,varname:node_3186,prsc:2,v1:5;n:type:ShaderForge.SFN_Relay,id:6911,x:30741,y:33425,varname:node_6911,prsc:2|IN-3547-OUT;n:type:ShaderForge.SFN_Lerp,id:2586,x:31378,y:33086,varname:node_2586,prsc:2|A-7308-OUT,B-6911-OUT,T-2869-OUT;n:type:ShaderForge.SFN_Lerp,id:2543,x:31362,y:33525,varname:node_2543,prsc:2|A-1214-OUT,B-825-OUT,T-5194-OUT;n:type:ShaderForge.SFN_Vector1,id:5194,x:31127,y:33664,varname:node_5194,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Lerp,id:9657,x:31559,y:33525,varname:node_9657,prsc:2|A-2543-OUT,B-6911-OUT,T-7619-OUT;n:type:ShaderForge.SFN_Vector1,id:7619,x:31127,y:33734,varname:node_7619,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Vector1,id:2869,x:31179,y:33281,varname:node_2869,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5505,x:32245,y:32971,varname:node_5505,prsc:2,v1:0;n:type:ShaderForge.SFN_DepthBlend,id:6667,x:31864,y:33976,varname:node_6667,prsc:2|DIST-8605-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8605,x:31604,y:33958,ptovrint:False,ptlb:Depth Refraction Blend,ptin:_DepthRefractionBlend,varname:node_8605,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;proporder:4617-9224-6031-9920-4295-8605;pass:END;sub:END;*/

Shader "TFP/TFP_Water_backface" {
    Properties {
        _Water01 ("Water01", 2D) = "bump" {}
        _Wave01 ("Wave01", 2D) = "bump" {}
        _Water02 ("Water02", 2D) = "bump" {}
        _Wave02 ("Wave02", 2D) = "bump" {}
        _RefractionAmount ("Refraction Amount", Range(0, 0.1)) = 0.05
        _DepthRefractionBlend ("Depth Refraction Blend", Float ) = 2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Front
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Wave01; uniform float4 _Wave01_ST;
            uniform float _RefractionAmount;
            uniform sampler2D _Wave02; uniform float4 _Wave02_ST;
            uniform sampler2D _Water01; uniform float4 _Water01_ST;
            uniform sampler2D _Water02; uniform float4 _Water02_ST;
            uniform float _DepthRefractionBlend;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(-v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float4 node_2305 = _Time + _TimeEditor;
                float node_3186 = 5.0;
                float2 node_8616 = ((i.uv0*objScale.r*node_3186)+node_2305.g*float2(0,0.12));
                float3 node_5329 = UnpackNormal(tex2D(_Water01,TRANSFORM_TEX(node_8616, _Water01)));
                float2 node_7137 = ((i.uv0*objScale.r*node_3186)+node_2305.g*float2(0.12,-0.12));
                float3 node_6790 = UnpackNormal(tex2D(_Water02,TRANSFORM_TEX(node_7137, _Water02)));
                float3 node_1214 = (node_5329.rgb+node_6790.rgb);
                float2 node_3941 = ((i.uv0*objScale.r)+node_2305.g*float2(0.05,0));
                float3 node_1217 = UnpackNormal(tex2D(_Wave01,TRANSFORM_TEX(node_3941, _Wave01)));
                float2 node_9630 = ((i.uv0*objScale.r)+node_2305.g*float2(-0.05,-0.05));
                float3 node_5571 = UnpackNormal(tex2D(_Wave02,TRANSFORM_TEX(node_9630, _Wave02)));
                float3 node_825 = (node_1217.rgb+node_5571.rgb);
                float node_250 = 0.1;
                float2 node_6613 = ((i.uv0*objScale.r*node_250)+node_2305.g*float2(0.012,0.008));
                float3 node_4224 = UnpackNormal(tex2D(_Wave01,TRANSFORM_TEX(node_6613, _Wave01)));
                float2 node_1139 = ((i.uv0*objScale.r*node_250)+node_2305.g*float2(-0.01,0));
                float3 node_8785 = UnpackNormal(tex2D(_Wave02,TRANSFORM_TEX(node_1139, _Wave02)));
                float3 node_6911 = (node_4224.rgb+node_8785.rgb);
                float3 normalLocal = lerp(lerp(node_1214,node_825,0.7),node_6911,0.0);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (lerp(lerp(node_1214,node_825,0.7),node_6911,0.1).rg*_RefractionAmount*saturate((sceneZ-partZ)/_DepthRefractionBlend));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,0.0),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
