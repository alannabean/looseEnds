global.todayDate = 1;
global.extraEmail = 0;



ChatterboxLoadFromFile("looseEnds.yarn");

ChatterboxAddFunction("changeRoom", function(_roomName){
	room_goto(asset_get_index(_roomName));
	});
	
ChatterboxAddFunction("movePenny", function(_xPen, _yPen){
	objPenny.x = _xPen;
	objPenny.y = _yPen;
	});

ChatterboxAddFunction("getTodayDate", function(){
	return global.todayDate;
	});
	
ChatterboxAddFunction("getExtraEmail", function(){
	return global.extraEmail;
	});
	
	
ChatterboxAddFunction("fillDish", function(){
	objDish.image_index = 1;
	objDish.dishFull = true;
});


ChatterboxAddFunction("pennyKnitting", function(_pat){
	
	objPenny.pennyKnitting = true;
	if !instance_exists(objCraftManager){
		instance_create_layer(x, y, "textLayer", objCraftManager)
		show_debug_message("craft manager open")
		objCraftManager.spriteKnit = _pat;}

});

ChatterboxAddFunction("endPennyKnitting", function(){
	
	objPenny.pennyKnitting = false;

});