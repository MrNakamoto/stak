#! /bin/bash
sudo yum -y groupinstall "Development Tools"
sudo yum install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
/sbin/chkconfig crond on
/sbin/service crond start
echo '@reboot ~/stak/stak-centos-2.sh' > /var/spool/cron/root/stakcron.txt
crontab /var/spool/cron/root/stakcron.txt
chmod +X /var/spool/cron/root/stakcron.txt
sudo reboot

