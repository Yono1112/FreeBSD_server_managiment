#!/bin/sh
while IFS=, read -r col1 _ _; do
	pw userdel -n $col1 -r
done
