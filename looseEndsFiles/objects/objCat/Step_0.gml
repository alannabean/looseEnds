if place_meeting(x,y, objPenny){
	if (keyboard_check_pressed(vk_space)){
	if (myTextbox == noone){
	myTextbox = instance_create_layer(x, y, "textLayer", objTextbox);
	myTextbox.text = myText;
	myTextbox.creator = self;
		}
	}
} else {
	if (myTextbox != noone){
	instance_destroy(myTextbox);
	myTextbox = noone;
	 }
}