#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

read -r -s -p "Hasło PostgreSQL dla użytkownika pociag: " PGPASSWORD
echo
export PGPASSWORD

cleanup() {
    unset PGPASSWORD
}
trap cleanup EXIT

psql -U pociag -d kolei_db -h localhost -v ON_ERROR_STOP=1 <<SQL
\i ${SCRIPT_DIR}/drop.sql
\i ${SCRIPT_DIR}/usun_triggery.sql
\i ${SCRIPT_DIR}/create.sql
\i ${SCRIPT_DIR}/triggery2.sql
\i ${SCRIPT_DIR}/copy.sql
\i ${SCRIPT_DIR}/fun.sql
SQL
