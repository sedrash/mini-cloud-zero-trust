#!/bin/bash
# Installer k3s master
curl -sfL https://get.k3s.io | sh -
sudo k3s kubectl get nodes
