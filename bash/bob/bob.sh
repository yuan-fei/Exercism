#!/usr/bin/env bash


main () {

	line=${1//[[:space:]]/}
	[[ -n "$line" ]] || echo_exit "say_nothing"

	line=${1//[^a-zA-Z?]/}
	# on mac
	upper_line=$(echo "$line" | tr '[:lower:]' '[:upper:]')
	
	if [[ $line == $upper_line ]] && [[ $line =~ [a-zA-Z] ]]; then
		if [[ ${line: -1:1} == "?" ]]; then
			echo_exit "yell_question"
		else
			echo_exit "yell"
		fi	
	else
		if [[ ${line: -1:1} == "?" ]]; then
			echo_exit "question"
		else
			echo_exit "other"
		fi
	fi
	

}

echo_exit(){
	case "$1" in
		question )
			echo "Sure."
			;;
		other )
			echo "Whatever."
			;;
		yell_question )
			echo "Calm down, I know what I'm doing!"
			;;
		yell )
			echo "Whoa, chill out!"
			;;
		say_nothing )
			echo "Fine. Be that way!"
			;;
	esac
	exit 0
}

main "$@"