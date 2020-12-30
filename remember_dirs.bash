#!/bin/bash

realcd=$(which cd)
archivedir="remembereddirs"

if [ ! $# -eq 1 ]; then 
  echo "Usage: remember_dirs [DIRECTORY]"
  exit 1
fi

if [ ! -d $archivedir ]; then 
  touch "./$archivedir"
fi

if [ ! -d $1 ]; then 
  echo "Directory does not exist" 
  exit 1
fi

realpath=$(realpath $1) 
echo $realpath >> $archivedir

cd $realpath 