    Shader "Enviro/BumpedDiffuseOverlaySM2" {
    //
    // Tomasz Stobierski 2012
    //
    Properties {
        _Color ("Main Color", Color) = (1,1,1,1)
        _Opacity ("Color over opacity", Range (0, 1)) = 1
        _MainTex ("Color over (RGBA)", 2D) = "white" {}
        _BumpMap ("Normalmap over", 2D) = "bump" {}
        _MainTex2 ("Color under (RGBA)", 2D) = "white" {}
        _BumpMap2 ("Normalmap under", 2D) = "bump" {}
    }
     
    SubShader {
        Tags { "RenderType"="Opaque" }
        LOD 400
       
    CGPROGRAM
    #pragma surface surf Lambert
    #pragma exclude_renderers flash
     
    sampler2D _MainTex;
    sampler2D _BumpMap;
    sampler2D _MainTex2;
    sampler2D _BumpMap2;
    fixed4 _Color;
    float _Opacity;
     
    struct Input {
        float2 uv_MainTex;
        float2 uv_BumpMap;
        float2 uv_MainTex2;
        float2 uv_BumpMap2;
    };
     
    void surf (Input IN, inout SurfaceOutput o) {
        float4 tex = tex2D(_MainTex, IN.uv_MainTex);
        float4 tex2 = tex2D(_MainTex2, IN.uv_MainTex2);
        float4 dest;
        _Opacity*=tex.a;
        dest.rgb = tex2.rgb<=0.5 ? 2*tex.rgb*tex2.rgb : 1-2*(1-tex.rgb)*(1-tex2.rgb);
        dest.rgb = lerp(tex2.rgb, dest.rgb, _Opacity);
        dest.rgb *= _Color.rgb;
        o.Albedo = dest.rgb;
        o.Alpha = tex2.a * _Color.a;
       
        float4 norm = tex2D(_BumpMap, IN.uv_BumpMap);
        float4 norm2 = tex2D(_BumpMap2, IN.uv_BumpMap2);
        dest = norm2<=0.5 ? 2*norm*norm2 : 1-2*(1-norm)*(1-norm2);
        dest = lerp(norm2, dest, _Opacity);
        o.Normal = UnpackNormal(dest);
    }
    ENDCG
     
    }
     
    SubShader {
        Tags { "RenderType"="Opaque" }
        LOD 400
       
    CGPROGRAM
    #pragma surface surf Lambert
    #pragma only_renderers flash
     
    sampler2D _MainTex;
    sampler2D _MainTex2;
    fixed4 _Color;
    float _Opacity;
     
    struct Input {
        float2 uv_MainTex;
        float2 uv_MainTex2;
    };
     
    void surf (Input IN, inout SurfaceOutput o) {
        float4 tex = tex2D(_MainTex, IN.uv_MainTex);
        float4 tex2 = tex2D(_MainTex2, IN.uv_MainTex2);
        float4 dest;
        _Opacity*=tex.a;
        dest.rgb = tex2.rgb<=0.5 ? 2*tex.rgb*tex2.rgb : 1-2*(1-tex.rgb)*(1-tex2.rgb);
        dest.rgb = lerp(tex2.rgb, dest.rgb, _Opacity);
        dest.rgb *= _Color.rgb;
        o.Albedo = dest.rgb;
        o.Alpha = tex2.a * _Color.a;
    }
    ENDCG
     
    }
     
    FallBack "Bumped Diffuse"
    }