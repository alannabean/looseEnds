
//computer text
if instance_exists(objComputerManager){
//draw textbox
draw_sprite_ext(sprTextbox, 0, textboxEmailX, textboxEmailY, .75, 3.5, 0, c_white, 1);

//set font
draw_set_font(fntMain);

//increment character counter

if (charCount < string_length(text[page])){

charCount += 1;

}
// copy part of the text
textPart = string_copy(text[page], 1, charCount);

//draw part of the text 

	draw_text_ext(textboxEmailX+xBuffer, textboxEmailY+yBuffer, textPart, stringHeight, boxWidth - (4*xBuffer));
}
else{//overworld text
	//draw textbox
draw_sprite(sprTextbox, 0, textboxX, textboxY);

//set font
draw_set_font(fntMain);

//increment character counter

if (charCount < string_length(text[page])){

charCount += .25;

}
// copy part of the text
textPart = string_copy(text[page], 1, charCount);

//draw part of the text 
draw_text_ext(textboxX+xBuffer, textboxY+yBuffer, textPart, stringHeight, boxWidth - (2*xBuffer));
}