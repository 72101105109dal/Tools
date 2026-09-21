#!/bin/bash

protocol=$1
target=$2
filename=$3

while read line
do

        if [ ${protocol} == "http" ];then
                echo "wget http://${target}/${line}"
                wget http://${target}/${line}
                sleep 2
                echo -e "\n"
        else
                echo "wget https://${target}/${line}"
                wget https://${target}/${line}
                sleep 2
                echo -e "\n"
        fi


done < ${filename}
