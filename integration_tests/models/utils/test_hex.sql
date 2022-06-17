with data as (
  select * from {{ ref("data_hex")}}
)

select 

  {{ datawaves_utils.hex('01010101') }} as actual,
  hex as expected
from data