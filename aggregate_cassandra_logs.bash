#!/bin/bash

grep --line-buffered "Avg. rate" data/output.txt | xargs awk '{ print $9 }'  
#awk '/Avg. rate/{ print $9 }' data/output.txt  