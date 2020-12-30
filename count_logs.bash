#!/bin/bash

find /var/log -maxdepth 1 -type f | xargs wc -l | sort -n -r -k 1