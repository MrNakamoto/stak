#!/usr/bin/expect -f
spawn ./stakcron.sh
send -- "@reboot ~/stak/stak-centos-1.sh"
set timeout 20;
send -- "\x18"
set timeout 20;
send -- "y\r"
set timeout 10;
send -- "y\r"
expect eof

