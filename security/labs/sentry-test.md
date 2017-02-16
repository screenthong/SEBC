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

## create reads/writes rols
```
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> create role reads;
INFO  : Compiling command(queryId=hive_20170215230909_c3a9344a-cd96-47bf-accb-91ced24c6a72): create role reads
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215230909_c3a9344a-cd96-47bf-accb-91ced24c6a72); Time taken: 0.084 seconds
INFO  : Executing command(queryId=hive_20170215230909_c3a9344a-cd96-47bf-accb-91ced24c6a72): create role reads
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215230909_c3a9344a-cd96-47bf-accb-91ced24c6a72); Time taken: 0.055 seconds
INFO  : OK
No rows affected (0.151 seconds)
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> create role writes;
INFO  : Compiling command(queryId=hive_20170215230909_89c648c4-16b7-43d5-a5ae-9a5d475bc808): create role writes
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215230909_89c648c4-16b7-43d5-a5ae-9a5d475bc808); Time taken: 0.058 seconds
INFO  : Executing command(queryId=hive_20170215230909_89c648c4-16b7-43d5-a5ae-9a5d475bc808): create role writes
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215230909_89c648c4-16b7-43d5-a5ae-9a5d475bc808); Time taken: 0.026 seconds
INFO  : OK
No rows affected (0.094 seconds)
```

## assign roles to groups
```
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> GRANT SELECT ON DATABASE default TO ROLE reads;

INFO  : Compiling command(queryId=hive_20170215231010_53d2a800-4ecd-4f6d-9ee1-dcb110d78d25): GRANT SELECT ON DATABASE default TO ROLE reads
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215231010_53d2a800-4ecd-4f6d-9ee1-dcb110d78d25); Time taken: 0.056 seconds
INFO  : Executing command(queryId=hive_20170215231010_53d2a800-4ecd-4f6d-9ee1-dcb110d78d25): GRANT SELECT ON DATABASE default TO ROLE reads
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215231010_53d2a800-4ecd-4f6d-9ee1-dcb110d78d25); Time taken: 0.044 seconds
INFO  : OK
No rows affected (0.111 seconds)

0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> GRANT ROLE reads TO GROUP selector;

INFO  : Compiling command(queryId=hive_20170215231111_3188a8c6-fdb7-488d-9bb6-afa26f652f61): GRANT ROLE reads TO GROUP selector
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215231111_3188a8c6-fdb7-488d-9bb6-afa26f652f61); Time taken: 0.06 seconds
INFO  : Executing command(queryId=hive_20170215231111_3188a8c6-fdb7-488d-9bb6-afa26f652f61): GRANT ROLE reads TO GROUP selector
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215231111_3188a8c6-fdb7-488d-9bb6-afa26f652f61); Time taken: 0.033 seconds
INFO  : OK
No rows affected (0.102 seconds)

0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> REVOKE ALL ON DATABASE default FROM ROLE writes;

INFO  : Compiling command(queryId=hive_20170215231212_0a2983af-fba1-463c-868f-af25122390e7): REVOKE ALL ON DATABASE default FROM ROLE writes
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215231212_0a2983af-fba1-463c-868f-af25122390e7); Time taken: 0.059 seconds
INFO  : Executing command(queryId=hive_20170215231212_0a2983af-fba1-463c-868f-af25122390e7): REVOKE ALL ON DATABASE default FROM ROLE writes
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215231212_0a2983af-fba1-463c-868f-af25122390e7); Time taken: 0.087 seconds
INFO  : OK
No rows affected (0.157 seconds)

0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> GRANT SELECT ON default.sample_07 TO ROLE writes;

INFO  : Compiling command(queryId=hive_20170215231212_7147a148-27d4-40d7-95b5-04062b32ce00): GRANT SELECT ON default.sample_07 TO ROLE writes
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215231212_7147a148-27d4-40d7-95b5-04062b32ce00); Time taken: 0.061 seconds
INFO  : Executing command(queryId=hive_20170215231212_7147a148-27d4-40d7-95b5-04062b32ce00): GRANT SELECT ON default.sample_07 TO ROLE writes
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215231212_7147a148-27d4-40d7-95b5-04062b32ce00); Time taken: 0.041 seconds
INFO  : OK
No rows affected (0.112 seconds)

0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> GRANT ROLE writes TO GROUP inserters;

INFO  : Compiling command(queryId=hive_20170215231212_b41d55d7-e48b-4c6a-a401-e83c7c6b38cd): GRANT ROLE writes TO GROUP inserters
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20170215231212_b41d55d7-e48b-4c6a-a401-e83c7c6b38cd); Time taken: 0.06 seconds
INFO  : Executing command(queryId=hive_20170215231212_b41d55d7-e48b-4c6a-a401-e83c7c6b38cd): GRANT ROLE writes TO GROUP inserters
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215231212_b41d55d7-e48b-4c6a-a401-e83c7c6b38cd); Time taken: 0.032 seconds
INFO  : OK
No rows affected (0.101 seconds)
```

## george GROUP selector ROLE reads
```
[screenthong@ip-172-31-8-59 ~]$ kinit george
Password for george@SCREEN.COM:
[screenthong@ip-172-31-8-59 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_501
Default principal: george@SCREEN.COM

Valid starting     Expires            Service principal
02/15/17 23:13:44  02/16/17 23:13:44  krbtgt/SCREEN.COM@SCREEN.COM
        renew until 02/15/17 23:13:44
[screenthong@ip-172-31-8-59 ~]$ beeline
Beeline version 1.1.0-cdh5.8.4 by Apache Hive
beeline> !connect jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM
scan complete in 4ms
Connecting to jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM
Enter username for jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM: g
Enter password for jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM: *
Connected to: Apache Hive (version 1.1.0-cdh5.8.4)
Driver: Hive JDBC (version 1.1.0-cdh5.8.4)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> show tables;
INFO  : Compiling command(queryId=hive_20170215231414_7f46cc36-dcbe-43eb-a9f9-cbaa10470c7c): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170215231414_7f46cc36-dcbe-43eb-a9f9-cbaa10470c7c); Time taken: 0.073 seconds
INFO  : Executing command(queryId=hive_20170215231414_7f46cc36-dcbe-43eb-a9f9-cbaa10470c7c): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215231414_7f46cc36-dcbe-43eb-a9f9-cbaa10470c7c); Time taken: 0.18 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.39 seconds)
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> Closing: 0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM
```

## ferdinand GROUP inserters ROLE writes
```
[screenthong@ip-172-31-8-59 ~]$ kinit ferdinand
Password for ferdinand@SCREEN.COM:
[screenthong@ip-172-31-8-59 ~]$ beeline
Beeline version 1.1.0-cdh5.8.4 by Apache Hive
beeline>
beeline>
beeline>
beeline> !connect jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM
scan complete in 3ms
Connecting to jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM
Enter username for jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM: ferdinand
Enter password for jdbc:hive2://ip-172-31-8-59.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-8-59.ap-southeast-1.compute.internal@SCREEN.COM: *
Connected to: Apache Hive (version 1.1.0-cdh5.8.4)
Driver: Hive JDBC (version 1.1.0-cdh5.8.4)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-172-31-8-59.ap-southeast-1> show tables;
INFO  : Compiling command(queryId=hive_20170215231515_99961c3d-ce0e-4f20-9786-63fa2aad25d1): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170215231515_99961c3d-ce0e-4f20-9786-63fa2aad25d1); Time taken: 0.092 seconds
INFO  : Executing command(queryId=hive_20170215231515_99961c3d-ce0e-4f20-9786-63fa2aad25d1): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170215231515_99961c3d-ce0e-4f20-9786-63fa2aad25d1); Time taken: 0.218 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| sample_07  |
+------------+--+
1 row selected (0.493 seconds)
```
