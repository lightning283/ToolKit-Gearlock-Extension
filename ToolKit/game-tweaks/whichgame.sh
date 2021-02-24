#!/gearlock/bin/bash
clear; sleep 0.5;
figlet -w $(tput cols) -c "GAME-TWEAKS"; echo 
geco "${GREEN}1.PUBGM?${RC}"
geco "${GREEN}2.---${RC}"
read -p "choose an option : " choice
if [ $choice = 1 ];then
bash /data/.ToolKit/game-tweaks/pubgm-tweaks.sh
fi
if [ $choice = 2 ];then
geco "${RED}This is still under development${RC}\n"
read -n 1 -s -r -p "Press Enter To Continue"
bash /data/.ToolKit/game-tweaks/whichgame.sh
fi