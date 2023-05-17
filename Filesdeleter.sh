#!/bin/bash
if [[ ! -n $1 ]] || [[ ! -n $2 ]]; then
	echo "Arguments not given"
	exit 0
else
	echo "Arguments given"
	echo "Continue"

fi

if [[ -f $2 ]]; then
	echo "$2 is a file"
        if [[ $2 == *.txt ]]; then
            echo "$2 is a file with .txt extension"
	else
		echo "$2 is not a .txt file" 
		exit 0
	fi
else
	echo "$2 Not a file"
	exit 0
fi

name_file=`echo $2 | sed  's/\..*//'`
if [[ $name_file == $1 ]]; then
	echo "$1 is in the filename"
	rm $2
	echo "File is deleted"
	exit 0
else
	echo "This file does not contain $1"
fi

if grep $1 $2; then
	echo "The file contains $1"
	rm $2
	echo "File is deleted"
else
	echo "The file not contains $1" 
fi
