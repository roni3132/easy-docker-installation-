#!/bin/bash
set -e

# Clone the repository
git clone https://github.com/roni3132/easy-docker-installation-.git
cd easy-docker-installation-/

# Update and install Docker
sudo apt-get update -y
sudo apt-get install -y docker.io

# Start and enable Docker service
sudo systemctl enable --now docker

# Add user to docker group
sudo usermod -aG docker $USER

# Refresh group membership without reboot using sg command
exec sg docker -c "
    # Cleanup - remove the repository and exit to original directory
    cd ~
    rm -rf easy-docker-installation-/
    
    # Remove git if it was installed specifically for this script
    sudo apt-get remove -y git
    sudo apt-get autoremove -y
    
    echo '✅ Docker installed successfully!'
    docker --version
    docker ps
    echo '✅ Cleanup completed!'
    
    # Continue with docker group active
    bash
"