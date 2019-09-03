#!/usr/bin/env bash

# Disable filename expansion (globbing)


unquoted_variable () {
	set -f
	s=${1//_/}
	s=${s//-/ }
	acrnm=""
	
	for i in $s; do
	    acrnm+=${i:0:1}
	done
	# on mac
	# echo "$acrnm" | tr '[:lower:]' '[:upper:]'
	# or
	# echo "$acrnm" | awk '{print toupper($0)}'
	
	echo ${acrnm^^}
}

main () {
	s=${1//_/}
	s=${s//-/ }
	acrnm=""
	read -ra arr <<< "$s"
	for i in "${arr[@]}"; do
	    acrnm+=${i:0:1}
	done
	# on mac
	#echo "$acrnm" | awk '{print toupper($0)}'
	#echo "$acrnm" | tr '[:lower:]' '[:upper:]'
	
	echo ${acrnm^^}
}


main "$@"