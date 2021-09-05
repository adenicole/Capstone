# Capstone

This is my Udacity final year project for the Cloud DevOps Nanodegree and I put together all I learnt.

## CircleCI Status
[![CircleCI](https://circleci.com/gh/adenicole/Capstone/tree/main.svg?style=svg)](https://circleci.com/gh/adenicole/Capstone/tree/main)

## Project details

This project was created to show the use of a CI/CD pipeline to create a simple app written in python to show 'Hello world...' message when receiving request.
Docker images were pushed to Docker hub, Hadolint was installed to lint the dockerfile, Security check connect to the kubernetes cluster and deployed the docker image to it using rolling deployment.

Project steps:

- Create Makefile
- Create Dockerfile and Lint Dockerfile
- Build Docker image by running `./run_docker.sh` (make it executabe first by `chmod +x run_docker.sh`)
- Push to Docker hub using `./upload_docker.sh` (make it executabe first by `chmod +x upload_docker`)
- Install kubectl
- Create Kubernetes configuration file
- deploy app to AWS EKS cluster
- Create CI/CD to run this commands after testing locally on your system or server.


## Tools used

- Circleci for implementing the CI/CD
- GitHub for versioning
- AWS as the Cloud service
- Kubernetes to create clusters
- Docker containers deployed to the k8 clusters
- aws cli


## Disclaimer
This Capstone repository belongs to Adedoyin Adeyemi (adenicole), an Udacity Cloud DevOps Engineer nanodegree student.

My Capstone project was completed on August 31, 2021 and the push containing screenshots made on the same day; 6 minutes after [this commit's](https://github.com/adenicole/Capstone/commit/9469878ba9c6097609e59c5c79673c61e57ae53d) pipeline ran. However, I submitted on September 5, 2021. Please note the **actual commit times** and not the times indicated inside the screenshots.

Thank you.