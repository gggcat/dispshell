# dispshell

## About

This is immutable and DISPosable SHELL container.

## local - dispshell python base image

1. docker-compose build local
1. docker-compose run local

## mine - dispshell/python user image

1. docker-compose build mine
1. docker-compose run mine

## sshd - dispshell/python sshd image

1. ssh-keygen -t rsa -b 2048 -f .ssh/id_rsa_user
1. docker-compose build sshd
1. docker-compose up sshd
1. ssh 127.0.0.1 -p 10022 -i ./.ssh/id_rsa_user

## node - dispshell node base image

1. docker-compose build node
1. docker-compose run node
