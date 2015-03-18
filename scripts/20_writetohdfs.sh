#!/bin/bash
#Assuming hdfs directory /user exists (created bt root)

hadoop fs -mkdir /user/user01
hadoop fs -mkdir /user/user01/20newsdata
hadoop fs -put /tmp/20newsdataall /user/user01/20newsdata
