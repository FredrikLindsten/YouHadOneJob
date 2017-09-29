/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 30BAA197
/// @DnDArgument : "expr" "instance_exists(obj_player)"
/// @DnDArgument : "not" "1"
if(!(instance_exists(obj_player)))
{
	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 34B8F989
	/// @DnDParent : 30BAA197
	return;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3622DA58
/// @DnDArgument : "expr" "collision_line(x,y,obj_player.x,obj_player.y,obj_wall,true,true)"
if(collision_line(x,y,obj_player.x,obj_player.y,obj_wall,true,true))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1791C63A
	/// @DnDParent : 3622DA58
	speed = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 10F4B0E1
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 419E4E5C
	/// @DnDParent : 10F4B0E1
	/// @DnDArgument : "speed" "3"
	speed = 3;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C717460
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "attackcooldown"
attackcooldown += -1;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 10F9352E
/// @DnDArgument : "x" "obj_player.x"
/// @DnDArgument : "y" "obj_player.y"
direction = point_direction(x, y, obj_player.x, obj_player.y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37D33B49
/// @DnDArgument : "var" "range"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "distance_to_object(obj_player)"
if(range >= distance_to_object(obj_player))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E288A0D
	/// @DnDParent : 37D33B49
	/// @DnDArgument : "var" "attackcooldown"
	/// @DnDArgument : "op" "3"
	if(attackcooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 039BD7A0
		/// @DnDApplyTo : 4e0ba085-737f-4fa4-9732-c40c5574ce7b
		/// @DnDParent : 2E288A0D
		/// @DnDArgument : "expr" "- obj_troll.damage"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hp"
		with(obj_player) {
		hp += - obj_troll.damage;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63DE739E
		/// @DnDParent : 2E288A0D
		/// @DnDArgument : "expr" "attackcooldownmax"
		/// @DnDArgument : "var" "attackcooldown"
		attackcooldown = attackcooldownmax;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58F76536
		/// @DnDApplyTo : 4e0ba085-737f-4fa4-9732-c40c5574ce7b
		/// @DnDParent : 2E288A0D
		/// @DnDArgument : "var" "hp"
		/// @DnDArgument : "op" "3"
		with(obj_player) var l58F76536_0 = hp <= 0;
		if(l58F76536_0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 06B87E8E
			/// @DnDApplyTo : 4e0ba085-737f-4fa4-9732-c40c5574ce7b
			/// @DnDParent : 58F76536
			with(obj_player) instance_destroy();
		}
	}
}