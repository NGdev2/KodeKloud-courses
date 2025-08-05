### Requirements

The Nautilus DevOps team is strategically planning the migration of a portion of their infrastructure to the AWS cloud. Acknowledging the magnitude of this endeavor, they have chosen to tackle the migration incrementally rather than as a single, massive transition. Their approach involves creating Virtual Private Clouds (VPCs) as the initial step, as they will be provisioning various services under different VPCs.

1. For this task, create a VPC named datacenter-vpc in the us-east-1 region with the Amazon-provided IPv6 CIDR block using terraform.
2. The Terraform working directory is /home/bob/terraform. Create the main.tf file (do not create a different .tf file) to accomplish this task.

# Note:
Right-click under the EXPLORER section in VS Code and select Open in Integrated Terminal to launch the terminal.

---

## 🚀 Steps to Deploy

### 1. create main.tf file
[main.tf](main.tf)

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Apply configuration
```shell
terraform apply
```
