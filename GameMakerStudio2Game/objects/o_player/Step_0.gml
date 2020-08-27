key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
grounded=place_meeting(x,y+1,o_ground);


var move = key_right - key_left;

hsp = move * walksp;

vsp += grv;

if (grounded)
{
	double_jump=false;
}

if (grounded) && (key_jump)
{
	vsp = jump_height;
	
}

if (!grounded) && (key_jump) && (!double_jump)
{
	vsp = jump_height;
	double_jump=true;
	
}

var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

if (place_meeting(x+hsp_final,y,o_ground))
{
	while (!place_meeting(x+sign(hsp_final),y,o_ground))
	{
		x += sign(hsp_final);
	}
	hsp_final = 0;
	hsp=0
}

x += hsp_final;

var vsp_final = vsp + vsp_carry;
vsp_carry = 0;

if (place_meeting(x,y+vsp_final,o_ground))
{
	while (!place_meeting(x,y+sign(vsp_final),o_ground))
	{
		y += sign(vsp_final);
	}
	vsp_final= 0;
	vsp=0;
}

y += vsp_final;

if(y>room_height)
scr_death();

//Animation
if (!grounded)
{
	sprite_index = s_player_jump;
}
else
{
	if (hsp == 0)
	{
		sprite_index = s_player;
	}
	else
	{
		sprite_index = s_player_run;
	}	
}

if (hsp != 0) 
image_xscale = sign(hsp);

