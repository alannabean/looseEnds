//-------general commands---------

var _count = ChatterboxGetOptionCount(chatterbox);

if keyboard_check_pressed(vk_space) && !typewriterDone && config.cTypewriter == true{
	
	typewriterCount = string_length(text);
	typewriterDone = true;


}else if ChatterboxIsWaiting(chatterbox) and keyboard_check_pressed(vk_space)
{
	ChatterboxContinue(chatterbox);
	chatterbox_update();
	typewriterCount = 0;
	typewriterDone = false;

}

else if _count
{

	var _key = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	
	repeat (1 + (ChatterboxGetOptionConditionBool(chatterbox, wrap(option_index + _key, 0, _count - 1)) == false))
	{
		option_index = wrap(option_index + _key, 0, _count - 1);
	}
	
	if keyboard_check_pressed(vk_space)
	{
		ChatterboxSelect(chatterbox, option_index);
		option_index = 0;
		chatterbox_update();
		typewriterCount = 0;
		typewriterDone = false;
		
		}
}




if (!typewriterDone) && (config.cTypewriter == true){
	
	typewriterCount += config.cSpeed;
	if typewriterCount >= string_length(text)
	{
		typewriterCount = string_length(text);
		typewriterDone = true;
	}
	
	
};

if ChatterboxIsStopped(chatterbox)
{
	show_debug_message("obj destroyed at time: " + string(current_time));
	alarm[0] = 1;
}

//---------special Chatterboxes--------

if ((ChatterboxGetCurrent(chatterbox) = "Calendar") && !instance_exists(objCalendar)){
	
	instance_create_layer(113, 50, "chatterboxDrawLayer", objCalendar);
	
	
}else if ((ChatterboxGetCurrent(chatterbox) != "Calendar") && instance_exists(objCalendar)){
	instance_destroy(objCalendar);
}