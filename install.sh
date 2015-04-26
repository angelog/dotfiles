#!/bin/bash

for fnm in * .*; do
	if [ "$fnm" != ".git" ] && [[ "$fnm" =~ ^.[^\.]+$ ]]; then
		echo "Installing $fnm..."
		cp -r $fnm ~/
	fi
done
