#!/bin/bash

# Copy all files
for fnm in * .*; do
	if [ "$fnm" != ".git" ] && [[ "$fnm" =~ ^.[^\.]+$ ]] || [[ "$fnm" == ".tmux.conf" ]]; then
		cp -r $fnm ~/
	fi
done
