#!/bin/bash

export PATH=$PATH:/cse/courses/cse471/14sp/Benchmarks/parsec-2.1/bin:/cse/courses/cse471/14sp/PIN/PIN
export LD_LIBRARY_PATH=/cse/courses/cse471/14sp/lib32
if [[ $# -ne 3 ]]; then
  echo "Usage: ./run_pin.sh <protocols> <num_caches> <command>"
else
  pin -t /cse/courses/cse471/14sp/Assignments/HW2-CacheCoherence/Release/MultiCacheSim_PinDriver.so -protos ./$1 -numcaches $2 -- $3
fi
