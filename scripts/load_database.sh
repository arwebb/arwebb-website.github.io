#!/bin/bash
# Modify the `source` command to trigger your Python virtual environment
source .ve/bin/activate

if [ -z $1 ] ; then
  echo "Usage: load_database.sh <database-name> <path/to/csvs>" && exit 1;
fi

if [ -z $2 ] ; then
  echo "Usage: load_database.sh <database-name> <path/to/csvs>" && exit 1;
fi

for entry in "$2"/*.csv
do
  python import_sql.py $entry $1
  echo "Import $entry complete"
done
