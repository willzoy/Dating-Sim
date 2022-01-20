function scr_choice_handler(){
	
	switch(global.script)
	{
		case "test": choice_test();
	}
	
	if (once = 0) {var _current = 0;}
	
	var _draw_current = 0;
	
	while(_current <= choice_last)
	{
		var _x = 960;
		var _y = 864+75 * _current;
		
		instance_create_layer(_x,_y,"Choices",obj_choice_box);
		
		with(instance_find(obj_choice_box,_current)) {picked = _current;}
				
		_current++;
	}
	
	while(_draw_current <= choice_last)
	{
		var _x = 960;
		var _y = 864+75 * _draw_current;
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_dialog);
		draw_set_colour(c_black);
		
		draw_text(_x,_y,choice[_draw_current]);
		
		_draw_current++;
	}
}