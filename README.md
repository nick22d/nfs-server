NFS

===
SERVER-SIDE
===

mkdir /mnt/nfs_resources 

apt install nfs-server -y

/etc/exports

++++/mnt/nfs_resources 10.1.1.0/24(rw)

exportfs -ra

chown -R ...

====
CLIENT-SIDE
====

mkdir /mnt/network_shares

apt install nfs-common -y

mount <ip of server>:/mnt/nfs_resources /mnt/network_shares

ls /mnt/network_shares

chown -R ...