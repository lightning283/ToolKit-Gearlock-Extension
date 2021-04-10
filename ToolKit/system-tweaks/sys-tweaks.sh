#!/gearlock/bin/bash
if [[ ! -f /data/.ToolKit/system-tweaks/downloded.lightz ]];then
dialog --msgbox "ERROR You Have Not Downloaded Required Files.. Press Ok To Download." 10 40
case $? in
0)bash /data/.ToolKit/wget.sh;;
esac
else

    HEIGHT=17
    WIDTH=50
    CHOICE_HEIGHT=50
    BACKTITLE=$(gecpc "By SupremeGamers" "+")
    TITLE="Choose Game"
    MENU="Available Options"

    OPTIONS=(1 "L-Speed"
             2 "Performance-Tweaker"
             3 "Greenify"
             4 "Uninstall Greenify"
             5 "Kernel Auditor"
             6 "3C All-In-One-ToolBox"
             7 "Wifi - ToolBox"
             8 "Battery Guru"
             9 "Updated Webview"
             10 "Back")

    CHOICE=$(dialog --clear --cancel-label "Exit" \
                    --backtitle "$BACKTITLE" \
                    --title "$TITLE" \
                    --menu "$MENU" \
                    $HEIGHT $WIDTH $CHOICE_HEIGHT \
                    "${OPTIONS[@]}" \
                    2>&1 >/dev/tty)

    case $CHOICE in
        1)
        nout pm disable com.android.vending
        nout pm install /data/.ToolKit/system-tweaks/lspeed.apk
        nout pm enable com.android.vending
        dialog --msgbox "Installed L-Speed" 8 45
        bash /data/.ToolKit/system-tweaks/sys-tweaks.sh
        
        ;;
        2)# nout pm disable com.android.vending
        nout pm install /data/.ToolKit/system-tweaks/lspeed.apk
        nout pm enable com.android.vending
        dialog --msgbox "Installed Performace-Tweaker" 10 40
        bash /data/.ToolKit/system-tweaks/sys-tweaks.sh
        ;;
        3)
        nout cp /data/.ToolKit/system-tweaks/greenify/permissions/privapp-permissions-com.oasisfeng.greenify.xml /system/etc/permissions/
        nout mkdir /system/app/Greenify
        nout cp /data/.ToolKit/system-tweaks/greenify/priv-app/greenify.apk /system/app/Greenify/
        chmod 777 /system/app/Greenify/greenify.apk
        chmod 777 /system/etc/permissions/privapp-permissions-com.oasisfeng.greenify.xml
        dialog --msgbox "Installed Greenify,Reboot?" 10 40
        stop; start
        ;;
        4)
        nout rm -rf /system/etc/permissions/privapp-permissions-com.oasisfeng.greenify.xml
        nout rm -rf /system/app/Greenify/greenify.apk
        dialog --msgbox " Removed Greenify,Reboot?" 10 40
        stop; start
        ;;

        5)
        nout pm disable com.android.vending
        nout pm install /data/.ToolKit/system-tweaks/kernelauditor.apk
        nout pm enable com.android.vending
        dialog --msgbox "Installed Kernel-Auditor" 10 40
        bash /data/.ToolKit/system-tweaks/sys-tweaks.sh
        ;;
        6)
        nout pm disable com.android.vending
        nout pm install /data/.ToolKit/system-tweaks/3ctoolbox.apk
        nout pm enable com.android.vending
        dialog --msgbox "Installed 3C-ToolBox" 10 40
        bash /data/.ToolKit/system-tweaks/sys-tweaks.sh
        ;;
        7)
        nout pm disable com.android.vending
        nout pm install /data/.ToolKit/system-tweaks/wifitoolbox.apk
        nout pm enable com.android.vending
        dialog --msgbox "Installed Wifi-ToolBox" 10 40
        bash /data/.ToolKit/system-tweaks/sys-tweaks.sh
        ;;
        8)
        nout pm disable com.android.vending
        nout pm install /data/.ToolKit/system-tweaks/batteryguru.apk
        nout pm enable com.android.vending
        dialog --msgbox "Installed Battery Guru" 10 40
        bash /data/.ToolKit/system-tweaks/sys-tweaks.sh
        ;;
        9)
        nout rm -rf /system/priv-app/webview/webview.apk
        nout cp /data/.ToolKit/system-tweaks/webview.apk /system/priv-app/webview/
        chmod 777 /system/priv-app/webview/webview.apk
        dialog --msgbox "Installed New-Webview" 10 40
        bash /data/.ToolKit/system-tweaks/sys-tweaks.sh
        
        ;;
        *)bash /data/.ToolKit/tools.sh
        ;;
    esac 
fi
