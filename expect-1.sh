#!/usr/bin/expect -f
spawn ./stakcron.sh
send -- "@reboot ~/stak/stak-centos-1.sh"
send -- "\x18"
expect eof
