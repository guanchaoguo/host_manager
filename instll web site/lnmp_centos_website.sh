#!/bin/bash


PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#备注1：当前的脚本近使用与rpm安装的LAMP环境，如果是编译安装的LAMP则需要对脚本进行修改
#备注2：可以将脚本下载的软件包存放到临时目录中，执行完成后将其删除

# 验证当前的用户是否为root账号，不是的话退出当前脚本
[ `id  -u`  == 0 ]  ||  echo "Error: You must be root to run this script, please use root to install lnmp"  ||  exit  1

pwd=`pwd`

#为脚本添加可执行权限
chmod +x lnmp_scripts_for_website/*.sh

yum  install  -y  wget   unzip

#根据config.list执行apache-vhost.sh创建vhost
./lnmp_scripts_for_website/nginx-vhost.sh

#为DedeCMS V5.7 (SP1)安装补丁包

#备份原有的网站目录


#上传补丁包覆盖原有的文件