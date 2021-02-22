#!/gearlock/bin/bash

if [[ ! -f /data/.ToolKit/webviewbak/webview.apk ]]
then
figlet Initializing
cp /system/priv-app/webview/webview.apk /data/.ToolKit/webviewbak/
cp /system/fonts/* /data/.ToolKit/customization/baks/stockfonts/fonts/
cp -R /data/app/ch.deletescape.lawnchair.plah-1 /data/.ToolKit/customization/baks/launcher/
cp -R /data/data/ch.deletescape.lawnchair.plah /data/.ToolKit/customization/baks/launcher/
fi

gsudo
echo ======================Main-Menu===========================
figlet ToolKit
echo -e "\e[32m1.Game-Tweaks\e[0m "
echo -e "\e[32m2.Essential-Apks\e[0m "
echo -e "\e[32m3.System-Tweaking-Apks\e[0m "
echo -e "\e[32m4.Customization\e[0m "
echo -e "\e[32m5.Restore\e[0m "
echo -e "\e[32m6.FileManager-(Terminal)\e[0m "
echo -e "\e[32m7.Get-Logs(Logcat.lsmod..)\e[0m "
echo -e "\e[32m8.exit??\e[0m "
read -p "choose an option : " choice
if [ $choice = 1 ]

then
bash /data/.ToolKit/game-tweaks/whichgame.sh
fi

if [ $choice = 2 ]

then
bash /data/.ToolKit/apks/apk-install.sh
fi


if [ $choice = 4 ]

then
bash /data/.ToolKit/customization/customz.sh
fi

if [ $choice = 5 ]

then
gsudo
clear
figlet Restore
echo -e "\e[32m1.Restore Stock Web-view\e[0m "
echo -e "\e[32m2.Restore Stock Framework/cursor\e[0m "
echo -e "\e[32m3.Restore stock Fonts\e[0m "
#echo -e "\e[32m4.----\e[0m "
read -p "choose an option : " choice


if [ $choice = 1 ]
then
echo Restoring-stock-webview!
rm -rf /system/priv-app/webview/webview.apk
cp /data/.ToolKit/webviewbak/webview.apk /system/priv-app/webview/
chmod 777 /system/priv-app/webview/webview.apk
read -n 1 -s -r -p "Restore Complete!!--Press Enter To Continue"
reboot
fi

if [ $choice = 2 ]
then
echo Restoring-stock-webview!
rm -rf /system/framework/framework-res.apk
cp /data/.ToolKit/frameworkbak/framework-res.apk /system/framework/
chmod 777 /system/framework/framework-res.apk
read -n 1 -s -r -p "Restore Complete!!--Press Enter To Continue"
reboot
fi

if [ $choice = 3 ]
then
echo Restoring-stock-Fonts!
rm -rf /system/font/*
cp data/.ToolKit/customization/baks/stockfonts/fonts/* /system/fonts/
chmod 777 /system/fonts/*
chmod +x /system/fonts/*
read -n 1 -s -r -p "Restore Complete!!--Press Enter To Continue"
reboot
fi




fi

if [ $choice = 6 ]

then
read -n 1 -s -r -p "To Exit FileManager Press F10 (Press Enter To Continue)"
mc
fi

if [ $choice = 7 ]

then
rm -rf data/Logs
rm -rf /data/Logs
mkdir /data/Logs
timeout 4 logcat > data/Logs/Logcat.txt
lsmod > /data/Logs/lsmod.txt
dmesg > /data/Logs/dmesg.txt
read -n 1 -s -r -p "Finished collecting logs..Find the zip file at Download(Press Enter To Continue)"
fi


if [ $choice = 8 ]

then
exit
fi

if [ $choice = 3 ]

then
bash /data/.ToolKit/system-tweaks/sys-tweaks.sh
fi



