using UnityEngine;
using System.Collections;

public class barrier : MonoBehaviour {


	public int c;
	public GameObject x;
	public PlayerController otherScript;

	void Start()
	{
		PlayerController otherScript = GetComponent<PlayerController>();

	}

	void Update() {
		

		c = otherScript.hope ();
			

	}

	void FixedUpdate()
	{
		if (c == 1)
			x.gameObject.SetActive (false);
		else
			x.gameObject.SetActive (true);
		
	}
}
