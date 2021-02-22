#!/gearlock/bin/bash
gsudo
sudo
clear
figlet PUBGM-TWEAKS
echo -e "\e[32m1.Pubgm-crash-fix\e[0m "
echo -e "\e[32m2.Pubgm-Guest-ID-Reset\e[0m "
echo -e "\e[32m3.Backup Current Guest ID\e[0m "
echo -e "\e[32m4.Restore-Backedup-Guest-ID\e[0m "
read -p "choose an option : " choice
 if [ $choice = 1 ]
 then
 gsudo
 clear
 echo -e "\e[32m1.Method-1\e[0m "
 echo -e "\e[32m2.Method-2\e[0m "
 echo -e "\e[32m3.DArkMAtter4.6-webview//Method-3\e[0m "
 echo -e "\e[32m4.Back\e[0m "
 read -p "choose an option : " choice
 if [ $choice = 1 ]

 then
 echo for Pubg kr..
 rm -rf /sdcard/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
 touch  /sdcard/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
 echo for Pubg global
 rm -rf /sdcard/Android/data/com.tencent.ig/files/ProgramBinaryCache
 touch  /sdcard/Android/data/com.tencent.ig/files/ProgramBinaryCache
 read -n 1 -s -r -p "Done..Hope This Helped--Press Enter To Continue"
 bash /data/.ToolKit/tools.sh
 fi

 if [ $choice = 2 ]

 then
 echo For PUBG KR
 rm -rf /data/data/com.pubg.krmobile/app_webview/webview_data.lock
 mkdir -p /data/data/com.pubg.krmobile/app_webview/webview_data.lock/
 echo For PUBG Global
 rm -rf /data/data/com.tencent.ig/app_webview/webview_data.lock
 mkdir -p /data/data/com.tencent.ig/app_webview/webview_data.lock/
 read -n 1 -s -r -p "Done..Hope This Helped--Press Enter To Continue"
 bash /data/.ToolKit/tools.sh
 fi


 if [ $choice = 3 ]

 then
 echo Installing DarkMatter-EXo4.6 webview!!
 rm -r /system/priv-app/webview/webview.apk
 cp /data/.ToolKit/game-tweaks/webview.apk /system/priv-app/webview/
 chmod 777 /system/priv-app/webview/webview.apk
 echo done!
 reboot
 fi


 if [ $choice = 4 ]
 then
 bash /data/.ToolKit/tools.sh
fi
 fi
###############################################################################################
if [ $choice = 2 ]
then
read -n 1 -s -r -p "In Order To this to work you need to log out form the existing guest ID (press enter to continue)"
rm -rf /data/data/com.tencent.ig/shared_prefs/device_id.xml
read -n 1 -s -r -p "Done..--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi

if [ $choice = 3 ]
then
rm -rf /data/.ToolKit/game-tweaks/guest-id-bak/device_id.xml
cp /data/data/com.tencent.ig/shared_prefs/device_id.xml /data/.ToolKit/game-tweaks/guest-id-bak/
cp /data/.ToolKit/game-tweaks/guest-id-bak/device_id.xml /data/data/
read -n 1 -s -r -p "Done..--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi

if [ $choice = 4 ]
then
rm -rf /data/data/com.tencent.ig/shared_prefs/device_id.xml
cp /data/.ToolKit/game-tweaks/guest-id-bak/device_id.xml /data/data/com.tencent.ig/shared_prefs/
chmod 444 /data/data/com.tencent.ig/shared_prefs/device_id.xml
read -n 1 -s -r -p "Done..--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi