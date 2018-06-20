# Texas Education Agency Data Repository

## Data files managed by Tembo
* `domains.json`
* `metrics.json`
* `disaggregations.json`
* `filters.json`
* `universes.json`

## Sample data (for development)
* `entities.json`
* `csv/to_json/datapoints.csv`

## Sample data (for SQL)
* All files in the `csv` folder

# How to update Tembo’s SQL Server database

## Files needed
* `test_database_schema.sql`: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/sql/test_database_schema.sql
* All CSV files: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/csv/
* `load_database.sh`: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/scripts/load_database.sh

## SQL Server instance connection info
* DB_HOST: 35.231.126.242 
* DB_USER: sa
* DB_PWD: Admin1234
* DB_NAME: <whatever you want>

## Instructions
1. Gather the connection information for the SQL Server instance (see above)
2. If updating an existing database, drop all tables from it using the script: https://tembo.githost.io/snippets/15
3. If the database doesn’t currently exist, create it: `CREATE DATABASE <dbname>`
4. Run the schema creation script: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/sql/test_database_schema.sql
    * If the database name is different than `test`, update the script to use your desired database name
5. Load sample data from the sql script: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/sql/sample_data.sql
    * Make sure the database you want to load is selected
6. Load the datapoints data from the CSV files. Use the script: `load_database.sh`
    * Configure the virutal environment setting in the script based on your local setup
    * Usage: `load_database.sh <database-name> <path/to/csvs>`
