#!/bin/bash
set -e

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
sudo newgrp docker <<EONG
echo "✅ Docker installed successfully!"
docker --version
docker run hello-world
EONG
