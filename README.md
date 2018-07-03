# Texas Education Agency Data Repository

## Data files managed by Tembo
* `domains.json`
* `metrics.json`
* `disaggregations.json`
* `filters.json`
* `metric_questions.json`

## Sample JSON data (for development)
* `entities.json`
* `csv/to_json/datapoints.csv`
* `json-mapping/datapoints_mapping.json`

## Sample data (for SQL)
* All files in the `csv` folder

# How to update Tembo’s SQL Server database

## Files needed
* `test_database_schema.sql`: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/sql/test_database_schema.sql
* All CSV files: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/csv/

## SQL Server instance connection info
* DB_HOST: 35.231.126.242 
* DB_USER: sa
* DB_PWD: Admin1234
* DB_NAME: (whatever you want)

## Instructions
1. Gather the connection information for the SQL Server instance (see above)
2. If updating an existing database, drop all tables from it using the script: https://tembo.githost.io/snippets/15
3. If the database doesn’t currently exist, create it: `CREATE DATABASE <dbname>`
    * Use `35.231.126.242` to connect directly to the Tembo SQL Server database server.
4. Run the schema creation script: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/sql/test_database_schema.sql
    * If the database name is different than `test`, update the script to use your desired database name
5. Load sample data from CSVs using your favorite RDMS tool: https://tembo.githost.io/tembo-data/tea-public-data/blob/master/csv
    * Make sure the database you want to load is selected
