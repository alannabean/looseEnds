

//if the player collides with the object and space bar is pressed, create a textbox

if place_meeting(x, y, objPenny){

		if !instance_exists(objChatterbox) && keyboard_check_pressed(vk_space){
		var _chat = instance_create_layer(x, y, "textLayer", objChatterbox);
		with (_chat)
		

		{
			ChatterboxJump(chatterbox, other.yarnNode);
			chatterbox_update();
			config = other.chatterbox_config;
		}
				if !audio_is_playing(sndText){
			audio_play_sound(sndText, 1, false)
			
		}
	}
}


