event_inherited();

if (x > objPenny.x + 32) && (image_xscale <= 1) && (sprite_index == sprGingerbreadAwake){
	image_xscale = -1;
}

if (x < objPenny.x - 32) && (image_xscale <= 1) && (sprite_index == sprGingerbreadAwake){
	image_xscale = 1;
}

if (objDish.dishFull == true){
	myText[0] = "prrrrrrrrrrrrr";
	
}

if (sprite_index == sprGingerbreadSleeping){
	myText[0] = "zzzzzzzzzzzzzz";
}