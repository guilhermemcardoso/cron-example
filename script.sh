#!/bin/bash

RESULT=$(docker ps  --filter name=nginx --filter status=running -q)

if [ "$RESULT" = "" ] ; then
	echo "Container parado." 2>&1 1>>logs/docker.log
	echo "Reiniciando Container: $(date)" 2>&1 1>>logs/docker.log
	docker start nginx
fi
