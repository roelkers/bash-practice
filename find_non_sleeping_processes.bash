#!/bin/bash

find /proc -maxdepth 1 -name '*1*' \
| xargs printf -- '%s/status ' \
| xargs grep -L 'sleeping' 