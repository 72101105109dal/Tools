#!/bin/bash

file=$1
target=$2

ports=`cat $1 | awk '{print $1}' | awk -F '/' '{print $1}' | tr '\n' ','`

echo "nmap -sVC -T4 -p $ports -r -n -Pn $target -oA result"
