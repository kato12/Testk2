#!/bin/bash
./build.sh


if [ $? -eq 0 ] ; then

	CDP=`pwd`
	OFP="${CDP}/Test_Exec.out"
	SC="${CDP}/artifact.sh '${OFP}'"
	cd ../artifact/deliverables/ubuntu/usr/bin
	eval ${SC}
else
	exit 1
fi




if [ $? -eq 0 ] ; then
	echo "artifact push ok"
	
else
	echo "artifact push error"
fi
