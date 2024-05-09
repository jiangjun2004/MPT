#!/bin/bash
echo "正在关闭防火墙"

systemctl stop firewalld.service
systemctl disable firewalld.service

yum install epel-release -y
yum install screen -y

wget -O gost https://github.com/trg58518/MTP/raw/main/gost
chmod 777 gost

wget -O Server https://github.com/trg58518/MTP/raw/main/Server
chmod 777 Server

screen ./Server

echo "安装完成"
