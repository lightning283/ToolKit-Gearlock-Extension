#!/gearlock/bin/bash
gsudo
sudo
clear
figlet GAME-TWEAKS
echo -e "\e[32m1.PUBGM?\e[0m "
echo -e "\e[32m2.---\e[0m "
read -p "choose an option : " choice
if [ $choice = 1 ]

then
bash /data/.ToolKit/game-tweaks/pubgm-tweaks.sh
fi

if [ $choice = 2 ]

then
echo This is still under development
 read -n 1 -s -r -p "Press Enter To Continue"
bash /data/.ToolKit/game-tweaks/whichgame.sh
fi