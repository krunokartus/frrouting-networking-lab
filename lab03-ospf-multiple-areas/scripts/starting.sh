#!/bin/sh

echo "Deploying Lab 03: OSPF Multiple Areas + NAT"

echo "### Starting containerlab...###"
sudo containerlab deploy lab.clab.yml --runtime podman

echo "### Checking Podman containers ###"
sudo podman ps
