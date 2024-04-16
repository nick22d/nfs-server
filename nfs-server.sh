#!/bin/bash
### Description: The purpose of this script is to create a Linux NFS server
### Author: Nicholas Doropoulos
### Date of Creation: 16/04/2024

# Install the nfs-server service
sudo apt install nfs-server -y

# Start the NFS service
sudo systemctl start nfs-server.service

# Ensure that the NFS service is automatically started upon boot
sudo systemctl enable nfs-server.service

# Create the folder that will contain the resources to be shared
# The folder containing the shares will be created under the /mnt as a good practice
sudo mkdir /mnt/nfs_shares

# Apply the changes
sudo exportfs -ra

# Restart the NFS service
sudo systemctl restart nfs-server.service