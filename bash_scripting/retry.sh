#!/bin/bash

n=0
command=$1 # sys.argv[1]

# We execute the while loop until either the command succeeds or the end ​variable reaches a value of five
# if the received command fails, we'll retry up to five times
while ! $command && [ $n -le 5 ]; do
        sleep $n
        ((n+=1))
        echo "Retry #$n"
done;

# ./retry.sh ./random-exit.py
