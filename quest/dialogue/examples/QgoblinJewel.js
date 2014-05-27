"use strict";
var s = require('./../Quest_exports').init('v1.0','QgoblinJewel');
var q = s.quest; var m = s.map; var b = s.boss;

q.name = "Goblin Jewel";


q.variable = {
	killGoblin:0,
	killGoblinBoss:0,
	csInBoss:false,
	talkRingo:false,
	tgOnChest:false,
	haveFlower:false,
};

q.event = {
	_hint:function(key){
		if(s.haveItem(key,'jewel')) return 'Give Jewel to Ringo in Goblin Land, South West.';
		if(!s.get(key,'talkRingo')) return 'Talk to Ringo in Goblin Land, South West.';
		if(!s.get(key,'haveFlower')) return 'Get Flower in Goblin Land, Nort-West near Lake.';
		if(!s.haveItem(key,'orc_sock') && !s.haveItem(key,'potion')) return 'Get Orc Sock in Goblin Land, North East.';
		if(s.haveItem(key,'orc_sock') && !s.haveItem(key,'potion')) return 'Finish the potion.';
		if(s.haveItem(key,'potion') && !s.haveItem(key,'jewel')) return 'Enter Camp and steal Jewel.';
		return "BUG... :(";
	},
	_test:{
		signIn:function(key){
			
		},
		firstSignIn:function(key){
			s.teleport(key,'goblinLand','n1');
			s.setRespawn(key,'goblinLand','n1');
		}
	},	
	_signIn:function(key){
		
	},
	_start:function(key){
		
		
	},
	_abandon:function(key){
		s.setRespawn(key,'goblinLand','n1');
		s.teleport(key,'goblinLand','n1');
	},
	_complete:function(key){	
		s.set(key,'_complete',true);
		s.setRespawn(key,'goblinLand','n1');
		
		for(var i in List.main){
			Chat.add(i,s.getAct(key).name + ' completed the quest Goblin Jewel with ' + s.get(key,'_deathCount') + ' death(s).');
		}
		
	},
	talkRingo:function(key){
		if(!s.get(key,'talkRingo')){ s.dialogue(key,'ringo','intro','first'); return; }
		
		if(s.haveItem(key,'jewel')){ 
			if(s.get(key,'killGoblinBoss')) s.dialogue(key,'ringo','intro','second-postJewel'); 
			else s.chat(key,'bug, please send bug report. You can reset quest via the Quest Tab.');
			return; 
		}
		if(!s.haveItem(key,'potion')){  s.dialogue(key,'ringo','intro','second-prePotion'); return; }
		if(s.haveItem(key,'potion') && !s.haveItem(key,'jewel')){  s.dialogue(key,'ringo','intro','second-postPotion'); return; }
		
	},
	getPotionUnf:function(key){
		s.set(key,'talkRingo',true);
		s.addItem(key,'potion_unf');
	},
	getFlower:function(key){
		return s.testItem(key,'flower',1,true,'haveFlower');
	},
	killOrc:function(key,e){
		if(Math.random() < 0.50){
			s.drop(key,e,'orc_sock');
		}
	},
	itemPotionUnf:function(key){
		if(s.haveItem(key,{'potion_unf':1,'orc_sock':1,'flower':1},true)){
			s.addItem(key,'potion');
			s.chat(key,"You completed the potion by adding Orc socks and the Mystical flower.");		
		} else s.chat(key,"You don't have all the ingredients needed. (Orc socks and Mystical flower)");	
	},
	itemPotion:function(key){
		s.chat(key,"You will drink the potion upon entering the Goblin Camp.");
	},	
	teleInCamp:function(key){
		if(s.haveItem(key,'jewel')){ return	s.chat(key,"You already got the jewel."); } 
		
		if(s.haveItem(key,'potion')){
			s.chat(key,"You drank the potion and entered the camp."); 
			s.teleport(key,'goblinCamp','t3','team');
		}
		else s.chat(key,"You don't want the goblins to be even more mad against human.");
	},
	killGoblin:function(key){
		s.set(key,"killGoblin",s.get(key,"killGoblin") + 1);
	},
	teleInUnderground:function(key){
		if(s.get(key,'killGoblin') >= 5){
			s.teleport(key,'goblinUnderground@','t1');
			s.setRespawn(key,'goblinUnderground@','t1',true);
		} else s.chat(key,"You should kill more goblins first to make them really angry with orcs.");
	},
	tgOnChest:function(key){
		s.set(key,'tgOnChest',true);
	},
	viewBlockChest:function(key){
		return !s.get(key,'tgOnChest');
	},
	getJewel:function(key){
		if(s.haveItem(key,'jewel')){ s.chat(key,'The chest is empty.'); return false; }
		return s.testItem(key,'jewel',1,true);
	},
	dontHaveJewel:function(key){
		return !s.haveItem(key,'jewel');
	},
	teleOutUnderground:function(key){
		if(s.haveItem(key,'jewel')) s.teleport(key,'goblinCamp','t2','team');
		else s.chat(key,"You should get the jewel first.");
	},
	csTestBoss:function(key){
		if(s.get(key,'csInBoss') === false && s.haveItem(key,'jewel'))
			q.event.csInBoss(key);	
	},
	csInBoss:function(key){
		s.freeze(key);
		s.set(key,'csInBoss',true);
		s.dialogue(key,'goblin','intro','first');
		s.actor(key,'ej',q.id,'boss',{
			deathEvent:q.event.killGoblinBoss,
			tag:'boss',
			combat:0,
		});
		s.setTimeout(key,'csInBoss',3*25,q.event.csOutBoss);
	},
	teleInBossZone:function(key){
		s.teleport(key,'goblinCamp','q4','team');
	},
	csOutBoss:function(key){
		s.unfreeze(key);
		var boss = s.getNpc(key,'boss');
		boss.combat = 1;
	},
	teleOutCamp:function(key){
		if(!s.haveItem(key,'jewel')) return s.chat(key,"You won't leave until you get that jewel or abandoning the quest.");
		if(s.get(key,'killGoblinBoss')){
			s.teleport(key,'goblinLand','t3');
			return s.setRespawn(key,'goblinLand','t3',true);
		}
		
		if(!s.getNpc(key,'boss')){	//aka have jewel, didnt kill boss but no boss cuz killed by others
			s.chat(key,"You haven't killed the boss yourself.");
			s.teleport(key,'goblinCamp','t4');
			s.set(key,'csInBoss',false);
			return;
		}
		
	},
	killGoblinBoss:function(key){
		s.set(key,'killGoblinBoss',true);
	},
	viewBlockBoss:function(key){
		if(s.getAct(key).type !== 'player') return true;
		return s.get(key,'csInBoss');		
	},
	questDone:function(key){
		s.completeQuest(key);
	}	
};	




q.dialogue['goblin'] = {'face':{'image':'bad-monster.0','name':'Ringo'},
	'intro':{
		'first':{
			'text':"Did you really think you could escape so easily? Prepare to die, orc!",
			'end':0,
			'option':[
				{'text':"Show me what you got, noob!"}
			],
		},
	}
}

q.dialogue['ringo'] = {'face':{'image':'villager-male.0','name':'Ringo'},
	'intro':{
		'first':{
			'text':"Hey! My name's Ringo! Guess what, I need your help! Wanna help me out real quick, man?",
			'exit':0,
			'option':[
				{'text':"Sure. Why not!",next:{node:'yes'}},
				{'text':"No.",next:{node:'no'}},
				{'text':"Skip.",next:{convo:'quest',node:'plan5'}},
			],
		},
		'no':{
			'text':"Ah, come on man. I need your help... I know you will change your mind someday. I'll be standing still until you do!",
		},	
		'yes':{
			'text':"There's a group of goblins north of here and they keep attacking my village. It's pissing me off.",
			'option':[
				{'text':"Why are they attacking the village?",next:{convo:'quest',node:'whyAttack'}},
				{'text':"What's your plan?",next:{convo:'quest',node:'plan'}},
			],
		},
		'second-prePotion':{
			'text':"Oh, you're back already!",
			'option':[
				{'text':"What am I supposed to do again?",next:{convo:'question',node:'pre-potion'}},
				{'text':"Where can I find orcs?",next:{convo:'question',node:'orc'}},
				{'text':"Where can I find a Mystical flower?",next:{convo:'question',node:'flower'}},
			],
		},
		'second-postPotion':{
			'text':"Oh, you're back already!",
			'option':[
				{'text':"What am I supposed to do again?",next:{convo:'question',node:'post-potion'}},
			],
		},
		'second-postJewel':{
			'text':"Oh my god! You did it! My plan worked! It's a miracle!",
			'option':[
				{'text':"Wait? You thought it wouldn't work?",next:{convo:'quest',node:'complete'}},
			],
		},
	},
	'quest':{
		'whyAttack':{
			'text':"Let just say that I 'borrowed' one of their precious jewels. And apparently, they didn't like it much... They get angry very easily, you know.",
			'option':[
				{'text':"Why don't you just give it back?",next:{node:'whyGiveBack'}},
				{'text':"What's your plan?",next:{node:'plan'}},
			],
		},
		'whyGiveBack':{
			'text':"Wait, what? What did I just say? Oh damn... I wanted to say that 'someone', which is obviously not me, 'borrowed' their jewel. But anyway, that's not the point, let's just change topic to something more important.",
			'option':[
				{'text':"Okay? So what's your plan?",next:{node:'plan'}},
			],
		},
		'plan':{
			'text':"I know for a fact that they own a second jewel. I didn't manage to steal it last time. Oh damn... I mean 'the thief' didn't manage to steal it last time.",
			'option':[
				{'text':"Continue",next:{node:'plan2'}},
			],
		},
		'plan2':{
			'text':"Anyway, I got a plan! A genius plan! My plan is so freaking smart that there's no way something could go wrong with it. Trust me, I'm an expert at this kind of stuff.",
			'option':[
				{'text':"Continue",next:{node:'plan3'}},
			],
		},
		'plan3':{
			'text':"You take the appearance of an orc then you steal by force the second jewel! That's so smart, right! The goblins will be soooo pissed off against orcs that they will attack them instead of us!",
			'option':[
				{'text':"That's a dumb plan...",next:{node:'planDumb'}},
				{'text':"That sounds like an AMAZING plan.",next:{node:'plan4'}},
			],
		},
		'planDumb':{
			'text':"Just trust me, my plans work every time, 25% of the time.",
			'option':[
				{'text':"...",next:{node:'plan4'}},
			],
		},
		'plan4':{
			'text':"Glad you like my plan! How couldn't you like it anyway, right? So, in order to take the appearance of an orc, you will first need to put your hands on a piece of orc and and on the Mystical Flower.",
			'option':[
				{'text':"And then what do I do?",next:{node:'plan5'}},
			],
		},
		'plan5':{
			'text':"Here take this unfinished potion. Once you got the orc clothing and the Mystical Flower, complete the potion and use it.",
			event:q.event.getPotionUnf,
			'option':[
				{'text':"Where can I find orcs?",next:{convo:'question',node:'orc'}},
				{'text':"Where can I find the Mystical Flower?",next:{convo:'question',node:'flower'}},
			],
		},
		
		'complete':{
			'text':"Oh, my plans are always genius. Most of the time, it's the humans involved that cause problems... Anyway, thanks again for your help. Bye.",
			'option':[
				{'text':"Wait what? Where's my reward?",next:{node:'complete2'}},
			],
		},
		'complete2':{
			'text':"What reward? I never talked about a reward, did I? Just give me the jewel already...",
			'option':[
				{'text':"No reward, no jewel.",next:{node:'complete3'}},
			],
		},
		'complete3':{
			'text':"Okay... Fine... Take those Passive Points.",
			'option':[
				{'text':"Thanks.",event:q.event.questDone},
			],
		},
	},
	'question':{
		'orc':{
			'text':"The orc village is located north east of here.",
			'option':[
				{'text':"Okay, thanks."},
			],
		},
		'flower':{
			'text':"Mystical flowers are huge white flowers that can normally be found near lakes. I'm sure you will find one in this area.",
			'option':[
				{'text':"Okay, thanks."},
			],
		},
		'pre-potion':{
			'text':"You need to complete the potion with a piece of orc and a Mystical flower.",
			'option':[
				{'text':"Okay, thanks."},
			],
		},
		'post-potion':{
			'text':"I can see you have the potion now. Use it and go in the Goblin village. Find the jewel and bring it back to me!",
			'option':[
				{'text':"Okay, thanks."},
			],
		},
	},
};


exports.quest = q;





