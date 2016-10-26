use oaguillon; 

CREATE DATABASE oaguillon LOCATION '/user/oaguillon/TP3_HIVE';

hdfs dfs -mkdir prenoms
hdfs dfs -cp /res/prenoms.csv prenoms/0000