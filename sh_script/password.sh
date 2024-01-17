#!/bin/sh

stty -echo
read -p "Please enter password: " password
stty echo

printf "\n"
printf "password enterd: "

openssl passwd -6 $password
