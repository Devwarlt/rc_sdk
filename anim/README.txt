### Creating animation ####

Submission must include:
1- image (.png format, compressed with Pngquant)
2- code.js (information server needs to use the animation)
3- info.js (general information ex: author/date)


Video Link: 

####################################
1- image
Transparent background.
Equally spaced.
File name must be the same than the id in code.js

####################################
2- code.js
Create a file named "code.js". 

Template
{
	"id":"attack1",	
	"frame":3,
	"frameX":3,
	"spd":0.5,
	"size":1,
	"layer":"a"
}
End Template

id: 
frame: number of frames in total
frameX: number of frame per row
spd: spd factor (if spd=1, 25 frames/second)
size: size factor (if size=1, change nothing)
layer: either "a" if anim appear above the player when performed
		or "b" if it appears below

####################################
3- info.js
Create a file named "info.js". 

Template
{
	"credits":["yourName","otherGuy"],	
	"date":"2014-03-10",
	"modifications":[],
	"comments":"The animation would look better in red."
}
End Template

credits: list of people who contributed to the submission
date: YYYY-MM-DD
modifications: list of modifications
comments: comments











