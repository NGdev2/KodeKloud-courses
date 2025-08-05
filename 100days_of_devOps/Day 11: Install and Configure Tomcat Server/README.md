### Requirements

The Nautilus application development team recently finished the beta version of one of their Java-based applications, which they are planning to deploy on one of the app servers in Stratos DC. After an internal team meeting, they have decided to use the tomcat application server. Based on the requirements mentioned below complete the task:

1. Install tomcat server on App Server 2.
2. Configure it to run on port 8088.
3. There is a ROOT.war file on Jump host at location /tmp.

# Note:
Deploy it on this tomcat server and make sure the webpage works directly on base URL i.e curl http://stapp02:8088


## 🚀 Steps to Deploy

### 1. copy file to app
```bash
scp /tmp/ROOT.war steve@stapp02:/tmp/
```

### 2. Enter to app server with pass Am3ric@ and login to su
```bash
ssh steve@stapp02 
# enter pass Am3ric@
sudo su
```
---

### 3. install openjdk
```bash
sudo yum install java-1.8.0-openjdk -y
```

### 4. create tomcat user
```shell
sudo useradd -m -U -d /opt/tomcat -s /bin/false tomcat
```

### 5. download and isntall tomcat and admin packages and move copied file
```shell
sudo yum install tomcat
sudo yum install tomcat-webapps tomcat-admin-webapps
sudo mv /tmp/ROOT.war /usr/share/tomcat/webapps/
```

### 6. change port for file server.xml
```shell
sudo vi /etc/tomcat/server.xml

# change that line
<Connector port="8080" protocol="HTTP/1.1"
# to that
<Connector port="8088" protocol="HTTP/1.1"
```

### 7. restart tomcat
```shell
sudo systemctl restart tomcat

```