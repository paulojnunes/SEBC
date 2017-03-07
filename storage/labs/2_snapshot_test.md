#Create hdfs directory and upload the zip file there
[root@xpandsebc1 ~]# sudo -u hdfs hdfs dfs -mkdir /precious
[root@xpandsebc1 ~]# sudo -u hdfs hdfs dfs -put /tmp/SEBC.zip /precious


#Allow snapshots on that directory
[root@xpandsebc1 ~]# sudo -u hdfs hdfs dfsadmin -allowSnapshot /precious
Allowing snaphot on /precious succeeded


#Create snapshots
[root@xpandsebc1 ~]# sudo -u hdfs hdfs dfs -createSnapshot /precious sebc-hdfs-test
Created snapshot /precious/.snapshot/sebc-hdfs-test


#Failed to remove directory
[root@xpandsebc1 ~]# sudo -u hdfs hdfs dfs -rm -R /precious
rm: Failed to move to trash: hdfs://xpandsebc2.xpand.com:8020/precious: The directory /precious cannot be deleted since /precious is snapshottable and already has snapshots


#Remove the file
[root@xpandsebc1 ~]# sudo -u hdfs hdfs dfs -rm /precious/*
17/03/07 13:28:56 INFO fs.TrashPolicyDefault: Moved: 'hdfs://xpandsebc2.xpand.com:8020/precious/SEBC.zip' to trash at: hdfs://xpandsebc2.xpand.com:8020/user/hdfs/.Trash/Current/precious/SEBC.zip


#Restored file
[root@xpandsebc1 ~]# sudo -u hdfs hdfs dfs -ls /precious/.snapshot/sebc-hdfs-test
Found 1 items
-rw-r--r--   3 hdfs supergroup     415069 2017-03-07 13:20 /precious/.snapshot/sebc-hdfs-test/SEBC.zip
[root@xpandsebc1 ~]# sudo -u hdfs hdfs dfs -cp /precious/.snapshot/sebc-hdfs-test/SEBC.zip /precious
[root@xpandsebc1 ~]# sudo -u hdfs hdfs dfs -ls /precious/
Found 1 items
-rw-r--r--   3 hdfs supergroup     415069 2017-03-07 13:31 /precious/SEBC.zip