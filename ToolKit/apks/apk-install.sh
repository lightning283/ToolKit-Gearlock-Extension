#!/gearlock/bin/bash
gsudo
clear
echo Choose the Apps you want to install
echo -e "\e[32m1.Game-Gaurdian\e[0m "
echo -e "\e[32m2.Lucky-Patcher-Installer\e[0m "
echo -e "\e[32m3.Root-Uninstaller\e[0m "
echo -e "\e[32m4.EtchDroid\e[0m "
echo -e "\e[32m5.Terminal_emu\e[0m "
read -p "choose an option : " choice

if [ $choice = 1 ]
then
pm disable com.android.vending
echo installing Game Gaurdian!
pm install /data/.ToolKit/apks/gg.apk
pm enable com.android.vending
echo done!!
read -n 1 -s -r -p "Installed GameGaurdian--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi

if [ $choice = 2 ]
then
pm disable com.android.vending
echo installing Lucky patcher installer!
pm install /data/.ToolKit/apks/luckypatcher.apk
pm enable com.android.vending
read -n 1 -s -r -p "Installed Lucky-Patcher--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
echo done!
fi



if [ $choice = 3 ]
then
pm disable com.android.vending
echo installing Root-Uninstaller!
pm install /data/.ToolKit/apks/rootuninstaller.apk
pm enable com.android.vending
read -n 1 -s -r -p "Installed Root-Uninstaller--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
echo done!
fi

if [ $choice = 4 ]
then
pm disable com.android.vending
echo installing EtchDroid!
pm install /data/.ToolKit/apks/etchdroid.apk
pm enable com.android.vending
echo What is EtchDroid?
echo EtchDroid is an open-source application that helps you write images to USB drives
echo You can use it to make a bootable GNU/Linux USB drive when your laptop is dead and you’re in the middle of nowhere.
read -n 1 -s -r -p "Installed EtchDroid--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
echo done!
fi

if [ $choice = 5 ]
then
pm disable com.android.vending
echo installing TerminalEmulator!
pm install /data/.ToolKit/apks/termemu.apk
pm enable com.android.vending
read -n 1 -s -r -p "Installed Terminal-Emulator--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
echo done!
fi
