
draw_set_font(fntMain);
draw_set_valign(fa_left);

if IsChatterbox(chatterbox) and text != undefined

{
	draw_text_ext(100, 32, text, 16, 140);
	
	if ChatterboxGetOptionCount(chatterbox)
	{
		for (var i = 0; i < ChatterboxGetOptionCount(chatterbox); i++)
		{
			if ChatterboxGetOptionConditionBool(chatterbox, i)
			{
				_yy = (room_height/9.5) * (i +2);
				_xx = (90);
				
				var _icon = "";
				if (option_index == i) _icon = "> ";
				var _option = ChatterboxGetOption(chatterbox, i);
				draw_text(_xx, _yy, _icon + _option);
			}
		} 
	}
}