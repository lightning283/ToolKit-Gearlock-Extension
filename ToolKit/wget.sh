clear
figlet -c Install-PKG

echo -e "\e[32m1.Essential-Apps--> Pack\e[0m "
echo -e "\e[32m2.System-Tweak-Apks--> Pack\e[0m "
echo -e "\e[32m3.Customization--> Pack\e[0m "
echo -e "\e[32m4.Pubgm-Fix--> Pack\e[0m "
echo -e "\e[32m5.Back\e[0m "
read -p "choose an option : " choice
if [ $choice = 1 ]

then
echo "
What Does This Package Have?

1.Etch Droid
2.GameGaurdian
3.LuckyPatcher
4.RootUninstaller
5.Terminal-Emulator 

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
1.3C-ToolBox
2.BatteryGURU
2.kernel Auditor
3.L-Speed
4.New and Updated Webview--It may Help In app Crashes.
5.Wfif-ToolBox
6.Greeniy

"
echo "Press '1' to Download...Press '2' to Go Back"
read -p "Choose an Option : " choicewget2

if [ choicewget2 = 1 ]
then
cd /data/.ToolKit/System-tweaks/
axel https://dl.dropbox.com/s/zzm6mawmllc89o5/system-tweaks.zip?dl=1
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
 1.Fonts
 2.New Launchers soon...
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

if [ $choice = 4 ]
then
echo "
What Does This Pack Contain?
1. DarkMatter-Exo4.6 Webview --This helps to fix crash issues.

"
echo "Press '1' to Download...Press '2' to Go Back"
read -p "Choose an Option : " choicewget4
if [ $choicewget4 = 1 ]
then
cd /data/.ToolKit/game-tweaks/
axel https://dl.dropbox.com/s/czs0b7i3yca1s34/game-tweaks.zip?dl=1
unzip -q game-tweaks.zip
rm -rf game-tweaks.zip
read -n 1 -s -r -p "Download Complete--Press Enter To Continue"
bash /data/.ToolKit/tools.sh
fi

if [ $choicewget4 = 2 ]
then
bash /data/.ToolKit/tools.sh
fi
fi
if [ $choice = 5 ]
then
bash /data/.ToolKit/tools.sh
fi
