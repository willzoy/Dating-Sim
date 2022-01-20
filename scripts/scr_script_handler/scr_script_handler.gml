function scr_script_handler(){

	switch(global.script)
	{
		case "test": script_test();
	}
	
	//Determines which characters are and aren't speaking
	if(text_current != 0){speaking_priority[text_current-1].is_speaking = false;}
	speaking_priority[text_current].is_speaking = true;
	
	//Changes posing of characters
	if (pose[text_current,0] = true)
	{
		scr_pose_change(pose[text_current,1],pose[text_current,2])
	}
	
	//Text Parameters
	draw_set_font(fnt_dialog);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_black);

	//Getting the needed letter
	var _len = string_length(text[text_current]);
	if (char_current < _len)
	{
		char_current += char_speed;
	} else {
		if(!instance_exists(obj_continue)) {instance_create_layer(1850,1050,"Instances",obj_continue);}
	}

	//Drawing the text
	var _str = string_copy(text[text_current], 1, char_current);
	draw_text(text_x, text_y,  _str);
	
	//Drawing speaking character's name
	draw_text(60,810,speaking[text_current]);
}