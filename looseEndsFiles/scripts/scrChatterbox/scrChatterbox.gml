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
	
	
ChatterboxAddFunction("getRandomJob", function(_email){
	_job = job[random(array_length(job)) + _email];
	return _job;
	});
	
ChatterboxAddFunction("getRandomCompany", function(_email){
	_company = company[random(array_length(company)) - _email];
	return _company;
	});
	
ChatterboxAddFunction("getRandomRecruiter", function(_email){
	_recruiterFirstName = firstName[random(array_length(firstName)) - _email];
	_recruiterLastName = lastName[random(array_length(lastName)) - _email];
	_recruiter = _recruiterFirstName + " " + _recruiterLastName;
	return _recruiter;
	});
	
ChatterboxAddFunction("getRandomMood", function(){
	_mood = mood[random(array_length(mood))]
	return _mood;
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
	if objDish.dishFull == true{
		objDish.dishFull = false;
	}
	
	global.todayDate++
	
});


ChatterboxAddFunction("endPennySleeping", function(){
	
	objPenny.pennySleeping = false;
	global.time =  global.dayLength/3;
	global.timeSpeed = 10;
});

ChatterboxAddFunction("pennyCooking", function(){
	
	objPenny.pennyCooking = true;
	objPenny.x = 234;
	objPenny.y = 116;
	objPenny.image_xscale = 1;
	global.timeSpeed = 5;
	show_debug_message("i'm cooking");
	
});

ChatterboxAddFunction("endPennyCooking", function(){
	
	objPenny.pennyCooking = false;
	show_debug_message("done cooking");
	objPenny.x = 240;
	objPenny.y = 122;
	objPenny.image_xscale = 1;
	global.timeSpeed = 10;
});

ChatterboxAddFunction("pennyBathing", function(){
	
	objPenny.pennyBathing = true;
	objPenny.x = objBathtub.x+2;
	objPenny.y = objBathtub.y+6;
	objBathtub.sprite_index = sprBathtubFill;
	global.timeSpeed = 5;
	show_debug_message("i'm in the bath");
	
});

ChatterboxAddFunction("endPennyBathing", function(){
	
	objPenny.pennyBathing = false;
	objBathtub.sprite_index = sprBathtub;
	global.timeSpeed = 10;
	show_debug_message("done with the bath");
});