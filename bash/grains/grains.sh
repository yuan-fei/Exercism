#!/usr/bin/env bash

main () {
	
	[[ "$1" == "total" ]] && echo-exit $(bc <<< "2 ^ 64 - 1") 0
	[[ "$1" =~ [^0-9] ]] && echo-exit "Error: invalid input" 1
	(( $1 > 0 && $1 < 65 )) || echo-exit "Error: invalid input" 1
	echo-exit $(bc <<< "2 ^ ($1 - 1)") 0
}

echo-exit(){
	echo $1
	exit $2
}
main "$@"