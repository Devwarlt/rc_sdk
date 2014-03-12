Open template.tmx using Tiled. All the tileset should already be loaded.

Name protocole.

name.tmx => project saved normally
name.lua => project saved in lua

nameA.png => full layer above player
nameB.png => full layer below player
nameC.text => collision grid (use luaToCollisionGrid.js)

then use the cropping.bat for both nameA.png and nameB.png to create regions
nameA_(0,0) =>	2048x2048 region in the top left corner of the screen, above the player
...



