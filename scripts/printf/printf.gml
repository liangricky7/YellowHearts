var _string, _arg;
// Set up string
_string = argument[0];
// Fill replacement arguments
_arg = 0;
for(var _i = 1; _i < argument_count; _i++) {
	_arg[_i-1] = argument[_i];
}
// Replace with arguments
for(var _i = 0; _i < array_length_1d(_arg); _i++) {
	// If '%s' does not exist
	if(string_pos("%s", _string) == 0) {
		break;
	}
	// Replace earliest '%s' with an argument
	_string = string_replace(_string, "%s", string(_arg[_i]));
}
// Delete array
_arg = 0;
// Output converted string
return _string;
