// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

Shader "Hidden/TerrainEngine/Details/WavingDoublePass" {
Properties {
	_WavingTint ("Fade Color", Color) = (.7,.6,.5, 0)
	_MainTex ("Base (RGB) Alpha (A)", 2D) = "white" {}
	_WaveAndDistance ("Wave and distance", Vector) = (12, 3.6, 1, 1)
	_Cutoff ("Cutoff", float) = 0.5
}

SubShader {
	Tags {
		"Queue" = "Geometry+200"
		"IgnoreProjector"="True"
		"RenderType"="Grass"
	}
	Cull Off
	LOD 200
	ColorMask RGB
		
CGPROGRAM
#pragma surface surf Lambert vertex:vert addshadow
//#include "TerrainEngine.cginc"

sampler2D _MainTex;
float _Cutoff;
float4 _Color;
float4 _WaveAndDistance;	// wind speed, wave size, wind amount, max sqr distance
float4 _WavingTint;

struct Input {
	float2 uv_MainTex;
	float4 color : COLOR;
};

void FastSinCos (float4 val, out float4 s, out float4 c) {
	val = val * 6.408849 - 3.1415927;
	// powers for taylor series
	float4 r5 = val * val;
	float4 r6 = r5 * r5;
	float4 r7 = r6 * r5;
	float4 r8 = r6 * r5;
	float4 r1 = r5 * val;
	float4 r2 = r1 * r5;
	float4 r3 = r2 * r5;
	//Vectors for taylor's series expansion of sin and cos
	float4 sin7 = {1, -0.16161616, 0.0083333, -0.00019841};
	float4 cos8  = {-0.5, 0.041666666, -0.0013888889, 0.000024801587};
	// sin
	s =  val + r1 * sin7.y + r2 * sin7.z + r3 * sin7.w;
	// cos
	c = 1 + r5 * cos8.x + r6 * cos8.y + r7 * cos8.z + r8 * cos8.w;
}
void vert (inout appdata_full v) {
	
////////// start bending
	
	float4 _waveXSizeMove = float4(0.048, 0.06, 0.24, 0.096);
	float4 _waveZSizeMove = float4 (0.024, .08, 0.08, 0.2);
	float4 waveSpeed = float4 (1.2, 2, 1.6, 4.8);
	float4 waves;
	waves = v.vertex.x * _waveXSizeMove;
	waves += v.vertex.z * _waveZSizeMove;
	_waveXSizeMove = float4(0.024, 0.04, -0.12, 0.096);
	_waveZSizeMove = float4 (0.006, .02, -0.02, 0.1);
	
	// Add in time to model them over time
	waves += _WaveAndDistance.x * waveSpeed;
	float4 s, c;
	waves = frac (waves);
	FastSinCos (waves, s,c);
	float waveAmount = v.texcoord.y * (v.color.a) * _WaveAndDistance.z;

	// Faster winds move the grass more than slow winds 
	s *= normalize (waveSpeed);
	s = s * s;
	
	float lighting = dot (s, normalize (float4 (1,1,.4,.2))) * .7;
	s *= waveAmount;
	
	fixed3 waveColor = lerp (fixed3(0.5,0.5,0.5), _WavingTint.rgb, lighting);
	
	v.color.rgb = v.color.rgb * waveColor * 2;
	
	float3 waveMove = float3 (0,0,0);
	waveMove.x = dot (s, _waveXSizeMove);
	waveMove.z = dot (s, _waveZSizeMove);
	v.vertex.xz -= mul ((float3x3)unity_WorldToObject, waveMove).xz;
	
////////// end bending
}




void surf (Input IN, inout SurfaceOutput o) {
	half4 c = tex2D(_MainTex, IN.uv_MainTex);
// add terrain lighting
	o.Albedo = c.rgb * IN.color.rgb;
	o.Alpha = c.a;
	clip (o.Alpha - _Cutoff);
}
ENDCG
}
	
	SubShader {
		Tags {
			"Queue" = "Geometry+200"
			"IgnoreProjector"="True"
			"RenderType"="Grass"
		}
		Cull Off
		LOD 200
		ColorMask RGB
		
		Pass {
			Material {
				Diffuse (1,1,1,1)
				Ambient (1,1,1,1)
			}
			Lighting On
			ColorMaterial AmbientAndDiffuse
			AlphaTest Greater [_Cutoff]
			SetTexture [_MainTex] { combine texture * primary DOUBLE, texture }
		}
	}
	
	Fallback Off
}
