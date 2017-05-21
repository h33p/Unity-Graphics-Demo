// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:1,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.6768491,fgcg:0.7551224,fgcb:0.7867647,fgca:1,fgde:0.0002,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9546,x:32719,y:32712,varname:node_9546,prsc:2|diff-7848-OUT,spec-7750-OUT,normal-2586-OUT,transm-9862-OUT,lwrap-9862-OUT,alpha-5707-OUT,refract-6120-OUT;n:type:ShaderForge.SFN_DepthBlend,id:9386,x:29480,y:32935,varname:node_9386,prsc:2|DIST-584-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9224,x:28923,y:34132,ptovrint:False,ptlb:Wave01,ptin:_Wave01,varname:node_9224,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:1217,x:29204,y:34218,varname:node_1217,prsc:2,ntxv:0,isnm:False|UVIN-3941-UVOUT,TEX-9224-TEX;n:type:ShaderForge.SFN_ComponentMask,id:1661,x:31861,y:33520,varname:node_1661,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9657-OUT;n:type:ShaderForge.SFN_Multiply,id:3004,x:32118,y:33518,varname:node_3004,prsc:2|A-1661-OUT,B-8711-OUT;n:type:ShaderForge.SFN_Slider,id:4295,x:31644,y:33729,ptovrint:False,ptlb:Refraction Amount,ptin:_RefractionAmount,varname:node_4295,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05,max:0.1;n:type:ShaderForge.SFN_ValueProperty,id:584,x:29225,y:32940,ptovrint:False,ptlb:Shore Blend,ptin:_ShoreBlend,varname:node_584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:6;n:type:ShaderForge.SFN_Color,id:46,x:30539,y:32226,ptovrint:False,ptlb:Fog Color,ptin:_FogColor,varname:node_46,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.282353,c2:0.6196079,c3:0.5764706,c4:1;n:type:ShaderForge.SFN_Multiply,id:9,x:31271,y:32413,varname:node_9,prsc:2|A-6788-OUT,B-9907-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7834,x:31480,y:31502,ptovrint:False,ptlb:ReflectionTex,ptin:_ReflectionTex,varname:node_7834,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2327,x:31696,y:31519,varname:node_2327,prsc:2,ntxv:0,isnm:False|UVIN-4393-UVOUT,TEX-7834-TEX;n:type:ShaderForge.SFN_Vector1,id:7750,x:32245,y:32677,varname:node_7750,prsc:2,v1:0.02;n:type:ShaderForge.SFN_Vector1,id:2259,x:32245,y:32736,varname:node_2259,prsc:2,v1:0;n:type:ShaderForge.SFN_ScreenPos,id:4393,x:31480,y:31333,varname:node_4393,prsc:2,sctp:2;n:type:ShaderForge.SFN_Panner,id:3941,x:28276,y:34241,varname:node_3941,prsc:2,spu:0.05,spv:0|UVIN-500-OUT;n:type:ShaderForge.SFN_TexCoord,id:9273,x:27916,y:34241,varname:node_9273,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ObjectScale,id:6865,x:27707,y:34529,varname:node_6865,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:500,x:28101,y:34241,varname:node_500,prsc:2|A-9273-UVOUT,B-6865-X;n:type:ShaderForge.SFN_DepthBlend,id:8436,x:31848,y:33885,varname:node_8436,prsc:2|DIST-3322-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3322,x:31653,y:33885,ptovrint:False,ptlb:Depth Refraction Blend ,ptin:_DepthRefractionBlend,varname:_DepthBlend_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Fresnel,id:1447,x:31696,y:31662,varname:node_1447,prsc:2|EXP-2946-OUT;n:type:ShaderForge.SFN_Multiply,id:3357,x:31937,y:31607,varname:node_3357,prsc:2|A-2327-RGB,B-1447-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2946,x:31417,y:31723,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_2946,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Panner,id:9630,x:28284,y:34758,varname:node_9630,prsc:2,spu:-0.05,spv:-0.05|UVIN-3219-OUT;n:type:ShaderForge.SFN_TexCoord,id:2171,x:27924,y:34761,varname:node_2171,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:3219,x:28113,y:34761,varname:node_3219,prsc:2|A-2171-UVOUT,B-6865-X;n:type:ShaderForge.SFN_Add,id:9510,x:29520,y:34521,varname:node_9510,prsc:2|A-1217-RGB,B-5571-RGB;n:type:ShaderForge.SFN_Relay,id:825,x:30741,y:33367,varname:node_825,prsc:2|IN-3068-OUT;n:type:ShaderForge.SFN_Tex2d,id:5571,x:29199,y:34841,varname:node_5571,prsc:2,ntxv:0,isnm:False|UVIN-9630-UVOUT,TEX-9920-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9920,x:28954,y:34841,ptovrint:False,ptlb:Wave02,ptin:_Wave02,varname:_Wave02,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2dAsset,id:4617,x:29121,y:33345,ptovrint:False,ptlb:Water01,ptin:_Water01,varname:node_4617,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:90ff426733b42774fa4fb464cc68b2c9,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2dAsset,id:6031,x:29121,y:33556,ptovrint:False,ptlb:Water02,ptin:_Water02,varname:_Water02,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e13418555c7b85443a784514bbec2574,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:5329,x:29336,y:33225,varname:node_5329,prsc:2,tex:90ff426733b42774fa4fb464cc68b2c9,ntxv:0,isnm:False|UVIN-8616-UVOUT,TEX-4617-TEX;n:type:ShaderForge.SFN_Tex2d,id:6790,x:29306,y:33556,varname:node_6790,prsc:2,tex:e13418555c7b85443a784514bbec2574,ntxv:0,isnm:False|UVIN-7137-UVOUT,TEX-6031-TEX;n:type:ShaderForge.SFN_Add,id:4906,x:29638,y:33404,varname:node_4906,prsc:2|A-5329-RGB,B-6790-RGB;n:type:ShaderForge.SFN_Relay,id:1214,x:30741,y:33312,varname:node_1214,prsc:2|IN-1396-OUT;n:type:ShaderForge.SFN_Panner,id:8616,x:28263,y:33346,varname:node_8616,prsc:2,spu:0,spv:0.12|UVIN-8274-OUT;n:type:ShaderForge.SFN_TexCoord,id:5922,x:27903,y:33346,varname:node_5922,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ObjectScale,id:2354,x:27755,y:33537,varname:node_2354,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:8274,x:28088,y:33346,varname:node_8274,prsc:2|A-5922-UVOUT,B-2354-X,C-3186-OUT;n:type:ShaderForge.SFN_Panner,id:7137,x:28255,y:33687,varname:node_7137,prsc:2,spu:0.12,spv:-0.12|UVIN-1596-OUT;n:type:ShaderForge.SFN_TexCoord,id:9179,x:27895,y:33690,varname:node_9179,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1596,x:28084,y:33690,varname:node_1596,prsc:2|A-9179-UVOUT,B-2354-X,C-3186-OUT;n:type:ShaderForge.SFN_Lerp,id:7308,x:31179,y:33086,varname:node_7308,prsc:2|A-1214-OUT,B-825-OUT,T-3613-OUT;n:type:ShaderForge.SFN_Vector1,id:3613,x:30954,y:33281,varname:node_3613,prsc:2,v1:0.7;n:type:ShaderForge.SFN_DepthBlend,id:9907,x:30871,y:32441,varname:node_9907,prsc:2|DIST-915-OUT;n:type:ShaderForge.SFN_ValueProperty,id:915,x:30389,y:32456,ptovrint:False,ptlb:Fog Height,ptin:_FogHeight,varname:node_915,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Blend,id:7848,x:32202,y:32396,varname:node_7848,prsc:2,blmd:6,clmp:True|SRC-7714-OUT,DST-9-OUT;n:type:ShaderForge.SFN_Panner,id:6613,x:28306,y:35355,varname:node_6613,prsc:2,spu:0.012,spv:0.008|UVIN-1630-OUT;n:type:ShaderForge.SFN_TexCoord,id:8849,x:27770,y:35355,varname:node_8849,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ObjectScale,id:3252,x:27946,y:35510,varname:node_3252,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:1630,x:28128,y:35355,varname:node_1630,prsc:2|A-8849-UVOUT,B-3252-X,C-250-OUT;n:type:ShaderForge.SFN_Panner,id:1139,x:28314,y:35872,varname:node_1139,prsc:2,spu:-0.01,spv:0|UVIN-161-OUT;n:type:ShaderForge.SFN_TexCoord,id:9812,x:27761,y:35871,varname:node_9812,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ObjectScale,id:1824,x:27954,y:36030,varname:node_1824,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:161,x:28143,y:35875,varname:node_161,prsc:2|A-9812-UVOUT,B-3252-X,C-250-OUT;n:type:ShaderForge.SFN_Vector1,id:250,x:27772,y:35716,varname:node_250,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Add,id:3547,x:29464,y:35645,varname:node_3547,prsc:2|A-4224-RGB,B-8785-RGB;n:type:ShaderForge.SFN_Tex2d,id:4224,x:29233,y:35313,varname:node_4224,prsc:2,ntxv:0,isnm:False|UVIN-6613-UVOUT,TEX-9224-TEX;n:type:ShaderForge.SFN_Tex2d,id:8785,x:29216,y:35968,varname:node_8785,prsc:2,ntxv:0,isnm:False|UVIN-1139-UVOUT,TEX-9920-TEX;n:type:ShaderForge.SFN_Vector1,id:3186,x:27580,y:33582,varname:node_3186,prsc:2,v1:5;n:type:ShaderForge.SFN_Relay,id:6911,x:30741,y:33425,varname:node_6911,prsc:2|IN-3547-OUT;n:type:ShaderForge.SFN_Lerp,id:2586,x:31378,y:33086,varname:node_2586,prsc:2|A-7308-OUT,B-6911-OUT,T-2869-OUT;n:type:ShaderForge.SFN_Lerp,id:2543,x:31362,y:33525,varname:node_2543,prsc:2|A-1214-OUT,B-825-OUT,T-5194-OUT;n:type:ShaderForge.SFN_Vector1,id:5194,x:31127,y:33664,varname:node_5194,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Lerp,id:9657,x:31559,y:33525,varname:node_9657,prsc:2|A-2543-OUT,B-6911-OUT,T-7619-OUT;n:type:ShaderForge.SFN_Vector1,id:7619,x:31127,y:33734,varname:node_7619,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Vector1,id:9862,x:32232,y:32953,varname:node_9862,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2869,x:31179,y:33281,varname:node_2869,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Tex2d,id:3028,x:29878,y:31157,varname:node_3028,prsc:2,ntxv:0,isnm:False|UVIN-9630-UVOUT,TEX-1804-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1804,x:29695,y:31157,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:node_1804,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:1202,x:30266,y:31708,varname:node_1202,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-6647-OUT;n:type:ShaderForge.SFN_DepthBlend,id:6647,x:30068,y:31708,varname:node_6647,prsc:2|DIST-7066-OUT;n:type:ShaderForge.SFN_Multiply,id:6163,x:30641,y:31575,varname:node_6163,prsc:2|A-350-OUT,B-1202-OUT;n:type:ShaderForge.SFN_Blend,id:7387,x:31731,y:32230,varname:node_7387,prsc:2,blmd:5,clmp:False|SRC-3357-OUT,DST-8854-OUT;n:type:ShaderForge.SFN_Tex2d,id:5368,x:29878,y:31034,varname:node_5368,prsc:2,ntxv:0,isnm:False|UVIN-1139-UVOUT,TEX-1804-TEX;n:type:ShaderForge.SFN_Add,id:350,x:30600,y:31288,varname:node_350,prsc:2|A-5368-RGB,B-3028-RGB;n:type:ShaderForge.SFN_Tex2d,id:2013,x:29336,y:33362,varname:node_2013,prsc:2,tex:90ff426733b42774fa4fb464cc68b2c9,ntxv:0,isnm:False|UVIN-3941-UVOUT,TEX-4617-TEX;n:type:ShaderForge.SFN_Tex2d,id:8744,x:29306,y:33684,varname:node_8744,prsc:2,tex:e13418555c7b85443a784514bbec2574,ntxv:0,isnm:False|UVIN-9630-UVOUT,TEX-6031-TEX;n:type:ShaderForge.SFN_Add,id:2326,x:29638,y:33568,varname:node_2326,prsc:2|A-2013-RGB,B-8744-RGB;n:type:ShaderForge.SFN_Add,id:1396,x:30135,y:33460,varname:node_1396,prsc:2|A-4906-OUT,B-3281-OUT;n:type:ShaderForge.SFN_Add,id:3068,x:30118,y:33837,varname:node_3068,prsc:2|A-2326-OUT,B-9510-OUT;n:type:ShaderForge.SFN_Tex2d,id:5741,x:29204,y:34071,varname:node_5741,prsc:2,ntxv:0,isnm:False|UVIN-8616-UVOUT,TEX-9224-TEX;n:type:ShaderForge.SFN_Tex2d,id:7963,x:29199,y:34710,varname:node_7963,prsc:2,ntxv:0,isnm:False|UVIN-7137-UVOUT,TEX-9920-TEX;n:type:ShaderForge.SFN_Add,id:3281,x:29520,y:34345,varname:node_3281,prsc:2|A-5741-RGB,B-7963-RGB;n:type:ShaderForge.SFN_LightColor,id:233,x:30539,y:32076,varname:node_233,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6788,x:30805,y:32137,varname:node_6788,prsc:2|A-233-RGB,B-46-RGB;n:type:ShaderForge.SFN_LightColor,id:4168,x:30518,y:31817,varname:node_4168,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8854,x:30918,y:31655,varname:node_8854,prsc:2|A-6163-OUT,B-6740-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:5502,x:30733,y:31835,varname:node_5502,prsc:2,min:0.2,max:1|IN-4168-RGB;n:type:ShaderForge.SFN_Desaturate,id:6740,x:30918,y:31835,varname:node_6740,prsc:2|COL-5502-OUT;n:type:ShaderForge.SFN_Multiply,id:5707,x:30274,y:32943,varname:node_5707,prsc:2|A-9386-OUT,B-46-A;n:type:ShaderForge.SFN_ConstantClamp,id:8711,x:32024,y:33794,varname:node_8711,prsc:2,min:0,max:1|IN-8436-OUT;n:type:ShaderForge.SFN_Multiply,id:6120,x:32372,y:33475,varname:node_6120,prsc:2|A-3004-OUT,B-4295-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7066,x:29881,y:31708,ptovrint:False,ptlb:Shore Foam Depth,ptin:_ShoreFoamDepth,varname:node_7066,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_SwitchProperty,id:7714,x:31966,y:32230,ptovrint:False,ptlb:Use Foam,ptin:_UseFoam,varname:node_7714,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3357-OUT,B-7387-OUT;proporder:46-915-7834-4617-9224-6031-9920-4295-584-3322-2946-7714-1804-7066;pass:END;sub:END;*/

Shader "TFP/TFP_Water" {
    Properties {
        _FogColor ("Fog Color", Color) = (0.282353,0.6196079,0.5764706,1)
        _FogHeight ("Fog Height", Float ) = 1
        _ReflectionTex ("ReflectionTex", 2D) = "white" {}
        _Water01 ("Water01", 2D) = "bump" {}
        _Wave01 ("Wave01", 2D) = "bump" {}
        _Water02 ("Water02", 2D) = "bump" {}
        _Wave02 ("Wave02", 2D) = "bump" {}
        _RefractionAmount ("Refraction Amount", Range(0, 0.1)) = 0.05
        _ShoreBlend ("Shore Blend", Float ) = 6
        _DepthRefractionBlend ("Depth Refraction Blend ", Float ) = 1
        _Fresnel ("Fresnel", Float ) = 1
        [MaterialToggle] _UseFoam ("Use Foam", Float ) = 0
        _Foam ("Foam", 2D) = "white" {}
        _ShoreFoamDepth ("Shore Foam Depth", Float ) = 2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 3000
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Wave01; uniform float4 _Wave01_ST;
            uniform float _RefractionAmount;
            uniform float _ShoreBlend;
            uniform float4 _FogColor;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
            uniform float _DepthRefractionBlend;
            uniform float _Fresnel;
            uniform sampler2D _Wave02; uniform float4 _Wave02_ST;
            uniform sampler2D _Water01; uniform float4 _Water01_ST;
            uniform sampler2D _Water02; uniform float4 _Water02_ST;
            uniform float _FogHeight;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _ShoreFoamDepth;
            uniform fixed _UseFoam;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_8563 = _Time + _TimeEditor;
                float node_3186 = 5.0;
                float2 node_8616 = ((i.uv0*objScale.r*node_3186)+node_8563.g*float2(0,0.12));
                float3 node_5329 = UnpackNormal(tex2D(_Water01,TRANSFORM_TEX(node_8616, _Water01)));
                float2 node_7137 = ((i.uv0*objScale.r*node_3186)+node_8563.g*float2(0.12,-0.12));
                float3 node_6790 = UnpackNormal(tex2D(_Water02,TRANSFORM_TEX(node_7137, _Water02)));
                float3 node_5741 = UnpackNormal(tex2D(_Wave01,TRANSFORM_TEX(node_8616, _Wave01)));
                float3 node_7963 = UnpackNormal(tex2D(_Wave02,TRANSFORM_TEX(node_7137, _Wave02)));
                float3 node_1214 = ((node_5329.rgb+node_6790.rgb)+(node_5741.rgb+node_7963.rgb));
                float2 node_3941 = ((i.uv0*objScale.r)+node_8563.g*float2(0.05,0));
                float3 node_2013 = UnpackNormal(tex2D(_Water01,TRANSFORM_TEX(node_3941, _Water01)));
                float2 node_9630 = ((i.uv0*objScale.r)+node_8563.g*float2(-0.05,-0.05));
                float3 node_8744 = UnpackNormal(tex2D(_Water02,TRANSFORM_TEX(node_9630, _Water02)));
                float3 node_1217 = UnpackNormal(tex2D(_Wave01,TRANSFORM_TEX(node_3941, _Wave01)));
                float3 node_5571 = UnpackNormal(tex2D(_Wave02,TRANSFORM_TEX(node_9630, _Wave02)));
                float3 node_825 = ((node_2013.rgb+node_8744.rgb)+(node_1217.rgb+node_5571.rgb));
                float node_250 = 0.1;
                float2 node_6613 = ((i.uv0*objScale.r*node_250)+node_8563.g*float2(0.012,0.008));
                float3 node_4224 = UnpackNormal(tex2D(_Wave01,TRANSFORM_TEX(node_6613, _Wave01)));
                float2 node_1139 = ((i.uv0*objScale.r*node_250)+node_8563.g*float2(-0.01,0));
                float3 node_8785 = UnpackNormal(tex2D(_Wave02,TRANSFORM_TEX(node_1139, _Wave02)));
                float3 node_6911 = (node_4224.rgb+node_8785.rgb);
                float3 normalLocal = lerp(lerp(node_1214,node_825,0.7),node_6911,0.6);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + ((lerp(lerp(node_1214,node_825,0.7),node_6911,0.1).rg*clamp(saturate((sceneZ-partZ)/_DepthRefractionBlend),0,1))*_RefractionAmount);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.5; // Convert roughness to gloss
                float perceptualRoughness = 0.5;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
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
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float node_7750 = 0.02;
                float3 specularColor = float3(node_7750,node_7750,node_7750);
                float specularMonochrome;
                float4 node_2327 = tex2D(_ReflectionTex,TRANSFORM_TEX(sceneUVs.rg, _ReflectionTex));
                float3 node_3357 = (node_2327.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel));
                float4 node_5368 = tex2D(_Foam,TRANSFORM_TEX(node_1139, _Foam));
                float4 node_3028 = tex2D(_Foam,TRANSFORM_TEX(node_9630, _Foam));
                float3 diffuseColor = saturate((1.0-(1.0-lerp( node_3357, max(node_3357,(((node_5368.rgb+node_3028.rgb)*(saturate((sceneZ-partZ)/_ShoreFoamDepth)*-1.0+1.0))*dot(clamp(_LightColor0.rgb,0.2,1),float3(0.3,0.59,0.11)))), _UseFoam ))*(1.0-((_LightColor0.rgb*_FogColor.rgb)*saturate((sceneZ-partZ)/_FogHeight))))); // Need this for specular when using metallic
                diffuseColor = EnergyConservationBetweenDiffuseAndSpecular(diffuseColor, specularColor, specularMonochrome);
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float node_9862 = 1.0;
                float3 w = float3(node_9862,node_9862,node_9862)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * float3(node_9862,node_9862,node_9862);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotLWrap);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((forwardLight+backLight) + ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL)) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,(saturate((sceneZ-partZ)/_ShoreBlend)*_FogColor.a)),1);
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Wave01; uniform float4 _Wave01_ST;
            uniform float _RefractionAmount;
            uniform float _ShoreBlend;
            uniform float4 _FogColor;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
            uniform float _DepthRefractionBlend;
            uniform float _Fresnel;
            uniform sampler2D _Wave02; uniform float4 _Wave02_ST;
            uniform sampler2D _Water01; uniform float4 _Water01_ST;
            uniform sampler2D _Water02; uniform float4 _Water02_ST;
            uniform float _FogHeight;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _ShoreFoamDepth;
            uniform fixed _UseFoam;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_7251 = _Time + _TimeEditor;
                float node_3186 = 5.0;
                float2 node_8616 = ((i.uv0*objScale.r*node_3186)+node_7251.g*float2(0,0.12));
                float3 node_5329 = UnpackNormal(tex2D(_Water01,TRANSFORM_TEX(node_8616, _Water01)));
                float2 node_7137 = ((i.uv0*objScale.r*node_3186)+node_7251.g*float2(0.12,-0.12));
                float3 node_6790 = UnpackNormal(tex2D(_Water02,TRANSFORM_TEX(node_7137, _Water02)));
                float3 node_5741 = UnpackNormal(tex2D(_Wave01,TRANSFORM_TEX(node_8616, _Wave01)));
                float3 node_7963 = UnpackNormal(tex2D(_Wave02,TRANSFORM_TEX(node_7137, _Wave02)));
                float3 node_1214 = ((node_5329.rgb+node_6790.rgb)+(node_5741.rgb+node_7963.rgb));
                float2 node_3941 = ((i.uv0*objScale.r)+node_7251.g*float2(0.05,0));
                float3 node_2013 = UnpackNormal(tex2D(_Water01,TRANSFORM_TEX(node_3941, _Water01)));
                float2 node_9630 = ((i.uv0*objScale.r)+node_7251.g*float2(-0.05,-0.05));
                float3 node_8744 = UnpackNormal(tex2D(_Water02,TRANSFORM_TEX(node_9630, _Water02)));
                float3 node_1217 = UnpackNormal(tex2D(_Wave01,TRANSFORM_TEX(node_3941, _Wave01)));
                float3 node_5571 = UnpackNormal(tex2D(_Wave02,TRANSFORM_TEX(node_9630, _Wave02)));
                float3 node_825 = ((node_2013.rgb+node_8744.rgb)+(node_1217.rgb+node_5571.rgb));
                float node_250 = 0.1;
                float2 node_6613 = ((i.uv0*objScale.r*node_250)+node_7251.g*float2(0.012,0.008));
                float3 node_4224 = UnpackNormal(tex2D(_Wave01,TRANSFORM_TEX(node_6613, _Wave01)));
                float2 node_1139 = ((i.uv0*objScale.r*node_250)+node_7251.g*float2(-0.01,0));
                float3 node_8785 = UnpackNormal(tex2D(_Wave02,TRANSFORM_TEX(node_1139, _Wave02)));
                float3 node_6911 = (node_4224.rgb+node_8785.rgb);
                float3 normalLocal = lerp(lerp(node_1214,node_825,0.7),node_6911,0.6);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + ((lerp(lerp(node_1214,node_825,0.7),node_6911,0.1).rg*clamp(saturate((sceneZ-partZ)/_DepthRefractionBlend),0,1))*_RefractionAmount);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 1.0 - 0.5; // Convert roughness to gloss
                float perceptualRoughness = 0.5;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float node_7750 = 0.02;
                float3 specularColor = float3(node_7750,node_7750,node_7750);
                float specularMonochrome;
                float4 node_2327 = tex2D(_ReflectionTex,TRANSFORM_TEX(sceneUVs.rg, _ReflectionTex));
                float3 node_3357 = (node_2327.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel));
                float4 node_5368 = tex2D(_Foam,TRANSFORM_TEX(node_1139, _Foam));
                float4 node_3028 = tex2D(_Foam,TRANSFORM_TEX(node_9630, _Foam));
                float3 diffuseColor = saturate((1.0-(1.0-lerp( node_3357, max(node_3357,(((node_5368.rgb+node_3028.rgb)*(saturate((sceneZ-partZ)/_ShoreFoamDepth)*-1.0+1.0))*dot(clamp(_LightColor0.rgb,0.2,1),float3(0.3,0.59,0.11)))), _UseFoam ))*(1.0-((_LightColor0.rgb*_FogColor.rgb)*saturate((sceneZ-partZ)/_FogHeight))))); // Need this for specular when using metallic
                diffuseColor = EnergyConservationBetweenDiffuseAndSpecular(diffuseColor, specularColor, specularMonochrome);
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float node_9862 = 1.0;
                float3 w = float3(node_9862,node_9862,node_9862)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * float3(node_9862,node_9862,node_9862);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotLWrap);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((forwardLight+backLight) + ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL)) * attenColor;
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * (saturate((sceneZ-partZ)/_ShoreBlend)*_FogColor.a),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
