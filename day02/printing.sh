#!/bin/bash



# this is variable file
#

<< commentin

in this file we weill learn 
about 
variables 
dede
commentin

echo "we will print name"

name1="John hu main"

echo "my name is $name1 todays date is $(date)"


echo "type your first num:"

# function defination

function comp_num() {
read -p "first number" fname
read -p "second number:" sname
echo "for $1 $2 typed $fname and $sname"
echo "you are adding"

if [[ $fname == "4" ]];
then
	echo "number is 4"
elif [[ $fname -ge "5" ]];
then
	echo "number is greated than 4"
elif [[ $sname == $fname ]];
then
	echo "both number are same"
else
	echo "nuber is 7"
fi
}

# Funtion call

comp_num "9"
