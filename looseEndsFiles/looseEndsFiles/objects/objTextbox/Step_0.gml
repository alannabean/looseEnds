

if (keyboard_check_pressed(vk_space)){
//skip through typing text with space bar
	if (charCount < string_length(text[page])){
		charCount = string_length(text[page]);
//go to the next page with space bar (if possible)
	} else if(page+1 < array_length(text)){
	page += 1;
	charCount = 0;
//destroy textbox when done with space bar
	} else {
		instance_destroy();
		creator.myTextbox = noone; 
	}
}