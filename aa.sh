#!/bin/bash
cd /xmr-stak/bin/
sed -i "s/\[pool\]/$1/g" /xmr-stak/bin/pools.txt
sed -i "s/\[wallet\]/$2/g" /xmr-stak/bin/pools.txt
/xmr-stak/bin/xmr-stak
