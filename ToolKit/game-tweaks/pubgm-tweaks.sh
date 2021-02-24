#!/gearlock/bin/bash
clear; sleep 0.1;
figlet -w $(tput cols) -c "PUBGM-TWEAKS"
geco "${GREEN}1.Pubgm-crash-fix${RC}"
geco "${GREEN}2.Pubgm-Guest-ID-Reset${RC}"
geco "${GREEN}3.Backup Current Guest ID${RC}"
geco "${GREEN}4.Restore-Backedup-Guest-ID${RC}"
echo -e "\e[93;1m"
read -p "choose an option : " choice
echo -e "\e[0m"
if [ $choice = 1 ];then
clear
 geco "${GREEN}1.Method-1${RC}"
 geco "${GREEN}2.Method-2${RC}"
 geco "${GREEN}3.DArkMAtter4.6-webview//Method-3${RC}"
 geco "${GREEN}4.Back${RC}"
 echo -e "\e[93;1m"
 read -p "choose an option : " choice
 echo -e "\e[0m"
 if [ $choice = 1 ];then
 geco "for Pubg kr..\n"
nout rm -rf /sdcard/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
nout touch  /sdcard/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
geco "for Pubg global\n"
nout rm -rf /sdcard/Android/data/com.tencent.ig/files/ProgramBinaryCache
nout touch  /sdcard/Android/data/com.tencent.ig/files/ProgramBinaryCache
 read -n 1 -s -r -p "Done..Hope This Helped--Press Enter To Continue"
 bash /data/.ToolKit/tools.sh
 fi

 if [ $choice = 2 ];then
 geco "For PUBG KR\n"
nout rm -rf /data/data/com.pubg.krmobile/app_webview/webview_data.lock
nout mkdir -p /data/data/com.pubg.krmobile/app_webview/webview_data.lock/
geco "For PUBG Global\n"
 rm -rf /data/data/com.tencent.ig/app_webview/webview_data.lock
 mkdir -p /data/data/com.tencent.ig/app_webview/webview_data.lock/
 read -n 1 -s -r -p "Done..Hope This Helped--Press Enter To Continue"
 bash /data/.ToolKit/tools.sh
 fi


 if [ $choice = 3 ];then
geco "Installing DarkMatter-EXo4.6 webview...!!\n"
noutrm -r /system/priv-app/webview/webview.apk
nout cp /data/.ToolKit/game-tweaks/webview.apk /system/priv-app/webview/
 chmod 777 /system/priv-app/webview/webview.apk
geco "done..!"
sleep 1
reboot
fi


 if [ $choice = 4 ];then
 bash /data/.ToolKit/tools.sh
fi
 fi
###############################################################################################
if [ $choice = 2 ];then
read -n 1 -s -r -p "In Order To this to work you need to log out form the existing guest ID (press enter to continue)"
nout rm -rf /data/data/com.tencent.ig/shared_prefs/device_id.xml
read -n 1 -s -r -p "Done..--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi

if [ $choice = 3 ];then
nout rm -rf /data/.ToolKit/game-tweaks/guest-id-bak/device_id.xml
cp /data/data/com.tencent.ig/shared_prefs/device_id.xml /data/.ToolKit/game-tweaks/guest-id-bak/
cp /data/.ToolKit/game-tweaks/guest-id-bak/device_id.xml /data/data/
read -n 1 -s -r -p "Done..--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi

if [ $choice = 4 ];then
nout rm -rf /data/data/com.tencent.ig/shared_prefs/device_id.xml
cp /data/.ToolKit/game-tweaks/guest-id-bak/device_id.xml /data/data/com.tencent.ig/shared_prefs/
chmod 444 /data/data/com.tencent.ig/shared_prefs/device_id.xml
read -n 1 -s -r -p "Done..--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi