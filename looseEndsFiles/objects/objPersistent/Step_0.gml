

if global.todayDate == 3 {global.extraEmail = 1}
if global.todayDate == 4 {global.extraEmail = 2}


if keyboard_check_pressed(vk_tab){game_restart()}


if global.todayDate == 31 {game_end()};

if room == livingRoom && !audio_is_playing(sndRain){
	audio_play_sound(sndRain, 0, true);
	
}