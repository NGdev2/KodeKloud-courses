### Requirements

1. The Nautilus application development team has been working on a project repository /opt/official.git. This repo is cloned at /usr/src/kodekloudrepos on storage server in Stratos DC. They recently shared the following requirements with the DevOps team:

2. There are two branches in this repository, master and feature. One of the developers is working on the feature branch and their work is still in progress, however they want to merge one of the commits from the feature branch to the master branch, the message for the commit that needs to be merged into master is Update info.txt. Accomplish this task for them, also remember to push your changes eventually.

---

## 🚀 Steps to Deploy


### 1. connect to storage server by ssh
```bash
ssh natasha@ststor01
```

### 2. move to folder

```bash
mv cd /usr/src/kodekloudrepos/official/
```

### 3. Check branch and log
```shell
git log feature --oneline
```

### 4. Change branch to master
```shell
git checkout master
```

### 5. Apply only last commit to master branch with cherry pick
```shell
git cherry-pick 3e5daab
```

### 6. And push commit
```shell
git push origin master
```
