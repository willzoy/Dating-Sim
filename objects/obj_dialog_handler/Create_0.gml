//Initialised text array
text[0] = "Hello World";
text[1] = "This is a really, really, really, long and silly string to test that the line wrapping works okay.";
text[2] = "I think we need to talk."
text[3] = "You betrayed me and everything I thought you were. A gator security breach in MY batcave? this is complete horseshit and i won't be hearing any of it, I'm going straight to the big man. Yes, the big man and his big FazBalls if you know what I mean."

//Initialised choice array
choice[0] = "How about this, hm?"
choice[1] = "Choose one of us"

//Initialised speaking array
speaking[0] = "name"
speaking[1] = "name"
speaking[2] = "name"
speaking[3] = "name"

//Initialised posing array
pose[0,0] = false;					//Posing array works as follows:
pose[1,0] = false;					//First number is the text_current this should be executed on
pose[2,0] = false;					//The second number has three parts: 0 is whether to change pose
pose[3,0] = false;					//1 is the target object for changing pose, 2 is the sprite to change the pose to

//Text parameters
text_current = 0; //which text array is to be used
text_last = 3; //The number of text arrays
text_width = 1750; //Controls the maximum width the text will go before wrapping
text_x = 100;
text_y = 850;

//Character parameters
char_current = 1;
char_speed = 0.25; //controls the speed the characters are drawn

//Choice parameters
choice_last = 1; //The number of choice arrays

//Speaking parameters
speaking_last = 3; //the number of speaking arrays (should equal text_last)
speaking_priority[0] = 0; //the object which doesn't get desaturated while speaking in dialogue

//Misc
text[text_current] = string_wrap(text[text_current], text_width); //for text wrapping
TweenEasyUseDelta(true);

//script handling 
global.script_stage = 0;
global.script = "test"
once = 0;
enum mode
{
	dialog,
	choice
}
global.mode_current = mode.dialog;
