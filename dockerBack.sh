#!/bin/bash

echo "Wordpress libert.xyz Snapshot"

dateOut=`date | cut -d " " -f2,3,6`
echoes=`echo -n "${dateOut//[[:space:]]/}"`

docker commit c2d1e297a824 rschmidtz/wordpres-nginx-frank:$echoes

echo "Done!"
echo "+++++++++++++++++++++++++++"

docker images

echo "++++++++++++++++++++++++++"
