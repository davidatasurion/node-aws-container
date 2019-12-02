FROM ubuntu:18.04

RUN adduser --disabled-password --gecos '' ubuntu
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl nodejs npm yarn python3-pip
RUN pip3 install awscli --upgrade 
RUN echo 'export PATH=~/.local/bin:$PATH' >> /etc/bash.bashrc
