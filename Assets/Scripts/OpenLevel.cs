using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class OpenLevel : MonoBehaviour {
	public void Level(int sceneyu)
	{ SceneManager.LoadScene (sceneyu);
	}

}

