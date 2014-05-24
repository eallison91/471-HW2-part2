#!/bin/bash

export PATH=$PATH:/cse/courses/cse471/14sp/Benchmarks/parsec-2.1/bin:/cse/courses/cse471/14sp/PIN/PIN
export LD_LIBRARY_PATH=/cse/courses/cse471/14sp/lib32

parsecmgmt -a run -i test -d /homes/iws/efa91/cse471/471-HW2-part2/HW2-CacheCoherence-dist/out_2 -n 2 -s 'pin -t /cse/courses/cse471/14sp/Assignments/HW2-CacheCoherence/Release/MultiCacheSim_PinDriver.so -protos /homes/iws/efa91/cse471/471-HW2-part2/HW2-CacheCoherence-dist/MSI_SMPCache.so,/homes/iws/efa91/cse471/471-HW2-part2/HW2-CacheCoherence-dist/MESI_SMPCache.so -numcaches 2 -- '


#parsecmgmt -a run -i test -d /homes/iws/wysem/14sp/cse471/471-HW2-part2/HW2-CacheCoherence-dist/output -n 8 -s 'pin -t /cse/courses/cse471/14sp/Assignments/HW2-CacheCoherence/Release/MultiCacheSim_PinDriver.so -protos /homes/iws/wysem/14sp/cse471/471-HW2-part2/HW2-CacheCoherence-dist/MESI_SMPCache.so -stopOnProtoBug -printOnProtoBug -numcaches 8 -- '
