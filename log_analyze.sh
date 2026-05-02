#!/usr/bin/env bash

#Argument check
if  [[ -z "$1" ]]; then
	echo "Usage: $0 <file>"
	exit 1
fi

#File validation
file="$1"

if [[ ! -f "$file" ]]; then
	echo "File not found!"
	exit 1
fi

#IP fliters
echo "----All ips---"
awk '{print $1}' "$file"
echo

echo "----Ip counts----"
awk '{print $1}' "$file" | sort | uniq -c
echo

echo "----Post request----"
awk '/POST/' "$file"
