http://ec2-54-254-160-237.ap-southeast-1.compute.amazonaws.com:7180/api/v2/cm/deployment

```
{
  "timestamp" : "2017-02-15T02:02:13.586Z",
  "clusters" : [ {
    "name" : "Screenthong/SEBC",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "965738496"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "965738496"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "912680550"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "153"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-172-31-8-59.ap-southeast-1.compute.internal"
        }, {
          "name" : "hive_metastore_database_password",
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
        "name" : "hive-GATEWAY-3548730fcbbf564860305fcd0dddb332",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0a8b0cd0a35a2aed9"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-69af8af88bb5dcfd25e27ffb029114c3",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-02ccfc696b5fc2f14"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-a710cccbdf999d4367696c971a84a406",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0f62437df792dbf6d"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-be15da8be32bae5bbdf09f78d7c3c459",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0c0d150347da6fe0d"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-e658643835a3d75fa62bd9d160c0d295",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-e658643835a3d75fa62bd9d160c0d295",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9397ekll27vxfdmpvneblz0xv"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-e658643835a3d75fa62bd9d160c0d295",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6gro6ifqnhnjdrr2grha2zyw6"
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
            "name" : "zookeeper_server_java_heapsize",
            "value" : "965738496"
          } ]
        } ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-e658643835a3d75fa62bd9d160c0d295",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7kkyxwk4nn2md99l658fj04pq"
          }, {
            "name" : "serverId",
            "value" : "1"
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
          "value" : "ip-172-31-8-59.ap-southeast-1.compute.internal"
        }, {
          "name" : "database_password",
          "value" : "password"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-NAMENODE-e658643835a3d75fa62bd9d160c0d295"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-e658643835a3d75fa62bd9d160c0d295",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bde344xvayozelem0y31dn5hs"
          }, {
            "name" : "secret_key",
            "value" : "U8DH9WiMuv9pIx9xtdmEr6qOZuNm1u"
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
            "name" : "oozie_database_host",
            "value" : "ip-172-31-8-59.ap-southeast-1.compute.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "965738496"
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
        "name" : "oozie-OOZIE_SERVER-e658643835a3d75fa62bd9d160c0d295",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "agle5pgatb5p63lqmkwsq994j"
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
            "value" : "2"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "2"
          } ]
        }, {
          "roleType" : "JOBHISTORY",
          "items" : [ {
            "name" : "heap_dump_directory_free_space_absolute_thresholds",
            "value" : "{\"warning\":1073741824,\"critical\":1073741824}"
          }, {
            "name" : "log_directory_free_space_absolute_thresholds",
            "value" : "{\"warning\":1073741824,\"critical\":1073741824}"
          }, {
            "name" : "mr2_jobhistory_java_heapsize",
            "value" : "965738496"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "heap_dump_directory_free_space_absolute_thresholds",
            "value" : "{\"warning\":1073741824,\"critical\":1073741824}"
          }, {
            "name" : "log_directory_free_space_absolute_thresholds",
            "value" : "{\"warning\":1073741824,\"critical\":1073741824}"
          }, {
            "name" : "node_manager_java_heapsize",
            "value" : "52428800"
          }, {
            "name" : "nodemanager_local_data_directories_free_space_absolute_thresholds",
            "value" : "{\"warning\":1073741824,\"critical\":1073741824}"
          }, {
            "name" : "nodemanager_log_directories_free_space_absolute_thresholds",
            "value" : "{\"warning\":2147483648,\"critical\":1073741824}"
          }, {
            "name" : "nodemanager_recovery_directory_free_space_absolute_thresholds",
            "value" : "{\"warning\":2147483648,\"critical\":1073741824}"
          }, {
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
            "value" : "/data/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/data/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "1"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "1024"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "heap_dump_directory_free_space_absolute_thresholds",
            "value" : "{\"warning\":1073741824,\"critical\":1073741824}"
          }, {
            "name" : "log_directory_free_space_absolute_thresholds",
            "value" : "{\"warning\":1073741824,\"critical\":1073741824}"
          }, {
            "name" : "resource_manager_java_heapsize",
            "value" : "965738496"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "1024"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "1"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "bdWThIt2G7HJSHBGlWtDDApXC1RekK"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-e658643835a3d75fa62bd9d160c0d295",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "70xz29pr1bay4ljjj9qcibdil"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-3548730fcbbf564860305fcd0dddb332",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0a8b0cd0a35a2aed9"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "25jzpu1726sb6eloas4y5q97t"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-69af8af88bb5dcfd25e27ffb029114c3",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-02ccfc696b5fc2f14"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "d1v04q3czyihijksx9i9lo63d"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-a710cccbdf999d4367696c971a84a406",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0f62437df792dbf6d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5gifnld6c2jlhv60p6qdhfvjb"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-be15da8be32bae5bbdf09f78d7c3c459",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0c0d150347da6fe0d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5jzzc2r6c22c6mg36mg9b2y93"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-e658643835a3d75fa62bd9d160c0d295",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "90"
          }, {
            "name" : "role_jceks_password",
            "value" : "6ezbthffz6oq06qt4gdwt9egv"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "BALANCER",
          "items" : [ {
            "name" : "balancer_java_heapsize",
            "value" : "52428800"
          } ]
        }, {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "2360792268"
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
            "value" : "/dfs/jn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "524288000"
          }, {
            "name" : "role_config_suppression_namenode_java_heapsize_minimum_validator",
            "value" : "true"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "524288000"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "BAU3Hqn4QJN6A7i14hrRHZT0O5pJ6G"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "Hjr4RKcBXhcBexJhrd4cluxAE4sKcz"
        }, {
          "name" : "hdfs_under_replicated_blocks_thresholds",
          "value" : "{\"warning\":\"never\",\"critical\":\"never\"}"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "KIm0FfrL3aUbWsi6uQXjbcX7le94WR"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "service_health_suppression_hdfs_under_replicated_blocks",
          "value" : "true"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-be15da8be32bae5bbdf09f78d7c3c459",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "i-0c0d150347da6fe0d"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-3548730fcbbf564860305fcd0dddb332",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0a8b0cd0a35a2aed9"
        },
        "config" : {
          "items" : [ {
            "name" : "datanode_data_directories_free_space_absolute_thresholds",
            "value" : "{\"warning\":2147483648,\"critical\":1073741824}"
          }, {
            "name" : "log_directory_free_space_absolute_thresholds",
            "value" : "{\"warning\":2147483648,\"critical\":1073741824}"
          }, {
            "name" : "role_jceks_password",
            "value" : "6hjeox0jwqz5l7kw3fdjceh9b"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-69af8af88bb5dcfd25e27ffb029114c3",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-02ccfc696b5fc2f14"
        },
        "config" : {
          "items" : [ {
            "name" : "role_health_suppression_data_node_log_directory_free_space",
            "value" : "true"
          }, {
            "name" : "role_health_suppression_datanode_data_directories_free_space",
            "value" : "true"
          }, {
            "name" : "role_jceks_password",
            "value" : "1o28ba2pea1qutxjtbvura5d4"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-a710cccbdf999d4367696c971a84a406",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0f62437df792dbf6d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_health_suppression_data_node_log_directory_free_space",
            "value" : "true"
          }, {
            "name" : "role_health_suppression_datanode_data_directories_free_space",
            "value" : "true"
          }, {
            "name" : "role_jceks_password",
            "value" : "2uvz8c9iorn75qz8ao7ix34v4"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-be15da8be32bae5bbdf09f78d7c3c459",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0c0d150347da6fe0d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_health_suppression_data_node_log_directory_free_space",
            "value" : "true"
          }, {
            "name" : "role_jceks_password",
            "value" : "eflchgivodi0tigj29bnyccuq"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-e658643835a3d75fa62bd9d160c0d295",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
        },
        "config" : {
          "items" : [ {
            "name" : "namenode_id",
            "value" : "92"
          }, {
            "name" : "role_jceks_password",
            "value" : "1t0e1o80dy3w7l2vq5fw0bl5r"
          } ]
        }
      }, {
        "name" : "hdfs-SECONDARYNAMENODE-be15da8be32bae5bbdf09f78d7c3c459",
        "type" : "SECONDARYNAMENODE",
        "hostRef" : {
          "hostId" : "i-0c0d150347da6fe0d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_health_suppression_secondary_name_node_checkpoint_directories_free_space",
            "value" : "true"
          }, {
            "name" : "role_health_suppression_secondary_name_node_log_directory_free_space",
            "value" : "true"
          }, {
            "name" : "role_jceks_password",
            "value" : "6rn2iy99pw8butx9dnq71rtit"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "i-02ccfc696b5fc2f14",
    "ipAddress" : "172.31.1.71",
    "hostname" : "ip-172-31-1-71.ap-southeast-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0c0d150347da6fe0d",
    "ipAddress" : "172.31.13.155",
    "hostname" : "ip-172-31-13-155.ap-southeast-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "host_agent_parcel_directory_free_space_absolute_thresholds",
        "value" : "{\"warning\":2147483648,\"critical\":1073741824}"
      }, {
        "name" : "host_config_suppression_memory_overcommitted_validator",
        "value" : "true"
      } ]
    }
  }, {
    "hostId" : "i-0a8b0cd0a35a2aed9",
    "ipAddress" : "172.31.13.38",
    "hostname" : "ip-172-31-13-38.ap-southeast-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "host_agent_parcel_directory_free_space_absolute_thresholds",
        "value" : "{\"warning\":2147483648,\"critical\":1073741824}"
      } ]
    }
  }, {
    "hostId" : "i-0f62437df792dbf6d",
    "ipAddress" : "172.31.2.87",
    "hostname" : "ip-172-31-2-87.ap-southeast-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "host_agent_parcel_directory_free_space_absolute_thresholds",
        "value" : "{\"warning\":2147483648,\"critical\":1073741824}"
      }, {
        "name" : "host_config_suppression_memory_overcommitted_validator",
        "value" : "true"
      } ]
    }
  }, {
    "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a",
    "ipAddress" : "172.31.8.59",
    "hostname" : "ip-172-31-8-59.ap-southeast-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__ec46a18f-3eff-45f0-a689-0ffd4acc47d2",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "b05853b27898d50832db732e2ccc1f2bf8cf2145ffcb023c55a2104805db5a19",
    "pwSalt" : -8793445344151452360,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-ACTIVITYMONITOR-e658643835a3d75fa62bd9d160c0d295",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "8a4173dc9369546dfa0f827fba4a17c4d127dcc6f7bf6426039d4cea499ac490",
    "pwSalt" : -3268748221069373669,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-e658643835a3d75fa62bd9d160c0d295",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "6be09d9bf83e544681e2ccc65fb6bc794979cd68366fefa15f03d68ee8dfc92d",
    "pwSalt" : -1780684040471051972,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-e658643835a3d75fa62bd9d160c0d295",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "7f1347b5169316d6a887c691132317b48a6090db31c1cb22ae1921de14dcde87",
    "pwSalt" : 4990458980104005678,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-e658643835a3d75fa62bd9d160c0d295",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "3b26011bc406cc8870f456c696e880b1caa20c22bd514ac9000b69dad98dcee5",
    "pwSalt" : 4616381933008397942,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-e658643835a3d75fa62bd9d160c0d295",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "4b44e62349649c1af9b80860da91629a3ac3f70876f819c8090f4a8fd1662ac5",
    "pwSalt" : 5209646847960493933,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "d394f60190e92d730f008d1efa15286026e22458a91520bde9dc101eec7c2641",
    "pwSalt" : -4208682389573897455,
    "pwLogin" : true
  }, {
    "name" : "screenthong",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "f73ff4cef4ff067499c5eb76aabe1653bf9210a4ab6b7a0d82818461f1e220f1",
    "pwSalt" : -2001030060448683536,
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
        "roleType" : "ACTIVITYMONITOR",
        "items" : [ {
          "name" : "firehose_database_host",
          "value" : "ip-172-31-8-59.ap-southeast-1.compute.internal"
        }, {
          "name" : "firehose_database_name",
          "value" : "amon"
        }, {
          "name" : "firehose_database_password",
          "value" : "amon_password"
        }, {
          "name" : "firehose_database_user",
          "value" : "amon"
        }, {
          "name" : "firehose_heapsize",
          "value" : "268435456"
        } ]
      }, {
        "roleType" : "EVENTSERVER",
        "items" : [ {
          "name" : "event_server_heapsize",
          "value" : "52428800"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "268435456"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "805306368"
        }, {
          "name" : "role_config_suppression_firehose_heap_size_validator",
          "value" : "true"
        }, {
          "name" : "role_config_suppression_firehose_non_java_memory_validator",
          "value" : "true"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "ip-172-31-8-59.ap-southeast-1.compute.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "rman_password"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        }, {
          "name" : "headlamp_heapsize",
          "value" : "268435456"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_heapsize",
          "value" : "268435456"
        }, {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "805306368"
        }, {
          "name" : "role_config_suppression_firehose_heap_size_validator",
          "value" : "true"
        }, {
          "name" : "role_config_suppression_firehose_non_java_memory_validator",
          "value" : "true"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-e658643835a3d75fa62bd9d160c0d295",
      "type" : "ACTIVITYMONITOR",
      "hostRef" : {
        "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "39ce8cus8kk8ttysl3c81204f"
        } ]
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-e658643835a3d75fa62bd9d160c0d295",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "5991xnn08gnhw6fota3ggrq2r"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-e658643835a3d75fa62bd9d160c0d295",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "2fgc4rhnfyw9d2rx50a9oqww4"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-e658643835a3d75fa62bd9d160c0d295",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "28y0j2ia4bxwqc3id0f6u20qv"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-e658643835a3d75fa62bd9d160c0d295",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "8ae59a7d8pn4nz0plj5lnmyfh"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-e658643835a3d75fa62bd9d160c0d295",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "bfb7e6f7-81e0-4ed9-9c05-e9ff313ff81a"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "8r3tt97kszvaoolslz4xtvq9x"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/24/2012 15:20"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}
```
