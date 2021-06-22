#!/system/bin/sh
FS="ntfs|vfat" #Names of fs separed by "|"
LIST=""
IFS=";"
count=0

table=$(blkid | grep -E "$FS" | grep -oE "^[^:]+" | sed 's|/dev/block/||g' | tr '\n' ';') #Get block devices filtered by FS

for disk in $table #Generate dialog list
do
  count=$((count+1))
  grep "$disk" /data/fx-fstab>/dev/null && LIST="$LIST $count $disk on " || LIST="$LIST $count $disk off "
done

eval dialog --separate-output --checklist \"Toggle automount\" 0 0 0  $LIST 2> /data/local/tmp/fx-fstab.tmp || exit 0 #Exit on cancel


touch /data/fx-fstab
rm /data/fx-fstab

count=0
for disk in $table #Parse dialog output to fx-fstab
do
  count=$((count+1))
  grep -E "^$count$" /data/local/tmp/fx-fstab.tmp>/dev/null && echo $disk>>/data/fx-fstab
done

dialog --yesno "This needs reboot. Do you want to?" 0 0 && reboot
