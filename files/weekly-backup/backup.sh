#!/bin/bash
# Back up NFS share

TIME=`date +%b-%d-%y`
FILENAME=truenas-$TIME.tar.gz
DESTDIR=/mnt/hdd
SRCDIR=/media/shared

#Backup server files
tar -cpzf $DESTDIR/$FILENAME -C $SRCDIR

#Remove backups older than 14 days
find $DESTDIR/$dir-*.tar.gz -type f -mtime +14 -delete
