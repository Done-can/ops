#!/bin/bash
#add fix to exercise6-fix here

argNum=$#
whereTo=${!#}
fileNum=$((${argNum}-1))
hostname="server2"
totalSize=0

if [ "$HOSTNAME" = "server2" ]
        then
                hostname="server1"
fi

for i in `seq 1 $fileNum`;
        do
                filePath=${!i}
                sshpass -p "vagrant" scp $filePath vagrant@$hostname:$whereTo
                totalSize=$((totalSize + $(stat -c%s "$filePath")))
        done
echo $totalSize
