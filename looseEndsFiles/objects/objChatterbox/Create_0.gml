ChatterboxLoadFromFile("looseEnds.yarn");


ChatterboxAddFunction("changeRoom", function(_roomName){
	room_goto(asset_get_index(_roomName));
	});
	

chatterbox = ChatterboxCreate();
ChatterboxJump(chatterbox, "Start");
chatterbox_update();

option_index = 0;

textboxEmailX = 96;
textboxEmailY = 32;