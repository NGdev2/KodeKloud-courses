### Requirements

The Nautilus DevOps team needs to copy data from the jump host to all application servers in Stratos DC using Ansible. Execute the task with the following details:

1. Create an inventory file /home/thor/ansible/inventory on jump_host and add all application servers as managed nodes.

2. Create a playbook /home/thor/ansible/playbook.yml on the jump host to copy the /usr/src/finance/index.html file to all application servers, placing it at /opt/finance.

---

## 🚀 Steps to Deploy


### 1. Enter as a sudo user 
```bash
sudo su
```

### 2. create an inventory file
```bash
cd /home/thor/ansible
vi inventory
# add these hosts to hostgrpup
[myhosts]
stapp01 ansible_ssh_pass=Ir0nM@n  ansible_user=tony
stapp02 ansible_ssh_pass=Am3ric@  ansible_user=steve
stapp03 ansible_ssh_pass=BigGr33n  ansible_user=banner
# 

```

### 3. Create an playbook.yml and add content to copy the /usr/src/finance/index.html to all apps
```bash
vi playbook.yml
# Content
- name: Ansible Copy finance file to all application servers

  hosts: amyhostsl

  become: yes

  tasks:

    - name: copy finance.html to finance folder

      copy:
        src=/usr/src/finance/index.html
        dest=/finance/security
```
