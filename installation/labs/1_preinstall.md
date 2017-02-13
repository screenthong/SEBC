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
