q.dialogue['jenny'] = {
	'face':{'image':'warrior-male.0','name':'Jenny'},
	'convo0':{
		'intro':{
			'text':"If you manage to kill all the different types of monsters, I'll give you something special.",
			'option':[
				{'text':"Bee!",'func':q.event.changeSprite},
			]
		},
		'gratz':{
			'text':"Congratz! Choose your special power!",
			'option':[
				{'text':"Bee!",'next':{'node':'intro'}},
				{'text':"Go!",'next':{'node':'gratz2'}},
			
			]
		},	
		'gratz2':{
			'text':"Congratz 2!",
		},	
	}
};

































	