Shader "TerrainSurface"
{
	Properties
	{
		_Mask ("Mask", 2D) = "black" {}
	
		_MainTex ("Albedo 0", 2D) = "white" {}
		_MainTex2 ("Albedo 1", 2D) = "white" {}
	
		_NormalMap ("NormalMap 0", 2D) = "bump" {}
		_NormalMap2 ("NormalMap 1", 2D) = "bump" {}
		
		[LM_Specular] [LM_Glossiness] _SpecGlossMap("Specular 0", 2D) = "white" {}
		[LM_Specular] [LM_Glossiness] _SpecGlossMap2("Specular 1", 2D) = "white" {}
	}

	// SM3+
	SubShader
	{
		Tags { "RenderType" = "Opaque" }
		CGPROGRAM
		#pragma surface surf StandardSpecular fullforwardshadows addshadow
		// until texCubeLOD is solved
		#pragma exclude_renderers gles
		#pragma target 3.0

				
		struct Input
		{
			float4 color;
			float2 uv_MainTex;
			float2 uv_MainTex2;
			float2 uv_Mask;
		};
	
		sampler2D _MainTex;
		sampler2D _MainTex2;
	
		sampler2D _NormalMap;
		sampler2D _NormalMap2;
	
		sampler2D _SpecGlossMap;
		sampler2D _SpecGlossMap2;
	
		sampler2D _Mask;
	
		void surf (Input IN, inout SurfaceOutputStandardSpecular o)
		{
			fixed blend = tex2D(_Mask, IN.uv_Mask).a;
	
			fixed4 albedo1 = tex2D(_MainTex, IN.uv_MainTex);
			fixed4 spec1	= tex2D(_SpecGlossMap, IN.uv_MainTex);
		 	fixed3 normal1 = UnpackNormal (tex2D (_NormalMap, IN.uv_MainTex));

			fixed4 albedo2 = tex2D(_MainTex2, IN.uv_MainTex2);
			fixed4 spec2 = tex2D(_SpecGlossMap2, IN.uv_MainTex2);
		 	fixed3 normal2 = UnpackNormal (tex2D (_NormalMap2, IN.uv_MainTex2));

		 	fixed4 specGloss = lerp (spec1, spec2, blend);
			
			o.Albedo 		= lerp (albedo1, albedo2, blend);
		 	o.Specular 		= specGloss.rgb;
			o.Smoothness 	= specGloss.a;
		  	o.Normal 		= lerp (normal1, normal2, blend);
		}
		ENDCG
	}

	CustomEditor "BlendShaderGUI"
}