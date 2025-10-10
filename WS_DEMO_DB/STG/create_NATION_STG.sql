create or alter table WS_DEMO_DB.STG.NATION_STG (
  nation_id number,
  nation_name varchar,
  region_id number,
  load_timestap timestamp
);

MERGE INTO WS_DEMO_DB.STG.NATION_STG AS target
USING WS_DEMO_DB.EX.NATION_EX AS source
ON target.nation_id = source.N_NATIONKEY
WHEN MATCHED THEN
  UPDATE SET
    nation_name = source.N_NAME,
    region_id = source.N_REGIONKEY,
    load_timestap = CURRENT_TIMESTAMP()
WHEN NOT MATCHED THEN
  INSERT (nation_id, nation_name, region_id, load_timestap)
  VALUES (source.N_NATIONKEY, source.N_NAME, source.N_REGIONKEY, CURRENT_TIMESTAMP());