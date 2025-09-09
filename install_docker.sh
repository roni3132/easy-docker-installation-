#!/bin/bash

# Update packages
sudo apt-get update -y

# Install docker.io package
sudo apt-get install -y docker.io

# Enable and start docker service
sudo systemctl enable docker
sudo systemctl start docker

# Add current user to docker group
sudo usermod -aG docker $USER

# Refresh group without reboot
newgrp docker

echo "✅ Docker installed successfully!"
docker --version
docker ps -a
EONG
