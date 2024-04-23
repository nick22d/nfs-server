# A bash script for configuring a Linux NFS server

An NFS (Network File System) server is a system that shares files and directories with other computers on a network using the NFS protocol. NFS allows clients to access files over a network as if they were located on the client's local filesystem.

NFS is commonly used in environments where multiple computers need to access shared files or data, such as in office networks, academic institutions, or data centers. It provides a convenient way to share data between computers running different operating systems, as long as they support the [NFS protocol](https://www.rfc-editor.org/rfc/rfc7530).

![Diagram](images/diagram.png)

## Prerequisites

- This script assumes that your Linux server runs systemd. If your system uses a different init process (i.e. Upstart or SysVInit), this bash script will not work.

- This script assumes that network connectivity between your NFS server and clients has already been established.

- You have been granted root-level permissions for the commands included in the script.

## Usage 

To deploy this solution, please follow the instructions below.

**1)** Clone the repository locally:

```
git clone https://github.com/nick22d/nfs-server.git
```

**2)** Navigate into the repository:

```
cd nfs-server/
```

**3)** Make the script executable:

```
sudo chmod +x ./nfs-server.sh
```

**4)** Run the script:

```
sudo ./nfs-server.sh
```


## Access the NFS resources from the client

**1)** Create a folder under the /mnt directory:

```
sudo mkdir /mnt/network_shares
```

**2)** Install the nfs-common package:

```
sudo apt install nfs-common -y
```

**3)** Mount the shared resources of the NFS server to the client's directory:

```
sudo mount <ip of server>:/mnt/nfs_shares /mnt/network_shares
```

**4)** Verify that the shared resources can be accessed:

```
ls /mnt/network_shares
```
