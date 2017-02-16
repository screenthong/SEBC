## Login with user screenthong

```
[root@ip-172-31-8-59 init.d]# beeline
Beeline version 1.1.0-cdh5.8.4 by Apache Hive
beeline> !connect jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM
scan complete in 3ms
Connecting to jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM
Enter username for jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172s 1-8-59.ap-southeast-1.compute.internal@SCREEN.COM:screenthong
Enter password for jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM: ********
Connected to: Apache Hive (version 1.1.0-cdh5.8.4)
Driver: Hive JDBC (version 1.1.0-cdh5.8.4)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> show tables;
INFO  : Compiling command(queryId=hive_20170215223939_c14ec6f8-915f-449e-956d-7a53d8eafee2): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170215223939_c14ec6f8-915f-449e-956d-7a53d8eafee2); Time taken: 0.966 seconds
INFO  : Executing command(queryId=hive_20170215223939_c14ec6f8-915f-449e-956d-7a53d8eafee2): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215223939_c14ec6f8-915f-449e-956d-7a53d8eafee2); Time taken: 0.33 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (1.776 seconds)
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1>
```
