ChatterboxLoadFromFile("looseEnds.yarn");

ChatterboxAddFunction("changeRoom", function(_roomName){
	room_goto(asset_get_index(_roomName));
	});

ChatterboxAddFunction("getTodayDate", function(){
	return global.todayDate;
	});

chatterbox = ChatterboxCreate();

ChatterboxJump(chatterbox, "Start");

chatterbox_update();


draw_set_font(fntMain);

draw_set_valign(fa_left);


option_index = 0;

chatterboxSprite = sprComputerText;

chatterboxSubImg = 0;

chatterboxTextboxX = 96;

chatterboxTextboxY = 32;

chatterboxTextX = 104;
chatterboxTextY = 36;
chatterboxTextSep = 13;
chatterboxTextW = 128;

chatterboxXScale = 1;
chatterboxYScale = 1;
chatterboxRot = 0; 
chatterboxColor = c_white; 
chatterboxAlpha = 1;

optionX = 104;
optionY = room_height/9.75;
optionSep = 2;

optionIcon = "> ";
				
