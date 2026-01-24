#!/bin/sh

echo "Removing clab directory..."
sudo rm -rf clab-lab02_connected_routes

echo "Destroying lab..."
sudo containerlab destroy -t lab.clab.yml --runtime podman

echo "Done!"
