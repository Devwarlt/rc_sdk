for /f "tokens=1-3" %%i in ('convert goblinLandA.png -format "%%w x %%h" info:') do set W=%%i & set H=%%k
convert goblinLandB.png -filter point -resize 12.5%% goblinLandM.png
if %W% gtr 0 if %H% gtr 0 convert goblinLandA.png -crop 640x360+0+0 goblinLandA_(0,0).png
if %W% gtr 0 if %H% gtr 0 convert goblinLandB.png -crop 640x360+0+0 goblinLandB_(0,0).png
if %W% gtr 0 if %H% gtr 360 convert goblinLandA.png -crop 640x360+0+360 goblinLandA_(0,1).png
if %W% gtr 0 if %H% gtr 360 convert goblinLandB.png -crop 640x360+0+360 goblinLandB_(0,1).png
if %W% gtr 0 if %H% gtr 720 convert goblinLandA.png -crop 640x360+0+720 goblinLandA_(0,2).png
if %W% gtr 0 if %H% gtr 720 convert goblinLandB.png -crop 640x360+0+720 goblinLandB_(0,2).png
if %W% gtr 0 if %H% gtr 1080 convert goblinLandA.png -crop 640x360+0+1080 goblinLandA_(0,3).png
if %W% gtr 0 if %H% gtr 1080 convert goblinLandB.png -crop 640x360+0+1080 goblinLandB_(0,3).png
if %W% gtr 0 if %H% gtr 1440 convert goblinLandA.png -crop 640x360+0+1440 goblinLandA_(0,4).png
if %W% gtr 0 if %H% gtr 1440 convert goblinLandB.png -crop 640x360+0+1440 goblinLandB_(0,4).png
if %W% gtr 0 if %H% gtr 1800 convert goblinLandA.png -crop 640x360+0+1800 goblinLandA_(0,5).png
if %W% gtr 0 if %H% gtr 1800 convert goblinLandB.png -crop 640x360+0+1800 goblinLandB_(0,5).png
if %W% gtr 0 if %H% gtr 2160 convert goblinLandA.png -crop 640x360+0+2160 goblinLandA_(0,6).png
if %W% gtr 0 if %H% gtr 2160 convert goblinLandB.png -crop 640x360+0+2160 goblinLandB_(0,6).png
if %W% gtr 0 if %H% gtr 2520 convert goblinLandA.png -crop 640x360+0+2520 goblinLandA_(0,7).png
if %W% gtr 0 if %H% gtr 2520 convert goblinLandB.png -crop 640x360+0+2520 goblinLandB_(0,7).png
if %W% gtr 0 if %H% gtr 2880 convert goblinLandA.png -crop 640x360+0+2880 goblinLandA_(0,8).png
if %W% gtr 0 if %H% gtr 2880 convert goblinLandB.png -crop 640x360+0+2880 goblinLandB_(0,8).png
if %W% gtr 0 if %H% gtr 3240 convert goblinLandA.png -crop 640x360+0+3240 goblinLandA_(0,9).png
if %W% gtr 0 if %H% gtr 3240 convert goblinLandB.png -crop 640x360+0+3240 goblinLandB_(0,9).png
if %W% gtr 640 if %H% gtr 0 convert goblinLandA.png -crop 640x360+640+0 goblinLandA_(1,0).png
if %W% gtr 640 if %H% gtr 0 convert goblinLandB.png -crop 640x360+640+0 goblinLandB_(1,0).png
if %W% gtr 640 if %H% gtr 360 convert goblinLandA.png -crop 640x360+640+360 goblinLandA_(1,1).png
if %W% gtr 640 if %H% gtr 360 convert goblinLandB.png -crop 640x360+640+360 goblinLandB_(1,1).png
if %W% gtr 640 if %H% gtr 720 convert goblinLandA.png -crop 640x360+640+720 goblinLandA_(1,2).png
if %W% gtr 640 if %H% gtr 720 convert goblinLandB.png -crop 640x360+640+720 goblinLandB_(1,2).png
if %W% gtr 640 if %H% gtr 1080 convert goblinLandA.png -crop 640x360+640+1080 goblinLandA_(1,3).png
if %W% gtr 640 if %H% gtr 1080 convert goblinLandB.png -crop 640x360+640+1080 goblinLandB_(1,3).png
if %W% gtr 640 if %H% gtr 1440 convert goblinLandA.png -crop 640x360+640+1440 goblinLandA_(1,4).png
if %W% gtr 640 if %H% gtr 1440 convert goblinLandB.png -crop 640x360+640+1440 goblinLandB_(1,4).png
if %W% gtr 640 if %H% gtr 1800 convert goblinLandA.png -crop 640x360+640+1800 goblinLandA_(1,5).png
if %W% gtr 640 if %H% gtr 1800 convert goblinLandB.png -crop 640x360+640+1800 goblinLandB_(1,5).png
if %W% gtr 640 if %H% gtr 2160 convert goblinLandA.png -crop 640x360+640+2160 goblinLandA_(1,6).png
if %W% gtr 640 if %H% gtr 2160 convert goblinLandB.png -crop 640x360+640+2160 goblinLandB_(1,6).png
if %W% gtr 640 if %H% gtr 2520 convert goblinLandA.png -crop 640x360+640+2520 goblinLandA_(1,7).png
if %W% gtr 640 if %H% gtr 2520 convert goblinLandB.png -crop 640x360+640+2520 goblinLandB_(1,7).png
if %W% gtr 640 if %H% gtr 2880 convert goblinLandA.png -crop 640x360+640+2880 goblinLandA_(1,8).png
if %W% gtr 640 if %H% gtr 2880 convert goblinLandB.png -crop 640x360+640+2880 goblinLandB_(1,8).png
if %W% gtr 640 if %H% gtr 3240 convert goblinLandA.png -crop 640x360+640+3240 goblinLandA_(1,9).png
if %W% gtr 640 if %H% gtr 3240 convert goblinLandB.png -crop 640x360+640+3240 goblinLandB_(1,9).png
if %W% gtr 1280 if %H% gtr 0 convert goblinLandA.png -crop 640x360+1280+0 goblinLandA_(2,0).png
if %W% gtr 1280 if %H% gtr 0 convert goblinLandB.png -crop 640x360+1280+0 goblinLandB_(2,0).png
if %W% gtr 1280 if %H% gtr 360 convert goblinLandA.png -crop 640x360+1280+360 goblinLandA_(2,1).png
if %W% gtr 1280 if %H% gtr 360 convert goblinLandB.png -crop 640x360+1280+360 goblinLandB_(2,1).png
if %W% gtr 1280 if %H% gtr 720 convert goblinLandA.png -crop 640x360+1280+720 goblinLandA_(2,2).png
if %W% gtr 1280 if %H% gtr 720 convert goblinLandB.png -crop 640x360+1280+720 goblinLandB_(2,2).png
if %W% gtr 1280 if %H% gtr 1080 convert goblinLandA.png -crop 640x360+1280+1080 goblinLandA_(2,3).png
if %W% gtr 1280 if %H% gtr 1080 convert goblinLandB.png -crop 640x360+1280+1080 goblinLandB_(2,3).png
if %W% gtr 1280 if %H% gtr 1440 convert goblinLandA.png -crop 640x360+1280+1440 goblinLandA_(2,4).png
if %W% gtr 1280 if %H% gtr 1440 convert goblinLandB.png -crop 640x360+1280+1440 goblinLandB_(2,4).png
if %W% gtr 1280 if %H% gtr 1800 convert goblinLandA.png -crop 640x360+1280+1800 goblinLandA_(2,5).png
if %W% gtr 1280 if %H% gtr 1800 convert goblinLandB.png -crop 640x360+1280+1800 goblinLandB_(2,5).png
if %W% gtr 1280 if %H% gtr 2160 convert goblinLandA.png -crop 640x360+1280+2160 goblinLandA_(2,6).png
if %W% gtr 1280 if %H% gtr 2160 convert goblinLandB.png -crop 640x360+1280+2160 goblinLandB_(2,6).png
if %W% gtr 1280 if %H% gtr 2520 convert goblinLandA.png -crop 640x360+1280+2520 goblinLandA_(2,7).png
if %W% gtr 1280 if %H% gtr 2520 convert goblinLandB.png -crop 640x360+1280+2520 goblinLandB_(2,7).png
if %W% gtr 1280 if %H% gtr 2880 convert goblinLandA.png -crop 640x360+1280+2880 goblinLandA_(2,8).png
if %W% gtr 1280 if %H% gtr 2880 convert goblinLandB.png -crop 640x360+1280+2880 goblinLandB_(2,8).png
if %W% gtr 1280 if %H% gtr 3240 convert goblinLandA.png -crop 640x360+1280+3240 goblinLandA_(2,9).png
if %W% gtr 1280 if %H% gtr 3240 convert goblinLandB.png -crop 640x360+1280+3240 goblinLandB_(2,9).png
if %W% gtr 1920 if %H% gtr 0 convert goblinLandA.png -crop 640x360+1920+0 goblinLandA_(3,0).png
if %W% gtr 1920 if %H% gtr 0 convert goblinLandB.png -crop 640x360+1920+0 goblinLandB_(3,0).png
if %W% gtr 1920 if %H% gtr 360 convert goblinLandA.png -crop 640x360+1920+360 goblinLandA_(3,1).png
if %W% gtr 1920 if %H% gtr 360 convert goblinLandB.png -crop 640x360+1920+360 goblinLandB_(3,1).png
if %W% gtr 1920 if %H% gtr 720 convert goblinLandA.png -crop 640x360+1920+720 goblinLandA_(3,2).png
if %W% gtr 1920 if %H% gtr 720 convert goblinLandB.png -crop 640x360+1920+720 goblinLandB_(3,2).png
if %W% gtr 1920 if %H% gtr 1080 convert goblinLandA.png -crop 640x360+1920+1080 goblinLandA_(3,3).png
if %W% gtr 1920 if %H% gtr 1080 convert goblinLandB.png -crop 640x360+1920+1080 goblinLandB_(3,3).png
if %W% gtr 1920 if %H% gtr 1440 convert goblinLandA.png -crop 640x360+1920+1440 goblinLandA_(3,4).png
if %W% gtr 1920 if %H% gtr 1440 convert goblinLandB.png -crop 640x360+1920+1440 goblinLandB_(3,4).png
if %W% gtr 1920 if %H% gtr 1800 convert goblinLandA.png -crop 640x360+1920+1800 goblinLandA_(3,5).png
if %W% gtr 1920 if %H% gtr 1800 convert goblinLandB.png -crop 640x360+1920+1800 goblinLandB_(3,5).png
if %W% gtr 1920 if %H% gtr 2160 convert goblinLandA.png -crop 640x360+1920+2160 goblinLandA_(3,6).png
if %W% gtr 1920 if %H% gtr 2160 convert goblinLandB.png -crop 640x360+1920+2160 goblinLandB_(3,6).png
if %W% gtr 1920 if %H% gtr 2520 convert goblinLandA.png -crop 640x360+1920+2520 goblinLandA_(3,7).png
if %W% gtr 1920 if %H% gtr 2520 convert goblinLandB.png -crop 640x360+1920+2520 goblinLandB_(3,7).png
if %W% gtr 1920 if %H% gtr 2880 convert goblinLandA.png -crop 640x360+1920+2880 goblinLandA_(3,8).png
if %W% gtr 1920 if %H% gtr 2880 convert goblinLandB.png -crop 640x360+1920+2880 goblinLandB_(3,8).png
if %W% gtr 1920 if %H% gtr 3240 convert goblinLandA.png -crop 640x360+1920+3240 goblinLandA_(3,9).png
if %W% gtr 1920 if %H% gtr 3240 convert goblinLandB.png -crop 640x360+1920+3240 goblinLandB_(3,9).png
if %W% gtr 2560 if %H% gtr 0 convert goblinLandA.png -crop 640x360+2560+0 goblinLandA_(4,0).png
if %W% gtr 2560 if %H% gtr 0 convert goblinLandB.png -crop 640x360+2560+0 goblinLandB_(4,0).png
if %W% gtr 2560 if %H% gtr 360 convert goblinLandA.png -crop 640x360+2560+360 goblinLandA_(4,1).png
if %W% gtr 2560 if %H% gtr 360 convert goblinLandB.png -crop 640x360+2560+360 goblinLandB_(4,1).png
if %W% gtr 2560 if %H% gtr 720 convert goblinLandA.png -crop 640x360+2560+720 goblinLandA_(4,2).png
if %W% gtr 2560 if %H% gtr 720 convert goblinLandB.png -crop 640x360+2560+720 goblinLandB_(4,2).png
if %W% gtr 2560 if %H% gtr 1080 convert goblinLandA.png -crop 640x360+2560+1080 goblinLandA_(4,3).png
if %W% gtr 2560 if %H% gtr 1080 convert goblinLandB.png -crop 640x360+2560+1080 goblinLandB_(4,3).png
if %W% gtr 2560 if %H% gtr 1440 convert goblinLandA.png -crop 640x360+2560+1440 goblinLandA_(4,4).png
if %W% gtr 2560 if %H% gtr 1440 convert goblinLandB.png -crop 640x360+2560+1440 goblinLandB_(4,4).png
if %W% gtr 2560 if %H% gtr 1800 convert goblinLandA.png -crop 640x360+2560+1800 goblinLandA_(4,5).png
if %W% gtr 2560 if %H% gtr 1800 convert goblinLandB.png -crop 640x360+2560+1800 goblinLandB_(4,5).png
if %W% gtr 2560 if %H% gtr 2160 convert goblinLandA.png -crop 640x360+2560+2160 goblinLandA_(4,6).png
if %W% gtr 2560 if %H% gtr 2160 convert goblinLandB.png -crop 640x360+2560+2160 goblinLandB_(4,6).png
if %W% gtr 2560 if %H% gtr 2520 convert goblinLandA.png -crop 640x360+2560+2520 goblinLandA_(4,7).png
if %W% gtr 2560 if %H% gtr 2520 convert goblinLandB.png -crop 640x360+2560+2520 goblinLandB_(4,7).png
if %W% gtr 2560 if %H% gtr 2880 convert goblinLandA.png -crop 640x360+2560+2880 goblinLandA_(4,8).png
if %W% gtr 2560 if %H% gtr 2880 convert goblinLandB.png -crop 640x360+2560+2880 goblinLandB_(4,8).png
if %W% gtr 2560 if %H% gtr 3240 convert goblinLandA.png -crop 640x360+2560+3240 goblinLandA_(4,9).png
if %W% gtr 2560 if %H% gtr 3240 convert goblinLandB.png -crop 640x360+2560+3240 goblinLandB_(4,9).png
if %W% gtr 3200 if %H% gtr 0 convert goblinLandA.png -crop 640x360+3200+0 goblinLandA_(5,0).png
if %W% gtr 3200 if %H% gtr 0 convert goblinLandB.png -crop 640x360+3200+0 goblinLandB_(5,0).png
if %W% gtr 3200 if %H% gtr 360 convert goblinLandA.png -crop 640x360+3200+360 goblinLandA_(5,1).png
if %W% gtr 3200 if %H% gtr 360 convert goblinLandB.png -crop 640x360+3200+360 goblinLandB_(5,1).png
if %W% gtr 3200 if %H% gtr 720 convert goblinLandA.png -crop 640x360+3200+720 goblinLandA_(5,2).png
if %W% gtr 3200 if %H% gtr 720 convert goblinLandB.png -crop 640x360+3200+720 goblinLandB_(5,2).png
if %W% gtr 3200 if %H% gtr 1080 convert goblinLandA.png -crop 640x360+3200+1080 goblinLandA_(5,3).png
if %W% gtr 3200 if %H% gtr 1080 convert goblinLandB.png -crop 640x360+3200+1080 goblinLandB_(5,3).png
if %W% gtr 3200 if %H% gtr 1440 convert goblinLandA.png -crop 640x360+3200+1440 goblinLandA_(5,4).png
if %W% gtr 3200 if %H% gtr 1440 convert goblinLandB.png -crop 640x360+3200+1440 goblinLandB_(5,4).png
if %W% gtr 3200 if %H% gtr 1800 convert goblinLandA.png -crop 640x360+3200+1800 goblinLandA_(5,5).png
if %W% gtr 3200 if %H% gtr 1800 convert goblinLandB.png -crop 640x360+3200+1800 goblinLandB_(5,5).png
if %W% gtr 3200 if %H% gtr 2160 convert goblinLandA.png -crop 640x360+3200+2160 goblinLandA_(5,6).png
if %W% gtr 3200 if %H% gtr 2160 convert goblinLandB.png -crop 640x360+3200+2160 goblinLandB_(5,6).png
if %W% gtr 3200 if %H% gtr 2520 convert goblinLandA.png -crop 640x360+3200+2520 goblinLandA_(5,7).png
if %W% gtr 3200 if %H% gtr 2520 convert goblinLandB.png -crop 640x360+3200+2520 goblinLandB_(5,7).png
if %W% gtr 3200 if %H% gtr 2880 convert goblinLandA.png -crop 640x360+3200+2880 goblinLandA_(5,8).png
if %W% gtr 3200 if %H% gtr 2880 convert goblinLandB.png -crop 640x360+3200+2880 goblinLandB_(5,8).png
if %W% gtr 3200 if %H% gtr 3240 convert goblinLandA.png -crop 640x360+3200+3240 goblinLandA_(5,9).png
if %W% gtr 3200 if %H% gtr 3240 convert goblinLandB.png -crop 640x360+3200+3240 goblinLandB_(5,9).png
if %W% gtr 3840 if %H% gtr 0 convert goblinLandA.png -crop 640x360+3840+0 goblinLandA_(6,0).png
if %W% gtr 3840 if %H% gtr 0 convert goblinLandB.png -crop 640x360+3840+0 goblinLandB_(6,0).png
if %W% gtr 3840 if %H% gtr 360 convert goblinLandA.png -crop 640x360+3840+360 goblinLandA_(6,1).png
if %W% gtr 3840 if %H% gtr 360 convert goblinLandB.png -crop 640x360+3840+360 goblinLandB_(6,1).png
if %W% gtr 3840 if %H% gtr 720 convert goblinLandA.png -crop 640x360+3840+720 goblinLandA_(6,2).png
if %W% gtr 3840 if %H% gtr 720 convert goblinLandB.png -crop 640x360+3840+720 goblinLandB_(6,2).png
if %W% gtr 3840 if %H% gtr 1080 convert goblinLandA.png -crop 640x360+3840+1080 goblinLandA_(6,3).png
if %W% gtr 3840 if %H% gtr 1080 convert goblinLandB.png -crop 640x360+3840+1080 goblinLandB_(6,3).png
if %W% gtr 3840 if %H% gtr 1440 convert goblinLandA.png -crop 640x360+3840+1440 goblinLandA_(6,4).png
if %W% gtr 3840 if %H% gtr 1440 convert goblinLandB.png -crop 640x360+3840+1440 goblinLandB_(6,4).png
if %W% gtr 3840 if %H% gtr 1800 convert goblinLandA.png -crop 640x360+3840+1800 goblinLandA_(6,5).png
if %W% gtr 3840 if %H% gtr 1800 convert goblinLandB.png -crop 640x360+3840+1800 goblinLandB_(6,5).png
if %W% gtr 3840 if %H% gtr 2160 convert goblinLandA.png -crop 640x360+3840+2160 goblinLandA_(6,6).png
if %W% gtr 3840 if %H% gtr 2160 convert goblinLandB.png -crop 640x360+3840+2160 goblinLandB_(6,6).png
if %W% gtr 3840 if %H% gtr 2520 convert goblinLandA.png -crop 640x360+3840+2520 goblinLandA_(6,7).png
if %W% gtr 3840 if %H% gtr 2520 convert goblinLandB.png -crop 640x360+3840+2520 goblinLandB_(6,7).png
if %W% gtr 3840 if %H% gtr 2880 convert goblinLandA.png -crop 640x360+3840+2880 goblinLandA_(6,8).png
if %W% gtr 3840 if %H% gtr 2880 convert goblinLandB.png -crop 640x360+3840+2880 goblinLandB_(6,8).png
if %W% gtr 3840 if %H% gtr 3240 convert goblinLandA.png -crop 640x360+3840+3240 goblinLandA_(6,9).png
if %W% gtr 3840 if %H% gtr 3240 convert goblinLandB.png -crop 640x360+3840+3240 goblinLandB_(6,9).png
if %W% gtr 4480 if %H% gtr 0 convert goblinLandA.png -crop 640x360+4480+0 goblinLandA_(7,0).png
if %W% gtr 4480 if %H% gtr 0 convert goblinLandB.png -crop 640x360+4480+0 goblinLandB_(7,0).png
if %W% gtr 4480 if %H% gtr 360 convert goblinLandA.png -crop 640x360+4480+360 goblinLandA_(7,1).png
if %W% gtr 4480 if %H% gtr 360 convert goblinLandB.png -crop 640x360+4480+360 goblinLandB_(7,1).png
if %W% gtr 4480 if %H% gtr 720 convert goblinLandA.png -crop 640x360+4480+720 goblinLandA_(7,2).png
if %W% gtr 4480 if %H% gtr 720 convert goblinLandB.png -crop 640x360+4480+720 goblinLandB_(7,2).png
if %W% gtr 4480 if %H% gtr 1080 convert goblinLandA.png -crop 640x360+4480+1080 goblinLandA_(7,3).png
if %W% gtr 4480 if %H% gtr 1080 convert goblinLandB.png -crop 640x360+4480+1080 goblinLandB_(7,3).png
if %W% gtr 4480 if %H% gtr 1440 convert goblinLandA.png -crop 640x360+4480+1440 goblinLandA_(7,4).png
if %W% gtr 4480 if %H% gtr 1440 convert goblinLandB.png -crop 640x360+4480+1440 goblinLandB_(7,4).png
if %W% gtr 4480 if %H% gtr 1800 convert goblinLandA.png -crop 640x360+4480+1800 goblinLandA_(7,5).png
if %W% gtr 4480 if %H% gtr 1800 convert goblinLandB.png -crop 640x360+4480+1800 goblinLandB_(7,5).png
if %W% gtr 4480 if %H% gtr 2160 convert goblinLandA.png -crop 640x360+4480+2160 goblinLandA_(7,6).png
if %W% gtr 4480 if %H% gtr 2160 convert goblinLandB.png -crop 640x360+4480+2160 goblinLandB_(7,6).png
if %W% gtr 4480 if %H% gtr 2520 convert goblinLandA.png -crop 640x360+4480+2520 goblinLandA_(7,7).png
if %W% gtr 4480 if %H% gtr 2520 convert goblinLandB.png -crop 640x360+4480+2520 goblinLandB_(7,7).png
if %W% gtr 4480 if %H% gtr 2880 convert goblinLandA.png -crop 640x360+4480+2880 goblinLandA_(7,8).png
if %W% gtr 4480 if %H% gtr 2880 convert goblinLandB.png -crop 640x360+4480+2880 goblinLandB_(7,8).png
if %W% gtr 4480 if %H% gtr 3240 convert goblinLandA.png -crop 640x360+4480+3240 goblinLandA_(7,9).png
if %W% gtr 4480 if %H% gtr 3240 convert goblinLandB.png -crop 640x360+4480+3240 goblinLandB_(7,9).png
if %W% gtr 5120 if %H% gtr 0 convert goblinLandA.png -crop 640x360+5120+0 goblinLandA_(8,0).png
if %W% gtr 5120 if %H% gtr 0 convert goblinLandB.png -crop 640x360+5120+0 goblinLandB_(8,0).png
if %W% gtr 5120 if %H% gtr 360 convert goblinLandA.png -crop 640x360+5120+360 goblinLandA_(8,1).png
if %W% gtr 5120 if %H% gtr 360 convert goblinLandB.png -crop 640x360+5120+360 goblinLandB_(8,1).png
if %W% gtr 5120 if %H% gtr 720 convert goblinLandA.png -crop 640x360+5120+720 goblinLandA_(8,2).png
if %W% gtr 5120 if %H% gtr 720 convert goblinLandB.png -crop 640x360+5120+720 goblinLandB_(8,2).png
if %W% gtr 5120 if %H% gtr 1080 convert goblinLandA.png -crop 640x360+5120+1080 goblinLandA_(8,3).png
if %W% gtr 5120 if %H% gtr 1080 convert goblinLandB.png -crop 640x360+5120+1080 goblinLandB_(8,3).png
if %W% gtr 5120 if %H% gtr 1440 convert goblinLandA.png -crop 640x360+5120+1440 goblinLandA_(8,4).png
if %W% gtr 5120 if %H% gtr 1440 convert goblinLandB.png -crop 640x360+5120+1440 goblinLandB_(8,4).png
if %W% gtr 5120 if %H% gtr 1800 convert goblinLandA.png -crop 640x360+5120+1800 goblinLandA_(8,5).png
if %W% gtr 5120 if %H% gtr 1800 convert goblinLandB.png -crop 640x360+5120+1800 goblinLandB_(8,5).png
if %W% gtr 5120 if %H% gtr 2160 convert goblinLandA.png -crop 640x360+5120+2160 goblinLandA_(8,6).png
if %W% gtr 5120 if %H% gtr 2160 convert goblinLandB.png -crop 640x360+5120+2160 goblinLandB_(8,6).png
if %W% gtr 5120 if %H% gtr 2520 convert goblinLandA.png -crop 640x360+5120+2520 goblinLandA_(8,7).png
if %W% gtr 5120 if %H% gtr 2520 convert goblinLandB.png -crop 640x360+5120+2520 goblinLandB_(8,7).png
if %W% gtr 5120 if %H% gtr 2880 convert goblinLandA.png -crop 640x360+5120+2880 goblinLandA_(8,8).png
if %W% gtr 5120 if %H% gtr 2880 convert goblinLandB.png -crop 640x360+5120+2880 goblinLandB_(8,8).png
if %W% gtr 5120 if %H% gtr 3240 convert goblinLandA.png -crop 640x360+5120+3240 goblinLandA_(8,9).png
if %W% gtr 5120 if %H% gtr 3240 convert goblinLandB.png -crop 640x360+5120+3240 goblinLandB_(8,9).png
if %W% gtr 5760 if %H% gtr 0 convert goblinLandA.png -crop 640x360+5760+0 goblinLandA_(9,0).png
if %W% gtr 5760 if %H% gtr 0 convert goblinLandB.png -crop 640x360+5760+0 goblinLandB_(9,0).png
if %W% gtr 5760 if %H% gtr 360 convert goblinLandA.png -crop 640x360+5760+360 goblinLandA_(9,1).png
if %W% gtr 5760 if %H% gtr 360 convert goblinLandB.png -crop 640x360+5760+360 goblinLandB_(9,1).png
if %W% gtr 5760 if %H% gtr 720 convert goblinLandA.png -crop 640x360+5760+720 goblinLandA_(9,2).png
if %W% gtr 5760 if %H% gtr 720 convert goblinLandB.png -crop 640x360+5760+720 goblinLandB_(9,2).png
if %W% gtr 5760 if %H% gtr 1080 convert goblinLandA.png -crop 640x360+5760+1080 goblinLandA_(9,3).png
if %W% gtr 5760 if %H% gtr 1080 convert goblinLandB.png -crop 640x360+5760+1080 goblinLandB_(9,3).png
if %W% gtr 5760 if %H% gtr 1440 convert goblinLandA.png -crop 640x360+5760+1440 goblinLandA_(9,4).png
if %W% gtr 5760 if %H% gtr 1440 convert goblinLandB.png -crop 640x360+5760+1440 goblinLandB_(9,4).png
if %W% gtr 5760 if %H% gtr 1800 convert goblinLandA.png -crop 640x360+5760+1800 goblinLandA_(9,5).png
if %W% gtr 5760 if %H% gtr 1800 convert goblinLandB.png -crop 640x360+5760+1800 goblinLandB_(9,5).png
if %W% gtr 5760 if %H% gtr 2160 convert goblinLandA.png -crop 640x360+5760+2160 goblinLandA_(9,6).png
if %W% gtr 5760 if %H% gtr 2160 convert goblinLandB.png -crop 640x360+5760+2160 goblinLandB_(9,6).png
if %W% gtr 5760 if %H% gtr 2520 convert goblinLandA.png -crop 640x360+5760+2520 goblinLandA_(9,7).png
if %W% gtr 5760 if %H% gtr 2520 convert goblinLandB.png -crop 640x360+5760+2520 goblinLandB_(9,7).png
if %W% gtr 5760 if %H% gtr 2880 convert goblinLandA.png -crop 640x360+5760+2880 goblinLandA_(9,8).png
if %W% gtr 5760 if %H% gtr 2880 convert goblinLandB.png -crop 640x360+5760+2880 goblinLandB_(9,8).png
if %W% gtr 5760 if %H% gtr 3240 convert goblinLandA.png -crop 640x360+5760+3240 goblinLandA_(9,9).png
if %W% gtr 5760 if %H% gtr 3240 convert goblinLandB.png -crop 640x360+5760+3240 goblinLandB_(9,9).png
 