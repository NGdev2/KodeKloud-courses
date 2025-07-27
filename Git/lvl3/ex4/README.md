### Requirements

The Nautilus application development team was working on a git repository /usr/src/kodekloudrepos/media present on Storage server in Stratos DC. This was just a test repository and one of the developers just pushed a couple of changes for testing, but now they want to clean this repository along with the commit history/work tree, so they want to point back the HEAD and the branch itself to a commit with message add data.txt file. Find below more details:

1. In /usr/src/kodekloudrepos/media git repository, reset the git commit history so that there are only two commits in the commit history i.e initial commit and add data.txt file.

2. Also make sure to push your changes.

---

## 🚀 Steps to Deploy


### 1. connect to storage server by ssh with pass: Bl@kW
```bash
ssh natasha@ststor01
```

### 2. Swap to superuser with pass: Bl@kW
```bash
sudo su
```

### 3. move to repo
```bash
cd /usr/src/kodekloudrepos/media
```

### 3. Check all commits and find commit to which you will roll back
```bash
git log
```

### 4. Reset to that commit
```bash
git reset --hard <id of commit with add data.txt file>
```

### 4. Push changes to origin
```bash
git push origin master -f
```

