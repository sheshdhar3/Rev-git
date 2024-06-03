#!/bin/bash


<< backup
This is script of backup the file
backup

src_dir="/home/shesh"
tgt_dir="/home/projectstws/backup"

backup_filename="backup_$(date +%Y-%m-%d-%H-%M-%S).tar.gz"

echo "backup started"

tar -czvf "${tgt_dir}/${backup_filename}"  "${src_dir}"

echo "Backup Done sucessfully"

