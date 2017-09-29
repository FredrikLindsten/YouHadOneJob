/// @opening the door
// You can write your code in this editor
if(abs(B_obj_player.x - self.x) < 200  && abs(B_obj_player.y - self.y) < 200){
	if(keyboard_check(vk_space)){
		instance_change(B_obj_open_door, true);
	}
}