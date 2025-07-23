                Deploy Grafana on Kubernetes Cluster
## 📌 Task Description
The goal of this task is to deploy the **Grafana** monitoring application on a Kubernetes cluster and expose it using a **NodePort** service.

### Requirements

1. Create a deployment named grafana-deployment-xfusion using any grafana image for Grafana app. Set other parameters as per your choice.


2. Create NodePort type service with nodePort 32000 to expose the app.


3. You need not to make any configuration changes inside the Grafana app once deployed, just make sure you are able to access the Grafana login page.

---

## 🚀 Steps to Deploy


### 1. Create grafana deployment from latest grafana image in grafana namespace
```bash
kubectl create deployment grafana-deployment-xfusion \
--image grafana/grafana:latest
```
*change deployment name according requrements*

### 2. And finally make it accessible via port 32000 of a NodePort Service
```bash
vi grafana-service.yaml
```
[grafana service manifest](grafana-service.yaml)

kubectl apply -f grafana-service.yaml