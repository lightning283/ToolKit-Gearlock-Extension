clear
figlet Install-PKG


echo -e "\e[32m1.Essential-Apps--> Pack\e[0m "
echo -e "\e[32m2.System-Tweak-Apks--> Pack\e[0m "
echo -e "\e[32m3.Customization--> Pack\e[0m "
echo -e "\e[32m4.Pubgm-Fix--> Pack\e[0m "
echo -e "\e[32m4.Back\e[0m "
read -p "choose an option : " choice
if [ $choice = 1 ]

then
echo "
What Does This Package Have?

*Etch Droid
*GameGaurdian
*LuckyPatcher
*RootUninstaller
*Terminal-Emulator 


"

echo "Press '1' to Download...Press '2' to Go Back"
read -p "Choose an Option : " choicewget
if [ $choicewget = 1 ]
then
cd /data/.ToolKit/apks/
axel https://dl.dropbox.com/s/v1dzzcr52u572a2/apks.zip?dl=1
unzip -q apks.zip
rm -rf apks.zip
read -n 1 -s -r -p "Download Complete--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi

if [ $choicewget = 2 ]
then 
bash /data/.ToolKit/tools.sh
fi
#finish first option
fi
######################

if [ $choice = 2 ]
then
echo "
What Does This Pack Contain
*3C-ToolBox
*BatteryGURU
*Kernel Auditor
*L-Speed
*New and Updated Webview--it may help In app crashes
*Wifi-ToolBox
*Greeniy


"
echo "Press '1' to Download...Press '2' to Go Back"
read -p "Choose an Option : " choicewget2

if [ choicewget2 = 1 ]
then
cd /data/.ToolKit/System-tweaks/
axel 
unzip -q system-tweaks.zip
rm -rf system-tweaks.zip
read -n 1 -s -r -p "Download Complete--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi

if [ choicewget2 = 2 ]
then
bash /data/.ToolKit/tools.sh
fi
##
fi
###################################################################################################

if [ $choice = 3 ]
then
 echo "
 What Does This Pack Have?
 *Fonts
 *New Launchers
 **Much More to come here**

 "
 echo "Press '1' to Download...Press '2' to Go Back"
 read -p "Choose an Option : " choicewget3
 if [ $choicewget3 = 1 ]
 then
 cd /data/.ToolKit/customization/
 axel https://dl.dropbox.com/s/m8j404iuqcfbp1a/customization.zip?dl=1
 unzip -q customization.zip
 rm -rf customization.zip
 read -n 1 -s -r -p "Download Complete--Press Enter To Continue"
 bash /data/.ToolKit/tools.sh
 fi
 if [ $choicewget3 = 2 ]
 then
 bash /data/.ToolKit/tools.sh
 fi




fi
