#Verify user privileges
```
[paulojnunes@xpandsebc1 ~]$ beeline -u "jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM"
scan complete in 3ms
Connecting to jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de>
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de>
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> show tables;
INFO  : Compiling command(queryId=hive_20170308161010_e8cb7814-b408-49c4-817a-9015daf56f2a): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170308161010_e8cb7814-b408-49c4-817a-9015daf56f2a); Time taken: 0.791 seconds
INFO  : Executing command(queryId=hive_20170308161010_e8cb7814-b408-49c4-817a-9015daf56f2a): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308161010_e8cb7814-b408-49c4-817a-9015daf56f2a); Time taken: 0.455 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (2.541 seconds)

```

#Create a Sentry role with full authorization
```
[paulojnunes@xpandsebc1 ~]$ beeline -u "jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM"
scan complete in 2ms
Connecting to jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> CREATE ROLE sentry_admin;
INFO  : Compiling command(queryId=hive_20170308161515_2ad85f9c-4855-434c-896d-029215033ddc): CREATE ROLE sentry_admin
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308161515_2ad85f9c-4855-434c-896d-029215033ddc); Time taken: 0.099 seconds
INFO  : Executing command(queryId=hive_20170308161515_2ad85f9c-4855-434c-896d-029215033ddc): CREATE ROLE sentry_admin
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308161515_2ad85f9c-4855-434c-896d-029215033ddc); Time taken: 1.021 seconds
INFO  : OK
No rows affected (1.193 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> GRANT ALL ON SERVER server1 TO ROLE sentry_admin;
INFO  : Compiling command(queryId=hive_20170308161515_5b2d9012-76e4-4cb7-9069-139dbf563568): GRANT ALL ON SERVER server1 TO ROLE sentry_admin
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308161515_5b2d9012-76e4-4cb7-9069-139dbf563568); Time taken: 0.072 seconds
INFO  : Executing command(queryId=hive_20170308161515_5b2d9012-76e4-4cb7-9069-139dbf563568): GRANT ALL ON SERVER server1 TO ROLE sentry_admin
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308161515_5b2d9012-76e4-4cb7-9069-139dbf563568); Time taken: 0.121 seconds
INFO  : OK
No rows affected (0.202 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> GRANT ROLE sentry_admin TO GROUP paulojnunes;
INFO  : Compiling command(queryId=hive_20170308161515_fea7590f-e087-4d82-9f4b-1b4b620bbc90): GRANT ROLE sentry_admin TO GROUP paulojnunes
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308161515_fea7590f-e087-4d82-9f4b-1b4b620bbc90); Time taken: 0.064 seconds
INFO  : Executing command(queryId=hive_20170308161515_fea7590f-e087-4d82-9f4b-1b4b620bbc90): GRANT ROLE sentry_admin TO GROUP paulojnunes
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308161515_fea7590f-e087-4d82-9f4b-1b4b620bbc90); Time taken: 0.073 seconds
INFO  : OK
No rows affected (0.146 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> show tables;
INFO  : Compiling command(queryId=hive_20170308161515_237b9dc8-6618-4c59-9158-4d9ea409dcbd): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170308161515_237b9dc8-6618-4c59-9158-4d9ea409dcbd); Time taken: 0.058 seconds
INFO  : Executing command(queryId=hive_20170308161515_237b9dc8-6618-4c59-9158-4d9ea409dcbd): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308161515_237b9dc8-6618-4c59-9158-4d9ea409dcbd); Time taken: 0.15 seconds
INFO  : OK
+----------------+--+
|    tab_name    |
+----------------+--+
| customers      |
| sample_07      |
| sample_08      |
| test_security  |
| web_logs       |
+----------------+--+
5 rows selected (0.294 seconds)
```

#Create a Sentry role with full authorization
```
[paulojnunes@xpandsebc1 ~]$ beeline -u "jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM"
scan complete in 2ms
Connecting to jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de>
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de>
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de>
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> CREATE ROLE sentry_admin;
INFO  : Compiling command(queryId=hive_20170308161515_2ad85f9c-4855-434c-896d-029215033ddc): CREATE ROLE sentry_admin
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308161515_2ad85f9c-4855-434c-896d-029215033ddc); Time taken: 0.099 seconds
INFO  : Executing command(queryId=hive_20170308161515_2ad85f9c-4855-434c-896d-029215033ddc): CREATE ROLE sentry_admin
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308161515_2ad85f9c-4855-434c-896d-029215033ddc); Time taken: 1.021 seconds
INFO  : OK
No rows affected (1.193 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> GRANT ALL ON SERVER server1 TO ROLE sentry_admin;
INFO  : Compiling command(queryId=hive_20170308161515_5b2d9012-76e4-4cb7-9069-139dbf563568): GRANT ALL ON SERVER server1 TO ROLE sentry_admin
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308161515_5b2d9012-76e4-4cb7-9069-139dbf563568); Time taken: 0.072 seconds
INFO  : Executing command(queryId=hive_20170308161515_5b2d9012-76e4-4cb7-9069-139dbf563568): GRANT ALL ON SERVER server1 TO ROLE sentry_admin
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308161515_5b2d9012-76e4-4cb7-9069-139dbf563568); Time taken: 0.121 seconds
INFO  : OK
No rows affected (0.202 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> GRANT ROLE sentry_admin TO GROUP paulojnunes;
INFO  : Compiling command(queryId=hive_20170308161515_fea7590f-e087-4d82-9f4b-1b4b620bbc90): GRANT ROLE sentry_admin TO GROUP paulojnunes
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308161515_fea7590f-e087-4d82-9f4b-1b4b620bbc90); Time taken: 0.064 seconds
INFO  : Executing command(queryId=hive_20170308161515_fea7590f-e087-4d82-9f4b-1b4b620bbc90): GRANT ROLE sentry_admin TO GROUP paulojnunes
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308161515_fea7590f-e087-4d82-9f4b-1b4b620bbc90); Time taken: 0.073 seconds
INFO  : OK
No rows affected (0.146 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> show tables;
INFO  : Compiling command(queryId=hive_20170308161515_237b9dc8-6618-4c59-9158-4d9ea409dcbd): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170308161515_237b9dc8-6618-4c59-9158-4d9ea409dcbd); Time taken: 0.058 seconds
INFO  : Executing command(queryId=hive_20170308161515_237b9dc8-6618-4c59-9158-4d9ea409dcbd): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308161515_237b9dc8-6618-4c59-9158-4d9ea409dcbd); Time taken: 0.15 seconds
INFO  : OK
+----------------+--+
|    tab_name    |
+----------------+--+
| customers      |
| sample_07      |
| sample_08      |
| test_security  |
| web_logs       |
+----------------+--+
5 rows selected (0.294 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> Closing: 0: jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM
```

#Create additional test users
```
[paulojnunes@xpandsebc1 ~]$ su -
Password:
[root@xpandsebc1 ~]# ansible all -a "groupadd selector"
localhost | SUCCESS | rc=0 >>


xpandsebc2 | SUCCESS | rc=0 >>


xpandsebc4 | SUCCESS | rc=0 >>


xpandsebc5 | SUCCESS | rc=0 >>


xpandsebc3 | SUCCESS | rc=0 >>


[root@xpandsebc1 ~]# ansible all -a "groupadd inserters"
localhost | SUCCESS | rc=0 >>


xpandsebc2 | SUCCESS | rc=0 >>


xpandsebc4 | SUCCESS | rc=0 >>


xpandsebc5 | SUCCESS | rc=0 >>


xpandsebc3 | SUCCESS | rc=0 >>


[root@xpandsebc1 ~]# ansible all -a "useradd -u 1100 -g selector george"
localhost | SUCCESS | rc=0 >>


xpandsebc2 | SUCCESS | rc=0 >>


xpandsebc5 | SUCCESS | rc=0 >>


xpandsebc4 | SUCCESS | rc=0 >>


xpandsebc3 | SUCCESS | rc=0 >>


[root@xpandsebc1 ~]# ansible all -a "useradd -u 1200 -g inserters ferdinand"
localhost | SUCCESS | rc=0 >>


xpandsebc2 | SUCCESS | rc=0 >>


xpandsebc5 | SUCCESS | rc=0 >>


xpandsebc4 | SUCCESS | rc=0 >>


xpandsebc3 | SUCCESS | rc=0 >>

[root@xpandsebc1 ~]# kadmin
Authenticating as principal paulojnunes/admin@XPAND.COM with password.
kadmin: Client not found in Kerberos database while initializing kadmin interface
[root@xpandsebc1 ~]# kadmin.local
Authenticating as principal paulojnunes/admin@XPAND.COM with password.
kadmin.local:  add_principal george
WARNING: no policy specified for george@XPAND.COM; defaulting to no policy
Enter password for principal "george@XPAND.COM":
Re-enter password for principal "george@XPAND.COM":
Principal "george@XPAND.COM" created.
kadmin.local:  add_principal ferdinand
WARNING: no policy specified for ferdinand@XPAND.COM; defaulting to no policy
Enter password for principal "ferdinand@XPAND.COM":
Re-enter password for principal "ferdinand@XPAND.COM":
Principal "ferdinand@XPAND.COM" created.
```

#Create test roles
```
[root@xpandsebc1 ~]# su - paulojnunes
[paulojnunes@xpandsebc1 ~]$ beeline -u "jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM"
scan complete in 3ms
Connecting to jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> create role reads;
INFO  : Compiling command(queryId=hive_20170308162121_4764e7de-9d1f-4540-b66d-7851b43e45e5): create role reads
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308162121_4764e7de-9d1f-4540-b66d-7851b43e45e5); Time taken: 0.079 seconds
INFO  : Executing command(queryId=hive_20170308162121_4764e7de-9d1f-4540-b66d-7851b43e45e5): create role reads
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308162121_4764e7de-9d1f-4540-b66d-7851b43e45e5); Time taken: 0.043 seconds
INFO  : OK
No rows affected (0.196 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> create role writes;
INFO  : Compiling command(queryId=hive_20170308162121_1b997d63-32a0-477c-b605-800d972c24b5): create role writes
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308162121_1b997d63-32a0-477c-b605-800d972c24b5); Time taken: 0.053 seconds
INFO  : Executing command(queryId=hive_20170308162121_1b997d63-32a0-477c-b605-800d972c24b5): create role writes
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308162121_1b997d63-32a0-477c-b605-800d972c24b5); Time taken: 0.031 seconds
INFO  : OK
No rows affected (0.093 seconds)
```

#Grant read privilege for all tables to reads
```
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> GRANT SELECT ON DATABASE default TO ROLE reads;
INFO  : Compiling command(queryId=hive_20170308162121_81c2c0e8-8905-43b0-be68-26674de3f48b): GRANT SELECT ON DATABASE default TO ROLE reads
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308162121_81c2c0e8-8905-43b0-be68-26674de3f48b); Time taken: 0.068 seconds
INFO  : Executing command(queryId=hive_20170308162121_81c2c0e8-8905-43b0-be68-26674de3f48b): GRANT SELECT ON DATABASE default TO ROLE reads
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308162121_81c2c0e8-8905-43b0-be68-26674de3f48b); Time taken: 0.045 seconds
INFO  : OK
No rows affected (0.122 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> GRANT ROLE reads TO GROUP selector;
INFO  : Compiling command(queryId=hive_20170308162121_da214afe-6c4b-4602-aeb8-688e95e5fb1d): GRANT ROLE reads TO GROUP selector
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308162121_da214afe-6c4b-4602-aeb8-688e95e5fb1d); Time taken: 0.054 seconds
INFO  : Executing command(queryId=hive_20170308162121_da214afe-6c4b-4602-aeb8-688e95e5fb1d): GRANT ROLE reads TO GROUP selector
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308162121_da214afe-6c4b-4602-aeb8-688e95e5fb1d); Time taken: 0.031 seconds
INFO  : OK
No rows affected (0.097 seconds)
```

#Grant read privilege for default.sample07 only to 'writes':
```
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> REVOKE ALL ON DATABASE default FROM ROLE writes;
INFO  : Compiling command(queryId=hive_20170308162222_510e2941-3f92-4751-834c-69a150cd1fdc): REVOKE ALL ON DATABASE default FROM ROLE writes
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308162222_510e2941-3f92-4751-834c-69a150cd1fdc); Time taken: 0.075 seconds
INFO  : Executing command(queryId=hive_20170308162222_510e2941-3f92-4751-834c-69a150cd1fdc): REVOKE ALL ON DATABASE default FROM ROLE writes
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308162222_510e2941-3f92-4751-834c-69a150cd1fdc); Time taken: 0.094 seconds
INFO  : OK
No rows affected (0.179 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> GRANT SELECT ON default.sample_07 TO ROLE writes;
INFO  : Compiling command(queryId=hive_20170308162222_49e6f508-a655-4909-b8c8-d355d031f339): GRANT SELECT ON default.sample_07 TO ROLE writes
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308162222_49e6f508-a655-4909-b8c8-d355d031f339); Time taken: 0.05 seconds
INFO  : Executing command(queryId=hive_20170308162222_49e6f508-a655-4909-b8c8-d355d031f339): GRANT SELECT ON default.sample_07 TO ROLE writes
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308162222_49e6f508-a655-4909-b8c8-d355d031f339); Time taken: 0.044 seconds
INFO  : OK
No rows affected (0.103 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> GRANT ROLE writes TO GROUP inserters;
INFO  : Compiling command(queryId=hive_20170308162222_f9e92d12-1fd5-47d7-b96e-6c3971bda98f): GRANT ROLE writes TO GROUP inserters
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170308162222_f9e92d12-1fd5-47d7-b96e-6c3971bda98f); Time taken: 0.052 seconds
INFO  : Executing command(queryId=hive_20170308162222_f9e92d12-1fd5-47d7-b96e-6c3971bda98f): GRANT ROLE writes TO GROUP inserters
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308162222_f9e92d12-1fd5-47d7-b96e-6c3971bda98f); Time taken: 0.03 seconds
INFO  : OK
No rows affected (0.089 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> Closing: 0: jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM
```

#kinit as george, then login to beeline
#george
```
[paulojnunes@xpandsebc1 ~]$ kinit george
Password for george@XPAND.COM:
[paulojnunes@xpandsebc1 ~]$ beeline -u "jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM"
show tables;
scan complete in 2ms
Connecting to jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> show tables;
INFO  : Compiling command(queryId=hive_20170308162222_ba249167-188f-485a-b29e-fae950af5512): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170308162222_ba249167-188f-485a-b29e-fae950af5512); Time taken: 0.059 seconds
INFO  : Executing command(queryId=hive_20170308162222_ba249167-188f-485a-b29e-fae950af5512): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308162222_ba249167-188f-485a-b29e-fae950af5512); Time taken: 0.137 seconds
INFO  : OK
+----------------+--+
|    tab_name    |
+----------------+--+
| customers      |
| sample_07      |
| sample_08      |
| test_security  |
| web_logs       |
+----------------+--+
5 rows selected (0.319 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> Closing: 0: jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM
```
#ferdinand
```
[paulojnunes@xpandsebc1 ~]$ kinit ferdinand
Password for ferdinand@XPAND.COM:
[paulojnunes@xpandsebc1 ~]# beeline -u "jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM"
scan complete in 2ms
Connecting to jdbc:hive2://xpandsebc2.xpand.com:10000/default;principal=hive/xpandsebc2.xpand.com@XPAND.COM
Connected to: Apache Hive (version 1.1.0-cdh5.8.3)
Driver: Hive JDBC (version 1.1.0-cdh5.8.3)
Transaction isolation: TRANSACTION_REPEATABLE_READ
Beeline version 1.1.0-cdh5.8.3 by Apache Hive
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de> show tables;
INFO  : Compiling command(queryId=hive_20170308162929_787ef932-ee72-4ad8-9723-e39f278b652f): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170308162929_787ef932-ee72-4ad8-9723-e39f278b652f); Time taken: 0.059 seconds
INFO  : Executing command(queryId=hive_20170308162929_787ef932-ee72-4ad8-9723-e39f278b652f): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170308162929_787ef932-ee72-4ad8-9723-e39f278b652f); Time taken: 0.135 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| sample_07  |
+------------+--+
1 row selected (0.301 seconds)
0: jdbc:hive2://xpandsebc2.xpand.com:10000/de>
```