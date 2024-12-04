#!/bin/bash

for ((i=0; i<30; i++));

do
  timeout 5h ./afl-fuzz -i input -o asanoutput5_$i -m none -C -- ./worjatk @@
  
done
