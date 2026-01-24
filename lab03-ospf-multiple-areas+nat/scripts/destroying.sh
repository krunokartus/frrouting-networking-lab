#!/bin/sh

echo "Destroying Lab 03: OSPF Multiple Areas + NAT"

echo "### Destroying containerlab...###"
sudo containerlab destroy -t lab.clab.yml --runtime podman

echo "### Cleaning up... ###"
sudo rm -rf clab-lab03_ospf_multiple_areas_nat
