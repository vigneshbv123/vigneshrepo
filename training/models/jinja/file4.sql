{% set countries = ['USA', 'UK', 'India', 'China'] %}

select *
from (
{% for country in countries %}
select '{{ country }}' as country
{% if not loop.last %}
union all
{% endif %}
{% endfor %}
)