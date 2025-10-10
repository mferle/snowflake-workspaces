-- create a view in the extract layer
create or replace view WS_DEMO_DB.EX.NATION_EX as
select *
from snowflake_sample_data.tpch_sf1.nation;
