#!/usr/bin/env bash

main () {
	ans=""
	
	for color in "$@"; do
		case $color in
			"black" )
				code=0
				;;
			"brown" )
				code=1
				;;
			"red" )
				code=2
				;;
			"orange" )
				code=3
				;;
			"yellow" )
				code=4
				;;
			"green" )
				code=5
				;;
			"blue" )
				code=6
				;;
			"violet" )
				code=7
				;;
			"grey" )
				code=8
				;;
			"white" )
				code=9
				;;
			* )
				err-exit "invalid color"
				;;
		esac
		ans="$ans$code"
	done
	echo $ans
}

err-exit() {
	echo $1
	exit 1
}
main "$@"