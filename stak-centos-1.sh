#! /bin/bash
sudo yum -y groupinstall "Development Tools"
sudo yum install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/MrNakamoto/xmr-stak.git && mkdir xmr-stak/build
cd xmr-stak/build && cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
mv ~/stak/expect-2.sh ~/stak/xmr-stak/build/bin
expect ./expect-2.sh
tmux
trap "" 15
./xmr-stak pars.hashpool.frl:11333 -u hyt1PWTD7tzDmb9BU6SU4cYD8LZuQqjX4Djzx7nr6MUaMqmy9vofbULSPKy9mFcwGg9jeR4g5T7uLctaf9MomNrf1bxSjff8h -p x


