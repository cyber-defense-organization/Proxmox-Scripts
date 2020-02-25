#!/bin/bash

#script to snapshot multiple machines

echo "Enter in the beginning vmid that you want to snapshot"

read beginid
echo $beginid

echo "Enter in the last vmid that you want to snapshot"

read endid
echo $endid

echo "Enter in the name of the snapshot"

read snapname
echo $snapname
echo "enter in a description of the snapshot (mandatory)"

read description
echo $description

while [ $beginid -le $endid ]

do
	echo $beginid
	qm snapshot $beginid $snapname --description $description
	beginid=$(($beginid + 1))
done
