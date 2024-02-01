#!/bin/sh

while IFS=, read -r col1 col2 _; do
	pw useradd -n $col1 -c $col2 -w yes -m
done
