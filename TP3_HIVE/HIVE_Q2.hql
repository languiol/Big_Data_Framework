set hive.cli.print.header=true;

set hive.exec.dynamic.partition=true;



select nbo, count(nbo)
from prenoms_oaguillon
LATERAL VIEW explode(split(lower(origin), ',')) t1 as nbo 
group by (nbo);