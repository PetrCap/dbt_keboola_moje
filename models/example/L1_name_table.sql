
-- Use the `ref` function to select from other models

select *
from {{ source('in.c-csv-import', 'L0_jmena') }}
