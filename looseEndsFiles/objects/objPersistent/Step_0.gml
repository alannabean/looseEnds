
global.time = (global.time + (1*global.timeSpeed)) mod dayLength;

var total_seconds = global.time;
var total_minutes = total_seconds div 60;
var total_hours   = total_minutes div 60;

minutes = total_minutes mod 60;
hours24   = total_hours   mod 24;
hours = ((hours24 + 11) mod 12) + 1;

if (hours24 < 12) {global.dayTime = true}
else{global.dayTime = false}


if room == livingRoom && !audio_is_playing(sndRain) && global.weatherRainy == true{
	audio_play_sound(sndRain, 0, true);	
}

if global.todayDate < 5 && hours24 > sunsetHour{
	global.weatherRainy = false;
	global.weatherSunny = false;
	global.weatherRainyNight = true;
	global.weatherClearNight = false;;
}

else if global.todayDate < 5 && hours24 >= sunriseHour{
	global.weatherRainy = true;
	global.weatherSunny = false;
	global.weatherRainyNight = false;
	global.weatherClearNight = false;;
}



else if global.todayDate >= 5 && global.todayDate < (rainyDay) &&  hours24 >= sunriseHour{
	
	global.weatherRainy = false;
	global.weatherSunny = true;
	global.weatherRainyNight = false;
	global.weatherClearNight = false;
	if audio_is_playing(sndRain){	
	audio_stop_sound(sndRain)};
	
}

else if global.todayDate >= 5 && global.todayDate < (rainyDay) && hours24  >  sunsetHour{
	
	global.weatherRainy = false;
	global.weatherSunny = false;
	global.weatherRainyNight = false;
	global.weatherClearNight = true;
	if audio_is_playing(sndRain){	
	audio_stop_sound(sndRain)};
	
}



else if global.todayDate >= (rainyDay) && hours24 >= sunriseHour{
	
	global.weatherRainy = true;
	global.weatherSunny = false;
	global.weatherRainyNight = false;
	global.weatherClearNight = false;
	if !audio_is_playing(sndRain){	
	audio_play_sound(sndRain, 0, true)};
	
}

else if global.todayDate >= (rainyDay) && hours24  >  sunsetHour{
	
	global.weatherRainy = false;
	global.weatherSunny = false;
	global.weatherRainyNight = true;
	global.weatherClearNight = false;
	if !audio_is_playing(sndRain){	
	audio_play_sound(sndRain, 0, true)};
	
}

else if global.todayDate >= (sunnyDay) && hours24 >= sunriseHour{
	
	global.weatherRainy = false;
	global.weatherSunny = true;
	global.weatherRainyNight = false;
	global.weatherClearNight = false;
	if audio_is_playing(sndRain){	
	audio_stop_sound(sndRain)};
	
}

else if global.todayDate >= (sunnyDay) && hours24  >  sunsetHour{
	
	global.weatherRainy = false;
	global.weatherSunny = false;
	global.weatherRainyNight = false;
	global.weatherClearNight = true;
	if audio_is_playing(sndRain){	
	audio_stop_sound(sndRain)};
	
}

if global.todayDate == 31 {game_end()};