## List the cloud provider you are using (AWS, GCE, Azure, other)
```
AWS 
region : singapore
AMI ID : RHEL-6.5_GA-x86_64-9-Hourly2 (ami-c483df96)
OS :   
```
## List the Linux release you have chosen

```
[ec2-user@ip-172-31-13-35 ~]$ more /etc/redhat-release
Red Hat Enterprise Linux Server release 6.5 (Santiago)

SEBC-CM 172.31.13.35 i-01e1e4c308855bfab ec2-54-169-166-89.ap-southeast-1.compute.amazonaws.com 54.169.166.89
SEBC-DB 172.31.8.245 i-0326f283ab4bdcc8c ec2-52-77-238-149.ap-southeast-1.compute.amazonaws.com 52.77.238.149
SEBC-DN1 172.31.12.119 i-097bcf1ec228d673f ec2-54-169-124-62.ap-southeast-1.compute.amazonaws.com 54.169.124.62
SEBC-DN2 172.31.14.149 i-0d5d660c6faff8c83 ec2-54-251-189-40.ap-southeast-1.compute.amazonaws.com 54.251.189.40
SEBC-DN3 172.31.7.202 i-0fcb5420b3cbd6992 ec2-54-169-154-75.ap-southeast-1.compute.amazonaws.com 54.169.154.75
```

Show that the disk space on each node is at least 30 GB

```
[ec2-user@ip-172-31-13-35 ~]$ sudo su
[root@ip-172-31-13-35 ec2-user]# df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  2.3G   26G   9% /
tmpfs           7.3G     0  7.3G   0% /dev/shm
/dev/xvdb        30G  172M   28G   1% /data

[root@ip-172-31-8-245 ec2-user]# df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  2.3G   26G   9% /
tmpfs           7.3G     0  7.3G   0% /dev/shm
/dev/xvdb        30G  172M   28G   1% /data

[root@ip-172-31-12-119 ec2-user]# df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  2.3G   26G   9% /
tmpfs           7.3G     0  7.3G   0% /dev/shm
/dev/xvdb        30G  172M   28G   1% /data

[root@ip-172-31-14-149 ec2-user]# df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  2.3G   26G   9% /
tmpfs           7.3G     0  7.3G   0% /dev/shm
/dev/xvdb        30G  172M   28G   1% /data

[root@ip-172-31-7-202 ec2-user]# df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  2.3G   26G   9% /
tmpfs           7.3G     0  7.3G   0% /dev/shm
/dev/xvdb        30G  172M   28G   1% /data

```

## List the command and output for yum repolist enabled
```
[root@ip-172-31-13-35 ec2-user]# yum repolist enabled
Loaded plugins: amazon-id, rhui-lb, security
rhui-REGION-client-config-server-6                       | 2.9 kB     00:00
rhui-REGION-client-config-server-6/primary_db            | 5.9 kB     00:00
rhui-REGION-rhel-server-releases                         | 3.5 kB     00:00
rhui-REGION-rhel-server-releases/primary_db              |  52 MB     00:00
rhui-REGION-rhel-server-releases-optional                | 3.5 kB     00:00
rhui-REGION-rhel-server-releases-optional/primary_db     | 5.1 MB     00:00
rhui-REGION-rhel-server-rh-common                        | 3.8 kB     00:00
rhui-REGION-rhel-server-rh-common/primary_db             |  65 kB     00:00
rhui-REGION-rhel-server-rhscl                            | 3.5 kB     00:00
rhui-REGION-rhel-server-rhscl/primary_db                 | 3.7 MB     00:00
repo id                                   repo name                       status
rhui-REGION-client-config-server-6        Red Hat Update Infrastructure 2      6
rhui-REGION-rhel-server-releases          Red Hat Enterprise Linux Server 18,459
rhui-REGION-rhel-server-releases-optional Red Hat Enterprise Linux Server 10,501
rhui-REGION-rhel-server-rh-common         Red Hat Enterprise Linux Server    129
rhui-REGION-rhel-server-rhscl             Red Hat Enterprise Linux Server  7,509
repolist: 36,604
```

groupadd -g 2000 shops
groupadd -g 3000 hotels
useradd -m -u 2000 -g shops raffles
useradd -m -u 3000 -g hotels fullerton

## List the /etc/passwd entries for raffles and fullerton in your setup file
```
[root@ip-172-31-13-35 ec2-user]# grep raffles /etc/passwd
raffles:x:2000:2000::/home/raffles:/bin/bash
[root@ip-172-31-13-35 ec2-user]# grep fullerton /etc/passwd
fullerton:x:3000:3000::/home/fullerton:/bin/bash
```

## List the /etc/group entries for hotels and shops in your setup file
```
[root@ip-172-31-13-35 ec2-user]# grep shops /etc/group
shops:x:2000:
[root@ip-172-31-13-35 ec2-user]# grep hotels /etc/group
hotels:x:3000:
```
