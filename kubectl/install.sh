#!/bin/bash
export MINIKUBE_IP=$(minikube ip)
echo $MINIKUBE_IP www.myweb.com | sudo tee --append /etc/hosts > /dev/null
kubectl create -f 10g-volume.yaml
kubectl create -f mysql-pvc.yaml
kubectl create -f webapp.yaml
#minikube -p master service webapp
#Link http://www.myweb.com/anuncios
