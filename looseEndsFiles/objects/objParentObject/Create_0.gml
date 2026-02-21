yarnNode = "Start";


textboxWidth = sprite_get_width(sprTextbox);
textboxHeight = sprite_get_height(sprTextbox);
xMargin = 6;
yMargin = 4;
xPos = (room_width - textboxWidth)/2;
yPos = room_height/6;


chatterbox_config = {

	cFont: fntZelda,
	cHalign: fa_left,
	cValign: fa_top,
	cSprite: sprTextbox,
	cSubImg: 0,
	cTextboxX: xPos,
	cTextboxY: yPos,
	cTextX: xPos + xMargin,
	cTextY: yPos + yMargin,
	cTextSep: 13,
	cTextW: textboxWidth - (xMargin*3),
	cXScale: 1,
	cYScale: 1,
	cRot: 0, 
	cColor: c_white,
	cAlpha: 1,
	cTypewriter: true,
	cSpeed: .5,
	cOptionX: (xPos + textboxWidth + (xMargin*4)),
	cOptionY: 18.5,
	cOptionSep: 8,
	cOptionIcon: "> "

}



depth = -bbox_bottom;