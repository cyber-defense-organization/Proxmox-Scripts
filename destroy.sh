#!/bin/bash

#Script to destroy VM's in bulk

echo "Enter start range number of VM's you would like to destroy."
read startID

echo ""
echo "Enter end range number of VM's you would like to destroy."
read endID

echo ""
echo "Confirm - You would like to delete VM" $startID "- VM" $endID ". (Y or N)"
read ans

#If loop to check you said yes
if [ $ans = "Y" ] || [ $ans = "y" ]
then
	end=$((endID+1))
	#While loop that will destroy every VM
	while [ $startID -lt $end ]
	do
		#qm destroy <VM_ID>
		qm destroy $startID

		echo ""
		echo "Removed VM" $startID "."
		echo ""

		#Counter
		startID=$((startID+1))
	done
else
	echo "You did not say yes."
fi
