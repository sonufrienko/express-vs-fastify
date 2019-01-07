#!/bin/bash

URL="http://<ip>/books"

sleep 5
wrk -d10m -c10 -t2 $URL
sleep 5
wrk -d10m -c100 -t2 $URL
sleep 5
wrk -d10m -c1000 -t2 $URL
sleep 5
wrk -d10m -c1000 -t2 -s ./post.lua $URL
sleep 5
wrk -d10m -c1000 -t2 -s ./post.lua $URL
sleep 5
wrk -d10m -c1000 -t2 -s ./post.lua $URL
