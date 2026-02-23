


if (objPenny.image_xscale == -1){

knitX = objPenny.x - 7;
knitY = objPenny.y - 11;

}else{
knitX = objPenny.x - 12;
knitY = objPenny.y - 11;
}

if (knitProgress > knitInterval){
	objPenny.knitLevel += 1;
	knitProgress = 0;
	

	}

if (knitProgress <= knitInterval) && objPenny.sprite_index == sprPennyKnittingYarn{
		
	visible = true;

	
	knitProgress++;
	
	}else {
	visible = false;
	 }
	


	
