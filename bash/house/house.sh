#!/usr/bin/env bash
set -eu

declare -a intro_lines=(
	"This is the horse and the hound and the horn"
	"This is the farmer sowing his corn"
	"This is the rooster that crowed in the morn"
	"This is the priest all shaven and shorn"
	"This is the man all tattered and torn"
	"This is the maiden all forlorn"
	"This is the cow with the crumpled horn"
	"This is the dog"
	"This is the cat"
	"This is the rat"
	"This is the malt"
	"This is the house that Jack built"
)

declare -a lines=(
	"that is the horse and the hound and the horn"
	"that belonged to the farmer sowing his corn"
	"that kept the rooster that crowed in the morn"
	"that woke the priest all shaven and shorn"
	"that married the man all tattered and torn"
	"that kissed the maiden all forlorn"
	"that milked the cow with the crumpled horn"
	"that tossed the dog"
	"that worried the cat"
	"that killed the rat"
	"that ate the malt"
	"that lay in the house that Jack built"
)

if (( $1 < 1 )) || (( $1 > $2 )) || (( $2 > 12 )); then
	printf "invalid range\\n"
	exit 1
fi

for (( i=$1; i <= $2; i++ )); do
	start=$(( ${#lines[@]} - i ))
	for (( v=start; v< ${#lines[@]}; v++)); do
		if (( v == start )); then
			printf "%s" "${intro_lines[$v]}"
		else
			printf "\\n%s" "${lines[$v]}"
		fi
	done
	printf ".\\n"
	if (( i < $2 )); then
		printf "\\n"
	fi
done