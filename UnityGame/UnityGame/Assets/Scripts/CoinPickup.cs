using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinPickup : MonoBehaviour
{
    public int pointsToAdd;

    public AudioSource coinSoundEffect;

    public GameObject coinParticle;

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.GetComponent<PlayerController>() == null)
            return;

        ScoreMenager.AddPoints(pointsToAdd);

        Instantiate(coinParticle, gameObject.transform.position, gameObject.transform.rotation);
        coinSoundEffect.Play();

        Destroy(gameObject);
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
