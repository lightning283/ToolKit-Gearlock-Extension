#!/gearlock/bin/bash
if [[ ! -f /data/.ToolKit/system-tweaks/downloded.lightz ]];then
clear
figlet -c ERROR
echo -e "\e[31mERROR---> YOU HAVE NOT DOWNLOADED THE REQUIRED FILES\e[0m "
read -n 1 -s -r -p "Download then From here----> Press Enter To Continue"
bash /data/.ToolKit/wget.sh
else

clear; sleep 0.5
figlet -w $(tput cols) -c "System-Tweaks"; echo
geco "Choose the Apps you want to install\n"
geco "${GREEN}1.L-Speed${RC}"
geco "${GREEN}2.Performace-Tweaker${RC}"
geco "${GREEN}3.Greenify${RC}"
geco "${GREEN}4.uninstall-Greenify${RC}"
geco "${GREEN}5.Kernel Auditor.${RC}"
geco "${GREEN}6.3C All-in-One Toolbox${RC}"
geco "${GREEN}7.Wifi-Toolbox${RC}"
geco "${GREEN}8.Battery-Guru${RC}"
geco "${GREEN}9.Updated-Webview${RC}"
geco "${BLUE}h.what are theses apks?/help??${RC}"
echo -e "\e[93;1m"
read -p "choose an option : " choice
echo -e "\e[0m"
if [ $choice = 1 ];then
nout pm disable com.android.vending
geco "installing L-Speed..!\n"
nout pm install /data/.ToolKit/apks/lspeed.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed L-Speed--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "\ndone..!"
fi

if [ $choice = 2 ];then
nout pm disable com.android.vending
geco "installing Performace-Tweaker..!\n"
nout pm install /data/.ToolKit/system-tweaks/lspeed.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed performance tweaker--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "\ndone..!"
fi

if [ $choice = 3 ];then
geco  "installing Greenify..!\n"
nout cp /data/.ToolKit/system-tweaks/greenify/permissions/privapp-permissions-com.oasisfeng.greenify.xml /system/etc/permissions/
nout mkdir /system/app/Greenify
nout cp /data/.ToolKit/system-tweaks/greenify/priv-app/greenify.apk /system/app/Greenify/
chmod 777 /system/app/Greenify/greenify.apk
chmod 777 /system/etc/permissions/privapp-permissions-com.oasisfeng.greenify.xml
sleep 1
reboot
fi

if [ $choice = 4 ];then
geco "${RED}Removing Greenify..${RC}\n"
nout rm -rf /system/etc/permissions/privapp-permissions-com.oasisfeng.greenify.xml
nout rm -rf /system/app/Greenify/greenify.apk
geco "Rebooting"
sleep 1
reboot
fi

if [ $choice = 5 ];then
nout pm disable com.android.vending
geco "installing Kernel Auditor..!\n"
nout pm install /data/.ToolKit/system-tweaks/kernelauditor.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed kernel auditor--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "Done..!\n"
fi

if [ $choice = 6 ];then
nout pm disable com.android.vending
geco "installing 3c-all-in-one-toolbox..!\n"
nout pm install /data/.ToolKit/system-tweaks/3ctoolbox.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed 3c-ToolBox--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "Done..!"
fi

if [ $choice = 7 ];then
nout pm disable com.android.vending
geco "installing Wifi-toolbox..!\n"
nout pm install /data/.ToolKit/system-tweaks/wifitoolbox.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed Wifi-ToolBox--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "Done..!"
fi

if [ $choice = 8 ];then
nout pm disable com.android.vending
geco "installing Batter-Guru..!\n"
nout pm install /data/.ToolKit/system-tweaks/batteryguru.apk
nout pm enable com.android.vending
read -n 1 -s -r -p "Installed Battery-Guru--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
geco "Done..!"
fi


if [ $choice = 9 ];then
geco "installing latest webview..!\n"
geco "After finishing,this will reboot..!!!\n"
nout rm -rf /system/priv-app/webview/webview.apk
nout cp /data/.ToolKit/system-tweaks/webview.apk /system/priv-app/webview/
chmod 777 /system/priv-app/webview/webview.apk
geco "Rebooting"
reboot
fi

if [ $choice = h ];then
clear
echo -e "
----L-Speed-----
*L Speed is a set of tools and specific settings brought together in a 
single app.

---Greenify----
*A very simple module just to make Greenify work as a rom-integrated 
privileged app systemlessly also known as Boost Mode, so you will achieve the best 
hibernating performance it could give, and faster than using the root option only. 
It will simply inject a folder with the apk into the path: /system/priv-app. 
If it shows Privileged at the app settings.


"
fi
#end of check statement
fi
