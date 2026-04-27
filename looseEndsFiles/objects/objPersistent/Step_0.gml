//time math and functions

if room != startRoom {global.time = (global.time + (1*global.timeSpeed)) mod global.dayLength;}

var total_seconds = global.time;
var total_minutes = total_seconds div 60;
var total_hours = total_minutes div 60;

minutes = total_minutes mod 60;
hours24 = total_hours   mod 24;
hours = ((hours24 + 11) mod 12) + 1;


if (hours24 < 12) {global.dayTime = true}
else{global.dayTime = false}

if global.time >= 86300 && global.time < 86400 && global.dayFlag == false{
	global.todayDate++;
	global.time = 0;
	global.dayFlag = true;
}

if global.dayFlag == true{
	global.dayFlagAlarm++}
	
if global.dayFlagAlarm >= 100{
	global.dayFlag = false;
	global.dayFlagAlarm = 0;
	}

if room == livingRoom && !audio_is_playing(sndRain) && global.weatherRainy == true{
	audio_play_sound(sndRain, 0, true);	
}

	
if global.todayDate >= 1 && global.todayDate < 3{
	
	if hours24 >= sunsetHour or hours24 < sunriseHour{
	global.weatherRainy = false;
	global.weatherSunny = false;
	global.weatherRainyNight = true;
	global.weatherClearNight = false;
	}
	
	else if hours24 > sunriseHour or hours24 <= sunsetHour{
	global.weatherRainy = true;
	global.weatherSunny = false;
	global.weatherRainyNight = false;
	global.weatherClearNight = false;
		
	}
}


if global.todayDate >= 3 {

if hours24 >= sunriseHour {
	
	global.weatherRainy = false;
	global.weatherSunny = true;
	global.weatherRainyNight = false;
	global.weatherClearNight = false;
	if audio_is_playing(sndRain){	
	audio_stop_sound(sndRain)};
}
	
	if hours24 >= sunsetHour{
	
	global.weatherRainy = false;
	global.weatherSunny = false;
	global.weatherRainyNight = false;
	global.weatherClearNight = true;
	if audio_is_playing(sndRain){	
	audio_stop_sound(sndRain)};
	}
	
}




if global.todayDate >= 8 && room != creditsRoom {room_goto(creditsRoom)};

//back button -- move inside objPenny? 

if room != startRoom && keyboard_check_pressed(vk_tab) && instance_exists(objChatterbox) && objPenny.pennySleeping == false{
	
	instance_destroy(objChatterbox)
	
	if instance_exists(objArrow){
		instance_destroy(objArrow)}
		
	if objPenny.pennyCooking == true{
		objPenny.pennyCooking = false
		objPenny.x = 240;
		objPenny.y = 122;
		objPenny.image_xscale = 1;}
		
	if objPenny.pennyKnitting == true{
		objPenny.pennyKnitting = false}
		
	if objPenny.pennyBathing == true{
		objPenny.pennyBathing = false}

		
	if instance_exists(objComputerManager){
		instance_destroy(objComputerManager);
		room_goto(bedRoom);
	}
	
}

//game restart button

if keyboard_check_pressed(vk_control){
	ChatterboxVariablesResetAll();
	game_restart();

	}


