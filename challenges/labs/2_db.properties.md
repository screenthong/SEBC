## Start the Cloudera Manager server. Copy the first line from your server log
```
head /var/log/cloudera-scm-server/cloudera-scm-server.log

```

## Copy the log line that contains the phrase "Started Jetty server"
```
grep "Started Jetty server" /var/log/cloudera-scm-server/cloudera-scm-server.log
```

## Copy your db.properties
```
```
