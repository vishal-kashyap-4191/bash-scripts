#!/usr/bin/bash
#this if check for invalid parameter 
if [ -z "$1" ];then
	echo "Usage: ./backup.sh  foldername"
	exit 1
elif [ ! -d "$1" ]; then # this echeck if folder does not exist
	echo "folder does not exits"
	exit 1
else 
	#this copy and save file with time stamp in backups folder
	name=$(basename "$1")
	dest=~/tutorial-bash/backups/"$name"-$(date +%F)
	mkdir -p ~/tutorial-bash/backups
	cp -r "$1" "$dest"
	count=$(find "$dest" -type f | wc -l)
	echo "Backup done. Files copied: $count"
	exit 0
fi	
