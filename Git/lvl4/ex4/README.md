### Requirements

The Nautilus application development team was working on a git repository /opt/official.git which is cloned under /usr/src/kodekloudrepos directory present on Storage server in Stratos DC. The team want to setup a hook on this repository, please find below more details:

1. Merge the feature branch into the master branch`, but before pushing your changes complete below point.

2. Create a post-update hook in this git repository so that whenever any changes are pushed to the master branch, it creates a release tag with name release-2023-06-15, where 2023-06-15 is supposed to be the current date. For example if today is 20th June, 2023 then the release tag must be release-2023-06-20. Make sure you test the hook at least once and create a release tag for today's release.

# Note:
Finally remember to push your changes.

---

## 🚀 Steps to Deploy


### 1. Enter to storage server by pass Bl@kW
```bash
ssh natasha@ststor01
```

### 2. move to folder of directory
```bash
cd /usr/src/kodekloudrepos/official/
```

### 3. login as root with pass Bl@kW
```bash
sudo su
```

### 4. Checkout to master
```bash
git checkout master
```

### 5. merge feture to origin master
```shell
git merge feature
```

### 6. Create hook in git hook repository
```shell
vi /opt/official.git/hooks/post-update
```
[hook](release-date-hook)

### 7. make script executable
```bash
chmod +x /opt/official.git/hooks/post-update
```

### 8. Create file for test push
```shell
echo "#test" >> README.md
git add README.md
```


### 9. Commit and push
```shell
git commit -m "test" && git push
```

### 10. Check tag
```shell
git tag
```