using UnityEngine;
using System.Collections;

public class SkyboxReplacer : MonoBehaviour
{
	public Cubemap skyCube = null;
	private Material _skyboxMaterial = null;
	private Material skyboxMaterial
	{
		get
		{
			if( _skyboxMaterial == null )
			{		
				Shader shader = Shader.Find( "Skybox/Cubemap" );
				if( shader )
				{
					_skyboxMaterial = new Material( shader );
					_skyboxMaterial.name = "Skybox";
				}
				else
					Debug.LogError( "Couldn't find " + shader.name + " shader" );
			}
			return _skyboxMaterial;
		}
	}

	void Start ()
	{
		if (skyCube)
		{
			skyboxMaterial.SetTexture ("_Tex", skyCube);
			RenderSettings.skybox = skyboxMaterial;
		}
	}
}