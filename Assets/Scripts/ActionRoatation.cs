using UnityEngine;
using System.Collections;

public class ActionRoatation : MonoBehaviour {

	float vert;
	float tilt;
	public float rotSpeed=0.5f;

	void Update () {

		vert = Input.GetAxis ("Horizontal");

	}

	void FixedUpdate(){

		tilt = vert * rotSpeed * Time.deltaTime;
		transform.Rotate (new Vector3 (0, 0, tilt));

	}
}
