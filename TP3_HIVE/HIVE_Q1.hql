set hive.cli.print.header=true;

set hive.exec.dynamic.partition=true;

SELECT origin, count(prenom) as n_prenom FROM prenoms_oaguillon group by origin;
