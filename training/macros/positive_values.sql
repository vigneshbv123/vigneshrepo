-- macros/positive_values.sql

{% macro positive_values(table_name, column_name) %}

select *
from {{ table_name }}
where {{ column_name }} > 0

{% endmacro %}