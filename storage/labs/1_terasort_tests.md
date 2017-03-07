#Create the user all nodes
[root@xpandsebc1 ~]# useradd paulojnunes
[root@xpandsebc1 ~]# passwd paulojnunes

#Create HDFS home directory
[pjdn@xpandsebc1 ~]$ sudo -u hdfs hdfs dfs -mkdir /user/paulojnunes
[pjdn@xpandsebc1 ~]$ sudo -u hdfs hdfs dfs -chown paulojnunes:paulojnunes /user/paulojnunes



time yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Dmapred.map.tasks=4 -Ddfs.block.size=33554432 107374182 /paulojnunes/terasort-input



yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -Dmapred.map.tasks=4 -Ddfs.block.size=33554432 /paulojnunes/terasort-input /paulojnunes/terasort-output


