#!/usr/bin/env bash

main() {
	compact_line=${1// /}
	[[ $compact_line =~ [^0-9] ]] && echo-exit false
	
	n=${#compact_line}
	(( $n == 1 )) && echo-exit false

	sum=0
	for (( i = 0; i < n; i++ )); do
		v=${compact_line:n-i-1:1}
		(( i % 2 == 1 )) && (( v *= 2 )) && (( v > 9 )) && (( v -= 9 ))
		(( sum += v ))
	done
	if (( $sum % 10 == 0 )) ; then
		echo-exit true
	else
		echo-exit false
	fi
}

echo-exit() {
	echo "$1"
	exit 0
}
main "$@"