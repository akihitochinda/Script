#!/bin/bash

for logfile in /var/log/*log; do
    echo "Processing: $logfile"
    # displays the top 5 most frequently occurring messages along with their counts and the field number 5 and everything that comes after it
    cut -d' ' -f5- $logfile | sort | uniq -c | sort -nr | head -5
done
