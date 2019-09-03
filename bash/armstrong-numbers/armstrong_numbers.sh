#!/usr/bin/env bash

main () {
	exp=${#1}
	sum=0
	for (( i = 0; i <$exp; i++ )); do
		(( sum += ${1:i:1}**$exp ))
	done

	if (( $sum == $1)); then
		echo 'true'
	else
		echo 'false'
	fi
}

main "$@"