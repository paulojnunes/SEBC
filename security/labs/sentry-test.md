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