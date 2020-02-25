#script to snapshot multiple machines

echo "Enter in the beginning vmid that you want to snapshot"

read beginid

echo "Enter in the last vmid that you want to snapshot"

read endid

echo "Enter in the name of the snapshot, cannot be more than one word, or can be written like: For_Example"

read snapname

echo "enter in a description of the snapshot (mandatory)"

read description

while [ $beginid -le $endid ]

do
        echo $beginid
        # qm snapshot vmid name of snapshot --description of snapshot --vmstate preserve
        qm snapshot $beginid "$snapname" --description "$description" --vmstate true
        beginid=$(($beginid + 1))
done
