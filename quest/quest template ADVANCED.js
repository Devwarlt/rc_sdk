"use strict";
var s = require('./../Quest_exports').init('v1.0','[QUESTID]');
var q = s.quest; var m = s.map; var b = s.boss;

q.name = "[NAME]";
q.icon = 'skill.melee';
q.description = "[DESCRIPTION]";       
q.author = '[AUTHOR]';							
q.lvl = 0;
q.difficulty = 'Easy,Medium,Hard';

q.requirement = [
	
];
	
q.challenge = {
	
};

q.variable = {
	
};

q.event = {
	_complete:null,
	_start:null,
	_abandon:null,
	_signIn:null,
	_hint:null,
	_death:null,
	_test:{
		signIn:null,
		firstSignIn:null,
	},
	_getScoreMod:null,
	
};
	
q.item = {
	
};

q.dialogue = {
	
}

q.mapAddon = {
	
};

q.map = {
	
};

q.equip = {};
q.npc = {};
q.plan = {};
q.ability = {};
q.boss = {};

exports.quest = q;








