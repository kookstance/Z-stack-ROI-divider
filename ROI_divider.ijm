#@ int(label="Array size (n x n)?") n

id = getImageID(); 
getLocationAndSize(coordX, coordY, width, height); 
tileWidth = width / n; 
//tileHeight = height; //use this line for column ROIs
tileHeight = height / n;

for (y = 0; y < n; y++) { 
    nY = y * height / n; 
    for (x = 0; x < n; x++) { 
        nX = x * width / n;  
		selectImage(id);
		call("ij.gui.ImageWindow.setNextLocation", coordX + nX, coordY + nY); 
		//makeRectangle(offsetX, 0, tileWidth, tileHeight); //use this line for column ROIs
		makeRectangle(offsetX, offsetY, tileWidth, tileHeight);
		roiManager("Add");
    }
}
roiManager("Multi Measure");
