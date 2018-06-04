#! /bin/bash
sudo yum -y groupinstall "Development Tools"
sudo yum install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
~/.bashrc
git clone https://github.com/MrNakamoto/xmr-stak.git && mkdir xmr-stak/build
cd xmr-stak/build && cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
mv ~/stak/expect-2.sh ~/xmr-stak/build/bin
echo 'trap "" 15' >> xmr-stak
expect ./expect-2.sh
trap "" 15
./xmr-stak --currency cryptonight_lite_v7 -o pool1.crypto-me.com:13333 -u AYrUmTkCNaTcKu3YyTqnwARJ5rpFwn1rodFsKji2hgcn11iGWXgRQ12fFLWE3DCL3Mg2QCfNY5pLcDLm6LVYTLwdF79gVUd -p x

