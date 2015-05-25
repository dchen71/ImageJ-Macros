//Stacks image and runs brightness/channels

macro "briCol [F11]" //Bound to F11
{
	run("Brightness/Contrast...");
	run("Channels Tool...");
	Stack.setDisplayMode("composite");
}
