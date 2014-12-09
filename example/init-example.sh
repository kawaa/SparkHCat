#! /bin/bash

hive --hiveconf table=spark_hcat_test --hiveconf path=/tmp/spark_hcat_test -f init-table.sql
