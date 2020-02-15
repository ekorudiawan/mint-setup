sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ACCAF35C
echo "deb http://apt.insync.io/mint tricia non-free contrib" >> /etc/apt/sources.list.d/insync.list
sudo apt-get update && apt-get install insync