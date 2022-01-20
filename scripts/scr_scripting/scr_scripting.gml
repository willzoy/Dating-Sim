function scr_scripting(_text_level,_text,_priority,_name = "",_new_pose = false,_pose_target = undefined,_pose_change = undefined){
	speaking[_text_level] = _name;									//_text_level - the value that text_current should be to trigger it
	speaking_priority[_text_level] = _priority;						//_name - the name of the character speaking, optional
	pose[_text_level,0] = _new_pose;								//_text - the text to be drawn
	text[_text_level] = _text;										//_priority - the character object to be shown speaking
																	//_new_pose - whether there's a pose change, optional, defaults to false
	if(pose[_text_level,0] = true)									//_pose_target - the character object to have their pose changed, optional
	{																//_pose_change - the sprite the _pose_target will be changed to, optional
		pose[_text_level,1] = _pose_target;								
		pose[_text_level,2] = _pose_change;
	}
}