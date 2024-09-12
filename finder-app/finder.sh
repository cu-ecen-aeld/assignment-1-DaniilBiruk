#!/bin/sh

if [ -z $2 ]
then
	echo "Two arguments need to be provided"
	exit 1
fi

filesdir=$1
searchstr=$2

if ! [ -d ${filesdir} ]
then
	echo "First argument is not a directory"
	exit 1
fi

allfiles=${filesdir}/*
numfiles=$(ls -1q ${allfiles} | wc -l)
matching_lines=$(grep -F -r ${searchstr} ${allfiles} | wc -l)

echo "The number of files are ${numfiles} and the number of matching lines are ${matching_lines}"


