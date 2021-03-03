#!/bin/bash
clear;
figlet -c Install-PKG;
echo -e "\e[1;36m1.Essential-Apps--> Pack\e[0m ";
echo -e "\e[1;36m2.System-Tweak-Apks--> Pack\e[0m ";
echo -e "\e[1;36m3.Customization--> Pack\e[0m ";
echo -e "\e[1;36m4.Pubgm-Fix--> Pack\e[0m ";
echo -e "\e[1;33m5.Back\e[0m ";
read -p "choose an option : " choice;
case $choice in 
    1)
        echo "
What Does This Package Have?
1.Etch Droid
2.GameGaurdian
3.LuckyPatcher
4.RootUninstaller
5.Terminal-Emulator 
";
        echo "Press '1' to Download...Press '2' to Go Back";
        read -p "Choose an Option : " choicewget;
        case $choicewget in 
            1)
                cd /data/.ToolKit/apks/;
                axel https://dl.dropbox.com/s/v1dzzcr52u572a2/apks.zip?dl=1;
                unzip -q apks.zip;
                rm -rf apks.zip;
                touch downloded.lightz;
                read -n 1 -s -r -p "Download Complete--Press Enter To Continue";
                bash /data/.ToolKit/tools.sh
            ;;
            2)
                bash /data/.ToolKit/tools.sh
            ;;
        esac
    ;;
    2)
        echo "
What Does This Pack Contain
1.3C-ToolBox
2.BatteryGURU
2.kernel Auditor
3.L-Speed
4.New and Updated Webview--It may Help In app Crashes.
5.Wfif-ToolBox
6.Greeniy
";
        echo "Press '1' to Download...Press '2' to Go Back";
        read -p "Choose an Option : " choicewget2;
        case $choicewget2 in 
            1)
                cd /data/.ToolKit/system-tweaks/;
                axel https://dl.dropbox.com/s/zzm6mawmllc89o5/system-tweaks.zip?dl=1;
                unzip -q system-tweaks.zip;
                rm -rf system-tweaks.zip;
                touch downloded.lightz;
                read -n 1 -s -r -p "Download Complete--Press Enter To Continue";
                bash /data/.ToolKit/tools.sh
            ;;
            2)
                bash /data/.ToolKit/tools.sh
            ;;
        esac
    ;;
    3)
        echo "
 What Does This Pack Have?
 1.Fonts
 2.New Launchers soon...
 **Much More to come here**
 ";
        echo "Press '1' to Download...Press '2' to Go Back";
        read -p "Choose an Option : " choicewget3;
        case $choicewget3 in 
            1)
                cd /data/.ToolKit/customization/;
                axel https://dl.dropbox.com/s/u79c5l1wal16owq/customization.zip?dl=1;
                unzip -q customization.zip;
                rm -rf customization.zip;
                chmod 777 fonts;
                chmod 777 fonts/*;
                touch /data/.ToolKit/customization/downloded.lightz;
                read -n 1 -s -r -p "Download Complete--Press Enter To Continue";
                bash /data/.ToolKit/tools.sh
            ;;
            2)
                bash /data/.ToolKit/tools.sh
            ;;
        esac
    ;;
    4)
        echo "
What Does This Pack Contain?
1. DarkMatter-Exo4.6 Webview --This helps to fix crash issues.
";
        echo "Press '1' to Download...Press '2' to Go Back";
        read -p "Choose an Option : " choicewget4;
        case $choicewget4 in 
            1)
                cd /data/.ToolKit/game-tweaks/;
                axel https://dl.dropbox.com/s/czs0b7i3yca1s34/game-tweaks.zip?dl=1;
                unzip -q game-tweaks.zip;
                rm -rf game-tweaks.zip;
                touch downloded.lightz;
                read -n 1 -s -r -p "Download Complete--Press Enter To Continue";
                bash /data/.ToolKit/tools.sh
            ;;
            2)
                bash /data/.ToolKit/tools.sh
            ;;
        esac
    ;;
    5)
        bash /data/.ToolKit/tools.sh
    ;;
esac


# Beautified & optimized for bash by BashBox.
# By Narendra aka Ghost.
