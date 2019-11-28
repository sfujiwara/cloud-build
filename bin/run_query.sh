#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage:"
  echo "./bin/run_query.sh <SQL File> <Destination Table>"
  echo "Example:"
  echo "./bin/run_query.sh queries/hoge.sql project:dataset.table"
  exit 1
fi

SQL_FILE=${1}
DESTINATION_TABLE=${2}

bq query \
  --use_legacy_sql false \
  --destination_table ${DESTINATION_TABLE} \
  --replace false \
  < ${SQL_FILE}
