#!/bin/bash
set -o nounset
set -o errexit
set -o pipefail

root_dir=$(dirname "$0")

source /home/petrus/Backup/backup_config.sh

cd $root_dir

git add .
git commit -m "daily update by crontab script" > /dev/null
git push > /dev/null
