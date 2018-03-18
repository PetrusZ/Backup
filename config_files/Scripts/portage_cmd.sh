#!/bin/bash
euse -E use-flags #设置允许use flag（修改/etc/make.conf中的USE）
euse -D use-flags #设置禁止use flag（修改/etc/make.conf中的USE）
euse -i use-flag #查询use flag描述

eix RegExp #搜索软件包
eix -I #列出系统中已安装的软件包

equery files PackageName #列出已安装包的文件
equery belongs FileName #查询已安装的指定文件属于哪个包

ebuild xxx.ebuild digest #生成摘要文件
ebuild /var/db/pkg/xxx/xxx.ebuild config #初始化配置

genlog -t package #查看package的编译时间
