#!/bin/bash
docker images | sort -r -k7 | awk '{print $1}' | head -1