#!/bin/bash

segment=$1

trap 'echo "Terminate script"; exit 1' INT

checker(){

	if [ ${segment} == "/16" ]; then

		for f in {0..255};do
			
			for s in {1..254};do

				ping -c 1 -W 2 172.16.${f}.${s}

			done
		
		done

	elif [ ${segment} == "/24" ]; then
			
			for s in {1..254};do

				ping -c 1 -W 2 172.16.1.${s}

			done
	fi
}

if [ -z $1 ]; then

	echo "must specify arg"
	exit 1

else
	checker $1

fi

#ex) ping_checker.sh /16 | /24
