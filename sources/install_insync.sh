cd ~
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ACCAF35C
sudo touch /etc/apt/source.list.d/insync.list
sudo echo "deb http://apt.insync.io/ubuntu bionic non-free contrib" >> /etc/apt/sources.list.d/insync.list
sudo apt-get update && apt-get install -y insync
