{% set my_host_id = 10 %}

{% if my_host_id < 10 %}

SELECT 2+3 AS result

{% else %}

SELECT 12+13 AS result

{% endif %}