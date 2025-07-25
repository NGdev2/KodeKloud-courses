### Requirements

1. Create a namespace named tomcat-namespace-datacenter.


2. Create a deployment for tomcat app which should be named as tomcat-deployment-datacenter under the same namespace you created. Replica count should be 1, the container should be named as tomcat-container-datacenter, its image should be gcr.io/kodekloud/centos-ssh-enabled:tomcat and its container port should be 8080.


3. Create a service for tomcat app which should be named as tomcat-service-datacenter under the same namespace you created. Service type should be NodePort and nodePort should be 32227.

---

## 🚀 Steps to Deploy


### 1. Create namespace
```bash
kubectl create namespace tomcat-namespace-datacenter
```
*change namespace according requrements*

### 2. Create deployment and apply it
[tomcat deployment manifest](tomcat-deployment.yaml)
```bash
vi tomcat-deployment.yaml
kubectl apply -f tomcat-deployment.yaml
```

### 3. Create service and apply it
[tomcat service manifest](tomcat-service.yaml)
```bash
vi tomcat-service.yaml
kubectl apply -f tomcat-service.yaml
```
