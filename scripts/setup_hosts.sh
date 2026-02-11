#!/bin/bash
echo "192.168.56.10 frontend.local" | sudo tee -a /etc/hosts
echo "192.168.56.10 keycloak.local" | sudo tee -a /etc/hosts
