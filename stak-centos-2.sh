#! /bin/bash
git clone https://github.com/MrNakamoto/xmr-stak.git && mkdir xmr-stak/build
cd xmr-stak/build && cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
mv ~/stak/expect-2.sh ~/xmr-stak/build/bin
expect ./expect-2.sh
./xmr-stak --currency cryptonight_v7 -o pool.fonero.org:3333 -u 8xNYiyEUUvAcdcd6aHUE2hitmTV1CZRdrfAVQAWap66KVUYpFjndjkqG14Bg4WL9b8dsz6WbeCQfuM4DaDMU8hnhGCAhR9D -p x

