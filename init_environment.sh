#!/bin/bash

# timezone
tzselect
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# jdk
apt autoremove openjdk*
add-apt-repository ppa:webupd8team/java
apt update
apt install oracle-java8-installer

# maven
apt install maven

# tomcat
mkdir -p /www/server
cd /www/server/
wget https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
tar -xzvf apache-tomcat-8.5.41.tar.gz
ln -s apache-tomcat-8.5.41 apache-tomcat-default
rm -rf apache-tomcat-default/webapps/*

cd ~
