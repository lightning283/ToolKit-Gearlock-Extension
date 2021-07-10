get_base_dir
geco "\n${GREEN}This could help in some app crashes and there are some essential apps too!${RC}"
geco "\n${BLUE}Installing TooLKit Thanks To ${RC}Lightning, Ghost! , xtr! and erza!"
geco "\n${PURPLE}This extension can be access by typing 'tools' in terminal too...${RC}"

filesdir2="/system/bin"
filesdir="/data/.ToolKit"
mkdir "$filesdir"
cp $BD/ToolKit/tools "$filesdir2/" -R
cp $BD/ToolKit/* "$filesdir/" -R
#######################################
chmod 777 /system/bin/tools
chmod +x /system/bin/tools
