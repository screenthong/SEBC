## The full teragen command
```
time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Ddfs.blocksize=67108864 -Dmapreduce.job.maps=8 51200000 tgen512m
```

## The output of the time command
```
[root@ip-172-31-13-35 ~]# su - raffles
[raffles@ip-172-31-13-35 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -D mapreduce.job.maps=6 -D dfs.block.size=33554432 51200000 tgen512m
17/02/17 01:51:15 INFO Configuration.deprecation: session.id is deprecated. Instead, use dfs.metrics.session-id
17/02/17 01:51:15 INFO jvm.JvmMetrics: Initializing JVM Metrics with processName=JobTracker, sessionId=
17/02/17 01:51:15 INFO terasort.TeraGen: Generating 51200000 using 1
17/02/17 01:51:15 INFO mapreduce.JobSubmitter: number of splits:1
17/02/17 01:51:15 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize
17/02/17 01:51:15 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_local1654779655_0001
17/02/17 01:51:15 INFO mapreduce.Job: The url to track the job: http://localhost:8080/
17/02/17 01:51:15 INFO mapreduce.Job: Running job: job_local1654779655_0001
17/02/17 01:51:15 INFO mapred.LocalJobRunner: OutputCommitter set in config null
17/02/17 01:51:15 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/02/17 01:51:15 INFO mapred.LocalJobRunner: OutputCommitter is org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter
17/02/17 01:51:15 INFO mapred.LocalJobRunner: Waiting for map tasks
17/02/17 01:51:15 INFO mapred.LocalJobRunner: Starting task: attempt_local1654779655_0001_m_000000_0
17/02/17 01:51:15 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/02/17 01:51:15 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
17/02/17 01:51:15 INFO mapred.MapTask: Processing split: org.apache.hadoop.examples.terasort.TeraGen$RangeInputFormat$RangeInputSplit@2ca2a3e1
17/02/17 01:51:16 INFO mapreduce.Job: Job job_local1654779655_0001 running in uber mode : false
17/02/17 01:51:16 INFO mapreduce.Job:  map 0% reduce 0%
17/02/17 01:51:27 INFO mapred.LocalJobRunner: map > map
17/02/17 01:51:28 INFO mapreduce.Job:  map 20% reduce 0%
17/02/17 01:51:33 INFO mapred.LocalJobRunner: map > map
17/02/17 01:51:34 INFO mapreduce.Job:  map 31% reduce 0%
17/02/17 01:51:39 INFO mapred.LocalJobRunner: map > map
17/02/17 01:51:40 INFO mapreduce.Job:  map 42% reduce 0%
17/02/17 01:51:45 INFO mapred.LocalJobRunner: map > map
17/02/17 01:51:46 INFO mapreduce.Job:  map 49% reduce 0%
17/02/17 01:51:51 INFO mapred.LocalJobRunner: map > map
17/02/17 01:51:52 INFO mapreduce.Job:  map 55% reduce 0%
17/02/17 01:51:57 INFO mapred.LocalJobRunner: map > map
17/02/17 01:51:58 INFO mapreduce.Job:  map 64% reduce 0%
17/02/17 01:52:03 INFO mapred.LocalJobRunner: map > map
17/02/17 01:52:04 INFO mapreduce.Job:  map 75% reduce 0%
17/02/17 01:52:09 INFO mapred.LocalJobRunner: map > map
17/02/17 01:52:10 INFO mapreduce.Job:  map 84% reduce 0%
17/02/17 01:52:15 INFO mapred.LocalJobRunner: map > map
17/02/17 01:52:16 INFO mapreduce.Job:  map 90% reduce 0%
17/02/17 01:52:21 INFO mapred.LocalJobRunner: map > map
17/02/17 01:52:22 INFO mapreduce.Job:  map 97% reduce 0%
17/02/17 01:52:24 INFO mapred.LocalJobRunner: map > map
17/02/17 01:52:24 INFO mapred.Task: Task:attempt_local1654779655_0001_m_000000_0 is done. And is in the process of committing
17/02/17 01:52:24 INFO mapred.LocalJobRunner: map > map
17/02/17 01:52:24 INFO mapred.Task: Task attempt_local1654779655_0001_m_000000_0 is allowed to commit now
17/02/17 01:52:24 INFO output.FileOutputCommitter: Saved output of task 'attempt_local1654779655_0001_m_000000_0' to hdfs://ip-172-31-13-35.ap-southeast-1.compute.internal:8020/user/raffles/tgen512m/_temporary/0/task_local1654779655_0001_m_000000
17/02/17 01:52:24 INFO mapred.LocalJobRunner: map
17/02/17 01:52:24 INFO mapred.Task: Task 'attempt_local1654779655_0001_m_000000_0' done.
17/02/17 01:52:24 INFO mapred.LocalJobRunner: Finishing task: attempt_local1654779655_0001_m_000000_0
17/02/17 01:52:24 INFO mapred.LocalJobRunner: map task executor complete.
17/02/17 01:52:24 INFO mapreduce.Job:  map 100% reduce 0%
17/02/17 01:52:24 INFO mapreduce.Job: Job job_local1654779655_0001 completed successfully
17/02/17 01:52:24 INFO mapreduce.Job: Counters: 21
        File System Counters
                FILE: Number of bytes read=276323
                FILE: Number of bytes written=573205
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=0
                HDFS: Number of bytes written=5120000000
                HDFS: Number of read operations=4
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=3
        Map-Reduce Framework
                Map input records=51200000
                Map output records=51200000
                Input split bytes=83
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=660
                Total committed heap usage (bytes)=237502464
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=109963291816450258
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=5120000000

```
## The command and output of hdfs dfs -ls /user/raffles/tgen512m

```
real    1m12.839s
user    1m8.430s
sys     0m4.545s


```
## Show how many blocks are linked to this directory

```
[raffles@ip-172-31-13-35 ~]$ hdfs fsck -blocks /user/raffles/tgen512m
Connecting to namenode via http://ip-172-31-13-35.ap-southeast-1.compute.internal:50070
FSCK started by raffles (auth:SIMPLE) from /172.31.13.35 for path /user/raffles/tgen512m at Fri Feb 17 01:52:42 EST 2017
..Status: HEALTHY
 Total size:    5120000000 B
 Total dirs:    1
 Total files:   2
 Total symlinks:                0
 Total blocks (validated):      153 (avg. block size 33464052 B)
 Minimally replicated blocks:   153 (100.0 %)
 Over-replicated blocks:        0 (0.0 %)
 Under-replicated blocks:       0 (0.0 %)
 Mis-replicated blocks:         0 (0.0 %)
 Default replication factor:    3
 Average block replication:     3.0
 Corrupt blocks:                0
 Missing replicas:              0 (0.0 %)
 Number of data-nodes:          4
 Number of racks:               1
FSCK ended at Fri Feb 17 01:52:42 EST 2017 in 6 milliseconds


The filesystem under path '/user/raffles/tgen512m' is HEALTHY
```

