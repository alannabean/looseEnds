if global.weatherRainy == true{

	sprite_index = sprWindowRain;
	show_debug_message("it's raining...");
	
}

else if global.weatherSunny == true{
	
	sprite_index = sprWindowSun;
	show_debug_message("it's sunny!");
	
}

draw_self();
depth = -15999;