# Centos xmr-stak (cpu v) Scripts
setup script for xmr-stak Centos with donations @ 0%

(gets around bash issue caused when enabling devtools4)

# Code
sudo yum -y update

sudo yum install -y centos-release-scl epel-release tmux git expect

git clone https://github.com/aeugenegray/stak.git

cd stak

chmod +x stak-centos-1.sh

chmod +x expect-2.sh

./stak-centos-1.sh

# Or

/bin/bash && sudo yum -y update && sudo yum install -y centos-release-scl epel-release tmux git expect && git clone https://github.com/aeugenegray/stak.git && cd stak && chmod +x stak-centos-1.sh && chmod +x expect-2.sh && ./stak-centos-1.sh

# Enjoy!
Make sure to change your Algo, Pool & User accordingly.


#Pitch in on a sack
BTC:
LTC:
ETH:
XMR
POT:
