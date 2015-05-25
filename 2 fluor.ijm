//Saves the images in new directory based on names of stains and name of file and saves jpeg of all channels and each channel one by one, be sure to edit name of stains as necessary

dir = getDirectory("image");

run("RGB Color");
	currTitle = getTitle();
	comp = dir + currTitle + "_comp"; //name of all channeled
	dapi = dir + currTitle + "_dapi"; //name for dapi, change variable name if using something else
	stain1f	= "_vasa"; //change name of stain to whatever being used
	stain2f = "_ssea4"; //change name of stain to whatever being used
    stain1 = dir + currTitle + stain1f; //compiles the path and name
	stain2 = dir + currTitle + stain2f; //compiles path and name

saveAs("Jpeg", comp);
run("Close");

run("Channels Tool...");
Stack.setActiveChannels("101");
Stack.setActiveChannels("100");
run("RGB Color");
saveAs("Jpeg", dapi); //dapi saved here
run("Close");

Stack.setActiveChannels("000");
Stack.setActiveChannels("010");
run("RGB Color");
saveAs("Jpeg", stain1);
run("Close");

Stack.setActiveChannels("000");
Stack.setActiveChannels("001");
run("RGB Color");
saveAs("Jpeg", stain2);
run("Close");
Stack.setActiveChannels("011");
Stack.setActiveChannels("111");
