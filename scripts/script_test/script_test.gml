function script_test()
{
	if(once = 0)
	{
		switch (global.script_stage)
		{
			case 0: text_current = 0;
					text_last = 3;
					speaking_last = 3;
					
					scr_character_enter(0,obj_char_test);
					
					speaking[0] = "Testing Guy"
					speaking_priority[0] = obj_char_test;
					pose[0,0] = false;
					text[0] = "This is my first piece of dialogue";
					
					speaking[1] = "Testing Guy"
					speaking_priority[1] = obj_char_test;
					pose[1,0] = false;
					text[1] = "This is some follow-up text";
					
					speaking[2] = "Testing Guy"
					speaking_priority[2] = obj_char_test;
					pose[2,0] = false;
					text[2] = "Now I'm offering you a choice";
					
					speaking[3] = ""
					speaking_priority[3] = obj_char_test;
					pose[3,0] = false;
					text[3] = 0;
				
					break;
			
			case 1: text_current = 0;
				
					if(global.choice = 0)
					{
						text_last = 4;
						speaking_last = 4;
						
						speaking[0] = "Testing Guy"
						speaking_priority[0] = obj_char_test;
						pose[0,0] = false;
						text[0] = "Hello World";
						
						speaking[1] = "Testing Guy"
						speaking_priority[1] = obj_char_test;
						pose[1,0] = false;
						text[1] = "This is a really, really, really, long and silly string to test that the line wrapping works okay.";
						
						speaking[2] = "Testing Guy"
						speaking_priority[2] = obj_char_test;
						pose[2,0] = false;
						text[2] = "I think we need to talk."
						
						speaking[3] = "Testing Guy"
						speaking_priority[3] = obj_char_test;
						pose[3,0] = false;
						text[3] = "You betrayed me and everything I thought you were. A gator security breach in MY batcave? this is complete horseshit and i won't be hearing any of it, I'm going straight to the big man. Yes, the big man and his big FazBalls if you know what I mean."
						
						speaking[4] = ""
						speaking_priority[4] = obj_char_test;
						pose[4,0] = false;
						text[4] = 0;
					} else if(global.choice = 1)
					{
						
						text_last = 2;
						speaking_last = 2;
						
						speaking[0] = "Testing Guy"
						speaking_priority[0] = obj_char_test;
						pose[0,0] = true;
						pose[0,1] = obj_char_test;
						pose[0,2] = spr_char_test2;
						text[0] = "WHY WOULD YOU PISS ME OFF LIKE THAT???"
						
						speaking[1] = "Testing Guy"
						speaking_priority[1] = obj_char_test;
						pose[1,0] = false;
						text[1] = "YOU BASTARD"
						
						speaking[2] = ""
						speaking_priority[2] = obj_char_test;
						pose[2,0] = false;
						text[2] = 0;
					}
					
					break;
					
			case 2: text_current = 0;
				
					if(global.choice = 0)
					{
						if(choice[0] = "Make them happy again")
						{
							
							text_last = 4;
							speaking_last = 4;
						
							speaking[0] = "Testing Guy"
							speaking_priority[0] = obj_char_test;
							pose[0,0] = true;
							pose[0,1] = obj_char_test;
							pose[0,2] = spr_char_test1;
							text[0] = "Hello World";
						
							speaking[1] = "Testing Guy"
							speaking_priority[1] = obj_char_test;
							pose[1,0] = false;
							text[1] = "This is a really, really, really, long and silly string to test that the line wrapping works okay.";
						
							speaking[2] = "Testing Guy"
							speaking_priority[2] = obj_char_test;
							pose[2,0] = false;
							text[2] = "I think we need to talk."
						
							speaking[3] = "Testing Guy"
							speaking_priority[3] = obj_char_test;
							pose[3,0] = false;
							text[3] = "You betrayed me and everything I thought you were. A gator security breach in MY batcave? this is complete horseshit and i won't be hearing any of it, I'm going straight to the big man. Yes, the big man and his big FazBalls if you know what I mean."
						
							speaking[4] = ""
							speaking_priority[4] = obj_char_test;
							pose[4,0] = false;
							text[4] = 0;
						} else {
						
							text_last = 2;
							speaking_last = 2;
						
							speaking[0] = "Testing Guy"
							speaking_priority[0] = obj_char_test;
							pose[0,0] = true;
							pose[0,1] = obj_char_test;
							pose[0,2] = spr_char_test2;
							text[0] = "WHY WOULD YOU PISS ME OFF LIKE THAT???"
						
							speaking[1] = "Testing Guy"
							speaking_priority[1] = obj_char_test;
							pose[1,0] = false;
							text[1] = "YOU BASTARD"
						
							speaking[2] = ""
							speaking_priority[2] = obj_char_test;
							pose[2,0] = false;
							text[2] = 0;
						}
					} else if(global.choice = 1)
					{	
						scr_character_enter(1,obj_char_test_friend);
						
						text_last = 4;
						speaking_last = 4;
						
						speaking[0] = "Friend"
						speaking_priority[0] = obj_char_test_friend;
						pose[0,0] = false;
						text[0] = "Hey there Gus..."
						
						speaking[1] = "Testing Guy"
						speaking_priority[1] = obj_char_test;
						pose[1,0] = true;
						pose[1,1] = obj_char_test;
						pose[1,2] = spr_char_test1;
						text[1] = "What's up Walter!"
						
						speaking[2] = "Friend"
						speaking_priority[2] = obj_char_test_friend;
						pose[2,0] = true;
						pose[2,1] = obj_char_test_friend;
						pose[2,2] = spr_char_test4;
						text[2] = "Not much..."
						
						speaking[3] = "Testing Guy"
						speaking_priority[3] = obj_char_test;
						pose[3,0] = false;
						text[3] = "Why are you such a miserable lump?"
						
						speaking[4] = ""
						speaking_priority[4] = obj_char_test;
						pose[4,0] = false;
						text[4] = 0;
					} else if(global.choice = 2)
					{
						
						text_last = 2;
						speaking_last = 2;
						
						speaking[0] = "Testing Guy"
						speaking_priority[0] = obj_char_test;
						pose[0,0] = true;
						pose[0,1] = obj_char_test;
						pose[0,2] = spr_char_test4;
						text[0] = "You weren't supposed to pick this"
						
						speaking[1] = "Testing Guy"
						speaking_priority[0] = obj_char_test;
						pose[1,0] = false;
						text[1] = "That was there for testing purposes only..."
						
						speaking[2] = ""
						speaking_priority[0] = obj_char_test;
						pose[2,0] = false;
						text[2] = 0;
					}
					
					break;
		
		}
		
		once++;
	}
}

function choice_test()
{
	switch (global.script_stage)
	{
		case 0: choice_last = 1;
		
				choice[0] = "Keep them happy";
				choice[1] = "Make them angry";
				
				break;
				
		case 1: choice_last = 2
				
				if(global.choice = 0){choice[0] = "Make them angry"} else {choice[0] = "Make them happy again"}
				choice[1] = "Bring in a friend"
				choice[2] = "This is here to show off three options"
				
				break;
				
		case 2: choice_last = 0
				
				choice[0] = "This is the end of the line, bucko!"
				
				break;
	}
}