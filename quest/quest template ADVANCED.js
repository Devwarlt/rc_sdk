/*jslint node: true, undef:true, sub:true, asi:true, funcscope:true, forin:true, unused:false*/
/*Go to http://jshint.com/ and copy paste your code to spot syntax bugs.*/
"use strict";
var s = require('./../Quest_exports').init('v1.0','[QUESTID]');
var q = s.quest; var m = s.map; var b = s.boss;

q.name = "[NAME]";
q.description = "[DESCRIPTION]";       
q.author = '[AUTHOR]';							
q.lvl = 0;
q.difficulty = '[Easy,Medium,Hard]';

q.requirement = [
	
];
	
q.challenge = {
	
};

q.variable = {
	
};

q.event = {
	_complete:null,
	_abandon:null,
	_start:null,
	_signIn:null,
	_hint:null,
	_death:null,
	_testSignIn:null,
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








