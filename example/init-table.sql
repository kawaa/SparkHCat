drop table if exists ${hiveconf:table};
create table ${hiveconf:table}(line string) partitioned by (type string) location "${hiveconf:path}";
--alter table ${hiveconf:table} add partition (type = 'hadoop') location "${hiveconf:path}/hadoop";
LOAD DATA LOCAL INPATH '/etc/hadoop/conf' OVERWRITE INTO TABLE ${hiveconf:table} PARTITION (type="hadoop");
