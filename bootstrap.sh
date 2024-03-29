#!/bin/bash

apt-get update
apt-get  install openjdk-8-jdk -y
apt install wget -y

mkdir streama
cd /streama

wget https://github.com/streamaserver/streama/releases/download/v1.6.1/streama-1.6.1.war
chmod +x streama-1.6.1.war

java -jar streama-1.6.1.war
