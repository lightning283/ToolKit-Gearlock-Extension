#!/gearlock/bin/bash
clear
geco "Choose the Apps you want to install\n"
geco "${GREEN}1.Game-Gaurdian${RC}"
geco "${GREEN}2.Lucky-Patcher-Installer${RC}"
geco "${GREEN}3.Root-Uninstaller${RC}"
geco "${GREEN}4.EtchDroid${RC}"
geco "${GREEN}5.Terminal_emu${RC}"
echo -e "\e[93;1m"
read -p "choose an option : " choice
echo -e "\e[0m"

if [ $choice = 1 ];then
nout pm disable com.android.vending
geco "installing Game Gaurdian..!"
nout pm install /data/.ToolKit/apks/gg.apk
nout pm enable com.android.vending
geco "done..!!";echo 
read -n 1 -s -r -p "Installed GameGaurdian--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi

if [ $choice = 2 ];then
nout pm disable com.android.vending
geco "installing Lucky patcher installer..!"
nout pm install /data/.ToolKit/apks/luckypatcher.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed Lucky-Patcher--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "done..!"
fi



if [ $choice = 3 ];then
nout pm disable com.android.vending
geco "installing Root-Uninstaller..!"
nout pm install /data/.ToolKit/apks/rootuninstaller.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed Root-Uninstaller--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "done..!"
fi

if [ $choice = 4 ];then
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

if [ $choice = 5 ];then
nout pm disable com.android.vending
geco "installing TerminalEmulator..!"
nout pm install /data/.ToolKit/apks/termemu.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed Terminal-Emulator--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "Done..!"
fi
