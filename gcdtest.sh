#!/bin/bash

if
	[ -n "$(echo "$1" | grep  '^[1-9][0-9]*$')" ] &&
	[ -n "$(echo "$2" | grep  '^[1-9][0-9]*$')" ]	
then
	result=$(./gcd.sh $1 $2)
	echo "gcd は $1 and $2 is $result !"
	exit 0
else
	echo "2つの自然数を入力してください" 1>&2
	exit 1
fi

