
## Report the latest available version of the API

Report the latest available version of the API
```
[root@ip-172-31-8-59 java]# curl -u screenthong:cloudera 'http://ip-172-31-8-59.ap-southeast-1.compute.internal:7180/api/version'                
v14
```

## Report the CM version

```
[root@ip-172-31-8-59 java]# curl -u screenthong:cloudera 'http://ip-172-31-8-59.ap-southeast-1.compute.internal:7180/api/v12/cm/version'
{
  "version" : "5.9.1",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20170112-1158",
  "gitHash" : "a66d8bbdbe8bc3ee54235e55423f2f76c7d9f3b1",
  "snapshot" : false
}
```

## List all CM users

```
[root@ip-172-31-8-59 java]# curl -u screenthong:cloudera 'http://ip-172-31-8-59.ap-southeast-1.compute.internal:7180/api/v14/users'
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  }, {
    "name" : "screenthong",
    "roles" : [ "ROLE_ADMIN" ]
  } ]
}
```

## Report the database server in use by CM

```
[root@ip-172-31-8-59 java]# curl -u screenthong:cloudera 'http://ip-172-31-8-59.ap-southeast-1.compute.internal:7180/api/v14/cm/scmDbInfo'
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
```
