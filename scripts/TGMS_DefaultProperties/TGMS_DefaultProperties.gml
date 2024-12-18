
/// TGMS_BuildPropertyScripts()
function TGMS_DefaultProperties()
{
	/*
		Set up default properties for optimisation or normalization purposes.
		This is NOT REQUIRED for custom properties/variables to be used, but they will
		perform slower than tweens set up with TGMS_BuildProperty().
	
		It is advised to create your own list of custom properties elsewhere.
		It is safe to delete any properties and their associated scripts.
	
		Note:
			Properties like "image_blend" or "background_colour" are required
			to be built in order to function as intended since they are normalized.
	*/

	//=========================
	// GLOBAL PROPERTIES
	//=========================
	TGMS_BuildProperty("score", score__, __score);
	TGMS_BuildProperty("health", health__, __health);
	TGMS_BuildPropertyNormalize("background_colour", background_colour__, __background_colour);
	TGMS_BuildPropertyNormalize("background_color", background_colour__, __background_colour); // Alternative spelling

	//=========================
	// INSTANCE PROPERTIES
	//=========================
	TGMS_BuildProperty("", TPNull, TPNull);
	TGMS_BuildProperty("x", x__, __x);
	TGMS_BuildProperty("y", y__, __y);
	TGMS_BuildProperty("z", z__, __z);
	TGMS_BuildProperty("round(x)", roundx__, __x);
	TGMS_BuildProperty("round(y)", roundy__, __y);
	TGMS_BuildProperty("round(z)", roundz__, __z);
	TGMS_BuildProperty("direction", direction__, __direction);
	TGMS_BuildProperty("speed", speed__, __speed);
	TGMS_BuildProperty("hspeed", hspeed__, __hspeed);
	TGMS_BuildProperty("vspeed", vspeed__, __vspeed);
	TGMS_BuildProperty("image_scale", image_scale__, __image_xscale);
	TGMS_BuildProperty("image_xscale", image_xscale__, __image_xscale);
	TGMS_BuildProperty("image_yscale", image_yscale__, __image_yscale);
	TGMS_BuildProperty("image_angle", image_angle__, __image_angle);
	TGMS_BuildProperty("image_alpha", image_alpha__, __image_alpha);
	TGMS_BuildProperty("image_speed", image_speed__, image_speed__);
	TGMS_BuildProperty("image_index", image_index__, image_index__);
	TGMS_BuildProperty("path_position", path_position__);
	TGMS_BuildProperty("path_scale", path_scale__);
	TGMS_BuildProperty("path_speed", path_speed__);
	TGMS_BuildProperty("path_orientation", path_orientation__);
	TGMS_BuildPropertyNormalize("image_blend", image_blend__, __image_blend);

	//=========================
	// USER EVENT PROPERTIES
	//=========================
	TGMS_BuildProperty("PropUser", ext_PropUser__, __ext_PropUser);

	//=========================
	// DATA STRUCTURE PROPERTIES
	//=========================
	TGMS_BuildProperty("___Array_1D___", ext_Array1D__, __ext_Array1D);
	TGMS_BuildProperty("___Array_2D___", ext_Array2D__, __ext_Array2D);
	TGMS_BuildProperty("___Struct___", ext_Struct__, __ext_Struct);
	TGMS_BuildProperty("___Inst___", ext_Inst__, __ext_Inst);
	TGMS_BuildProperty("___DSList___", ext_DSList__, __ext_DSList);
	TGMS_BuildProperty("___DSGrid___", ext_DSGrid__, __ext_DSGrid);
	TGMS_BuildProperty("___DSMap___", ext_DSMap__, __ext_DSMap);
}


// GLOBAL VARIABLE SETTER/GETTER FUNCTIONS
function health__(value) { health = value; }	// setter
function __health() { return health; }			// getter
function score__(value) { score = value; }
function __score() { return score; }
function background_colour__(value,data)  {background_colour = merge_colour(data[0], data[1], value); }
function __background_colour() { return background_colour; }

// INSTANCE VARIABLE SETTER/GETTER FUNCTIONS
function x__(value, target) { target.x = value; }	// setter
function __x(target) { return target.x; }			// getter
function y__(value, target) { target.y = value; }
function __y(target) { return target.y; }
function z__(value, target) { target.z = value; }
function __z(target) { return target.z; }
function roundx__(value, target) { target.x = round(value); }
function roundy__(value, target) { target.y = round(value); }
function roundz__(value, target) { target.z = round(value); }
function direction__(value, target) { target.direction = value; }
function __direction(target) { return target.direction; }
function speed__(value, target) { argument1.speed = value; }
function __speed(target) { return target.speed; }
function hspeed__(value, target) { target.hspeed = value; }
function __hspeed(target) { return target.hspeed; }
function vspeed__(value, target) { target.vspeed = value; }
function __vspeed(target) { return target.vspeed; }
function image_alpha__(argument0, argument1) { argument1.image_alpha = argument0; }
function __image_alpha(argument0) { return argument0.image_alpha; }
function image_angle__(argument0, argument1) { argument1.image_angle = argument0; }
function __image_angle(argument0) { return argument0.image_angle; }
function image_blend__(amount, data, target) { target.image_blend = merge_colour(data[0], data[1], amount); }
function __image_blend(argument0) { return argument0.image_blend; }
function image_xscale__(argument0, argument1) { argument1.image_xscale = argument0; }
function __image_xscale(argument0) { return argument0.image_xscale; }
function image_yscale__(argument0, argument1) { argument1.image_yscale = argument0; }
function __image_yscale(argument0) { return argument0.image_yscale;}

function image_scale__(argument0, argument1)
{
	argument1.image_xscale = argument0;
	argument1.image_yscale = argument0;
}

function image_index__()
{
	if (argument_count == 1) { return argument[0].image_index; }
	argument[1].image_index = argument[0];
}

function image_speed__()
{
	if (argument_count == 1) { return argument[0].image_speed; }
	argument[1].image_speed = argument[0];
}

function path_orientation__()
{
	if (argument_count == 2) { return argument[0].path_orientation; }
	argument[1].path_orientation = argument[0];
}

function path_position__()
{
	if (argument_count == 2) { return argument[0].path_position; }
	argument[1].path_position = argument[0];
}

function path_scale__() 
{
	if (argument_count == 2) { return argument[0].path_scale; }
	argument[1].path_scale = argument[0];
}

function path_speed__()
{
	if (argument_count == 2) { return argument[0].path_speed }
	argument[1].path_speed = argument[0];
}



