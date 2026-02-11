#!/bin/bash
# Appliquer tous les fichiers YAML du projet
kubectl apply -f ../manifests/

# Vérifier que les pods sont en Running
kubectl get pods -n zerotrust

# Vérifier que les services sont actifs
kubectl get svc -n zerotrust
