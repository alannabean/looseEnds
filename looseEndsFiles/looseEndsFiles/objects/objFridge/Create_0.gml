
event_inherited();

catName = ["Gingerbread ", "Albatross ", "Jemima "];
var chosen_index = irandom(array_length(catName)-1);
var chosen_option = catName[chosen_index];

meal = [" dinners!", " breakfasts!", " lunches!"];
var chosen_index = irandom(array_length(meal)-1);
var chosen_option = meal[chosen_index];


myText[0] = "Hi Penny,";
myText[1] = "Thanks again for taking care of";
myText[2] = (catName[chosen_index]) + "while I'm away.";
myText[3] = "(Don't let her trick you into";
myText[4] = "giving her two" + (meal[chosen_index]);
myText[5] = "Call me at Grandma's if you need";
myText[6] = "anything.";
myText[7] = "* Love, Mom *";
