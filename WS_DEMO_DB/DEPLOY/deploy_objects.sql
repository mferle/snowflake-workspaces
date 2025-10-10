execute immediate from '../EX/create_CUSTOMER_EX.sql';
execute immediate from '../EX/create_LINEITEM_EX.sql';
execute immediate from '../EX/create_ORDERS_EX.sql';
execute immediate from '../EX/create_PART_EX.sql';
execute immediate from '../EX/create_NATION_EX.sql';

execute immediate from '../STG/create_CUSTOMER_STG.sql';
execute immediate from '../STG/create_LINEITEM_STG.sql';
execute immediate from '../STG/create_ORDERS_STG.sql';
execute immediate from '../STG/create_PART_STG.sql';
execute immediate from '../STG/create_NATION_STG.sql';

execute immediate from '../MART/create_DIM_CUSTOMER.sql';
execute immediate from '../MART/create_DIM_PART.sql';
execute immediate from '../MART/create_FACT_ORDERS.sql';

-- to deploy all objects
--ALTER GIT REPOSITORY WS_DEMO_DB.DEPLOY.WS_DEMO_GIT_REPO FETCH;
--execute immediate from @WS_DEMO_DB.DEPLOY.WS_DEMO_GIT_REPO/branches/main/WS_DEMO_DB/DEPLOY/deploy_objects.sql;