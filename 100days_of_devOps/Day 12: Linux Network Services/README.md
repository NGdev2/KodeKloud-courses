### Requirements

1. Our monitoring tool has reported an issue in Stratos Datacenter. One of our app servers has an issue, as its Apache service is not reachable on port 3003 (which is the Apache port). The service itself could be down, the firewall could be at fault, or something else could be causing the issue.

2. Use tools like telnet, netstat, etc. to find and fix the issue. Also make sure Apache is reachable from the jump host without compromising any security settings.

3. Once fixed, you can test the same using command curl http://stapp01:3003 command from jump host

## 🚀 Steps to fix the issue

### 1. Connect to app server with the pass Ir0nM@n
```bash
ssh tony@stapp01
```

### 2. Check status of the Server
```bash
sudo systemctl status httpd
```

### 3. Find which process uses the port 3003
```bash
sudo netstat -tulpn | grep 3003
```

### 4. Kill process where <pid> is a number of process from previous command. in my case it is 427 (427/sendmail)
```bash
sudo kill -9 <pid>
```

### 5. restart the service of apache
```bash
sudo systemctl start httpd
```

### 6. Achept the port
```bash
sudo iptables -I INPUT -p tcp --dport 3003 -j ACCEPT
```
