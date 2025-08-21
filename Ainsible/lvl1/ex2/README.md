### Requirements

The Nautilus DevOps team is testing Ansible playbooks on various servers within their stack. They've placed some playbooks under /home/thor/playbook/ directory on the jump host and now intend to test them on app server 1 in Stratos DC. However, an inventory file needs creation for Ansible to connect to the respective app. Here are the requirements:

1. Create an ini type Ansible inventory file /home/thor/playbook/inventory on jump host.

2. Include App Server 1 in this inventory along with necessary variables for proper functionality.

3. Ensure the inventory hostname corresponds to the server name as per the wiki, for example stapp01 for app server 1 in Stratos DC.


### Note: Validation will execute the playbook using the command ansible-playbook -i inventory playbook.yml. Ensure the playbook functions properly without any extra arguments.

---

## 🚀 Steps to Deploy


### 1. Enter as a sudo user with pass mjolnir123
```bash
sudo su
```

### 2. create a inventory file
```bash
cd /home/thor/playbook
vi inventory
```


### 3. include app server 1
```shell
stapp01 ansible_host=172.16.238.10 ansible_user=tony ansible_password=Ir0nM@n ansible_ssh_common_args='-o StrictHostKeyChecking=no'
```

### 4. create task
```shell
ansible-playbook -i inventory playbook.yml
```