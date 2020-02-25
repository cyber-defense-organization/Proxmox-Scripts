#!/bin/bash

#Script to clone out VM's in bulk

#WILL NEED TO MAKE CHANGES IF YOU WANT LINKED/FULL CLONE WHEN CLONING TEMPLATES

echo "Enter the ID of the VM you would like to clone."
read curid

echo "Enter the start number of the ID the range you want for the clones."
read startid

echo "Enter the end number of the ID range for the clones."
read endid

echo "Enter name you would like for VM's. (Will clone as <Name><VM-ID>)"
read name

echo "Enter name of pool to add vm to."
read pool

echo ""
echo $curid
echo $startid
echo $endid
echo $name
echo $pool
echo ""

#Used for end of range, because loops end one before
end=$((endid+1))

while [ $startid -lt $end ]
do
	#qm clone <Current_VM_ID> <New_VM_ID> --name <New_VM_Name> --pool <Pool_Name>
	qm clone $curid $startid --name $name$startid --pool $pool

	echo ""
	echo $startid " done."

	#Counter
	startid=$((startid+1))

	echo "Starting " $startid "."
done

echo "Cloning of boxes is done."
