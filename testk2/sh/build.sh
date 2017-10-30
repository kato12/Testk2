#!/bin/bash

make
if [ $? -eq 0 ] ; then
	echo "make ok"
	exit 0
else
	echo "make error"
	exit 1
fi
