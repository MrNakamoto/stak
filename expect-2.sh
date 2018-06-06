#!/usr/bin/expect -f
spawn ./xmr-stak pars.hashpool.frl:11333 -u hyt1PWTD7tzDmb9BU6SU4cYD8LZuQqjX4Djzx7nr6MUaMqmy9vofbULSPKy9mFcwGg9jeR4g5T7uLctaf9MomNrf1bxSjff8h -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "0\r"
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect eof

