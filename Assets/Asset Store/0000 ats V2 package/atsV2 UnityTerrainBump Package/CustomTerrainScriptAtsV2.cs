/* Code provided by Chris Morris of Six Times Nothing (http://www.sixtimesnothing.com) */
/* Free to use and modify */

using UnityEngine;
using System.Collections;

public class CustomTerrainScriptAtsV2 : MonoBehaviour {

	public Texture2D Bump0;
	public Texture2D Bump1;
	public Texture2D Bump2;
	public Texture2D Bump3;
	
	public float Tile0;
	public float Tile1;
	public float Tile2;
	public float Tile3;

	public float terrainSizeX;
	public float terrainSizeZ;
	
	void Start () {
		
		Terrain terrainComp = (Terrain)GetComponent(typeof(Terrain));
		
		if(Bump0)
			Shader.SetGlobalTexture("_BumpMap0", Bump0);
		
		if(Bump1)
			Shader.SetGlobalTexture("_BumpMap1", Bump1);
		
		if(Bump2)
			Shader.SetGlobalTexture("_BumpMap2", Bump2);
		
		if(Bump3)
			Shader.SetGlobalTexture("_BumpMap3", Bump3);
		
		Shader.SetGlobalFloat("_Tile0", Tile0);
		Shader.SetGlobalFloat("_Tile1", Tile1);
		Shader.SetGlobalFloat("_Tile2", Tile2);
		Shader.SetGlobalFloat("_Tile3", Tile3);
		
		terrainSizeX = terrainComp.terrainData.size.x;
		terrainSizeZ = terrainComp.terrainData.size.z;
		
		Shader.SetGlobalFloat("_TerrainX", terrainSizeX);
		Shader.SetGlobalFloat("_TerrainZ", terrainSizeZ);
	}

}
