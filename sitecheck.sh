#!/usr/bin/bash
# for counting how many sites up 
up_count=0
#for count down website
down_count=0
site_check(){
	if ping -c 1 "$1" > /dev/null 2>&1; then # check  if site is down or not by sending icmp packets
		echo "$1 is UP"
		return 0
	else
	    echo "$1 is DOWN"
		return 1

	fi
}

while read site # reads values from sites .txt when by one and exclude blank lines
do
     [[ -z "$site" ]] &&  continue
	if site_check "$site" ; then  
	     up_count=$((up_count+1))
     else
     down_count=$((down_count+1))
     fi
done < sites.txt
echo "$up_count site up and $down_count sites down"
if [[ $down_count -gt 0 ]]; then
	exit 1 

else
      exit 0
fi      
