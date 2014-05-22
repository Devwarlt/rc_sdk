hello,
in this video series, i will teach you how to make a quest for the open-source mmmorpg rainingchain.

if you have any question about creating content for rainingchain, i will be standing-by on twitch.tv/rainingchain
waiting for your questions. dont forget to check the video description to know when i will be online. obvisouly, you can also post your question in a comment below

This video assumes that you have downloaded the game engine and the sdk and have installed all the softwares present in the sdk.
they can be downloaded at github, you can see the links on the video
if you have problem with that, i made a detailed tutorial going over those steps

now, just as a reminder.
the sdk has tools that will help you create content and test elements separately, so for example, test only the dialogue, only the animations etc...
in the other hand the game engineis for running the real game.

before working on adding a new quest, make sure that the game is working fine. after installing nodejs which is the server software, clikc STARTSERVER bat file in the game engine folder.
go to localhost:3000 on google chrome and log in with sam/sam
if something wrong is going on, an error will pop in the terminal

if everything is working so far, good job. first step done.
Before getting started, i want to talk about some important notions.
first, A quest is a series of events the player must trigger.
Each quest event needs to be linked with a player action. 
It's via this player action that the player will trigger the event.

For exmaple
Quest event: Open locked door.
Player Action: Activating a switch.

Quest event: Receive dragon head. 
Player Action: Killing dragon.

Quest event: Receive reward and finish quest. 
Player Action: Talking with King.

Each event is represented by a part of code that modifies the player progression in the quest.
Player progression in a quest is saved in quest variables.
quest variables can be numbers, boolean or strings



All the information about the quest needed for the engine to play quest is contained in a single file.
this file needs to be located in db quest
you also need to tell the engine that you add the new quest.

open the quest temaplte BASIC and copy paste the content
place it in db quest and rename
change the quest id for the id you want, let choose  QgimmeGold
quest id always start with a Q

Now open db quest and add the quest in list
also put name for the test

now, lets try to start server again. if everything is working good, upon loggin, there should be a message similar to this
if its working, good job, step 2 complete! now we are ready to work for real.

now lets go back to the file we have just created, the empty template.
in this video series, i will start off with a very small quest and i will extend it over time


-Talk with a guy and select the option to cheer him up.
	
NEED:
1 npc that has a dialogue.
dialogue has 2 options: cheer up and nope
if choose cheer up, quest complete


pretty boring but dont worry it will get more interesting soon

lets start off with the dialogue

for the dialogue tempalte, open quest/dialogue/readme


q.dialogue['npcName'] = {
	convo0:{
		node0:{
			text:"Hello, how are you?",
			face:{image:'warrior-man.0',name:"Bob"},
			option:[
				{text:"Great.",
					next:{npc:'npcName',convo:'convo0',node:'node1'},
				},
				{text:"Bad.",
					next:{npc:'npcName',convo:'convo0',node:'node2'}
				},
			],
		},
		node1:{
			...
		},
		node2:{
			...
		},
	},
	convo1:{
		node0:{
			...
		}
	}
};

lets chnge name to ringo
convo0 will be cheering
node0 will be intro
2 options, yes no
node1 will be yes



now lets test that dialogue in the dialogue tester.
drag test-dialogue in the google chrome tab, select your quest file in the game engine
click the button and its working fine, great

now, lets list the events needed:
we need a event for the dialogue, and one when cheering the guy

q.event = {
	cheerUp:function(key){
		s.completeQuest(key);	
	},
	talkRingo:function(key){
		s.dialogue(key);	
	}
}

we also need to add cheerUp to the dialogue when choosing yes
now lets test that in the event tester
once again, drag the test-event in new tab and select quest file
click buttons and working fine! great!

ok, now we are ready to move on to the game engine.
first make sure that the quest.test.minimized is true

q.minimizedMap = function(){
	s.minimized.actor('ringo',{dialogue:q.event.talkRingo});
}

now if you start the server, go to localhost 3000 and log in, you should be in weird green map. this is the minimized map
in top left there should be ringo
right click him and talk, should work fine

this is the end of the first video tutorial.
in the second video, i will extend the quest:
to cheer up the guy, you will need to give him gold
and to get gold, you will need to kill a dragon, answer the quizz and open a chest







for maps, in this video series, i will focus on the quest aspect rather than the visual aspect.
if you want more info about map creation in general, check out my other series, link description'






