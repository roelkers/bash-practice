#!/bin/bash

if [ ! "$#" -eq 2 ]; then
  echo "Usage: format_tokens [INPUT] [OUTPUT]"
  exit 1
fi

cat $1 | grep '"link"' | sed 's/.*"link" : \(.*\)/\1/' > $2