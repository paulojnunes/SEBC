```
[root@challengesebc2 ~]# yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 5 5
Number of Maps  = 5
Samples per Map = 5
Wrote input for Map #0
Wrote input for Map #1
Wrote input for Map #2
Wrote input for Map #3
Wrote input for Map #4
Starting Job
17/03/10 09:42:47 INFO client.RMProxy: Connecting to ResourceManager at challengesebc1.xpand.com/10.0.1.4:8032
17/03/10 09:42:48 INFO hdfs.DFSClient: Created token for ronaldo: HDFS_DELEGATION_TOKEN owner=ronaldo@PAULOJNUNES.ES, renewer=yarn, realUser=, issueDate=1489138968155, maxDate=1489743768155, sequenceNumber=2, masterKeyId=2 on 10.0.1.4:8020
17/03/10 09:42:48 INFO security.TokenCache: Got dt for hdfs://challengesebc1.xpand.com:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 10.0.1.4:8020, Ident: (token for ronaldo: HDFS_DELEGATION_TOKEN owner=ronaldo@PAULOJNUNES.ES, renewer=yarn, realUser=, issueDate=1489138968155, maxDate=1489743768155, sequenceNumber=2, masterKeyId=2)
17/03/10 09:42:48 INFO input.FileInputFormat: Total input paths to process : 5
17/03/10 09:42:48 INFO mapreduce.JobSubmitter: number of splits:5
17/03/10 09:42:48 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1489138363766_0002
17/03/10 09:42:48 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 10.0.1.4:8020, Ident: (token for ronaldo: HDFS_DELEGATION_TOKEN owner=ronaldo@PAULOJNUNES.ES, renewer=yarn, realUser=, issueDate=1489138968155, maxDate=1489743768155, sequenceNumber=2, masterKeyId=2)
17/03/10 09:42:49 INFO impl.YarnClientImpl: Submitted application application_1489138363766_0002
17/03/10 09:42:49 INFO mapreduce.Job: The url to track the job: http://challengesebc1.xpand.com:8088/proxy/application_1489138363766_0002/
17/03/10 09:42:49 INFO mapreduce.Job: Running job: job_1489138363766_0002
17/03/10 09:42:56 INFO mapreduce.Job: Job job_1489138363766_0002 running in uber mode : false
17/03/10 09:42:56 INFO mapreduce.Job:  map 0% reduce 0%
17/03/10 09:43:02 INFO mapreduce.Job:  map 40% reduce 0%
17/03/10 09:43:03 INFO mapreduce.Job:  map 60% reduce 0%
17/03/10 09:43:04 INFO mapreduce.Job:  map 100% reduce 0%
17/03/10 09:43:10 INFO mapreduce.Job:  map 100% reduce 100%
17/03/10 09:43:10 INFO mapreduce.Job: Job job_1489138363766_0002 completed successfully
17/03/10 09:43:10 INFO mapreduce.Job: Counters: 49
        File System Counters
                FILE: Number of bytes read=51
                FILE: Number of bytes written=744607
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=1410
                HDFS: Number of bytes written=215
                HDFS: Number of read operations=23
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=3
        Job Counters
                Launched map tasks=5
                Launched reduce tasks=1
                Data-local map tasks=5
                Total time spent by all maps in occupied slots (ms)=23804
                Total time spent by all reduces in occupied slots (ms)=3055
                Total time spent by all map tasks (ms)=23804
                Total time spent by all reduce tasks (ms)=3055
                Total vcore-seconds taken by all map tasks=23804
                Total vcore-seconds taken by all reduce tasks=3055
                Total megabyte-seconds taken by all map tasks=24375296
                Total megabyte-seconds taken by all reduce tasks=3128320
        Map-Reduce Framework
                Map input records=5
                Map output records=10
                Map output bytes=90
                Map output materialized bytes=167
                Input split bytes=820
                Combine input records=0
                Combine output records=0
                Reduce input groups=2
                Reduce shuffle bytes=167
                Reduce input records=10
                Reduce output records=0
                Spilled Records=20
                Shuffled Maps =5
                Failed Shuffles=0
                Merged Map outputs=5
                GC time elapsed (ms)=174
                CPU time spent (ms)=3360
                Physical memory (bytes) snapshot=2486071296
                Virtual memory (bytes) snapshot=9426821120
                Total committed heap usage (bytes)=2843738112
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=590
        File Output Format Counters
                Bytes Written=97
Job Finished in 22.604 seconds
Estimated value of Pi is 3.68000000000000000000
```