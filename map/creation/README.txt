### Creating map ####
This guide is about creating map image, collision grid and hotspot. (No programming needed)
This guide is NOT about creating map events. (Programming needed)


Submission must include:
1- tiled file (.json) 
2- images (.png format, compressed with Pngquant)
3- code.js (information server needs to use the map)
4- info.js (general information ex: author/date)


Video Link (HIGHLY RECOMMENDED): 



####################################
LAYERS EXPLANATION:

Recommended maximum size: 128x128.
Always save in ".json", not in ".lua".


### ABOVE & BELOW: ###
The game needs 2 image sets to work. 
The first is what appear BELOW the player (ex: ground), the other ABOVE layer is what appear above the player (ex: tree branches).
To create most of the ABOVE layer, you will use the software collAboveGenerator.html.
A easy way to create the ABOVE layers is to change the opacity of BELOW layers to 50%.
When saving the ABOVE image, make sure to uncheck the BELOW layers and use setting "only include visible layers"

### COLLISION ###
The game also needs a collision grid.
One of the layer must be named COLLISION.
ONLY use images from tileset 9 on the COLLISION layer.
Use the top left image (next to Actor & Bullet) of the tileset 9 and place it everywhere the player and bullets can't walk on in the COLLISION layer
You can also use the darker red image (next to Actor) to block player but allow bullets. (ex: water)
Place Fall where player can fall.
Place Fall Close around Fall squares. If player is over a Fall Close square, it will drag him into the hole. 


### ZONE ### (Used for map events)
One of the layer must be named ZONE. (Required. This layer can be empty though.)
In order to make map events easier (enemy, npc, triggers etc), you can use Tiled to create hotspots.
Use the letters on tileset 9 and place them on the layer ZONE.
You can also create a rectangular zone by placing x2 times the same letter. (Only support rectangular shape.)
Hotspots coordinates can be access via the object map.addon.main.hotspot[letter]

####################################
PREPARATION:

1- Install Tiled via "install tiled.exe" file.
The entire map creation process is done via this software.

2- Open the template vX.X.tmx located in the template folder

####################################
SUMMARY:

1- Drag and drop image from the tileset to create the map.
2- Create the ZONE layer.
3- Once map is done, save it in .tmx and in .json.
4- You now need to make the ABOVE and COLLISION LAYER.
	Drag automaticTiledCompletion.html into a new browser tab. (Ex: Google Chrome)
	Load the .json and overwrite your .json file with the generated code.
5- The generator is only a HELPER, you will still need to fix couple things (especially ladder and bridge).
6- Add the Fall and Near Fall tiles to the COLLISION layer.

At this point, all the layers should be all done.

7- Drag codeGenerator.html in a new browser tab.
8- Load the .json file with codeGenerator.html and it will generate the code.js automatically for you.
9- Create a new file named code.js and copy paste the generated code.
10- Uncheck COLLISION & ZONE layers. Save the BELOW layers as image via File => Save as image
11- Uncheck BELOW layers and save the ABOVE layers as image via File => Save as image. 
12- Compress the images with compress.exe
13- Copy paste the images in the cropping folder.
14- Edit the "cropping 10x10.bat" file to fit your map name.
15- Run the .bat to crop the images.
16- Delete empty/useless images.
17- Test the map. (check README in testing folder)


####################################
TILED CREATION TIPS:
Hold Shift + Hold Left Click to duplicate image selection with spacing
Ctrl+C works


####################################
CROPPING:
The game engine can't handle large images.
This means you will need to crop the large map image into smaller images of 2048x2048.
To do that, use the "cropping 10x10.bat" file.

####################################
NAMING CONVENTION:

name.tmx => project saved normally
name.json => project saved in json

nameA.png => full layer above player
nameB.png => full layer below player

then use the cropping.bat for both nameA.png and nameB.png to create regions
nameA_(0,0) =>	2048x2048 region in the top left corner of the screen, above the player




