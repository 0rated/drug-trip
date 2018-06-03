using UnityEngine;
using System.Collections;

public class rotCubes : MonoBehaviour {


	public float speed;
	void Update () {

		transform.Rotate (new Vector3 (45, 15, 30) * Time.deltaTime*speed);
	
	}
}
