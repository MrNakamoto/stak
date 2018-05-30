#! /bin/bash
git clone https://github.com/MrNakamoto/xmr-stak.git && mkdir xmr-stak/build
cd xmr-stak/build && cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
mv ~/stak/expect.sh ~/xmr-stak/build/bin
expect ./expect.sh
