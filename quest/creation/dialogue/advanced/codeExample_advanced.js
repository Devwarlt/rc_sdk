var q = Quest.template();
		
q.id = 'Qtestdialogue';

q.variable = {
	'talk':0,
	'killedDragon':0,
};

q.func = {
	dialogue1:function(key){
		var mq = List.main[key].quest.Qtestdialogue;
		if(!mq.talk) Dialogue.start(key,{group:'Qtestdialogue',npc:'jenny',convo:'intro',node:'first'});
		else if(mq.talk && !mq.killedDragon) Dialogue.start(key,{group:'Qtestdialogue',npc:'jenny',convo:'intro',node:'second'});
		else Dialogue.start(key,{group:'Qtestdialogue',npc:'jenny',convo:'intro',node:'gratz'});
	},	
	killedDragon:function(key){
		List.main[key].quest.Qtestdialogue.killedDragon = 1;	
	},
	killedDragon22:function(key){
		List.main[key].quest.Qtestdialogue.killedDragon = 1;	
	}
};

q.dialogue['jenny'] = {'face':'Jenny',
	'intro':{
		'first':{
			'text':"Go kill dragon.",
			'func':function(key,mq){ mq.Qtestdialogue.talk = 1; },
		},
		'second':{
			'text':"What you waiting for.",
		},	
		'gratz':{
			'text':"Congratz!",
			'func':function(key){ Itemlist.add(key,'gold',120); },
		},	
	}
};










