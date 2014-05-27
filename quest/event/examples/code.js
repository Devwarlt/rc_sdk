"use strict";
var s = require('./../Quest_exports').init('v1.0','QgimmeGold');
var q = s.quest; var m = s.map; var b = s.boss;

q.variable = {
	'talk':0,
	'killedDragon':0,
	'haveReceivedGold':0,
};

q.event = {
	dialogue1:function(key){
		if(s.get(key,'talk') === 0) 
			s.dialogue(key,'jenny','intro','first');
		else if(s.get(key,'talk') === 1 && s.get(key,'killedDragon') === 0) 
			s.dialogue(key,'jenny','intro','second');
		else 
			s.dialogue(key,'jenny','intro','gratz');
	},	
	killedDragon:function(key){
		s.chat(key,'You have killed the dragon!');
		s.set(key,'killedDragon',1);
	},
	giveGold:function(key){
		if(s.get(key,'haveReceivedGold') === 0){
			s.addItem(key,'gold',10);
			s.set(key,'haveReceivedGold',1);
		} else {
			s.chat(key,'You already got your reward.');		
		}
	},
	setTalk:function(key){
		s.set(key,'talk',1);
	}
};

q.dialogue['jenny'] = {'face':{'image':'warrior-male.0','name':'Jenny'},
	'intro':{
		'first':{
			'text':"Go kill dragon.",
			'event':q.event.setTalk,
		},
		'second':{
			'text':"What you waiting for.",
		},	
		'gratz':{
			'text':"Congratz!",
			'event':q.event.giveGold,
		},	
	}
};










