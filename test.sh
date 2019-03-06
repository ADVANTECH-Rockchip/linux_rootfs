#!/bin/bash

MACHINE_LIST="rsb_4680"

idx=0
isFirstMachine="true"

for i in $MACHINE_LIST
do
    let idx=$idx+1
    echo "$idx"
    NEW_MACHINE=$i
done

if [ $idx -gt 1 ];then
    isFirstMachine="false"
fi

echo "$isFirstMachine"

echo "$NEW_MACHINE"
