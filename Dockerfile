FROM java:openjdk-8-jdk-alpine

find /etc/apt/sources.list -type f | xargs sed -i "s/https/http/g"
find /etc/apt/sources.list.d/* -type f | xargs sed -i "s/https/http/g"
sudo apt-get -y update && sudo apt-get -y install apt-transport-https
sudo sh -c 'echo "deb https://sdkrepo.atlassian.com/debian/ stable contrib" >>/etc/apt/sources.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B07804338C015B73
sudo apt-get -y update && sudo apt-get -y install atlassian-plugin-sdk