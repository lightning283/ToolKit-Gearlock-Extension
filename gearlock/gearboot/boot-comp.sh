#/system/bin/bash
function mountfx(){
    [ -z "$1" ] && return 0
    [ ! -e "/dev/block/$1" ] && return 0
    mkdir -p "/storage/$1"
    fs_type=$(blkid | grep "/dev/block/$1:" | grep -oE "TYPE=\"[^=]+\"" | grep -oE "\".+\"" | sed 's/"//g')
    case $fs_type in
        ntfs)
            mount.ntfs "/dev/block/$1" "/storage/$1"
            ;;
	vfat)
            mount -t vfat "/dev/block/$1" "/storage/$1"
            ;;
    esac
    return "$?"
}

if [ -e "/data/fx-fstab" ]
then
    for disk in $(cat /data/fx-fstab)
	do
	    mountfx $disk && echo "$disk mounted!" || echo "$disk mount failed!"
	done
fi
