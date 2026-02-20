#!/bin/bash

# Navigate to the correct directory if needed
# cd /path/to/your/project

echo "Stopping existing containers..."
docker-compose down

echo "Pulling latest image or rebuilding..."
# If using a remote registry: docker-compose pull
docker-compose build

echo "Starting containers in the background..."
docker-compose up -d

echo "Deployment finished! Containers are running."
docker ps -a | grep flask-test
