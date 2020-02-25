#!/bin/bash

#Script to bulk add users to group.

echo "WILL REMOVE THE USER FROM ANY GROUP IT IS CURRENTLY IN!"
echo ""

echo "Enter name of user."
read name

echo "Enter how many users with that name. (Example user1, user2, user3)"
read num

echo "Enter what group you want to add users to."
read group

var=1

while [ $var -lt $((num+1)) ]
do
	#Combines name and number.
	user=$name$var

	#pveum usermod <Username>@<realm> -group <Groupname>
	pveum usermod $user@pve -group $group

	echo ""
	echo "Added" $user "to" $group
	echo ""

	#Counter
	var=$((var+1))
done
