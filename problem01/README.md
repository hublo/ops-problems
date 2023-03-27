# Problem 01

## Synopsis
 This is a simple app with :
 * a nodejs app (`192.168.201.8`)
 * served by an nginx reverse proxy (`192.168.201.7`)
  
 You can access it by going to http://192.168.201.7

## Run it

### Vagrant first

Make sure Docker is running and make Vagrant deploy the containers
Everything infra related is in the infra folder

### Run Ansible
We will run Ansible inside a Docker container.
The Docker image can be build with the `ansible.Dockerfile` file
This container will mount a volume for the other two containers ssh private keys
and a volume with the ansible roles + inventory.

`mounting volumes reminder --> local-path:container-path`

SSH Keys are stored in `/infra/.vagrant/machines/<name-of-machine>/docker/private_key`
The Ansible container should also join the network of the Vagrant containers.

Once inside the running Ansible container,
check if you can communicate with the other container.

Finally, run the working playbook `ansible-playbook working.yml` 

## Breaking things
 Once you are up and running, break things
```
ansible-playbook beginner-01.yml > /dev/null
curl http://192.168.201.7
```
-> It is now, broken

## 4. You'll need ...
* vagrant ssh nodejs / nginx
* netstat -tunapl
* ps aux
* systemctl stop / yum remove
