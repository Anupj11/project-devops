#!/bin/bash

echo "🛠️ Starting system setup..."

# Update package index
sudo apt update -y

# Install Python (required for Ansible to connect to remote machines)
sudo apt install -y python3 python3-pip

# Install Docker (optional, if Docker is part of the project)
sudo apt install -y docker.io

# Add Jenkins and Ansible users to docker group (if needed)
sudo usermod -aG docker $USER

# Start Docker if not running
sudo systemctl enable docker
sudo systemctl start docker

echo "✅ Setup complete."
