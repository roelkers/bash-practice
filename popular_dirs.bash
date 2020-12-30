#!/bin/bash

archivedir="remembereddirs"


cat $archivedir | sort | uniq -c | sort -r -k 1 | head -5 | awk '{print NR "> " $1 " occurences " $2}'

echo "\n"
echo "Enter directory index (number in front of the > character) which you would like to enter. press 0 to exit"
echo "\n"

read i

if [ $i -eq 0 ]; then
  echo "exiting"
  return
fi

directory=$(cat $archivedir | sort | uniq -c | sort -r -k 1 | sed -n "${i}p" | awk '{print $2}' )

echo "Entering $directory"
cd $directory
