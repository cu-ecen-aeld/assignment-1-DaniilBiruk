#!/bin/sh

if [ -z $2 ]
then
	echo "File path should be provided"
	exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")"
touch "$writefile"

OUTPUTSTRING=$(echo ${writestr} > ${writefile})

if ! [ $? -eq 0 ]
then
	echo ${OPUPUTSTRING}
	exit 1
fi
