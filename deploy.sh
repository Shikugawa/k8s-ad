#!/bin/bash

gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/adtech-node:${CIRCLE_SHA1}
gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/adtech-node:latest

gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/adtech-python:${CIRCLE_SHA1}
gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/adtech-python:latest

kubectl delete -f deployment.yml
kubectl apply -f deployment.yml
