#!/bin/bash
# Install docker
apt-get update
apt-get install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install linux-image-extra-$(uname -r) -y
apt-get install -y docker-engine=1.10.0-0~trusty
usermod -aG docker ubuntu

#Install docker compose
curl -L https://github.com/docker/compose/releases/download/1.10.0/docker-compose-Linux-x86_64 > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#Install docker module for docker_service
apt-get install python-pip -y
pip install docker
pip install docker-compose
