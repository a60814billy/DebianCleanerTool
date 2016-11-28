#!/bin/bash 

FileSystem=`grep ext /etc/mtab | awk -F " " '{ print $2 }'`


for i in $FileSystem
do
    echo "clean $i ......"
    dd bs=1M if=/dev/zero of=$i/zf 
    sync
    rm -rf $i/zf
done

volumeGroup=`vgdisplay | grep Name | awk -F " " '{ print $3 }'`
echo $volumeGroup
for j in $volumeGroup
do 
    echo "clean LVM volumn group: $j ......"
    lvcreate -l `vgdisplay $j | grep Free | awk -F " " '{print $5}'` -n clean_space $j
    if [ -a /dev/$j/clean_space ]; then
	cat /dev/zero > /dev/$j/clean_space
	sync
	sync
	sleep 5
	lvremove -f /dev/$j/clean_space 
    fi
done

