DROP TABLE IF EXISTS ${hiveconf:table};

CREATE TABLE ${hiveconf:table}(line string) 
	PARTITIONED BY (type string)
	LOCATION "${hiveconf:hdfspath}";

LOAD DATA LOCAL INPATH 'data/pg5200.txt'
	OVERWRITE INTO TABLE ${hiveconf:table} 
	PARTITION (type="5200");

LOAD DATA LOCAL INPATH 'data/pg46.txt'
	OVERWRITE INTO TABLE ${hiveconf:table} 
	PARTITION (type="46");
