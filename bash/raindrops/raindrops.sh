#!/usr/bin/env bash

set -o errexit

main () {
	ans=""

	if (( $1%3 == 0 )); then
		ans="${ans}Pling"
	fi
	if (( $1%5 == 0 )); then
		ans="${ans}Plang"
	fi
	if (( $1%7 == 0 )); then
		ans="${ans}Plong"
	fi
	if [[ -z "${ans}" ]]; then
		ans=$1
	fi
	echo $ans
}

# call main with all of the positional arguments
main "$@"