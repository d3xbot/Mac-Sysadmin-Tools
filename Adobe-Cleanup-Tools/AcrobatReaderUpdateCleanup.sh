#!/bin/zsh

if [[ -d /private/var/root/.Trash ]]
then
	if [[ -n "$(ls -A /private/var/root/.Trash)" ]]
	then
    	echo "Taking out the trash"
    	rm -r /private/var/root/.Trash/*
	else
    	echo "Trashes already cleared"
    fi
else
	echo "Trashes not found"
fi

exit 0
