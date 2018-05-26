#!/bin/bash
set -o nounset
set -o errexit
set -o pipefail

#var
backup_dir="/home/petrus/Backup/config_files"
config_list="/home/petrus/Backup/config_list.conf"

if [ ! -d $backup_dir ]; then
  mkdir $backup_dir
fi

scp rpi3:~/.aria2/aria2.conf ~/.aria2 > /dev/null

cat $config_list | grep -Ev "^$|#" | while read line
do
    # 获取目录和文件名
    name=$(echo $line | awk -F '/' '{print $NF}')
    dir=$(echo $line | sed "s/\/${name}$//g" | awk '{print substr($1,2)}')
    if [ ! -d $backup_dir/$dir ]; then
        mkdir -p $backup_dir/$dir
    fi
    cp -aL $line $backup_dir/$dir
    # echo "cp -aL $line $backup_dir/$dir"
done

touch $backup_dir/backup_stamp
date > $backup_dir/backup_stamp
