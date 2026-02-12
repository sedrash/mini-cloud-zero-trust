# Mini Cloud Zero Trust

## Description
Ce projet est un **mini cloud sécurisé** basé sur Kubernetes (k3s) avec une architecture **Zero Trust**.  
Il inclut :

- Déploiement multi-VM : `vm-master` et `vm-worker`
- Applications : `backend`, `frontend`, `database`
- Gestion des secrets : Keycloak + OAuth2-Proxy
- Sécurité système : Hardening Linux, AppArmor, firejail, Suricata, rsyslog
- Network Policies Kubernetes pour restreindre le trafic inter-pods
- Observabilité : Prometheus, Grafana, ELK Stack

---

## Structure du projet

mini-cloud-zero-trust/

├─ manifests/ # Tous les YAML Kubernetes

├─ scripts/ # Scripts d'installation et de configuration

├─ hardening/ # Configs sysctl, SSH, rsyslog, AppArmor, Suricata

├─ report/ # Documentation et rapports

└─ README.md

## Installation rapide

1. Sur **vm-master**, installer k3s :
```bash

sudo ./scripts/install_k3s_master.sh


    Sur vm-worker, rejoindre le cluster :

sudo ./scripts/join_k3s_worker.sh

    Appliquer tous les manifests Kubernetes :

kubectl apply -f manifests/

    Vérifier les pods et services :

kubectl get pods -n zerotrust
kubectl get svc -n zerotrust

    Configurer /etc/hosts pour accéder aux applications locales :

192.168.56.10 frontend.local
192.168.56.10 keycloak.local
```
## Sécurité / Zero Trust


 Keycloak : gestion des utilisateurs et authentification

 OAuth2-Proxy : protection des ingress

 Network Policies : deny-all par défaut + règles pour frontend/backend/db

 Hardening Linux : sysctl, SSH MFA, rsyslog centralisé

 Suricata : détection d’intrusion réseau

 AppArmor / firejail : confinement des processus sensibles










