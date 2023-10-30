[![CircleCI](https://dl.circleci.com/status-badge/img/gh/deonvx/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/deonvx/DevOps_Microservices/tree/master)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The objective of your project is to operationalize a functional machine learning microservice by utilizing Kubernetes, an open-source system designed for automating the management of containerized applications. Throughout this project, you will accomplish the following tasks:

1. Test your project code using linting techniques.
2. Develop a Dockerfile to containerize the application.
3. Deploy the containerized application using Docker and perform a prediction.
4. Enhance the log statements in the application's source code.
5. Configure Kubernetes and establish a Kubernetes cluster.
6. Deploy a container using Kubernetes and make a prediction.
7. Upload a comprehensive Github repository with CircleCI integration to demonstrate that your code has undergone testing.

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

- You will need to set up and configure Docker on your local machine. This involves installing Docker and ensuring it is properly configured.
- You will need to set up and configure Kubernetes locally. This entails installing Kubernetes and configuring it to work with your Docker setup.
- Docker and Kubernetes are set up, you can proceed to create a Flask application within a container. This involves writing the necessary code for your Flask app and creating a Docker image that encapsulates the app.
- You can run the Flask app via the kubectl command. This will deploy the containerized application onto your Kubernetes cluster, allowing it to be accessed and utilized.

### Code Structure Description

1. .dockerignore: This configuration file specifies the files and directories that should be excluded when building a Docker image.
2. app.py: This is the main source code file used to run the application.
3. Dockerfile: This file contains instructions for building the Docker image.
4. make_prediction.sh: This script is used to call the API.
5. Makefile: This file provides instructions for setting up the environment, installing dependencies, testing, and linting.
6. README.md: This file contains instructions and descriptions for the project.
7. requirements.txt: This file lists the Python dependencies required for installation.
8. run_docker.sh: This script is used to deploy the application on Docker.
9. run_kubernetes.sh: This script is used to deploy the application on Kubernetes.
10. upload_docker.sh: This script is used to upload the Docker image to Docker Hub.
