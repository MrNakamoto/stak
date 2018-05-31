#!/usr/bin/expect -f
spawn export VISUAL=nano; crontab -e
expect -re ""
send -- "@reboot ~/stak/stak-centos-1.sh"
send -- "\x18"
expect eof
