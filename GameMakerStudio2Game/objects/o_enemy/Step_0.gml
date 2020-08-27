hsp = dir * walksp;
vsp += grv;

if (place_meeting(x+hsp,y,o_ground))
{
	while (!place_meeting(x+sign(hsp),y,o_ground))
	{
		x += sign(hsp);
	}
	hsp = 0;
	dir *= -1;
}

x += hsp;

if (place_meeting(x,y+vsp,o_ground))
{
	while (!place_meeting(x,y+sign(vsp),o_ground))
	{
		y += sign(vsp);
	}
	vsp= 0;
	
	if(check_edges) && (!position_meeting(x+(sprite_width/2), y+(sprite_height/2)+how_big_edge, o_ground))
	{
		dir *= -1;
	}
	
}

y += vsp;



if (hsp != 0) 
image_xscale = sign(hsp);

//Enemy Collision

if (place_meeting(x,y,o_player))
{
	
	scr_death();
}