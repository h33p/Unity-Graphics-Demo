using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DemoManager : MonoBehaviour
{
    public static DemoManager instance;
    [SerializeField]
    private GameObject ballPrefab;
    [SerializeField]
    private GameObject ballsContainer;
    [SerializeField]
    private Slider slider;
    private int _ballsCounter = 0;
 

    public void Awake()
    {
        // if the singleton hasn't been initialized yet
        if (instance != null && instance != this)
        {
            Destroy(this.gameObject); // NOTE: Destroy(this); will just destroy the script component that calls it rather than destroying the GameObject the script is attached to.
            return;//Avoid doing anything else
        }

        instance = this;
    }

    public void Start()
    {
         AddBalls((int)slider.value);
    }

    /**
     * Adds or removes Balls according to the Slider value
     * @currentAmount - Slider value
     */ 
    public void UpdateBalls(int currentAmount)
    {
        if (currentAmount > _ballsCounter)
        {
            AddBalls(currentAmount - _ballsCounter);
        }
        else
        {
            RemoveBalls(_ballsCounter - currentAmount);
        }
    }

    /**
     * Instantiate Ball prefab and adds it as a child of BallsContainer
     */
    private void AddBallInstance()
    {
        GameObject ball = Instantiate(ballPrefab, ballPrefab.transform.position, ballPrefab.transform.rotation);
        _ballsCounter++;
        ball.name = "Ball" + _ballsCounter; // Example of the name Ball1 
        ball.transform.parent = ballsContainer.transform;
    }

    /**
     * Finds a Ball in childs of BallsContainer using name and destroys it
     */ 
    private void RemoveBallInstanceByName()
    {
        foreach (Transform ball in ballsContainer.transform)
        {
            if(ball.name == "Ball"+_ballsCounter)
            {
                Destroy(ball.gameObject);  // Destroys in Game mode
                _ballsCounter--;
            }
        }
    }
    
    /**
     * Adds Ball instances in BallsContainer
     * @amount - how many balls we need to add
     */ 
    private void AddBalls(int amount)
    {
        for (int i = 0; i < amount; i++)
        {
            AddBallInstance();
        }
    }

    /**
     * Removes Ball instances from BallsContainer
     * @amount - how many balls we need to remove
     */
    private void RemoveBalls(int amount)
    {
        for (int i = amount; i > 0; i--)
        {
            RemoveBallInstanceByName();
        }
    }      
}
