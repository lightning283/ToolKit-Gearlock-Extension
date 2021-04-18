#/system/bin/bash
function mountfx(){
    [ -z "$1" ] && return 0
    [ ! -e "/dev/block/$1" ] && return 0
    mkdir -p /storage/$1
    blkid | grep "/dev/block/$1" | grep "ntfs" &&  mount.ntfs /dev/block/$1 /storage/$1  || mount /dev/block/$1 /storage/$1
    return $?
}

if [ -e "/data/fx-fstab" ]
then
    for disk in $(cat /data/fx-fstab)
	do
	    mountfx $disk && echo "$disk mounted!" || echo "$disk mount failed!"
	done
fi
