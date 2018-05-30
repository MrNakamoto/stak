#!/usr/bin/expect -f
spawn ./xmr-stak --currency cryptonight_v7 -o msrpool.ir:3334 -u 8xNYiyEUUvAcdcd6aHUE2hitmTV1CZRdrfAVQAWap66KVUYpFjndjkqG14Bg4WL9b8dsz6WbeCQfuM4DaDMU8hnhGCAhR9D -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect eof
