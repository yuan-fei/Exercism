#!/usr/bin/env bash

main () {
	# echo "$@"
	read -ra arr <<< "${@:2}"
	start=0
	end=$(( ${#arr[@]} - 1 ))

	while (( start <= end )); do
		mid=$(( ($start + $end) / 2 ))
		# echo $mid
		if (( ${arr[$mid]} == $1 )); then
			echo $mid
			exit 0
		elif (( ${arr[mid]} < $1 )); then
			start=$(( $mid + 1 ))
		else
			end=$(( $mid - 1 ))
		fi
	done
	echo -1
}


main "$@"