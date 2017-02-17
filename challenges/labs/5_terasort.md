## Copy the command and output to challenges/labs/5_terasort.md

## command
```
[root@ip-172-31-8-245 alternatives]# su - raffles
[raffles@ip-172-31-8-245 ~]$ kinit raffles
Password for raffles@SCREENTHONG.SG:
[raffles@ip-172-31-8-245 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_2000
Default principal: raffles@SCREENTHONG.SG

Valid starting     Expires            Service principal
02/17/17 02:40:30  02/18/17 02:40:30  krbtgt/SCREENTHONG.SG@SCREENTHONG.SG
        renew until 02/24/17 02:40:30
[raffles@ip-172-31-8-245 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoo                                                                                        p-0.20-mapreduce/hadoop-examples.jar terasort /user/raffles/tgen512m tsort512m
```

## output
```

17/02/17 02:40:48 INFO terasort.TeraSort: starting
17/02/17 02:40:50 INFO input.FileInputFormat: Total input paths to process : 1
Spent 204ms computing base-splits.
Spent 4ms computing TeraScheduler splits.
Computing input splits took 210ms
Sampling 10 splits of 153
Making 8 from 100000 sampled records
Computing parititions took 1132ms
Spent 1346ms computing partitions.
17/02/17 02:40:51 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-8-245.ap-southeast-1.compute.internal/172.31.8.245:8032
17/02/17 02:40:51 INFO mapreduce.JobSubmitter: number of splits:153
17/02/17 02:40:51 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1487311835806_0001
17/02/17 02:40:52 INFO impl.YarnClientImpl: Submitted application application_1487311835806_0001
17/02/17 02:40:52 INFO mapreduce.Job: The url to track the job: http://ip-172-31-8-245.ap-southeast-1.compute.internal:8088/proxy/application_1487311835806_0001/
17/02/17 02:40:52 INFO mapreduce.Job: Running job: job_1487311835806_0001
17/02/17 02:41:00 INFO mapreduce.Job: Job job_1487311835806_0001 running in uber mode : false
17/02/17 02:41:00 INFO mapreduce.Job:  map 0% reduce 0%
17/02/17 02:41:11 INFO mapreduce.Job:  map 1% reduce 0%
17/02/17 02:41:13 INFO mapreduce.Job:  map 5% reduce 0%
17/02/17 02:41:20 INFO mapreduce.Job:  map 7% reduce 0%
17/02/17 02:41:25 INFO mapreduce.Job:  map 10% reduce 0%
17/02/17 02:41:28 INFO mapreduce.Job:  map 11% reduce 0%
17/02/17 02:41:29 INFO mapreduce.Job:  map 12% reduce 0%
17/02/17 02:41:35 INFO mapreduce.Job:  map 13% reduce 0%
17/02/17 02:41:36 INFO mapreduce.Job:  map 16% reduce 0%
17/02/17 02:41:37 INFO mapreduce.Job:  map 17% reduce 0%
17/02/17 02:41:44 INFO mapreduce.Job:  map 18% reduce 0%
17/02/17 02:41:46 INFO mapreduce.Job:  map 20% reduce 0%
17/02/17 02:41:47 INFO mapreduce.Job:  map 22% reduce 0%
17/02/17 02:41:52 INFO mapreduce.Job:  map 23% reduce 0%
17/02/17 02:41:53 INFO mapreduce.Job:  map 24% reduce 0%
17/02/17 02:41:58 INFO mapreduce.Job:  map 27% reduce 0%
17/02/17 02:42:00 INFO mapreduce.Job:  map 28% reduce 0%
17/02/17 02:42:01 INFO mapreduce.Job:  map 29% reduce 0%
17/02/17 02:42:08 INFO mapreduce.Job:  map 31% reduce 0%
17/02/17 02:42:09 INFO mapreduce.Job:  map 34% reduce 0%
17/02/17 02:42:16 INFO mapreduce.Job:  map 35% reduce 0%
17/02/17 02:42:18 INFO mapreduce.Job:  map 36% reduce 0%
17/02/17 02:42:19 INFO mapreduce.Job:  map 37% reduce 0%
17/02/17 02:42:20 INFO mapreduce.Job:  map 39% reduce 0%
17/02/17 02:42:24 INFO mapreduce.Job:  map 40% reduce 0%
17/02/17 02:42:25 INFO mapreduce.Job:  map 41% reduce 0%
17/02/17 02:42:30 INFO mapreduce.Job:  map 42% reduce 0%
17/02/17 02:42:31 INFO mapreduce.Job:  map 44% reduce 0%
17/02/17 02:42:32 INFO mapreduce.Job:  map 45% reduce 0%
17/02/17 02:42:33 INFO mapreduce.Job:  map 46% reduce 0%
17/02/17 02:42:40 INFO mapreduce.Job:  map 47% reduce 0%
17/02/17 02:42:41 INFO mapreduce.Job:  map 50% reduce 0%
17/02/17 02:42:42 INFO mapreduce.Job:  map 51% reduce 0%
17/02/17 02:42:46 INFO mapreduce.Job:  map 52% reduce 0%
17/02/17 02:42:49 INFO mapreduce.Job:  map 53% reduce 0%
17/02/17 02:42:51 INFO mapreduce.Job:  map 54% reduce 0%
17/02/17 02:42:52 INFO mapreduce.Job:  map 55% reduce 0%
17/02/17 02:42:53 INFO mapreduce.Job:  map 56% reduce 0%
17/02/17 02:42:56 INFO mapreduce.Job:  map 58% reduce 0%
17/02/17 02:43:01 INFO mapreduce.Job:  map 59% reduce 0%
17/02/17 02:43:02 INFO mapreduce.Job:  map 60% reduce 0%
17/02/17 02:43:03 INFO mapreduce.Job:  map 61% reduce 0%
17/02/17 02:43:04 INFO mapreduce.Job:  map 62% reduce 0%
17/02/17 02:43:05 INFO mapreduce.Job:  map 63% reduce 0%
17/02/17 02:43:10 INFO mapreduce.Job:  map 64% reduce 0%
17/02/17 02:43:11 INFO mapreduce.Job:  map 65% reduce 0%
17/02/17 02:43:13 INFO mapreduce.Job:  map 67% reduce 0%
17/02/17 02:43:14 INFO mapreduce.Job:  map 68% reduce 0%
17/02/17 02:43:17 INFO mapreduce.Job:  map 69% reduce 0%
17/02/17 02:43:21 INFO mapreduce.Job:  map 71% reduce 0%
17/02/17 02:43:23 INFO mapreduce.Job:  map 73% reduce 0%
17/02/17 02:43:27 INFO mapreduce.Job:  map 74% reduce 0%
17/02/17 02:43:28 INFO mapreduce.Job:  map 75% reduce 0%
17/02/17 02:43:31 INFO mapreduce.Job:  map 76% reduce 0%
17/02/17 02:43:34 INFO mapreduce.Job:  map 78% reduce 0%
17/02/17 02:43:36 INFO mapreduce.Job:  map 80% reduce 0%
17/02/17 02:43:41 INFO mapreduce.Job:  map 81% reduce 0%
17/02/17 02:43:42 INFO mapreduce.Job:  map 82% reduce 0%
17/02/17 02:43:44 INFO mapreduce.Job:  map 84% reduce 0%
17/02/17 02:43:46 INFO mapreduce.Job:  map 85% reduce 0%
17/02/17 02:43:47 INFO mapreduce.Job:  map 86% reduce 0%
17/02/17 02:43:52 INFO mapreduce.Job:  map 87% reduce 0%
17/02/17 02:43:59 INFO mapreduce.Job:  map 88% reduce 0%
17/02/17 02:44:01 INFO mapreduce.Job:  map 89% reduce 4%
17/02/17 02:44:02 INFO mapreduce.Job:  map 89% reduce 7%
17/02/17 02:44:03 INFO mapreduce.Job:  map 89% reduce 11%
17/02/17 02:44:04 INFO mapreduce.Job:  map 89% reduce 18%
17/02/17 02:44:07 INFO mapreduce.Job:  map 90% reduce 19%
17/02/17 02:44:15 INFO mapreduce.Job:  map 91% reduce 19%
17/02/17 02:44:16 INFO mapreduce.Job:  map 92% reduce 19%
17/02/17 02:44:17 INFO mapreduce.Job:  map 92% reduce 0%
17/02/17 02:44:26 INFO mapreduce.Job:  map 93% reduce 0%
17/02/17 02:44:31 INFO mapreduce.Job:  map 94% reduce 0%
17/02/17 02:44:39 INFO mapreduce.Job:  map 95% reduce 0%
17/02/17 02:44:41 INFO mapreduce.Job:  map 96% reduce 0%
17/02/17 02:44:42 INFO mapreduce.Job:  map 97% reduce 0%
17/02/17 02:44:46 INFO mapreduce.Job:  map 97% reduce 4%
17/02/17 02:44:48 INFO mapreduce.Job:  map 98% reduce 8%
17/02/17 02:44:51 INFO mapreduce.Job:  map 99% reduce 8%
17/02/17 02:44:55 INFO mapreduce.Job:  map 100% reduce 8%
17/02/17 02:44:59 INFO mapreduce.Job:  map 100% reduce 19%
17/02/17 02:45:01 INFO mapreduce.Job:  map 100% reduce 23%
17/02/17 02:45:05 INFO mapreduce.Job:  map 100% reduce 28%
17/02/17 02:45:06 INFO mapreduce.Job:  map 100% reduce 38%
17/02/17 02:45:07 INFO mapreduce.Job:  map 100% reduce 39%
17/02/17 02:45:08 INFO mapreduce.Job:  map 100% reduce 47%
17/02/17 02:45:09 INFO mapreduce.Job:  map 100% reduce 57%
17/02/17 02:45:11 INFO mapreduce.Job:  map 100% reduce 59%
17/02/17 02:45:12 INFO mapreduce.Job:  map 100% reduce 71%
17/02/17 02:45:13 INFO mapreduce.Job:  map 100% reduce 73%
17/02/17 02:45:14 INFO mapreduce.Job:  map 100% reduce 74%
17/02/17 02:45:15 INFO mapreduce.Job:  map 100% reduce 85%
17/02/17 02:45:16 INFO mapreduce.Job:  map 100% reduce 86%
17/02/17 02:45:18 INFO mapreduce.Job:  map 100% reduce 87%
17/02/17 02:45:20 INFO mapreduce.Job:  map 100% reduce 90%
17/02/17 02:45:21 INFO mapreduce.Job:  map 100% reduce 94%
17/02/17 02:45:22 INFO mapreduce.Job:  map 100% reduce 95%
17/02/17 02:45:24 INFO mapreduce.Job:  map 100% reduce 98%
17/02/17 02:45:25 INFO mapreduce.Job:  map 100% reduce 100%
17/02/17 02:45:25 INFO mapreduce.Job: Job job_1487311835806_0001 completed successfully
17/02/17 02:45:25 INFO mapreduce.Job: Counters: 51
        File System Counters
                FILE: Number of bytes read=2284817094
                FILE: Number of bytes written=4545003731
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=5120024327
                HDFS: Number of bytes written=5120000000
                HDFS: Number of read operations=483
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=16
        Job Counters
                Killed reduce tasks=5
                Launched map tasks=153
                Launched reduce tasks=13
                Data-local map tasks=151
                Rack-local map tasks=2
                Total time spent by all maps in occupied slots (ms)=1319983
                Total time spent by all reduces in occupied slots (ms)=413971
                Total time spent by all map tasks (ms)=1319983
                Total time spent by all reduce tasks (ms)=413971
                Total vcore-seconds taken by all map tasks=1319983
                Total vcore-seconds taken by all reduce tasks=413971
                Total megabyte-seconds taken by all map tasks=1351662592
                Total megabyte-seconds taken by all reduce tasks=423906304
        Map-Reduce Framework
                Map input records=51200000
                Map output records=51200000
                Map output bytes=5222400000
                Map output materialized bytes=2239843327
                Input split bytes=24327
                Combine input records=0
                Combine output records=0
                Reduce input groups=51200000
                Reduce shuffle bytes=2239843327
                Reduce input records=51200000
                Reduce output records=51200000
                Spilled Records=102400000
                Shuffled Maps =1224
                Failed Shuffles=0
                Merged Map outputs=1224
                GC time elapsed (ms)=20545
                CPU time spent (ms)=802260
                Physical memory (bytes) snapshot=81625800704
                Virtual memory (bytes) snapshot=252053270528
                Total committed heap usage (bytes)=91663892480
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=5120000000
        File Output Format Counters
                Bytes Written=5120000000
17/02/17 02:45:25 INFO terasort.TeraSort: done

real    4m38.284s
user    0m9.890s
sys     0m0.986s

```
