#!/gearlock/bin/bash

function Selector() {
	choice=$(dialog --clear --cancel-label "Exit" \
	                --backtitle "$BACKTITLE" \
	                --title "$TITLE" \
	                --menu "$MENU" \
	                $HEIGHT $WIDTH $CHOICE_HEIGHT \
	                "${OPTIONS[@]}" \
	                2>&1 >/dev/tty)
					
}

function Loader() {
PCT=0
(
while test $PCT != 105
do
cat <<EOF
XXX
$PCT
$(figlet -w $(tput cols) -c "$figtext") 
XXX
EOF
PCT=`expr $PCT + 5`
sleep 0.05
done
) |
dialog --title "$title" "$@" --gauge "gg" 10 $WIDTH 0; sleep 0.5
}

if [[ ! -f /data/.ToolKit/webviewbak/webview.apk ]];then

figtext=Initialization; title="Backup current launcher, webview and fonts"; WIDTH=65; Loader 


mkdir /data/.ToolKit/webviewbak
cp /system/priv-app/webview/webview.apk /data/.ToolKit/webviewbak/
cp -R /system/fonts /data/.ToolKit/customization/baks/stockfonts/
cp -R /data/app/ch.deletescape.lawnchair.plah-1 /data/.ToolKit/customization/baks/launcher/
cp -R /data/data/ch.deletescape.lawnchair.plah /data/.ToolKit/customization/baks/launcher/
fi





figtext="TOOIKIT"; title="Loading toolkit by Lightning"; WIDTH=40; Loader 

	HEIGHT=17
	WIDTH=50
	CHOICE_HEIGHT=15
	BACKTITLE=$(gecpc "By SupremeGamers" "_")
	TITLE="Toolkit"
	MENU="Choose an option"
	
	OPTIONS=(1 "Game-Tweaks"
2 "Essential-Apks"
3 "System-Tweaking-Apks"
4 "Customization"
5 "Restore"
6 "Midnight Commander"
7 "Get-Logs(Logcat.lsmod..)"
8 "Install-packages"
9 "Fx-fstab")

Selector
	
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
figtext="TOOIKIT"; title="Preparing restore function"; WIDTH=40; Loader 

	HEIGHT=12
	WIDTH=45
	CHOICE_HEIGHT=9
	BACKTITLE=$(gecpc "By SupremeGamers" "_")
	TITLE="Toolkit"
	MENU="Choose what you want to restore"

	OPTIONS=( 1 "Restore Stock Web-view"
	2 "Restore Stock Framework/cursor"
	3 "Restore Stock Fonts")
	
	Selector
   

if [ $choice = 1 ];then
geco "Restoring-stock-webview..!"
rm -rf /system/priv-app/webview/webview.apk
cp /data/.ToolKit/webviewbak/webview.apk /system/priv-app/webview/
chmod 777 /system/priv-app/webview/webview.apk
dialog --msgbox "Restore Complete!!--Press Enter To Continue" 7 45
stop; start
fi

if [ $choice = 2 ];then
geco Restoring-stock-Framework!
rm -rf /system/framework/framework-res.apk
cp /data/.ToolKit/frameworkbak/framework-res.apk /system/framework/
chmod 777 /system/framework/framework-res.apk
dialog --msgbox "Restore Complete!!--Press Enter To Continue" 7 45
stop; start

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
dialog --msgbox "Restore Complete!!--Press Enter To Continue" 7 45
stop; start
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
dialog --msgbox "Restore Complete!!--Press Enter To Continue" 7 45
stop; start
fi
# End of choice = 5 statement 
fi

if [ $choice = 6 ];then
dialog --msgbox "To Exit FileManager Press F10 (Press Enter To Continue)" 7 45; mc
fi

if [ $choice = 7 ];then
nout rm -rf data/Logs
nout rm -rf /data/Logs
nout mkdir /data/Logs
timeout 4 logcat > data/Logs/Logcat.txt
lsmod > /data/Logs/lsmod.txt
dmesg > /data/Logs/dmesg.txt
dialog --msgbox "Finished collecting logs..(Press Enter To Continue)" 7 45
fi

if [ $choice = 8 ];then
bash /data/.ToolKit/wget.sh
fi

if [ $choice = 9 ];then
bash /data/.ToolKit/erzaTweaks/fxStab.sh
fi

if [ $choice = 3 ];then
bash /data/.ToolKit/system-tweaks/sys-tweaks.sh
fi



