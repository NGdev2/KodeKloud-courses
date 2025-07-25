### Requirements

1. The deployment name is redis-deployment. The pods are not in running state right now, so please look into the issue and fix the same.

---

## 🚀 Steps to Deploy


### 1. check deployment 
```bash
kubectl describe deployment redis-deployment
```

### 2. make changes
```bash
kubectl edit deployment redis-deployment
```
redis:alpine
Name: redis-config

