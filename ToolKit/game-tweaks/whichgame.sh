#!/gearlock/bin/bash

if [[ ! -f /data/.ToolKit/game-tweaks/downloded.lightz ]];then
dialog --msgbox "ERROR You Have Not Downloaded Required Files.. Press Ok To Download." 10 40
case $? in
0)bash /data/.ToolKit/wget.sh;;
esac
else


    HEIGHT=13
    WIDTH=45
    CHOICE_HEIGHT=10
    BACKTITLE=$(gecpc "By SupremeGamers" "+")
    TITLE="Choose Game"
    MENU="Available Options"

    OPTIONS=(1 "Pubg-Mobile"
             2 "Cod-Mobile")

    CHOICE=$(dialog --clear --cancel-label "Exit" \
                    --backtitle "$BACKTITLE" \
                    --title "$TITLE" \
                    --menu "$MENU" \
                    $HEIGHT $WIDTH $CHOICE_HEIGHT \
                    "${OPTIONS[@]}" \
                    2>&1 >/dev/tty)

    case $CHOICE in
        1)bash /data/.ToolKit/game-tweaks/pubgm-tweaks.sh;;
        2)dialog --msgbox "Still Under Development!" 10 40
        case $? in
            0)bash /data/.ToolKit/game-tweaks/whichgame.sh;;
        esac
        ;;
        *)bash /data/.ToolKit/game-tweaks/whichgame.sh
        ;;
    esac 

fi
