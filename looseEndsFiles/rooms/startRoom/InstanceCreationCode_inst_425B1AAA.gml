ChatterboxJump(chatterbox, "Title");
chatterbox_update();

chatterboxSprite = sprTextbox;

draw_set_font(fntMain);
draw_set_valign(fa_left);

chatterboxTextboxX = 108;
chatterboxTextboxY = 116;

chatterboxTextX = 114;
chatterboxTextY = 32;
chatterboxTextSep = 13;
chatterboxTextW = 128;

chatterboxXScale = .5;
chatterboxYScale = 1;
chatterboxRot = 0; 
chatterboxColor = c_white; 
chatterboxAlpha = 1;

optionX = 140;
optionY = room_height/12;
optionSep = 8;

optionIcon = "> ";