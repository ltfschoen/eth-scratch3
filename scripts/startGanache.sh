#/bin/bash

pid=$(lsof -i:8646 -t); kill -TERM $pid || kill -KILL $pid

../node_modules/.bin/ganache-cli -p 8646 \
 --noVMErrorsOnRPCResponse \
 --account="0x1111111111111111111111111111111111111111111111111111111111111111,300000000000000000000000" \
 --account="0x2222222222222222222222222222222222222222222222222222222222222222,300000000000000000000000" \
 --account="0x3333333333333333333333333333333333333333333333333333333333333333,250000000000000000000000" \
 --account="0x4444444444444444444444444444444444444444444444444444444444444444,250000000000000000000000" \
 --account="0x5555555555555555555555555555555555555555555555555555555555555555,100000000000000000000000" \
 --account="0x6666666666666666666666666666666666666666666666666666666666666666,100000000000000000000000" \
 --account="0x7777777777777777777777777777777777777777777777777777777777777777,100000000000000000000000" \
 --account="0x8888888888888888888888888888888888888888888888888888888888888888,100000000000000000000000" \
 --account="0x9999999999999999999999999999999999999999999999999999999999999999,100000000000000000000000"
