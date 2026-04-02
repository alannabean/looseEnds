//game functions

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
	
ChatterboxAddFunction("endGame", function(){
	game_end();
	});

//text randomizer functions

ChatterboxAddFunction("getCatName", function(){
	_catName = catName[random(array_length(catName))];
	return _catName;
	});
	

ChatterboxAddFunction("getRandomFood", function(){
	_food = food[random(array_length(food))];
	return _food;
	});
	
ChatterboxAddFunction("getRandomJob", function(_email){
	_job = job[random(array_length(job)-_email)];
		return _job;
	});
	
ChatterboxAddFunction("getRandomCompany", function(_email){
	_company = company[random(array_length(company)-_email)];
		return _company;
	});
	
ChatterboxAddFunction("getRandomRecruiter", function(_email){
	_recruiterFirstName = firstName[random(array_length(firstName)-_email)];
	_recruiterLastName = lastName[random(array_length(lastName)-_email) ];
	_recruiter = _recruiterFirstName + " " + _recruiterLastName;
	return _recruiter;
	});
	
ChatterboxAddFunction("getRandomDream", function(){
	_dreamVerb= dreamVerb[random(array_length(dreamVerb))]
	_dreamNoun= dreamNoun[random(array_length(dreamNoun))]
	_dream = _dreamVerb + " a " + "\n" + _dreamNoun + "..."
	return _dream;
});
	
ChatterboxAddFunction("getRandomMood", function(){
	_mood = mood[random(array_length(mood))]
	return _mood;
});

//action functions
	
ChatterboxAddFunction("fillDish", function(){
	objDish.image_index = 1;
	objDish.dishFull = true;
});


ChatterboxAddFunction("pennyKnitting", function(_sprKnit){
	
	objPenny.pennyKnitting = true;
	global.timeSpeed = global.constantTimeSpeed*5;
	if !instance_exists(objCraftManager){
		instance_create_layer(0, 0, "textLayer", objCraftManager)
		objCraftManager.spriteKnit = _sprKnit;}
	if instance_exists(objCraftManager) && (objCraftManager.spriteKnit != _sprKnit){
		instance_deactivate_object(objCraftManager);
		instance_create_layer(0, 0, "textLayer", objCraftManager);
		objCraftManager.spriteKnit = _sprKnit;
		}
	
});


ChatterboxAddFunction("endPennyKnitting", function(){
	
	objPenny.pennyKnitting = false;
	global.timeSpeed = global.constantTimeSpeed;

}); //could take this out of chatterbox and call in GML — might give more flexibility, since objCraftManager is already separate

ChatterboxAddFunction("pennySleeping", function(){
	
	objPenny.pennySleeping = true;
	instance_create_layer(0, 0, "textLayer", objFilter);
	if objDish.dishFull == true{
		objDish.dishFull = false;
	}
	
	if global.dayTime == false{
		global.todayDate++}
	
	if global.dayTime == true && objPersistent.hours24 >= objPersistent.sunriseHour{
		global.todayDate++}
});

ChatterboxAddFunction("endPennySleeping", function(){
	
	objPenny.pennySleeping = false;
	global.time =  global.dayLength/3;
	global.timeSpeed = global.constantTimeSpeed;
});

ChatterboxAddFunction("pennyCooking", function(){
	
	objPenny.pennyCooking = true;
	objPenny.x = 234;
	objPenny.y = 116;
	objPenny.image_xscale = 1;
	global.timeSpeed = global.constantTimeSpeed*5;
	show_debug_message("i'm cooking");
	
});

ChatterboxAddFunction("endPennyCooking", function(){
	
	objPenny.pennyCooking = false;
	objPenny.x = 240;
	objPenny.y = 122;
	objPenny.image_xscale = 1;
	global.timeSpeed = global.constantTimeSpeed;
	show_debug_message("done cooking");
});

ChatterboxAddFunction("pennyBathing", function(){
	
	objPenny.pennyBathing = true;
	objPenny.x = objBathtub.x+2;
	objPenny.y = objBathtub.y+6;
	objBathtub.sprite_index = sprBathtubFill;
	global.timeSpeed = global.constantTimeSpeed*5;
	show_debug_message("i'm in the bath");
	
});

ChatterboxAddFunction("endPennyBathing", function(){
	
	objPenny.pennyBathing = false;
	objBathtub.sprite_index = sprBathtub;
	global.timeSpeed = global.constantTimeSpeed;
	show_debug_message("done with the bath");
});
