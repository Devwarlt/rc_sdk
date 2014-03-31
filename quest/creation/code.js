q.dialogue['jenny'] = {'face':'Jenny',
	'intro':{
		'intro':{
			'text':"If you manage to kill all the different types of monsters, I'll give you something special.",
			'option':[
				{'text':"Bee!",'func':function(key){ Sprite.change(List.all[key],{name:'bee'}); }},
				{'text':"Mushroom!",'func':function(key){ Sprite.change(List.all[key],{name:'mushroom'}); }},
				{'text':"Werewolf!",'func':function(key){ Sprite.change(List.all[key],{name:'werewolf'}); }},
				{'text':"Ghost!",'func':function(key){ Sprite.change(List.all[key],{name:'ghost'}); }},
			
			]
		},
		'gratz':{
			'text':"Congratz! Choose your special power!",
			'option':[
				{'text':"Bee!",'next':{'node':'intro'}},
				{'text':"Bee!",'next':{'node':'gratz2'}},
			
			]
		},	
		'gratz2':{
			'text':"Congratz! Choose your special power!",
			'option':[
				{'text':"Bee!",'next':{'node':'intro'}},
				{'text':"Mushroom!",'func':function(key){ Sprite.change(List.all[key],{name:'mushroom'}); }},
				{'text':"Werewolf!",'func':function(key){ Sprite.change(List.all[key],{name:'werewolf'}); }},
				{'text':"Ghost!",'func':function(key){ Sprite.change(List.all[key],{name:'ghost'}); }},
			
			]
		},	
	}
};