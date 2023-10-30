#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath=deonvx/udacity-project4

# Step 2
# Run the Docker Hub container with kubernetes
 kubectl run flask-app --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward flask-app  8080:8080