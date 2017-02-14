## teragen 500MB
```
[hdfs@ip-172-31-1-71 ~]$ hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen 10485600 /tmp/screen/source
17/02/14 02:51:32 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-59.ap-southeast-1.compute.internal/172.31.8.59:8032
17/02/14 02:51:33 INFO terasort.TeraSort: Generating 10485600 using 2
17/02/14 02:51:33 INFO mapreduce.JobSubmitter: number of splits:2
17/02/14 02:51:33 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487055387186_0003
17/02/14 02:51:34 INFO impl.YarnClientImpl: Submitted application application_1487055387186_0003
17/02/14 02:51:34 INFO mapreduce.Job: The url to track the job: http://ip-172-31-8-59.ap-southeast-1.compute.internal:8088/proxy/application_1487055387186_0003/
17/02/14 02:51:34 INFO mapreduce.Job: Running job: job_1487055387186_0003
17/02/14 02:51:41 INFO mapreduce.Job: Job job_1487055387186_0003 running in uber mode : false
17/02/14 02:51:41 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 02:51:54 INFO mapreduce.Job:  map 46% reduce 0%
17/02/14 02:51:57 INFO mapreduce.Job:  map 71% reduce 0%
17/02/14 02:52:00 INFO mapreduce.Job:  map 100% reduce 0%
17/02/14 02:52:01 INFO mapreduce.Job: Job job_1487055387186_0003 completed successfully
17/02/14 02:52:01 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=245498
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=167
                HDFS: Number of bytes written=1048560000
                HDFS: Number of read operations=8
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=4
        Job Counters
                Launched map tasks=2
                Other local map tasks=2
                Total time spent by all maps in occupied slots (ms)=34091
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=34091
                Total vcore-seconds taken by all map tasks=34091
                Total megabyte-seconds taken by all map tasks=34909184
        Map-Reduce Framework
                Map input records=10485600
                Map output records=10485600
                Input split bytes=167
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=265
                CPU time spent (ms)=22390
                Physical memory (bytes) snapshot=792649728
                Virtual memory (bytes) snapshot=3367092224
                Total committed heap usage (bytes)=639107072
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=22514631769923738
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=1048560000
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -ls -h /tmp/screen/source
Found 3 items
-rw-r--r--   3 hdfs supergroup          0 2017-02-14 02:51 /tmp/screen/source/_SUCCESS
-rw-r--r--   3 hdfs supergroup    500.0 M 2017-02-14 02:51 /tmp/screen/source/part-m-00000
-rw-r--r--   3 hdfs supergroup    500.0 M 2017-02-14 02:51 /tmp/screen/source/part-m-00001
```

## distcp

```
[hdfs@ip-172-31-1-71 ~]$ hadoop distcp hdfs://ip-172-31-8-59.ap-southeast-1.compute.internal:8020/tmp/screen/source hdfs://ip-172-31-8-59.ap-southeast-1.compute.internal:8020/tmp/screen/distcp
17/02/14 02:56:19 INFO tools.DistCp: Input Options: DistCpOptions{atomicCommit=false, syncFolder=false, deleteMissing=false, ignoreFailures=false, overwrite=false, append=false, useDiff=false, useRdiff=false, fromSnapshot=null, toSnapshot=null, skipCRC=false, blocking=true, numListstatusThreads=0, maxMaps=20, mapBandwidth=100, sslConfigurationFile='null', copyStrategy='uniformsize', preserveStatus=[], preserveRawXattrs=false, atomicWorkPath=null, logPath=null, sourceFileListing=null, sourcePaths=[hdfs://ip-172-31-8-59.ap-southeast-1.compute.internal:8020/tmp/screen/source], targetPath=hdfs://ip-172-31-8-59.ap-southeast-1.compute.internal:8020/tmp/screen/distcp, targetPathExists=true, filtersFile='null'}
17/02/14 02:56:19 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-59.ap-southeast-1.compute.internal/172.31.8.59:8032
17/02/14 02:56:20 INFO tools.SimpleCopyListing: Paths (files+dirs) cnt = 4; dirCnt = 1
17/02/14 02:56:20 INFO tools.SimpleCopyListing: Build file listing completed.
17/02/14 02:56:20 INFO Configuration.deprecation: io.sort.mb is deprecated. Instead, use mapreduce.task.io.sort.mb
17/02/14 02:56:20 INFO Configuration.deprecation: io.sort.factor is deprecated. Instead, use mapreduce.task.io.sort.factor
17/02/14 02:56:20 INFO tools.DistCp: Number of paths in the copy list: 4
17/02/14 02:56:20 INFO tools.DistCp: Number of paths in the copy list: 4
17/02/14 02:56:20 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-59.ap-southeast-1.compute.internal/172.31.8.59:8032
17/02/14 02:56:20 INFO mapreduce.JobSubmitter: number of splits:3
17/02/14 02:56:20 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487055387186_0004
17/02/14 02:56:21 INFO impl.YarnClientImpl: Submitted application application_1487055387186_0004
17/02/14 02:56:21 INFO mapreduce.Job: The url to track the job: http://ip-172-31-8-59.ap-southeast-1.compute.internal:8088/proxy/application_1487055387186_0004/
17/02/14 02:56:21 INFO tools.DistCp: DistCp job-id: job_1487055387186_0004
17/02/14 02:56:21 INFO mapreduce.Job: Running job: job_1487055387186_0004
17/02/14 02:56:29 INFO mapreduce.Job: Job job_1487055387186_0004 running in uber mode : false
17/02/14 02:56:29 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 02:56:37 INFO mapreduce.Job:  map 33% reduce 0%
17/02/14 02:56:42 INFO mapreduce.Job:  map 67% reduce 0%
17/02/14 02:56:44 INFO mapreduce.Job:  map 100% reduce 0%
17/02/14 02:56:48 INFO mapreduce.Job: Job job_1487055387186_0004 completed successfully
17/02/14 02:56:49 INFO mapreduce.Job: Counters: 33
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=377360
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=1048561825
                HDFS: Number of bytes written=1048560000
                HDFS: Number of read operations=57
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=13
        Job Counters
                Launched map tasks=3
                Other local map tasks=3
                Total time spent by all maps in occupied slots (ms)=32773
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=32773
                Total vcore-seconds taken by all map tasks=32773
                Total megabyte-seconds taken by all map tasks=33559552
        Map-Reduce Framework
                Map input records=4
                Map output records=0
                Input split bytes=345
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=363
                CPU time spent (ms)=17990
                Physical memory (bytes) snapshot=937734144
                Virtual memory (bytes) snapshot=5057544192
                Total committed heap usage (bytes)=922222592
        File Input Format Counters
                Bytes Read=1480
        File Output Format Counters
                Bytes Written=0
        org.apache.hadoop.tools.mapred.CopyMapper$Counter
                BYTESCOPIED=1048560000
                BYTESEXPECTED=1048560000
                COPY=4

[hdfs@ip-172-31-1-71 ~]$ hadoop fs -ls -h /tmp/screen/distcp/source
Found 3 items
-rw-r--r--   3 hdfs supergroup          0 2017-02-14 02:56 /tmp/screen/distcp/source/_SUCCESS
-rw-r--r--   3 hdfs supergroup    500.0 M 2017-02-14 02:56 /tmp/screen/distcp/source/part-m-00000
-rw-r--r--   3 hdfs supergroup    500.0 M 2017-02-14 02:56 /tmp/screen/distcp/source/part-m-00001

```

## BDR

```
```

## fsck

```
[hdfs@ip-172-31-1-71 ~]$ hadoop fsck /tmp/screen/source -files -blocks
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Connecting to namenode via http://ip-172-31-8-59.ap-southeast-1.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.31.1.71 for path /tmp/screen/source at Tue Feb 14 03:03:14 EST 2017
/tmp/screen/source <dir>
/tmp/screen/source/_SUCCESS 0 bytes, 0 block(s):  OK

/tmp/screen/source/part-m-00000 524280000 bytes, 4 block(s):  Under replicated BP-106581566-172.31.8.59-1487053970381:blk_1073742716_1892. Target Replicas is 3 but found 1 replica(s).
 Under replicated BP-106581566-172.31.8.59-1487053970381:blk_1073742718_1894. Target Replicas is 3 but found 1 replica(s).
 Under replicated BP-106581566-172.31.8.59-1487053970381:blk_1073742720_1896. Target Replicas is 3 but found 1 replica(s).
 Under replicated BP-106581566-172.31.8.59-1487053970381:blk_1073742722_1898. Target Replicas is 3 but found 1 replica(s).
0. BP-106581566-172.31.8.59-1487053970381:blk_1073742716_1892 len=134217728 Live_repl=1
1. BP-106581566-172.31.8.59-1487053970381:blk_1073742718_1894 len=134217728 Live_repl=1
2. BP-106581566-172.31.8.59-1487053970381:blk_1073742720_1896 len=134217728 Live_repl=1
3. BP-106581566-172.31.8.59-1487053970381:blk_1073742722_1898 len=121626816 Live_repl=1

/tmp/screen/source/part-m-00001 524280000 bytes, 4 block(s):  Under replicated BP-106581566-172.31.8.59-1487053970381:blk_1073742717_1893. Target Replicas is 3 but found 1 replica(s).
 Under replicated BP-106581566-172.31.8.59-1487053970381:blk_1073742719_1895. Target Replicas is 3 but found 1 replica(s).
 Under replicated BP-106581566-172.31.8.59-1487053970381:blk_1073742721_1897. Target Replicas is 3 but found 1 replica(s).
 Under replicated BP-106581566-172.31.8.59-1487053970381:blk_1073742723_1899. Target Replicas is 3 but found 1 replica(s).
0. BP-106581566-172.31.8.59-1487053970381:blk_1073742717_1893 len=134217728 Live_repl=1
1. BP-106581566-172.31.8.59-1487053970381:blk_1073742719_1895 len=134217728 Live_repl=1
2. BP-106581566-172.31.8.59-1487053970381:blk_1073742721_1897 len=134217728 Live_repl=1
3. BP-106581566-172.31.8.59-1487053970381:blk_1073742723_1899 len=121626816 Live_repl=1

Status: HEALTHY
 Total size:    1048560000 B
 Total dirs:    1
 Total files:   3
 Total symlinks:                0
 Total blocks (validated):      8 (avg. block size 131070000 B)
 Minimally replicated blocks:   8 (100.0 %)
 Over-replicated blocks:        0 (0.0 %)
 Under-replicated blocks:       8 (100.0 %)
 Mis-replicated blocks:         0 (0.0 %)
 Default replication factor:    3
 Average block replication:     1.0
 Corrupt blocks:                0
 Missing replicas:              16 (66.666664 %)
 Number of data-nodes:          1
 Number of racks:               1
FSCK ended at Tue Feb 14 03:03:14 EST 2017 in 3 milliseconds


The filesystem under path '/tmp/screen/source' is HEALTHY
[hdfs@ip-172-31-1-71 ~]$ hadoop fsck /tmp/screen/source -files -blocks
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Connecting to namenode via http://ip-172-31-8-59.ap-southeast-1.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.31.1.71 for path /tmp/screen/source at Tue Feb 14 03:23:08 EST 2017
/tmp/screen/source <dir>
/tmp/screen/source/_SUCCESS 0 bytes, 0 block(s):  OK

/tmp/screen/source/part-m-00000 524280000 bytes, 4 block(s):  OK
0. BP-106581566-172.31.8.59-1487053970381:blk_1073742716_1892 len=134217728 Live_repl=3
1. BP-106581566-172.31.8.59-1487053970381:blk_1073742718_1894 len=134217728 Live_repl=3
2. BP-106581566-172.31.8.59-1487053970381:blk_1073742720_1896 len=134217728 Live_repl=3
3. BP-106581566-172.31.8.59-1487053970381:blk_1073742722_1898 len=121626816 Live_repl=3

/tmp/screen/source/part-m-00001 524280000 bytes, 4 block(s):  OK
0. BP-106581566-172.31.8.59-1487053970381:blk_1073742717_1893 len=134217728 Live_repl=3
1. BP-106581566-172.31.8.59-1487053970381:blk_1073742719_1895 len=134217728 Live_repl=3
2. BP-106581566-172.31.8.59-1487053970381:blk_1073742721_1897 len=134217728 Live_repl=3
3. BP-106581566-172.31.8.59-1487053970381:blk_1073742723_1899 len=121626816 Live_repl=3

Status: HEALTHY
 Total size:    1048560000 B
 Total dirs:    1
 Total files:   3
 Total symlinks:                0
 Total blocks (validated):      8 (avg. block size 131070000 B)
 Minimally replicated blocks:   8 (100.0 %)
 Over-replicated blocks:        0 (0.0 %)
 Under-replicated blocks:       0 (0.0 %)
 Mis-replicated blocks:         0 (0.0 %)
 Default replication factor:    3
 Average block replication:     3.0
 Corrupt blocks:                0
 Missing replicas:              0 (0.0 %)
 Number of data-nodes:          4
 Number of racks:               1
FSCK ended at Tue Feb 14 03:23:08 EST 2017 in 3 milliseconds


The filesystem under path '/tmp/screen/source' is HEALTHY
[hdfs@ip-172-31-1-71 ~]$ hadoop fsck /tmp/screen/distcp/source -files -blocks
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Connecting to namenode via http://ip-172-31-8-59.ap-southeast-1.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.31.1.71 for path /tmp/screen/distcp/source at Tue Feb 14 03:23:22 EST 2017
/tmp/screen/distcp/source <dir>
/tmp/screen/distcp/source/_SUCCESS 0 bytes, 0 block(s):  OK

/tmp/screen/distcp/source/part-m-00000 524280000 bytes, 4 block(s):  OK
0. BP-106581566-172.31.8.59-1487053970381:blk_1073742744_1920 len=134217728 Live_repl=3
1. BP-106581566-172.31.8.59-1487053970381:blk_1073742746_1922 len=134217728 Live_repl=3
2. BP-106581566-172.31.8.59-1487053970381:blk_1073742749_1925 len=134217728 Live_repl=3
3. BP-106581566-172.31.8.59-1487053970381:blk_1073742750_1926 len=121626816 Live_repl=3

/tmp/screen/distcp/source/part-m-00001 524280000 bytes, 4 block(s):  OK
0. BP-106581566-172.31.8.59-1487053970381:blk_1073742747_1923 len=134217728 Live_repl=3
1. BP-106581566-172.31.8.59-1487053970381:blk_1073742751_1927 len=134217728 Live_repl=3
2. BP-106581566-172.31.8.59-1487053970381:blk_1073742752_1928 len=134217728 Live_repl=3
3. BP-106581566-172.31.8.59-1487053970381:blk_1073742753_1929 len=121626816 Live_repl=3

Status: HEALTHY
 Total size:    1048560000 B
 Total dirs:    1
 Total files:   3
 Total symlinks:                0
 Total blocks (validated):      8 (avg. block size 131070000 B)
 Minimally replicated blocks:   8 (100.0 %)
 Over-replicated blocks:        0 (0.0 %)
 Under-replicated blocks:       0 (0.0 %)
 Mis-replicated blocks:         0 (0.0 %)
 Default replication factor:    3
 Average block replication:     3.0
 Corrupt blocks:                0
 Missing replicas:              0 (0.0 %)
 Number of data-nodes:          4
 Number of racks:               1
FSCK ended at Tue Feb 14 03:23:22 EST 2017 in 3 milliseconds


The filesystem under path '/tmp/screen/distcp/source' is HEALTHY

```

