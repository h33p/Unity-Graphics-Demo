using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AmountSlider : MonoBehaviour
{
    [SerializeField]
    private Text amountText;
 	
    /**
     * Updates value in the text field and amount of Ball instances in the BallsContainer
     */ 
	public void UpdateAmountValue(Slider slider)
    {
        //Debug.Log("UpdateAmountValue " + slider.value.ToString());
        amountText.text = slider.value.ToString();
        DemoManager.instance.UpdateBalls((int)slider.value);
    }
}
