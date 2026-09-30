### Requirements

There is a critical issue going on with the Nautilus application in Stratos DC. The production support team identified that the application is unable to connect to the database. After digging into the issue, the team found that mariadb service is down on the database server.


1. Look into the issue and fix the same.


---

## 🚀 Steps to Deploy


### 1. connect to DB Server by ssh with pass: Sp!dy
```bash
ssh peter@stdb01
```

### 2. Swap to superuser with pass: Sp!dy
```bash
sudo su
```

### 3. Check MariaDB status
```bash
sudo systemctl status mariadb
```

### 3. Check that folder for MariaDB exists
```bash
ls -ld /var/lib/mysql
```

### 4. Create folder
```bash
sudo mkdir -p /var/lib/mysql
sudo chown -R mysql:mysql /var/lib/mysql
sudo chmod 755 /var/lib/mysql
```

### 4. Start MariaDB and check status. it should be running now
```bash
sudo systemctl start mariadb
sudo systemctl status mariadb
```

