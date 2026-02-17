
if place_meeting(x, y, objPenny){
	if (keyboard_check_pressed(vk_space)) && (newDayDebounceFlag == false){
	if (myTextbox == noone){
	myTextbox = instance_create_layer(x, y, "textLayer", objTextbox);
	myTextbox.text = myText;
	myTextbox.creator = self;
		}
		instance_create_layer(0, 0, "textLayer", objFilter);
		global.todayDate++;
		newDayDebounceFlag = true;
	}
//when the player is no longer in collision, destroy textbox
} else {
	if (myTextbox != noone){
	instance_destroy(myTextbox);
	myTextbox = noone;
	 }
	 newDayDebounceFlag = false;
}