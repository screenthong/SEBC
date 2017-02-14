teragen 10GB

```
[screenthong@ip-172-31-8-59 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.ja                                                  r teragen -Dmapreduce.job.maps=4 -Ddfs.blocksize=33554432 100000000 teragen_output
17/02/14 04:31:44 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-59.ap-southeast-1.compute.internal                                                  /172.31.8.59:8032
17/02/14 04:31:45 INFO terasort.TeraSort: Generating 100000000 using 4
17/02/14 04:31:45 INFO mapreduce.JobSubmitter: number of splits:4
17/02/14 04:31:45 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487059492405_0004
17/02/14 04:31:45 INFO impl.YarnClientImpl: Submitted application application_1487059492405_0004
17/02/14 04:31:45 INFO mapreduce.Job: The url to track the job: http://ip-172-31-8-59.ap-southeast-1.compute.internal:                                                  8088/proxy/application_1487059492405_0004/
17/02/14 04:31:45 INFO mapreduce.Job: Running job: job_1487059492405_0004
17/02/14 04:31:53 INFO mapreduce.Job: Job job_1487059492405_0004 running in uber mode : false
17/02/14 04:31:53 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 04:32:05 INFO mapreduce.Job:  map 4% reduce 0%
17/02/14 04:32:06 INFO mapreduce.Job:  map 6% reduce 0%
17/02/14 04:32:08 INFO mapreduce.Job:  map 7% reduce 0%
17/02/14 04:32:09 INFO mapreduce.Job:  map 9% reduce 0%
17/02/14 04:32:12 INFO mapreduce.Job:  map 10% reduce 0%
17/02/14 04:32:15 INFO mapreduce.Job:  map 12% reduce 0%
17/02/14 04:32:18 INFO mapreduce.Job:  map 14% reduce 0%
17/02/14 04:32:21 INFO mapreduce.Job:  map 16% reduce 0%
17/02/14 04:32:24 INFO mapreduce.Job:  map 17% reduce 0%
17/02/14 04:32:27 INFO mapreduce.Job:  map 19% reduce 0%
17/02/14 04:32:30 INFO mapreduce.Job:  map 21% reduce 0%
17/02/14 04:32:33 INFO mapreduce.Job:  map 24% reduce 0%
17/02/14 04:32:36 INFO mapreduce.Job:  map 25% reduce 0%
17/02/14 04:32:39 INFO mapreduce.Job:  map 27% reduce 0%
17/02/14 04:32:42 INFO mapreduce.Job:  map 29% reduce 0%
17/02/14 04:32:45 INFO mapreduce.Job:  map 31% reduce 0%
17/02/14 04:32:48 INFO mapreduce.Job:  map 32% reduce 0%
17/02/14 04:32:51 INFO mapreduce.Job:  map 34% reduce 0%
17/02/14 04:32:54 INFO mapreduce.Job:  map 36% reduce 0%
17/02/14 04:32:57 INFO mapreduce.Job:  map 37% reduce 0%
17/02/14 04:33:00 INFO mapreduce.Job:  map 39% reduce 0%
17/02/14 04:33:03 INFO mapreduce.Job:  map 41% reduce 0%
17/02/14 04:33:07 INFO mapreduce.Job:  map 43% reduce 0%
17/02/14 04:33:10 INFO mapreduce.Job:  map 45% reduce 0%
17/02/14 04:33:13 INFO mapreduce.Job:  map 47% reduce 0%
17/02/14 04:33:16 INFO mapreduce.Job:  map 48% reduce 0%
17/02/14 04:33:19 INFO mapreduce.Job:  map 50% reduce 0%
17/02/14 04:33:22 INFO mapreduce.Job:  map 51% reduce 0%
17/02/14 04:33:25 INFO mapreduce.Job:  map 53% reduce 0%
17/02/14 04:33:28 INFO mapreduce.Job:  map 54% reduce 0%
17/02/14 04:33:31 INFO mapreduce.Job:  map 56% reduce 0%
17/02/14 04:33:34 INFO mapreduce.Job:  map 57% reduce 0%
17/02/14 04:33:37 INFO mapreduce.Job:  map 60% reduce 0%
17/02/14 04:33:40 INFO mapreduce.Job:  map 61% reduce 0%
17/02/14 04:33:43 INFO mapreduce.Job:  map 63% reduce 0%
17/02/14 04:33:46 INFO mapreduce.Job:  map 64% reduce 0%
17/02/14 04:33:49 INFO mapreduce.Job:  map 66% reduce 0%
17/02/14 04:33:52 INFO mapreduce.Job:  map 69% reduce 0%
17/02/14 04:33:55 INFO mapreduce.Job:  map 70% reduce 0%
17/02/14 04:33:58 INFO mapreduce.Job:  map 72% reduce 0%
17/02/14 04:34:01 INFO mapreduce.Job:  map 73% reduce 0%
17/02/14 04:34:04 INFO mapreduce.Job:  map 75% reduce 0%
17/02/14 04:34:14 INFO mapreduce.Job:  map 77% reduce 0%
17/02/14 04:34:17 INFO mapreduce.Job:  map 79% reduce 0%
17/02/14 04:34:20 INFO mapreduce.Job:  map 80% reduce 0%
17/02/14 04:34:23 INFO mapreduce.Job:  map 81% reduce 0%
17/02/14 04:34:26 INFO mapreduce.Job:  map 82% reduce 0%
17/02/14 04:34:29 INFO mapreduce.Job:  map 84% reduce 0%
17/02/14 04:34:32 INFO mapreduce.Job:  map 85% reduce 0%
17/02/14 04:34:35 INFO mapreduce.Job:  map 86% reduce 0%
17/02/14 04:34:38 INFO mapreduce.Job:  map 87% reduce 0%
17/02/14 04:34:41 INFO mapreduce.Job:  map 88% reduce 0%
17/02/14 04:34:44 INFO mapreduce.Job:  map 90% reduce 0%
17/02/14 04:34:47 INFO mapreduce.Job:  map 91% reduce 0%
17/02/14 04:34:50 INFO mapreduce.Job:  map 92% reduce 0%
17/02/14 04:34:53 INFO mapreduce.Job:  map 94% reduce 0%
17/02/14 04:34:56 INFO mapreduce.Job:  map 95% reduce 0%
17/02/14 04:34:59 INFO mapreduce.Job:  map 96% reduce 0%
17/02/14 04:35:02 INFO mapreduce.Job:  map 98% reduce 0%
17/02/14 04:35:05 INFO mapreduce.Job:  map 99% reduce 0%
17/02/14 04:35:08 INFO mapreduce.Job:  map 100% reduce 0%
17/02/14 04:35:08 INFO mapreduce.Job: Job job_1487059492405_0004 completed successfully
17/02/14 04:35:09 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=491226
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=344
                HDFS: Number of bytes written=10000000000
                HDFS: Number of read operations=16
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=8
        Job Counters
                Launched map tasks=4
                Other local map tasks=4
                Total time spent by all maps in occupied slots (ms)=450686
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=450686
                Total vcore-seconds taken by all map tasks=450686
                Total megabyte-seconds taken by all map tasks=461502464
        Map-Reduce Framework
                Map input records=100000000
                Map output records=100000000
                Input split bytes=344
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=2369
                CPU time spent (ms)=163110
                Physical memory (bytes) snapshot=964349952
                Virtual memory (bytes) snapshot=6712426496
                Total committed heap usage (bytes)=610795520
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=214760662691937609
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=10000000000

real    3m28.752s
user    0m7.372s
sys     0m0.884s

[screenthong@ip-172-31-8-59 ~]$ hadoop fs -ls -h
Found 2 items
drwx------   - screenthong supergroup          0 2017-02-14 04:35 .staging
drwxr-xr-x   - screenthong supergroup          0 2017-02-14 04:35 teragen_output
[screenthong@ip-172-31-8-59 ~]$ hadoop fs -ls -h teragen_output
Found 5 items
-rw-r--r--   3 screenthong supergroup          0 2017-02-14 04:35 teragen_output/_SUCCESS
-rw-r--r--   3 screenthong supergroup      2.3 G 2017-02-14 04:34 teragen_output/part-m-00000
-rw-r--r--   3 screenthong supergroup      2.3 G 2017-02-14 04:34 teragen_output/part-m-00001
-rw-r--r--   3 screenthong supergroup      2.3 G 2017-02-14 04:34 teragen_output/part-m-00002
-rw-r--r--   3 screenthong supergroup      2.3 G 2017-02-14 04:35 teragen_output/part-m-00003
```

## terasort
```
[screenthong@ip-172-31-8-59 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar terasort teragen_output terasort_output
17/02/14 04:46:11 INFO terasort.TeraSort: starting
17/02/14 04:46:13 INFO input.FileInputFormat: Total input paths to process : 4
Spent 397ms computing base-splits.
Spent 7ms computing TeraScheduler splits.
Computing input splits took 405ms
Sampling 10 splits of 300
Making 2 from 100000 sampled records
Computing parititions took 1373ms
Spent 1781ms computing partitions.
17/02/14 04:46:15 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-59.ap-southeast-1.compute.internal/172.31.8.59:8032
17/02/14 04:46:16 INFO mapreduce.JobSubmitter: number of splits:300
17/02/14 04:46:16 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487059492405_0006
17/02/14 04:46:16 INFO impl.YarnClientImpl: Submitted application application_1487059492405_0006
17/02/14 04:46:16 INFO mapreduce.Job: The url to track the job: http://ip-172-31-8-59.ap-southeast-1.compute.internal:8088/proxy/application_1487059492405_0006/
17/02/14 04:46:16 INFO mapreduce.Job: Running job: job_1487059492405_0006
17/02/14 04:46:25 INFO mapreduce.Job: Job job_1487059492405_0006 running in uber mode : false
17/02/14 04:46:25 INFO mapreduce.Job:  map 0% reduce 0%
17/02/14 04:46:35 INFO mapreduce.Job:  map 1% reduce 0%
17/02/14 04:46:42 INFO mapreduce.Job:  map 2% reduce 0%
17/02/14 04:46:50 INFO mapreduce.Job:  map 3% reduce 0%
17/02/14 04:46:58 INFO mapreduce.Job:  map 4% reduce 0%
17/02/14 04:47:06 INFO mapreduce.Job:  map 5% reduce 0%
17/02/14 04:47:14 INFO mapreduce.Job:  map 6% reduce 0%
17/02/14 04:47:22 INFO mapreduce.Job:  map 7% reduce 0%
17/02/14 04:47:30 INFO mapreduce.Job:  map 8% reduce 0%
17/02/14 04:47:38 INFO mapreduce.Job:  map 9% reduce 0%
17/02/14 04:47:46 INFO mapreduce.Job:  map 10% reduce 0%
17/02/14 04:47:54 INFO mapreduce.Job:  map 11% reduce 0%
17/02/14 04:48:02 INFO mapreduce.Job:  map 12% reduce 0%
17/02/14 04:48:10 INFO mapreduce.Job:  map 13% reduce 0%
17/02/14 04:48:18 INFO mapreduce.Job:  map 14% reduce 0%
17/02/14 04:48:26 INFO mapreduce.Job:  map 15% reduce 0%
17/02/14 04:48:35 INFO mapreduce.Job:  map 16% reduce 0%
17/02/14 04:48:43 INFO mapreduce.Job:  map 17% reduce 0%
17/02/14 04:48:51 INFO mapreduce.Job:  map 18% reduce 0%
17/02/14 04:48:59 INFO mapreduce.Job:  map 19% reduce 0%
17/02/14 04:49:07 INFO mapreduce.Job:  map 20% reduce 0%
17/02/14 04:49:15 INFO mapreduce.Job:  map 21% reduce 0%
17/02/14 04:49:23 INFO mapreduce.Job:  map 22% reduce 0%
17/02/14 04:49:31 INFO mapreduce.Job:  map 23% reduce 0%
17/02/14 04:49:39 INFO mapreduce.Job:  map 24% reduce 0%
17/02/14 04:49:47 INFO mapreduce.Job:  map 25% reduce 0%
17/02/14 04:49:55 INFO mapreduce.Job:  map 26% reduce 0%
17/02/14 04:50:03 INFO mapreduce.Job:  map 27% reduce 0%
17/02/14 04:50:11 INFO mapreduce.Job:  map 28% reduce 0%
17/02/14 04:50:19 INFO mapreduce.Job:  map 29% reduce 0%
17/02/14 04:50:27 INFO mapreduce.Job:  map 30% reduce 0%
17/02/14 04:50:35 INFO mapreduce.Job:  map 31% reduce 0%
17/02/14 04:50:43 INFO mapreduce.Job:  map 32% reduce 0%
17/02/14 04:50:51 INFO mapreduce.Job:  map 33% reduce 0%
17/02/14 04:50:59 INFO mapreduce.Job:  map 34% reduce 0%
17/02/14 04:51:07 INFO mapreduce.Job:  map 35% reduce 0%
17/02/14 04:51:15 INFO mapreduce.Job:  map 36% reduce 0%
17/02/14 04:51:23 INFO mapreduce.Job:  map 37% reduce 0%
17/02/14 04:51:31 INFO mapreduce.Job:  map 38% reduce 0%
17/02/14 04:51:39 INFO mapreduce.Job:  map 39% reduce 0%
17/02/14 04:51:47 INFO mapreduce.Job:  map 40% reduce 0%
17/02/14 04:51:55 INFO mapreduce.Job:  map 41% reduce 0%
17/02/14 04:52:04 INFO mapreduce.Job:  map 42% reduce 0%
17/02/14 04:52:11 INFO mapreduce.Job:  map 43% reduce 0%
17/02/14 04:52:20 INFO mapreduce.Job:  map 44% reduce 0%
17/02/14 04:52:28 INFO mapreduce.Job:  map 45% reduce 0%
17/02/14 04:52:35 INFO mapreduce.Job:  map 46% reduce 0%
17/02/14 04:52:44 INFO mapreduce.Job:  map 47% reduce 0%
17/02/14 04:52:52 INFO mapreduce.Job:  map 48% reduce 0%
17/02/14 04:53:00 INFO mapreduce.Job:  map 49% reduce 0%
17/02/14 04:53:08 INFO mapreduce.Job:  map 50% reduce 0%
17/02/14 04:53:16 INFO mapreduce.Job:  map 51% reduce 0%
17/02/14 04:53:23 INFO mapreduce.Job:  map 52% reduce 0%
17/02/14 04:53:32 INFO mapreduce.Job:  map 53% reduce 0%
17/02/14 04:53:39 INFO mapreduce.Job:  map 54% reduce 0%
17/02/14 04:53:48 INFO mapreduce.Job:  map 55% reduce 0%
17/02/14 04:53:55 INFO mapreduce.Job:  map 56% reduce 0%
17/02/14 04:54:04 INFO mapreduce.Job:  map 57% reduce 0%
17/02/14 04:54:11 INFO mapreduce.Job:  map 58% reduce 0%
17/02/14 04:54:19 INFO mapreduce.Job:  map 59% reduce 0%
17/02/14 04:54:28 INFO mapreduce.Job:  map 60% reduce 0%
17/02/14 04:54:35 INFO mapreduce.Job:  map 61% reduce 0%
17/02/14 04:54:44 INFO mapreduce.Job:  map 62% reduce 0%
17/02/14 04:54:51 INFO mapreduce.Job:  map 63% reduce 0%
17/02/14 04:54:59 INFO mapreduce.Job:  map 64% reduce 0%
17/02/14 04:55:08 INFO mapreduce.Job:  map 65% reduce 0%
17/02/14 04:55:15 INFO mapreduce.Job:  map 66% reduce 0%
17/02/14 04:55:23 INFO mapreduce.Job:  map 67% reduce 0%
17/02/14 04:55:31 INFO mapreduce.Job:  map 68% reduce 0%
17/02/14 04:55:39 INFO mapreduce.Job:  map 69% reduce 0%
17/02/14 04:55:48 INFO mapreduce.Job:  map 70% reduce 0%
17/02/14 04:55:56 INFO mapreduce.Job:  map 71% reduce 0%
17/02/14 04:56:05 INFO mapreduce.Job:  map 72% reduce 0%
17/02/14 04:56:12 INFO mapreduce.Job:  map 73% reduce 0%
17/02/14 04:56:20 INFO mapreduce.Job:  map 74% reduce 0%
17/02/14 04:56:28 INFO mapreduce.Job:  map 75% reduce 0%
17/02/14 04:56:36 INFO mapreduce.Job:  map 76% reduce 0%
17/02/14 04:56:45 INFO mapreduce.Job:  map 77% reduce 0%
17/02/14 04:56:52 INFO mapreduce.Job:  map 78% reduce 0%
17/02/14 04:57:00 INFO mapreduce.Job:  map 79% reduce 0%
17/02/14 04:57:08 INFO mapreduce.Job:  map 80% reduce 0%
17/02/14 04:57:16 INFO mapreduce.Job:  map 81% reduce 0%
17/02/14 04:57:25 INFO mapreduce.Job:  map 82% reduce 0%
17/02/14 04:57:28 INFO mapreduce.Job:  map 82% reduce 3%
17/02/14 04:57:34 INFO mapreduce.Job:  map 82% reduce 4%
17/02/14 04:57:37 INFO mapreduce.Job:  map 82% reduce 5%
17/02/14 04:57:40 INFO mapreduce.Job:  map 83% reduce 6%
17/02/14 04:57:43 INFO mapreduce.Job:  map 83% reduce 8%
17/02/14 04:57:46 INFO mapreduce.Job:  map 83% reduce 9%
17/02/14 04:57:49 INFO mapreduce.Job:  map 84% reduce 10%
17/02/14 04:57:52 INFO mapreduce.Job:  map 84% reduce 11%
17/02/14 04:57:58 INFO mapreduce.Job:  map 84% reduce 12%
17/02/14 04:58:01 INFO mapreduce.Job:  map 84% reduce 13%
17/02/14 04:58:04 INFO mapreduce.Job:  map 85% reduce 14%
17/02/14 04:58:13 INFO mapreduce.Job:  map 86% reduce 14%
17/02/14 04:58:28 INFO mapreduce.Job:  map 87% reduce 14%
17/02/14 04:58:31 INFO mapreduce.Job:  map 87% reduce 15%
17/02/14 04:58:37 INFO mapreduce.Job:  map 88% reduce 15%
17/02/14 04:58:52 INFO mapreduce.Job:  map 89% reduce 15%
17/02/14 04:59:03 INFO mapreduce.Job:  map 90% reduce 15%
17/02/14 04:59:16 INFO mapreduce.Job:  map 91% reduce 15%
17/02/14 04:59:28 INFO mapreduce.Job:  map 92% reduce 15%
17/02/14 04:59:41 INFO mapreduce.Job:  map 93% reduce 15%
17/02/14 04:59:45 INFO mapreduce.Job:  map 93% reduce 16%
17/02/14 04:59:52 INFO mapreduce.Job:  map 94% reduce 16%
17/02/14 05:00:05 INFO mapreduce.Job:  map 95% reduce 16%
17/02/14 05:00:16 INFO mapreduce.Job:  map 96% reduce 16%
17/02/14 05:00:29 INFO mapreduce.Job:  map 97% reduce 16%
17/02/14 05:00:40 INFO mapreduce.Job:  map 98% reduce 16%
17/02/14 05:00:52 INFO mapreduce.Job:  map 99% reduce 16%
17/02/14 05:00:57 INFO mapreduce.Job:  map 99% reduce 17%
17/02/14 05:01:03 INFO mapreduce.Job:  map 100% reduce 17%
17/02/14 05:01:09 INFO mapreduce.Job:  map 100% reduce 32%
17/02/14 05:01:12 INFO mapreduce.Job:  map 100% reduce 34%
17/02/14 05:01:14 INFO mapreduce.Job:  map 100% reduce 36%
17/02/14 05:01:15 INFO mapreduce.Job:  map 100% reduce 37%
17/02/14 05:01:17 INFO mapreduce.Job:  map 100% reduce 38%
17/02/14 05:01:20 INFO mapreduce.Job:  map 100% reduce 39%
17/02/14 05:01:21 INFO mapreduce.Job:  map 100% reduce 40%
17/02/14 05:01:24 INFO mapreduce.Job:  map 100% reduce 41%
17/02/14 05:01:27 INFO mapreduce.Job:  map 100% reduce 42%
17/02/14 05:01:30 INFO mapreduce.Job:  map 100% reduce 44%
17/02/14 05:01:33 INFO mapreduce.Job:  map 100% reduce 46%
17/02/14 05:01:36 INFO mapreduce.Job:  map 100% reduce 47%
17/02/14 05:01:39 INFO mapreduce.Job:  map 100% reduce 49%
17/02/14 05:01:42 INFO mapreduce.Job:  map 100% reduce 51%
17/02/14 05:01:45 INFO mapreduce.Job:  map 100% reduce 53%
17/02/14 05:01:49 INFO mapreduce.Job:  map 100% reduce 54%
17/02/14 05:01:51 INFO mapreduce.Job:  map 100% reduce 55%
17/02/14 05:01:54 INFO mapreduce.Job:  map 100% reduce 56%
17/02/14 05:01:55 INFO mapreduce.Job:  map 100% reduce 57%
17/02/14 05:01:57 INFO mapreduce.Job:  map 100% reduce 58%
17/02/14 05:01:58 INFO mapreduce.Job:  map 100% reduce 59%
17/02/14 05:02:01 INFO mapreduce.Job:  map 100% reduce 60%
17/02/14 05:02:03 INFO mapreduce.Job:  map 100% reduce 61%
17/02/14 05:02:04 INFO mapreduce.Job:  map 100% reduce 78%
17/02/14 05:02:07 INFO mapreduce.Job:  map 100% reduce 79%
17/02/14 05:02:10 INFO mapreduce.Job:  map 100% reduce 80%
17/02/14 05:02:12 INFO mapreduce.Job:  map 100% reduce 81%
17/02/14 05:02:15 INFO mapreduce.Job:  map 100% reduce 82%
17/02/14 05:02:16 INFO mapreduce.Job:  map 100% reduce 83%
17/02/14 05:02:19 INFO mapreduce.Job:  map 100% reduce 84%
17/02/14 05:02:22 INFO mapreduce.Job:  map 100% reduce 85%
17/02/14 05:02:24 INFO mapreduce.Job:  map 100% reduce 86%
17/02/14 05:02:27 INFO mapreduce.Job:  map 100% reduce 87%
17/02/14 05:02:28 INFO mapreduce.Job:  map 100% reduce 88%
17/02/14 05:02:31 INFO mapreduce.Job:  map 100% reduce 89%
17/02/14 05:02:34 INFO mapreduce.Job:  map 100% reduce 90%
17/02/14 05:02:40 INFO mapreduce.Job:  map 100% reduce 91%
17/02/14 05:02:43 INFO mapreduce.Job:  map 100% reduce 92%
17/02/14 05:02:49 INFO mapreduce.Job:  map 100% reduce 93%
17/02/14 05:02:52 INFO mapreduce.Job:  map 100% reduce 94%
17/02/14 05:02:58 INFO mapreduce.Job:  map 100% reduce 95%
17/02/14 05:03:04 INFO mapreduce.Job:  map 100% reduce 96%
17/02/14 05:03:07 INFO mapreduce.Job:  map 100% reduce 97%
17/02/14 05:03:15 INFO mapreduce.Job:  map 100% reduce 98%
17/02/14 05:03:18 INFO mapreduce.Job:  map 100% reduce 99%
17/02/14 05:03:24 INFO mapreduce.Job:  map 100% reduce 100%
17/02/14 05:03:25 INFO mapreduce.Job: Job job_1487059492405_0006 completed successfully
17/02/14 05:03:25 INFO mapreduce.Job: Counters: 50
        File System Counters
                FILE: Number of bytes read=4499903131
                FILE: Number of bytes written=8912547842
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=10000050400
                HDFS: Number of bytes written=10000000000
                HDFS: Number of read operations=906
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=4
        Job Counters
                Launched map tasks=300
                Launched reduce tasks=2
                Data-local map tasks=298
                Rack-local map tasks=2
                Total time spent by all maps in occupied slots (ms)=2067372
                Total time spent by all reduces in occupied slots (ms)=453306
                Total time spent by all map tasks (ms)=2067372
                Total time spent by all reduce tasks (ms)=453306
                Total vcore-seconds taken by all map tasks=2067372
                Total vcore-seconds taken by all reduce tasks=453306
                Total megabyte-seconds taken by all map tasks=2116988928
                Total megabyte-seconds taken by all reduce tasks=464185344
        Map-Reduce Framework
                Map input records=100000000
                Map output records=100000000
                Map output bytes=10200000000
                Map output materialized bytes=4375120091
                Input split bytes=50400
                Combine input records=0
                Combine output records=0
                Reduce input groups=100000000
                Reduce shuffle bytes=4375120091
                Reduce input records=100000000
                Reduce output records=100000000
                Spilled Records=200000000
                Shuffled Maps =600
                Failed Shuffles=0
                Merged Map outputs=600
                GC time elapsed (ms)=26770
                CPU time spent (ms)=1264990
                Physical memory (bytes) snapshot=153161936896
                Virtual memory (bytes) snapshot=507108700160
                Total committed heap usage (bytes)=144691429376
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=10000000000
        File Output Format Counters
                Bytes Written=10000000000
17/02/14 05:03:25 INFO terasort.TeraSort: done

real    17m14.728s
user    0m12.686s
sys     0m1.360s

```
