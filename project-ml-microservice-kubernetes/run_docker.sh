#!/bin/bash
## Complete the following steps to get Docker running locally
# Step 1:
# Build image and add a descriptive tag
docker build -t duyvt11:latest .
# Step 2: 
# List docker images
docker image ls 
# Step 3: 
# Run flask app
docker run -p 8080:80 --name flask-app -itd duyvt11:latest 