using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/**
 * Draws a graph of lines by means of OnGUI 
 */ 
public class LineGenerator : MonoBehaviour
{
    public Text fpsText;
    [SerializeField]
    Texture2D _texture;
    public Color fpsGraphColor = Color.green;
    [Tooltip("High value is considered to be any value grater 60fps")]
    public Color fpsHighLineIndicatorColor = Color.yellow;
    [Tooltip("Normal value is considered to be 60fps")]
    public Color fpsNormalLineIndicatorColor = Color.red;

    private const float TOP_NORMAL_MARGIN_SCALE = 0.3f;
    private const float TOP_MAX_MARGIN_SCALE = 0.17f;
    private const float FPS_NORMAL = 60f;
    private const int MIN_SIZE = 100;

    private int _amount = 100;
    private float _deltaTime = 0.0f;
    private string _fpsString = "";
    private float _fullHeight = 0f;
    private float _maxHeight = 0f;
    private bool _canStart = false;
    private Queue<float> _heightsQueue;
    private Vector2 _bottomLeft = new Vector2(0f, 0f);
    

    public void Start()
    {
        StartCoroutine("InitializationRoutine");
    }
    
    public IEnumerator InitializationRoutine()
    {
        // Debug.Log("Routine started, we are going to skeep a frame and then come back");
        yield return null;

        // Debug.Log("One frame is skipped.");

        RectTransform rect = GetComponent<RectTransform>();

        /*
        Debug.Log("Rectangle width= " + rect.rect.width);
        Debug.Log("Rectangle height= " + rect.rect.height);
        Debug.Log("Offset of the Lower left corner of the rectangle relative to the lower left anchor= " + rect.offsetMin);
        Debug.Log("Offset of the Upper right corner of the rectangle relative to the upper right anchor= " + rect.offsetMax);
        */

        _bottomLeft = rect.offsetMin;
           
        if (rect.rect.width < MIN_SIZE || rect.rect.width < MIN_SIZE)
        {
            throw new System.Exception("You need to specify Width and Height in Editor for the LineRenderer");
        }

        _amount = (int)rect.rect.width;
        _fullHeight = rect.rect.height - (rect.rect.height * TOP_NORMAL_MARGIN_SCALE);
        _maxHeight = rect.rect.height - (rect.rect.height * TOP_MAX_MARGIN_SCALE);
        InitHeightsQueue();
                                  
        //Sets the position of Fps text field
        fpsText.GetComponent<RectTransform>().offsetMin = rect.offsetMin;
        fpsText.GetComponent<RectTransform>().offsetMax = rect.offsetMax;

        //Debug.Log("Reached end of routine");
        _canStart = true;
    }

    /**
     * Creates a queue of zeroes with a size of LineRenderer image width
     */ 
    private void InitHeightsQueue()
    {
        _heightsQueue = new Queue<float>();

        for (int i = 0; i < _amount; i++)
        {
            _heightsQueue.Enqueue(0f);
        }
    }

    public void Update()
    {
        if(_canStart)
        {
            //Calculate FPS
            _deltaTime += (Time.deltaTime - _deltaTime) * 0.1f;
            float msec = _deltaTime * 1000.0f;
            float fps = 1.0f / _deltaTime;
            _fpsString = string.Format("{0:0.0} ms ({1:0.} fps)", msec, fps);

            //Display in Text field in Canvas
            if (fpsText != null)
            {
                fpsText.text = _fpsString;
            }

            //Remove first line in order and add a new line to the end
            _heightsQueue.Dequeue();
            float lineHeight = _fullHeight * fps / FPS_NORMAL;  // where fps / FPS_NORMAL is a coefficient of current fps value to normal 60 fps

            if(lineHeight > _maxHeight)
            {
                lineHeight = _maxHeight;
            }

            _heightsQueue.Enqueue(lineHeight);  
        }
    }

    /**
     * Draws texture with a size 2x2 px in a rectangle with a size 1xlineHeight px 
     */
    public void OnGUI()
    {
        if (_canStart)
        {
            float counter = 0;
            foreach (float lineHeight in _heightsQueue)
            {
                // Position of GUI layer is top left corner of the screen
                float posX = counter + _bottomLeft.x;
                float posY = Screen.height - _bottomLeft.y - lineHeight;
                GUI.color = fpsGraphColor;
                GUI.DrawTexture(new Rect(new Vector2(posX, posY), new Vector2(1, lineHeight)), _texture);
                counter++;
            }
        }
        DrawNormalFpsLineIndicator();
   }

    /**
     * Draws a normal fps line indicator with width = rectangle width, height=1px
     * and a high fps line indicator above it.
     * Both lines must be drawn above the fps graph rectangular area.
    */
    private void DrawNormalFpsLineIndicator()
    {
        GUI.color = fpsNormalLineIndicatorColor;
        GUI.DrawTexture(new Rect(new Vector2(_bottomLeft.x, Screen.height - _bottomLeft.y - _fullHeight), new Vector2((float)_amount, 1)), _texture);

        GUI.color = fpsHighLineIndicatorColor;
        GUI.DrawTexture(new Rect(new Vector2(_bottomLeft.x, Screen.height - _bottomLeft.y - _maxHeight), new Vector2((float)_amount, 1)), _texture);
    }
}
