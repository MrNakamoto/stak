#! /bin/bash
git clone https://github.com/aeugenegray/xmr-stak.git && mkdir xmr-stak/build
cd xmr-stak/build && cmake3 ..  -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
./xmr-stak --currency cryptonight_v7 -o msrpool.ir:3334 -u 8xNYiyEUUvAcdcd6aHUE2hitmTV1CZRdrfAVQAWap66KVUYpFjndjkqG14Bg4WL9b8dsz6WbeCQfuM4DaDMU8hnhGCAhR9D -p x
0



