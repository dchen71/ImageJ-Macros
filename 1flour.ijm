//Saves the images in new directory based on names of stains and name of file and saves jpeg of all channels and each channel one by one, be sure to edit name of stains as necessary

dir = getDirectory("image");

run("RGB Color");
	currTitle = getTitle();
	comp = dir + currTitle + "_comp";
	dapi = dir + currTitle + "_dapi"; //change dapi or other stain here
    stain1f = "_oct4";	//stain name, change to however you want the photo ending to be named
    stain1 = dir + currTitle + stain1f; //path and name

saveAs("Jpeg", comp);
run("Close");

run("Channels Tool...");
Stack.setActiveChannels("10");
run("RGB Color");
saveAs("Jpeg", dapi);
run("Close");


Stack.setActiveChannels("00");
Stack.setActiveChannels("01");
run("RGB Color");
saveAs("Jpeg", stain1);
run("Close");

Stack.setActiveChannels("11");

