


Chat = {};
Chat.add = function(key,text){ log(text);}
Chat.question

Itemlist = {};
Itemlist.add = function(key,list){
	for(var i in list){
		List.main[key].invList[i] = List.main[key].invList[i] || 0;
		List.main[key].invList[i] += list[i];
	}
	updateInventoryVar();
}
Itemlist.remove = function(key,list){
	for(var i in list){
		List.main[key].invList[i] = List.main[key].invList[i] || 0;
		List.main[key].invList[i] -= list[i];
		if(List.main[key].invList[i] <= 0) delete List.main[key].invList[i];
	}
	updateInventoryVar();
}
Itemlist.have = function(key,list){
	for(var i in list) if(!(List.main[key].invList[i] >= list[i])) return false;
	return true;
}
Itemlist.test = function(){ return true; }

Itemlist.format = function(id,amount,verify){	//verify is for quest, verification be done later
	var tmp = {};
	if(Array.isArray(id)){
		for(var i in id){
			tmp[id[i][0]] = tmp[id[i][0]] || 0;
			tmp[id[i][0]] += id[i][1] || 1;
		}
	}
	else if(typeof id === 'string')	tmp[id] = amount || 1;
	else if(typeof id === 'object') tmp = id;

	return tmp;
}


Quest = {};
Quest.complete = function(key){ Chat.add(key,"Quest complete! Time to test it on the real engine now!"); }
Quest.template = function(id,version){	return {		id:id || Math.random(),		version: version || 'v1.0',		name:'Default Quest',		icon:'skill.melee',		reward:{			passive:{max:1,base:0.25,mod:10},			exp:{},			item:{},		},		description:"Default Description",		lvl:0,		difficulty:'Easy',		variable:{},		requirement:[],				dialogue:{},		challenge:{},		mapAddon:{},		map:{},		item:{}, 		equip:{},		npc:{},		ability:{},		plan:{},		event:{},		skillPlot:[],		boss:{},		visible:id[0] !== 'M',		author:'rc',	};}

require = function(){
	return {
	
	init:function(version,questname){	//}
	var Q = questname;
	
	var getItemName = function(name){
		return name;
		if(name.have(Q)) return name;
		else return Q + '-' + name;
	}
	
	
	var s = {};	
	s.quest = Quest.template(Q);
	s.startQuest = function(key){
		s.set(key,'active',true);
	}
	
	s.interval = function(num){  }
	s.get = function(key,attr){
		var mq = List.main[key].quest[Q];		
		var a = mq[attr];
		return typeof a === 'object' ? Tk.deepClone(a) : a;	//prevent setting
	}

	s.set = function(key,attr,attr2,value){
		var mq = List.main[key].quest[Q];	
		
		if(attr === 'active'){
			mq[attr] = true;
			Chat.add(key,"You started the quest '" + s.quest.name + "'.");
			return;
		}	
		if(!mq.active){
			Chat.add(key,"You need to start this quest via the Quest Tab before making progress in it."); 
			return;
		}
		if(value === undefined) mq[attr] = attr2;	//aka deep = 1
		else mq[attr][attr2] = value;
		
		if(attr === 'complete' && attr2)	Quest.complete(key,Q);
	}

	s.getAct = function(key){
		return List.all[key];
	}
	
	s.setTimeOut = function(key,name,time,func){
		
	};
	
	s.chat = Chat.add;
	s.question = Chat.question;
	
	s.dialogue = function(key,npc,convo,node){
		Dialogue.start(key,{group:Q,npc:npc,convo:convo,node:node});
	}

	s.teleport = function(key,map,letter,popup){	//type: 0=immediate, 1=popup
		
	}
	
	s.setRespawn = function(key,map,letter,safe){	//must be same map
		
	}

	s.getMapAddon = function(key){
		return List.map[s.getAct(key).map].addon[Q];
	}
	
	s.getSpot = function(id,addon,spot){
		
	}
	
	s.setSprite = function(key,name,size){
		
	}

	//Item
	s.itemFormat = function(item,amount){
		var list = Itemlist.format(item,amount,false);
		var goodList = {};
		for(var i in list) goodList[getItemName(i)] = list[i];
		return goodList;
	}
	
	s.addItem = function(key,item,amount){
		Itemlist.add(key,s.itemFormat(item,amount));
	}

	s.removeItem = function(key,item,amount){
		Itemlist.remove(key,s.itemFormat(item,amount));
	}

	s.haveItem = function(key,item,amount,removeifgood){
		var list = s.itemFormat(item,amount);
		var success = Itemlist.have(key,list);
		if(success && (removeifgood || amount === true)) Itemlist.remove(key,list);
		return success;
	}

	s.testItem = function (key,item,amount,addifgood){
		var list = s.itemFormat(item,amount);
		var success = Itemlist.test(key,list);
		if(success && (addifgood || amount === true)) Itemlist.add(key,list);
		return success;
	}
	
	

	//Cutscene
	s.cutscene = function(key,map,path){
	
	}

	s.freeze = function(key,time,cb){
		
	}
	
	s.unfreeze = function(key){
		
	}

	s.getNpc = function(key,tag){
		
	}


	//Map
	s.bullet = function(spot,atk,angle,dif){
		
	}
	s.strike = function(spot,atk,angle,dif,extra){
		
	}
	s.actor = function(spot,cat,variant,extra,lvl){
		
	}

	s.actorGroup = function(spot,respawn,list,extra){
		
	}


	s.collision = function(spot,cb){
	
	}

	s.block = function(zone,extra,image){
		
	}

	s.drop = function(key,spot,name,amount,time){
		
	}



	
	//Template
	
	s.requirement = func;
	s.challenge = func;
	
	
	
	
	s.ERROR = function(txt){
		ERROR(3,txt);
	}
	return s;
}


}}

