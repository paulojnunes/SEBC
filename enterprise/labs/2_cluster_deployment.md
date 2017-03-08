```
{
  "timestamp" : "2017-03-08T09:51:28.054Z",
  "clusters" : [ {
    "name" : "paulojnunes",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "3459252224"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "3459252224"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "3229142220"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "543"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "xpandsebc1.xpand.com"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "hive_password"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-20a796e2c3874739377a8199d915bdaf",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "f8d51b06-55a0-460f-9dd8-362604359a5a"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-753687027141059f687db37fbe98b05a",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "70fb73e3-e419-46ae-89a3-5fe2214a4c1c"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-8966c54f7d95eef5261f0d3b910f6b88",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-93e9af7f7acf8971a6acda4988963fc5",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "905d4783-6d8a-424d-b047-9bb705c24fba"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-fb56343076b8348bf46b309bed2160aa",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "2526498d-6d69-40f5-84dc-1ce3840ac7aa"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-fb56343076b8348bf46b309bed2160aa",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "2526498d-6d69-40f5-84dc-1ce3840ac7aa"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1bbm6qkulgwzau1vmrp9flpwb"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-93e9af7f7acf8971a6acda4988963fc5",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "905d4783-6d8a-424d-b047-9bb705c24fba"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ed6x4iy3432jqgj3fxqsmdvtm"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SERVER",
          "items" : [ {
            "name" : "dataDir",
            "value" : "/data/lib/zookeeper"
          }, {
            "name" : "dataLogDir",
            "value" : "/data/lib/zookeeper"
          } ]
        } ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-20a796e2c3874739377a8199d915bdaf",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "f8d51b06-55a0-460f-9dd8-362604359a5a"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "eyomlwc9rqqc75zibe1pb2rcv"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-93e9af7f7acf8971a6acda4988963fc5",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "905d4783-6d8a-424d-b047-9bb705c24fba"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7q05pgrbko8mf0ts56ovwvz41"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-fb56343076b8348bf46b309bed2160aa",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "2526498d-6d69-40f5-84dc-1ce3840ac7aa"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9knffhchmglwe96lv7hhkolpw"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "xpandsebc1.xpand.com"
        }, {
          "name" : "database_password",
          "value" : "hue_password"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-8966c54f7d95eef5261f0d3b910f6b88"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-8966c54f7d95eef5261f0d3b910f6b88",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "a13rmza6icjsf5lrd2x6tup9q"
          }, {
            "name" : "secret_key",
            "value" : "LtDcLJ7WLoqYA22MdHaFAyYAo5LKGw"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_data_dir",
            "value" : "/data/lib/oozie/data"
          }, {
            "name" : "oozie_database_host",
            "value" : "xpandsebc1.xpand.com"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie_password"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-8966c54f7d95eef5261f0d3b910f6b88",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9ktr4ycpt94cnfxrl8mftx1xf"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "4"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "1"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1800"
          }, {
            "name" : "rm_io_weight",
            "value" : "900"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/mnt/resource/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/data/yarn/container-logs,/mnt/resource/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "4096"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "4483"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "true"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "true"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "true"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "1ZEIiedKIuIylm9LUeFKKJWOZloCzq"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-GATEWAY-8966c54f7d95eef5261f0d3b910f6b88",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "yarn-JOBHISTORY-fb56343076b8348bf46b309bed2160aa",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "2526498d-6d69-40f5-84dc-1ce3840ac7aa"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "shbr454as2ttrph20szemqwo"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-20a796e2c3874739377a8199d915bdaf",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "f8d51b06-55a0-460f-9dd8-362604359a5a"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6zh2eojzq4ztb8li55luyrf0y"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-753687027141059f687db37fbe98b05a",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "70fb73e3-e419-46ae-89a3-5fe2214a4c1c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2ex88oytjpbtsku2p8wbroxhl"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-93e9af7f7acf8971a6acda4988963fc5",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "905d4783-6d8a-424d-b047-9bb705c24fba"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ewdl6knw7zvl24nmjolfx5mh0"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-93e9af7f7acf8971a6acda4988963fc5",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "905d4783-6d8a-424d-b047-9bb705c24fba"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "47"
          }, {
            "name" : "role_jceks_password",
            "value" : "2w0ddh3u37t5uf1fhhwqt4b15"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "5270974873"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "200"
          }, {
            "name" : "rm_io_weight",
            "value" : "100"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/data/dfs/jn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/data/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/data/dfs/snn"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "aEa9UAh9vAGPzzVQ85r3Xrnid7kFS3"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "ygoPzx1a5pW8xnk63aD9K7tMBORWS3"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "eHbCutWzrF0UW5ZXFmF6OOku9NLPYu"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-8966c54f7d95eef5261f0d3b910f6b88",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-20a796e2c3874739377a8199d915bdaf",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "f8d51b06-55a0-460f-9dd8-362604359a5a"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "c8b3gndn1uoedf7rrsyxr7t49"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-753687027141059f687db37fbe98b05a",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "70fb73e3-e419-46ae-89a3-5fe2214a4c1c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "eciszzf5cgvqmzz9ffr3dzocx"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-93e9af7f7acf8971a6acda4988963fc5",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "905d4783-6d8a-424d-b047-9bb705c24fba"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "a9ho5saycvr84r16is4itts0k"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-93e9af7f7acf8971a6acda4988963fc5",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "905d4783-6d8a-424d-b047-9bb705c24fba"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e23wxxdynfslrt0sq97rzq0o9"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-fb56343076b8348bf46b309bed2160aa",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "2526498d-6d69-40f5-84dc-1ce3840ac7aa"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bh36g1wwjcld5yspr5y67d8b6"
          } ]
        }
      }, {
        "name" : "hdfs-GATEWAY-8966c54f7d95eef5261f0d3b910f6b88",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-HTTPFS-8966c54f7d95eef5261f0d3b910f6b88",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2vws0uxj7mpe2kh3c9g22gs3x"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-20a796e2c3874739377a8199d915bdaf",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "f8d51b06-55a0-460f-9dd8-362604359a5a"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e6me6dlk4y9chhtda7zt7jixy"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-93e9af7f7acf8971a6acda4988963fc5",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "905d4783-6d8a-424d-b047-9bb705c24fba"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6nn2kknqa29e64uy0eirorswp"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-fb56343076b8348bf46b309bed2160aa",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "2526498d-6d69-40f5-84dc-1ce3840ac7aa"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "eshrz9zgcx9nyj28zn56m5r84"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-93e9af7f7acf8971a6acda4988963fc5",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "905d4783-6d8a-424d-b047-9bb705c24fba"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "xpandsebc"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "xpandsebc"
          }, {
            "name" : "namenode_id",
            "value" : "49"
          }, {
            "name" : "role_jceks_password",
            "value" : "ao9jf8bcnh320enhd2w0egdk0"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-fb56343076b8348bf46b309bed2160aa",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "2526498d-6d69-40f5-84dc-1ce3840ac7aa"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "xpandsebc"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "xpandsebc"
          }, {
            "name" : "namenode_id",
            "value" : "56"
          }, {
            "name" : "role_jceks_password",
            "value" : "bb0hd1tq7fdtcwobrn8jru2xt"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17",
    "ipAddress" : "10.0.0.4",
    "hostname" : "xpandsebc1.xpand.com",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "905d4783-6d8a-424d-b047-9bb705c24fba",
    "ipAddress" : "10.0.0.5",
    "hostname" : "xpandsebc2.xpand.com",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "2526498d-6d69-40f5-84dc-1ce3840ac7aa",
    "ipAddress" : "10.0.0.6",
    "hostname" : "xpandsebc3.xpand.com",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "f8d51b06-55a0-460f-9dd8-362604359a5a",
    "ipAddress" : "10.0.0.7",
    "hostname" : "xpandsebc4.xpand.com",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "70fb73e3-e419-46ae-89a3-5fe2214a4c1c",
    "ipAddress" : "10.0.0.8",
    "hostname" : "xpandsebc5.xpand.com",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-8966c54f7d95eef5261f0d3b910f6b88",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "cbe1c5387e7c3db7ccd5c2bd8203e29df9bad3005f0d290e14ba059815e16506",
    "pwSalt" : 3989910702000274062,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-8966c54f7d95eef5261f0d3b910f6b88",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "8c6125bfdcdb5da45beccf05039aaaff7b54175e00c785068ac9850bd28592fa",
    "pwSalt" : -150995543677088133,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-8966c54f7d95eef5261f0d3b910f6b88",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "ee8fbd87917a9e54722166f0e4e045a096f81e42d49329df8a3b7ac8c9af64e8",
    "pwSalt" : -7937873681579176418,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-8966c54f7d95eef5261f0d3b910f6b88",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "f107e89e95f4d8a00d0b6babe85b1b1f748b0477ded03780342d68992412798d",
    "pwSalt" : 6400269038958801279,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "cab8e5ecff1a4bb8587b73f8e212f91e35315dc084ad7f7d395f54c310ccc0ec",
    "pwSalt" : 2491561124705794535,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "daa15e9d35bdbbe1c1b17f49e8f0c4a8d29711b379ed5b2f861f7ff83b5a439d",
    "pwSalt" : -6958780588125631900,
    "pwLogin" : true
  }, {
    "name" : "paulojnunes",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "e59d6674fda242daccf097f18fde1af4fa362a9d37e656c130af50dd0912612e",
    "pwSalt" : 4855267800498599837,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.8.3",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20161019-1014",
    "gitHash" : "518f0d6d44abc87bc392646e4369a20c8192b7cf",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_storage_dir",
          "value" : "/data/lib/cloudera-host-monitor"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "xpandsebc1.xpand.com"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "rman_password"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_storage_dir",
          "value" : "/data/lib/cloudera-service-monitor"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ALERTPUBLISHER-8966c54f7d95eef5261f0d3b910f6b88",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "5bma1oxt76qs87f6ienbkfcif"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-8966c54f7d95eef5261f0d3b910f6b88",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "deappcw3y4z89yewuf6905xqg"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-8966c54f7d95eef5261f0d3b910f6b88",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "aq4jkb8atok3ctips1tdadiwi"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-8966c54f7d95eef5261f0d3b910f6b88",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "2tqoobzymy7stj5ekimcy2tli"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-8966c54f7d95eef5261f0d3b910f6b88",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "b5c295b6-7117-4412-882f-0e9f5e346b17"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "2sjmaa7me1r2ljjnqj6thei8r"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/21/2012 13:50"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "NOT_ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "http://xpandsebc1.westeurope.cloudapp.azure.com/cdh5.8/,https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh5/parcels/5.8.3/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}
```