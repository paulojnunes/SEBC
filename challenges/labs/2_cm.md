```
[root@challengesebc2 yum.repos.d]# ls /etc/yum.repos.d/
CentOS-Base.repo       CentOS-fasttrack.repo  CentOS-Vault.repo      OpenLogic.repo
CentOS-Debuginfo.repo  CentOS-Media.repo      cloudera-manager.repo
```

### scm_prepare_database.sh
```
[root@challengesebc2 ~]# /usr/share/cmf/schema/scm_prepare_database.sh mysql -h challengesebc1.xpand.com --scm-host challengesebc2.xpand.com scm scm scm
JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
Verifying that we can write to /etc/cloudera-scm-server
Creating SCM configuration file in /etc/cloudera-scm-server
Executing:  /usr/java/jdk1.7.0_67-cloudera/bin/java -cp /usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/* com.cloudera.enterprise.dbutil.DbCommandExecutor /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
[                          main] DbCommandExecutor              INFO  Successfully connected to database.
All done, your SCM database is configured correctly!
```