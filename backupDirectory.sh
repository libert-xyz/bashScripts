#!/bin/bash

#No incremental Backup, just for test

BACKUPDIR=/root
BACKUPFILES=/root
TARFILE=/opt/rootBack.tar
BZIPFILE=/opt/rootBack.tar.bz2
SERVER=wayna
REMOTEDIR=/opt/
LOGFILE=/root/log/rootBackup.log

cd $BACKUPDIR

#This creates the archive
tar cf $TARFILE $BACKUPFILES > /dev/null 2>&1

rm $BZIPFILE 2> /dev/null
bzip2 $TARFILE

#Copy to remote server
#scp $BZIPFILE $SERVER:$REMOTEDIR > /dev/null 2>&1

#Create a timestamp in a logfile
date >> $LOGFILE
echo "Backup succeeded" >> $LOGFILE
