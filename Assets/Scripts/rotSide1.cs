using UnityEngine;
using System.Collections;


public class rotSide1 : MonoBehaviour {

	float vert;
	public int rotSpeed=20;

	void Update () {

		vert = Input.GetAxis ("Vertical");

	}

	void FixedUpdate(){
		
		transform.Rotate (new Vector3 (0,0,vert* rotSpeed * Time.deltaTime*-1  ));
	
	}
}
