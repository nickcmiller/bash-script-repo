#!/bin/bash

for name in $@; do 
	if id $name > /dev/null 2>&1; then
        	echo "User $name already exists"
	else
        	echo "Creating new user $name ..."
		useradd -m -p '' $name
		passwd --expire $name
	fi	
done
