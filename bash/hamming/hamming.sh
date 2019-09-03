#!/usr/bin/env bash


main () {
	(($# == 2)) || err_exit 'Usage: hamming.sh <string1> <string2>'
	if [[ -z $1 && -z $2 ]]; then
		echo 0
	elif [[ -z $1 ]]; then
		err_exit 'left strand must not be empty'
	elif [[ -z $2 ]]; then 
		err_exit 'right strand must not be empty' 
	elif (( ${#1} != ${#2} )); then
		err_exit 'left and right strands must be of equal length'
	else
		len=0
		for (( x=0; x<${#1}; x++ )); do
			[[ ${1:x:1} != ${2:x:1} ]] && (( len++ ))
		done
		echo "$len"
	fi
}

err_exit(){
	echo "$1"
	exit 1 
}

main "$@"