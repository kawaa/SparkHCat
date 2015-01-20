# SparkHCat

## Description

An attempt to run some exemplary Spark code that integrates with HCatalog. The idea is that instead of providing an HDFS path to the input dataset, we use Hive table/partition and HCatalog discovers where a given table/partition is located in HDFS.

The code is heavily based on https://gist.github.com/granturing/7201912. Kudos to @granturing.

## Requirements

Tried on cdh5.2.1
