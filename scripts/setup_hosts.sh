#!/bin/bash
# Ajouter les entrées pour accéder aux applications via noms de domaine locaux
echo "192.168.56.10 frontend.local" | sudo tee -a /etc/hosts
echo "192.168.56.10 keycloak.local" | sudo tee -a /etc/hosts
