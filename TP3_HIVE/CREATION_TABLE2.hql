DROP TABLE prenomsEx;
DROP TABLE prenoms_oaguillon;

CREATE EXTERNAL TABLE prenomsEx(
prenom STRING,
gender VARCHAR(3),
origin VARCHAR(60),
version DOUBLE)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\073' STORED AS TEXTFILE location '/user/oaguillon/prenoms';

CREATE TABLE prenoms_oaguillon(
prenom STRING,
gender VARCHAR(3),
origin VARCHAR(60),
version DOUBLE)
ROW FORMAT DELIMITED
STORED AS ORC;

INSERT OVERWRITE TABLE prenoms_oaguillon SELECT  * FROM prenomsEx;