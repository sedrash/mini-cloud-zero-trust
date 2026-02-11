#!/bin/bash
# Déployer tous les YAML
kubectl apply -f ../manifests/
kubectl get pods -n zerotrust
kubectl get svc -n zerotrust
