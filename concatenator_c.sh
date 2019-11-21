#!/bin/bash

files=`ls -d */ | cut -f1 -d'/'`

# echo $files

for i in $files
do
	if [[ -d $i ]]; then
		find $i -name '*.c' -exec cat {} + > ../codes/$i.c
	fi
done