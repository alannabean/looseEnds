draw_set_font(config.cFont);
draw_set_valign(config.cHalign);
draw_set_halign(config.cValign);

if IsChatterbox(chatterbox) and text != undefined

{
	
	draw_sprite_ext(config.cSprite, config.cSubImg, config.cTextboxX, config.cTextboxY, config.cXScale, config.cYScale, config.cRot, config.cColor, config.cAlpha);
	
	var _visibleText = config.cTypewriter ? string_copy(text, 1, typewriterCount) : text;
	draw_text_ext(config.cTextX, config.cTextY, _visibleText, config.cTextSep,  config.cTextW);
	
	
	if ChatterboxGetOptionCount(chatterbox)
	{
		for (var i = 0; i < ChatterboxGetOptionCount(chatterbox); i++)
		{
			if ChatterboxGetOptionConditionBool(chatterbox, i)
			{
				_yy = (config.cOptionY) * (i + config.cOptionSep);
				_xx = (config.cOptionX);
				
				var _icon = "";
				if (option_index == i) _icon = config.cOptionIcon;
				var _option = ChatterboxGetOption(chatterbox, i);
				draw_text(_xx, _yy, _icon + _option);
			}
		} 
	}
}