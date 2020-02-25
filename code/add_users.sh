#!/bin/bash

#Script to add users in bulk to Proxmox Realm

echo "This script adds bulk users to PVE Realm."
echo ""

echo "Enter name for new user."
read name

echo "Enter how many of these users you want."
read num

echo "Enter password for user. (Must be more than 5 characters)"
read pass

echo "Enter group to add user."
read group

var=1

while [ $var -lt $((num+1)) ]
do
	#Variable is the combination of name and number (Example user1)
	user=$name$var

	#Adds user to pve realm
	pveum useradd $user@pve

	#Changes password. Needs to use echo, because passwd command uses stdin (Ask max for clarification)
	echo -e $pass"\n"$pass | pveum passwd $user@pve

	#Adds user to group
	pveum usermod $user@pve -group $group

	echo ""
	echo "Created" $user
	echo ""

	#counter
	var=$((var+1))
done

echo "Done."
