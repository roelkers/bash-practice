#!/bin/bash

while getopts 'dn:' opt; do
  case $opt in
    d ) action="directory" ;;
    n ) n="$OPTARG" ;;
  esac
done
shift $((OPTIND -1))

if [ "$#" -eq 0 ]; then 
  echo "Usage: createfiles [FILES]"
  exit 1
fi 

for file in "$@"; do
  for (( i=0; i<$n; i++ )); do
    if [ $action="directory" ]; then
      mkdir "${file}__${i}"    
    else
      touch "${file}__${i}" 
    fi
  done
done