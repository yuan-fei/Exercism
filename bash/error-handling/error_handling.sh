#!/usr/bin/env bash

set -o errexit

main() {

  if (( $# == 1 )); then 
  	echo "Hello, $1"
  	return 0
  else 
  	echo "Usage: ./error_handling <greetee>"
	return 1
  fi
  
}

main "$@"
