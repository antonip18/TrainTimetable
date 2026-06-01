#!/bin/bash

out="123121231234234123423dfhjdshjfdshjfgdjfsfsjghfgdslasrwertrytie" 
touch $out

cat drop.sql create.sql triggery.sql inserts.sql > $out
(psql -U pociag -d kolei_db -h localhost < $out)

rm $out
