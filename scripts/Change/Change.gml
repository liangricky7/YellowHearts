//@desc Change(mode, target)
//@arg sets mode of change
//@arg sets target mode when goto is referenced

with(oSlideChange){
	mode = argument[0]; 
	if(argument_count > 1){
		target = argument[1];
	}
}