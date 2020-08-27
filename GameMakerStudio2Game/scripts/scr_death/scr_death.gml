	scr_deathParticle(o_player.x,o_player.y);
	audio_play_sound(so_death,2,false)

if (global.checkpointR !=0)
{

	
	o_player.coins_score -= o_player.score_death_penalty;
	if(o_player.coins_score<0)
	o_player.coins_score=0;
	
	
	o_player.x=global.checkpointX;
	o_player.y=global.checkpointY;
	
	scr_respawnParticle(global.checkpointX,global.checkpointY);
}
else
{
	room_restart();
}