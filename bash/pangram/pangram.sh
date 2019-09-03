#!/usr/bin/env bash

main () {
	# in bash 4
	# declare -l gram="$1"
	gram=$(echo "$1" | tr '[:upper:]' '[:lower:]')
	for c in {a..z}; do
		[[ $gram =~ $c ]] || echo-exit false
	done
	echo-exit true
}

echo-exit(){
	echo "$1"
	exit 0
}

main "$@"