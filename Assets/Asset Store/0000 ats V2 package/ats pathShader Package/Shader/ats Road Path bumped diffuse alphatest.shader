Shader "ats Road Path bumped diffuse alphatest" {
Properties {
	_Color ("Main Color", Color) = (1,1,1,1)
	_MainTex ("Base (RGB)", 2D) = "white" {}
	_BumpMap ("Bump Map", 2D) = "white" {  }
	_Cutoff ("Cutoff", Float) = 0.5

}
SubShader {
	Tags { "RenderType"="Opaque+1" }

	LOD 200
	Offset -1, -1
	

CGPROGRAM
#pragma surface surf Lambert alphatest:_Cutoff 


sampler2D _MainTex;
sampler2D _BumpMap;
float4 _Color;

struct Input {
	float2 uv_MainTex;
	float2 uv_BumpMap;
};


void surf (Input IN, inout SurfaceOutput o) {
	fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
	o.Albedo = c.rgb;
	o.Alpha = c.a;
	o.Normal = UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap));
}
ENDCG
}

FallBack "Transparent/Cutout/Diffuse"
}
