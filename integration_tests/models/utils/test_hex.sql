with data as (
  select * from {{ ref("data_hex")}}
)

select 

  {{ datawaves_utils.hex(datawaves_utils.binary_literal('01010101')) }} as actual,
  hex as expected
from data