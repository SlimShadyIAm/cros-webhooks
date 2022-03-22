#!/bin/bash

ALL_USERS="saragon"
for i in $ALL_USERS
do
	echo "Publishing $i..."
	curl -X POST -H "Content-Type: application/json" -d @$i.json $WEBHOOK_URL
	echo""
	sleep 4
done
