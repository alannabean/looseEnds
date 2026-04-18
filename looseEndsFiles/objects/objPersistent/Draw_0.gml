
//start room only
if room == startRoom{
	
draw_set_font(fntTitle);

draw_text((room_width/4) - 16, (room_height/4) - 8, "l o o s e  e n d s");
}

//actual rooms


if room != startRoom && room != creditsRoom && room != computerRoom{
	
	draw_set_font(fntZelda);
	draw_set_color(#C7CFCC);
	draw_text(40, timeTextY, "June " + string(global.todayDate) + ", 2009");
	
	
	if minutes <= 9 && global.dayTime == true{
	
	draw_text(timeTextX, timeTextY,  string(hours) + ":0" + string(minutes) + " a.m.");
	
	}
	else if minutes >= 10 && global.dayTime == true{
	
	draw_text(timeTextX, timeTextY,  string(hours) + ":" + string(minutes) + " a.m.");
	
	}
	
	if minutes <= 9 && global.dayTime == false{
	
	draw_text(timeTextX, timeTextY,  string(hours) + ":0" + string(minutes) + " p.m.");
	
	}
	else if minutes >= 10 && global.dayTime == false{
	
	draw_text(timeTextX, timeTextY,  string(hours) + ":" + string(minutes) + " p.m.");
	
	}
	

	//draw_text(16, 32, string(global.timeSpeed)) //debugging only
}

if hours24 >= sunsetHour or hours24 < sunriseHour{

	layer_destroy("dayLayer");
	layer_create(700, "nightLayer")
}
	
	else if hours24 > sunriseHour or hours24 <= sunsetHour{
			layer_destroy("nightLayer");
	layer_create(600, "dayLayer")
	
	}
