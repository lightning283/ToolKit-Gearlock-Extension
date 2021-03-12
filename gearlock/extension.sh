#!/gearlock/bin/bash

if [[ ! -f /data/.ToolKit/webviewbak/webview.apk ]];then
PCT=0
(
while test $PCT != 105
do
cat <<EOF
XXX
$PCT
$(figlet Initializing)
XXX
EOF
PCT=`expr $PCT + 5`
sleep 0.05
done
) |
dialog --title "Backup launcher,webview and fonts" "$@" --gauge "Hi, thanks" 13 60 0; sleep 0.5

mkdir /data/.ToolKit/webviewbak
cp /system/priv-app/webview/webview.apk /data/.ToolKit/webviewbak/
cp -R /system/fonts /data/.ToolKit/customization/baks/stockfonts/
cp -R /data/app/ch.deletescape.lawnchair.plah-1 /data/.ToolKit/customization/baks/launcher/
cp -R /data/data/ch.deletescape.lawnchair.plah /data/.ToolKit/customization/baks/launcher/
fi

PCT=0
(
while test $PCT != 105
do
cat <<EOF
XXX
$PCT
$(figlet ToolKit) 
XXX
EOF
PCT=`expr $PCT + 5`
sleep 0.05
done
) |

dialog --title "Loading " "$@" --gauge "Hi, thanks" 12 45 0; sleep 0.5



	HEIGHT=20
	WIDTH=60
	CHOICE_HEIGHT=23
	BACKTITLE=$(gecpc "By SupremeGamers" "_")
	TITLE="Toolkit"
	MENU="Choose an option"
	
	OPTIONS=(1 "Game-Tweaks"
2 "Essential-Apks"
3 "System-Tweaking-Apks"
4 "Customization"
5 "Restore"
6 "FileManager-(Terminal)"
7 "Get-Logs(Logcat.lsmod..)"
8 "Install-packages"
9 "exit??")

	choice=$(dialog --clear --cancel-label "Exit" \
	                --backtitle "$BACKTITLE" \
	                --title "$TITLE" \
	                --menu "$MENU" \
	                $HEIGHT $WIDTH $CHOICE_HEIGHT \
	                "${OPTIONS[@]}" \
	                2>&1 >/dev/tty)
                  
if [ $choice = 1 ]; then
bash /data/.ToolKit/game-tweaks/whichgame.sh
fi
if [ $choice = 2 ];
then
bash /data/.ToolKit/apks/apk-install.sh
fi
if [ $choice = 4 ];
then
bash /data/.ToolKit/customization/customz.sh
fi
if [ $choice = 5 ];then
clear
gecpc "TOOlKIT"
figlet -w $(tput cols) -c "Restore"
gecpc "@__@"; echo 
geco "${GREEN}1.Restore Stock Web-view${RC}"
geco "${GREEN}2.Restore Stock Framework/cursor${RC}"
geco "${GREEN}3.Restore Stock Fonts${RC}"
geco "${GREEN}4.Restore Stock Theme${RC}"
echo -e "\e[93;1m"
read -p "choose an option : " choice
echo -e "\e[0m"

if [ $choice = 1 ];then
geco "Restoring-stock-webview..!"
rm -rf /system/priv-app/webview/webview.apk
cp /data/.ToolKit/webviewbak/webview.apk /system/priv-app/webview/
chmod 777 /system/priv-app/webview/webview.apk
read -n 1 -s -r -p "Restore Complete!!--Press Enter To Continue"
sleep 1
reboot
fi

if [ $choice = 2 ];then
geco Restoring-stock-Framework!
rm -rf /system/framework/framework-res.apk
cp /data/.ToolKit/customization/Theme/bak/framework/framework-res.apk /system/framework/
chmod 644 /system/framework/framework-res.apk
read -n 1 -s -r -p "Restore Complete!!--Press Enter To Continue"
reboot
sleep 1
fi

if [ $choice = 3 ]
then
geco Restoring-stock-Fonts!
rm -rf /system/fonts
mkdir /system/fonts
chmod 777 /data/.ToolKit/customization/baks/stockfonts/fonts
chmod 777 /data/.ToolKit/customization/baks/stockfonts/fonts/*


cp /data/.ToolKit/customization/baks/stockfonts/fonts/* /system/fonts/
chmod 777 /system/fonts
chmod 777 /system/fonts/*
read -n 1 -s -r -p "Restore Complete!!--Press Enter To Continue"
reboot
sleep 1
fi

if [ $choice = 4 ];then
geco Restoring-stock-Launcher!
rm -rf /system/app/LeenaLauncher
cp -R /data/.ToolKit/customization/baks/launchers/ch.deletescape.lawnchair.plah-1 /data/app/
cp -R /data/.ToolKit/customization/baks/launchers/ch.deletescape.lawnchair.plah /data/data/


chmod 644 /data/data/ch.deletescape.lawnchair.plah/*
chmod 644 /data/app/ch.deletescape.lawnchair.plah-1/*

chmod +x /data/data/ch.deletescape.lawnchair.plah/*
chmod +x /data/app/ch.deletescape.lawnchair.plah-1/*
chmod 644 /data/app/ch.deletescape.lawnchair.plah-1
chmod 644 /data/app/ch.deletescape.lawnchair.plah

geco Restoring-stock-BootAnimation!
rm -rf /system/media
cp /data/.ToolKit/Themes/bak/media /system/
geco Restoring-stock-Cursor!
rm -rf /system/framework/framework-res.apk
cp /data/.ToolKit/customization/Theme/bak/framework/framework-res.apk /system/framework/
chmod 644 /system/framework/framework-res.apk
read -n 1 -s -r -p "Restore Complete!!--Press Enter To Continue"
sleep 1
reboot
fi
# End of choice = 5 statement 
fi

if [ $choice = 6 ];then
read -n 1 -s -r -p "To Exit FileManager Press F10 (Press Enter To Continue)"
mc
fi

if [ $choice = 7 ];then
nout rm -rf data/Logs
nout rm -rf /data/Logs
nout mkdir /data/Logs
timeout 4 logcat > data/Logs/Logcat.txt
lsmod > /data/Logs/lsmod.txt
dmesg > /data/Logs/dmesg.txt
read -n 1 -s -r -p "Finished collecting logs..(Press Enter To Continue)"
fi

if [ $choice = 8 ];then
bash /data/.ToolKit/wget.sh
fi

if [ $choice = 9 ];then
exit 69 
fi

if [ $choice = 3 ];then
bash /data/.ToolKit/system-tweaks/sys-tweaks.sh
fi
