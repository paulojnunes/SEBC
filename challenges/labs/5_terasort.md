```
[root@challengesebc2 ~]# yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort /user/neymar/tgen640 /user/neymar/tsort640m
17/03/10 09:35:52 INFO terasort.TeraSort: starting
17/03/10 09:35:53 INFO hdfs.DFSClient: Created token for neymar: HDFS_DELEGATION_TOKEN owner=neymar@PAULOJNUNES.ES, renewer=yarn, realUser=, issueDate=1489138553888, maxDate=1489743353888, sequenceNumber=1, masterKeyId=2 on 10.0.1.4:8020
17/03/10 09:35:53 INFO security.TokenCache: Got dt for hdfs://challengesebc1.xpand.com:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 10.0.1.4:8020, Ident: (token for neymar: HDFS_DELEGATION_TOKEN owner=neymar@PAULOJNUNES.ES, renewer=yarn, realUser=, issueDate=1489138553888, maxDate=1489743353888, sequenceNumber=1, masterKeyId=2)
17/03/10 09:35:54 INFO input.FileInputFormat: Total input paths to process : 8
Spent 438ms computing base-splits.
Spent 5ms computing TeraScheduler splits.
Computing input splits took 445ms
Sampling 10 splits of 392
Making 8 from 100000 sampled records
Computing parititions took 690ms
Spent 1138ms computing partitions.
17/03/10 09:35:54 INFO client.RMProxy: Connecting to ResourceManager at challengesebc1.xpand.com/10.0.1.4:8032
17/03/10 09:35:55 INFO mapreduce.JobSubmitter: number of splits:392
17/03/10 09:35:55 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1489138363766_0001
17/03/10 09:35:55 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 10.0.1.4:8020, Ident: (token for neymar: HDFS_DELEGATION_TOKEN owner=neymar@PAULOJNUNES.ES, renewer=yarn, realUser=, issueDate=1489138553888, maxDate=1489743353888, sequenceNumber=1, masterKeyId=2)
17/03/10 09:35:56 INFO impl.YarnClientImpl: Submitted application application_1489138363766_0001
17/03/10 09:35:56 INFO mapreduce.Job: The url to track the job: http://challengesebc1.xpand.com:8088/proxy/application_1489138363766_0001/
17/03/10 09:35:56 INFO mapreduce.Job: Running job: job_1489138363766_0001
17/03/10 09:36:04 INFO mapreduce.Job: Job job_1489138363766_0001 running in uber mode : false
17/03/10 09:36:04 INFO mapreduce.Job:  map 0% reduce 0%
17/03/10 09:36:13 INFO mapreduce.Job:  map 1% reduce 0%
17/03/10 09:36:15 INFO mapreduce.Job:  map 2% reduce 0%
17/03/10 09:36:18 INFO mapreduce.Job:  map 3% reduce 0%
17/03/10 09:36:22 INFO mapreduce.Job:  map 4% reduce 0%
17/03/10 09:36:23 INFO mapreduce.Job:  map 5% reduce 0%
17/03/10 09:36:29 INFO mapreduce.Job:  map 6% reduce 0%
17/03/10 09:36:30 INFO mapreduce.Job:  map 7% reduce 0%
17/03/10 09:36:35 INFO mapreduce.Job:  map 8% reduce 0%
17/03/10 09:36:36 INFO mapreduce.Job:  map 9% reduce 0%
17/03/10 09:36:40 INFO mapreduce.Job:  map 10% reduce 0%
17/03/10 09:36:43 INFO mapreduce.Job:  map 11% reduce 0%
17/03/10 09:36:46 INFO mapreduce.Job:  map 12% reduce 0%
17/03/10 09:36:49 INFO mapreduce.Job:  map 13% reduce 0%
17/03/10 09:36:51 INFO mapreduce.Job:  map 14% reduce 0%
17/03/10 09:36:54 INFO mapreduce.Job:  map 15% reduce 0%
17/03/10 09:36:57 INFO mapreduce.Job:  map 16% reduce 0%
17/03/10 09:36:59 INFO mapreduce.Job:  map 17% reduce 0%
17/03/10 09:37:04 INFO mapreduce.Job:  map 18% reduce 0%
17/03/10 09:37:05 INFO mapreduce.Job:  map 19% reduce 0%
17/03/10 09:37:10 INFO mapreduce.Job:  map 20% reduce 0%
17/03/10 09:37:11 INFO mapreduce.Job:  map 21% reduce 0%
17/03/10 09:37:16 INFO mapreduce.Job:  map 22% reduce 0%
17/03/10 09:37:17 INFO mapreduce.Job:  map 23% reduce 0%
17/03/10 09:37:22 INFO mapreduce.Job:  map 24% reduce 0%
17/03/10 09:37:23 INFO mapreduce.Job:  map 25% reduce 0%
17/03/10 09:37:26 INFO mapreduce.Job:  map 26% reduce 0%
17/03/10 09:37:29 INFO mapreduce.Job:  map 27% reduce 0%
17/03/10 09:37:31 INFO mapreduce.Job:  map 28% reduce 0%
17/03/10 09:37:35 INFO mapreduce.Job:  map 29% reduce 0%
17/03/10 09:37:36 INFO mapreduce.Job:  map 30% reduce 0%
17/03/10 09:37:40 INFO mapreduce.Job:  map 31% reduce 0%
17/03/10 09:37:42 INFO mapreduce.Job:  map 32% reduce 0%
17/03/10 09:37:46 INFO mapreduce.Job:  map 33% reduce 0%
17/03/10 09:37:48 INFO mapreduce.Job:  map 34% reduce 0%
17/03/10 09:37:52 INFO mapreduce.Job:  map 35% reduce 0%
17/03/10 09:37:54 INFO mapreduce.Job:  map 36% reduce 0%
17/03/10 09:37:58 INFO mapreduce.Job:  map 37% reduce 0%
17/03/10 09:37:59 INFO mapreduce.Job:  map 38% reduce 0%
17/03/10 09:38:04 INFO mapreduce.Job:  map 39% reduce 0%
17/03/10 09:38:05 INFO mapreduce.Job:  map 40% reduce 0%
17/03/10 09:38:09 INFO mapreduce.Job:  map 41% reduce 0%
17/03/10 09:38:11 INFO mapreduce.Job:  map 42% reduce 0%
17/03/10 09:38:14 INFO mapreduce.Job:  map 43% reduce 0%
17/03/10 09:38:17 INFO mapreduce.Job:  map 44% reduce 0%
17/03/10 09:38:19 INFO mapreduce.Job:  map 45% reduce 0%
17/03/10 09:38:23 INFO mapreduce.Job:  map 46% reduce 0%
17/03/10 09:38:24 INFO mapreduce.Job:  map 47% reduce 0%
17/03/10 09:38:29 INFO mapreduce.Job:  map 48% reduce 0%
17/03/10 09:38:30 INFO mapreduce.Job:  map 49% reduce 0%
17/03/10 09:38:34 INFO mapreduce.Job:  map 50% reduce 0%
17/03/10 09:38:35 INFO mapreduce.Job:  map 51% reduce 0%
17/03/10 09:38:40 INFO mapreduce.Job:  map 52% reduce 0%
17/03/10 09:38:41 INFO mapreduce.Job:  map 53% reduce 0%
17/03/10 09:38:45 INFO mapreduce.Job:  map 54% reduce 0%
17/03/10 09:38:47 INFO mapreduce.Job:  map 55% reduce 0%
17/03/10 09:38:50 INFO mapreduce.Job:  map 56% reduce 0%
17/03/10 09:38:53 INFO mapreduce.Job:  map 57% reduce 0%
17/03/10 09:38:55 INFO mapreduce.Job:  map 58% reduce 0%
17/03/10 09:38:59 INFO mapreduce.Job:  map 59% reduce 0%
17/03/10 09:39:00 INFO mapreduce.Job:  map 60% reduce 0%
17/03/10 09:39:05 INFO mapreduce.Job:  map 61% reduce 0%
17/03/10 09:39:06 INFO mapreduce.Job:  map 62% reduce 0%
17/03/10 09:39:10 INFO mapreduce.Job:  map 63% reduce 0%
17/03/10 09:39:11 INFO mapreduce.Job:  map 64% reduce 0%
17/03/10 09:39:16 INFO mapreduce.Job:  map 65% reduce 0%
17/03/10 09:39:18 INFO mapreduce.Job:  map 66% reduce 0%
17/03/10 09:39:23 INFO mapreduce.Job:  map 67% reduce 0%
17/03/10 09:39:24 INFO mapreduce.Job:  map 68% reduce 0%
17/03/10 09:39:29 INFO mapreduce.Job:  map 69% reduce 0%
17/03/10 09:39:30 INFO mapreduce.Job:  map 70% reduce 0%
17/03/10 09:39:34 INFO mapreduce.Job:  map 71% reduce 0%
17/03/10 09:39:36 INFO mapreduce.Job:  map 72% reduce 0%
17/03/10 09:39:39 INFO mapreduce.Job:  map 73% reduce 0%
17/03/10 09:39:42 INFO mapreduce.Job:  map 74% reduce 0%
17/03/10 09:39:44 INFO mapreduce.Job:  map 75% reduce 0%
17/03/10 09:39:47 INFO mapreduce.Job:  map 76% reduce 0%
17/03/10 09:39:49 INFO mapreduce.Job:  map 77% reduce 0%
17/03/10 09:39:53 INFO mapreduce.Job:  map 78% reduce 0%
17/03/10 09:39:54 INFO mapreduce.Job:  map 79% reduce 0%
17/03/10 09:39:59 INFO mapreduce.Job:  map 80% reduce 0%
17/03/10 09:40:00 INFO mapreduce.Job:  map 81% reduce 0%
17/03/10 09:40:05 INFO mapreduce.Job:  map 82% reduce 0%
17/03/10 09:40:06 INFO mapreduce.Job:  map 83% reduce 0%
17/03/10 09:40:11 INFO mapreduce.Job:  map 83% reduce 3%
17/03/10 09:40:13 INFO mapreduce.Job:  map 84% reduce 3%
17/03/10 09:40:15 INFO mapreduce.Job:  map 84% reduce 14%
17/03/10 09:40:18 INFO mapreduce.Job:  map 85% reduce 14%
17/03/10 09:40:23 INFO mapreduce.Job:  map 86% reduce 14%
17/03/10 09:40:28 INFO mapreduce.Job:  map 87% reduce 14%
17/03/10 09:40:33 INFO mapreduce.Job:  map 88% reduce 15%
17/03/10 09:40:38 INFO mapreduce.Job:  map 89% reduce 15%
17/03/10 09:40:43 INFO mapreduce.Job:  map 90% reduce 15%
17/03/10 09:40:48 INFO mapreduce.Job:  map 91% reduce 15%
17/03/10 09:40:53 INFO mapreduce.Job:  map 92% reduce 15%
17/03/10 09:40:58 INFO mapreduce.Job:  map 93% reduce 15%
17/03/10 09:41:00 INFO mapreduce.Job:  map 93% reduce 16%
17/03/10 09:41:03 INFO mapreduce.Job:  map 94% reduce 16%
17/03/10 09:41:08 INFO mapreduce.Job:  map 95% reduce 16%
17/03/10 09:41:12 INFO mapreduce.Job:  map 96% reduce 16%
17/03/10 09:41:17 INFO mapreduce.Job:  map 97% reduce 16%
17/03/10 09:41:21 INFO mapreduce.Job:  map 98% reduce 16%
17/03/10 09:41:26 INFO mapreduce.Job:  map 99% reduce 16%
17/03/10 09:41:30 INFO mapreduce.Job:  map 99% reduce 17%
17/03/10 09:41:31 INFO mapreduce.Job:  map 100% reduce 17%
17/03/10 09:41:35 INFO mapreduce.Job:  map 100% reduce 21%
17/03/10 09:41:36 INFO mapreduce.Job:  map 100% reduce 33%
17/03/10 09:41:38 INFO mapreduce.Job:  map 100% reduce 34%
17/03/10 09:41:39 INFO mapreduce.Job:  map 100% reduce 37%
17/03/10 09:41:40 INFO mapreduce.Job:  map 100% reduce 41%
17/03/10 09:41:41 INFO mapreduce.Job:  map 100% reduce 47%
17/03/10 09:41:42 INFO mapreduce.Job:  map 100% reduce 51%
17/03/10 09:41:43 INFO mapreduce.Job:  map 100% reduce 53%
17/03/10 09:41:44 INFO mapreduce.Job:  map 100% reduce 58%
17/03/10 09:41:45 INFO mapreduce.Job:  map 100% reduce 64%
17/03/10 09:41:46 INFO mapreduce.Job:  map 100% reduce 67%
17/03/10 09:41:47 INFO mapreduce.Job:  map 100% reduce 75%
17/03/10 09:41:48 INFO mapreduce.Job:  map 100% reduce 79%
17/03/10 09:41:49 INFO mapreduce.Job:  map 100% reduce 81%
17/03/10 09:41:50 INFO mapreduce.Job:  map 100% reduce 83%
17/03/10 09:41:51 INFO mapreduce.Job:  map 100% reduce 86%
17/03/10 09:41:52 INFO mapreduce.Job:  map 100% reduce 88%
17/03/10 09:41:53 INFO mapreduce.Job:  map 100% reduce 90%
17/03/10 09:41:54 INFO mapreduce.Job:  map 100% reduce 93%
17/03/10 09:41:56 INFO mapreduce.Job:  map 100% reduce 96%
17/03/10 09:41:57 INFO mapreduce.Job:  map 100% reduce 97%
17/03/10 09:41:59 INFO mapreduce.Job:  map 100% reduce 98%
17/03/10 09:42:00 INFO mapreduce.Job:  map 100% reduce 100%
17/03/10 09:42:01 INFO mapreduce.Job: Job job_1489138363766_0001 completed successfully
17/03/10 09:42:02 INFO mapreduce.Job: Counters: 49
        File System Counters
                FILE: Number of bytes read=2930775952
                FILE: Number of bytes written=5845130698
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=6553652528
                HDFS: Number of bytes written=6553600000
                HDFS: Number of read operations=1200
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=16
        Job Counters
                Launched map tasks=392
                Launched reduce tasks=8
                Data-local map tasks=392
                Total time spent by all maps in occupied slots (ms)=1815027
                Total time spent by all reduces in occupied slots (ms)=507963
                Total time spent by all map tasks (ms)=1815027
                Total time spent by all reduce tasks (ms)=507963
                Total vcore-seconds taken by all map tasks=1815027
                Total vcore-seconds taken by all reduce tasks=507963
                Total megabyte-seconds taken by all map tasks=1858587648
                Total megabyte-seconds taken by all reduce tasks=520154112
        Map-Reduce Framework
                Map input records=65536000
                Map output records=65536000
                Map output bytes=6684672000
                Map output materialized bytes=2864396440
                Input split bytes=52528
                Combine input records=0
                Combine output records=0
                Reduce input groups=65536000
                Reduce shuffle bytes=2864396440
                Reduce input records=65536000
                Reduce output records=65536000
                Spilled Records=131072000
                Shuffled Maps =3136
                Failed Shuffles=0
                Merged Map outputs=3136
                GC time elapsed (ms)=23369
                CPU time spent (ms)=991640
                Physical memory (bytes) snapshot=188161495040
                Virtual memory (bytes) snapshot=626310651904
                Total committed heap usage (bytes)=220155871232
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=6553600000
        File Output Format Counters
                Bytes Written=6553600000
17/03/10 09:42:02 INFO terasort.TeraSort: done
```