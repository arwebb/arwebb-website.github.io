# Texas Education Agency Data Repository

## Data files managed by Tembo
* `domains.json`
* `metrics.json`
* `disaggregations.json`
* `filters.json`
* `universes.json`

## Sample data (for development)
* `entities.json`
* `datapoints.json`

# How to update Tembo’s SQL Server database

## Files needed
* `test_database_schema.sql`: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/sql/test_database_schema.sql
* `sample_data.sql`: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/sql/sample_data.sql
* `fake_datapoints_sql.csv`: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/csv/fake_datapoints_sql.csv
* `fake_datapoint_translation_sql.csv`: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/csv/fake_datapoint_translation_sql.csv

## SQL Server instance connection info
* DB_HOST: 35.231.126.242 
* DB_USER: sa
* DB_PWD: Admin1234
* DB_NAME: test

## Instructions
1. Gather the connection information for the SQL Server instance
2. If updating an existing database, drop all tables from it using the script: https://tembo.githost.io/snippets/15
3. If the database doesn’t currently exist, create it: `CREATE DATABASE <dbname>`
4. Run the schema creation script: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/sql/test_database_schema.sql
    * If the database name is different than `test`, update the script to use your desired database name
5. Load sample data from the sql script: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/sql/sample_data.sql
    * Make sure the database you want to load is selected
6. Load the datapoints data from the CSV files `fake_datapoints_sql.csv` and `fake_datapoint_translation_sql.csv` respectively. Use the script: https://tembo.githost.io/snippets/10
    * `pymssql` python package required (use a virtual environment)
    * Example: `python import_datapoints.py fake_datapoints_sql.csv fake_datapoint_translation_sql.csv`
    * Specify connection parameters using `DB_HOST`, `DB_USER`, `DB_PWD`, and `DB_NAME` environment variables
