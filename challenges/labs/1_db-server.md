###Hostname MySQL Server
Private hostname
```
challengesebc1.xpand.com
```
Public hostname
```
challengesebc1.northeurope.cloudapp.azure.com
```

###Version
```
[root@challengesebc1 ~]# mysql --version
mysql  Ver 14.14 Distrib 5.6.35, for Linux (x86_64) using  EditLine wrapper
```

### List of databases
```

[root@challengesebc1 ~]# mysql -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 5.6.35 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
9 rows in set (0.00 sec)

mysql>
```