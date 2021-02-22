#!/gearlock/bin/bash

gsudo
clear
figlet Customization
echo Need To Customize eh...?
echo -e "\e[32m1.New Font + emojis\e[0m "
echo -e "\e[32m2.Emojis-v2\e[0m "
echo -e "\e[32m3.Leena Launcher\e[0m "
read -p "choose an option : " choice

if [ $choice = 1 ]
then
rm -rf /system/fonts/*
cp data/.ToolKit/customization/fonts/* /system/fonts/
chmod 777 /system/fonts/*
chmod +x /system/fonts/*
reboot
fi

if [ $choice = 2 ]
then
rm -rf /system/fonts/NotoColorEmoji.ttf
cp /data/.ToolKit/customization/emojis-v2/NotoColorEmoji.ttf /system/fonts/
chmod 777 /system/fonts/*
chmod +x /system/fonts/*
reboot
fi

if [ $choice = 3 ]
then
rm -rf /system/framework/framework-res.apk
cp /sdcard/Download/ToolKit/.frameworkbak/framework-res.apk /system/framework/
chmod 777 /system/framework/framework-res.apk
echo done!! Now Reboot...
reboot
fi



