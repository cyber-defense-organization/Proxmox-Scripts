#!/bin/bash

cat banner.txt

echo ""
echo "Select which script you would like to run."
echo ""
echo "1. clone.sh (Clone bulk VM's)"
echo "2. destroy.sh (Destroy bulk VM's)"
echo "3. add_users.sh (Add bulk users to PVE Realm)"
echo "4. remove_users.sh (Remove bulk users from PVE Realm)"
echo "5. group_add.sh (Add bulk users to a group)"
echo "6. snapshot_script.sh (Creates snapshot of VM's)"
echo ""
read input
echo ""

if [ $input = "1" ]
then
	echo "Starting clone.sh"
	sleep 2
	clear
	./clone.sh
elif [ $input = "2" ]
then
	echo "Starting destroy.sh"
	sleep 2
	clear
	./destroy.sh
elif [ $input = "3" ]
then
	echo "Starting add_users.sh"
	sleep 2
	clear
	./add_users.sh
elif [ $input = "4" ]
then
	echo "Starting remove_users.sh"
	sleep 2
	clear
	./remove_users.sh
elif [ $input = "5" ]
then
	echo "Starting group_add.sh"
	sleep 2
	clear
	./group_add.sh
elif [ $input = "6" ]
then
	echo "Starting snapshot_script.sh"
	sleep 2
	clear
	./snapshot_script.sh
fi
