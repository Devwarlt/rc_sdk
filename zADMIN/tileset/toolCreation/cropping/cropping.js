

var str = 'for /f "tokens=1-3" %%i in (\'convert goblinLandA.png -format "%%w x %%h" info:\') do set W=%%i & set H=%%k';
str += '\n';
str += 'convert goblinLandB.png    -resize 12.5%%  goblinLandM.png' + '\n';
var sizeX = 640;
var sizeY = 360;

for(var i = 0; i < 10; i++){
	for(var j = 0; j < 10; j++){
		str += 'if %W% gtr ' + (i*sizeX) +  ' if %H% gtr ' + (j*sizeY) 
		+ ' convert goblinLandA.png -crop ' + sizeX + 'x' + sizeY + '+' + (i*sizeX) + '+' + (j*sizeY)  + ' goblinLandA_(' + i + ',' + j + ').png\n';
		str += 'if %W% gtr ' + (i*sizeX) +  ' if %H% gtr ' + (j*sizeY) 
		+ ' convert goblinLandB.png -crop ' + sizeX + 'x' + sizeY + '+' + (i*sizeX) + '+' + (j*sizeY)  + ' goblinLandB_(' + i + ',' + j + ').png\n';
	}
}

console.log(str);

























