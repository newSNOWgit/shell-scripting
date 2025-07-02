#!/bin/bash



read -p "Enter user name : " user

echo "you entered $user"

sudo useradd -m $user

echo "new user added"
