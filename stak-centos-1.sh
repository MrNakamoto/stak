#! /bin/bash
sudo yum -y groupinstall "Development Tools"
sudo yum install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
crontab ~/stak/stakcron
shutdown -r

