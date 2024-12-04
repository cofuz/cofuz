#!/bin/bash

for ((i=0; i<30; i++));

do
  # afl-fuzz 실행
  timeout 5h ./afl-fuzz -i input -o asanoutput2_$i -m none -C -- ./chrl @@
  
done
