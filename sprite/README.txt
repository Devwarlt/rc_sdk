### Creating sprite ####

Submission must include:
1- image (.png format, compressed with Pngquant)
2- code.js (information server needs to use the sprite)
3- info.js (general information ex: author/date)


Video Link: 

####################################
1- image
Transparent background.
Each frame from the same animation must be equally spaced.
File name must be the same than the id in code.js

All frames on the same row face the same direction.



####################################
2- code.js
Create a file named "code.js". 

Template
{
	"id":"newMain",
	"size":2.5,
	"side":[1,2,3,0],
	"hpBar":-17,
	"legs":20,
	"preHitBox":[ -10,10,-10,17],
	"preBumperBox":[ -10,10,-10,17],
	"anim": {
		"walk":{
			"startY":0,
			"frame":4,
			"sizeX":24,
			"sizeY":32,
			"dir":4,
			"spd":0.4,
			"walk":true,
			"next":"walk"
		},
		"attack":{
			"startY":0,
			"frame":4,
			"sizeX":24,
			"sizeY":32,
			"dir":4,
			"spd":0.4,
			"walk":false,
			"next":"walk"
		}
    }
}
End Template

id: 
size: 	size factor (if size=1, change nothing)
side: 	[rowWhereLookingRight,rowDown,rowLeft,rowUp]
hpBar:  distance from center where hp bar should appear. negative number goes up
legs:	distance from center where the foot are.   	
preHitBox:    zone used for dmg collision.
			 [xLeft,xRight,yUp,yDown] always relative to center and applied BEFORE size modification
			 ex: [-10,10,0,20]		means a 20x25 rectangle, centered at 10 pixel below the middle
			 
preBumperBox: zone used for collision with map. same format than preHitBox

anim:
	"walk":{            //name of the anim
		"startY":0,     //distance from top where animation starts
		"frame":4,      //how many frames?
		"sizeX":70,     //width of 1 frame 
		"sizeY":70,     //height of 1 frame
		"dir":8,        //how many direction can it face? (usually 4 or 8 if diagonal)
		"spd":0.8,      //speed of animation. spd=1 => 25 frames/sec
		'walk':true,    //if walk, movement speed will impact frame spd
		"next":"walk"   //once animation complete, what animation to do?    //default is walk
	 },
		
		
####################################
3- info.js
Create a file named "info.js". 

Template
{
	"credits":["Enterbrain","otherGuy"],	
	"date":"2014-03-10",
	"modifications":[],
	"comments":"The animation would look better in red."
}
End Template

credits: list of people who contributed to the submission
date: YYYY-MM-DD
modifications: list of modifications
comments: comments











