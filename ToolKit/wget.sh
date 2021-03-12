#!/gearlock/bin/bash


function PrCr() {
wget "$URL" 2>&1 | \
stdbuf -o0 awk '/[.] +[0-9][0-9]?[0-9]?%/ { print substr($0,63,3) }' | \
dialog --gauge "Downloading from\n $URL" 7 60
}

	HEIGHT=13
	WIDTH=45
	CHOICE_HEIGHT=23
	BACKTITLE=$(gecpc "By SupremeGamers" "_")
	TITLE="Toolkit"
	MENU="Choose an option"
	
	OPTIONS=(
1 "Essential-Apps--> Pack "
2 "System-Tweak-Apks--> Pack"
3 "Customization--> Pack"
4 "Pubgm-Fix--> Pack"
5 "Back-->tools"
)
	choice=$(dialog --clear --cancel-label "Exit" \
	                --backtitle "$BACKTITLE" \
	                --title "$TITLE" \
	                --menu "$MENU" \
	                $HEIGHT $WIDTH $CHOICE_HEIGHT \
	                "${OPTIONS[@]}" \
	                2>&1 >/dev/tty)
					
case $choice in 
    1) dialog --yesno "Do you want to download the following?
1.Etch Droid
2.LuckyPatcher
3.RootUninstaller
4.Terminal-Emulator 
" 10 45;
        case $? in 
            0)
                cd /data/.ToolKit/apks/;
                URL="https://dl.dropbox.com/s/5g8qb9mrj19myh8/apks.zip?dl=1"; PrCr
                unzip -q apks.zip*;
                rm -rf apks.zip*;
                touch downloded.lightz;
                dialog --msgbox "Download Complete--Press Enter To Continue" 7 45;
                bash /data/.ToolKit/wget.sh
            ;;
            *)
                bash /data/.ToolKit/wget.sh
            ;;
        esac
    ;;
    2)
        dialog --title "Do you want to download the following?" --yesno "1.3C-ToolBox
2.BatteryGURU
2.kernel Auditor
3.L-Speed
4.New and Updated Webview--
webview may Help In app Crashes.
5.Wifi-ToolBox
6.Greenify
" 13 45;
        case $? in 
            0)
                cd /data/.ToolKit/system-tweaks/;
                URL="https://dl.dropbox.com/s/zzm6mawmllc89o5/system-tweaks.zip?dl=1"; PrCr
                unzip -q system-tweaks.zip*;
                rm -rf system-tweaks.zip*;
                touch downloded.lightz;
                dialog --msgbox "Download Complete--Press Enter To Continue" 7 45;
                bash /data/.ToolKit/wget.sh
            ;;
            *)
                bash /data/.ToolKit/wget.sh
            ;;
        esac
    ;;
    3)
        dialog --title "Do you want to download the following?" --yesno "1.Fonts
 2.New Launchers soon...
 **Much More to come here** 
 " 8 50;
        case $? in 
            0)
                cd /data/.ToolKit/customization/;
                URL="https://dl.dropbox.com/s/u79c5l1wal16owq/customization.zip?dl=1"; PrCr
                unzip -q customization.zip*;
                rm -rf customization.zip*;
                chmod 777 fonts;
                chmod 777 fonts/*;
                touch /data/.ToolKit/customization/downloded.lightz;
                dialog --msgbox "Download Complete--Press Enter To Continue" 7 45;
                bash /data/.ToolKit/wget.sh
            ;;
            *)
                bash /data/.ToolKit/wget.sh
            ;;
        esac
    ;;
    4)
        dialog --title "Do you want to download the following?" --yesno "1. DarkMatter-Exo4.6 Webview --This helps to fix crash issues." 7 45;
        case $? in 
            0)
                cd /data/.ToolKit/game-tweaks/;
                URL="https://dl.dropbox.com/s/czs0b7i3yca1s34/game-tweaks.zip?dl=1"; PrCr
                unzip -q game-tweaks.zip*;
                rm -rf game-tweaks.zip*;
                touch downloded.lightz;
                dialog --msgbox "Download Complete--Press Enter To Continue" 7 45;
                bash /data/.ToolKit/wget.sh
            ;;
            *)
                bash /data/.ToolKit/wget.sh
            ;;
        esac
    ;;
    5)
        bash /data/.ToolKit/tools.sh
    ;;
esac


