# Snowflake Workspaces
This repo demonstrates how to build a data pipeline to populate a simple dimensional data mart using Snowflake Workspaces integrated with Git.

The data is sourced from the `SNOWFLAKE_SAMPLE_DATA.TPCH_SF1` schema. The data pipeline transforms the data in several steps:
1. extract the data as views
2. stage the data as tables and merge from views
3. create a simple dimensional data mart as dynamic tables

## How to use this repo

1. Create a Snowflake Workspace based on this repo.
2. Work in the Snowflake Workspace, for example:
- open existing files or create new files
- make changes in the SQL code in the files
- use the Copilot to help you write SQL code
- test your changes locally by executing the code
- commit your changes to the repository
3. Execute the `deploy_objects.sql` script to deploy the changed code to the Snowflake database.
