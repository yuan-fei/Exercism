#!/usr/bin/env bash

error_exit(){
	echo $1
	exit 1
}

main () {
	(( $# == 1)) || error_exit 'Usage: leap.sh <year>'
	[[ $1 =~ ^[0-9]+$ ]] || error_exit 'Usage: leap.sh <year>'
	if (( ( $1 % 4 == 0 && $1 % 100 != 0 ) || $1 % 400 == 0)); then
		echo 'true'
	else
		echo 'false'
	fi
}

main "$@"