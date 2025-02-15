#!/usr/bin/env bash
set -o nounset

main() {
	if [[ $1 == 'encode' ]]; then
		encode "$2"
	else
		decode "$2"
	fi
}

encode() {
	local trimed=${1//[^a-zA-Z0-9]/}
	local lowercase=$(echo "$trimed" | tr '[:upper:]' '[:lower:]')
	local from_pattern=$(echo {a..z})
	from_pattern=${from_pattern// /}
	local to_pattern=$(echo {z..a})
	to_pattern=${to_pattern// /}
	local encoded=$(echo "$lowercase" | tr $from_pattern $to_pattern)
	local output=''
	for (( i = 0; i < ${#encoded}; i++ )); do
		(( i % 5 == 0 && i > 0)) && output+=' '
		output+=${encoded:i:1}
	done
	echo "$output"
}

decode() {
	local trimed=${1// /}
	local from_pattern=$(echo {a..z})
	from_pattern=${from_pattern// /}
	local to_pattern=$(echo {z..a})
	to_pattern=${to_pattern// /}
	local decoded=$(echo "$trimed" | tr $from_pattern $to_pattern)
	echo "$decoded"
}

main "$@"