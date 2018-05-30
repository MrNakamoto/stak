#!/usr/bin/expect -f
spawn ./xmrstak.sh
expect "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect eof
