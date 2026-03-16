### Requirements

The Nautilus DevOps team is testing various Ansible modules on servers in Stratos DC. They're currently focusing on file creation on remote hosts using Ansible. Here are the details:

1. Create an inventory file ~/playbook/inventory on jump host and include all app servers.

2. Create a playbook ~/playbook/playbook.yml to create a blank file /opt/data.txt on all app servers.

3. Set the permissions of the /opt/data.txt file to 0755.

4. Ensure the user/group owner of the /opt/data.txt file is tony on app server 1, steve on app server 2 and banner on app server 3.

---

## 🚀 Steps to Deploy


### 1. creating inventory with all app servers
```bash
cd ~/playbook
vi inventory
# content
[myhosts]
stapp01 ansible_ssh_pass=Ir0nM@n  ansible_user=tony
stapp02 ansible_ssh_pass=Am3ric@  ansible_user=steve
stapp03 ansible_ssh_pass=BigGr33n  ansible_user=banner
```

### 2. Playbook.yml with creating blank /opt/data.txt file 
```bash
vi playbook.yml
# content
- name: Create /opt/data.txt on all app servers
  hosts: myhosts
  become: yes

  vars:
    file_owners:
      stapp01: tony
      stapp02: steve
      stapp03: banner

  tasks:
    - name: Create blank file /opt/data.txt with correct ownership and permissions
      file:
        path: /opt/data.txt
        state: touch
        mode: '0755'
        owner: "{{ file_owners[inventory_hostname] }}"
        group: "{{ file_owners[inventory_hostname] }}"
```

