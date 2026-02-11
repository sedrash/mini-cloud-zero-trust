#!/bin/bash
# Joindre le worker au cluster k3s
# Remplacer <NODE_TOKEN> par le token du master
sudo k3s agent --server https://192.168.56.10:6443 --token <NODE_TOKEN>
