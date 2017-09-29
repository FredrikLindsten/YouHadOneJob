if(!(instance_exists(obj_player)))
{
	return;
}
anglevar = point_direction(obj_player.x, obj_player.y, x, y);

draw_text(x,y,string(anglevar));

if(distance_to_object(obj_player) <= obj_player.swingDistance)
{
    if(anglevar <= (obj_player.image_angle + (obj_player.swingAngle/2))
    && anglevar >= (obj_player.image_angle - (obj_player.swingAngle/2)))
    {
        hp += -1;
        
        if(hp <= 0)
        {
            instance_destroy();
        }
    }
}