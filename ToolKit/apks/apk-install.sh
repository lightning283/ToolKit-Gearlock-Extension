#!/gearlock/bin/bash

if [[ ! -f /data/.ToolKit/apks/downloded.lightz ]];then
clear
figlet -c ERROR
echo -e "\e[31mERROR---> YOU HAVE NOT DOWNLOADED THE REQUIRED FILES\e[0m "
read -n 1 -s -r -p "Download then From here----> Press Enter To Continue"
bash /data/.ToolKit/wget.sh
else




clear
geco "Choose the Apps you want to install\n"
geco "${GREEN}1.Lucky-Patcher-Installer${RC}"
geco "${GREEN}2.Root-Uninstaller${RC}"
geco "${GREEN}3.EtchDroid${RC}"
geco "${GREEN}4.Terminal_emu${RC}"
echo -e "\e[93;1m"
read -p "choose an option : " choice
echo -e "\e[0m"


if [ $choice = 1 ];then
nout pm disable com.android.vending
geco "installing Lucky patcher installer..!"
nout pm install /data/.ToolKit/apks/luckypatcher.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed Lucky-Patcher--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "done..!"
fi



if [ $choice = 2 ];then
nout pm disable com.android.vending
geco "installing Root-Uninstaller..!"
nout pm install /data/.ToolKit/apks/rootuninstaller.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed Root-Uninstaller--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "done..!"
fi

if [ $choice = 3 ];then
nout pm disable com.android.vending
geco "installing EtchDroid..!"
nout pm install /data/.ToolKit/apks/etchdroid.apk
nout pm enable com.android.vending
geco "What is EtchDroid?\n"
geco "EtchDroid is an open-source application that helps you write images to USB drives"
geco "You can use it to make a bootable GNU/Linux USB drive when your laptop is dead and you’re in the middle of nowhere.\n"
read -n 1 -s -r -p "Installed EtchDroid--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "done..!"
fi

if [ $choice = 4 ];then
nout pm disable com.android.vending
geco "installing TerminalEmulator..!"
nout pm install /data/.ToolKit/apks/termemu.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed Terminal-Emulator--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "Done..!"
fi


fi
