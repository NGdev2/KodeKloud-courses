### Requirements

1. Create a deployment using gcr.io/kodekloud/centos-ssh-enabled:node image, replica count must be 2.


2. Create a service to expose this app, the service type must be NodePort, targetPort must be 8080 and nodePort should be 30012.


3. Make sure all the pods are in Running state after the deployment.

4. You can check the application by clicking on NodeApp button on top bar.

*You can use any labels as per your choice.*

---

## 🚀 Steps to Deploy


### 1. Create deployment and apply it [centos-deployment](deployment.yaml)
```bash
vi deployment.yaml
kubectl apply -f deployment.yaml
```
*change names according requrements*

### 2. Create service and apply it [centos-service](service.yaml)

```bash
vi service.yaml
kubectl apply -f service.yaml
```
