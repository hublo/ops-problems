# Problem 02

## 1. Synopsis
 This is a simple app you can access on http://192.168.56.10
 Sometimes it seems to work (returns HTTP/200 HO HAI), sometimes not...

## 2. Instruction
```
cd infra
vagrant up
ansible-playbook working.yml
curl http://192.168.56.10
HO HAI
```

## 3. Breakings thinks
 Once you've done 2.:
```
ansible-playbook beginner-01.yml > /dev/null
curl http://192.168.56.10
HTTP/200: HO HAI (works)
HTTP/500: (broken)
```
-> It is now, broken

## 4. You'll need ...
* vagrant ssh rp | nodejs1 | nodejs2
* curl
* vi
* netstat
* pm2 l
* systemctl stop / yum remove
