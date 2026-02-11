#!/bin/bash
# Installer k3s sur la VM master
# curl télécharge le script officiel d'installation
curl -sfL https://get.k3s.io | sh -

# Vérification que le cluster est actif
sudo k3s kubectl get nodes
