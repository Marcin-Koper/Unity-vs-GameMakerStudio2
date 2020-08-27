using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KillPlayer : MonoBehaviour
{
    public LevelMenager levelMenager;
    // Start is called before the first frame update
    void Start()
    {
        levelMenager = FindObjectOfType<LevelMenager>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

     void OnTriggerEnter2D(Collider2D other)
    {
        if(other.name =="character")
        {
            levelMenager.RespawnPlayer();
        }
    }
}
