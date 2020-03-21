#!/bin/bash
echo $MINIKUBE_IP www.carlosvegagarci.com | sudo tee --append /etc/hosts > /dev/null
kubectl create -f 10g-volume.yaml
kubectl create -f mysql-pvc.yaml
kubectl create -f webapp.yaml
minikube -p master service webapp
