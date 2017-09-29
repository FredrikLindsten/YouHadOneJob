image_angle = point_direction(x, y, mouse_x, mouse_y);

Up = false;
Down = false;
Left = false;
Right = false;

if (keyboard_check(vk_left))
{
	Left = true;
}

if (keyboard_check(vk_right))
{
	Right = true;
}

if (keyboard_check(vk_up))
{
	Up = true;
}

if (keyboard_check(vk_down))
{
	Down = true;
}

CurrentFriction = 0;
if(!OnWetFloor)
{
	CurrentFriction = FloorFriction;
} else {
	CurrentFriction = WetFloorFriction;
}


if(!Left && !Right) {
	if(hspeed < 0) {
		hspeed += CurrentFriction;
		if(hspeed > 0) {
			hspeed = 0;
		}
	} else if(hspeed > 0){
		hspeed -= CurrentFriction;
		
		if(hspeed < 0) {
			hspeed = 0;
		}
	}
}

if(!Up && !Down) {
	if(vspeed < 0) {
		vspeed += CurrentFriction;
		
		if(vspeed > 0) {
			vspeed = 0;
		}
	} else if(vspeed > 0){
		vspeed -= CurrentFriction;
		
		if(vspeed < 0) {
			vspeed = 0;
		}
	}
}


if (Left)
{
	hspeed -= Speed;
	if(hspeed < -TopSpeed) {
		hspeed = -TopSpeed;
	}
}

if (Right)
{
	hspeed += Speed;
	if(hspeed > TopSpeed) {
		hspeed = TopSpeed;
	}
}

if (Up)
{
	vspeed -= Speed;
	if(vspeed < -TopSpeed) {
		vspeed = -TopSpeed;
	}
}

if (Down)
{
	vspeed += Speed;
	if(vspeed > TopSpeed) {
		vspeed = TopSpeed;
	}
}
