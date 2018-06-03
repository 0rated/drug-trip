using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.ThirdPerson;
public class pausegame : MonoBehaviour {

    public Transform canvas;
    public Transform player;
    // Update is called once per frame

    void Start()
    {
        canvas.gameObject.SetActive(false);
    }

    void Update () {
	    if(Input.GetKeyDown(KeyCode.Escape))
        {
            pause();
        }
	}

    public void pause()
    {
        if (canvas.gameObject.activeInHierarchy == false)
        {
            canvas.gameObject.SetActive(true);
            Time.timeScale = 0;
            player.GetComponent<ThirdPersonUserControl>().enabled = false;
        }
        else
        {
            canvas.gameObject.SetActive(false);
            Time.timeScale = 1;
            player.GetComponent<ThirdPersonUserControl>().enabled = true;
        }
    }


}
