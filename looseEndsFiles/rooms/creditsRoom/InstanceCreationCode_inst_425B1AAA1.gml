ChatterboxJump(chatterbox, "Credits");
chatterbox_update();

draw_set_font(fntMain);
draw_set_valign(fa_center);

config = {
	cFont: fntMain,
	cHalign: fa_center,
	cValign: fa_center,
	cSprite: sprTextboxNone,
	cSubImg: 0,
	cTextboxX: 108,
	cTextboxY: 116,
	cTextX: room_width/2,
	cTextY: room_height/2,
	cTextSep: 13,
	cTextW: 128,
	cXScale: .5,
	cYScale: 1,
	cRot: 0, 
	cColor: c_white,
	cAlpha: 1,
	cTypewriter: false,
	cSpeed: 2,
	cOptionX: 140,
	cOptionY: room_height/12,
	cOptionSep: 8,
	cOptionIcon: "> ",
	cArrowX: 0,
	cArrowY: 0,
	cArrowExists: false
}

objPenny.visible = false;

