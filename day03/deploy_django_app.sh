#!/bin/bash


<< task
deploy django app
handle exceptions
task

code_clone() {

	echo "cloning Django app"
	git clone https://github.com/newSNOWgit/django-notes-app.git
}

install_requiremnets() {
	echo "Installing Dependencies"
	sudo apt-get install docker.io nginx -y
}

required_restarts() {
        echo "restsrting docker"
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable nginx
	sudo systemctl enable docker
        sudo systemctl start docker
}

deploy() {
        docker build -t notes-app .
        docker run -d -p 8000:8000 notes-app:latest
}

if ! code_clone; then
	echo "code already exist"
	cd django-notes-app
fi
if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi
#install_requirements
if ! required_restarts; then
	echo "Restart failed"
	exit 1
fi

if ! deploy; then
	echo "system fault"
	exit 1
fi
echo "deployment done"

