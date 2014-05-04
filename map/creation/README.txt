### Creating map ####
This guide is about creating map image, collision grid, spot and path. (No programming needed)
This guide is NOT about creating map events. (Programming needed)


Submission must include:
1- tiled file (.json) 
2- images (.png format, compressed with Pngquant)
3- code.js (information server needs to use the map)
4- info.js (general information ex: author/date)


Video Link (HIGHLY RECOMMENDED): 



####################################
LAYERS EXPLANATION:

Recommended maximum size: 150x150.
Always save in ".json", not in ".lua".


### ABOVE & BELOW: ###
The game needs 2 image sets to work. 
The first is what appear BELOW the player (ex: ground), the other ABOVE layer is what appear above the player (ex: tree branches).
To create most of the ABOVE layer, you can use the software automaticTiledCompletion.html that will do most of the work for you.
A easy way to create the ABOVE layers is to change the opacity of BELOW layers to 50%.
You can use multiple layers to create the above image.
When saving the ABOVE image, make sure to uncheck the all the layers appearing below the player and use setting "only include visible layers"


### COLLISION ###
The game also needs a collision grid.
One of the layer must be named COLLISION.
To create most of the COLLISION layer, you can use the software automaticTiledCompletion.html that will do most of the work for you.

ONLY use images from tileset 9 on the COLLISION layer.
Use the top left image (red square next to Actor & Bullet) of the tileset 9 and place it everywhere the player and bullets can't walk on in the COLLISION layer (ex:wall)
You can also use the darker red image (next to Actor) to block player but allow bullets. (ex: water)
Place Fall where player can fall.
Place Fall Close around Fall squares. If player is over a Fall Close square, it will drag him into the hole. 


### SPOT ### (Used for map events)
One of the layer must be named SPOT. (Required. This layer can be empty though.)
Spots are used to place actors (enemy, npc, triggers etc) in map more easily when creating map events.
Use the letters on tileset 9 and place them on the layer SPOT.
You can also create a rectangular zone by placing multiple times the same letter. (Only support rectangular shape.)
Placing x2 times the same letters with create a spot in the middle of the 2 letters. (Useful when wanting to place a spot not exactly in the middle of a square)

### PATH ### (Used for map events)
One of the layer must be named PATH. (Required. This layer can be empty though.)
Paths are used to make an actor (player, enemy) follow a specific path. (ex: cutscene)
Use the numbers on tileset 9 and place them on the layer SPOT in order.
The actor will run in straight line so make sure theres no wall inbetween.


####################################
PREPARATION:

1- Install Tiled via "install tiled.exe" file.
The entire map creation process is done via this software.

2- Open the template vX.X.tmx located in the template folder. (Ex: v1.1.tmx)

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
14- Edit the "cropping.bat" file to fit your map name. (Ctrl-H and replace all)
15- Run cropping.bat to crop the images. Note: This will also generate the minimap image named mapidM.png.
16- Test the map. (check README in testing folder)


####################################
TILED CREATION TIPS:
Hold Shift + Hold Left Click to duplicate image selection with spacing
Ctrl+C works


####################################
CROPPING:
The game engine can't handle large images.
This means you will need to crop the large map image into smaller images of 640x320.
To do that, use the "cropping.bat" file.

####################################
NAMING CONVENTION:

name.json 	=> 		project saved in json (GOOD format)
name.tmx 	=> 		project saved with default format (BAD format) dont save it that way.

nameA.png 	=> 		entire map image Above player
nameB.png 	=> 		entire map image Below player

nameA_(X,Y) =>		640x320 region in the top left corner of the screen, Above the player	(generated via cropping.bat)
nameM.png 	=> 		Minimap image x16 smaller than fullsize map								(generated via cropping.bat)



