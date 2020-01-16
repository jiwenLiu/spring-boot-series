#!/usr/bin/env bash


docker exec -it mysql-master1 /bin/bash
docker exec -it mysql-master1-slave1 /bin/bash
docker exec -it mysql-master2 /bin/bash
docker exec -it mysql-master2-slave1 /bin/bash
mysql -uroot -ptiger

change master to master_host='mysql-master1', master_user='slave', master_password='123456', master_port=3306, master_log_file='master1-bin.000003', master_log_pos=154, master_connect_retry=30;
change master to master_host='111.229.9.194', master_user='slave', master_password='123456', master_port=4306, master_log_file='master1-bin.000010', master_log_pos=154, master_connect_retry=30;