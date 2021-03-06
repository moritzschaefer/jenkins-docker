# jenkins-docker

A Jenkins Docker configuration which installs some deployment tools and runs an nginx for Jenkins

## Configuration

You need to create the docker volume 'infra_jenkins-home' before running the container:

`docker volume create --name infra_jenkins-home`

This container will contain all the configuration from Jenkins which means you can delete and recreate containers and images without losing your projects and users inside Jenkins.

## Extending

If you miss some tools for Jenkins to deploy your apps properly, either use Jenkins plugins or adapt the Dockerfile to install the tools during image building.

## Run

Simply run

`docker-compose build`
`docker-compose up -d`

and Jenkins will run in a container and publish port 8001 (adjustable in docker-compose.yml)

## private key and VPN

You need to add a private key "id_rsa" file to this directory which can be used to deploy, using ansible, later

To support VPN in deployment, add a "client.ovpn" file along with a key file auth.txt, as described here: https://my.hostvpn.com/knowledgebase/22/Save-Password-in-OpenVPN-for-Automatic-Login.html.
Make sure your ovpn file uses the auth.txt if necessary
