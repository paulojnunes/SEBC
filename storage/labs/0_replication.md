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
Tue Mar  7 11:40:25 UTC 2017
++ hostname -f
++ hostname -i
+ echo 'Running on: xpandsebc2.xpand.com (10.0.0.5)'
++ dirname /usr/lib64/cmf/service/dr/distcp.sh
+ cloudera_config=/usr/lib64/cmf/service/dr
++ cd /usr/lib64/cmf/service/dr/../common
++ pwd
+ cloudera_config=/usr/lib64/cmf/service/common
+ . /usr/lib64/cmf/service/common/cloudera-config.sh
++ set -x
+ source_parcel_environment
+ '[' '!' -z /opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/meta/cdh_env.sh ']'
+ OLD_IFS='     
'
+ IFS=:
+ SCRIPT_ARRAY=($SCM_DEFINES_SCRIPTS)
+ DIRNAME_ARRAY=($PARCEL_DIRNAMES)
+ IFS='         
'
+ COUNT=1
++ seq 1 1
+ for i in '`seq 1 $COUNT`'
+ SCRIPT=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/meta/cdh_env.sh
+ PARCEL_DIRNAME=CDH-5.8.3-1.cdh5.8.3.p0.2
+ . /opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/meta/cdh_env.sh
++ CDH_DIRNAME=CDH-5.8.3-1.cdh5.8.3.p0.2
++ export CDH_HADOOP_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop
++ CDH_HADOOP_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop
++ export CDH_MR1_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-0.20-mapreduce
++ CDH_MR1_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-0.20-mapreduce
++ export CDH_HDFS_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-hdfs
++ CDH_HDFS_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-hdfs
++ export CDH_HTTPFS_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-httpfs
++ CDH_HTTPFS_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-httpfs
++ export CDH_MR2_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-mapreduce
++ CDH_MR2_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-mapreduce
++ export CDH_YARN_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-yarn
++ CDH_YARN_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-yarn
++ export CDH_HBASE_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hbase
++ CDH_HBASE_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hbase
++ export CDH_ZOOKEEPER_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/zookeeper
++ CDH_ZOOKEEPER_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/zookeeper
++ export CDH_HIVE_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hive
++ CDH_HIVE_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hive
++ export CDH_HUE_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hue
++ CDH_HUE_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hue
++ export CDH_OOZIE_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/oozie
++ CDH_OOZIE_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/oozie
++ export CDH_HUE_PLUGINS_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop
++ CDH_HUE_PLUGINS_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop
++ export CDH_FLUME_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/flume-ng
++ CDH_FLUME_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/flume-ng
++ export CDH_PIG_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/pig
++ CDH_PIG_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/pig
++ export CDH_HCAT_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hive-hcatalog
++ CDH_HCAT_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hive-hcatalog
++ export CDH_SQOOP2_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/sqoop2
++ CDH_SQOOP2_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/sqoop2
++ export CDH_LLAMA_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/llama
++ CDH_LLAMA_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/llama
++ export CDH_SENTRY_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/sentry
++ CDH_SENTRY_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/sentry
++ export TOMCAT_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/bigtop-tomcat
++ TOMCAT_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/bigtop-tomcat
++ export JSVC_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/bigtop-utils
++ JSVC_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/bigtop-utils
++ export CDH_HADOOP_BIN=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop/bin/hadoop
++ CDH_HADOOP_BIN=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop/bin/hadoop
++ export CDH_IMPALA_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/impala
++ CDH_IMPALA_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/impala
++ export CDH_SOLR_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/solr
++ CDH_SOLR_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/solr
++ export CDH_HBASE_INDEXER_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hbase-solr
++ CDH_HBASE_INDEXER_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hbase-solr
++ export SEARCH_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/search
++ SEARCH_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/search
++ export CDH_SPARK_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/spark
++ CDH_SPARK_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/spark
++ export WEBHCAT_DEFAULT_XML=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/etc/hive-webhcat/conf.dist/webhcat-default.xml
++ WEBHCAT_DEFAULT_XML=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/etc/hive-webhcat/conf.dist/webhcat-default.xml
++ export CDH_KMS_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-kms
++ CDH_KMS_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-kms
++ export CDH_PARQUET_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/parquet
++ CDH_PARQUET_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/parquet
++ export CDH_AVRO_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/avro
++ CDH_AVRO_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/avro
+ locate_cdh_java_home
+ '[' -z '' ']'
+ '[' -z /opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/bigtop-utils ']'
+ local BIGTOP_DETECT_JAVAHOME=
+ for candidate in '"${JSVC_HOME}"' '"${JSVC_HOME}/.."' '"/usr/lib/bigtop-utils"' '"/usr/libexec"'
+ '[' -e /opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/bigtop-utils/bigtop-detect-javahome ']'
+ BIGTOP_DETECT_JAVAHOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/bigtop-utils/bigtop-detect-javahome
+ break
+ '[' -z /opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/bigtop-utils/bigtop-detect-javahome ']'
+ . /opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/bigtop-utils/bigtop-detect-javahome
++ BIGTOP_DEFAULTS_DIR=/etc/default
++ '[' -n /etc/default -a -r /etc/default/bigtop-utils ']'
++ JAVA6_HOME_CANDIDATES=('/usr/lib/j2sdk1.6-sun' '/usr/lib/jvm/java-6-sun' '/usr/lib/jvm/java-1.6.0-sun-1.6.0' '/usr/lib/jvm/j2sdk1.6-oracle' '/usr/lib/jvm/j2sdk1.6-oracle/jre' '/usr/java/jdk1.6' '/usr/java/jre1.6')
++ OPENJAVA6_HOME_CANDIDATES=('/usr/lib/jvm/java-1.6.0-openjdk' '/usr/lib/jvm/jre-1.6.0-openjdk')
++ JAVA7_HOME_CANDIDATES=('/usr/java/jdk1.7' '/usr/java/jre1.7' '/usr/lib/jvm/j2sdk1.7-oracle' '/usr/lib/jvm/j2sdk1.7-oracle/jre' '/usr/lib/jvm/java-7-oracle')
++ OPENJAVA7_HOME_CANDIDATES=('/usr/lib/jvm/java-1.7.0-openjdk' '/usr/lib/jvm/java-7-openjdk')
++ JAVA8_HOME_CANDIDATES=('/usr/java/jdk1.8' '/usr/java/jre1.8' '/usr/lib/jvm/j2sdk1.8-oracle' '/usr/lib/jvm/j2sdk1.8-oracle/jre' '/usr/lib/jvm/java-8-oracle')
++ OPENJAVA8_HOME_CANDIDATES=('/usr/lib/jvm/java-1.8.0-openjdk' '/usr/lib/jvm/java-8-openjdk')
++ MISCJAVA_HOME_CANDIDATES=('/Library/Java/Home' '/usr/java/default' '/usr/lib/jvm/default-java' '/usr/lib/jvm/java-openjdk' '/usr/lib/jvm/jre-openjdk')
++ case ${BIGTOP_JAVA_MAJOR} in
++ JAVA_HOME_CANDIDATES=(${JAVA7_HOME_CANDIDATES[@]} ${JAVA8_HOME_CANDIDATES[@]} ${MISCJAVA_HOME_CANDIDATES[@]} ${OPENJAVA7_HOME_CANDIDATES[@]} ${OPENJAVA8_HOME_CANDIDATES[@]})
++ '[' -z '' ']'
++ for candidate_regex in '${JAVA_HOME_CANDIDATES[@]}'
+++ ls -rvd /usr/java/jdk1.7.0_67-cloudera
++ for candidate in '`ls -rvd ${candidate_regex}* 2>/dev/null`'
++ '[' -e /usr/java/jdk1.7.0_67-cloudera/bin/java ']'
++ export JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
++ JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
++ break 2
+ verify_java_home
+ '[' -z /usr/java/jdk1.7.0_67-cloudera ']'
+ echo JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
+ . /usr/lib64/cmf/service/common/cdh-default-hadoop
++ [[ -z 5 ]]
++ '[' 5 = 3 ']'
++ '[' 5 = -3 ']'
++ '[' 5 -ge 4 ']'
++ export HADOOP_HOME_WARN_SUPPRESS=true
++ HADOOP_HOME_WARN_SUPPRESS=true
++ export HADOOP_PREFIX=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop
++ HADOOP_PREFIX=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop
++ export HADOOP_LIBEXEC_DIR=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop/libexec
++ HADOOP_LIBEXEC_DIR=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop/libexec
++ export HADOOP_CONF_DIR=/var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd
++ HADOOP_CONF_DIR=/var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd
++ export HADOOP_COMMON_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop
++ HADOOP_COMMON_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop
++ export HADOOP_HDFS_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-hdfs
++ HADOOP_HDFS_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-hdfs
++ export HADOOP_MAPRED_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-mapreduce
++ HADOOP_MAPRED_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-mapreduce
++ '[' 5 = 4 ']'
++ '[' 5 = 5 ']'
++ export HADOOP_YARN_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-yarn
++ HADOOP_YARN_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-yarn
+ echo 'using /usr/java/jdk1.7.0_67-cloudera as JAVA_HOME'
+ echo 'using 5 as CDH_VERSION'
+ echo 'using /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd as CONF_DIR'
+ set_hadoop_classpath
+ set_classpath_in_var HADOOP_CLASSPATH
+ '[' -z HADOOP_CLASSPATH ']'
+ [[ -n /usr/share/cmf ]]
++ find /usr/share/cmf/lib/plugins -maxdepth 1 -name '*.jar'
++ tr '\n' :
+ ADD_TO_CP=/usr/share/cmf/lib/plugins/tt-instrumentation-5.8.3.jar:/usr/share/cmf/lib/plugins/event-publish-5.8.3-shaded.jar:
+ [[ -n '' ]]
+ eval 'OLD_VALUE=$HADOOP_CLASSPATH'
++ OLD_VALUE=
+ NEW_VALUE=/usr/share/cmf/lib/plugins/tt-instrumentation-5.8.3.jar:/usr/share/cmf/lib/plugins/event-publish-5.8.3-shaded.jar:
+ export HADOOP_CLASSPATH=/usr/share/cmf/lib/plugins/tt-instrumentation-5.8.3.jar:/usr/share/cmf/lib/plugins/event-publish-5.8.3-shaded.jar
+ HADOOP_CLASSPATH=/usr/share/cmf/lib/plugins/tt-instrumentation-5.8.3.jar:/usr/share/cmf/lib/plugins/event-publish-5.8.3-shaded.jar
+ export 'HADOOP_OPTS=-Djava.net.preferIPv4Stack=true '
+ HADOOP_OPTS='-Djava.net.preferIPv4Stack=true '
+ acquire_kerberos_tgt hdfs.keytab
+ '[' -z hdfs.keytab ']'
+ '[' -n '' ']'
+ '[' MAPREDUCE = YARN ']'
+ '[' YARN = YARN ']'
+ MR_CONF_DIR=/var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf
+ HADOOP_HOME=/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop
+ echo 'using /opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-mapreduce as CDH_MR2_HOME'
+ perl -pi -e 's#{{CDH_MR2_HOME}}#/opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop-mapreduce#g' /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf/core-site.xml /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf/hadoop-env.sh /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf/hdfs-site.xml /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf/log4j.properties /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf/mapred-site.xml /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf/ssl-client.xml /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf/topology.map /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf/topology.py /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf/yarn-site.xml
++ echo /usr/share/cmf/lib/dr/distcp_acllib-5.8.3.jar
+ ACLLIB_CLASSPATH=/usr/share/cmf/lib/dr/distcp_acllib-5.8.3.jar
+ export HADOOP_CLASSPATH=/usr/share/cmf/lib/dr/distcp_acllib-5.8.3.jar:/usr/share/cmf/lib/plugins/tt-instrumentation-5.8.3.jar:/usr/share/cmf/lib/plugins/event-publish-5.8.3-shaded.jar
+ HADOOP_CLASSPATH=/usr/share/cmf/lib/dr/distcp_acllib-5.8.3.jar:/usr/share/cmf/lib/plugins/tt-instrumentation-5.8.3.jar:/usr/share/cmf/lib/plugins/event-publish-5.8.3-shaded.jar
+ exec /opt/cloudera/parcels/CDH-5.8.3-1.cdh5.8.3.p0.2/lib/hadoop/bin/hadoop --config /var/run/cloudera-scm-agent/process/113-hdfs-NAMENODE-distcp-703b14bd/yarn-conf jar /usr/share/cmf/lib/dr/distcp-5.8.3.jar -libjars /usr/share/cmf/lib/dr/distcp_acllib-5.8.3.jar -i -prb -update -proxyuser pjdn -log /user/PROXY_USER_PLACEHOLDER/.cm/distcp/2017-03-07_330 -sourceconf source-client-conf -useSnapshots -ignoreSnapshotFailures -diff distcp-8-408818498 -strategy dynamic -filters exclusion-filter.list /paulojnunes /paulojnunes_bdr_destination
17/03/07 11:40:26 INFO distcp.DistCp: JVM config: max memory = 910336 KB, total memory = 215552 KB, available processors = 4
17/03/07 11:40:26 INFO util.VersionChecker: Inferred CDH version >= 52
17/03/07 11:40:26 INFO distcp.DistCp: Input Options: DistCpOptions{atomicCommit=false, syncFolder=true, deleteMissing=false, ignoreFailures=true, maxMaps=20, sslConfigurationFile='null', copyStrategy='dynamic', sourceFileListing=null, sourcePaths=[/paulojnunes], targetPath=/paulojnunes_bdr_destination, dryRun=false, dryRunReadSize=512, dryRunMaxFiles=1024, logPath=/user/PROXY_USER_PLACEHOLDER/.cm/distcp/2017-03-07_330, proxyUser=pjdn, overwrite=false, skipCRC=false, blocking=true, mapBandwidth=100, preserveStatus=[REPLICATION, BLOCKSIZE], atomicWorkPath=null, sourceConf=source-client-conf, useWebHdfsForSource=false, sourcePrincipal=null, sourceTicketCache=null, rebase=false, useSnapshots=true, ignoreSnapshotFailures=true, skipTrash=false, preserveRawXattrs=false, filtersFile='exclusion-filter.list', skipAclErr=false, useDiff=true, append=false, destinationNotHdfs=false}
17/03/07 11:40:26 INFO util.FsCache: Created file system client instance for key : [source, hdfs, xpandsebc2.xpand.com:8020, pjdn (auth:PROXY) via hdfs (auth:SIMPLE), null, null, null]
17/03/07 11:40:27 INFO util.FsCache: Created file system client instance for key : [target, hdfs, xpandsebc2.xpand.com:8020, pjdn (auth:PROXY) via hdfs (auth:SIMPLE), null, 512, null]
17/03/07 11:40:27 INFO distcp.DistCp: Meta folder location: hdfs://xpandsebc2.xpand.com:8020/user/pjdn/.cm/distcp-staging/824901743303126539
17/03/07 11:40:27 INFO distcp.DistCp: DistCp job log path: hdfs://xpandsebc2.xpand.com:8020/user/pjdn/.cm/distcp/2017-03-07_330
17/03/07 11:40:27 INFO client.RMProxy: Connecting to ResourceManager at xpandsebc2.xpand.com/10.0.0.5:8032
17/03/07 11:40:27 INFO distcp.DistCp: append copy is disabled
17/03/07 11:40:27 INFO distcp.DistCp: Diff is not enabled, falling back to regular distcp
17/03/07 11:40:27 INFO distcp.SimpleCopyListing: initialized with rebase=false, enableThreads=true, enableTiming=false, fetchThreads=20, fetchMaxQueueSize=10000
17/03/07 11:40:27 INFO distcp.SimpleCopyListing: Create 20 thread ThreadPoolExecutor ...
17/03/07 11:40:27 INFO distcp.SimpleCopyListing: Source filesystem type: org.apache.hadoop.hdfs.DistributedFileSystem
17/03/07 11:40:27 INFO distcp.SimpleCopyListing: shutdown thread pool executor.
17/03/07 11:40:27 INFO distcp.SimpleCopyListing: Total paths located: 3
17/03/07 11:40:27 INFO distcp.SimpleCopyListing: Total files located: 2
17/03/07 11:40:27 INFO distcp.SimpleCopyListing: Total bytes to copy: 524288000
17/03/07 11:40:27 INFO distcp.SimpleCopyListing: Total time for copy listing: (seconds) 0.077
17/03/07 11:40:27 INFO client.RMProxy: Connecting to ResourceManager at xpandsebc2.xpand.com/10.0.0.5:8032
17/03/07 11:40:28 INFO lib.DynamicInputFormat: DynamicInputFormat: Getting splits for job:job_1488874744933_0002
17/03/07 11:40:28 INFO lib.DynamicInputFormat: Number of dynamic-chunk-files created: 3
17/03/07 11:40:28 INFO mapreduce.JobSubmitter: number of splits:3
17/03/07 11:40:28 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1488874744933_0002
17/03/07 11:40:28 INFO impl.YarnClientImpl: Submitted application application_1488874744933_0002
17/03/07 11:40:28 INFO mapreduce.Job: The url to track the job: http://xpandsebc2.xpand.com:8088/proxy/application_1488874744933_0002/
17/03/07 11:40:28 INFO distcp.DistCp: DistCp job-id: job_1488874744933_0002
17/03/07 11:40:29 INFO distcp.DistCp: map 0% reduce 0%
17/03/07 11:40:39 INFO distcp.DistCp: map 33% reduce 0%
17/03/07 11:40:41 INFO distcp.DistCp: map 67% reduce 0%
17/03/07 11:40:47 INFO distcp.DistCp: map 100% reduce 0%
17/03/07 11:40:53 INFO distcp.DistCp: map 100% reduce 100%
17/03/07 11:40:55 INFO mapreduce.Job: Running job: job_1488874744933_0002
17/03/07 11:40:55 INFO mapreduce.Job: Job job_1488874744933_0002 running in uber mode : false
17/03/07 11:40:55 INFO mapreduce.Job:  map 100% reduce 100%
17/03/07 11:40:55 INFO mapreduce.Job: Job job_1488874744933_0002 completed successfully
17/03/07 11:40:55 INFO mapreduce.Job: Counters: 54
        File System Counters
                FILE: Number of bytes read=20
                FILE: Number of bytes written=516733
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=524289176
                HDFS: Number of bytes written=524288078
                HDFS: Number of read operations=56
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=12
        Job Counters 
                Launched map tasks=3
                Launched reduce tasks=1
                Other local map tasks=3
                Total time spent by all maps in occupied slots (ms)=20273
                Total time spent by all reduces in occupied slots (ms)=3363
                Total time spent by all map tasks (ms)=20273
                Total time spent by all reduce tasks (ms)=3363
                Total vcore-seconds taken by all map tasks=20273
                Total vcore-seconds taken by all reduce tasks=3363
                Total megabyte-seconds taken by all map tasks=20759552
                Total megabyte-seconds taken by all reduce tasks=3443712
        Map-Reduce Framework
                Map input records=3
                Map output records=0
                Map output bytes=0
                Map output materialized bytes=48
                Input split bytes=537
                Combine input records=0
                Combine output records=0
                Reduce input groups=0
                Reduce shuffle bytes=48
                Reduce input records=0
                Reduce output records=0
                Spilled Records=0
                Shuffled Maps =3
                Failed Shuffles=0
                Merged Map outputs=3
                GC time elapsed (ms)=202
                CPU time spent (ms)=7840
                Physical memory (bytes) snapshot=1748373504
                Virtual memory (bytes) snapshot=6273691648
                Total committed heap usage (bytes)=1954021376
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        com.cloudera.enterprise.distcp.mapred.CopyMapper$Counter
                BYTESCOPIED=524288000
                BYTESEXPECTED=524288000
                COPY=2
                DIRSCREATED=1
                FILESEXPECTED=2
        File Input Format Counters 
                Bytes Read=639
        File Output Format Counters 
                Bytes Written=78



#Distcps output on HDFS
[pjdn@xpandsebc1 ~]$ hdfs dfs -ls /paulo*/*
-rw-r--r--   3 pjdn pjdn          0 2017-03-07 10:03 /paulojnunes/_SUCCESS
-rw-r--r--   3 pjdn pjdn  524288000 2017-03-07 10:03 /paulojnunes/part-m-00000
Found 2 items
-rw-r--r--   3 pjdn pjdn          0 2017-03-07 10:03 /paulojnunes_bdr_destination/paulojnunes/_SUCCESS
-rw-r--r--   3 pjdn pjdn  524288000 2017-03-07 10:03 /paulojnunes_bdr_destination/paulojnunes/part-m-00000
Found 2 items
-rw-r--r--   3 pjdn pjdn          0 2017-03-07 11:35 /paulojnunes_destination/paulojnunes/_SUCCESS
-rw-r--r--   3 pjdn pjdn  524288000 2017-03-07 11:35 /paulojnunes_destination/paulojnunes/part-m-00000
