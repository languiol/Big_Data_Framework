set hive.cli.print.header=true;

set hive.exec.dynamic.partition=true;


select sum( IF(gender == 'm', 1, 0))/count(*) *100 as man from prenoms_oaguillon;

select sum( IF(gender == 'f', 1, 0))/count(*) *100 as female from prenoms_oaguillon;





