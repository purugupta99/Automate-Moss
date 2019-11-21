#!/bin/bash

files=`ls -d */ | cut -f1 -d'/'`

# echo $files

for i in $files
do
	if [[ -d $i ]]; then
		# cat $i/*.c >> ../codes/$i.c
		files=`find $i -name '*.c' -o -name '*.h'`

		echo $files
		for file in $files
		do
			if [[ -f $file ]]; then
					echo $i/$file 
					extension="${file#*.}"
			
					if [ "$extension" = "h" ]
					then 
						cat $file >> ../codes/$i.c
					elif [ "$extension" = "c" ] 
					then
						cat $file >> ../codes/$i.c
					fi
			fi
		done
	fi
done