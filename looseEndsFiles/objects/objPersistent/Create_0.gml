global.todayDate = 1;

ChatterboxLoadFromFile("looseEnds.yarn");

ChatterboxAddFunction("changeRoom", function(_roomName){
	room_goto(asset_get_index(_roomName));
	});

ChatterboxAddFunction("getTodayDate", function(){
	return global.todayDate;
	});