#!/gearlock/bin/bash

clear; sleep 0.5;
figlet -w $(tput cols) -c "Customization"; echo 
geco "Need To Customize eh...?\n"
geco "${GREEN}1.New Font + emojis${RC}"
geco "${GREEN}2.Emojis-v2${RC}"
#geco "${GREEN}3.Leena Launcher${RC}\n"
echo -e "\e[93;1m"
read -p "choose an option : " choice
echo -e "\e[0m"

if [ $choice = 1 ];then
rm -rf /system/fonts
cp -R /data/.ToolKit/customization/fonts /system/
chmod 777 /system/fonts/*
chmod +x /system/fonts/*
reboot
fi

if [ $choice = 2 ];then
nout rm -rf /system/fonts/NotoColorEmoji.ttf
nout cp /data/.ToolKit/customization/emojis-v2/NotoColorEmoji.ttf /system/fonts/
chmod 777 /system/fonts/*
chmod +x /system/fonts/*
sleep 1
reboot
fi

#if [ $choice = 3 ];then
#nout rm -rf /data/app/ch.deletescape.lawnchair.plah-1
#nout rm -rf /data/data/ch.deletescape.lawnchair.plah
#nout mkdir /system/app/LeenaLauncher
#nout cp /data/.ToolKit/customization/leena.apk /system/app/LeenaLauncher/
#chmod 777 /system/app/LeenaLauncher/leena.apk
#chmod +x /system/app/LeenaLauncher/leena.apk
#geco "To chage the ui from zoomed it tablet ui to desktop ui click the blue paper plane icon
#then scroll down to find a app named change ui click it once to change the ui to desktop look."
#read -n 1 -s -r -p "Press Enter To Continue"
#sleep 1
#reboot
#fi



