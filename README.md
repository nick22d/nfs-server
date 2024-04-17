# A bash script for configuring a Linux NFS server

An NFS (Network File System) server is a system that shares files and directories with other computers on a network using the NFS protocol. NFS allows clients to access files over a network as if they were located on the client's local filesystem.

NFS is commonly used in environments where multiple computers need to access shared files or data, such as in office networks, academic institutions, or data centers. It provides a convenient way to share data between computers running different operating systems, as long as they support the [NFS protocol](https://www.rfc-editor.org/rfc/rfc7530).

![Diagram](images/diagram.png)

## Prerequisites

This script assumes that your Linux server runs systemd, the "grandparent" process to which most Linux distributions have migrated. If your system uses a different process (i.e. Upstart or SysVInit), this bash script will not work.

You have been granted root-level permissions for the commands included in the script.

## Usage 

To deploy this solution, please follow the instructions below.


====
CLIENT-SIDE
====

mkdir /mnt/network_shares

apt install nfs-common -y

mount <ip of server>:/mnt/nfs_resources /mnt/network_shares

ls /mnt/network_shares

chown -R ...