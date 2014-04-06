var q = Quest.template('Qtestdialogue','v1.1');

q.variable = {
	'talk':0,
	'killedDragon':0,
	'haveReceivedGold':0,
};

q.event = {
	dialogue1:function(key){
		if(get(key,'talk') === 0) 
			dialogue(key,'jenny','intro','first');
		else if(get(key,'talk') === 1 && get(key,'killedDragon') === 0) 
			dialogue(key,'jenny','intro','second');
		else 
			dialogue(key,'jenny','intro','gratz');
	},	
	killedDragon:function(key){
		set(key,'killedDragon',1);
	},
	giveGold:function(key){
		if(get(key,'haveReceivedGold') === 0){
			addItem(key,'gold',10);
			set(key,'haveReceivedGold',1);
		}
	},
	setTalk:function(key){
		set(key,'talk',1);
	}
};

q.dialogue['jenny'] = {'face':'Jenny',
	'intro':{
		'first':{
			'text':"Go kill dragon.",
			'func':q.event.setTalk,
		},
		'second':{
			'text':"What you waiting for.",
		},	
		'gratz':{
			'text':"Congratz!",
			'func':q.event.giveGold,
		},	
	}
};










