set /P id=Enter image name (Ex: tinyTown): %=%
echo %id%

mkdir %id%

extraANDlinux\pngquant.exe --ext .png --force 256 %id%A.png
extraANDlinux\pngquant.exe --ext .png --force 256 %id%B.png

for /f "tokens=1-3" %%i in ('convert %id%A.png -format "%%w x %%h" info:') do set W=%%i & set H=%%k
convert %id%B.png -filter point -resize 12.5%% %id%/%id%M.png

if %W% gtr 0 if %H% gtr 0 convert %id%A.png -crop 640x360+0+0 %id%/%id%A_(0,0).png
if %W% gtr 0 if %H% gtr 0 convert %id%B.png -crop 640x360+0+0 %id%/%id%B_(0,0).png
if %W% gtr 0 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(0,0).png
if %W% gtr 0 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(0,0).png

if %W% gtr 0 if %H% gtr 360 convert %id%A.png -crop 640x360+0+360 %id%/%id%A_(0,1).png
if %W% gtr 0 if %H% gtr 360 convert %id%B.png -crop 640x360+0+360 %id%/%id%B_(0,1).png
if %W% gtr 0 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(0,1).png
if %W% gtr 0 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(0,1).png

if %W% gtr 0 if %H% gtr 720 convert %id%A.png -crop 640x360+0+720 %id%/%id%A_(0,2).png
if %W% gtr 0 if %H% gtr 720 convert %id%B.png -crop 640x360+0+720 %id%/%id%B_(0,2).png
if %W% gtr 0 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(0,2).png
if %W% gtr 0 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(0,2).png

if %W% gtr 0 if %H% gtr 1080 convert %id%A.png -crop 640x360+0+1080 %id%/%id%A_(0,3).png
if %W% gtr 0 if %H% gtr 1080 convert %id%B.png -crop 640x360+0+1080 %id%/%id%B_(0,3).png
if %W% gtr 0 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(0,3).png
if %W% gtr 0 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(0,3).png

if %W% gtr 0 if %H% gtr 1440 convert %id%A.png -crop 640x360+0+1440 %id%/%id%A_(0,4).png
if %W% gtr 0 if %H% gtr 1440 convert %id%B.png -crop 640x360+0+1440 %id%/%id%B_(0,4).png
if %W% gtr 0 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(0,4).png
if %W% gtr 0 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(0,4).png

if %W% gtr 0 if %H% gtr 1800 convert %id%A.png -crop 640x360+0+1800 %id%/%id%A_(0,5).png
if %W% gtr 0 if %H% gtr 1800 convert %id%B.png -crop 640x360+0+1800 %id%/%id%B_(0,5).png
if %W% gtr 0 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(0,5).png
if %W% gtr 0 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(0,5).png

if %W% gtr 0 if %H% gtr 2160 convert %id%A.png -crop 640x360+0+2160 %id%/%id%A_(0,6).png
if %W% gtr 0 if %H% gtr 2160 convert %id%B.png -crop 640x360+0+2160 %id%/%id%B_(0,6).png
if %W% gtr 0 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(0,6).png
if %W% gtr 0 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(0,6).png

if %W% gtr 0 if %H% gtr 2520 convert %id%A.png -crop 640x360+0+2520 %id%/%id%A_(0,7).png
if %W% gtr 0 if %H% gtr 2520 convert %id%B.png -crop 640x360+0+2520 %id%/%id%B_(0,7).png
if %W% gtr 0 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(0,7).png
if %W% gtr 0 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(0,7).png

if %W% gtr 0 if %H% gtr 2880 convert %id%A.png -crop 640x360+0+2880 %id%/%id%A_(0,8).png
if %W% gtr 0 if %H% gtr 2880 convert %id%B.png -crop 640x360+0+2880 %id%/%id%B_(0,8).png
if %W% gtr 0 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(0,8).png
if %W% gtr 0 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(0,8).png

if %W% gtr 640 if %H% gtr 0 convert %id%A.png -crop 640x360+640+0 %id%/%id%A_(1,0).png
if %W% gtr 640 if %H% gtr 0 convert %id%B.png -crop 640x360+640+0 %id%/%id%B_(1,0).png
if %W% gtr 640 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(1,0).png
if %W% gtr 640 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(1,0).png

if %W% gtr 640 if %H% gtr 360 convert %id%A.png -crop 640x360+640+360 %id%/%id%A_(1,1).png
if %W% gtr 640 if %H% gtr 360 convert %id%B.png -crop 640x360+640+360 %id%/%id%B_(1,1).png
if %W% gtr 640 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(1,1).png
if %W% gtr 640 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(1,1).png

if %W% gtr 640 if %H% gtr 720 convert %id%A.png -crop 640x360+640+720 %id%/%id%A_(1,2).png
if %W% gtr 640 if %H% gtr 720 convert %id%B.png -crop 640x360+640+720 %id%/%id%B_(1,2).png
if %W% gtr 640 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(1,2).png
if %W% gtr 640 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(1,2).png

if %W% gtr 640 if %H% gtr 1080 convert %id%A.png -crop 640x360+640+1080 %id%/%id%A_(1,3).png
if %W% gtr 640 if %H% gtr 1080 convert %id%B.png -crop 640x360+640+1080 %id%/%id%B_(1,3).png
if %W% gtr 640 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(1,3).png
if %W% gtr 640 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(1,3).png

if %W% gtr 640 if %H% gtr 1440 convert %id%A.png -crop 640x360+640+1440 %id%/%id%A_(1,4).png
if %W% gtr 640 if %H% gtr 1440 convert %id%B.png -crop 640x360+640+1440 %id%/%id%B_(1,4).png
if %W% gtr 640 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(1,4).png
if %W% gtr 640 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(1,4).png

if %W% gtr 640 if %H% gtr 1800 convert %id%A.png -crop 640x360+640+1800 %id%/%id%A_(1,5).png
if %W% gtr 640 if %H% gtr 1800 convert %id%B.png -crop 640x360+640+1800 %id%/%id%B_(1,5).png
if %W% gtr 640 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(1,5).png
if %W% gtr 640 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(1,5).png

if %W% gtr 640 if %H% gtr 2160 convert %id%A.png -crop 640x360+640+2160 %id%/%id%A_(1,6).png
if %W% gtr 640 if %H% gtr 2160 convert %id%B.png -crop 640x360+640+2160 %id%/%id%B_(1,6).png
if %W% gtr 640 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(1,6).png
if %W% gtr 640 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(1,6).png

if %W% gtr 640 if %H% gtr 2520 convert %id%A.png -crop 640x360+640+2520 %id%/%id%A_(1,7).png
if %W% gtr 640 if %H% gtr 2520 convert %id%B.png -crop 640x360+640+2520 %id%/%id%B_(1,7).png
if %W% gtr 640 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(1,7).png
if %W% gtr 640 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(1,7).png

if %W% gtr 640 if %H% gtr 2880 convert %id%A.png -crop 640x360+640+2880 %id%/%id%A_(1,8).png
if %W% gtr 640 if %H% gtr 2880 convert %id%B.png -crop 640x360+640+2880 %id%/%id%B_(1,8).png
if %W% gtr 640 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(1,8).png
if %W% gtr 640 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(1,8).png

if %W% gtr 1280 if %H% gtr 0 convert %id%A.png -crop 640x360+1280+0 %id%/%id%A_(2,0).png
if %W% gtr 1280 if %H% gtr 0 convert %id%B.png -crop 640x360+1280+0 %id%/%id%B_(2,0).png
if %W% gtr 1280 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(2,0).png
if %W% gtr 1280 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(2,0).png

if %W% gtr 1280 if %H% gtr 360 convert %id%A.png -crop 640x360+1280+360 %id%/%id%A_(2,1).png
if %W% gtr 1280 if %H% gtr 360 convert %id%B.png -crop 640x360+1280+360 %id%/%id%B_(2,1).png
if %W% gtr 1280 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(2,1).png
if %W% gtr 1280 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(2,1).png

if %W% gtr 1280 if %H% gtr 720 convert %id%A.png -crop 640x360+1280+720 %id%/%id%A_(2,2).png
if %W% gtr 1280 if %H% gtr 720 convert %id%B.png -crop 640x360+1280+720 %id%/%id%B_(2,2).png
if %W% gtr 1280 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(2,2).png
if %W% gtr 1280 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(2,2).png

if %W% gtr 1280 if %H% gtr 1080 convert %id%A.png -crop 640x360+1280+1080 %id%/%id%A_(2,3).png
if %W% gtr 1280 if %H% gtr 1080 convert %id%B.png -crop 640x360+1280+1080 %id%/%id%B_(2,3).png
if %W% gtr 1280 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(2,3).png
if %W% gtr 1280 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(2,3).png

if %W% gtr 1280 if %H% gtr 1440 convert %id%A.png -crop 640x360+1280+1440 %id%/%id%A_(2,4).png
if %W% gtr 1280 if %H% gtr 1440 convert %id%B.png -crop 640x360+1280+1440 %id%/%id%B_(2,4).png
if %W% gtr 1280 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(2,4).png
if %W% gtr 1280 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(2,4).png

if %W% gtr 1280 if %H% gtr 1800 convert %id%A.png -crop 640x360+1280+1800 %id%/%id%A_(2,5).png
if %W% gtr 1280 if %H% gtr 1800 convert %id%B.png -crop 640x360+1280+1800 %id%/%id%B_(2,5).png
if %W% gtr 1280 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(2,5).png
if %W% gtr 1280 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(2,5).png

if %W% gtr 1280 if %H% gtr 2160 convert %id%A.png -crop 640x360+1280+2160 %id%/%id%A_(2,6).png
if %W% gtr 1280 if %H% gtr 2160 convert %id%B.png -crop 640x360+1280+2160 %id%/%id%B_(2,6).png
if %W% gtr 1280 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(2,6).png
if %W% gtr 1280 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(2,6).png

if %W% gtr 1280 if %H% gtr 2520 convert %id%A.png -crop 640x360+1280+2520 %id%/%id%A_(2,7).png
if %W% gtr 1280 if %H% gtr 2520 convert %id%B.png -crop 640x360+1280+2520 %id%/%id%B_(2,7).png
if %W% gtr 1280 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(2,7).png
if %W% gtr 1280 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(2,7).png

if %W% gtr 1280 if %H% gtr 2880 convert %id%A.png -crop 640x360+1280+2880 %id%/%id%A_(2,8).png
if %W% gtr 1280 if %H% gtr 2880 convert %id%B.png -crop 640x360+1280+2880 %id%/%id%B_(2,8).png
if %W% gtr 1280 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(2,8).png
if %W% gtr 1280 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(2,8).png

if %W% gtr 1920 if %H% gtr 0 convert %id%A.png -crop 640x360+1920+0 %id%/%id%A_(3,0).png
if %W% gtr 1920 if %H% gtr 0 convert %id%B.png -crop 640x360+1920+0 %id%/%id%B_(3,0).png
if %W% gtr 1920 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(3,0).png
if %W% gtr 1920 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(3,0).png

if %W% gtr 1920 if %H% gtr 360 convert %id%A.png -crop 640x360+1920+360 %id%/%id%A_(3,1).png
if %W% gtr 1920 if %H% gtr 360 convert %id%B.png -crop 640x360+1920+360 %id%/%id%B_(3,1).png
if %W% gtr 1920 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(3,1).png
if %W% gtr 1920 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(3,1).png

if %W% gtr 1920 if %H% gtr 720 convert %id%A.png -crop 640x360+1920+720 %id%/%id%A_(3,2).png
if %W% gtr 1920 if %H% gtr 720 convert %id%B.png -crop 640x360+1920+720 %id%/%id%B_(3,2).png
if %W% gtr 1920 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(3,2).png
if %W% gtr 1920 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(3,2).png

if %W% gtr 1920 if %H% gtr 1080 convert %id%A.png -crop 640x360+1920+1080 %id%/%id%A_(3,3).png
if %W% gtr 1920 if %H% gtr 1080 convert %id%B.png -crop 640x360+1920+1080 %id%/%id%B_(3,3).png
if %W% gtr 1920 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(3,3).png
if %W% gtr 1920 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(3,3).png

if %W% gtr 1920 if %H% gtr 1440 convert %id%A.png -crop 640x360+1920+1440 %id%/%id%A_(3,4).png
if %W% gtr 1920 if %H% gtr 1440 convert %id%B.png -crop 640x360+1920+1440 %id%/%id%B_(3,4).png
if %W% gtr 1920 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(3,4).png
if %W% gtr 1920 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(3,4).png

if %W% gtr 1920 if %H% gtr 1800 convert %id%A.png -crop 640x360+1920+1800 %id%/%id%A_(3,5).png
if %W% gtr 1920 if %H% gtr 1800 convert %id%B.png -crop 640x360+1920+1800 %id%/%id%B_(3,5).png
if %W% gtr 1920 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(3,5).png
if %W% gtr 1920 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(3,5).png

if %W% gtr 1920 if %H% gtr 2160 convert %id%A.png -crop 640x360+1920+2160 %id%/%id%A_(3,6).png
if %W% gtr 1920 if %H% gtr 2160 convert %id%B.png -crop 640x360+1920+2160 %id%/%id%B_(3,6).png
if %W% gtr 1920 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(3,6).png
if %W% gtr 1920 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(3,6).png

if %W% gtr 1920 if %H% gtr 2520 convert %id%A.png -crop 640x360+1920+2520 %id%/%id%A_(3,7).png
if %W% gtr 1920 if %H% gtr 2520 convert %id%B.png -crop 640x360+1920+2520 %id%/%id%B_(3,7).png
if %W% gtr 1920 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(3,7).png
if %W% gtr 1920 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(3,7).png

if %W% gtr 1920 if %H% gtr 2880 convert %id%A.png -crop 640x360+1920+2880 %id%/%id%A_(3,8).png
if %W% gtr 1920 if %H% gtr 2880 convert %id%B.png -crop 640x360+1920+2880 %id%/%id%B_(3,8).png
if %W% gtr 1920 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(3,8).png
if %W% gtr 1920 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(3,8).png

if %W% gtr 2560 if %H% gtr 0 convert %id%A.png -crop 640x360+2560+0 %id%/%id%A_(4,0).png
if %W% gtr 2560 if %H% gtr 0 convert %id%B.png -crop 640x360+2560+0 %id%/%id%B_(4,0).png
if %W% gtr 2560 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(4,0).png
if %W% gtr 2560 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(4,0).png

if %W% gtr 2560 if %H% gtr 360 convert %id%A.png -crop 640x360+2560+360 %id%/%id%A_(4,1).png
if %W% gtr 2560 if %H% gtr 360 convert %id%B.png -crop 640x360+2560+360 %id%/%id%B_(4,1).png
if %W% gtr 2560 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(4,1).png
if %W% gtr 2560 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(4,1).png

if %W% gtr 2560 if %H% gtr 720 convert %id%A.png -crop 640x360+2560+720 %id%/%id%A_(4,2).png
if %W% gtr 2560 if %H% gtr 720 convert %id%B.png -crop 640x360+2560+720 %id%/%id%B_(4,2).png
if %W% gtr 2560 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(4,2).png
if %W% gtr 2560 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(4,2).png

if %W% gtr 2560 if %H% gtr 1080 convert %id%A.png -crop 640x360+2560+1080 %id%/%id%A_(4,3).png
if %W% gtr 2560 if %H% gtr 1080 convert %id%B.png -crop 640x360+2560+1080 %id%/%id%B_(4,3).png
if %W% gtr 2560 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(4,3).png
if %W% gtr 2560 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(4,3).png

if %W% gtr 2560 if %H% gtr 1440 convert %id%A.png -crop 640x360+2560+1440 %id%/%id%A_(4,4).png
if %W% gtr 2560 if %H% gtr 1440 convert %id%B.png -crop 640x360+2560+1440 %id%/%id%B_(4,4).png
if %W% gtr 2560 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(4,4).png
if %W% gtr 2560 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(4,4).png

if %W% gtr 2560 if %H% gtr 1800 convert %id%A.png -crop 640x360+2560+1800 %id%/%id%A_(4,5).png
if %W% gtr 2560 if %H% gtr 1800 convert %id%B.png -crop 640x360+2560+1800 %id%/%id%B_(4,5).png
if %W% gtr 2560 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(4,5).png
if %W% gtr 2560 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(4,5).png

if %W% gtr 2560 if %H% gtr 2160 convert %id%A.png -crop 640x360+2560+2160 %id%/%id%A_(4,6).png
if %W% gtr 2560 if %H% gtr 2160 convert %id%B.png -crop 640x360+2560+2160 %id%/%id%B_(4,6).png
if %W% gtr 2560 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(4,6).png
if %W% gtr 2560 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(4,6).png

if %W% gtr 2560 if %H% gtr 2520 convert %id%A.png -crop 640x360+2560+2520 %id%/%id%A_(4,7).png
if %W% gtr 2560 if %H% gtr 2520 convert %id%B.png -crop 640x360+2560+2520 %id%/%id%B_(4,7).png
if %W% gtr 2560 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(4,7).png
if %W% gtr 2560 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(4,7).png

if %W% gtr 2560 if %H% gtr 2880 convert %id%A.png -crop 640x360+2560+2880 %id%/%id%A_(4,8).png
if %W% gtr 2560 if %H% gtr 2880 convert %id%B.png -crop 640x360+2560+2880 %id%/%id%B_(4,8).png
if %W% gtr 2560 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(4,8).png
if %W% gtr 2560 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(4,8).png

if %W% gtr 3200 if %H% gtr 0 convert %id%A.png -crop 640x360+3200+0 %id%/%id%A_(5,0).png
if %W% gtr 3200 if %H% gtr 0 convert %id%B.png -crop 640x360+3200+0 %id%/%id%B_(5,0).png
if %W% gtr 3200 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(5,0).png
if %W% gtr 3200 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(5,0).png

if %W% gtr 3200 if %H% gtr 360 convert %id%A.png -crop 640x360+3200+360 %id%/%id%A_(5,1).png
if %W% gtr 3200 if %H% gtr 360 convert %id%B.png -crop 640x360+3200+360 %id%/%id%B_(5,1).png
if %W% gtr 3200 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(5,1).png
if %W% gtr 3200 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(5,1).png

if %W% gtr 3200 if %H% gtr 720 convert %id%A.png -crop 640x360+3200+720 %id%/%id%A_(5,2).png
if %W% gtr 3200 if %H% gtr 720 convert %id%B.png -crop 640x360+3200+720 %id%/%id%B_(5,2).png
if %W% gtr 3200 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(5,2).png
if %W% gtr 3200 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(5,2).png

if %W% gtr 3200 if %H% gtr 1080 convert %id%A.png -crop 640x360+3200+1080 %id%/%id%A_(5,3).png
if %W% gtr 3200 if %H% gtr 1080 convert %id%B.png -crop 640x360+3200+1080 %id%/%id%B_(5,3).png
if %W% gtr 3200 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(5,3).png
if %W% gtr 3200 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(5,3).png

if %W% gtr 3200 if %H% gtr 1440 convert %id%A.png -crop 640x360+3200+1440 %id%/%id%A_(5,4).png
if %W% gtr 3200 if %H% gtr 1440 convert %id%B.png -crop 640x360+3200+1440 %id%/%id%B_(5,4).png
if %W% gtr 3200 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(5,4).png
if %W% gtr 3200 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(5,4).png

if %W% gtr 3200 if %H% gtr 1800 convert %id%A.png -crop 640x360+3200+1800 %id%/%id%A_(5,5).png
if %W% gtr 3200 if %H% gtr 1800 convert %id%B.png -crop 640x360+3200+1800 %id%/%id%B_(5,5).png
if %W% gtr 3200 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(5,5).png
if %W% gtr 3200 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(5,5).png

if %W% gtr 3200 if %H% gtr 2160 convert %id%A.png -crop 640x360+3200+2160 %id%/%id%A_(5,6).png
if %W% gtr 3200 if %H% gtr 2160 convert %id%B.png -crop 640x360+3200+2160 %id%/%id%B_(5,6).png
if %W% gtr 3200 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(5,6).png
if %W% gtr 3200 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(5,6).png

if %W% gtr 3200 if %H% gtr 2520 convert %id%A.png -crop 640x360+3200+2520 %id%/%id%A_(5,7).png
if %W% gtr 3200 if %H% gtr 2520 convert %id%B.png -crop 640x360+3200+2520 %id%/%id%B_(5,7).png
if %W% gtr 3200 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(5,7).png
if %W% gtr 3200 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(5,7).png

if %W% gtr 3200 if %H% gtr 2880 convert %id%A.png -crop 640x360+3200+2880 %id%/%id%A_(5,8).png
if %W% gtr 3200 if %H% gtr 2880 convert %id%B.png -crop 640x360+3200+2880 %id%/%id%B_(5,8).png
if %W% gtr 3200 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(5,8).png
if %W% gtr 3200 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(5,8).png

if %W% gtr 3840 if %H% gtr 0 convert %id%A.png -crop 640x360+3840+0 %id%/%id%A_(6,0).png
if %W% gtr 3840 if %H% gtr 0 convert %id%B.png -crop 640x360+3840+0 %id%/%id%B_(6,0).png
if %W% gtr 3840 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(6,0).png
if %W% gtr 3840 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(6,0).png

if %W% gtr 3840 if %H% gtr 360 convert %id%A.png -crop 640x360+3840+360 %id%/%id%A_(6,1).png
if %W% gtr 3840 if %H% gtr 360 convert %id%B.png -crop 640x360+3840+360 %id%/%id%B_(6,1).png
if %W% gtr 3840 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(6,1).png
if %W% gtr 3840 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(6,1).png

if %W% gtr 3840 if %H% gtr 720 convert %id%A.png -crop 640x360+3840+720 %id%/%id%A_(6,2).png
if %W% gtr 3840 if %H% gtr 720 convert %id%B.png -crop 640x360+3840+720 %id%/%id%B_(6,2).png
if %W% gtr 3840 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(6,2).png
if %W% gtr 3840 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(6,2).png

if %W% gtr 3840 if %H% gtr 1080 convert %id%A.png -crop 640x360+3840+1080 %id%/%id%A_(6,3).png
if %W% gtr 3840 if %H% gtr 1080 convert %id%B.png -crop 640x360+3840+1080 %id%/%id%B_(6,3).png
if %W% gtr 3840 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(6,3).png
if %W% gtr 3840 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(6,3).png

if %W% gtr 3840 if %H% gtr 1440 convert %id%A.png -crop 640x360+3840+1440 %id%/%id%A_(6,4).png
if %W% gtr 3840 if %H% gtr 1440 convert %id%B.png -crop 640x360+3840+1440 %id%/%id%B_(6,4).png
if %W% gtr 3840 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(6,4).png
if %W% gtr 3840 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(6,4).png

if %W% gtr 3840 if %H% gtr 1800 convert %id%A.png -crop 640x360+3840+1800 %id%/%id%A_(6,5).png
if %W% gtr 3840 if %H% gtr 1800 convert %id%B.png -crop 640x360+3840+1800 %id%/%id%B_(6,5).png
if %W% gtr 3840 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(6,5).png
if %W% gtr 3840 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(6,5).png

if %W% gtr 3840 if %H% gtr 2160 convert %id%A.png -crop 640x360+3840+2160 %id%/%id%A_(6,6).png
if %W% gtr 3840 if %H% gtr 2160 convert %id%B.png -crop 640x360+3840+2160 %id%/%id%B_(6,6).png
if %W% gtr 3840 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(6,6).png
if %W% gtr 3840 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(6,6).png

if %W% gtr 3840 if %H% gtr 2520 convert %id%A.png -crop 640x360+3840+2520 %id%/%id%A_(6,7).png
if %W% gtr 3840 if %H% gtr 2520 convert %id%B.png -crop 640x360+3840+2520 %id%/%id%B_(6,7).png
if %W% gtr 3840 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(6,7).png
if %W% gtr 3840 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(6,7).png

if %W% gtr 3840 if %H% gtr 2880 convert %id%A.png -crop 640x360+3840+2880 %id%/%id%A_(6,8).png
if %W% gtr 3840 if %H% gtr 2880 convert %id%B.png -crop 640x360+3840+2880 %id%/%id%B_(6,8).png
if %W% gtr 3840 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(6,8).png
if %W% gtr 3840 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(6,8).png

if %W% gtr 4480 if %H% gtr 0 convert %id%A.png -crop 640x360+4480+0 %id%/%id%A_(7,0).png
if %W% gtr 4480 if %H% gtr 0 convert %id%B.png -crop 640x360+4480+0 %id%/%id%B_(7,0).png
if %W% gtr 4480 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(7,0).png
if %W% gtr 4480 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(7,0).png

if %W% gtr 4480 if %H% gtr 360 convert %id%A.png -crop 640x360+4480+360 %id%/%id%A_(7,1).png
if %W% gtr 4480 if %H% gtr 360 convert %id%B.png -crop 640x360+4480+360 %id%/%id%B_(7,1).png
if %W% gtr 4480 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(7,1).png
if %W% gtr 4480 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(7,1).png

if %W% gtr 4480 if %H% gtr 720 convert %id%A.png -crop 640x360+4480+720 %id%/%id%A_(7,2).png
if %W% gtr 4480 if %H% gtr 720 convert %id%B.png -crop 640x360+4480+720 %id%/%id%B_(7,2).png
if %W% gtr 4480 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(7,2).png
if %W% gtr 4480 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(7,2).png

if %W% gtr 4480 if %H% gtr 1080 convert %id%A.png -crop 640x360+4480+1080 %id%/%id%A_(7,3).png
if %W% gtr 4480 if %H% gtr 1080 convert %id%B.png -crop 640x360+4480+1080 %id%/%id%B_(7,3).png
if %W% gtr 4480 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(7,3).png
if %W% gtr 4480 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(7,3).png

if %W% gtr 4480 if %H% gtr 1440 convert %id%A.png -crop 640x360+4480+1440 %id%/%id%A_(7,4).png
if %W% gtr 4480 if %H% gtr 1440 convert %id%B.png -crop 640x360+4480+1440 %id%/%id%B_(7,4).png
if %W% gtr 4480 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(7,4).png
if %W% gtr 4480 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(7,4).png

if %W% gtr 4480 if %H% gtr 1800 convert %id%A.png -crop 640x360+4480+1800 %id%/%id%A_(7,5).png
if %W% gtr 4480 if %H% gtr 1800 convert %id%B.png -crop 640x360+4480+1800 %id%/%id%B_(7,5).png
if %W% gtr 4480 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(7,5).png
if %W% gtr 4480 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(7,5).png

if %W% gtr 4480 if %H% gtr 2160 convert %id%A.png -crop 640x360+4480+2160 %id%/%id%A_(7,6).png
if %W% gtr 4480 if %H% gtr 2160 convert %id%B.png -crop 640x360+4480+2160 %id%/%id%B_(7,6).png
if %W% gtr 4480 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(7,6).png
if %W% gtr 4480 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(7,6).png

if %W% gtr 4480 if %H% gtr 2520 convert %id%A.png -crop 640x360+4480+2520 %id%/%id%A_(7,7).png
if %W% gtr 4480 if %H% gtr 2520 convert %id%B.png -crop 640x360+4480+2520 %id%/%id%B_(7,7).png
if %W% gtr 4480 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(7,7).png
if %W% gtr 4480 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(7,7).png

if %W% gtr 4480 if %H% gtr 2880 convert %id%A.png -crop 640x360+4480+2880 %id%/%id%A_(7,8).png
if %W% gtr 4480 if %H% gtr 2880 convert %id%B.png -crop 640x360+4480+2880 %id%/%id%B_(7,8).png
if %W% gtr 4480 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(7,8).png
if %W% gtr 4480 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(7,8).png

if %W% gtr 5120 if %H% gtr 0 convert %id%A.png -crop 640x360+5120+0 %id%/%id%A_(8,0).png
if %W% gtr 5120 if %H% gtr 0 convert %id%B.png -crop 640x360+5120+0 %id%/%id%B_(8,0).png
if %W% gtr 5120 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(8,0).png
if %W% gtr 5120 if %H% gtr 0  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(8,0).png

if %W% gtr 5120 if %H% gtr 360 convert %id%A.png -crop 640x360+5120+360 %id%/%id%A_(8,1).png
if %W% gtr 5120 if %H% gtr 360 convert %id%B.png -crop 640x360+5120+360 %id%/%id%B_(8,1).png
if %W% gtr 5120 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(8,1).png
if %W% gtr 5120 if %H% gtr 360  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(8,1).png

if %W% gtr 5120 if %H% gtr 720 convert %id%A.png -crop 640x360+5120+720 %id%/%id%A_(8,2).png
if %W% gtr 5120 if %H% gtr 720 convert %id%B.png -crop 640x360+5120+720 %id%/%id%B_(8,2).png
if %W% gtr 5120 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(8,2).png
if %W% gtr 5120 if %H% gtr 720  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(8,2).png

if %W% gtr 5120 if %H% gtr 1080 convert %id%A.png -crop 640x360+5120+1080 %id%/%id%A_(8,3).png
if %W% gtr 5120 if %H% gtr 1080 convert %id%B.png -crop 640x360+5120+1080 %id%/%id%B_(8,3).png
if %W% gtr 5120 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(8,3).png
if %W% gtr 5120 if %H% gtr 1080  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(8,3).png

if %W% gtr 5120 if %H% gtr 1440 convert %id%A.png -crop 640x360+5120+1440 %id%/%id%A_(8,4).png
if %W% gtr 5120 if %H% gtr 1440 convert %id%B.png -crop 640x360+5120+1440 %id%/%id%B_(8,4).png
if %W% gtr 5120 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(8,4).png
if %W% gtr 5120 if %H% gtr 1440  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(8,4).png

if %W% gtr 5120 if %H% gtr 1800 convert %id%A.png -crop 640x360+5120+1800 %id%/%id%A_(8,5).png
if %W% gtr 5120 if %H% gtr 1800 convert %id%B.png -crop 640x360+5120+1800 %id%/%id%B_(8,5).png
if %W% gtr 5120 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(8,5).png
if %W% gtr 5120 if %H% gtr 1800  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(8,5).png

if %W% gtr 5120 if %H% gtr 2160 convert %id%A.png -crop 640x360+5120+2160 %id%/%id%A_(8,6).png
if %W% gtr 5120 if %H% gtr 2160 convert %id%B.png -crop 640x360+5120+2160 %id%/%id%B_(8,6).png
if %W% gtr 5120 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(8,6).png
if %W% gtr 5120 if %H% gtr 2160  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(8,6).png

if %W% gtr 5120 if %H% gtr 2520 convert %id%A.png -crop 640x360+5120+2520 %id%/%id%A_(8,7).png
if %W% gtr 5120 if %H% gtr 2520 convert %id%B.png -crop 640x360+5120+2520 %id%/%id%B_(8,7).png
if %W% gtr 5120 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(8,7).png
if %W% gtr 5120 if %H% gtr 2520  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(8,7).png

if %W% gtr 5120 if %H% gtr 2880 convert %id%A.png -crop 640x360+5120+2880 %id%/%id%A_(8,8).png
if %W% gtr 5120 if %H% gtr 2880 convert %id%B.png -crop 640x360+5120+2880 %id%/%id%B_(8,8).png
if %W% gtr 5120 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(8,8).png
if %W% gtr 5120 if %H% gtr 2880  extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(8,8).png

del %id%A.png
del %id%B.png
explorer C:\rc\rainingchain\server\client\img\map

EXIT
Eclipse
for(int i = 0; i < 9; i++){
	for(int j = 0; j < 9; j++){
		writer.println("if %W% gtr " + 640*i + " if %H% gtr " + j*360 + " (\r\n" 
		+ "\tconvert %id%A.png -crop 640x360+" + 640*i + "+" + j*360 + " %id%/%id%A_(" + i + "," + j + ").png\r\n"
		+ "\tconvert %id%B.png -crop 640x360+" + 640*i + "+" + j*360 + " %id%/%id%B_(" + i + "," + j + ").png\r\n"
		+ "\t extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%A_(" + i + "," + j + ").png\r\n"
		+ "\t extraANDlinux\pngquant.exe --ext .png --force 256 %id%/%id%B_(" + i + "," + j + ").png\r\n"
		+ ")");
	}
}

writer.println(
"if %W% gtr " + 640*i + " if %H% gtr " + j*320 + " " + "convert %id%A.png -crop 640x360+" + 640*i + "+" + j*320 + " %id%/%id%A_(" + i + "," + j + ").png\r\n"
+ "if %W% gtr " + 640*i + " if %H% gtr " + j*320 + " " + "convert %id%B.png -crop 640x360+" + 640*i + "+" + j*320 + " %id%/%id%B_(" + i + "," + j + ").png\r\n"
+ "if %W% gtr " + 640*i + " if %H% gtr " + j*320 + " " + " extraANDlinux\\pngquant.exe --ext .png --force 256 %id%/%id%A_(" + i + "," + j + ").png\r\n"
+ "if %W% gtr " + 640*i + " if %H% gtr " + j*320 + " " + " extraANDlinux\\pngquant.exe --ext .png --force 256 %id%/%id%B_(" + i + "," + j + ").png\r\n");