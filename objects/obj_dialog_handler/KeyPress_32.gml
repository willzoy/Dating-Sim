

var _len = string_length(text[text_current]);

if (char_current < _len)														//If the currently drawn string is less than
{																				//the total string length, draw whole string
	char_current = _len;
} else {
	text_current += 1;
	
	//Checking for choice
	if(text[text_current] = 0)
	{
		global.mode_current = mode.choice;
		once = 0;
	} else if (text_current > text_last) //bro that shouldn't happen
	{
        room_restart();
	} else {																	//If the currently drawn string is equal to the total
	    text[text_current] = string_wrap(text[text_current], text_width);		//string length, move on to the next piece of text
        char_current = 0;
	}
}

if(instance_exists(obj_continue)) {instance_destroy(obj_continue);}