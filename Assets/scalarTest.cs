using UnityEngine;
using System.Collections;

public class scalarTest : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	public float speed;
	Vector3 x;
	int m = 1;
	void Update () {



		transform.Rotate (new Vector3 (0, 0, 1) * Time.deltaTime*speed);


	}
}
