#!/usr/bin/env bash

main () {
	A=0
	G=0
	C=0
	T=0
	for (( i = 0; i < ${#1}; i++ )); do
		case ${1:i:1} in
			"A" )
				((A=A+1))
				;;
			"C" )
				((C=C+1))
				;;
			"G" )
				((G=G+1))
				;;
			"T" )
				((T=T+1))
				;;
			*	)
				error_exit "Invalid nucleotide in strand"
				;;
		esac	
	done
	echo "A: $A"
	echo "C: $C"
	echo "G: $G"
	echo "T: $T"
}

error_exit(){
	echo "$1"
	exit 1
}

main "$@"