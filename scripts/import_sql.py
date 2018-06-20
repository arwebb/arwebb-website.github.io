import argparse
import csv
import os
import pymssql
import pandas as pd
from sqlalchemy import create_engine

DB_HOST = os.environ.get('DB_HOST', '35.231.126.242')
DB_USER = os.environ.get('DB_USER', 'sa')
DB_PWD = os.environ.get('DB_PWD', 'Admin1234')
DB_NAME = os.environ.get('DB_NAME')

PARSER = argparse.ArgumentParser()
PARSER.add_argument('csv', help='CSV filename for datapoints import', metavar='CSV file')
PARSER.add_argument('name', help='Database name', metavar='Database name')
PARSER.add_argument('-H', '--host', help='Database hostname')
PARSER.add_argument('-p', '--password', help='Database password')
PARSER.add_argument('-t', '--table', help='Database table to load')
PARSER.add_argument('-u', '--user', help='Database username')
ARGS = PARSER.parse_args()

DB_HOST = ARGS.host or os.environ.get('DB_HOST', '35.231.126.242')
DB_USER = ARGS.user or os.environ.get('DB_USER', 'sa')
DB_PWD = ARGS.password or os.environ.get('DB_PWD', 'Admin1234')
DB_NAME = ARGS.name
DB_TABLE = ARGS.table or os.path.splitext(os.path.basename(ARGS.csv))[0]


def load_table():
    engine = create_engine('mssql+pymssql://{}:{}@{}/{}?charset=utf8'.
                           format(DB_USER, DB_PWD, DB_HOST, DB_NAME))

    data = pd.read_csv(ARGS.csv)
    with engine.connect() as conn, conn.begin():
        data.to_sql(DB_TABLE, engine, if_exists='append', index=False)

if __name__ == '__main__':
    load_table()
