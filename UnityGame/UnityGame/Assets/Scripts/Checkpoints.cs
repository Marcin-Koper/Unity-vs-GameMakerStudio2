﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Checkpoints : MonoBehaviour
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
        if (other.name == "character")
        {
            levelMenager.currentCheckpoint = gameObject;
            Debug.Log("Activated Checkpoint" + transform.position);
        }
    }
}
