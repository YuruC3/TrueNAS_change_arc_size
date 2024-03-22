#!/usr/bin/zsh

arc_size=$(cat "/sys/module/zfs/parameters/zfs_arc_max")

target_arc_size="<CHANGE_ME>"  # GiB to bytes | ex. 24GiB = 25769803776

if [[ -z $arc_size || $arc_size -eq "0" || $arc_size -lt "0" ]]
then
    echo "<CHANGE_ME>" >> /sys/module/zfs/parameters/zfs_arc_max
    echo "Arc size changed!"
    exit 1

elif [[ $arc_size = $target_arc_size ]]
then
    echo "Arc size is set properly."
    exit 0

else
    echo "Unknown state!"
    exit 1
fi
