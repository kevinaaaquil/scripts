#!/bin/bash

# Remove existing Docker installations
sudo apt-get remove docker docker-engine docker.io

# Update package index
sudo apt-get update

# Install Docker
sudo apt install docker.io -y

# List Docker containers
sudo docker ps -a

# Add current user to Docker group
sudo usermod -aG docker $USER

# Download and install Docker Compose
curl -SL https://github.com/docker/compose/releases/download/v2.30.3/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose

echo "Restart Shell"
