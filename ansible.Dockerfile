FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y gnupg2 python3-pip sshpass git openssh-client iputils-ping curl nmap strace htop acl && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN python3 -m pip install --upgrade pip cffi && \
    pip3 install ansible-core==2.13.0 && \
    pip3 install ansible==6.1.0 ansible-lint==6.3.0 && \
    pip3 install mitogen jmespath && \
    pip install --upgrade pywinrm && \
    rm -rf /root/.cache/pip


RUN mkdir /ansible


CMD ["/bin/bash"]