
 if place_meeting(x, y, objPenny){

		if !instance_exists(objChatterbox) && keyboard_check_pressed(vk_space){
		var _chat = instance_create_layer(x, y, "textLayer", objChatterbox);
		with (_chat)
		{
			ChatterboxJump(chatterbox, other.yarnNode);
			chatterbox_update();
			config = other.chatterbox_config;
		}alarm[0] = random_range(60,120);
	}
 }
	