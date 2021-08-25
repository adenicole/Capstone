#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=adenicole/capstone

echo "Dockerpath: ${dockerpath}"

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username "adenicole" && \
    docker image tag capstone $dockerpath


# Push image to docker repository
docker push $dockerpath