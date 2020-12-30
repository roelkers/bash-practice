#!/bin/bash

kubectl get secrets | awk '{ $1 = sprintf("60s", $1); if($3 > 3) { print($1,$3); } else { print($1,"not enough")} }'