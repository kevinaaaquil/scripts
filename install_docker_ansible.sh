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
sudo curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Show message
echo "The system will reboot in 10 seconds"
sleep 10
