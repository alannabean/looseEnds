
//if the player collides with the object and space bar is pressed, create a textbox

if place_meeting(x, y, objPenny){
	if (keyboard_check_pressed(vk_space)) && (dishFull == false){
	if (myTextbox == noone){
	myTextbox = instance_create_layer(x, y, "textLayer", objTextbox);
	myTextbox.text = myText;
	myTextbox.creator = self;
	image_index = 1;
	dishFull = true;
		}
	}
//when the player is no longer in collision, destroy textbox
} else {
	if (myTextbox != noone){
	instance_destroy(myTextbox);
	myTextbox = noone;
	 }
}