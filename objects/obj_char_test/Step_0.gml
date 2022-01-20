if(global.mode_current = mode.choice)
{
	is_speaking = false;
}

if(is_speaking = false) 
{
	if(image_xscale = 1.2) {TweenEasyScale(image_xscale,image_yscale,1,1,0,0.5,EaseInOutSine);}
	
	layer = layer_get_id("Not_Speaking");
	draw_self();
} else if(is_speaking = true)
{	
	if(image_xscale = 1) {TweenEasyScale(image_xscale,image_yscale,1.2,1.2,0,0.5,EaseInOutSine);}
	
	layer = layer_get_id("Characters");
	draw_self();
}