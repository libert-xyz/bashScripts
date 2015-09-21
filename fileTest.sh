#!/bin/bash

#info about a file 

FILENAME="$1"

echo "Properties for $FILENAME:"

if [ -f $FILENAME ]; then
echo "size is $(ls -lh $FILENAME | awk '{ print $5 }')"
echo "Type is $(file $FILENAME | cut -d":" -f2 -)"
echo "Inode number is $(ls -i $FILENAME | cut -d" " -f1 -)"
echo "$(df -h $FILENAME | grep -v Mounted | awk '{ print "On",$1",which is mounted as the",$6,"partition."}')"
else
echo "file does not exist"
fi

 
