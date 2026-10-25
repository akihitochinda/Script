#!/bin/bash

for file in *.HTM; do
        name=$(basename "$file" .HTM) # surrounding ​our file variable with double-quotes to allow the command to work even if the ​file has spaces in its name
        # echo mv "$file" "$name.html" # echo prints the renaming that it plans to do
        mv "$file" "$name.html"
done
