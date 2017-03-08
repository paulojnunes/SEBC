# Upgrade Cloudera Manager

## Report latest available API version
```
[root@xpandsebc1 ~]# curl -u paulojnunes:cloudera -X GET http://xpandsebc1.westeurope.cloudapp.azure.com:7180/api/version
v13
```

## Report CM Version
```
[root@xpandsebc1 ~]# curl -u paulojnunes:cloudera -X GET http://xpandsebc1.westeurope.cloudapp.azure.com:7180/api/v13/cm/version
{
  "version" : "5.8.3",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20161019-1014",
  "gitHash" : "518f0d6d44abc87bc392646e4369a20c8192b7cf",
  "snapshot" : false
}
```

## List all CM users
```
[root@xpandsebc1 ~]# curl -u paulojnunes:cloudera -X GET http://xpandsebc1.westeurope.cloudapp.azure.com:7180/api/v13/users
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  }, {
    "name" : "paulojnunes",
    "roles" : [ "ROLE_ADMIN" ]
  } ]
}
```

## Report the DB server in use by CM
>**Note**
>Done after upgrade because of api v13 limitation
>Using api v15 for this one
```
[root@xpandsebc1 ~]# curl -u paulojnunes:cloudera -X GET http://xpandsebc1.westeurope.cloudapp.azure.com:7180/api/v15/cm/scmDbInfo
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
```