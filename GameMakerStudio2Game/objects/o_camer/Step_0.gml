/// @description Update camera

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}



x += (xTo -x);
y += (yTo -y);

camera_set_view_pos(cam,x-view_w,y-view_h);

if (layer_exists("clouds1"))
{
	layer_x("clouds1",x/4);
	layer_y("clouds1",y/4);
}

if (layer_exists("clouds2"))
{
	layer_x("clouds2",x/2);
	layer_y("clouds2",y/2);
}
