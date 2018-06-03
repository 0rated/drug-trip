using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class PlayerController : MonoBehaviour {

	public int count;
	public int lev;
	public Text ctext;
	public Text timetext;
	public Text wintext;
	public int pick=8;
	private float timer,loady;
	public float m_Speed = 12f;                 
	public float m_TurnSpeed = 180f;            
	public Rigidbody m_Rigidbody;
	float moveHori ;
	float moveVert;




	private void Awake ()
	{
		m_Rigidbody = GetComponent<Rigidbody> ();
	}
		
	void Start () {
		count = pick;
		counttext();
		wintext.text = "";
		timer = 0.0f;
		timetext.text = "Time : " + timer;
	}

	void Update(){

		if (count > 0) {
			timer += Time.deltaTime;
			timetext.text = "Time : " + timer.ToString ("F1");
		}
		moveHori = Input.GetAxis ("Horizontal");
		moveVert = Input.GetAxis ("Vertical");

		if (count < 1) {
			loady += Time.deltaTime;
			if (loady > 3f) {
				SceneManager.LoadScene (lev);
		
			}

		}
	}
		
	void FixedUpdate () {
		
		Move ();
		Turn ();
	}


	private void Move ()
	{
		Vector3 movement = transform.forward * moveVert * m_Speed * Time.deltaTime;

		m_Rigidbody.MovePosition(m_Rigidbody.position + movement);
	}


	private void Turn ()
	{
		float turn = moveHori * m_TurnSpeed * Time.deltaTime;

		Quaternion turnRotation = Quaternion.Euler (0f, turn, 0f);

		m_Rigidbody.MoveRotation (m_Rigidbody.rotation * turnRotation);
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.gameObject.CompareTag ("PickUp")) {
			other.gameObject.SetActive (false);
			count--;
			counttext ();
		}
	}

	void counttext()
	{
		ctext.text = "Left : " + count.ToString ();
		if (count == 0) {
			
			wintext.text = "-complete-";

		}
	}

	public int hope()
	{
		return count;
	}

}
