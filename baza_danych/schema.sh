#!/bin/bash

pg_dump -U pociag -h localhost -p 5432 -d kolei_db \
  --schema-only --no-owner --no-privileges \
  > schema_live.sql

