#blkid | grep -E "ntfs|vfat" | grep -oE "/dev/block/sd[a-z][0-9]+"

#echo "$(blkid | grep -E "ntfs|vfat" | grep -oE "/dev/block/sd[a-z][0-9]+" 2>/dev/null | nl -s ") " | cut -d . -f1 )"

#echo "$(echo "$disks" 2>/dev/null | nl -s ") " | cut -d . -f1 )"

echo "Warning: Theres a small chance that automount might damage files!!"
echo "So choose wisely what you want to mount."
echo "Press any key to continue"

read -n1

disks=$(blkid | grep -oE "sd[a-z][0-9]+")


index=2
while true
do
    clear
    count=0
    for disk in $(echo $disks)
    do
        count=$(($count+1))
        [ "$index" = "$count" ] && this="#" || this=" "
        if [ -e "/data/fx-fstab" ]
        then
            grep "$disk" /data/fx-fstab>/dev/null && echo "$count) $this $disk [0]" || echo "$count) $this $disk [ ]"
        else
            echo "$count) $this $disk [ ]"
            disk[$count]="false"
        fi
    done
    echo "Press a/z key for up and down"
    echo "Press x key for toggle"
    echo "Press q key for exit"
    read -n1 inp
    [ "$inp" = "a" ] && [ "$index" -gt "1" ] && index=$(($index-1))
    [ "$inp" = "A" ] && [ "$index" -gt "1" ] && index=$(($index-1))
    [ "$inp" = "z" ] && [ "$index" -lt "$count" ] && index=$(($index+1))
    [ "$inp" = "Z" ] && [ "$index" -lt "$count" ] && index=$(($index+1))
    [ "$inp" = "q" ] && break
    [ "$inp" = "Q" ] && break
    if [ "$inp" = "x" ] || [ "$inp" = "X" ]
    then
        count=0
        [ -e "/data/fx-fstab.tmp" ] && rm "/data/fx-fstab.tmp"
        for disk in $(echo $disks)
        do
            count=$(($count+1))
            #[ -e "/data/fx-fstab" ] && grep "$disk" /data/fx-fstab>/dev/null && echo "$disk">>"/data/fx-fstab.tmp"
            if [ "$index" = "$count" ]
            then
	        [ -e "/data/fx-fstab" ] && grep "$disk" /data/fx-fstab>/dev/null || echo "$disk">>"/data/fx-fstab.tmp"
	    else
	        [ -e "/data/fx-fstab" ] && grep "$disk" /data/fx-fstab>/dev/null && echo "$disk">>"/data/fx-fstab.tmp"
	    fi
        done
        rm "/data/fx-fstab"
        mv "/data/fx-fstab.tmp" "/data/fx-fstab"
    fi
done
