#!/bin/bash
set -o nounset
set -o errexit
set -o pipefail

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")


#var
backup_dir="/home/petrus/Backup/config_files"
config_list="/home/petrus/Backup/config_list.conf"
config_perms="/home/petrus/Backup/config_perms.conf"

echo -n "" > $config_perms

function read_dir(){
    for file in `ls $1`       #注意此处这是两个反引号，表示运行系统命令
    do
        if [ -d $1"/"$file ]  #注意此处之间一定要加上空格，否则会报错
        then
            read_dir $1"/"$file
        else
            perm=`stat -c "%a %u %g" $1"/"$file`
            echo "$perm $1"/"$file" >> $config_perms   #在此处处理文件即可
        fi
    done
}

cat $config_list | grep -Ev "^$|#" | while read line
do
    # 获取目录和文件名
    name=$(echo $line | awk -F '/' '{print $NF}')
    dir=$(echo $line | sed "s/\/${name}$//g" | awk '{print substr($1,2)}')

    if [ -d $line ]; then
        read_dir $line
    else
        perm=`stat -c "%a %u %g" $line`
        echo "$perm $line" >> $config_perms
    fi

done


IFS=$SAVEIFS
