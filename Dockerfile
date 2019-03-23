FROM jenkins/jnlp-slave

USER root

# setup ansible
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main" >> /etc/apt/sources.list  && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt-get update && \
    apt-get install -y software-properties-common \
    ansible

# setup tools
RUN apt-get install -y python-pip \
    python-pexpect \
    git

# USER jenkins