### Requirements

We have one of our websites up and running on our Nautilus infrastructure in Stratos DC. Our security team has raised a concern that right now Apache’s port i.e 3002 is open for all since there is no firewall installed on these hosts. So we have decided to add some security layer for these hosts and after discussions and recommendations we have come up with the following requirements:


1. Install iptables and all its dependencies on each app host.
2.  Block incoming port 3002 on all apps for everyone except for LBR host.
3. Make sure the rules remain, even after system reboot.

## Note: 

## 🚀 Steps to complete the task

### 1. Connect to app server and switch to root
For each app host (`stapp01`, `stapp02`, `stapp03`) use its user and password:

```bash
ssh tony@stapp01   # pass: Ir0nM@n
ssh steve@stapp02  # pass: Am3ric@
ssh banner@stapp03 # pass: BigGr33n
sudo su -
```

### 2. install required packages and enable iptables service
```bash
yum install -y iptables iptables-services
systemctl enable --now iptables
```

### 3. Add firewall rules for Apache port 3002
```bash
# Allow LBR host to access port 3002
iptables -I INPUT 1 -p tcp -s 172.16.238.14 --dport 3002 -j ACCEPT

# Block everyone else on port 3002
iptables -A INPUT -p tcp --dport 3002 -j REJECT --reject-with icmp-port-unreachable
```

### 4. Save and persist the configuration
```bash
iptables-save | tee /etc/sysconfig/iptables > /dev/null
systemctl restart iptables
```

### 5. Connect to LBR and test

```bash
ssh loki@stlb01 #pass: Mischi3f
curl -I http://<APP_IP>:3002
```

