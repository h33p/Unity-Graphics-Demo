// var VertexLitBaselightbase : Color = Color(.3, 0.32, 0.35,1);
// not needed in v2
// private var VertexLitBaselight = VertexLitBaselightbase;
var VertexLitTranslucencyColor : Color = Color(0.73,0.85,0.4,1);
var VertexLitWaveScale = 2;
var VertexLitDetailDistance = 60;

function Start ()
{
	Shader.SetGlobalColor("_VertexLitTranslucencyColor", VertexLitTranslucencyColor);
	// Shader.SetGlobalColor("_VertexLitBaselight", VertexLitBaselight);
	Shader.SetGlobalFloat("_VertexLitWaveScale", VertexLitWaveScale);
    
    // Set up layer 9 to cull at our detail distance.
    var distances = new float[32];
    distances[9] = VertexLitDetailDistance; // small things like DetailDistance of the terrain engine
    GetComponent.<Camera>().main.layerCullDistances = distances;
}


function Update () {
	// not needed anymore
	/*if (Camera.main.renderingPath == RenderingPath.DeferredLighting) {
		var mainlight = GameObject.Find("01 Sun");
		VertexLitBaselight = VertexLitBaselightbase * mainlight.light.intensity;
		Shader.SetGlobalColor("_VertexLitBaselight", VertexLitBaselight);
	}*/
	
	// forward
	if(Input.GetKeyDown("1")){
        Camera.main.renderingPath = RenderingPath.Forward;
	}
	// deferred
	if(Input.GetKeyDown("2")){
        Camera.main.renderingPath = RenderingPath.DeferredLighting;
	}
	
	
	if(Input.GetKeyDown("3")){
		var mainlight3 = GameObject.Find("01 Sun");
		mainlight3.transform.Rotate(Vector3.up * 30, Space.World);
	}
	
	
	
	
	
	
	
	
}