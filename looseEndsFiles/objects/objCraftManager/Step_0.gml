


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
	
		if (myTextbox == noone && textRead == false){
	myTextbox = instance_create_layer(x, y, "textLayer", objTextbox);
	myTextbox.text = myText;
	myTextbox.creator = self;
	textRead = true;
		}
	
	knitProgress++;
	
	}else {
	visible = false;
	
		if (myTextbox != noone){
	instance_destroy(myTextbox);
	myTextbox = noone;
	 }
	
}

	
