FROM jenkins
# if we want to install via apt
USER root


RUN apt-get update && apt-get install -y python-pip libffi-dev libssl-dev python-dev rsync python-virtualenv openvpn
RUN pip install --upgrade cffi setuptools flake8

RUN pip install --upgrade ansible


COPY id_rsa /root/id_rsa
COPY client.ovpn /root/client.ovpn
COPY auth.txt /root/auth.txt
COPY ansible.cfg /etc/ansible/ansible.cfg
