

if (point_toward == 0) && (x==pointsXY[1,0]) && (y==pointsXY[1,1])
{
	move_towards_point(pointsXY[0,0],pointsXY[0,1],move_speed);
	point_toward++;
	dirX=-1;
	dirY=0;
}

else if (point_toward == 1) && (x==pointsXY[0,0]) && (y==pointsXY[0,1])
{
	move_towards_point(pointsXY[1,0],pointsXY[1,1],move_speed);
	point_toward--;
	dirX=1;
	dirY=0;
}

hsp=move_speed*dirX;
vsp=move_speed*dirY;

if (round(o_player.y+(o_player.sprite_height/2)) > y)
mask_index = -1;
else
{
	mask_index = s_4xplatform;
	if (place_meeting(x,y-1,o_player))
	{
		o_player.hsp_carry = hsp;
		o_player.vsp_carry = vsp;
	}
}