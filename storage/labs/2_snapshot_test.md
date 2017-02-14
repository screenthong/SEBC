## create
```
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -mkdir /tmp/precious
[hdfs@ip-172-31-1-71 ~]$ hadoop dfsadmin -allowSnapshot /tmp/precious
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Allowing snaphot on /tmp/precious succeeded
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -ls /tmp/precious
Found 1 items
-rw-r--r--   3 hdfs supergroup      20480 2017-02-14 05:03 /tmp/precious/sebc.tar
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -createSnapshot /tmp/precious sebc-hdfs-test
Created snapshot /tmp/precious/.snapshot/sebc-hdfs-test
```
## delete
```
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -ls /tmp/precious
Found 1 items
-rw-r--r--   3 hdfs supergroup      20480 2017-02-14 05:03 /tmp/precious/sebc.tar
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -rm -f /tmp/precious
rm: `/tmp/precious': Is a directory
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -rm -f -r /tmp/precious
rm: Failed to move to trash: hdfs://ip-172-31-8-59.ap-southeast-1.compute.internal:8020/tmp/precious: The directory /tmp/precious cannot be deleted since /tmp/precious is snapshottable and already has snapshots
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -rm -f -r /tmp/precious/sebc.tar
17/02/14 05:08:06 INFO fs.TrashPolicyDefault: Moved: 'hdfs://ip-172-31-8-59.ap-southeast-1.compute.internal:8020/tmp/precious/sebc.tar' to trash at: hdfs://ip-172-31-8-59.ap-southeast-1.compute.internal:8020/user/hdfs/.Trash/Current/tmp/precious/sebc.tar
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -ls /tmp/precious
[hdfs@ip-172-31-1-71 ~]$
```

## recovery
```
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -ls /tmp/precious
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -lsr /tmp/precious/.snapshot
lsr: DEPRECATED: Please use 'ls -R' instead.
drwxr-xr-x   - hdfs supergroup          0 2017-02-14 05:05 /tmp/precious/.snapshot/sebc-hdfs-test
-rw-r--r--   3 hdfs supergroup      20480 2017-02-14 05:03 /tmp/precious/.snapshot/sebc-hdfs-test/sebc.tar
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -cp -ptopax /tmp/precious/.snapshot/sebc-hdfs-test/sebc.tar /tmp/precious
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -ls /tmp/precious
Found 1 items
-rw-r--r--   3 hdfs supergroup      20480 2017-02-14 05:03 /tmp/precious/sebc.tar

```
