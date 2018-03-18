#!/bin/bash
set -o nounset
set -o errexit
set -o pipefail

#var
backup_dir="/home/petrus/Backup/config_files"
config_list="/home/petrus/Backup/config_list.conf"

cat $config_list | grep -Ev "^$|#" | while read line
do
    # 获取文件名
    name=$(echo $line | awk -F '/' '{print $NF}')
    cp -aL $line $backup_dir
done

touch $backup_dir/backup_stamp
