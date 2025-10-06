### Custom Apache User Setup

### Requirements

In response to heightened security concerns, the xFusionCorp Industries security team has opted for custom Apache users for their web applications. Each user is tailored specifically for an application, enhancing security measures. Your task is to create a custom Apache user according to the outlined specifications:

1. Create a user named ravi on App server 2 within the Stratos Datacenter.

2. Assign a unique UID 1534 and designate the home directory as /var/www/ravi.

---

## 🚀 Steps to Deploy


### 1. connect to App Server 2 by ssh
```bash
ssh steve@stapp02
sudo su -
```

### 2. Create a user ravi

```bash
useradd ravi
```

### 3. create the home directory
```shell
usermod -d /var/www/ravi -m ravi
# or
setfacl -R -m u:ravi:rwx /var/www/ravi
mkdir /var/www/ravi
```

### 4. Change uid
```shell
usermod -u 1534 ravi
```

### 5. test
```shell
cat /etc/passwd
```