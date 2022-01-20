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
					
					scr_scripting(0,"This is my first piece of dialogue",obj_char_test,"Testing Guy");
					
					scr_scripting(1,"This is some follow-up text",obj_char_test,"Testing Guy");
					
					scr_scripting(2,"Now I'm offering you a choice",obj_char_test,"Testing Guy");
					
					scr_scripting(3,0,obj_char_test);
					
					break;
			
			case 1: text_current = 0;
				
					if(global.choice = 0)
					{
						text_last = 4;
						speaking_last = 4;
						
						scr_scripting(0,"Hello World",obj_char_test,"Testing Guy");
					
						scr_scripting(1,"This is a really, really, really, long and silly string to test that the line wrapping works okay.",obj_char_test,"Testing Guy");
					
						scr_scripting(2,"I think we need to talk.",obj_char_test,"Testing Guy");
						
						scr_scripting(3,"You betrayed me and everything I thought you were. A gator security breach in MY batcave? this is complete horseshit and i won't be hearing any of it, I'm going straight to the big man. Yes, the big man and his big FazBalls if you know what I mean.",obj_char_test,"Testing Guy");
					
						scr_scripting(4,0,obj_char_test);
					} else if(global.choice = 1)
					{
						text_last = 2;
						speaking_last = 2;
						
						scr_scripting(0,"WHY WOULD YOU PISS ME OFF LIKE THAT???",obj_char_test,"Testing Guy",true,obj_char_test,spr_char_test2);
						
						scr_scripting(1,"YOU BASTARD",obj_char_test,"Testing Guy");
						
						scr_scripting(2,0,obj_char_test);
					}
					
					break;
					
			case 2: text_current = 0;
				
					if(global.choice = 0)
					{
						if(choice[0] = "Make them happy again")
						{
							text_last = 4;
							speaking_last = 4;
							
							scr_scripting(0,"Hello World",obj_char_test,"Testing Guy",true,obj_char_test,spr_char_test1);
					
							scr_scripting(1,"This is a really, really, really, long and silly string to test that the line wrapping works okay.",obj_char_test,"Testing Guy");
					
							scr_scripting(2,"I think we need to talk.",obj_char_test,"Testing Guy");
						
							scr_scripting(3,"You betrayed me and everything I thought you were. A gator security breach in MY batcave? this is complete horseshit and i won't be hearing any of it, I'm going straight to the big man. Yes, the big man and his big FazBalls if you know what I mean.",obj_char_test,"Testing Guy");
						
							scr_scripting(4,0,obj_char_test);
						} else {
							text_last = 2;
							speaking_last = 2;
							
							scr_scripting(0,"WHY WOULD YOU PISS ME OFF LIKE THAT???",obj_char_test,"Testing Guy",true,obj_char_test,spr_char_test2);
						
							scr_scripting(1,"YOU BASTARD",obj_char_test,"Testing Guy");
						
							scr_scripting(2,0,obj_char_test);
						}
					} else if(global.choice = 1)
					{	
						scr_character_enter(1,obj_char_test_friend);
						
						text_last = 4;
						speaking_last = 4;
						
						scr_scripting(0,"Hey there Gus...",obj_char_test_friend,"Friend");
						
						scr_scripting(1,"What's up Walter!",obj_char_test,"Testing Guy",true,obj_char_test,spr_char_test1);
						
						scr_scripting(2,"Not much...",obj_char_test_friend,"Friend",true,obj_char_test_friend,spr_char_test4);
						
						scr_scripting(3,"Why are you such a miserable lump?",obj_char_test,"Testing Guy");
						
						scr_scripting(4,0,obj_char_test);
					} else if(global.choice = 2)
					{
						text_last = 2;
						speaking_last = 2;
						
						scr_scripting(0,"You weren't supposed to pick this",obj_char_test,"Testing Guy",true,obj_char_test,spr_char_test4);
						
						scr_scripting(1,"That was there for testing purposes only...",obj_char_test,"Testing Guy");
						
						scr_scripting(2,0,obj_char_test);
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