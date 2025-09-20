select *
from {{ source ('snowflake_sample_data', 'lineitem') }}