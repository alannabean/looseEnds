
if place_meeting(x, y, objPenny){

		if !instance_exists(objChatterbox) && keyboard_check_pressed(vk_space) && global.newDayFlag == false{
		var _chat = instance_create_layer(x, y, "textLayer", objChatterbox);
		with (_chat)
		{
			ChatterboxJump(chatterbox, other.yarnNode);
			chatterbox_update();
			config = other.chatterbox_config;
		}
		global.newDayFlag = true;
		
	}
	
}else {
	
	 global.newDayFlag = false;
}