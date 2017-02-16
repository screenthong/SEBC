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
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> `show tables;`
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

## add role sentry_admin
```
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> create role sentry_admin;
INFO  : Compiling command(queryId=hive_20170215224949_9a37528d-8050-4022-94de-c0c74b47ac17): create role sentry_admin
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215224949_9a37528d-8050-4022-94de-c0c74b47ac17); Time taken: 0.075 seconds
INFO  : Executing command(queryId=hive_20170215224949_9a37528d-8050-4022-94de-c0c74b47ac17): create role sentry_admin
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215224949_9a37528d-8050-4022-94de-c0c74b47ac17); Time taken: 0.15 seconds
INFO  : OK
No rows affected (0.292 seconds)
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> GRANT ALL ON SERVER ip-172-31-8-59.ap-southeast-1.compute.internal  TO ROLE sentry_admin;
Error: Error while compiling statement: FAILED: ParseException line 1:22 mismatched input '-' expecting TO near 'ip' in grant privileges (state=42000,code=40000)
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> GRANT ALL ON SERVER 'ip-172-31-8-59.ap-southeast-1.compute.internal'  TO ROLE sentry_admin;
Error: Error while compiling statement: FAILED: ParseException line 1:13 cannot recognize input near 'SERVER' ''ip-172-31-8-59.ap-southeast-1.compute.internal'' 'TO' in privilege object (state=42000,code=40000)
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> GRANT ALL ON SERVER server1  TO ROLE sentry_admin;
INFO  : Compiling command(queryId=hive_20170215225151_ebc2cd86-942e-41b2-a325-ae6b9213b678): GRANT ALL ON SERVER server1  TO ROLE sentry_admin
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215225151_ebc2cd86-942e-41b2-a325-ae6b9213b678); Time taken: 0.139 seconds
INFO  : Executing command(queryId=hive_20170215225151_ebc2cd86-942e-41b2-a325-ae6b9213b678): GRANT ALL ON SERVER server1  TO ROLE sentry_admin
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215225151_ebc2cd86-942e-41b2-a325-ae6b9213b678); Time taken: 0.15 seconds
INFO  : OK
No rows affected (0.303 seconds)
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> GRANT ALL ON SERVER 172.31.8.59  TO ROLE sentry_admin;
Error: Error while compiling statement: FAILED: ParseException line 1:13 cannot recognize input near 'SERVER' '172.31' '.' in privilege object (state=42000,code=40000)
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> GRANT ROLE sentry_admin TO GROUP screenthong;
INFO  : Compiling command(queryId=hive_20170215225252_d88f6f91-a4b4-4f67-bb3e-e032277dd2d1): GRANT ROLE sentry_admin TO GROUP screenthong
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215225252_d88f6f91-a4b4-4f67-bb3e-e032277dd2d1); Time taken: 0.071 seconds
INFO  : Executing command(queryId=hive_20170215225252_d88f6f91-a4b4-4f67-bb3e-e032277dd2d1): GRANT ROLE sentry_admin TO GROUP screenthong
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215225252_d88f6f91-a4b4-4f67-bb3e-e032277dd2d1); Time taken: 0.071 seconds
INFO  : OK
No rows affected (0.152 seconds)
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> SHOW TABLES;
INFO  : Compiling command(queryId=hive_20170215225353_5bdf2f68-4cc8-4572-a625-ca66b7bae44b): SHOW TABLES
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170215225353_5bdf2f68-4cc8-4572-a625-ca66b7bae44b); Time taken: 0.09 seconds
INFO  : Executing command(queryId=hive_20170215225353_5bdf2f68-4cc8-4572-a625-ca66b7bae44b): SHOW TABLES
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215225353_5bdf2f68-4cc8-4572-a625-ca66b7bae44b); Time taken: 0.232 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.446 seconds)
```
