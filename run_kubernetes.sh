#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=adenicole/capstone
echo "Dockerpath: ${dockerpath}"

# Run the Docker Hub container with kubernetes
kubectl run capstone \
    --image=$dockerpath\
    --port=80 --labels app=capstone

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward --address 0.0.0.0 capstone 8000:80
# Log container outputs
kubectl logs --follow capstone