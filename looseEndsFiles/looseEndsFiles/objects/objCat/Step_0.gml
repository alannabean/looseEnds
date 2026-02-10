event_inherited();

if (x > objPenny.x + 16) && (image_xscale <= 1) {
	image_xscale = -1;
}

if (x < objPenny.x - 16) && (image_xscale <= 1){
	image_xscale = 1;
}