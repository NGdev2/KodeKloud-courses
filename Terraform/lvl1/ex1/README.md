### Requirements

For this task, create a key pair using Terraform with the following requirements:

1. Name of the key pair should be datacenter-kp.
2. Key pair type must be rsa.
3. The private key file should be saved under /home/bob/datacenter-kp.pem.

The Terraform working directory is /home/bob/terraform. Create the main.tf file (do not create a different .tf file) to accomplish this task.

---

## 🚀 Steps to Deploy


### 1. create main.tf file with key pair
[main.tf](main.tf)

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Apply configuration
```shell
terraform apply
```
