ps | awk 'BEGIN {print "Process ID of zsh"} /zsh/ {print $1}'

free | awk 'BEGIN {print "Total Memory"} {sum += $2} END {print sum}'

vmstat | awk 'BEGIN {print "Free memory"} { if(NR==3) print $4}'

systemctl list-units | awk '/loaded/ {print $1}' 

systemctl list-units | sed 's/loaded/running/g'