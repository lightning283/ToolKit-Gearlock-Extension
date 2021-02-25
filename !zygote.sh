#######################################################################################################
#####=============================== Package/Extension Information ===============================#####

NAME="ToolKit" #Package/Extension Name

CODENAME="Run_ToolKit" #An Unique codename

TYPE="Extension" #Specify (Package / Extension)

AUTHOR="LIGHTNING,Ghost" #Your name as the Developer/Owner/Packer

VERSION="2.0" #Specify the Version of this package/extension

SHORTDESC="Has some Pubgm-tweak-tools and also some tewaks for app/game crashes.." #Provide a short description about this package/extension

C_EXTNAME="Run_ToolKit" #For Specifing a custom name for your extension script ($NAME is used if not defined)

#####=============================== Package/Extension Information ===============================#####
#######################################################################################################




#------------------------------------------------------------------------------------------------------




#######################################################################################################
######=============================== Package/Extension Functions ===============================######

REQSYNC="yes" #(Deafult - yes) To make sure all your files are properly written in disk

REQREBOOT="no, no" #(Deafult - no, no [BOOTED-MODE, RECOVERY-MODE]) Require user to reboot

GEN_UNINS="no" #(Deafult - no) If you want GearLock to generate an uninstallation script itself

SHOW_PROG="yes" #(Default - yes) Whether to show extraction progress while loading the pkg/extension

DEF_HEADER="yes" #(Default -yes) Whether to use the default header which print's the info during zygote

######=============================== Package/Extension Functions ===============================######
#######################################################################################################




#------------------------------------------------------------------------------------------------------




#######################################################################################################
######======================================= CustomHeader ======================================######
                        #Do not edit this part unless you know what you're doing#
                #Set `DEF_HEADER` to `no' if you want to specify a custom zygote header#
       #Then you can use `geco` or `cat` to print your custom header below for the zygote stage#





######========================================== Header =========================================######
#######################################################################################################
