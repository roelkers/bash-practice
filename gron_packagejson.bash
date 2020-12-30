#!/bin/bash

find ~/Dev -maxdepth 2 -name 'package.json' | xargs gron | grep license | awk '{ print $3 }'