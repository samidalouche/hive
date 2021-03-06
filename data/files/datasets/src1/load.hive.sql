CREATE TABLE src1 (key STRING COMMENT 'default', value STRING COMMENT 'default') STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH "${hiveconf:test.data.dir}/kv3.txt" INTO TABLE src1;

ANALYZE TABLE src1 COMPUTE STATISTICS;

ANALYZE TABLE src1 COMPUTE STATISTICS FOR COLUMNS key,value;
