#!/usr/bin/bash
# diskwarn.sh -warns if root disk usage is above limit
limit=${1:-80}
usage=$(df / --output=pcent | tail -1 |tr -dc  '0-9')
if [ "$usage" -gt "$limit" ]; then
	echo "WARNING:disk usage at $usage%"
	exit 1
else
        echo "OK: disk at $usage%"
	exit 0

fi	

