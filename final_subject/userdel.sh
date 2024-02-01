#!/bin/sh
while IFS=, read -r _ user_id _; do
	sudo pw userdel -n "$user_id" -r
done
