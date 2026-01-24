#!/bin/sh

echo "Removing clab directory..."
sudo rm -rf clab-lab01_static_routing

echo "Destroying lab..."
sudo containerlab destroy -t lab.clab.yml --runtime podman

echo "Done!"