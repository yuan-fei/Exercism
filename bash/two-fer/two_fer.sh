#!/usr/bin/env bash

set -o errexit

main() {

  if (( $# == 0 )); then 
  	other="you"
  else 
  	other="$1"
  fi

  echo "One for $other, one for me."
}

main "$@"
