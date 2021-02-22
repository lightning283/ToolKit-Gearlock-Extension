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
rm -rf /data/app/ch.deletescape.lawnchair.plah-1
rm -rf /data/data/ch.deletescape.lawnchair.plah
mkdir /system/app/LeenaLauncher
cp /data/.ToolKit/customization/leena.apk /system/app/LeenaLauncher/
chmod 777 /system/app/LeenaLauncher/leena.apk
chmod +x /system/app/LeenaLauncher/leena.apk
echo "To chage the ui from zoomed it tablet ui to desktop ui click the blue paper plane icon
then scroll down to find a app named change ui click it once to change the ui to desktop look."

reboot
fi



