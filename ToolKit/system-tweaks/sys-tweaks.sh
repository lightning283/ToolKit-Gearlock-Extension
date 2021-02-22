gsudo
clear
figlet System-Tweaks
echo Choose the Apps you want to install
echo -e "\e[32m1.L-Speed\e[0m "
echo -e "\e[32m2.Performace-Tweaker\e[0m "
echo -e "\e[32m3.Greenify\e[0m "
echo -e "\e[32m4.uninstall-Greenify\e[0m "
echo -e "\e[32m5.Kernel Auditor\e[0m "
echo -e "\e[32m6.3C All-in-One Toolbox\e[0m "
echo -e "\e[32m7.Wifi-Toolbox\e[0m "
echo -e "\e[32m8.Battery-Guru\e[0m "
echo -e "\e[32m9.Updated-Webview\e[0m "
echo -e "\e[32m10.Restore-Old-Webview\e[0m "
echo -e "\e[32mh.what are theses apks?/help??\e[0m "
read -p "choose an option : " choice

if [ $choice = 1 ]
then
pm disable com.android.vending
echo installing L-Speed!
pm install /data/.ToolKit/apks/lspeed.apk
pm enable com.android.vending
read -n 1 -s -r -p "Installed L-Speed--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
echo done!
fi

if [ $choice = 2 ]
then
pm disable com.android.vending
echo installing Performace-Tweaker!
pm install /data/.ToolKit/system-tweaks/lspeed.apk
pm enable com.android.vending
read -n 1 -s -r -p "Installed performance tweaker--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
echo done!
fi

if [ $choice = 3 ]
then
echo installing Greenify!
cp /data/.ToolKit/system-tweaks/greenify/permissions/privapp-permissions-com.oasisfeng.greenify.xml /system/etc/permissions/
mkdir /system/app/Greenify
cp /data/.ToolKit/system-tweaks/greenify/priv-app/greenify.apk /system/app/Greenify/
chmod 777 /system/app/Greenify/greenify.apk
chmod 777 /system/etc/permissions/privapp-permissions-com.oasisfeng.greenify.xml
reboot
fi

if [ $choice = 4 ]
then
echo Removing Greenify!
rm -rf /system/etc/permissions/privapp-permissions-com.oasisfeng.greenify.xml
rm -rf /system/app/Greenify/greenify.apk
reboot
fi

if [ $choice = 5 ]
then
pm disable com.android.vending
echo installing Kernel Auditor!
pm install /data/.ToolKit/system-tweaks/kernelauditor.apk
pm enable com.android.vending
read -n 1 -s -r -p "Installed kernel auditor--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
echo done!
fi

if [ $choice = 6 ]
then
pm disable com.android.vending
echo installing 3c-all-in-one-toolbox!
pm install /data/.ToolKit/system-tweaks/3ctoolbox.apk
pm enable com.android.vending
read -n 1 -s -r -p "Installed 3c-ToolBox--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
echo done!
fi

if [ $choice = 7 ]
then
pm disable com.android.vending
echo installing Wifi-toolbox!
pm install /data/.ToolKit/system-tweaks/wifitoolbox.apk
pm enable com.android.vending
read -n 1 -s -r -p "Installed Wifi-ToolBox--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
echo done!
fi

if [ $choice = 8 ]
then
pm disable com.android.vending
echo installing Batter-Guru!
pm install /data/.ToolKit/system-tweaks/batteryguru.apk
pm enable com.android.vending
read -n 1 -s -r -p "Installed Battery-Guru--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
echo done!
fi


if [ $choice = 9 ]
then
echo installing latest webview!
echo After finishing,this will reboot!!
rm -rf /system/priv-app/webview/webview.apk
cp /data/.ToolKit/system-tweaks/webview.apk /system/priv-app/webview/
chmod 777 /system/priv-app/webview/webview.apk
reboot
fi

if [ $choice = 10 ]
then
echo Restoring Stock WebView
rm -rf /system/priv-app/webview/webview.apk
cp  /data/.ToolKit/webviewbak/webview.apk /system/priv-app/webview/
chmod 777 /system/priv-app/webview/webview.apk
reboot

echo done!
fi

if [ $choice = h ]
then
clear
echo "
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
