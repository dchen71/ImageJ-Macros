//Saves the images in new directory based on names of stains and name of file and saves jpeg of all channels and each channel one by one, be sure to edit name of stains as necessary

dir = getDirectory("image");

run("RGB Color");
	currTitle = getTitle();
	comp = dir + currTitle + "_comp";
	dapi = dir + currTitle + "_dapi";
	stain1f = "_ssea4"; //ending for variable name
	stain2f = "_vasa"; //ending for variable name
	stain3f = "_oct4"; //ending for variable name
	stain1 = dir + currTitle + stain1f; //path/name for stain1
	stain2 = dir + currTitle + stain2f; //path / name for stain2
    stain3 = dir + currTitle + stain3f; //path / name for stain 3

saveAs("Jpeg", comp);
run("Close");

run("Channels Tool...");
Stack.setActiveChannels("1011");
Stack.setActiveChannels("1001");
Stack.setActiveChannels("1000");
run("RGB Color");
saveAs("Jpeg", dapi);
run("Close");

Stack.setActiveChannels("0000");
Stack.setActiveChannels("0100");
run("RGB Color");
saveAs("Jpeg", stain1);
run("Close");

Stack.setActiveChannels("0000");
Stack.setActiveChannels("0010");
run("RGB Color");
saveAs("Jpeg", stain2);
run("Close");

Stack.setActiveChannels("0000");
Stack.setActiveChannels("0001");
run("RGB Color");
saveAs("Jpeg", stain3);
run("Close");

Stack.setActiveChannels("0011");
Stack.setActiveChannels("0111");
Stack.setActiveChannels("1111");
