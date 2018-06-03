using UnityEngine;
using System.Collections;

public class rotWEED : MonoBehaviour
{


    public float speed;
    public int x, y, z;
    void Update()
    {

        transform.Rotate(new Vector3(x, y, z) * Time.deltaTime * speed);

    }
}
