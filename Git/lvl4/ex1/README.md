### Requirements

1. The Nautilus application development team has been working on a project repository /opt/official.git. This repo is cloned at /usr/src/kodekloudrepos on storage server in Stratos DC. They recently shared the following requirements with DevOps team:

2. One of the developers is working on feature branch and their work is still in progress, however there are some changes which have been pushed into the master branch, the developer now wants to rebase the feature branch with the master branch without loosing any data from the feature branch, also they don't want to add any merge commit by simply merging the master branch into the feature branch. Accomplish this task as per requirements mentioned.

Also remember to push your changes once done.

---

## 🚀 Steps to Deploy


### 1. connect to storage server by ssh with pass Bl@kW	
```bash
ssh natasha@ststor01
```
### 2. Swap to sudouser with pass Bl@kW	

```bash
sudo su
```

### 3. move to folder of directory

```bash
cd /usr/src/kodekloudrepos/official
```

### 4. Check our current branch
```shell
git branch -a
```

### 5. Fetch latest changes from remote
```shell
git fetch origin
```

### 6. Rebase 
```shell
git rebase master
```

### 7. Push 
```shell
git push origin feature --force
```
