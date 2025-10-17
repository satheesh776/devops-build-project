#!/bin/bash
# Stop old container if exists
docker stop react-app || true
docker rm react-app || true

# Run container using Docker Compose
docker-compose up -d
echo "React app deployed on port 80"
