#!/bin/bash

#Script to remove users in bulk to Proxmox Realm

echo "This script removes bulk users in PVE Realm."
echo "Users must start at 1. (Example User1)"
echo ""

echo "Enter name of user."
read name

echo "Enter how many of these users there are."
read num

var=1

while [ $var -lt $((num+1)) ]
do
	#Variable is the combination of name and number (Example user1)
	user=$name$var

	#Adds user to pve realm
	pveum userdel $user@pve

	echo ""
	echo "Deleted" $user
	echo ""

	#counter
	var=$((var+1))
done

echo "Done."
