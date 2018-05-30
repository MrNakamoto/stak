#! /bin/bash
sudo yum -y groupinstall "Development Tools"
sudo yum install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
echo "@reboot ~/stak-centos-2.sh" >> /var/spool/cron/root
shutdown -r

