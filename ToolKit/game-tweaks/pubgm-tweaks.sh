#!/gearlock/bin/bash
com_p_cfix() {
    
	cfix=(1 "BinaryCache Method"
    2 "webview_data.lock Method"
    3 "Install\
    Darkmatter 4.6 webview")

    HEIGHT=10
	WIDTH=45
	CHOICE_HEIGHT=10
	BACKTITLE=$(gecpc "By SupremeGamers" "_")
	TITLE="PUBGM Crash fix"
	MENU="Select which way you want to fix crash"
	CHOICE=$(dialog --clear --cancel-label "Back" \
	                --backtitle "$BACKTITLE" \
	                --title "$TITLE" \
	                --menu "$MENU" \
	                $HEIGHT $WIDTH $CHOICE_HEIGHT \
					"${cfix[@]}" 3>&2 2>&1 1>&3)

    case $CHOICE in

    1)
geco "for Pubg kr..\n"
rm -rf /sdcard/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
touch  /sdcard/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
geco "for Pubg global\n"
rm -rf /sdcard/Android/data/com.tencent.ig/files/ProgramBinaryCache
touch  /sdcard/Android/data/com.tencent.ig/files/ProgramBinaryCache
dialog --msgbox "Done..Hope This Helped--Press Enter To Continue" 7 45;;
    2)
rm -rf /data/data/com.pubg.krmobile/app_webview/webview_data.lock
 mkdir -p /data/data/com.pubg.krmobile/app_webview/webview_data.lock/
geco "For PUBG Global\n"
 rm -rf /data/data/com.tencent.ig/app_webview/webview_data.lock
 mkdir -p /data/data/com.tencent.ig/app_webview/webview_data.lock/
dialog --msgbox "Done..Hope This Helped--Press Enter To Continue" 7 45;;
    3)
geco "Installing DarkMatter-Exo4.6 webview...!!\n"
 rm -r /system/priv-app/webview/webview.apk
 cp /data/.ToolKit/game-tweaks/webview.apk /system/priv-app/webview/
chmod 777 /system/priv-app/webview/webview.apk
geco "done..!"
sleep 1
stop; start
;;
    *)com_main;;
    esac

}

com_gid() {
dialog --msgbox "In Order To this to work you need to log out from the existing guest ID 
     (press enter to continue or 
         ctrl+c to cancel)" 8 45
read -n 1 -s -r -p 
 rm -rf /data/data/com.tencent.ig/shared_prefs/device_id.xml
dialog --msgbox "Done..--Press Enter To Continue" 6 40; com_main
}
com_bk_gid() {
 rm -rf /data/.ToolKit/game-tweaks/guest-id-bak/device_id.xml
cp /data/data/com.tencent.ig/shared_prefs/device_id.xml /data/.ToolKit/game-tweaks/guest-id-bak/
cp /data/.ToolKit/game-tweaks/guest-id-bak/device_id.xml /data/data/
dialog --msgbox "Done..--Press Enter To Continue" 6 40; com_main
}

com_rs_gid() {
rm -rf /data/data/com.tencent.ig/shared_prefs/device_id.xml
cp /data/.ToolKit/game-tweaks/guest-id-bak/device_id.xml /data/data/com.tencent.ig/shared_prefs/
chmod 444 /data/data/com.tencent.ig/shared_prefs/device_id.xml
dialog --msgbox "Done..--Press Enter To Continue" 6 40; com_main
}


com_main() {
W=(1 "Pubgm-crash-fix"
    2 "Pubgm-Guest-ID-Reset"
    3 "Backup Current Guest ID"
    4 "Restore-Backedup-Guest-ID")

    HEIGHT=11
	WIDTH=45
	CHOICE_HEIGHT=10
	BACKTITLE=$(gecpc "By SupremeGamers" "_")
	TITLE="PUBGM Tweaks"
	MENU="Made with time and passion"
	CHOICE=$(dialog --clear --cancel-label "Exit" \
	                --backtitle "$BACKTITLE" \
	                --title "$TITLE" \
	                --menu "$MENU" \
	                $HEIGHT $WIDTH $CHOICE_HEIGHT \
					"${W[@]}" 3>&2 2>&1 1>&3)
    case $CHOICE in
        1)com_p_cfix;;
        2)com_gid;;
        3)com_bk_gid;;
        4)com_rs_gid;;
        *)bash /data/.ToolKit/tools.sh;;
    esac
}
com_main
