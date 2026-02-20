

if IsChatterbox(chatterbox) and text != undefined

{
	
	draw_sprite_ext(chatterboxSprite, chatterboxSubImg, chatterboxTextboxX, chatterboxTextboxY, chatterboxXScale, chatterboxYScale, chatterboxRot, chatterboxColor, chatterboxAlpha);
	draw_text_ext(chatterboxTextX, chatterboxTextY, text, chatterboxTextSep, chatterboxTextW);
	
	
	if ChatterboxGetOptionCount(chatterbox)
	{
		for (var i = 0; i < ChatterboxGetOptionCount(chatterbox); i++)
		{
			if ChatterboxGetOptionConditionBool(chatterbox, i)
			{
				_yy = (optionY) * (i + optionSep);
				_xx = (optionX);
				
				var _icon = "";
				if (option_index == i) _icon = optionIcon;
				var _option = ChatterboxGetOption(chatterbox, i);
				draw_text(_xx, _yy, _icon + _option);
			}
		} 
	}
}