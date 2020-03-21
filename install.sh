#!/bin/bash
kubectl create -f webapp.yaml
minikube -p master service webapp
