if place_meeting(x, y, objPenny) && objPenny.pennyKnitting == false{
	if keyboard_check_pressed(vk_space) && lightsOn == false{
	alarm[0] = 1;
	
	show_debug_message("lights on");
}

if keyboard_check_pressed(vk_space) && lightsOn == true{
	alarm[1] = 1;
	
	show_debug_message("lights off");
}
}