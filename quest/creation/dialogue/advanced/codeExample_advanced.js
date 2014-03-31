var q = Quest.template();
		
q.id = 'Qtestdialogue';

q.variable = {
	'talk':0,
	'killedAll':0,
};

q.func = {
	dialogue1:function(key){
		if(List.main[key].quest.Qtestdialogue.talk)
			Dialogue.start(key,{group:'Qtestdialogue',npc:'jenny',convo:'intro',node:'gratz'});
		else 
			Dialogue.start(key,{group:'Qtestdialogue',npc:'jenny',convo:'intro',node:'intro'});
	},	
	
	
}



q.dialogue['jenny'] = {'face':'Jenny',
	'intro':{
		'intro':{
			'text':"If you manage to kill all the different types of monsters, I'll give you something special.",
			'func':function(key,mq){ mq.Qtestdialogue.talk = 1; },
			'option':[
				{'text':"Bee!"},
			
			]
		},
		'gratz':{
			'text':"Congratz! Choose your special power!",
			'option':[
				{'text':"Bee!",'func':function(key){ Itemlist.add(key,'gold',120); }},
			]
		},	
	}
};










