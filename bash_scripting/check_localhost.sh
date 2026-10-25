#!/bin/bash

if grep "127\.0\.0\.1" /etc/hosts; then
	echo "Everything ok"
else
	echo "ERROR! 127.0.0.1 is not in /etc/hosts"
fi

# Test is a command that evaluates the conditions received and exits with ​zero when they are true and with one when they're false.
if test -n "$PATH"; then echo "Your path is not empty"; fi
if [ -n "$PATH" ]; then echo "Your path is not empty"; fi
