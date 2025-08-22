### Requirements

The Nautilus DevOps team aims to manage all servers within the stack using Ansible, utilizing a common sudo user across all servers. They plan to use this user for various tasks on each server. While this isn't finalized, they're starting with testing. Ansible is already installed on the jump host via yum. Here's the requirement:

1. On the jump host, modify the default configuration of Ansible to enable the use of javed as the default SSH user for all hosts. Ensure to make changes within Ansible's default configuration without creating a new one.

---

## 🚀 Steps to Deploy


### 1. Enter as a sudo user with pass mjolnir123
```bash
sudo su
```

### 2. Change default config file 
```bash
vi /etc/ansible/ansible.cfg
```
and add this

```bash
[defaults]
remote_user = javed
```



