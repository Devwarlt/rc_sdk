

var str = 'for /f "tokens=1-3" %%i in (\'convert goblinLandA.png -format "%%w x %%h" info:\') do set W=%%i & set H=%%k';
str += '\n';

for(var i = 0; i < 20; i++){
	for(var j = 0; j < 20; j++){
		str += 'if %W% geq ' + (i*320+320) +  ' if %H% geq ' + (j*180+180) 
		+ ' convert goblinLandA.png -crop ' + 320 + 'x' + 180 + '+' + (i*320) + '+' + (j*180)  + ' goblinLandA_(' + i + ',' + j + ').png\n';
		str += 'if %W% geq ' + (i*320+320) +  ' if %H% geq ' + (j*180+180) 
		+ ' convert goblinLandB.png -crop ' + 320 + 'x' + 180 + '+' + (i*320) + '+' + (j*180)  + ' goblinLandB_(' + i + ',' + j + ').png\n';
	}
}

console.log(str);

























