with data as (
  select * from {{ ref("data_displayed_amount")}}
)

select 

  {{ datawaves_utils.displayed_amount("original_amount", "decimals") }} as actual,
  amount as expected
from data