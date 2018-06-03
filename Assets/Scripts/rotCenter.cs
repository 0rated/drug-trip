using UnityEngine;
using System.Collections;


public class rotCenter : MonoBehaviour {

	float vert;
	public int rotSpeed=200;

	void Update () {

		vert = Input.GetAxis ("Vertical");

	}

	void FixedUpdate(){
		
		transform.Rotate (new Vector3 (vert* rotSpeed * Time.deltaTime,0 ,0 ));
	
	}
}
