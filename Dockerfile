FROM jenkins
# if we want to install via apt
USER root


RUN apt-get update && apt-get install -y python-pip libffi-dev libssl-dev python-dev rsync python-virtualenv
RUN pip install --upgrade cffi setuptools flake8

RUN pip install --upgrade ansible


COPY id_rsa /root/id_rsa
COPY ansible.cfg /etc/ansible/ansible.cfg
