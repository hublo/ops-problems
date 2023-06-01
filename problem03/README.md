# SkoolOps

## 1. Synopsis
 This is a simple vm which seems in trouble
 Try to find out what is wrong with it

## 2. Instruction
```
cd infra
vagrant up
ansible-playbook working.yml
mysql root
> create database coucou;
```

mysql is working, you can create databases

## 3. Breakings thinks
 Once you've done 2.:
```
ansible-playbook beginner-01.yml > /dev/null
vagrant ssh
```
-> It is now, broken
mysql is not working anymore, you can't create databases anymore

## 4. You'll need ...
* mysql
* basic system skills
* df -h
* du -h
* lsof
* systemctl
