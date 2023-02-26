#!/bin/bash

if [ $# -eq 0 ]
then
	ALL_USERS="nt4 slim cam spore denny skylar rye phene zate scruff saragon"
else
	ALL_USERS="$@"
fi

for i in $ALL_USERS
do
	echo "Publishing $i..."
	curl -X POST -H "Content-Type: application/json" -d @$i.json $WEBHOOK_URL
	echo""
	sleep 4
done
