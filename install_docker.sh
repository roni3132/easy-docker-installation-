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

# Start a new shell with docker group
newgrp docker <<EOF
  echo "✅ Docker installed successfully!"
  docker --version
  docker ps
  newgrp docker
EOF

newgrp docker


# Clean up: remove git and this cloned folder
cd ..
rm -rf easy-docker-installation-/
sudo apt-get remove -y git
sudo apt-get autoremove -y

echo "✅ Cleanup completed!"


