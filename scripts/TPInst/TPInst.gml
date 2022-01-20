

function TPInst(inst, name)
{
	return [ext_Inst__, [inst, name, global.__PropertyGetters__[? name], global.__PropertySetters__[? name]]];
}

function __ext_Inst(data)
{	// data = [instance, name, getter, setter]
	if (is_undefined(data[2]))
	{
		return data[0][$ data[1]];
	}
	else
	{
		return data[2](data[0]);	
	}
}

function ext_Inst__(value, data)
{	// data = [instance, name, getter, setter]
	if (is_undefined(data[3]))
	{
		data[0][$ data[1]] = value;	
	}
	else
	{
		data[3](value, data[0]);
	}
}