#!/bin/sh
set -xe

# Set up sys requirements
sysctl -w vm.max_map_count=262144

usermod -a -G docker vagrant # allow default user to do stuff

mkdir -p .docker
mkdir -p /mnt/data

sudo chmod -R +r .docker/
sudo chown -R 1000:1000 /mnt/data
