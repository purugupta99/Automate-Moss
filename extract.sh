#!/bin/bash

files=`ls -p | grep -v /`

for i in $files
do
	if [[ -f $i ]]; then
		extension="${i#*.}"
		
		if [ "$extension" = "gz" ]; then 	
		   	a_dir=`expr $i : '\(.*\).gz'`
		    mkdir $a_dir 2>/dev/null
		    tar -xvzf $i -C $a_dir

		elif [ "$extension" = "xz" ]; then 	
		   	a_dir=`expr $i : '\(.*\).xz'`
		    mkdir $a_dir 2>/dev/null
		    tar -xvf $i -C $a_dir

		else
			unar -d $i
		fi
	fi
done