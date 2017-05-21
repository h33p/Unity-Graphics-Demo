/* (C) Aurimas Blažulionis
 * TimeCycle script
 * Implements day and night cycle
*/

using UnityEngine;
using System.Collections;
//using kode80.Clouds;
using System;
using UnityEngine.Networking;

public class TimeCycle : MonoBehaviour {

	public AnimationCurve fogIntensity;
	public AnimationCurve sunIntensity;
	public Gradient sunLightColor;
	public Gradient cloudsLowColor;
	public Gradient cloudsHighColor;
	public Material cloudsLowMat;
	public Material cloudsHighMat;
	public Material starsMat;
	public Gradient starsGradient;


	public VolumetricLight sunFog;
	public Material stars;
	//public VolumetricLight moonFog;
	public GameObject[] clouds;
	[Range(0.0f, 24.0f)]
	public float time = 0;
	public float dayLength = 600f;
	public Vector3 rotation;
	public float giUpdateThreshold = 0.05f;
	private float curTime = 0.0f;

	public float angY = 0f;

	public Light sun;

	public static TimeCycle singleton;

	// Use this for initialization
	void Start () {
		TimeCycle.singleton = this;
		//rotation = sun.transform.rotation.eulerAngles;
	}
	
	// Update is called once per frame
	void Update () {

		time += (24 / dayLength) * Time.deltaTime;

		if (Input.GetKey (KeyCode.LeftBracket))
			time -= Time.deltaTime;
		if (Input.GetKey (KeyCode.RightBracket))
			time += Time.deltaTime;
		

		if (time >= 24f)
			time -= 24f;

		TimeSpan timeSpan = TimeSpan.FromHours(time);

		//rotation = new Vector3 (time * 360, rotation.y, rotation.z);

		sun.color = sunLightColor.Evaluate (time / 24f);
		sun.transform.rotation = Quaternion.Euler (((time - 6f) / 24) * 360f, rotation.y, rotation.z);
		sunFog.NoiseIntensity = fogIntensity.Evaluate (time);
		sun.intensity = sunIntensity.Evaluate (time);
		cloudsHighMat.SetColor ("_CloudColor", cloudsHighColor.Evaluate (time / 24f));
		cloudsLowMat.SetColor ("_CloudColor", cloudsLowColor.Evaluate (time / 24f));
		starsMat.SetColor ("_TintColor", starsGradient.Evaluate (time / 24f));
		//moonFog.NoiseIntensity = fogIntensity.Evaluate (time);

		if (Mathf.Abs(time - curTime) > giUpdateThreshold) {
			DynamicGI.UpdateEnvironment ();
			curTime = time;
			//Debug.Log ("Done");
		}
	}
}
