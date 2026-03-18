if place_meeting(x+16, y, objPenny) or place_meeting(x, y+16, objPenny) or place_meeting(x-16, y, objPenny) or place_meeting(x, y-16, objPenny){

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
if (x > objPenny.x + 32) && (image_xscale <= 1) && (sprite_index == sprGingerbreadAwake){
	image_xscale = -1;
}

if (x < objPenny.x - 32) && (image_xscale <= 1) && (sprite_index == sprGingerbreadAwake){
	image_xscale = 1;
}

if (objDish.dishFull == true){
	yarnNode = "catHappy";
	}

if (sprite_index == sprGingerbreadSleeping){
	yarnNode = "catSleeping";
}
