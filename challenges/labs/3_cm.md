## Command and output for hdfs dfs -ls /user

```
[hdfs@ip-172-31-13-35 ~]$ hdfs dfs -ls /user
Found 6 items
drwxr-xr-x   - fullerton fullerton          0 2017-02-17 01:13 /user/fullerton
drwxrwxrwx   - mapred    hadoop             0 2017-02-17 01:10 /user/history
drwxrwxr-t   - hive      hive               0 2017-02-17 01:11 /user/hive
drwxrwxr-x   - hue       hue                0 2017-02-17 01:11 /user/hue
drwxrwxr-x   - oozie     oozie              0 2017-02-17 01:12 /user/oozie
drwxr-xr-x   - raffles   raffles            0 2017-02-17 01:13 /user/raffle
```

## The output from the CM API call ../api/v14/hosts

```
[hdfs@ip-172-31-13-35 ~]$ curl -u admin:admin 'http://ip-172-31-13-35.ap-southeast-1.compute.internal:7180/api/v14/hosts'
{
  "items" : [ {
    "hostId" : "b22acf17-dd63-4278-bf96-10de5722f12f",
    "ipAddress" : "172.31.12.119",
    "hostname" : "ip-172-31-12-119.ap-southeast-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-13-35.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/b22acf17-dd63-4278-bf96-10de5722f12f",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 15605035008
  }, {
    "hostId" : "25aae63a-c996-4c80-a69a-35ab85fd459e",
    "ipAddress" : "172.31.13.35",
    "hostname" : "ip-172-31-13-35.ap-southeast-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-13-35.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/25aae63a-c996-4c80-a69a-35ab85fd459e",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 15605035008
  }, {
    "hostId" : "513dbef0-09fc-4eb6-ba82-6513c57b0dc2",
    "ipAddress" : "172.31.14.149",
    "hostname" : "ip-172-31-14-149.ap-southeast-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-13-35.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/513dbef0-09fc-4eb6-ba82-6513c57b0dc2",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 15605035008
  }, {
    "hostId" : "3d5ce54d-687e-4bb4-bf21-8619d9b92496",
    "ipAddress" : "172.31.7.202",
    "hostname" : "ip-172-31-7-202.ap-southeast-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-13-35.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/3d5ce54d-687e-4bb4-bf21-8619d9b92496",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 15605035008
  }, {
    "hostId" : "ef2ea92a-9e21-44cc-8c11-08b99295a29a",
    "ipAddress" : "172.31.8.245",
    "hostname" : "ip-172-31-8-245.ap-southeast-1.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-13-35.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/ef2ea92a-9e21-44cc-8c11-08b99295a29a",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 15605035008
  } ]

```
