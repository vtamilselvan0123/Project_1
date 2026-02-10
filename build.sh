#!/bin/bash
IMAGE_NAME=tamilsevan/dev
TAG=$(git rev-parse --short HEAD)
docker build -t $IMAGE_NAME:$TAG .
docker tag $IMAGE_NAME:$TAG $IMAGE_NAME:latest
