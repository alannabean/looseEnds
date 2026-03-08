global.todayDate = 1;
global.weatherRainy = true;
global.weatherSunny = false;

randomize();

rainyDay = random_range(5,10);
sunnyDay = rainyDay + random_range(1,4);

audio_play_sound(sndBackground, 1, true);


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
	
	
ChatterboxAddFunction("fillDish", function(){
	objDish.image_index = 1;
	objDish.dishFull = true;
});


ChatterboxAddFunction("pennyKnitting", function(_sprKnit){
	
	objPenny.pennyKnitting = true;
	if !instance_exists(objCraftManager){
		instance_create_layer(x, y, "textLayer", objCraftManager)
		objCraftManager.spriteKnit = _sprKnit;}
	if instance_exists(objCraftManager) && (objCraftManager.spriteKnit != _sprKnit){
		instance_destroy(objCraftManager)
		instance_create_layer(x, y, "textLayer", objCraftManager)
		objCraftManager.spriteKnit = _sprKnit;}
	
});


ChatterboxAddFunction("endPennyKnitting", function(){
	
	objPenny.pennyKnitting = false;

}); //could take this out of chatterbox and call in GML — might give more flexibility

ChatterboxAddFunction("pennySleeping", function(){
	
	objPenny.pennySleeping = true;
	instance_create_layer(0, 0, "textLayer", objFilter);
	global.todayDate++;
});


ChatterboxAddFunction("endPennySleeping", function(){
	
	objPenny.pennySleeping = false;
});