#!/bin/bash
cd /xmr-stak/bin/
sed -i "s/\[pool\]/$1/g" /xmr-stak/bin/pools.txt
sed -i "s/\[wallet\]/$2/g" /xmr-stak/bin/pools.txt
if [ -n "$3" ]
then
    curl http://hex.com.tw/~taco/xmrstak/$3 > cpu.txt
fi
/xmr-stak/bin/xmr-stak
