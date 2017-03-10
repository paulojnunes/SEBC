###hdfs dfs -ls /user
```
[root@challengesebc2 ~]# hdfs dfs -ls /user
Found 6 items
drwxrwxrwx   - mapred  hadoop           0 2017-03-10 08:54 /user/history
drwxrwxr-t   - hive    hive             0 2017-03-10 08:55 /user/hive
drwxrwxr-x   - hue     hue              0 2017-03-10 08:55 /user/hue
drwxr-xr-x   - neymar  neymar           0 2017-03-10 09:00 /user/neymar
drwxrwxr-x   - oozie   oozie            0 2017-03-10 08:56 /user/oozie
drwxr-xr-x   - ronaldo ronaldo          0 2017-03-10 09:00 /user/ronaldo
```

###CM API call
```

[root@challengesebc2 ~]# curl -u admin:admin -X GET http://challengesebc2.northeurope.cloudapp.azure.com:7180/api/v14/hosts
{
  "items" : [ {
    "hostId" : "7eacf168-6669-461d-963d-cc216d40f623",
    "ipAddress" : "10.0.1.4",
    "hostname" : "challengesebc1.xpand.com",
    "rackId" : "/default",
    "hostUrl" : "http://challengesebc2.xpand.com:7180/cmf/hostRedirect/7eacf168-6669-461d-963d-cc216d40f623",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 14734442496
  }, {
    "hostId" : "7d0412dc-1c9f-4a08-8fec-48a2f77123b1",
    "ipAddress" : "10.0.1.5",
    "hostname" : "challengesebc2.xpand.com",
    "rackId" : "/default",
    "hostUrl" : "http://challengesebc2.xpand.com:7180/cmf/hostRedirect/7d0412dc-1c9f-4a08-8fec-48a2f77123b1",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 14734442496
  }, {
    "hostId" : "ed13ca58-3464-4451-b9ff-3f8d861c30ab",
    "ipAddress" : "10.0.1.6",
    "hostname" : "challengesebc3.xpand.com",
    "rackId" : "/default",
    "hostUrl" : "http://challengesebc2.xpand.com:7180/cmf/hostRedirect/ed13ca58-3464-4451-b9ff-3f8d861c30ab",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 14734442496
  }, {
    "hostId" : "214b0d51-d329-4e3b-ab89-abdc7e5649cf",
    "ipAddress" : "10.0.1.7",
    "hostname" : "challengesebc4.xpand.com",
    "rackId" : "/default",
    "hostUrl" : "http://challengesebc2.xpand.com:7180/cmf/hostRedirect/214b0d51-d329-4e3b-ab89-abdc7e5649cf",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 14734442496
  }, {
    "hostId" : "3b916231-d815-402c-af33-767b39038bb0",
    "ipAddress" : "10.0.1.8",
    "hostname" : "challengesebc5.xpand.com",
    "rackId" : "/default",
    "hostUrl" : "http://challengesebc2.xpand.com:7180/cmf/hostRedirect/3b916231-d815-402c-af33-767b39038bb0",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 4,
    "totalPhysMemBytes" : 14734442496
  } ]
}
```