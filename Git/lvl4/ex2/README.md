### Requirements

A new developer just joined the Nautilus development team and has been assigned a new project for which he needs to create a new repository under his account on Gitea server. Additionally, there is some existing data that need to be added to the repo. Below you can find more details about the task:

1. Click on the Gitea UI button on the top bar. You should be able to access the Gitea UI. Login to Gitea server using username max and password Max_pass123.

2. a. Create a new git repository story_ecommerce under max user.

3. b. SSH into storage server using user max and password Max_pass123 and clone this newly created repository under user max home directory i.e /home/max.

4. c. Copy all files from location /usr/security to the repository and commit/push your changes to the master branch. The commit message must be "add stories" (must be done in single commit).

5. d. Create a new branch max_cluster from master.

6. e. Copy a file story-index-max.txt from location /tmp/stories/ to the repository. This file has a typo, which you can fix by changing the word Mooose to Mouse. Commit and push the changes to the newly created branch. Commit message must be "typo fixed for Mooose" (must be done in single commit).

# Note:
For these kind of scenarios requiring changes to be done in a web UI, please take screenshots so that you can share it with us for review in case your task is marked incomplete. You may also consider using a screen recording software such as loom.com to record and share your work.

---

## 🚀 Steps to Deploy


### 1. Create repository according instruction

### 2. Enter to storage server by pass Max_pass123
```bash
ssh max@ststor01
```

### 3. move to folder of directory
```bash
cd /home/max
```

### 4. Clone repo and move to it
```bash
git clone http://git.stratos.xfusioncorp.com/max/story_ecommerce.git && cd story_ecommerce/
```

### 5. Copy file to current directory from use/security
```shell
cp /usr/security/* .
```

### 6. Add, Commit and push
```shell
git add . && git commit -m "add stories" && git push
```

### 7. Create new branch
```shell
git checkout -b max_cluster
```

### 8. Copy 
```shell
cp /tmp/stories/story-index-max.txt .
```

### 9. Fix typo
```shell
vi story-index-max.txt
```

### 10. Git add, commit and push
```shell
git add . && git commit -m "typo fixed for Mooose" && git push --set-upstream origin max_cluster
```
