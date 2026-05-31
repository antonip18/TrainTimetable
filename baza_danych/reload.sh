#!/bin/bash

out="123121231234234123423" 
touch $out

#(psql -U pociag -d kolei_db -h localhost < drop.sql) > $out
#(psql -U pociag -d kolei_db -h localhost < usun_triggery.sql) > $out
#(psql -U pociag -d kolei_db -h localhost < create.sql) > $out
#(psql -U pociag -d kolei_db -h localhost < triggery2.sql) > $out
#(psql -U pociag -d kolei_db -h localhost < copy.sql) 
#(psql -U pociag -d kolei_db -h localhost < fun.sql) 

cat drop.sql create.sql triggery2.sql copy.sql fun.sql usun_triggery.sql triggery.sql > $out
(psql -U pociag -d kolei_db -h localhost < $out)

rm $out
