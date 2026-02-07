

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