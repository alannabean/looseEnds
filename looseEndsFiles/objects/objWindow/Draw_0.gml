if global.weatherRainy == true{

sprite_index = sprWindowRain;

}

if global.weatherSunny == true{

	sprite_index = sprWindowSun;
	
}
if global.weatherRainyNight == true{
	
	sprite_index = sprWindowRainyNight;
	
}
if global.weatherClearNight == true{
	
	sprite_index = sprWindowClearNight;
	
}

draw_self();

