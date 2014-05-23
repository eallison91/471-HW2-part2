#!/bin/bash

export PATH=$PATH:/cse/courses/cse471/14sp/Benchmarks/parsec-2.1/bin:/cse/courses/cse471/14sp/PIN/PIN
export LD_LIBRARY_PATH=/cse/courses/cse471/14sp/lib32

if [[ $# -ne 3 ]]; then
    echo 'usage: ./run_parsec.sh <protocols> <num_caches> <work_directory>'
else
    parsecmgmt -a run -i simsmall -d $3 -n 2 -s 'pin -t /cse/courses/cse471/14sp/Assignments/HW2-CacheCoherence/Release/MultiCacheSim_PinDriver.so -protos ./$1 -numcaches $2 -- '
fi

#parsecmgmt -a run -i test -d /homes/iws/wysem/14sp/cse471/471-HW2-part2/HW2-CacheCoherence-dist/output -n 8 -s 'pin -t /cse/courses/cse471/14sp/Assignments/HW2-CacheCoherence/Release/MultiCacheSim_PinDriver.so -protos /homes/iws/wysem/14sp/cse471/471-HW2-part2/HW2-CacheCoherence-dist/MESI_SMPCache.so -stopOnProtoBug -printOnProtoBug -numcaches 8 -- '
