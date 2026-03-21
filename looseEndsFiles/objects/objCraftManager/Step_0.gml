


if (objPenny.image_xscale == -1){

knitX = objPenny.x - 7;
knitY = objPenny.y - 11;

}else{
knitX = objPenny.x - 12;
knitY = objPenny.y - 11;
}

if (knitProgress > knitInterval){
	objPenny.knitLevel += 1;
	objPenny.image_speed = 0;
	alarm[0] = 10;
	knitProgress = knitInterval;
	}

if (knitProgress <= knitInterval) && objPenny.sprite_index == sprPennyKnittingYarn{
		
	visible = true;
	
	global.timeSpeed = global.constantTimeSpeed*5;
	knitProgress++;
	
	}else {
	visible = false;
	global.timeSpeed = global.constantTimeSpeed;
	 }
	
