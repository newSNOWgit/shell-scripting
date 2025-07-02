#!/bin/bash


<< task
1 is file name
2 start num
3 end num
task

for (( i=$2; i<=$3; i++ ))
do
	mkdir $1$i
done

