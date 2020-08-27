if (place_meeting(x,y,o_player)) && (!collected)
{
	o_player.coins_score += coins_value; 
	
	
	collected = true;
}

if(collected)
{
	audio_play_sound(so_coin,1,false)
	scr_coinParticle(x,y);
	instance_destroy();
}