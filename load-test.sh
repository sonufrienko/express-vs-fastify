#!/bin/bash

URL="http://<ip>/books"
URL2="http://<ip>/books/one"
URL3="http://<ip>/books/none"

sleep 5
wrk -d2m -c10 -t2 $URL
sleep 5
wrk -d2m -c100 -t2 $URL
sleep 5
wrk -d2m -c500 -t2 $URL
sleep 5
wrk -d2m -c1000 -t2 $URL
sleep 5
wrk -d2m -c2000 -t2 $URL
sleep 5
wrk -d2m -c4000 -t2 $URL
sleep 5
wrk -d2m -c10 -t2 $URL2
sleep 5
wrk -d2m -c100 -t2 $URL2
sleep 5
wrk -d2m -c500 -t2 $URL2
sleep 5
wrk -d2m -c1000 -t2 $URL2
sleep 5
wrk -d2m -c2000 -t2 $URL2
sleep 5
wrk -d2m -c4000 -t2 $URL2
sleep 5
wrk -d2m -c10 -t2 $URL3
sleep 5
wrk -d2m -c100 -t2 $URL3
sleep 5
wrk -d2m -c500 -t2 $URL3
sleep 5
wrk -d2m -c1000 -t2 $URL3
sleep 5
wrk -d2m -c2000 -t2 $URL3
sleep 5
wrk -d2m -c4000 -t2 $URL3
sleep 5
wrk -d2m -c10 -t2 -s ./post.lua $URL
sleep 5
wrk -d2m -c100 -t2 -s ./post.lua $URL
sleep 5
wrk -d2m -c500 -t2 -s ./post.lua $URL
sleep 5
wrk -d2m -c1000 -t2 -s ./post.lua $URL
sleep 5
wrk -d2m -c2000 -t2 -s ./post.lua $URL
sleep 5
wrk -d2m -c4000 -t2 -s ./post.lua $URL