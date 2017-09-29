anglevar = point_direction(obj_player.x, obj_player.y, x, y);

if(distance_to_object(obj_player) <= swingDistance)
{
	if(anglevar <= (obj_player.direction + (swingAngle/2))
	&& anglevar >= (obj_player.direction - (swingAngle/2)))
	{
		hp += -1;
		
		if(hp == 0)
		{
			instance_destroy();
		}
	}
}
