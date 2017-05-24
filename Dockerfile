FROM ubuntu:latest

apt-get -y update
apt-get -y install default-jre default-jdk
apt-get -y install apt-transport-https
sh -c 'echo "deb https://sdkrepo.atlassian.com/debian/ stable contrib" >>/etc/apt/sources.list'
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B07804338C015B73
apt-get -y update
apt-get -y install atlassian-plugin-sdk