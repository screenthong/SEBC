## 1. Check vm.swappiness on all your nodes
  * sudo sysctl vm.swappiness=1
  * sudo vi /etc/sysctl.conf 
    * add vm.swappiness=1
 
## 2. Show the mount attributes of all volumes 

```
[ec2-user@ip-172-31-8-59 ~]$ mount -v
/dev/xvda1 on / type ext4 (rw)
proc on /proc type proc (rw)
sysfs on /sys type sysfs (rw)
devpts on /dev/pts type devpts (rw,gid=5,mode=620)
tmpfs on /dev/shm type tmpfs (rw,rootcontext="system_u:object_r:tmpfs_t:s0")
none on /proc/sys/fs/binfmt_misc type binfmt_misc (rw)
```

## 3. Show the reserve space of any non-root, ext-based volumes

```
[ec2-user@ip-172-31-8-59 ~]$ sudo fdisk -l

Disk /dev/xvda1: 32.2 GB, 32212254720 bytes
255 heads, 63 sectors/track, 3916 cylinders
Units = cylinders of 16065 * 512 = 8225280 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk identifier: 0x00000000

[ec2-user@ip-172-31-8-59 ~]$ sudo tune2fs -l  /dev/xvda1
tune2fs 1.41.12 (17-May-2010)
Filesystem volume name:   <none>
Last mounted on:          /
Filesystem UUID:          23cecb9c-baa3-4407-9485-ddf59583c3ed
Filesystem magic number:  0xEF53
Filesystem revision #:    1 (dynamic)
Filesystem features:      has_journal ext_attr resize_inode dir_index filetype needs_recovery extent flex_bg sparse_super large_file huge_file uninit_bg dir_nlink extra_isize
Filesystem flags:         signed_directory_hash
Default mount options:    user_xattr acl
Filesystem state:         clean
Errors behavior:          Continue
Filesystem OS type:       Linux
Inode count:              1966080
Block count:              7864320
Reserved block count:     393139
Free blocks:              7231908
Free inodes:              1911109
First block:              0
Block size:               4096
Fragment size:            4096
Reserved GDT blocks:      382
Blocks per group:         32768
Fragments per group:      32768
Inodes per group:         8192
Inode blocks per group:   512
Flex block group size:    16
Filesystem created:       Mon Jun  9 15:02:11 2014
Last mount time:          Mon Feb 13 02:27:22 2017
Last write time:          Tue Jun 10 22:30:54 2014
Mount count:              5
Maximum mount count:      -1
Last checked:             Mon Jun  9 15:02:11 2014
Check interval:           0 (<none>)
Lifetime writes:          3263 MB
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)
First inode:              11
Inode size:               256
Required extra isize:     28
Desired extra isize:      28
Journal inode:            8
Default directory hash:   half_md4
Directory Hash Seed:      0be63e36-131c-4087-93e0-e92e41c4adc5
Journal backup:           inode blocks
```

## 4. Disable transparent hugepages
 * append /etc/grub.conf
  * transparent_hugepage=never   **RHEL 6 disables THP on systems with < 1G of ram

## 5. List your network interface configuration

```
[ec2-user@ip-172-31-8-59 mm]$ sudo ifconfig -a
eth0      Link encap:Ethernet  HWaddr 02:1F:14:61:92:E3
          inet addr:172.31.8.59  Bcast:172.31.15.255  Mask:255.255.240.0
          inet6 addr: fe80::1f:14ff:fe61:92e3/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:1511 errors:0 dropped:0 overruns:0 frame:0
          TX packets:1005 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:112977 (110.3 KiB)  TX bytes:126314 (123.3 KiB)
          Interrupt:247

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 b)  TX bytes:0 (0.0 b)
```

## 6. List forward and reverse host lookups using getent or nslookup

```
[ec2-user@ip-172-31-8-59 mm]$ getent hosts ip-172-31-8-59.ap-southeast-1.compute.internal
172.31.8.59     ip-172-31-8-59.ap-southeast-1.compute.internal
[ec2-user@ip-172-31-8-59 mm]$ nslookup
> 172.31.8.59
Server:         172.31.0.2
Address:        172.31.0.2#53

Non-authoritative answer:
59.8.31.172.in-addr.arpa        name = ip-172-31-8-59.ap-southeast-1.compute.internal.
```

## 7. Show the nscd service is running
```
[ec2-user@ip-172-31-8-59 mm]$ sudo yum install nscd -y
[ec2-user@ip-172-31-8-59 mm]$ sudo service nscd start
Starting nscd:                                             [  OK  ]
[ec2-user@ip-172-31-8-59 mm]$ sudo chkconfig nscd on
[ec2-user@ip-172-31-8-59 mm]$ sudo service nscd status
nscd (pid 1857) is running...
```

## 8. Show the ntpd service is running
```
[ec2-user@ip-172-31-8-59 mm]$ sudo service ntpd start
Starting ntpd:                                             [  OK  ]
[ec2-user@ip-172-31-8-59 mm]$ sudo service ntpd status
ntpd (pid  1953) is running...
```
