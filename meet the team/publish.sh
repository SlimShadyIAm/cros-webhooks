#!/bin/bash

ALL_USERS="nt4 slim cam spore denny skylar kent ryan phene zate scruff will"
for i in $ALL_USERS
do
	echo "Publishing $i..."
	curl -X POST -H "Content-Type: application/json" -d @$i.json $WEBHOOK_URL
	echo""
	sleep 4
done
