#!/bin/bash
# Rejoindre le cluster k3s
sudo k3s agent --server https://192.168.56.10:6443 --token <NODE_TOKEN>
