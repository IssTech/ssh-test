#!/usr/bin/env bash
# ***************************************
#  SSH Test Loop Script
#  Created by IssTech
#  Version 1.0
#  Licencing, please read the LICENSE.md
#  Documentation, please read README.md
# ***************************************

SERVERS=('test1' 'test2' 'test3' 'test4')

for i in "${SERVERS[@]}"
  do
    for j in "${SERVERS[@]}"
     do
      ssh $i "ssh -tt $j 'echo [SUCCESS] Access from $i to $j'"
      if [ $? -ne 0 ];
        then
          echo '************************************'
          echo [WARNING] $i can not access $j
          echo '************************************'
        fi
    done
done
