#!/bin/bash

for fnm in * .*; do
	if [ "$fnm" != ".git" ] && [[ "$fnm" =~ ^.[^\.]+$ ]] || [[ "$fnm" == ".tmux.conf" ]]; then
		echo "Installing $fnm..."
		cp -r $fnm ~/
	fi
done
