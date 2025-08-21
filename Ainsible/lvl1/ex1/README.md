### Requirements

An Ansible playbook needs completion on the jump host, where a team member left off. Below are the details:


1. The inventory file /home/thor/ansible/inventory requires adjustments. The playbook must run on App Server 3 in Stratos DC. Update the inventory accordingly.

2. Create a playbook /home/thor/ansible/playbook.yml. Include a task to create an empty file /tmp/file.txt on App Server 3.


### Note: Validation will run the playbook using the command ansible-playbook -i inventory playbook.yml. Ensure the playbook works without any additional arguments.

---

## 🚀 Steps to Deploy


### 1. Enter as a sudo user with pass mjolnir123
```bash
sudo su
```

### 2. Open inventory file and add a new host 
```bash
cd /home/thor/ansible
vi inventory
stapp02 ansible_host=172.238.16.204 ansible_user=steve ansible_ssh_common_args='-o StrictHostKeyChecking=no'
stapp03 ansible_host=172.16.238.12 ansible_user=banner ansible_password=BigGr33n ansible_ssh_common_args='-o StrictHostKeyChecking=no'

```


### 3. create file and add task inside
```shell
touch /home/thor/ansible/playbook.ym
vi /home/thor/ansible/playbook.yml

- name: Create file on App Server 3
  hosts: stapp03
  gather_facts: false
  tasks:
    - name: Ensure /tmp/file.txt exists (empty)
      file:
        path: /tmp/file.txt
        state: touch
        mode: '0644'
```

### 4. launch
```shell
ansible-playbook -i inventory playbook.yml
```