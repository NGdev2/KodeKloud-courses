### Requirements

The Nautilus application development team was working on a git repository /usr/src/kodekloudrepos/official present on Storage server in Stratos DC. One of the developers stashed some in-progress changes in this repository, but now they want to restore some of the stashed changes. Find below more details to accomplish this task:


1. Look for the stashed changes under /usr/src/kodekloudrepos/official git repository, and restore the stash with stash@{1} identifier. Further, commit and push your changes to the origin.


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
cd /usr/src/kodekloudrepos/official
```

### 3. Check list of all stash
```bash
git stash list
```

### 4. Restore stash with id 1
```bash
git stash apply stash@{1}
```

### 4. Push changes to origin
```bash
git commit "stashed commit"
git push
```

