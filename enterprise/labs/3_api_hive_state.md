API requests
========
## Stop Hive
```
[pjdn@xpandsebc1 ~]$ curl -u paulojnunes:cloudera -X POST http://xpandsebc1.westeurope.cloudapp.azure.com:7180/api/v2/clusters/paulojnunes/services/hive/commands/stop
{
  "id" : 957,
  "name" : "Stop",
  "startTime" : "2017-03-08T09:55:43.586Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

## Start Hive
```
[pjdn@xpandsebc1 ~]$ curl -u paulojnunes:cloudera -X POST http://xpandsebc1.westeurope.cloudapp.azure.com:7180/api/v2/clusters/paulojnunes/services/hive/commands/start
{
  "id" : 961,
  "name" : "Start",
  "startTime" : "2017-03-08T09:58:42.288Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
```

## Check Hive status
```
[pjdn@xpandsebc1 ~]$ curl -u paulojnunes:cloudera -X GET http://xpandsebc1.westeurope.cloudapp.azure.com:7180/api/v2/clusters/paulojnunes/services/hive/
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://xpandsebc1.xpand.com:7180/cmf/serviceRedirect/hive",
  "serviceState" : "STOPPED",
  "healthSummary" : "DISABLED",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "DISABLED"
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "DISABLED"
  } ],
  "configStale" : false,
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive"
}
```