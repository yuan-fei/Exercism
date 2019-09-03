#!/usr/bin/env bash


main () {
	reverse_str=''
	for (( x=0; x<${#1}; x++ )); do
		reverse_str="${1:x:1}$reverse_str"
	done
	echo $reverse_str
}

main "$@"