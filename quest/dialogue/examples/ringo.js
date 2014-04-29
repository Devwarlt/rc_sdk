
q.dialogue['ringo'] = {'face':{'image':'villager-male.0','name':'Ringo'},
	'intro':{
		'first':{
			'text':"Hey! My name's Ringo! Guess what, I need your help! Wanna help me out real quick, man?",
			'option':[
				{'text':"Sure. Why not!",next:{node:'yes'}},
				{'text':"No",next:{node:'no'}},
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
				{'text':"That sounds like an AMAZING plan. Kappa",next:{node:'planKappa'}},
			],
		},
		'planDumb':{
			'text':"Just trust me, my plans work every time, 25% of the time.",
			'option':[
				{'text':"...",next:{node:'plan4'}},
			],
		},
		'planKappa':{
			'text':"You're not on Twitch, you fool.",
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
			func:q.event.getPotionUnf,
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
			'text':"Okay... Fine... I will increase your maximum HP.",
			'option':[
				{'text':"Thanks.",func:q.event.complete},
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
