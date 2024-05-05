#!/bin/bash
echo "Hey there ! lets generate a safe password for you"
sleep 2
echo "What should be the length of the password you wish to generate"
read len

PASS=`date | sha256sum | cut -b 1-$len`
#basically sha256 will generate hash for the date, so we will be using it to structure the pass
echo "Your password is $PASS"