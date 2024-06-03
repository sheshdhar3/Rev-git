#!/bin/bash

<<Disc
This is script for backup rotation and this will delete oldest backup from backup location.

Disc

max_bkups=3
create_backup() {

tar -cvf /home/projectstws/backup/backup-file_$(date +%Y-%m-%d-%H-%M-%S).tar.gz  /home/projectstws/project1

echo "Backup Completed successfully"

}

delete_old_bkup() {

num_bkup=$(find "/home/projectstws/backup" -maxdepth 1 -type f -name "backup-file_*.tar.gz" | wc -l)

if [ "$num_bkup" -gt "$max_bkups" ]; then

oldest_backup=$(ls -t "/home/projectstws/backup" | grep '^backup-file_.*\.tar\.gz$' | tail -n 1)	

rm -f "/home/projectstws/backup/$oldest_backup"

echo "Deleted oldest backup: $oldest_backup"

 fi

}

#Funcation Call..

create_backup
delete_old_bkup
