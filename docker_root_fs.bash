ls "/proc/$(docker inspect --format '{{ .State.Pid }}' $1)/root" 

