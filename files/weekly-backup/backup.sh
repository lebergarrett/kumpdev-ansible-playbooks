#!/bin/bash
# Back up NFS share

TIME=`date +%b-%d-%y`
FILENAME=truenas-$TIME.tar.gz
DESTDIR=/mnt/hdd
SRCDIR=/media/shared

cd $SRCDIR

echo "Starting backup $FILENAME"
tar -cpzf $DESTDIR/$FILENAME .
echo "Backup complete"

echo "Removing backups older than 14 days"
find $DESTDIR/*.tar.gz -type f -mtime +14 -delete
echo "Cleaning complete"

echo "Shutting down"
/usr/sbin/shutdown -h now
