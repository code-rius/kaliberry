#!/bin/bash

# Parameters
# USER_NAME=$1
# USER_PASSWORD=$2
# HOST_RSA_PUB=$3
# HOST_LOCAL_IP=$4
# HOST_LOCAL_PORT=$5
# HOST_PUBLIC_IP=$6
# HOST_PUBLIC_PORT=$7

KALI_IP=192.168.1.129
KALI_USERNAME=root
KALI_PASSWORD=toor

USER_NAME=test1
USER_PASSWORD=verySecurePassword
HOST_RSA_PUB=
HOST_LOCAL_IP=$4
HOST_LOCAL_PORT=$5
HOST_PUBLIC_IP=$6
HOST_PUBLIC_PORT=$7

# Update software to contain newest packages
apt update -y
apt upgrade -y
apt dist-upgrade -y

# Create a user with sudo priviledges
useradd $USERNAME -m
usermod -aG sudo $USERNAME



# Remove default ssh keys
mkdir -pv /etc/ssh/old_ssh_host && mv /etc/ssh/ssh_host_* $_
dpkg-reconfigure openssh-server
# Create .ssh directory
su $USERNAME -c "mkdir -vp ~/.ssh"

# Create ssh keys
su $USERNAME -c "ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''"
su $USERNAME -c ""
su $USERNAME -c ""
ssh-keyscan -p 37581 -H 88.223.50.72 >> ~/.ssh/known_hosts

su $USERNAME -c ""
