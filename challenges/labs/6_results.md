## Login to beeline
```
!connect jdbc:hive2://ip-172-31-12-119.ap-southeast-1.compute.internal:10000/default;principal=hive/ip-172-31-12-119.ap-southeast-1.compute.internal@SCREENTHONG.SG
```

## Create an overlord role that has rights to the default database
```
create role retail;
GRANT SELECT ON DATABASE default TO ROLE retail;
GRANT ROLE retail TO GROUP shops;
```

## Map the crackers group to this role
```
GRANT ROLE retail TO GROUP shops;
```

## Create a strongman role that has SELECT privileges only to the sample tables in default
```
create role hospitality ;
REVOKE ALL ON DATABASE default FROM ROLE hospitality ;
GRANT SELECT ON default.sample* TO ROLE hospitality ;

```

## Map the hackers group to this role
```
GRANT ROLE hospitality  TO GROUP hotels;
```

## Login to beeline with the principal for 
```
```

## List the result of SHOW TABLES;
```
```

## Login again to beeline as the principal for 
```
```

## List the result of SHOW TABLES;
```
```
