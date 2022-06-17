with data as (
  select * from {{ ref("data_substring")}}
)

select 

  {{ datawaves_utils.substring("text", "position", "length") }} as actual,
  subtext as expected
from data