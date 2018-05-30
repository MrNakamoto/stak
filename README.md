# Centos xmr-stak (cpu v) Scripts
setup script for xmr-stak Centos with donations @ 0%

(gets around bash issue caused when enabling devtools4)

# Setup
Download both scripts, make executable. Run script 1 to install dependencies, enable devtools4, script 2 to cron & reboot

Once system boots script 2 will run from cron.

# Code
sudo yum -y update

sudo yum install -y centos-release-scl epel-release tmux git

git clone https://github.com/billbelichick/xmr-stak.git

cd xmr-stak

chmod u+x stak-centos-1.sh

chmod u+x stak-centos-2.sh

./stak-centos-1.sh

# Or

sudo yum -y update && sudo yum install -y centos-release-scl epel-release tmux git && https://github.com/billbelichick/stak.git && cd xmr-stak && chmod u+x stak-centos-1.sh && chmod u+x stak-centos-2.sh && ./stak-centos-1.sh

# Enjoy!
Make sure to change your Algo, Pool & User accordingly.
