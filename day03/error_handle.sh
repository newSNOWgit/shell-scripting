#!/bin/bash



create_dir() {
	mkdir demo
}

if ! create_dir; then
	echo "the code is being exitedas the directory exist"
	exit 1
fi
echo "this will not print because code intrupted"
