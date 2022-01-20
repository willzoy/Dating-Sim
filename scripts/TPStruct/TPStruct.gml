

function TPStruct(struct, name)
{
	return [ext_Struct__, [struct, name]];
}

function __ext_Struct(data)
{	// data = [struct, name]
	return data[0][$ data[1]];
}

function ext_Struct__(value, data)
{	// data = [struct, name]
	data[0][$ data[1]] = value;
}

