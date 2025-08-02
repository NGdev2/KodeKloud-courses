### Requirements

Some new developers have joined xFusionCorp Industries and have been assigned Nautilus project. They are going to start development on a new application, and some pre-requisites have been shared with the DevOps team to proceed with. Please note that all tasks need to be performed on storage server in Stratos DC.



a. Install git, set up any values for user.email and user.name globally and create a bare repository /opt/news.git.


b. There is an update hook (to block direct pushes to the master branch) under /tmp on storage server itself; use the same to block direct pushes to the master branch in /opt/news.git repo.


c. Clone /opt/news.git repo in /usr/src/kodekloudrepos/news directory.


d. Create a new branch named xfusioncorp_news in repo that you cloned under /usr/src/kodekloudrepos directory.


e. There is a readme.md file in /tmp directory on storage server itself; copy that to the repo, add/commit in the new branch you just created, and finally push your branch to the origin.


f. Also create master branch from your branch and remember you should not be able to push to the master directly as per the hook you have set up.

---

## 🚀 Steps to Deploy


### 1. Enter to storage server by pass Bl@kW
```bash
ssh natasha@ststor01
```

### 2. intall git
```bash
sudo dnf install git-all
```

### 3. login as root with pass Bl@kW
```bash
sudo su
```

### 5. global config setup
```shell
git config --global --add user.name natasha
git config --global --add user.email natasha@stratos.xfusioncorp.com
```

### 6. Init repo
```shell
cd /opt/
git init --bare news.git
```

### 7. copy hook
```bash
cp /tmp/update ./news.git/hooks/
```

### 8. clone repo in another directory
```shell
cd /usr/src/kodekloudrepos
git clone /opt/news.git news
```


### 9. create new branch and, add and push new file
```shell
cd news/
git checkout -b xfusioncorp_news
cp /tmp/readme.md
git add . && git commit -m "readme" && git push origin xfusioncorp_news
```
