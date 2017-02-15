## stop

```
[hdfs@ip-172-31-8-59 ~]$ curl -X POST -u screenthong:cloudera 'http://localhost:7180/api/v12/clusters/Screenthong%2FSEBC/services/hive/commands/stop'
{
  "id" : 795,
  "name" : "Stop",
  "startTime" : "2017-02-15T02:53:42.869Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

## start

```
[hdfs@ip-172-31-8-59 ~]$ curl -X POST -u screenthong:cloudera 'http://localhost:7180/api/v12/clusters/Screenthong%2FSEBC/services/hive/commands/start'
{
  "id" : 798,
  "name" : "Start",
  "startTime" : "2017-02-15T02:54:01.009Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

## check

```
[hdfs@ip-172-31-8-59 ~]$ curl -u screenthong:cloudera 'http://localhost:7180/api/v12/clusters/Screenthong%2FSEBC/services/hive'
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-8-59.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "http://ip-172-31-8-59.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STARTED",
  "healthSummary" : "DISABLED",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "DISABLED_HEALTH"
}[hdfs@ip-172-31-8-59 ~]$ curl -u screenthong:cloudera 'http://localhost:7180/api/v12/clusters/Screenthong%2FSEBC/services/hive'
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-8-59.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "http://ip-172-31-8-59.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "GOOD_HEALTH"
```
