#!/bin/bash

echo "Deploying application..."
docker stop demo-app || true
docker rm demo-app || true
docker pull $DOCKER_USERNAME/demo-app:latest
docker run -d -p 8080:8080 --name demo-app $DOCKER_USERNAME/demo-app:latest
echo "Application deployed successfully!"
