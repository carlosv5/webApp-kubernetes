#!/bin/bash
kubectl delete deployments db webapp
kubectl delete services db webapp
kubectl delete pvc mysql-pvc
kubectl delete pv 10g-volume
kubectl delete ingress ingress
