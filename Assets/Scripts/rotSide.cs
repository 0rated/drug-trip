using UnityEngine;
using System.Collections;


public class rotSide : MonoBehaviour {

	float vert;
	public int rotSpeed=50;

	void Update () {

		vert = Input.GetAxis ("Horizontal");

	}

	void FixedUpdate(){
		
		transform.Rotate (new Vector3 (0,0,vert* rotSpeed * Time.deltaTime  ));
	
	}
}
