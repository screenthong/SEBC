## List the command and output of ls /etc/yum.repos.d in challenges/labs/2_cm.md

```
[root@ip-172-31-13-35 ec2-user]# ls /etc/yum.repos.d/
cloudera-manager.repo  mysql.repo  redhat-rhui-client-config.repo  redhat-rhui.repo  rhel-source.repo  rhui-load-balancers.conf
[root@ip-172-31-13-35 ec2-user]# ls -l /etc/yum.repos.d/
total 28
-rw-r--r--  1 root root  272 Feb 17 00:37 cloudera-manager.repo
-rw-r--r--  1 root root  143 Feb 17 00:26 mysql.repo
-rw-r--r--  1 root root  606 Feb 17 00:01 redhat-rhui-client-config.repo
-rw-r--r--. 1 root root 6300 Feb 17 00:01 redhat-rhui.repo
-rw-r--r--. 1 root root  529 Oct 30  2013 rhel-source.repo
-rw-r--r--  1 root root   90 Feb 17 00:01 rhui-load-balancers.conf
```

## Use the scm_prepare_database.sh script to write your db.properties file and list the full cmd
```
[root@ip-172-31-13-35 yum.repos.d]# /usr/share/cmf/schema/scm_prepare_database.sh -h ip-172-31-8-245.ap-southeast-1.compute.internal -u root -p --scm-host ip-172-31-13-35.ap-southeast-1.compute.internal mysql scm scm -f
Enter database password:
Enter SCM password:
JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
Verifying that we can write to /etc/cloudera-scm-server
[                          main] DbProvisioner                  ERROR Exception when creating/dropping database with user 'root' and jdbc url 'jdbc:mysql://ip-172-31-8-245.ap-southeast-1.compute.internal/?useUnicode=true&characterEncoding=UTF-8'
java.sql.SQLException: Access denied for user 'root'@'ip-172-31-13-35.ap-southeast-1.compute.internal' (using password: YES)
        at com.mysql.jdbc.SQLError.createSQLException(SQLError.java:964)
        at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3970)
        at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3906)
        at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:873)
        at com.mysql.jdbc.MysqlIO.proceedHandshakeWithPluggableAuthentication(MysqlIO.java:1710)
        at com.mysql.jdbc.MysqlIO.doHandshake(MysqlIO.java:1226)
        at com.mysql.jdbc.ConnectionImpl.coreConnect(ConnectionImpl.java:2253)
        at com.mysql.jdbc.ConnectionImpl.connectOneTryOnly(ConnectionImpl.java:2284)
        at com.mysql.jdbc.ConnectionImpl.createNewIO(ConnectionImpl.java:2083)
        at com.mysql.jdbc.ConnectionImpl.<init>(ConnectionImpl.java:806)
        at com.mysql.jdbc.JDBC4Connection.<init>(JDBC4Connection.java:47)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:57)
        at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
        at java.lang.reflect.Constructor.newInstance(Constructor.java:526)
        at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)
        at com.mysql.jdbc.ConnectionImpl.getInstance(ConnectionImpl.java:410)
        at com.mysql.jdbc.NonRegisteringDriver.connect(NonRegisteringDriver.java:328)
        at java.sql.DriverManager.getConnection(DriverManager.java:571)
        at java.sql.DriverManager.getConnection(DriverManager.java:215)
        at com.cloudera.enterprise.dbutil.DbProvisioner.executeSql(DbProvisioner.java:283)
        at com.cloudera.enterprise.dbutil.DbProvisioner.doMain(DbProvisioner.java:95)
        at com.cloudera.enterprise.dbutil.DbProvisioner.main(DbProvisioner.java:110)
[                          main] DbProvisioner                  ERROR Stack Trace:
java.sql.SQLException: Access denied for user 'root'@'ip-172-31-13-35.ap-southeast-1.compute.internal' (using password: YES)
        at com.mysql.jdbc.SQLError.createSQLException(SQLError.java:964)
        at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3970)
        at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3906)
        at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:873)
        at com.mysql.jdbc.MysqlIO.proceedHandshakeWithPluggableAuthentication(MysqlIO.java:1710)
        at com.mysql.jdbc.MysqlIO.doHandshake(MysqlIO.java:1226)
        at com.mysql.jdbc.ConnectionImpl.coreConnect(ConnectionImpl.java:2253)
        at com.mysql.jdbc.ConnectionImpl.connectOneTryOnly(ConnectionImpl.java:2284)
        at com.mysql.jdbc.ConnectionImpl.createNewIO(ConnectionImpl.java:2083)
        at com.mysql.jdbc.ConnectionImpl.<init>(ConnectionImpl.java:806)
        at com.mysql.jdbc.JDBC4Connection.<init>(JDBC4Connection.java:47)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:57)
        at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
        at java.lang.reflect.Constructor.newInstance(Constructor.java:526)
        at com.mysql.jdbc.Util.handleNewInstance(Util.java:425)
        at com.mysql.jdbc.ConnectionImpl.getInstance(ConnectionImpl.java:410)
        at com.mysql.jdbc.NonRegisteringDriver.connect(NonRegisteringDriver.java:328)
        at java.sql.DriverManager.getConnection(DriverManager.java:571)
        at java.sql.DriverManager.getConnection(DriverManager.java:215)
        at com.cloudera.enterprise.dbutil.DbProvisioner.executeSql(DbProvisioner.java:283)
        at com.cloudera.enterprise.dbutil.DbProvisioner.doMain(DbProvisioner.java:95)
        at com.cloudera.enterprise.dbutil.DbProvisioner.main(DbProvisioner.java:110)
--> Error 1, ignoring (because force flag is set)
Creating SCM configuration file in /etc/cloudera-scm-server
Executing:  /usr/java/jdk1.7.0_67-cloudera/bin/java -cp /usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/* com.cloudera.enterprise.dbutil.DbCommandExecutor /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
[                          main] DbCommandExecutor              INFO  Successfully connected to database.
All done, your SCM database is configured correctly!
```
