with data as (
  select * from {{ ref("data_binary_to_address")}}
)

select 

  {{ datawaves_utils.binary_to_address('binary_as_string') }} as actual,
  address as expected
from data