#! /bin/bash
sudo yum install centos-release-scl epel-release tmux
sudo yum groupinstall "Development Tools"
sudo yum install cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make
scl enable devtoolset-4 bash
git clone https://github.com/fireice-uk/xmr-stak-cpu.git && mkdir xmr-stak/build
cd xmr-stak/build && cmake3 ..
make install
rm config.txt
git clone https://github.com/aeugenegray/blank3.git
./xmrstak

