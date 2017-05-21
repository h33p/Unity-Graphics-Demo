using UnityEngine;
using System.Collections;
using System;

[ExecuteInEditMode]
public class QualitySetup : MonoBehaviour
{
	public Transform highQualityCamera;
	public Transform lowQualityCamera;

	void OnEnable()
	{	
		if(highQualityCamera && lowQualityCamera)
		{
			highQualityCamera.gameObject.SetActive(false);
			lowQualityCamera.gameObject.SetActive(false);

			int qualityLevel = QualitySettings.GetQualityLevel();
			var sm50 = (SystemInfo.graphicsShaderLevel >= 50);

			if (sm50 && qualityLevel >= 1)
				highQualityCamera.gameObject.SetActive(true);
			else
				lowQualityCamera.gameObject.SetActive(true);
		}
		else
			Debug.LogError("Cameras missing! Different cameras are needed for different performance profiles.");
	}
}
