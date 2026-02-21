ChatterboxJump(chatterbox, "Start");
chatterbox_update();

draw_set_font(fntMain);
draw_set_valign(fa_left);

config = {
	cFont: fntMain,
	cHalign: fa_left,
	cValign: fa_top,
	cSprite: sprComputerText,
	cSubImg: 0,
	cTextboxX: 96,
	cTextboxY: 32,
	cTextX: 104,
	cTextY: 36,
	cTextSep: 13,
	cTextW: 128,
	cXScale: 1,
	cYScale: 1,
	cRot: 0, 
	cColor: c_white,
	cAlpha: 1,
	cTypewriter: false,
	cSpeed: 2,
	cOptionX: 104,
	cOptionY: room_height/9.75,
	cOptionSep: 2,
	cOptionIcon: "> "
	
}

