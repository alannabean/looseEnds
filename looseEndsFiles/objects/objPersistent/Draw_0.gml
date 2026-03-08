if room == startRoom{
	
draw_set_font(fntTitle);

draw_text((room_width/4) - 16, (room_height/4) - 8, "l o o s e  e n d s");
}

if room == livingRoom or room == momRoom or room == bedRoom{
	
	draw_set_font(fntZelda);
	draw_set_color(#C7CFCC);
	draw_text(16, 16, "June " + string(global.todayDate) + ", 2009")
	draw_set_color(c_white);
}