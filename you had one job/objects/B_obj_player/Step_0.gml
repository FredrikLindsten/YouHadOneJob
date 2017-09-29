/// @deceleration
// You can write your code in this editor
if (!keyboard_check(vk_down)){
	if(vspeed > 0){
		vspeed -= global.PLayerDV;
	}
}
if (!keyboard_check(vk_up)){
	if(vspeed < 0){
		vspeed += global.PLayerDV;
	}
}
if (!keyboard_check(vk_left)){
	if(hspeed < 0){
		hspeed += global.PLayerDV;
	}
}
if (!keyboard_check(vk_right)){
	if(hspeed > 0){
		hspeed -= global.PLayerDV;
	}
}