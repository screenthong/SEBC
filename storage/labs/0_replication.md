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
[hdfs@ip-172-31-8-59 ~]$ hadoop distcp webhdfs://52.221.23.84/user/mglaserna/distcpfile /tmp/screenthong
17/02/14 03:58:13 INFO tools.DistCp: Input Options: DistCpOptions{atomicCommit=false, syncFolder=false, deleteMissing=false, ignoreFailures=false, overwrite=false, append=false, useDiff=false, useRdiff=false, fromSnapshot=null, toSnapshot=null, skipCRC=false, blocking=true, numListstatusThreads=0, maxMaps=20, mapBandwidth=100, sslConfigurationFile='null', copyStrategy='uniformsize', preserveStatus=[], preserveRawXattrs=false, atomicWorkPath=null, logPath=null, sourceFileListing=null, sourcePaths=[webhdfs://52.221.23.84/user/mglaserna/distcpfile], targetPath=/tmp/screenthong, targetPathExists=true, filtersFile='null'}
17/02/14 03:58:13 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-59.ap-southeast-1.compute.internal/172.31.8.59:8032
17/02/14 03:58:14 INFO tools.SimpleCopyListing: Paths (files+dirs) cnt = 6; dirCnt = 1
17/02/14 03:58:14 INFO tools.SimpleCopyListing: Build file listing completed.
17/02/14 03:58:14 INFO Configuration.deprecation: io.sort.mb is deprecated. Instead, use mapreduce.task.io.sort.mb
17/02/14 03:58:14 INFO Configuration.deprecation: io.sort.factor is deprecated. Instead, use mapreduce.task.io.sort.factor
17/02/14 03:58:14 INFO tools.DistCp: Number of paths in the copy list: 6
17/02/14 03:58:14 INFO tools.DistCp: Number of paths in the copy list: 6
17/02/14 03:58:14 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-59.ap-southeast-1.compute.internal/172.31.8.59:8032
17/02/14 03:58:15 INFO mapreduce.JobSubmitter: number of splits:5
17/02/14 03:58:15 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487059492405_0002
17/02/14 03:58:15 INFO impl.YarnClientImpl: Submitted application application_1487059492405_0002
17/02/14 03:58:15 INFO mapreduce.Job: The url to track the job: http://ip-172-31-8-59.ap-southeast-1.compute.internal:8088/proxy/application_1487059492405_0002/
17/02/14 03:58:15 INFO tools.DistCp: DistCp job-id: job_1487059492405_0002
17/02/14 03:58:15 INFO mapreduce.Job: Running job: job_1487059492405_0002
17/02/14 03:58:23 INFO mapreduce.Job: Job job_1487059492405_0002 running in uber mode : false
17/02/14 03:58:23 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 03:58:31 INFO mapreduce.Job:  map 40% reduce 0%
17/02/14 03:58:34 INFO mapreduce.Job:  map 60% reduce 0%
17/02/14 03:58:38 INFO mapreduce.Job:  map 80% reduce 0%
17/02/14 03:58:41 INFO mapreduce.Job:  map 100% reduce 0%
17/02/14 03:58:42 INFO mapreduce.Job: Job job_1487059492405_0002 completed successfully
17/02/14 03:58:42 INFO mapreduce.Job: Counters: 40
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=628915
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=2875
                HDFS: Number of bytes written=290000200
                HDFS: Number of read operations=63
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=15
                WEBHDFS: Number of bytes read=290000000
                WEBHDFS: Number of bytes written=0
                WEBHDFS: Number of read operations=12
                WEBHDFS: Number of large read operations=0
                WEBHDFS: Number of write operations=0
        Job Counters
                Launched map tasks=5
                Other local map tasks=5
                Total time spent by all maps in occupied slots (ms)=35974
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=35974
                Total vcore-seconds taken by all map tasks=35974
                Total megabyte-seconds taken by all map tasks=36837376
        Map-Reduce Framework
                Map input records=6
                Map output records=3
                Input split bytes=575
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=332
                CPU time spent (ms)=17750
                Physical memory (bytes) snapshot=1088606208
                Virtual memory (bytes) snapshot=8427937792
                Total committed heap usage (bytes)=1297088512
        File Input Format Counters
                Bytes Read=2300
        File Output Format Counters
                Bytes Written=200
        org.apache.hadoop.tools.mapred.CopyMapper$Counter
                BYTESCOPIED=290000000
                BYTESEXPECTED=290000000
                BYTESSKIPPED=290000000
                COPY=3
                SKIP=3
                
[hdfs@ip-172-31-1-71 ~]$ hadoop fs -ls -h /tmp/screenthong/distcpfile
Found 5 items
-rw-r--r--   3 hdfs supergroup          0 2017-02-14 03:51 /tmp/screenthong/distcpfile/_SUCCESS
-rw-r--r--   3 hdfs supergroup    138.3 M 2017-02-14 03:51 /tmp/screenthong/distcpfile/part-m-00000
-rw-r--r--   3 hdfs supergroup    138.3 M 2017-02-14 03:58 /tmp/screenthong/distcpfile/part-m-00001
-rw-r--r--   3 hdfs supergroup    138.3 M 2017-02-14 03:58 /tmp/screenthong/distcpfile/part-m-00002
-rw-r--r--   3 hdfs supergroup    138.3 M 2017-02-14 03:52 /tmp/screenthong/distcpfile/part-m-00003

```


## fsck source

```
[root@sebnnr1n1 zones]# hadoop fsck  /user/mglaserna/distcpfile  -files -blocks
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Connecting to namenode via http://sebnnr1n1.sebc.com:50070
FSCK started by root (auth:SIMPLE) from /172.31.8.212 for path /user/mglaserna/distcpfile at Tue Feb 14 17:28:26 PHT 2017
/user/mglaserna/distcpfile <dir>
/user/mglaserna/distcpfile/_SUCCESS 0 bytes, 0 block(s):  OK

/user/mglaserna/distcpfile/part-m-00000 145000000 bytes, 2 block(s):  OK
0. BP-1865316537-172.31.8.212-1487005765936:blk_1073757183_16359 len=134217728 Live_repl=3
1. BP-1865316537-172.31.8.212-1487005765936:blk_1073757189_16365 len=10782272 Live_repl=3

/user/mglaserna/distcpfile/part-m-00001 145000000 bytes, 2 block(s):  OK
0. BP-1865316537-172.31.8.212-1487005765936:blk_1073757185_16361 len=134217728 Live_repl=3
1. BP-1865316537-172.31.8.212-1487005765936:blk_1073757187_16363 len=10782272 Live_repl=3

/user/mglaserna/distcpfile/part-m-00002 145000000 bytes, 2 block(s):  OK
0. BP-1865316537-172.31.8.212-1487005765936:blk_1073757184_16360 len=134217728 Live_repl=3
1. BP-1865316537-172.31.8.212-1487005765936:blk_1073757188_16364 len=10782272 Live_repl=3

/user/mglaserna/distcpfile/part-m-00003 145000000 bytes, 2 block(s):  OK
0. BP-1865316537-172.31.8.212-1487005765936:blk_1073757186_16362 len=134217728 Live_repl=3
1. BP-1865316537-172.31.8.212-1487005765936:blk_1073757190_16366 len=10782272 Live_repl=3

Status: HEALTHY
Total size:    580000000 B
Total dirs:    1
Total files:   5
Total symlinks:                0
Total blocks (validated):      8 (avg. block size 72500000 B)
Minimally replicated blocks:   8 (100.0 %)
Over-replicated blocks:        0 (0.0 %)
Under-replicated blocks:       0 (0.0 %)
Mis-replicated blocks:         0 (0.0 %)
Default replication factor:    3
Average block replication:     3.0
Corrupt blocks:                0
Missing replicas:              0 (0.0 %)
Number of data-nodes:          4
Number of racks:               2
```

## fsck target
```
[hdfs@ip-172-31-1-71 ~]$ hadoop fsck /tmp/screenthong/distcpfile -files -blocks
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Connecting to namenode via http://ip-172-31-8-59.ap-southeast-1.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.31.1.71 for path /tmp/screenthong/distcpfile at Tue Feb 14 04:24:11 EST 2017
/tmp/screenthong/distcpfile <dir>
/tmp/screenthong/distcpfile/_SUCCESS 0 bytes, 0 block(s):  OK

/tmp/screenthong/distcpfile/part-m-00000 145000000 bytes, 2 block(s):  OK
0. BP-106581566-172.31.8.59-1487053970381:blk_1073742826_2002 len=134217728 Live_repl=3
1. BP-106581566-172.31.8.59-1487053970381:blk_1073742828_2004 len=10782272 Live_repl=3

/tmp/screenthong/distcpfile/part-m-00001 145000000 bytes, 2 block(s):  OK
0. BP-106581566-172.31.8.59-1487053970381:blk_1073742894_2070 len=134217728 Live_repl=3
1. BP-106581566-172.31.8.59-1487053970381:blk_1073742897_2073 len=10782272 Live_repl=3

/tmp/screenthong/distcpfile/part-m-00002 145000000 bytes, 2 block(s):  OK
0. BP-106581566-172.31.8.59-1487053970381:blk_1073742898_2074 len=134217728 Live_repl=3
1. BP-106581566-172.31.8.59-1487053970381:blk_1073742900_2076 len=10782272 Live_repl=3

/tmp/screenthong/distcpfile/part-m-00003 145000000 bytes, 2 block(s):  OK
0. BP-106581566-172.31.8.59-1487053970381:blk_1073742833_2009 len=134217728 Live_repl=3
1. BP-106581566-172.31.8.59-1487053970381:blk_1073742835_2011 len=10782272 Live_repl=3

Status: HEALTHY
 Total size:    580000000 B
 Total dirs:    1
 Total files:   5
 Total symlinks:                0
 Total blocks (validated):      8 (avg. block size 72500000 B)
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
FSCK ended at Tue Feb 14 04:24:11 EST 2017 in 2 milliseconds


The filesystem under path '/tmp/screenthong/distcpfile' is HEALTHY

```

