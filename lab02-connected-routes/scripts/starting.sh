#!/bin/sh

echo "Deploying and checking"

echo "### Starting containerlab...###"
sudo containerlab deploy lab.clab.yml --runtime podman

echo "### Checking Podman containers ###"
sudo podman ps
