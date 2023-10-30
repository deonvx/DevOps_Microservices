#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
docker_path="deonvx/udacity-project4"
tag=latest
source .env
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $docker_path"
echo "$DOCKER_PASSWORD" | docker login --username deonvx --password-stdin

docker tag duyvt11:latest $docker_path:$tag
# Step 3:
# Push image to a docker repository
docker push $docker_path:$tag