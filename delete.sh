#!/bin/bash
kubectl delete pvc mysql-pvc
kubectl delete pv 10g-volume.yaml
kubectl delete services db webapp
kubectl delete deployments db webapp
