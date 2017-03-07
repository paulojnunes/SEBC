#After directories creation
#Teragen
yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen 5242880 /paulojnunes

#Opened the namenode and the datanodes ports in the Azure firewall rules for all nodes
#When connecting to my partner louisv1 I tried the distcp with the hdfs protocol and with webhdfs protocol
#It kept resolving the addresses to the private ip address
#We tried adding the name resolution to the /etc/hosts file with no success
#Going to do an intra-cluster distcp

#Intra-cluster Distcp - Using webhdfs in the source directory
[pjdn@xpandsebc1 ~]$ hadoop distcp webhdfs://xpandsebc2.xpand.com/paulojnunes /paulojnunes_destination
17/03/07 11:24:43 INFO tools.DistCp: Input Options: DistCpOptions{atomicCommit=false, syncFolder=false, deleteMissing=false, ignoreFailures=false, overwrite=false, skipCRC=false, blocking=true, numListstatusThreads=0, maxMaps=20, mapBandwidth=100, sslConfigurationFile='null', copyStrategy='uniformsize', preserveStatus=[], preserveRawXattrs=false, atomicWorkPath=null, logPath=null, sourceFileListing=null, sourcePaths=[webhdfs://xpandsebc2.xpand.com/paulojnunes], targetPath=/paulojnunes_destination, targetPathExists=true, filtersFile='null'}
17/03/07 11:24:43 INFO Configuration.deprecation: session.id is deprecated. Instead, use dfs.metrics.session-id
17/03/07 11:24:43 INFO jvm.JvmMetrics: Initializing JVM Metrics with processName=JobTracker, sessionId=
17/03/07 11:24:44 INFO tools.SimpleCopyListing: Paths (files+dirs) cnt = 3; dirCnt = 1
17/03/07 11:24:44 INFO tools.SimpleCopyListing: Build file listing completed.
17/03/07 11:24:44 INFO Configuration.deprecation: io.sort.mb is deprecated. Instead, use mapreduce.task.io.sort.mb
17/03/07 11:24:44 INFO Configuration.deprecation: io.sort.factor is deprecated. Instead, use mapreduce.task.io.sort.factor
17/03/07 11:24:44 INFO tools.DistCp: Number of paths in the copy list: 3
17/03/07 11:24:44 INFO tools.DistCp: Number of paths in the copy list: 3
17/03/07 11:24:44 INFO jvm.JvmMetrics: Cannot initialize JVM Metrics with processName=JobTracker, sessionId= - already initialized
17/03/07 11:24:44 INFO mapreduce.JobSubmitter: number of splits:1
17/03/07 11:24:44 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_local570746438_0001
17/03/07 11:24:44 INFO mapreduce.Job: The url to track the job: http://localhost:8080/
17/03/07 11:24:44 INFO tools.DistCp: DistCp job-id: job_local570746438_0001
17/03/07 11:24:44 INFO mapreduce.Job: Running job: job_local570746438_0001
17/03/07 11:24:44 INFO mapred.LocalJobRunner: OutputCommitter set in config null
17/03/07 11:24:44 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/03/07 11:24:44 INFO mapred.LocalJobRunner: OutputCommitter is org.apache.hadoop.tools.mapred.CopyCommitter
17/03/07 11:24:44 INFO mapred.LocalJobRunner: Waiting for map tasks
17/03/07 11:24:44 INFO mapred.LocalJobRunner: Starting task: attempt_local570746438_0001_m_000000_0
17/03/07 11:24:44 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/03/07 11:24:44 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
17/03/07 11:24:44 INFO mapred.MapTask: Processing split: file:/tmp/hadoop-pjdn/mapred/staging/pjdn45761740/.staging/_distcp947877216/fileList.seq:0+533
17/03/07 11:24:44 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/03/07 11:24:44 INFO mapred.CopyMapper: Copying webhdfs://xpandsebc2.xpand.com/paulojnunes to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes
17/03/07 11:24:44 INFO mapred.CopyMapper: Copying webhdfs://xpandsebc2.xpand.com/paulojnunes/_SUCCESS to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/_SUCCESS
17/03/07 11:24:44 INFO mapred.RetriableFileCopyCommand: Creating temp file: hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/.distcp.tmp.attempt_local570746438_0001_m_000000_0
17/03/07 11:24:44 INFO mapred.CopyMapper: Copying webhdfs://xpandsebc2.xpand.com/paulojnunes/part-m-00000 to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/part-m-00000
17/03/07 11:24:44 INFO mapred.RetriableFileCopyCommand: Creating temp file: hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/.distcp.tmp.attempt_local570746438_0001_m_000000_0
17/03/07 11:24:45 INFO mapreduce.Job: Job job_local570746438_0001 running in uber mode : false
17/03/07 11:24:45 INFO mapreduce.Job:  map 0% reduce 0%
17/03/07 11:24:50 INFO mapred.LocalJobRunner: 84.4% Copying webhdfs://xpandsebc2.xpand.com/paulojnunes/part-m-00000 to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/part-m-00000 [422.0M/500.0M] > map
17/03/07 11:24:51 INFO mapred.LocalJobRunner: 84.4% Copying webhdfs://xpandsebc2.xpand.com/paulojnunes/part-m-00000 to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/part-m-00000 [422.0M/500.0M] > map
17/03/07 11:24:51 INFO mapred.Task: Task:attempt_local570746438_0001_m_000000_0 is done. And is in the process of committing
17/03/07 11:24:51 INFO mapred.LocalJobRunner: 84.4% Copying webhdfs://xpandsebc2.xpand.com/paulojnunes/part-m-00000 to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/part-m-00000 [422.0M/500.0M] > map
17/03/07 11:24:51 INFO mapred.Task: Task attempt_local570746438_0001_m_000000_0 is allowed to commit now
17/03/07 11:24:51 INFO output.FileOutputCommitter: Saved output of task 'attempt_local570746438_0001_m_000000_0' to file:/tmp/hadoop-pjdn/mapred/staging/pjdn45761740/.staging/_distcp947877216/_logs/_temporary/0/task_local570746438_0001_m_000000
17/03/07 11:24:51 INFO mapred.LocalJobRunner: 100.0% Copying webhdfs://xpandsebc2.xpand.com/paulojnunes/part-m-00000 to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/part-m-00000 [500.0M/500.0M]
17/03/07 11:24:51 INFO mapred.Task: Task 'attempt_local570746438_0001_m_000000_0' done.
17/03/07 11:24:51 INFO mapred.LocalJobRunner: Finishing task: attempt_local570746438_0001_m_000000_0
17/03/07 11:24:51 INFO mapred.LocalJobRunner: map task executor complete.
17/03/07 11:24:51 INFO mapred.CopyCommitter: Cleaning up temporary work folder: file:/tmp/hadoop-pjdn/mapred/staging/pjdn45761740/.staging/_distcp947877216
17/03/07 11:24:51 INFO mapreduce.Job:  map 100% reduce 0%
17/03/07 11:24:51 INFO mapreduce.Job: Job job_local570746438_0001 completed successfully
17/03/07 11:24:51 INFO mapreduce.Job: Counters: 28
        File System Counters
                FILE: Number of bytes read=1956729
                FILE: Number of bytes written=2258575
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=0
                HDFS: Number of bytes written=524288000
                HDFS: Number of read operations=18
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=5
                WEBHDFS: Number of bytes read=524288000
                WEBHDFS: Number of bytes written=0
                WEBHDFS: Number of read operations=12
                WEBHDFS: Number of large read operations=0
                WEBHDFS: Number of write operations=0
        Map-Reduce Framework
                Map input records=3
                Map output records=0
                Input split bytes=153
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=70
                Total committed heap usage (bytes)=221773824
        File Input Format Counters
                Bytes Read=569
        File Output Format Counters
                Bytes Written=8
        org.apache.hadoop.tools.mapred.CopyMapper$Counter
                BYTESCOPIED=524288000
                BYTESEXPECTED=524288000
                COPY=3

#Hadoop Distcp using the hdfs protocol
[pjdn@xpandsebc1 ~]$ hadoop distcp hdfs://xpandsebc2.xpand.com/paulojnunes /paulojnunes_destination
17/03/07 11:33:09 INFO tools.DistCp: Input Options: DistCpOptions{atomicCommit=false, syncFolder=false, deleteMissing=false, ignoreFailures=false, overwrite=false, skipCRC=false, blocking=true, numListstatusThreads=0, maxMaps=20, mapBandwidth=100, sslConfigurationFile='null', copyStrategy='uniformsize', preserveStatus=[], preserveRawXattrs=false, atomicWorkPath=null, logPath=null, sourceFileListing=null, sourcePaths=[hdfs://xpandsebc2.xpand.com/paulojnunes], targetPath=/paulojnunes_destination, targetPathExists=true, filtersFile='null'}
17/03/07 11:33:09 INFO Configuration.deprecation: session.id is deprecated. Instead, use dfs.metrics.session-id
17/03/07 11:33:09 INFO jvm.JvmMetrics: Initializing JVM Metrics with processName=JobTracker, sessionId=
17/03/07 11:33:09 INFO tools.SimpleCopyListing: Paths (files+dirs) cnt = 3; dirCnt = 1
17/03/07 11:33:09 INFO tools.SimpleCopyListing: Build file listing completed.
17/03/07 11:33:09 INFO Configuration.deprecation: io.sort.mb is deprecated. Instead, use mapreduce.task.io.sort.mb
17/03/07 11:33:09 INFO Configuration.deprecation: io.sort.factor is deprecated. Instead, use mapreduce.task.io.sort.factor
17/03/07 11:33:09 INFO tools.DistCp: Number of paths in the copy list: 3
17/03/07 11:33:09 INFO tools.DistCp: Number of paths in the copy list: 3
17/03/07 11:33:09 INFO jvm.JvmMetrics: Cannot initialize JVM Metrics with processName=JobTracker, sessionId= - already initialized
17/03/07 11:33:10 INFO mapreduce.JobSubmitter: number of splits:1
17/03/07 11:33:10 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_local2087833285_0001
17/03/07 11:33:10 INFO mapreduce.Job: The url to track the job: http://localhost:8080/
17/03/07 11:33:10 INFO tools.DistCp: DistCp job-id: job_local2087833285_0001
17/03/07 11:33:10 INFO mapreduce.Job: Running job: job_local2087833285_0001
17/03/07 11:33:10 INFO mapred.LocalJobRunner: OutputCommitter set in config null
17/03/07 11:33:10 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/03/07 11:33:10 INFO mapred.LocalJobRunner: OutputCommitter is org.apache.hadoop.tools.mapred.CopyCommitter
17/03/07 11:33:10 INFO mapred.LocalJobRunner: Waiting for map tasks
17/03/07 11:33:10 INFO mapred.LocalJobRunner: Starting task: attempt_local2087833285_0001_m_000000_0
17/03/07 11:33:10 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/03/07 11:33:10 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
17/03/07 11:33:10 INFO mapred.MapTask: Processing split: file:/tmp/hadoop-pjdn/mapred/staging/pjdn1035985290/.staging/_distcp1389103093/fileList.seq:0+524
17/03/07 11:33:10 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/03/07 11:33:10 INFO mapred.CopyMapper: Copying hdfs://xpandsebc2.xpand.com/paulojnunes to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes
17/03/07 11:33:10 INFO mapred.CopyMapper: Copying hdfs://xpandsebc2.xpand.com/paulojnunes/_SUCCESS to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/_SUCCESS
17/03/07 11:33:10 INFO mapred.RetriableFileCopyCommand: Creating temp file: hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/.distcp.tmp.attempt_local2087833285_0001_m_000000_0
17/03/07 11:33:10 INFO mapred.CopyMapper: Copying hdfs://xpandsebc2.xpand.com/paulojnunes/part-m-00000 to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/part-m-00000
17/03/07 11:33:10 INFO mapred.RetriableFileCopyCommand: Creating temp file: hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/.distcp.tmp.attempt_local2087833285_0001_m_000000_0
17/03/07 11:33:11 INFO mapreduce.Job: Job job_local2087833285_0001 running in uber mode : false
17/03/07 11:33:11 INFO mapreduce.Job:  map 0% reduce 0%
17/03/07 11:33:16 INFO mapred.LocalJobRunner: 95.1% Copying hdfs://xpandsebc2.xpand.com/paulojnunes/part-m-00000 to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/part-m-00000 [475.2M/500.0M] > map
17/03/07 11:33:16 INFO mapred.LocalJobRunner: 95.1% Copying hdfs://xpandsebc2.xpand.com/paulojnunes/part-m-00000 to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/part-m-00000 [475.2M/500.0M] > map
17/03/07 11:33:16 INFO mapred.Task: Task:attempt_local2087833285_0001_m_000000_0 is done. And is in the process of committing
17/03/07 11:33:16 INFO mapred.LocalJobRunner: 95.1% Copying hdfs://xpandsebc2.xpand.com/paulojnunes/part-m-00000 to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/part-m-00000 [475.2M/500.0M] > map
17/03/07 11:33:16 INFO mapred.Task: Task attempt_local2087833285_0001_m_000000_0 is allowed to commit now
17/03/07 11:33:16 INFO output.FileOutputCommitter: Saved output of task 'attempt_local2087833285_0001_m_000000_0' to file:/tmp/hadoop-pjdn/mapred/staging/pjdn1035985290/.staging/_distcp1389103093/_logs/_temporary/0/task_local2087833285_0001_m_000000
17/03/07 11:33:16 INFO mapred.LocalJobRunner: 100.0% Copying hdfs://xpandsebc2.xpand.com/paulojnunes/part-m-00000 to hdfs://xpandsebc2.xpand.com:8020/paulojnunes_destination/paulojnunes/part-m-00000 [500.0M/500.0M]
17/03/07 11:33:16 INFO mapred.Task: Task 'attempt_local2087833285_0001_m_000000_0' done.
17/03/07 11:33:16 INFO mapred.LocalJobRunner: Finishing task: attempt_local2087833285_0001_m_000000_0
17/03/07 11:33:16 INFO mapred.LocalJobRunner: map task executor complete.
17/03/07 11:33:16 INFO mapred.CopyCommitter: Cleaning up temporary work folder: file:/tmp/hadoop-pjdn/mapred/staging/pjdn1035985290/.staging/_distcp1389103093
17/03/07 11:33:17 INFO mapreduce.Job:  map 100% reduce 0%
17/03/07 11:33:17 INFO mapreduce.Job: Job job_local2087833285_0001 completed successfully
17/03/07 11:33:17 INFO mapreduce.Job: Counters: 23
        File System Counters
                FILE: Number of bytes read=1956678
                FILE: Number of bytes written=2260143
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=524288000
                HDFS: Number of bytes written=524288000
                HDFS: Number of read operations=30
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=5
        Map-Reduce Framework
                Map input records=3
                Map output records=0
                Input split bytes=156
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=60
                Total committed heap usage (bytes)=221249536
        File Input Format Counters
                Bytes Read=560
        File Output Format Counters
                Bytes Written=8
        org.apache.hadoop.tools.mapred.CopyMapper$Counter
                BYTESCOPIED=524288000
                BYTESEXPECTED=524288000
                COPY=3



#BDR - output
