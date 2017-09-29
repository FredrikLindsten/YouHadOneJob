if(!(instance_exists(obj_player)))
{
	return;
}
if(collision_line(x,y,obj_player.x,obj_player.y,obj_wall,true,true))
{
	speed = 0;
}
else
{
	speed = 3;
}

attackcooldown += -1;

direction = point_direction(x, y, obj_player.x, obj_player.y);


if(range >= distance_to_object(obj_player))
{
	if(attackcooldown <= 0)
	{
		with(obj_player) {
		hp += - obj_troll.damage;
		}
		attackcooldown = attackcooldownmax;
	
		with(obj_player) var l58F76536_0 = hp <= 0;
		if(l58F76536_0)
		{
			with(obj_player) instance_destroy();
		}
	}
}