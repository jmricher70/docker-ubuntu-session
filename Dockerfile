FROM ubuntu:latest
RUN apt update
RUN apt install nano tree -y
RUN (groupadd -g 1000 ubuntu \
    && useradd -M -u 1000 -g 1000 ubuntu \
    && usermod -a -G ubuntu ubuntu) ; exit 0
ENV HOME /home/ubuntu
WORKDIR $HOME
RUN mkdir -p $HOME && chown -R 1000:0 $HOME

### Add Sudo Access
RUN apt-get update \
    && apt-get install -y sudo \
    && echo 'ubuntu ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers \
    && rm -rf /var/lib/apt/list/*
    
USER ubuntu
ENV HOME /home/ubuntu
WORKDIR $HOME

