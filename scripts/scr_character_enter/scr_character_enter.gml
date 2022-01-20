function scr_character_enter(_side,_target){
	//for _side: 0 = left, 1 = right
	//_target is the object to enter the scene
	
	if(_side = 0)
	{
		instance_create_layer(-288,576,"Not_speaking",_target);
		
		with(_target) {TweenEasyMove(x,y,384,y,0,0.8,EaseInOutSine);}
	} else if(_side = 1)
	{
		instance_create_layer(2208,576,"Not_speaking",_target);
		
		with(_target) {TweenEasyMove(x,y,1568,y,0,0.8,EaseInOutSine);}
	}
}