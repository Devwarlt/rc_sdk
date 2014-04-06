convert iconSheet.png -crop 720x240+0+0 iconSheet0.png
convert iconSheet.png -crop 720x240+0+240 iconSheet1.png
convert iconSheet.png -crop 720x240+0+480 iconSheet2.png
convert iconSheet.png -crop 720x240+0+720 iconSheet3.png
convert iconSheet.png -crop 720x240+0+960 iconSheet4.png
convert iconSheet.png -crop 720x240+0+1200 iconSheet5.png
convert iconSheet.png -crop 720x240+0+1440 iconSheet6.png
convert iconSheet.png -crop 720x240+0+1680 iconSheet7.png
convert iconSheet.png -crop 720x240+0+1920 iconSheet8.png
convert iconSheet.png -crop 720x240+0+2160 iconSheet9.png



Exit
var str = '';
var row = 5;
for(var i = 0 ; i < 10; i++)
	str += 'convert iconSheet.png -crop 720x' + (row*48) + '+0+' + (i*row*48) + ' iconSheet' + i + '.png\n';
console.log(str);